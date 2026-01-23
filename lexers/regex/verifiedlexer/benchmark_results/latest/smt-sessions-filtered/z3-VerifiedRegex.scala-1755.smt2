; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87802 () Bool)

(assert start!87802)

(declare-fun b!999231 () Bool)

(declare-fun e!640688 () Bool)

(declare-fun e!640693 () Bool)

(assert (=> b!999231 (= e!640688 (not e!640693))))

(declare-fun res!451218 () Bool)

(assert (=> b!999231 (=> res!451218 e!640693)))

(declare-fun lt!351763 () Bool)

(declare-datatypes ((C!6108 0))(
  ( (C!6109 (val!3302 Int)) )
))
(declare-datatypes ((Regex!2769 0))(
  ( (ElementMatch!2769 (c!164478 C!6108)) (Concat!4602 (regOne!6050 Regex!2769) (regTwo!6050 Regex!2769)) (EmptyExpr!2769) (Star!2769 (reg!3098 Regex!2769)) (EmptyLang!2769) (Union!2769 (regOne!6051 Regex!2769) (regTwo!6051 Regex!2769)) )
))
(declare-fun r!15766 () Regex!2769)

(get-info :version)

(assert (=> b!999231 (= res!451218 (or (not lt!351763) (and ((_ is Concat!4602) r!15766) ((_ is EmptyExpr!2769) (regOne!6050 r!15766))) (and ((_ is Concat!4602) r!15766) ((_ is EmptyExpr!2769) (regTwo!6050 r!15766))) ((_ is Concat!4602) r!15766) (not ((_ is Union!2769) r!15766))))))

(declare-datatypes ((List!9999 0))(
  ( (Nil!9983) (Cons!9983 (h!15384 C!6108) (t!101045 List!9999)) )
))
(declare-fun s!10566 () List!9999)

(declare-fun matchRSpec!568 (Regex!2769 List!9999) Bool)

(assert (=> b!999231 (= lt!351763 (matchRSpec!568 r!15766 s!10566))))

(declare-fun matchR!1305 (Regex!2769 List!9999) Bool)

(assert (=> b!999231 (= lt!351763 (matchR!1305 r!15766 s!10566))))

(declare-datatypes ((Unit!15197 0))(
  ( (Unit!15198) )
))
(declare-fun lt!351762 () Unit!15197)

(declare-fun mainMatchTheorem!568 (Regex!2769 List!9999) Unit!15197)

(assert (=> b!999231 (= lt!351762 (mainMatchTheorem!568 r!15766 s!10566))))

(declare-fun b!999232 () Bool)

(declare-fun e!640690 () Bool)

(declare-fun tp!304624 () Bool)

(assert (=> b!999232 (= e!640690 tp!304624)))

(declare-fun b!999233 () Bool)

(declare-fun e!640692 () Bool)

(declare-fun tp_is_empty!5181 () Bool)

(declare-fun tp!304623 () Bool)

(assert (=> b!999233 (= e!640692 (and tp_is_empty!5181 tp!304623))))

(declare-fun b!999234 () Bool)

(assert (=> b!999234 (= e!640690 tp_is_empty!5181)))

(declare-fun b!999235 () Bool)

(declare-fun tp!304626 () Bool)

(declare-fun tp!304627 () Bool)

(assert (=> b!999235 (= e!640690 (and tp!304626 tp!304627))))

(declare-fun b!999237 () Bool)

(declare-fun e!640689 () Bool)

(declare-fun validRegex!1238 (Regex!2769) Bool)

(assert (=> b!999237 (= e!640689 (validRegex!1238 (regTwo!6051 r!15766)))))

(declare-fun b!999238 () Bool)

(declare-fun tp!304628 () Bool)

(declare-fun tp!304625 () Bool)

(assert (=> b!999238 (= e!640690 (and tp!304628 tp!304625))))

(declare-fun b!999239 () Bool)

(assert (=> b!999239 (= e!640693 e!640689)))

(declare-fun res!451220 () Bool)

(assert (=> b!999239 (=> res!451220 e!640689)))

(declare-fun lt!351760 () Bool)

(assert (=> b!999239 (= res!451220 lt!351760)))

(declare-fun e!640691 () Bool)

(assert (=> b!999239 e!640691))

(declare-fun res!451217 () Bool)

(assert (=> b!999239 (=> res!451217 e!640691)))

(assert (=> b!999239 (= res!451217 lt!351760)))

(assert (=> b!999239 (= lt!351760 (matchR!1305 (regOne!6051 r!15766) s!10566))))

(declare-fun lt!351761 () Unit!15197)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!76 (Regex!2769 Regex!2769 List!9999) Unit!15197)

(assert (=> b!999239 (= lt!351761 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!76 (regOne!6051 r!15766) (regTwo!6051 r!15766) s!10566))))

(declare-fun b!999236 () Bool)

(assert (=> b!999236 (= e!640691 (matchR!1305 (regTwo!6051 r!15766) s!10566))))

(declare-fun res!451219 () Bool)

(assert (=> start!87802 (=> (not res!451219) (not e!640688))))

(assert (=> start!87802 (= res!451219 (validRegex!1238 r!15766))))

(assert (=> start!87802 e!640688))

(assert (=> start!87802 e!640690))

(assert (=> start!87802 e!640692))

(assert (= (and start!87802 res!451219) b!999231))

(assert (= (and b!999231 (not res!451218)) b!999239))

(assert (= (and b!999239 (not res!451217)) b!999236))

(assert (= (and b!999239 (not res!451220)) b!999237))

(assert (= (and start!87802 ((_ is ElementMatch!2769) r!15766)) b!999234))

(assert (= (and start!87802 ((_ is Concat!4602) r!15766)) b!999235))

(assert (= (and start!87802 ((_ is Star!2769) r!15766)) b!999232))

(assert (= (and start!87802 ((_ is Union!2769) r!15766)) b!999238))

(assert (= (and start!87802 ((_ is Cons!9983) s!10566)) b!999233))

(declare-fun m!1189393 () Bool)

(assert (=> b!999236 m!1189393))

(declare-fun m!1189395 () Bool)

(assert (=> b!999237 m!1189395))

(declare-fun m!1189397 () Bool)

(assert (=> start!87802 m!1189397))

(declare-fun m!1189399 () Bool)

(assert (=> b!999239 m!1189399))

(declare-fun m!1189401 () Bool)

