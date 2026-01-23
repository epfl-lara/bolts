; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287214 () Bool)

(assert start!287214)

(declare-fun b!2967326 () Bool)

(declare-fun e!1867325 () Bool)

(declare-fun tp!946465 () Bool)

(declare-fun tp!946462 () Bool)

(assert (=> b!2967326 (= e!1867325 (and tp!946465 tp!946462))))

(declare-fun b!2967327 () Bool)

(declare-fun e!1867322 () Bool)

(declare-fun e!1867324 () Bool)

(assert (=> b!2967327 (= e!1867322 (not e!1867324))))

(declare-fun res!1223953 () Bool)

(assert (=> b!2967327 (=> res!1223953 e!1867324)))

(declare-fun lt!1035580 () Bool)

(declare-datatypes ((C!18670 0))(
  ( (C!18671 (val!11371 Int)) )
))
(declare-datatypes ((Regex!9242 0))(
  ( (ElementMatch!9242 (c!486646 C!18670)) (Concat!14563 (regOne!18996 Regex!9242) (regTwo!18996 Regex!9242)) (EmptyExpr!9242) (Star!9242 (reg!9571 Regex!9242)) (EmptyLang!9242) (Union!9242 (regOne!18997 Regex!9242) (regTwo!18997 Regex!9242)) )
))
(declare-fun r!17423 () Regex!9242)

(assert (=> b!2967327 (= res!1223953 (or lt!1035580 (is-Concat!14563 r!17423) (not (is-Union!9242 r!17423))))))

(declare-datatypes ((List!35107 0))(
  ( (Nil!34983) (Cons!34983 (h!40403 C!18670) (t!234172 List!35107)) )
))
(declare-fun s!11993 () List!35107)

(declare-fun matchRSpec!1379 (Regex!9242 List!35107) Bool)

(assert (=> b!2967327 (= lt!1035580 (matchRSpec!1379 r!17423 s!11993))))

(declare-fun matchR!4124 (Regex!9242 List!35107) Bool)

(assert (=> b!2967327 (= lt!1035580 (matchR!4124 r!17423 s!11993))))

(declare-datatypes ((Unit!48863 0))(
  ( (Unit!48864) )
))
(declare-fun lt!1035579 () Unit!48863)

(declare-fun mainMatchTheorem!1379 (Regex!9242 List!35107) Unit!48863)

(assert (=> b!2967327 (= lt!1035579 (mainMatchTheorem!1379 r!17423 s!11993))))

(declare-fun b!2967328 () Bool)

(declare-fun res!1223957 () Bool)

(declare-fun e!1867326 () Bool)

(assert (=> b!2967328 (=> res!1223957 e!1867326)))

(declare-fun lt!1035581 () Regex!9242)

(declare-fun isEmptyLang!358 (Regex!9242) Bool)

(assert (=> b!2967328 (= res!1223957 (isEmptyLang!358 lt!1035581))))

(declare-fun b!2967329 () Bool)

(declare-fun tp!946464 () Bool)

(assert (=> b!2967329 (= e!1867325 tp!946464)))

(declare-fun b!2967330 () Bool)

(declare-fun e!1867323 () Bool)

(declare-fun tp_is_empty!16047 () Bool)

(declare-fun tp!946466 () Bool)

(assert (=> b!2967330 (= e!1867323 (and tp_is_empty!16047 tp!946466))))

(declare-fun b!2967331 () Bool)

(declare-fun tp!946467 () Bool)

(declare-fun tp!946463 () Bool)

(assert (=> b!2967331 (= e!1867325 (and tp!946467 tp!946463))))

(declare-fun res!1223954 () Bool)

(assert (=> start!287214 (=> (not res!1223954) (not e!1867322))))

(declare-fun validRegex!3975 (Regex!9242) Bool)

(assert (=> start!287214 (= res!1223954 (validRegex!3975 r!17423))))

(assert (=> start!287214 e!1867322))

(assert (=> start!287214 e!1867325))

(assert (=> start!287214 e!1867323))

(declare-fun b!2967332 () Bool)

(assert (=> b!2967332 (= e!1867324 e!1867326)))

(declare-fun res!1223955 () Bool)

(assert (=> b!2967332 (=> res!1223955 e!1867326)))

(declare-fun lt!1035582 () Regex!9242)

(assert (=> b!2967332 (= res!1223955 (isEmptyLang!358 lt!1035582))))

(declare-fun simplify!245 (Regex!9242) Regex!9242)

(assert (=> b!2967332 (= lt!1035581 (simplify!245 (regTwo!18997 r!17423)))))

(assert (=> b!2967332 (= lt!1035582 (simplify!245 (regOne!18997 r!17423)))))

(declare-fun b!2967333 () Bool)

(assert (=> b!2967333 (= e!1867326 (validRegex!3975 (simplify!245 r!17423)))))

(declare-fun b!2967334 () Bool)

(declare-fun res!1223956 () Bool)

(assert (=> b!2967334 (=> res!1223956 e!1867326)))

(assert (=> b!2967334 (= res!1223956 (matchR!4124 (Union!9242 lt!1035582 lt!1035581) s!11993))))

(declare-fun b!2967335 () Bool)

(assert (=> b!2967335 (= e!1867325 tp_is_empty!16047)))

(assert (= (and start!287214 res!1223954) b!2967327))

(assert (= (and b!2967327 (not res!1223953)) b!2967332))

(assert (= (and b!2967332 (not res!1223955)) b!2967328))

(assert (= (and b!2967328 (not res!1223957)) b!2967334))

(assert (= (and b!2967334 (not res!1223956)) b!2967333))

(assert (= (and start!287214 (is-ElementMatch!9242 r!17423)) b!2967335))

(assert (= (and start!287214 (is-Concat!14563 r!17423)) b!2967326))

(assert (= (and start!287214 (is-Star!9242 r!17423)) b!2967329))

(assert (= (and start!287214 (is-Union!9242 r!17423)) b!2967331))

(assert (= (and start!287214 (is-Cons!34983 s!11993)) b!2967330))

(declare-fun m!3336993 () Bool)

(assert (=> b!2967332 m!3336993))

(declare-fun m!3336995 () Bool)

(assert (=> b!2967332 m!3336995))

(declare-fun m!3336997 () Bool)

(assert (=> b!2967332 m!3336997))

(declare-fun m!3336999 () Bool)

(assert (=> start!287214 m!3336999))

(declare-fun m!3337001 () Bool)

(assert (=> b!2967328 m!3337001))

(declare-fun m!3337003 () Bool)

(assert (=> b!2967333 m!3337003))

(assert (=> b!2967333 m!3337003))

(declare-fun m!3337005 () Bool)

(assert (=> b!2967333 m!3337005))

(declare-fun m!3337007 () Bool)

(assert (=> b!2967334 m!3337007))

(declare-fun m!3337009 () Bool)

(assert (=> b!2967327 m!3337009))

(declare-fun m!3337011 () Bool)

(assert (=> b!2967327 m!3337011))

(declare-fun m!3337013 () Bool)

(assert (=> b!2967327 m!3337013))

(push 1)

(assert (not b!2967327))

(assert (not b!2967332))

(assert (not b!2967331))

(assert (not b!2967328))

(assert (not b!2967330))

(assert (not b!2967326))

(assert (not b!2967329))

(assert (not b!2967333))

(assert tp_is_empty!16047)

(assert (not start!287214))

