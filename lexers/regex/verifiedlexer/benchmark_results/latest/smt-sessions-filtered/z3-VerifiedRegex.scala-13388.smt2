; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725258 () Bool)

(assert start!725258)

(declare-fun b!7492277 () Bool)

(declare-fun e!4467630 () Bool)

(declare-fun tp!2174696 () Bool)

(declare-fun tp!2174693 () Bool)

(assert (=> b!7492277 (= e!4467630 (and tp!2174696 tp!2174693))))

(declare-fun b!7492278 () Bool)

(declare-fun e!4467631 () Bool)

(declare-fun tp!2174692 () Bool)

(assert (=> b!7492278 (= e!4467631 tp!2174692)))

(declare-fun b!7492279 () Bool)

(declare-fun e!4467628 () Bool)

(declare-fun tp_is_empty!49567 () Bool)

(assert (=> b!7492279 (= e!4467628 tp_is_empty!49567)))

(declare-fun b!7492280 () Bool)

(declare-fun res!3005418 () Bool)

(declare-fun e!4467629 () Bool)

(assert (=> b!7492280 (=> (not res!3005418) (not e!4467629))))

(declare-datatypes ((C!39552 0))(
  ( (C!39553 (val!30174 Int)) )
))
(declare-datatypes ((Regex!19639 0))(
  ( (ElementMatch!19639 (c!1383404 C!39552)) (Concat!28484 (regOne!39790 Regex!19639) (regTwo!39790 Regex!19639)) (EmptyExpr!19639) (Star!19639 (reg!19968 Regex!19639)) (EmptyLang!19639) (Union!19639 (regOne!39791 Regex!19639) (regTwo!39791 Regex!19639)) )
))
(declare-fun r2!5783 () Regex!19639)

(declare-fun validRegex!10153 (Regex!19639) Bool)

(assert (=> b!7492280 (= res!3005418 (validRegex!10153 r2!5783))))

(declare-fun b!7492281 () Bool)

(declare-fun tp!2174694 () Bool)

(declare-fun tp!2174700 () Bool)

(assert (=> b!7492281 (= e!4467628 (and tp!2174694 tp!2174700))))

(declare-fun b!7492282 () Bool)

(declare-fun tp!2174701 () Bool)

(declare-fun tp!2174697 () Bool)

(assert (=> b!7492282 (= e!4467630 (and tp!2174701 tp!2174697))))

(declare-fun res!3005417 () Bool)

(assert (=> start!725258 (=> (not res!3005417) (not e!4467629))))

(declare-fun r1!5845 () Regex!19639)

(assert (=> start!725258 (= res!3005417 (validRegex!10153 r1!5845))))

(assert (=> start!725258 e!4467629))

(assert (=> start!725258 e!4467631))

(assert (=> start!725258 e!4467630))

(assert (=> start!725258 e!4467628))

(declare-fun e!4467632 () Bool)

(assert (=> start!725258 e!4467632))

(declare-fun b!7492283 () Bool)

(declare-fun tp!2174689 () Bool)

(assert (=> b!7492283 (= e!4467628 tp!2174689)))

(declare-fun b!7492284 () Bool)

(declare-fun e!4467627 () Bool)

(assert (=> b!7492284 (= e!4467629 (not e!4467627))))

(declare-fun res!3005420 () Bool)

(assert (=> b!7492284 (=> res!3005420 e!4467627)))

(declare-fun lt!2629920 () Bool)

(assert (=> b!7492284 (= res!3005420 lt!2629920)))

(declare-fun lt!2629921 () Regex!19639)

(declare-datatypes ((List!72353 0))(
  ( (Nil!72229) (Cons!72229 (h!78677 C!39552) (t!386922 List!72353)) )
))
(declare-fun s!13591 () List!72353)

(declare-fun matchR!9401 (Regex!19639 List!72353) Bool)

(declare-fun matchRSpec!4316 (Regex!19639 List!72353) Bool)

(assert (=> b!7492284 (= (matchR!9401 lt!2629921 s!13591) (matchRSpec!4316 lt!2629921 s!13591))))

(declare-datatypes ((Unit!166109 0))(
  ( (Unit!166110) )
))
(declare-fun lt!2629923 () Unit!166109)

(declare-fun mainMatchTheorem!4310 (Regex!19639 List!72353) Unit!166109)

(assert (=> b!7492284 (= lt!2629923 (mainMatchTheorem!4310 lt!2629921 s!13591))))

(declare-fun lt!2629919 () Regex!19639)

(assert (=> b!7492284 (= lt!2629920 (matchRSpec!4316 lt!2629919 s!13591))))

(assert (=> b!7492284 (= lt!2629920 (matchR!9401 lt!2629919 s!13591))))

(declare-fun lt!2629918 () Unit!166109)

(assert (=> b!7492284 (= lt!2629918 (mainMatchTheorem!4310 lt!2629919 s!13591))))

(declare-fun rTail!78 () Regex!19639)

(assert (=> b!7492284 (= lt!2629921 (Union!19639 (Concat!28484 r1!5845 rTail!78) (Concat!28484 r2!5783 rTail!78)))))

(declare-fun lt!2629922 () Regex!19639)

(assert (=> b!7492284 (= lt!2629919 (Concat!28484 lt!2629922 rTail!78))))

(assert (=> b!7492284 (= lt!2629922 (Union!19639 r1!5845 r2!5783))))

(declare-fun b!7492285 () Bool)

(declare-fun res!3005419 () Bool)

(assert (=> b!7492285 (=> (not res!3005419) (not e!4467629))))

(assert (=> b!7492285 (= res!3005419 (validRegex!10153 rTail!78))))

(declare-fun b!7492286 () Bool)

(declare-fun tp!2174691 () Bool)

(declare-fun tp!2174699 () Bool)

(assert (=> b!7492286 (= e!4467631 (and tp!2174691 tp!2174699))))

(declare-fun b!7492287 () Bool)

(declare-fun tp!2174687 () Bool)

(declare-fun tp!2174686 () Bool)

(assert (=> b!7492287 (= e!4467628 (and tp!2174687 tp!2174686))))

(declare-fun b!7492288 () Bool)

(assert (=> b!7492288 (= e!4467630 tp_is_empty!49567)))

(declare-fun b!7492289 () Bool)

(declare-fun tp!2174698 () Bool)

(declare-fun tp!2174690 () Bool)

(assert (=> b!7492289 (= e!4467631 (and tp!2174698 tp!2174690))))

(declare-fun b!7492290 () Bool)

(assert (=> b!7492290 (= e!4467631 tp_is_empty!49567)))

(declare-fun b!7492291 () Bool)

(declare-fun tp!2174688 () Bool)

(assert (=> b!7492291 (= e!4467630 tp!2174688)))

(declare-fun b!7492292 () Bool)

(declare-fun tp!2174695 () Bool)

(assert (=> b!7492292 (= e!4467632 (and tp_is_empty!49567 tp!2174695))))

(declare-fun b!7492293 () Bool)

(assert (=> b!7492293 (= e!4467627 (validRegex!10153 lt!2629922))))

(assert (= (and start!725258 res!3005417) b!7492280))

(assert (= (and b!7492280 res!3005418) b!7492285))

(assert (= (and b!7492285 res!3005419) b!7492284))

(assert (= (and b!7492284 (not res!3005420)) b!7492293))

(get-info :version)

(assert (= (and start!725258 ((_ is ElementMatch!19639) r1!5845)) b!7492290))

(assert (= (and start!725258 ((_ is Concat!28484) r1!5845)) b!7492289))

(assert (= (and start!725258 ((_ is Star!19639) r1!5845)) b!7492278))

(assert (= (and start!725258 ((_ is Union!19639) r1!5845)) b!7492286))

(assert (= (and start!725258 ((_ is ElementMatch!19639) r2!5783)) b!7492288))

(assert (= (and start!725258 ((_ is Concat!28484) r2!5783)) b!7492282))

(assert (= (and start!725258 ((_ is Star!19639) r2!5783)) b!7492291))

(assert (= (and start!725258 ((_ is Union!19639) r2!5783)) b!7492277))

(assert (= (and start!725258 ((_ is ElementMatch!19639) rTail!78)) b!7492279))

(assert (= (and start!725258 ((_ is Concat!28484) rTail!78)) b!7492281))

(assert (= (and start!725258 ((_ is Star!19639) rTail!78)) b!7492283))

(assert (= (and start!725258 ((_ is Union!19639) rTail!78)) b!7492287))

(assert (= (and start!725258 ((_ is Cons!72229) s!13591)) b!7492292))

(declare-fun m!8078216 () Bool)

(assert (=> start!725258 m!8078216))

(declare-fun m!8078218 () Bool)

(assert (=> b!7492285 m!8078218))

(declare-fun m!8078220 () Bool)

(assert (=> b!7492284 m!8078220))

(declare-fun m!8078222 () Bool)

(assert (=> b!7492284 m!8078222))

(declare-fun m!8078224 () Bool)

(assert (=> b!7492284 m!8078224))

(declare-fun m!8078226 () Bool)

(assert (=> b!7492284 m!8078226))

(declare-fun m!8078228 () Bool)

(assert (=> b!7492284 m!8078228))

(declare-fun m!8078230 () Bool)

(assert (=> b!7492284 m!8078230))

(declare-fun m!8078232 () Bool)

(assert (=> b!7492280 m!8078232))

(declare-fun m!8078234 () Bool)

(assert (=> b!7492293 m!8078234))

(check-sat (not b!7492286) (not b!7492281) (not b!7492285) (not b!7492282) (not b!7492291) (not start!725258) (not b!7492293) (not b!7492292) (not b!7492289) (not b!7492284) tp_is_empty!49567 (not b!7492287) (not b!7492278) (not b!7492283) (not b!7492277) (not b!7492280))
(check-sat)
(get-model)

