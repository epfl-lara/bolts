; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295796 () Bool)

(assert start!295796)

(declare-fun b!3137199 () Bool)

(declare-fun e!1957368 () Bool)

(declare-fun tp_is_empty!16853 () Bool)

(declare-fun tp!981984 () Bool)

(assert (=> b!3137199 (= e!1957368 (and tp_is_empty!16853 tp!981984))))

(declare-fun res!1281973 () Bool)

(declare-fun e!1957370 () Bool)

(assert (=> start!295796 (=> (not res!1281973) (not e!1957370))))

(declare-datatypes ((C!19476 0))(
  ( (C!19477 (val!11774 Int)) )
))
(declare-datatypes ((Regex!9645 0))(
  ( (ElementMatch!9645 (c!527237 C!19476)) (Concat!14966 (regOne!19802 Regex!9645) (regTwo!19802 Regex!9645)) (EmptyExpr!9645) (Star!9645 (reg!9974 Regex!9645)) (EmptyLang!9645) (Union!9645 (regOne!19803 Regex!9645) (regTwo!19803 Regex!9645)) )
))
(declare-fun r!17423 () Regex!9645)

(declare-fun validRegex!4378 (Regex!9645) Bool)

(assert (=> start!295796 (= res!1281973 (validRegex!4378 r!17423))))

(assert (=> start!295796 e!1957370))

(declare-fun e!1957371 () Bool)

(assert (=> start!295796 e!1957371))

(assert (=> start!295796 e!1957368))

(declare-fun b!3137200 () Bool)

(declare-fun e!1957369 () Bool)

(declare-datatypes ((List!35510 0))(
  ( (Nil!35386) (Cons!35386 (h!40806 C!19476) (t!234575 List!35510)) )
))
(declare-fun s!11993 () List!35510)

(declare-fun matchR!4527 (Regex!9645 List!35510) Bool)

(declare-fun simplify!600 (Regex!9645) Regex!9645)

(assert (=> b!3137200 (= e!1957369 (not (matchR!4527 (simplify!600 r!17423) s!11993)))))

(declare-fun b!3137201 () Bool)

(declare-fun tp!981986 () Bool)

(declare-fun tp!981985 () Bool)

(assert (=> b!3137201 (= e!1957371 (and tp!981986 tp!981985))))

(declare-fun b!3137202 () Bool)

(assert (=> b!3137202 (= e!1957371 tp_is_empty!16853)))

(declare-fun b!3137203 () Bool)

(declare-fun tp!981989 () Bool)

(declare-fun tp!981988 () Bool)

(assert (=> b!3137203 (= e!1957371 (and tp!981989 tp!981988))))

(declare-fun b!3137204 () Bool)

(declare-fun tp!981987 () Bool)

(assert (=> b!3137204 (= e!1957371 tp!981987)))

(declare-fun b!3137205 () Bool)

(assert (=> b!3137205 (= e!1957370 (not e!1957369))))

(declare-fun res!1281974 () Bool)

(assert (=> b!3137205 (=> res!1281974 e!1957369)))

(declare-fun lt!1060953 () Bool)

(get-info :version)

(assert (=> b!3137205 (= res!1281974 (or lt!1060953 ((_ is Concat!14966) r!17423) ((_ is Union!9645) r!17423) ((_ is Star!9645) r!17423)))))

(declare-fun matchRSpec!1782 (Regex!9645 List!35510) Bool)

(assert (=> b!3137205 (= lt!1060953 (matchRSpec!1782 r!17423 s!11993))))

(assert (=> b!3137205 (= lt!1060953 (matchR!4527 r!17423 s!11993))))

(declare-datatypes ((Unit!49745 0))(
  ( (Unit!49746) )
))
(declare-fun lt!1060954 () Unit!49745)

(declare-fun mainMatchTheorem!1782 (Regex!9645 List!35510) Unit!49745)

(assert (=> b!3137205 (= lt!1060954 (mainMatchTheorem!1782 r!17423 s!11993))))

(assert (= (and start!295796 res!1281973) b!3137205))

(assert (= (and b!3137205 (not res!1281974)) b!3137200))

(assert (= (and start!295796 ((_ is ElementMatch!9645) r!17423)) b!3137202))

(assert (= (and start!295796 ((_ is Concat!14966) r!17423)) b!3137201))

(assert (= (and start!295796 ((_ is Star!9645) r!17423)) b!3137204))

(assert (= (and start!295796 ((_ is Union!9645) r!17423)) b!3137203))

(assert (= (and start!295796 ((_ is Cons!35386) s!11993)) b!3137199))

(declare-fun m!3417113 () Bool)

(assert (=> start!295796 m!3417113))

(declare-fun m!3417115 () Bool)

(assert (=> b!3137200 m!3417115))

(assert (=> b!3137200 m!3417115))

(declare-fun m!3417117 () Bool)

(assert (=> b!3137200 m!3417117))

(declare-fun m!3417119 () Bool)

(assert (=> b!3137205 m!3417119))

(declare-fun m!3417121 () Bool)

(assert (=> b!3137205 m!3417121))

(declare-fun m!3417123 () Bool)

(assert (=> b!3137205 m!3417123))

(check-sat (not start!295796) (not b!3137203) (not b!3137204) (not b!3137199) tp_is_empty!16853 (not b!3137201) (not b!3137200) (not b!3137205))
(check-sat)
(get-model)

(declare-fun b!3137274 () Bool)

(assert (=> b!3137274 true))

(assert (=> b!3137274 true))

(declare-fun bs!539014 () Bool)

(declare-fun b!3137280 () Bool)

(assert (= bs!539014 (and b!3137280 b!3137274)))

(declare-fun lambda!115737 () Int)

(declare-fun lambda!115735 () Int)

(assert (=> bs!539014 (not (= lambda!115737 lambda!115735))))

(assert (=> b!3137280 true))

(assert (=> b!3137280 true))

(declare-fun b!3137270 () Bool)

(declare-fun e!1957413 () Bool)

(assert (=> b!3137270 (= e!1957413 (matchRSpec!1782 (regTwo!19803 r!17423) s!11993))))

(declare-fun b!3137271 () Bool)

(declare-fun e!1957409 () Bool)

