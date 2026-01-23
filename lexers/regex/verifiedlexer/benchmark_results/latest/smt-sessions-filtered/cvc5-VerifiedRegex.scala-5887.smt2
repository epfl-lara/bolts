; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288378 () Bool)

(assert start!288378)

(declare-fun b!2985480 () Bool)

(assert (=> b!2985480 true))

(assert (=> b!2985480 true))

(declare-fun lambda!111414 () Int)

(declare-fun lambda!111413 () Int)

(assert (=> b!2985480 (not (= lambda!111414 lambda!111413))))

(assert (=> b!2985480 true))

(assert (=> b!2985480 true))

(declare-fun res!1231170 () Bool)

(declare-fun e!1877260 () Bool)

(assert (=> start!288378 (=> (not res!1231170) (not e!1877260))))

(declare-datatypes ((C!18834 0))(
  ( (C!18835 (val!11453 Int)) )
))
(declare-datatypes ((Regex!9324 0))(
  ( (ElementMatch!9324 (c!490574 C!18834)) (Concat!14645 (regOne!19160 Regex!9324) (regTwo!19160 Regex!9324)) (EmptyExpr!9324) (Star!9324 (reg!9653 Regex!9324)) (EmptyLang!9324) (Union!9324 (regOne!19161 Regex!9324) (regTwo!19161 Regex!9324)) )
))
(declare-fun r!17423 () Regex!9324)

(declare-fun validRegex!4057 (Regex!9324) Bool)

(assert (=> start!288378 (= res!1231170 (validRegex!4057 r!17423))))

(assert (=> start!288378 e!1877260))

(declare-fun e!1877263 () Bool)

(assert (=> start!288378 e!1877263))

(declare-fun e!1877262 () Bool)

(assert (=> start!288378 e!1877262))

(declare-fun b!2985478 () Bool)

(declare-fun tp!949839 () Bool)

(assert (=> b!2985478 (= e!1877263 tp!949839)))

(declare-fun b!2985479 () Bool)

(declare-fun res!1231169 () Bool)

(declare-fun e!1877261 () Bool)

(assert (=> b!2985479 (=> res!1231169 e!1877261)))

(declare-datatypes ((List!35189 0))(
  ( (Nil!35065) (Cons!35065 (h!40485 C!18834) (t!234254 List!35189)) )
))
(declare-fun s!11993 () List!35189)

(declare-fun isEmpty!19325 (List!35189) Bool)

(assert (=> b!2985479 (= res!1231169 (isEmpty!19325 s!11993))))

(declare-datatypes ((tuple2!33974 0))(
  ( (tuple2!33975 (_1!20119 List!35189) (_2!20119 List!35189)) )
))
(declare-datatypes ((Option!6719 0))(
  ( (None!6718) (Some!6718 (v!34852 tuple2!33974)) )
))
(declare-fun lt!1039268 () Option!6719)

(declare-fun matchR!4206 (Regex!9324 List!35189) Bool)

(declare-fun get!10849 (Option!6719) tuple2!33974)

(assert (=> b!2985480 (= e!1877261 (matchR!4206 (regOne!19160 r!17423) (_1!20119 (get!10849 lt!1039268))))))

(declare-fun Exists!1601 (Int) Bool)

(assert (=> b!2985480 (= (Exists!1601 lambda!111413) (Exists!1601 lambda!111414))))

(declare-datatypes ((Unit!49051 0))(
  ( (Unit!49052) )
))
(declare-fun lt!1039269 () Unit!49051)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!537 (Regex!9324 Regex!9324 List!35189) Unit!49051)

(assert (=> b!2985480 (= lt!1039269 (lemmaExistCutMatchRandMatchRSpecEquivalent!537 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993))))

(declare-fun isDefined!5270 (Option!6719) Bool)

(assert (=> b!2985480 (= (isDefined!5270 lt!1039268) (Exists!1601 lambda!111413))))

(declare-fun findConcatSeparation!1113 (Regex!9324 Regex!9324 List!35189 List!35189 List!35189) Option!6719)

(assert (=> b!2985480 (= lt!1039268 (findConcatSeparation!1113 (regOne!19160 r!17423) (regTwo!19160 r!17423) Nil!35065 s!11993 s!11993))))

(declare-fun lt!1039267 () Unit!49051)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!891 (Regex!9324 Regex!9324 List!35189) Unit!49051)

(assert (=> b!2985480 (= lt!1039267 (lemmaFindConcatSeparationEquivalentToExists!891 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993))))

(declare-fun b!2985481 () Bool)

(declare-fun tp!949838 () Bool)

(declare-fun tp!949840 () Bool)

(assert (=> b!2985481 (= e!1877263 (and tp!949838 tp!949840))))

(declare-fun b!2985482 () Bool)

(declare-fun tp!949841 () Bool)

(declare-fun tp!949842 () Bool)

(assert (=> b!2985482 (= e!1877263 (and tp!949841 tp!949842))))

(declare-fun b!2985483 () Bool)

(declare-fun tp_is_empty!16211 () Bool)

(assert (=> b!2985483 (= e!1877263 tp_is_empty!16211)))

(declare-fun b!2985484 () Bool)

(declare-fun tp!949843 () Bool)

(assert (=> b!2985484 (= e!1877262 (and tp_is_empty!16211 tp!949843))))

(declare-fun b!2985485 () Bool)

(assert (=> b!2985485 (= e!1877260 (not e!1877261))))

(declare-fun res!1231171 () Bool)

(assert (=> b!2985485 (=> res!1231171 e!1877261)))

(declare-fun lt!1039266 () Bool)

(assert (=> b!2985485 (= res!1231171 (or (not lt!1039266) (not (is-Concat!14645 r!17423))))))

(declare-fun matchRSpec!1461 (Regex!9324 List!35189) Bool)

(assert (=> b!2985485 (= lt!1039266 (matchRSpec!1461 r!17423 s!11993))))

(assert (=> b!2985485 (= lt!1039266 (matchR!4206 r!17423 s!11993))))

(declare-fun lt!1039265 () Unit!49051)

(declare-fun mainMatchTheorem!1461 (Regex!9324 List!35189) Unit!49051)

(assert (=> b!2985485 (= lt!1039265 (mainMatchTheorem!1461 r!17423 s!11993))))

(assert (= (and start!288378 res!1231170) b!2985485))

(assert (= (and b!2985485 (not res!1231171)) b!2985479))

(assert (= (and b!2985479 (not res!1231169)) b!2985480))

(assert (= (and start!288378 (is-ElementMatch!9324 r!17423)) b!2985483))

(assert (= (and start!288378 (is-Concat!14645 r!17423)) b!2985481))

(assert (= (and start!288378 (is-Star!9324 r!17423)) b!2985478))

(assert (= (and start!288378 (is-Union!9324 r!17423)) b!2985482))

(assert (= (and start!288378 (is-Cons!35065 s!11993)) b!2985484))

