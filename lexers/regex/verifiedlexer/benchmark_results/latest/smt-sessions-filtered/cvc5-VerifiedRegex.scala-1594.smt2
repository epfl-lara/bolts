; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82108 () Bool)

(assert start!82108)

(declare-fun b!913260 () Bool)

(assert (=> b!913260 true))

(assert (=> b!913260 true))

(declare-fun lambda!29246 () Int)

(declare-fun lambda!29245 () Int)

(assert (=> b!913260 (not (= lambda!29246 lambda!29245))))

(assert (=> b!913260 true))

(assert (=> b!913260 true))

(declare-fun res!415291 () Bool)

(declare-fun e!595476 () Bool)

(assert (=> start!82108 (=> (not res!415291) (not e!595476))))

(declare-datatypes ((C!5462 0))(
  ( (C!5463 (val!2979 Int)) )
))
(declare-datatypes ((Regex!2446 0))(
  ( (ElementMatch!2446 (c!147941 C!5462)) (Concat!4279 (regOne!5404 Regex!2446) (regTwo!5404 Regex!2446)) (EmptyExpr!2446) (Star!2446 (reg!2775 Regex!2446)) (EmptyLang!2446) (Union!2446 (regOne!5405 Regex!2446) (regTwo!5405 Regex!2446)) )
))
(declare-fun r!15766 () Regex!2446)

(declare-fun validRegex!915 (Regex!2446) Bool)

(assert (=> start!82108 (= res!415291 (validRegex!915 r!15766))))

(assert (=> start!82108 e!595476))

(declare-fun e!595473 () Bool)

(assert (=> start!82108 e!595473))

(declare-fun e!595475 () Bool)

(assert (=> start!82108 e!595475))

(declare-fun b!913254 () Bool)

(declare-fun tp!285430 () Bool)

(declare-fun tp!285426 () Bool)

(assert (=> b!913254 (= e!595473 (and tp!285430 tp!285426))))

(declare-fun b!913255 () Bool)

(declare-fun e!595474 () Bool)

(assert (=> b!913255 (= e!595474 (validRegex!915 (regOne!5404 r!15766)))))

(declare-fun b!913256 () Bool)

(declare-fun tp_is_empty!4535 () Bool)

(assert (=> b!913256 (= e!595473 tp_is_empty!4535)))

(declare-fun b!913257 () Bool)

(declare-fun tp!285427 () Bool)

(assert (=> b!913257 (= e!595473 tp!285427)))

(declare-fun b!913258 () Bool)

(declare-fun tp!285429 () Bool)

(declare-fun tp!285428 () Bool)

(assert (=> b!913258 (= e!595473 (and tp!285429 tp!285428))))

(declare-fun b!913259 () Bool)

(declare-fun e!595472 () Bool)

(assert (=> b!913259 (= e!595476 (not e!595472))))

(declare-fun res!415290 () Bool)

(assert (=> b!913259 (=> res!415290 e!595472)))

(declare-fun lt!337113 () Bool)

(assert (=> b!913259 (= res!415290 (or lt!337113 (and (is-Concat!4279 r!15766) (is-EmptyExpr!2446 (regOne!5404 r!15766))) (and (is-Concat!4279 r!15766) (is-EmptyExpr!2446 (regTwo!5404 r!15766))) (not (is-Concat!4279 r!15766))))))

(declare-datatypes ((List!9676 0))(
  ( (Nil!9660) (Cons!9660 (h!15061 C!5462) (t!100722 List!9676)) )
))
(declare-fun s!10566 () List!9676)

(declare-fun matchRSpec!247 (Regex!2446 List!9676) Bool)

(assert (=> b!913259 (= lt!337113 (matchRSpec!247 r!15766 s!10566))))

(declare-fun matchR!984 (Regex!2446 List!9676) Bool)

(assert (=> b!913259 (= lt!337113 (matchR!984 r!15766 s!10566))))

(declare-datatypes ((Unit!14511 0))(
  ( (Unit!14512) )
))
(declare-fun lt!337115 () Unit!14511)

(declare-fun mainMatchTheorem!247 (Regex!2446 List!9676) Unit!14511)

(assert (=> b!913259 (= lt!337115 (mainMatchTheorem!247 r!15766 s!10566))))

(assert (=> b!913260 (= e!595472 e!595474)))

(declare-fun res!415289 () Bool)

(assert (=> b!913260 (=> res!415289 e!595474)))

(declare-fun isEmpty!5883 (List!9676) Bool)

(assert (=> b!913260 (= res!415289 (isEmpty!5883 s!10566))))

(declare-fun Exists!217 (Int) Bool)

(assert (=> b!913260 (= (Exists!217 lambda!29245) (Exists!217 lambda!29246))))

(declare-fun lt!337114 () Unit!14511)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!129 (Regex!2446 Regex!2446 List!9676) Unit!14511)

(assert (=> b!913260 (= lt!337114 (lemmaExistCutMatchRandMatchRSpecEquivalent!129 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566))))

(declare-datatypes ((tuple2!10878 0))(
  ( (tuple2!10879 (_1!6265 List!9676) (_2!6265 List!9676)) )
))
(declare-datatypes ((Option!2081 0))(
  ( (None!2080) (Some!2080 (v!19497 tuple2!10878)) )
))
(declare-fun isDefined!1723 (Option!2081) Bool)

(declare-fun findConcatSeparation!187 (Regex!2446 Regex!2446 List!9676 List!9676 List!9676) Option!2081)

(assert (=> b!913260 (= (isDefined!1723 (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) Nil!9660 s!10566 s!10566)) (Exists!217 lambda!29245))))

(declare-fun lt!337112 () Unit!14511)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!187 (Regex!2446 Regex!2446 List!9676) Unit!14511)

(assert (=> b!913260 (= lt!337112 (lemmaFindConcatSeparationEquivalentToExists!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566))))

(declare-fun b!913261 () Bool)

(declare-fun tp!285425 () Bool)

(assert (=> b!913261 (= e!595475 (and tp_is_empty!4535 tp!285425))))

(assert (= (and start!82108 res!415291) b!913259))

(assert (= (and b!913259 (not res!415290)) b!913260))

(assert (= (and b!913260 (not res!415289)) b!913255))