(assert (=> b!3137271 (= e!1957409 e!1957413)))

(declare-fun res!1282008 () Bool)

(assert (=> b!3137271 (= res!1282008 (matchRSpec!1782 (regOne!19803 r!17423) s!11993))))

(assert (=> b!3137271 (=> res!1282008 e!1957413)))

(declare-fun b!3137272 () Bool)

(declare-fun e!1957408 () Bool)

(declare-fun e!1957414 () Bool)

(assert (=> b!3137272 (= e!1957408 e!1957414)))

(declare-fun res!1282009 () Bool)

(assert (=> b!3137272 (= res!1282009 (not ((_ is EmptyLang!9645) r!17423)))))

(assert (=> b!3137272 (=> (not res!1282009) (not e!1957414))))

(declare-fun d!865482 () Bool)

(declare-fun c!527257 () Bool)

(assert (=> d!865482 (= c!527257 ((_ is EmptyExpr!9645) r!17423))))

(assert (=> d!865482 (= (matchRSpec!1782 r!17423 s!11993) e!1957408)))

(declare-fun bm!224948 () Bool)

(declare-fun call!224953 () Bool)

(declare-fun isEmpty!19743 (List!35510) Bool)

(assert (=> bm!224948 (= call!224953 (isEmpty!19743 s!11993))))

(declare-fun b!3137273 () Bool)

(declare-fun res!1282007 () Bool)

(declare-fun e!1957410 () Bool)

(assert (=> b!3137273 (=> res!1282007 e!1957410)))

(assert (=> b!3137273 (= res!1282007 call!224953)))

(declare-fun e!1957412 () Bool)

(assert (=> b!3137273 (= e!1957412 e!1957410)))

(declare-fun call!224954 () Bool)

(assert (=> b!3137274 (= e!1957410 call!224954)))

(declare-fun b!3137275 () Bool)

(declare-fun c!527255 () Bool)

(assert (=> b!3137275 (= c!527255 ((_ is ElementMatch!9645) r!17423))))

(declare-fun e!1957411 () Bool)

(assert (=> b!3137275 (= e!1957414 e!1957411)))

(declare-fun b!3137276 () Bool)

(assert (=> b!3137276 (= e!1957409 e!1957412)))

(declare-fun c!527256 () Bool)

(assert (=> b!3137276 (= c!527256 ((_ is Star!9645) r!17423))))

(declare-fun bm!224949 () Bool)

(declare-fun Exists!1899 (Int) Bool)

(assert (=> bm!224949 (= call!224954 (Exists!1899 (ite c!527256 lambda!115735 lambda!115737)))))

(declare-fun b!3137277 () Bool)

(assert (=> b!3137277 (= e!1957411 (= s!11993 (Cons!35386 (c!527237 r!17423) Nil!35386)))))

(declare-fun b!3137278 () Bool)

(assert (=> b!3137278 (= e!1957408 call!224953)))

(declare-fun b!3137279 () Bool)

(declare-fun c!527254 () Bool)

(assert (=> b!3137279 (= c!527254 ((_ is Union!9645) r!17423))))

(assert (=> b!3137279 (= e!1957411 e!1957409)))

(assert (=> b!3137280 (= e!1957412 call!224954)))

(assert (= (and d!865482 c!527257) b!3137278))

(assert (= (and d!865482 (not c!527257)) b!3137272))

(assert (= (and b!3137272 res!1282009) b!3137275))

(assert (= (and b!3137275 c!527255) b!3137277))

(assert (= (and b!3137275 (not c!527255)) b!3137279))

(assert (= (and b!3137279 c!527254) b!3137271))

(assert (= (and b!3137279 (not c!527254)) b!3137276))

(assert (= (and b!3137271 (not res!1282008)) b!3137270))

(assert (= (and b!3137276 c!527256) b!3137273))

(assert (= (and b!3137276 (not c!527256)) b!3137280))

(assert (= (and b!3137273 (not res!1282007)) b!3137274))

(assert (= (or b!3137274 b!3137280) bm!224949))

(assert (= (or b!3137278 b!3137273) bm!224948))

(declare-fun m!3417125 () Bool)

(assert (=> b!3137270 m!3417125))

(declare-fun m!3417127 () Bool)

(assert (=> b!3137271 m!3417127))

(declare-fun m!3417129 () Bool)

(assert (=> bm!224948 m!3417129))

(declare-fun m!3417131 () Bool)

(assert (=> bm!224949 m!3417131))

(assert (=> b!3137205 d!865482))

(declare-fun b!3137356 () Bool)

(declare-fun e!1957455 () Bool)

(declare-fun e!1957453 () Bool)

(assert (=> b!3137356 (= e!1957455 e!1957453)))

(declare-fun res!1282051 () Bool)

(assert (=> b!3137356 (=> res!1282051 e!1957453)))

(declare-fun call!224961 () Bool)

(assert (=> b!3137356 (= res!1282051 call!224961)))

(declare-fun b!3137357 () Bool)

(declare-fun res!1282045 () Bool)

(declare-fun e!1957450 () Bool)

(assert (=> b!3137357 (=> (not res!1282045) (not e!1957450))))

(declare-fun tail!5158 (List!35510) List!35510)

(assert (=> b!3137357 (= res!1282045 (isEmpty!19743 (tail!5158 s!11993)))))

(declare-fun b!3137358 () Bool)

(declare-fun e!1957456 () Bool)

(declare-fun derivativeStep!2873 (Regex!9645 C!19476) Regex!9645)

(declare-fun head!6932 (List!35510) C!19476)

(assert (=> b!3137358 (= e!1957456 (matchR!4527 (derivativeStep!2873 r!17423 (head!6932 s!11993)) (tail!5158 s!11993)))))

(declare-fun b!3137359 () Bool)

(assert (=> b!3137359 (= e!1957450 (= (head!6932 s!11993) (c!527237 r!17423)))))

(declare-fun b!3137360 () Bool)

(declare-fun res!1282048 () Bool)

(assert (=> b!3137360 (=> res!1282048 e!1957453)))

(assert (=> b!3137360 (= res!1282048 (not (isEmpty!19743 (tail!5158 s!11993))))))

(declare-fun b!3137361 () Bool)

(declare-fun e!1957452 () Bool)