(declare-fun m!3344493 () Bool)

(assert (=> start!288378 m!3344493))

(declare-fun m!3344495 () Bool)

(assert (=> b!2985479 m!3344495))

(declare-fun m!3344497 () Bool)

(assert (=> b!2985480 m!3344497))

(declare-fun m!3344499 () Bool)

(assert (=> b!2985480 m!3344499))

(declare-fun m!3344501 () Bool)

(assert (=> b!2985480 m!3344501))

(declare-fun m!3344503 () Bool)

(assert (=> b!2985480 m!3344503))

(declare-fun m!3344505 () Bool)

(assert (=> b!2985480 m!3344505))

(assert (=> b!2985480 m!3344503))

(declare-fun m!3344507 () Bool)

(assert (=> b!2985480 m!3344507))

(declare-fun m!3344509 () Bool)

(assert (=> b!2985480 m!3344509))

(declare-fun m!3344511 () Bool)

(assert (=> b!2985480 m!3344511))

(declare-fun m!3344513 () Bool)

(assert (=> b!2985485 m!3344513))

(declare-fun m!3344515 () Bool)

(assert (=> b!2985485 m!3344515))

(declare-fun m!3344517 () Bool)

(assert (=> b!2985485 m!3344517))

(push 1)

(assert (not b!2985481))

(assert (not b!2985480))

(assert (not start!288378))

(assert (not b!2985482))

(assert (not b!2985479))

(assert (not b!2985484))

(assert tp_is_empty!16211)

(assert (not b!2985478))

(assert (not b!2985485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!199594 () Bool)

(declare-fun call!199600 () Bool)

(declare-fun call!199599 () Bool)

(assert (=> bm!199594 (= call!199600 call!199599)))

(declare-fun b!2985548 () Bool)

(declare-fun e!1877296 () Bool)

(declare-fun e!1877298 () Bool)

(assert (=> b!2985548 (= e!1877296 e!1877298)))

(declare-fun res!1231203 () Bool)

(assert (=> b!2985548 (=> (not res!1231203) (not e!1877298))))

(declare-fun call!199601 () Bool)

(assert (=> b!2985548 (= res!1231203 call!199601)))

(declare-fun d!844010 () Bool)

(declare-fun res!1231206 () Bool)

(declare-fun e!1877297 () Bool)

(assert (=> d!844010 (=> res!1231206 e!1877297)))

(assert (=> d!844010 (= res!1231206 (is-ElementMatch!9324 r!17423))))

(assert (=> d!844010 (= (validRegex!4057 r!17423) e!1877297)))

(declare-fun b!2985549 () Bool)

(declare-fun e!1877301 () Bool)

(declare-fun e!1877299 () Bool)

(assert (=> b!2985549 (= e!1877301 e!1877299)))

(declare-fun c!490581 () Bool)

(assert (=> b!2985549 (= c!490581 (is-Union!9324 r!17423))))

(declare-fun bm!199595 () Bool)

(declare-fun c!490580 () Bool)

(assert (=> bm!199595 (= call!199599 (validRegex!4057 (ite c!490580 (reg!9653 r!17423) (ite c!490581 (regOne!19161 r!17423) (regTwo!19160 r!17423)))))))

(declare-fun b!2985550 () Bool)

(declare-fun e!1877300 () Bool)

(assert (=> b!2985550 (= e!1877300 call!199599)))

(declare-fun bm!199596 () Bool)

(assert (=> bm!199596 (= call!199601 (validRegex!4057 (ite c!490581 (regTwo!19161 r!17423) (regOne!19160 r!17423))))))

(declare-fun b!2985551 () Bool)

(assert (=> b!2985551 (= e!1877298 call!199600)))

(declare-fun b!2985552 () Bool)

(declare-fun res!1231204 () Bool)

(assert (=> b!2985552 (=> res!1231204 e!1877296)))

(assert (=> b!2985552 (= res!1231204 (not (is-Concat!14645 r!17423)))))

(assert (=> b!2985552 (= e!1877299 e!1877296)))

(declare-fun b!2985553 () Bool)

(assert (=> b!2985553 (= e!1877301 e!1877300)))

(declare-fun res!1231205 () Bool)

(declare-fun nullable!3001 (Regex!9324) Bool)

(assert (=> b!2985553 (= res!1231205 (not (nullable!3001 (reg!9653 r!17423))))))

(assert (=> b!2985553 (=> (not res!1231205) (not e!1877300))))

(declare-fun b!2985554 () Bool)

(declare-fun e!1877302 () Bool)

(assert (=> b!2985554 (= e!1877302 call!199601)))

(declare-fun b!2985555 () Bool)

(assert (=> b!2985555 (= e!1877297 e!1877301)))

(assert (=> b!2985555 (= c!490580 (is-Star!9324 r!17423))))

(declare-fun b!2985556 () Bool)

(declare-fun res!1231207 () Bool)

(assert (=> b!2985556 (=> (not res!1231207) (not e!1877302))))

(assert (=> b!2985556 (= res!1231207 call!199600)))

(assert (=> b!2985556 (= e!1877299 e!1877302)))

(assert (= (and d!844010 (not res!1231206)) b!2985555))

(assert (= (and b!2985555 c!490580) b!2985553))

(assert (= (and b!2985555 (not c!490580)) b!2985549))

(assert (= (and b!2985553 res!1231205) b!2985550))

(assert (= (and b!2985549 c!490581) b!2985556))

(assert (= (and b!2985549 (not c!490581)) b!2985552))

(assert (= (and b!2985556 res!1231207) b!2985554))

(assert (= (and b!2985552 (not res!1231204)) b!2985548))

(assert (= (and b!2985548 res!1231203) b!2985551))

(assert (= (or b!2985556 b!2985551) bm!199594))

(assert (= (or b!2985554 b!2985548) bm!199596))

(assert (= (or b!2985550 bm!199594) bm!199595))

(declare-fun m!3344545 () Bool)

(assert (=> bm!199595 m!3344545))

(declare-fun m!3344547 () Bool)

(assert (=> bm!199596 m!3344547))

(declare-fun m!3344549 () Bool)

(assert (=> b!2985553 m!3344549))

(assert (=> start!288378 d!844010))

(declare-fun d!844012 () Bool)

(assert (=> d!844012 (= (isEmpty!19325 s!11993) (is-Nil!35065 s!11993))))

(assert (=> b!2985479 d!844012))

(declare-fun bs!527370 () Bool)

(declare-fun d!844014 () Bool)

(assert (= bs!527370 (and d!844014 b!2985480)))

(declare-fun lambda!111427 () Int)

(assert (=> bs!527370 (= lambda!111427 lambda!111413)))

(assert (=> bs!527370 (not (= lambda!111427 lambda!111414))))

(assert (=> d!844014 true))

(assert (=> d!844014 true))

(assert (=> d!844014 true))

(declare-fun lambda!111428 () Int)

(assert (=> bs!527370 (not (= lambda!111428 lambda!111413))))

(assert (=> bs!527370 (= lambda!111428 lambda!111414)))

(declare-fun bs!527371 () Bool)

(assert (= bs!527371 d!844014))

(assert (=> bs!527371 (not (= lambda!111428 lambda!111427))))

(assert (=> d!844014 true))

(assert (=> d!844014 true))

(assert (=> d!844014 true))

(assert (=> d!844014 (= (Exists!1601 lambda!111427) (Exists!1601 lambda!111428))))

(declare-fun lt!1039287 () Unit!49051)

(declare-fun choose!17690 (Regex!9324 Regex!9324 List!35189) Unit!49051)

(assert (=> d!844014 (= lt!1039287 (choose!17690 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993))))

(assert (=> d!844014 (validRegex!4057 (regOne!19160 r!17423))))

(assert (=> d!844014 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!537 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993) lt!1039287)))