(assert (= (and start!82108 (is-ElementMatch!2446 r!15766)) b!913256))

(assert (= (and start!82108 (is-Concat!4279 r!15766)) b!913258))

(assert (= (and start!82108 (is-Star!2446 r!15766)) b!913257))

(assert (= (and start!82108 (is-Union!2446 r!15766)) b!913254))

(assert (= (and start!82108 (is-Cons!9660 s!10566)) b!913261))

(declare-fun m!1144313 () Bool)

(assert (=> start!82108 m!1144313))

(declare-fun m!1144315 () Bool)

(assert (=> b!913255 m!1144315))

(declare-fun m!1144317 () Bool)

(assert (=> b!913259 m!1144317))

(declare-fun m!1144319 () Bool)

(assert (=> b!913259 m!1144319))

(declare-fun m!1144321 () Bool)

(assert (=> b!913259 m!1144321))

(declare-fun m!1144323 () Bool)

(assert (=> b!913260 m!1144323))

(declare-fun m!1144325 () Bool)

(assert (=> b!913260 m!1144325))

(declare-fun m!1144327 () Bool)

(assert (=> b!913260 m!1144327))

(declare-fun m!1144329 () Bool)

(assert (=> b!913260 m!1144329))

(declare-fun m!1144331 () Bool)

(assert (=> b!913260 m!1144331))

(declare-fun m!1144333 () Bool)

(assert (=> b!913260 m!1144333))

(declare-fun m!1144335 () Bool)

(assert (=> b!913260 m!1144335))

(assert (=> b!913260 m!1144329))

(assert (=> b!913260 m!1144323))

(push 1)

(assert (not b!913258))

(assert (not b!913257))

(assert (not start!82108))

(assert (not b!913254))

(assert (not b!913255))

(assert tp_is_empty!4535)

(assert (not b!913261))

(assert (not b!913260))

(assert (not b!913259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!279519 () Bool)

(assert (=> d!279519 (= (isEmpty!5883 s!10566) (is-Nil!9660 s!10566))))

(assert (=> b!913260 d!279519))

(declare-fun d!279521 () Bool)

(declare-fun choose!5559 (Int) Bool)

(assert (=> d!279521 (= (Exists!217 lambda!29246) (choose!5559 lambda!29246))))

(declare-fun bs!235890 () Bool)

(assert (= bs!235890 d!279521))

(declare-fun m!1144361 () Bool)

(assert (=> bs!235890 m!1144361))

(assert (=> b!913260 d!279521))

(declare-fun bs!235891 () Bool)

(declare-fun d!279523 () Bool)

(assert (= bs!235891 (and d!279523 b!913260)))

(declare-fun lambda!29257 () Int)

(assert (=> bs!235891 (= lambda!29257 lambda!29245)))

(assert (=> bs!235891 (not (= lambda!29257 lambda!29246))))

(assert (=> d!279523 true))

(assert (=> d!279523 true))

(assert (=> d!279523 true))

(assert (=> d!279523 (= (isDefined!1723 (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) Nil!9660 s!10566 s!10566)) (Exists!217 lambda!29257))))

(declare-fun lt!337130 () Unit!14511)

(declare-fun choose!5560 (Regex!2446 Regex!2446 List!9676) Unit!14511)

(assert (=> d!279523 (= lt!337130 (choose!5560 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566))))

(assert (=> d!279523 (validRegex!915 (regOne!5404 r!15766))))

(assert (=> d!279523 (= (lemmaFindConcatSeparationEquivalentToExists!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566) lt!337130)))

(declare-fun bs!235892 () Bool)

(assert (= bs!235892 d!279523))

(assert (=> bs!235892 m!1144323))

(assert (=> bs!235892 m!1144323))

(assert (=> bs!235892 m!1144325))

(declare-fun m!1144363 () Bool)

(assert (=> bs!235892 m!1144363))

(assert (=> bs!235892 m!1144315))

(declare-fun m!1144365 () Bool)

(assert (=> bs!235892 m!1144365))

(assert (=> b!913260 d!279523))

(declare-fun b!913347 () Bool)

(declare-fun e!595528 () Bool)

(declare-fun lt!337138 () Option!2081)

(assert (=> b!913347 (= e!595528 (not (isDefined!1723 lt!337138)))))

(declare-fun b!913348 () Bool)

(declare-fun e!595524 () Option!2081)

(declare-fun e!595525 () Option!2081)

(assert (=> b!913348 (= e!595524 e!595525)))

(declare-fun c!147952 () Bool)

(assert (=> b!913348 (= c!147952 (is-Nil!9660 s!10566))))

(declare-fun b!913349 () Bool)

(declare-fun res!415339 () Bool)

(declare-fun e!595527 () Bool)

(assert (=> b!913349 (=> (not res!415339) (not e!595527))))

(declare-fun get!3123 (Option!2081) tuple2!10878)

(assert (=> b!913349 (= res!415339 (matchR!984 (regOne!5404 r!15766) (_1!6265 (get!3123 lt!337138))))))

(declare-fun b!913350 () Bool)

(assert (=> b!913350 (= e!595525 None!2080)))

(declare-fun b!913351 () Bool)

(declare-fun res!415341 () Bool)

(assert (=> b!913351 (=> (not res!415341) (not e!595527))))

(assert (=> b!913351 (= res!415341 (matchR!984 (regTwo!5404 r!15766) (_2!6265 (get!3123 lt!337138))))))

(declare-fun b!913352 () Bool)

(declare-fun lt!337137 () Unit!14511)

(declare-fun lt!337139 () Unit!14511)

(assert (=> b!913352 (= lt!337137 lt!337139)))

(declare-fun ++!2544 (List!9676 List!9676) List!9676)