(declare-fun e!1957454 () Bool)

(assert (=> b!3137361 (= e!1957452 e!1957454)))

(declare-fun c!527274 () Bool)

(assert (=> b!3137361 (= c!527274 ((_ is EmptyLang!9645) r!17423))))

(declare-fun b!3137363 () Bool)

(declare-fun res!1282046 () Bool)

(declare-fun e!1957451 () Bool)

(assert (=> b!3137363 (=> res!1282046 e!1957451)))

(assert (=> b!3137363 (= res!1282046 (not ((_ is ElementMatch!9645) r!17423)))))

(assert (=> b!3137363 (= e!1957454 e!1957451)))

(declare-fun b!3137364 () Bool)

(assert (=> b!3137364 (= e!1957453 (not (= (head!6932 s!11993) (c!527237 r!17423))))))

(declare-fun b!3137365 () Bool)

(declare-fun lt!1060959 () Bool)

(assert (=> b!3137365 (= e!1957454 (not lt!1060959))))

(declare-fun b!3137366 () Bool)

(declare-fun nullable!3278 (Regex!9645) Bool)

(assert (=> b!3137366 (= e!1957456 (nullable!3278 r!17423))))

(declare-fun b!3137367 () Bool)

(declare-fun res!1282047 () Bool)

(assert (=> b!3137367 (=> (not res!1282047) (not e!1957450))))

(assert (=> b!3137367 (= res!1282047 (not call!224961))))

(declare-fun bm!224956 () Bool)

(assert (=> bm!224956 (= call!224961 (isEmpty!19743 s!11993))))

(declare-fun b!3137362 () Bool)

(declare-fun res!1282052 () Bool)

(assert (=> b!3137362 (=> res!1282052 e!1957451)))

(assert (=> b!3137362 (= res!1282052 e!1957450)))

(declare-fun res!1282049 () Bool)

(assert (=> b!3137362 (=> (not res!1282049) (not e!1957450))))

(assert (=> b!3137362 (= res!1282049 lt!1060959)))

(declare-fun d!865486 () Bool)

(assert (=> d!865486 e!1957452))

(declare-fun c!527275 () Bool)

(assert (=> d!865486 (= c!527275 ((_ is EmptyExpr!9645) r!17423))))

(assert (=> d!865486 (= lt!1060959 e!1957456)))

(declare-fun c!527276 () Bool)

(assert (=> d!865486 (= c!527276 (isEmpty!19743 s!11993))))

(assert (=> d!865486 (validRegex!4378 r!17423)))

(assert (=> d!865486 (= (matchR!4527 r!17423 s!11993) lt!1060959)))

(declare-fun b!3137368 () Bool)

(assert (=> b!3137368 (= e!1957452 (= lt!1060959 call!224961))))

(declare-fun b!3137369 () Bool)

(assert (=> b!3137369 (= e!1957451 e!1957455)))

(declare-fun res!1282050 () Bool)

(assert (=> b!3137369 (=> (not res!1282050) (not e!1957455))))

(assert (=> b!3137369 (= res!1282050 (not lt!1060959))))

(assert (= (and d!865486 c!527276) b!3137366))

(assert (= (and d!865486 (not c!527276)) b!3137358))

(assert (= (and d!865486 c!527275) b!3137368))

(assert (= (and d!865486 (not c!527275)) b!3137361))

(assert (= (and b!3137361 c!527274) b!3137365))

(assert (= (and b!3137361 (not c!527274)) b!3137363))

(assert (= (and b!3137363 (not res!1282046)) b!3137362))

(assert (= (and b!3137362 res!1282049) b!3137367))

(assert (= (and b!3137367 res!1282047) b!3137357))

(assert (= (and b!3137357 res!1282045) b!3137359))

(assert (= (and b!3137362 (not res!1282052)) b!3137369))

(assert (= (and b!3137369 res!1282050) b!3137356))

(assert (= (and b!3137356 (not res!1282051)) b!3137360))

(assert (= (and b!3137360 (not res!1282048)) b!3137364))

(assert (= (or b!3137368 b!3137356 b!3137367) bm!224956))

(assert (=> bm!224956 m!3417129))

(declare-fun m!3417141 () Bool)

(assert (=> b!3137366 m!3417141))

(declare-fun m!3417143 () Bool)

(assert (=> b!3137358 m!3417143))

(assert (=> b!3137358 m!3417143))

(declare-fun m!3417145 () Bool)

(assert (=> b!3137358 m!3417145))

(declare-fun m!3417147 () Bool)

(assert (=> b!3137358 m!3417147))

(assert (=> b!3137358 m!3417145))

(assert (=> b!3137358 m!3417147))

(declare-fun m!3417149 () Bool)

(assert (=> b!3137358 m!3417149))

(assert (=> b!3137364 m!3417143))

(assert (=> b!3137360 m!3417147))

(assert (=> b!3137360 m!3417147))

(declare-fun m!3417153 () Bool)

(assert (=> b!3137360 m!3417153))

(assert (=> b!3137359 m!3417143))

(assert (=> b!3137357 m!3417147))

(assert (=> b!3137357 m!3417147))

(assert (=> b!3137357 m!3417153))

(assert (=> d!865486 m!3417129))

(assert (=> d!865486 m!3417113))

(assert (=> b!3137205 d!865486))

(declare-fun d!865490 () Bool)

(assert (=> d!865490 (= (matchR!4527 r!17423 s!11993) (matchRSpec!1782 r!17423 s!11993))))

(declare-fun lt!1060965 () Unit!49745)

(declare-fun choose!18514 (Regex!9645 List!35510) Unit!49745)

(assert (=> d!865490 (= lt!1060965 (choose!18514 r!17423 s!11993))))

(assert (=> d!865490 (validRegex!4378 r!17423)))

(assert (=> d!865490 (= (mainMatchTheorem!1782 r!17423 s!11993) lt!1060965)))

(declare-fun bs!539016 () Bool)

(assert (= bs!539016 d!865490))

(assert (=> bs!539016 m!3417121))

(assert (=> bs!539016 m!3417119))

(declare-fun m!3417165 () Bool)

(assert (=> bs!539016 m!3417165))

(assert (=> bs!539016 m!3417113))

(assert (=> b!3137205 d!865490))