(declare-fun b!7492352 () Bool)

(assert (=> b!7492352 true))

(assert (=> b!7492352 true))

(declare-fun bs!1935392 () Bool)

(declare-fun b!7492350 () Bool)

(assert (= bs!1935392 (and b!7492350 b!7492352)))

(declare-fun lambda!464229 () Int)

(declare-fun lambda!464228 () Int)

(assert (=> bs!1935392 (not (= lambda!464229 lambda!464228))))

(assert (=> b!7492350 true))

(assert (=> b!7492350 true))

(declare-fun b!7492348 () Bool)

(declare-fun e!4467667 () Bool)

(assert (=> b!7492348 (= e!4467667 (matchRSpec!4316 (regTwo!39791 lt!2629921) s!13591))))

(declare-fun e!4467670 () Bool)

(declare-fun call!687795 () Bool)

(assert (=> b!7492350 (= e!4467670 call!687795)))

(declare-fun b!7492351 () Bool)

(declare-fun e!4467668 () Bool)

(declare-fun call!687796 () Bool)

(assert (=> b!7492351 (= e!4467668 call!687796)))

(declare-fun e!4467669 () Bool)

(assert (=> b!7492352 (= e!4467669 call!687795)))

(declare-fun b!7492353 () Bool)

(declare-fun e!4467665 () Bool)

(assert (=> b!7492353 (= e!4467665 e!4467670)))

(declare-fun c!1383423 () Bool)

(assert (=> b!7492353 (= c!1383423 ((_ is Star!19639) lt!2629921))))

(declare-fun b!7492354 () Bool)

(assert (=> b!7492354 (= e!4467665 e!4467667)))

(declare-fun res!3005445 () Bool)

(assert (=> b!7492354 (= res!3005445 (matchRSpec!4316 (regOne!39791 lt!2629921) s!13591))))

(assert (=> b!7492354 (=> res!3005445 e!4467667)))

(declare-fun bm!687790 () Bool)

(declare-fun Exists!4255 (Int) Bool)

(assert (=> bm!687790 (= call!687795 (Exists!4255 (ite c!1383423 lambda!464228 lambda!464229)))))

(declare-fun b!7492349 () Bool)

(declare-fun res!3005444 () Bool)

(assert (=> b!7492349 (=> res!3005444 e!4467669)))

(assert (=> b!7492349 (= res!3005444 call!687796)))

(assert (=> b!7492349 (= e!4467670 e!4467669)))

(declare-fun d!2301405 () Bool)

(declare-fun c!1383424 () Bool)

(assert (=> d!2301405 (= c!1383424 ((_ is EmptyExpr!19639) lt!2629921))))

(assert (=> d!2301405 (= (matchRSpec!4316 lt!2629921 s!13591) e!4467668)))

(declare-fun b!7492355 () Bool)

(declare-fun e!4467666 () Bool)

(assert (=> b!7492355 (= e!4467666 (= s!13591 (Cons!72229 (c!1383404 lt!2629921) Nil!72229)))))

(declare-fun b!7492356 () Bool)

(declare-fun c!1383421 () Bool)

(assert (=> b!7492356 (= c!1383421 ((_ is ElementMatch!19639) lt!2629921))))

(declare-fun e!4467671 () Bool)

(assert (=> b!7492356 (= e!4467671 e!4467666)))

(declare-fun b!7492357 () Bool)

(assert (=> b!7492357 (= e!4467668 e!4467671)))

(declare-fun res!3005443 () Bool)

(assert (=> b!7492357 (= res!3005443 (not ((_ is EmptyLang!19639) lt!2629921)))))

(assert (=> b!7492357 (=> (not res!3005443) (not e!4467671))))

(declare-fun b!7492358 () Bool)

(declare-fun c!1383422 () Bool)

(assert (=> b!7492358 (= c!1383422 ((_ is Union!19639) lt!2629921))))

(assert (=> b!7492358 (= e!4467666 e!4467665)))

(declare-fun bm!687791 () Bool)

(declare-fun isEmpty!41255 (List!72353) Bool)

(assert (=> bm!687791 (= call!687796 (isEmpty!41255 s!13591))))

(assert (= (and d!2301405 c!1383424) b!7492351))

(assert (= (and d!2301405 (not c!1383424)) b!7492357))

(assert (= (and b!7492357 res!3005443) b!7492356))

(assert (= (and b!7492356 c!1383421) b!7492355))

(assert (= (and b!7492356 (not c!1383421)) b!7492358))

(assert (= (and b!7492358 c!1383422) b!7492354))

(assert (= (and b!7492358 (not c!1383422)) b!7492353))

(assert (= (and b!7492354 (not res!3005445)) b!7492348))

(assert (= (and b!7492353 c!1383423) b!7492349))

(assert (= (and b!7492353 (not c!1383423)) b!7492350))

(assert (= (and b!7492349 (not res!3005444)) b!7492352))

(assert (= (or b!7492352 b!7492350) bm!687790))

(assert (= (or b!7492351 b!7492349) bm!687791))

(declare-fun m!8078236 () Bool)

(assert (=> b!7492348 m!8078236))

(declare-fun m!8078238 () Bool)

(assert (=> b!7492354 m!8078238))

(declare-fun m!8078240 () Bool)

(assert (=> bm!687790 m!8078240))

(declare-fun m!8078242 () Bool)

(assert (=> bm!687791 m!8078242))

(assert (=> b!7492284 d!2301405))

(declare-fun d!2301409 () Bool)

(assert (=> d!2301409 (= (matchR!9401 lt!2629921 s!13591) (matchRSpec!4316 lt!2629921 s!13591))))

(declare-fun lt!2629926 () Unit!166109)

(declare-fun choose!57912 (Regex!19639 List!72353) Unit!166109)

(assert (=> d!2301409 (= lt!2629926 (choose!57912 lt!2629921 s!13591))))

(assert (=> d!2301409 (validRegex!10153 lt!2629921)))

(assert (=> d!2301409 (= (mainMatchTheorem!4310 lt!2629921 s!13591) lt!2629926)))

(declare-fun bs!1935393 () Bool)

(assert (= bs!1935393 d!2301409))

(assert (=> bs!1935393 m!8078222))

(assert (=> bs!1935393 m!8078220))

(declare-fun m!8078244 () Bool)

(assert (=> bs!1935393 m!8078244))

(declare-fun m!8078246 () Bool)

(assert (=> bs!1935393 m!8078246))

(assert (=> b!7492284 d!2301409))

(declare-fun bs!1935394 () Bool)

(declare-fun b!7492367 () Bool)

(assert (= bs!1935394 (and b!7492367 b!7492352)))

(declare-fun lambda!464230 () Int)

(assert (=> bs!1935394 (= (and (= (reg!19968 lt!2629919) (reg!19968 lt!2629921)) (= lt!2629919 lt!2629921)) (= lambda!464230 lambda!464228))))

(declare-fun bs!1935395 () Bool)

(assert (= bs!1935395 (and b!7492367 b!7492350)))

(assert (=> bs!1935395 (not (= lambda!464230 lambda!464229))))

(assert (=> b!7492367 true))

(assert (=> b!7492367 true))

(declare-fun bs!1935396 () Bool)

(declare-fun b!7492365 () Bool)

(assert (= bs!1935396 (and b!7492365 b!7492352)))

(declare-fun lambda!464231 () Int)

(assert (=> bs!1935396 (not (= lambda!464231 lambda!464228))))

(declare-fun bs!1935397 () Bool)

(assert (= bs!1935397 (and b!7492365 b!7492350)))

(assert (=> bs!1935397 (= (and (= (regOne!39790 lt!2629919) (regOne!39790 lt!2629921)) (= (regTwo!39790 lt!2629919) (regTwo!39790 lt!2629921))) (= lambda!464231 lambda!464229))))

(declare-fun bs!1935398 () Bool)

(assert (= bs!1935398 (and b!7492365 b!7492367)))

(assert (=> bs!1935398 (not (= lambda!464231 lambda!464230))))

(assert (=> b!7492365 true))

(assert (=> b!7492365 true))

(declare-fun b!7492363 () Bool)

(declare-fun e!4467674 () Bool)

(assert (=> b!7492363 (= e!4467674 (matchRSpec!4316 (regTwo!39791 lt!2629919) s!13591))))

(declare-fun e!4467677 () Bool)

(declare-fun call!687797 () Bool)

(assert (=> b!7492365 (= e!4467677 call!687797)))

(declare-fun b!7492366 () Bool)

(declare-fun e!4467675 () Bool)

(declare-fun call!687798 () Bool)

(assert (=> b!7492366 (= e!4467675 call!687798)))

(declare-fun e!4467676 () Bool)

(assert (=> b!7492367 (= e!4467676 call!687797)))

(declare-fun b!7492368 () Bool)

(declare-fun e!4467672 () Bool)

(assert (=> b!7492368 (= e!4467672 e!4467677)))

(declare-fun c!1383427 () Bool)

(assert (=> b!7492368 (= c!1383427 ((_ is Star!19639) lt!2629919))))

(declare-fun b!7492369 () Bool)

(assert (=> b!7492369 (= e!4467672 e!4467674)))

(declare-fun res!3005448 () Bool)

(assert (=> b!7492369 (= res!3005448 (matchRSpec!4316 (regOne!39791 lt!2629919) s!13591))))

(assert (=> b!7492369 (=> res!3005448 e!4467674)))

(declare-fun bm!687792 () Bool)

(assert (=> bm!687792 (= call!687797 (Exists!4255 (ite c!1383427 lambda!464230 lambda!464231)))))

(declare-fun b!7492364 () Bool)

(declare-fun res!3005447 () Bool)

(assert (=> b!7492364 (=> res!3005447 e!4467676)))

