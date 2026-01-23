; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79626 () Bool)

(assert start!79626)

(declare-fun b!881214 () Bool)

(assert (=> b!881214 true))

(assert (=> b!881214 true))

(declare-fun lambda!26970 () Int)

(declare-fun lambda!26969 () Int)

(assert (=> b!881214 (not (= lambda!26970 lambda!26969))))

(assert (=> b!881214 true))

(assert (=> b!881214 true))

(declare-fun b!881208 () Bool)

(declare-fun e!578468 () Bool)

(declare-fun tp_is_empty!4165 () Bool)

(assert (=> b!881208 (= e!578468 tp_is_empty!4165)))

(declare-fun b!881209 () Bool)

(declare-fun tp!278372 () Bool)

(declare-fun tp!278374 () Bool)

(assert (=> b!881209 (= e!578468 (and tp!278372 tp!278374))))

(declare-fun b!881211 () Bool)

(declare-fun e!578465 () Bool)

(declare-fun e!578467 () Bool)

(assert (=> b!881211 (= e!578465 (not e!578467))))

(declare-fun res!400722 () Bool)

(assert (=> b!881211 (=> res!400722 e!578467)))

(declare-fun lt!330713 () Bool)

(declare-datatypes ((C!5092 0))(
  ( (C!5093 (val!2794 Int)) )
))
(declare-datatypes ((Regex!2261 0))(
  ( (ElementMatch!2261 (c!142442 C!5092)) (Concat!4094 (regOne!5034 Regex!2261) (regTwo!5034 Regex!2261)) (EmptyExpr!2261) (Star!2261 (reg!2590 Regex!2261)) (EmptyLang!2261) (Union!2261 (regOne!5035 Regex!2261) (regTwo!5035 Regex!2261)) )
))
(declare-fun r!15766 () Regex!2261)

(get-info :version)

(assert (=> b!881211 (= res!400722 (or (not lt!330713) (and ((_ is Concat!4094) r!15766) ((_ is EmptyExpr!2261) (regOne!5034 r!15766))) (and ((_ is Concat!4094) r!15766) ((_ is EmptyExpr!2261) (regTwo!5034 r!15766))) (not ((_ is Concat!4094) r!15766))))))

(declare-datatypes ((List!9491 0))(
  ( (Nil!9475) (Cons!9475 (h!14876 C!5092) (t!100537 List!9491)) )
))
(declare-fun s!10566 () List!9491)

(declare-fun matchRSpec!62 (Regex!2261 List!9491) Bool)

(assert (=> b!881211 (= lt!330713 (matchRSpec!62 r!15766 s!10566))))

(declare-fun matchR!799 (Regex!2261 List!9491) Bool)

(assert (=> b!881211 (= lt!330713 (matchR!799 r!15766 s!10566))))

(declare-datatypes ((Unit!14101 0))(
  ( (Unit!14102) )
))
(declare-fun lt!330712 () Unit!14101)

(declare-fun mainMatchTheorem!62 (Regex!2261 List!9491) Unit!14101)

(assert (=> b!881211 (= lt!330712 (mainMatchTheorem!62 r!15766 s!10566))))

(declare-fun b!881212 () Bool)

(declare-fun tp!278376 () Bool)

(declare-fun tp!278373 () Bool)

(assert (=> b!881212 (= e!578468 (and tp!278376 tp!278373))))

(declare-fun b!881213 () Bool)

(declare-fun e!578466 () Bool)

(declare-fun tp!278375 () Bool)

(assert (=> b!881213 (= e!578466 (and tp_is_empty!4165 tp!278375))))

(declare-fun e!578469 () Bool)

(assert (=> b!881214 (= e!578467 e!578469)))

(declare-fun res!400720 () Bool)

(assert (=> b!881214 (=> res!400720 e!578469)))

(declare-fun isEmpty!5668 (List!9491) Bool)

(assert (=> b!881214 (= res!400720 (isEmpty!5668 s!10566))))

(declare-fun Exists!56 (Int) Bool)

(assert (=> b!881214 (= (Exists!56 lambda!26969) (Exists!56 lambda!26970))))

(declare-fun lt!330714 () Unit!14101)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!46 (Regex!2261 Regex!2261 List!9491) Unit!14101)

(assert (=> b!881214 (= lt!330714 (lemmaExistCutMatchRandMatchRSpecEquivalent!46 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566))))

(declare-datatypes ((tuple2!10608 0))(
  ( (tuple2!10609 (_1!6130 List!9491) (_2!6130 List!9491)) )
))
(declare-datatypes ((Option!1946 0))(
  ( (None!1945) (Some!1945 (v!19362 tuple2!10608)) )
))
(declare-fun isDefined!1588 (Option!1946) Bool)

(declare-fun findConcatSeparation!52 (Regex!2261 Regex!2261 List!9491 List!9491 List!9491) Option!1946)

(assert (=> b!881214 (= (isDefined!1588 (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) Nil!9475 s!10566 s!10566)) (Exists!56 lambda!26969))))

(declare-fun lt!330715 () Unit!14101)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!52 (Regex!2261 Regex!2261 List!9491) Unit!14101)

(assert (=> b!881214 (= lt!330715 (lemmaFindConcatSeparationEquivalentToExists!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566))))

(declare-fun b!881215 () Bool)

(declare-fun validRegex!730 (Regex!2261) Bool)

(assert (=> b!881215 (= e!578469 (validRegex!730 (regOne!5034 r!15766)))))

(declare-fun b!881210 () Bool)

(declare-fun tp!278371 () Bool)

(assert (=> b!881210 (= e!578468 tp!278371)))

(declare-fun res!400721 () Bool)

(assert (=> start!79626 (=> (not res!400721) (not e!578465))))

(assert (=> start!79626 (= res!400721 (validRegex!730 r!15766))))

(assert (=> start!79626 e!578465))

(assert (=> start!79626 e!578468))

(assert (=> start!79626 e!578466))

(assert (= (and start!79626 res!400721) b!881211))

(assert (= (and b!881211 (not res!400722)) b!881214))

(assert (= (and b!881214 (not res!400720)) b!881215))

(assert (= (and start!79626 ((_ is ElementMatch!2261) r!15766)) b!881208))