(declare-fun b!3137384 () Bool)

(declare-fun e!1957469 () Bool)

(declare-fun e!1957467 () Bool)

(assert (=> b!3137384 (= e!1957469 e!1957467)))

(declare-fun res!1282067 () Bool)

(assert (=> b!3137384 (=> res!1282067 e!1957467)))

(declare-fun call!224963 () Bool)

(assert (=> b!3137384 (= res!1282067 call!224963)))

(declare-fun b!3137385 () Bool)

(declare-fun res!1282061 () Bool)

(declare-fun e!1957464 () Bool)

(assert (=> b!3137385 (=> (not res!1282061) (not e!1957464))))

(assert (=> b!3137385 (= res!1282061 (isEmpty!19743 (tail!5158 s!11993)))))

(declare-fun b!3137386 () Bool)

(declare-fun e!1957470 () Bool)

(assert (=> b!3137386 (= e!1957470 (matchR!4527 (derivativeStep!2873 (simplify!600 r!17423) (head!6932 s!11993)) (tail!5158 s!11993)))))

(declare-fun b!3137387 () Bool)

(assert (=> b!3137387 (= e!1957464 (= (head!6932 s!11993) (c!527237 (simplify!600 r!17423))))))

(declare-fun b!3137388 () Bool)

(declare-fun res!1282064 () Bool)

(assert (=> b!3137388 (=> res!1282064 e!1957467)))

(assert (=> b!3137388 (= res!1282064 (not (isEmpty!19743 (tail!5158 s!11993))))))

(declare-fun b!3137389 () Bool)

(declare-fun e!1957466 () Bool)

(declare-fun e!1957468 () Bool)

(assert (=> b!3137389 (= e!1957466 e!1957468)))

(declare-fun c!527280 () Bool)

(assert (=> b!3137389 (= c!527280 ((_ is EmptyLang!9645) (simplify!600 r!17423)))))

(declare-fun b!3137391 () Bool)

(declare-fun res!1282062 () Bool)

(declare-fun e!1957465 () Bool)

(assert (=> b!3137391 (=> res!1282062 e!1957465)))

(assert (=> b!3137391 (= res!1282062 (not ((_ is ElementMatch!9645) (simplify!600 r!17423))))))

(assert (=> b!3137391 (= e!1957468 e!1957465)))

(declare-fun b!3137392 () Bool)

(assert (=> b!3137392 (= e!1957467 (not (= (head!6932 s!11993) (c!527237 (simplify!600 r!17423)))))))

(declare-fun b!3137393 () Bool)

(declare-fun lt!1060967 () Bool)

(assert (=> b!3137393 (= e!1957468 (not lt!1060967))))

(declare-fun b!3137394 () Bool)

(assert (=> b!3137394 (= e!1957470 (nullable!3278 (simplify!600 r!17423)))))

(declare-fun b!3137395 () Bool)

(declare-fun res!1282063 () Bool)

(assert (=> b!3137395 (=> (not res!1282063) (not e!1957464))))

(assert (=> b!3137395 (= res!1282063 (not call!224963))))

(declare-fun bm!224958 () Bool)

(assert (=> bm!224958 (= call!224963 (isEmpty!19743 s!11993))))

(declare-fun b!3137390 () Bool)

(declare-fun res!1282068 () Bool)

(assert (=> b!3137390 (=> res!1282068 e!1957465)))

(assert (=> b!3137390 (= res!1282068 e!1957464)))

(declare-fun res!1282065 () Bool)

(assert (=> b!3137390 (=> (not res!1282065) (not e!1957464))))

(assert (=> b!3137390 (= res!1282065 lt!1060967)))

(declare-fun d!865494 () Bool)

(assert (=> d!865494 e!1957466))

(declare-fun c!527281 () Bool)

(assert (=> d!865494 (= c!527281 ((_ is EmptyExpr!9645) (simplify!600 r!17423)))))

(assert (=> d!865494 (= lt!1060967 e!1957470)))

(declare-fun c!527282 () Bool)

(assert (=> d!865494 (= c!527282 (isEmpty!19743 s!11993))))

(assert (=> d!865494 (validRegex!4378 (simplify!600 r!17423))))

(assert (=> d!865494 (= (matchR!4527 (simplify!600 r!17423) s!11993) lt!1060967)))

(declare-fun b!3137396 () Bool)

(assert (=> b!3137396 (= e!1957466 (= lt!1060967 call!224963))))

(declare-fun b!3137397 () Bool)

(assert (=> b!3137397 (= e!1957465 e!1957469)))

(declare-fun res!1282066 () Bool)

(assert (=> b!3137397 (=> (not res!1282066) (not e!1957469))))

(assert (=> b!3137397 (= res!1282066 (not lt!1060967))))

(assert (= (and d!865494 c!527282) b!3137394))

(assert (= (and d!865494 (not c!527282)) b!3137386))

(assert (= (and d!865494 c!527281) b!3137396))

(assert (= (and d!865494 (not c!527281)) b!3137389))

(assert (= (and b!3137389 c!527280) b!3137393))

(assert (= (and b!3137389 (not c!527280)) b!3137391))

(assert (= (and b!3137391 (not res!1282062)) b!3137390))

(assert (= (and b!3137390 res!1282065) b!3137395))

(assert (= (and b!3137395 res!1282063) b!3137385))

(assert (= (and b!3137385 res!1282061) b!3137387))

(assert (= (and b!3137390 (not res!1282068)) b!3137397))

(assert (= (and b!3137397 res!1282066) b!3137384))

(assert (= (and b!3137384 (not res!1282067)) b!3137388))

(assert (= (and b!3137388 (not res!1282064)) b!3137392))

(assert (= (or b!3137396 b!3137384 b!3137395) bm!224958))

(assert (=> bm!224958 m!3417129))

(assert (=> b!3137394 m!3417115))

(declare-fun m!3417169 () Bool)

(assert (=> b!3137394 m!3417169))

(assert (=> b!3137386 m!3417143))

(assert (=> b!3137386 m!3417115))

(assert (=> b!3137386 m!3417143))

(declare-fun m!3417171 () Bool)

(assert (=> b!3137386 m!3417171))

(assert (=> b!3137386 m!3417147))