(assert (=> b!7492364 (= res!3005447 call!687798)))

(assert (=> b!7492364 (= e!4467677 e!4467676)))

(declare-fun d!2301411 () Bool)

(declare-fun c!1383428 () Bool)

(assert (=> d!2301411 (= c!1383428 ((_ is EmptyExpr!19639) lt!2629919))))

(assert (=> d!2301411 (= (matchRSpec!4316 lt!2629919 s!13591) e!4467675)))

(declare-fun b!7492370 () Bool)

(declare-fun e!4467673 () Bool)

(assert (=> b!7492370 (= e!4467673 (= s!13591 (Cons!72229 (c!1383404 lt!2629919) Nil!72229)))))

(declare-fun b!7492371 () Bool)

(declare-fun c!1383425 () Bool)

(assert (=> b!7492371 (= c!1383425 ((_ is ElementMatch!19639) lt!2629919))))

(declare-fun e!4467678 () Bool)

(assert (=> b!7492371 (= e!4467678 e!4467673)))

(declare-fun b!7492372 () Bool)

(assert (=> b!7492372 (= e!4467675 e!4467678)))

(declare-fun res!3005446 () Bool)

(assert (=> b!7492372 (= res!3005446 (not ((_ is EmptyLang!19639) lt!2629919)))))

(assert (=> b!7492372 (=> (not res!3005446) (not e!4467678))))

(declare-fun b!7492373 () Bool)

(declare-fun c!1383426 () Bool)

(assert (=> b!7492373 (= c!1383426 ((_ is Union!19639) lt!2629919))))

(assert (=> b!7492373 (= e!4467673 e!4467672)))

(declare-fun bm!687793 () Bool)

(assert (=> bm!687793 (= call!687798 (isEmpty!41255 s!13591))))

(assert (= (and d!2301411 c!1383428) b!7492366))

(assert (= (and d!2301411 (not c!1383428)) b!7492372))

(assert (= (and b!7492372 res!3005446) b!7492371))

(assert (= (and b!7492371 c!1383425) b!7492370))

(assert (= (and b!7492371 (not c!1383425)) b!7492373))

(assert (= (and b!7492373 c!1383426) b!7492369))

(assert (= (and b!7492373 (not c!1383426)) b!7492368))

(assert (= (and b!7492369 (not res!3005448)) b!7492363))

(assert (= (and b!7492368 c!1383427) b!7492364))

(assert (= (and b!7492368 (not c!1383427)) b!7492365))

(assert (= (and b!7492364 (not res!3005447)) b!7492367))

(assert (= (or b!7492367 b!7492365) bm!687792))

(assert (= (or b!7492366 b!7492364) bm!687793))

(declare-fun m!8078248 () Bool)

(assert (=> b!7492363 m!8078248))

(declare-fun m!8078250 () Bool)

(assert (=> b!7492369 m!8078250))

(declare-fun m!8078252 () Bool)

(assert (=> bm!687792 m!8078252))

(assert (=> bm!687793 m!8078242))

(assert (=> b!7492284 d!2301411))

(declare-fun b!7492402 () Bool)

(declare-fun e!4467698 () Bool)

(declare-fun e!4467693 () Bool)

(assert (=> b!7492402 (= e!4467698 e!4467693)))

(declare-fun res!3005467 () Bool)

(assert (=> b!7492402 (=> (not res!3005467) (not e!4467693))))

(declare-fun lt!2629929 () Bool)

(assert (=> b!7492402 (= res!3005467 (not lt!2629929))))

(declare-fun bm!687796 () Bool)

(declare-fun call!687801 () Bool)

(assert (=> bm!687796 (= call!687801 (isEmpty!41255 s!13591))))

(declare-fun b!7492403 () Bool)

(declare-fun res!3005469 () Bool)

(declare-fun e!4467696 () Bool)

(assert (=> b!7492403 (=> (not res!3005469) (not e!4467696))))

(assert (=> b!7492403 (= res!3005469 (not call!687801))))

(declare-fun b!7492404 () Bool)

(declare-fun e!4467694 () Bool)

(declare-fun e!4467695 () Bool)

(assert (=> b!7492404 (= e!4467694 e!4467695)))

(declare-fun c!1383437 () Bool)

(assert (=> b!7492404 (= c!1383437 ((_ is EmptyLang!19639) lt!2629919))))

(declare-fun d!2301413 () Bool)

(assert (=> d!2301413 e!4467694))

(declare-fun c!1383436 () Bool)

(assert (=> d!2301413 (= c!1383436 ((_ is EmptyExpr!19639) lt!2629919))))

(declare-fun e!4467697 () Bool)

(assert (=> d!2301413 (= lt!2629929 e!4467697)))

(declare-fun c!1383435 () Bool)

(assert (=> d!2301413 (= c!1383435 (isEmpty!41255 s!13591))))

(assert (=> d!2301413 (validRegex!10153 lt!2629919)))

(assert (=> d!2301413 (= (matchR!9401 lt!2629919 s!13591) lt!2629929)))

(declare-fun b!7492405 () Bool)

(declare-fun res!3005468 () Bool)

(assert (=> b!7492405 (=> (not res!3005468) (not e!4467696))))

(declare-fun tail!14940 (List!72353) List!72353)

(assert (=> b!7492405 (= res!3005468 (isEmpty!41255 (tail!14940 s!13591)))))

(declare-fun b!7492406 () Bool)

(declare-fun derivativeStep!5631 (Regex!19639 C!39552) Regex!19639)

(declare-fun head!15371 (List!72353) C!39552)

(assert (=> b!7492406 (= e!4467697 (matchR!9401 (derivativeStep!5631 lt!2629919 (head!15371 s!13591)) (tail!14940 s!13591)))))

(declare-fun b!7492407 () Bool)

(declare-fun e!4467699 () Bool)

(assert (=> b!7492407 (= e!4467693 e!4467699)))

(declare-fun res!3005466 () Bool)

(assert (=> b!7492407 (=> res!3005466 e!4467699)))

(assert (=> b!7492407 (= res!3005466 call!687801)))

(declare-fun b!7492408 () Bool)

(declare-fun res!3005470 () Bool)

(assert (=> b!7492408 (=> res!3005470 e!4467699)))

(assert (=> b!7492408 (= res!3005470 (not (isEmpty!41255 (tail!14940 s!13591))))))

(declare-fun b!7492409 () Bool)

(assert (=> b!7492409 (= e!4467694 (= lt!2629929 call!687801))))

(declare-fun b!7492410 () Bool)

(declare-fun res!3005472 () Bool)

(assert (=> b!7492410 (=> res!3005472 e!4467698)))

(assert (=> b!7492410 (= res!3005472 e!4467696)))

(declare-fun res!3005471 () Bool)

(assert (=> b!7492410 (=> (not res!3005471) (not e!4467696))))

(assert (=> b!7492410 (= res!3005471 lt!2629929)))

(declare-fun b!7492411 () Bool)

(assert (=> b!7492411 (= e!4467696 (= (head!15371 s!13591) (c!1383404 lt!2629919)))))

(declare-fun b!7492412 () Bool)

(assert (=> b!7492412 (= e!4467699 (not (= (head!15371 s!13591) (c!1383404 lt!2629919))))))

(declare-fun b!7492413 () Bool)

(declare-fun res!3005465 () Bool)

(assert (=> b!7492413 (=> res!3005465 e!4467698)))

(assert (=> b!7492413 (= res!3005465 (not ((_ is ElementMatch!19639) lt!2629919)))))

(assert (=> b!7492413 (= e!4467695 e!4467698)))

(declare-fun b!7492414 () Bool)

(assert (=> b!7492414 (= e!4467695 (not lt!2629929))))

(declare-fun b!7492415 () Bool)

(declare-fun nullable!8574 (Regex!19639) Bool)

(assert (=> b!7492415 (= e!4467697 (nullable!8574 lt!2629919))))

(assert (= (and d!2301413 c!1383435) b!7492415))

(assert (= (and d!2301413 (not c!1383435)) b!7492406))

(assert (= (and d!2301413 c!1383436) b!7492409))

(assert (= (and d!2301413 (not c!1383436)) b!7492404))

(assert (= (and b!7492404 c!1383437) b!7492414))

(assert (= (and b!7492404 (not c!1383437)) b!7492413))

(assert (= (and b!7492413 (not res!3005465)) b!7492410))

(assert (= (and b!7492410 res!3005471) b!7492403))

(assert (= (and b!7492403 res!3005469) b!7492405))

(assert (= (and b!7492405 res!3005468) b!7492411))

(assert (= (and b!7492410 (not res!3005472)) b!7492402))

(assert (= (and b!7492402 res!3005467) b!7492407))

(assert (= (and b!7492407 (not res!3005466)) b!7492408))

(assert (= (and b!7492408 (not res!3005470)) b!7492412))

(assert (= (or b!7492409 b!7492403 b!7492407) bm!687796))

(declare-fun m!8078254 () Bool)

(assert (=> b!7492412 m!8078254))

(declare-fun m!8078256 () Bool)

(assert (=> b!7492415 m!8078256))

(assert (=> bm!687796 m!8078242))

(declare-fun m!8078258 () Bool)

(assert (=> b!7492405 m!8078258))

(assert (=> b!7492405 m!8078258))

(declare-fun m!8078260 () Bool)

(assert (=> b!7492405 m!8078260))

(assert (=> b!7492411 m!8078254))

(assert (=> d!2301413 m!8078242))

(declare-fun m!8078262 () Bool)

(assert (=> d!2301413 m!8078262))

(assert (=> b!7492406 m!8078254))

(assert (=> b!7492406 m!8078254))

(declare-fun m!8078264 () Bool)

(assert (=> b!7492406 m!8078264))

(assert (=> b!7492406 m!8078258))

(assert (=> b!7492406 m!8078264))

