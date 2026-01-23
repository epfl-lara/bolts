; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293372 () Bool)

(assert start!293372)

(declare-fun b!3079231 () Bool)

(declare-fun e!1926304 () Bool)

(declare-fun tp!970154 () Bool)

(declare-fun tp!970156 () Bool)

(assert (=> b!3079231 (= e!1926304 (and tp!970154 tp!970156))))

(declare-fun b!3079232 () Bool)

(declare-fun e!1926305 () Bool)

(declare-fun e!1926303 () Bool)

(assert (=> b!3079232 (= e!1926305 e!1926303)))

(declare-fun res!1263500 () Bool)

(assert (=> b!3079232 (=> res!1263500 e!1926303)))

(declare-datatypes ((C!19252 0))(
  ( (C!19253 (val!11662 Int)) )
))
(declare-datatypes ((Regex!9533 0))(
  ( (ElementMatch!9533 (c!512555 C!19252)) (Concat!14854 (regOne!19578 Regex!9533) (regTwo!19578 Regex!9533)) (EmptyExpr!9533) (Star!9533 (reg!9862 Regex!9533)) (EmptyLang!9533) (Union!9533 (regOne!19579 Regex!9533) (regTwo!19579 Regex!9533)) )
))
(declare-fun lt!1052991 () Regex!9533)

(declare-fun isEmptyLang!584 (Regex!9533) Bool)

(assert (=> b!3079232 (= res!1263500 (isEmptyLang!584 lt!1052991))))

(declare-fun lt!1052994 () Regex!9533)

(declare-fun r!17423 () Regex!9533)

(declare-fun simplify!488 (Regex!9533) Regex!9533)

(assert (=> b!3079232 (= lt!1052994 (simplify!488 (regTwo!19578 r!17423)))))

(assert (=> b!3079232 (= lt!1052991 (simplify!488 (regOne!19578 r!17423)))))

(declare-fun b!3079233 () Bool)

(declare-fun tp!970155 () Bool)

(declare-fun tp!970152 () Bool)

(assert (=> b!3079233 (= e!1926304 (and tp!970155 tp!970152))))

(declare-fun b!3079234 () Bool)

(declare-fun e!1926302 () Bool)

(assert (=> b!3079234 (= e!1926303 e!1926302)))

(declare-fun res!1263496 () Bool)

(assert (=> b!3079234 (=> res!1263496 e!1926302)))

(declare-fun lt!1052993 () Bool)

(assert (=> b!3079234 (= res!1263496 lt!1052993)))

(declare-datatypes ((List!35398 0))(
  ( (Nil!35274) (Cons!35274 (h!40694 C!19252) (t!234463 List!35398)) )
))
(declare-fun matchR!4415 (Regex!9533 List!35398) Bool)

(assert (=> b!3079234 (= (matchR!4415 (regTwo!19578 r!17423) Nil!35274) (matchR!4415 lt!1052994 Nil!35274))))

(declare-datatypes ((Unit!49505 0))(
  ( (Unit!49506) )
))
(declare-fun lt!1052989 () Unit!49505)

(declare-fun lemmaSimplifySound!314 (Regex!9533 List!35398) Unit!49505)

(assert (=> b!3079234 (= lt!1052989 (lemmaSimplifySound!314 (regTwo!19578 r!17423) Nil!35274))))

(declare-fun s!11993 () List!35398)

(assert (=> b!3079234 (= lt!1052993 (matchR!4415 lt!1052991 s!11993))))

(assert (=> b!3079234 (= lt!1052993 (matchR!4415 (regOne!19578 r!17423) s!11993))))

(declare-fun lt!1052992 () Unit!49505)

(assert (=> b!3079234 (= lt!1052992 (lemmaSimplifySound!314 (regOne!19578 r!17423) s!11993))))

(declare-fun b!3079235 () Bool)

(declare-fun res!1263499 () Bool)

(assert (=> b!3079235 (=> res!1263499 e!1926303)))

(declare-fun isEmptyExpr!590 (Regex!9533) Bool)

(assert (=> b!3079235 (= res!1263499 (isEmptyExpr!590 lt!1052991))))

(declare-fun b!3079236 () Bool)

(declare-fun e!1926300 () Bool)

(declare-fun tp_is_empty!16629 () Bool)

(declare-fun tp!970157 () Bool)

(assert (=> b!3079236 (= e!1926300 (and tp_is_empty!16629 tp!970157))))

(declare-fun b!3079237 () Bool)

(declare-fun res!1263493 () Bool)

(assert (=> b!3079237 (=> res!1263493 e!1926303)))

(assert (=> b!3079237 (= res!1263493 (not (isEmptyExpr!590 lt!1052994)))))

(declare-fun b!3079238 () Bool)

(assert (=> b!3079238 (= e!1926302 (not (matchR!4415 (simplify!488 r!17423) s!11993)))))

(declare-fun b!3079239 () Bool)

(declare-fun res!1263497 () Bool)

(assert (=> b!3079239 (=> res!1263497 e!1926303)))

(assert (=> b!3079239 (= res!1263497 (isEmptyLang!584 lt!1052994))))

(declare-fun b!3079240 () Bool)

(declare-fun res!1263498 () Bool)

(assert (=> b!3079240 (=> res!1263498 e!1926305)))

(declare-fun isEmpty!19609 (List!35398) Bool)

(assert (=> b!3079240 (= res!1263498 (isEmpty!19609 s!11993))))

(declare-fun b!3079241 () Bool)

(declare-fun tp!970153 () Bool)

(assert (=> b!3079241 (= e!1926304 tp!970153)))

(declare-fun b!3079242 () Bool)

(assert (=> b!3079242 (= e!1926304 tp_is_empty!16629)))

(declare-fun b!3079243 () Bool)

(declare-fun e!1926301 () Bool)

(assert (=> b!3079243 (= e!1926301 (not e!1926305))))

(declare-fun res!1263495 () Bool)

(assert (=> b!3079243 (=> res!1263495 e!1926305)))

(declare-fun lt!1052988 () Bool)

(get-info :version)

(assert (=> b!3079243 (= res!1263495 (or lt!1052988 (not ((_ is Concat!14854) r!17423))))))

(declare-fun matchRSpec!1670 (Regex!9533 List!35398) Bool)

(assert (=> b!3079243 (= lt!1052988 (matchRSpec!1670 r!17423 s!11993))))

(assert (=> b!3079243 (= lt!1052988 (matchR!4415 r!17423 s!11993))))

(declare-fun lt!1052990 () Unit!49505)

(declare-fun mainMatchTheorem!1670 (Regex!9533 List!35398) Unit!49505)

(assert (=> b!3079243 (= lt!1052990 (mainMatchTheorem!1670 r!17423 s!11993))))

(declare-fun res!1263494 () Bool)

(assert (=> start!293372 (=> (not res!1263494) (not e!1926301))))

(declare-fun validRegex!4266 (Regex!9533) Bool)

(assert (=> start!293372 (= res!1263494 (validRegex!4266 r!17423))))

(assert (=> start!293372 e!1926301))

(assert (=> start!293372 e!1926304))

(assert (=> start!293372 e!1926300))

(assert (= (and start!293372 res!1263494) b!3079243))

(assert (= (and b!3079243 (not res!1263495)) b!3079240))

(assert (= (and b!3079240 (not res!1263498)) b!3079232))

(assert (= (and b!3079232 (not res!1263500)) b!3079239))

(assert (= (and b!3079239 (not res!1263497)) b!3079235))

(assert (= (and b!3079235 (not res!1263499)) b!3079237))

(assert (= (and b!3079237 (not res!1263493)) b!3079234))

(assert (= (and b!3079234 (not res!1263496)) b!3079238))

(assert (= (and start!293372 ((_ is ElementMatch!9533) r!17423)) b!3079242))

(assert (= (and start!293372 ((_ is Concat!14854) r!17423)) b!3079233))

(assert (= (and start!293372 ((_ is Star!9533) r!17423)) b!3079241))

(assert (= (and start!293372 ((_ is Union!9533) r!17423)) b!3079231))

(assert (= (and start!293372 ((_ is Cons!35274) s!11993)) b!3079236))

(declare-fun m!3389487 () Bool)

(assert (=> b!3079237 m!3389487))

(declare-fun m!3389489 () Bool)

(assert (=> b!3079238 m!3389489))

(assert (=> b!3079238 m!3389489))

(declare-fun m!3389491 () Bool)

(assert (=> b!3079238 m!3389491))

(declare-fun m!3389493 () Bool)

(assert (=> b!3079243 m!3389493))

(declare-fun m!3389495 () Bool)

(assert (=> b!3079243 m!3389495))

(declare-fun m!3389497 () Bool)

(assert (=> b!3079243 m!3389497))

(declare-fun m!3389499 () Bool)

(assert (=> b!3079240 m!3389499))

(declare-fun m!3389501 () Bool)

(assert (=> b!3079232 m!3389501))

(declare-fun m!3389503 () Bool)

(assert (=> b!3079232 m!3389503))

(declare-fun m!3389505 () Bool)

(assert (=> b!3079232 m!3389505))

(declare-fun m!3389507 () Bool)

(assert (=> b!3079235 m!3389507))

(declare-fun m!3389509 () Bool)

(assert (=> b!3079239 m!3389509))

(declare-fun m!3389511 () Bool)

(assert (=> b!3079234 m!3389511))

(declare-fun m!3389513 () Bool)

(assert (=> b!3079234 m!3389513))

(declare-fun m!3389515 () Bool)

(assert (=> b!3079234 m!3389515))

(declare-fun m!3389517 () Bool)

(assert (=> b!3079234 m!3389517))

(declare-fun m!3389519 () Bool)

(assert (=> b!3079234 m!3389519))

(declare-fun m!3389521 () Bool)

(assert (=> b!3079234 m!3389521))

(declare-fun m!3389523 () Bool)

(assert (=> start!293372 m!3389523))

(check-sat (not start!293372) (not b!3079239) (not b!3079235) (not b!3079241) (not b!3079236) (not b!3079240) (not b!3079238) (not b!3079232) (not b!3079243) (not b!3079234) (not b!3079231) tp_is_empty!16629 (not b!3079237) (not b!3079233))
(check-sat)
(get-model)

(declare-fun d!857340 () Bool)

(assert (=> d!857340 (= (isEmpty!19609 s!11993) ((_ is Nil!35274) s!11993))))

(assert (=> b!3079240 d!857340))

(declare-fun d!857342 () Bool)

(assert (=> d!857342 (= (isEmptyExpr!590 lt!1052991) ((_ is EmptyExpr!9533) lt!1052991))))

(assert (=> b!3079235 d!857342))

(declare-fun b!3079290 () Bool)

(declare-fun e!1926336 () Bool)

(declare-fun call!214459 () Bool)

(assert (=> b!3079290 (= e!1926336 call!214459)))

(declare-fun b!3079291 () Bool)

(declare-fun e!1926337 () Bool)

(declare-fun e!1926339 () Bool)

(assert (=> b!3079291 (= e!1926337 e!1926339)))

(declare-fun c!512567 () Bool)

(assert (=> b!3079291 (= c!512567 ((_ is Star!9533) r!17423))))

(declare-fun b!3079292 () Bool)

(declare-fun e!1926334 () Bool)

(declare-fun e!1926338 () Bool)

(assert (=> b!3079292 (= e!1926334 e!1926338)))

(declare-fun res!1263527 () Bool)

(assert (=> b!3079292 (=> (not res!1263527) (not e!1926338))))

(declare-fun call!214460 () Bool)

(assert (=> b!3079292 (= res!1263527 call!214460)))

(declare-fun b!3079293 () Bool)

(assert (=> b!3079293 (= e!1926339 e!1926336)))

(declare-fun res!1263531 () Bool)

(declare-fun nullable!3179 (Regex!9533) Bool)

(assert (=> b!3079293 (= res!1263531 (not (nullable!3179 (reg!9862 r!17423))))))

(assert (=> b!3079293 (=> (not res!1263531) (not e!1926336))))

(declare-fun b!3079294 () Bool)

(declare-fun call!214461 () Bool)

(assert (=> b!3079294 (= e!1926338 call!214461)))

(declare-fun bm!214454 () Bool)

(assert (=> bm!214454 (= call!214461 call!214459)))

(declare-fun b!3079295 () Bool)

(declare-fun res!1263530 () Bool)

(declare-fun e!1926335 () Bool)

(assert (=> b!3079295 (=> (not res!1263530) (not e!1926335))))

(assert (=> b!3079295 (= res!1263530 call!214461)))

(declare-fun e!1926340 () Bool)

(assert (=> b!3079295 (= e!1926340 e!1926335)))

(declare-fun b!3079296 () Bool)

(declare-fun res!1263529 () Bool)

(assert (=> b!3079296 (=> res!1263529 e!1926334)))

(assert (=> b!3079296 (= res!1263529 (not ((_ is Concat!14854) r!17423)))))

(assert (=> b!3079296 (= e!1926340 e!1926334)))

(declare-fun bm!214456 () Bool)

(declare-fun c!512566 () Bool)

(assert (=> bm!214456 (= call!214459 (validRegex!4266 (ite c!512567 (reg!9862 r!17423) (ite c!512566 (regOne!19579 r!17423) (regTwo!19578 r!17423)))))))

(declare-fun b!3079297 () Bool)

(assert (=> b!3079297 (= e!1926339 e!1926340)))

(assert (=> b!3079297 (= c!512566 ((_ is Union!9533) r!17423))))

(declare-fun b!3079298 () Bool)