(assert (=> b!913352 (= (++!2544 (++!2544 Nil!9660 (Cons!9660 (h!15061 s!10566) Nil!9660)) (t!100722 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!159 (List!9676 C!5462 List!9676 List!9676) Unit!14511)

(assert (=> b!913352 (= lt!337139 (lemmaMoveElementToOtherListKeepsConcatEq!159 Nil!9660 (h!15061 s!10566) (t!100722 s!10566) s!10566))))

(assert (=> b!913352 (= e!595525 (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) (++!2544 Nil!9660 (Cons!9660 (h!15061 s!10566) Nil!9660)) (t!100722 s!10566) s!10566))))

(declare-fun b!913346 () Bool)

(assert (=> b!913346 (= e!595527 (= (++!2544 (_1!6265 (get!3123 lt!337138)) (_2!6265 (get!3123 lt!337138))) s!10566))))

(declare-fun d!279525 () Bool)

(assert (=> d!279525 e!595528))

(declare-fun res!415340 () Bool)

(assert (=> d!279525 (=> res!415340 e!595528)))

(assert (=> d!279525 (= res!415340 e!595527)))

(declare-fun res!415337 () Bool)

(assert (=> d!279525 (=> (not res!415337) (not e!595527))))

(assert (=> d!279525 (= res!415337 (isDefined!1723 lt!337138))))

(assert (=> d!279525 (= lt!337138 e!595524)))

(declare-fun c!147951 () Bool)

(declare-fun e!595526 () Bool)

(assert (=> d!279525 (= c!147951 e!595526)))

(declare-fun res!415338 () Bool)

(assert (=> d!279525 (=> (not res!415338) (not e!595526))))

(assert (=> d!279525 (= res!415338 (matchR!984 (regOne!5404 r!15766) Nil!9660))))

(assert (=> d!279525 (validRegex!915 (regOne!5404 r!15766))))

(assert (=> d!279525 (= (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) Nil!9660 s!10566 s!10566) lt!337138)))

(declare-fun b!913353 () Bool)

(assert (=> b!913353 (= e!595524 (Some!2080 (tuple2!10879 Nil!9660 s!10566)))))

(declare-fun b!913354 () Bool)

(assert (=> b!913354 (= e!595526 (matchR!984 (regTwo!5404 r!15766) s!10566))))

(assert (= (and d!279525 res!415338) b!913354))

(assert (= (and d!279525 c!147951) b!913353))

(assert (= (and d!279525 (not c!147951)) b!913348))

(assert (= (and b!913348 c!147952) b!913350))

(assert (= (and b!913348 (not c!147952)) b!913352))

(assert (= (and d!279525 res!415337) b!913349))

(assert (= (and b!913349 res!415339) b!913351))

(assert (= (and b!913351 res!415341) b!913346))

(assert (= (and d!279525 (not res!415340)) b!913347))

(declare-fun m!1144367 () Bool)

(assert (=> b!913349 m!1144367))

(declare-fun m!1144369 () Bool)

(assert (=> b!913349 m!1144369))

(declare-fun m!1144371 () Bool)

(assert (=> b!913352 m!1144371))

(assert (=> b!913352 m!1144371))

(declare-fun m!1144373 () Bool)

(assert (=> b!913352 m!1144373))

(declare-fun m!1144375 () Bool)

(assert (=> b!913352 m!1144375))

(assert (=> b!913352 m!1144371))

(declare-fun m!1144377 () Bool)

(assert (=> b!913352 m!1144377))

(assert (=> b!913351 m!1144367))

(declare-fun m!1144379 () Bool)

(assert (=> b!913351 m!1144379))

(declare-fun m!1144381 () Bool)

(assert (=> b!913354 m!1144381))

(assert (=> b!913346 m!1144367))

(declare-fun m!1144383 () Bool)

(assert (=> b!913346 m!1144383))

(declare-fun m!1144385 () Bool)

(assert (=> d!279525 m!1144385))

(declare-fun m!1144387 () Bool)

(assert (=> d!279525 m!1144387))

(assert (=> d!279525 m!1144315))

(assert (=> b!913347 m!1144385))

(assert (=> b!913260 d!279525))

(declare-fun bs!235893 () Bool)

(declare-fun d!279529 () Bool)

(assert (= bs!235893 (and d!279529 b!913260)))

(declare-fun lambda!29262 () Int)

(assert (=> bs!235893 (= lambda!29262 lambda!29245)))

(assert (=> bs!235893 (not (= lambda!29262 lambda!29246))))

(declare-fun bs!235894 () Bool)

(assert (= bs!235894 (and d!279529 d!279523)))

(assert (=> bs!235894 (= lambda!29262 lambda!29257)))

(assert (=> d!279529 true))

(assert (=> d!279529 true))

(assert (=> d!279529 true))

(declare-fun lambda!29263 () Int)

(assert (=> bs!235893 (not (= lambda!29263 lambda!29245))))

(assert (=> bs!235893 (= lambda!29263 lambda!29246)))

(assert (=> bs!235894 (not (= lambda!29263 lambda!29257))))

(declare-fun bs!235895 () Bool)

(assert (= bs!235895 d!279529))

(assert (=> bs!235895 (not (= lambda!29263 lambda!29262))))

(assert (=> d!279529 true))

(assert (=> d!279529 true))

(assert (=> d!279529 true))

(assert (=> d!279529 (= (Exists!217 lambda!29262) (Exists!217 lambda!29263))))

(declare-fun lt!337142 () Unit!14511)

(declare-fun choose!5561 (Regex!2446 Regex!2446 List!9676) Unit!14511)

(assert (=> d!279529 (= lt!337142 (choose!5561 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566))))

(assert (=> d!279529 (validRegex!915 (regOne!5404 r!15766))))

(assert (=> d!279529 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!129 (regOne!5404 r!15766) (regTwo!5404 r!15766) s!10566) lt!337142)))

(declare-fun m!1144395 () Bool)

(assert (=> bs!235895 m!1144395))

(declare-fun m!1144397 () Bool)

(assert (=> bs!235895 m!1144397))

(declare-fun m!1144399 () Bool)

(assert (=> bs!235895 m!1144399))

(assert (=> bs!235895 m!1144315))

(assert (=> b!913260 d!279529))

(declare-fun d!279533 () Bool)

(declare-fun isEmpty!5885 (Option!2081) Bool)

(assert (=> d!279533 (= (isDefined!1723 (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) Nil!9660 s!10566 s!10566)) (not (isEmpty!5885 (findConcatSeparation!187 (regOne!5404 r!15766) (regTwo!5404 r!15766) Nil!9660 s!10566 s!10566))))))

(declare-fun bs!235896 () Bool)

(assert (= bs!235896 d!279533))

(assert (=> bs!235896 m!1144323))

(declare-fun m!1144401 () Bool)