(assert (=> b!7492406 m!8078258))

(declare-fun m!8078266 () Bool)

(assert (=> b!7492406 m!8078266))

(assert (=> b!7492408 m!8078258))

(assert (=> b!7492408 m!8078258))

(assert (=> b!7492408 m!8078260))

(assert (=> b!7492284 d!2301413))

(declare-fun b!7492416 () Bool)

(declare-fun e!4467705 () Bool)

(declare-fun e!4467700 () Bool)

(assert (=> b!7492416 (= e!4467705 e!4467700)))

(declare-fun res!3005475 () Bool)

(assert (=> b!7492416 (=> (not res!3005475) (not e!4467700))))

(declare-fun lt!2629930 () Bool)

(assert (=> b!7492416 (= res!3005475 (not lt!2629930))))

(declare-fun bm!687797 () Bool)

(declare-fun call!687802 () Bool)

(assert (=> bm!687797 (= call!687802 (isEmpty!41255 s!13591))))

(declare-fun b!7492417 () Bool)

(declare-fun res!3005477 () Bool)

(declare-fun e!4467703 () Bool)

(assert (=> b!7492417 (=> (not res!3005477) (not e!4467703))))

(assert (=> b!7492417 (= res!3005477 (not call!687802))))

(declare-fun b!7492418 () Bool)

(declare-fun e!4467701 () Bool)

(declare-fun e!4467702 () Bool)

(assert (=> b!7492418 (= e!4467701 e!4467702)))

(declare-fun c!1383440 () Bool)

(assert (=> b!7492418 (= c!1383440 ((_ is EmptyLang!19639) lt!2629921))))

(declare-fun d!2301415 () Bool)

(assert (=> d!2301415 e!4467701))

(declare-fun c!1383439 () Bool)

(assert (=> d!2301415 (= c!1383439 ((_ is EmptyExpr!19639) lt!2629921))))

(declare-fun e!4467704 () Bool)

(assert (=> d!2301415 (= lt!2629930 e!4467704)))

(declare-fun c!1383438 () Bool)

(assert (=> d!2301415 (= c!1383438 (isEmpty!41255 s!13591))))

(assert (=> d!2301415 (validRegex!10153 lt!2629921)))

(assert (=> d!2301415 (= (matchR!9401 lt!2629921 s!13591) lt!2629930)))

(declare-fun b!7492419 () Bool)

(declare-fun res!3005476 () Bool)

(assert (=> b!7492419 (=> (not res!3005476) (not e!4467703))))

(assert (=> b!7492419 (= res!3005476 (isEmpty!41255 (tail!14940 s!13591)))))

(declare-fun b!7492420 () Bool)

(assert (=> b!7492420 (= e!4467704 (matchR!9401 (derivativeStep!5631 lt!2629921 (head!15371 s!13591)) (tail!14940 s!13591)))))

(declare-fun b!7492421 () Bool)

(declare-fun e!4467706 () Bool)

(assert (=> b!7492421 (= e!4467700 e!4467706)))

(declare-fun res!3005474 () Bool)

(assert (=> b!7492421 (=> res!3005474 e!4467706)))

(assert (=> b!7492421 (= res!3005474 call!687802)))

(declare-fun b!7492422 () Bool)

(declare-fun res!3005478 () Bool)

(assert (=> b!7492422 (=> res!3005478 e!4467706)))

(assert (=> b!7492422 (= res!3005478 (not (isEmpty!41255 (tail!14940 s!13591))))))

(declare-fun b!7492423 () Bool)

(assert (=> b!7492423 (= e!4467701 (= lt!2629930 call!687802))))

(declare-fun b!7492424 () Bool)

(declare-fun res!3005480 () Bool)

(assert (=> b!7492424 (=> res!3005480 e!4467705)))

(assert (=> b!7492424 (= res!3005480 e!4467703)))

(declare-fun res!3005479 () Bool)

(assert (=> b!7492424 (=> (not res!3005479) (not e!4467703))))

(assert (=> b!7492424 (= res!3005479 lt!2629930)))

(declare-fun b!7492425 () Bool)

(assert (=> b!7492425 (= e!4467703 (= (head!15371 s!13591) (c!1383404 lt!2629921)))))

(declare-fun b!7492426 () Bool)

(assert (=> b!7492426 (= e!4467706 (not (= (head!15371 s!13591) (c!1383404 lt!2629921))))))

(declare-fun b!7492427 () Bool)

(declare-fun res!3005473 () Bool)

(assert (=> b!7492427 (=> res!3005473 e!4467705)))

(assert (=> b!7492427 (= res!3005473 (not ((_ is ElementMatch!19639) lt!2629921)))))

(assert (=> b!7492427 (= e!4467702 e!4467705)))

(declare-fun b!7492428 () Bool)

(assert (=> b!7492428 (= e!4467702 (not lt!2629930))))

(declare-fun b!7492429 () Bool)

(assert (=> b!7492429 (= e!4467704 (nullable!8574 lt!2629921))))

(assert (= (and d!2301415 c!1383438) b!7492429))

(assert (= (and d!2301415 (not c!1383438)) b!7492420))

(assert (= (and d!2301415 c!1383439) b!7492423))

(assert (= (and d!2301415 (not c!1383439)) b!7492418))

(assert (= (and b!7492418 c!1383440) b!7492428))

(assert (= (and b!7492418 (not c!1383440)) b!7492427))

(assert (= (and b!7492427 (not res!3005473)) b!7492424))

(assert (= (and b!7492424 res!3005479) b!7492417))

(assert (= (and b!7492417 res!3005477) b!7492419))

(assert (= (and b!7492419 res!3005476) b!7492425))

(assert (= (and b!7492424 (not res!3005480)) b!7492416))

(assert (= (and b!7492416 res!3005475) b!7492421))

(assert (= (and b!7492421 (not res!3005474)) b!7492422))

(assert (= (and b!7492422 (not res!3005478)) b!7492426))

(assert (= (or b!7492423 b!7492417 b!7492421) bm!687797))

(assert (=> b!7492426 m!8078254))

(declare-fun m!8078268 () Bool)

(assert (=> b!7492429 m!8078268))

(assert (=> bm!687797 m!8078242))

(assert (=> b!7492419 m!8078258))

(assert (=> b!7492419 m!8078258))

(assert (=> b!7492419 m!8078260))

(assert (=> b!7492425 m!8078254))

(assert (=> d!2301415 m!8078242))

(assert (=> d!2301415 m!8078246))

(assert (=> b!7492420 m!8078254))

(assert (=> b!7492420 m!8078254))

(declare-fun m!8078270 () Bool)

(assert (=> b!7492420 m!8078270))

(assert (=> b!7492420 m!8078258))

(assert (=> b!7492420 m!8078270))

(assert (=> b!7492420 m!8078258))

(declare-fun m!8078272 () Bool)

(assert (=> b!7492420 m!8078272))

(assert (=> b!7492422 m!8078258))

(assert (=> b!7492422 m!8078258))

(assert (=> b!7492422 m!8078260))

(assert (=> b!7492284 d!2301415))

(declare-fun d!2301417 () Bool)

(assert (=> d!2301417 (= (matchR!9401 lt!2629919 s!13591) (matchRSpec!4316 lt!2629919 s!13591))))

(declare-fun lt!2629931 () Unit!166109)

(assert (=> d!2301417 (= lt!2629931 (choose!57912 lt!2629919 s!13591))))

(assert (=> d!2301417 (validRegex!10153 lt!2629919)))

(assert (=> d!2301417 (= (mainMatchTheorem!4310 lt!2629919 s!13591) lt!2629931)))

(declare-fun bs!1935399 () Bool)

(assert (= bs!1935399 d!2301417))

(assert (=> bs!1935399 m!8078228))

(assert (=> bs!1935399 m!8078224))

(declare-fun m!8078274 () Bool)

(assert (=> bs!1935399 m!8078274))

(assert (=> bs!1935399 m!8078262))

(assert (=> b!7492284 d!2301417))

(declare-fun b!7492448 () Bool)

(declare-fun e!4467724 () Bool)

(declare-fun e!4467721 () Bool)

(assert (=> b!7492448 (= e!4467724 e!4467721)))

(declare-fun res!3005492 () Bool)

(assert (=> b!7492448 (= res!3005492 (not (nullable!8574 (reg!19968 r1!5845))))))

(assert (=> b!7492448 (=> (not res!3005492) (not e!4467721))))

(declare-fun b!7492449 () Bool)

(declare-fun res!3005495 () Bool)

(declare-fun e!4467725 () Bool)

(assert (=> b!7492449 (=> (not res!3005495) (not e!4467725))))

(declare-fun call!687811 () Bool)

(assert (=> b!7492449 (= res!3005495 call!687811)))

(declare-fun e!4467723 () Bool)

(assert (=> b!7492449 (= e!4467723 e!4467725)))

(declare-fun b!7492450 () Bool)

(declare-fun call!687810 () Bool)

(assert (=> b!7492450 (= e!4467725 call!687810)))

(declare-fun bm!687804 () Bool)

(declare-fun call!687809 () Bool)

(assert (=> bm!687804 (= call!687811 call!687809)))

(declare-fun b!7492451 () Bool)

(declare-fun res!3005494 () Bool)

(declare-fun e!4467726 () Bool)

(assert (=> b!7492451 (=> res!3005494 e!4467726)))

(assert (=> b!7492451 (= res!3005494 (not ((_ is Concat!28484) r1!5845)))))

(assert (=> b!7492451 (= e!4467723 e!4467726)))

(declare-fun b!7492452 () Bool)

(assert (=> b!7492452 (= e!4467721 call!687809)))

(declare-fun d!2301419 () Bool)

(declare-fun res!3005493 () Bool)

(declare-fun e!4467727 () Bool)