(assert (=> b!3079298 (= e!1926335 call!214460)))

(declare-fun d!857344 () Bool)

(declare-fun res!1263528 () Bool)

(assert (=> d!857344 (=> res!1263528 e!1926337)))

(assert (=> d!857344 (= res!1263528 ((_ is ElementMatch!9533) r!17423))))

(assert (=> d!857344 (= (validRegex!4266 r!17423) e!1926337)))

(declare-fun bm!214455 () Bool)

(assert (=> bm!214455 (= call!214460 (validRegex!4266 (ite c!512566 (regTwo!19579 r!17423) (regOne!19578 r!17423))))))

(assert (= (and d!857344 (not res!1263528)) b!3079291))

(assert (= (and b!3079291 c!512567) b!3079293))

(assert (= (and b!3079291 (not c!512567)) b!3079297))

(assert (= (and b!3079293 res!1263531) b!3079290))

(assert (= (and b!3079297 c!512566) b!3079295))

(assert (= (and b!3079297 (not c!512566)) b!3079296))

(assert (= (and b!3079295 res!1263530) b!3079298))

(assert (= (and b!3079296 (not res!1263529)) b!3079292))

(assert (= (and b!3079292 res!1263527) b!3079294))

(assert (= (or b!3079295 b!3079294) bm!214454))

(assert (= (or b!3079298 b!3079292) bm!214455))

(assert (= (or b!3079290 bm!214454) bm!214456))

(declare-fun m!3389537 () Bool)

(assert (=> b!3079293 m!3389537))

(declare-fun m!3389539 () Bool)

(assert (=> bm!214456 m!3389539))

(declare-fun m!3389541 () Bool)

(assert (=> bm!214455 m!3389541))

(assert (=> start!293372 d!857344))

(declare-fun d!857350 () Bool)

(assert (=> d!857350 (= (matchR!4415 (regTwo!19578 r!17423) Nil!35274) (matchR!4415 (simplify!488 (regTwo!19578 r!17423)) Nil!35274))))

(declare-fun lt!1053004 () Unit!49505)

(declare-fun choose!18258 (Regex!9533 List!35398) Unit!49505)

(assert (=> d!857350 (= lt!1053004 (choose!18258 (regTwo!19578 r!17423) Nil!35274))))

(assert (=> d!857350 (validRegex!4266 (regTwo!19578 r!17423))))

(assert (=> d!857350 (= (lemmaSimplifySound!314 (regTwo!19578 r!17423) Nil!35274) lt!1053004)))

(declare-fun bs!532876 () Bool)

(assert (= bs!532876 d!857350))

(assert (=> bs!532876 m!3389521))

(declare-fun m!3389555 () Bool)

(assert (=> bs!532876 m!3389555))

(assert (=> bs!532876 m!3389503))

(declare-fun m!3389557 () Bool)

(assert (=> bs!532876 m!3389557))

(declare-fun m!3389559 () Bool)

(assert (=> bs!532876 m!3389559))

(assert (=> bs!532876 m!3389503))

(assert (=> b!3079234 d!857350))

(declare-fun d!857354 () Bool)

(assert (=> d!857354 (= (matchR!4415 (regOne!19578 r!17423) s!11993) (matchR!4415 (simplify!488 (regOne!19578 r!17423)) s!11993))))

(declare-fun lt!1053006 () Unit!49505)

(assert (=> d!857354 (= lt!1053006 (choose!18258 (regOne!19578 r!17423) s!11993))))

(assert (=> d!857354 (validRegex!4266 (regOne!19578 r!17423))))

(assert (=> d!857354 (= (lemmaSimplifySound!314 (regOne!19578 r!17423) s!11993) lt!1053006)))

(declare-fun bs!532877 () Bool)

(assert (= bs!532877 d!857354))

(assert (=> bs!532877 m!3389515))

(declare-fun m!3389561 () Bool)

(assert (=> bs!532877 m!3389561))

(assert (=> bs!532877 m!3389505))

(declare-fun m!3389563 () Bool)

(assert (=> bs!532877 m!3389563))

(declare-fun m!3389565 () Bool)

(assert (=> bs!532877 m!3389565))

(assert (=> bs!532877 m!3389505))

(assert (=> b!3079234 d!857354))

(declare-fun b!3079419 () Bool)

(declare-fun e!1926407 () Bool)

(declare-fun e!1926405 () Bool)

(assert (=> b!3079419 (= e!1926407 e!1926405)))

(declare-fun res!1263592 () Bool)

(assert (=> b!3079419 (=> (not res!1263592) (not e!1926405))))

(declare-fun lt!1053016 () Bool)

(assert (=> b!3079419 (= res!1263592 (not lt!1053016))))

(declare-fun b!3079420 () Bool)

(declare-fun e!1926403 () Bool)

(assert (=> b!3079420 (= e!1926405 e!1926403)))

(declare-fun res!1263591 () Bool)

(assert (=> b!3079420 (=> res!1263591 e!1926403)))

(declare-fun call!214471 () Bool)

(assert (=> b!3079420 (= res!1263591 call!214471)))

(declare-fun b!3079421 () Bool)

(declare-fun e!1926406 () Bool)

(assert (=> b!3079421 (= e!1926406 (nullable!3179 (regOne!19578 r!17423)))))

(declare-fun b!3079422 () Bool)

(declare-fun res!1263596 () Bool)

(declare-fun e!1926402 () Bool)

(assert (=> b!3079422 (=> (not res!1263596) (not e!1926402))))

(assert (=> b!3079422 (= res!1263596 (not call!214471))))

(declare-fun b!3079423 () Bool)

(declare-fun head!6834 (List!35398) C!19252)

(assert (=> b!3079423 (= e!1926403 (not (= (head!6834 s!11993) (c!512555 (regOne!19578 r!17423)))))))

(declare-fun b!3079424 () Bool)

(declare-fun derivativeStep!2775 (Regex!9533 C!19252) Regex!9533)

(declare-fun tail!5060 (List!35398) List!35398)

(assert (=> b!3079424 (= e!1926406 (matchR!4415 (derivativeStep!2775 (regOne!19578 r!17423) (head!6834 s!11993)) (tail!5060 s!11993)))))

(declare-fun d!857356 () Bool)

(declare-fun e!1926408 () Bool)

(assert (=> d!857356 e!1926408))

(declare-fun c!512601 () Bool)

(assert (=> d!857356 (= c!512601 ((_ is EmptyExpr!9533) (regOne!19578 r!17423)))))

(assert (=> d!857356 (= lt!1053016 e!1926406)))

(declare-fun c!512599 () Bool)

(assert (=> d!857356 (= c!512599 (isEmpty!19609 s!11993))))

(assert (=> d!857356 (validRegex!4266 (regOne!19578 r!17423))))

(assert (=> d!857356 (= (matchR!4415 (regOne!19578 r!17423) s!11993) lt!1053016)))

(declare-fun b!3079425 () Bool)

(declare-fun res!1263593 () Bool)

(assert (=> b!3079425 (=> res!1263593 e!1926407)))

(assert (=> b!3079425 (= res!1263593 e!1926402)))

(declare-fun res!1263595 () Bool)

(assert (=> b!3079425 (=> (not res!1263595) (not e!1926402))))

(assert (=> b!3079425 (= res!1263595 lt!1053016)))

(declare-fun b!3079426 () Bool)

(declare-fun res!1263590 () Bool)

(assert (=> b!3079426 (=> res!1263590 e!1926407)))

(assert (=> b!3079426 (= res!1263590 (not ((_ is ElementMatch!9533) (regOne!19578 r!17423))))))

(declare-fun e!1926404 () Bool)

(assert (=> b!3079426 (= e!1926404 e!1926407)))

(declare-fun b!3079427 () Bool)

(assert (=> b!3079427 (= e!1926404 (not lt!1053016))))

(declare-fun b!3079428 () Bool)

(declare-fun res!1263594 () Bool)

(assert (=> b!3079428 (=> res!1263594 e!1926403)))

(assert (=> b!3079428 (= res!1263594 (not (isEmpty!19609 (tail!5060 s!11993))))))

(declare-fun bm!214466 () Bool)

(assert (=> bm!214466 (= call!214471 (isEmpty!19609 s!11993))))

(declare-fun b!3079429 () Bool)

(declare-fun res!1263597 () Bool)

(assert (=> b!3079429 (=> (not res!1263597) (not e!1926402))))

(assert (=> b!3079429 (= res!1263597 (isEmpty!19609 (tail!5060 s!11993)))))

(declare-fun b!3079432 () Bool)

(assert (=> b!3079432 (= e!1926408 e!1926404)))

(declare-fun c!512600 () Bool)

(assert (=> b!3079432 (= c!512600 ((_ is EmptyLang!9533) (regOne!19578 r!17423)))))

(declare-fun b!3079433 () Bool)

(assert (=> b!3079433 (= e!1926402 (= (head!6834 s!11993) (c!512555 (regOne!19578 r!17423))))))

(declare-fun b!3079435 () Bool)

(assert (=> b!3079435 (= e!1926408 (= lt!1053016 call!214471))))

(assert (= (and d!857356 c!512599) b!3079421))

(assert (= (and d!857356 (not c!512599)) b!3079424))

(assert (= (and d!857356 c!512601) b!3079435))

(assert (= (and d!857356 (not c!512601)) b!3079432))

(assert (= (and b!3079432 c!512600) b!3079427))

(assert (= (and b!3079432 (not c!512600)) b!3079426))

(assert (= (and b!3079426 (not res!1263590)) b!3079425))

(assert (= (and b!3079425 res!1263595) b!3079422))

(assert (= (and b!3079422 res!1263596) b!3079429))

(assert (= (and b!3079429 res!1263597) b!3079433))

(assert (= (and b!3079425 (not res!1263593)) b!3079419))

(assert (= (and b!3079419 res!1263592) b!3079420))

(assert (= (and b!3079420 (not res!1263591)) b!3079428))

(assert (= (and b!3079428 (not res!1263594)) b!3079423))

(assert (= (or b!3079435 b!3079420 b!3079422) bm!214466))

(declare-fun m!3389605 () Bool)

(assert (=> b!3079421 m!3389605))

(declare-fun m!3389607 () Bool)

(assert (=> b!3079429 m!3389607))

(assert (=> b!3079429 m!3389607))

(declare-fun m!3389609 () Bool)

(assert (=> b!3079429 m!3389609))

(assert (=> d!857356 m!3389499))

(assert (=> d!857356 m!3389565))

(assert (=> bm!214466 m!3389499))

(declare-fun m!3389611 () Bool)

(assert (=> b!3079424 m!3389611))

(assert (=> b!3079424 m!3389611))

(declare-fun m!3389613 () Bool)

(assert (=> b!3079424 m!3389613))

(assert (=> b!3079424 m!3389607))

(assert (=> b!3079424 m!3389613))

(assert (=> b!3079424 m!3389607))

(declare-fun m!3389615 () Bool)

(assert (=> b!3079424 m!3389615))

(assert (=> b!3079433 m!3389611))

(assert (=> b!3079428 m!3389607))

(assert (=> b!3079428 m!3389607))

(assert (=> b!3079428 m!3389609))

(assert (=> b!3079423 m!3389611))

(assert (=> b!3079234 d!857356))

(declare-fun b!3079459 () Bool)

(declare-fun e!1926428 () Bool)

(declare-fun e!1926426 () Bool)

(assert (=> b!3079459 (= e!1926428 e!1926426)))

(declare-fun res!1263602 () Bool)

(assert (=> b!3079459 (=> (not res!1263602) (not e!1926426))))

(declare-fun lt!1053025 () Bool)

(assert (=> b!3079459 (= res!1263602 (not lt!1053025))))

(declare-fun b!3079460 () Bool)

(declare-fun e!1926424 () Bool)

(assert (=> b!3079460 (= e!1926426 e!1926424)))

(declare-fun res!1263601 () Bool)

(assert (=> b!3079460 (=> res!1263601 e!1926424)))

(declare-fun call!214474 () Bool)

(assert (=> b!3079460 (= res!1263601 call!214474)))

(declare-fun b!3079461 () Bool)

(declare-fun e!1926427 () Bool)

(assert (=> b!3079461 (= e!1926427 (nullable!3179 (regTwo!19578 r!17423)))))

(declare-fun b!3079462 () Bool)

(declare-fun res!1263606 () Bool)

(declare-fun e!1926423 () Bool)

(assert (=> b!3079462 (=> (not res!1263606) (not e!1926423))))

(assert (=> b!3079462 (= res!1263606 (not call!214474))))

(declare-fun b!3079463 () Bool)

(assert (=> b!3079463 (= e!1926424 (not (= (head!6834 Nil!35274) (c!512555 (regTwo!19578 r!17423)))))))

(declare-fun b!3079464 () Bool)

(assert (=> b!3079464 (= e!1926427 (matchR!4415 (derivativeStep!2775 (regTwo!19578 r!17423) (head!6834 Nil!35274)) (tail!5060 Nil!35274)))))

(declare-fun d!857372 () Bool)

(declare-fun e!1926429 () Bool)

(assert (=> d!857372 e!1926429))

(declare-fun c!512616 () Bool)

(assert (=> d!857372 (= c!512616 ((_ is EmptyExpr!9533) (regTwo!19578 r!17423)))))

(assert (=> d!857372 (= lt!1053025 e!1926427)))

(declare-fun c!512614 () Bool)

(assert (=> d!857372 (= c!512614 (isEmpty!19609 Nil!35274))))