(assert (=> bs!235896 m!1144401))

(assert (=> b!913260 d!279533))

(declare-fun d!279535 () Bool)

(assert (=> d!279535 (= (Exists!217 lambda!29245) (choose!5559 lambda!29245))))

(declare-fun bs!235897 () Bool)

(assert (= bs!235897 d!279535))

(declare-fun m!1144403 () Bool)

(assert (=> bs!235897 m!1144403))

(assert (=> b!913260 d!279535))

(declare-fun b!913418 () Bool)

(declare-fun e!595570 () Bool)

(declare-fun call!55015 () Bool)

(assert (=> b!913418 (= e!595570 call!55015)))

(declare-fun b!913419 () Bool)

(declare-fun e!595574 () Bool)

(declare-fun call!55014 () Bool)

(assert (=> b!913419 (= e!595574 call!55014)))

(declare-fun b!913420 () Bool)

(declare-fun e!595576 () Bool)

(assert (=> b!913420 (= e!595576 call!55014)))

(declare-fun b!913421 () Bool)

(declare-fun e!595575 () Bool)

(declare-fun e!595571 () Bool)

(assert (=> b!913421 (= e!595575 e!595571)))

(declare-fun c!147968 () Bool)

(assert (=> b!913421 (= c!147968 (is-Union!2446 r!15766))))

(declare-fun bm!55008 () Bool)

(declare-fun call!55013 () Bool)

(assert (=> bm!55008 (= call!55013 call!55015)))

(declare-fun b!913422 () Bool)

(declare-fun res!415377 () Bool)

(declare-fun e!595573 () Bool)

(assert (=> b!913422 (=> res!415377 e!595573)))

(assert (=> b!913422 (= res!415377 (not (is-Concat!4279 r!15766)))))

(assert (=> b!913422 (= e!595571 e!595573)))

(declare-fun b!913423 () Bool)

(declare-fun e!595572 () Bool)

(assert (=> b!913423 (= e!595572 e!595575)))

(declare-fun c!147967 () Bool)

(assert (=> b!913423 (= c!147967 (is-Star!2446 r!15766))))

(declare-fun d!279537 () Bool)

(declare-fun res!415380 () Bool)

(assert (=> d!279537 (=> res!415380 e!595572)))

(assert (=> d!279537 (= res!415380 (is-ElementMatch!2446 r!15766))))

(assert (=> d!279537 (= (validRegex!915 r!15766) e!595572)))

(declare-fun bm!55009 () Bool)

(assert (=> bm!55009 (= call!55015 (validRegex!915 (ite c!147967 (reg!2775 r!15766) (ite c!147968 (regOne!5405 r!15766) (regOne!5404 r!15766)))))))

(declare-fun b!913424 () Bool)

(assert (=> b!913424 (= e!595573 e!595574)))

(declare-fun res!415378 () Bool)

(assert (=> b!913424 (=> (not res!415378) (not e!595574))))

(assert (=> b!913424 (= res!415378 call!55013)))

(declare-fun b!913425 () Bool)

(assert (=> b!913425 (= e!595575 e!595570)))

(declare-fun res!415379 () Bool)

(declare-fun nullable!664 (Regex!2446) Bool)

(assert (=> b!913425 (= res!415379 (not (nullable!664 (reg!2775 r!15766))))))

(assert (=> b!913425 (=> (not res!415379) (not e!595570))))

(declare-fun b!913426 () Bool)

(declare-fun res!415381 () Bool)

(assert (=> b!913426 (=> (not res!415381) (not e!595576))))

(assert (=> b!913426 (= res!415381 call!55013)))

(assert (=> b!913426 (= e!595571 e!595576)))

(declare-fun bm!55010 () Bool)

(assert (=> bm!55010 (= call!55014 (validRegex!915 (ite c!147968 (regTwo!5405 r!15766) (regTwo!5404 r!15766))))))

(assert (= (and d!279537 (not res!415380)) b!913423))

(assert (= (and b!913423 c!147967) b!913425))

(assert (= (and b!913423 (not c!147967)) b!913421))

(assert (= (and b!913425 res!415379) b!913418))

(assert (= (and b!913421 c!147968) b!913426))

(assert (= (and b!913421 (not c!147968)) b!913422))

(assert (= (and b!913426 res!415381) b!913420))

(assert (= (and b!913422 (not res!415377)) b!913424))

(assert (= (and b!913424 res!415378) b!913419))

(assert (= (or b!913420 b!913419) bm!55010))

(assert (= (or b!913426 b!913424) bm!55008))

(assert (= (or b!913418 bm!55008) bm!55009))

(declare-fun m!1144405 () Bool)

(assert (=> bm!55009 m!1144405))

(declare-fun m!1144407 () Bool)

(assert (=> b!913425 m!1144407))

(declare-fun m!1144409 () Bool)

(assert (=> bm!55010 m!1144409))

(assert (=> start!82108 d!279537))

(declare-fun bs!235898 () Bool)

(declare-fun b!913465 () Bool)

(assert (= bs!235898 (and b!913465 b!913260)))

(declare-fun lambda!29272 () Int)

(assert (=> bs!235898 (not (= lambda!29272 lambda!29245))))

(declare-fun bs!235899 () Bool)

(assert (= bs!235899 (and b!913465 d!279523)))

(assert (=> bs!235899 (not (= lambda!29272 lambda!29257))))

(declare-fun bs!235900 () Bool)

(assert (= bs!235900 (and b!913465 d!279529)))

(assert (=> bs!235900 (not (= lambda!29272 lambda!29263))))

(assert (=> bs!235900 (not (= lambda!29272 lambda!29262))))

(assert (=> bs!235898 (not (= lambda!29272 lambda!29246))))

(assert (=> b!913465 true))

(assert (=> b!913465 true))

(declare-fun bs!235901 () Bool)

(declare-fun b!913466 () Bool)

(assert (= bs!235901 (and b!913466 b!913260)))

(declare-fun lambda!29273 () Int)

(assert (=> bs!235901 (not (= lambda!29273 lambda!29245))))

(declare-fun bs!235902 () Bool)

(assert (= bs!235902 (and b!913466 d!279523)))

(assert (=> bs!235902 (not (= lambda!29273 lambda!29257))))