(assert (=> b!3137386 m!3417171))

(assert (=> b!3137386 m!3417147))

(declare-fun m!3417173 () Bool)

(assert (=> b!3137386 m!3417173))

(assert (=> b!3137392 m!3417143))

(assert (=> b!3137388 m!3417147))

(assert (=> b!3137388 m!3417147))

(assert (=> b!3137388 m!3417153))

(assert (=> b!3137387 m!3417143))

(assert (=> b!3137385 m!3417147))

(assert (=> b!3137385 m!3417147))

(assert (=> b!3137385 m!3417153))

(assert (=> d!865494 m!3417129))

(assert (=> d!865494 m!3417115))

(declare-fun m!3417181 () Bool)

(assert (=> d!865494 m!3417181))

(assert (=> b!3137200 d!865494))

(declare-fun b!3137512 () Bool)

(declare-fun e!1957546 () Regex!9645)

(declare-fun lt!1060996 () Regex!9645)

(declare-fun lt!1060995 () Regex!9645)

(assert (=> b!3137512 (= e!1957546 (Concat!14966 lt!1060996 lt!1060995))))

(declare-fun call!224994 () Regex!9645)

(declare-fun c!527348 () Bool)

(declare-fun bm!224988 () Bool)

(declare-fun c!527331 () Bool)

(assert (=> bm!224988 (= call!224994 (simplify!600 (ite c!527331 (reg!9974 r!17423) (ite c!527348 (regTwo!19803 r!17423) (regOne!19802 r!17423)))))))

(declare-fun b!3137513 () Bool)

(declare-fun c!527335 () Bool)

(assert (=> b!3137513 (= c!527335 ((_ is EmptyExpr!9645) r!17423))))

(declare-fun e!1957548 () Regex!9645)

(declare-fun e!1957535 () Regex!9645)

(assert (=> b!3137513 (= e!1957548 e!1957535)))

(declare-fun b!3137514 () Bool)

(declare-fun c!527339 () Bool)

(declare-fun e!1957542 () Bool)

(assert (=> b!3137514 (= c!527339 e!1957542)))

(declare-fun res!1282092 () Bool)

(assert (=> b!3137514 (=> res!1282092 e!1957542)))

(declare-fun call!225002 () Bool)

(assert (=> b!3137514 (= res!1282092 call!225002)))

(declare-fun lt!1060993 () Regex!9645)

(assert (=> b!3137514 (= lt!1060993 call!224994)))

(declare-fun e!1957558 () Regex!9645)

(declare-fun e!1957559 () Regex!9645)

(assert (=> b!3137514 (= e!1957558 e!1957559)))

(declare-fun b!3137515 () Bool)

(declare-fun e!1957551 () Regex!9645)

(assert (=> b!3137515 (= e!1957551 lt!1060995)))

(declare-fun d!865498 () Bool)

(declare-fun e!1957549 () Bool)

(assert (=> d!865498 e!1957549))

(declare-fun res!1282090 () Bool)

(assert (=> d!865498 (=> (not res!1282090) (not e!1957549))))

(declare-fun lt!1061000 () Regex!9645)

(assert (=> d!865498 (= res!1282090 (validRegex!4378 lt!1061000))))

(declare-fun e!1957553 () Regex!9645)

(assert (=> d!865498 (= lt!1061000 e!1957553)))

(declare-fun c!527346 () Bool)

(assert (=> d!865498 (= c!527346 ((_ is EmptyLang!9645) r!17423))))

(assert (=> d!865498 (validRegex!4378 r!17423)))

(assert (=> d!865498 (= (simplify!600 r!17423) lt!1061000)))

(declare-fun b!3137516 () Bool)

(assert (=> b!3137516 (= e!1957549 (= (nullable!3278 lt!1061000) (nullable!3278 r!17423)))))

(declare-fun b!3137517 () Bool)

(assert (=> b!3137517 (= e!1957546 lt!1060996)))

(declare-fun bm!224989 () Bool)

(declare-fun call!224995 () Regex!9645)

(assert (=> bm!224989 (= call!224995 call!224994)))

(declare-fun b!3137518 () Bool)

(assert (=> b!3137518 (= e!1957535 EmptyExpr!9645)))

(declare-fun b!3137520 () Bool)

(declare-fun call!224993 () Bool)

(assert (=> b!3137520 (= e!1957542 call!224993)))

(declare-fun b!3137522 () Bool)

(assert (=> b!3137522 (= e!1957553 EmptyLang!9645)))

(declare-fun b!3137524 () Bool)

(declare-fun e!1957555 () Regex!9645)

(declare-fun lt!1061001 () Regex!9645)

(assert (=> b!3137524 (= e!1957555 lt!1061001)))

(declare-fun b!3137526 () Bool)

(declare-fun e!1957534 () Regex!9645)

(declare-fun e!1957539 () Regex!9645)

(assert (=> b!3137526 (= e!1957534 e!1957539)))

(declare-fun call!224997 () Regex!9645)

(assert (=> b!3137526 (= lt!1061001 call!224997)))

(declare-fun lt!1061002 () Regex!9645)

(assert (=> b!3137526 (= lt!1061002 call!224995)))

(declare-fun c!527337 () Bool)

(declare-fun call!224996 () Bool)

(assert (=> b!3137526 (= c!527337 call!224996)))

(declare-fun bm!224990 () Bool)

(assert (=> bm!224990 (= call!224997 (simplify!600 (ite c!527348 (regOne!19803 r!17423) (regTwo!19802 r!17423))))))

(declare-fun b!3137529 () Bool)

(assert (=> b!3137529 (= c!527348 ((_ is Union!9645) r!17423))))

(assert (=> b!3137529 (= e!1957558 e!1957534)))

(declare-fun b!3137531 () Bool)

(assert (=> b!3137531 (= e!1957551 e!1957546)))

(declare-fun c!527343 () Bool)

(assert (=> b!3137531 (= c!527343 call!224993)))

(declare-fun b!3137533 () Bool)

(assert (=> b!3137533 (= e!1957559 (Star!9645 lt!1060993))))

(declare-fun b!3137535 () Bool)

(declare-fun e!1957547 () Bool)

(declare-fun call!225000 () Bool)

(assert (=> b!3137535 (= e!1957547 call!225000)))