(assert (=> d!857372 (validRegex!4266 (regTwo!19578 r!17423))))

(assert (=> d!857372 (= (matchR!4415 (regTwo!19578 r!17423) Nil!35274) lt!1053025)))

(declare-fun b!3079465 () Bool)

(declare-fun res!1263603 () Bool)

(assert (=> b!3079465 (=> res!1263603 e!1926428)))

(assert (=> b!3079465 (= res!1263603 e!1926423)))

(declare-fun res!1263605 () Bool)

(assert (=> b!3079465 (=> (not res!1263605) (not e!1926423))))

(assert (=> b!3079465 (= res!1263605 lt!1053025)))

(declare-fun b!3079466 () Bool)

(declare-fun res!1263600 () Bool)

(assert (=> b!3079466 (=> res!1263600 e!1926428)))

(assert (=> b!3079466 (= res!1263600 (not ((_ is ElementMatch!9533) (regTwo!19578 r!17423))))))

(declare-fun e!1926425 () Bool)

(assert (=> b!3079466 (= e!1926425 e!1926428)))

(declare-fun b!3079467 () Bool)

(assert (=> b!3079467 (= e!1926425 (not lt!1053025))))

(declare-fun b!3079468 () Bool)

(declare-fun res!1263604 () Bool)

(assert (=> b!3079468 (=> res!1263604 e!1926424)))

(assert (=> b!3079468 (= res!1263604 (not (isEmpty!19609 (tail!5060 Nil!35274))))))

(declare-fun bm!214467 () Bool)

(assert (=> bm!214467 (= call!214474 (isEmpty!19609 Nil!35274))))

(declare-fun b!3079469 () Bool)

(declare-fun res!1263607 () Bool)

(assert (=> b!3079469 (=> (not res!1263607) (not e!1926423))))

(assert (=> b!3079469 (= res!1263607 (isEmpty!19609 (tail!5060 Nil!35274)))))

(declare-fun b!3079470 () Bool)

(assert (=> b!3079470 (= e!1926429 e!1926425)))

(declare-fun c!512615 () Bool)

(assert (=> b!3079470 (= c!512615 ((_ is EmptyLang!9533) (regTwo!19578 r!17423)))))

(declare-fun b!3079471 () Bool)

(assert (=> b!3079471 (= e!1926423 (= (head!6834 Nil!35274) (c!512555 (regTwo!19578 r!17423))))))

(declare-fun b!3079472 () Bool)

(assert (=> b!3079472 (= e!1926429 (= lt!1053025 call!214474))))

(assert (= (and d!857372 c!512614) b!3079461))

(assert (= (and d!857372 (not c!512614)) b!3079464))

(assert (= (and d!857372 c!512616) b!3079472))

(assert (= (and d!857372 (not c!512616)) b!3079470))

(assert (= (and b!3079470 c!512615) b!3079467))

(assert (= (and b!3079470 (not c!512615)) b!3079466))

(assert (= (and b!3079466 (not res!1263600)) b!3079465))

(assert (= (and b!3079465 res!1263605) b!3079462))

(assert (= (and b!3079462 res!1263606) b!3079469))

(assert (= (and b!3079469 res!1263607) b!3079471))

(assert (= (and b!3079465 (not res!1263603)) b!3079459))

(assert (= (and b!3079459 res!1263602) b!3079460))

(assert (= (and b!3079460 (not res!1263601)) b!3079468))

(assert (= (and b!3079468 (not res!1263604)) b!3079463))

(assert (= (or b!3079472 b!3079460 b!3079462) bm!214467))

(declare-fun m!3389617 () Bool)

(assert (=> b!3079461 m!3389617))

(declare-fun m!3389619 () Bool)

(assert (=> b!3079469 m!3389619))

(assert (=> b!3079469 m!3389619))

(declare-fun m!3389621 () Bool)

(assert (=> b!3079469 m!3389621))

(declare-fun m!3389623 () Bool)

(assert (=> d!857372 m!3389623))

(assert (=> d!857372 m!3389559))

(assert (=> bm!214467 m!3389623))

(declare-fun m!3389625 () Bool)

(assert (=> b!3079464 m!3389625))

(assert (=> b!3079464 m!3389625))

(declare-fun m!3389627 () Bool)

(assert (=> b!3079464 m!3389627))

(assert (=> b!3079464 m!3389619))

(assert (=> b!3079464 m!3389627))

(assert (=> b!3079464 m!3389619))

(declare-fun m!3389629 () Bool)

(assert (=> b!3079464 m!3389629))

(assert (=> b!3079471 m!3389625))

(assert (=> b!3079468 m!3389619))

(assert (=> b!3079468 m!3389619))

(assert (=> b!3079468 m!3389621))

(assert (=> b!3079463 m!3389625))

(assert (=> b!3079234 d!857372))

(declare-fun b!3079473 () Bool)

(declare-fun e!1926435 () Bool)

(declare-fun e!1926433 () Bool)

(assert (=> b!3079473 (= e!1926435 e!1926433)))

(declare-fun res!1263610 () Bool)

(assert (=> b!3079473 (=> (not res!1263610) (not e!1926433))))

(declare-fun lt!1053026 () Bool)

(assert (=> b!3079473 (= res!1263610 (not lt!1053026))))

(declare-fun b!3079474 () Bool)

(declare-fun e!1926431 () Bool)

(assert (=> b!3079474 (= e!1926433 e!1926431)))

(declare-fun res!1263609 () Bool)

(assert (=> b!3079474 (=> res!1263609 e!1926431)))

(declare-fun call!214481 () Bool)

(assert (=> b!3079474 (= res!1263609 call!214481)))

(declare-fun b!3079475 () Bool)

(declare-fun e!1926434 () Bool)

(assert (=> b!3079475 (= e!1926434 (nullable!3179 lt!1052991))))

(declare-fun b!3079476 () Bool)

(declare-fun res!1263614 () Bool)

(declare-fun e!1926430 () Bool)

(assert (=> b!3079476 (=> (not res!1263614) (not e!1926430))))

(assert (=> b!3079476 (= res!1263614 (not call!214481))))

(declare-fun b!3079477 () Bool)

(assert (=> b!3079477 (= e!1926431 (not (= (head!6834 s!11993) (c!512555 lt!1052991))))))

(declare-fun b!3079478 () Bool)

(assert (=> b!3079478 (= e!1926434 (matchR!4415 (derivativeStep!2775 lt!1052991 (head!6834 s!11993)) (tail!5060 s!11993)))))

(declare-fun d!857374 () Bool)

(declare-fun e!1926436 () Bool)

(assert (=> d!857374 e!1926436))

(declare-fun c!512619 () Bool)

(assert (=> d!857374 (= c!512619 ((_ is EmptyExpr!9533) lt!1052991))))

(assert (=> d!857374 (= lt!1053026 e!1926434)))

(declare-fun c!512617 () Bool)

(assert (=> d!857374 (= c!512617 (isEmpty!19609 s!11993))))

(assert (=> d!857374 (validRegex!4266 lt!1052991)))

(assert (=> d!857374 (= (matchR!4415 lt!1052991 s!11993) lt!1053026)))

(declare-fun b!3079479 () Bool)

(declare-fun res!1263611 () Bool)

(assert (=> b!3079479 (=> res!1263611 e!1926435)))

(assert (=> b!3079479 (= res!1263611 e!1926430)))

(declare-fun res!1263613 () Bool)

(assert (=> b!3079479 (=> (not res!1263613) (not e!1926430))))

(assert (=> b!3079479 (= res!1263613 lt!1053026)))

(declare-fun b!3079480 () Bool)

(declare-fun res!1263608 () Bool)

(assert (=> b!3079480 (=> res!1263608 e!1926435)))

(assert (=> b!3079480 (= res!1263608 (not ((_ is ElementMatch!9533) lt!1052991)))))

(declare-fun e!1926432 () Bool)

(assert (=> b!3079480 (= e!1926432 e!1926435)))

(declare-fun b!3079481 () Bool)

(assert (=> b!3079481 (= e!1926432 (not lt!1053026))))

(declare-fun b!3079482 () Bool)

(declare-fun res!1263612 () Bool)

(assert (=> b!3079482 (=> res!1263612 e!1926431)))

(assert (=> b!3079482 (= res!1263612 (not (isEmpty!19609 (tail!5060 s!11993))))))

(declare-fun bm!214476 () Bool)

(assert (=> bm!214476 (= call!214481 (isEmpty!19609 s!11993))))

(declare-fun b!3079483 () Bool)

(declare-fun res!1263615 () Bool)

(assert (=> b!3079483 (=> (not res!1263615) (not e!1926430))))

(assert (=> b!3079483 (= res!1263615 (isEmpty!19609 (tail!5060 s!11993)))))

(declare-fun b!3079484 () Bool)

(assert (=> b!3079484 (= e!1926436 e!1926432)))

(declare-fun c!512618 () Bool)

(assert (=> b!3079484 (= c!512618 ((_ is EmptyLang!9533) lt!1052991))))

(declare-fun b!3079485 () Bool)

(assert (=> b!3079485 (= e!1926430 (= (head!6834 s!11993) (c!512555 lt!1052991)))))

(declare-fun b!3079486 () Bool)

(assert (=> b!3079486 (= e!1926436 (= lt!1053026 call!214481))))

(assert (= (and d!857374 c!512617) b!3079475))

(assert (= (and d!857374 (not c!512617)) b!3079478))

(assert (= (and d!857374 c!512619) b!3079486))

(assert (= (and d!857374 (not c!512619)) b!3079484))

(assert (= (and b!3079484 c!512618) b!3079481))

(assert (= (and b!3079484 (not c!512618)) b!3079480))

(assert (= (and b!3079480 (not res!1263608)) b!3079479))

(assert (= (and b!3079479 res!1263613) b!3079476))

(assert (= (and b!3079476 res!1263614) b!3079483))

(assert (= (and b!3079483 res!1263615) b!3079485))

(assert (= (and b!3079479 (not res!1263611)) b!3079473))

(assert (= (and b!3079473 res!1263610) b!3079474))

(assert (= (and b!3079474 (not res!1263609)) b!3079482))

(assert (= (and b!3079482 (not res!1263612)) b!3079477))

(assert (= (or b!3079486 b!3079474 b!3079476) bm!214476))

(declare-fun m!3389631 () Bool)

(assert (=> b!3079475 m!3389631))

(assert (=> b!3079483 m!3389607))

(assert (=> b!3079483 m!3389607))

(assert (=> b!3079483 m!3389609))

(assert (=> d!857374 m!3389499))

(declare-fun m!3389633 () Bool)

(assert (=> d!857374 m!3389633))

(assert (=> bm!214476 m!3389499))

(assert (=> b!3079478 m!3389611))

(assert (=> b!3079478 m!3389611))

(declare-fun m!3389635 () Bool)

(assert (=> b!3079478 m!3389635))

(assert (=> b!3079478 m!3389607))

(assert (=> b!3079478 m!3389635))

(assert (=> b!3079478 m!3389607))

(declare-fun m!3389637 () Bool)

(assert (=> b!3079478 m!3389637))

(assert (=> b!3079485 m!3389611))

(assert (=> b!3079482 m!3389607))

(assert (=> b!3079482 m!3389607))

(assert (=> b!3079482 m!3389609))

(assert (=> b!3079477 m!3389611))

(assert (=> b!3079234 d!857374))

(declare-fun b!3079487 () Bool)

(declare-fun e!1926442 () Bool)

(declare-fun e!1926440 () Bool)

(assert (=> b!3079487 (= e!1926442 e!1926440)))

(declare-fun res!1263618 () Bool)

(assert (=> b!3079487 (=> (not res!1263618) (not e!1926440))))

(declare-fun lt!1053027 () Bool)

(assert (=> b!3079487 (= res!1263618 (not lt!1053027))))

(declare-fun b!3079488 () Bool)

(declare-fun e!1926438 () Bool)

(assert (=> b!3079488 (= e!1926440 e!1926438)))

(declare-fun res!1263617 () Bool)

(assert (=> b!3079488 (=> res!1263617 e!1926438)))

(declare-fun call!214488 () Bool)

(assert (=> b!3079488 (= res!1263617 call!214488)))

(declare-fun b!3079489 () Bool)

(declare-fun e!1926441 () Bool)

(assert (=> b!3079489 (= e!1926441 (nullable!3179 lt!1052994))))

(declare-fun b!3079490 () Bool)

(declare-fun res!1263622 () Bool)

(declare-fun e!1926437 () Bool)

(assert (=> b!3079490 (=> (not res!1263622) (not e!1926437))))

(assert (=> b!3079490 (= res!1263622 (not call!214488))))

(declare-fun b!3079491 () Bool)

(assert (=> b!3079491 (= e!1926438 (not (= (head!6834 Nil!35274) (c!512555 lt!1052994))))))

(declare-fun b!3079492 () Bool)

(assert (=> b!3079492 (= e!1926441 (matchR!4415 (derivativeStep!2775 lt!1052994 (head!6834 Nil!35274)) (tail!5060 Nil!35274)))))

(declare-fun d!857376 () Bool)

(declare-fun e!1926443 () Bool)

(assert (=> d!857376 e!1926443))

(declare-fun c!512622 () Bool)

(assert (=> d!857376 (= c!512622 ((_ is EmptyExpr!9533) lt!1052994))))

(assert (=> d!857376 (= lt!1053027 e!1926441)))

(declare-fun c!512620 () Bool)

(assert (=> d!857376 (= c!512620 (isEmpty!19609 Nil!35274))))

(assert (=> d!857376 (validRegex!4266 lt!1052994)))