(declare-fun m!3344551 () Bool)

(assert (=> bs!527371 m!3344551))

(declare-fun m!3344553 () Bool)

(assert (=> bs!527371 m!3344553))

(declare-fun m!3344555 () Bool)

(assert (=> bs!527371 m!3344555))

(declare-fun m!3344557 () Bool)

(assert (=> bs!527371 m!3344557))

(assert (=> b!2985480 d!844014))

(declare-fun d!844018 () Bool)

(declare-fun isEmpty!19327 (Option!6719) Bool)

(assert (=> d!844018 (= (isDefined!5270 lt!1039268) (not (isEmpty!19327 lt!1039268)))))

(declare-fun bs!527372 () Bool)

(assert (= bs!527372 d!844018))

(declare-fun m!3344559 () Bool)

(assert (=> bs!527372 m!3344559))

(assert (=> b!2985480 d!844018))

(declare-fun d!844020 () Bool)

(declare-fun choose!17691 (Int) Bool)

(assert (=> d!844020 (= (Exists!1601 lambda!111413) (choose!17691 lambda!111413))))

(declare-fun bs!527373 () Bool)

(assert (= bs!527373 d!844020))

(declare-fun m!3344561 () Bool)

(assert (=> bs!527373 m!3344561))

(assert (=> b!2985480 d!844020))

(declare-fun b!2985620 () Bool)

(declare-fun res!1231247 () Bool)

(declare-fun e!1877343 () Bool)

(assert (=> b!2985620 (=> res!1231247 e!1877343)))

(declare-fun tail!4885 (List!35189) List!35189)

(assert (=> b!2985620 (= res!1231247 (not (isEmpty!19325 (tail!4885 (_1!20119 (get!10849 lt!1039268))))))))

(declare-fun b!2985621 () Bool)

(declare-fun e!1877346 () Bool)

(declare-fun head!6659 (List!35189) C!18834)

(assert (=> b!2985621 (= e!1877346 (= (head!6659 (_1!20119 (get!10849 lt!1039268))) (c!490574 (regOne!19160 r!17423))))))

(declare-fun b!2985622 () Bool)

(declare-fun res!1231251 () Bool)

(assert (=> b!2985622 (=> (not res!1231251) (not e!1877346))))

(assert (=> b!2985622 (= res!1231251 (isEmpty!19325 (tail!4885 (_1!20119 (get!10849 lt!1039268)))))))

(declare-fun b!2985623 () Bool)

(declare-fun e!1877344 () Bool)

(assert (=> b!2985623 (= e!1877344 (nullable!3001 (regOne!19160 r!17423)))))

(declare-fun b!2985624 () Bool)

(declare-fun e!1877345 () Bool)

(declare-fun e!1877348 () Bool)

(assert (=> b!2985624 (= e!1877345 e!1877348)))

(declare-fun c!490596 () Bool)

(assert (=> b!2985624 (= c!490596 (is-EmptyLang!9324 (regOne!19160 r!17423)))))

(declare-fun b!2985625 () Bool)

(declare-fun lt!1039290 () Bool)

(declare-fun call!199613 () Bool)

(assert (=> b!2985625 (= e!1877345 (= lt!1039290 call!199613))))

(declare-fun bm!199608 () Bool)

(assert (=> bm!199608 (= call!199613 (isEmpty!19325 (_1!20119 (get!10849 lt!1039268))))))

(declare-fun d!844022 () Bool)

(assert (=> d!844022 e!1877345))

(declare-fun c!490594 () Bool)

(assert (=> d!844022 (= c!490594 (is-EmptyExpr!9324 (regOne!19160 r!17423)))))

(assert (=> d!844022 (= lt!1039290 e!1877344)))

(declare-fun c!490595 () Bool)

(assert (=> d!844022 (= c!490595 (isEmpty!19325 (_1!20119 (get!10849 lt!1039268))))))

(assert (=> d!844022 (validRegex!4057 (regOne!19160 r!17423))))

(assert (=> d!844022 (= (matchR!4206 (regOne!19160 r!17423) (_1!20119 (get!10849 lt!1039268))) lt!1039290)))

(declare-fun b!2985626 () Bool)

(declare-fun res!1231250 () Bool)

(declare-fun e!1877342 () Bool)

(assert (=> b!2985626 (=> res!1231250 e!1877342)))

(assert (=> b!2985626 (= res!1231250 e!1877346)))

(declare-fun res!1231254 () Bool)

(assert (=> b!2985626 (=> (not res!1231254) (not e!1877346))))

(assert (=> b!2985626 (= res!1231254 lt!1039290)))

(declare-fun b!2985627 () Bool)

(declare-fun e!1877347 () Bool)

(assert (=> b!2985627 (= e!1877347 e!1877343)))

(declare-fun res!1231249 () Bool)

(assert (=> b!2985627 (=> res!1231249 e!1877343)))

(assert (=> b!2985627 (= res!1231249 call!199613)))

(declare-fun b!2985628 () Bool)

(declare-fun derivativeStep!2600 (Regex!9324 C!18834) Regex!9324)

(assert (=> b!2985628 (= e!1877344 (matchR!4206 (derivativeStep!2600 (regOne!19160 r!17423) (head!6659 (_1!20119 (get!10849 lt!1039268)))) (tail!4885 (_1!20119 (get!10849 lt!1039268)))))))

(declare-fun b!2985629 () Bool)

(assert (=> b!2985629 (= e!1877348 (not lt!1039290))))

(declare-fun b!2985630 () Bool)

(assert (=> b!2985630 (= e!1877342 e!1877347)))

(declare-fun res!1231252 () Bool)

(assert (=> b!2985630 (=> (not res!1231252) (not e!1877347))))

(assert (=> b!2985630 (= res!1231252 (not lt!1039290))))

(declare-fun b!2985631 () Bool)

(declare-fun res!1231253 () Bool)

(assert (=> b!2985631 (=> res!1231253 e!1877342)))