(assert (=> d!2301419 (=> res!3005493 e!4467727)))

(assert (=> d!2301419 (= res!3005493 ((_ is ElementMatch!19639) r1!5845))))

(assert (=> d!2301419 (= (validRegex!10153 r1!5845) e!4467727)))

(declare-fun bm!687805 () Bool)

(declare-fun c!1383445 () Bool)

(declare-fun c!1383446 () Bool)

(assert (=> bm!687805 (= call!687809 (validRegex!10153 (ite c!1383446 (reg!19968 r1!5845) (ite c!1383445 (regOne!39791 r1!5845) (regOne!39790 r1!5845)))))))

(declare-fun b!7492453 () Bool)

(assert (=> b!7492453 (= e!4467727 e!4467724)))

(assert (=> b!7492453 (= c!1383446 ((_ is Star!19639) r1!5845))))

(declare-fun b!7492454 () Bool)

(declare-fun e!4467722 () Bool)

(assert (=> b!7492454 (= e!4467726 e!4467722)))

(declare-fun res!3005491 () Bool)

(assert (=> b!7492454 (=> (not res!3005491) (not e!4467722))))

(assert (=> b!7492454 (= res!3005491 call!687811)))

(declare-fun b!7492455 () Bool)

(assert (=> b!7492455 (= e!4467724 e!4467723)))

(assert (=> b!7492455 (= c!1383445 ((_ is Union!19639) r1!5845))))

(declare-fun b!7492456 () Bool)

(assert (=> b!7492456 (= e!4467722 call!687810)))

(declare-fun bm!687806 () Bool)

(assert (=> bm!687806 (= call!687810 (validRegex!10153 (ite c!1383445 (regTwo!39791 r1!5845) (regTwo!39790 r1!5845))))))

(assert (= (and d!2301419 (not res!3005493)) b!7492453))

(assert (= (and b!7492453 c!1383446) b!7492448))

(assert (= (and b!7492453 (not c!1383446)) b!7492455))

(assert (= (and b!7492448 res!3005492) b!7492452))

(assert (= (and b!7492455 c!1383445) b!7492449))

(assert (= (and b!7492455 (not c!1383445)) b!7492451))

(assert (= (and b!7492449 res!3005495) b!7492450))

(assert (= (and b!7492451 (not res!3005494)) b!7492454))

(assert (= (and b!7492454 res!3005491) b!7492456))

(assert (= (or b!7492450 b!7492456) bm!687806))

(assert (= (or b!7492449 b!7492454) bm!687804))

(assert (= (or b!7492452 bm!687804) bm!687805))

(declare-fun m!8078276 () Bool)

(assert (=> b!7492448 m!8078276))

(declare-fun m!8078278 () Bool)

(assert (=> bm!687805 m!8078278))

(declare-fun m!8078280 () Bool)

(assert (=> bm!687806 m!8078280))

(assert (=> start!725258 d!2301419))

(declare-fun b!7492457 () Bool)

(declare-fun e!4467731 () Bool)

(declare-fun e!4467728 () Bool)

(assert (=> b!7492457 (= e!4467731 e!4467728)))

(declare-fun res!3005497 () Bool)

(assert (=> b!7492457 (= res!3005497 (not (nullable!8574 (reg!19968 lt!2629922))))))

(assert (=> b!7492457 (=> (not res!3005497) (not e!4467728))))

(declare-fun b!7492458 () Bool)

(declare-fun res!3005500 () Bool)

(declare-fun e!4467732 () Bool)

(assert (=> b!7492458 (=> (not res!3005500) (not e!4467732))))

(declare-fun call!687814 () Bool)

(assert (=> b!7492458 (= res!3005500 call!687814)))

(declare-fun e!4467730 () Bool)

(assert (=> b!7492458 (= e!4467730 e!4467732)))

(declare-fun b!7492459 () Bool)

(declare-fun call!687813 () Bool)

(assert (=> b!7492459 (= e!4467732 call!687813)))

(declare-fun bm!687807 () Bool)

(declare-fun call!687812 () Bool)

(assert (=> bm!687807 (= call!687814 call!687812)))

(declare-fun b!7492460 () Bool)

(declare-fun res!3005499 () Bool)

(declare-fun e!4467733 () Bool)

(assert (=> b!7492460 (=> res!3005499 e!4467733)))

(assert (=> b!7492460 (= res!3005499 (not ((_ is Concat!28484) lt!2629922)))))

(assert (=> b!7492460 (= e!4467730 e!4467733)))

(declare-fun b!7492461 () Bool)

(assert (=> b!7492461 (= e!4467728 call!687812)))

(declare-fun d!2301421 () Bool)

(declare-fun res!3005498 () Bool)

(declare-fun e!4467734 () Bool)

(assert (=> d!2301421 (=> res!3005498 e!4467734)))

(assert (=> d!2301421 (= res!3005498 ((_ is ElementMatch!19639) lt!2629922))))

(assert (=> d!2301421 (= (validRegex!10153 lt!2629922) e!4467734)))

(declare-fun c!1383447 () Bool)

(declare-fun bm!687808 () Bool)

(declare-fun c!1383448 () Bool)

(assert (=> bm!687808 (= call!687812 (validRegex!10153 (ite c!1383448 (reg!19968 lt!2629922) (ite c!1383447 (regOne!39791 lt!2629922) (regOne!39790 lt!2629922)))))))

(declare-fun b!7492462 () Bool)

(assert (=> b!7492462 (= e!4467734 e!4467731)))

(assert (=> b!7492462 (= c!1383448 ((_ is Star!19639) lt!2629922))))

(declare-fun b!7492463 () Bool)

(declare-fun e!4467729 () Bool)

(assert (=> b!7492463 (= e!4467733 e!4467729)))

(declare-fun res!3005496 () Bool)

(assert (=> b!7492463 (=> (not res!3005496) (not e!4467729))))

(assert (=> b!7492463 (= res!3005496 call!687814)))

(declare-fun b!7492464 () Bool)

(assert (=> b!7492464 (= e!4467731 e!4467730)))

(assert (=> b!7492464 (= c!1383447 ((_ is Union!19639) lt!2629922))))

(declare-fun b!7492465 () Bool)

(assert (=> b!7492465 (= e!4467729 call!687813)))

(declare-fun bm!687809 () Bool)

(assert (=> bm!687809 (= call!687813 (validRegex!10153 (ite c!1383447 (regTwo!39791 lt!2629922) (regTwo!39790 lt!2629922))))))

(assert (= (and d!2301421 (not res!3005498)) b!7492462))

(assert (= (and b!7492462 c!1383448) b!7492457))

(assert (= (and b!7492462 (not c!1383448)) b!7492464))

(assert (= (and b!7492457 res!3005497) b!7492461))

(assert (= (and b!7492464 c!1383447) b!7492458))

(assert (= (and b!7492464 (not c!1383447)) b!7492460))

(assert (= (and b!7492458 res!3005500) b!7492459))

(assert (= (and b!7492460 (not res!3005499)) b!7492463))

(assert (= (and b!7492463 res!3005496) b!7492465))

(assert (= (or b!7492459 b!7492465) bm!687809))

(assert (= (or b!7492458 b!7492463) bm!687807))

(assert (= (or b!7492461 bm!687807) bm!687808))

(declare-fun m!8078282 () Bool)

(assert (=> b!7492457 m!8078282))

(declare-fun m!8078284 () Bool)

(assert (=> bm!687808 m!8078284))

(declare-fun m!8078286 () Bool)

(assert (=> bm!687809 m!8078286))

(assert (=> b!7492293 d!2301421))

(declare-fun b!7492466 () Bool)

(declare-fun e!4467738 () Bool)

(declare-fun e!4467735 () Bool)

(assert (=> b!7492466 (= e!4467738 e!4467735)))

(declare-fun res!3005502 () Bool)

(assert (=> b!7492466 (= res!3005502 (not (nullable!8574 (reg!19968 rTail!78))))))

(assert (=> b!7492466 (=> (not res!3005502) (not e!4467735))))

(declare-fun b!7492467 () Bool)

(declare-fun res!3005505 () Bool)

(declare-fun e!4467739 () Bool)

(assert (=> b!7492467 (=> (not res!3005505) (not e!4467739))))

(declare-fun call!687817 () Bool)

(assert (=> b!7492467 (= res!3005505 call!687817)))

(declare-fun e!4467737 () Bool)

(assert (=> b!7492467 (= e!4467737 e!4467739)))

(declare-fun b!7492468 () Bool)

(declare-fun call!687816 () Bool)

(assert (=> b!7492468 (= e!4467739 call!687816)))

(declare-fun bm!687810 () Bool)

(declare-fun call!687815 () Bool)

(assert (=> bm!687810 (= call!687817 call!687815)))

(declare-fun b!7492469 () Bool)

(declare-fun res!3005504 () Bool)

(declare-fun e!4467740 () Bool)

(assert (=> b!7492469 (=> res!3005504 e!4467740)))

(assert (=> b!7492469 (= res!3005504 (not ((_ is Concat!28484) rTail!78)))))

(assert (=> b!7492469 (= e!4467737 e!4467740)))

(declare-fun b!7492470 () Bool)

(assert (=> b!7492470 (= e!4467735 call!687815)))

(declare-fun d!2301423 () Bool)

(declare-fun res!3005503 () Bool)

(declare-fun e!4467741 () Bool)

(assert (=> d!2301423 (=> res!3005503 e!4467741)))

(assert (=> d!2301423 (= res!3005503 ((_ is ElementMatch!19639) rTail!78))))

(assert (=> d!2301423 (= (validRegex!10153 rTail!78) e!4467741)))

(declare-fun bm!687811 () Bool)

(declare-fun c!1383450 () Bool)

(declare-fun c!1383449 () Bool)