(assert (=> d!857376 (= (matchR!4415 lt!1052994 Nil!35274) lt!1053027)))

(declare-fun b!3079493 () Bool)

(declare-fun res!1263619 () Bool)

(assert (=> b!3079493 (=> res!1263619 e!1926442)))

(assert (=> b!3079493 (= res!1263619 e!1926437)))

(declare-fun res!1263621 () Bool)

(assert (=> b!3079493 (=> (not res!1263621) (not e!1926437))))

(assert (=> b!3079493 (= res!1263621 lt!1053027)))

(declare-fun b!3079494 () Bool)

(declare-fun res!1263616 () Bool)

(assert (=> b!3079494 (=> res!1263616 e!1926442)))

(assert (=> b!3079494 (= res!1263616 (not ((_ is ElementMatch!9533) lt!1052994)))))

(declare-fun e!1926439 () Bool)

(assert (=> b!3079494 (= e!1926439 e!1926442)))

(declare-fun b!3079495 () Bool)

(assert (=> b!3079495 (= e!1926439 (not lt!1053027))))

(declare-fun b!3079496 () Bool)

(declare-fun res!1263620 () Bool)

(assert (=> b!3079496 (=> res!1263620 e!1926438)))

(assert (=> b!3079496 (= res!1263620 (not (isEmpty!19609 (tail!5060 Nil!35274))))))

(declare-fun bm!214483 () Bool)

(assert (=> bm!214483 (= call!214488 (isEmpty!19609 Nil!35274))))

(declare-fun b!3079497 () Bool)

(declare-fun res!1263623 () Bool)

(assert (=> b!3079497 (=> (not res!1263623) (not e!1926437))))

(assert (=> b!3079497 (= res!1263623 (isEmpty!19609 (tail!5060 Nil!35274)))))

(declare-fun b!3079498 () Bool)

(assert (=> b!3079498 (= e!1926443 e!1926439)))

(declare-fun c!512621 () Bool)

(assert (=> b!3079498 (= c!512621 ((_ is EmptyLang!9533) lt!1052994))))

(declare-fun b!3079499 () Bool)

(assert (=> b!3079499 (= e!1926437 (= (head!6834 Nil!35274) (c!512555 lt!1052994)))))

(declare-fun b!3079500 () Bool)

(assert (=> b!3079500 (= e!1926443 (= lt!1053027 call!214488))))

(assert (= (and d!857376 c!512620) b!3079489))

(assert (= (and d!857376 (not c!512620)) b!3079492))

(assert (= (and d!857376 c!512622) b!3079500))

(assert (= (and d!857376 (not c!512622)) b!3079498))

(assert (= (and b!3079498 c!512621) b!3079495))

(assert (= (and b!3079498 (not c!512621)) b!3079494))

(assert (= (and b!3079494 (not res!1263616)) b!3079493))

(assert (= (and b!3079493 res!1263621) b!3079490))

(assert (= (and b!3079490 res!1263622) b!3079497))

(assert (= (and b!3079497 res!1263623) b!3079499))

(assert (= (and b!3079493 (not res!1263619)) b!3079487))

(assert (= (and b!3079487 res!1263618) b!3079488))

(assert (= (and b!3079488 (not res!1263617)) b!3079496))

(assert (= (and b!3079496 (not res!1263620)) b!3079491))

(assert (= (or b!3079500 b!3079488 b!3079490) bm!214483))

(declare-fun m!3389639 () Bool)

(assert (=> b!3079489 m!3389639))

(assert (=> b!3079497 m!3389619))

(assert (=> b!3079497 m!3389619))

(assert (=> b!3079497 m!3389621))

(assert (=> d!857376 m!3389623))

(declare-fun m!3389641 () Bool)

(assert (=> d!857376 m!3389641))

(assert (=> bm!214483 m!3389623))

(assert (=> b!3079492 m!3389625))

(assert (=> b!3079492 m!3389625))

(declare-fun m!3389643 () Bool)

(assert (=> b!3079492 m!3389643))

(assert (=> b!3079492 m!3389619))

(assert (=> b!3079492 m!3389643))

(assert (=> b!3079492 m!3389619))

(declare-fun m!3389645 () Bool)

(assert (=> b!3079492 m!3389645))

(assert (=> b!3079499 m!3389625))

(assert (=> b!3079496 m!3389619))

(assert (=> b!3079496 m!3389619))

(assert (=> b!3079496 m!3389621))

(assert (=> b!3079491 m!3389625))

(assert (=> b!3079234 d!857376))

(declare-fun d!857378 () Bool)

(assert (=> d!857378 (= (isEmptyLang!584 lt!1052994) ((_ is EmptyLang!9533) lt!1052994))))

(assert (=> b!3079239 d!857378))

(declare-fun d!857380 () Bool)

(assert (=> d!857380 (= (isEmptyLang!584 lt!1052991) ((_ is EmptyLang!9533) lt!1052991))))

(assert (=> b!3079232 d!857380))

(declare-fun b!3079650 () Bool)

(declare-fun c!512686 () Bool)

(declare-fun call!214528 () Bool)

(assert (=> b!3079650 (= c!512686 call!214528)))

(declare-fun e!1926534 () Regex!9533)

(declare-fun e!1926539 () Regex!9533)

(assert (=> b!3079650 (= e!1926534 e!1926539)))

(declare-fun b!3079651 () Bool)

(declare-fun e!1926542 () Regex!9533)

(assert (=> b!3079651 (= e!1926542 EmptyLang!9533)))

(declare-fun lt!1053060 () Regex!9533)

(declare-fun c!512687 () Bool)

(declare-fun bm!214520 () Bool)

(declare-fun c!512692 () Bool)

(declare-fun lt!1053063 () Regex!9533)

(declare-fun call!214525 () Bool)

(declare-fun lt!1053059 () Regex!9533)

(assert (=> bm!214520 (= call!214525 (isEmptyLang!584 (ite c!512687 lt!1053063 (ite c!512692 lt!1053060 lt!1053059))))))

(declare-fun b!3079652 () Bool)

(declare-fun c!512689 () Bool)

(declare-fun lt!1053062 () Regex!9533)

(assert (=> b!3079652 (= c!512689 (isEmptyExpr!590 lt!1053062))))

(declare-fun e!1926543 () Regex!9533)

(declare-fun e!1926541 () Regex!9533)

(assert (=> b!3079652 (= e!1926543 e!1926541)))

(declare-fun b!3079653 () Bool)

(declare-fun lt!1053058 () Regex!9533)

(assert (=> b!3079653 (= e!1926539 (Union!9533 lt!1053060 lt!1053058))))

(declare-fun b!3079654 () Bool)

(declare-fun e!1926532 () Regex!9533)

(assert (=> b!3079654 (= e!1926532 e!1926543)))

(declare-fun call!214530 () Regex!9533)

(assert (=> b!3079654 (= lt!1053062 call!214530)))

(declare-fun call!214524 () Regex!9533)

(assert (=> b!3079654 (= lt!1053059 call!214524)))

(declare-fun res!1263647 () Bool)

(assert (=> b!3079654 (= res!1263647 call!214528)))

(declare-fun e!1926533 () Bool)

(assert (=> b!3079654 (=> res!1263647 e!1926533)))

(declare-fun c!512696 () Bool)

(assert (=> b!3079654 (= c!512696 e!1926533)))

(declare-fun b!3079655 () Bool)

(declare-fun e!1926530 () Regex!9533)

(assert (=> b!3079655 (= e!1926530 (Concat!14854 lt!1053062 lt!1053059))))

(declare-fun bm!214521 () Bool)

(declare-fun call!214526 () Regex!9533)

(assert (=> bm!214521 (= call!214526 (simplify!488 (ite c!512687 (reg!9862 (regTwo!19578 r!17423)) (ite c!512692 (regTwo!19579 (regTwo!19578 r!17423)) (regOne!19578 (regTwo!19578 r!17423))))))))

(declare-fun b!3079656 () Bool)

(declare-fun e!1926540 () Regex!9533)

(assert (=> b!3079656 (= e!1926542 e!1926540)))

(declare-fun c!512695 () Bool)

(assert (=> b!3079656 (= c!512695 ((_ is ElementMatch!9533) (regTwo!19578 r!17423)))))

(declare-fun b!3079657 () Bool)

(assert (=> b!3079657 (= e!1926534 lt!1053058)))

(declare-fun b!3079658 () Bool)

(declare-fun call!214529 () Bool)

(assert (=> b!3079658 (= e!1926533 call!214529)))

(declare-fun b!3079659 () Bool)

(declare-fun e!1926531 () Regex!9533)

(assert (=> b!3079659 (= e!1926531 EmptyExpr!9533)))

(declare-fun b!3079660 () Bool)

(assert (=> b!3079660 (= e!1926541 e!1926530)))

(declare-fun c!512691 () Bool)

(declare-fun call!214527 () Bool)

(assert (=> b!3079660 (= c!512691 call!214527)))

(declare-fun b!3079661 () Bool)

(assert (=> b!3079661 (= e!1926539 lt!1053060)))

(declare-fun b!3079662 () Bool)

(assert (=> b!3079662 (= e!1926530 lt!1053062)))

(declare-fun b!3079663 () Bool)

(declare-fun c!512688 () Bool)

(assert (=> b!3079663 (= c!512688 ((_ is EmptyExpr!9533) (regTwo!19578 r!17423)))))

(assert (=> b!3079663 (= e!1926540 e!1926531)))

(declare-fun b!3079664 () Bool)

(declare-fun e!1926535 () Bool)

(declare-fun lt!1053061 () Regex!9533)

(assert (=> b!3079664 (= e!1926535 (= (nullable!3179 lt!1053061) (nullable!3179 (regTwo!19578 r!17423))))))

(declare-fun bm!214522 () Bool)

(assert (=> bm!214522 (= call!214529 call!214525)))

(declare-fun d!857382 () Bool)

(assert (=> d!857382 e!1926535))

(declare-fun res!1263648 () Bool)

(assert (=> d!857382 (=> (not res!1263648) (not e!1926535))))

(assert (=> d!857382 (= res!1263648 (validRegex!4266 lt!1053061))))

(assert (=> d!857382 (= lt!1053061 e!1926542)))

(declare-fun c!512693 () Bool)

(assert (=> d!857382 (= c!512693 ((_ is EmptyLang!9533) (regTwo!19578 r!17423)))))

(assert (=> d!857382 (validRegex!4266 (regTwo!19578 r!17423))))

(assert (=> d!857382 (= (simplify!488 (regTwo!19578 r!17423)) lt!1053061)))

(declare-fun bm!214519 () Bool)

(assert (=> bm!214519 (= call!214530 call!214526)))

(declare-fun b!3079665 () Bool)

(declare-fun e!1926537 () Regex!9533)

(assert (=> b!3079665 (= e!1926537 EmptyExpr!9533)))

(declare-fun b!3079666 () Bool)

(assert (=> b!3079666 (= e!1926541 lt!1053059)))

(declare-fun b!3079667 () Bool)

(declare-fun e!1926536 () Regex!9533)

(assert (=> b!3079667 (= e!1926531 e!1926536)))

(assert (=> b!3079667 (= c!512687 ((_ is Star!9533) (regTwo!19578 r!17423)))))

(declare-fun b!3079668 () Bool)

(assert (=> b!3079668 (= e!1926540 (regTwo!19578 r!17423))))

(declare-fun b!3079669 () Bool)

(assert (=> b!3079669 (= e!1926532 e!1926534)))

(assert (=> b!3079669 (= lt!1053060 call!214524)))

(assert (=> b!3079669 (= lt!1053058 call!214530)))

(declare-fun c!512690 () Bool)

(assert (=> b!3079669 (= c!512690 call!214529)))

(declare-fun b!3079670 () Bool)

(assert (=> b!3079670 (= c!512692 ((_ is Union!9533) (regTwo!19578 r!17423)))))

(assert (=> b!3079670 (= e!1926536 e!1926532)))

(declare-fun bm!214523 () Bool)

(assert (=> bm!214523 (= call!214528 (isEmptyLang!584 (ite c!512692 lt!1053058 lt!1053062)))))

(declare-fun b!3079671 () Bool)

(assert (=> b!3079671 (= e!1926543 EmptyLang!9533)))

(declare-fun b!3079672 () Bool)

(assert (=> b!3079672 (= e!1926537 (Star!9533 lt!1053063))))

(declare-fun b!3079673 () Bool)

(declare-fun c!512694 () Bool)

(declare-fun e!1926538 () Bool)

(assert (=> b!3079673 (= c!512694 e!1926538)))

(declare-fun res!1263649 () Bool)

(assert (=> b!3079673 (=> res!1263649 e!1926538)))

(assert (=> b!3079673 (= res!1263649 call!214525)))

(assert (=> b!3079673 (= lt!1053063 call!214526)))

(assert (=> b!3079673 (= e!1926536 e!1926537)))

(declare-fun b!3079674 () Bool)

(assert (=> b!3079674 (= e!1926538 call!214527)))

(declare-fun bm!214524 () Bool)

(assert (=> bm!214524 (= call!214527 (isEmptyExpr!590 (ite c!512687 lt!1053063 lt!1053059)))))

(declare-fun bm!214525 () Bool)

(assert (=> bm!214525 (= call!214524 (simplify!488 (ite c!512692 (regOne!19579 (regTwo!19578 r!17423)) (regTwo!19578 (regTwo!19578 r!17423)))))))

(assert (= (and d!857382 c!512693) b!3079651))