(declare-fun bs!235903 () Bool)

(assert (= bs!235903 (and b!913466 d!279529)))

(assert (=> bs!235903 (= lambda!29273 lambda!29263)))

(declare-fun bs!235904 () Bool)

(assert (= bs!235904 (and b!913466 b!913465)))

(assert (=> bs!235904 (not (= lambda!29273 lambda!29272))))

(assert (=> bs!235903 (not (= lambda!29273 lambda!29262))))

(assert (=> bs!235901 (= lambda!29273 lambda!29246)))

(assert (=> b!913466 true))

(assert (=> b!913466 true))

(declare-fun b!913463 () Bool)

(declare-fun e!595600 () Bool)

(assert (=> b!913463 (= e!595600 (matchRSpec!247 (regTwo!5405 r!15766) s!10566))))

(declare-fun b!913464 () Bool)

(declare-fun e!595599 () Bool)

(assert (=> b!913464 (= e!595599 (= s!10566 (Cons!9660 (c!147941 r!15766) Nil!9660)))))

(declare-fun e!595601 () Bool)

(declare-fun call!55025 () Bool)

(assert (=> b!913465 (= e!595601 call!55025)))

(declare-fun e!595597 () Bool)

(assert (=> b!913466 (= e!595597 call!55025)))

(declare-fun bm!55019 () Bool)

(declare-fun call!55024 () Bool)

(assert (=> bm!55019 (= call!55024 (isEmpty!5883 s!10566))))

(declare-fun b!913467 () Bool)

(declare-fun c!147978 () Bool)

(assert (=> b!913467 (= c!147978 (is-ElementMatch!2446 r!15766))))

(declare-fun e!595598 () Bool)

(assert (=> b!913467 (= e!595598 e!595599)))

(declare-fun b!913468 () Bool)

(declare-fun e!595603 () Bool)

(assert (=> b!913468 (= e!595603 call!55024)))

(declare-fun b!913469 () Bool)

(declare-fun e!595602 () Bool)

(assert (=> b!913469 (= e!595602 e!595600)))

(declare-fun res!415402 () Bool)

(assert (=> b!913469 (= res!415402 (matchRSpec!247 (regOne!5405 r!15766) s!10566))))

(assert (=> b!913469 (=> res!415402 e!595600)))

(declare-fun b!913470 () Bool)

(declare-fun res!415404 () Bool)

(assert (=> b!913470 (=> res!415404 e!595601)))

(assert (=> b!913470 (= res!415404 call!55024)))

(assert (=> b!913470 (= e!595597 e!595601)))

(declare-fun bm!55020 () Bool)

(declare-fun c!147977 () Bool)

(assert (=> bm!55020 (= call!55025 (Exists!217 (ite c!147977 lambda!29272 lambda!29273)))))

(declare-fun d!279539 () Bool)

(declare-fun c!147979 () Bool)

(assert (=> d!279539 (= c!147979 (is-EmptyExpr!2446 r!15766))))

(assert (=> d!279539 (= (matchRSpec!247 r!15766 s!10566) e!595603)))

(declare-fun b!913471 () Bool)

(declare-fun c!147980 () Bool)

(assert (=> b!913471 (= c!147980 (is-Union!2446 r!15766))))

(assert (=> b!913471 (= e!595599 e!595602)))

(declare-fun b!913472 () Bool)

(assert (=> b!913472 (= e!595602 e!595597)))

(assert (=> b!913472 (= c!147977 (is-Star!2446 r!15766))))

(declare-fun b!913473 () Bool)

(assert (=> b!913473 (= e!595603 e!595598)))

(declare-fun res!415403 () Bool)

(assert (=> b!913473 (= res!415403 (not (is-EmptyLang!2446 r!15766)))))

(assert (=> b!913473 (=> (not res!415403) (not e!595598))))

(assert (= (and d!279539 c!147979) b!913468))

(assert (= (and d!279539 (not c!147979)) b!913473))

(assert (= (and b!913473 res!415403) b!913467))

(assert (= (and b!913467 c!147978) b!913464))

(assert (= (and b!913467 (not c!147978)) b!913471))

(assert (= (and b!913471 c!147980) b!913469))

(assert (= (and b!913471 (not c!147980)) b!913472))

(assert (= (and b!913469 (not res!415402)) b!913463))

(assert (= (and b!913472 c!147977) b!913470))

(assert (= (and b!913472 (not c!147977)) b!913466))

(assert (= (and b!913470 (not res!415404)) b!913465))

(assert (= (or b!913465 b!913466) bm!55020))

(assert (= (or b!913468 b!913470) bm!55019))

(declare-fun m!1144411 () Bool)

(assert (=> b!913463 m!1144411))

(assert (=> bm!55019 m!1144333))

(declare-fun m!1144413 () Bool)

(assert (=> b!913469 m!1144413))

(declare-fun m!1144415 () Bool)

(assert (=> bm!55020 m!1144415))

(assert (=> b!913259 d!279539))

(declare-fun b!913513 () Bool)

(declare-fun e!595627 () Bool)

(declare-fun derivativeStep!474 (Regex!2446 C!5462) Regex!2446)

(declare-fun head!1627 (List!9676) C!5462)

(declare-fun tail!1189 (List!9676) List!9676)

(assert (=> b!913513 (= e!595627 (matchR!984 (derivativeStep!474 r!15766 (head!1627 s!10566)) (tail!1189 s!10566)))))

(declare-fun b!913514 () Bool)

(declare-fun res!415425 () Bool)

(declare-fun e!595626 () Bool)

(assert (=> b!913514 (=> res!415425 e!595626)))

(assert (=> b!913514 (= res!415425 (not (isEmpty!5883 (tail!1189 s!10566))))))

(declare-fun b!913515 () Bool)

(declare-fun res!415424 () Bool)

(declare-fun e!595631 () Bool)

(assert (=> b!913515 (=> res!415424 e!595631)))

(assert (=> b!913515 (= res!415424 (not (is-ElementMatch!2446 r!15766)))))

(declare-fun e!595628 () Bool)

(assert (=> b!913515 (= e!595628 e!595631)))

(declare-fun b!913516 () Bool)

(declare-fun e!595630 () Bool)

(assert (=> b!913516 (= e!595630 (= (head!1627 s!10566) (c!147941 r!15766)))))