(assert (=> b!999239 m!1189401))

(declare-fun m!1189403 () Bool)

(assert (=> b!999231 m!1189403))

(declare-fun m!1189405 () Bool)

(assert (=> b!999231 m!1189405))

(declare-fun m!1189407 () Bool)

(assert (=> b!999231 m!1189407))

(check-sat tp_is_empty!5181 (not start!87802) (not b!999239) (not b!999236) (not b!999238) (not b!999231) (not b!999237) (not b!999232) (not b!999233) (not b!999235))
(check-sat)
(get-model)

(declare-fun b!999280 () Bool)

(declare-fun res!451237 () Bool)

(declare-fun e!640728 () Bool)

(assert (=> b!999280 (=> res!451237 e!640728)))

(assert (=> b!999280 (= res!451237 (not ((_ is Concat!4602) r!15766)))))

(declare-fun e!640726 () Bool)

(assert (=> b!999280 (= e!640726 e!640728)))

(declare-fun b!999281 () Bool)

(declare-fun e!640727 () Bool)

(declare-fun call!66296 () Bool)

(assert (=> b!999281 (= e!640727 call!66296)))

(declare-fun b!999282 () Bool)

(declare-fun e!640722 () Bool)

(declare-fun e!640724 () Bool)

(assert (=> b!999282 (= e!640722 e!640724)))

(declare-fun res!451239 () Bool)

(declare-fun nullable!883 (Regex!2769) Bool)

(assert (=> b!999282 (= res!451239 (not (nullable!883 (reg!3098 r!15766))))))

(assert (=> b!999282 (=> (not res!451239) (not e!640724))))

(declare-fun bm!66289 () Bool)

(declare-fun call!66295 () Bool)

(declare-fun c!164491 () Bool)

(assert (=> bm!66289 (= call!66295 (validRegex!1238 (ite c!164491 (regOne!6051 r!15766) (regOne!6050 r!15766))))))

(declare-fun b!999283 () Bool)

(declare-fun e!640723 () Bool)

(assert (=> b!999283 (= e!640723 e!640722)))

(declare-fun c!164492 () Bool)

(assert (=> b!999283 (= c!164492 ((_ is Star!2769) r!15766))))

(declare-fun bm!66290 () Bool)

(declare-fun call!66294 () Bool)

(assert (=> bm!66290 (= call!66296 call!66294)))

(declare-fun b!999284 () Bool)

(assert (=> b!999284 (= e!640722 e!640726)))

(assert (=> b!999284 (= c!164491 ((_ is Union!2769) r!15766))))

(declare-fun b!999285 () Bool)

(assert (=> b!999285 (= e!640724 call!66294)))

(declare-fun bm!66291 () Bool)

(assert (=> bm!66291 (= call!66294 (validRegex!1238 (ite c!164492 (reg!3098 r!15766) (ite c!164491 (regTwo!6051 r!15766) (regTwo!6050 r!15766)))))))

(declare-fun d!291158 () Bool)

(declare-fun res!451241 () Bool)

(assert (=> d!291158 (=> res!451241 e!640723)))

(assert (=> d!291158 (= res!451241 ((_ is ElementMatch!2769) r!15766))))

(assert (=> d!291158 (= (validRegex!1238 r!15766) e!640723)))

(declare-fun b!999286 () Bool)

(declare-fun e!640725 () Bool)

(assert (=> b!999286 (= e!640725 call!66296)))

(declare-fun b!999287 () Bool)

(declare-fun res!451240 () Bool)

(assert (=> b!999287 (=> (not res!451240) (not e!640727))))

(assert (=> b!999287 (= res!451240 call!66295)))

(assert (=> b!999287 (= e!640726 e!640727)))

(declare-fun b!999288 () Bool)

(assert (=> b!999288 (= e!640728 e!640725)))

(declare-fun res!451238 () Bool)

(assert (=> b!999288 (=> (not res!451238) (not e!640725))))

(assert (=> b!999288 (= res!451238 call!66295)))

(assert (= (and d!291158 (not res!451241)) b!999283))

(assert (= (and b!999283 c!164492) b!999282))

(assert (= (and b!999283 (not c!164492)) b!999284))

(assert (= (and b!999282 res!451239) b!999285))

(assert (= (and b!999284 c!164491) b!999287))

(assert (= (and b!999284 (not c!164491)) b!999280))

(assert (= (and b!999287 res!451240) b!999281))

(assert (= (and b!999280 (not res!451237)) b!999288))

(assert (= (and b!999288 res!451238) b!999286))

(assert (= (or b!999281 b!999286) bm!66290))

(assert (= (or b!999287 b!999288) bm!66289))

(assert (= (or b!999285 bm!66290) bm!66291))

(declare-fun m!1189409 () Bool)

(assert (=> b!999282 m!1189409))

(declare-fun m!1189411 () Bool)

(assert (=> bm!66289 m!1189411))

(declare-fun m!1189413 () Bool)

(assert (=> bm!66291 m!1189413))

(assert (=> start!87802 d!291158))

(declare-fun b!999493 () Bool)

(assert (=> b!999493 true))

(assert (=> b!999493 true))

(declare-fun bs!245080 () Bool)

(declare-fun b!999499 () Bool)

(assert (= bs!245080 (and b!999499 b!999493)))

(declare-fun lambda!35502 () Int)

(declare-fun lambda!35501 () Int)

(assert (=> bs!245080 (not (= lambda!35502 lambda!35501))))

(assert (=> b!999499 true))

(assert (=> b!999499 true))

(declare-fun e!640840 () Bool)

(declare-fun call!66325 () Bool)

(assert (=> b!999493 (= e!640840 call!66325)))

(declare-fun b!999494 () Bool)

(declare-fun e!640837 () Bool)

(assert (=> b!999494 (= e!640837 (= s!10566 (Cons!9983 (c!164478 r!15766) Nil!9983)))))

(declare-fun b!999495 () Bool)

(declare-fun e!640838 () Bool)

(declare-fun e!640841 () Bool)

(assert (=> b!999495 (= e!640838 e!640841)))

(declare-fun res!451337 () Bool)

(assert (=> b!999495 (= res!451337 (matchRSpec!568 (regOne!6051 r!15766) s!10566))))

(assert (=> b!999495 (=> res!451337 e!640841)))

(declare-fun b!999496 () Bool)

(declare-fun e!640842 () Bool)