(assert (= (and d!857382 (not c!512693)) b!3079656))

(assert (= (and b!3079656 c!512695) b!3079668))

(assert (= (and b!3079656 (not c!512695)) b!3079663))

(assert (= (and b!3079663 c!512688) b!3079659))

(assert (= (and b!3079663 (not c!512688)) b!3079667))

(assert (= (and b!3079667 c!512687) b!3079673))

(assert (= (and b!3079667 (not c!512687)) b!3079670))

(assert (= (and b!3079673 (not res!1263649)) b!3079674))

(assert (= (and b!3079673 c!512694) b!3079665))

(assert (= (and b!3079673 (not c!512694)) b!3079672))

(assert (= (and b!3079670 c!512692) b!3079669))

(assert (= (and b!3079670 (not c!512692)) b!3079654))

(assert (= (and b!3079669 c!512690) b!3079657))

(assert (= (and b!3079669 (not c!512690)) b!3079650))

(assert (= (and b!3079650 c!512686) b!3079661))

(assert (= (and b!3079650 (not c!512686)) b!3079653))

(assert (= (and b!3079654 (not res!1263647)) b!3079658))

(assert (= (and b!3079654 c!512696) b!3079671))

(assert (= (and b!3079654 (not c!512696)) b!3079652))

(assert (= (and b!3079652 c!512689) b!3079666))

(assert (= (and b!3079652 (not c!512689)) b!3079660))

(assert (= (and b!3079660 c!512691) b!3079662))

(assert (= (and b!3079660 (not c!512691)) b!3079655))

(assert (= (or b!3079669 b!3079654) bm!214525))

(assert (= (or b!3079669 b!3079654) bm!214519))

(assert (= (or b!3079650 b!3079654) bm!214523))

(assert (= (or b!3079669 b!3079658) bm!214522))

(assert (= (or b!3079674 b!3079660) bm!214524))

(assert (= (or b!3079673 bm!214519) bm!214521))

(assert (= (or b!3079673 bm!214522) bm!214520))

(assert (= (and d!857382 res!1263648) b!3079664))

(declare-fun m!3389697 () Bool)

(assert (=> bm!214521 m!3389697))

(declare-fun m!3389699 () Bool)

(assert (=> bm!214523 m!3389699))

(declare-fun m!3389701 () Bool)

(assert (=> bm!214525 m!3389701))

(declare-fun m!3389703 () Bool)

(assert (=> bm!214520 m!3389703))

(declare-fun m!3389705 () Bool)

(assert (=> bm!214524 m!3389705))

(declare-fun m!3389707 () Bool)

(assert (=> b!3079664 m!3389707))

(assert (=> b!3079664 m!3389617))

(declare-fun m!3389709 () Bool)

(assert (=> b!3079652 m!3389709))

(declare-fun m!3389711 () Bool)

(assert (=> d!857382 m!3389711))

(assert (=> d!857382 m!3389559))

(assert (=> b!3079232 d!857382))

(declare-fun b!3079675 () Bool)

(declare-fun c!512697 () Bool)

(declare-fun call!214535 () Bool)

(assert (=> b!3079675 (= c!512697 call!214535)))

(declare-fun e!1926548 () Regex!9533)

(declare-fun e!1926553 () Regex!9533)

(assert (=> b!3079675 (= e!1926548 e!1926553)))

(declare-fun b!3079676 () Bool)

(declare-fun e!1926556 () Regex!9533)

(assert (=> b!3079676 (= e!1926556 EmptyLang!9533)))

(declare-fun bm!214527 () Bool)

(declare-fun lt!1053065 () Regex!9533)

(declare-fun c!512703 () Bool)

(declare-fun call!214532 () Bool)

(declare-fun c!512698 () Bool)

(declare-fun lt!1053069 () Regex!9533)

(declare-fun lt!1053066 () Regex!9533)

(assert (=> bm!214527 (= call!214532 (isEmptyLang!584 (ite c!512698 lt!1053069 (ite c!512703 lt!1053066 lt!1053065))))))

(declare-fun b!3079677 () Bool)

(declare-fun c!512700 () Bool)

(declare-fun lt!1053068 () Regex!9533)

(assert (=> b!3079677 (= c!512700 (isEmptyExpr!590 lt!1053068))))

(declare-fun e!1926557 () Regex!9533)

(declare-fun e!1926555 () Regex!9533)

(assert (=> b!3079677 (= e!1926557 e!1926555)))

(declare-fun b!3079678 () Bool)

(declare-fun lt!1053064 () Regex!9533)

(assert (=> b!3079678 (= e!1926553 (Union!9533 lt!1053066 lt!1053064))))

(declare-fun b!3079679 () Bool)

(declare-fun e!1926546 () Regex!9533)

(assert (=> b!3079679 (= e!1926546 e!1926557)))

(declare-fun call!214537 () Regex!9533)

(assert (=> b!3079679 (= lt!1053068 call!214537)))

(declare-fun call!214531 () Regex!9533)

(assert (=> b!3079679 (= lt!1053065 call!214531)))

(declare-fun res!1263650 () Bool)

(assert (=> b!3079679 (= res!1263650 call!214535)))

(declare-fun e!1926547 () Bool)

(assert (=> b!3079679 (=> res!1263650 e!1926547)))

(declare-fun c!512707 () Bool)

(assert (=> b!3079679 (= c!512707 e!1926547)))

(declare-fun b!3079680 () Bool)

(declare-fun e!1926544 () Regex!9533)

(assert (=> b!3079680 (= e!1926544 (Concat!14854 lt!1053068 lt!1053065))))

(declare-fun bm!214528 () Bool)

(declare-fun call!214533 () Regex!9533)

(assert (=> bm!214528 (= call!214533 (simplify!488 (ite c!512698 (reg!9862 (regOne!19578 r!17423)) (ite c!512703 (regTwo!19579 (regOne!19578 r!17423)) (regOne!19578 (regOne!19578 r!17423))))))))

(declare-fun b!3079681 () Bool)

(declare-fun e!1926554 () Regex!9533)

(assert (=> b!3079681 (= e!1926556 e!1926554)))

(declare-fun c!512706 () Bool)

(assert (=> b!3079681 (= c!512706 ((_ is ElementMatch!9533) (regOne!19578 r!17423)))))

(declare-fun b!3079682 () Bool)

(assert (=> b!3079682 (= e!1926548 lt!1053064)))

(declare-fun b!3079683 () Bool)

(declare-fun call!214536 () Bool)

(assert (=> b!3079683 (= e!1926547 call!214536)))

(declare-fun b!3079684 () Bool)

(declare-fun e!1926545 () Regex!9533)

(assert (=> b!3079684 (= e!1926545 EmptyExpr!9533)))

(declare-fun b!3079685 () Bool)

(assert (=> b!3079685 (= e!1926555 e!1926544)))

(declare-fun c!512702 () Bool)

(declare-fun call!214534 () Bool)

(assert (=> b!3079685 (= c!512702 call!214534)))

(declare-fun b!3079686 () Bool)

(assert (=> b!3079686 (= e!1926553 lt!1053066)))

(declare-fun b!3079687 () Bool)

(assert (=> b!3079687 (= e!1926544 lt!1053068)))

(declare-fun b!3079688 () Bool)

(declare-fun c!512699 () Bool)

(assert (=> b!3079688 (= c!512699 ((_ is EmptyExpr!9533) (regOne!19578 r!17423)))))

(assert (=> b!3079688 (= e!1926554 e!1926545)))

(declare-fun b!3079689 () Bool)

(declare-fun e!1926549 () Bool)

(declare-fun lt!1053067 () Regex!9533)

(assert (=> b!3079689 (= e!1926549 (= (nullable!3179 lt!1053067) (nullable!3179 (regOne!19578 r!17423))))))

(declare-fun bm!214529 () Bool)

(assert (=> bm!214529 (= call!214536 call!214532)))

(declare-fun d!857394 () Bool)

(assert (=> d!857394 e!1926549))

(declare-fun res!1263651 () Bool)

(assert (=> d!857394 (=> (not res!1263651) (not e!1926549))))

(assert (=> d!857394 (= res!1263651 (validRegex!4266 lt!1053067))))

(assert (=> d!857394 (= lt!1053067 e!1926556)))

(declare-fun c!512704 () Bool)

(assert (=> d!857394 (= c!512704 ((_ is EmptyLang!9533) (regOne!19578 r!17423)))))

(assert (=> d!857394 (validRegex!4266 (regOne!19578 r!17423))))

(assert (=> d!857394 (= (simplify!488 (regOne!19578 r!17423)) lt!1053067)))

(declare-fun bm!214526 () Bool)

(assert (=> bm!214526 (= call!214537 call!214533)))

(declare-fun b!3079690 () Bool)

(declare-fun e!1926551 () Regex!9533)

(assert (=> b!3079690 (= e!1926551 EmptyExpr!9533)))

(declare-fun b!3079691 () Bool)

(assert (=> b!3079691 (= e!1926555 lt!1053065)))

(declare-fun b!3079692 () Bool)

(declare-fun e!1926550 () Regex!9533)

(assert (=> b!3079692 (= e!1926545 e!1926550)))

(assert (=> b!3079692 (= c!512698 ((_ is Star!9533) (regOne!19578 r!17423)))))

(declare-fun b!3079693 () Bool)

(assert (=> b!3079693 (= e!1926554 (regOne!19578 r!17423))))

(declare-fun b!3079694 () Bool)

(assert (=> b!3079694 (= e!1926546 e!1926548)))

(assert (=> b!3079694 (= lt!1053066 call!214531)))

(assert (=> b!3079694 (= lt!1053064 call!214537)))

(declare-fun c!512701 () Bool)

(assert (=> b!3079694 (= c!512701 call!214536)))

(declare-fun b!3079695 () Bool)

(assert (=> b!3079695 (= c!512703 ((_ is Union!9533) (regOne!19578 r!17423)))))

(assert (=> b!3079695 (= e!1926550 e!1926546)))

(declare-fun bm!214530 () Bool)

(assert (=> bm!214530 (= call!214535 (isEmptyLang!584 (ite c!512703 lt!1053064 lt!1053068)))))

(declare-fun b!3079696 () Bool)

(assert (=> b!3079696 (= e!1926557 EmptyLang!9533)))

(declare-fun b!3079697 () Bool)

(assert (=> b!3079697 (= e!1926551 (Star!9533 lt!1053069))))

(declare-fun b!3079698 () Bool)

(declare-fun c!512705 () Bool)

(declare-fun e!1926552 () Bool)

(assert (=> b!3079698 (= c!512705 e!1926552)))

(declare-fun res!1263652 () Bool)

(assert (=> b!3079698 (=> res!1263652 e!1926552)))

(assert (=> b!3079698 (= res!1263652 call!214532)))

(assert (=> b!3079698 (= lt!1053069 call!214533)))

(assert (=> b!3079698 (= e!1926550 e!1926551)))

(declare-fun b!3079699 () Bool)

(assert (=> b!3079699 (= e!1926552 call!214534)))

(declare-fun bm!214531 () Bool)

(assert (=> bm!214531 (= call!214534 (isEmptyExpr!590 (ite c!512698 lt!1053069 lt!1053065)))))

(declare-fun bm!214532 () Bool)

(assert (=> bm!214532 (= call!214531 (simplify!488 (ite c!512703 (regOne!19579 (regOne!19578 r!17423)) (regTwo!19578 (regOne!19578 r!17423)))))))

(assert (= (and d!857394 c!512704) b!3079676))

(assert (= (and d!857394 (not c!512704)) b!3079681))

(assert (= (and b!3079681 c!512706) b!3079693))

(assert (= (and b!3079681 (not c!512706)) b!3079688))

(assert (= (and b!3079688 c!512699) b!3079684))

(assert (= (and b!3079688 (not c!512699)) b!3079692))

(assert (= (and b!3079692 c!512698) b!3079698))

(assert (= (and b!3079692 (not c!512698)) b!3079695))

(assert (= (and b!3079698 (not res!1263652)) b!3079699))

(assert (= (and b!3079698 c!512705) b!3079690))

(assert (= (and b!3079698 (not c!512705)) b!3079697))

(assert (= (and b!3079695 c!512703) b!3079694))

(assert (= (and b!3079695 (not c!512703)) b!3079679))

(assert (= (and b!3079694 c!512701) b!3079682))

(assert (= (and b!3079694 (not c!512701)) b!3079675))

(assert (= (and b!3079675 c!512697) b!3079686))

(assert (= (and b!3079675 (not c!512697)) b!3079678))

(assert (= (and b!3079679 (not res!1263650)) b!3079683))

(assert (= (and b!3079679 c!512707) b!3079696))

(assert (= (and b!3079679 (not c!512707)) b!3079677))

(assert (= (and b!3079677 c!512700) b!3079691))

(assert (= (and b!3079677 (not c!512700)) b!3079685))

(assert (= (and b!3079685 c!512702) b!3079687))

(assert (= (and b!3079685 (not c!512702)) b!3079680))

(assert (= (or b!3079694 b!3079679) bm!214532))

(assert (= (or b!3079694 b!3079679) bm!214526))

(assert (= (or b!3079675 b!3079679) bm!214530))

(assert (= (or b!3079694 b!3079683) bm!214529))

(assert (= (or b!3079699 b!3079685) bm!214531))

(assert (= (or b!3079698 bm!214526) bm!214528))

(assert (= (or b!3079698 bm!214529) bm!214527))

(assert (= (and d!857394 res!1263651) b!3079689))

(declare-fun m!3389713 () Bool)

