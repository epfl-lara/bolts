; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110426 () Bool)

(assert start!110426)

(declare-fun b!1252291 () Bool)

(declare-fun res!555196 () Bool)

(declare-fun e!797290 () Bool)

(assert (=> b!1252291 (=> (not res!555196) (not e!797290))))

(declare-datatypes ((C!7240 0))(
  ( (C!7241 (val!4150 Int)) )
))
(declare-datatypes ((Regex!3461 0))(
  ( (ElementMatch!3461 (c!207782 C!7240)) (Concat!5691 (regOne!7434 Regex!3461) (regTwo!7434 Regex!3461)) (EmptyExpr!3461) (Star!3461 (reg!3790 Regex!3461)) (EmptyLang!3461) (Union!3461 (regOne!7435 Regex!3461) (regTwo!7435 Regex!3461)) )
))
(declare-fun r!15719 () Regex!3461)

(get-info :version)

(assert (=> b!1252291 (= res!555196 (and (or (not ((_ is Concat!5691) r!15719)) (not ((_ is EmptyExpr!3461) (regOne!7434 r!15719)))) (or (not ((_ is Concat!5691) r!15719)) (not ((_ is EmptyExpr!3461) (regTwo!7434 r!15719)))) ((_ is Concat!5691) r!15719)))))

(declare-fun b!1252292 () Bool)

(declare-fun e!797292 () Bool)

(declare-fun tp_is_empty!6443 () Bool)

(assert (=> b!1252292 (= e!797292 tp_is_empty!6443)))

(declare-fun b!1252293 () Bool)

(declare-fun tp!368879 () Bool)

(declare-fun tp!368877 () Bool)

(assert (=> b!1252293 (= e!797292 (and tp!368879 tp!368877))))

(declare-fun res!555198 () Bool)

(assert (=> start!110426 (=> (not res!555198) (not e!797290))))

(declare-fun validRegex!1497 (Regex!3461) Bool)

(assert (=> start!110426 (= res!555198 (validRegex!1497 r!15719))))

(assert (=> start!110426 e!797290))

(assert (=> start!110426 e!797292))

(declare-fun b!1252294 () Bool)

(declare-fun e!797291 () Bool)

(assert (=> b!1252294 (= e!797290 e!797291)))

(declare-fun res!555197 () Bool)

(assert (=> b!1252294 (=> res!555197 e!797291)))

(declare-fun lt!420237 () Regex!3461)

(assert (=> b!1252294 (= res!555197 (not (validRegex!1497 lt!420237)))))

(declare-fun removeUselessConcat!514 (Regex!3461) Regex!3461)

(assert (=> b!1252294 (= lt!420237 (Concat!5691 (removeUselessConcat!514 (regOne!7434 r!15719)) (removeUselessConcat!514 (regTwo!7434 r!15719))))))

(declare-fun b!1252295 () Bool)

(declare-fun tp!368878 () Bool)

(declare-fun tp!368875 () Bool)

(assert (=> b!1252295 (= e!797292 (and tp!368878 tp!368875))))

(declare-fun b!1252296 () Bool)

(declare-fun tp!368876 () Bool)

(assert (=> b!1252296 (= e!797292 tp!368876)))

(declare-fun b!1252297 () Bool)

(declare-fun nullable!1099 (Regex!3461) Bool)

(assert (=> b!1252297 (= e!797291 (not (= (nullable!1099 lt!420237) (nullable!1099 r!15719))))))

(assert (= (and start!110426 res!555198) b!1252291))

(assert (= (and b!1252291 res!555196) b!1252294))

(assert (= (and b!1252294 (not res!555197)) b!1252297))

(assert (= (and start!110426 ((_ is ElementMatch!3461) r!15719)) b!1252292))

(assert (= (and start!110426 ((_ is Concat!5691) r!15719)) b!1252293))

(assert (= (and start!110426 ((_ is Star!3461) r!15719)) b!1252296))

(assert (= (and start!110426 ((_ is Union!3461) r!15719)) b!1252295))

(declare-fun m!1412555 () Bool)

(assert (=> start!110426 m!1412555))

(declare-fun m!1412557 () Bool)

(assert (=> b!1252294 m!1412557))

(declare-fun m!1412559 () Bool)

(assert (=> b!1252294 m!1412559))

(declare-fun m!1412561 () Bool)

(assert (=> b!1252294 m!1412561))

(declare-fun m!1412563 () Bool)

(assert (=> b!1252297 m!1412563))

(declare-fun m!1412565 () Bool)

(assert (=> b!1252297 m!1412565))

(check-sat (not b!1252295) (not b!1252294) (not b!1252296) (not start!110426) (not b!1252297) tp_is_empty!6443 (not b!1252293))
(check-sat)
(get-model)

(declare-fun d!354468 () Bool)

(declare-fun nullableFct!245 (Regex!3461) Bool)

(assert (=> d!354468 (= (nullable!1099 lt!420237) (nullableFct!245 lt!420237))))

(declare-fun bs!289893 () Bool)

(assert (= bs!289893 d!354468))

(declare-fun m!1412567 () Bool)

(assert (=> bs!289893 m!1412567))

(assert (=> b!1252297 d!354468))

(declare-fun d!354470 () Bool)

(assert (=> d!354470 (= (nullable!1099 r!15719) (nullableFct!245 r!15719))))

(declare-fun bs!289894 () Bool)

(assert (= bs!289894 d!354470))

(declare-fun m!1412569 () Bool)

(assert (=> bs!289894 m!1412569))

(assert (=> b!1252297 d!354470))

(declare-fun b!1252343 () Bool)

(declare-fun e!797330 () Bool)

(declare-fun e!797331 () Bool)

(assert (=> b!1252343 (= e!797330 e!797331)))

(declare-fun res!555226 () Bool)

(assert (=> b!1252343 (= res!555226 (not (nullable!1099 (reg!3790 r!15719))))))

(assert (=> b!1252343 (=> (not res!555226) (not e!797331))))

(declare-fun bm!87364 () Bool)

(declare-fun call!87371 () Bool)

(declare-fun c!207793 () Bool)