(assert (= (and start!79626 ((_ is Concat!4094) r!15766)) b!881209))

(assert (= (and start!79626 ((_ is Star!2261) r!15766)) b!881210))

(assert (= (and start!79626 ((_ is Union!2261) r!15766)) b!881212))

(assert (= (and start!79626 ((_ is Cons!9475) s!10566)) b!881213))

(declare-fun m!1129415 () Bool)

(assert (=> b!881211 m!1129415))

(declare-fun m!1129417 () Bool)

(assert (=> b!881211 m!1129417))

(declare-fun m!1129419 () Bool)

(assert (=> b!881211 m!1129419))

(declare-fun m!1129421 () Bool)

(assert (=> b!881214 m!1129421))

(declare-fun m!1129423 () Bool)

(assert (=> b!881214 m!1129423))

(declare-fun m!1129425 () Bool)

(assert (=> b!881214 m!1129425))

(declare-fun m!1129427 () Bool)

(assert (=> b!881214 m!1129427))

(assert (=> b!881214 m!1129421))

(declare-fun m!1129429 () Bool)

(assert (=> b!881214 m!1129429))

(declare-fun m!1129431 () Bool)

(assert (=> b!881214 m!1129431))

(assert (=> b!881214 m!1129431))

(declare-fun m!1129433 () Bool)

(assert (=> b!881214 m!1129433))

(declare-fun m!1129435 () Bool)

(assert (=> b!881215 m!1129435))

(declare-fun m!1129437 () Bool)

(assert (=> start!79626 m!1129437))

(check-sat (not b!881212) (not b!881214) (not b!881213) (not b!881210) (not b!881209) tp_is_empty!4165 (not start!79626) (not b!881211) (not b!881215))
(check-sat)
(get-model)

(declare-fun b!881242 () Bool)

(declare-fun e!578487 () Bool)

(declare-fun e!578492 () Bool)

(assert (=> b!881242 (= e!578487 e!578492)))

(declare-fun res!400735 () Bool)

(declare-fun nullable!572 (Regex!2261) Bool)

(assert (=> b!881242 (= res!400735 (not (nullable!572 (reg!2590 (regOne!5034 r!15766)))))))

(assert (=> b!881242 (=> (not res!400735) (not e!578492))))

(declare-fun b!881243 () Bool)

(declare-fun e!578488 () Bool)

(declare-fun e!578490 () Bool)

(assert (=> b!881243 (= e!578488 e!578490)))

(declare-fun res!400734 () Bool)

(assert (=> b!881243 (=> (not res!400734) (not e!578490))))

(declare-fun call!51450 () Bool)

(assert (=> b!881243 (= res!400734 call!51450)))

(declare-fun b!881244 () Bool)

(declare-fun e!578486 () Bool)

(assert (=> b!881244 (= e!578486 e!578487)))

(declare-fun c!142450 () Bool)

(assert (=> b!881244 (= c!142450 ((_ is Star!2261) (regOne!5034 r!15766)))))

(declare-fun d!276362 () Bool)

(declare-fun res!400737 () Bool)

(assert (=> d!276362 (=> res!400737 e!578486)))

(assert (=> d!276362 (= res!400737 ((_ is ElementMatch!2261) (regOne!5034 r!15766)))))

(assert (=> d!276362 (= (validRegex!730 (regOne!5034 r!15766)) e!578486)))

(declare-fun b!881245 () Bool)

(declare-fun call!51449 () Bool)

(assert (=> b!881245 (= e!578490 call!51449)))

(declare-fun b!881246 () Bool)

(declare-fun res!400736 () Bool)

(assert (=> b!881246 (=> res!400736 e!578488)))

(assert (=> b!881246 (= res!400736 (not ((_ is Concat!4094) (regOne!5034 r!15766))))))

(declare-fun e!578489 () Bool)

(assert (=> b!881246 (= e!578489 e!578488)))

(declare-fun b!881247 () Bool)

(declare-fun res!400733 () Bool)

(declare-fun e!578491 () Bool)

(assert (=> b!881247 (=> (not res!400733) (not e!578491))))

(assert (=> b!881247 (= res!400733 call!51450)))

(assert (=> b!881247 (= e!578489 e!578491)))

(declare-fun bm!51443 () Bool)

(declare-fun call!51448 () Bool)

(assert (=> bm!51443 (= call!51450 call!51448)))

(declare-fun bm!51444 () Bool)

(declare-fun c!142449 () Bool)

(assert (=> bm!51444 (= call!51449 (validRegex!730 (ite c!142449 (regTwo!5035 (regOne!5034 r!15766)) (regTwo!5034 (regOne!5034 r!15766)))))))

(declare-fun b!881248 () Bool)

(assert (=> b!881248 (= e!578491 call!51449)))

(declare-fun b!881249 () Bool)

(assert (=> b!881249 (= e!578487 e!578489)))

(assert (=> b!881249 (= c!142449 ((_ is Union!2261) (regOne!5034 r!15766)))))

(declare-fun b!881250 () Bool)

(assert (=> b!881250 (= e!578492 call!51448)))

(declare-fun bm!51445 () Bool)

(assert (=> bm!51445 (= call!51448 (validRegex!730 (ite c!142450 (reg!2590 (regOne!5034 r!15766)) (ite c!142449 (regOne!5035 (regOne!5034 r!15766)) (regOne!5034 (regOne!5034 r!15766))))))))

(assert (= (and d!276362 (not res!400737)) b!881244))

(assert (= (and b!881244 c!142450) b!881242))

(assert (= (and b!881244 (not c!142450)) b!881249))

(assert (= (and b!881242 res!400735) b!881250))

(assert (= (and b!881249 c!142449) b!881247))

(assert (= (and b!881249 (not c!142449)) b!881246))

(assert (= (and b!881247 res!400733) b!881248))

(assert (= (and b!881246 (not res!400736)) b!881243))

(assert (= (and b!881243 res!400734) b!881245))

(assert (= (or b!881248 b!881245) bm!51444))

(assert (= (or b!881247 b!881243) bm!51443))

(assert (= (or b!881250 bm!51443) bm!51445))

(declare-fun m!1129439 () Bool)

(assert (=> b!881242 m!1129439))