(assert (=> bm!214528 m!3389713))

(declare-fun m!3389715 () Bool)

(assert (=> bm!214530 m!3389715))

(declare-fun m!3389717 () Bool)

(assert (=> bm!214532 m!3389717))

(declare-fun m!3389719 () Bool)

(assert (=> bm!214527 m!3389719))

(declare-fun m!3389721 () Bool)

(assert (=> bm!214531 m!3389721))

(declare-fun m!3389723 () Bool)

(assert (=> b!3079689 m!3389723))

(assert (=> b!3079689 m!3389605))

(declare-fun m!3389725 () Bool)

(assert (=> b!3079677 m!3389725))

(declare-fun m!3389727 () Bool)

(assert (=> d!857394 m!3389727))

(assert (=> d!857394 m!3389565))

(assert (=> b!3079232 d!857394))

(declare-fun d!857396 () Bool)

(assert (=> d!857396 (= (isEmptyExpr!590 lt!1052994) ((_ is EmptyExpr!9533) lt!1052994))))

(assert (=> b!3079237 d!857396))

(declare-fun b!3079700 () Bool)

(declare-fun e!1926563 () Bool)

(declare-fun e!1926561 () Bool)

(assert (=> b!3079700 (= e!1926563 e!1926561)))

(declare-fun res!1263655 () Bool)

(assert (=> b!3079700 (=> (not res!1263655) (not e!1926561))))

(declare-fun lt!1053070 () Bool)

(assert (=> b!3079700 (= res!1263655 (not lt!1053070))))

(declare-fun b!3079701 () Bool)

(declare-fun e!1926559 () Bool)

(assert (=> b!3079701 (= e!1926561 e!1926559)))

(declare-fun res!1263654 () Bool)

(assert (=> b!3079701 (=> res!1263654 e!1926559)))

(declare-fun call!214538 () Bool)

(assert (=> b!3079701 (= res!1263654 call!214538)))

(declare-fun b!3079702 () Bool)

(declare-fun e!1926562 () Bool)

(assert (=> b!3079702 (= e!1926562 (nullable!3179 (simplify!488 r!17423)))))

(declare-fun b!3079703 () Bool)

(declare-fun res!1263659 () Bool)

(declare-fun e!1926558 () Bool)

(assert (=> b!3079703 (=> (not res!1263659) (not e!1926558))))

(assert (=> b!3079703 (= res!1263659 (not call!214538))))

(declare-fun b!3079704 () Bool)

(assert (=> b!3079704 (= e!1926559 (not (= (head!6834 s!11993) (c!512555 (simplify!488 r!17423)))))))

(declare-fun b!3079705 () Bool)

(assert (=> b!3079705 (= e!1926562 (matchR!4415 (derivativeStep!2775 (simplify!488 r!17423) (head!6834 s!11993)) (tail!5060 s!11993)))))

(declare-fun d!857398 () Bool)

(declare-fun e!1926564 () Bool)

(assert (=> d!857398 e!1926564))

(declare-fun c!512710 () Bool)

(assert (=> d!857398 (= c!512710 ((_ is EmptyExpr!9533) (simplify!488 r!17423)))))

(assert (=> d!857398 (= lt!1053070 e!1926562)))

(declare-fun c!512708 () Bool)

(assert (=> d!857398 (= c!512708 (isEmpty!19609 s!11993))))

(assert (=> d!857398 (validRegex!4266 (simplify!488 r!17423))))

(assert (=> d!857398 (= (matchR!4415 (simplify!488 r!17423) s!11993) lt!1053070)))

(declare-fun b!3079706 () Bool)

(declare-fun res!1263656 () Bool)

(assert (=> b!3079706 (=> res!1263656 e!1926563)))

(assert (=> b!3079706 (= res!1263656 e!1926558)))

(declare-fun res!1263658 () Bool)

(assert (=> b!3079706 (=> (not res!1263658) (not e!1926558))))

(assert (=> b!3079706 (= res!1263658 lt!1053070)))

(declare-fun b!3079707 () Bool)

(declare-fun res!1263653 () Bool)

(assert (=> b!3079707 (=> res!1263653 e!1926563)))

(assert (=> b!3079707 (= res!1263653 (not ((_ is ElementMatch!9533) (simplify!488 r!17423))))))

(declare-fun e!1926560 () Bool)

(assert (=> b!3079707 (= e!1926560 e!1926563)))

(declare-fun b!3079708 () Bool)

(assert (=> b!3079708 (= e!1926560 (not lt!1053070))))

(declare-fun b!3079709 () Bool)

(declare-fun res!1263657 () Bool)

(assert (=> b!3079709 (=> res!1263657 e!1926559)))

(assert (=> b!3079709 (= res!1263657 (not (isEmpty!19609 (tail!5060 s!11993))))))

(declare-fun bm!214533 () Bool)

(assert (=> bm!214533 (= call!214538 (isEmpty!19609 s!11993))))

(declare-fun b!3079710 () Bool)

(declare-fun res!1263660 () Bool)

(assert (=> b!3079710 (=> (not res!1263660) (not e!1926558))))

(assert (=> b!3079710 (= res!1263660 (isEmpty!19609 (tail!5060 s!11993)))))

(declare-fun b!3079711 () Bool)

(assert (=> b!3079711 (= e!1926564 e!1926560)))

(declare-fun c!512709 () Bool)

(assert (=> b!3079711 (= c!512709 ((_ is EmptyLang!9533) (simplify!488 r!17423)))))

(declare-fun b!3079712 () Bool)

(assert (=> b!3079712 (= e!1926558 (= (head!6834 s!11993) (c!512555 (simplify!488 r!17423))))))

(declare-fun b!3079713 () Bool)

(assert (=> b!3079713 (= e!1926564 (= lt!1053070 call!214538))))

(assert (= (and d!857398 c!512708) b!3079702))

(assert (= (and d!857398 (not c!512708)) b!3079705))

(assert (= (and d!857398 c!512710) b!3079713))

(assert (= (and d!857398 (not c!512710)) b!3079711))

(assert (= (and b!3079711 c!512709) b!3079708))

(assert (= (and b!3079711 (not c!512709)) b!3079707))

(assert (= (and b!3079707 (not res!1263653)) b!3079706))

(assert (= (and b!3079706 res!1263658) b!3079703))

(assert (= (and b!3079703 res!1263659) b!3079710))

(assert (= (and b!3079710 res!1263660) b!3079712))

(assert (= (and b!3079706 (not res!1263656)) b!3079700))

(assert (= (and b!3079700 res!1263655) b!3079701))

(assert (= (and b!3079701 (not res!1263654)) b!3079709))

(assert (= (and b!3079709 (not res!1263657)) b!3079704))

(assert (= (or b!3079713 b!3079701 b!3079703) bm!214533))

(assert (=> b!3079702 m!3389489))

(declare-fun m!3389729 () Bool)

(assert (=> b!3079702 m!3389729))

(assert (=> b!3079710 m!3389607))

(assert (=> b!3079710 m!3389607))

(assert (=> b!3079710 m!3389609))

(assert (=> d!857398 m!3389499))

(assert (=> d!857398 m!3389489))

(declare-fun m!3389731 () Bool)

(assert (=> d!857398 m!3389731))

(assert (=> bm!214533 m!3389499))

(assert (=> b!3079705 m!3389611))

(assert (=> b!3079705 m!3389489))

(assert (=> b!3079705 m!3389611))

(declare-fun m!3389733 () Bool)

(assert (=> b!3079705 m!3389733))

(assert (=> b!3079705 m!3389607))

(assert (=> b!3079705 m!3389733))

(assert (=> b!3079705 m!3389607))

(declare-fun m!3389735 () Bool)

(assert (=> b!3079705 m!3389735))

(assert (=> b!3079712 m!3389611))

(assert (=> b!3079709 m!3389607))

(assert (=> b!3079709 m!3389607))

(assert (=> b!3079709 m!3389609))

(assert (=> b!3079704 m!3389611))

(assert (=> b!3079238 d!857398))

(declare-fun b!3079714 () Bool)

(declare-fun c!512711 () Bool)

(declare-fun call!214543 () Bool)

(assert (=> b!3079714 (= c!512711 call!214543)))

(declare-fun e!1926569 () Regex!9533)

(declare-fun e!1926574 () Regex!9533)

(assert (=> b!3079714 (= e!1926569 e!1926574)))

(declare-fun b!3079715 () Bool)

(declare-fun e!1926577 () Regex!9533)

(assert (=> b!3079715 (= e!1926577 EmptyLang!9533)))

(declare-fun lt!1053076 () Regex!9533)

(declare-fun lt!1053072 () Regex!9533)

(declare-fun bm!214535 () Bool)

(declare-fun lt!1053073 () Regex!9533)

(declare-fun c!512717 () Bool)

(declare-fun c!512712 () Bool)

(declare-fun call!214540 () Bool)

(assert (=> bm!214535 (= call!214540 (isEmptyLang!584 (ite c!512712 lt!1053076 (ite c!512717 lt!1053073 lt!1053072))))))

(declare-fun b!3079716 () Bool)

(declare-fun c!512714 () Bool)

(declare-fun lt!1053075 () Regex!9533)

(assert (=> b!3079716 (= c!512714 (isEmptyExpr!590 lt!1053075))))

(declare-fun e!1926578 () Regex!9533)

(declare-fun e!1926576 () Regex!9533)

(assert (=> b!3079716 (= e!1926578 e!1926576)))

(declare-fun b!3079717 () Bool)

(declare-fun lt!1053071 () Regex!9533)

(assert (=> b!3079717 (= e!1926574 (Union!9533 lt!1053073 lt!1053071))))

(declare-fun b!3079718 () Bool)

(declare-fun e!1926567 () Regex!9533)

(assert (=> b!3079718 (= e!1926567 e!1926578)))

(declare-fun call!214545 () Regex!9533)

(assert (=> b!3079718 (= lt!1053075 call!214545)))

(declare-fun call!214539 () Regex!9533)

(assert (=> b!3079718 (= lt!1053072 call!214539)))

(declare-fun res!1263661 () Bool)

(assert (=> b!3079718 (= res!1263661 call!214543)))

(declare-fun e!1926568 () Bool)

(assert (=> b!3079718 (=> res!1263661 e!1926568)))

(declare-fun c!512721 () Bool)

(assert (=> b!3079718 (= c!512721 e!1926568)))

(declare-fun b!3079719 () Bool)

(declare-fun e!1926565 () Regex!9533)

(assert (=> b!3079719 (= e!1926565 (Concat!14854 lt!1053075 lt!1053072))))

(declare-fun bm!214536 () Bool)

(declare-fun call!214541 () Regex!9533)

(assert (=> bm!214536 (= call!214541 (simplify!488 (ite c!512712 (reg!9862 r!17423) (ite c!512717 (regTwo!19579 r!17423) (regOne!19578 r!17423)))))))

(declare-fun b!3079720 () Bool)

(declare-fun e!1926575 () Regex!9533)

(assert (=> b!3079720 (= e!1926577 e!1926575)))

(declare-fun c!512720 () Bool)

(assert (=> b!3079720 (= c!512720 ((_ is ElementMatch!9533) r!17423))))

(declare-fun b!3079721 () Bool)

(assert (=> b!3079721 (= e!1926569 lt!1053071)))

(declare-fun b!3079722 () Bool)

(declare-fun call!214544 () Bool)

(assert (=> b!3079722 (= e!1926568 call!214544)))

(declare-fun b!3079723 () Bool)

(declare-fun e!1926566 () Regex!9533)

(assert (=> b!3079723 (= e!1926566 EmptyExpr!9533)))

(declare-fun b!3079724 () Bool)

(assert (=> b!3079724 (= e!1926576 e!1926565)))

(declare-fun c!512716 () Bool)

(declare-fun call!214542 () Bool)

(assert (=> b!3079724 (= c!512716 call!214542)))

(declare-fun b!3079725 () Bool)

(assert (=> b!3079725 (= e!1926574 lt!1053073)))

(declare-fun b!3079726 () Bool)

(assert (=> b!3079726 (= e!1926565 lt!1053075)))

(declare-fun b!3079727 () Bool)

(declare-fun c!512713 () Bool)

(assert (=> b!3079727 (= c!512713 ((_ is EmptyExpr!9533) r!17423))))

(assert (=> b!3079727 (= e!1926575 e!1926566)))

(declare-fun b!3079728 () Bool)

(declare-fun e!1926570 () Bool)

(declare-fun lt!1053074 () Regex!9533)

(assert (=> b!3079728 (= e!1926570 (= (nullable!3179 lt!1053074) (nullable!3179 r!17423)))))

(declare-fun bm!214537 () Bool)

(assert (=> bm!214537 (= call!214544 call!214540)))

(declare-fun d!857400 () Bool)

(assert (=> d!857400 e!1926570))

(declare-fun res!1263662 () Bool)

(assert (=> d!857400 (=> (not res!1263662) (not e!1926570))))

(assert (=> d!857400 (= res!1263662 (validRegex!4266 lt!1053074))))

(assert (=> d!857400 (= lt!1053074 e!1926577)))

(declare-fun c!512718 () Bool)

(assert (=> d!857400 (= c!512718 ((_ is EmptyLang!9533) r!17423))))

(assert (=> d!857400 (validRegex!4266 r!17423)))

(assert (=> d!857400 (= (simplify!488 r!17423) lt!1053074)))

(declare-fun bm!214534 () Bool)

(assert (=> bm!214534 (= call!214545 call!214541)))

(declare-fun b!3079729 () Bool)