(declare-fun d!279541 () Bool)

(declare-fun e!595629 () Bool)

(assert (=> d!279541 e!595629))

(declare-fun c!147991 () Bool)

(assert (=> d!279541 (= c!147991 (is-EmptyExpr!2446 r!15766))))

(declare-fun lt!337145 () Bool)

(assert (=> d!279541 (= lt!337145 e!595627)))

(declare-fun c!147992 () Bool)

(assert (=> d!279541 (= c!147992 (isEmpty!5883 s!10566))))

(assert (=> d!279541 (validRegex!915 r!15766)))

(assert (=> d!279541 (= (matchR!984 r!15766 s!10566) lt!337145)))

(declare-fun b!913517 () Bool)

(declare-fun call!55030 () Bool)

(assert (=> b!913517 (= e!595629 (= lt!337145 call!55030))))

(declare-fun b!913518 () Bool)

(declare-fun res!415429 () Bool)

(assert (=> b!913518 (=> (not res!415429) (not e!595630))))

(assert (=> b!913518 (= res!415429 (not call!55030))))

(declare-fun b!913519 () Bool)

(assert (=> b!913519 (= e!595628 (not lt!337145))))

(declare-fun b!913520 () Bool)

(declare-fun e!595625 () Bool)

(assert (=> b!913520 (= e!595631 e!595625)))

(declare-fun res!415428 () Bool)

(assert (=> b!913520 (=> (not res!415428) (not e!595625))))

(assert (=> b!913520 (= res!415428 (not lt!337145))))

(declare-fun b!913521 () Bool)

(declare-fun res!415427 () Bool)

(assert (=> b!913521 (=> res!415427 e!595631)))

(assert (=> b!913521 (= res!415427 e!595630)))

(declare-fun res!415426 () Bool)

(assert (=> b!913521 (=> (not res!415426) (not e!595630))))

(assert (=> b!913521 (= res!415426 lt!337145)))

(declare-fun b!913522 () Bool)

(assert (=> b!913522 (= e!595627 (nullable!664 r!15766))))

(declare-fun b!913523 () Bool)

(assert (=> b!913523 (= e!595626 (not (= (head!1627 s!10566) (c!147941 r!15766))))))

(declare-fun b!913524 () Bool)

(assert (=> b!913524 (= e!595625 e!595626)))

(declare-fun res!415431 () Bool)

(assert (=> b!913524 (=> res!415431 e!595626)))

(assert (=> b!913524 (= res!415431 call!55030)))

(declare-fun bm!55025 () Bool)

(assert (=> bm!55025 (= call!55030 (isEmpty!5883 s!10566))))

(declare-fun b!913525 () Bool)

(declare-fun res!415430 () Bool)

(assert (=> b!913525 (=> (not res!415430) (not e!595630))))

(assert (=> b!913525 (= res!415430 (isEmpty!5883 (tail!1189 s!10566)))))

(declare-fun b!913526 () Bool)

(assert (=> b!913526 (= e!595629 e!595628)))

(declare-fun c!147993 () Bool)

(assert (=> b!913526 (= c!147993 (is-EmptyLang!2446 r!15766))))

(assert (= (and d!279541 c!147992) b!913522))

(assert (= (and d!279541 (not c!147992)) b!913513))

(assert (= (and d!279541 c!147991) b!913517))

(assert (= (and d!279541 (not c!147991)) b!913526))

(assert (= (and b!913526 c!147993) b!913519))

(assert (= (and b!913526 (not c!147993)) b!913515))

(assert (= (and b!913515 (not res!415424)) b!913521))

(assert (= (and b!913521 res!415426) b!913518))

(assert (= (and b!913518 res!415429) b!913525))

(assert (= (and b!913525 res!415430) b!913516))

(assert (= (and b!913521 (not res!415427)) b!913520))

(assert (= (and b!913520 res!415428) b!913524))

(assert (= (and b!913524 (not res!415431)) b!913514))

(assert (= (and b!913514 (not res!415425)) b!913523))

(assert (= (or b!913517 b!913518 b!913524) bm!55025))

(declare-fun m!1144423 () Bool)

(assert (=> b!913514 m!1144423))

(assert (=> b!913514 m!1144423))

(declare-fun m!1144425 () Bool)

(assert (=> b!913514 m!1144425))

(declare-fun m!1144427 () Bool)

(assert (=> b!913513 m!1144427))

(assert (=> b!913513 m!1144427))

(declare-fun m!1144429 () Bool)

(assert (=> b!913513 m!1144429))

(assert (=> b!913513 m!1144423))

(assert (=> b!913513 m!1144429))

(assert (=> b!913513 m!1144423))

(declare-fun m!1144431 () Bool)

(assert (=> b!913513 m!1144431))

(assert (=> b!913523 m!1144427))

(assert (=> b!913516 m!1144427))

(declare-fun m!1144433 () Bool)

(assert (=> b!913522 m!1144433))

(assert (=> b!913525 m!1144423))

(assert (=> b!913525 m!1144423))

(assert (=> b!913525 m!1144425))

(assert (=> bm!55025 m!1144333))

(assert (=> d!279541 m!1144333))

(assert (=> d!279541 m!1144313))

(assert (=> b!913259 d!279541))

(declare-fun d!279545 () Bool)

(assert (=> d!279545 (= (matchR!984 r!15766 s!10566) (matchRSpec!247 r!15766 s!10566))))

(declare-fun lt!337148 () Unit!14511)

(declare-fun choose!5562 (Regex!2446 List!9676) Unit!14511)

(assert (=> d!279545 (= lt!337148 (choose!5562 r!15766 s!10566))))

(assert (=> d!279545 (validRegex!915 r!15766)))

(assert (=> d!279545 (= (mainMatchTheorem!247 r!15766 s!10566) lt!337148)))

(declare-fun bs!235908 () Bool)

(assert (= bs!235908 d!279545))

(assert (=> bs!235908 m!1144319))

(assert (=> bs!235908 m!1144317))

(declare-fun m!1144435 () Bool)

(assert (=> bs!235908 m!1144435))

(assert (=> bs!235908 m!1144313))

(assert (=> b!913259 d!279545))

(declare-fun b!913527 () Bool)