(declare-fun m!1129441 () Bool)

(assert (=> bm!51444 m!1129441))

(declare-fun m!1129443 () Bool)

(assert (=> bm!51445 m!1129443))

(assert (=> b!881215 d!276362))

(declare-fun bs!234414 () Bool)

(declare-fun b!881330 () Bool)

(assert (= bs!234414 (and b!881330 b!881214)))

(declare-fun lambda!26981 () Int)

(assert (=> bs!234414 (not (= lambda!26981 lambda!26969))))

(assert (=> bs!234414 (not (= lambda!26981 lambda!26970))))

(assert (=> b!881330 true))

(assert (=> b!881330 true))

(declare-fun bs!234415 () Bool)

(declare-fun b!881329 () Bool)

(assert (= bs!234415 (and b!881329 b!881214)))

(declare-fun lambda!26982 () Int)

(assert (=> bs!234415 (not (= lambda!26982 lambda!26969))))

(assert (=> bs!234415 (= lambda!26982 lambda!26970)))

(declare-fun bs!234416 () Bool)

(assert (= bs!234416 (and b!881329 b!881330)))

(assert (=> bs!234416 (not (= lambda!26982 lambda!26981))))

(assert (=> b!881329 true))

(assert (=> b!881329 true))

(declare-fun b!881322 () Bool)

(declare-fun c!142470 () Bool)

(assert (=> b!881322 (= c!142470 ((_ is Union!2261) r!15766))))

(declare-fun e!578538 () Bool)

(declare-fun e!578537 () Bool)

(assert (=> b!881322 (= e!578538 e!578537)))

(declare-fun b!881323 () Bool)

(declare-fun e!578540 () Bool)

(assert (=> b!881323 (= e!578540 (matchRSpec!62 (regTwo!5035 r!15766) s!10566))))

(declare-fun b!881324 () Bool)

(declare-fun e!578534 () Bool)

(declare-fun e!578536 () Bool)

(assert (=> b!881324 (= e!578534 e!578536)))

(declare-fun res!400773 () Bool)

(assert (=> b!881324 (= res!400773 (not ((_ is EmptyLang!2261) r!15766)))))

(assert (=> b!881324 (=> (not res!400773) (not e!578536))))

(declare-fun b!881325 () Bool)

(declare-fun res!400775 () Bool)

(declare-fun e!578539 () Bool)

(assert (=> b!881325 (=> res!400775 e!578539)))

(declare-fun call!51461 () Bool)

(assert (=> b!881325 (= res!400775 call!51461)))

(declare-fun e!578535 () Bool)

(assert (=> b!881325 (= e!578535 e!578539)))

(declare-fun b!881326 () Bool)

(assert (=> b!881326 (= e!578537 e!578540)))

(declare-fun res!400774 () Bool)

(assert (=> b!881326 (= res!400774 (matchRSpec!62 (regOne!5035 r!15766) s!10566))))

(assert (=> b!881326 (=> res!400774 e!578540)))

(declare-fun call!51462 () Bool)

(declare-fun c!142472 () Bool)

(declare-fun bm!51456 () Bool)

(assert (=> bm!51456 (= call!51462 (Exists!56 (ite c!142472 lambda!26981 lambda!26982)))))

(declare-fun b!881328 () Bool)

(assert (=> b!881328 (= e!578538 (= s!10566 (Cons!9475 (c!142442 r!15766) Nil!9475)))))

(assert (=> b!881329 (= e!578535 call!51462)))

(assert (=> b!881330 (= e!578539 call!51462)))

(declare-fun b!881331 () Bool)

(assert (=> b!881331 (= e!578537 e!578535)))

(assert (=> b!881331 (= c!142472 ((_ is Star!2261) r!15766))))

(declare-fun bm!51457 () Bool)

(assert (=> bm!51457 (= call!51461 (isEmpty!5668 s!10566))))

(declare-fun b!881332 () Bool)

(assert (=> b!881332 (= e!578534 call!51461)))

(declare-fun d!276366 () Bool)

(declare-fun c!142471 () Bool)

(assert (=> d!276366 (= c!142471 ((_ is EmptyExpr!2261) r!15766))))

(assert (=> d!276366 (= (matchRSpec!62 r!15766 s!10566) e!578534)))

(declare-fun b!881327 () Bool)

(declare-fun c!142469 () Bool)

(assert (=> b!881327 (= c!142469 ((_ is ElementMatch!2261) r!15766))))

(assert (=> b!881327 (= e!578536 e!578538)))

(assert (= (and d!276366 c!142471) b!881332))

(assert (= (and d!276366 (not c!142471)) b!881324))

(assert (= (and b!881324 res!400773) b!881327))

(assert (= (and b!881327 c!142469) b!881328))

(assert (= (and b!881327 (not c!142469)) b!881322))

(assert (= (and b!881322 c!142470) b!881326))

(assert (= (and b!881322 (not c!142470)) b!881331))

(assert (= (and b!881326 (not res!400774)) b!881323))

(assert (= (and b!881331 c!142472) b!881325))

(assert (= (and b!881331 (not c!142472)) b!881329))

(assert (= (and b!881325 (not res!400775)) b!881330))

(assert (= (or b!881330 b!881329) bm!51456))

(assert (= (or b!881332 b!881325) bm!51457))

(declare-fun m!1129451 () Bool)

(assert (=> b!881323 m!1129451))

(declare-fun m!1129453 () Bool)

(assert (=> b!881326 m!1129453))

(declare-fun m!1129455 () Bool)

(assert (=> bm!51456 m!1129455))

(assert (=> bm!51457 m!1129427))

(assert (=> b!881211 d!276366))

(declare-fun bm!51463 () Bool)

(declare-fun call!51468 () Bool)

(assert (=> bm!51463 (= call!51468 (isEmpty!5668 s!10566))))

(declare-fun b!881403 () Bool)

(declare-fun e!578580 () Bool)

(declare-fun lt!330724 () Bool)

(assert (=> b!881403 (= e!578580 (not lt!330724))))

(declare-fun b!881404 () Bool)

(declare-fun res!400822 () Bool)

(declare-fun e!578579 () Bool)

(assert (=> b!881404 (=> res!400822 e!578579)))