(declare-fun e!1926572 () Regex!9533)

(assert (=> b!3079729 (= e!1926572 EmptyExpr!9533)))

(declare-fun b!3079730 () Bool)

(assert (=> b!3079730 (= e!1926576 lt!1053072)))

(declare-fun b!3079731 () Bool)

(declare-fun e!1926571 () Regex!9533)

(assert (=> b!3079731 (= e!1926566 e!1926571)))

(assert (=> b!3079731 (= c!512712 ((_ is Star!9533) r!17423))))

(declare-fun b!3079732 () Bool)

(assert (=> b!3079732 (= e!1926575 r!17423)))

(declare-fun b!3079733 () Bool)

(assert (=> b!3079733 (= e!1926567 e!1926569)))

(assert (=> b!3079733 (= lt!1053073 call!214539)))

(assert (=> b!3079733 (= lt!1053071 call!214545)))

(declare-fun c!512715 () Bool)

(assert (=> b!3079733 (= c!512715 call!214544)))

(declare-fun b!3079734 () Bool)

(assert (=> b!3079734 (= c!512717 ((_ is Union!9533) r!17423))))

(assert (=> b!3079734 (= e!1926571 e!1926567)))

(declare-fun bm!214538 () Bool)

(assert (=> bm!214538 (= call!214543 (isEmptyLang!584 (ite c!512717 lt!1053071 lt!1053075)))))

(declare-fun b!3079735 () Bool)

(assert (=> b!3079735 (= e!1926578 EmptyLang!9533)))

(declare-fun b!3079736 () Bool)

(assert (=> b!3079736 (= e!1926572 (Star!9533 lt!1053076))))

(declare-fun b!3079737 () Bool)

(declare-fun c!512719 () Bool)

(declare-fun e!1926573 () Bool)

(assert (=> b!3079737 (= c!512719 e!1926573)))

(declare-fun res!1263663 () Bool)

(assert (=> b!3079737 (=> res!1263663 e!1926573)))

(assert (=> b!3079737 (= res!1263663 call!214540)))

(assert (=> b!3079737 (= lt!1053076 call!214541)))

(assert (=> b!3079737 (= e!1926571 e!1926572)))

(declare-fun b!3079738 () Bool)

(assert (=> b!3079738 (= e!1926573 call!214542)))

(declare-fun bm!214539 () Bool)

(assert (=> bm!214539 (= call!214542 (isEmptyExpr!590 (ite c!512712 lt!1053076 lt!1053072)))))

(declare-fun bm!214540 () Bool)

(assert (=> bm!214540 (= call!214539 (simplify!488 (ite c!512717 (regOne!19579 r!17423) (regTwo!19578 r!17423))))))

(assert (= (and d!857400 c!512718) b!3079715))

(assert (= (and d!857400 (not c!512718)) b!3079720))

(assert (= (and b!3079720 c!512720) b!3079732))

(assert (= (and b!3079720 (not c!512720)) b!3079727))

(assert (= (and b!3079727 c!512713) b!3079723))

(assert (= (and b!3079727 (not c!512713)) b!3079731))

(assert (= (and b!3079731 c!512712) b!3079737))

(assert (= (and b!3079731 (not c!512712)) b!3079734))

(assert (= (and b!3079737 (not res!1263663)) b!3079738))

(assert (= (and b!3079737 c!512719) b!3079729))

(assert (= (and b!3079737 (not c!512719)) b!3079736))

(assert (= (and b!3079734 c!512717) b!3079733))

(assert (= (and b!3079734 (not c!512717)) b!3079718))

(assert (= (and b!3079733 c!512715) b!3079721))

(assert (= (and b!3079733 (not c!512715)) b!3079714))

(assert (= (and b!3079714 c!512711) b!3079725))

(assert (= (and b!3079714 (not c!512711)) b!3079717))

(assert (= (and b!3079718 (not res!1263661)) b!3079722))

(assert (= (and b!3079718 c!512721) b!3079735))

(assert (= (and b!3079718 (not c!512721)) b!3079716))

(assert (= (and b!3079716 c!512714) b!3079730))

(assert (= (and b!3079716 (not c!512714)) b!3079724))

(assert (= (and b!3079724 c!512716) b!3079726))

(assert (= (and b!3079724 (not c!512716)) b!3079719))

(assert (= (or b!3079733 b!3079718) bm!214540))

(assert (= (or b!3079733 b!3079718) bm!214534))

(assert (= (or b!3079714 b!3079718) bm!214538))

(assert (= (or b!3079733 b!3079722) bm!214537))

(assert (= (or b!3079738 b!3079724) bm!214539))

(assert (= (or b!3079737 bm!214534) bm!214536))

(assert (= (or b!3079737 bm!214537) bm!214535))

(assert (= (and d!857400 res!1263662) b!3079728))

(declare-fun m!3389737 () Bool)

(assert (=> bm!214536 m!3389737))

(declare-fun m!3389739 () Bool)

(assert (=> bm!214538 m!3389739))

(declare-fun m!3389741 () Bool)

(assert (=> bm!214540 m!3389741))

(declare-fun m!3389743 () Bool)

(assert (=> bm!214535 m!3389743))

(declare-fun m!3389745 () Bool)

(assert (=> bm!214539 m!3389745))

(declare-fun m!3389747 () Bool)

(assert (=> b!3079728 m!3389747))

(declare-fun m!3389749 () Bool)

(assert (=> b!3079728 m!3389749))

(declare-fun m!3389751 () Bool)

(assert (=> b!3079716 m!3389751))

(declare-fun m!3389753 () Bool)

(assert (=> d!857400 m!3389753))

(assert (=> d!857400 m!3389523))

(assert (=> b!3079238 d!857400))

(declare-fun b!3079877 () Bool)

(assert (=> b!3079877 true))

(assert (=> b!3079877 true))

(declare-fun bs!532880 () Bool)

(declare-fun b!3079881 () Bool)

(assert (= bs!532880 (and b!3079881 b!3079877)))

(declare-fun lambda!114286 () Int)

(declare-fun lambda!114285 () Int)

(assert (=> bs!532880 (not (= lambda!114286 lambda!114285))))

(assert (=> b!3079881 true))

(assert (=> b!3079881 true))

(declare-fun b!3079872 () Bool)

(declare-fun res!1263716 () Bool)

(declare-fun e!1926646 () Bool)

(assert (=> b!3079872 (=> res!1263716 e!1926646)))

(declare-fun call!214567 () Bool)

(assert (=> b!3079872 (= res!1263716 call!214567)))

(declare-fun e!1926650 () Bool)

(assert (=> b!3079872 (= e!1926650 e!1926646)))

(declare-fun b!3079873 () Bool)

(declare-fun c!512745 () Bool)

(assert (=> b!3079873 (= c!512745 ((_ is Union!9533) r!17423))))

(declare-fun e!1926649 () Bool)

(declare-fun e!1926651 () Bool)

(assert (=> b!3079873 (= e!1926649 e!1926651)))

(declare-fun b!3079874 () Bool)

(assert (=> b!3079874 (= e!1926651 e!1926650)))

(declare-fun c!512744 () Bool)

(assert (=> b!3079874 (= c!512744 ((_ is Star!9533) r!17423))))

(declare-fun d!857402 () Bool)

(declare-fun c!512746 () Bool)

(assert (=> d!857402 (= c!512746 ((_ is EmptyExpr!9533) r!17423))))

(declare-fun e!1926647 () Bool)

(assert (=> d!857402 (= (matchRSpec!1670 r!17423 s!11993) e!1926647)))

(declare-fun bm!214561 () Bool)

(assert (=> bm!214561 (= call!214567 (isEmpty!19609 s!11993))))

(declare-fun b!3079875 () Bool)

(assert (=> b!3079875 (= e!1926647 call!214567)))

(declare-fun bm!214562 () Bool)

(declare-fun call!214566 () Bool)

(declare-fun Exists!1796 (Int) Bool)

(assert (=> bm!214562 (= call!214566 (Exists!1796 (ite c!512744 lambda!114285 lambda!114286)))))

(declare-fun b!3079876 () Bool)

(declare-fun e!1926652 () Bool)

(assert (=> b!3079876 (= e!1926651 e!1926652)))

(declare-fun res!1263718 () Bool)

(assert (=> b!3079876 (= res!1263718 (matchRSpec!1670 (regOne!19579 r!17423) s!11993))))

(assert (=> b!3079876 (=> res!1263718 e!1926652)))

(assert (=> b!3079877 (= e!1926646 call!214566)))

(declare-fun b!3079878 () Bool)

(declare-fun e!1926648 () Bool)

(assert (=> b!3079878 (= e!1926647 e!1926648)))

(declare-fun res!1263717 () Bool)

(assert (=> b!3079878 (= res!1263717 (not ((_ is EmptyLang!9533) r!17423)))))

(assert (=> b!3079878 (=> (not res!1263717) (not e!1926648))))

(declare-fun b!3079879 () Bool)

(declare-fun c!512743 () Bool)

(assert (=> b!3079879 (= c!512743 ((_ is ElementMatch!9533) r!17423))))

(assert (=> b!3079879 (= e!1926648 e!1926649)))

(declare-fun b!3079880 () Bool)

(assert (=> b!3079880 (= e!1926652 (matchRSpec!1670 (regTwo!19579 r!17423) s!11993))))

(assert (=> b!3079881 (= e!1926650 call!214566)))

(declare-fun b!3079882 () Bool)

(assert (=> b!3079882 (= e!1926649 (= s!11993 (Cons!35274 (c!512555 r!17423) Nil!35274)))))

(assert (= (and d!857402 c!512746) b!3079875))

(assert (= (and d!857402 (not c!512746)) b!3079878))

(assert (= (and b!3079878 res!1263717) b!3079879))

(assert (= (and b!3079879 c!512743) b!3079882))

(assert (= (and b!3079879 (not c!512743)) b!3079873))

(assert (= (and b!3079873 c!512745) b!3079876))

(assert (= (and b!3079873 (not c!512745)) b!3079874))

(assert (= (and b!3079876 (not res!1263718)) b!3079880))

(assert (= (and b!3079874 c!512744) b!3079872))

(assert (= (and b!3079874 (not c!512744)) b!3079881))

(assert (= (and b!3079872 (not res!1263716)) b!3079877))

(assert (= (or b!3079877 b!3079881) bm!214562))

(assert (= (or b!3079875 b!3079872) bm!214561))

(assert (=> bm!214561 m!3389499))

(declare-fun m!3389773 () Bool)

(assert (=> bm!214562 m!3389773))

(declare-fun m!3389775 () Bool)

(assert (=> b!3079876 m!3389775))

(declare-fun m!3389777 () Bool)

(assert (=> b!3079880 m!3389777))

(assert (=> b!3079243 d!857402))

(declare-fun b!3079887 () Bool)

(declare-fun e!1926658 () Bool)

(declare-fun e!1926656 () Bool)

(assert (=> b!3079887 (= e!1926658 e!1926656)))

(declare-fun res!1263721 () Bool)

(assert (=> b!3079887 (=> (not res!1263721) (not e!1926656))))

(declare-fun lt!1053081 () Bool)

(assert (=> b!3079887 (= res!1263721 (not lt!1053081))))

(declare-fun b!3079888 () Bool)

(declare-fun e!1926654 () Bool)

(assert (=> b!3079888 (= e!1926656 e!1926654)))

(declare-fun res!1263720 () Bool)

(assert (=> b!3079888 (=> res!1263720 e!1926654)))

(declare-fun call!214568 () Bool)

(assert (=> b!3079888 (= res!1263720 call!214568)))

(declare-fun b!3079889 () Bool)

(declare-fun e!1926657 () Bool)

(assert (=> b!3079889 (= e!1926657 (nullable!3179 r!17423))))

(declare-fun b!3079890 () Bool)

(declare-fun res!1263725 () Bool)

(declare-fun e!1926653 () Bool)

(assert (=> b!3079890 (=> (not res!1263725) (not e!1926653))))

(assert (=> b!3079890 (= res!1263725 (not call!214568))))

(declare-fun b!3079891 () Bool)

(assert (=> b!3079891 (= e!1926654 (not (= (head!6834 s!11993) (c!512555 r!17423))))))

(declare-fun b!3079892 () Bool)

(assert (=> b!3079892 (= e!1926657 (matchR!4415 (derivativeStep!2775 r!17423 (head!6834 s!11993)) (tail!5060 s!11993)))))

(declare-fun d!857410 () Bool)

(declare-fun e!1926659 () Bool)

(assert (=> d!857410 e!1926659))

(declare-fun c!512749 () Bool)

(assert (=> d!857410 (= c!512749 ((_ is EmptyExpr!9533) r!17423))))

(assert (=> d!857410 (= lt!1053081 e!1926657)))

(declare-fun c!512747 () Bool)

(assert (=> d!857410 (= c!512747 (isEmpty!19609 s!11993))))

(assert (=> d!857410 (validRegex!4266 r!17423)))

(assert (=> d!857410 (= (matchR!4415 r!17423 s!11993) lt!1053081)))

(declare-fun b!3079893 () Bool)

(declare-fun res!1263722 () Bool)

(assert (=> b!3079893 (=> res!1263722 e!1926658)))

(assert (=> b!3079893 (= res!1263722 e!1926653)))

(declare-fun res!1263724 () Bool)

(assert (=> b!3079893 (=> (not res!1263724) (not e!1926653))))

(assert (=> b!3079893 (= res!1263724 lt!1053081)))

(declare-fun b!3079894 () Bool)