(assert (=> b!999496 (= e!640838 e!640842)))

(declare-fun c!164528 () Bool)

(assert (=> b!999496 (= c!164528 ((_ is Star!2769) r!15766))))

(declare-fun b!999497 () Bool)

(declare-fun c!164531 () Bool)

(assert (=> b!999497 (= c!164531 ((_ is Union!2769) r!15766))))

(assert (=> b!999497 (= e!640837 e!640838)))

(declare-fun b!999498 () Bool)

(declare-fun e!640843 () Bool)

(declare-fun call!66324 () Bool)

(assert (=> b!999498 (= e!640843 call!66324)))

(assert (=> b!999499 (= e!640842 call!66325)))

(declare-fun bm!66319 () Bool)

(declare-fun isEmpty!6321 (List!9999) Bool)

(assert (=> bm!66319 (= call!66324 (isEmpty!6321 s!10566))))

(declare-fun b!999500 () Bool)

(declare-fun c!164529 () Bool)

(assert (=> b!999500 (= c!164529 ((_ is ElementMatch!2769) r!15766))))

(declare-fun e!640839 () Bool)

(assert (=> b!999500 (= e!640839 e!640837)))

(declare-fun d!291160 () Bool)

(declare-fun c!164530 () Bool)

(assert (=> d!291160 (= c!164530 ((_ is EmptyExpr!2769) r!15766))))

(assert (=> d!291160 (= (matchRSpec!568 r!15766 s!10566) e!640843)))

(declare-fun b!999501 () Bool)

(assert (=> b!999501 (= e!640841 (matchRSpec!568 (regTwo!6051 r!15766) s!10566))))

(declare-fun bm!66320 () Bool)

(declare-fun Exists!504 (Int) Bool)

(assert (=> bm!66320 (= call!66325 (Exists!504 (ite c!164528 lambda!35501 lambda!35502)))))

(declare-fun b!999502 () Bool)

(declare-fun res!451339 () Bool)

(assert (=> b!999502 (=> res!451339 e!640840)))

(assert (=> b!999502 (= res!451339 call!66324)))

(assert (=> b!999502 (= e!640842 e!640840)))

(declare-fun b!999503 () Bool)

(assert (=> b!999503 (= e!640843 e!640839)))

(declare-fun res!451338 () Bool)

(assert (=> b!999503 (= res!451338 (not ((_ is EmptyLang!2769) r!15766)))))

(assert (=> b!999503 (=> (not res!451338) (not e!640839))))

(assert (= (and d!291160 c!164530) b!999498))

(assert (= (and d!291160 (not c!164530)) b!999503))

(assert (= (and b!999503 res!451338) b!999500))

(assert (= (and b!999500 c!164529) b!999494))

(assert (= (and b!999500 (not c!164529)) b!999497))

(assert (= (and b!999497 c!164531) b!999495))

(assert (= (and b!999497 (not c!164531)) b!999496))

(assert (= (and b!999495 (not res!451337)) b!999501))

(assert (= (and b!999496 c!164528) b!999502))

(assert (= (and b!999496 (not c!164528)) b!999499))

(assert (= (and b!999502 (not res!451339)) b!999493))

(assert (= (or b!999493 b!999499) bm!66320))

(assert (= (or b!999498 b!999502) bm!66319))

(declare-fun m!1189465 () Bool)

(assert (=> b!999495 m!1189465))

(declare-fun m!1189467 () Bool)

(assert (=> bm!66319 m!1189467))

(declare-fun m!1189469 () Bool)

(assert (=> b!999501 m!1189469))

(declare-fun m!1189471 () Bool)

(assert (=> bm!66320 m!1189471))

(assert (=> b!999231 d!291160))

(declare-fun b!999536 () Bool)

(declare-fun e!640859 () Bool)

(assert (=> b!999536 (= e!640859 (nullable!883 r!15766))))

(declare-fun b!999537 () Bool)

(declare-fun res!451357 () Bool)

(declare-fun e!640863 () Bool)

(assert (=> b!999537 (=> (not res!451357) (not e!640863))))

(declare-fun tail!1404 (List!9999) List!9999)

(assert (=> b!999537 (= res!451357 (isEmpty!6321 (tail!1404 s!10566)))))

(declare-fun b!999538 () Bool)

(declare-fun e!640862 () Bool)

(declare-fun e!640860 () Bool)

(assert (=> b!999538 (= e!640862 e!640860)))

(declare-fun res!451358 () Bool)

(assert (=> b!999538 (=> (not res!451358) (not e!640860))))

(declare-fun lt!351777 () Bool)

(assert (=> b!999538 (= res!451358 (not lt!351777))))

(declare-fun d!291176 () Bool)

(declare-fun e!640864 () Bool)

(assert (=> d!291176 e!640864))

(declare-fun c!164538 () Bool)

(assert (=> d!291176 (= c!164538 ((_ is EmptyExpr!2769) r!15766))))

(assert (=> d!291176 (= lt!351777 e!640859)))

(declare-fun c!164539 () Bool)

(assert (=> d!291176 (= c!164539 (isEmpty!6321 s!10566))))

(assert (=> d!291176 (validRegex!1238 r!15766)))

(assert (=> d!291176 (= (matchR!1305 r!15766 s!10566) lt!351777)))

(declare-fun b!999539 () Bool)

(declare-fun res!451362 () Bool)

(assert (=> b!999539 (=> res!451362 e!640862)))

(assert (=> b!999539 (= res!451362 (not ((_ is ElementMatch!2769) r!15766)))))

(declare-fun e!640861 () Bool)

(assert (=> b!999539 (= e!640861 e!640862)))

(declare-fun bm!66323 () Bool)

(declare-fun call!66328 () Bool)

(assert (=> bm!66323 (= call!66328 (isEmpty!6321 s!10566))))

(declare-fun b!999540 () Bool)

(declare-fun e!640858 () Bool)

(declare-fun head!1842 (List!9999) C!6108)

(assert (=> b!999540 (= e!640858 (not (= (head!1842 s!10566) (c!164478 r!15766))))))

(declare-fun b!999541 () Bool)

(assert (=> b!999541 (= e!640863 (= (head!1842 s!10566) (c!164478 r!15766)))))

(declare-fun b!999542 () Bool)

(assert (=> b!999542 (= e!640860 e!640858)))

(declare-fun res!451363 () Bool)

(assert (=> b!999542 (=> res!451363 e!640858)))