(declare-fun tail!1101 (List!9491) List!9491)

(assert (=> b!881404 (= res!400822 (not (isEmpty!5668 (tail!1101 s!10566))))))

(declare-fun b!881405 () Bool)

(declare-fun res!400821 () Bool)

(declare-fun e!578577 () Bool)

(assert (=> b!881405 (=> res!400821 e!578577)))

(assert (=> b!881405 (= res!400821 (not ((_ is ElementMatch!2261) r!15766)))))

(assert (=> b!881405 (= e!578580 e!578577)))

(declare-fun b!881406 () Bool)

(declare-fun e!578581 () Bool)

(assert (=> b!881406 (= e!578581 (nullable!572 r!15766))))

(declare-fun b!881407 () Bool)

(declare-fun res!400823 () Bool)

(assert (=> b!881407 (=> res!400823 e!578577)))

(declare-fun e!578578 () Bool)

(assert (=> b!881407 (= res!400823 e!578578)))

(declare-fun res!400817 () Bool)

(assert (=> b!881407 (=> (not res!400817) (not e!578578))))

(assert (=> b!881407 (= res!400817 lt!330724)))

(declare-fun b!881408 () Bool)

(declare-fun head!1539 (List!9491) C!5092)

(assert (=> b!881408 (= e!578578 (= (head!1539 s!10566) (c!142442 r!15766)))))

(declare-fun b!881409 () Bool)

(declare-fun e!578576 () Bool)

(assert (=> b!881409 (= e!578576 (= lt!330724 call!51468))))

(declare-fun b!881410 () Bool)

(declare-fun e!578582 () Bool)

(assert (=> b!881410 (= e!578582 e!578579)))

(declare-fun res!400818 () Bool)

(assert (=> b!881410 (=> res!400818 e!578579)))

(assert (=> b!881410 (= res!400818 call!51468)))

(declare-fun b!881411 () Bool)

(assert (=> b!881411 (= e!578577 e!578582)))

(declare-fun res!400819 () Bool)

(assert (=> b!881411 (=> (not res!400819) (not e!578582))))

(assert (=> b!881411 (= res!400819 (not lt!330724))))

(declare-fun b!881412 () Bool)

(declare-fun res!400816 () Bool)

(assert (=> b!881412 (=> (not res!400816) (not e!578578))))

(assert (=> b!881412 (= res!400816 (not call!51468))))

(declare-fun b!881413 () Bool)

(assert (=> b!881413 (= e!578579 (not (= (head!1539 s!10566) (c!142442 r!15766))))))

(declare-fun d!276370 () Bool)

(assert (=> d!276370 e!578576))

(declare-fun c!142490 () Bool)

(assert (=> d!276370 (= c!142490 ((_ is EmptyExpr!2261) r!15766))))

(assert (=> d!276370 (= lt!330724 e!578581)))

(declare-fun c!142488 () Bool)

(assert (=> d!276370 (= c!142488 (isEmpty!5668 s!10566))))

(assert (=> d!276370 (validRegex!730 r!15766)))

(assert (=> d!276370 (= (matchR!799 r!15766 s!10566) lt!330724)))

(declare-fun b!881414 () Bool)

(declare-fun res!400820 () Bool)

(assert (=> b!881414 (=> (not res!400820) (not e!578578))))

(assert (=> b!881414 (= res!400820 (isEmpty!5668 (tail!1101 s!10566)))))

(declare-fun b!881415 () Bool)

(declare-fun derivativeStep!386 (Regex!2261 C!5092) Regex!2261)

(assert (=> b!881415 (= e!578581 (matchR!799 (derivativeStep!386 r!15766 (head!1539 s!10566)) (tail!1101 s!10566)))))

(declare-fun b!881416 () Bool)

(assert (=> b!881416 (= e!578576 e!578580)))

(declare-fun c!142489 () Bool)

(assert (=> b!881416 (= c!142489 ((_ is EmptyLang!2261) r!15766))))

(assert (= (and d!276370 c!142488) b!881406))

(assert (= (and d!276370 (not c!142488)) b!881415))

(assert (= (and d!276370 c!142490) b!881409))

(assert (= (and d!276370 (not c!142490)) b!881416))

(assert (= (and b!881416 c!142489) b!881403))

(assert (= (and b!881416 (not c!142489)) b!881405))

(assert (= (and b!881405 (not res!400821)) b!881407))

(assert (= (and b!881407 res!400817) b!881412))

(assert (= (and b!881412 res!400816) b!881414))

(assert (= (and b!881414 res!400820) b!881408))

(assert (= (and b!881407 (not res!400823)) b!881411))

(assert (= (and b!881411 res!400819) b!881410))

(assert (= (and b!881410 (not res!400818)) b!881404))

(assert (= (and b!881404 (not res!400822)) b!881413))

(assert (= (or b!881409 b!881410 b!881412) bm!51463))

(declare-fun m!1129471 () Bool)

(assert (=> b!881415 m!1129471))

(assert (=> b!881415 m!1129471))

(declare-fun m!1129473 () Bool)

(assert (=> b!881415 m!1129473))

(declare-fun m!1129475 () Bool)

(assert (=> b!881415 m!1129475))

(assert (=> b!881415 m!1129473))

(assert (=> b!881415 m!1129475))

(declare-fun m!1129477 () Bool)

(assert (=> b!881415 m!1129477))

(declare-fun m!1129479 () Bool)

(assert (=> b!881406 m!1129479))

(assert (=> b!881413 m!1129471))

(assert (=> b!881404 m!1129475))

(assert (=> b!881404 m!1129475))

(declare-fun m!1129481 () Bool)

(assert (=> b!881404 m!1129481))

(assert (=> d!276370 m!1129427))

(assert (=> d!276370 m!1129437))

(assert (=> bm!51463 m!1129427))

(assert (=> b!881408 m!1129471))

(assert (=> b!881414 m!1129475))

(assert (=> b!881414 m!1129475))

(assert (=> b!881414 m!1129481))

(assert (=> b!881211 d!276370))

(declare-fun d!276376 () Bool)

(assert (=> d!276376 (= (matchR!799 r!15766 s!10566) (matchRSpec!62 r!15766 s!10566))))