(assert (=> bm!687811 (= call!687815 (validRegex!10153 (ite c!1383450 (reg!19968 rTail!78) (ite c!1383449 (regOne!39791 rTail!78) (regOne!39790 rTail!78)))))))

(declare-fun b!7492471 () Bool)

(assert (=> b!7492471 (= e!4467741 e!4467738)))

(assert (=> b!7492471 (= c!1383450 ((_ is Star!19639) rTail!78))))

(declare-fun b!7492472 () Bool)

(declare-fun e!4467736 () Bool)

(assert (=> b!7492472 (= e!4467740 e!4467736)))

(declare-fun res!3005501 () Bool)

(assert (=> b!7492472 (=> (not res!3005501) (not e!4467736))))

(assert (=> b!7492472 (= res!3005501 call!687817)))

(declare-fun b!7492473 () Bool)

(assert (=> b!7492473 (= e!4467738 e!4467737)))

(assert (=> b!7492473 (= c!1383449 ((_ is Union!19639) rTail!78))))

(declare-fun b!7492474 () Bool)

(assert (=> b!7492474 (= e!4467736 call!687816)))

(declare-fun bm!687812 () Bool)

(assert (=> bm!687812 (= call!687816 (validRegex!10153 (ite c!1383449 (regTwo!39791 rTail!78) (regTwo!39790 rTail!78))))))

(assert (= (and d!2301423 (not res!3005503)) b!7492471))

(assert (= (and b!7492471 c!1383450) b!7492466))

(assert (= (and b!7492471 (not c!1383450)) b!7492473))

(assert (= (and b!7492466 res!3005502) b!7492470))

(assert (= (and b!7492473 c!1383449) b!7492467))

(assert (= (and b!7492473 (not c!1383449)) b!7492469))

(assert (= (and b!7492467 res!3005505) b!7492468))

(assert (= (and b!7492469 (not res!3005504)) b!7492472))

(assert (= (and b!7492472 res!3005501) b!7492474))

(assert (= (or b!7492468 b!7492474) bm!687812))

(assert (= (or b!7492467 b!7492472) bm!687810))

(assert (= (or b!7492470 bm!687810) bm!687811))

(declare-fun m!8078288 () Bool)

(assert (=> b!7492466 m!8078288))

(declare-fun m!8078290 () Bool)

(assert (=> bm!687811 m!8078290))

(declare-fun m!8078292 () Bool)

(assert (=> bm!687812 m!8078292))

(assert (=> b!7492285 d!2301423))

(declare-fun b!7492475 () Bool)

(declare-fun e!4467745 () Bool)

(declare-fun e!4467742 () Bool)

(assert (=> b!7492475 (= e!4467745 e!4467742)))

(declare-fun res!3005507 () Bool)

(assert (=> b!7492475 (= res!3005507 (not (nullable!8574 (reg!19968 r2!5783))))))

(assert (=> b!7492475 (=> (not res!3005507) (not e!4467742))))

(declare-fun b!7492476 () Bool)

(declare-fun res!3005510 () Bool)

(declare-fun e!4467746 () Bool)

(assert (=> b!7492476 (=> (not res!3005510) (not e!4467746))))

(declare-fun call!687820 () Bool)

(assert (=> b!7492476 (= res!3005510 call!687820)))

(declare-fun e!4467744 () Bool)

(assert (=> b!7492476 (= e!4467744 e!4467746)))

(declare-fun b!7492477 () Bool)

(declare-fun call!687819 () Bool)

(assert (=> b!7492477 (= e!4467746 call!687819)))

(declare-fun bm!687813 () Bool)

(declare-fun call!687818 () Bool)

(assert (=> bm!687813 (= call!687820 call!687818)))

(declare-fun b!7492478 () Bool)

(declare-fun res!3005509 () Bool)

(declare-fun e!4467747 () Bool)

(assert (=> b!7492478 (=> res!3005509 e!4467747)))

(assert (=> b!7492478 (= res!3005509 (not ((_ is Concat!28484) r2!5783)))))

(assert (=> b!7492478 (= e!4467744 e!4467747)))

(declare-fun b!7492479 () Bool)

(assert (=> b!7492479 (= e!4467742 call!687818)))

(declare-fun d!2301425 () Bool)

(declare-fun res!3005508 () Bool)

(declare-fun e!4467748 () Bool)

(assert (=> d!2301425 (=> res!3005508 e!4467748)))

(assert (=> d!2301425 (= res!3005508 ((_ is ElementMatch!19639) r2!5783))))

(assert (=> d!2301425 (= (validRegex!10153 r2!5783) e!4467748)))

(declare-fun bm!687814 () Bool)

(declare-fun c!1383452 () Bool)

(declare-fun c!1383451 () Bool)

(assert (=> bm!687814 (= call!687818 (validRegex!10153 (ite c!1383452 (reg!19968 r2!5783) (ite c!1383451 (regOne!39791 r2!5783) (regOne!39790 r2!5783)))))))

(declare-fun b!7492480 () Bool)

(assert (=> b!7492480 (= e!4467748 e!4467745)))

(assert (=> b!7492480 (= c!1383452 ((_ is Star!19639) r2!5783))))

(declare-fun b!7492481 () Bool)

(declare-fun e!4467743 () Bool)

(assert (=> b!7492481 (= e!4467747 e!4467743)))

(declare-fun res!3005506 () Bool)

(assert (=> b!7492481 (=> (not res!3005506) (not e!4467743))))

(assert (=> b!7492481 (= res!3005506 call!687820)))

(declare-fun b!7492482 () Bool)

(assert (=> b!7492482 (= e!4467745 e!4467744)))

(assert (=> b!7492482 (= c!1383451 ((_ is Union!19639) r2!5783))))

(declare-fun b!7492483 () Bool)

(assert (=> b!7492483 (= e!4467743 call!687819)))

(declare-fun bm!687815 () Bool)

(assert (=> bm!687815 (= call!687819 (validRegex!10153 (ite c!1383451 (regTwo!39791 r2!5783) (regTwo!39790 r2!5783))))))

(assert (= (and d!2301425 (not res!3005508)) b!7492480))

(assert (= (and b!7492480 c!1383452) b!7492475))

(assert (= (and b!7492480 (not c!1383452)) b!7492482))

(assert (= (and b!7492475 res!3005507) b!7492479))

(assert (= (and b!7492482 c!1383451) b!7492476))

(assert (= (and b!7492482 (not c!1383451)) b!7492478))

(assert (= (and b!7492476 res!3005510) b!7492477))

(assert (= (and b!7492478 (not res!3005509)) b!7492481))

(assert (= (and b!7492481 res!3005506) b!7492483))

(assert (= (or b!7492477 b!7492483) bm!687815))

(assert (= (or b!7492476 b!7492481) bm!687813))

(assert (= (or b!7492479 bm!687813) bm!687814))

(declare-fun m!8078294 () Bool)

(assert (=> b!7492475 m!8078294))

(declare-fun m!8078296 () Bool)

(assert (=> bm!687814 m!8078296))

(declare-fun m!8078298 () Bool)

(assert (=> bm!687815 m!8078298))

(assert (=> b!7492280 d!2301425))

(declare-fun b!7492497 () Bool)

(declare-fun e!4467751 () Bool)

(declare-fun tp!2174715 () Bool)

(declare-fun tp!2174713 () Bool)

(assert (=> b!7492497 (= e!4467751 (and tp!2174715 tp!2174713))))

(declare-fun b!7492496 () Bool)

(declare-fun tp!2174716 () Bool)

(assert (=> b!7492496 (= e!4467751 tp!2174716)))

(assert (=> b!7492289 (= tp!2174698 e!4467751)))

(declare-fun b!7492495 () Bool)

(declare-fun tp!2174712 () Bool)

(declare-fun tp!2174714 () Bool)

(assert (=> b!7492495 (= e!4467751 (and tp!2174712 tp!2174714))))

(declare-fun b!7492494 () Bool)

(assert (=> b!7492494 (= e!4467751 tp_is_empty!49567)))

(assert (= (and b!7492289 ((_ is ElementMatch!19639) (regOne!39790 r1!5845))) b!7492494))

(assert (= (and b!7492289 ((_ is Concat!28484) (regOne!39790 r1!5845))) b!7492495))

(assert (= (and b!7492289 ((_ is Star!19639) (regOne!39790 r1!5845))) b!7492496))

(assert (= (and b!7492289 ((_ is Union!19639) (regOne!39790 r1!5845))) b!7492497))

(declare-fun b!7492501 () Bool)

(declare-fun e!4467752 () Bool)

(declare-fun tp!2174720 () Bool)

(declare-fun tp!2174718 () Bool)

(assert (=> b!7492501 (= e!4467752 (and tp!2174720 tp!2174718))))

(declare-fun b!7492500 () Bool)

(declare-fun tp!2174721 () Bool)

(assert (=> b!7492500 (= e!4467752 tp!2174721)))

(assert (=> b!7492289 (= tp!2174690 e!4467752)))

(declare-fun b!7492499 () Bool)

(declare-fun tp!2174717 () Bool)

(declare-fun tp!2174719 () Bool)

(assert (=> b!7492499 (= e!4467752 (and tp!2174717 tp!2174719))))

(declare-fun b!7492498 () Bool)

(assert (=> b!7492498 (= e!4467752 tp_is_empty!49567)))

(assert (= (and b!7492289 ((_ is ElementMatch!19639) (regTwo!39790 r1!5845))) b!7492498))

(assert (= (and b!7492289 ((_ is Concat!28484) (regTwo!39790 r1!5845))) b!7492499))

(assert (= (and b!7492289 ((_ is Star!19639) (regTwo!39790 r1!5845))) b!7492500))

(assert (= (and b!7492289 ((_ is Union!19639) (regTwo!39790 r1!5845))) b!7492501))