(assert (=> bm!87364 (= call!87371 (validRegex!1497 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))

(declare-fun d!354472 () Bool)

(declare-fun res!555228 () Bool)

(declare-fun e!797329 () Bool)

(assert (=> d!354472 (=> res!555228 e!797329)))

(assert (=> d!354472 (= res!555228 ((_ is ElementMatch!3461) r!15719))))

(assert (=> d!354472 (= (validRegex!1497 r!15719) e!797329)))

(declare-fun b!1252344 () Bool)

(declare-fun call!87370 () Bool)

(assert (=> b!1252344 (= e!797331 call!87370)))

(declare-fun b!1252345 () Bool)

(declare-fun e!797332 () Bool)

(assert (=> b!1252345 (= e!797332 call!87371)))

(declare-fun bm!87365 () Bool)

(declare-fun call!87369 () Bool)

(assert (=> bm!87365 (= call!87369 call!87370)))

(declare-fun b!1252346 () Bool)

(assert (=> b!1252346 (= e!797329 e!797330)))

(declare-fun c!207794 () Bool)

(assert (=> b!1252346 (= c!207794 ((_ is Star!3461) r!15719))))

(declare-fun b!1252347 () Bool)

(declare-fun res!555224 () Bool)

(declare-fun e!797334 () Bool)

(assert (=> b!1252347 (=> res!555224 e!797334)))

(assert (=> b!1252347 (= res!555224 (not ((_ is Concat!5691) r!15719)))))

(declare-fun e!797333 () Bool)

(assert (=> b!1252347 (= e!797333 e!797334)))

(declare-fun b!1252348 () Bool)

(declare-fun res!555227 () Bool)

(declare-fun e!797328 () Bool)

(assert (=> b!1252348 (=> (not res!555227) (not e!797328))))

(assert (=> b!1252348 (= res!555227 call!87369)))

(assert (=> b!1252348 (= e!797333 e!797328)))

(declare-fun b!1252349 () Bool)

(assert (=> b!1252349 (= e!797330 e!797333)))

(assert (=> b!1252349 (= c!207793 ((_ is Union!3461) r!15719))))

(declare-fun bm!87366 () Bool)

(assert (=> bm!87366 (= call!87370 (validRegex!1497 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))

(declare-fun b!1252350 () Bool)

(assert (=> b!1252350 (= e!797334 e!797332)))

(declare-fun res!555225 () Bool)

(assert (=> b!1252350 (=> (not res!555225) (not e!797332))))

(assert (=> b!1252350 (= res!555225 call!87369)))

(declare-fun b!1252351 () Bool)

(assert (=> b!1252351 (= e!797328 call!87371)))

(assert (= (and d!354472 (not res!555228)) b!1252346))

(assert (= (and b!1252346 c!207794) b!1252343))

(assert (= (and b!1252346 (not c!207794)) b!1252349))

(assert (= (and b!1252343 res!555226) b!1252344))

(assert (= (and b!1252349 c!207793) b!1252348))

(assert (= (and b!1252349 (not c!207793)) b!1252347))

(assert (= (and b!1252348 res!555227) b!1252351))

(assert (= (and b!1252347 (not res!555224)) b!1252350))

(assert (= (and b!1252350 res!555225) b!1252345))

(assert (= (or b!1252351 b!1252345) bm!87364))

(assert (= (or b!1252348 b!1252350) bm!87365))

(assert (= (or b!1252344 bm!87365) bm!87366))

(declare-fun m!1412577 () Bool)

(assert (=> b!1252343 m!1412577))

(declare-fun m!1412579 () Bool)

(assert (=> bm!87364 m!1412579))

(declare-fun m!1412581 () Bool)

(assert (=> bm!87366 m!1412581))

(assert (=> start!110426 d!354472))

(declare-fun b!1252352 () Bool)

(declare-fun e!797337 () Bool)

(declare-fun e!797338 () Bool)

(assert (=> b!1252352 (= e!797337 e!797338)))

(declare-fun res!555231 () Bool)

(assert (=> b!1252352 (= res!555231 (not (nullable!1099 (reg!3790 lt!420237))))))

(assert (=> b!1252352 (=> (not res!555231) (not e!797338))))

(declare-fun bm!87367 () Bool)

(declare-fun call!87374 () Bool)

(declare-fun c!207795 () Bool)

(assert (=> bm!87367 (= call!87374 (validRegex!1497 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))

(declare-fun d!354476 () Bool)

(declare-fun res!555233 () Bool)

(declare-fun e!797336 () Bool)

(assert (=> d!354476 (=> res!555233 e!797336)))

(assert (=> d!354476 (= res!555233 ((_ is ElementMatch!3461) lt!420237))))

(assert (=> d!354476 (= (validRegex!1497 lt!420237) e!797336)))

(declare-fun b!1252353 () Bool)

(declare-fun call!87373 () Bool)

(assert (=> b!1252353 (= e!797338 call!87373)))

(declare-fun b!1252354 () Bool)

(declare-fun e!797339 () Bool)

(assert (=> b!1252354 (= e!797339 call!87374)))

(declare-fun bm!87368 () Bool)

(declare-fun call!87372 () Bool)

(assert (=> bm!87368 (= call!87372 call!87373)))

(declare-fun b!1252355 () Bool)

(assert (=> b!1252355 (= e!797336 e!797337)))

(declare-fun c!207796 () Bool)

(assert (=> b!1252355 (= c!207796 ((_ is Star!3461) lt!420237))))

(declare-fun b!1252356 () Bool)

(declare-fun res!555229 () Bool)

(declare-fun e!797341 () Bool)

(assert (=> b!1252356 (=> res!555229 e!797341)))

(assert (=> b!1252356 (= res!555229 (not ((_ is Concat!5691) lt!420237)))))

(declare-fun e!797340 () Bool)

(assert (=> b!1252356 (= e!797340 e!797341)))

(declare-fun b!1252357 () Bool)

(declare-fun res!555232 () Bool)

(declare-fun e!797335 () Bool)

(assert (=> b!1252357 (=> (not res!555232) (not e!797335))))

(assert (=> b!1252357 (= res!555232 call!87372)))

(assert (=> b!1252357 (= e!797340 e!797335)))

(declare-fun b!1252358 () Bool)

(assert (=> b!1252358 (= e!797337 e!797340)))

(assert (=> b!1252358 (= c!207795 ((_ is Union!3461) lt!420237))))

(declare-fun bm!87369 () Bool)

(assert (=> bm!87369 (= call!87373 (validRegex!1497 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))

(declare-fun b!1252359 () Bool)

(assert (=> b!1252359 (= e!797341 e!797339)))

(declare-fun res!555230 () Bool)

(assert (=> b!1252359 (=> (not res!555230) (not e!797339))))

(assert (=> b!1252359 (= res!555230 call!87372)))

(declare-fun b!1252360 () Bool)

(assert (=> b!1252360 (= e!797335 call!87374)))

(assert (= (and d!354476 (not res!555233)) b!1252355))

(assert (= (and b!1252355 c!207796) b!1252352))

(assert (= (and b!1252355 (not c!207796)) b!1252358))

(assert (= (and b!1252352 res!555231) b!1252353))

(assert (= (and b!1252358 c!207795) b!1252357))

(assert (= (and b!1252358 (not c!207795)) b!1252356))

(assert (= (and b!1252357 res!555232) b!1252360))

(assert (= (and b!1252356 (not res!555229)) b!1252359))

(assert (= (and b!1252359 res!555230) b!1252354))

(assert (= (or b!1252360 b!1252354) bm!87367))

(assert (= (or b!1252357 b!1252359) bm!87368))

(assert (= (or b!1252353 bm!87368) bm!87369))

(declare-fun m!1412583 () Bool)

(assert (=> b!1252352 m!1412583))

(declare-fun m!1412585 () Bool)

(assert (=> bm!87367 m!1412585))

(declare-fun m!1412587 () Bool)

(assert (=> bm!87369 m!1412587))

(assert (=> b!1252294 d!354476))

(declare-fun b!1252427 () Bool)

(declare-fun e!797381 () Regex!3461)

(assert (=> b!1252427 (= e!797381 (regOne!7434 r!15719))))

(declare-fun b!1252428 () Bool)

(declare-fun e!797379 () Regex!3461)

(declare-fun e!797380 () Regex!3461)

(assert (=> b!1252428 (= e!797379 e!797380)))

(declare-fun c!207828 () Bool)

(assert (=> b!1252428 (= c!207828 (and ((_ is Concat!5691) (regOne!7434 r!15719)) ((_ is EmptyExpr!3461) (regTwo!7434 (regOne!7434 r!15719)))))))

(declare-fun b!1252429 () Bool)

(declare-fun c!207829 () Bool)

(assert (=> b!1252429 (= c!207829 ((_ is Star!3461) (regOne!7434 r!15719)))))

(declare-fun e!797382 () Regex!3461)

(assert (=> b!1252429 (= e!797382 e!797381)))

(declare-fun b!1252430 () Bool)

(declare-fun call!87408 () Regex!3461)

(assert (=> b!1252430 (= e!797380 call!87408)))

(declare-fun c!207831 () Bool)

(declare-fun call!87406 () Regex!3461)

(declare-fun c!207827 () Bool)

(declare-fun bm!87400 () Bool)

(declare-fun c!207830 () Bool)

(assert (=> bm!87400 (= call!87406 (removeUselessConcat!514 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))

(declare-fun b!1252431 () Bool)

(declare-fun e!797378 () Regex!3461)

(declare-fun call!87405 () Regex!3461)

(declare-fun call!87407 () Regex!3461)

(assert (=> b!1252431 (= e!797378 (Concat!5691 call!87405 call!87407))))

(declare-fun bm!87401 () Bool)

(assert (=> bm!87401 (= call!87405 call!87408)))

(declare-fun b!1252432 () Bool)

(assert (=> b!1252432 (= c!207831 ((_ is Concat!5691) (regOne!7434 r!15719)))))

(assert (=> b!1252432 (= e!797380 e!797378)))

(declare-fun d!354478 () Bool)

(declare-fun e!797383 () Bool)

(assert (=> d!354478 e!797383))

(declare-fun res!555240 () Bool)

(assert (=> d!354478 (=> (not res!555240) (not e!797383))))

(declare-fun lt!420244 () Regex!3461)

(assert (=> d!354478 (= res!555240 (validRegex!1497 lt!420244))))

(assert (=> d!354478 (= lt!420244 e!797379)))

(assert (=> d!354478 (= c!207830 (and ((_ is Concat!5691) (regOne!7434 r!15719)) ((_ is EmptyExpr!3461) (regOne!7434 (regOne!7434 r!15719)))))))

(assert (=> d!354478 (validRegex!1497 (regOne!7434 r!15719))))

(assert (=> d!354478 (= (removeUselessConcat!514 (regOne!7434 r!15719)) lt!420244)))

(declare-fun b!1252433 () Bool)

(assert (=> b!1252433 (= e!797383 (= (nullable!1099 lt!420244) (nullable!1099 (regOne!7434 r!15719))))))

(declare-fun b!1252434 () Bool)

(assert (=> b!1252434 (= e!797378 e!797382)))

(assert (=> b!1252434 (= c!207827 ((_ is Union!3461) (regOne!7434 r!15719)))))

(declare-fun bm!87402 () Bool)

(declare-fun call!87409 () Regex!3461)

(assert (=> bm!87402 (= call!87409 call!87405)))

(declare-fun bm!87403 () Bool)

(assert (=> bm!87403 (= call!87408 call!87406)))

(declare-fun bm!87404 () Bool)

(assert (=> bm!87404 (= call!87407 (removeUselessConcat!514 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))

(declare-fun b!1252435 () Bool)

(assert (=> b!1252435 (= e!797379 call!87406)))

(declare-fun b!1252436 () Bool)

(assert (=> b!1252436 (= e!797382 (Union!3461 call!87409 call!87407))))

(declare-fun b!1252437 () Bool)

(assert (=> b!1252437 (= e!797381 (Star!3461 call!87409))))

(assert (= (and d!354478 c!207830) b!1252435))

(assert (= (and d!354478 (not c!207830)) b!1252428))

(assert (= (and b!1252428 c!207828) b!1252430))

(assert (= (and b!1252428 (not c!207828)) b!1252432))

(assert (= (and b!1252432 c!207831) b!1252431))

(assert (= (and b!1252432 (not c!207831)) b!1252434))

(assert (= (and b!1252434 c!207827) b!1252436))

(assert (= (and b!1252434 (not c!207827)) b!1252429))

(assert (= (and b!1252429 c!207829) b!1252437))

(assert (= (and b!1252429 (not c!207829)) b!1252427))

(assert (= (or b!1252436 b!1252437) bm!87402))

(assert (= (or b!1252431 bm!87402) bm!87401))

(assert (= (or b!1252431 b!1252436) bm!87404))

(assert (= (or b!1252430 bm!87401) bm!87403))

(assert (= (or b!1252435 bm!87403) bm!87400))

(assert (= (and d!354478 res!555240) b!1252433))

(declare-fun m!1412623 () Bool)

(assert (=> bm!87400 m!1412623))

(declare-fun m!1412625 () Bool)

(assert (=> d!354478 m!1412625))

(declare-fun m!1412627 () Bool)

(assert (=> d!354478 m!1412627))

(declare-fun m!1412629 () Bool)

(assert (=> b!1252433 m!1412629))

(declare-fun m!1412631 () Bool)

(assert (=> b!1252433 m!1412631))

(declare-fun m!1412633 () Bool)

(assert (=> bm!87404 m!1412633))

(assert (=> b!1252294 d!354478))

(declare-fun b!1252457 () Bool)

(declare-fun e!797396 () Regex!3461)

(assert (=> b!1252457 (= e!797396 (regTwo!7434 r!15719))))

(declare-fun b!1252458 () Bool)

(declare-fun e!797394 () Regex!3461)

(declare-fun e!797395 () Regex!3461)

(assert (=> b!1252458 (= e!797394 e!797395)))

(declare-fun c!207835 () Bool)

(assert (=> b!1252458 (= c!207835 (and ((_ is Concat!5691) (regTwo!7434 r!15719)) ((_ is EmptyExpr!3461) (regTwo!7434 (regTwo!7434 r!15719)))))))

(declare-fun b!1252459 () Bool)

(declare-fun c!207836 () Bool)

(assert (=> b!1252459 (= c!207836 ((_ is Star!3461) (regTwo!7434 r!15719)))))

(declare-fun e!797397 () Regex!3461)

(assert (=> b!1252459 (= e!797397 e!797396)))

(declare-fun b!1252460 () Bool)

(declare-fun call!87416 () Regex!3461)

(assert (=> b!1252460 (= e!797395 call!87416)))

(declare-fun c!207837 () Bool)

(declare-fun call!87414 () Regex!3461)

(declare-fun bm!87408 () Bool)

(declare-fun c!207834 () Bool)

(declare-fun c!207838 () Bool)

(assert (=> bm!87408 (= call!87414 (removeUselessConcat!514 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))

(declare-fun b!1252461 () Bool)

(declare-fun e!797393 () Regex!3461)

(declare-fun call!87413 () Regex!3461)

(declare-fun call!87415 () Regex!3461)

(assert (=> b!1252461 (= e!797393 (Concat!5691 call!87413 call!87415))))

(declare-fun bm!87409 () Bool)

(assert (=> bm!87409 (= call!87413 call!87416)))

(declare-fun b!1252462 () Bool)

(assert (=> b!1252462 (= c!207838 ((_ is Concat!5691) (regTwo!7434 r!15719)))))

(assert (=> b!1252462 (= e!797395 e!797393)))

(declare-fun d!354488 () Bool)

(declare-fun e!797398 () Bool)

(assert (=> d!354488 e!797398))

(declare-fun res!555246 () Bool)

(assert (=> d!354488 (=> (not res!555246) (not e!797398))))

(declare-fun lt!420245 () Regex!3461)

(assert (=> d!354488 (= res!555246 (validRegex!1497 lt!420245))))

(assert (=> d!354488 (= lt!420245 e!797394)))

(assert (=> d!354488 (= c!207837 (and ((_ is Concat!5691) (regTwo!7434 r!15719)) ((_ is EmptyExpr!3461) (regOne!7434 (regTwo!7434 r!15719)))))))

(assert (=> d!354488 (validRegex!1497 (regTwo!7434 r!15719))))

(assert (=> d!354488 (= (removeUselessConcat!514 (regTwo!7434 r!15719)) lt!420245)))

(declare-fun b!1252463 () Bool)

(assert (=> b!1252463 (= e!797398 (= (nullable!1099 lt!420245) (nullable!1099 (regTwo!7434 r!15719))))))

(declare-fun b!1252464 () Bool)

(assert (=> b!1252464 (= e!797393 e!797397)))

(assert (=> b!1252464 (= c!207834 ((_ is Union!3461) (regTwo!7434 r!15719)))))

(declare-fun bm!87410 () Bool)

(declare-fun call!87417 () Regex!3461)

(assert (=> bm!87410 (= call!87417 call!87413)))

(declare-fun bm!87411 () Bool)

(assert (=> bm!87411 (= call!87416 call!87414)))

(declare-fun bm!87412 () Bool)

(assert (=> bm!87412 (= call!87415 (removeUselessConcat!514 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))

(declare-fun b!1252465 () Bool)

(assert (=> b!1252465 (= e!797394 call!87414)))

(declare-fun b!1252466 () Bool)

(assert (=> b!1252466 (= e!797397 (Union!3461 call!87417 call!87415))))

(declare-fun b!1252467 () Bool)

(assert (=> b!1252467 (= e!797396 (Star!3461 call!87417))))

(assert (= (and d!354488 c!207837) b!1252465))

(assert (= (and d!354488 (not c!207837)) b!1252458))

(assert (= (and b!1252458 c!207835) b!1252460))

(assert (= (and b!1252458 (not c!207835)) b!1252462))

(assert (= (and b!1252462 c!207838) b!1252461))

(assert (= (and b!1252462 (not c!207838)) b!1252464))

(assert (= (and b!1252464 c!207834) b!1252466))

(assert (= (and b!1252464 (not c!207834)) b!1252459))

(assert (= (and b!1252459 c!207836) b!1252467))

(assert (= (and b!1252459 (not c!207836)) b!1252457))

(assert (= (or b!1252466 b!1252467) bm!87410))

(assert (= (or b!1252461 bm!87410) bm!87409))

(assert (= (or b!1252461 b!1252466) bm!87412))

(assert (= (or b!1252460 bm!87409) bm!87411))

(assert (= (or b!1252465 bm!87411) bm!87408))

(assert (= (and d!354488 res!555246) b!1252463))

(declare-fun m!1412635 () Bool)

(assert (=> bm!87408 m!1412635))

(declare-fun m!1412637 () Bool)

(assert (=> d!354488 m!1412637))

(declare-fun m!1412639 () Bool)

(assert (=> d!354488 m!1412639))

(declare-fun m!1412641 () Bool)

(assert (=> b!1252463 m!1412641))

(declare-fun m!1412643 () Bool)

(assert (=> b!1252463 m!1412643))

(declare-fun m!1412645 () Bool)

(assert (=> bm!87412 m!1412645))

(assert (=> b!1252294 d!354488))

(declare-fun b!1252499 () Bool)

(declare-fun e!797406 () Bool)

(declare-fun tp!368925 () Bool)

(declare-fun tp!368929 () Bool)

(assert (=> b!1252499 (= e!797406 (and tp!368925 tp!368929))))

(declare-fun b!1252501 () Bool)

(declare-fun tp!368926 () Bool)

(declare-fun tp!368928 () Bool)

(assert (=> b!1252501 (= e!797406 (and tp!368926 tp!368928))))

(assert (=> b!1252293 (= tp!368879 e!797406)))

(declare-fun b!1252498 () Bool)

(assert (=> b!1252498 (= e!797406 tp_is_empty!6443)))

(declare-fun b!1252500 () Bool)

(declare-fun tp!368927 () Bool)

(assert (=> b!1252500 (= e!797406 tp!368927)))

(assert (= (and b!1252293 ((_ is ElementMatch!3461) (regOne!7434 r!15719))) b!1252498))

(assert (= (and b!1252293 ((_ is Concat!5691) (regOne!7434 r!15719))) b!1252499))

(assert (= (and b!1252293 ((_ is Star!3461) (regOne!7434 r!15719))) b!1252500))

(assert (= (and b!1252293 ((_ is Union!3461) (regOne!7434 r!15719))) b!1252501))

(declare-fun b!1252503 () Bool)

(declare-fun e!797407 () Bool)

(declare-fun tp!368930 () Bool)

(declare-fun tp!368934 () Bool)

(assert (=> b!1252503 (= e!797407 (and tp!368930 tp!368934))))

(declare-fun b!1252505 () Bool)

(declare-fun tp!368931 () Bool)

(declare-fun tp!368933 () Bool)

(assert (=> b!1252505 (= e!797407 (and tp!368931 tp!368933))))

(assert (=> b!1252293 (= tp!368877 e!797407)))

(declare-fun b!1252502 () Bool)

(assert (=> b!1252502 (= e!797407 tp_is_empty!6443)))

(declare-fun b!1252504 () Bool)

(declare-fun tp!368932 () Bool)

(assert (=> b!1252504 (= e!797407 tp!368932)))

(assert (= (and b!1252293 ((_ is ElementMatch!3461) (regTwo!7434 r!15719))) b!1252502))

(assert (= (and b!1252293 ((_ is Concat!5691) (regTwo!7434 r!15719))) b!1252503))

(assert (= (and b!1252293 ((_ is Star!3461) (regTwo!7434 r!15719))) b!1252504))

(assert (= (and b!1252293 ((_ is Union!3461) (regTwo!7434 r!15719))) b!1252505))

(declare-fun b!1252507 () Bool)

(declare-fun e!797408 () Bool)

(declare-fun tp!368935 () Bool)

(declare-fun tp!368939 () Bool)

(assert (=> b!1252507 (= e!797408 (and tp!368935 tp!368939))))

(declare-fun b!1252509 () Bool)

(declare-fun tp!368936 () Bool)

(declare-fun tp!368938 () Bool)

(assert (=> b!1252509 (= e!797408 (and tp!368936 tp!368938))))

(assert (=> b!1252295 (= tp!368878 e!797408)))

(declare-fun b!1252506 () Bool)

(assert (=> b!1252506 (= e!797408 tp_is_empty!6443)))

(declare-fun b!1252508 () Bool)

(declare-fun tp!368937 () Bool)

(assert (=> b!1252508 (= e!797408 tp!368937)))

(assert (= (and b!1252295 ((_ is ElementMatch!3461) (regOne!7435 r!15719))) b!1252506))

(assert (= (and b!1252295 ((_ is Concat!5691) (regOne!7435 r!15719))) b!1252507))

(assert (= (and b!1252295 ((_ is Star!3461) (regOne!7435 r!15719))) b!1252508))

(assert (= (and b!1252295 ((_ is Union!3461) (regOne!7435 r!15719))) b!1252509))

(declare-fun b!1252511 () Bool)

(declare-fun e!797409 () Bool)

(declare-fun tp!368940 () Bool)

(declare-fun tp!368944 () Bool)

(assert (=> b!1252511 (= e!797409 (and tp!368940 tp!368944))))

(declare-fun b!1252513 () Bool)

(declare-fun tp!368941 () Bool)

(declare-fun tp!368943 () Bool)

(assert (=> b!1252513 (= e!797409 (and tp!368941 tp!368943))))

(assert (=> b!1252295 (= tp!368875 e!797409)))

(declare-fun b!1252510 () Bool)

(assert (=> b!1252510 (= e!797409 tp_is_empty!6443)))

(declare-fun b!1252512 () Bool)

(declare-fun tp!368942 () Bool)

(assert (=> b!1252512 (= e!797409 tp!368942)))

(assert (= (and b!1252295 ((_ is ElementMatch!3461) (regTwo!7435 r!15719))) b!1252510))

(assert (= (and b!1252295 ((_ is Concat!5691) (regTwo!7435 r!15719))) b!1252511))

(assert (= (and b!1252295 ((_ is Star!3461) (regTwo!7435 r!15719))) b!1252512))

(assert (= (and b!1252295 ((_ is Union!3461) (regTwo!7435 r!15719))) b!1252513))

(declare-fun b!1252515 () Bool)

(declare-fun e!797410 () Bool)

(declare-fun tp!368945 () Bool)

(declare-fun tp!368949 () Bool)

(assert (=> b!1252515 (= e!797410 (and tp!368945 tp!368949))))

(declare-fun b!1252517 () Bool)

(declare-fun tp!368946 () Bool)

(declare-fun tp!368948 () Bool)

(assert (=> b!1252517 (= e!797410 (and tp!368946 tp!368948))))

(assert (=> b!1252296 (= tp!368876 e!797410)))

(declare-fun b!1252514 () Bool)

(assert (=> b!1252514 (= e!797410 tp_is_empty!6443)))

(declare-fun b!1252516 () Bool)

(declare-fun tp!368947 () Bool)

(assert (=> b!1252516 (= e!797410 tp!368947)))

(assert (= (and b!1252296 ((_ is ElementMatch!3461) (reg!3790 r!15719))) b!1252514))

(assert (= (and b!1252296 ((_ is Concat!5691) (reg!3790 r!15719))) b!1252515))

(assert (= (and b!1252296 ((_ is Star!3461) (reg!3790 r!15719))) b!1252516))

(assert (= (and b!1252296 ((_ is Union!3461) (reg!3790 r!15719))) b!1252517))

(check-sat (not bm!87400) (not b!1252505) (not b!1252507) (not bm!87408) (not d!354470) (not b!1252509) (not bm!87412) (not b!1252499) (not d!354478) (not d!354468) (not b!1252517) (not bm!87366) (not b!1252503) (not b!1252511) (not b!1252515) (not b!1252463) (not b!1252433) (not b!1252504) (not bm!87364) (not b!1252500) (not b!1252508) (not d!354488) (not b!1252513) (not b!1252512) (not b!1252501) tp_is_empty!6443 (not b!1252352) (not bm!87369) (not bm!87367) (not b!1252516) (not bm!87404) (not b!1252343))
(check-sat)
(get-model)

(declare-fun b!1252518 () Bool)

(declare-fun e!797413 () Bool)

(declare-fun e!797414 () Bool)

(assert (=> b!1252518 (= e!797413 e!797414)))

(declare-fun res!555249 () Bool)

(assert (=> b!1252518 (= res!555249 (not (nullable!1099 (reg!3790 lt!420245))))))

(assert (=> b!1252518 (=> (not res!555249) (not e!797414))))

(declare-fun bm!87413 () Bool)

(declare-fun call!87420 () Bool)

(declare-fun c!207839 () Bool)

(assert (=> bm!87413 (= call!87420 (validRegex!1497 (ite c!207839 (regTwo!7435 lt!420245) (regTwo!7434 lt!420245))))))

(declare-fun d!354490 () Bool)

(declare-fun res!555251 () Bool)

(declare-fun e!797412 () Bool)

(assert (=> d!354490 (=> res!555251 e!797412)))

(assert (=> d!354490 (= res!555251 ((_ is ElementMatch!3461) lt!420245))))

(assert (=> d!354490 (= (validRegex!1497 lt!420245) e!797412)))

(declare-fun b!1252519 () Bool)

(declare-fun call!87419 () Bool)

(assert (=> b!1252519 (= e!797414 call!87419)))

(declare-fun b!1252520 () Bool)

(declare-fun e!797415 () Bool)

(assert (=> b!1252520 (= e!797415 call!87420)))

(declare-fun bm!87414 () Bool)

(declare-fun call!87418 () Bool)

(assert (=> bm!87414 (= call!87418 call!87419)))

(declare-fun b!1252521 () Bool)

(assert (=> b!1252521 (= e!797412 e!797413)))

(declare-fun c!207840 () Bool)

(assert (=> b!1252521 (= c!207840 ((_ is Star!3461) lt!420245))))

(declare-fun b!1252522 () Bool)

(declare-fun res!555247 () Bool)

(declare-fun e!797417 () Bool)

(assert (=> b!1252522 (=> res!555247 e!797417)))

(assert (=> b!1252522 (= res!555247 (not ((_ is Concat!5691) lt!420245)))))

(declare-fun e!797416 () Bool)

(assert (=> b!1252522 (= e!797416 e!797417)))

(declare-fun b!1252523 () Bool)

(declare-fun res!555250 () Bool)

(declare-fun e!797411 () Bool)

(assert (=> b!1252523 (=> (not res!555250) (not e!797411))))

(assert (=> b!1252523 (= res!555250 call!87418)))

(assert (=> b!1252523 (= e!797416 e!797411)))

(declare-fun b!1252524 () Bool)

(assert (=> b!1252524 (= e!797413 e!797416)))

(assert (=> b!1252524 (= c!207839 ((_ is Union!3461) lt!420245))))

(declare-fun bm!87415 () Bool)

(assert (=> bm!87415 (= call!87419 (validRegex!1497 (ite c!207840 (reg!3790 lt!420245) (ite c!207839 (regOne!7435 lt!420245) (regOne!7434 lt!420245)))))))

(declare-fun b!1252525 () Bool)

(assert (=> b!1252525 (= e!797417 e!797415)))

(declare-fun res!555248 () Bool)

(assert (=> b!1252525 (=> (not res!555248) (not e!797415))))

(assert (=> b!1252525 (= res!555248 call!87418)))

(declare-fun b!1252526 () Bool)

(assert (=> b!1252526 (= e!797411 call!87420)))

(assert (= (and d!354490 (not res!555251)) b!1252521))

(assert (= (and b!1252521 c!207840) b!1252518))

(assert (= (and b!1252521 (not c!207840)) b!1252524))

(assert (= (and b!1252518 res!555249) b!1252519))

(assert (= (and b!1252524 c!207839) b!1252523))

(assert (= (and b!1252524 (not c!207839)) b!1252522))

(assert (= (and b!1252523 res!555250) b!1252526))

(assert (= (and b!1252522 (not res!555247)) b!1252525))

(assert (= (and b!1252525 res!555248) b!1252520))

(assert (= (or b!1252526 b!1252520) bm!87413))

(assert (= (or b!1252523 b!1252525) bm!87414))

(assert (= (or b!1252519 bm!87414) bm!87415))

(declare-fun m!1412647 () Bool)

(assert (=> b!1252518 m!1412647))

(declare-fun m!1412649 () Bool)

(assert (=> bm!87413 m!1412649))

(declare-fun m!1412651 () Bool)

(assert (=> bm!87415 m!1412651))

(assert (=> d!354488 d!354490))

(declare-fun b!1252527 () Bool)

(declare-fun e!797420 () Bool)

(declare-fun e!797421 () Bool)

(assert (=> b!1252527 (= e!797420 e!797421)))

(declare-fun res!555254 () Bool)

(assert (=> b!1252527 (= res!555254 (not (nullable!1099 (reg!3790 (regTwo!7434 r!15719)))))))

(assert (=> b!1252527 (=> (not res!555254) (not e!797421))))

(declare-fun bm!87416 () Bool)

(declare-fun call!87423 () Bool)

(declare-fun c!207841 () Bool)

(assert (=> bm!87416 (= call!87423 (validRegex!1497 (ite c!207841 (regTwo!7435 (regTwo!7434 r!15719)) (regTwo!7434 (regTwo!7434 r!15719)))))))

(declare-fun d!354492 () Bool)

(declare-fun res!555256 () Bool)

(declare-fun e!797419 () Bool)

(assert (=> d!354492 (=> res!555256 e!797419)))

(assert (=> d!354492 (= res!555256 ((_ is ElementMatch!3461) (regTwo!7434 r!15719)))))

(assert (=> d!354492 (= (validRegex!1497 (regTwo!7434 r!15719)) e!797419)))

(declare-fun b!1252528 () Bool)

(declare-fun call!87422 () Bool)

(assert (=> b!1252528 (= e!797421 call!87422)))

(declare-fun b!1252529 () Bool)

(declare-fun e!797422 () Bool)

(assert (=> b!1252529 (= e!797422 call!87423)))

(declare-fun bm!87417 () Bool)

(declare-fun call!87421 () Bool)

(assert (=> bm!87417 (= call!87421 call!87422)))

(declare-fun b!1252530 () Bool)

(assert (=> b!1252530 (= e!797419 e!797420)))

(declare-fun c!207842 () Bool)

(assert (=> b!1252530 (= c!207842 ((_ is Star!3461) (regTwo!7434 r!15719)))))

(declare-fun b!1252531 () Bool)

(declare-fun res!555252 () Bool)

(declare-fun e!797424 () Bool)

(assert (=> b!1252531 (=> res!555252 e!797424)))

(assert (=> b!1252531 (= res!555252 (not ((_ is Concat!5691) (regTwo!7434 r!15719))))))

(declare-fun e!797423 () Bool)

(assert (=> b!1252531 (= e!797423 e!797424)))

(declare-fun b!1252532 () Bool)

(declare-fun res!555255 () Bool)

(declare-fun e!797418 () Bool)

(assert (=> b!1252532 (=> (not res!555255) (not e!797418))))

(assert (=> b!1252532 (= res!555255 call!87421)))

(assert (=> b!1252532 (= e!797423 e!797418)))

(declare-fun b!1252533 () Bool)

(assert (=> b!1252533 (= e!797420 e!797423)))

(assert (=> b!1252533 (= c!207841 ((_ is Union!3461) (regTwo!7434 r!15719)))))

(declare-fun bm!87418 () Bool)

(assert (=> bm!87418 (= call!87422 (validRegex!1497 (ite c!207842 (reg!3790 (regTwo!7434 r!15719)) (ite c!207841 (regOne!7435 (regTwo!7434 r!15719)) (regOne!7434 (regTwo!7434 r!15719))))))))

(declare-fun b!1252534 () Bool)

(assert (=> b!1252534 (= e!797424 e!797422)))

(declare-fun res!555253 () Bool)

(assert (=> b!1252534 (=> (not res!555253) (not e!797422))))

(assert (=> b!1252534 (= res!555253 call!87421)))

(declare-fun b!1252535 () Bool)

(assert (=> b!1252535 (= e!797418 call!87423)))

(assert (= (and d!354492 (not res!555256)) b!1252530))

(assert (= (and b!1252530 c!207842) b!1252527))

(assert (= (and b!1252530 (not c!207842)) b!1252533))

(assert (= (and b!1252527 res!555254) b!1252528))

(assert (= (and b!1252533 c!207841) b!1252532))

(assert (= (and b!1252533 (not c!207841)) b!1252531))

(assert (= (and b!1252532 res!555255) b!1252535))

(assert (= (and b!1252531 (not res!555252)) b!1252534))

(assert (= (and b!1252534 res!555253) b!1252529))

(assert (= (or b!1252535 b!1252529) bm!87416))

(assert (= (or b!1252532 b!1252534) bm!87417))

(assert (= (or b!1252528 bm!87417) bm!87418))

(declare-fun m!1412653 () Bool)

(assert (=> b!1252527 m!1412653))

(declare-fun m!1412655 () Bool)

(assert (=> bm!87416 m!1412655))

(declare-fun m!1412657 () Bool)

(assert (=> bm!87418 m!1412657))

(assert (=> d!354488 d!354492))

(declare-fun d!354494 () Bool)

(assert (=> d!354494 (= (nullable!1099 (reg!3790 lt!420237)) (nullableFct!245 (reg!3790 lt!420237)))))

(declare-fun bs!289897 () Bool)

(assert (= bs!289897 d!354494))

(declare-fun m!1412659 () Bool)

(assert (=> bs!289897 m!1412659))

(assert (=> b!1252352 d!354494))

(declare-fun d!354496 () Bool)

(assert (=> d!354496 (= (nullable!1099 lt!420245) (nullableFct!245 lt!420245))))

(declare-fun bs!289898 () Bool)

(assert (= bs!289898 d!354496))

(declare-fun m!1412661 () Bool)

(assert (=> bs!289898 m!1412661))

(assert (=> b!1252463 d!354496))

(declare-fun d!354498 () Bool)

(assert (=> d!354498 (= (nullable!1099 (regTwo!7434 r!15719)) (nullableFct!245 (regTwo!7434 r!15719)))))

(declare-fun bs!289899 () Bool)

(assert (= bs!289899 d!354498))

(declare-fun m!1412663 () Bool)

(assert (=> bs!289899 m!1412663))

(assert (=> b!1252463 d!354498))

(declare-fun b!1252536 () Bool)

(declare-fun e!797427 () Bool)

(declare-fun e!797428 () Bool)

(assert (=> b!1252536 (= e!797427 e!797428)))

(declare-fun res!555259 () Bool)

(assert (=> b!1252536 (= res!555259 (not (nullable!1099 (reg!3790 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))))

(assert (=> b!1252536 (=> (not res!555259) (not e!797428))))

(declare-fun call!87426 () Bool)

(declare-fun c!207843 () Bool)

(declare-fun bm!87419 () Bool)

(assert (=> bm!87419 (= call!87426 (validRegex!1497 (ite c!207843 (regTwo!7435 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))) (regTwo!7434 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))))

(declare-fun d!354500 () Bool)

(declare-fun res!555261 () Bool)

(declare-fun e!797426 () Bool)

(assert (=> d!354500 (=> res!555261 e!797426)))

(assert (=> d!354500 (= res!555261 ((_ is ElementMatch!3461) (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))

(assert (=> d!354500 (= (validRegex!1497 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))) e!797426)))

(declare-fun b!1252537 () Bool)

(declare-fun call!87425 () Bool)

(assert (=> b!1252537 (= e!797428 call!87425)))

(declare-fun b!1252538 () Bool)

(declare-fun e!797429 () Bool)

(assert (=> b!1252538 (= e!797429 call!87426)))

(declare-fun bm!87420 () Bool)

(declare-fun call!87424 () Bool)

(assert (=> bm!87420 (= call!87424 call!87425)))

(declare-fun b!1252539 () Bool)

(assert (=> b!1252539 (= e!797426 e!797427)))

(declare-fun c!207844 () Bool)

(assert (=> b!1252539 (= c!207844 ((_ is Star!3461) (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))

(declare-fun b!1252540 () Bool)

(declare-fun res!555257 () Bool)

(declare-fun e!797431 () Bool)

(assert (=> b!1252540 (=> res!555257 e!797431)))

(assert (=> b!1252540 (= res!555257 (not ((_ is Concat!5691) (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237)))))))

(declare-fun e!797430 () Bool)

(assert (=> b!1252540 (= e!797430 e!797431)))

(declare-fun b!1252541 () Bool)

(declare-fun res!555260 () Bool)

(declare-fun e!797425 () Bool)

(assert (=> b!1252541 (=> (not res!555260) (not e!797425))))

(assert (=> b!1252541 (= res!555260 call!87424)))

(assert (=> b!1252541 (= e!797430 e!797425)))

(declare-fun b!1252542 () Bool)

(assert (=> b!1252542 (= e!797427 e!797430)))

(assert (=> b!1252542 (= c!207843 ((_ is Union!3461) (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))

(declare-fun bm!87421 () Bool)

(assert (=> bm!87421 (= call!87425 (validRegex!1497 (ite c!207844 (reg!3790 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))) (ite c!207843 (regOne!7435 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))) (regOne!7434 (ite c!207795 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237)))))))))

(declare-fun b!1252543 () Bool)

(assert (=> b!1252543 (= e!797431 e!797429)))

(declare-fun res!555258 () Bool)

(assert (=> b!1252543 (=> (not res!555258) (not e!797429))))

(assert (=> b!1252543 (= res!555258 call!87424)))

(declare-fun b!1252544 () Bool)

(assert (=> b!1252544 (= e!797425 call!87426)))

(assert (= (and d!354500 (not res!555261)) b!1252539))

(assert (= (and b!1252539 c!207844) b!1252536))

(assert (= (and b!1252539 (not c!207844)) b!1252542))

(assert (= (and b!1252536 res!555259) b!1252537))

(assert (= (and b!1252542 c!207843) b!1252541))

(assert (= (and b!1252542 (not c!207843)) b!1252540))

(assert (= (and b!1252541 res!555260) b!1252544))

(assert (= (and b!1252540 (not res!555257)) b!1252543))

(assert (= (and b!1252543 res!555258) b!1252538))

(assert (= (or b!1252544 b!1252538) bm!87419))

(assert (= (or b!1252541 b!1252543) bm!87420))

(assert (= (or b!1252537 bm!87420) bm!87421))

(declare-fun m!1412665 () Bool)

(assert (=> b!1252536 m!1412665))

(declare-fun m!1412667 () Bool)

(assert (=> bm!87419 m!1412667))

(declare-fun m!1412669 () Bool)

(assert (=> bm!87421 m!1412669))

(assert (=> bm!87367 d!354500))

(declare-fun d!354502 () Bool)

(assert (=> d!354502 (= (nullable!1099 lt!420244) (nullableFct!245 lt!420244))))

(declare-fun bs!289900 () Bool)

(assert (= bs!289900 d!354502))

(declare-fun m!1412671 () Bool)

(assert (=> bs!289900 m!1412671))

(assert (=> b!1252433 d!354502))

(declare-fun d!354504 () Bool)

(assert (=> d!354504 (= (nullable!1099 (regOne!7434 r!15719)) (nullableFct!245 (regOne!7434 r!15719)))))

(declare-fun bs!289901 () Bool)

(assert (= bs!289901 d!354504))

(declare-fun m!1412673 () Bool)

(assert (=> bs!289901 m!1412673))

(assert (=> b!1252433 d!354504))

(declare-fun b!1252559 () Bool)

(declare-fun e!797445 () Bool)

(declare-fun e!797444 () Bool)

(assert (=> b!1252559 (= e!797445 e!797444)))

(declare-fun res!555276 () Bool)

(declare-fun call!87431 () Bool)

(assert (=> b!1252559 (= res!555276 call!87431)))

(assert (=> b!1252559 (=> (not res!555276) (not e!797444))))

(declare-fun b!1252560 () Bool)

(declare-fun e!797446 () Bool)

(declare-fun e!797447 () Bool)

(assert (=> b!1252560 (= e!797446 e!797447)))

(declare-fun res!555273 () Bool)

(assert (=> b!1252560 (=> (not res!555273) (not e!797447))))

(assert (=> b!1252560 (= res!555273 (and (not ((_ is EmptyLang!3461) lt!420237)) (not ((_ is ElementMatch!3461) lt!420237))))))

(declare-fun b!1252561 () Bool)

(declare-fun e!797449 () Bool)

(assert (=> b!1252561 (= e!797449 e!797445)))

(declare-fun c!207847 () Bool)

(assert (=> b!1252561 (= c!207847 ((_ is Union!3461) lt!420237))))

(declare-fun b!1252562 () Bool)

(declare-fun call!87432 () Bool)

(assert (=> b!1252562 (= e!797444 call!87432)))

(declare-fun d!354506 () Bool)

(declare-fun res!555274 () Bool)

(assert (=> d!354506 (=> res!555274 e!797446)))

(assert (=> d!354506 (= res!555274 ((_ is EmptyExpr!3461) lt!420237))))

(assert (=> d!354506 (= (nullableFct!245 lt!420237) e!797446)))

(declare-fun b!1252563 () Bool)

(assert (=> b!1252563 (= e!797447 e!797449)))

(declare-fun res!555275 () Bool)

(assert (=> b!1252563 (=> res!555275 e!797449)))

(assert (=> b!1252563 (= res!555275 ((_ is Star!3461) lt!420237))))

(declare-fun b!1252564 () Bool)

(declare-fun e!797448 () Bool)

(assert (=> b!1252564 (= e!797448 call!87432)))

(declare-fun bm!87426 () Bool)

(assert (=> bm!87426 (= call!87431 (nullable!1099 (ite c!207847 (regOne!7435 lt!420237) (regOne!7434 lt!420237))))))

(declare-fun bm!87427 () Bool)

(assert (=> bm!87427 (= call!87432 (nullable!1099 (ite c!207847 (regTwo!7435 lt!420237) (regTwo!7434 lt!420237))))))

(declare-fun b!1252565 () Bool)

(assert (=> b!1252565 (= e!797445 e!797448)))

(declare-fun res!555272 () Bool)

(assert (=> b!1252565 (= res!555272 call!87431)))

(assert (=> b!1252565 (=> res!555272 e!797448)))

(assert (= (and d!354506 (not res!555274)) b!1252560))

(assert (= (and b!1252560 res!555273) b!1252563))

(assert (= (and b!1252563 (not res!555275)) b!1252561))

(assert (= (and b!1252561 c!207847) b!1252565))

(assert (= (and b!1252561 (not c!207847)) b!1252559))

(assert (= (and b!1252565 (not res!555272)) b!1252564))

(assert (= (and b!1252559 res!555276) b!1252562))

(assert (= (or b!1252565 b!1252559) bm!87426))

(assert (= (or b!1252564 b!1252562) bm!87427))

(declare-fun m!1412675 () Bool)

(assert (=> bm!87426 m!1412675))

(declare-fun m!1412677 () Bool)

(assert (=> bm!87427 m!1412677))

(assert (=> d!354468 d!354506))

(declare-fun b!1252566 () Bool)

(declare-fun e!797452 () Bool)

(declare-fun e!797453 () Bool)

(assert (=> b!1252566 (= e!797452 e!797453)))

(declare-fun res!555279 () Bool)

(assert (=> b!1252566 (= res!555279 (not (nullable!1099 (reg!3790 lt!420244))))))

(assert (=> b!1252566 (=> (not res!555279) (not e!797453))))

(declare-fun bm!87428 () Bool)

(declare-fun call!87435 () Bool)

(declare-fun c!207848 () Bool)

(assert (=> bm!87428 (= call!87435 (validRegex!1497 (ite c!207848 (regTwo!7435 lt!420244) (regTwo!7434 lt!420244))))))

(declare-fun d!354508 () Bool)

(declare-fun res!555281 () Bool)

(declare-fun e!797451 () Bool)

(assert (=> d!354508 (=> res!555281 e!797451)))

(assert (=> d!354508 (= res!555281 ((_ is ElementMatch!3461) lt!420244))))

(assert (=> d!354508 (= (validRegex!1497 lt!420244) e!797451)))

(declare-fun b!1252567 () Bool)

(declare-fun call!87434 () Bool)

(assert (=> b!1252567 (= e!797453 call!87434)))

(declare-fun b!1252568 () Bool)

(declare-fun e!797454 () Bool)

(assert (=> b!1252568 (= e!797454 call!87435)))

(declare-fun bm!87429 () Bool)

(declare-fun call!87433 () Bool)

(assert (=> bm!87429 (= call!87433 call!87434)))

(declare-fun b!1252569 () Bool)

(assert (=> b!1252569 (= e!797451 e!797452)))

(declare-fun c!207849 () Bool)

(assert (=> b!1252569 (= c!207849 ((_ is Star!3461) lt!420244))))

(declare-fun b!1252570 () Bool)

(declare-fun res!555277 () Bool)

(declare-fun e!797456 () Bool)

(assert (=> b!1252570 (=> res!555277 e!797456)))

(assert (=> b!1252570 (= res!555277 (not ((_ is Concat!5691) lt!420244)))))

(declare-fun e!797455 () Bool)

(assert (=> b!1252570 (= e!797455 e!797456)))

(declare-fun b!1252571 () Bool)

(declare-fun res!555280 () Bool)

(declare-fun e!797450 () Bool)

(assert (=> b!1252571 (=> (not res!555280) (not e!797450))))

(assert (=> b!1252571 (= res!555280 call!87433)))

(assert (=> b!1252571 (= e!797455 e!797450)))

(declare-fun b!1252572 () Bool)

(assert (=> b!1252572 (= e!797452 e!797455)))

(assert (=> b!1252572 (= c!207848 ((_ is Union!3461) lt!420244))))

(declare-fun bm!87430 () Bool)

(assert (=> bm!87430 (= call!87434 (validRegex!1497 (ite c!207849 (reg!3790 lt!420244) (ite c!207848 (regOne!7435 lt!420244) (regOne!7434 lt!420244)))))))

(declare-fun b!1252573 () Bool)

(assert (=> b!1252573 (= e!797456 e!797454)))

(declare-fun res!555278 () Bool)

(assert (=> b!1252573 (=> (not res!555278) (not e!797454))))

(assert (=> b!1252573 (= res!555278 call!87433)))

(declare-fun b!1252574 () Bool)

(assert (=> b!1252574 (= e!797450 call!87435)))

(assert (= (and d!354508 (not res!555281)) b!1252569))

(assert (= (and b!1252569 c!207849) b!1252566))

(assert (= (and b!1252569 (not c!207849)) b!1252572))

(assert (= (and b!1252566 res!555279) b!1252567))

(assert (= (and b!1252572 c!207848) b!1252571))

(assert (= (and b!1252572 (not c!207848)) b!1252570))

(assert (= (and b!1252571 res!555280) b!1252574))

(assert (= (and b!1252570 (not res!555277)) b!1252573))

(assert (= (and b!1252573 res!555278) b!1252568))

(assert (= (or b!1252574 b!1252568) bm!87428))

(assert (= (or b!1252571 b!1252573) bm!87429))

(assert (= (or b!1252567 bm!87429) bm!87430))

(declare-fun m!1412679 () Bool)

(assert (=> b!1252566 m!1412679))

(declare-fun m!1412681 () Bool)

(assert (=> bm!87428 m!1412681))

(declare-fun m!1412683 () Bool)

(assert (=> bm!87430 m!1412683))

(assert (=> d!354478 d!354508))

(declare-fun b!1252575 () Bool)

(declare-fun e!797459 () Bool)

(declare-fun e!797460 () Bool)

(assert (=> b!1252575 (= e!797459 e!797460)))

(declare-fun res!555284 () Bool)

(assert (=> b!1252575 (= res!555284 (not (nullable!1099 (reg!3790 (regOne!7434 r!15719)))))))

(assert (=> b!1252575 (=> (not res!555284) (not e!797460))))

(declare-fun bm!87431 () Bool)

(declare-fun call!87438 () Bool)

(declare-fun c!207850 () Bool)

(assert (=> bm!87431 (= call!87438 (validRegex!1497 (ite c!207850 (regTwo!7435 (regOne!7434 r!15719)) (regTwo!7434 (regOne!7434 r!15719)))))))

(declare-fun d!354510 () Bool)

(declare-fun res!555286 () Bool)

(declare-fun e!797458 () Bool)

(assert (=> d!354510 (=> res!555286 e!797458)))

(assert (=> d!354510 (= res!555286 ((_ is ElementMatch!3461) (regOne!7434 r!15719)))))

(assert (=> d!354510 (= (validRegex!1497 (regOne!7434 r!15719)) e!797458)))

(declare-fun b!1252576 () Bool)

(declare-fun call!87437 () Bool)

(assert (=> b!1252576 (= e!797460 call!87437)))

(declare-fun b!1252577 () Bool)

(declare-fun e!797461 () Bool)

(assert (=> b!1252577 (= e!797461 call!87438)))

(declare-fun bm!87432 () Bool)

(declare-fun call!87436 () Bool)

(assert (=> bm!87432 (= call!87436 call!87437)))

(declare-fun b!1252578 () Bool)

(assert (=> b!1252578 (= e!797458 e!797459)))

(declare-fun c!207851 () Bool)

(assert (=> b!1252578 (= c!207851 ((_ is Star!3461) (regOne!7434 r!15719)))))

(declare-fun b!1252579 () Bool)

(declare-fun res!555282 () Bool)

(declare-fun e!797463 () Bool)

(assert (=> b!1252579 (=> res!555282 e!797463)))

(assert (=> b!1252579 (= res!555282 (not ((_ is Concat!5691) (regOne!7434 r!15719))))))

(declare-fun e!797462 () Bool)

(assert (=> b!1252579 (= e!797462 e!797463)))

(declare-fun b!1252580 () Bool)

(declare-fun res!555285 () Bool)

(declare-fun e!797457 () Bool)

(assert (=> b!1252580 (=> (not res!555285) (not e!797457))))

(assert (=> b!1252580 (= res!555285 call!87436)))

(assert (=> b!1252580 (= e!797462 e!797457)))

(declare-fun b!1252581 () Bool)

(assert (=> b!1252581 (= e!797459 e!797462)))

(assert (=> b!1252581 (= c!207850 ((_ is Union!3461) (regOne!7434 r!15719)))))

(declare-fun bm!87433 () Bool)

(assert (=> bm!87433 (= call!87437 (validRegex!1497 (ite c!207851 (reg!3790 (regOne!7434 r!15719)) (ite c!207850 (regOne!7435 (regOne!7434 r!15719)) (regOne!7434 (regOne!7434 r!15719))))))))

(declare-fun b!1252582 () Bool)

(assert (=> b!1252582 (= e!797463 e!797461)))

(declare-fun res!555283 () Bool)

(assert (=> b!1252582 (=> (not res!555283) (not e!797461))))

(assert (=> b!1252582 (= res!555283 call!87436)))

(declare-fun b!1252583 () Bool)

(assert (=> b!1252583 (= e!797457 call!87438)))

(assert (= (and d!354510 (not res!555286)) b!1252578))

(assert (= (and b!1252578 c!207851) b!1252575))

(assert (= (and b!1252578 (not c!207851)) b!1252581))

(assert (= (and b!1252575 res!555284) b!1252576))

(assert (= (and b!1252581 c!207850) b!1252580))

(assert (= (and b!1252581 (not c!207850)) b!1252579))

(assert (= (and b!1252580 res!555285) b!1252583))

(assert (= (and b!1252579 (not res!555282)) b!1252582))

(assert (= (and b!1252582 res!555283) b!1252577))

(assert (= (or b!1252583 b!1252577) bm!87431))

(assert (= (or b!1252580 b!1252582) bm!87432))

(assert (= (or b!1252576 bm!87432) bm!87433))

(declare-fun m!1412685 () Bool)

(assert (=> b!1252575 m!1412685))

(declare-fun m!1412687 () Bool)

(assert (=> bm!87431 m!1412687))

(declare-fun m!1412689 () Bool)

(assert (=> bm!87433 m!1412689))

(assert (=> d!354478 d!354510))

(declare-fun b!1252584 () Bool)

(declare-fun e!797466 () Bool)

(declare-fun e!797467 () Bool)

(assert (=> b!1252584 (= e!797466 e!797467)))

(declare-fun res!555289 () Bool)

(assert (=> b!1252584 (= res!555289 (not (nullable!1099 (reg!3790 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))))

(assert (=> b!1252584 (=> (not res!555289) (not e!797467))))

(declare-fun bm!87434 () Bool)

(declare-fun call!87441 () Bool)

(declare-fun c!207852 () Bool)

(assert (=> bm!87434 (= call!87441 (validRegex!1497 (ite c!207852 (regTwo!7435 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))) (regTwo!7434 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))))

(declare-fun d!354512 () Bool)

(declare-fun res!555291 () Bool)

(declare-fun e!797465 () Bool)

(assert (=> d!354512 (=> res!555291 e!797465)))

(assert (=> d!354512 (= res!555291 ((_ is ElementMatch!3461) (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))

(assert (=> d!354512 (= (validRegex!1497 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))) e!797465)))

(declare-fun b!1252585 () Bool)

(declare-fun call!87440 () Bool)

(assert (=> b!1252585 (= e!797467 call!87440)))

(declare-fun b!1252586 () Bool)

(declare-fun e!797468 () Bool)

(assert (=> b!1252586 (= e!797468 call!87441)))

(declare-fun bm!87435 () Bool)

(declare-fun call!87439 () Bool)

(assert (=> bm!87435 (= call!87439 call!87440)))

(declare-fun b!1252587 () Bool)

(assert (=> b!1252587 (= e!797465 e!797466)))

(declare-fun c!207853 () Bool)

(assert (=> b!1252587 (= c!207853 ((_ is Star!3461) (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))

(declare-fun b!1252588 () Bool)

(declare-fun res!555287 () Bool)

(declare-fun e!797470 () Bool)

(assert (=> b!1252588 (=> res!555287 e!797470)))

(assert (=> b!1252588 (= res!555287 (not ((_ is Concat!5691) (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237))))))))

(declare-fun e!797469 () Bool)

(assert (=> b!1252588 (= e!797469 e!797470)))

(declare-fun b!1252589 () Bool)

(declare-fun res!555290 () Bool)

(declare-fun e!797464 () Bool)

(assert (=> b!1252589 (=> (not res!555290) (not e!797464))))

(assert (=> b!1252589 (= res!555290 call!87439)))

(assert (=> b!1252589 (= e!797469 e!797464)))

(declare-fun b!1252590 () Bool)

(assert (=> b!1252590 (= e!797466 e!797469)))

(assert (=> b!1252590 (= c!207852 ((_ is Union!3461) (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))))))

(declare-fun bm!87436 () Bool)

(assert (=> bm!87436 (= call!87440 (validRegex!1497 (ite c!207853 (reg!3790 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))) (ite c!207852 (regOne!7435 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237)))) (regOne!7434 (ite c!207796 (reg!3790 lt!420237) (ite c!207795 (regOne!7435 lt!420237) (regOne!7434 lt!420237))))))))))

(declare-fun b!1252591 () Bool)

(assert (=> b!1252591 (= e!797470 e!797468)))

(declare-fun res!555288 () Bool)

(assert (=> b!1252591 (=> (not res!555288) (not e!797468))))

(assert (=> b!1252591 (= res!555288 call!87439)))

(declare-fun b!1252592 () Bool)

(assert (=> b!1252592 (= e!797464 call!87441)))

(assert (= (and d!354512 (not res!555291)) b!1252587))

(assert (= (and b!1252587 c!207853) b!1252584))

(assert (= (and b!1252587 (not c!207853)) b!1252590))

(assert (= (and b!1252584 res!555289) b!1252585))

(assert (= (and b!1252590 c!207852) b!1252589))

(assert (= (and b!1252590 (not c!207852)) b!1252588))

(assert (= (and b!1252589 res!555290) b!1252592))

(assert (= (and b!1252588 (not res!555287)) b!1252591))

(assert (= (and b!1252591 res!555288) b!1252586))

(assert (= (or b!1252592 b!1252586) bm!87434))

(assert (= (or b!1252589 b!1252591) bm!87435))

(assert (= (or b!1252585 bm!87435) bm!87436))

(declare-fun m!1412691 () Bool)

(assert (=> b!1252584 m!1412691))

(declare-fun m!1412693 () Bool)

(assert (=> bm!87434 m!1412693))

(declare-fun m!1412695 () Bool)

(assert (=> bm!87436 m!1412695))

(assert (=> bm!87369 d!354512))

(declare-fun b!1252593 () Bool)

(declare-fun e!797474 () Regex!3461)

(assert (=> b!1252593 (= e!797474 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719))))))

(declare-fun b!1252594 () Bool)

(declare-fun e!797472 () Regex!3461)

(declare-fun e!797473 () Regex!3461)

(assert (=> b!1252594 (= e!797472 e!797473)))

(declare-fun c!207855 () Bool)

(assert (=> b!1252594 (= c!207855 (and ((_ is Concat!5691) (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) ((_ is EmptyExpr!3461) (regTwo!7434 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))))

(declare-fun b!1252595 () Bool)

(declare-fun c!207856 () Bool)

(assert (=> b!1252595 (= c!207856 ((_ is Star!3461) (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))

(declare-fun e!797475 () Regex!3461)

(assert (=> b!1252595 (= e!797475 e!797474)))

(declare-fun b!1252596 () Bool)

(declare-fun call!87445 () Regex!3461)

(assert (=> b!1252596 (= e!797473 call!87445)))

(declare-fun bm!87437 () Bool)

(declare-fun c!207858 () Bool)

(declare-fun c!207857 () Bool)

(declare-fun c!207854 () Bool)

(declare-fun call!87443 () Regex!3461)

(assert (=> bm!87437 (= call!87443 (removeUselessConcat!514 (ite c!207857 (regTwo!7434 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) (ite (or c!207855 c!207858) (regOne!7434 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) (ite c!207854 (regOne!7435 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) (reg!3790 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))))))

(declare-fun b!1252597 () Bool)

(declare-fun e!797471 () Regex!3461)

(declare-fun call!87442 () Regex!3461)

(declare-fun call!87444 () Regex!3461)

(assert (=> b!1252597 (= e!797471 (Concat!5691 call!87442 call!87444))))

(declare-fun bm!87438 () Bool)

(assert (=> bm!87438 (= call!87442 call!87445)))

(declare-fun b!1252598 () Bool)

(assert (=> b!1252598 (= c!207858 ((_ is Concat!5691) (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))

(assert (=> b!1252598 (= e!797473 e!797471)))

(declare-fun d!354514 () Bool)

(declare-fun e!797476 () Bool)

(assert (=> d!354514 e!797476))

(declare-fun res!555292 () Bool)

(assert (=> d!354514 (=> (not res!555292) (not e!797476))))

(declare-fun lt!420246 () Regex!3461)

(assert (=> d!354514 (= res!555292 (validRegex!1497 lt!420246))))

(assert (=> d!354514 (= lt!420246 e!797472)))

(assert (=> d!354514 (= c!207857 (and ((_ is Concat!5691) (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) ((_ is EmptyExpr!3461) (regOne!7434 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))))

(assert (=> d!354514 (validRegex!1497 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719))))))

(assert (=> d!354514 (= (removeUselessConcat!514 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) lt!420246)))

(declare-fun b!1252599 () Bool)

(assert (=> b!1252599 (= e!797476 (= (nullable!1099 lt!420246) (nullable!1099 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719))))))))

(declare-fun b!1252600 () Bool)

(assert (=> b!1252600 (= e!797471 e!797475)))

(assert (=> b!1252600 (= c!207854 ((_ is Union!3461) (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))

(declare-fun bm!87439 () Bool)

(declare-fun call!87446 () Regex!3461)

(assert (=> bm!87439 (= call!87446 call!87442)))

(declare-fun bm!87440 () Bool)

(assert (=> bm!87440 (= call!87445 call!87443)))

(declare-fun bm!87441 () Bool)

(assert (=> bm!87441 (= call!87444 (removeUselessConcat!514 (ite c!207858 (regTwo!7434 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))) (regTwo!7435 (ite c!207838 (regTwo!7434 (regTwo!7434 r!15719)) (regTwo!7435 (regTwo!7434 r!15719)))))))))

(declare-fun b!1252601 () Bool)

(assert (=> b!1252601 (= e!797472 call!87443)))

(declare-fun b!1252602 () Bool)

(assert (=> b!1252602 (= e!797475 (Union!3461 call!87446 call!87444))))

(declare-fun b!1252603 () Bool)

(assert (=> b!1252603 (= e!797474 (Star!3461 call!87446))))

(assert (= (and d!354514 c!207857) b!1252601))

(assert (= (and d!354514 (not c!207857)) b!1252594))

(assert (= (and b!1252594 c!207855) b!1252596))

(assert (= (and b!1252594 (not c!207855)) b!1252598))

(assert (= (and b!1252598 c!207858) b!1252597))

(assert (= (and b!1252598 (not c!207858)) b!1252600))

(assert (= (and b!1252600 c!207854) b!1252602))

(assert (= (and b!1252600 (not c!207854)) b!1252595))

(assert (= (and b!1252595 c!207856) b!1252603))

(assert (= (and b!1252595 (not c!207856)) b!1252593))

(assert (= (or b!1252602 b!1252603) bm!87439))

(assert (= (or b!1252597 bm!87439) bm!87438))

(assert (= (or b!1252597 b!1252602) bm!87441))

(assert (= (or b!1252596 bm!87438) bm!87440))

(assert (= (or b!1252601 bm!87440) bm!87437))

(assert (= (and d!354514 res!555292) b!1252599))

(declare-fun m!1412697 () Bool)

(assert (=> bm!87437 m!1412697))

(declare-fun m!1412699 () Bool)

(assert (=> d!354514 m!1412699))

(declare-fun m!1412701 () Bool)

(assert (=> d!354514 m!1412701))

(declare-fun m!1412703 () Bool)

(assert (=> b!1252599 m!1412703))

(declare-fun m!1412705 () Bool)

(assert (=> b!1252599 m!1412705))

(declare-fun m!1412707 () Bool)

(assert (=> bm!87441 m!1412707))

(assert (=> bm!87412 d!354514))

(declare-fun b!1252604 () Bool)

(declare-fun e!797478 () Bool)

(declare-fun e!797477 () Bool)

(assert (=> b!1252604 (= e!797478 e!797477)))

(declare-fun res!555297 () Bool)

(declare-fun call!87447 () Bool)

(assert (=> b!1252604 (= res!555297 call!87447)))

(assert (=> b!1252604 (=> (not res!555297) (not e!797477))))

(declare-fun b!1252605 () Bool)

(declare-fun e!797479 () Bool)

(declare-fun e!797480 () Bool)

(assert (=> b!1252605 (= e!797479 e!797480)))

(declare-fun res!555294 () Bool)

(assert (=> b!1252605 (=> (not res!555294) (not e!797480))))

(assert (=> b!1252605 (= res!555294 (and (not ((_ is EmptyLang!3461) r!15719)) (not ((_ is ElementMatch!3461) r!15719))))))

(declare-fun b!1252606 () Bool)

(declare-fun e!797482 () Bool)

(assert (=> b!1252606 (= e!797482 e!797478)))

(declare-fun c!207859 () Bool)

(assert (=> b!1252606 (= c!207859 ((_ is Union!3461) r!15719))))

(declare-fun b!1252607 () Bool)

(declare-fun call!87448 () Bool)

(assert (=> b!1252607 (= e!797477 call!87448)))

(declare-fun d!354516 () Bool)

(declare-fun res!555295 () Bool)

(assert (=> d!354516 (=> res!555295 e!797479)))

(assert (=> d!354516 (= res!555295 ((_ is EmptyExpr!3461) r!15719))))

(assert (=> d!354516 (= (nullableFct!245 r!15719) e!797479)))

(declare-fun b!1252608 () Bool)

(assert (=> b!1252608 (= e!797480 e!797482)))

(declare-fun res!555296 () Bool)

(assert (=> b!1252608 (=> res!555296 e!797482)))

(assert (=> b!1252608 (= res!555296 ((_ is Star!3461) r!15719))))

(declare-fun b!1252609 () Bool)

(declare-fun e!797481 () Bool)

(assert (=> b!1252609 (= e!797481 call!87448)))

(declare-fun bm!87442 () Bool)

(assert (=> bm!87442 (= call!87447 (nullable!1099 (ite c!207859 (regOne!7435 r!15719) (regOne!7434 r!15719))))))

(declare-fun bm!87443 () Bool)

(assert (=> bm!87443 (= call!87448 (nullable!1099 (ite c!207859 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))

(declare-fun b!1252610 () Bool)

(assert (=> b!1252610 (= e!797478 e!797481)))

(declare-fun res!555293 () Bool)

(assert (=> b!1252610 (= res!555293 call!87447)))

(assert (=> b!1252610 (=> res!555293 e!797481)))

(assert (= (and d!354516 (not res!555295)) b!1252605))

(assert (= (and b!1252605 res!555294) b!1252608))

(assert (= (and b!1252608 (not res!555296)) b!1252606))

(assert (= (and b!1252606 c!207859) b!1252610))

(assert (= (and b!1252606 (not c!207859)) b!1252604))

(assert (= (and b!1252610 (not res!555293)) b!1252609))

(assert (= (and b!1252604 res!555297) b!1252607))

(assert (= (or b!1252610 b!1252604) bm!87442))

(assert (= (or b!1252609 b!1252607) bm!87443))

(declare-fun m!1412709 () Bool)

(assert (=> bm!87442 m!1412709))

(declare-fun m!1412711 () Bool)

(assert (=> bm!87443 m!1412711))

(assert (=> d!354470 d!354516))

(declare-fun b!1252611 () Bool)

(declare-fun e!797486 () Regex!3461)

(assert (=> b!1252611 (= e!797486 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719))))))))

(declare-fun b!1252612 () Bool)

(declare-fun e!797484 () Regex!3461)

(declare-fun e!797485 () Regex!3461)

(assert (=> b!1252612 (= e!797484 e!797485)))

(declare-fun c!207861 () Bool)

(assert (=> b!1252612 (= c!207861 (and ((_ is Concat!5691) (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) ((_ is EmptyExpr!3461) (regTwo!7434 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))))

(declare-fun c!207862 () Bool)

(declare-fun b!1252613 () Bool)

(assert (=> b!1252613 (= c!207862 ((_ is Star!3461) (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))

(declare-fun e!797487 () Regex!3461)

(assert (=> b!1252613 (= e!797487 e!797486)))

(declare-fun b!1252614 () Bool)

(declare-fun call!87452 () Regex!3461)

(assert (=> b!1252614 (= e!797485 call!87452)))

(declare-fun call!87450 () Regex!3461)

(declare-fun c!207864 () Bool)

(declare-fun bm!87444 () Bool)

(declare-fun c!207863 () Bool)

(declare-fun c!207860 () Bool)

(assert (=> bm!87444 (= call!87450 (removeUselessConcat!514 (ite c!207863 (regTwo!7434 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) (ite (or c!207861 c!207864) (regOne!7434 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) (ite c!207860 (regOne!7435 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) (reg!3790 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))))))

(declare-fun b!1252615 () Bool)

(declare-fun e!797483 () Regex!3461)

(declare-fun call!87449 () Regex!3461)

(declare-fun call!87451 () Regex!3461)

(assert (=> b!1252615 (= e!797483 (Concat!5691 call!87449 call!87451))))

(declare-fun bm!87445 () Bool)

(assert (=> bm!87445 (= call!87449 call!87452)))

(declare-fun b!1252616 () Bool)

(assert (=> b!1252616 (= c!207864 ((_ is Concat!5691) (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))

(assert (=> b!1252616 (= e!797485 e!797483)))

(declare-fun d!354518 () Bool)

(declare-fun e!797488 () Bool)

(assert (=> d!354518 e!797488))

(declare-fun res!555298 () Bool)

(assert (=> d!354518 (=> (not res!555298) (not e!797488))))

(declare-fun lt!420247 () Regex!3461)

(assert (=> d!354518 (= res!555298 (validRegex!1497 lt!420247))))

(assert (=> d!354518 (= lt!420247 e!797484)))

(assert (=> d!354518 (= c!207863 (and ((_ is Concat!5691) (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) ((_ is EmptyExpr!3461) (regOne!7434 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))))

(assert (=> d!354518 (validRegex!1497 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719))))))))

(assert (=> d!354518 (= (removeUselessConcat!514 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) lt!420247)))

(declare-fun b!1252617 () Bool)

(assert (=> b!1252617 (= e!797488 (= (nullable!1099 lt!420247) (nullable!1099 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719))))))))))

(declare-fun b!1252618 () Bool)

(assert (=> b!1252618 (= e!797483 e!797487)))

(assert (=> b!1252618 (= c!207860 ((_ is Union!3461) (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))

(declare-fun bm!87446 () Bool)

(declare-fun call!87453 () Regex!3461)

(assert (=> bm!87446 (= call!87453 call!87449)))

(declare-fun bm!87447 () Bool)

(assert (=> bm!87447 (= call!87452 call!87450)))

(declare-fun bm!87448 () Bool)

(assert (=> bm!87448 (= call!87451 (removeUselessConcat!514 (ite c!207864 (regTwo!7434 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))) (regTwo!7435 (ite c!207837 (regTwo!7434 (regTwo!7434 r!15719)) (ite (or c!207835 c!207838) (regOne!7434 (regTwo!7434 r!15719)) (ite c!207834 (regOne!7435 (regTwo!7434 r!15719)) (reg!3790 (regTwo!7434 r!15719)))))))))))

(declare-fun b!1252619 () Bool)

(assert (=> b!1252619 (= e!797484 call!87450)))

(declare-fun b!1252620 () Bool)

(assert (=> b!1252620 (= e!797487 (Union!3461 call!87453 call!87451))))

(declare-fun b!1252621 () Bool)

(assert (=> b!1252621 (= e!797486 (Star!3461 call!87453))))

(assert (= (and d!354518 c!207863) b!1252619))

(assert (= (and d!354518 (not c!207863)) b!1252612))

(assert (= (and b!1252612 c!207861) b!1252614))

(assert (= (and b!1252612 (not c!207861)) b!1252616))

(assert (= (and b!1252616 c!207864) b!1252615))

(assert (= (and b!1252616 (not c!207864)) b!1252618))

(assert (= (and b!1252618 c!207860) b!1252620))

(assert (= (and b!1252618 (not c!207860)) b!1252613))

(assert (= (and b!1252613 c!207862) b!1252621))

(assert (= (and b!1252613 (not c!207862)) b!1252611))

(assert (= (or b!1252620 b!1252621) bm!87446))

(assert (= (or b!1252615 bm!87446) bm!87445))

(assert (= (or b!1252615 b!1252620) bm!87448))

(assert (= (or b!1252614 bm!87445) bm!87447))

(assert (= (or b!1252619 bm!87447) bm!87444))

(assert (= (and d!354518 res!555298) b!1252617))

(declare-fun m!1412713 () Bool)

(assert (=> bm!87444 m!1412713))

(declare-fun m!1412715 () Bool)

(assert (=> d!354518 m!1412715))

(declare-fun m!1412717 () Bool)

(assert (=> d!354518 m!1412717))

(declare-fun m!1412719 () Bool)

(assert (=> b!1252617 m!1412719))

(declare-fun m!1412721 () Bool)

(assert (=> b!1252617 m!1412721))

(declare-fun m!1412723 () Bool)

(assert (=> bm!87448 m!1412723))

(assert (=> bm!87408 d!354518))

(declare-fun d!354520 () Bool)

(assert (=> d!354520 (= (nullable!1099 (reg!3790 r!15719)) (nullableFct!245 (reg!3790 r!15719)))))

(declare-fun bs!289902 () Bool)

(assert (= bs!289902 d!354520))

(declare-fun m!1412725 () Bool)

(assert (=> bs!289902 m!1412725))

(assert (=> b!1252343 d!354520))

(declare-fun b!1252622 () Bool)

(declare-fun e!797491 () Bool)

(declare-fun e!797492 () Bool)

(assert (=> b!1252622 (= e!797491 e!797492)))

(declare-fun res!555301 () Bool)

(assert (=> b!1252622 (= res!555301 (not (nullable!1099 (reg!3790 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))))

(assert (=> b!1252622 (=> (not res!555301) (not e!797492))))

(declare-fun bm!87449 () Bool)

(declare-fun call!87456 () Bool)

(declare-fun c!207865 () Bool)

(assert (=> bm!87449 (= call!87456 (validRegex!1497 (ite c!207865 (regTwo!7435 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))) (regTwo!7434 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))))

(declare-fun d!354522 () Bool)

(declare-fun res!555303 () Bool)

(declare-fun e!797490 () Bool)

(assert (=> d!354522 (=> res!555303 e!797490)))

(assert (=> d!354522 (= res!555303 ((_ is ElementMatch!3461) (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))

(assert (=> d!354522 (= (validRegex!1497 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))) e!797490)))

(declare-fun b!1252623 () Bool)

(declare-fun call!87455 () Bool)

(assert (=> b!1252623 (= e!797492 call!87455)))

(declare-fun b!1252624 () Bool)

(declare-fun e!797493 () Bool)

(assert (=> b!1252624 (= e!797493 call!87456)))

(declare-fun bm!87450 () Bool)

(declare-fun call!87454 () Bool)

(assert (=> bm!87450 (= call!87454 call!87455)))

(declare-fun b!1252625 () Bool)

(assert (=> b!1252625 (= e!797490 e!797491)))

(declare-fun c!207866 () Bool)

(assert (=> b!1252625 (= c!207866 ((_ is Star!3461) (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))

(declare-fun b!1252626 () Bool)

(declare-fun res!555299 () Bool)

(declare-fun e!797495 () Bool)

(assert (=> b!1252626 (=> res!555299 e!797495)))

(assert (=> b!1252626 (= res!555299 (not ((_ is Concat!5691) (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719)))))))

(declare-fun e!797494 () Bool)

(assert (=> b!1252626 (= e!797494 e!797495)))

(declare-fun b!1252627 () Bool)

(declare-fun res!555302 () Bool)

(declare-fun e!797489 () Bool)

(assert (=> b!1252627 (=> (not res!555302) (not e!797489))))

(assert (=> b!1252627 (= res!555302 call!87454)))

(assert (=> b!1252627 (= e!797494 e!797489)))

(declare-fun b!1252628 () Bool)

(assert (=> b!1252628 (= e!797491 e!797494)))

(assert (=> b!1252628 (= c!207865 ((_ is Union!3461) (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))))))

(declare-fun bm!87451 () Bool)

(assert (=> bm!87451 (= call!87455 (validRegex!1497 (ite c!207866 (reg!3790 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))) (ite c!207865 (regOne!7435 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719))) (regOne!7434 (ite c!207793 (regTwo!7435 r!15719) (regTwo!7434 r!15719)))))))))

(declare-fun b!1252629 () Bool)

(assert (=> b!1252629 (= e!797495 e!797493)))

(declare-fun res!555300 () Bool)

(assert (=> b!1252629 (=> (not res!555300) (not e!797493))))

(assert (=> b!1252629 (= res!555300 call!87454)))

(declare-fun b!1252630 () Bool)

(assert (=> b!1252630 (= e!797489 call!87456)))

(assert (= (and d!354522 (not res!555303)) b!1252625))

(assert (= (and b!1252625 c!207866) b!1252622))

(assert (= (and b!1252625 (not c!207866)) b!1252628))

(assert (= (and b!1252622 res!555301) b!1252623))

(assert (= (and b!1252628 c!207865) b!1252627))

(assert (= (and b!1252628 (not c!207865)) b!1252626))

(assert (= (and b!1252627 res!555302) b!1252630))

(assert (= (and b!1252626 (not res!555299)) b!1252629))

(assert (= (and b!1252629 res!555300) b!1252624))

(assert (= (or b!1252630 b!1252624) bm!87449))

(assert (= (or b!1252627 b!1252629) bm!87450))

(assert (= (or b!1252623 bm!87450) bm!87451))

(declare-fun m!1412727 () Bool)

(assert (=> b!1252622 m!1412727))

(declare-fun m!1412729 () Bool)

(assert (=> bm!87449 m!1412729))

(declare-fun m!1412731 () Bool)

(assert (=> bm!87451 m!1412731))

(assert (=> bm!87364 d!354522))

(declare-fun b!1252631 () Bool)

(declare-fun e!797499 () Regex!3461)

(assert (=> b!1252631 (= e!797499 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719))))))

(declare-fun b!1252632 () Bool)

(declare-fun e!797497 () Regex!3461)

(declare-fun e!797498 () Regex!3461)

(assert (=> b!1252632 (= e!797497 e!797498)))

(declare-fun c!207868 () Bool)

(assert (=> b!1252632 (= c!207868 (and ((_ is Concat!5691) (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) ((_ is EmptyExpr!3461) (regTwo!7434 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))))

(declare-fun b!1252633 () Bool)

(declare-fun c!207869 () Bool)

(assert (=> b!1252633 (= c!207869 ((_ is Star!3461) (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))

(declare-fun e!797500 () Regex!3461)

(assert (=> b!1252633 (= e!797500 e!797499)))

(declare-fun b!1252634 () Bool)

(declare-fun call!87460 () Regex!3461)

(assert (=> b!1252634 (= e!797498 call!87460)))

(declare-fun bm!87452 () Bool)

(declare-fun call!87458 () Regex!3461)

(declare-fun c!207867 () Bool)

(declare-fun c!207870 () Bool)

(declare-fun c!207871 () Bool)

(assert (=> bm!87452 (= call!87458 (removeUselessConcat!514 (ite c!207870 (regTwo!7434 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) (ite (or c!207868 c!207871) (regOne!7434 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) (ite c!207867 (regOne!7435 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) (reg!3790 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))))))

(declare-fun b!1252635 () Bool)

(declare-fun e!797496 () Regex!3461)

(declare-fun call!87457 () Regex!3461)

(declare-fun call!87459 () Regex!3461)

(assert (=> b!1252635 (= e!797496 (Concat!5691 call!87457 call!87459))))

(declare-fun bm!87453 () Bool)

(assert (=> bm!87453 (= call!87457 call!87460)))

(declare-fun b!1252636 () Bool)

(assert (=> b!1252636 (= c!207871 ((_ is Concat!5691) (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))

(assert (=> b!1252636 (= e!797498 e!797496)))

(declare-fun d!354524 () Bool)

(declare-fun e!797501 () Bool)

(assert (=> d!354524 e!797501))

(declare-fun res!555304 () Bool)

(assert (=> d!354524 (=> (not res!555304) (not e!797501))))

(declare-fun lt!420248 () Regex!3461)

(assert (=> d!354524 (= res!555304 (validRegex!1497 lt!420248))))

(assert (=> d!354524 (= lt!420248 e!797497)))

(assert (=> d!354524 (= c!207870 (and ((_ is Concat!5691) (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) ((_ is EmptyExpr!3461) (regOne!7434 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))))

(assert (=> d!354524 (validRegex!1497 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719))))))

(assert (=> d!354524 (= (removeUselessConcat!514 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) lt!420248)))

(declare-fun b!1252637 () Bool)

(assert (=> b!1252637 (= e!797501 (= (nullable!1099 lt!420248) (nullable!1099 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719))))))))

(declare-fun b!1252638 () Bool)

(assert (=> b!1252638 (= e!797496 e!797500)))

(assert (=> b!1252638 (= c!207867 ((_ is Union!3461) (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))

(declare-fun bm!87454 () Bool)

(declare-fun call!87461 () Regex!3461)

(assert (=> bm!87454 (= call!87461 call!87457)))

(declare-fun bm!87455 () Bool)

(assert (=> bm!87455 (= call!87460 call!87458)))

(declare-fun bm!87456 () Bool)

(assert (=> bm!87456 (= call!87459 (removeUselessConcat!514 (ite c!207871 (regTwo!7434 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))) (regTwo!7435 (ite c!207831 (regTwo!7434 (regOne!7434 r!15719)) (regTwo!7435 (regOne!7434 r!15719)))))))))

(declare-fun b!1252639 () Bool)

(assert (=> b!1252639 (= e!797497 call!87458)))

(declare-fun b!1252640 () Bool)

(assert (=> b!1252640 (= e!797500 (Union!3461 call!87461 call!87459))))

(declare-fun b!1252641 () Bool)

(assert (=> b!1252641 (= e!797499 (Star!3461 call!87461))))

(assert (= (and d!354524 c!207870) b!1252639))

(assert (= (and d!354524 (not c!207870)) b!1252632))

(assert (= (and b!1252632 c!207868) b!1252634))

(assert (= (and b!1252632 (not c!207868)) b!1252636))

(assert (= (and b!1252636 c!207871) b!1252635))

(assert (= (and b!1252636 (not c!207871)) b!1252638))

(assert (= (and b!1252638 c!207867) b!1252640))

(assert (= (and b!1252638 (not c!207867)) b!1252633))

(assert (= (and b!1252633 c!207869) b!1252641))

(assert (= (and b!1252633 (not c!207869)) b!1252631))

(assert (= (or b!1252640 b!1252641) bm!87454))

(assert (= (or b!1252635 bm!87454) bm!87453))

(assert (= (or b!1252635 b!1252640) bm!87456))

(assert (= (or b!1252634 bm!87453) bm!87455))

(assert (= (or b!1252639 bm!87455) bm!87452))

(assert (= (and d!354524 res!555304) b!1252637))

(declare-fun m!1412733 () Bool)

(assert (=> bm!87452 m!1412733))

(declare-fun m!1412735 () Bool)

(assert (=> d!354524 m!1412735))

(declare-fun m!1412737 () Bool)

(assert (=> d!354524 m!1412737))

(declare-fun m!1412739 () Bool)

(assert (=> b!1252637 m!1412739))

(declare-fun m!1412741 () Bool)

(assert (=> b!1252637 m!1412741))

(declare-fun m!1412743 () Bool)

(assert (=> bm!87456 m!1412743))

(assert (=> bm!87404 d!354524))

(declare-fun e!797505 () Regex!3461)

(declare-fun b!1252642 () Bool)

(assert (=> b!1252642 (= e!797505 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719))))))))

(declare-fun b!1252643 () Bool)

(declare-fun e!797503 () Regex!3461)

(declare-fun e!797504 () Regex!3461)

(assert (=> b!1252643 (= e!797503 e!797504)))

(declare-fun c!207873 () Bool)

(assert (=> b!1252643 (= c!207873 (and ((_ is Concat!5691) (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) ((_ is EmptyExpr!3461) (regTwo!7434 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))))

(declare-fun b!1252644 () Bool)

(declare-fun c!207874 () Bool)

(assert (=> b!1252644 (= c!207874 ((_ is Star!3461) (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))

(declare-fun e!797506 () Regex!3461)

(assert (=> b!1252644 (= e!797506 e!797505)))

(declare-fun b!1252645 () Bool)

(declare-fun call!87465 () Regex!3461)

(assert (=> b!1252645 (= e!797504 call!87465)))

(declare-fun call!87463 () Regex!3461)

(declare-fun bm!87457 () Bool)

(declare-fun c!207875 () Bool)

(declare-fun c!207876 () Bool)

(declare-fun c!207872 () Bool)

(assert (=> bm!87457 (= call!87463 (removeUselessConcat!514 (ite c!207875 (regTwo!7434 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) (ite (or c!207873 c!207876) (regOne!7434 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) (ite c!207872 (regOne!7435 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) (reg!3790 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))))))

(declare-fun b!1252646 () Bool)

(declare-fun e!797502 () Regex!3461)

(declare-fun call!87462 () Regex!3461)

(declare-fun call!87464 () Regex!3461)

(assert (=> b!1252646 (= e!797502 (Concat!5691 call!87462 call!87464))))

(declare-fun bm!87458 () Bool)

(assert (=> bm!87458 (= call!87462 call!87465)))

(declare-fun b!1252647 () Bool)

(assert (=> b!1252647 (= c!207876 ((_ is Concat!5691) (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))

(assert (=> b!1252647 (= e!797504 e!797502)))

(declare-fun d!354526 () Bool)

(declare-fun e!797507 () Bool)

(assert (=> d!354526 e!797507))

(declare-fun res!555305 () Bool)

(assert (=> d!354526 (=> (not res!555305) (not e!797507))))

(declare-fun lt!420249 () Regex!3461)

(assert (=> d!354526 (= res!555305 (validRegex!1497 lt!420249))))

(assert (=> d!354526 (= lt!420249 e!797503)))

(assert (=> d!354526 (= c!207875 (and ((_ is Concat!5691) (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) ((_ is EmptyExpr!3461) (regOne!7434 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))))

(assert (=> d!354526 (validRegex!1497 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719))))))))

(assert (=> d!354526 (= (removeUselessConcat!514 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) lt!420249)))

(declare-fun b!1252648 () Bool)

(assert (=> b!1252648 (= e!797507 (= (nullable!1099 lt!420249) (nullable!1099 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719))))))))))

(declare-fun b!1252649 () Bool)

(assert (=> b!1252649 (= e!797502 e!797506)))

(assert (=> b!1252649 (= c!207872 ((_ is Union!3461) (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))

(declare-fun bm!87459 () Bool)

(declare-fun call!87466 () Regex!3461)

(assert (=> bm!87459 (= call!87466 call!87462)))

(declare-fun bm!87460 () Bool)

(assert (=> bm!87460 (= call!87465 call!87463)))

(declare-fun bm!87461 () Bool)

(assert (=> bm!87461 (= call!87464 (removeUselessConcat!514 (ite c!207876 (regTwo!7434 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))) (regTwo!7435 (ite c!207830 (regTwo!7434 (regOne!7434 r!15719)) (ite (or c!207828 c!207831) (regOne!7434 (regOne!7434 r!15719)) (ite c!207827 (regOne!7435 (regOne!7434 r!15719)) (reg!3790 (regOne!7434 r!15719)))))))))))

(declare-fun b!1252650 () Bool)

(assert (=> b!1252650 (= e!797503 call!87463)))

(declare-fun b!1252651 () Bool)

(assert (=> b!1252651 (= e!797506 (Union!3461 call!87466 call!87464))))

(declare-fun b!1252652 () Bool)

(assert (=> b!1252652 (= e!797505 (Star!3461 call!87466))))

(assert (= (and d!354526 c!207875) b!1252650))

(assert (= (and d!354526 (not c!207875)) b!1252643))

(assert (= (and b!1252643 c!207873) b!1252645))

(assert (= (and b!1252643 (not c!207873)) b!1252647))

(assert (= (and b!1252647 c!207876) b!1252646))

(assert (= (and b!1252647 (not c!207876)) b!1252649))

(assert (= (and b!1252649 c!207872) b!1252651))

(assert (= (and b!1252649 (not c!207872)) b!1252644))

(assert (= (and b!1252644 c!207874) b!1252652))

(assert (= (and b!1252644 (not c!207874)) b!1252642))

(assert (= (or b!1252651 b!1252652) bm!87459))

(assert (= (or b!1252646 bm!87459) bm!87458))

(assert (= (or b!1252646 b!1252651) bm!87461))

(assert (= (or b!1252645 bm!87458) bm!87460))

(assert (= (or b!1252650 bm!87460) bm!87457))

(assert (= (and d!354526 res!555305) b!1252648))

(declare-fun m!1412745 () Bool)

(assert (=> bm!87457 m!1412745))

(declare-fun m!1412747 () Bool)

(assert (=> d!354526 m!1412747))

(declare-fun m!1412749 () Bool)

(assert (=> d!354526 m!1412749))

(declare-fun m!1412751 () Bool)

(assert (=> b!1252648 m!1412751))

(declare-fun m!1412753 () Bool)

(assert (=> b!1252648 m!1412753))

(declare-fun m!1412755 () Bool)

(assert (=> bm!87461 m!1412755))

(assert (=> bm!87400 d!354526))

(declare-fun b!1252653 () Bool)

(declare-fun e!797510 () Bool)

(declare-fun e!797511 () Bool)

(assert (=> b!1252653 (= e!797510 e!797511)))

(declare-fun res!555308 () Bool)

(assert (=> b!1252653 (= res!555308 (not (nullable!1099 (reg!3790 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))))

(assert (=> b!1252653 (=> (not res!555308) (not e!797511))))

(declare-fun c!207877 () Bool)

(declare-fun call!87469 () Bool)

(declare-fun bm!87462 () Bool)

(assert (=> bm!87462 (= call!87469 (validRegex!1497 (ite c!207877 (regTwo!7435 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))) (regTwo!7434 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))))

(declare-fun d!354528 () Bool)

(declare-fun res!555310 () Bool)

(declare-fun e!797509 () Bool)

(assert (=> d!354528 (=> res!555310 e!797509)))

(assert (=> d!354528 (= res!555310 ((_ is ElementMatch!3461) (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))

(assert (=> d!354528 (= (validRegex!1497 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))) e!797509)))

(declare-fun b!1252654 () Bool)

(declare-fun call!87468 () Bool)

(assert (=> b!1252654 (= e!797511 call!87468)))

(declare-fun b!1252655 () Bool)

(declare-fun e!797512 () Bool)

(assert (=> b!1252655 (= e!797512 call!87469)))

(declare-fun bm!87463 () Bool)

(declare-fun call!87467 () Bool)

(assert (=> bm!87463 (= call!87467 call!87468)))

(declare-fun b!1252656 () Bool)

(assert (=> b!1252656 (= e!797509 e!797510)))

(declare-fun c!207878 () Bool)

(assert (=> b!1252656 (= c!207878 ((_ is Star!3461) (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))

(declare-fun b!1252657 () Bool)

(declare-fun res!555306 () Bool)

(declare-fun e!797514 () Bool)

(assert (=> b!1252657 (=> res!555306 e!797514)))

(assert (=> b!1252657 (= res!555306 (not ((_ is Concat!5691) (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719))))))))

(declare-fun e!797513 () Bool)

(assert (=> b!1252657 (= e!797513 e!797514)))

(declare-fun b!1252658 () Bool)

(declare-fun res!555309 () Bool)

(declare-fun e!797508 () Bool)

(assert (=> b!1252658 (=> (not res!555309) (not e!797508))))

(assert (=> b!1252658 (= res!555309 call!87467)))

(assert (=> b!1252658 (= e!797513 e!797508)))

(declare-fun b!1252659 () Bool)

(assert (=> b!1252659 (= e!797510 e!797513)))

(assert (=> b!1252659 (= c!207877 ((_ is Union!3461) (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))))))

(declare-fun bm!87464 () Bool)

(assert (=> bm!87464 (= call!87468 (validRegex!1497 (ite c!207878 (reg!3790 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))) (ite c!207877 (regOne!7435 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719)))) (regOne!7434 (ite c!207794 (reg!3790 r!15719) (ite c!207793 (regOne!7435 r!15719) (regOne!7434 r!15719))))))))))

(declare-fun b!1252660 () Bool)

(assert (=> b!1252660 (= e!797514 e!797512)))

(declare-fun res!555307 () Bool)

(assert (=> b!1252660 (=> (not res!555307) (not e!797512))))

(assert (=> b!1252660 (= res!555307 call!87467)))

(declare-fun b!1252661 () Bool)

(assert (=> b!1252661 (= e!797508 call!87469)))

(assert (= (and d!354528 (not res!555310)) b!1252656))

(assert (= (and b!1252656 c!207878) b!1252653))

(assert (= (and b!1252656 (not c!207878)) b!1252659))

(assert (= (and b!1252653 res!555308) b!1252654))

(assert (= (and b!1252659 c!207877) b!1252658))

(assert (= (and b!1252659 (not c!207877)) b!1252657))

(assert (= (and b!1252658 res!555309) b!1252661))

(assert (= (and b!1252657 (not res!555306)) b!1252660))

(assert (= (and b!1252660 res!555307) b!1252655))

(assert (= (or b!1252661 b!1252655) bm!87462))

(assert (= (or b!1252658 b!1252660) bm!87463))

(assert (= (or b!1252654 bm!87463) bm!87464))

(declare-fun m!1412757 () Bool)

(assert (=> b!1252653 m!1412757))

(declare-fun m!1412759 () Bool)

(assert (=> bm!87462 m!1412759))

(declare-fun m!1412761 () Bool)

(assert (=> bm!87464 m!1412761))

(assert (=> bm!87366 d!354528))

(declare-fun b!1252663 () Bool)

(declare-fun e!797515 () Bool)

(declare-fun tp!368950 () Bool)

(declare-fun tp!368954 () Bool)

(assert (=> b!1252663 (= e!797515 (and tp!368950 tp!368954))))

(declare-fun b!1252665 () Bool)

(declare-fun tp!368951 () Bool)

(declare-fun tp!368953 () Bool)

(assert (=> b!1252665 (= e!797515 (and tp!368951 tp!368953))))

(assert (=> b!1252501 (= tp!368926 e!797515)))

(declare-fun b!1252662 () Bool)

(assert (=> b!1252662 (= e!797515 tp_is_empty!6443)))

(declare-fun b!1252664 () Bool)

(declare-fun tp!368952 () Bool)

(assert (=> b!1252664 (= e!797515 tp!368952)))

(assert (= (and b!1252501 ((_ is ElementMatch!3461) (regOne!7435 (regOne!7434 r!15719)))) b!1252662))

(assert (= (and b!1252501 ((_ is Concat!5691) (regOne!7435 (regOne!7434 r!15719)))) b!1252663))

(assert (= (and b!1252501 ((_ is Star!3461) (regOne!7435 (regOne!7434 r!15719)))) b!1252664))

(assert (= (and b!1252501 ((_ is Union!3461) (regOne!7435 (regOne!7434 r!15719)))) b!1252665))

(declare-fun b!1252667 () Bool)

(declare-fun e!797516 () Bool)

(declare-fun tp!368955 () Bool)

(declare-fun tp!368959 () Bool)

(assert (=> b!1252667 (= e!797516 (and tp!368955 tp!368959))))

(declare-fun b!1252669 () Bool)

(declare-fun tp!368956 () Bool)

(declare-fun tp!368958 () Bool)

(assert (=> b!1252669 (= e!797516 (and tp!368956 tp!368958))))

(assert (=> b!1252501 (= tp!368928 e!797516)))

(declare-fun b!1252666 () Bool)

(assert (=> b!1252666 (= e!797516 tp_is_empty!6443)))

(declare-fun b!1252668 () Bool)

(declare-fun tp!368957 () Bool)

(assert (=> b!1252668 (= e!797516 tp!368957)))

(assert (= (and b!1252501 ((_ is ElementMatch!3461) (regTwo!7435 (regOne!7434 r!15719)))) b!1252666))

(assert (= (and b!1252501 ((_ is Concat!5691) (regTwo!7435 (regOne!7434 r!15719)))) b!1252667))

(assert (= (and b!1252501 ((_ is Star!3461) (regTwo!7435 (regOne!7434 r!15719)))) b!1252668))

(assert (= (and b!1252501 ((_ is Union!3461) (regTwo!7435 (regOne!7434 r!15719)))) b!1252669))

(declare-fun b!1252671 () Bool)

(declare-fun e!797517 () Bool)

(declare-fun tp!368960 () Bool)

(declare-fun tp!368964 () Bool)

(assert (=> b!1252671 (= e!797517 (and tp!368960 tp!368964))))

(declare-fun b!1252673 () Bool)

(declare-fun tp!368961 () Bool)

(declare-fun tp!368963 () Bool)

(assert (=> b!1252673 (= e!797517 (and tp!368961 tp!368963))))

(assert (=> b!1252517 (= tp!368946 e!797517)))

(declare-fun b!1252670 () Bool)

(assert (=> b!1252670 (= e!797517 tp_is_empty!6443)))

(declare-fun b!1252672 () Bool)

(declare-fun tp!368962 () Bool)

(assert (=> b!1252672 (= e!797517 tp!368962)))

(assert (= (and b!1252517 ((_ is ElementMatch!3461) (regOne!7435 (reg!3790 r!15719)))) b!1252670))

(assert (= (and b!1252517 ((_ is Concat!5691) (regOne!7435 (reg!3790 r!15719)))) b!1252671))

(assert (= (and b!1252517 ((_ is Star!3461) (regOne!7435 (reg!3790 r!15719)))) b!1252672))

(assert (= (and b!1252517 ((_ is Union!3461) (regOne!7435 (reg!3790 r!15719)))) b!1252673))

(declare-fun b!1252675 () Bool)

(declare-fun e!797518 () Bool)

(declare-fun tp!368965 () Bool)

(declare-fun tp!368969 () Bool)

(assert (=> b!1252675 (= e!797518 (and tp!368965 tp!368969))))

(declare-fun b!1252677 () Bool)

(declare-fun tp!368966 () Bool)

(declare-fun tp!368968 () Bool)

(assert (=> b!1252677 (= e!797518 (and tp!368966 tp!368968))))

(assert (=> b!1252517 (= tp!368948 e!797518)))

(declare-fun b!1252674 () Bool)

(assert (=> b!1252674 (= e!797518 tp_is_empty!6443)))

(declare-fun b!1252676 () Bool)

(declare-fun tp!368967 () Bool)

(assert (=> b!1252676 (= e!797518 tp!368967)))

(assert (= (and b!1252517 ((_ is ElementMatch!3461) (regTwo!7435 (reg!3790 r!15719)))) b!1252674))

(assert (= (and b!1252517 ((_ is Concat!5691) (regTwo!7435 (reg!3790 r!15719)))) b!1252675))

(assert (= (and b!1252517 ((_ is Star!3461) (regTwo!7435 (reg!3790 r!15719)))) b!1252676))

(assert (= (and b!1252517 ((_ is Union!3461) (regTwo!7435 (reg!3790 r!15719)))) b!1252677))

(declare-fun b!1252679 () Bool)

(declare-fun e!797519 () Bool)

(declare-fun tp!368970 () Bool)

(declare-fun tp!368974 () Bool)

(assert (=> b!1252679 (= e!797519 (and tp!368970 tp!368974))))

(declare-fun b!1252681 () Bool)

(declare-fun tp!368971 () Bool)

(declare-fun tp!368973 () Bool)

(assert (=> b!1252681 (= e!797519 (and tp!368971 tp!368973))))

(assert (=> b!1252503 (= tp!368930 e!797519)))

(declare-fun b!1252678 () Bool)

(assert (=> b!1252678 (= e!797519 tp_is_empty!6443)))

(declare-fun b!1252680 () Bool)

(declare-fun tp!368972 () Bool)

(assert (=> b!1252680 (= e!797519 tp!368972)))

(assert (= (and b!1252503 ((_ is ElementMatch!3461) (regOne!7434 (regTwo!7434 r!15719)))) b!1252678))

(assert (= (and b!1252503 ((_ is Concat!5691) (regOne!7434 (regTwo!7434 r!15719)))) b!1252679))

(assert (= (and b!1252503 ((_ is Star!3461) (regOne!7434 (regTwo!7434 r!15719)))) b!1252680))

(assert (= (and b!1252503 ((_ is Union!3461) (regOne!7434 (regTwo!7434 r!15719)))) b!1252681))

(declare-fun b!1252683 () Bool)

(declare-fun e!797520 () Bool)

(declare-fun tp!368975 () Bool)

(declare-fun tp!368979 () Bool)

(assert (=> b!1252683 (= e!797520 (and tp!368975 tp!368979))))

(declare-fun b!1252685 () Bool)

(declare-fun tp!368976 () Bool)

(declare-fun tp!368978 () Bool)

(assert (=> b!1252685 (= e!797520 (and tp!368976 tp!368978))))

(assert (=> b!1252503 (= tp!368934 e!797520)))

(declare-fun b!1252682 () Bool)

(assert (=> b!1252682 (= e!797520 tp_is_empty!6443)))

(declare-fun b!1252684 () Bool)

(declare-fun tp!368977 () Bool)

(assert (=> b!1252684 (= e!797520 tp!368977)))

(assert (= (and b!1252503 ((_ is ElementMatch!3461) (regTwo!7434 (regTwo!7434 r!15719)))) b!1252682))

(assert (= (and b!1252503 ((_ is Concat!5691) (regTwo!7434 (regTwo!7434 r!15719)))) b!1252683))

(assert (= (and b!1252503 ((_ is Star!3461) (regTwo!7434 (regTwo!7434 r!15719)))) b!1252684))

(assert (= (and b!1252503 ((_ is Union!3461) (regTwo!7434 (regTwo!7434 r!15719)))) b!1252685))

(declare-fun b!1252687 () Bool)

(declare-fun e!797521 () Bool)

(declare-fun tp!368980 () Bool)

(declare-fun tp!368984 () Bool)

(assert (=> b!1252687 (= e!797521 (and tp!368980 tp!368984))))

(declare-fun b!1252689 () Bool)

(declare-fun tp!368981 () Bool)

(declare-fun tp!368983 () Bool)

(assert (=> b!1252689 (= e!797521 (and tp!368981 tp!368983))))

(assert (=> b!1252508 (= tp!368937 e!797521)))

(declare-fun b!1252686 () Bool)

(assert (=> b!1252686 (= e!797521 tp_is_empty!6443)))

(declare-fun b!1252688 () Bool)

(declare-fun tp!368982 () Bool)

(assert (=> b!1252688 (= e!797521 tp!368982)))

(assert (= (and b!1252508 ((_ is ElementMatch!3461) (reg!3790 (regOne!7435 r!15719)))) b!1252686))

(assert (= (and b!1252508 ((_ is Concat!5691) (reg!3790 (regOne!7435 r!15719)))) b!1252687))

(assert (= (and b!1252508 ((_ is Star!3461) (reg!3790 (regOne!7435 r!15719)))) b!1252688))

(assert (= (and b!1252508 ((_ is Union!3461) (reg!3790 (regOne!7435 r!15719)))) b!1252689))

(declare-fun b!1252691 () Bool)

(declare-fun e!797522 () Bool)

(declare-fun tp!368985 () Bool)

(declare-fun tp!368989 () Bool)

(assert (=> b!1252691 (= e!797522 (and tp!368985 tp!368989))))

(declare-fun b!1252693 () Bool)

(declare-fun tp!368986 () Bool)

(declare-fun tp!368988 () Bool)

(assert (=> b!1252693 (= e!797522 (and tp!368986 tp!368988))))

(assert (=> b!1252499 (= tp!368925 e!797522)))

(declare-fun b!1252690 () Bool)

(assert (=> b!1252690 (= e!797522 tp_is_empty!6443)))

(declare-fun b!1252692 () Bool)

(declare-fun tp!368987 () Bool)

(assert (=> b!1252692 (= e!797522 tp!368987)))

(assert (= (and b!1252499 ((_ is ElementMatch!3461) (regOne!7434 (regOne!7434 r!15719)))) b!1252690))

(assert (= (and b!1252499 ((_ is Concat!5691) (regOne!7434 (regOne!7434 r!15719)))) b!1252691))

(assert (= (and b!1252499 ((_ is Star!3461) (regOne!7434 (regOne!7434 r!15719)))) b!1252692))

(assert (= (and b!1252499 ((_ is Union!3461) (regOne!7434 (regOne!7434 r!15719)))) b!1252693))

(declare-fun b!1252695 () Bool)

(declare-fun e!797523 () Bool)

(declare-fun tp!368990 () Bool)

(declare-fun tp!368994 () Bool)

(assert (=> b!1252695 (= e!797523 (and tp!368990 tp!368994))))

(declare-fun b!1252697 () Bool)

(declare-fun tp!368991 () Bool)

(declare-fun tp!368993 () Bool)

(assert (=> b!1252697 (= e!797523 (and tp!368991 tp!368993))))

(assert (=> b!1252499 (= tp!368929 e!797523)))

(declare-fun b!1252694 () Bool)

(assert (=> b!1252694 (= e!797523 tp_is_empty!6443)))

(declare-fun b!1252696 () Bool)

(declare-fun tp!368992 () Bool)

(assert (=> b!1252696 (= e!797523 tp!368992)))

(assert (= (and b!1252499 ((_ is ElementMatch!3461) (regTwo!7434 (regOne!7434 r!15719)))) b!1252694))

(assert (= (and b!1252499 ((_ is Concat!5691) (regTwo!7434 (regOne!7434 r!15719)))) b!1252695))

(assert (= (and b!1252499 ((_ is Star!3461) (regTwo!7434 (regOne!7434 r!15719)))) b!1252696))

(assert (= (and b!1252499 ((_ is Union!3461) (regTwo!7434 (regOne!7434 r!15719)))) b!1252697))

(declare-fun b!1252699 () Bool)

(declare-fun e!797524 () Bool)

(declare-fun tp!368995 () Bool)

(declare-fun tp!368999 () Bool)

(assert (=> b!1252699 (= e!797524 (and tp!368995 tp!368999))))

(declare-fun b!1252701 () Bool)

(declare-fun tp!368996 () Bool)

(declare-fun tp!368998 () Bool)

(assert (=> b!1252701 (= e!797524 (and tp!368996 tp!368998))))

(assert (=> b!1252513 (= tp!368941 e!797524)))

(declare-fun b!1252698 () Bool)

(assert (=> b!1252698 (= e!797524 tp_is_empty!6443)))

(declare-fun b!1252700 () Bool)

(declare-fun tp!368997 () Bool)

(assert (=> b!1252700 (= e!797524 tp!368997)))

(assert (= (and b!1252513 ((_ is ElementMatch!3461) (regOne!7435 (regTwo!7435 r!15719)))) b!1252698))

(assert (= (and b!1252513 ((_ is Concat!5691) (regOne!7435 (regTwo!7435 r!15719)))) b!1252699))

(assert (= (and b!1252513 ((_ is Star!3461) (regOne!7435 (regTwo!7435 r!15719)))) b!1252700))

(assert (= (and b!1252513 ((_ is Union!3461) (regOne!7435 (regTwo!7435 r!15719)))) b!1252701))

(declare-fun b!1252703 () Bool)

(declare-fun e!797525 () Bool)

(declare-fun tp!369000 () Bool)

(declare-fun tp!369004 () Bool)

(assert (=> b!1252703 (= e!797525 (and tp!369000 tp!369004))))

(declare-fun b!1252705 () Bool)

(declare-fun tp!369001 () Bool)

(declare-fun tp!369003 () Bool)

(assert (=> b!1252705 (= e!797525 (and tp!369001 tp!369003))))

(assert (=> b!1252513 (= tp!368943 e!797525)))

(declare-fun b!1252702 () Bool)

(assert (=> b!1252702 (= e!797525 tp_is_empty!6443)))

(declare-fun b!1252704 () Bool)

(declare-fun tp!369002 () Bool)

(assert (=> b!1252704 (= e!797525 tp!369002)))

(assert (= (and b!1252513 ((_ is ElementMatch!3461) (regTwo!7435 (regTwo!7435 r!15719)))) b!1252702))

(assert (= (and b!1252513 ((_ is Concat!5691) (regTwo!7435 (regTwo!7435 r!15719)))) b!1252703))

(assert (= (and b!1252513 ((_ is Star!3461) (regTwo!7435 (regTwo!7435 r!15719)))) b!1252704))

(assert (= (and b!1252513 ((_ is Union!3461) (regTwo!7435 (regTwo!7435 r!15719)))) b!1252705))

(declare-fun b!1252707 () Bool)

(declare-fun e!797526 () Bool)

(declare-fun tp!369005 () Bool)

(declare-fun tp!369009 () Bool)

(assert (=> b!1252707 (= e!797526 (and tp!369005 tp!369009))))

(declare-fun b!1252709 () Bool)

(declare-fun tp!369006 () Bool)

(declare-fun tp!369008 () Bool)

(assert (=> b!1252709 (= e!797526 (and tp!369006 tp!369008))))

(assert (=> b!1252504 (= tp!368932 e!797526)))

(declare-fun b!1252706 () Bool)

(assert (=> b!1252706 (= e!797526 tp_is_empty!6443)))

(declare-fun b!1252708 () Bool)

(declare-fun tp!369007 () Bool)

(assert (=> b!1252708 (= e!797526 tp!369007)))

(assert (= (and b!1252504 ((_ is ElementMatch!3461) (reg!3790 (regTwo!7434 r!15719)))) b!1252706))

(assert (= (and b!1252504 ((_ is Concat!5691) (reg!3790 (regTwo!7434 r!15719)))) b!1252707))

(assert (= (and b!1252504 ((_ is Star!3461) (reg!3790 (regTwo!7434 r!15719)))) b!1252708))

(assert (= (and b!1252504 ((_ is Union!3461) (reg!3790 (regTwo!7434 r!15719)))) b!1252709))

(declare-fun b!1252711 () Bool)

(declare-fun e!797527 () Bool)

(declare-fun tp!369010 () Bool)

(declare-fun tp!369014 () Bool)

(assert (=> b!1252711 (= e!797527 (and tp!369010 tp!369014))))

(declare-fun b!1252713 () Bool)

(declare-fun tp!369011 () Bool)

(declare-fun tp!369013 () Bool)

(assert (=> b!1252713 (= e!797527 (and tp!369011 tp!369013))))

(assert (=> b!1252509 (= tp!368936 e!797527)))

(declare-fun b!1252710 () Bool)

(assert (=> b!1252710 (= e!797527 tp_is_empty!6443)))

(declare-fun b!1252712 () Bool)

(declare-fun tp!369012 () Bool)

(assert (=> b!1252712 (= e!797527 tp!369012)))

(assert (= (and b!1252509 ((_ is ElementMatch!3461) (regOne!7435 (regOne!7435 r!15719)))) b!1252710))

(assert (= (and b!1252509 ((_ is Concat!5691) (regOne!7435 (regOne!7435 r!15719)))) b!1252711))

(assert (= (and b!1252509 ((_ is Star!3461) (regOne!7435 (regOne!7435 r!15719)))) b!1252712))

(assert (= (and b!1252509 ((_ is Union!3461) (regOne!7435 (regOne!7435 r!15719)))) b!1252713))

(declare-fun b!1252715 () Bool)

(declare-fun e!797528 () Bool)

(declare-fun tp!369015 () Bool)

(declare-fun tp!369019 () Bool)

(assert (=> b!1252715 (= e!797528 (and tp!369015 tp!369019))))

(declare-fun b!1252717 () Bool)

(declare-fun tp!369016 () Bool)

(declare-fun tp!369018 () Bool)

(assert (=> b!1252717 (= e!797528 (and tp!369016 tp!369018))))

(assert (=> b!1252509 (= tp!368938 e!797528)))

(declare-fun b!1252714 () Bool)

(assert (=> b!1252714 (= e!797528 tp_is_empty!6443)))

(declare-fun b!1252716 () Bool)

(declare-fun tp!369017 () Bool)

(assert (=> b!1252716 (= e!797528 tp!369017)))

(assert (= (and b!1252509 ((_ is ElementMatch!3461) (regTwo!7435 (regOne!7435 r!15719)))) b!1252714))

(assert (= (and b!1252509 ((_ is Concat!5691) (regTwo!7435 (regOne!7435 r!15719)))) b!1252715))

(assert (= (and b!1252509 ((_ is Star!3461) (regTwo!7435 (regOne!7435 r!15719)))) b!1252716))

(assert (= (and b!1252509 ((_ is Union!3461) (regTwo!7435 (regOne!7435 r!15719)))) b!1252717))

(declare-fun b!1252719 () Bool)

(declare-fun e!797529 () Bool)

(declare-fun tp!369020 () Bool)

(declare-fun tp!369024 () Bool)

(assert (=> b!1252719 (= e!797529 (and tp!369020 tp!369024))))

(declare-fun b!1252721 () Bool)

(declare-fun tp!369021 () Bool)

(declare-fun tp!369023 () Bool)

(assert (=> b!1252721 (= e!797529 (and tp!369021 tp!369023))))

(assert (=> b!1252500 (= tp!368927 e!797529)))

(declare-fun b!1252718 () Bool)

(assert (=> b!1252718 (= e!797529 tp_is_empty!6443)))

(declare-fun b!1252720 () Bool)

(declare-fun tp!369022 () Bool)

(assert (=> b!1252720 (= e!797529 tp!369022)))

(assert (= (and b!1252500 ((_ is ElementMatch!3461) (reg!3790 (regOne!7434 r!15719)))) b!1252718))

(assert (= (and b!1252500 ((_ is Concat!5691) (reg!3790 (regOne!7434 r!15719)))) b!1252719))

(assert (= (and b!1252500 ((_ is Star!3461) (reg!3790 (regOne!7434 r!15719)))) b!1252720))

(assert (= (and b!1252500 ((_ is Union!3461) (reg!3790 (regOne!7434 r!15719)))) b!1252721))

(declare-fun b!1252723 () Bool)

(declare-fun e!797530 () Bool)

(declare-fun tp!369025 () Bool)

(declare-fun tp!369029 () Bool)

(assert (=> b!1252723 (= e!797530 (and tp!369025 tp!369029))))

(declare-fun b!1252725 () Bool)

(declare-fun tp!369026 () Bool)

(declare-fun tp!369028 () Bool)

(assert (=> b!1252725 (= e!797530 (and tp!369026 tp!369028))))

(assert (=> b!1252505 (= tp!368931 e!797530)))

(declare-fun b!1252722 () Bool)

(assert (=> b!1252722 (= e!797530 tp_is_empty!6443)))

(declare-fun b!1252724 () Bool)

(declare-fun tp!369027 () Bool)

(assert (=> b!1252724 (= e!797530 tp!369027)))

(assert (= (and b!1252505 ((_ is ElementMatch!3461) (regOne!7435 (regTwo!7434 r!15719)))) b!1252722))

(assert (= (and b!1252505 ((_ is Concat!5691) (regOne!7435 (regTwo!7434 r!15719)))) b!1252723))

(assert (= (and b!1252505 ((_ is Star!3461) (regOne!7435 (regTwo!7434 r!15719)))) b!1252724))

(assert (= (and b!1252505 ((_ is Union!3461) (regOne!7435 (regTwo!7434 r!15719)))) b!1252725))

(declare-fun b!1252727 () Bool)

(declare-fun e!797531 () Bool)

(declare-fun tp!369030 () Bool)

(declare-fun tp!369034 () Bool)

(assert (=> b!1252727 (= e!797531 (and tp!369030 tp!369034))))

(declare-fun b!1252729 () Bool)

(declare-fun tp!369031 () Bool)

(declare-fun tp!369033 () Bool)

(assert (=> b!1252729 (= e!797531 (and tp!369031 tp!369033))))

(assert (=> b!1252505 (= tp!368933 e!797531)))

(declare-fun b!1252726 () Bool)

(assert (=> b!1252726 (= e!797531 tp_is_empty!6443)))

(declare-fun b!1252728 () Bool)

(declare-fun tp!369032 () Bool)

(assert (=> b!1252728 (= e!797531 tp!369032)))

(assert (= (and b!1252505 ((_ is ElementMatch!3461) (regTwo!7435 (regTwo!7434 r!15719)))) b!1252726))

(assert (= (and b!1252505 ((_ is Concat!5691) (regTwo!7435 (regTwo!7434 r!15719)))) b!1252727))

(assert (= (and b!1252505 ((_ is Star!3461) (regTwo!7435 (regTwo!7434 r!15719)))) b!1252728))

(assert (= (and b!1252505 ((_ is Union!3461) (regTwo!7435 (regTwo!7434 r!15719)))) b!1252729))

(declare-fun b!1252731 () Bool)

(declare-fun e!797532 () Bool)

(declare-fun tp!369035 () Bool)

(declare-fun tp!369039 () Bool)

(assert (=> b!1252731 (= e!797532 (and tp!369035 tp!369039))))

(declare-fun b!1252733 () Bool)

(declare-fun tp!369036 () Bool)

(declare-fun tp!369038 () Bool)

(assert (=> b!1252733 (= e!797532 (and tp!369036 tp!369038))))

(assert (=> b!1252515 (= tp!368945 e!797532)))

(declare-fun b!1252730 () Bool)

(assert (=> b!1252730 (= e!797532 tp_is_empty!6443)))

(declare-fun b!1252732 () Bool)

(declare-fun tp!369037 () Bool)

(assert (=> b!1252732 (= e!797532 tp!369037)))

(assert (= (and b!1252515 ((_ is ElementMatch!3461) (regOne!7434 (reg!3790 r!15719)))) b!1252730))

(assert (= (and b!1252515 ((_ is Concat!5691) (regOne!7434 (reg!3790 r!15719)))) b!1252731))

(assert (= (and b!1252515 ((_ is Star!3461) (regOne!7434 (reg!3790 r!15719)))) b!1252732))

(assert (= (and b!1252515 ((_ is Union!3461) (regOne!7434 (reg!3790 r!15719)))) b!1252733))

(declare-fun b!1252735 () Bool)

(declare-fun e!797533 () Bool)

(declare-fun tp!369040 () Bool)

(declare-fun tp!369044 () Bool)

(assert (=> b!1252735 (= e!797533 (and tp!369040 tp!369044))))

(declare-fun b!1252737 () Bool)

(declare-fun tp!369041 () Bool)

(declare-fun tp!369043 () Bool)

(assert (=> b!1252737 (= e!797533 (and tp!369041 tp!369043))))

(assert (=> b!1252515 (= tp!368949 e!797533)))

(declare-fun b!1252734 () Bool)

(assert (=> b!1252734 (= e!797533 tp_is_empty!6443)))

(declare-fun b!1252736 () Bool)

(declare-fun tp!369042 () Bool)

(assert (=> b!1252736 (= e!797533 tp!369042)))

(assert (= (and b!1252515 ((_ is ElementMatch!3461) (regTwo!7434 (reg!3790 r!15719)))) b!1252734))

(assert (= (and b!1252515 ((_ is Concat!5691) (regTwo!7434 (reg!3790 r!15719)))) b!1252735))

(assert (= (and b!1252515 ((_ is Star!3461) (regTwo!7434 (reg!3790 r!15719)))) b!1252736))

(assert (= (and b!1252515 ((_ is Union!3461) (regTwo!7434 (reg!3790 r!15719)))) b!1252737))

(declare-fun b!1252739 () Bool)

(declare-fun e!797534 () Bool)

(declare-fun tp!369045 () Bool)

(declare-fun tp!369049 () Bool)

(assert (=> b!1252739 (= e!797534 (and tp!369045 tp!369049))))

(declare-fun b!1252741 () Bool)

(declare-fun tp!369046 () Bool)

(declare-fun tp!369048 () Bool)

(assert (=> b!1252741 (= e!797534 (and tp!369046 tp!369048))))

(assert (=> b!1252511 (= tp!368940 e!797534)))

(declare-fun b!1252738 () Bool)

(assert (=> b!1252738 (= e!797534 tp_is_empty!6443)))

(declare-fun b!1252740 () Bool)

(declare-fun tp!369047 () Bool)

(assert (=> b!1252740 (= e!797534 tp!369047)))

(assert (= (and b!1252511 ((_ is ElementMatch!3461) (regOne!7434 (regTwo!7435 r!15719)))) b!1252738))

(assert (= (and b!1252511 ((_ is Concat!5691) (regOne!7434 (regTwo!7435 r!15719)))) b!1252739))

(assert (= (and b!1252511 ((_ is Star!3461) (regOne!7434 (regTwo!7435 r!15719)))) b!1252740))

(assert (= (and b!1252511 ((_ is Union!3461) (regOne!7434 (regTwo!7435 r!15719)))) b!1252741))

(declare-fun b!1252743 () Bool)

(declare-fun e!797535 () Bool)

(declare-fun tp!369050 () Bool)

(declare-fun tp!369054 () Bool)

(assert (=> b!1252743 (= e!797535 (and tp!369050 tp!369054))))

(declare-fun b!1252745 () Bool)

(declare-fun tp!369051 () Bool)

(declare-fun tp!369053 () Bool)

(assert (=> b!1252745 (= e!797535 (and tp!369051 tp!369053))))

(assert (=> b!1252511 (= tp!368944 e!797535)))

(declare-fun b!1252742 () Bool)

(assert (=> b!1252742 (= e!797535 tp_is_empty!6443)))

(declare-fun b!1252744 () Bool)

(declare-fun tp!369052 () Bool)

(assert (=> b!1252744 (= e!797535 tp!369052)))

(assert (= (and b!1252511 ((_ is ElementMatch!3461) (regTwo!7434 (regTwo!7435 r!15719)))) b!1252742))

(assert (= (and b!1252511 ((_ is Concat!5691) (regTwo!7434 (regTwo!7435 r!15719)))) b!1252743))

(assert (= (and b!1252511 ((_ is Star!3461) (regTwo!7434 (regTwo!7435 r!15719)))) b!1252744))

(assert (= (and b!1252511 ((_ is Union!3461) (regTwo!7434 (regTwo!7435 r!15719)))) b!1252745))

(declare-fun b!1252747 () Bool)

(declare-fun e!797536 () Bool)

(declare-fun tp!369055 () Bool)

(declare-fun tp!369059 () Bool)

(assert (=> b!1252747 (= e!797536 (and tp!369055 tp!369059))))

(declare-fun b!1252749 () Bool)

(declare-fun tp!369056 () Bool)

(declare-fun tp!369058 () Bool)

(assert (=> b!1252749 (= e!797536 (and tp!369056 tp!369058))))

(assert (=> b!1252516 (= tp!368947 e!797536)))

(declare-fun b!1252746 () Bool)

(assert (=> b!1252746 (= e!797536 tp_is_empty!6443)))

(declare-fun b!1252748 () Bool)

(declare-fun tp!369057 () Bool)

(assert (=> b!1252748 (= e!797536 tp!369057)))

(assert (= (and b!1252516 ((_ is ElementMatch!3461) (reg!3790 (reg!3790 r!15719)))) b!1252746))

(assert (= (and b!1252516 ((_ is Concat!5691) (reg!3790 (reg!3790 r!15719)))) b!1252747))

(assert (= (and b!1252516 ((_ is Star!3461) (reg!3790 (reg!3790 r!15719)))) b!1252748))

(assert (= (and b!1252516 ((_ is Union!3461) (reg!3790 (reg!3790 r!15719)))) b!1252749))

(declare-fun b!1252751 () Bool)

(declare-fun e!797537 () Bool)

(declare-fun tp!369060 () Bool)

(declare-fun tp!369064 () Bool)

(assert (=> b!1252751 (= e!797537 (and tp!369060 tp!369064))))

(declare-fun b!1252753 () Bool)

(declare-fun tp!369061 () Bool)

(declare-fun tp!369063 () Bool)

(assert (=> b!1252753 (= e!797537 (and tp!369061 tp!369063))))

(assert (=> b!1252507 (= tp!368935 e!797537)))

(declare-fun b!1252750 () Bool)

(assert (=> b!1252750 (= e!797537 tp_is_empty!6443)))

(declare-fun b!1252752 () Bool)

(declare-fun tp!369062 () Bool)

(assert (=> b!1252752 (= e!797537 tp!369062)))

(assert (= (and b!1252507 ((_ is ElementMatch!3461) (regOne!7434 (regOne!7435 r!15719)))) b!1252750))

(assert (= (and b!1252507 ((_ is Concat!5691) (regOne!7434 (regOne!7435 r!15719)))) b!1252751))

(assert (= (and b!1252507 ((_ is Star!3461) (regOne!7434 (regOne!7435 r!15719)))) b!1252752))

(assert (= (and b!1252507 ((_ is Union!3461) (regOne!7434 (regOne!7435 r!15719)))) b!1252753))

(declare-fun b!1252755 () Bool)

(declare-fun e!797538 () Bool)

(declare-fun tp!369065 () Bool)

(declare-fun tp!369069 () Bool)

(assert (=> b!1252755 (= e!797538 (and tp!369065 tp!369069))))

(declare-fun b!1252757 () Bool)

(declare-fun tp!369066 () Bool)

(declare-fun tp!369068 () Bool)

(assert (=> b!1252757 (= e!797538 (and tp!369066 tp!369068))))

(assert (=> b!1252507 (= tp!368939 e!797538)))

(declare-fun b!1252754 () Bool)

(assert (=> b!1252754 (= e!797538 tp_is_empty!6443)))

(declare-fun b!1252756 () Bool)

(declare-fun tp!369067 () Bool)

(assert (=> b!1252756 (= e!797538 tp!369067)))

(assert (= (and b!1252507 ((_ is ElementMatch!3461) (regTwo!7434 (regOne!7435 r!15719)))) b!1252754))

(assert (= (and b!1252507 ((_ is Concat!5691) (regTwo!7434 (regOne!7435 r!15719)))) b!1252755))

(assert (= (and b!1252507 ((_ is Star!3461) (regTwo!7434 (regOne!7435 r!15719)))) b!1252756))

(assert (= (and b!1252507 ((_ is Union!3461) (regTwo!7434 (regOne!7435 r!15719)))) b!1252757))

(declare-fun b!1252759 () Bool)

(declare-fun e!797539 () Bool)

(declare-fun tp!369070 () Bool)

(declare-fun tp!369074 () Bool)

(assert (=> b!1252759 (= e!797539 (and tp!369070 tp!369074))))

(declare-fun b!1252761 () Bool)

(declare-fun tp!369071 () Bool)

(declare-fun tp!369073 () Bool)

(assert (=> b!1252761 (= e!797539 (and tp!369071 tp!369073))))

(assert (=> b!1252512 (= tp!368942 e!797539)))

(declare-fun b!1252758 () Bool)

(assert (=> b!1252758 (= e!797539 tp_is_empty!6443)))

(declare-fun b!1252760 () Bool)

(declare-fun tp!369072 () Bool)

(assert (=> b!1252760 (= e!797539 tp!369072)))

(assert (= (and b!1252512 ((_ is ElementMatch!3461) (reg!3790 (regTwo!7435 r!15719)))) b!1252758))

(assert (= (and b!1252512 ((_ is Concat!5691) (reg!3790 (regTwo!7435 r!15719)))) b!1252759))

(assert (= (and b!1252512 ((_ is Star!3461) (reg!3790 (regTwo!7435 r!15719)))) b!1252760))

(assert (= (and b!1252512 ((_ is Union!3461) (reg!3790 (regTwo!7435 r!15719)))) b!1252761))

(check-sat (not b!1252717) (not bm!87442) (not d!354514) (not b!1252675) (not b!1252720) (not b!1252671) (not b!1252723) (not b!1252736) (not b!1252739) (not b!1252695) (not b!1252748) (not b!1252735) (not bm!87416) (not b!1252692) (not b!1252700) (not b!1252566) (not b!1252697) (not b!1252743) (not b!1252737) (not bm!87431) (not bm!87433) (not bm!87426) (not bm!87437) (not b!1252759) (not b!1252716) (not b!1252668) (not b!1252683) (not b!1252681) (not b!1252760) (not bm!87413) (not d!354498) (not b!1252699) (not b!1252719) (not b!1252599) (not b!1252584) (not b!1252669) (not b!1252667) (not b!1252665) (not b!1252733) (not b!1252685) (not b!1252751) (not b!1252696) (not b!1252676) (not bm!87430) (not b!1252687) (not d!354504) (not b!1252704) (not b!1252701) (not b!1252721) (not bm!87436) (not b!1252711) (not b!1252725) (not bm!87434) (not b!1252622) (not b!1252753) (not b!1252637) (not b!1252689) (not b!1252740) (not b!1252664) tp_is_empty!6443 (not d!354494) (not b!1252673) (not bm!87418) (not bm!87461) (not d!354502) (not b!1252728) (not bm!87449) (not bm!87427) (not b!1252653) (not b!1252745) (not bm!87457) (not bm!87451) (not d!354526) (not d!354520) (not b!1252731) (not b!1252708) (not b!1252732) (not b!1252688) (not bm!87421) (not b!1252752) (not b!1252755) (not bm!87448) (not b!1252761) (not bm!87444) (not b!1252707) (not b!1252575) (not bm!87415) (not b!1252749) (not b!1252727) (not bm!87462) (not b!1252617) (not b!1252648) (not b!1252518) (not b!1252693) (not b!1252663) (not b!1252715) (not b!1252757) (not b!1252672) (not bm!87441) (not d!354524) (not b!1252712) (not bm!87464) (not bm!87428) (not b!1252679) (not b!1252527) (not b!1252713) (not b!1252709) (not bm!87419) (not b!1252684) (not bm!87452) (not b!1252677) (not d!354518) (not b!1252703) (not b!1252724) (not bm!87443) (not b!1252741) (not b!1252536) (not b!1252680) (not b!1252756) (not b!1252729) (not b!1252705) (not bm!87456) (not b!1252744) (not b!1252747) (not d!354496) (not b!1252691))
(check-sat)