(declare-fun lt!330727 () Unit!14101)

(declare-fun choose!5214 (Regex!2261 List!9491) Unit!14101)

(assert (=> d!276376 (= lt!330727 (choose!5214 r!15766 s!10566))))

(assert (=> d!276376 (validRegex!730 r!15766)))

(assert (=> d!276376 (= (mainMatchTheorem!62 r!15766 s!10566) lt!330727)))

(declare-fun bs!234418 () Bool)

(assert (= bs!234418 d!276376))

(assert (=> bs!234418 m!1129417))

(assert (=> bs!234418 m!1129415))

(declare-fun m!1129483 () Bool)

(assert (=> bs!234418 m!1129483))

(assert (=> bs!234418 m!1129437))

(assert (=> b!881211 d!276376))

(declare-fun b!881444 () Bool)

(declare-fun e!578605 () Bool)

(declare-fun e!578610 () Bool)

(assert (=> b!881444 (= e!578605 e!578610)))

(declare-fun res!400841 () Bool)

(assert (=> b!881444 (= res!400841 (not (nullable!572 (reg!2590 r!15766))))))

(assert (=> b!881444 (=> (not res!400841) (not e!578610))))

(declare-fun b!881445 () Bool)

(declare-fun e!578606 () Bool)

(declare-fun e!578608 () Bool)

(assert (=> b!881445 (= e!578606 e!578608)))

(declare-fun res!400840 () Bool)

(assert (=> b!881445 (=> (not res!400840) (not e!578608))))

(declare-fun call!51480 () Bool)

(assert (=> b!881445 (= res!400840 call!51480)))

(declare-fun b!881446 () Bool)

(declare-fun e!578604 () Bool)

(assert (=> b!881446 (= e!578604 e!578605)))

(declare-fun c!142498 () Bool)

(assert (=> b!881446 (= c!142498 ((_ is Star!2261) r!15766))))

(declare-fun d!276378 () Bool)

(declare-fun res!400843 () Bool)

(assert (=> d!276378 (=> res!400843 e!578604)))

(assert (=> d!276378 (= res!400843 ((_ is ElementMatch!2261) r!15766))))

(assert (=> d!276378 (= (validRegex!730 r!15766) e!578604)))

(declare-fun b!881447 () Bool)

(declare-fun call!51479 () Bool)

(assert (=> b!881447 (= e!578608 call!51479)))

(declare-fun b!881448 () Bool)

(declare-fun res!400842 () Bool)

(assert (=> b!881448 (=> res!400842 e!578606)))

(assert (=> b!881448 (= res!400842 (not ((_ is Concat!4094) r!15766)))))

(declare-fun e!578607 () Bool)

(assert (=> b!881448 (= e!578607 e!578606)))

(declare-fun b!881449 () Bool)

(declare-fun res!400839 () Bool)

(declare-fun e!578609 () Bool)

(assert (=> b!881449 (=> (not res!400839) (not e!578609))))

(assert (=> b!881449 (= res!400839 call!51480)))

(assert (=> b!881449 (= e!578607 e!578609)))

(declare-fun bm!51473 () Bool)

(declare-fun call!51478 () Bool)

(assert (=> bm!51473 (= call!51480 call!51478)))

(declare-fun bm!51474 () Bool)

(declare-fun c!142497 () Bool)

(assert (=> bm!51474 (= call!51479 (validRegex!730 (ite c!142497 (regTwo!5035 r!15766) (regTwo!5034 r!15766))))))

(declare-fun b!881450 () Bool)

(assert (=> b!881450 (= e!578609 call!51479)))

(declare-fun b!881451 () Bool)

(assert (=> b!881451 (= e!578605 e!578607)))

(assert (=> b!881451 (= c!142497 ((_ is Union!2261) r!15766))))

(declare-fun b!881452 () Bool)

(assert (=> b!881452 (= e!578610 call!51478)))

(declare-fun bm!51475 () Bool)

(assert (=> bm!51475 (= call!51478 (validRegex!730 (ite c!142498 (reg!2590 r!15766) (ite c!142497 (regOne!5035 r!15766) (regOne!5034 r!15766)))))))

(assert (= (and d!276378 (not res!400843)) b!881446))

(assert (= (and b!881446 c!142498) b!881444))

(assert (= (and b!881446 (not c!142498)) b!881451))

(assert (= (and b!881444 res!400841) b!881452))

(assert (= (and b!881451 c!142497) b!881449))

(assert (= (and b!881451 (not c!142497)) b!881448))

(assert (= (and b!881449 res!400839) b!881450))

(assert (= (and b!881448 (not res!400842)) b!881445))

(assert (= (and b!881445 res!400840) b!881447))

(assert (= (or b!881450 b!881447) bm!51474))

(assert (= (or b!881449 b!881445) bm!51473))

(assert (= (or b!881452 bm!51473) bm!51475))

(declare-fun m!1129491 () Bool)

(assert (=> b!881444 m!1129491))

(declare-fun m!1129493 () Bool)

(assert (=> bm!51474 m!1129493))

(declare-fun m!1129495 () Bool)

(assert (=> bm!51475 m!1129495))

(assert (=> start!79626 d!276378))

(declare-fun d!276382 () Bool)

(assert (=> d!276382 (= (isEmpty!5668 s!10566) ((_ is Nil!9475) s!10566))))

(assert (=> b!881214 d!276382))

(declare-fun d!276386 () Bool)

(declare-fun choose!5217 (Int) Bool)

(assert (=> d!276386 (= (Exists!56 lambda!26969) (choose!5217 lambda!26969))))

(declare-fun bs!234420 () Bool)

(assert (= bs!234420 d!276386))

(declare-fun m!1129499 () Bool)

(assert (=> bs!234420 m!1129499))

(assert (=> b!881214 d!276386))

(declare-fun d!276390 () Bool)

(declare-fun isEmpty!5670 (Option!1946) Bool)

(assert (=> d!276390 (= (isDefined!1588 (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) Nil!9475 s!10566 s!10566)) (not (isEmpty!5670 (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) Nil!9475 s!10566 s!10566))))))

(declare-fun bs!234422 () Bool)

(assert (= bs!234422 d!276390))

(assert (=> bs!234422 m!1129421))