(assert (=> b!2985631 (= res!1231253 (not (is-ElementMatch!9324 (regOne!19160 r!17423))))))

(assert (=> b!2985631 (= e!1877348 e!1877342)))

(declare-fun b!2985632 () Bool)

(assert (=> b!2985632 (= e!1877343 (not (= (head!6659 (_1!20119 (get!10849 lt!1039268))) (c!490574 (regOne!19160 r!17423)))))))

(declare-fun b!2985633 () Bool)

(declare-fun res!1231248 () Bool)

(assert (=> b!2985633 (=> (not res!1231248) (not e!1877346))))

(assert (=> b!2985633 (= res!1231248 (not call!199613))))

(assert (= (and d!844022 c!490595) b!2985623))

(assert (= (and d!844022 (not c!490595)) b!2985628))

(assert (= (and d!844022 c!490594) b!2985625))

(assert (= (and d!844022 (not c!490594)) b!2985624))

(assert (= (and b!2985624 c!490596) b!2985629))

(assert (= (and b!2985624 (not c!490596)) b!2985631))

(assert (= (and b!2985631 (not res!1231253)) b!2985626))

(assert (= (and b!2985626 res!1231254) b!2985633))

(assert (= (and b!2985633 res!1231248) b!2985622))

(assert (= (and b!2985622 res!1231251) b!2985621))

(assert (= (and b!2985626 (not res!1231250)) b!2985630))

(assert (= (and b!2985630 res!1231252) b!2985627))

(assert (= (and b!2985627 (not res!1231249)) b!2985620))

(assert (= (and b!2985620 (not res!1231247)) b!2985632))

(assert (= (or b!2985625 b!2985627 b!2985633) bm!199608))

(declare-fun m!3344569 () Bool)

(assert (=> d!844022 m!3344569))

(assert (=> d!844022 m!3344557))

(declare-fun m!3344571 () Bool)

(assert (=> b!2985623 m!3344571))

(declare-fun m!3344573 () Bool)

(assert (=> b!2985628 m!3344573))

(assert (=> b!2985628 m!3344573))

(declare-fun m!3344575 () Bool)

(assert (=> b!2985628 m!3344575))

(declare-fun m!3344577 () Bool)

(assert (=> b!2985628 m!3344577))

(assert (=> b!2985628 m!3344575))

(assert (=> b!2985628 m!3344577))

(declare-fun m!3344579 () Bool)

(assert (=> b!2985628 m!3344579))

(assert (=> b!2985620 m!3344577))

(assert (=> b!2985620 m!3344577))

(declare-fun m!3344581 () Bool)

(assert (=> b!2985620 m!3344581))

(assert (=> b!2985632 m!3344573))

(assert (=> bm!199608 m!3344569))

(assert (=> b!2985622 m!3344577))

(assert (=> b!2985622 m!3344577))

(assert (=> b!2985622 m!3344581))

(assert (=> b!2985621 m!3344573))

(assert (=> b!2985480 d!844022))

(declare-fun b!2985684 () Bool)

(declare-fun e!1877379 () Bool)

(declare-fun lt!1039297 () Option!6719)

(assert (=> b!2985684 (= e!1877379 (not (isDefined!5270 lt!1039297)))))

(declare-fun d!844026 () Bool)

(assert (=> d!844026 e!1877379))

(declare-fun res!1231282 () Bool)

(assert (=> d!844026 (=> res!1231282 e!1877379)))

(declare-fun e!1877381 () Bool)

(assert (=> d!844026 (= res!1231282 e!1877381)))

(declare-fun res!1231285 () Bool)

(assert (=> d!844026 (=> (not res!1231285) (not e!1877381))))

(assert (=> d!844026 (= res!1231285 (isDefined!5270 lt!1039297))))

(declare-fun e!1877377 () Option!6719)

(assert (=> d!844026 (= lt!1039297 e!1877377)))

(declare-fun c!490610 () Bool)

(declare-fun e!1877378 () Bool)

(assert (=> d!844026 (= c!490610 e!1877378)))

(declare-fun res!1231281 () Bool)

(assert (=> d!844026 (=> (not res!1231281) (not e!1877378))))

(assert (=> d!844026 (= res!1231281 (matchR!4206 (regOne!19160 r!17423) Nil!35065))))

(assert (=> d!844026 (validRegex!4057 (regOne!19160 r!17423))))

(assert (=> d!844026 (= (findConcatSeparation!1113 (regOne!19160 r!17423) (regTwo!19160 r!17423) Nil!35065 s!11993 s!11993) lt!1039297)))

(declare-fun b!2985685 () Bool)

(declare-fun lt!1039298 () Unit!49051)

(declare-fun lt!1039299 () Unit!49051)

(assert (=> b!2985685 (= lt!1039298 lt!1039299)))

(declare-fun ++!8376 (List!35189 List!35189) List!35189)