(assert (=> b!999542 (= res!451363 call!66328)))

(declare-fun b!999543 () Bool)

(assert (=> b!999543 (= e!640864 (= lt!351777 call!66328))))

(declare-fun b!999544 () Bool)

(declare-fun derivativeStep!689 (Regex!2769 C!6108) Regex!2769)

(assert (=> b!999544 (= e!640859 (matchR!1305 (derivativeStep!689 r!15766 (head!1842 s!10566)) (tail!1404 s!10566)))))

(declare-fun b!999545 () Bool)

(assert (=> b!999545 (= e!640861 (not lt!351777))))

(declare-fun b!999546 () Bool)

(declare-fun res!451356 () Bool)

(assert (=> b!999546 (=> (not res!451356) (not e!640863))))

(assert (=> b!999546 (= res!451356 (not call!66328))))

(declare-fun b!999547 () Bool)

(assert (=> b!999547 (= e!640864 e!640861)))

(declare-fun c!164540 () Bool)

(assert (=> b!999547 (= c!164540 ((_ is EmptyLang!2769) r!15766))))

(declare-fun b!999548 () Bool)

(declare-fun res!451361 () Bool)

(assert (=> b!999548 (=> res!451361 e!640862)))

(assert (=> b!999548 (= res!451361 e!640863)))

(declare-fun res!451359 () Bool)

(assert (=> b!999548 (=> (not res!451359) (not e!640863))))

(assert (=> b!999548 (= res!451359 lt!351777)))

(declare-fun b!999549 () Bool)

(declare-fun res!451360 () Bool)

(assert (=> b!999549 (=> res!451360 e!640858)))

(assert (=> b!999549 (= res!451360 (not (isEmpty!6321 (tail!1404 s!10566))))))

(assert (= (and d!291176 c!164539) b!999536))

(assert (= (and d!291176 (not c!164539)) b!999544))

(assert (= (and d!291176 c!164538) b!999543))

(assert (= (and d!291176 (not c!164538)) b!999547))

(assert (= (and b!999547 c!164540) b!999545))

(assert (= (and b!999547 (not c!164540)) b!999539))

(assert (= (and b!999539 (not res!451362)) b!999548))

(assert (= (and b!999548 res!451359) b!999546))

(assert (= (and b!999546 res!451356) b!999537))

(assert (= (and b!999537 res!451357) b!999541))

(assert (= (and b!999548 (not res!451361)) b!999538))

(assert (= (and b!999538 res!451358) b!999542))

(assert (= (and b!999542 (not res!451363)) b!999549))

(assert (= (and b!999549 (not res!451360)) b!999540))

(assert (= (or b!999543 b!999542 b!999546) bm!66323))

(declare-fun m!1189473 () Bool)

(assert (=> b!999536 m!1189473))

(declare-fun m!1189475 () Bool)

(assert (=> b!999537 m!1189475))

(assert (=> b!999537 m!1189475))

(declare-fun m!1189477 () Bool)

(assert (=> b!999537 m!1189477))

(declare-fun m!1189479 () Bool)

(assert (=> b!999544 m!1189479))

(assert (=> b!999544 m!1189479))

(declare-fun m!1189481 () Bool)

(assert (=> b!999544 m!1189481))

(assert (=> b!999544 m!1189475))

(assert (=> b!999544 m!1189481))

(assert (=> b!999544 m!1189475))

(declare-fun m!1189483 () Bool)

(assert (=> b!999544 m!1189483))

(assert (=> b!999540 m!1189479))

(assert (=> b!999541 m!1189479))

(assert (=> d!291176 m!1189467))

(assert (=> d!291176 m!1189397))

(assert (=> b!999549 m!1189475))

(assert (=> b!999549 m!1189475))

(assert (=> b!999549 m!1189477))

(assert (=> bm!66323 m!1189467))

(assert (=> b!999231 d!291176))

(declare-fun d!291178 () Bool)

(assert (=> d!291178 (= (matchR!1305 r!15766 s!10566) (matchRSpec!568 r!15766 s!10566))))

(declare-fun lt!351780 () Unit!15197)

(declare-fun choose!6324 (Regex!2769 List!9999) Unit!15197)

(assert (=> d!291178 (= lt!351780 (choose!6324 r!15766 s!10566))))

(assert (=> d!291178 (validRegex!1238 r!15766)))

(assert (=> d!291178 (= (mainMatchTheorem!568 r!15766 s!10566) lt!351780)))

(declare-fun bs!245081 () Bool)

(assert (= bs!245081 d!291178))

(assert (=> bs!245081 m!1189405))

(assert (=> bs!245081 m!1189403))

(declare-fun m!1189485 () Bool)

(assert (=> bs!245081 m!1189485))

(assert (=> bs!245081 m!1189397))

(assert (=> b!999231 d!291178))

(declare-fun b!999550 () Bool)

(declare-fun e!640866 () Bool)

(assert (=> b!999550 (= e!640866 (nullable!883 (regTwo!6051 r!15766)))))

(declare-fun b!999551 () Bool)

(declare-fun res!451365 () Bool)

(declare-fun e!640870 () Bool)

(assert (=> b!999551 (=> (not res!451365) (not e!640870))))

(assert (=> b!999551 (= res!451365 (isEmpty!6321 (tail!1404 s!10566)))))

(declare-fun b!999552 () Bool)

(declare-fun e!640869 () Bool)

(declare-fun e!640867 () Bool)

(assert (=> b!999552 (= e!640869 e!640867)))

(declare-fun res!451366 () Bool)

(assert (=> b!999552 (=> (not res!451366) (not e!640867))))

(declare-fun lt!351781 () Bool)

(assert (=> b!999552 (= res!451366 (not lt!351781))))

(declare-fun d!291180 () Bool)

(declare-fun e!640871 () Bool)

(assert (=> d!291180 e!640871))

(declare-fun c!164541 () Bool)

(assert (=> d!291180 (= c!164541 ((_ is EmptyExpr!2769) (regTwo!6051 r!15766)))))

(assert (=> d!291180 (= lt!351781 e!640866)))

(declare-fun c!164542 () Bool)

(assert (=> d!291180 (= c!164542 (isEmpty!6321 s!10566))))

(assert (=> d!291180 (validRegex!1238 (regTwo!6051 r!15766))))

(assert (=> d!291180 (= (matchR!1305 (regTwo!6051 r!15766) s!10566) lt!351781)))