(declare-fun b!7492505 () Bool)

(declare-fun e!4467753 () Bool)

(declare-fun tp!2174725 () Bool)

(declare-fun tp!2174723 () Bool)

(assert (=> b!7492505 (= e!4467753 (and tp!2174725 tp!2174723))))

(declare-fun b!7492504 () Bool)

(declare-fun tp!2174726 () Bool)

(assert (=> b!7492504 (= e!4467753 tp!2174726)))

(assert (=> b!7492277 (= tp!2174696 e!4467753)))

(declare-fun b!7492503 () Bool)

(declare-fun tp!2174722 () Bool)

(declare-fun tp!2174724 () Bool)

(assert (=> b!7492503 (= e!4467753 (and tp!2174722 tp!2174724))))

(declare-fun b!7492502 () Bool)

(assert (=> b!7492502 (= e!4467753 tp_is_empty!49567)))

(assert (= (and b!7492277 ((_ is ElementMatch!19639) (regOne!39791 r2!5783))) b!7492502))

(assert (= (and b!7492277 ((_ is Concat!28484) (regOne!39791 r2!5783))) b!7492503))

(assert (= (and b!7492277 ((_ is Star!19639) (regOne!39791 r2!5783))) b!7492504))

(assert (= (and b!7492277 ((_ is Union!19639) (regOne!39791 r2!5783))) b!7492505))

(declare-fun b!7492509 () Bool)

(declare-fun e!4467754 () Bool)

(declare-fun tp!2174730 () Bool)

(declare-fun tp!2174728 () Bool)

(assert (=> b!7492509 (= e!4467754 (and tp!2174730 tp!2174728))))

(declare-fun b!7492508 () Bool)

(declare-fun tp!2174731 () Bool)

(assert (=> b!7492508 (= e!4467754 tp!2174731)))

(assert (=> b!7492277 (= tp!2174693 e!4467754)))

(declare-fun b!7492507 () Bool)

(declare-fun tp!2174727 () Bool)

(declare-fun tp!2174729 () Bool)

(assert (=> b!7492507 (= e!4467754 (and tp!2174727 tp!2174729))))

(declare-fun b!7492506 () Bool)

(assert (=> b!7492506 (= e!4467754 tp_is_empty!49567)))

(assert (= (and b!7492277 ((_ is ElementMatch!19639) (regTwo!39791 r2!5783))) b!7492506))

(assert (= (and b!7492277 ((_ is Concat!28484) (regTwo!39791 r2!5783))) b!7492507))

(assert (= (and b!7492277 ((_ is Star!19639) (regTwo!39791 r2!5783))) b!7492508))

(assert (= (and b!7492277 ((_ is Union!19639) (regTwo!39791 r2!5783))) b!7492509))

(declare-fun b!7492513 () Bool)

(declare-fun e!4467755 () Bool)

(declare-fun tp!2174735 () Bool)

(declare-fun tp!2174733 () Bool)

(assert (=> b!7492513 (= e!4467755 (and tp!2174735 tp!2174733))))

(declare-fun b!7492512 () Bool)

(declare-fun tp!2174736 () Bool)

(assert (=> b!7492512 (= e!4467755 tp!2174736)))

(assert (=> b!7492283 (= tp!2174689 e!4467755)))

(declare-fun b!7492511 () Bool)

(declare-fun tp!2174732 () Bool)

(declare-fun tp!2174734 () Bool)

(assert (=> b!7492511 (= e!4467755 (and tp!2174732 tp!2174734))))

(declare-fun b!7492510 () Bool)

(assert (=> b!7492510 (= e!4467755 tp_is_empty!49567)))

(assert (= (and b!7492283 ((_ is ElementMatch!19639) (reg!19968 rTail!78))) b!7492510))

(assert (= (and b!7492283 ((_ is Concat!28484) (reg!19968 rTail!78))) b!7492511))

(assert (= (and b!7492283 ((_ is Star!19639) (reg!19968 rTail!78))) b!7492512))

(assert (= (and b!7492283 ((_ is Union!19639) (reg!19968 rTail!78))) b!7492513))

(declare-fun b!7492517 () Bool)

(declare-fun e!4467756 () Bool)

(declare-fun tp!2174740 () Bool)

(declare-fun tp!2174738 () Bool)

(assert (=> b!7492517 (= e!4467756 (and tp!2174740 tp!2174738))))

(declare-fun b!7492516 () Bool)

(declare-fun tp!2174741 () Bool)

(assert (=> b!7492516 (= e!4467756 tp!2174741)))

(assert (=> b!7492278 (= tp!2174692 e!4467756)))

(declare-fun b!7492515 () Bool)

(declare-fun tp!2174737 () Bool)

(declare-fun tp!2174739 () Bool)

(assert (=> b!7492515 (= e!4467756 (and tp!2174737 tp!2174739))))

(declare-fun b!7492514 () Bool)

(assert (=> b!7492514 (= e!4467756 tp_is_empty!49567)))

(assert (= (and b!7492278 ((_ is ElementMatch!19639) (reg!19968 r1!5845))) b!7492514))

(assert (= (and b!7492278 ((_ is Concat!28484) (reg!19968 r1!5845))) b!7492515))

(assert (= (and b!7492278 ((_ is Star!19639) (reg!19968 r1!5845))) b!7492516))

(assert (= (and b!7492278 ((_ is Union!19639) (reg!19968 r1!5845))) b!7492517))

(declare-fun b!7492521 () Bool)

(declare-fun e!4467757 () Bool)

(declare-fun tp!2174745 () Bool)

(declare-fun tp!2174743 () Bool)

(assert (=> b!7492521 (= e!4467757 (and tp!2174745 tp!2174743))))

(declare-fun b!7492520 () Bool)

(declare-fun tp!2174746 () Bool)

(assert (=> b!7492520 (= e!4467757 tp!2174746)))

(assert (=> b!7492281 (= tp!2174694 e!4467757)))

(declare-fun b!7492519 () Bool)

(declare-fun tp!2174742 () Bool)

(declare-fun tp!2174744 () Bool)

(assert (=> b!7492519 (= e!4467757 (and tp!2174742 tp!2174744))))

(declare-fun b!7492518 () Bool)

(assert (=> b!7492518 (= e!4467757 tp_is_empty!49567)))

(assert (= (and b!7492281 ((_ is ElementMatch!19639) (regOne!39790 rTail!78))) b!7492518))

(assert (= (and b!7492281 ((_ is Concat!28484) (regOne!39790 rTail!78))) b!7492519))

(assert (= (and b!7492281 ((_ is Star!19639) (regOne!39790 rTail!78))) b!7492520))

(assert (= (and b!7492281 ((_ is Union!19639) (regOne!39790 rTail!78))) b!7492521))

(declare-fun b!7492525 () Bool)

(declare-fun e!4467758 () Bool)

(declare-fun tp!2174750 () Bool)

(declare-fun tp!2174748 () Bool)

(assert (=> b!7492525 (= e!4467758 (and tp!2174750 tp!2174748))))

(declare-fun b!7492524 () Bool)

(declare-fun tp!2174751 () Bool)

(assert (=> b!7492524 (= e!4467758 tp!2174751)))

(assert (=> b!7492281 (= tp!2174700 e!4467758)))

(declare-fun b!7492523 () Bool)

(declare-fun tp!2174747 () Bool)

(declare-fun tp!2174749 () Bool)

(assert (=> b!7492523 (= e!4467758 (and tp!2174747 tp!2174749))))

(declare-fun b!7492522 () Bool)

(assert (=> b!7492522 (= e!4467758 tp_is_empty!49567)))

(assert (= (and b!7492281 ((_ is ElementMatch!19639) (regTwo!39790 rTail!78))) b!7492522))

(assert (= (and b!7492281 ((_ is Concat!28484) (regTwo!39790 rTail!78))) b!7492523))

(assert (= (and b!7492281 ((_ is Star!19639) (regTwo!39790 rTail!78))) b!7492524))

(assert (= (and b!7492281 ((_ is Union!19639) (regTwo!39790 rTail!78))) b!7492525))

(declare-fun b!7492530 () Bool)

(declare-fun e!4467761 () Bool)

(declare-fun tp!2174754 () Bool)

(assert (=> b!7492530 (= e!4467761 (and tp_is_empty!49567 tp!2174754))))

(assert (=> b!7492292 (= tp!2174695 e!4467761)))

(assert (= (and b!7492292 ((_ is Cons!72229) (t!386922 s!13591))) b!7492530))

(declare-fun b!7492534 () Bool)

(declare-fun e!4467762 () Bool)

(declare-fun tp!2174758 () Bool)

(declare-fun tp!2174756 () Bool)

(assert (=> b!7492534 (= e!4467762 (and tp!2174758 tp!2174756))))

(declare-fun b!7492533 () Bool)

(declare-fun tp!2174759 () Bool)

(assert (=> b!7492533 (= e!4467762 tp!2174759)))

(assert (=> b!7492287 (= tp!2174687 e!4467762)))

(declare-fun b!7492532 () Bool)

(declare-fun tp!2174755 () Bool)

(declare-fun tp!2174757 () Bool)

(assert (=> b!7492532 (= e!4467762 (and tp!2174755 tp!2174757))))

(declare-fun b!7492531 () Bool)

(assert (=> b!7492531 (= e!4467762 tp_is_empty!49567)))

(assert (= (and b!7492287 ((_ is ElementMatch!19639) (regOne!39791 rTail!78))) b!7492531))

(assert (= (and b!7492287 ((_ is Concat!28484) (regOne!39791 rTail!78))) b!7492532))

(assert (= (and b!7492287 ((_ is Star!19639) (regOne!39791 rTail!78))) b!7492533))

(assert (= (and b!7492287 ((_ is Union!19639) (regOne!39791 rTail!78))) b!7492534))