(declare-fun e!595632 () Bool)

(declare-fun call!55033 () Bool)

(assert (=> b!913527 (= e!595632 call!55033)))

(declare-fun b!913528 () Bool)

(declare-fun e!595636 () Bool)

(declare-fun call!55032 () Bool)

(assert (=> b!913528 (= e!595636 call!55032)))

(declare-fun b!913529 () Bool)

(declare-fun e!595638 () Bool)

(assert (=> b!913529 (= e!595638 call!55032)))

(declare-fun b!913530 () Bool)

(declare-fun e!595637 () Bool)

(declare-fun e!595633 () Bool)

(assert (=> b!913530 (= e!595637 e!595633)))

(declare-fun c!147995 () Bool)

(assert (=> b!913530 (= c!147995 (is-Union!2446 (regOne!5404 r!15766)))))

(declare-fun bm!55026 () Bool)

(declare-fun call!55031 () Bool)

(assert (=> bm!55026 (= call!55031 call!55033)))

(declare-fun b!913531 () Bool)

(declare-fun res!415432 () Bool)

(declare-fun e!595635 () Bool)

(assert (=> b!913531 (=> res!415432 e!595635)))

(assert (=> b!913531 (= res!415432 (not (is-Concat!4279 (regOne!5404 r!15766))))))

(assert (=> b!913531 (= e!595633 e!595635)))

(declare-fun b!913532 () Bool)

(declare-fun e!595634 () Bool)

(assert (=> b!913532 (= e!595634 e!595637)))

(declare-fun c!147994 () Bool)

(assert (=> b!913532 (= c!147994 (is-Star!2446 (regOne!5404 r!15766)))))

(declare-fun d!279547 () Bool)

(declare-fun res!415435 () Bool)

(assert (=> d!279547 (=> res!415435 e!595634)))

(assert (=> d!279547 (= res!415435 (is-ElementMatch!2446 (regOne!5404 r!15766)))))

(assert (=> d!279547 (= (validRegex!915 (regOne!5404 r!15766)) e!595634)))

(declare-fun bm!55027 () Bool)

(assert (=> bm!55027 (= call!55033 (validRegex!915 (ite c!147994 (reg!2775 (regOne!5404 r!15766)) (ite c!147995 (regOne!5405 (regOne!5404 r!15766)) (regOne!5404 (regOne!5404 r!15766))))))))

(declare-fun b!913533 () Bool)

(assert (=> b!913533 (= e!595635 e!595636)))

(declare-fun res!415433 () Bool)

(assert (=> b!913533 (=> (not res!415433) (not e!595636))))

(assert (=> b!913533 (= res!415433 call!55031)))

(declare-fun b!913534 () Bool)

(assert (=> b!913534 (= e!595637 e!595632)))

(declare-fun res!415434 () Bool)

(assert (=> b!913534 (= res!415434 (not (nullable!664 (reg!2775 (regOne!5404 r!15766)))))))

(assert (=> b!913534 (=> (not res!415434) (not e!595632))))

(declare-fun b!913535 () Bool)

(declare-fun res!415436 () Bool)

(assert (=> b!913535 (=> (not res!415436) (not e!595638))))

(assert (=> b!913535 (= res!415436 call!55031)))

(assert (=> b!913535 (= e!595633 e!595638)))

(declare-fun bm!55028 () Bool)

(assert (=> bm!55028 (= call!55032 (validRegex!915 (ite c!147995 (regTwo!5405 (regOne!5404 r!15766)) (regTwo!5404 (regOne!5404 r!15766)))))))

(assert (= (and d!279547 (not res!415435)) b!913532))

(assert (= (and b!913532 c!147994) b!913534))

(assert (= (and b!913532 (not c!147994)) b!913530))

(assert (= (and b!913534 res!415434) b!913527))

(assert (= (and b!913530 c!147995) b!913535))

(assert (= (and b!913530 (not c!147995)) b!913531))

(assert (= (and b!913535 res!415436) b!913529))

(assert (= (and b!913531 (not res!415432)) b!913533))

(assert (= (and b!913533 res!415433) b!913528))

(assert (= (or b!913529 b!913528) bm!55028))

(assert (= (or b!913535 b!913533) bm!55026))

(assert (= (or b!913527 bm!55026) bm!55027))

(declare-fun m!1144437 () Bool)

(assert (=> bm!55027 m!1144437))

(declare-fun m!1144439 () Bool)

(assert (=> b!913534 m!1144439))

(declare-fun m!1144441 () Bool)

(assert (=> bm!55028 m!1144441))

(assert (=> b!913255 d!279547))

(declare-fun b!913552 () Bool)

(declare-fun e!595643 () Bool)

(assert (=> b!913552 (= e!595643 tp_is_empty!4535)))

(assert (=> b!913254 (= tp!285430 e!595643)))

(declare-fun b!913553 () Bool)

(declare-fun tp!285461 () Bool)

(declare-fun tp!285462 () Bool)

(assert (=> b!913553 (= e!595643 (and tp!285461 tp!285462))))

(declare-fun b!913555 () Bool)

(declare-fun tp!285463 () Bool)

(declare-fun tp!285459 () Bool)

(assert (=> b!913555 (= e!595643 (and tp!285463 tp!285459))))

(declare-fun b!913554 () Bool)

(declare-fun tp!285460 () Bool)

(assert (=> b!913554 (= e!595643 tp!285460)))

(assert (= (and b!913254 (is-ElementMatch!2446 (regOne!5405 r!15766))) b!913552))

(assert (= (and b!913254 (is-Concat!4279 (regOne!5405 r!15766))) b!913553))

(assert (= (and b!913254 (is-Star!2446 (regOne!5405 r!15766))) b!913554))

(assert (= (and b!913254 (is-Union!2446 (regOne!5405 r!15766))) b!913555))

(declare-fun b!913558 () Bool)

(declare-fun e!595646 () Bool)

(assert (=> b!913558 (= e!595646 tp_is_empty!4535)))

(assert (=> b!913254 (= tp!285426 e!595646)))

(declare-fun b!913559 () Bool)

(declare-fun tp!285466 () Bool)

(declare-fun tp!285467 () Bool)

(assert (=> b!913559 (= e!595646 (and tp!285466 tp!285467))))

(declare-fun b!913561 () Bool)