(assert (not b!2967334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2967412 () Bool)

(declare-fun e!1867370 () Bool)

(declare-fun e!1867374 () Bool)

(assert (=> b!2967412 (= e!1867370 e!1867374)))

(declare-fun c!486659 () Bool)

(assert (=> b!2967412 (= c!486659 (is-Star!9242 r!17423))))

(declare-fun b!2967413 () Bool)

(declare-fun e!1867376 () Bool)

(declare-fun call!197257 () Bool)

(assert (=> b!2967413 (= e!1867376 call!197257)))

(declare-fun b!2967414 () Bool)

(declare-fun e!1867373 () Bool)

(assert (=> b!2967414 (= e!1867374 e!1867373)))

(declare-fun c!486658 () Bool)

(assert (=> b!2967414 (= c!486658 (is-Union!9242 r!17423))))

(declare-fun b!2967415 () Bool)

(declare-fun e!1867371 () Bool)

(declare-fun call!197258 () Bool)

(assert (=> b!2967415 (= e!1867371 call!197258)))

(declare-fun d!842443 () Bool)

(declare-fun res!1224000 () Bool)

(assert (=> d!842443 (=> res!1224000 e!1867370)))

(assert (=> d!842443 (= res!1224000 (is-ElementMatch!9242 r!17423))))

(assert (=> d!842443 (= (validRegex!3975 r!17423) e!1867370)))

(declare-fun b!2967416 () Bool)

(declare-fun e!1867375 () Bool)

(assert (=> b!2967416 (= e!1867375 e!1867376)))

(declare-fun res!1224001 () Bool)

(assert (=> b!2967416 (=> (not res!1224001) (not e!1867376))))

(declare-fun call!197259 () Bool)

(assert (=> b!2967416 (= res!1224001 call!197259)))

(declare-fun b!2967417 () Bool)

(declare-fun res!1223999 () Bool)

(assert (=> b!2967417 (=> res!1223999 e!1867375)))

(assert (=> b!2967417 (= res!1223999 (not (is-Concat!14563 r!17423)))))

(assert (=> b!2967417 (= e!1867373 e!1867375)))

(declare-fun b!2967418 () Bool)

(assert (=> b!2967418 (= e!1867374 e!1867371)))

(declare-fun res!1224002 () Bool)

(declare-fun nullable!2951 (Regex!9242) Bool)

(assert (=> b!2967418 (= res!1224002 (not (nullable!2951 (reg!9571 r!17423))))))

(assert (=> b!2967418 (=> (not res!1224002) (not e!1867371))))

(declare-fun bm!197252 () Bool)

(assert (=> bm!197252 (= call!197257 call!197258)))

(declare-fun bm!197253 () Bool)

(assert (=> bm!197253 (= call!197258 (validRegex!3975 (ite c!486659 (reg!9571 r!17423) (ite c!486658 (regOne!18997 r!17423) (regTwo!18996 r!17423)))))))

(declare-fun bm!197254 () Bool)

(assert (=> bm!197254 (= call!197259 (validRegex!3975 (ite c!486658 (regTwo!18997 r!17423) (regOne!18996 r!17423))))))

(declare-fun b!2967419 () Bool)

(declare-fun res!1224003 () Bool)

(declare-fun e!1867372 () Bool)

(assert (=> b!2967419 (=> (not res!1224003) (not e!1867372))))

(assert (=> b!2967419 (= res!1224003 call!197257)))

(assert (=> b!2967419 (= e!1867373 e!1867372)))

(declare-fun b!2967420 () Bool)

(assert (=> b!2967420 (= e!1867372 call!197259)))

(assert (= (and d!842443 (not res!1224000)) b!2967412))

(assert (= (and b!2967412 c!486659) b!2967418))

(assert (= (and b!2967412 (not c!486659)) b!2967414))

(assert (= (and b!2967418 res!1224002) b!2967415))

(assert (= (and b!2967414 c!486658) b!2967419))

(assert (= (and b!2967414 (not c!486658)) b!2967417))

(assert (= (and b!2967419 res!1224003) b!2967420))

(assert (= (and b!2967417 (not res!1223999)) b!2967416))

(assert (= (and b!2967416 res!1224001) b!2967413))

(assert (= (or b!2967419 b!2967413) bm!197252))

(assert (= (or b!2967420 b!2967416) bm!197254))

(assert (= (or b!2967415 bm!197252) bm!197253))

(declare-fun m!3337037 () Bool)

(assert (=> b!2967418 m!3337037))

(declare-fun m!3337039 () Bool)

(assert (=> bm!197253 m!3337039))

(declare-fun m!3337041 () Bool)

(assert (=> bm!197254 m!3337041))

(assert (=> start!287214 d!842443))

(declare-fun b!2967481 () Bool)

(declare-fun e!1867418 () Bool)

(declare-fun lt!1035600 () Bool)

(assert (=> b!2967481 (= e!1867418 (not lt!1035600))))

(declare-fun b!2967482 () Bool)

(declare-fun e!1867417 () Bool)

(declare-fun e!1867414 () Bool)

(assert (=> b!2967482 (= e!1867417 e!1867414)))

(declare-fun res!1224039 () Bool)

(assert (=> b!2967482 (=> res!1224039 e!1867414)))

(declare-fun call!197271 () Bool)

(assert (=> b!2967482 (= res!1224039 call!197271)))

(declare-fun b!2967483 () Bool)

(declare-fun head!6612 (List!35107) C!18670)

(assert (=> b!2967483 (= e!1867414 (not (= (head!6612 s!11993) (c!486646 (Union!9242 lt!1035582 lt!1035581)))))))

(declare-fun b!2967484 () Bool)

(declare-fun res!1224042 () Bool)

(declare-fun e!1867412 () Bool)

(assert (=> b!2967484 (=> res!1224042 e!1867412)))

(assert (=> b!2967484 (= res!1224042 (not (is-ElementMatch!9242 (Union!9242 lt!1035582 lt!1035581))))))

(assert (=> b!2967484 (= e!1867418 e!1867412)))

(declare-fun b!2967485 () Bool)

(declare-fun e!1867413 () Bool)

(declare-fun derivativeStep!2553 (Regex!9242 C!18670) Regex!9242)

(declare-fun tail!4838 (List!35107) List!35107)

(assert (=> b!2967485 (= e!1867413 (matchR!4124 (derivativeStep!2553 (Union!9242 lt!1035582 lt!1035581) (head!6612 s!11993)) (tail!4838 s!11993)))))

(declare-fun d!842445 () Bool)

(declare-fun e!1867415 () Bool)

(assert (=> d!842445 e!1867415))

(declare-fun c!486675 () Bool)

(assert (=> d!842445 (= c!486675 (is-EmptyExpr!9242 (Union!9242 lt!1035582 lt!1035581)))))

(assert (=> d!842445 (= lt!1035600 e!1867413)))

(declare-fun c!486673 () Bool)

(declare-fun isEmpty!19232 (List!35107) Bool)

(assert (=> d!842445 (= c!486673 (isEmpty!19232 s!11993))))

(assert (=> d!842445 (validRegex!3975 (Union!9242 lt!1035582 lt!1035581))))

(assert (=> d!842445 (= (matchR!4124 (Union!9242 lt!1035582 lt!1035581) s!11993) lt!1035600)))

(declare-fun b!2967486 () Bool)

(assert (=> b!2967486 (= e!1867413 (nullable!2951 (Union!9242 lt!1035582 lt!1035581)))))

(declare-fun b!2967487 () Bool)

(declare-fun res!1224044 () Bool)

(assert (=> b!2967487 (=> res!1224044 e!1867412)))

(declare-fun e!1867416 () Bool)

(assert (=> b!2967487 (= res!1224044 e!1867416)))

(declare-fun res!1224041 () Bool)

(assert (=> b!2967487 (=> (not res!1224041) (not e!1867416))))

(assert (=> b!2967487 (= res!1224041 lt!1035600)))

(declare-fun b!2967488 () Bool)

(assert (=> b!2967488 (= e!1867416 (= (head!6612 s!11993) (c!486646 (Union!9242 lt!1035582 lt!1035581))))))

(declare-fun bm!197266 () Bool)

(assert (=> bm!197266 (= call!197271 (isEmpty!19232 s!11993))))

(declare-fun b!2967489 () Bool)

(assert (=> b!2967489 (= e!1867415 (= lt!1035600 call!197271))))

(declare-fun b!2967490 () Bool)

(declare-fun res!1224043 () Bool)

(assert (=> b!2967490 (=> res!1224043 e!1867414)))

(assert (=> b!2967490 (= res!1224043 (not (isEmpty!19232 (tail!4838 s!11993))))))

(declare-fun b!2967491 () Bool)

(assert (=> b!2967491 (= e!1867415 e!1867418)))

(declare-fun c!486674 () Bool)

(assert (=> b!2967491 (= c!486674 (is-EmptyLang!9242 (Union!9242 lt!1035582 lt!1035581)))))

(declare-fun b!2967492 () Bool)

(assert (=> b!2967492 (= e!1867412 e!1867417)))

(declare-fun res!1224038 () Bool)

(assert (=> b!2967492 (=> (not res!1224038) (not e!1867417))))

(assert (=> b!2967492 (= res!1224038 (not lt!1035600))))

(declare-fun b!2967493 () Bool)

(declare-fun res!1224045 () Bool)

(assert (=> b!2967493 (=> (not res!1224045) (not e!1867416))))

(assert (=> b!2967493 (= res!1224045 (isEmpty!19232 (tail!4838 s!11993)))))

(declare-fun b!2967494 () Bool)

(declare-fun res!1224040 () Bool)

(assert (=> b!2967494 (=> (not res!1224040) (not e!1867416))))

(assert (=> b!2967494 (= res!1224040 (not call!197271))))

(assert (= (and d!842445 c!486673) b!2967486))

(assert (= (and d!842445 (not c!486673)) b!2967485))

(assert (= (and d!842445 c!486675) b!2967489))

(assert (= (and d!842445 (not c!486675)) b!2967491))

(assert (= (and b!2967491 c!486674) b!2967481))

(assert (= (and b!2967491 (not c!486674)) b!2967484))

(assert (= (and b!2967484 (not res!1224042)) b!2967487))

(assert (= (and b!2967487 res!1224041) b!2967494))

(assert (= (and b!2967494 res!1224040) b!2967493))

(assert (= (and b!2967493 res!1224045) b!2967488))

(assert (= (and b!2967487 (not res!1224044)) b!2967492))

(assert (= (and b!2967492 res!1224038) b!2967482))

(assert (= (and b!2967482 (not res!1224039)) b!2967490))

(assert (= (and b!2967490 (not res!1224043)) b!2967483))

(assert (= (or b!2967489 b!2967482 b!2967494) bm!197266))

(declare-fun m!3337059 () Bool)

(assert (=> b!2967488 m!3337059))

(assert (=> b!2967483 m!3337059))

(declare-fun m!3337061 () Bool)

(assert (=> bm!197266 m!3337061))

(declare-fun m!3337063 () Bool)

(assert (=> b!2967486 m!3337063))

(assert (=> b!2967485 m!3337059))

(assert (=> b!2967485 m!3337059))

(declare-fun m!3337065 () Bool)

(assert (=> b!2967485 m!3337065))

(declare-fun m!3337067 () Bool)

(assert (=> b!2967485 m!3337067))

(assert (=> b!2967485 m!3337065))

(assert (=> b!2967485 m!3337067))

(declare-fun m!3337069 () Bool)

(assert (=> b!2967485 m!3337069))

(assert (=> d!842445 m!3337061))

(declare-fun m!3337071 () Bool)

(assert (=> d!842445 m!3337071))

(assert (=> b!2967490 m!3337067))

(assert (=> b!2967490 m!3337067))

(declare-fun m!3337073 () Bool)

(assert (=> b!2967490 m!3337073))

(assert (=> b!2967493 m!3337067))

(assert (=> b!2967493 m!3337067))

(assert (=> b!2967493 m!3337073))

(assert (=> b!2967334 d!842445))

(declare-fun b!2967495 () Bool)

(declare-fun e!1867419 () Bool)

(declare-fun e!1867423 () Bool)

(assert (=> b!2967495 (= e!1867419 e!1867423)))

(declare-fun c!486677 () Bool)

(assert (=> b!2967495 (= c!486677 (is-Star!9242 (simplify!245 r!17423)))))

(declare-fun b!2967496 () Bool)

(declare-fun e!1867425 () Bool)

(declare-fun call!197272 () Bool)

(assert (=> b!2967496 (= e!1867425 call!197272)))

(declare-fun b!2967497 () Bool)

(declare-fun e!1867422 () Bool)

(assert (=> b!2967497 (= e!1867423 e!1867422)))

(declare-fun c!486676 () Bool)

(assert (=> b!2967497 (= c!486676 (is-Union!9242 (simplify!245 r!17423)))))

(declare-fun b!2967498 () Bool)

(declare-fun e!1867420 () Bool)

(declare-fun call!197273 () Bool)

(assert (=> b!2967498 (= e!1867420 call!197273)))

(declare-fun d!842449 () Bool)

(declare-fun res!1224047 () Bool)

(assert (=> d!842449 (=> res!1224047 e!1867419)))

(assert (=> d!842449 (= res!1224047 (is-ElementMatch!9242 (simplify!245 r!17423)))))

(assert (=> d!842449 (= (validRegex!3975 (simplify!245 r!17423)) e!1867419)))

(declare-fun b!2967499 () Bool)

(declare-fun e!1867424 () Bool)

(assert (=> b!2967499 (= e!1867424 e!1867425)))

(declare-fun res!1224048 () Bool)

(assert (=> b!2967499 (=> (not res!1224048) (not e!1867425))))

(declare-fun call!197274 () Bool)

(assert (=> b!2967499 (= res!1224048 call!197274)))

(declare-fun b!2967500 () Bool)

(declare-fun res!1224046 () Bool)

(assert (=> b!2967500 (=> res!1224046 e!1867424)))

(assert (=> b!2967500 (= res!1224046 (not (is-Concat!14563 (simplify!245 r!17423))))))

(assert (=> b!2967500 (= e!1867422 e!1867424)))

(declare-fun b!2967501 () Bool)

(assert (=> b!2967501 (= e!1867423 e!1867420)))

(declare-fun res!1224049 () Bool)

(assert (=> b!2967501 (= res!1224049 (not (nullable!2951 (reg!9571 (simplify!245 r!17423)))))))

(assert (=> b!2967501 (=> (not res!1224049) (not e!1867420))))

(declare-fun bm!197267 () Bool)

(assert (=> bm!197267 (= call!197272 call!197273)))

(declare-fun bm!197268 () Bool)

(assert (=> bm!197268 (= call!197273 (validRegex!3975 (ite c!486677 (reg!9571 (simplify!245 r!17423)) (ite c!486676 (regOne!18997 (simplify!245 r!17423)) (regTwo!18996 (simplify!245 r!17423))))))))

(declare-fun bm!197269 () Bool)

(assert (=> bm!197269 (= call!197274 (validRegex!3975 (ite c!486676 (regTwo!18997 (simplify!245 r!17423)) (regOne!18996 (simplify!245 r!17423)))))))

(declare-fun b!2967502 () Bool)

(declare-fun res!1224050 () Bool)

(declare-fun e!1867421 () Bool)

(assert (=> b!2967502 (=> (not res!1224050) (not e!1867421))))

(assert (=> b!2967502 (= res!1224050 call!197272)))

(assert (=> b!2967502 (= e!1867422 e!1867421)))

(declare-fun b!2967503 () Bool)

(assert (=> b!2967503 (= e!1867421 call!197274)))

(assert (= (and d!842449 (not res!1224047)) b!2967495))

(assert (= (and b!2967495 c!486677) b!2967501))

(assert (= (and b!2967495 (not c!486677)) b!2967497))

(assert (= (and b!2967501 res!1224049) b!2967498))

(assert (= (and b!2967497 c!486676) b!2967502))

(assert (= (and b!2967497 (not c!486676)) b!2967500))

(assert (= (and b!2967502 res!1224050) b!2967503))

(assert (= (and b!2967500 (not res!1224046)) b!2967499))

(assert (= (and b!2967499 res!1224048) b!2967496))

(assert (= (or b!2967502 b!2967496) bm!197267))

(assert (= (or b!2967503 b!2967499) bm!197269))

(assert (= (or b!2967498 bm!197267) bm!197268))

(declare-fun m!3337075 () Bool)

(assert (=> b!2967501 m!3337075))

(declare-fun m!3337077 () Bool)

(assert (=> bm!197268 m!3337077))

(declare-fun m!3337079 () Bool)

(assert (=> bm!197269 m!3337079))

(assert (=> b!2967333 d!842449))

(declare-fun b!2967622 () Bool)

(declare-fun e!1867496 () Regex!9242)

(declare-fun lt!1035626 () Regex!9242)

(assert (=> b!2967622 (= e!1867496 lt!1035626)))

(declare-fun b!2967623 () Bool)

(declare-fun e!1867501 () Regex!9242)

(assert (=> b!2967623 (= e!1867501 EmptyExpr!9242)))

(declare-fun b!2967624 () Bool)

(declare-fun c!486731 () Bool)

(declare-fun call!197311 () Bool)

(assert (=> b!2967624 (= c!486731 call!197311)))

(declare-fun e!1867508 () Regex!9242)

(assert (=> b!2967624 (= e!1867508 e!1867496)))

(declare-fun b!2967625 () Bool)

(declare-fun e!1867506 () Regex!9242)

(declare-fun e!1867507 () Regex!9242)

(assert (=> b!2967625 (= e!1867506 e!1867507)))

(declare-fun lt!1035625 () Regex!9242)

(declare-fun call!197313 () Regex!9242)

(assert (=> b!2967625 (= lt!1035625 call!197313)))

(declare-fun lt!1035629 () Regex!9242)

(declare-fun call!197312 () Regex!9242)

(assert (=> b!2967625 (= lt!1035629 call!197312)))

(declare-fun c!486735 () Bool)

(declare-fun call!197310 () Bool)

(assert (=> b!2967625 (= c!486735 call!197310)))

(declare-fun bm!197304 () Bool)

(declare-fun call!197309 () Regex!9242)

(assert (=> bm!197304 (= call!197313 call!197309)))

(declare-fun b!2967626 () Bool)

(declare-fun e!1867503 () Regex!9242)

(assert (=> b!2967626 (= e!1867503 EmptyLang!9242)))

(declare-fun d!842451 () Bool)

(declare-fun e!1867497 () Bool)

(assert (=> d!842451 e!1867497))

(declare-fun res!1224073 () Bool)

(assert (=> d!842451 (=> (not res!1224073) (not e!1867497))))

(declare-fun lt!1035630 () Regex!9242)

(assert (=> d!842451 (= res!1224073 (validRegex!3975 lt!1035630))))

(assert (=> d!842451 (= lt!1035630 e!1867503)))

(declare-fun c!486729 () Bool)

(assert (=> d!842451 (= c!486729 (is-EmptyLang!9242 r!17423))))

(assert (=> d!842451 (validRegex!3975 r!17423)))

(assert (=> d!842451 (= (simplify!245 r!17423) lt!1035630)))

(declare-fun b!2967627 () Bool)

(assert (=> b!2967627 (= e!1867508 EmptyLang!9242)))

(declare-fun b!2967628 () Bool)

(declare-fun e!1867500 () Regex!9242)

(declare-fun lt!1035627 () Regex!9242)

(assert (=> b!2967628 (= e!1867500 lt!1035627)))

(declare-fun b!2967629 () Bool)

(declare-fun e!1867509 () Regex!9242)

(assert (=> b!2967629 (= e!1867503 e!1867509)))

(declare-fun c!486732 () Bool)

(assert (=> b!2967629 (= c!486732 (is-ElementMatch!9242 r!17423))))

(declare-fun c!486726 () Bool)

(declare-fun bm!197305 () Bool)

(declare-fun call!197314 () Bool)

(assert (=> bm!197305 (= call!197314 (isEmptyLang!358 (ite c!486726 lt!1035629 lt!1035627)))))

(declare-fun b!2967630 () Bool)

(declare-fun e!1867505 () Bool)

(assert (=> b!2967630 (= e!1867505 call!197311)))

(declare-fun b!2967631 () Bool)

(assert (=> b!2967631 (= c!486726 (is-Union!9242 r!17423))))

(declare-fun e!1867499 () Regex!9242)

(assert (=> b!2967631 (= e!1867499 e!1867506)))

(declare-fun b!2967632 () Bool)

(assert (=> b!2967632 (= e!1867500 (Concat!14563 lt!1035627 lt!1035626))))

(declare-fun bm!197306 () Bool)

(declare-fun c!486727 () Bool)

(assert (=> bm!197306 (= call!197309 (simplify!245 (ite c!486727 (reg!9571 r!17423) (ite c!486726 (regOne!18997 r!17423) (regTwo!18996 r!17423)))))))

(declare-fun b!2967633 () Bool)

(declare-fun e!1867502 () Regex!9242)

(assert (=> b!2967633 (= e!1867502 EmptyExpr!9242)))

(declare-fun b!2967634 () Bool)

(declare-fun e!1867498 () Regex!9242)

(assert (=> b!2967634 (= e!1867498 (Union!9242 lt!1035625 lt!1035629))))

(declare-fun b!2967635 () Bool)

(assert (=> b!2967635 (= e!1867509 r!17423)))

(declare-fun b!2967636 () Bool)

(declare-fun c!486734 () Bool)

(assert (=> b!2967636 (= c!486734 (is-EmptyExpr!9242 r!17423))))

(assert (=> b!2967636 (= e!1867509 e!1867502)))

(declare-fun b!2967637 () Bool)

(assert (=> b!2967637 (= e!1867506 e!1867508)))

(assert (=> b!2967637 (= lt!1035627 call!197312)))

(assert (=> b!2967637 (= lt!1035626 call!197313)))

(declare-fun res!1224075 () Bool)

(assert (=> b!2967637 (= res!1224075 call!197314)))

(declare-fun e!1867504 () Bool)

(assert (=> b!2967637 (=> res!1224075 e!1867504)))

(declare-fun c!486733 () Bool)

(assert (=> b!2967637 (= c!486733 e!1867504)))

(declare-fun b!2967638 () Bool)

(declare-fun c!486730 () Bool)

(assert (=> b!2967638 (= c!486730 e!1867505)))

(declare-fun res!1224074 () Bool)

(assert (=> b!2967638 (=> res!1224074 e!1867505)))

(declare-fun call!197315 () Bool)

(assert (=> b!2967638 (= res!1224074 call!197315)))

(declare-fun lt!1035628 () Regex!9242)

(assert (=> b!2967638 (= lt!1035628 call!197309)))

(assert (=> b!2967638 (= e!1867499 e!1867501)))

(declare-fun b!2967639 () Bool)

(assert (=> b!2967639 (= e!1867507 lt!1035629)))

(declare-fun bm!197307 () Bool)

(assert (=> bm!197307 (= call!197312 (simplify!245 (ite c!486726 (regTwo!18997 r!17423) (regOne!18996 r!17423))))))

(declare-fun bm!197308 () Bool)

(assert (=> bm!197308 (= call!197315 (isEmptyLang!358 (ite c!486727 lt!1035628 (ite c!486726 lt!1035625 lt!1035626))))))

(declare-fun b!2967640 () Bool)

(assert (=> b!2967640 (= e!1867497 (= (nullable!2951 lt!1035630) (nullable!2951 r!17423)))))

(declare-fun b!2967641 () Bool)

(assert (=> b!2967641 (= e!1867496 e!1867500)))

(declare-fun c!486736 () Bool)

(declare-fun isEmptyExpr!409 (Regex!9242) Bool)

(assert (=> b!2967641 (= c!486736 (isEmptyExpr!409 lt!1035626))))

(declare-fun b!2967642 () Bool)

(assert (=> b!2967642 (= e!1867501 (Star!9242 lt!1035628))))

(declare-fun b!2967643 () Bool)

(assert (=> b!2967643 (= e!1867502 e!1867499)))

(assert (=> b!2967643 (= c!486727 (is-Star!9242 r!17423))))

(declare-fun b!2967644 () Bool)

(assert (=> b!2967644 (= e!1867498 lt!1035625)))

(declare-fun b!2967645 () Bool)

(declare-fun c!486728 () Bool)

(assert (=> b!2967645 (= c!486728 call!197314)))

(assert (=> b!2967645 (= e!1867507 e!1867498)))

(declare-fun bm!197309 () Bool)

(assert (=> bm!197309 (= call!197310 call!197315)))

(declare-fun b!2967646 () Bool)

(assert (=> b!2967646 (= e!1867504 call!197310)))

(declare-fun bm!197310 () Bool)

(assert (=> bm!197310 (= call!197311 (isEmptyExpr!409 (ite c!486727 lt!1035628 lt!1035627)))))

(assert (= (and d!842451 c!486729) b!2967626))

(assert (= (and d!842451 (not c!486729)) b!2967629))

(assert (= (and b!2967629 c!486732) b!2967635))

(assert (= (and b!2967629 (not c!486732)) b!2967636))

(assert (= (and b!2967636 c!486734) b!2967633))

(assert (= (and b!2967636 (not c!486734)) b!2967643))

(assert (= (and b!2967643 c!486727) b!2967638))

(assert (= (and b!2967643 (not c!486727)) b!2967631))

(assert (= (and b!2967638 (not res!1224074)) b!2967630))

(assert (= (and b!2967638 c!486730) b!2967623))

(assert (= (and b!2967638 (not c!486730)) b!2967642))

(assert (= (and b!2967631 c!486726) b!2967625))

(assert (= (and b!2967631 (not c!486726)) b!2967637))

(assert (= (and b!2967625 c!486735) b!2967639))

(assert (= (and b!2967625 (not c!486735)) b!2967645))

(assert (= (and b!2967645 c!486728) b!2967644))

(assert (= (and b!2967645 (not c!486728)) b!2967634))

(assert (= (and b!2967637 (not res!1224075)) b!2967646))

(assert (= (and b!2967637 c!486733) b!2967627))

(assert (= (and b!2967637 (not c!486733)) b!2967624))

(assert (= (and b!2967624 c!486731) b!2967622))

(assert (= (and b!2967624 (not c!486731)) b!2967641))

(assert (= (and b!2967641 c!486736) b!2967628))

(assert (= (and b!2967641 (not c!486736)) b!2967632))

(assert (= (or b!2967625 b!2967637) bm!197304))

(assert (= (or b!2967625 b!2967637) bm!197307))

(assert (= (or b!2967645 b!2967637) bm!197305))

(assert (= (or b!2967625 b!2967646) bm!197309))

(assert (= (or b!2967630 b!2967624) bm!197310))

(assert (= (or b!2967638 bm!197304) bm!197306))

(assert (= (or b!2967638 bm!197309) bm!197308))

(assert (= (and d!842451 res!1224073) b!2967640))

(declare-fun m!3337093 () Bool)

(assert (=> b!2967641 m!3337093))

(declare-fun m!3337095 () Bool)

(assert (=> b!2967640 m!3337095))

(declare-fun m!3337097 () Bool)

(assert (=> b!2967640 m!3337097))

(declare-fun m!3337099 () Bool)

(assert (=> bm!197310 m!3337099))

(declare-fun m!3337101 () Bool)

(assert (=> bm!197307 m!3337101))

(declare-fun m!3337103 () Bool)

(assert (=> bm!197306 m!3337103))

(declare-fun m!3337105 () Bool)

(assert (=> bm!197308 m!3337105))

(declare-fun m!3337107 () Bool)

(assert (=> bm!197305 m!3337107))

(declare-fun m!3337109 () Bool)

(assert (=> d!842451 m!3337109))

(assert (=> d!842451 m!3336999))

(assert (=> b!2967333 d!842451))

(declare-fun d!842457 () Bool)

(assert (=> d!842457 (= (isEmptyLang!358 lt!1035581) (is-EmptyLang!9242 lt!1035581))))

(assert (=> b!2967328 d!842457))

(declare-fun b!2967781 () Bool)

(assert (=> b!2967781 true))

(assert (=> b!2967781 true))

(declare-fun bs!526432 () Bool)

(declare-fun b!2967783 () Bool)

(assert (= bs!526432 (and b!2967783 b!2967781)))

(declare-fun lambda!110476 () Int)

(declare-fun lambda!110475 () Int)

(assert (=> bs!526432 (not (= lambda!110476 lambda!110475))))

(assert (=> b!2967783 true))

(assert (=> b!2967783 true))

(declare-fun b!2967777 () Bool)

(declare-fun e!1867587 () Bool)

(declare-fun e!1867584 () Bool)

(assert (=> b!2967777 (= e!1867587 e!1867584)))

(declare-fun res!1224107 () Bool)

(assert (=> b!2967777 (= res!1224107 (matchRSpec!1379 (regOne!18997 r!17423) s!11993))))

(assert (=> b!2967777 (=> res!1224107 e!1867584)))

(declare-fun b!2967778 () Bool)

(declare-fun c!486789 () Bool)

(assert (=> b!2967778 (= c!486789 (is-ElementMatch!9242 r!17423))))

(declare-fun e!1867590 () Bool)

(declare-fun e!1867588 () Bool)

(assert (=> b!2967778 (= e!1867590 e!1867588)))

(declare-fun bm!197336 () Bool)

(declare-fun call!197341 () Bool)

(assert (=> bm!197336 (= call!197341 (isEmpty!19232 s!11993))))

(declare-fun b!2967779 () Bool)

(declare-fun c!486788 () Bool)

(assert (=> b!2967779 (= c!486788 (is-Union!9242 r!17423))))

(assert (=> b!2967779 (= e!1867588 e!1867587)))

(declare-fun b!2967780 () Bool)

(declare-fun res!1224109 () Bool)

(declare-fun e!1867589 () Bool)

(assert (=> b!2967780 (=> res!1224109 e!1867589)))

(assert (=> b!2967780 (= res!1224109 call!197341)))

(declare-fun e!1867585 () Bool)

(assert (=> b!2967780 (= e!1867585 e!1867589)))

(declare-fun call!197342 () Bool)

(assert (=> b!2967781 (= e!1867589 call!197342)))

(declare-fun b!2967782 () Bool)

(declare-fun e!1867586 () Bool)

(assert (=> b!2967782 (= e!1867586 e!1867590)))

(declare-fun res!1224108 () Bool)

(assert (=> b!2967782 (= res!1224108 (not (is-EmptyLang!9242 r!17423)))))

(assert (=> b!2967782 (=> (not res!1224108) (not e!1867590))))

(assert (=> b!2967783 (= e!1867585 call!197342)))

(declare-fun d!842459 () Bool)

(declare-fun c!486786 () Bool)

(assert (=> d!842459 (= c!486786 (is-EmptyExpr!9242 r!17423))))

(assert (=> d!842459 (= (matchRSpec!1379 r!17423 s!11993) e!1867586)))

(declare-fun b!2967776 () Bool)

(assert (=> b!2967776 (= e!1867587 e!1867585)))

(declare-fun c!486787 () Bool)

(assert (=> b!2967776 (= c!486787 (is-Star!9242 r!17423))))

(declare-fun bm!197337 () Bool)

(declare-fun Exists!1537 (Int) Bool)

(assert (=> bm!197337 (= call!197342 (Exists!1537 (ite c!486787 lambda!110475 lambda!110476)))))

(declare-fun b!2967784 () Bool)

(assert (=> b!2967784 (= e!1867586 call!197341)))

(declare-fun b!2967785 () Bool)

(assert (=> b!2967785 (= e!1867584 (matchRSpec!1379 (regTwo!18997 r!17423) s!11993))))

(declare-fun b!2967786 () Bool)

(assert (=> b!2967786 (= e!1867588 (= s!11993 (Cons!34983 (c!486646 r!17423) Nil!34983)))))

(assert (= (and d!842459 c!486786) b!2967784))

(assert (= (and d!842459 (not c!486786)) b!2967782))

(assert (= (and b!2967782 res!1224108) b!2967778))

(assert (= (and b!2967778 c!486789) b!2967786))

(assert (= (and b!2967778 (not c!486789)) b!2967779))

(assert (= (and b!2967779 c!486788) b!2967777))

(assert (= (and b!2967779 (not c!486788)) b!2967776))

(assert (= (and b!2967777 (not res!1224107)) b!2967785))

(assert (= (and b!2967776 c!486787) b!2967780))

(assert (= (and b!2967776 (not c!486787)) b!2967783))

(assert (= (and b!2967780 (not res!1224109)) b!2967781))

(assert (= (or b!2967781 b!2967783) bm!197337))

(assert (= (or b!2967784 b!2967780) bm!197336))

(declare-fun m!3337169 () Bool)

(assert (=> b!2967777 m!3337169))

(assert (=> bm!197336 m!3337061))

(declare-fun m!3337171 () Bool)

(assert (=> bm!197337 m!3337171))

(declare-fun m!3337173 () Bool)

(assert (=> b!2967785 m!3337173))

(assert (=> b!2967327 d!842459))

(declare-fun b!2967791 () Bool)

(declare-fun e!1867597 () Bool)

(declare-fun lt!1035649 () Bool)

(assert (=> b!2967791 (= e!1867597 (not lt!1035649))))

(declare-fun b!2967792 () Bool)

(declare-fun e!1867596 () Bool)

(declare-fun e!1867593 () Bool)

(assert (=> b!2967792 (= e!1867596 e!1867593)))

(declare-fun res!1224111 () Bool)

(assert (=> b!2967792 (=> res!1224111 e!1867593)))

(declare-fun call!197343 () Bool)

(assert (=> b!2967792 (= res!1224111 call!197343)))

(declare-fun b!2967793 () Bool)

(assert (=> b!2967793 (= e!1867593 (not (= (head!6612 s!11993) (c!486646 r!17423))))))

(declare-fun b!2967794 () Bool)

(declare-fun res!1224114 () Bool)

(declare-fun e!1867591 () Bool)

(assert (=> b!2967794 (=> res!1224114 e!1867591)))

(assert (=> b!2967794 (= res!1224114 (not (is-ElementMatch!9242 r!17423)))))

(assert (=> b!2967794 (= e!1867597 e!1867591)))

(declare-fun b!2967795 () Bool)

(declare-fun e!1867592 () Bool)

(assert (=> b!2967795 (= e!1867592 (matchR!4124 (derivativeStep!2553 r!17423 (head!6612 s!11993)) (tail!4838 s!11993)))))

(declare-fun d!842471 () Bool)

(declare-fun e!1867594 () Bool)

(assert (=> d!842471 e!1867594))

(declare-fun c!486792 () Bool)

(assert (=> d!842471 (= c!486792 (is-EmptyExpr!9242 r!17423))))

(assert (=> d!842471 (= lt!1035649 e!1867592)))

(declare-fun c!486790 () Bool)

(assert (=> d!842471 (= c!486790 (isEmpty!19232 s!11993))))

(assert (=> d!842471 (validRegex!3975 r!17423)))

(assert (=> d!842471 (= (matchR!4124 r!17423 s!11993) lt!1035649)))

(declare-fun b!2967796 () Bool)

(assert (=> b!2967796 (= e!1867592 (nullable!2951 r!17423))))

(declare-fun b!2967797 () Bool)

(declare-fun res!1224116 () Bool)

(assert (=> b!2967797 (=> res!1224116 e!1867591)))

(declare-fun e!1867595 () Bool)

(assert (=> b!2967797 (= res!1224116 e!1867595)))

(declare-fun res!1224113 () Bool)

(assert (=> b!2967797 (=> (not res!1224113) (not e!1867595))))

(assert (=> b!2967797 (= res!1224113 lt!1035649)))

(declare-fun b!2967798 () Bool)

(assert (=> b!2967798 (= e!1867595 (= (head!6612 s!11993) (c!486646 r!17423)))))

(declare-fun bm!197338 () Bool)

(assert (=> bm!197338 (= call!197343 (isEmpty!19232 s!11993))))

(declare-fun b!2967799 () Bool)

(assert (=> b!2967799 (= e!1867594 (= lt!1035649 call!197343))))

(declare-fun b!2967800 () Bool)

(declare-fun res!1224115 () Bool)

(assert (=> b!2967800 (=> res!1224115 e!1867593)))

(assert (=> b!2967800 (= res!1224115 (not (isEmpty!19232 (tail!4838 s!11993))))))

(declare-fun b!2967801 () Bool)

(assert (=> b!2967801 (= e!1867594 e!1867597)))

(declare-fun c!486791 () Bool)

(assert (=> b!2967801 (= c!486791 (is-EmptyLang!9242 r!17423))))

(declare-fun b!2967802 () Bool)

(assert (=> b!2967802 (= e!1867591 e!1867596)))

(declare-fun res!1224110 () Bool)

(assert (=> b!2967802 (=> (not res!1224110) (not e!1867596))))

(assert (=> b!2967802 (= res!1224110 (not lt!1035649))))

(declare-fun b!2967803 () Bool)

(declare-fun res!1224117 () Bool)

(assert (=> b!2967803 (=> (not res!1224117) (not e!1867595))))

(assert (=> b!2967803 (= res!1224117 (isEmpty!19232 (tail!4838 s!11993)))))

(declare-fun b!2967804 () Bool)

(declare-fun res!1224112 () Bool)

(assert (=> b!2967804 (=> (not res!1224112) (not e!1867595))))

(assert (=> b!2967804 (= res!1224112 (not call!197343))))

(assert (= (and d!842471 c!486790) b!2967796))

(assert (= (and d!842471 (not c!486790)) b!2967795))

(assert (= (and d!842471 c!486792) b!2967799))

(assert (= (and d!842471 (not c!486792)) b!2967801))

(assert (= (and b!2967801 c!486791) b!2967791))

(assert (= (and b!2967801 (not c!486791)) b!2967794))

(assert (= (and b!2967794 (not res!1224114)) b!2967797))

(assert (= (and b!2967797 res!1224113) b!2967804))

(assert (= (and b!2967804 res!1224112) b!2967803))

(assert (= (and b!2967803 res!1224117) b!2967798))

(assert (= (and b!2967797 (not res!1224116)) b!2967802))

(assert (= (and b!2967802 res!1224110) b!2967792))

(assert (= (and b!2967792 (not res!1224111)) b!2967800))

(assert (= (and b!2967800 (not res!1224115)) b!2967793))

(assert (= (or b!2967799 b!2967792 b!2967804) bm!197338))

(assert (=> b!2967798 m!3337059))

(assert (=> b!2967793 m!3337059))

(assert (=> bm!197338 m!3337061))

(assert (=> b!2967796 m!3337097))

(assert (=> b!2967795 m!3337059))

(assert (=> b!2967795 m!3337059))

(declare-fun m!3337175 () Bool)

(assert (=> b!2967795 m!3337175))

(assert (=> b!2967795 m!3337067))

(assert (=> b!2967795 m!3337175))

(assert (=> b!2967795 m!3337067))

(declare-fun m!3337177 () Bool)

(assert (=> b!2967795 m!3337177))

(assert (=> d!842471 m!3337061))

(assert (=> d!842471 m!3336999))

(assert (=> b!2967800 m!3337067))

(assert (=> b!2967800 m!3337067))

(assert (=> b!2967800 m!3337073))

(assert (=> b!2967803 m!3337067))

(assert (=> b!2967803 m!3337067))

(assert (=> b!2967803 m!3337073))

(assert (=> b!2967327 d!842471))

(declare-fun d!842473 () Bool)

(assert (=> d!842473 (= (matchR!4124 r!17423 s!11993) (matchRSpec!1379 r!17423 s!11993))))

(declare-fun lt!1035652 () Unit!48863)

(declare-fun choose!17552 (Regex!9242 List!35107) Unit!48863)

(assert (=> d!842473 (= lt!1035652 (choose!17552 r!17423 s!11993))))

(assert (=> d!842473 (validRegex!3975 r!17423)))

(assert (=> d!842473 (= (mainMatchTheorem!1379 r!17423 s!11993) lt!1035652)))

(declare-fun bs!526433 () Bool)

(assert (= bs!526433 d!842473))

(assert (=> bs!526433 m!3337011))

(assert (=> bs!526433 m!3337009))

(declare-fun m!3337179 () Bool)

(assert (=> bs!526433 m!3337179))

(assert (=> bs!526433 m!3336999))

(assert (=> b!2967327 d!842473))

(declare-fun d!842475 () Bool)

(assert (=> d!842475 (= (isEmptyLang!358 lt!1035582) (is-EmptyLang!9242 lt!1035582))))

(assert (=> b!2967332 d!842475))

(declare-fun b!2967805 () Bool)

(declare-fun e!1867598 () Regex!9242)

(declare-fun lt!1035654 () Regex!9242)

(assert (=> b!2967805 (= e!1867598 lt!1035654)))

(declare-fun b!2967806 () Bool)

(declare-fun e!1867603 () Regex!9242)

(assert (=> b!2967806 (= e!1867603 EmptyExpr!9242)))

(declare-fun b!2967807 () Bool)

(declare-fun c!486798 () Bool)

(declare-fun call!197346 () Bool)

(assert (=> b!2967807 (= c!486798 call!197346)))

(declare-fun e!1867610 () Regex!9242)

(assert (=> b!2967807 (= e!1867610 e!1867598)))

(declare-fun b!2967808 () Bool)

(declare-fun e!1867608 () Regex!9242)

(declare-fun e!1867609 () Regex!9242)

(assert (=> b!2967808 (= e!1867608 e!1867609)))

(declare-fun lt!1035653 () Regex!9242)

(declare-fun call!197348 () Regex!9242)

(assert (=> b!2967808 (= lt!1035653 call!197348)))

(declare-fun lt!1035657 () Regex!9242)

(declare-fun call!197347 () Regex!9242)

(assert (=> b!2967808 (= lt!1035657 call!197347)))

(declare-fun c!486802 () Bool)

(declare-fun call!197345 () Bool)

(assert (=> b!2967808 (= c!486802 call!197345)))

(declare-fun bm!197339 () Bool)

(declare-fun call!197344 () Regex!9242)

(assert (=> bm!197339 (= call!197348 call!197344)))

(declare-fun b!2967809 () Bool)

(declare-fun e!1867605 () Regex!9242)

(assert (=> b!2967809 (= e!1867605 EmptyLang!9242)))

(declare-fun d!842477 () Bool)

(declare-fun e!1867599 () Bool)

(assert (=> d!842477 e!1867599))

(declare-fun res!1224118 () Bool)

(assert (=> d!842477 (=> (not res!1224118) (not e!1867599))))

(declare-fun lt!1035658 () Regex!9242)

(assert (=> d!842477 (= res!1224118 (validRegex!3975 lt!1035658))))

(assert (=> d!842477 (= lt!1035658 e!1867605)))

(declare-fun c!486796 () Bool)

(assert (=> d!842477 (= c!486796 (is-EmptyLang!9242 (regTwo!18997 r!17423)))))

(assert (=> d!842477 (validRegex!3975 (regTwo!18997 r!17423))))

(assert (=> d!842477 (= (simplify!245 (regTwo!18997 r!17423)) lt!1035658)))

(declare-fun b!2967810 () Bool)

(assert (=> b!2967810 (= e!1867610 EmptyLang!9242)))

(declare-fun b!2967811 () Bool)

(declare-fun e!1867602 () Regex!9242)

(declare-fun lt!1035655 () Regex!9242)

(assert (=> b!2967811 (= e!1867602 lt!1035655)))

(declare-fun b!2967812 () Bool)

(declare-fun e!1867611 () Regex!9242)

(assert (=> b!2967812 (= e!1867605 e!1867611)))

(declare-fun c!486799 () Bool)

(assert (=> b!2967812 (= c!486799 (is-ElementMatch!9242 (regTwo!18997 r!17423)))))

(declare-fun bm!197340 () Bool)

(declare-fun c!486793 () Bool)

(declare-fun call!197349 () Bool)

(assert (=> bm!197340 (= call!197349 (isEmptyLang!358 (ite c!486793 lt!1035657 lt!1035655)))))

(declare-fun b!2967813 () Bool)

(declare-fun e!1867607 () Bool)

(assert (=> b!2967813 (= e!1867607 call!197346)))

(declare-fun b!2967814 () Bool)

(assert (=> b!2967814 (= c!486793 (is-Union!9242 (regTwo!18997 r!17423)))))

(declare-fun e!1867601 () Regex!9242)

(assert (=> b!2967814 (= e!1867601 e!1867608)))

(declare-fun b!2967815 () Bool)

(assert (=> b!2967815 (= e!1867602 (Concat!14563 lt!1035655 lt!1035654))))

(declare-fun bm!197341 () Bool)

(declare-fun c!486794 () Bool)

(assert (=> bm!197341 (= call!197344 (simplify!245 (ite c!486794 (reg!9571 (regTwo!18997 r!17423)) (ite c!486793 (regOne!18997 (regTwo!18997 r!17423)) (regTwo!18996 (regTwo!18997 r!17423))))))))

(declare-fun b!2967816 () Bool)

(declare-fun e!1867604 () Regex!9242)

(assert (=> b!2967816 (= e!1867604 EmptyExpr!9242)))

(declare-fun b!2967817 () Bool)

(declare-fun e!1867600 () Regex!9242)

(assert (=> b!2967817 (= e!1867600 (Union!9242 lt!1035653 lt!1035657))))

(declare-fun b!2967818 () Bool)

(assert (=> b!2967818 (= e!1867611 (regTwo!18997 r!17423))))

(declare-fun b!2967819 () Bool)

(declare-fun c!486801 () Bool)

(assert (=> b!2967819 (= c!486801 (is-EmptyExpr!9242 (regTwo!18997 r!17423)))))

(assert (=> b!2967819 (= e!1867611 e!1867604)))

(declare-fun b!2967820 () Bool)

(assert (=> b!2967820 (= e!1867608 e!1867610)))

(assert (=> b!2967820 (= lt!1035655 call!197347)))

(assert (=> b!2967820 (= lt!1035654 call!197348)))

(declare-fun res!1224120 () Bool)

(assert (=> b!2967820 (= res!1224120 call!197349)))

(declare-fun e!1867606 () Bool)

(assert (=> b!2967820 (=> res!1224120 e!1867606)))

(declare-fun c!486800 () Bool)

(assert (=> b!2967820 (= c!486800 e!1867606)))

(declare-fun b!2967821 () Bool)

(declare-fun c!486797 () Bool)

(assert (=> b!2967821 (= c!486797 e!1867607)))

(declare-fun res!1224119 () Bool)

(assert (=> b!2967821 (=> res!1224119 e!1867607)))

(declare-fun call!197350 () Bool)

(assert (=> b!2967821 (= res!1224119 call!197350)))

(declare-fun lt!1035656 () Regex!9242)

(assert (=> b!2967821 (= lt!1035656 call!197344)))

(assert (=> b!2967821 (= e!1867601 e!1867603)))

(declare-fun b!2967822 () Bool)

(assert (=> b!2967822 (= e!1867609 lt!1035657)))

(declare-fun bm!197342 () Bool)

(assert (=> bm!197342 (= call!197347 (simplify!245 (ite c!486793 (regTwo!18997 (regTwo!18997 r!17423)) (regOne!18996 (regTwo!18997 r!17423)))))))

(declare-fun bm!197343 () Bool)

(assert (=> bm!197343 (= call!197350 (isEmptyLang!358 (ite c!486794 lt!1035656 (ite c!486793 lt!1035653 lt!1035654))))))

(declare-fun b!2967823 () Bool)

(assert (=> b!2967823 (= e!1867599 (= (nullable!2951 lt!1035658) (nullable!2951 (regTwo!18997 r!17423))))))

(declare-fun b!2967824 () Bool)

(assert (=> b!2967824 (= e!1867598 e!1867602)))

(declare-fun c!486803 () Bool)

(assert (=> b!2967824 (= c!486803 (isEmptyExpr!409 lt!1035654))))

(declare-fun b!2967825 () Bool)

(assert (=> b!2967825 (= e!1867603 (Star!9242 lt!1035656))))

(declare-fun b!2967826 () Bool)

(assert (=> b!2967826 (= e!1867604 e!1867601)))

(assert (=> b!2967826 (= c!486794 (is-Star!9242 (regTwo!18997 r!17423)))))

(declare-fun b!2967827 () Bool)

(assert (=> b!2967827 (= e!1867600 lt!1035653)))

(declare-fun b!2967828 () Bool)

(declare-fun c!486795 () Bool)

(assert (=> b!2967828 (= c!486795 call!197349)))

(assert (=> b!2967828 (= e!1867609 e!1867600)))

(declare-fun bm!197344 () Bool)

(assert (=> bm!197344 (= call!197345 call!197350)))

(declare-fun b!2967829 () Bool)

(assert (=> b!2967829 (= e!1867606 call!197345)))

(declare-fun bm!197345 () Bool)

(assert (=> bm!197345 (= call!197346 (isEmptyExpr!409 (ite c!486794 lt!1035656 lt!1035655)))))

(assert (= (and d!842477 c!486796) b!2967809))

(assert (= (and d!842477 (not c!486796)) b!2967812))

(assert (= (and b!2967812 c!486799) b!2967818))

(assert (= (and b!2967812 (not c!486799)) b!2967819))

(assert (= (and b!2967819 c!486801) b!2967816))

(assert (= (and b!2967819 (not c!486801)) b!2967826))

(assert (= (and b!2967826 c!486794) b!2967821))

(assert (= (and b!2967826 (not c!486794)) b!2967814))

(assert (= (and b!2967821 (not res!1224119)) b!2967813))

(assert (= (and b!2967821 c!486797) b!2967806))

(assert (= (and b!2967821 (not c!486797)) b!2967825))

(assert (= (and b!2967814 c!486793) b!2967808))

(assert (= (and b!2967814 (not c!486793)) b!2967820))

(assert (= (and b!2967808 c!486802) b!2967822))

(assert (= (and b!2967808 (not c!486802)) b!2967828))

(assert (= (and b!2967828 c!486795) b!2967827))

(assert (= (and b!2967828 (not c!486795)) b!2967817))

(assert (= (and b!2967820 (not res!1224120)) b!2967829))

(assert (= (and b!2967820 c!486800) b!2967810))

(assert (= (and b!2967820 (not c!486800)) b!2967807))

(assert (= (and b!2967807 c!486798) b!2967805))

(assert (= (and b!2967807 (not c!486798)) b!2967824))

(assert (= (and b!2967824 c!486803) b!2967811))

(assert (= (and b!2967824 (not c!486803)) b!2967815))

(assert (= (or b!2967808 b!2967820) bm!197339))

(assert (= (or b!2967808 b!2967820) bm!197342))

(assert (= (or b!2967828 b!2967820) bm!197340))

(assert (= (or b!2967808 b!2967829) bm!197344))

(assert (= (or b!2967813 b!2967807) bm!197345))

(assert (= (or b!2967821 bm!197339) bm!197341))

(assert (= (or b!2967821 bm!197344) bm!197343))

(assert (= (and d!842477 res!1224118) b!2967823))

(declare-fun m!3337181 () Bool)

(assert (=> b!2967824 m!3337181))

(declare-fun m!3337183 () Bool)

(assert (=> b!2967823 m!3337183))

(declare-fun m!3337185 () Bool)

(assert (=> b!2967823 m!3337185))

(declare-fun m!3337187 () Bool)

(assert (=> bm!197345 m!3337187))

(declare-fun m!3337189 () Bool)

(assert (=> bm!197342 m!3337189))

(declare-fun m!3337191 () Bool)

(assert (=> bm!197341 m!3337191))

(declare-fun m!3337193 () Bool)

(assert (=> bm!197343 m!3337193))

(declare-fun m!3337195 () Bool)

(assert (=> bm!197340 m!3337195))

(declare-fun m!3337197 () Bool)

(assert (=> d!842477 m!3337197))

(declare-fun m!3337199 () Bool)

(assert (=> d!842477 m!3337199))

(assert (=> b!2967332 d!842477))

(declare-fun b!2967830 () Bool)

(declare-fun e!1867612 () Regex!9242)

(declare-fun lt!1035660 () Regex!9242)

(assert (=> b!2967830 (= e!1867612 lt!1035660)))

(declare-fun b!2967831 () Bool)

(declare-fun e!1867617 () Regex!9242)

(assert (=> b!2967831 (= e!1867617 EmptyExpr!9242)))

(declare-fun b!2967832 () Bool)

(declare-fun c!486809 () Bool)

(declare-fun call!197353 () Bool)

(assert (=> b!2967832 (= c!486809 call!197353)))

(declare-fun e!1867624 () Regex!9242)

(assert (=> b!2967832 (= e!1867624 e!1867612)))

(declare-fun b!2967833 () Bool)

(declare-fun e!1867622 () Regex!9242)

(declare-fun e!1867623 () Regex!9242)

(assert (=> b!2967833 (= e!1867622 e!1867623)))

(declare-fun lt!1035659 () Regex!9242)

(declare-fun call!197355 () Regex!9242)

(assert (=> b!2967833 (= lt!1035659 call!197355)))

(declare-fun lt!1035663 () Regex!9242)

(declare-fun call!197354 () Regex!9242)

(assert (=> b!2967833 (= lt!1035663 call!197354)))

(declare-fun c!486813 () Bool)

(declare-fun call!197352 () Bool)

(assert (=> b!2967833 (= c!486813 call!197352)))

(declare-fun bm!197346 () Bool)

(declare-fun call!197351 () Regex!9242)

(assert (=> bm!197346 (= call!197355 call!197351)))

(declare-fun b!2967834 () Bool)

(declare-fun e!1867619 () Regex!9242)

(assert (=> b!2967834 (= e!1867619 EmptyLang!9242)))

(declare-fun d!842479 () Bool)

(declare-fun e!1867613 () Bool)

(assert (=> d!842479 e!1867613))

(declare-fun res!1224121 () Bool)

(assert (=> d!842479 (=> (not res!1224121) (not e!1867613))))

(declare-fun lt!1035664 () Regex!9242)

(assert (=> d!842479 (= res!1224121 (validRegex!3975 lt!1035664))))

(assert (=> d!842479 (= lt!1035664 e!1867619)))

(declare-fun c!486807 () Bool)

(assert (=> d!842479 (= c!486807 (is-EmptyLang!9242 (regOne!18997 r!17423)))))

(assert (=> d!842479 (validRegex!3975 (regOne!18997 r!17423))))

(assert (=> d!842479 (= (simplify!245 (regOne!18997 r!17423)) lt!1035664)))

(declare-fun b!2967835 () Bool)

(assert (=> b!2967835 (= e!1867624 EmptyLang!9242)))

(declare-fun b!2967836 () Bool)

(declare-fun e!1867616 () Regex!9242)

(declare-fun lt!1035661 () Regex!9242)

(assert (=> b!2967836 (= e!1867616 lt!1035661)))

(declare-fun b!2967837 () Bool)

(declare-fun e!1867625 () Regex!9242)

(assert (=> b!2967837 (= e!1867619 e!1867625)))

(declare-fun c!486810 () Bool)

(assert (=> b!2967837 (= c!486810 (is-ElementMatch!9242 (regOne!18997 r!17423)))))

(declare-fun call!197356 () Bool)

(declare-fun c!486804 () Bool)

(declare-fun bm!197347 () Bool)

(assert (=> bm!197347 (= call!197356 (isEmptyLang!358 (ite c!486804 lt!1035663 lt!1035661)))))

(declare-fun b!2967838 () Bool)

(declare-fun e!1867621 () Bool)

(assert (=> b!2967838 (= e!1867621 call!197353)))

(declare-fun b!2967839 () Bool)

(assert (=> b!2967839 (= c!486804 (is-Union!9242 (regOne!18997 r!17423)))))

(declare-fun e!1867615 () Regex!9242)

(assert (=> b!2967839 (= e!1867615 e!1867622)))

(declare-fun b!2967840 () Bool)

(assert (=> b!2967840 (= e!1867616 (Concat!14563 lt!1035661 lt!1035660))))

(declare-fun c!486805 () Bool)

(declare-fun bm!197348 () Bool)

(assert (=> bm!197348 (= call!197351 (simplify!245 (ite c!486805 (reg!9571 (regOne!18997 r!17423)) (ite c!486804 (regOne!18997 (regOne!18997 r!17423)) (regTwo!18996 (regOne!18997 r!17423))))))))

(declare-fun b!2967841 () Bool)

(declare-fun e!1867618 () Regex!9242)

(assert (=> b!2967841 (= e!1867618 EmptyExpr!9242)))

(declare-fun b!2967842 () Bool)

(declare-fun e!1867614 () Regex!9242)

(assert (=> b!2967842 (= e!1867614 (Union!9242 lt!1035659 lt!1035663))))

(declare-fun b!2967843 () Bool)

(assert (=> b!2967843 (= e!1867625 (regOne!18997 r!17423))))

(declare-fun b!2967844 () Bool)

(declare-fun c!486812 () Bool)

(assert (=> b!2967844 (= c!486812 (is-EmptyExpr!9242 (regOne!18997 r!17423)))))

(assert (=> b!2967844 (= e!1867625 e!1867618)))

(declare-fun b!2967845 () Bool)

(assert (=> b!2967845 (= e!1867622 e!1867624)))

(assert (=> b!2967845 (= lt!1035661 call!197354)))

(assert (=> b!2967845 (= lt!1035660 call!197355)))

(declare-fun res!1224123 () Bool)

(assert (=> b!2967845 (= res!1224123 call!197356)))

(declare-fun e!1867620 () Bool)

(assert (=> b!2967845 (=> res!1224123 e!1867620)))

(declare-fun c!486811 () Bool)

(assert (=> b!2967845 (= c!486811 e!1867620)))

(declare-fun b!2967846 () Bool)

(declare-fun c!486808 () Bool)

(assert (=> b!2967846 (= c!486808 e!1867621)))

(declare-fun res!1224122 () Bool)

(assert (=> b!2967846 (=> res!1224122 e!1867621)))

(declare-fun call!197357 () Bool)

(assert (=> b!2967846 (= res!1224122 call!197357)))

(declare-fun lt!1035662 () Regex!9242)

(assert (=> b!2967846 (= lt!1035662 call!197351)))

(assert (=> b!2967846 (= e!1867615 e!1867617)))

(declare-fun b!2967847 () Bool)

(assert (=> b!2967847 (= e!1867623 lt!1035663)))

(declare-fun bm!197349 () Bool)

(assert (=> bm!197349 (= call!197354 (simplify!245 (ite c!486804 (regTwo!18997 (regOne!18997 r!17423)) (regOne!18996 (regOne!18997 r!17423)))))))

(declare-fun bm!197350 () Bool)

(assert (=> bm!197350 (= call!197357 (isEmptyLang!358 (ite c!486805 lt!1035662 (ite c!486804 lt!1035659 lt!1035660))))))

(declare-fun b!2967848 () Bool)

(assert (=> b!2967848 (= e!1867613 (= (nullable!2951 lt!1035664) (nullable!2951 (regOne!18997 r!17423))))))

(declare-fun b!2967849 () Bool)

(assert (=> b!2967849 (= e!1867612 e!1867616)))

(declare-fun c!486814 () Bool)

(assert (=> b!2967849 (= c!486814 (isEmptyExpr!409 lt!1035660))))

(declare-fun b!2967850 () Bool)

(assert (=> b!2967850 (= e!1867617 (Star!9242 lt!1035662))))

(declare-fun b!2967851 () Bool)

(assert (=> b!2967851 (= e!1867618 e!1867615)))

(assert (=> b!2967851 (= c!486805 (is-Star!9242 (regOne!18997 r!17423)))))

(declare-fun b!2967852 () Bool)

(assert (=> b!2967852 (= e!1867614 lt!1035659)))

(declare-fun b!2967853 () Bool)

(declare-fun c!486806 () Bool)

(assert (=> b!2967853 (= c!486806 call!197356)))

(assert (=> b!2967853 (= e!1867623 e!1867614)))

(declare-fun bm!197351 () Bool)

(assert (=> bm!197351 (= call!197352 call!197357)))

(declare-fun b!2967854 () Bool)

(assert (=> b!2967854 (= e!1867620 call!197352)))

(declare-fun bm!197352 () Bool)

(assert (=> bm!197352 (= call!197353 (isEmptyExpr!409 (ite c!486805 lt!1035662 lt!1035661)))))

(assert (= (and d!842479 c!486807) b!2967834))

(assert (= (and d!842479 (not c!486807)) b!2967837))

(assert (= (and b!2967837 c!486810) b!2967843))

(assert (= (and b!2967837 (not c!486810)) b!2967844))

(assert (= (and b!2967844 c!486812) b!2967841))

(assert (= (and b!2967844 (not c!486812)) b!2967851))

(assert (= (and b!2967851 c!486805) b!2967846))

(assert (= (and b!2967851 (not c!486805)) b!2967839))

(assert (= (and b!2967846 (not res!1224122)) b!2967838))

(assert (= (and b!2967846 c!486808) b!2967831))

(assert (= (and b!2967846 (not c!486808)) b!2967850))

(assert (= (and b!2967839 c!486804) b!2967833))

(assert (= (and b!2967839 (not c!486804)) b!2967845))

(assert (= (and b!2967833 c!486813) b!2967847))

(assert (= (and b!2967833 (not c!486813)) b!2967853))

(assert (= (and b!2967853 c!486806) b!2967852))

(assert (= (and b!2967853 (not c!486806)) b!2967842))

(assert (= (and b!2967845 (not res!1224123)) b!2967854))

(assert (= (and b!2967845 c!486811) b!2967835))

(assert (= (and b!2967845 (not c!486811)) b!2967832))

(assert (= (and b!2967832 c!486809) b!2967830))

(assert (= (and b!2967832 (not c!486809)) b!2967849))

(assert (= (and b!2967849 c!486814) b!2967836))

(assert (= (and b!2967849 (not c!486814)) b!2967840))

(assert (= (or b!2967833 b!2967845) bm!197346))

(assert (= (or b!2967833 b!2967845) bm!197349))

(assert (= (or b!2967853 b!2967845) bm!197347))

(assert (= (or b!2967833 b!2967854) bm!197351))

(assert (= (or b!2967838 b!2967832) bm!197352))

(assert (= (or b!2967846 bm!197346) bm!197348))

(assert (= (or b!2967846 bm!197351) bm!197350))

(assert (= (and d!842479 res!1224121) b!2967848))

(declare-fun m!3337201 () Bool)

(assert (=> b!2967849 m!3337201))

(declare-fun m!3337203 () Bool)

(assert (=> b!2967848 m!3337203))

(declare-fun m!3337205 () Bool)

(assert (=> b!2967848 m!3337205))

(declare-fun m!3337207 () Bool)

(assert (=> bm!197352 m!3337207))

(declare-fun m!3337209 () Bool)

(assert (=> bm!197349 m!3337209))

(declare-fun m!3337211 () Bool)

(assert (=> bm!197348 m!3337211))

(declare-fun m!3337213 () Bool)

(assert (=> bm!197350 m!3337213))

(declare-fun m!3337215 () Bool)

(assert (=> bm!197347 m!3337215))

(declare-fun m!3337217 () Bool)

(assert (=> d!842479 m!3337217))

(declare-fun m!3337219 () Bool)

(assert (=> d!842479 m!3337219))

(assert (=> b!2967332 d!842479))

(declare-fun b!2967866 () Bool)

(declare-fun e!1867628 () Bool)

(declare-fun tp!946499 () Bool)

(declare-fun tp!946496 () Bool)

(assert (=> b!2967866 (= e!1867628 (and tp!946499 tp!946496))))

(assert (=> b!2967329 (= tp!946464 e!1867628)))

(declare-fun b!2967865 () Bool)

(assert (=> b!2967865 (= e!1867628 tp_is_empty!16047)))

(declare-fun b!2967868 () Bool)

(declare-fun tp!946497 () Bool)

(declare-fun tp!946498 () Bool)

(assert (=> b!2967868 (= e!1867628 (and tp!946497 tp!946498))))

(declare-fun b!2967867 () Bool)

(declare-fun tp!946500 () Bool)

(assert (=> b!2967867 (= e!1867628 tp!946500)))

(assert (= (and b!2967329 (is-ElementMatch!9242 (reg!9571 r!17423))) b!2967865))

(assert (= (and b!2967329 (is-Concat!14563 (reg!9571 r!17423))) b!2967866))

(assert (= (and b!2967329 (is-Star!9242 (reg!9571 r!17423))) b!2967867))

(assert (= (and b!2967329 (is-Union!9242 (reg!9571 r!17423))) b!2967868))

(declare-fun b!2967870 () Bool)

(declare-fun e!1867629 () Bool)

(declare-fun tp!946504 () Bool)

(declare-fun tp!946501 () Bool)

(assert (=> b!2967870 (= e!1867629 (and tp!946504 tp!946501))))

(assert (=> b!2967331 (= tp!946467 e!1867629)))

(declare-fun b!2967869 () Bool)

(assert (=> b!2967869 (= e!1867629 tp_is_empty!16047)))

(declare-fun b!2967872 () Bool)

(declare-fun tp!946502 () Bool)

(declare-fun tp!946503 () Bool)

(assert (=> b!2967872 (= e!1867629 (and tp!946502 tp!946503))))

(declare-fun b!2967871 () Bool)

(declare-fun tp!946505 () Bool)

(assert (=> b!2967871 (= e!1867629 tp!946505)))

(assert (= (and b!2967331 (is-ElementMatch!9242 (regOne!18997 r!17423))) b!2967869))

(assert (= (and b!2967331 (is-Concat!14563 (regOne!18997 r!17423))) b!2967870))

(assert (= (and b!2967331 (is-Star!9242 (regOne!18997 r!17423))) b!2967871))

(assert (= (and b!2967331 (is-Union!9242 (regOne!18997 r!17423))) b!2967872))

(declare-fun b!2967874 () Bool)

(declare-fun e!1867630 () Bool)

(declare-fun tp!946509 () Bool)

(declare-fun tp!946506 () Bool)

(assert (=> b!2967874 (= e!1867630 (and tp!946509 tp!946506))))

(assert (=> b!2967331 (= tp!946463 e!1867630)))

(declare-fun b!2967873 () Bool)

(assert (=> b!2967873 (= e!1867630 tp_is_empty!16047)))

(declare-fun b!2967876 () Bool)

(declare-fun tp!946507 () Bool)

(declare-fun tp!946508 () Bool)

(assert (=> b!2967876 (= e!1867630 (and tp!946507 tp!946508))))

(declare-fun b!2967875 () Bool)

(declare-fun tp!946510 () Bool)

(assert (=> b!2967875 (= e!1867630 tp!946510)))

(assert (= (and b!2967331 (is-ElementMatch!9242 (regTwo!18997 r!17423))) b!2967873))

(assert (= (and b!2967331 (is-Concat!14563 (regTwo!18997 r!17423))) b!2967874))

(assert (= (and b!2967331 (is-Star!9242 (regTwo!18997 r!17423))) b!2967875))

(assert (= (and b!2967331 (is-Union!9242 (regTwo!18997 r!17423))) b!2967876))

(declare-fun b!2967878 () Bool)

(declare-fun e!1867631 () Bool)

(declare-fun tp!946514 () Bool)

(declare-fun tp!946511 () Bool)

(assert (=> b!2967878 (= e!1867631 (and tp!946514 tp!946511))))

(assert (=> b!2967326 (= tp!946465 e!1867631)))

(declare-fun b!2967877 () Bool)

(assert (=> b!2967877 (= e!1867631 tp_is_empty!16047)))

(declare-fun b!2967880 () Bool)

(declare-fun tp!946512 () Bool)

(declare-fun tp!946513 () Bool)

(assert (=> b!2967880 (= e!1867631 (and tp!946512 tp!946513))))

(declare-fun b!2967879 () Bool)

(declare-fun tp!946515 () Bool)

(assert (=> b!2967879 (= e!1867631 tp!946515)))

(assert (= (and b!2967326 (is-ElementMatch!9242 (regOne!18996 r!17423))) b!2967877))

(assert (= (and b!2967326 (is-Concat!14563 (regOne!18996 r!17423))) b!2967878))

(assert (= (and b!2967326 (is-Star!9242 (regOne!18996 r!17423))) b!2967879))

(assert (= (and b!2967326 (is-Union!9242 (regOne!18996 r!17423))) b!2967880))

(declare-fun b!2967882 () Bool)

(declare-fun e!1867632 () Bool)

(declare-fun tp!946519 () Bool)

(declare-fun tp!946516 () Bool)

(assert (=> b!2967882 (= e!1867632 (and tp!946519 tp!946516))))

(assert (=> b!2967326 (= tp!946462 e!1867632)))

(declare-fun b!2967881 () Bool)

(assert (=> b!2967881 (= e!1867632 tp_is_empty!16047)))

(declare-fun b!2967884 () Bool)

(declare-fun tp!946517 () Bool)

(declare-fun tp!946518 () Bool)

(assert (=> b!2967884 (= e!1867632 (and tp!946517 tp!946518))))

(declare-fun b!2967883 () Bool)

(declare-fun tp!946520 () Bool)

(assert (=> b!2967883 (= e!1867632 tp!946520)))

(assert (= (and b!2967326 (is-ElementMatch!9242 (regTwo!18996 r!17423))) b!2967881))

(assert (= (and b!2967326 (is-Concat!14563 (regTwo!18996 r!17423))) b!2967882))

(assert (= (and b!2967326 (is-Star!9242 (regTwo!18996 r!17423))) b!2967883))

(assert (= (and b!2967326 (is-Union!9242 (regTwo!18996 r!17423))) b!2967884))

(declare-fun b!2967889 () Bool)

(declare-fun e!1867635 () Bool)

(declare-fun tp!946523 () Bool)

(assert (=> b!2967889 (= e!1867635 (and tp_is_empty!16047 tp!946523))))

(assert (=> b!2967330 (= tp!946466 e!1867635)))

(assert (= (and b!2967330 (is-Cons!34983 (t!234172 s!11993))) b!2967889))

(push 1)

(assert (not b!2967868))

(assert (not bm!197345))

(assert (not d!842477))

(assert (not b!2967848))

(assert (not bm!197268))

(assert (not b!2967493))

(assert (not b!2967800))

(assert (not b!2967490))

(assert (not bm!197310))

(assert (not bm!197254))

(assert (not bm!197340))

(assert (not b!2967641))

(assert (not b!2967793))

(assert (not b!2967884))

(assert (not b!2967875))

(assert (not d!842479))

(assert (not d!842445))

(assert (not b!2967796))

(assert (not b!2967878))

(assert (not b!2967798))

(assert (not b!2967889))

(assert (not bm!197342))

(assert (not d!842473))

(assert (not bm!197352))

(assert (not bm!197343))

(assert (not b!2967640))

(assert (not b!2967880))

(assert (not b!2967867))

(assert (not b!2967418))

(assert (not b!2967871))

(assert (not bm!197253))

(assert (not b!2967866))

(assert (not b!2967485))

(assert (not bm!197347))

(assert (not b!2967795))

(assert (not bm!197341))

(assert (not b!2967785))

(assert (not b!2967882))

(assert (not b!2967872))

(assert (not bm!197307))

(assert (not b!2967803))

(assert (not bm!197308))

(assert (not b!2967823))

(assert (not bm!197338))

(assert (not bm!197348))

(assert (not b!2967483))

(assert tp_is_empty!16047)

(assert (not bm!197336))

(assert (not bm!197350))

(assert (not d!842451))

(assert (not b!2967883))

(assert (not bm!197349))

(assert (not bm!197306))

(assert (not b!2967849))

(assert (not bm!197266))

(assert (not b!2967501))

(assert (not bm!197305))

(assert (not bm!197337))

(assert (not b!2967486))

(assert (not b!2967488))

(assert (not b!2967876))

(assert (not bm!197269))

(assert (not b!2967824))

(assert (not b!2967879))

(assert (not d!842471))

(assert (not b!2967874))

(assert (not b!2967870))

(assert (not b!2967777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