(declare-fun b!3137537 () Bool)

(declare-fun c!527341 () Bool)

(declare-fun isEmptyExpr!690 (Regex!9645) Bool)

(assert (=> b!3137537 (= c!527341 (isEmptyExpr!690 lt!1060996))))

(declare-fun e!1957552 () Regex!9645)

(assert (=> b!3137537 (= e!1957552 e!1957551)))

(declare-fun b!3137538 () Bool)

(assert (=> b!3137538 (= e!1957548 r!17423)))

(declare-fun b!3137540 () Bool)

(assert (=> b!3137540 (= e!1957534 e!1957552)))

(assert (=> b!3137540 (= lt!1060996 call!224995)))

(assert (=> b!3137540 (= lt!1060995 call!224997)))

(declare-fun res!1282089 () Bool)

(assert (=> b!3137540 (= res!1282089 call!224996)))

(assert (=> b!3137540 (=> res!1282089 e!1957547)))

(declare-fun c!527334 () Bool)

(assert (=> b!3137540 (= c!527334 e!1957547)))

(declare-fun b!3137541 () Bool)

(assert (=> b!3137541 (= e!1957559 EmptyExpr!9645)))

(declare-fun bm!224993 () Bool)

(declare-fun isEmptyLang!696 (Regex!9645) Bool)

(assert (=> bm!224993 (= call!225002 (isEmptyLang!696 (ite c!527331 lt!1060993 (ite c!527348 lt!1061002 lt!1060995))))))

(declare-fun bm!224994 () Bool)

(assert (=> bm!224994 (= call!225000 call!225002)))

(declare-fun b!3137545 () Bool)

(assert (=> b!3137545 (= e!1957535 e!1957558)))

(assert (=> b!3137545 (= c!527331 ((_ is Star!9645) r!17423))))

(declare-fun b!3137547 () Bool)

(assert (=> b!3137547 (= e!1957553 e!1957548)))

(declare-fun c!527330 () Bool)

(assert (=> b!3137547 (= c!527330 ((_ is ElementMatch!9645) r!17423))))

(declare-fun bm!224996 () Bool)

(assert (=> bm!224996 (= call!224996 (isEmptyLang!696 (ite c!527348 lt!1061001 lt!1060996)))))

(declare-fun b!3137549 () Bool)

(assert (=> b!3137549 (= e!1957555 (Union!9645 lt!1061001 lt!1061002))))

(declare-fun b!3137551 () Bool)

(assert (=> b!3137551 (= e!1957552 EmptyLang!9645)))

(declare-fun b!3137553 () Bool)

(assert (=> b!3137553 (= e!1957539 lt!1061002)))

(declare-fun bm!224998 () Bool)

(assert (=> bm!224998 (= call!224993 (isEmptyExpr!690 (ite c!527331 lt!1060993 lt!1060995)))))

(declare-fun b!3137555 () Bool)

(declare-fun c!527332 () Bool)

(assert (=> b!3137555 (= c!527332 call!225000)))

(assert (=> b!3137555 (= e!1957539 e!1957555)))

(assert (= (and d!865498 c!527346) b!3137522))

(assert (= (and d!865498 (not c!527346)) b!3137547))

(assert (= (and b!3137547 c!527330) b!3137538))

(assert (= (and b!3137547 (not c!527330)) b!3137513))

(assert (= (and b!3137513 c!527335) b!3137518))

(assert (= (and b!3137513 (not c!527335)) b!3137545))

(assert (= (and b!3137545 c!527331) b!3137514))

(assert (= (and b!3137545 (not c!527331)) b!3137529))

(assert (= (and b!3137514 (not res!1282092)) b!3137520))

(assert (= (and b!3137514 c!527339) b!3137541))

(assert (= (and b!3137514 (not c!527339)) b!3137533))

(assert (= (and b!3137529 c!527348) b!3137526))

(assert (= (and b!3137529 (not c!527348)) b!3137540))

(assert (= (and b!3137526 c!527337) b!3137553))

(assert (= (and b!3137526 (not c!527337)) b!3137555))

(assert (= (and b!3137555 c!527332) b!3137524))

(assert (= (and b!3137555 (not c!527332)) b!3137549))

(assert (= (and b!3137540 (not res!1282089)) b!3137535))

(assert (= (and b!3137540 c!527334) b!3137551))

(assert (= (and b!3137540 (not c!527334)) b!3137537))

(assert (= (and b!3137537 c!527341) b!3137515))

(assert (= (and b!3137537 (not c!527341)) b!3137531))

(assert (= (and b!3137531 c!527343) b!3137517))

(assert (= (and b!3137531 (not c!527343)) b!3137512))

(assert (= (or b!3137526 b!3137540) bm!224990))

(assert (= (or b!3137526 b!3137540) bm!224989))

(assert (= (or b!3137555 b!3137535) bm!224994))

(assert (= (or b!3137526 b!3137540) bm!224996))

(assert (= (or b!3137520 b!3137531) bm!224998))

(assert (= (or b!3137514 bm!224989) bm!224988))

(assert (= (or b!3137514 bm!224994) bm!224993))

(assert (= (and d!865498 res!1282090) b!3137516))

(declare-fun m!3417185 () Bool)

(assert (=> d!865498 m!3417185))

(assert (=> d!865498 m!3417113))

(declare-fun m!3417191 () Bool)

(assert (=> bm!224990 m!3417191))

(declare-fun m!3417193 () Bool)

(assert (=> b!3137537 m!3417193))

(declare-fun m!3417197 () Bool)

(assert (=> bm!224998 m!3417197))

(declare-fun m!3417201 () Bool)

(assert (=> bm!224988 m!3417201))

(declare-fun m!3417205 () Bool)

(assert (=> b!3137516 m!3417205))

(assert (=> b!3137516 m!3417141))

(declare-fun m!3417211 () Bool)

(assert (=> bm!224993 m!3417211))

(declare-fun m!3417215 () Bool)

(assert (=> bm!224996 m!3417215))

(assert (=> b!3137200 d!865498))

(declare-fun bm!225017 () Bool)

(declare-fun call!225024 () Bool)

(declare-fun call!225023 () Bool)

(assert (=> bm!225017 (= call!225024 call!225023)))