(assert (=> b!2985685 (= (++!8376 (++!8376 Nil!35065 (Cons!35065 (h!40485 s!11993) Nil!35065)) (t!234254 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!991 (List!35189 C!18834 List!35189 List!35189) Unit!49051)

(assert (=> b!2985685 (= lt!1039299 (lemmaMoveElementToOtherListKeepsConcatEq!991 Nil!35065 (h!40485 s!11993) (t!234254 s!11993) s!11993))))

(declare-fun e!1877380 () Option!6719)

(assert (=> b!2985685 (= e!1877380 (findConcatSeparation!1113 (regOne!19160 r!17423) (regTwo!19160 r!17423) (++!8376 Nil!35065 (Cons!35065 (h!40485 s!11993) Nil!35065)) (t!234254 s!11993) s!11993))))

(declare-fun b!2985686 () Bool)

(assert (=> b!2985686 (= e!1877377 (Some!6718 (tuple2!33975 Nil!35065 s!11993)))))

(declare-fun b!2985687 () Bool)

(declare-fun res!1231284 () Bool)

(assert (=> b!2985687 (=> (not res!1231284) (not e!1877381))))

(assert (=> b!2985687 (= res!1231284 (matchR!4206 (regOne!19160 r!17423) (_1!20119 (get!10849 lt!1039297))))))

(declare-fun b!2985688 () Bool)

(assert (=> b!2985688 (= e!1877381 (= (++!8376 (_1!20119 (get!10849 lt!1039297)) (_2!20119 (get!10849 lt!1039297))) s!11993))))

(declare-fun b!2985689 () Bool)

(assert (=> b!2985689 (= e!1877378 (matchR!4206 (regTwo!19160 r!17423) s!11993))))

(declare-fun b!2985690 () Bool)

(declare-fun res!1231283 () Bool)

(assert (=> b!2985690 (=> (not res!1231283) (not e!1877381))))

(assert (=> b!2985690 (= res!1231283 (matchR!4206 (regTwo!19160 r!17423) (_2!20119 (get!10849 lt!1039297))))))

(declare-fun b!2985691 () Bool)

(assert (=> b!2985691 (= e!1877377 e!1877380)))

(declare-fun c!490609 () Bool)

(assert (=> b!2985691 (= c!490609 (is-Nil!35065 s!11993))))

(declare-fun b!2985692 () Bool)

(assert (=> b!2985692 (= e!1877380 None!6718)))

(assert (= (and d!844026 res!1231281) b!2985689))

(assert (= (and d!844026 c!490610) b!2985686))

(assert (= (and d!844026 (not c!490610)) b!2985691))

(assert (= (and b!2985691 c!490609) b!2985692))

(assert (= (and b!2985691 (not c!490609)) b!2985685))

(assert (= (and d!844026 res!1231285) b!2985687))

(assert (= (and b!2985687 res!1231284) b!2985690))

(assert (= (and b!2985690 res!1231283) b!2985688))

(assert (= (and d!844026 (not res!1231282)) b!2985684))

(declare-fun m!3344583 () Bool)

(assert (=> b!2985690 m!3344583))

(declare-fun m!3344585 () Bool)

(assert (=> b!2985690 m!3344585))

(declare-fun m!3344587 () Bool)

(assert (=> b!2985684 m!3344587))

(assert (=> b!2985688 m!3344583))

(declare-fun m!3344589 () Bool)

(assert (=> b!2985688 m!3344589))

(declare-fun m!3344591 () Bool)

(assert (=> b!2985685 m!3344591))

(assert (=> b!2985685 m!3344591))

(declare-fun m!3344593 () Bool)

(assert (=> b!2985685 m!3344593))

(declare-fun m!3344595 () Bool)

(assert (=> b!2985685 m!3344595))

(assert (=> b!2985685 m!3344591))

(declare-fun m!3344597 () Bool)

(assert (=> b!2985685 m!3344597))

(assert (=> d!844026 m!3344587))

(declare-fun m!3344599 () Bool)

(assert (=> d!844026 m!3344599))

(assert (=> d!844026 m!3344557))

(declare-fun m!3344601 () Bool)

(assert (=> b!2985689 m!3344601))

(assert (=> b!2985687 m!3344583))

(declare-fun m!3344603 () Bool)

(assert (=> b!2985687 m!3344603))

(assert (=> b!2985480 d!844026))

(declare-fun bs!527374 () Bool)

(declare-fun d!844028 () Bool)

(assert (= bs!527374 (and d!844028 b!2985480)))

(declare-fun lambda!111435 () Int)

(assert (=> bs!527374 (= lambda!111435 lambda!111413)))

(assert (=> bs!527374 (not (= lambda!111435 lambda!111414))))

(declare-fun bs!527375 () Bool)

(assert (= bs!527375 (and d!844028 d!844014)))

(assert (=> bs!527375 (= lambda!111435 lambda!111427)))

(assert (=> bs!527375 (not (= lambda!111435 lambda!111428))))

(assert (=> d!844028 true))

(assert (=> d!844028 true))

(assert (=> d!844028 true))

(assert (=> d!844028 (= (isDefined!5270 (findConcatSeparation!1113 (regOne!19160 r!17423) (regTwo!19160 r!17423) Nil!35065 s!11993 s!11993)) (Exists!1601 lambda!111435))))

(declare-fun lt!1039302 () Unit!49051)

(declare-fun choose!17692 (Regex!9324 Regex!9324 List!35189) Unit!49051)

(assert (=> d!844028 (= lt!1039302 (choose!17692 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993))))

(assert (=> d!844028 (validRegex!4057 (regOne!19160 r!17423))))

(assert (=> d!844028 (= (lemmaFindConcatSeparationEquivalentToExists!891 (regOne!19160 r!17423) (regTwo!19160 r!17423) s!11993) lt!1039302)))

(declare-fun bs!527376 () Bool)

(assert (= bs!527376 d!844028))

(assert (=> bs!527376 m!3344557))

(declare-fun m!3344605 () Bool)

(assert (=> bs!527376 m!3344605))

(assert (=> bs!527376 m!3344501))

(declare-fun m!3344607 () Bool)

(assert (=> bs!527376 m!3344607))

(declare-fun m!3344609 () Bool)

(assert (=> bs!527376 m!3344609))

(assert (=> bs!527376 m!3344501))

(assert (=> b!2985480 d!844028))

(declare-fun d!844030 () Bool)

(assert (=> d!844030 (= (Exists!1601 lambda!111414) (choose!17691 lambda!111414))))

(declare-fun bs!527377 () Bool)

(assert (= bs!527377 d!844030))

(declare-fun m!3344611 () Bool)

(assert (=> bs!527377 m!3344611))

(assert (=> b!2985480 d!844030))

(declare-fun d!844032 () Bool)

(assert (=> d!844032 (= (get!10849 lt!1039268) (v!34852 lt!1039268))))

(assert (=> b!2985480 d!844032))

(declare-fun bs!527381 () Bool)

(declare-fun b!2985745 () Bool)

(assert (= bs!527381 (and b!2985745 d!844028)))

(declare-fun lambda!111442 () Int)

(assert (=> bs!527381 (not (= lambda!111442 lambda!111435))))

(declare-fun bs!527382 () Bool)

(assert (= bs!527382 (and b!2985745 d!844014)))

(assert (=> bs!527382 (not (= lambda!111442 lambda!111427))))

(declare-fun bs!527383 () Bool)

(assert (= bs!527383 (and b!2985745 b!2985480)))

(assert (=> bs!527383 (not (= lambda!111442 lambda!111414))))

(assert (=> bs!527382 (not (= lambda!111442 lambda!111428))))

(assert (=> bs!527383 (not (= lambda!111442 lambda!111413))))

(assert (=> b!2985745 true))

(assert (=> b!2985745 true))

(declare-fun bs!527384 () Bool)

(declare-fun b!2985740 () Bool)

(assert (= bs!527384 (and b!2985740 d!844014)))

(declare-fun lambda!111443 () Int)

(assert (=> bs!527384 (not (= lambda!111443 lambda!111427))))

(declare-fun bs!527385 () Bool)

(assert (= bs!527385 (and b!2985740 b!2985480)))

(assert (=> bs!527385 (= lambda!111443 lambda!111414)))

(assert (=> bs!527384 (= lambda!111443 lambda!111428)))

(assert (=> bs!527385 (not (= lambda!111443 lambda!111413))))

(declare-fun bs!527386 () Bool)

(assert (= bs!527386 (and b!2985740 b!2985745)))

(assert (=> bs!527386 (not (= lambda!111443 lambda!111442))))

(declare-fun bs!527387 () Bool)

(assert (= bs!527387 (and b!2985740 d!844028)))

(assert (=> bs!527387 (not (= lambda!111443 lambda!111435))))

(assert (=> b!2985740 true))

(assert (=> b!2985740 true))

(declare-fun bm!199619 () Bool)

(declare-fun call!199624 () Bool)

(assert (=> bm!199619 (= call!199624 (isEmpty!19325 s!11993))))

(declare-fun e!1877411 () Bool)

(declare-fun call!199625 () Bool)

(assert (=> b!2985740 (= e!1877411 call!199625)))

(declare-fun b!2985741 () Bool)

(declare-fun e!1877415 () Bool)

(assert (=> b!2985741 (= e!1877415 (= s!11993 (Cons!35065 (c!490574 r!17423) Nil!35065)))))

(declare-fun b!2985742 () Bool)

(declare-fun e!1877409 () Bool)

(assert (=> b!2985742 (= e!1877409 e!1877411)))

(declare-fun c!490624 () Bool)

(assert (=> b!2985742 (= c!490624 (is-Star!9324 r!17423))))

(declare-fun d!844034 () Bool)

(declare-fun c!490625 () Bool)

(assert (=> d!844034 (= c!490625 (is-EmptyExpr!9324 r!17423))))

(declare-fun e!1877410 () Bool)

(assert (=> d!844034 (= (matchRSpec!1461 r!17423 s!11993) e!1877410)))

(declare-fun b!2985743 () Bool)

(declare-fun c!490623 () Bool)

(assert (=> b!2985743 (= c!490623 (is-Union!9324 r!17423))))

(assert (=> b!2985743 (= e!1877415 e!1877409)))

(declare-fun b!2985744 () Bool)

(assert (=> b!2985744 (= e!1877410 call!199624)))

(declare-fun bm!199620 () Bool)

(assert (=> bm!199620 (= call!199625 (Exists!1601 (ite c!490624 lambda!111442 lambda!111443)))))

(declare-fun e!1877414 () Bool)

(assert (=> b!2985745 (= e!1877414 call!199625)))

(declare-fun b!2985746 () Bool)

(declare-fun e!1877412 () Bool)

(assert (=> b!2985746 (= e!1877412 (matchRSpec!1461 (regTwo!19161 r!17423) s!11993))))

(declare-fun b!2985747 () Bool)

(declare-fun e!1877413 () Bool)

(assert (=> b!2985747 (= e!1877410 e!1877413)))

(declare-fun res!1231311 () Bool)

(assert (=> b!2985747 (= res!1231311 (not (is-EmptyLang!9324 r!17423)))))

(assert (=> b!2985747 (=> (not res!1231311) (not e!1877413))))

(declare-fun b!2985748 () Bool)

(declare-fun res!1231310 () Bool)

(assert (=> b!2985748 (=> res!1231310 e!1877414)))

(assert (=> b!2985748 (= res!1231310 call!199624)))

(assert (=> b!2985748 (= e!1877411 e!1877414)))

(declare-fun b!2985749 () Bool)

(assert (=> b!2985749 (= e!1877409 e!1877412)))

(declare-fun res!1231309 () Bool)

(assert (=> b!2985749 (= res!1231309 (matchRSpec!1461 (regOne!19161 r!17423) s!11993))))

(assert (=> b!2985749 (=> res!1231309 e!1877412)))

(declare-fun b!2985750 () Bool)

(declare-fun c!490626 () Bool)

(assert (=> b!2985750 (= c!490626 (is-ElementMatch!9324 r!17423))))

(assert (=> b!2985750 (= e!1877413 e!1877415)))

(assert (= (and d!844034 c!490625) b!2985744))

(assert (= (and d!844034 (not c!490625)) b!2985747))

(assert (= (and b!2985747 res!1231311) b!2985750))

(assert (= (and b!2985750 c!490626) b!2985741))

(assert (= (and b!2985750 (not c!490626)) b!2985743))

(assert (= (and b!2985743 c!490623) b!2985749))

(assert (= (and b!2985743 (not c!490623)) b!2985742))

(assert (= (and b!2985749 (not res!1231309)) b!2985746))

(assert (= (and b!2985742 c!490624) b!2985748))

(assert (= (and b!2985742 (not c!490624)) b!2985740))

(assert (= (and b!2985748 (not res!1231310)) b!2985745))

(assert (= (or b!2985745 b!2985740) bm!199620))

(assert (= (or b!2985744 b!2985748) bm!199619))

(assert (=> bm!199619 m!3344495))

(declare-fun m!3344619 () Bool)

(assert (=> bm!199620 m!3344619))

(declare-fun m!3344621 () Bool)

(assert (=> b!2985746 m!3344621))

(declare-fun m!3344623 () Bool)

(assert (=> b!2985749 m!3344623))

(assert (=> b!2985485 d!844034))

(declare-fun b!2985751 () Bool)

(declare-fun res!1231312 () Bool)

(declare-fun e!1877417 () Bool)

(assert (=> b!2985751 (=> res!1231312 e!1877417)))

(assert (=> b!2985751 (= res!1231312 (not (isEmpty!19325 (tail!4885 s!11993))))))

(declare-fun b!2985752 () Bool)

(declare-fun e!1877420 () Bool)

(assert (=> b!2985752 (= e!1877420 (= (head!6659 s!11993) (c!490574 r!17423)))))

(declare-fun b!2985753 () Bool)

(declare-fun res!1231316 () Bool)

(assert (=> b!2985753 (=> (not res!1231316) (not e!1877420))))

(assert (=> b!2985753 (= res!1231316 (isEmpty!19325 (tail!4885 s!11993)))))

(declare-fun b!2985754 () Bool)

(declare-fun e!1877418 () Bool)

(assert (=> b!2985754 (= e!1877418 (nullable!3001 r!17423))))

(declare-fun b!2985755 () Bool)

(declare-fun e!1877419 () Bool)

(declare-fun e!1877422 () Bool)

(assert (=> b!2985755 (= e!1877419 e!1877422)))

(declare-fun c!490629 () Bool)

(assert (=> b!2985755 (= c!490629 (is-EmptyLang!9324 r!17423))))

(declare-fun b!2985756 () Bool)

(declare-fun lt!1039303 () Bool)

(declare-fun call!199626 () Bool)

(assert (=> b!2985756 (= e!1877419 (= lt!1039303 call!199626))))

(declare-fun bm!199621 () Bool)

(assert (=> bm!199621 (= call!199626 (isEmpty!19325 s!11993))))

(declare-fun d!844038 () Bool)

(assert (=> d!844038 e!1877419))

(declare-fun c!490627 () Bool)

(assert (=> d!844038 (= c!490627 (is-EmptyExpr!9324 r!17423))))

(assert (=> d!844038 (= lt!1039303 e!1877418)))

(declare-fun c!490628 () Bool)

(assert (=> d!844038 (= c!490628 (isEmpty!19325 s!11993))))

(assert (=> d!844038 (validRegex!4057 r!17423)))

(assert (=> d!844038 (= (matchR!4206 r!17423 s!11993) lt!1039303)))

(declare-fun b!2985757 () Bool)

(declare-fun res!1231315 () Bool)

(declare-fun e!1877416 () Bool)

(assert (=> b!2985757 (=> res!1231315 e!1877416)))

(assert (=> b!2985757 (= res!1231315 e!1877420)))

(declare-fun res!1231319 () Bool)

(assert (=> b!2985757 (=> (not res!1231319) (not e!1877420))))

(assert (=> b!2985757 (= res!1231319 lt!1039303)))

(declare-fun b!2985758 () Bool)

(declare-fun e!1877421 () Bool)

(assert (=> b!2985758 (= e!1877421 e!1877417)))

(declare-fun res!1231314 () Bool)

(assert (=> b!2985758 (=> res!1231314 e!1877417)))

(assert (=> b!2985758 (= res!1231314 call!199626)))

(declare-fun b!2985759 () Bool)

(assert (=> b!2985759 (= e!1877418 (matchR!4206 (derivativeStep!2600 r!17423 (head!6659 s!11993)) (tail!4885 s!11993)))))

(declare-fun b!2985760 () Bool)

(assert (=> b!2985760 (= e!1877422 (not lt!1039303))))

(declare-fun b!2985761 () Bool)

(assert (=> b!2985761 (= e!1877416 e!1877421)))

(declare-fun res!1231317 () Bool)

(assert (=> b!2985761 (=> (not res!1231317) (not e!1877421))))

(assert (=> b!2985761 (= res!1231317 (not lt!1039303))))

(declare-fun b!2985762 () Bool)

(declare-fun res!1231318 () Bool)

(assert (=> b!2985762 (=> res!1231318 e!1877416)))

(assert (=> b!2985762 (= res!1231318 (not (is-ElementMatch!9324 r!17423)))))

(assert (=> b!2985762 (= e!1877422 e!1877416)))

(declare-fun b!2985763 () Bool)

(assert (=> b!2985763 (= e!1877417 (not (= (head!6659 s!11993) (c!490574 r!17423))))))

(declare-fun b!2985764 () Bool)

(declare-fun res!1231313 () Bool)

(assert (=> b!2985764 (=> (not res!1231313) (not e!1877420))))

(assert (=> b!2985764 (= res!1231313 (not call!199626))))

(assert (= (and d!844038 c!490628) b!2985754))

(assert (= (and d!844038 (not c!490628)) b!2985759))

(assert (= (and d!844038 c!490627) b!2985756))

(assert (= (and d!844038 (not c!490627)) b!2985755))

(assert (= (and b!2985755 c!490629) b!2985760))

(assert (= (and b!2985755 (not c!490629)) b!2985762))

(assert (= (and b!2985762 (not res!1231318)) b!2985757))

(assert (= (and b!2985757 res!1231319) b!2985764))

(assert (= (and b!2985764 res!1231313) b!2985753))

(assert (= (and b!2985753 res!1231316) b!2985752))

(assert (= (and b!2985757 (not res!1231315)) b!2985761))

(assert (= (and b!2985761 res!1231317) b!2985758))

(assert (= (and b!2985758 (not res!1231314)) b!2985751))

(assert (= (and b!2985751 (not res!1231312)) b!2985763))

(assert (= (or b!2985756 b!2985758 b!2985764) bm!199621))

(assert (=> d!844038 m!3344495))

(assert (=> d!844038 m!3344493))

(declare-fun m!3344625 () Bool)

(assert (=> b!2985754 m!3344625))

(declare-fun m!3344627 () Bool)

(assert (=> b!2985759 m!3344627))

(assert (=> b!2985759 m!3344627))

(declare-fun m!3344629 () Bool)

(assert (=> b!2985759 m!3344629))

(declare-fun m!3344631 () Bool)

(assert (=> b!2985759 m!3344631))

(assert (=> b!2985759 m!3344629))

(assert (=> b!2985759 m!3344631))

(declare-fun m!3344633 () Bool)

(assert (=> b!2985759 m!3344633))

(assert (=> b!2985751 m!3344631))

(assert (=> b!2985751 m!3344631))

(declare-fun m!3344635 () Bool)

(assert (=> b!2985751 m!3344635))

(assert (=> b!2985763 m!3344627))

(assert (=> bm!199621 m!3344495))

(assert (=> b!2985753 m!3344631))

(assert (=> b!2985753 m!3344631))

(assert (=> b!2985753 m!3344635))

(assert (=> b!2985752 m!3344627))

(assert (=> b!2985485 d!844038))

(declare-fun d!844040 () Bool)

(assert (=> d!844040 (= (matchR!4206 r!17423 s!11993) (matchRSpec!1461 r!17423 s!11993))))

(declare-fun lt!1039306 () Unit!49051)

(declare-fun choose!17693 (Regex!9324 List!35189) Unit!49051)

(assert (=> d!844040 (= lt!1039306 (choose!17693 r!17423 s!11993))))

(assert (=> d!844040 (validRegex!4057 r!17423)))

(assert (=> d!844040 (= (mainMatchTheorem!1461 r!17423 s!11993) lt!1039306)))

(declare-fun bs!527388 () Bool)

(assert (= bs!527388 d!844040))

(assert (=> bs!527388 m!3344515))

(assert (=> bs!527388 m!3344513))

(declare-fun m!3344637 () Bool)

(assert (=> bs!527388 m!3344637))

(assert (=> bs!527388 m!3344493))

(assert (=> b!2985485 d!844040))

(declare-fun b!2985778 () Bool)

(declare-fun e!1877425 () Bool)

(declare-fun tp!949874 () Bool)

(declare-fun tp!949873 () Bool)

(assert (=> b!2985778 (= e!1877425 (and tp!949874 tp!949873))))

(declare-fun b!2985777 () Bool)

(declare-fun tp!949876 () Bool)

(assert (=> b!2985777 (= e!1877425 tp!949876)))

(assert (=> b!2985481 (= tp!949838 e!1877425)))

(declare-fun b!2985775 () Bool)

(assert (=> b!2985775 (= e!1877425 tp_is_empty!16211)))

(declare-fun b!2985776 () Bool)

(declare-fun tp!949872 () Bool)

(declare-fun tp!949875 () Bool)

(assert (=> b!2985776 (= e!1877425 (and tp!949872 tp!949875))))

(assert (= (and b!2985481 (is-ElementMatch!9324 (regOne!19160 r!17423))) b!2985775))

(assert (= (and b!2985481 (is-Concat!14645 (regOne!19160 r!17423))) b!2985776))

(assert (= (and b!2985481 (is-Star!9324 (regOne!19160 r!17423))) b!2985777))

(assert (= (and b!2985481 (is-Union!9324 (regOne!19160 r!17423))) b!2985778))

(declare-fun b!2985782 () Bool)

(declare-fun e!1877426 () Bool)

(declare-fun tp!949879 () Bool)

(declare-fun tp!949878 () Bool)

(assert (=> b!2985782 (= e!1877426 (and tp!949879 tp!949878))))

(declare-fun b!2985781 () Bool)

(declare-fun tp!949881 () Bool)

(assert (=> b!2985781 (= e!1877426 tp!949881)))

(assert (=> b!2985481 (= tp!949840 e!1877426)))

(declare-fun b!2985779 () Bool)

(assert (=> b!2985779 (= e!1877426 tp_is_empty!16211)))

(declare-fun b!2985780 () Bool)

(declare-fun tp!949877 () Bool)

(declare-fun tp!949880 () Bool)

(assert (=> b!2985780 (= e!1877426 (and tp!949877 tp!949880))))

(assert (= (and b!2985481 (is-ElementMatch!9324 (regTwo!19160 r!17423))) b!2985779))

(assert (= (and b!2985481 (is-Concat!14645 (regTwo!19160 r!17423))) b!2985780))

(assert (= (and b!2985481 (is-Star!9324 (regTwo!19160 r!17423))) b!2985781))

(assert (= (and b!2985481 (is-Union!9324 (regTwo!19160 r!17423))) b!2985782))

(declare-fun b!2985786 () Bool)

(declare-fun e!1877427 () Bool)

(declare-fun tp!949884 () Bool)

(declare-fun tp!949883 () Bool)

(assert (=> b!2985786 (= e!1877427 (and tp!949884 tp!949883))))

(declare-fun b!2985785 () Bool)

(declare-fun tp!949886 () Bool)

(assert (=> b!2985785 (= e!1877427 tp!949886)))

(assert (=> b!2985482 (= tp!949841 e!1877427)))

(declare-fun b!2985783 () Bool)

(assert (=> b!2985783 (= e!1877427 tp_is_empty!16211)))

(declare-fun b!2985784 () Bool)

(declare-fun tp!949882 () Bool)

(declare-fun tp!949885 () Bool)

(assert (=> b!2985784 (= e!1877427 (and tp!949882 tp!949885))))

(assert (= (and b!2985482 (is-ElementMatch!9324 (regOne!19161 r!17423))) b!2985783))

(assert (= (and b!2985482 (is-Concat!14645 (regOne!19161 r!17423))) b!2985784))

(assert (= (and b!2985482 (is-Star!9324 (regOne!19161 r!17423))) b!2985785))

(assert (= (and b!2985482 (is-Union!9324 (regOne!19161 r!17423))) b!2985786))

(declare-fun b!2985790 () Bool)

(declare-fun e!1877428 () Bool)

(declare-fun tp!949889 () Bool)

(declare-fun tp!949888 () Bool)

(assert (=> b!2985790 (= e!1877428 (and tp!949889 tp!949888))))

(declare-fun b!2985789 () Bool)

(declare-fun tp!949891 () Bool)

(assert (=> b!2985789 (= e!1877428 tp!949891)))

(assert (=> b!2985482 (= tp!949842 e!1877428)))

(declare-fun b!2985787 () Bool)

(assert (=> b!2985787 (= e!1877428 tp_is_empty!16211)))

(declare-fun b!2985788 () Bool)

(declare-fun tp!949887 () Bool)

(declare-fun tp!949890 () Bool)

(assert (=> b!2985788 (= e!1877428 (and tp!949887 tp!949890))))

(assert (= (and b!2985482 (is-ElementMatch!9324 (regTwo!19161 r!17423))) b!2985787))

(assert (= (and b!2985482 (is-Concat!14645 (regTwo!19161 r!17423))) b!2985788))

(assert (= (and b!2985482 (is-Star!9324 (regTwo!19161 r!17423))) b!2985789))

(assert (= (and b!2985482 (is-Union!9324 (regTwo!19161 r!17423))) b!2985790))

(declare-fun b!2985794 () Bool)

(declare-fun e!1877429 () Bool)

(declare-fun tp!949894 () Bool)

(declare-fun tp!949893 () Bool)

(assert (=> b!2985794 (= e!1877429 (and tp!949894 tp!949893))))

(declare-fun b!2985793 () Bool)

(declare-fun tp!949896 () Bool)

(assert (=> b!2985793 (= e!1877429 tp!949896)))

(assert (=> b!2985478 (= tp!949839 e!1877429)))

(declare-fun b!2985791 () Bool)

(assert (=> b!2985791 (= e!1877429 tp_is_empty!16211)))

(declare-fun b!2985792 () Bool)

(declare-fun tp!949892 () Bool)

(declare-fun tp!949895 () Bool)

(assert (=> b!2985792 (= e!1877429 (and tp!949892 tp!949895))))

(assert (= (and b!2985478 (is-ElementMatch!9324 (reg!9653 r!17423))) b!2985791))

(assert (= (and b!2985478 (is-Concat!14645 (reg!9653 r!17423))) b!2985792))

(assert (= (and b!2985478 (is-Star!9324 (reg!9653 r!17423))) b!2985793))

(assert (= (and b!2985478 (is-Union!9324 (reg!9653 r!17423))) b!2985794))

(declare-fun b!2985799 () Bool)

(declare-fun e!1877432 () Bool)

(declare-fun tp!949899 () Bool)

(assert (=> b!2985799 (= e!1877432 (and tp_is_empty!16211 tp!949899))))

(assert (=> b!2985484 (= tp!949843 e!1877432)))

(assert (= (and b!2985484 (is-Cons!35065 (t!234254 s!11993))) b!2985799))

(push 1)

(assert (not bm!199595))

(assert (not b!2985790))

(assert (not d!844040))

(assert (not b!2985749))

(assert (not b!2985788))

(assert (not b!2985623))

(assert (not bm!199596))

(assert (not bm!199608))

(assert (not b!2985622))

(assert (not b!2985687))

(assert (not d!844018))

(assert (not b!2985688))

(assert (not d!844026))

(assert (not b!2985793))

(assert (not b!2985781))

(assert (not bm!199621))

(assert (not b!2985763))

(assert (not b!2985778))

(assert (not b!2985628))

(assert (not b!2985690))

(assert (not b!2985689))

(assert (not b!2985620))

(assert (not d!844028))

(assert (not b!2985746))

(assert (not bm!199620))

(assert (not b!2985782))

(assert (not b!2985632))

(assert (not b!2985753))

(assert (not b!2985754))

(assert (not b!2985780))

(assert (not d!844022))

(assert (not b!2985794))

(assert (not b!2985799))

(assert (not b!2985751))

(assert (not b!2985784))

(assert (not b!2985759))

(assert (not b!2985777))

(assert (not b!2985684))

(assert (not b!2985553))

(assert (not bm!199619))

(assert (not d!844030))

(assert (not b!2985786))

(assert (not b!2985621))

(assert (not b!2985789))

(assert (not d!844014))

(assert (not b!2985685))

(assert (not b!2985792))

(assert (not b!2985785))

(assert tp_is_empty!16211)

(assert (not d!844020))

(assert (not d!844038))

(assert (not b!2985752))

(assert (not b!2985776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