(declare-fun b!999553 () Bool)

(declare-fun res!451370 () Bool)

(assert (=> b!999553 (=> res!451370 e!640869)))

(assert (=> b!999553 (= res!451370 (not ((_ is ElementMatch!2769) (regTwo!6051 r!15766))))))

(declare-fun e!640868 () Bool)

(assert (=> b!999553 (= e!640868 e!640869)))

(declare-fun bm!66324 () Bool)

(declare-fun call!66329 () Bool)

(assert (=> bm!66324 (= call!66329 (isEmpty!6321 s!10566))))

(declare-fun b!999554 () Bool)

(declare-fun e!640865 () Bool)

(assert (=> b!999554 (= e!640865 (not (= (head!1842 s!10566) (c!164478 (regTwo!6051 r!15766)))))))

(declare-fun b!999555 () Bool)

(assert (=> b!999555 (= e!640870 (= (head!1842 s!10566) (c!164478 (regTwo!6051 r!15766))))))

(declare-fun b!999556 () Bool)

(assert (=> b!999556 (= e!640867 e!640865)))

(declare-fun res!451371 () Bool)

(assert (=> b!999556 (=> res!451371 e!640865)))

(assert (=> b!999556 (= res!451371 call!66329)))

(declare-fun b!999557 () Bool)

(assert (=> b!999557 (= e!640871 (= lt!351781 call!66329))))

(declare-fun b!999558 () Bool)

(assert (=> b!999558 (= e!640866 (matchR!1305 (derivativeStep!689 (regTwo!6051 r!15766) (head!1842 s!10566)) (tail!1404 s!10566)))))

(declare-fun b!999559 () Bool)

(assert (=> b!999559 (= e!640868 (not lt!351781))))

(declare-fun b!999560 () Bool)

(declare-fun res!451364 () Bool)

(assert (=> b!999560 (=> (not res!451364) (not e!640870))))

(assert (=> b!999560 (= res!451364 (not call!66329))))

(declare-fun b!999561 () Bool)

(assert (=> b!999561 (= e!640871 e!640868)))

(declare-fun c!164543 () Bool)

(assert (=> b!999561 (= c!164543 ((_ is EmptyLang!2769) (regTwo!6051 r!15766)))))

(declare-fun b!999562 () Bool)

(declare-fun res!451369 () Bool)

(assert (=> b!999562 (=> res!451369 e!640869)))

(assert (=> b!999562 (= res!451369 e!640870)))

(declare-fun res!451367 () Bool)

(assert (=> b!999562 (=> (not res!451367) (not e!640870))))

(assert (=> b!999562 (= res!451367 lt!351781)))

(declare-fun b!999563 () Bool)

(declare-fun res!451368 () Bool)

(assert (=> b!999563 (=> res!451368 e!640865)))

(assert (=> b!999563 (= res!451368 (not (isEmpty!6321 (tail!1404 s!10566))))))

(assert (= (and d!291180 c!164542) b!999550))

(assert (= (and d!291180 (not c!164542)) b!999558))

(assert (= (and d!291180 c!164541) b!999557))

(assert (= (and d!291180 (not c!164541)) b!999561))

(assert (= (and b!999561 c!164543) b!999559))

(assert (= (and b!999561 (not c!164543)) b!999553))

(assert (= (and b!999553 (not res!451370)) b!999562))

(assert (= (and b!999562 res!451367) b!999560))

(assert (= (and b!999560 res!451364) b!999551))

(assert (= (and b!999551 res!451365) b!999555))

(assert (= (and b!999562 (not res!451369)) b!999552))

(assert (= (and b!999552 res!451366) b!999556))

(assert (= (and b!999556 (not res!451371)) b!999563))

(assert (= (and b!999563 (not res!451368)) b!999554))

(assert (= (or b!999557 b!999556 b!999560) bm!66324))

(declare-fun m!1189487 () Bool)

(assert (=> b!999550 m!1189487))

(assert (=> b!999551 m!1189475))

(assert (=> b!999551 m!1189475))

(assert (=> b!999551 m!1189477))

(assert (=> b!999558 m!1189479))

(assert (=> b!999558 m!1189479))

(declare-fun m!1189489 () Bool)

(assert (=> b!999558 m!1189489))

(assert (=> b!999558 m!1189475))

(assert (=> b!999558 m!1189489))

(assert (=> b!999558 m!1189475))

(declare-fun m!1189491 () Bool)

(assert (=> b!999558 m!1189491))

(assert (=> b!999554 m!1189479))

(assert (=> b!999555 m!1189479))

(assert (=> d!291180 m!1189467))

(assert (=> d!291180 m!1189395))

(assert (=> b!999563 m!1189475))

(assert (=> b!999563 m!1189475))

(assert (=> b!999563 m!1189477))

(assert (=> bm!66324 m!1189467))

(assert (=> b!999236 d!291180))

(declare-fun b!999564 () Bool)

(declare-fun e!640873 () Bool)

(assert (=> b!999564 (= e!640873 (nullable!883 (regOne!6051 r!15766)))))

(declare-fun b!999565 () Bool)

(declare-fun res!451373 () Bool)

(declare-fun e!640877 () Bool)

(assert (=> b!999565 (=> (not res!451373) (not e!640877))))

(assert (=> b!999565 (= res!451373 (isEmpty!6321 (tail!1404 s!10566)))))

(declare-fun b!999566 () Bool)

(declare-fun e!640876 () Bool)

(declare-fun e!640874 () Bool)

(assert (=> b!999566 (= e!640876 e!640874)))

(declare-fun res!451374 () Bool)

(assert (=> b!999566 (=> (not res!451374) (not e!640874))))

(declare-fun lt!351782 () Bool)

(assert (=> b!999566 (= res!451374 (not lt!351782))))

(declare-fun d!291182 () Bool)

(declare-fun e!640878 () Bool)

(assert (=> d!291182 e!640878))

(declare-fun c!164544 () Bool)

(assert (=> d!291182 (= c!164544 ((_ is EmptyExpr!2769) (regOne!6051 r!15766)))))

(assert (=> d!291182 (= lt!351782 e!640873)))

(declare-fun c!164545 () Bool)

(assert (=> d!291182 (= c!164545 (isEmpty!6321 s!10566))))

(assert (=> d!291182 (validRegex!1238 (regOne!6051 r!15766))))