(declare-fun b!3137607 () Bool)

(declare-fun res!1282120 () Bool)

(declare-fun e!1957599 () Bool)

(assert (=> b!3137607 (=> (not res!1282120) (not e!1957599))))

(assert (=> b!3137607 (= res!1282120 call!225024)))

(declare-fun e!1957602 () Bool)

(assert (=> b!3137607 (= e!1957602 e!1957599)))

(declare-fun b!3137608 () Bool)

(declare-fun e!1957603 () Bool)

(assert (=> b!3137608 (= e!1957603 e!1957602)))

(declare-fun c!527363 () Bool)

(assert (=> b!3137608 (= c!527363 ((_ is Union!9645) r!17423))))

(declare-fun b!3137609 () Bool)

(declare-fun e!1957600 () Bool)

(assert (=> b!3137609 (= e!1957600 call!225023)))

(declare-fun d!865504 () Bool)

(declare-fun res!1282124 () Bool)

(declare-fun e!1957597 () Bool)

(assert (=> d!865504 (=> res!1282124 e!1957597)))

(assert (=> d!865504 (= res!1282124 ((_ is ElementMatch!9645) r!17423))))

(assert (=> d!865504 (= (validRegex!4378 r!17423) e!1957597)))

(declare-fun b!3137610 () Bool)

(declare-fun e!1957598 () Bool)

(assert (=> b!3137610 (= e!1957598 call!225024)))

(declare-fun b!3137611 () Bool)

(assert (=> b!3137611 (= e!1957603 e!1957600)))

(declare-fun res!1282123 () Bool)

(assert (=> b!3137611 (= res!1282123 (not (nullable!3278 (reg!9974 r!17423))))))

(assert (=> b!3137611 (=> (not res!1282123) (not e!1957600))))

(declare-fun bm!225018 () Bool)

(declare-fun call!225022 () Bool)

(assert (=> bm!225018 (= call!225022 (validRegex!4378 (ite c!527363 (regTwo!19803 r!17423) (regOne!19802 r!17423))))))

(declare-fun b!3137612 () Bool)

(assert (=> b!3137612 (= e!1957597 e!1957603)))

(declare-fun c!527362 () Bool)

(assert (=> b!3137612 (= c!527362 ((_ is Star!9645) r!17423))))

(declare-fun b!3137613 () Bool)

(declare-fun e!1957601 () Bool)

(assert (=> b!3137613 (= e!1957601 e!1957598)))

(declare-fun res!1282122 () Bool)

(assert (=> b!3137613 (=> (not res!1282122) (not e!1957598))))

(assert (=> b!3137613 (= res!1282122 call!225022)))

(declare-fun b!3137614 () Bool)

(assert (=> b!3137614 (= e!1957599 call!225022)))

(declare-fun b!3137615 () Bool)

(declare-fun res!1282121 () Bool)

(assert (=> b!3137615 (=> res!1282121 e!1957601)))

(assert (=> b!3137615 (= res!1282121 (not ((_ is Concat!14966) r!17423)))))

(assert (=> b!3137615 (= e!1957602 e!1957601)))

(declare-fun bm!225019 () Bool)

(assert (=> bm!225019 (= call!225023 (validRegex!4378 (ite c!527362 (reg!9974 r!17423) (ite c!527363 (regOne!19803 r!17423) (regTwo!19802 r!17423)))))))

(assert (= (and d!865504 (not res!1282124)) b!3137612))

(assert (= (and b!3137612 c!527362) b!3137611))

(assert (= (and b!3137612 (not c!527362)) b!3137608))

(assert (= (and b!3137611 res!1282123) b!3137609))

(assert (= (and b!3137608 c!527363) b!3137607))

(assert (= (and b!3137608 (not c!527363)) b!3137615))

(assert (= (and b!3137607 res!1282120) b!3137614))

(assert (= (and b!3137615 (not res!1282121)) b!3137613))

(assert (= (and b!3137613 res!1282122) b!3137610))

(assert (= (or b!3137607 b!3137610) bm!225017))

(assert (= (or b!3137614 b!3137613) bm!225018))

(assert (= (or b!3137609 bm!225017) bm!225019))

(declare-fun m!3417219 () Bool)

(assert (=> b!3137611 m!3417219))

(declare-fun m!3417223 () Bool)

(assert (=> bm!225018 m!3417223))

(declare-fun m!3417227 () Bool)

(assert (=> bm!225019 m!3417227))

(assert (=> start!295796 d!865504))

(declare-fun e!1957611 () Bool)

(assert (=> b!3137201 (= tp!981986 e!1957611)))

(declare-fun b!3137641 () Bool)

(assert (=> b!3137641 (= e!1957611 tp_is_empty!16853)))

(declare-fun b!3137643 () Bool)

(declare-fun tp!982014 () Bool)

(assert (=> b!3137643 (= e!1957611 tp!982014)))

(declare-fun b!3137644 () Bool)

(declare-fun tp!982015 () Bool)

(declare-fun tp!982017 () Bool)

(assert (=> b!3137644 (= e!1957611 (and tp!982015 tp!982017))))

(declare-fun b!3137642 () Bool)

(declare-fun tp!982016 () Bool)

(declare-fun tp!982013 () Bool)

(assert (=> b!3137642 (= e!1957611 (and tp!982016 tp!982013))))

(assert (= (and b!3137201 ((_ is ElementMatch!9645) (regOne!19802 r!17423))) b!3137641))

(assert (= (and b!3137201 ((_ is Concat!14966) (regOne!19802 r!17423))) b!3137642))

(assert (= (and b!3137201 ((_ is Star!9645) (regOne!19802 r!17423))) b!3137643))

(assert (= (and b!3137201 ((_ is Union!9645) (regOne!19802 r!17423))) b!3137644))

(declare-fun e!1957612 () Bool)

(assert (=> b!3137201 (= tp!981985 e!1957612)))

(declare-fun b!3137645 () Bool)

(assert (=> b!3137645 (= e!1957612 tp_is_empty!16853)))

(declare-fun b!3137647 () Bool)

(declare-fun tp!982019 () Bool)

(assert (=> b!3137647 (= e!1957612 tp!982019)))

(declare-fun b!3137648 () Bool)