(declare-fun b!7492538 () Bool)

(declare-fun e!4467763 () Bool)

(declare-fun tp!2174763 () Bool)

(declare-fun tp!2174761 () Bool)

(assert (=> b!7492538 (= e!4467763 (and tp!2174763 tp!2174761))))

(declare-fun b!7492537 () Bool)

(declare-fun tp!2174764 () Bool)

(assert (=> b!7492537 (= e!4467763 tp!2174764)))

(assert (=> b!7492287 (= tp!2174686 e!4467763)))

(declare-fun b!7492536 () Bool)

(declare-fun tp!2174760 () Bool)

(declare-fun tp!2174762 () Bool)

(assert (=> b!7492536 (= e!4467763 (and tp!2174760 tp!2174762))))

(declare-fun b!7492535 () Bool)

(assert (=> b!7492535 (= e!4467763 tp_is_empty!49567)))

(assert (= (and b!7492287 ((_ is ElementMatch!19639) (regTwo!39791 rTail!78))) b!7492535))

(assert (= (and b!7492287 ((_ is Concat!28484) (regTwo!39791 rTail!78))) b!7492536))

(assert (= (and b!7492287 ((_ is Star!19639) (regTwo!39791 rTail!78))) b!7492537))

(assert (= (and b!7492287 ((_ is Union!19639) (regTwo!39791 rTail!78))) b!7492538))

(declare-fun b!7492542 () Bool)

(declare-fun e!4467764 () Bool)

(declare-fun tp!2174768 () Bool)

(declare-fun tp!2174766 () Bool)

(assert (=> b!7492542 (= e!4467764 (and tp!2174768 tp!2174766))))

(declare-fun b!7492541 () Bool)

(declare-fun tp!2174769 () Bool)

(assert (=> b!7492541 (= e!4467764 tp!2174769)))

(assert (=> b!7492282 (= tp!2174701 e!4467764)))

(declare-fun b!7492540 () Bool)

(declare-fun tp!2174765 () Bool)

(declare-fun tp!2174767 () Bool)

(assert (=> b!7492540 (= e!4467764 (and tp!2174765 tp!2174767))))

(declare-fun b!7492539 () Bool)

(assert (=> b!7492539 (= e!4467764 tp_is_empty!49567)))

(assert (= (and b!7492282 ((_ is ElementMatch!19639) (regOne!39790 r2!5783))) b!7492539))

(assert (= (and b!7492282 ((_ is Concat!28484) (regOne!39790 r2!5783))) b!7492540))

(assert (= (and b!7492282 ((_ is Star!19639) (regOne!39790 r2!5783))) b!7492541))

(assert (= (and b!7492282 ((_ is Union!19639) (regOne!39790 r2!5783))) b!7492542))

(declare-fun b!7492546 () Bool)

(declare-fun e!4467765 () Bool)

(declare-fun tp!2174773 () Bool)

(declare-fun tp!2174771 () Bool)

(assert (=> b!7492546 (= e!4467765 (and tp!2174773 tp!2174771))))

(declare-fun b!7492545 () Bool)

(declare-fun tp!2174774 () Bool)

(assert (=> b!7492545 (= e!4467765 tp!2174774)))

(assert (=> b!7492282 (= tp!2174697 e!4467765)))

(declare-fun b!7492544 () Bool)

(declare-fun tp!2174770 () Bool)

(declare-fun tp!2174772 () Bool)

(assert (=> b!7492544 (= e!4467765 (and tp!2174770 tp!2174772))))

(declare-fun b!7492543 () Bool)

(assert (=> b!7492543 (= e!4467765 tp_is_empty!49567)))

(assert (= (and b!7492282 ((_ is ElementMatch!19639) (regTwo!39790 r2!5783))) b!7492543))

(assert (= (and b!7492282 ((_ is Concat!28484) (regTwo!39790 r2!5783))) b!7492544))

(assert (= (and b!7492282 ((_ is Star!19639) (regTwo!39790 r2!5783))) b!7492545))

(assert (= (and b!7492282 ((_ is Union!19639) (regTwo!39790 r2!5783))) b!7492546))

(declare-fun b!7492550 () Bool)

(declare-fun e!4467766 () Bool)

(declare-fun tp!2174778 () Bool)

(declare-fun tp!2174776 () Bool)

(assert (=> b!7492550 (= e!4467766 (and tp!2174778 tp!2174776))))

(declare-fun b!7492549 () Bool)

(declare-fun tp!2174779 () Bool)

(assert (=> b!7492549 (= e!4467766 tp!2174779)))

(assert (=> b!7492291 (= tp!2174688 e!4467766)))

(declare-fun b!7492548 () Bool)

(declare-fun tp!2174775 () Bool)

(declare-fun tp!2174777 () Bool)

(assert (=> b!7492548 (= e!4467766 (and tp!2174775 tp!2174777))))

(declare-fun b!7492547 () Bool)

(assert (=> b!7492547 (= e!4467766 tp_is_empty!49567)))

(assert (= (and b!7492291 ((_ is ElementMatch!19639) (reg!19968 r2!5783))) b!7492547))

(assert (= (and b!7492291 ((_ is Concat!28484) (reg!19968 r2!5783))) b!7492548))

(assert (= (and b!7492291 ((_ is Star!19639) (reg!19968 r2!5783))) b!7492549))

(assert (= (and b!7492291 ((_ is Union!19639) (reg!19968 r2!5783))) b!7492550))

(declare-fun b!7492554 () Bool)

(declare-fun e!4467767 () Bool)

(declare-fun tp!2174783 () Bool)

(declare-fun tp!2174781 () Bool)

(assert (=> b!7492554 (= e!4467767 (and tp!2174783 tp!2174781))))

(declare-fun b!7492553 () Bool)

(declare-fun tp!2174784 () Bool)

(assert (=> b!7492553 (= e!4467767 tp!2174784)))

(assert (=> b!7492286 (= tp!2174691 e!4467767)))

(declare-fun b!7492552 () Bool)

(declare-fun tp!2174780 () Bool)

(declare-fun tp!2174782 () Bool)

(assert (=> b!7492552 (= e!4467767 (and tp!2174780 tp!2174782))))

(declare-fun b!7492551 () Bool)

(assert (=> b!7492551 (= e!4467767 tp_is_empty!49567)))

(assert (= (and b!7492286 ((_ is ElementMatch!19639) (regOne!39791 r1!5845))) b!7492551))

(assert (= (and b!7492286 ((_ is Concat!28484) (regOne!39791 r1!5845))) b!7492552))

(assert (= (and b!7492286 ((_ is Star!19639) (regOne!39791 r1!5845))) b!7492553))

(assert (= (and b!7492286 ((_ is Union!19639) (regOne!39791 r1!5845))) b!7492554))

(declare-fun b!7492558 () Bool)

(declare-fun e!4467768 () Bool)

(declare-fun tp!2174788 () Bool)

(declare-fun tp!2174786 () Bool)

(assert (=> b!7492558 (= e!4467768 (and tp!2174788 tp!2174786))))

(declare-fun b!7492557 () Bool)

(declare-fun tp!2174789 () Bool)

(assert (=> b!7492557 (= e!4467768 tp!2174789)))

(assert (=> b!7492286 (= tp!2174699 e!4467768)))

(declare-fun b!7492556 () Bool)

(declare-fun tp!2174785 () Bool)

(declare-fun tp!2174787 () Bool)

(assert (=> b!7492556 (= e!4467768 (and tp!2174785 tp!2174787))))

(declare-fun b!7492555 () Bool)

(assert (=> b!7492555 (= e!4467768 tp_is_empty!49567)))

(assert (= (and b!7492286 ((_ is ElementMatch!19639) (regTwo!39791 r1!5845))) b!7492555))

(assert (= (and b!7492286 ((_ is Concat!28484) (regTwo!39791 r1!5845))) b!7492556))

(assert (= (and b!7492286 ((_ is Star!19639) (regTwo!39791 r1!5845))) b!7492557))

(assert (= (and b!7492286 ((_ is Union!19639) (regTwo!39791 r1!5845))) b!7492558))

(check-sat (not b!7492544) (not b!7492542) (not b!7492521) (not b!7492505) (not b!7492512) (not b!7492495) (not b!7492411) (not b!7492354) (not b!7492509) (not b!7492532) (not b!7492448) (not b!7492548) (not d!2301409) (not b!7492515) (not bm!687806) (not bm!687793) (not b!7492538) (not b!7492504) (not b!7492536) (not bm!687812) (not b!7492475) (not b!7492369) (not b!7492553) (not b!7492497) (not b!7492422) (not b!7492405) (not b!7492550) (not b!7492429) (not b!7492519) (not b!7492558) (not bm!687805) (not b!7492546) (not b!7492530) (not b!7492524) (not b!7492541) tp_is_empty!49567 (not b!7492511) (not bm!687815) (not b!7492537) (not b!7492540) (not b!7492508) (not b!7492406) (not b!7492525) (not d!2301417) (not bm!687811) (not b!7492552) (not b!7492516) (not b!7492420) (not b!7492419) (not d!2301415) (not b!7492556) (not b!7492554) (not b!7492557) (not d!2301413) (not bm!687808) (not b!7492533) (not b!7492501) (not b!7492513) (not b!7492412) (not bm!687791) (not bm!687797) (not b!7492503) (not bm!687792) (not b!7492348) (not b!7492545) (not bm!687814) (not b!7492500) (not b!7492457) (not b!7492496) (not b!7492425) (not b!7492507) (not bm!687809) (not bm!687790) (not b!7492363) (not b!7492520) (not b!7492408) (not b!7492549) (not b!7492499) (not b!7492517) (not b!7492415) (not b!7492466) (not b!7492426) (not b!7492534) (not b!7492523) (not bm!687796))
(check-sat)