(assert (=> d!291182 (= (matchR!1305 (regOne!6051 r!15766) s!10566) lt!351782)))

(declare-fun b!999567 () Bool)

(declare-fun res!451378 () Bool)

(assert (=> b!999567 (=> res!451378 e!640876)))

(assert (=> b!999567 (= res!451378 (not ((_ is ElementMatch!2769) (regOne!6051 r!15766))))))

(declare-fun e!640875 () Bool)

(assert (=> b!999567 (= e!640875 e!640876)))

(declare-fun bm!66325 () Bool)

(declare-fun call!66330 () Bool)

(assert (=> bm!66325 (= call!66330 (isEmpty!6321 s!10566))))

(declare-fun b!999568 () Bool)

(declare-fun e!640872 () Bool)

(assert (=> b!999568 (= e!640872 (not (= (head!1842 s!10566) (c!164478 (regOne!6051 r!15766)))))))

(declare-fun b!999569 () Bool)

(assert (=> b!999569 (= e!640877 (= (head!1842 s!10566) (c!164478 (regOne!6051 r!15766))))))

(declare-fun b!999570 () Bool)

(assert (=> b!999570 (= e!640874 e!640872)))

(declare-fun res!451379 () Bool)

(assert (=> b!999570 (=> res!451379 e!640872)))

(assert (=> b!999570 (= res!451379 call!66330)))

(declare-fun b!999571 () Bool)

(assert (=> b!999571 (= e!640878 (= lt!351782 call!66330))))

(declare-fun b!999572 () Bool)

(assert (=> b!999572 (= e!640873 (matchR!1305 (derivativeStep!689 (regOne!6051 r!15766) (head!1842 s!10566)) (tail!1404 s!10566)))))

(declare-fun b!999573 () Bool)

(assert (=> b!999573 (= e!640875 (not lt!351782))))

(declare-fun b!999574 () Bool)

(declare-fun res!451372 () Bool)

(assert (=> b!999574 (=> (not res!451372) (not e!640877))))

(assert (=> b!999574 (= res!451372 (not call!66330))))

(declare-fun b!999575 () Bool)

(assert (=> b!999575 (= e!640878 e!640875)))

(declare-fun c!164546 () Bool)

(assert (=> b!999575 (= c!164546 ((_ is EmptyLang!2769) (regOne!6051 r!15766)))))

(declare-fun b!999576 () Bool)

(declare-fun res!451377 () Bool)

(assert (=> b!999576 (=> res!451377 e!640876)))

(assert (=> b!999576 (= res!451377 e!640877)))

(declare-fun res!451375 () Bool)

(assert (=> b!999576 (=> (not res!451375) (not e!640877))))

(assert (=> b!999576 (= res!451375 lt!351782)))

(declare-fun b!999577 () Bool)

(declare-fun res!451376 () Bool)

(assert (=> b!999577 (=> res!451376 e!640872)))

(assert (=> b!999577 (= res!451376 (not (isEmpty!6321 (tail!1404 s!10566))))))

(assert (= (and d!291182 c!164545) b!999564))

(assert (= (and d!291182 (not c!164545)) b!999572))

(assert (= (and d!291182 c!164544) b!999571))

(assert (= (and d!291182 (not c!164544)) b!999575))

(assert (= (and b!999575 c!164546) b!999573))

(assert (= (and b!999575 (not c!164546)) b!999567))

(assert (= (and b!999567 (not res!451378)) b!999576))

(assert (= (and b!999576 res!451375) b!999574))

(assert (= (and b!999574 res!451372) b!999565))

(assert (= (and b!999565 res!451373) b!999569))

(assert (= (and b!999576 (not res!451377)) b!999566))

(assert (= (and b!999566 res!451374) b!999570))

(assert (= (and b!999570 (not res!451379)) b!999577))

(assert (= (and b!999577 (not res!451376)) b!999568))

(assert (= (or b!999571 b!999570 b!999574) bm!66325))

(declare-fun m!1189493 () Bool)

(assert (=> b!999564 m!1189493))

(assert (=> b!999565 m!1189475))

(assert (=> b!999565 m!1189475))

(assert (=> b!999565 m!1189477))

(assert (=> b!999572 m!1189479))

(assert (=> b!999572 m!1189479))

(declare-fun m!1189495 () Bool)

(assert (=> b!999572 m!1189495))

(assert (=> b!999572 m!1189475))

(assert (=> b!999572 m!1189495))

(assert (=> b!999572 m!1189475))

(declare-fun m!1189497 () Bool)

(assert (=> b!999572 m!1189497))

(assert (=> b!999568 m!1189479))

(assert (=> b!999569 m!1189479))

(assert (=> d!291182 m!1189467))

(declare-fun m!1189499 () Bool)

(assert (=> d!291182 m!1189499))

(assert (=> b!999577 m!1189475))

(assert (=> b!999577 m!1189475))

(assert (=> b!999577 m!1189477))

(assert (=> bm!66325 m!1189467))

(assert (=> b!999239 d!291182))

(declare-fun d!291184 () Bool)

(declare-fun e!640884 () Bool)

(assert (=> d!291184 e!640884))

(declare-fun res!451384 () Bool)

(assert (=> d!291184 (=> res!451384 e!640884)))

(assert (=> d!291184 (= res!451384 (matchR!1305 (regOne!6051 r!15766) s!10566))))

(declare-fun lt!351785 () Unit!15197)

(declare-fun choose!6326 (Regex!2769 Regex!2769 List!9999) Unit!15197)

(assert (=> d!291184 (= lt!351785 (choose!6326 (regOne!6051 r!15766) (regTwo!6051 r!15766) s!10566))))

(declare-fun e!640883 () Bool)

(assert (=> d!291184 e!640883))

(declare-fun res!451385 () Bool)

(assert (=> d!291184 (=> (not res!451385) (not e!640883))))

(assert (=> d!291184 (= res!451385 (validRegex!1238 (regOne!6051 r!15766)))))

(assert (=> d!291184 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!76 (regOne!6051 r!15766) (regTwo!6051 r!15766) s!10566) lt!351785)))

(declare-fun b!999582 () Bool)

(assert (=> b!999582 (= e!640883 (validRegex!1238 (regTwo!6051 r!15766)))))

(declare-fun b!999583 () Bool)

(assert (=> b!999583 (= e!640884 (matchR!1305 (regTwo!6051 r!15766) s!10566))))

(assert (= (and d!291184 res!451385) b!999582))