(declare-fun m!1129503 () Bool)

(assert (=> bs!234422 m!1129503))

(assert (=> b!881214 d!276390))

(declare-fun bs!234424 () Bool)

(declare-fun d!276394 () Bool)

(assert (= bs!234424 (and d!276394 b!881214)))

(declare-fun lambda!26988 () Int)

(assert (=> bs!234424 (= lambda!26988 lambda!26969)))

(assert (=> bs!234424 (not (= lambda!26988 lambda!26970))))

(declare-fun bs!234426 () Bool)

(assert (= bs!234426 (and d!276394 b!881330)))

(assert (=> bs!234426 (not (= lambda!26988 lambda!26981))))

(declare-fun bs!234428 () Bool)

(assert (= bs!234428 (and d!276394 b!881329)))

(assert (=> bs!234428 (not (= lambda!26988 lambda!26982))))

(assert (=> d!276394 true))

(assert (=> d!276394 true))

(assert (=> d!276394 true))

(assert (=> d!276394 (= (isDefined!1588 (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) Nil!9475 s!10566 s!10566)) (Exists!56 lambda!26988))))

(declare-fun lt!330733 () Unit!14101)

(declare-fun choose!5218 (Regex!2261 Regex!2261 List!9491) Unit!14101)

(assert (=> d!276394 (= lt!330733 (choose!5218 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566))))

(assert (=> d!276394 (validRegex!730 (regOne!5034 r!15766))))

(assert (=> d!276394 (= (lemmaFindConcatSeparationEquivalentToExists!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566) lt!330733)))

(declare-fun bs!234430 () Bool)

(assert (= bs!234430 d!276394))

(assert (=> bs!234430 m!1129421))

(assert (=> bs!234430 m!1129435))

(declare-fun m!1129507 () Bool)

(assert (=> bs!234430 m!1129507))

(assert (=> bs!234430 m!1129421))

(assert (=> bs!234430 m!1129423))

(declare-fun m!1129511 () Bool)

(assert (=> bs!234430 m!1129511))

(assert (=> b!881214 d!276394))

(declare-fun d!276398 () Bool)

(declare-fun e!578638 () Bool)

(assert (=> d!276398 e!578638))

(declare-fun res!400873 () Bool)

(assert (=> d!276398 (=> res!400873 e!578638)))

(declare-fun e!578636 () Bool)

(assert (=> d!276398 (= res!400873 e!578636)))

(declare-fun res!400876 () Bool)

(assert (=> d!276398 (=> (not res!400876) (not e!578636))))

(declare-fun lt!330747 () Option!1946)

(assert (=> d!276398 (= res!400876 (isDefined!1588 lt!330747))))

(declare-fun e!578637 () Option!1946)

(assert (=> d!276398 (= lt!330747 e!578637)))

(declare-fun c!142508 () Bool)

(declare-fun e!578639 () Bool)

(assert (=> d!276398 (= c!142508 e!578639)))

(declare-fun res!400874 () Bool)

(assert (=> d!276398 (=> (not res!400874) (not e!578639))))

(assert (=> d!276398 (= res!400874 (matchR!799 (regOne!5034 r!15766) Nil!9475))))

(assert (=> d!276398 (validRegex!730 (regOne!5034 r!15766))))

(assert (=> d!276398 (= (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) Nil!9475 s!10566 s!10566) lt!330747)))

(declare-fun b!881497 () Bool)

(assert (=> b!881497 (= e!578639 (matchR!799 (regTwo!5034 r!15766) s!10566))))

(declare-fun b!881498 () Bool)

(declare-fun e!578635 () Option!1946)

(assert (=> b!881498 (= e!578635 None!1945)))

(declare-fun b!881499 () Bool)

(declare-fun res!400875 () Bool)

(assert (=> b!881499 (=> (not res!400875) (not e!578636))))

(declare-fun get!2943 (Option!1946) tuple2!10608)

(assert (=> b!881499 (= res!400875 (matchR!799 (regOne!5034 r!15766) (_1!6130 (get!2943 lt!330747))))))

(declare-fun b!881500 () Bool)

(assert (=> b!881500 (= e!578637 (Some!1945 (tuple2!10609 Nil!9475 s!10566)))))

(declare-fun b!881501 () Bool)

(assert (=> b!881501 (= e!578638 (not (isDefined!1588 lt!330747)))))

(declare-fun b!881502 () Bool)

(declare-fun lt!330746 () Unit!14101)

(declare-fun lt!330748 () Unit!14101)

(assert (=> b!881502 (= lt!330746 lt!330748)))

(declare-fun ++!2468 (List!9491 List!9491) List!9491)