(declare-fun tp!982020 () Bool)

(declare-fun tp!982022 () Bool)

(assert (=> b!3137648 (= e!1957612 (and tp!982020 tp!982022))))

(declare-fun b!3137646 () Bool)

(declare-fun tp!982021 () Bool)

(declare-fun tp!982018 () Bool)

(assert (=> b!3137646 (= e!1957612 (and tp!982021 tp!982018))))

(assert (= (and b!3137201 ((_ is ElementMatch!9645) (regTwo!19802 r!17423))) b!3137645))

(assert (= (and b!3137201 ((_ is Concat!14966) (regTwo!19802 r!17423))) b!3137646))

(assert (= (and b!3137201 ((_ is Star!9645) (regTwo!19802 r!17423))) b!3137647))

(assert (= (and b!3137201 ((_ is Union!9645) (regTwo!19802 r!17423))) b!3137648))

(declare-fun e!1957614 () Bool)

(assert (=> b!3137203 (= tp!981989 e!1957614)))

(declare-fun b!3137653 () Bool)

(assert (=> b!3137653 (= e!1957614 tp_is_empty!16853)))

(declare-fun b!3137655 () Bool)

(declare-fun tp!982029 () Bool)

(assert (=> b!3137655 (= e!1957614 tp!982029)))

(declare-fun b!3137656 () Bool)

(declare-fun tp!982030 () Bool)

(declare-fun tp!982032 () Bool)

(assert (=> b!3137656 (= e!1957614 (and tp!982030 tp!982032))))

(declare-fun b!3137654 () Bool)

(declare-fun tp!982031 () Bool)

(declare-fun tp!982028 () Bool)

(assert (=> b!3137654 (= e!1957614 (and tp!982031 tp!982028))))

(assert (= (and b!3137203 ((_ is ElementMatch!9645) (regOne!19803 r!17423))) b!3137653))

(assert (= (and b!3137203 ((_ is Concat!14966) (regOne!19803 r!17423))) b!3137654))

(assert (= (and b!3137203 ((_ is Star!9645) (regOne!19803 r!17423))) b!3137655))

(assert (= (and b!3137203 ((_ is Union!9645) (regOne!19803 r!17423))) b!3137656))

(declare-fun e!1957615 () Bool)

(assert (=> b!3137203 (= tp!981988 e!1957615)))

(declare-fun b!3137657 () Bool)

(assert (=> b!3137657 (= e!1957615 tp_is_empty!16853)))

(declare-fun b!3137659 () Bool)

(declare-fun tp!982034 () Bool)

(assert (=> b!3137659 (= e!1957615 tp!982034)))

(declare-fun b!3137660 () Bool)

(declare-fun tp!982035 () Bool)

(declare-fun tp!982037 () Bool)

(assert (=> b!3137660 (= e!1957615 (and tp!982035 tp!982037))))

(declare-fun b!3137658 () Bool)

(declare-fun tp!982036 () Bool)

(declare-fun tp!982033 () Bool)

(assert (=> b!3137658 (= e!1957615 (and tp!982036 tp!982033))))

(assert (= (and b!3137203 ((_ is ElementMatch!9645) (regTwo!19803 r!17423))) b!3137657))

(assert (= (and b!3137203 ((_ is Concat!14966) (regTwo!19803 r!17423))) b!3137658))

(assert (= (and b!3137203 ((_ is Star!9645) (regTwo!19803 r!17423))) b!3137659))

(assert (= (and b!3137203 ((_ is Union!9645) (regTwo!19803 r!17423))) b!3137660))

(declare-fun b!3137677 () Bool)

(declare-fun e!1957621 () Bool)

(declare-fun tp!982055 () Bool)

(assert (=> b!3137677 (= e!1957621 (and tp_is_empty!16853 tp!982055))))

(assert (=> b!3137199 (= tp!981984 e!1957621)))

(assert (= (and b!3137199 ((_ is Cons!35386) (t!234575 s!11993))) b!3137677))

(declare-fun e!1957623 () Bool)

(assert (=> b!3137204 (= tp!981987 e!1957623)))

(declare-fun b!3137682 () Bool)

(assert (=> b!3137682 (= e!1957623 tp_is_empty!16853)))

(declare-fun b!3137684 () Bool)

(declare-fun tp!982062 () Bool)

(assert (=> b!3137684 (= e!1957623 tp!982062)))

(declare-fun b!3137685 () Bool)

(declare-fun tp!982063 () Bool)

(declare-fun tp!982065 () Bool)

(assert (=> b!3137685 (= e!1957623 (and tp!982063 tp!982065))))

(declare-fun b!3137683 () Bool)

(declare-fun tp!982064 () Bool)

(declare-fun tp!982061 () Bool)

(assert (=> b!3137683 (= e!1957623 (and tp!982064 tp!982061))))

(assert (= (and b!3137204 ((_ is ElementMatch!9645) (reg!9974 r!17423))) b!3137682))

(assert (= (and b!3137204 ((_ is Concat!14966) (reg!9974 r!17423))) b!3137683))

(assert (= (and b!3137204 ((_ is Star!9645) (reg!9974 r!17423))) b!3137684))

(assert (= (and b!3137204 ((_ is Union!9645) (reg!9974 r!17423))) b!3137685))

(check-sat (not b!3137516) (not b!3137655) (not bm!224958) (not bm!225018) (not b!3137643) (not b!3137658) (not b!3137388) (not bm!224948) (not bm!224993) (not b!3137366) (not b!3137611) (not b!3137358) (not b!3137659) (not b!3137646) (not bm!224996) (not b!3137270) (not bm!224949) (not b!3137394) (not bm!224988) (not b!3137357) (not bm!224990) (not b!3137392) (not bm!224998) (not d!865486) (not d!865494) (not b!3137660) (not b!3137684) (not d!865498) (not b!3137271) (not b!3137386) (not b!3137654) (not b!3137642) (not b!3137685) (not b!3137359) tp_is_empty!16853 (not b!3137677) (not bm!224956) (not b!3137537) (not b!3137385) (not bm!225019) (not b!3137360) (not d!865490) (not b!3137648) (not b!3137387) (not b!3137683) (not b!3137364) (not b!3137647) (not b!3137656) (not b!3137644))
(check-sat)