(assert (= (and d!291184 (not res!451384)) b!999583))

(assert (=> d!291184 m!1189399))

(declare-fun m!1189501 () Bool)

(assert (=> d!291184 m!1189501))

(assert (=> d!291184 m!1189499))

(assert (=> b!999582 m!1189395))

(assert (=> b!999583 m!1189393))

(assert (=> b!999239 d!291184))

(declare-fun b!999584 () Bool)

(declare-fun res!451386 () Bool)

(declare-fun e!640891 () Bool)

(assert (=> b!999584 (=> res!451386 e!640891)))

(assert (=> b!999584 (= res!451386 (not ((_ is Concat!4602) (regTwo!6051 r!15766))))))

(declare-fun e!640889 () Bool)

(assert (=> b!999584 (= e!640889 e!640891)))

(declare-fun b!999585 () Bool)

(declare-fun e!640890 () Bool)

(declare-fun call!66333 () Bool)

(assert (=> b!999585 (= e!640890 call!66333)))

(declare-fun b!999586 () Bool)

(declare-fun e!640885 () Bool)

(declare-fun e!640887 () Bool)

(assert (=> b!999586 (= e!640885 e!640887)))

(declare-fun res!451388 () Bool)

(assert (=> b!999586 (= res!451388 (not (nullable!883 (reg!3098 (regTwo!6051 r!15766)))))))

(assert (=> b!999586 (=> (not res!451388) (not e!640887))))

(declare-fun bm!66326 () Bool)

(declare-fun call!66332 () Bool)

(declare-fun c!164547 () Bool)

(assert (=> bm!66326 (= call!66332 (validRegex!1238 (ite c!164547 (regOne!6051 (regTwo!6051 r!15766)) (regOne!6050 (regTwo!6051 r!15766)))))))

(declare-fun b!999587 () Bool)

(declare-fun e!640886 () Bool)

(assert (=> b!999587 (= e!640886 e!640885)))

(declare-fun c!164548 () Bool)

(assert (=> b!999587 (= c!164548 ((_ is Star!2769) (regTwo!6051 r!15766)))))

(declare-fun bm!66327 () Bool)

(declare-fun call!66331 () Bool)

(assert (=> bm!66327 (= call!66333 call!66331)))

(declare-fun b!999588 () Bool)

(assert (=> b!999588 (= e!640885 e!640889)))

(assert (=> b!999588 (= c!164547 ((_ is Union!2769) (regTwo!6051 r!15766)))))

(declare-fun b!999589 () Bool)

(assert (=> b!999589 (= e!640887 call!66331)))

(declare-fun bm!66328 () Bool)

(assert (=> bm!66328 (= call!66331 (validRegex!1238 (ite c!164548 (reg!3098 (regTwo!6051 r!15766)) (ite c!164547 (regTwo!6051 (regTwo!6051 r!15766)) (regTwo!6050 (regTwo!6051 r!15766))))))))

(declare-fun d!291186 () Bool)

(declare-fun res!451390 () Bool)

(assert (=> d!291186 (=> res!451390 e!640886)))

(assert (=> d!291186 (= res!451390 ((_ is ElementMatch!2769) (regTwo!6051 r!15766)))))

(assert (=> d!291186 (= (validRegex!1238 (regTwo!6051 r!15766)) e!640886)))

(declare-fun b!999590 () Bool)

(declare-fun e!640888 () Bool)

(assert (=> b!999590 (= e!640888 call!66333)))

(declare-fun b!999591 () Bool)

(declare-fun res!451389 () Bool)

(assert (=> b!999591 (=> (not res!451389) (not e!640890))))

(assert (=> b!999591 (= res!451389 call!66332)))

(assert (=> b!999591 (= e!640889 e!640890)))

(declare-fun b!999592 () Bool)

(assert (=> b!999592 (= e!640891 e!640888)))

(declare-fun res!451387 () Bool)

(assert (=> b!999592 (=> (not res!451387) (not e!640888))))

(assert (=> b!999592 (= res!451387 call!66332)))

(assert (= (and d!291186 (not res!451390)) b!999587))

(assert (= (and b!999587 c!164548) b!999586))

(assert (= (and b!999587 (not c!164548)) b!999588))

(assert (= (and b!999586 res!451388) b!999589))

(assert (= (and b!999588 c!164547) b!999591))

(assert (= (and b!999588 (not c!164547)) b!999584))

(assert (= (and b!999591 res!451389) b!999585))

(assert (= (and b!999584 (not res!451386)) b!999592))

(assert (= (and b!999592 res!451387) b!999590))

(assert (= (or b!999585 b!999590) bm!66327))

(assert (= (or b!999591 b!999592) bm!66326))

(assert (= (or b!999589 bm!66327) bm!66328))

(declare-fun m!1189503 () Bool)

(assert (=> b!999586 m!1189503))

(declare-fun m!1189505 () Bool)

(assert (=> bm!66326 m!1189505))

(declare-fun m!1189507 () Bool)

(assert (=> bm!66328 m!1189507))

(assert (=> b!999237 d!291186))

(declare-fun b!999603 () Bool)

(declare-fun e!640894 () Bool)

(assert (=> b!999603 (= e!640894 tp_is_empty!5181)))

(assert (=> b!999235 (= tp!304626 e!640894)))

(declare-fun b!999604 () Bool)

(declare-fun tp!304681 () Bool)

(declare-fun tp!304680 () Bool)

(assert (=> b!999604 (= e!640894 (and tp!304681 tp!304680))))

(declare-fun b!999605 () Bool)

(declare-fun tp!304679 () Bool)

(assert (=> b!999605 (= e!640894 tp!304679)))

(declare-fun b!999606 () Bool)

(declare-fun tp!304677 () Bool)

(declare-fun tp!304678 () Bool)

(assert (=> b!999606 (= e!640894 (and tp!304677 tp!304678))))

(assert (= (and b!999235 ((_ is ElementMatch!2769) (regOne!6050 r!15766))) b!999603))

(assert (= (and b!999235 ((_ is Concat!4602) (regOne!6050 r!15766))) b!999604))

(assert (= (and b!999235 ((_ is Star!2769) (regOne!6050 r!15766))) b!999605))

(assert (= (and b!999235 ((_ is Union!2769) (regOne!6050 r!15766))) b!999606))

(declare-fun b!999607 () Bool)

(declare-fun e!640895 () Bool)