(declare-fun tp!285468 () Bool)

(declare-fun tp!285464 () Bool)

(assert (=> b!913561 (= e!595646 (and tp!285468 tp!285464))))

(declare-fun b!913560 () Bool)

(declare-fun tp!285465 () Bool)

(assert (=> b!913560 (= e!595646 tp!285465)))

(assert (= (and b!913254 (is-ElementMatch!2446 (regTwo!5405 r!15766))) b!913558))

(assert (= (and b!913254 (is-Concat!4279 (regTwo!5405 r!15766))) b!913559))

(assert (= (and b!913254 (is-Star!2446 (regTwo!5405 r!15766))) b!913560))

(assert (= (and b!913254 (is-Union!2446 (regTwo!5405 r!15766))) b!913561))

(declare-fun b!913566 () Bool)

(declare-fun e!595649 () Bool)

(assert (=> b!913566 (= e!595649 tp_is_empty!4535)))

(assert (=> b!913258 (= tp!285429 e!595649)))

(declare-fun b!913567 () Bool)

(declare-fun tp!285471 () Bool)

(declare-fun tp!285472 () Bool)

(assert (=> b!913567 (= e!595649 (and tp!285471 tp!285472))))

(declare-fun b!913569 () Bool)

(declare-fun tp!285473 () Bool)

(declare-fun tp!285469 () Bool)

(assert (=> b!913569 (= e!595649 (and tp!285473 tp!285469))))

(declare-fun b!913568 () Bool)

(declare-fun tp!285470 () Bool)

(assert (=> b!913568 (= e!595649 tp!285470)))

(assert (= (and b!913258 (is-ElementMatch!2446 (regOne!5404 r!15766))) b!913566))

(assert (= (and b!913258 (is-Concat!4279 (regOne!5404 r!15766))) b!913567))

(assert (= (and b!913258 (is-Star!2446 (regOne!5404 r!15766))) b!913568))

(assert (= (and b!913258 (is-Union!2446 (regOne!5404 r!15766))) b!913569))

(declare-fun b!913572 () Bool)

(declare-fun e!595654 () Bool)

(assert (=> b!913572 (= e!595654 tp_is_empty!4535)))

(assert (=> b!913258 (= tp!285428 e!595654)))

(declare-fun b!913573 () Bool)

(declare-fun tp!285476 () Bool)

(declare-fun tp!285477 () Bool)

(assert (=> b!913573 (= e!595654 (and tp!285476 tp!285477))))

(declare-fun b!913575 () Bool)

(declare-fun tp!285478 () Bool)

(declare-fun tp!285474 () Bool)

(assert (=> b!913575 (= e!595654 (and tp!285478 tp!285474))))

(declare-fun b!913574 () Bool)

(declare-fun tp!285475 () Bool)

(assert (=> b!913574 (= e!595654 tp!285475)))

(assert (= (and b!913258 (is-ElementMatch!2446 (regTwo!5404 r!15766))) b!913572))

(assert (= (and b!913258 (is-Concat!4279 (regTwo!5404 r!15766))) b!913573))

(assert (= (and b!913258 (is-Star!2446 (regTwo!5404 r!15766))) b!913574))

(assert (= (and b!913258 (is-Union!2446 (regTwo!5404 r!15766))) b!913575))

(declare-fun b!913582 () Bool)

(declare-fun e!595655 () Bool)

(assert (=> b!913582 (= e!595655 tp_is_empty!4535)))

(assert (=> b!913257 (= tp!285427 e!595655)))

(declare-fun b!913583 () Bool)

(declare-fun tp!285481 () Bool)

(declare-fun tp!285482 () Bool)

(assert (=> b!913583 (= e!595655 (and tp!285481 tp!285482))))

(declare-fun b!913585 () Bool)

(declare-fun tp!285483 () Bool)

(declare-fun tp!285479 () Bool)

(assert (=> b!913585 (= e!595655 (and tp!285483 tp!285479))))

(declare-fun b!913584 () Bool)

(declare-fun tp!285480 () Bool)

(assert (=> b!913584 (= e!595655 tp!285480)))

(assert (= (and b!913257 (is-ElementMatch!2446 (reg!2775 r!15766))) b!913582))

(assert (= (and b!913257 (is-Concat!4279 (reg!2775 r!15766))) b!913583))

(assert (= (and b!913257 (is-Star!2446 (reg!2775 r!15766))) b!913584))

(assert (= (and b!913257 (is-Union!2446 (reg!2775 r!15766))) b!913585))

(declare-fun b!913598 () Bool)

(declare-fun e!595662 () Bool)

(declare-fun tp!285486 () Bool)

(assert (=> b!913598 (= e!595662 (and tp_is_empty!4535 tp!285486))))

(assert (=> b!913261 (= tp!285425 e!595662)))

(assert (= (and b!913261 (is-Cons!9660 (t!100722 s!10566))) b!913598))

(push 1)

(assert (not b!913534))

(assert (not b!913525))

(assert (not bm!55025))

(assert (not b!913560))

(assert (not b!913425))

(assert (not b!913346))

(assert (not b!913574))

(assert (not b!913516))

(assert (not b!913347))

(assert (not d!279541))

(assert (not d!279535))

(assert (not d!279523))

(assert (not bm!55020))

(assert (not d!279533))

(assert (not b!913569))

(assert (not d!279525))

(assert tp_is_empty!4535)

(assert (not b!913463))

(assert (not b!913522))

(assert (not b!913553))

(assert (not bm!55028))

(assert (not b!913598))

(assert (not bm!55009))

(assert (not b!913567))

(assert (not b!913514))

(assert (not b!913351))

(assert (not b!913349))

(assert (not b!913555))

(assert (not d!279521))

(assert (not b!913568))

(assert (not b!913583))

(assert (not b!913554))

(assert (not bm!55027))

(assert (not b!913523))

(assert (not d!279529))

(assert (not bm!55019))

(assert (not b!913584))

(assert (not b!913469))

(assert (not b!913585))

(assert (not b!913354))

(assert (not b!913559))

(assert (not b!913561))

(assert (not b!913575))

(assert (not d!279545))

(assert (not b!913513))

(assert (not b!913352))

(assert (not bm!55010))

(assert (not b!913573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