(assert (=> b!881502 (= (++!2468 (++!2468 Nil!9475 (Cons!9475 (h!14876 s!10566) Nil!9475)) (t!100537 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!97 (List!9491 C!5092 List!9491 List!9491) Unit!14101)

(assert (=> b!881502 (= lt!330748 (lemmaMoveElementToOtherListKeepsConcatEq!97 Nil!9475 (h!14876 s!10566) (t!100537 s!10566) s!10566))))

(assert (=> b!881502 (= e!578635 (findConcatSeparation!52 (regOne!5034 r!15766) (regTwo!5034 r!15766) (++!2468 Nil!9475 (Cons!9475 (h!14876 s!10566) Nil!9475)) (t!100537 s!10566) s!10566))))

(declare-fun b!881503 () Bool)

(declare-fun res!400872 () Bool)

(assert (=> b!881503 (=> (not res!400872) (not e!578636))))

(assert (=> b!881503 (= res!400872 (matchR!799 (regTwo!5034 r!15766) (_2!6130 (get!2943 lt!330747))))))

(declare-fun b!881504 () Bool)

(assert (=> b!881504 (= e!578636 (= (++!2468 (_1!6130 (get!2943 lt!330747)) (_2!6130 (get!2943 lt!330747))) s!10566))))

(declare-fun b!881505 () Bool)

(assert (=> b!881505 (= e!578637 e!578635)))

(declare-fun c!142507 () Bool)

(assert (=> b!881505 (= c!142507 ((_ is Nil!9475) s!10566))))

(assert (= (and d!276398 res!400874) b!881497))

(assert (= (and d!276398 c!142508) b!881500))

(assert (= (and d!276398 (not c!142508)) b!881505))

(assert (= (and b!881505 c!142507) b!881498))

(assert (= (and b!881505 (not c!142507)) b!881502))

(assert (= (and d!276398 res!400876) b!881499))

(assert (= (and b!881499 res!400875) b!881503))

(assert (= (and b!881503 res!400872) b!881504))

(assert (= (and d!276398 (not res!400873)) b!881501))

(declare-fun m!1129513 () Bool)

(assert (=> b!881501 m!1129513))

(declare-fun m!1129515 () Bool)

(assert (=> b!881503 m!1129515))

(declare-fun m!1129517 () Bool)

(assert (=> b!881503 m!1129517))

(assert (=> b!881499 m!1129515))

(declare-fun m!1129519 () Bool)

(assert (=> b!881499 m!1129519))

(assert (=> d!276398 m!1129513))

(declare-fun m!1129523 () Bool)

(assert (=> d!276398 m!1129523))

(assert (=> d!276398 m!1129435))

(assert (=> b!881504 m!1129515))

(declare-fun m!1129527 () Bool)

(assert (=> b!881504 m!1129527))

(declare-fun m!1129531 () Bool)

(assert (=> b!881497 m!1129531))

(declare-fun m!1129537 () Bool)

(assert (=> b!881502 m!1129537))

(assert (=> b!881502 m!1129537))

(declare-fun m!1129541 () Bool)

(assert (=> b!881502 m!1129541))

(declare-fun m!1129545 () Bool)

(assert (=> b!881502 m!1129545))

(assert (=> b!881502 m!1129537))

(declare-fun m!1129549 () Bool)

(assert (=> b!881502 m!1129549))

(assert (=> b!881214 d!276398))

(declare-fun d!276400 () Bool)

(assert (=> d!276400 (= (Exists!56 lambda!26970) (choose!5217 lambda!26970))))

(declare-fun bs!234431 () Bool)

(assert (= bs!234431 d!276400))

(declare-fun m!1129557 () Bool)

(assert (=> bs!234431 m!1129557))

(assert (=> b!881214 d!276400))

(declare-fun bs!234433 () Bool)

(declare-fun d!276404 () Bool)

(assert (= bs!234433 (and d!276404 b!881214)))

(declare-fun lambda!26997 () Int)

(assert (=> bs!234433 (= lambda!26997 lambda!26969)))

(assert (=> bs!234433 (not (= lambda!26997 lambda!26970))))

(declare-fun bs!234436 () Bool)

(assert (= bs!234436 (and d!276404 d!276394)))

(assert (=> bs!234436 (= lambda!26997 lambda!26988)))

(declare-fun bs!234438 () Bool)

(assert (= bs!234438 (and d!276404 b!881330)))

(assert (=> bs!234438 (not (= lambda!26997 lambda!26981))))

(declare-fun bs!234440 () Bool)

(assert (= bs!234440 (and d!276404 b!881329)))

(assert (=> bs!234440 (not (= lambda!26997 lambda!26982))))

(assert (=> d!276404 true))

(assert (=> d!276404 true))

(assert (=> d!276404 true))

(declare-fun bs!234441 () Bool)

(assert (= bs!234441 d!276404))

(declare-fun lambda!26999 () Int)

(assert (=> bs!234441 (not (= lambda!26999 lambda!26997))))

(assert (=> bs!234433 (not (= lambda!26999 lambda!26969))))

(assert (=> bs!234433 (= lambda!26999 lambda!26970)))

(assert (=> bs!234436 (not (= lambda!26999 lambda!26988))))

(assert (=> bs!234438 (not (= lambda!26999 lambda!26981))))

(assert (=> bs!234440 (= lambda!26999 lambda!26982)))

(assert (=> d!276404 true))

(assert (=> d!276404 true))

(assert (=> d!276404 true))

(assert (=> d!276404 (= (Exists!56 lambda!26997) (Exists!56 lambda!26999))))

(declare-fun lt!330756 () Unit!14101)

(declare-fun choose!5220 (Regex!2261 Regex!2261 List!9491) Unit!14101)

(assert (=> d!276404 (= lt!330756 (choose!5220 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566))))

(assert (=> d!276404 (validRegex!730 (regOne!5034 r!15766))))

(assert (=> d!276404 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!46 (regOne!5034 r!15766) (regTwo!5034 r!15766) s!10566) lt!330756)))

(declare-fun m!1129561 () Bool)

(assert (=> bs!234441 m!1129561))

(declare-fun m!1129565 () Bool)

(assert (=> bs!234441 m!1129565))

(declare-fun m!1129569 () Bool)

(assert (=> bs!234441 m!1129569))

(assert (=> bs!234441 m!1129435))

(assert (=> b!881214 d!276404))

(declare-fun e!578664 () Bool)

(assert (=> b!881210 (= tp!278371 e!578664)))

(declare-fun b!881555 () Bool)

(declare-fun tp!278393 () Bool)

(declare-fun tp!278390 () Bool)

(assert (=> b!881555 (= e!578664 (and tp!278393 tp!278390))))

(declare-fun b!881556 () Bool)

(declare-fun tp!278389 () Bool)

(assert (=> b!881556 (= e!578664 tp!278389)))

(declare-fun b!881557 () Bool)

(declare-fun tp!278391 () Bool)

(declare-fun tp!278392 () Bool)

(assert (=> b!881557 (= e!578664 (and tp!278391 tp!278392))))

(declare-fun b!881554 () Bool)

(assert (=> b!881554 (= e!578664 tp_is_empty!4165)))

(assert (= (and b!881210 ((_ is ElementMatch!2261) (reg!2590 r!15766))) b!881554))

(assert (= (and b!881210 ((_ is Concat!4094) (reg!2590 r!15766))) b!881555))

(assert (= (and b!881210 ((_ is Star!2261) (reg!2590 r!15766))) b!881556))

(assert (= (and b!881210 ((_ is Union!2261) (reg!2590 r!15766))) b!881557))

(declare-fun e!578665 () Bool)

(assert (=> b!881212 (= tp!278376 e!578665)))

(declare-fun b!881559 () Bool)

(declare-fun tp!278398 () Bool)

(declare-fun tp!278395 () Bool)

(assert (=> b!881559 (= e!578665 (and tp!278398 tp!278395))))

(declare-fun b!881560 () Bool)

(declare-fun tp!278394 () Bool)

(assert (=> b!881560 (= e!578665 tp!278394)))

(declare-fun b!881561 () Bool)

(declare-fun tp!278396 () Bool)

(declare-fun tp!278397 () Bool)

(assert (=> b!881561 (= e!578665 (and tp!278396 tp!278397))))

(declare-fun b!881558 () Bool)

(assert (=> b!881558 (= e!578665 tp_is_empty!4165)))

(assert (= (and b!881212 ((_ is ElementMatch!2261) (regOne!5035 r!15766))) b!881558))

(assert (= (and b!881212 ((_ is Concat!4094) (regOne!5035 r!15766))) b!881559))

(assert (= (and b!881212 ((_ is Star!2261) (regOne!5035 r!15766))) b!881560))

(assert (= (and b!881212 ((_ is Union!2261) (regOne!5035 r!15766))) b!881561))

(declare-fun e!578669 () Bool)

(assert (=> b!881212 (= tp!278373 e!578669)))

(declare-fun b!881570 () Bool)

(declare-fun tp!278404 () Bool)

(declare-fun tp!278401 () Bool)

(assert (=> b!881570 (= e!578669 (and tp!278404 tp!278401))))

(declare-fun b!881571 () Bool)

(declare-fun tp!278400 () Bool)

(assert (=> b!881571 (= e!578669 tp!278400)))

(declare-fun b!881572 () Bool)

(declare-fun tp!278402 () Bool)

(declare-fun tp!278403 () Bool)

(assert (=> b!881572 (= e!578669 (and tp!278402 tp!278403))))

(declare-fun b!881569 () Bool)

(assert (=> b!881569 (= e!578669 tp_is_empty!4165)))

(assert (= (and b!881212 ((_ is ElementMatch!2261) (regTwo!5035 r!15766))) b!881569))

(assert (= (and b!881212 ((_ is Concat!4094) (regTwo!5035 r!15766))) b!881570))

(assert (= (and b!881212 ((_ is Star!2261) (regTwo!5035 r!15766))) b!881571))

(assert (= (and b!881212 ((_ is Union!2261) (regTwo!5035 r!15766))) b!881572))

(declare-fun b!881581 () Bool)

(declare-fun e!578672 () Bool)

(declare-fun tp!278417 () Bool)

(assert (=> b!881581 (= e!578672 (and tp_is_empty!4165 tp!278417))))

(assert (=> b!881213 (= tp!278375 e!578672)))

(assert (= (and b!881213 ((_ is Cons!9475) (t!100537 s!10566))) b!881581))

(declare-fun e!578673 () Bool)

(assert (=> b!881209 (= tp!278372 e!578673)))

(declare-fun b!881583 () Bool)

(declare-fun tp!278422 () Bool)

(declare-fun tp!278419 () Bool)

(assert (=> b!881583 (= e!578673 (and tp!278422 tp!278419))))

(declare-fun b!881584 () Bool)

(declare-fun tp!278418 () Bool)

(assert (=> b!881584 (= e!578673 tp!278418)))

(declare-fun b!881585 () Bool)

(declare-fun tp!278420 () Bool)

(declare-fun tp!278421 () Bool)

(assert (=> b!881585 (= e!578673 (and tp!278420 tp!278421))))

(declare-fun b!881582 () Bool)

(assert (=> b!881582 (= e!578673 tp_is_empty!4165)))

(assert (= (and b!881209 ((_ is ElementMatch!2261) (regOne!5034 r!15766))) b!881582))

(assert (= (and b!881209 ((_ is Concat!4094) (regOne!5034 r!15766))) b!881583))

(assert (= (and b!881209 ((_ is Star!2261) (regOne!5034 r!15766))) b!881584))

(assert (= (and b!881209 ((_ is Union!2261) (regOne!5034 r!15766))) b!881585))

(declare-fun e!578674 () Bool)

(assert (=> b!881209 (= tp!278374 e!578674)))

(declare-fun b!881587 () Bool)

(declare-fun tp!278427 () Bool)

(declare-fun tp!278424 () Bool)

(assert (=> b!881587 (= e!578674 (and tp!278427 tp!278424))))

(declare-fun b!881588 () Bool)

(declare-fun tp!278423 () Bool)

(assert (=> b!881588 (= e!578674 tp!278423)))

(declare-fun b!881589 () Bool)

(declare-fun tp!278425 () Bool)

(declare-fun tp!278426 () Bool)

(assert (=> b!881589 (= e!578674 (and tp!278425 tp!278426))))

(declare-fun b!881586 () Bool)

(assert (=> b!881586 (= e!578674 tp_is_empty!4165)))

(assert (= (and b!881209 ((_ is ElementMatch!2261) (regTwo!5034 r!15766))) b!881586))

(assert (= (and b!881209 ((_ is Concat!4094) (regTwo!5034 r!15766))) b!881587))

(assert (= (and b!881209 ((_ is Star!2261) (regTwo!5034 r!15766))) b!881588))

(assert (= (and b!881209 ((_ is Union!2261) (regTwo!5034 r!15766))) b!881589))

(check-sat (not d!276390) (not b!881499) (not b!881414) (not b!881504) (not b!881588) (not b!881585) (not b!881242) (not b!881413) (not b!881571) (not b!881570) tp_is_empty!4165 (not b!881587) (not b!881415) (not b!881584) (not b!881559) (not b!881497) (not bm!51445) (not d!276400) (not b!881583) (not b!881408) (not b!881572) (not b!881557) (not d!276386) (not d!276370) (not b!881555) (not b!881503) (not b!881581) (not d!276404) (not b!881406) (not d!276398) (not b!881323) (not b!881326) (not b!881501) (not b!881589) (not b!881404) (not bm!51444) (not bm!51456) (not b!881444) (not b!881560) (not b!881556) (not bm!51474) (not b!881561) (not b!881502) (not d!276394) (not bm!51457) (not d!276376) (not bm!51463) (not bm!51475))
(check-sat)