(declare-fun res!1263719 () Bool)

(assert (=> b!3079894 (=> res!1263719 e!1926658)))

(assert (=> b!3079894 (= res!1263719 (not ((_ is ElementMatch!9533) r!17423)))))

(declare-fun e!1926655 () Bool)

(assert (=> b!3079894 (= e!1926655 e!1926658)))

(declare-fun b!3079895 () Bool)

(assert (=> b!3079895 (= e!1926655 (not lt!1053081))))

(declare-fun b!3079896 () Bool)

(declare-fun res!1263723 () Bool)

(assert (=> b!3079896 (=> res!1263723 e!1926654)))

(assert (=> b!3079896 (= res!1263723 (not (isEmpty!19609 (tail!5060 s!11993))))))

(declare-fun bm!214563 () Bool)

(assert (=> bm!214563 (= call!214568 (isEmpty!19609 s!11993))))

(declare-fun b!3079897 () Bool)

(declare-fun res!1263726 () Bool)

(assert (=> b!3079897 (=> (not res!1263726) (not e!1926653))))

(assert (=> b!3079897 (= res!1263726 (isEmpty!19609 (tail!5060 s!11993)))))

(declare-fun b!3079898 () Bool)

(assert (=> b!3079898 (= e!1926659 e!1926655)))

(declare-fun c!512748 () Bool)

(assert (=> b!3079898 (= c!512748 ((_ is EmptyLang!9533) r!17423))))

(declare-fun b!3079899 () Bool)

(assert (=> b!3079899 (= e!1926653 (= (head!6834 s!11993) (c!512555 r!17423)))))

(declare-fun b!3079900 () Bool)

(assert (=> b!3079900 (= e!1926659 (= lt!1053081 call!214568))))

(assert (= (and d!857410 c!512747) b!3079889))

(assert (= (and d!857410 (not c!512747)) b!3079892))

(assert (= (and d!857410 c!512749) b!3079900))

(assert (= (and d!857410 (not c!512749)) b!3079898))

(assert (= (and b!3079898 c!512748) b!3079895))

(assert (= (and b!3079898 (not c!512748)) b!3079894))

(assert (= (and b!3079894 (not res!1263719)) b!3079893))

(assert (= (and b!3079893 res!1263724) b!3079890))

(assert (= (and b!3079890 res!1263725) b!3079897))

(assert (= (and b!3079897 res!1263726) b!3079899))

(assert (= (and b!3079893 (not res!1263722)) b!3079887))

(assert (= (and b!3079887 res!1263721) b!3079888))

(assert (= (and b!3079888 (not res!1263720)) b!3079896))

(assert (= (and b!3079896 (not res!1263723)) b!3079891))

(assert (= (or b!3079900 b!3079888 b!3079890) bm!214563))

(assert (=> b!3079889 m!3389749))

(assert (=> b!3079897 m!3389607))

(assert (=> b!3079897 m!3389607))

(assert (=> b!3079897 m!3389609))

(assert (=> d!857410 m!3389499))

(assert (=> d!857410 m!3389523))

(assert (=> bm!214563 m!3389499))

(assert (=> b!3079892 m!3389611))

(assert (=> b!3079892 m!3389611))

(declare-fun m!3389779 () Bool)

(assert (=> b!3079892 m!3389779))

(assert (=> b!3079892 m!3389607))

(assert (=> b!3079892 m!3389779))

(assert (=> b!3079892 m!3389607))

(declare-fun m!3389781 () Bool)

(assert (=> b!3079892 m!3389781))

(assert (=> b!3079899 m!3389611))

(assert (=> b!3079896 m!3389607))

(assert (=> b!3079896 m!3389607))

(assert (=> b!3079896 m!3389609))

(assert (=> b!3079891 m!3389611))

(assert (=> b!3079243 d!857410))

(declare-fun d!857412 () Bool)

(assert (=> d!857412 (= (matchR!4415 r!17423 s!11993) (matchRSpec!1670 r!17423 s!11993))))

(declare-fun lt!1053084 () Unit!49505)

(declare-fun choose!18260 (Regex!9533 List!35398) Unit!49505)

(assert (=> d!857412 (= lt!1053084 (choose!18260 r!17423 s!11993))))

(assert (=> d!857412 (validRegex!4266 r!17423)))

(assert (=> d!857412 (= (mainMatchTheorem!1670 r!17423 s!11993) lt!1053084)))

(declare-fun bs!532881 () Bool)

(assert (= bs!532881 d!857412))

(assert (=> bs!532881 m!3389495))

(assert (=> bs!532881 m!3389493))

(declare-fun m!3389783 () Bool)

(assert (=> bs!532881 m!3389783))

(assert (=> bs!532881 m!3389523))

(assert (=> b!3079243 d!857412))

(declare-fun e!1926662 () Bool)

(assert (=> b!3079233 (= tp!970155 e!1926662)))

(declare-fun b!3079913 () Bool)

(declare-fun tp!970208 () Bool)

(assert (=> b!3079913 (= e!1926662 tp!970208)))

(declare-fun b!3079914 () Bool)

(declare-fun tp!970209 () Bool)

(declare-fun tp!970206 () Bool)

(assert (=> b!3079914 (= e!1926662 (and tp!970209 tp!970206))))

(declare-fun b!3079912 () Bool)

(declare-fun tp!970207 () Bool)

(declare-fun tp!970210 () Bool)

(assert (=> b!3079912 (= e!1926662 (and tp!970207 tp!970210))))

(declare-fun b!3079911 () Bool)

(assert (=> b!3079911 (= e!1926662 tp_is_empty!16629)))

(assert (= (and b!3079233 ((_ is ElementMatch!9533) (regOne!19578 r!17423))) b!3079911))

(assert (= (and b!3079233 ((_ is Concat!14854) (regOne!19578 r!17423))) b!3079912))

(assert (= (and b!3079233 ((_ is Star!9533) (regOne!19578 r!17423))) b!3079913))

(assert (= (and b!3079233 ((_ is Union!9533) (regOne!19578 r!17423))) b!3079914))

(declare-fun e!1926663 () Bool)

(assert (=> b!3079233 (= tp!970152 e!1926663)))

(declare-fun b!3079917 () Bool)

(declare-fun tp!970213 () Bool)

(assert (=> b!3079917 (= e!1926663 tp!970213)))

(declare-fun b!3079918 () Bool)

(declare-fun tp!970214 () Bool)

(declare-fun tp!970211 () Bool)

(assert (=> b!3079918 (= e!1926663 (and tp!970214 tp!970211))))

(declare-fun b!3079916 () Bool)

(declare-fun tp!970212 () Bool)

(declare-fun tp!970215 () Bool)

(assert (=> b!3079916 (= e!1926663 (and tp!970212 tp!970215))))

(declare-fun b!3079915 () Bool)

(assert (=> b!3079915 (= e!1926663 tp_is_empty!16629)))

(assert (= (and b!3079233 ((_ is ElementMatch!9533) (regTwo!19578 r!17423))) b!3079915))

(assert (= (and b!3079233 ((_ is Concat!14854) (regTwo!19578 r!17423))) b!3079916))

(assert (= (and b!3079233 ((_ is Star!9533) (regTwo!19578 r!17423))) b!3079917))

(assert (= (and b!3079233 ((_ is Union!9533) (regTwo!19578 r!17423))) b!3079918))

(declare-fun b!3079923 () Bool)

(declare-fun e!1926666 () Bool)

(declare-fun tp!970218 () Bool)

(assert (=> b!3079923 (= e!1926666 (and tp_is_empty!16629 tp!970218))))

(assert (=> b!3079236 (= tp!970157 e!1926666)))

(assert (= (and b!3079236 ((_ is Cons!35274) (t!234463 s!11993))) b!3079923))

(declare-fun e!1926667 () Bool)

(assert (=> b!3079241 (= tp!970153 e!1926667)))

(declare-fun b!3079926 () Bool)

(declare-fun tp!970221 () Bool)

(assert (=> b!3079926 (= e!1926667 tp!970221)))

(declare-fun b!3079927 () Bool)

(declare-fun tp!970222 () Bool)

(declare-fun tp!970219 () Bool)

(assert (=> b!3079927 (= e!1926667 (and tp!970222 tp!970219))))

(declare-fun b!3079925 () Bool)

(declare-fun tp!970220 () Bool)

(declare-fun tp!970223 () Bool)

(assert (=> b!3079925 (= e!1926667 (and tp!970220 tp!970223))))

(declare-fun b!3079924 () Bool)

(assert (=> b!3079924 (= e!1926667 tp_is_empty!16629)))

(assert (= (and b!3079241 ((_ is ElementMatch!9533) (reg!9862 r!17423))) b!3079924))

(assert (= (and b!3079241 ((_ is Concat!14854) (reg!9862 r!17423))) b!3079925))

(assert (= (and b!3079241 ((_ is Star!9533) (reg!9862 r!17423))) b!3079926))

(assert (= (and b!3079241 ((_ is Union!9533) (reg!9862 r!17423))) b!3079927))

(declare-fun e!1926668 () Bool)

(assert (=> b!3079231 (= tp!970154 e!1926668)))

(declare-fun b!3079930 () Bool)

(declare-fun tp!970226 () Bool)

(assert (=> b!3079930 (= e!1926668 tp!970226)))

(declare-fun b!3079931 () Bool)

(declare-fun tp!970227 () Bool)

(declare-fun tp!970224 () Bool)

(assert (=> b!3079931 (= e!1926668 (and tp!970227 tp!970224))))

(declare-fun b!3079929 () Bool)

(declare-fun tp!970225 () Bool)

(declare-fun tp!970228 () Bool)

(assert (=> b!3079929 (= e!1926668 (and tp!970225 tp!970228))))

(declare-fun b!3079928 () Bool)

(assert (=> b!3079928 (= e!1926668 tp_is_empty!16629)))

(assert (= (and b!3079231 ((_ is ElementMatch!9533) (regOne!19579 r!17423))) b!3079928))

(assert (= (and b!3079231 ((_ is Concat!14854) (regOne!19579 r!17423))) b!3079929))

(assert (= (and b!3079231 ((_ is Star!9533) (regOne!19579 r!17423))) b!3079930))

(assert (= (and b!3079231 ((_ is Union!9533) (regOne!19579 r!17423))) b!3079931))

(declare-fun e!1926669 () Bool)

(assert (=> b!3079231 (= tp!970156 e!1926669)))

(declare-fun b!3079934 () Bool)

(declare-fun tp!970231 () Bool)

(assert (=> b!3079934 (= e!1926669 tp!970231)))

(declare-fun b!3079935 () Bool)

(declare-fun tp!970232 () Bool)

(declare-fun tp!970229 () Bool)

(assert (=> b!3079935 (= e!1926669 (and tp!970232 tp!970229))))

(declare-fun b!3079933 () Bool)

(declare-fun tp!970230 () Bool)

(declare-fun tp!970233 () Bool)

(assert (=> b!3079933 (= e!1926669 (and tp!970230 tp!970233))))

(declare-fun b!3079932 () Bool)

(assert (=> b!3079932 (= e!1926669 tp_is_empty!16629)))

(assert (= (and b!3079231 ((_ is ElementMatch!9533) (regTwo!19579 r!17423))) b!3079932))

(assert (= (and b!3079231 ((_ is Concat!14854) (regTwo!19579 r!17423))) b!3079933))

(assert (= (and b!3079231 ((_ is Star!9533) (regTwo!19579 r!17423))) b!3079934))

(assert (= (and b!3079231 ((_ is Union!9533) (regTwo!19579 r!17423))) b!3079935))

(check-sat (not bm!214535) (not bm!214533) (not b!3079677) (not b!3079912) (not bm!214456) (not b!3079892) (not d!857382) (not b!3079463) (not b!3079880) (not b!3079925) (not b!3079492) (not b!3079433) (not b!3079482) (not b!3079489) (not b!3079428) (not b!3079689) (not b!3079923) (not bm!214532) (not b!3079899) (not b!3079471) (not b!3079930) (not b!3079704) (not b!3079927) (not bm!214483) (not b!3079709) (not bm!214524) (not b!3079702) (not bm!214531) (not b!3079423) (not d!857356) (not bm!214563) (not b!3079897) (not bm!214523) (not b!3079497) (not b!3079429) (not bm!214562) (not b!3079478) (not b!3079652) (not b!3079931) (not d!857372) (not b!3079491) (not b!3079705) (not b!3079485) (not d!857394) (not b!3079421) (not bm!214520) (not bm!214466) (not d!857374) (not b!3079499) (not b!3079710) (not b!3079918) (not bm!214467) (not b!3079935) (not b!3079926) tp_is_empty!16629 (not b!3079889) (not b!3079917) (not b!3079716) (not d!857400) (not d!857376) (not bm!214530) (not b!3079914) (not b!3079461) (not b!3079929) (not b!3079891) (not bm!214528) (not d!857412) (not b!3079933) (not b!3079664) (not d!857410) (not bm!214521) (not b!3079934) (not bm!214536) (not bm!214561) (not b!3079913) (not b!3079477) (not b!3079293) (not b!3079468) (not b!3079916) (not b!3079483) (not b!3079496) (not bm!214455) (not bm!214476) (not b!3079728) (not bm!214540) (not b!3079712) (not b!3079876) (not bm!214538) (not b!3079896) (not bm!214539) (not d!857350) (not d!857398) (not bm!214527) (not d!857354) (not b!3079424) (not bm!214525) (not b!3079469) (not b!3079464) (not b!3079475))
(check-sat)