(assert (=> b!999607 (= e!640895 tp_is_empty!5181)))

(assert (=> b!999235 (= tp!304627 e!640895)))

(declare-fun b!999608 () Bool)

(declare-fun tp!304686 () Bool)

(declare-fun tp!304685 () Bool)

(assert (=> b!999608 (= e!640895 (and tp!304686 tp!304685))))

(declare-fun b!999609 () Bool)

(declare-fun tp!304684 () Bool)

(assert (=> b!999609 (= e!640895 tp!304684)))

(declare-fun b!999610 () Bool)

(declare-fun tp!304682 () Bool)

(declare-fun tp!304683 () Bool)

(assert (=> b!999610 (= e!640895 (and tp!304682 tp!304683))))

(assert (= (and b!999235 ((_ is ElementMatch!2769) (regTwo!6050 r!15766))) b!999607))

(assert (= (and b!999235 ((_ is Concat!4602) (regTwo!6050 r!15766))) b!999608))

(assert (= (and b!999235 ((_ is Star!2769) (regTwo!6050 r!15766))) b!999609))

(assert (= (and b!999235 ((_ is Union!2769) (regTwo!6050 r!15766))) b!999610))

(declare-fun b!999615 () Bool)

(declare-fun e!640898 () Bool)

(declare-fun tp!304689 () Bool)

(assert (=> b!999615 (= e!640898 (and tp_is_empty!5181 tp!304689))))

(assert (=> b!999233 (= tp!304623 e!640898)))

(assert (= (and b!999233 ((_ is Cons!9983) (t!101045 s!10566))) b!999615))

(declare-fun b!999616 () Bool)

(declare-fun e!640899 () Bool)

(assert (=> b!999616 (= e!640899 tp_is_empty!5181)))

(assert (=> b!999238 (= tp!304628 e!640899)))

(declare-fun b!999617 () Bool)

(declare-fun tp!304694 () Bool)

(declare-fun tp!304693 () Bool)

(assert (=> b!999617 (= e!640899 (and tp!304694 tp!304693))))

(declare-fun b!999618 () Bool)

(declare-fun tp!304692 () Bool)

(assert (=> b!999618 (= e!640899 tp!304692)))

(declare-fun b!999619 () Bool)

(declare-fun tp!304690 () Bool)

(declare-fun tp!304691 () Bool)

(assert (=> b!999619 (= e!640899 (and tp!304690 tp!304691))))

(assert (= (and b!999238 ((_ is ElementMatch!2769) (regOne!6051 r!15766))) b!999616))

(assert (= (and b!999238 ((_ is Concat!4602) (regOne!6051 r!15766))) b!999617))

(assert (= (and b!999238 ((_ is Star!2769) (regOne!6051 r!15766))) b!999618))

(assert (= (and b!999238 ((_ is Union!2769) (regOne!6051 r!15766))) b!999619))

(declare-fun b!999620 () Bool)

(declare-fun e!640900 () Bool)

(assert (=> b!999620 (= e!640900 tp_is_empty!5181)))

(assert (=> b!999238 (= tp!304625 e!640900)))

(declare-fun b!999621 () Bool)

(declare-fun tp!304699 () Bool)

(declare-fun tp!304698 () Bool)

(assert (=> b!999621 (= e!640900 (and tp!304699 tp!304698))))

(declare-fun b!999622 () Bool)

(declare-fun tp!304697 () Bool)

(assert (=> b!999622 (= e!640900 tp!304697)))

(declare-fun b!999623 () Bool)

(declare-fun tp!304695 () Bool)

(declare-fun tp!304696 () Bool)

(assert (=> b!999623 (= e!640900 (and tp!304695 tp!304696))))

(assert (= (and b!999238 ((_ is ElementMatch!2769) (regTwo!6051 r!15766))) b!999620))

(assert (= (and b!999238 ((_ is Concat!4602) (regTwo!6051 r!15766))) b!999621))

(assert (= (and b!999238 ((_ is Star!2769) (regTwo!6051 r!15766))) b!999622))

(assert (= (and b!999238 ((_ is Union!2769) (regTwo!6051 r!15766))) b!999623))

(declare-fun b!999624 () Bool)

(declare-fun e!640901 () Bool)

(assert (=> b!999624 (= e!640901 tp_is_empty!5181)))

(assert (=> b!999232 (= tp!304624 e!640901)))

(declare-fun b!999625 () Bool)

(declare-fun tp!304704 () Bool)

(declare-fun tp!304703 () Bool)

(assert (=> b!999625 (= e!640901 (and tp!304704 tp!304703))))

(declare-fun b!999626 () Bool)

(declare-fun tp!304702 () Bool)

(assert (=> b!999626 (= e!640901 tp!304702)))

(declare-fun b!999627 () Bool)

(declare-fun tp!304700 () Bool)

(declare-fun tp!304701 () Bool)

(assert (=> b!999627 (= e!640901 (and tp!304700 tp!304701))))

(assert (= (and b!999232 ((_ is ElementMatch!2769) (reg!3098 r!15766))) b!999624))

(assert (= (and b!999232 ((_ is Concat!4602) (reg!3098 r!15766))) b!999625))

(assert (= (and b!999232 ((_ is Star!2769) (reg!3098 r!15766))) b!999626))

(assert (= (and b!999232 ((_ is Union!2769) (reg!3098 r!15766))) b!999627))

(check-sat (not bm!66291) (not b!999541) (not d!291182) (not b!999568) (not b!999608) (not b!999544) (not d!291176) (not b!999622) (not b!999619) (not b!999626) (not b!999582) tp_is_empty!5181 (not b!999569) (not b!999536) (not d!291178) (not b!999572) (not bm!66325) (not d!291180) (not b!999606) (not b!999623) (not b!999549) (not b!999610) (not b!999282) (not b!999609) (not bm!66323) (not b!999625) (not bm!66324) (not bm!66326) (not b!999621) (not bm!66320) (not b!999618) (not b!999617) (not b!999495) (not b!999563) (not b!999555) (not b!999550) (not b!999551) (not bm!66319) (not b!999565) (not b!999627) (not b!999586) (not b!999537) (not b!999558) (not b!999615) (not b!999583) (not b!999540) (not b!999501) (not bm!66289) (not b!999554) (not b!999605) (not b!999604) (not b!999577) (not d!291184) (not bm!66328) (not b!999564))
(check-sat)
