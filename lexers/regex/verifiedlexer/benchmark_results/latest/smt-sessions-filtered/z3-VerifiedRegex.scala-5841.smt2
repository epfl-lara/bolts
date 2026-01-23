; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287164 () Bool)

(assert start!287164)

(declare-fun b!2966368 () Bool)

(declare-fun e!1866798 () Bool)

(declare-fun tp!946227 () Bool)

(declare-fun tp!946225 () Bool)

(assert (=> b!2966368 (= e!1866798 (and tp!946227 tp!946225))))

(declare-fun b!2966369 () Bool)

(declare-fun e!1866800 () Bool)

(declare-fun e!1866795 () Bool)

(assert (=> b!2966369 (= e!1866800 e!1866795)))

(declare-fun res!1223562 () Bool)

(assert (=> b!2966369 (=> res!1223562 e!1866795)))

(declare-datatypes ((C!18652 0))(
  ( (C!18653 (val!11362 Int)) )
))
(declare-datatypes ((Regex!9233 0))(
  ( (ElementMatch!9233 (c!486461 C!18652)) (Concat!14554 (regOne!18978 Regex!9233) (regTwo!18978 Regex!9233)) (EmptyExpr!9233) (Star!9233 (reg!9562 Regex!9233)) (EmptyLang!9233) (Union!9233 (regOne!18979 Regex!9233) (regTwo!18979 Regex!9233)) )
))
(declare-fun lt!1035288 () Regex!9233)

(declare-fun isEmptyLang!349 (Regex!9233) Bool)

(assert (=> b!2966369 (= res!1223562 (isEmptyLang!349 lt!1035288))))

(declare-fun lt!1035290 () Regex!9233)

(declare-fun r!17423 () Regex!9233)

(declare-fun simplify!236 (Regex!9233) Regex!9233)

(assert (=> b!2966369 (= lt!1035290 (simplify!236 (regTwo!18979 r!17423)))))

(assert (=> b!2966369 (= lt!1035288 (simplify!236 (regOne!18979 r!17423)))))

(declare-fun b!2966370 () Bool)

(declare-fun tp_is_empty!16029 () Bool)

(assert (=> b!2966370 (= e!1866798 tp_is_empty!16029)))

(declare-fun res!1223560 () Bool)

(declare-fun e!1866796 () Bool)

(assert (=> start!287164 (=> (not res!1223560) (not e!1866796))))

(declare-fun validRegex!3966 (Regex!9233) Bool)

(assert (=> start!287164 (= res!1223560 (validRegex!3966 r!17423))))

(assert (=> start!287164 e!1866796))

(assert (=> start!287164 e!1866798))

(declare-fun e!1866801 () Bool)

(assert (=> start!287164 e!1866801))

(declare-fun b!2966371 () Bool)

(declare-fun tp!946229 () Bool)

(assert (=> b!2966371 (= e!1866798 tp!946229)))

(declare-fun b!2966372 () Bool)

(declare-fun e!1866797 () Bool)

(declare-datatypes ((List!35098 0))(
  ( (Nil!34974) (Cons!34974 (h!40394 C!18652) (t!234163 List!35098)) )
))
(declare-fun s!11993 () List!35098)

(declare-fun matchR!4115 (Regex!9233 List!35098) Bool)

(assert (=> b!2966372 (= e!1866797 (matchR!4115 lt!1035290 s!11993))))

(declare-fun b!2966373 () Bool)

(declare-fun res!1223564 () Bool)

(assert (=> b!2966373 (=> res!1223564 e!1866795)))

(assert (=> b!2966373 (= res!1223564 (isEmptyLang!349 lt!1035290))))

(declare-fun b!2966374 () Bool)

(declare-fun tp!946226 () Bool)

(declare-fun tp!946224 () Bool)

(assert (=> b!2966374 (= e!1866798 (and tp!946226 tp!946224))))

(declare-fun b!2966375 () Bool)

(declare-fun e!1866799 () Bool)

(assert (=> b!2966375 (= e!1866795 e!1866799)))

(declare-fun res!1223566 () Bool)

(assert (=> b!2966375 (=> res!1223566 e!1866799)))

(declare-fun lt!1035289 () Bool)

(assert (=> b!2966375 (= res!1223566 lt!1035289)))

(assert (=> b!2966375 e!1866797))

(declare-fun res!1223561 () Bool)

(assert (=> b!2966375 (=> res!1223561 e!1866797)))

(assert (=> b!2966375 (= res!1223561 lt!1035289)))

(assert (=> b!2966375 (= lt!1035289 (matchR!4115 lt!1035288 s!11993))))

(declare-datatypes ((Unit!48845 0))(
  ( (Unit!48846) )
))
(declare-fun lt!1035286 () Unit!48845)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!282 (Regex!9233 Regex!9233 List!35098) Unit!48845)

(assert (=> b!2966375 (= lt!1035286 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!282 lt!1035288 lt!1035290 s!11993))))

(declare-fun b!2966376 () Bool)

(assert (=> b!2966376 (= e!1866799 (validRegex!3966 (regTwo!18979 r!17423)))))

(assert (=> b!2966376 (= (matchR!4115 (regTwo!18979 r!17423) s!11993) (matchR!4115 lt!1035290 s!11993))))

(declare-fun lt!1035287 () Unit!48845)

(declare-fun lemmaSimplifySound!150 (Regex!9233 List!35098) Unit!48845)

(assert (=> b!2966376 (= lt!1035287 (lemmaSimplifySound!150 (regTwo!18979 r!17423) s!11993))))

(declare-fun b!2966377 () Bool)

(declare-fun res!1223565 () Bool)

(assert (=> b!2966377 (=> res!1223565 e!1866795)))

(assert (=> b!2966377 (= res!1223565 (not (matchR!4115 (Union!9233 lt!1035288 lt!1035290) s!11993)))))

(declare-fun b!2966378 () Bool)

(assert (=> b!2966378 (= e!1866796 (not e!1866800))))

(declare-fun res!1223563 () Bool)

(assert (=> b!2966378 (=> res!1223563 e!1866800)))

(declare-fun lt!1035292 () Bool)

(get-info :version)

(assert (=> b!2966378 (= res!1223563 (or lt!1035292 ((_ is Concat!14554) r!17423) (not ((_ is Union!9233) r!17423))))))

(declare-fun matchRSpec!1370 (Regex!9233 List!35098) Bool)

(assert (=> b!2966378 (= lt!1035292 (matchRSpec!1370 r!17423 s!11993))))

(assert (=> b!2966378 (= lt!1035292 (matchR!4115 r!17423 s!11993))))

(declare-fun lt!1035291 () Unit!48845)

(declare-fun mainMatchTheorem!1370 (Regex!9233 List!35098) Unit!48845)

(assert (=> b!2966378 (= lt!1035291 (mainMatchTheorem!1370 r!17423 s!11993))))

(declare-fun b!2966379 () Bool)

(declare-fun tp!946228 () Bool)

(assert (=> b!2966379 (= e!1866801 (and tp_is_empty!16029 tp!946228))))

(assert (= (and start!287164 res!1223560) b!2966378))

(assert (= (and b!2966378 (not res!1223563)) b!2966369))

(assert (= (and b!2966369 (not res!1223562)) b!2966373))

(assert (= (and b!2966373 (not res!1223564)) b!2966377))

(assert (= (and b!2966377 (not res!1223565)) b!2966375))

(assert (= (and b!2966375 (not res!1223561)) b!2966372))

(assert (= (and b!2966375 (not res!1223566)) b!2966376))

(assert (= (and start!287164 ((_ is ElementMatch!9233) r!17423)) b!2966370))

(assert (= (and start!287164 ((_ is Concat!14554) r!17423)) b!2966374))

(assert (= (and start!287164 ((_ is Star!9233) r!17423)) b!2966371))

(assert (= (and start!287164 ((_ is Union!9233) r!17423)) b!2966368))

(assert (= (and start!287164 ((_ is Cons!34974) s!11993)) b!2966379))

(declare-fun m!3336521 () Bool)

(assert (=> b!2966375 m!3336521))

(declare-fun m!3336523 () Bool)

(assert (=> b!2966375 m!3336523))

(declare-fun m!3336525 () Bool)

(assert (=> b!2966369 m!3336525))

(declare-fun m!3336527 () Bool)

(assert (=> b!2966369 m!3336527))

(declare-fun m!3336529 () Bool)

(assert (=> b!2966369 m!3336529))

(declare-fun m!3336531 () Bool)

(assert (=> b!2966373 m!3336531))

(declare-fun m!3336533 () Bool)

(assert (=> b!2966378 m!3336533))

(declare-fun m!3336535 () Bool)

(assert (=> b!2966378 m!3336535))

(declare-fun m!3336537 () Bool)

(assert (=> b!2966378 m!3336537))

(declare-fun m!3336539 () Bool)

(assert (=> b!2966372 m!3336539))

(declare-fun m!3336541 () Bool)

(assert (=> b!2966376 m!3336541))

(declare-fun m!3336543 () Bool)

(assert (=> b!2966376 m!3336543))

(assert (=> b!2966376 m!3336539))

(declare-fun m!3336545 () Bool)

(assert (=> b!2966376 m!3336545))

(declare-fun m!3336547 () Bool)

(assert (=> b!2966377 m!3336547))

(declare-fun m!3336549 () Bool)

(assert (=> start!287164 m!3336549))

(check-sat (not b!2966369) (not b!2966368) (not b!2966376) (not b!2966379) (not b!2966373) (not b!2966378) (not b!2966372) tp_is_empty!16029 (not start!287164) (not b!2966377) (not b!2966374) (not b!2966375) (not b!2966371))
(check-sat)
(get-model)

(declare-fun b!2966416 () Bool)

(declare-fun e!1866822 () Bool)

(declare-fun lt!1035297 () Bool)

(declare-fun call!197123 () Bool)

(assert (=> b!2966416 (= e!1866822 (= lt!1035297 call!197123))))

(declare-fun d!842376 () Bool)

(assert (=> d!842376 e!1866822))

(declare-fun c!486473 () Bool)

(assert (=> d!842376 (= c!486473 ((_ is EmptyExpr!9233) lt!1035288))))

(declare-fun e!1866823 () Bool)

(assert (=> d!842376 (= lt!1035297 e!1866823)))

(declare-fun c!486474 () Bool)

(declare-fun isEmpty!19230 (List!35098) Bool)

(assert (=> d!842376 (= c!486474 (isEmpty!19230 s!11993))))

(assert (=> d!842376 (validRegex!3966 lt!1035288)))

(assert (=> d!842376 (= (matchR!4115 lt!1035288 s!11993) lt!1035297)))

(declare-fun b!2966417 () Bool)

(declare-fun e!1866825 () Bool)

(assert (=> b!2966417 (= e!1866822 e!1866825)))

(declare-fun c!486471 () Bool)

(assert (=> b!2966417 (= c!486471 ((_ is EmptyLang!9233) lt!1035288))))

(declare-fun b!2966418 () Bool)

(declare-fun res!1223586 () Bool)

(declare-fun e!1866824 () Bool)

(assert (=> b!2966418 (=> res!1223586 e!1866824)))

(declare-fun e!1866821 () Bool)

(assert (=> b!2966418 (= res!1223586 e!1866821)))

(declare-fun res!1223589 () Bool)

(assert (=> b!2966418 (=> (not res!1223589) (not e!1866821))))

(assert (=> b!2966418 (= res!1223589 lt!1035297)))

(declare-fun b!2966419 () Bool)

(declare-fun res!1223585 () Bool)

(assert (=> b!2966419 (=> (not res!1223585) (not e!1866821))))

(declare-fun tail!4836 (List!35098) List!35098)

(assert (=> b!2966419 (= res!1223585 (isEmpty!19230 (tail!4836 s!11993)))))

(declare-fun b!2966420 () Bool)

(declare-fun derivativeStep!2551 (Regex!9233 C!18652) Regex!9233)

(declare-fun head!6610 (List!35098) C!18652)

(assert (=> b!2966420 (= e!1866823 (matchR!4115 (derivativeStep!2551 lt!1035288 (head!6610 s!11993)) (tail!4836 s!11993)))))

(declare-fun b!2966421 () Bool)

(assert (=> b!2966421 (= e!1866821 (= (head!6610 s!11993) (c!486461 lt!1035288)))))

(declare-fun b!2966422 () Bool)

(assert (=> b!2966422 (= e!1866825 (not lt!1035297))))

(declare-fun b!2966423 () Bool)

(declare-fun nullable!2950 (Regex!9233) Bool)

(assert (=> b!2966423 (= e!1866823 (nullable!2950 lt!1035288))))

(declare-fun b!2966424 () Bool)

(declare-fun res!1223587 () Bool)

(assert (=> b!2966424 (=> (not res!1223587) (not e!1866821))))

(assert (=> b!2966424 (= res!1223587 (not call!197123))))

(declare-fun b!2966425 () Bool)

(declare-fun res!1223588 () Bool)

(declare-fun e!1866826 () Bool)

(assert (=> b!2966425 (=> res!1223588 e!1866826)))

(assert (=> b!2966425 (= res!1223588 (not (isEmpty!19230 (tail!4836 s!11993))))))

(declare-fun b!2966426 () Bool)

(declare-fun e!1866820 () Bool)

(assert (=> b!2966426 (= e!1866824 e!1866820)))

(declare-fun res!1223590 () Bool)

(assert (=> b!2966426 (=> (not res!1223590) (not e!1866820))))

(assert (=> b!2966426 (= res!1223590 (not lt!1035297))))

(declare-fun b!2966427 () Bool)

(assert (=> b!2966427 (= e!1866826 (not (= (head!6610 s!11993) (c!486461 lt!1035288))))))

(declare-fun b!2966428 () Bool)

(declare-fun res!1223583 () Bool)

(assert (=> b!2966428 (=> res!1223583 e!1866824)))

(assert (=> b!2966428 (= res!1223583 (not ((_ is ElementMatch!9233) lt!1035288)))))

(assert (=> b!2966428 (= e!1866825 e!1866824)))

(declare-fun bm!197118 () Bool)

(assert (=> bm!197118 (= call!197123 (isEmpty!19230 s!11993))))

(declare-fun b!2966429 () Bool)

(assert (=> b!2966429 (= e!1866820 e!1866826)))

(declare-fun res!1223584 () Bool)

(assert (=> b!2966429 (=> res!1223584 e!1866826)))

(assert (=> b!2966429 (= res!1223584 call!197123)))

(assert (= (and d!842376 c!486474) b!2966423))

(assert (= (and d!842376 (not c!486474)) b!2966420))

(assert (= (and d!842376 c!486473) b!2966416))

(assert (= (and d!842376 (not c!486473)) b!2966417))

(assert (= (and b!2966417 c!486471) b!2966422))

(assert (= (and b!2966417 (not c!486471)) b!2966428))

(assert (= (and b!2966428 (not res!1223583)) b!2966418))

(assert (= (and b!2966418 res!1223589) b!2966424))

(assert (= (and b!2966424 res!1223587) b!2966419))

(assert (= (and b!2966419 res!1223585) b!2966421))

(assert (= (and b!2966418 (not res!1223586)) b!2966426))

(assert (= (and b!2966426 res!1223590) b!2966429))

(assert (= (and b!2966429 (not res!1223584)) b!2966425))

(assert (= (and b!2966425 (not res!1223588)) b!2966427))

(assert (= (or b!2966416 b!2966424 b!2966429) bm!197118))

(declare-fun m!3336551 () Bool)

(assert (=> b!2966427 m!3336551))

(assert (=> b!2966420 m!3336551))

(assert (=> b!2966420 m!3336551))

(declare-fun m!3336553 () Bool)

(assert (=> b!2966420 m!3336553))

(declare-fun m!3336555 () Bool)

(assert (=> b!2966420 m!3336555))

(assert (=> b!2966420 m!3336553))

(assert (=> b!2966420 m!3336555))

(declare-fun m!3336557 () Bool)

(assert (=> b!2966420 m!3336557))

(assert (=> b!2966425 m!3336555))

(assert (=> b!2966425 m!3336555))

(declare-fun m!3336559 () Bool)

(assert (=> b!2966425 m!3336559))

(declare-fun m!3336561 () Bool)

(assert (=> b!2966423 m!3336561))

(declare-fun m!3336563 () Bool)

(assert (=> d!842376 m!3336563))

(declare-fun m!3336565 () Bool)

(assert (=> d!842376 m!3336565))

(assert (=> b!2966421 m!3336551))

(assert (=> bm!197118 m!3336563))

(assert (=> b!2966419 m!3336555))

(assert (=> b!2966419 m!3336555))

(assert (=> b!2966419 m!3336559))

(assert (=> b!2966375 d!842376))

(declare-fun d!842382 () Bool)

(declare-fun e!1866854 () Bool)

(assert (=> d!842382 e!1866854))

(declare-fun res!1223600 () Bool)

(assert (=> d!842382 (=> res!1223600 e!1866854)))

(assert (=> d!842382 (= res!1223600 (matchR!4115 lt!1035288 s!11993))))

(declare-fun lt!1035310 () Unit!48845)

(declare-fun choose!17546 (Regex!9233 Regex!9233 List!35098) Unit!48845)

(assert (=> d!842382 (= lt!1035310 (choose!17546 lt!1035288 lt!1035290 s!11993))))

(declare-fun e!1866853 () Bool)

(assert (=> d!842382 e!1866853))

(declare-fun res!1223599 () Bool)

(assert (=> d!842382 (=> (not res!1223599) (not e!1866853))))

(assert (=> d!842382 (= res!1223599 (validRegex!3966 lt!1035288))))

(assert (=> d!842382 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!282 lt!1035288 lt!1035290 s!11993) lt!1035310)))

(declare-fun b!2966474 () Bool)

(assert (=> b!2966474 (= e!1866853 (validRegex!3966 lt!1035290))))

(declare-fun b!2966475 () Bool)

(assert (=> b!2966475 (= e!1866854 (matchR!4115 lt!1035290 s!11993))))

(assert (= (and d!842382 res!1223599) b!2966474))

(assert (= (and d!842382 (not res!1223600)) b!2966475))

(assert (=> d!842382 m!3336521))

(declare-fun m!3336567 () Bool)

(assert (=> d!842382 m!3336567))

(assert (=> d!842382 m!3336565))

(declare-fun m!3336569 () Bool)

(assert (=> b!2966474 m!3336569))

(assert (=> b!2966475 m!3336539))

(assert (=> b!2966375 d!842382))

(declare-fun d!842384 () Bool)

(assert (=> d!842384 (= (isEmptyLang!349 lt!1035288) ((_ is EmptyLang!9233) lt!1035288))))

(assert (=> b!2966369 d!842384))

(declare-fun b!2966620 () Bool)

(declare-fun e!1866944 () Regex!9233)

(assert (=> b!2966620 (= e!1866944 EmptyExpr!9233)))

(declare-fun b!2966621 () Bool)

(declare-fun e!1866941 () Bool)

(declare-fun call!197175 () Bool)

(assert (=> b!2966621 (= e!1866941 call!197175)))

(declare-fun b!2966622 () Bool)

(declare-fun e!1866935 () Regex!9233)

(declare-fun lt!1035340 () Regex!9233)

(assert (=> b!2966622 (= e!1866935 lt!1035340)))

(declare-fun b!2966623 () Bool)

(declare-fun c!486546 () Bool)

(declare-fun call!197170 () Bool)

(assert (=> b!2966623 (= c!486546 call!197170)))

(declare-fun e!1866937 () Regex!9233)

(declare-fun e!1866943 () Regex!9233)

(assert (=> b!2966623 (= e!1866937 e!1866943)))

(declare-fun b!2966624 () Bool)

(assert (=> b!2966624 (= e!1866937 EmptyLang!9233)))

(declare-fun bm!197164 () Bool)

(declare-fun call!197173 () Regex!9233)

(declare-fun call!197169 () Regex!9233)

(assert (=> bm!197164 (= call!197173 call!197169)))

(declare-fun bm!197165 () Bool)

(declare-fun call!197172 () Bool)

(declare-fun call!197171 () Bool)

(assert (=> bm!197165 (= call!197172 call!197171)))

(declare-fun b!2966625 () Bool)

(declare-fun e!1866945 () Regex!9233)

(declare-fun e!1866939 () Regex!9233)

(assert (=> b!2966625 (= e!1866945 e!1866939)))

(declare-fun lt!1035343 () Regex!9233)

(assert (=> b!2966625 (= lt!1035343 call!197173)))

(declare-fun lt!1035342 () Regex!9233)

(declare-fun call!197174 () Regex!9233)

(assert (=> b!2966625 (= lt!1035342 call!197174)))

(declare-fun c!486549 () Bool)

(assert (=> b!2966625 (= c!486549 call!197172)))

(declare-fun lt!1035339 () Regex!9233)

(declare-fun c!486547 () Bool)

(declare-fun bm!197166 () Bool)

(declare-fun c!486553 () Bool)

(assert (=> bm!197166 (= call!197171 (isEmptyLang!349 (ite c!486553 lt!1035339 (ite c!486547 lt!1035343 lt!1035340))))))

(declare-fun b!2966626 () Bool)

(assert (=> b!2966626 (= e!1866945 e!1866937)))

(assert (=> b!2966626 (= lt!1035340 call!197174)))

(declare-fun lt!1035341 () Regex!9233)

(assert (=> b!2966626 (= lt!1035341 call!197173)))

(declare-fun res!1223640 () Bool)

(assert (=> b!2966626 (= res!1223640 call!197172)))

(assert (=> b!2966626 (=> res!1223640 e!1866941)))

(declare-fun c!486554 () Bool)

(assert (=> b!2966626 (= c!486554 e!1866941)))

(declare-fun b!2966627 () Bool)

(declare-fun e!1866946 () Bool)

(assert (=> b!2966627 (= e!1866946 call!197170)))

(declare-fun b!2966628 () Bool)

(assert (=> b!2966628 (= e!1866943 e!1866935)))

(declare-fun c!486552 () Bool)

(declare-fun isEmptyExpr!408 (Regex!9233) Bool)

(assert (=> b!2966628 (= c!486552 (isEmptyExpr!408 lt!1035341))))

(declare-fun b!2966629 () Bool)

(declare-fun e!1866934 () Regex!9233)

(assert (=> b!2966629 (= e!1866934 (Star!9233 lt!1035339))))

(declare-fun b!2966630 () Bool)

(declare-fun e!1866947 () Regex!9233)

(assert (=> b!2966630 (= e!1866947 (regTwo!18979 r!17423))))

(declare-fun b!2966631 () Bool)

(assert (=> b!2966631 (= e!1866939 lt!1035342)))

(declare-fun b!2966632 () Bool)

(declare-fun e!1866940 () Regex!9233)

(assert (=> b!2966632 (= e!1866940 EmptyLang!9233)))

(declare-fun bm!197167 () Bool)

(assert (=> bm!197167 (= call!197170 (isEmptyExpr!408 (ite c!486553 lt!1035339 lt!1035340)))))

(declare-fun bm!197168 () Bool)

(assert (=> bm!197168 (= call!197174 (simplify!236 (ite c!486547 (regTwo!18979 (regTwo!18979 r!17423)) (regOne!18978 (regTwo!18979 r!17423)))))))

(declare-fun b!2966633 () Bool)

(assert (=> b!2966633 (= e!1866940 e!1866947)))

(declare-fun c!486550 () Bool)

(assert (=> b!2966633 (= c!486550 ((_ is ElementMatch!9233) (regTwo!18979 r!17423)))))

(declare-fun b!2966634 () Bool)

(declare-fun e!1866942 () Regex!9233)

(assert (=> b!2966634 (= e!1866944 e!1866942)))

(assert (=> b!2966634 (= c!486553 ((_ is Star!9233) (regTwo!18979 r!17423)))))

(declare-fun b!2966635 () Bool)

(declare-fun e!1866936 () Regex!9233)

(assert (=> b!2966635 (= e!1866936 lt!1035343)))

(declare-fun bm!197169 () Bool)

(assert (=> bm!197169 (= call!197175 (isEmptyLang!349 (ite c!486547 lt!1035342 lt!1035341)))))

(declare-fun d!842386 () Bool)

(declare-fun e!1866938 () Bool)

(assert (=> d!842386 e!1866938))

(declare-fun res!1223639 () Bool)

(assert (=> d!842386 (=> (not res!1223639) (not e!1866938))))

(declare-fun lt!1035338 () Regex!9233)

(assert (=> d!842386 (= res!1223639 (validRegex!3966 lt!1035338))))

(assert (=> d!842386 (= lt!1035338 e!1866940)))

(declare-fun c!486556 () Bool)

(assert (=> d!842386 (= c!486556 ((_ is EmptyLang!9233) (regTwo!18979 r!17423)))))

(assert (=> d!842386 (validRegex!3966 (regTwo!18979 r!17423))))

(assert (=> d!842386 (= (simplify!236 (regTwo!18979 r!17423)) lt!1035338)))

(declare-fun b!2966636 () Bool)

(assert (=> b!2966636 (= c!486547 ((_ is Union!9233) (regTwo!18979 r!17423)))))

(assert (=> b!2966636 (= e!1866942 e!1866945)))

(declare-fun bm!197170 () Bool)

(assert (=> bm!197170 (= call!197169 (simplify!236 (ite c!486553 (reg!9562 (regTwo!18979 r!17423)) (ite c!486547 (regOne!18979 (regTwo!18979 r!17423)) (regTwo!18978 (regTwo!18979 r!17423))))))))

(declare-fun b!2966637 () Bool)

(declare-fun c!486548 () Bool)

(assert (=> b!2966637 (= c!486548 call!197175)))

(assert (=> b!2966637 (= e!1866939 e!1866936)))

(declare-fun b!2966638 () Bool)

(declare-fun c!486551 () Bool)

(assert (=> b!2966638 (= c!486551 e!1866946)))

(declare-fun res!1223641 () Bool)

(assert (=> b!2966638 (=> res!1223641 e!1866946)))

(assert (=> b!2966638 (= res!1223641 call!197171)))

(assert (=> b!2966638 (= lt!1035339 call!197169)))

(assert (=> b!2966638 (= e!1866942 e!1866934)))

(declare-fun b!2966639 () Bool)

(assert (=> b!2966639 (= e!1866938 (= (nullable!2950 lt!1035338) (nullable!2950 (regTwo!18979 r!17423))))))

(declare-fun b!2966640 () Bool)

(assert (=> b!2966640 (= e!1866935 (Concat!14554 lt!1035340 lt!1035341))))

(declare-fun b!2966641 () Bool)

(assert (=> b!2966641 (= e!1866934 EmptyExpr!9233)))

(declare-fun b!2966642 () Bool)

(assert (=> b!2966642 (= e!1866943 lt!1035341)))

(declare-fun b!2966643 () Bool)

(assert (=> b!2966643 (= e!1866936 (Union!9233 lt!1035343 lt!1035342))))

(declare-fun b!2966644 () Bool)

(declare-fun c!486555 () Bool)

(assert (=> b!2966644 (= c!486555 ((_ is EmptyExpr!9233) (regTwo!18979 r!17423)))))

(assert (=> b!2966644 (= e!1866947 e!1866944)))

(assert (= (and d!842386 c!486556) b!2966632))

(assert (= (and d!842386 (not c!486556)) b!2966633))

(assert (= (and b!2966633 c!486550) b!2966630))

(assert (= (and b!2966633 (not c!486550)) b!2966644))

(assert (= (and b!2966644 c!486555) b!2966620))

(assert (= (and b!2966644 (not c!486555)) b!2966634))

(assert (= (and b!2966634 c!486553) b!2966638))

(assert (= (and b!2966634 (not c!486553)) b!2966636))

(assert (= (and b!2966638 (not res!1223641)) b!2966627))

(assert (= (and b!2966638 c!486551) b!2966641))

(assert (= (and b!2966638 (not c!486551)) b!2966629))

(assert (= (and b!2966636 c!486547) b!2966625))

(assert (= (and b!2966636 (not c!486547)) b!2966626))

(assert (= (and b!2966625 c!486549) b!2966631))

(assert (= (and b!2966625 (not c!486549)) b!2966637))

(assert (= (and b!2966637 c!486548) b!2966635))

(assert (= (and b!2966637 (not c!486548)) b!2966643))

(assert (= (and b!2966626 (not res!1223640)) b!2966621))

(assert (= (and b!2966626 c!486554) b!2966624))

(assert (= (and b!2966626 (not c!486554)) b!2966623))

(assert (= (and b!2966623 c!486546) b!2966642))

(assert (= (and b!2966623 (not c!486546)) b!2966628))

(assert (= (and b!2966628 c!486552) b!2966622))

(assert (= (and b!2966628 (not c!486552)) b!2966640))

(assert (= (or b!2966625 b!2966626) bm!197164))

(assert (= (or b!2966625 b!2966626) bm!197168))

(assert (= (or b!2966625 b!2966626) bm!197165))

(assert (= (or b!2966637 b!2966621) bm!197169))

(assert (= (or b!2966627 b!2966623) bm!197167))

(assert (= (or b!2966638 bm!197164) bm!197170))

(assert (= (or b!2966638 bm!197165) bm!197166))

(assert (= (and d!842386 res!1223639) b!2966639))

(declare-fun m!3336625 () Bool)

(assert (=> d!842386 m!3336625))

(assert (=> d!842386 m!3336541))

(declare-fun m!3336627 () Bool)

(assert (=> b!2966628 m!3336627))

(declare-fun m!3336629 () Bool)

(assert (=> bm!197168 m!3336629))

(declare-fun m!3336631 () Bool)

(assert (=> bm!197166 m!3336631))

(declare-fun m!3336633 () Bool)

(assert (=> bm!197167 m!3336633))

(declare-fun m!3336635 () Bool)

(assert (=> b!2966639 m!3336635))

(declare-fun m!3336637 () Bool)

(assert (=> b!2966639 m!3336637))

(declare-fun m!3336639 () Bool)

(assert (=> bm!197170 m!3336639))

(declare-fun m!3336641 () Bool)

(assert (=> bm!197169 m!3336641))

(assert (=> b!2966369 d!842386))

(declare-fun b!2966649 () Bool)

(declare-fun e!1866962 () Regex!9233)

(assert (=> b!2966649 (= e!1866962 EmptyExpr!9233)))

(declare-fun b!2966650 () Bool)

(declare-fun e!1866959 () Bool)

(declare-fun call!197182 () Bool)

(assert (=> b!2966650 (= e!1866959 call!197182)))

(declare-fun b!2966651 () Bool)

(declare-fun e!1866953 () Regex!9233)

(declare-fun lt!1035348 () Regex!9233)

(assert (=> b!2966651 (= e!1866953 lt!1035348)))

(declare-fun b!2966652 () Bool)

(declare-fun c!486557 () Bool)

(declare-fun call!197177 () Bool)

(assert (=> b!2966652 (= c!486557 call!197177)))

(declare-fun e!1866955 () Regex!9233)

(declare-fun e!1866961 () Regex!9233)

(assert (=> b!2966652 (= e!1866955 e!1866961)))

(declare-fun b!2966653 () Bool)

(assert (=> b!2966653 (= e!1866955 EmptyLang!9233)))

(declare-fun bm!197171 () Bool)

(declare-fun call!197180 () Regex!9233)

(declare-fun call!197176 () Regex!9233)

(assert (=> bm!197171 (= call!197180 call!197176)))

(declare-fun bm!197172 () Bool)

(declare-fun call!197179 () Bool)

(declare-fun call!197178 () Bool)

(assert (=> bm!197172 (= call!197179 call!197178)))

(declare-fun b!2966654 () Bool)

(declare-fun e!1866963 () Regex!9233)

(declare-fun e!1866957 () Regex!9233)

(assert (=> b!2966654 (= e!1866963 e!1866957)))

(declare-fun lt!1035351 () Regex!9233)

(assert (=> b!2966654 (= lt!1035351 call!197180)))

(declare-fun lt!1035350 () Regex!9233)

(declare-fun call!197181 () Regex!9233)

(assert (=> b!2966654 (= lt!1035350 call!197181)))

(declare-fun c!486560 () Bool)

(assert (=> b!2966654 (= c!486560 call!197179)))

(declare-fun lt!1035347 () Regex!9233)

(declare-fun c!486564 () Bool)

(declare-fun bm!197173 () Bool)

(declare-fun c!486558 () Bool)

(assert (=> bm!197173 (= call!197178 (isEmptyLang!349 (ite c!486564 lt!1035347 (ite c!486558 lt!1035351 lt!1035348))))))

(declare-fun b!2966655 () Bool)

(assert (=> b!2966655 (= e!1866963 e!1866955)))

(assert (=> b!2966655 (= lt!1035348 call!197181)))

(declare-fun lt!1035349 () Regex!9233)

(assert (=> b!2966655 (= lt!1035349 call!197180)))

(declare-fun res!1223647 () Bool)

(assert (=> b!2966655 (= res!1223647 call!197179)))

(assert (=> b!2966655 (=> res!1223647 e!1866959)))

(declare-fun c!486565 () Bool)

(assert (=> b!2966655 (= c!486565 e!1866959)))

(declare-fun b!2966656 () Bool)

(declare-fun e!1866964 () Bool)

(assert (=> b!2966656 (= e!1866964 call!197177)))

(declare-fun b!2966657 () Bool)

(assert (=> b!2966657 (= e!1866961 e!1866953)))

(declare-fun c!486563 () Bool)

(assert (=> b!2966657 (= c!486563 (isEmptyExpr!408 lt!1035349))))

(declare-fun b!2966658 () Bool)

(declare-fun e!1866952 () Regex!9233)

(assert (=> b!2966658 (= e!1866952 (Star!9233 lt!1035347))))

(declare-fun b!2966659 () Bool)

(declare-fun e!1866965 () Regex!9233)

(assert (=> b!2966659 (= e!1866965 (regOne!18979 r!17423))))

(declare-fun b!2966660 () Bool)

(assert (=> b!2966660 (= e!1866957 lt!1035350)))

(declare-fun b!2966661 () Bool)

(declare-fun e!1866958 () Regex!9233)

(assert (=> b!2966661 (= e!1866958 EmptyLang!9233)))

(declare-fun bm!197174 () Bool)

(assert (=> bm!197174 (= call!197177 (isEmptyExpr!408 (ite c!486564 lt!1035347 lt!1035348)))))

(declare-fun bm!197175 () Bool)

(assert (=> bm!197175 (= call!197181 (simplify!236 (ite c!486558 (regTwo!18979 (regOne!18979 r!17423)) (regOne!18978 (regOne!18979 r!17423)))))))

(declare-fun b!2966662 () Bool)

(assert (=> b!2966662 (= e!1866958 e!1866965)))

(declare-fun c!486561 () Bool)

(assert (=> b!2966662 (= c!486561 ((_ is ElementMatch!9233) (regOne!18979 r!17423)))))

(declare-fun b!2966663 () Bool)

(declare-fun e!1866960 () Regex!9233)

(assert (=> b!2966663 (= e!1866962 e!1866960)))

(assert (=> b!2966663 (= c!486564 ((_ is Star!9233) (regOne!18979 r!17423)))))

(declare-fun b!2966664 () Bool)

(declare-fun e!1866954 () Regex!9233)

(assert (=> b!2966664 (= e!1866954 lt!1035351)))

(declare-fun bm!197176 () Bool)

(assert (=> bm!197176 (= call!197182 (isEmptyLang!349 (ite c!486558 lt!1035350 lt!1035349)))))

(declare-fun d!842396 () Bool)

(declare-fun e!1866956 () Bool)

(assert (=> d!842396 e!1866956))

(declare-fun res!1223646 () Bool)

(assert (=> d!842396 (=> (not res!1223646) (not e!1866956))))

(declare-fun lt!1035346 () Regex!9233)

(assert (=> d!842396 (= res!1223646 (validRegex!3966 lt!1035346))))

(assert (=> d!842396 (= lt!1035346 e!1866958)))

(declare-fun c!486567 () Bool)

(assert (=> d!842396 (= c!486567 ((_ is EmptyLang!9233) (regOne!18979 r!17423)))))

(assert (=> d!842396 (validRegex!3966 (regOne!18979 r!17423))))

(assert (=> d!842396 (= (simplify!236 (regOne!18979 r!17423)) lt!1035346)))

(declare-fun b!2966665 () Bool)

(assert (=> b!2966665 (= c!486558 ((_ is Union!9233) (regOne!18979 r!17423)))))

(assert (=> b!2966665 (= e!1866960 e!1866963)))

(declare-fun bm!197177 () Bool)

(assert (=> bm!197177 (= call!197176 (simplify!236 (ite c!486564 (reg!9562 (regOne!18979 r!17423)) (ite c!486558 (regOne!18979 (regOne!18979 r!17423)) (regTwo!18978 (regOne!18979 r!17423))))))))

(declare-fun b!2966666 () Bool)

(declare-fun c!486559 () Bool)

(assert (=> b!2966666 (= c!486559 call!197182)))

(assert (=> b!2966666 (= e!1866957 e!1866954)))

(declare-fun b!2966667 () Bool)

(declare-fun c!486562 () Bool)

(assert (=> b!2966667 (= c!486562 e!1866964)))

(declare-fun res!1223648 () Bool)

(assert (=> b!2966667 (=> res!1223648 e!1866964)))

(assert (=> b!2966667 (= res!1223648 call!197178)))

(assert (=> b!2966667 (= lt!1035347 call!197176)))

(assert (=> b!2966667 (= e!1866960 e!1866952)))

(declare-fun b!2966668 () Bool)

(assert (=> b!2966668 (= e!1866956 (= (nullable!2950 lt!1035346) (nullable!2950 (regOne!18979 r!17423))))))

(declare-fun b!2966669 () Bool)

(assert (=> b!2966669 (= e!1866953 (Concat!14554 lt!1035348 lt!1035349))))

(declare-fun b!2966670 () Bool)

(assert (=> b!2966670 (= e!1866952 EmptyExpr!9233)))

(declare-fun b!2966671 () Bool)

(assert (=> b!2966671 (= e!1866961 lt!1035349)))

(declare-fun b!2966672 () Bool)

(assert (=> b!2966672 (= e!1866954 (Union!9233 lt!1035351 lt!1035350))))

(declare-fun b!2966673 () Bool)

(declare-fun c!486566 () Bool)

(assert (=> b!2966673 (= c!486566 ((_ is EmptyExpr!9233) (regOne!18979 r!17423)))))

(assert (=> b!2966673 (= e!1866965 e!1866962)))

(assert (= (and d!842396 c!486567) b!2966661))

(assert (= (and d!842396 (not c!486567)) b!2966662))

(assert (= (and b!2966662 c!486561) b!2966659))

(assert (= (and b!2966662 (not c!486561)) b!2966673))

(assert (= (and b!2966673 c!486566) b!2966649))

(assert (= (and b!2966673 (not c!486566)) b!2966663))

(assert (= (and b!2966663 c!486564) b!2966667))

(assert (= (and b!2966663 (not c!486564)) b!2966665))

(assert (= (and b!2966667 (not res!1223648)) b!2966656))

(assert (= (and b!2966667 c!486562) b!2966670))

(assert (= (and b!2966667 (not c!486562)) b!2966658))

(assert (= (and b!2966665 c!486558) b!2966654))

(assert (= (and b!2966665 (not c!486558)) b!2966655))

(assert (= (and b!2966654 c!486560) b!2966660))

(assert (= (and b!2966654 (not c!486560)) b!2966666))

(assert (= (and b!2966666 c!486559) b!2966664))

(assert (= (and b!2966666 (not c!486559)) b!2966672))

(assert (= (and b!2966655 (not res!1223647)) b!2966650))

(assert (= (and b!2966655 c!486565) b!2966653))

(assert (= (and b!2966655 (not c!486565)) b!2966652))

(assert (= (and b!2966652 c!486557) b!2966671))

(assert (= (and b!2966652 (not c!486557)) b!2966657))

(assert (= (and b!2966657 c!486563) b!2966651))

(assert (= (and b!2966657 (not c!486563)) b!2966669))

(assert (= (or b!2966654 b!2966655) bm!197171))

(assert (= (or b!2966654 b!2966655) bm!197175))

(assert (= (or b!2966654 b!2966655) bm!197172))

(assert (= (or b!2966666 b!2966650) bm!197176))

(assert (= (or b!2966656 b!2966652) bm!197174))

(assert (= (or b!2966667 bm!197171) bm!197177))

(assert (= (or b!2966667 bm!197172) bm!197173))

(assert (= (and d!842396 res!1223646) b!2966668))

(declare-fun m!3336647 () Bool)

(assert (=> d!842396 m!3336647))

(declare-fun m!3336649 () Bool)

(assert (=> d!842396 m!3336649))

(declare-fun m!3336651 () Bool)

(assert (=> b!2966657 m!3336651))

(declare-fun m!3336653 () Bool)

(assert (=> bm!197175 m!3336653))

(declare-fun m!3336655 () Bool)

(assert (=> bm!197173 m!3336655))

(declare-fun m!3336657 () Bool)

(assert (=> bm!197174 m!3336657))

(declare-fun m!3336659 () Bool)

(assert (=> b!2966668 m!3336659))

(declare-fun m!3336661 () Bool)

(assert (=> b!2966668 m!3336661))

(declare-fun m!3336663 () Bool)

(assert (=> bm!197177 m!3336663))

(declare-fun m!3336665 () Bool)

(assert (=> bm!197176 m!3336665))

(assert (=> b!2966369 d!842396))

(declare-fun c!486583 () Bool)

(declare-fun call!197203 () Bool)

(declare-fun bm!197197 () Bool)

(declare-fun c!486584 () Bool)

(assert (=> bm!197197 (= call!197203 (validRegex!3966 (ite c!486583 (reg!9562 (regTwo!18979 r!17423)) (ite c!486584 (regTwo!18979 (regTwo!18979 r!17423)) (regOne!18978 (regTwo!18979 r!17423))))))))

(declare-fun b!2966744 () Bool)

(declare-fun e!1867020 () Bool)

(declare-fun call!197202 () Bool)

(assert (=> b!2966744 (= e!1867020 call!197202)))

(declare-fun b!2966745 () Bool)

(declare-fun e!1867021 () Bool)

(declare-fun e!1867019 () Bool)

(assert (=> b!2966745 (= e!1867021 e!1867019)))

(assert (=> b!2966745 (= c!486583 ((_ is Star!9233) (regTwo!18979 r!17423)))))

(declare-fun bm!197198 () Bool)

(declare-fun call!197204 () Bool)

(assert (=> bm!197198 (= call!197204 (validRegex!3966 (ite c!486584 (regOne!18979 (regTwo!18979 r!17423)) (regTwo!18978 (regTwo!18979 r!17423)))))))

(declare-fun b!2966746 () Bool)

(declare-fun res!1223693 () Bool)

(assert (=> b!2966746 (=> (not res!1223693) (not e!1867020))))

(assert (=> b!2966746 (= res!1223693 call!197204)))

(declare-fun e!1867018 () Bool)

(assert (=> b!2966746 (= e!1867018 e!1867020)))

(declare-fun b!2966747 () Bool)

(declare-fun e!1867022 () Bool)

(declare-fun e!1867023 () Bool)

(assert (=> b!2966747 (= e!1867022 e!1867023)))

(declare-fun res!1223689 () Bool)

(assert (=> b!2966747 (=> (not res!1223689) (not e!1867023))))

(assert (=> b!2966747 (= res!1223689 call!197202)))

(declare-fun b!2966749 () Bool)

(assert (=> b!2966749 (= e!1867023 call!197204)))

(declare-fun b!2966750 () Bool)

(declare-fun e!1867017 () Bool)

(assert (=> b!2966750 (= e!1867017 call!197203)))

(declare-fun bm!197199 () Bool)

(assert (=> bm!197199 (= call!197202 call!197203)))

(declare-fun b!2966751 () Bool)

(assert (=> b!2966751 (= e!1867019 e!1867017)))

(declare-fun res!1223692 () Bool)

(assert (=> b!2966751 (= res!1223692 (not (nullable!2950 (reg!9562 (regTwo!18979 r!17423)))))))

(assert (=> b!2966751 (=> (not res!1223692) (not e!1867017))))

(declare-fun b!2966752 () Bool)

(assert (=> b!2966752 (= e!1867019 e!1867018)))

(assert (=> b!2966752 (= c!486584 ((_ is Union!9233) (regTwo!18979 r!17423)))))

(declare-fun b!2966748 () Bool)

(declare-fun res!1223690 () Bool)

(assert (=> b!2966748 (=> res!1223690 e!1867022)))

(assert (=> b!2966748 (= res!1223690 (not ((_ is Concat!14554) (regTwo!18979 r!17423))))))

(assert (=> b!2966748 (= e!1867018 e!1867022)))

(declare-fun d!842400 () Bool)

(declare-fun res!1223691 () Bool)

(assert (=> d!842400 (=> res!1223691 e!1867021)))

(assert (=> d!842400 (= res!1223691 ((_ is ElementMatch!9233) (regTwo!18979 r!17423)))))

(assert (=> d!842400 (= (validRegex!3966 (regTwo!18979 r!17423)) e!1867021)))

(assert (= (and d!842400 (not res!1223691)) b!2966745))

(assert (= (and b!2966745 c!486583) b!2966751))

(assert (= (and b!2966745 (not c!486583)) b!2966752))

(assert (= (and b!2966751 res!1223692) b!2966750))

(assert (= (and b!2966752 c!486584) b!2966746))

(assert (= (and b!2966752 (not c!486584)) b!2966748))

(assert (= (and b!2966746 res!1223693) b!2966744))

(assert (= (and b!2966748 (not res!1223690)) b!2966747))

(assert (= (and b!2966747 res!1223689) b!2966749))

(assert (= (or b!2966746 b!2966749) bm!197198))

(assert (= (or b!2966744 b!2966747) bm!197199))

(assert (= (or b!2966750 bm!197199) bm!197197))

(declare-fun m!3336687 () Bool)

(assert (=> bm!197197 m!3336687))

(declare-fun m!3336689 () Bool)

(assert (=> bm!197198 m!3336689))

(declare-fun m!3336691 () Bool)

(assert (=> b!2966751 m!3336691))

(assert (=> b!2966376 d!842400))

(declare-fun b!2966767 () Bool)

(declare-fun e!1867033 () Bool)

(declare-fun lt!1035355 () Bool)

(declare-fun call!197206 () Bool)

(assert (=> b!2966767 (= e!1867033 (= lt!1035355 call!197206))))

(declare-fun d!842408 () Bool)

(assert (=> d!842408 e!1867033))

(declare-fun c!486589 () Bool)

(assert (=> d!842408 (= c!486589 ((_ is EmptyExpr!9233) (regTwo!18979 r!17423)))))

(declare-fun e!1867034 () Bool)

(assert (=> d!842408 (= lt!1035355 e!1867034)))

(declare-fun c!486590 () Bool)

(assert (=> d!842408 (= c!486590 (isEmpty!19230 s!11993))))

(assert (=> d!842408 (validRegex!3966 (regTwo!18979 r!17423))))

(assert (=> d!842408 (= (matchR!4115 (regTwo!18979 r!17423) s!11993) lt!1035355)))

(declare-fun b!2966768 () Bool)

(declare-fun e!1867036 () Bool)

(assert (=> b!2966768 (= e!1867033 e!1867036)))

(declare-fun c!486588 () Bool)

(assert (=> b!2966768 (= c!486588 ((_ is EmptyLang!9233) (regTwo!18979 r!17423)))))

(declare-fun b!2966769 () Bool)

(declare-fun res!1223705 () Bool)

(declare-fun e!1867035 () Bool)

(assert (=> b!2966769 (=> res!1223705 e!1867035)))

(declare-fun e!1867032 () Bool)

(assert (=> b!2966769 (= res!1223705 e!1867032)))

(declare-fun res!1223708 () Bool)

(assert (=> b!2966769 (=> (not res!1223708) (not e!1867032))))

(assert (=> b!2966769 (= res!1223708 lt!1035355)))

(declare-fun b!2966770 () Bool)

(declare-fun res!1223704 () Bool)

(assert (=> b!2966770 (=> (not res!1223704) (not e!1867032))))

(assert (=> b!2966770 (= res!1223704 (isEmpty!19230 (tail!4836 s!11993)))))

(declare-fun b!2966771 () Bool)

(assert (=> b!2966771 (= e!1867034 (matchR!4115 (derivativeStep!2551 (regTwo!18979 r!17423) (head!6610 s!11993)) (tail!4836 s!11993)))))

(declare-fun b!2966772 () Bool)

(assert (=> b!2966772 (= e!1867032 (= (head!6610 s!11993) (c!486461 (regTwo!18979 r!17423))))))

(declare-fun b!2966773 () Bool)

(assert (=> b!2966773 (= e!1867036 (not lt!1035355))))

(declare-fun b!2966774 () Bool)

(assert (=> b!2966774 (= e!1867034 (nullable!2950 (regTwo!18979 r!17423)))))

(declare-fun b!2966775 () Bool)

(declare-fun res!1223706 () Bool)

(assert (=> b!2966775 (=> (not res!1223706) (not e!1867032))))

(assert (=> b!2966775 (= res!1223706 (not call!197206))))

(declare-fun b!2966776 () Bool)

(declare-fun res!1223707 () Bool)

(declare-fun e!1867037 () Bool)

(assert (=> b!2966776 (=> res!1223707 e!1867037)))

(assert (=> b!2966776 (= res!1223707 (not (isEmpty!19230 (tail!4836 s!11993))))))

(declare-fun b!2966777 () Bool)

(declare-fun e!1867031 () Bool)

(assert (=> b!2966777 (= e!1867035 e!1867031)))

(declare-fun res!1223709 () Bool)

(assert (=> b!2966777 (=> (not res!1223709) (not e!1867031))))

(assert (=> b!2966777 (= res!1223709 (not lt!1035355))))

(declare-fun b!2966778 () Bool)

(assert (=> b!2966778 (= e!1867037 (not (= (head!6610 s!11993) (c!486461 (regTwo!18979 r!17423)))))))

(declare-fun b!2966779 () Bool)

(declare-fun res!1223702 () Bool)

(assert (=> b!2966779 (=> res!1223702 e!1867035)))

(assert (=> b!2966779 (= res!1223702 (not ((_ is ElementMatch!9233) (regTwo!18979 r!17423))))))

(assert (=> b!2966779 (= e!1867036 e!1867035)))

(declare-fun bm!197201 () Bool)

(assert (=> bm!197201 (= call!197206 (isEmpty!19230 s!11993))))

(declare-fun b!2966780 () Bool)

(assert (=> b!2966780 (= e!1867031 e!1867037)))

(declare-fun res!1223703 () Bool)

(assert (=> b!2966780 (=> res!1223703 e!1867037)))

(assert (=> b!2966780 (= res!1223703 call!197206)))

(assert (= (and d!842408 c!486590) b!2966774))

(assert (= (and d!842408 (not c!486590)) b!2966771))

(assert (= (and d!842408 c!486589) b!2966767))

(assert (= (and d!842408 (not c!486589)) b!2966768))

(assert (= (and b!2966768 c!486588) b!2966773))

(assert (= (and b!2966768 (not c!486588)) b!2966779))

(assert (= (and b!2966779 (not res!1223702)) b!2966769))

(assert (= (and b!2966769 res!1223708) b!2966775))

(assert (= (and b!2966775 res!1223706) b!2966770))

(assert (= (and b!2966770 res!1223704) b!2966772))

(assert (= (and b!2966769 (not res!1223705)) b!2966777))

(assert (= (and b!2966777 res!1223709) b!2966780))

(assert (= (and b!2966780 (not res!1223703)) b!2966776))

(assert (= (and b!2966776 (not res!1223707)) b!2966778))

(assert (= (or b!2966767 b!2966775 b!2966780) bm!197201))

(assert (=> b!2966778 m!3336551))

(assert (=> b!2966771 m!3336551))

(assert (=> b!2966771 m!3336551))

(declare-fun m!3336697 () Bool)

(assert (=> b!2966771 m!3336697))

(assert (=> b!2966771 m!3336555))

(assert (=> b!2966771 m!3336697))

(assert (=> b!2966771 m!3336555))

(declare-fun m!3336699 () Bool)

(assert (=> b!2966771 m!3336699))

(assert (=> b!2966776 m!3336555))

(assert (=> b!2966776 m!3336555))

(assert (=> b!2966776 m!3336559))

(assert (=> b!2966774 m!3336637))

(assert (=> d!842408 m!3336563))

(assert (=> d!842408 m!3336541))

(assert (=> b!2966772 m!3336551))

(assert (=> bm!197201 m!3336563))

(assert (=> b!2966770 m!3336555))

(assert (=> b!2966770 m!3336555))

(assert (=> b!2966770 m!3336559))

(assert (=> b!2966376 d!842408))

(declare-fun b!2966795 () Bool)

(declare-fun e!1867047 () Bool)

(declare-fun lt!1035357 () Bool)

(declare-fun call!197208 () Bool)

(assert (=> b!2966795 (= e!1867047 (= lt!1035357 call!197208))))

(declare-fun d!842412 () Bool)

(assert (=> d!842412 e!1867047))

(declare-fun c!486595 () Bool)

(assert (=> d!842412 (= c!486595 ((_ is EmptyExpr!9233) lt!1035290))))

(declare-fun e!1867048 () Bool)

(assert (=> d!842412 (= lt!1035357 e!1867048)))

(declare-fun c!486596 () Bool)

(assert (=> d!842412 (= c!486596 (isEmpty!19230 s!11993))))

(assert (=> d!842412 (validRegex!3966 lt!1035290)))

(assert (=> d!842412 (= (matchR!4115 lt!1035290 s!11993) lt!1035357)))

(declare-fun b!2966796 () Bool)

(declare-fun e!1867050 () Bool)

(assert (=> b!2966796 (= e!1867047 e!1867050)))

(declare-fun c!486594 () Bool)

(assert (=> b!2966796 (= c!486594 ((_ is EmptyLang!9233) lt!1035290))))

(declare-fun b!2966797 () Bool)

(declare-fun res!1223721 () Bool)

(declare-fun e!1867049 () Bool)

(assert (=> b!2966797 (=> res!1223721 e!1867049)))

(declare-fun e!1867046 () Bool)

(assert (=> b!2966797 (= res!1223721 e!1867046)))

(declare-fun res!1223724 () Bool)

(assert (=> b!2966797 (=> (not res!1223724) (not e!1867046))))

(assert (=> b!2966797 (= res!1223724 lt!1035357)))

(declare-fun b!2966798 () Bool)

(declare-fun res!1223720 () Bool)

(assert (=> b!2966798 (=> (not res!1223720) (not e!1867046))))

(assert (=> b!2966798 (= res!1223720 (isEmpty!19230 (tail!4836 s!11993)))))

(declare-fun b!2966799 () Bool)

(assert (=> b!2966799 (= e!1867048 (matchR!4115 (derivativeStep!2551 lt!1035290 (head!6610 s!11993)) (tail!4836 s!11993)))))

(declare-fun b!2966800 () Bool)

(assert (=> b!2966800 (= e!1867046 (= (head!6610 s!11993) (c!486461 lt!1035290)))))

(declare-fun b!2966801 () Bool)

(assert (=> b!2966801 (= e!1867050 (not lt!1035357))))

(declare-fun b!2966802 () Bool)

(assert (=> b!2966802 (= e!1867048 (nullable!2950 lt!1035290))))

(declare-fun b!2966803 () Bool)

(declare-fun res!1223722 () Bool)

(assert (=> b!2966803 (=> (not res!1223722) (not e!1867046))))

(assert (=> b!2966803 (= res!1223722 (not call!197208))))

(declare-fun b!2966804 () Bool)

(declare-fun res!1223723 () Bool)

(declare-fun e!1867051 () Bool)

(assert (=> b!2966804 (=> res!1223723 e!1867051)))

(assert (=> b!2966804 (= res!1223723 (not (isEmpty!19230 (tail!4836 s!11993))))))

(declare-fun b!2966805 () Bool)

(declare-fun e!1867045 () Bool)

(assert (=> b!2966805 (= e!1867049 e!1867045)))

(declare-fun res!1223725 () Bool)

(assert (=> b!2966805 (=> (not res!1223725) (not e!1867045))))

(assert (=> b!2966805 (= res!1223725 (not lt!1035357))))

(declare-fun b!2966806 () Bool)

(assert (=> b!2966806 (= e!1867051 (not (= (head!6610 s!11993) (c!486461 lt!1035290))))))

(declare-fun b!2966807 () Bool)

(declare-fun res!1223718 () Bool)

(assert (=> b!2966807 (=> res!1223718 e!1867049)))

(assert (=> b!2966807 (= res!1223718 (not ((_ is ElementMatch!9233) lt!1035290)))))

(assert (=> b!2966807 (= e!1867050 e!1867049)))

(declare-fun bm!197203 () Bool)

(assert (=> bm!197203 (= call!197208 (isEmpty!19230 s!11993))))

(declare-fun b!2966808 () Bool)

(assert (=> b!2966808 (= e!1867045 e!1867051)))

(declare-fun res!1223719 () Bool)

(assert (=> b!2966808 (=> res!1223719 e!1867051)))

(assert (=> b!2966808 (= res!1223719 call!197208)))

(assert (= (and d!842412 c!486596) b!2966802))

(assert (= (and d!842412 (not c!486596)) b!2966799))

(assert (= (and d!842412 c!486595) b!2966795))

(assert (= (and d!842412 (not c!486595)) b!2966796))

(assert (= (and b!2966796 c!486594) b!2966801))

(assert (= (and b!2966796 (not c!486594)) b!2966807))

(assert (= (and b!2966807 (not res!1223718)) b!2966797))

(assert (= (and b!2966797 res!1223724) b!2966803))

(assert (= (and b!2966803 res!1223722) b!2966798))

(assert (= (and b!2966798 res!1223720) b!2966800))

(assert (= (and b!2966797 (not res!1223721)) b!2966805))

(assert (= (and b!2966805 res!1223725) b!2966808))

(assert (= (and b!2966808 (not res!1223719)) b!2966804))

(assert (= (and b!2966804 (not res!1223723)) b!2966806))

(assert (= (or b!2966795 b!2966803 b!2966808) bm!197203))

(assert (=> b!2966806 m!3336551))

(assert (=> b!2966799 m!3336551))

(assert (=> b!2966799 m!3336551))

(declare-fun m!3336707 () Bool)

(assert (=> b!2966799 m!3336707))

(assert (=> b!2966799 m!3336555))

(assert (=> b!2966799 m!3336707))

(assert (=> b!2966799 m!3336555))

(declare-fun m!3336709 () Bool)

(assert (=> b!2966799 m!3336709))

(assert (=> b!2966804 m!3336555))

(assert (=> b!2966804 m!3336555))

(assert (=> b!2966804 m!3336559))

(declare-fun m!3336711 () Bool)

(assert (=> b!2966802 m!3336711))

(assert (=> d!842412 m!3336563))

(assert (=> d!842412 m!3336569))

(assert (=> b!2966800 m!3336551))

(assert (=> bm!197203 m!3336563))

(assert (=> b!2966798 m!3336555))

(assert (=> b!2966798 m!3336555))

(assert (=> b!2966798 m!3336559))

(assert (=> b!2966376 d!842412))

(declare-fun d!842416 () Bool)

(assert (=> d!842416 (= (matchR!4115 (regTwo!18979 r!17423) s!11993) (matchR!4115 (simplify!236 (regTwo!18979 r!17423)) s!11993))))

(declare-fun lt!1035363 () Unit!48845)

(declare-fun choose!17548 (Regex!9233 List!35098) Unit!48845)

(assert (=> d!842416 (= lt!1035363 (choose!17548 (regTwo!18979 r!17423) s!11993))))

(assert (=> d!842416 (validRegex!3966 (regTwo!18979 r!17423))))

(assert (=> d!842416 (= (lemmaSimplifySound!150 (regTwo!18979 r!17423) s!11993) lt!1035363)))

(declare-fun bs!526417 () Bool)

(assert (= bs!526417 d!842416))

(assert (=> bs!526417 m!3336541))

(assert (=> bs!526417 m!3336527))

(declare-fun m!3336717 () Bool)

(assert (=> bs!526417 m!3336717))

(declare-fun m!3336719 () Bool)

(assert (=> bs!526417 m!3336719))

(assert (=> bs!526417 m!3336527))

(assert (=> bs!526417 m!3336543))

(assert (=> b!2966376 d!842416))

(assert (=> b!2966372 d!842412))

(declare-fun bm!197204 () Bool)

(declare-fun call!197210 () Bool)

(declare-fun c!486597 () Bool)

(declare-fun c!486598 () Bool)

(assert (=> bm!197204 (= call!197210 (validRegex!3966 (ite c!486597 (reg!9562 r!17423) (ite c!486598 (regTwo!18979 r!17423) (regOne!18978 r!17423)))))))

(declare-fun b!2966809 () Bool)

(declare-fun e!1867055 () Bool)

(declare-fun call!197209 () Bool)

(assert (=> b!2966809 (= e!1867055 call!197209)))

(declare-fun b!2966810 () Bool)

(declare-fun e!1867056 () Bool)

(declare-fun e!1867054 () Bool)

(assert (=> b!2966810 (= e!1867056 e!1867054)))

(assert (=> b!2966810 (= c!486597 ((_ is Star!9233) r!17423))))

(declare-fun bm!197205 () Bool)

(declare-fun call!197211 () Bool)

(assert (=> bm!197205 (= call!197211 (validRegex!3966 (ite c!486598 (regOne!18979 r!17423) (regTwo!18978 r!17423))))))

(declare-fun b!2966811 () Bool)

(declare-fun res!1223730 () Bool)

(assert (=> b!2966811 (=> (not res!1223730) (not e!1867055))))

(assert (=> b!2966811 (= res!1223730 call!197211)))

(declare-fun e!1867053 () Bool)

(assert (=> b!2966811 (= e!1867053 e!1867055)))

(declare-fun b!2966812 () Bool)

(declare-fun e!1867057 () Bool)

(declare-fun e!1867058 () Bool)

(assert (=> b!2966812 (= e!1867057 e!1867058)))

(declare-fun res!1223726 () Bool)

(assert (=> b!2966812 (=> (not res!1223726) (not e!1867058))))

(assert (=> b!2966812 (= res!1223726 call!197209)))

(declare-fun b!2966814 () Bool)

(assert (=> b!2966814 (= e!1867058 call!197211)))

(declare-fun b!2966815 () Bool)

(declare-fun e!1867052 () Bool)

(assert (=> b!2966815 (= e!1867052 call!197210)))

(declare-fun bm!197206 () Bool)

(assert (=> bm!197206 (= call!197209 call!197210)))

(declare-fun b!2966816 () Bool)

(assert (=> b!2966816 (= e!1867054 e!1867052)))

(declare-fun res!1223729 () Bool)

(assert (=> b!2966816 (= res!1223729 (not (nullable!2950 (reg!9562 r!17423))))))

(assert (=> b!2966816 (=> (not res!1223729) (not e!1867052))))

(declare-fun b!2966817 () Bool)

(assert (=> b!2966817 (= e!1867054 e!1867053)))

(assert (=> b!2966817 (= c!486598 ((_ is Union!9233) r!17423))))

(declare-fun b!2966813 () Bool)

(declare-fun res!1223727 () Bool)

(assert (=> b!2966813 (=> res!1223727 e!1867057)))

(assert (=> b!2966813 (= res!1223727 (not ((_ is Concat!14554) r!17423)))))

(assert (=> b!2966813 (= e!1867053 e!1867057)))

(declare-fun d!842420 () Bool)

(declare-fun res!1223728 () Bool)

(assert (=> d!842420 (=> res!1223728 e!1867056)))

(assert (=> d!842420 (= res!1223728 ((_ is ElementMatch!9233) r!17423))))

(assert (=> d!842420 (= (validRegex!3966 r!17423) e!1867056)))

(assert (= (and d!842420 (not res!1223728)) b!2966810))

(assert (= (and b!2966810 c!486597) b!2966816))

(assert (= (and b!2966810 (not c!486597)) b!2966817))

(assert (= (and b!2966816 res!1223729) b!2966815))

(assert (= (and b!2966817 c!486598) b!2966811))

(assert (= (and b!2966817 (not c!486598)) b!2966813))

(assert (= (and b!2966811 res!1223730) b!2966809))

(assert (= (and b!2966813 (not res!1223727)) b!2966812))

(assert (= (and b!2966812 res!1223726) b!2966814))

(assert (= (or b!2966811 b!2966814) bm!197205))

(assert (= (or b!2966809 b!2966812) bm!197206))

(assert (= (or b!2966815 bm!197206) bm!197204))

(declare-fun m!3336721 () Bool)

(assert (=> bm!197204 m!3336721))

(declare-fun m!3336723 () Bool)

(assert (=> bm!197205 m!3336723))

(declare-fun m!3336725 () Bool)

(assert (=> b!2966816 m!3336725))

(assert (=> start!287164 d!842420))

(declare-fun b!2966818 () Bool)

(declare-fun e!1867061 () Bool)

(declare-fun lt!1035364 () Bool)

(declare-fun call!197212 () Bool)

(assert (=> b!2966818 (= e!1867061 (= lt!1035364 call!197212))))

(declare-fun d!842422 () Bool)

(assert (=> d!842422 e!1867061))

(declare-fun c!486600 () Bool)

(assert (=> d!842422 (= c!486600 ((_ is EmptyExpr!9233) (Union!9233 lt!1035288 lt!1035290)))))

(declare-fun e!1867062 () Bool)

(assert (=> d!842422 (= lt!1035364 e!1867062)))

(declare-fun c!486601 () Bool)

(assert (=> d!842422 (= c!486601 (isEmpty!19230 s!11993))))

(assert (=> d!842422 (validRegex!3966 (Union!9233 lt!1035288 lt!1035290))))

(assert (=> d!842422 (= (matchR!4115 (Union!9233 lt!1035288 lt!1035290) s!11993) lt!1035364)))

(declare-fun b!2966819 () Bool)

(declare-fun e!1867064 () Bool)

(assert (=> b!2966819 (= e!1867061 e!1867064)))

(declare-fun c!486599 () Bool)

(assert (=> b!2966819 (= c!486599 ((_ is EmptyLang!9233) (Union!9233 lt!1035288 lt!1035290)))))

(declare-fun b!2966820 () Bool)

(declare-fun res!1223734 () Bool)

(declare-fun e!1867063 () Bool)

(assert (=> b!2966820 (=> res!1223734 e!1867063)))

(declare-fun e!1867060 () Bool)

(assert (=> b!2966820 (= res!1223734 e!1867060)))

(declare-fun res!1223737 () Bool)

(assert (=> b!2966820 (=> (not res!1223737) (not e!1867060))))

(assert (=> b!2966820 (= res!1223737 lt!1035364)))

(declare-fun b!2966821 () Bool)

(declare-fun res!1223733 () Bool)

(assert (=> b!2966821 (=> (not res!1223733) (not e!1867060))))

(assert (=> b!2966821 (= res!1223733 (isEmpty!19230 (tail!4836 s!11993)))))

(declare-fun b!2966822 () Bool)

(assert (=> b!2966822 (= e!1867062 (matchR!4115 (derivativeStep!2551 (Union!9233 lt!1035288 lt!1035290) (head!6610 s!11993)) (tail!4836 s!11993)))))

(declare-fun b!2966823 () Bool)

(assert (=> b!2966823 (= e!1867060 (= (head!6610 s!11993) (c!486461 (Union!9233 lt!1035288 lt!1035290))))))

(declare-fun b!2966824 () Bool)

(assert (=> b!2966824 (= e!1867064 (not lt!1035364))))

(declare-fun b!2966825 () Bool)

(assert (=> b!2966825 (= e!1867062 (nullable!2950 (Union!9233 lt!1035288 lt!1035290)))))

(declare-fun b!2966826 () Bool)

(declare-fun res!1223735 () Bool)

(assert (=> b!2966826 (=> (not res!1223735) (not e!1867060))))

(assert (=> b!2966826 (= res!1223735 (not call!197212))))

(declare-fun b!2966827 () Bool)

(declare-fun res!1223736 () Bool)

(declare-fun e!1867065 () Bool)

(assert (=> b!2966827 (=> res!1223736 e!1867065)))

(assert (=> b!2966827 (= res!1223736 (not (isEmpty!19230 (tail!4836 s!11993))))))

(declare-fun b!2966828 () Bool)

(declare-fun e!1867059 () Bool)

(assert (=> b!2966828 (= e!1867063 e!1867059)))

(declare-fun res!1223738 () Bool)

(assert (=> b!2966828 (=> (not res!1223738) (not e!1867059))))

(assert (=> b!2966828 (= res!1223738 (not lt!1035364))))

(declare-fun b!2966829 () Bool)

(assert (=> b!2966829 (= e!1867065 (not (= (head!6610 s!11993) (c!486461 (Union!9233 lt!1035288 lt!1035290)))))))

(declare-fun b!2966830 () Bool)

(declare-fun res!1223731 () Bool)

(assert (=> b!2966830 (=> res!1223731 e!1867063)))

(assert (=> b!2966830 (= res!1223731 (not ((_ is ElementMatch!9233) (Union!9233 lt!1035288 lt!1035290))))))

(assert (=> b!2966830 (= e!1867064 e!1867063)))

(declare-fun bm!197207 () Bool)

(assert (=> bm!197207 (= call!197212 (isEmpty!19230 s!11993))))

(declare-fun b!2966831 () Bool)

(assert (=> b!2966831 (= e!1867059 e!1867065)))

(declare-fun res!1223732 () Bool)

(assert (=> b!2966831 (=> res!1223732 e!1867065)))

(assert (=> b!2966831 (= res!1223732 call!197212)))

(assert (= (and d!842422 c!486601) b!2966825))

(assert (= (and d!842422 (not c!486601)) b!2966822))

(assert (= (and d!842422 c!486600) b!2966818))

(assert (= (and d!842422 (not c!486600)) b!2966819))

(assert (= (and b!2966819 c!486599) b!2966824))

(assert (= (and b!2966819 (not c!486599)) b!2966830))

(assert (= (and b!2966830 (not res!1223731)) b!2966820))

(assert (= (and b!2966820 res!1223737) b!2966826))

(assert (= (and b!2966826 res!1223735) b!2966821))

(assert (= (and b!2966821 res!1223733) b!2966823))

(assert (= (and b!2966820 (not res!1223734)) b!2966828))

(assert (= (and b!2966828 res!1223738) b!2966831))

(assert (= (and b!2966831 (not res!1223732)) b!2966827))

(assert (= (and b!2966827 (not res!1223736)) b!2966829))

(assert (= (or b!2966818 b!2966826 b!2966831) bm!197207))

(assert (=> b!2966829 m!3336551))

(assert (=> b!2966822 m!3336551))

(assert (=> b!2966822 m!3336551))

(declare-fun m!3336727 () Bool)

(assert (=> b!2966822 m!3336727))

(assert (=> b!2966822 m!3336555))

(assert (=> b!2966822 m!3336727))

(assert (=> b!2966822 m!3336555))

(declare-fun m!3336729 () Bool)

(assert (=> b!2966822 m!3336729))

(assert (=> b!2966827 m!3336555))

(assert (=> b!2966827 m!3336555))

(assert (=> b!2966827 m!3336559))

(declare-fun m!3336731 () Bool)

(assert (=> b!2966825 m!3336731))

(assert (=> d!842422 m!3336563))

(declare-fun m!3336733 () Bool)

(assert (=> d!842422 m!3336733))

(assert (=> b!2966823 m!3336551))

(assert (=> bm!197207 m!3336563))

(assert (=> b!2966821 m!3336555))

(assert (=> b!2966821 m!3336555))

(assert (=> b!2966821 m!3336559))

(assert (=> b!2966377 d!842422))

(declare-fun b!2966961 () Bool)

(assert (=> b!2966961 true))

(assert (=> b!2966961 true))

(declare-fun bs!526420 () Bool)

(declare-fun b!2966963 () Bool)

(assert (= bs!526420 (and b!2966963 b!2966961)))

(declare-fun lambda!110470 () Int)

(declare-fun lambda!110469 () Int)

(assert (=> bs!526420 (not (= lambda!110470 lambda!110469))))

(assert (=> b!2966963 true))

(assert (=> b!2966963 true))

(declare-fun b!2966960 () Bool)

(declare-fun c!486628 () Bool)

(assert (=> b!2966960 (= c!486628 ((_ is ElementMatch!9233) r!17423))))

(declare-fun e!1867131 () Bool)

(declare-fun e!1867127 () Bool)

(assert (=> b!2966960 (= e!1867131 e!1867127)))

(declare-fun e!1867129 () Bool)

(declare-fun call!197225 () Bool)

(assert (=> b!2966961 (= e!1867129 call!197225)))

(declare-fun b!2966962 () Bool)

(declare-fun e!1867130 () Bool)

(declare-fun e!1867126 () Bool)

(assert (=> b!2966962 (= e!1867130 e!1867126)))

(declare-fun res!1223784 () Bool)

(assert (=> b!2966962 (= res!1223784 (matchRSpec!1370 (regOne!18979 r!17423) s!11993))))

(assert (=> b!2966962 (=> res!1223784 e!1867126)))

(declare-fun b!2966964 () Bool)

(declare-fun e!1867132 () Bool)

(assert (=> b!2966964 (= e!1867130 e!1867132)))

(declare-fun c!486625 () Bool)

(assert (=> b!2966964 (= c!486625 ((_ is Star!9233) r!17423))))

(declare-fun bm!197219 () Bool)

(declare-fun Exists!1536 (Int) Bool)

(assert (=> bm!197219 (= call!197225 (Exists!1536 (ite c!486625 lambda!110469 lambda!110470)))))

(declare-fun b!2966965 () Bool)

(declare-fun res!1223782 () Bool)

(assert (=> b!2966965 (=> res!1223782 e!1867129)))

(declare-fun call!197224 () Bool)

(assert (=> b!2966965 (= res!1223782 call!197224)))

(assert (=> b!2966965 (= e!1867132 e!1867129)))

(declare-fun b!2966966 () Bool)

(declare-fun e!1867128 () Bool)

(assert (=> b!2966966 (= e!1867128 e!1867131)))

(declare-fun res!1223783 () Bool)

(assert (=> b!2966966 (= res!1223783 (not ((_ is EmptyLang!9233) r!17423)))))

(assert (=> b!2966966 (=> (not res!1223783) (not e!1867131))))

(declare-fun b!2966967 () Bool)

(assert (=> b!2966967 (= e!1867127 (= s!11993 (Cons!34974 (c!486461 r!17423) Nil!34974)))))

(declare-fun b!2966968 () Bool)

(assert (=> b!2966968 (= e!1867128 call!197224)))

(declare-fun b!2966969 () Bool)

(assert (=> b!2966969 (= e!1867126 (matchRSpec!1370 (regTwo!18979 r!17423) s!11993))))

(declare-fun d!842424 () Bool)

(declare-fun c!486627 () Bool)

(assert (=> d!842424 (= c!486627 ((_ is EmptyExpr!9233) r!17423))))

(assert (=> d!842424 (= (matchRSpec!1370 r!17423 s!11993) e!1867128)))

(assert (=> b!2966963 (= e!1867132 call!197225)))

(declare-fun b!2966970 () Bool)

(declare-fun c!486626 () Bool)

(assert (=> b!2966970 (= c!486626 ((_ is Union!9233) r!17423))))

(assert (=> b!2966970 (= e!1867127 e!1867130)))

(declare-fun bm!197220 () Bool)

(assert (=> bm!197220 (= call!197224 (isEmpty!19230 s!11993))))

(assert (= (and d!842424 c!486627) b!2966968))

(assert (= (and d!842424 (not c!486627)) b!2966966))

(assert (= (and b!2966966 res!1223783) b!2966960))

(assert (= (and b!2966960 c!486628) b!2966967))

(assert (= (and b!2966960 (not c!486628)) b!2966970))

(assert (= (and b!2966970 c!486626) b!2966962))

(assert (= (and b!2966970 (not c!486626)) b!2966964))

(assert (= (and b!2966962 (not res!1223784)) b!2966969))

(assert (= (and b!2966964 c!486625) b!2966965))

(assert (= (and b!2966964 (not c!486625)) b!2966963))

(assert (= (and b!2966965 (not res!1223782)) b!2966961))

(assert (= (or b!2966961 b!2966963) bm!197219))

(assert (= (or b!2966968 b!2966965) bm!197220))

(declare-fun m!3336749 () Bool)

(assert (=> b!2966962 m!3336749))

(declare-fun m!3336751 () Bool)

(assert (=> bm!197219 m!3336751))

(declare-fun m!3336753 () Bool)

(assert (=> b!2966969 m!3336753))

(assert (=> bm!197220 m!3336563))

(assert (=> b!2966378 d!842424))

(declare-fun b!2966975 () Bool)

(declare-fun e!1867135 () Bool)

(declare-fun lt!1035369 () Bool)

(declare-fun call!197226 () Bool)

(assert (=> b!2966975 (= e!1867135 (= lt!1035369 call!197226))))

(declare-fun d!842430 () Bool)

(assert (=> d!842430 e!1867135))

(declare-fun c!486630 () Bool)

(assert (=> d!842430 (= c!486630 ((_ is EmptyExpr!9233) r!17423))))

(declare-fun e!1867136 () Bool)

(assert (=> d!842430 (= lt!1035369 e!1867136)))

(declare-fun c!486631 () Bool)

(assert (=> d!842430 (= c!486631 (isEmpty!19230 s!11993))))

(assert (=> d!842430 (validRegex!3966 r!17423)))

(assert (=> d!842430 (= (matchR!4115 r!17423 s!11993) lt!1035369)))

(declare-fun b!2966976 () Bool)

(declare-fun e!1867138 () Bool)

(assert (=> b!2966976 (= e!1867135 e!1867138)))

(declare-fun c!486629 () Bool)

(assert (=> b!2966976 (= c!486629 ((_ is EmptyLang!9233) r!17423))))

(declare-fun b!2966977 () Bool)

(declare-fun res!1223788 () Bool)

(declare-fun e!1867137 () Bool)

(assert (=> b!2966977 (=> res!1223788 e!1867137)))

(declare-fun e!1867134 () Bool)

(assert (=> b!2966977 (= res!1223788 e!1867134)))

(declare-fun res!1223791 () Bool)

(assert (=> b!2966977 (=> (not res!1223791) (not e!1867134))))

(assert (=> b!2966977 (= res!1223791 lt!1035369)))

(declare-fun b!2966978 () Bool)

(declare-fun res!1223787 () Bool)

(assert (=> b!2966978 (=> (not res!1223787) (not e!1867134))))

(assert (=> b!2966978 (= res!1223787 (isEmpty!19230 (tail!4836 s!11993)))))

(declare-fun b!2966979 () Bool)

(assert (=> b!2966979 (= e!1867136 (matchR!4115 (derivativeStep!2551 r!17423 (head!6610 s!11993)) (tail!4836 s!11993)))))

(declare-fun b!2966980 () Bool)

(assert (=> b!2966980 (= e!1867134 (= (head!6610 s!11993) (c!486461 r!17423)))))

(declare-fun b!2966981 () Bool)

(assert (=> b!2966981 (= e!1867138 (not lt!1035369))))

(declare-fun b!2966982 () Bool)

(assert (=> b!2966982 (= e!1867136 (nullable!2950 r!17423))))

(declare-fun b!2966983 () Bool)

(declare-fun res!1223789 () Bool)

(assert (=> b!2966983 (=> (not res!1223789) (not e!1867134))))

(assert (=> b!2966983 (= res!1223789 (not call!197226))))

(declare-fun b!2966984 () Bool)

(declare-fun res!1223790 () Bool)

(declare-fun e!1867139 () Bool)

(assert (=> b!2966984 (=> res!1223790 e!1867139)))

(assert (=> b!2966984 (= res!1223790 (not (isEmpty!19230 (tail!4836 s!11993))))))

(declare-fun b!2966985 () Bool)

(declare-fun e!1867133 () Bool)

(assert (=> b!2966985 (= e!1867137 e!1867133)))

(declare-fun res!1223792 () Bool)

(assert (=> b!2966985 (=> (not res!1223792) (not e!1867133))))

(assert (=> b!2966985 (= res!1223792 (not lt!1035369))))

(declare-fun b!2966986 () Bool)

(assert (=> b!2966986 (= e!1867139 (not (= (head!6610 s!11993) (c!486461 r!17423))))))

(declare-fun b!2966987 () Bool)

(declare-fun res!1223785 () Bool)

(assert (=> b!2966987 (=> res!1223785 e!1867137)))

(assert (=> b!2966987 (= res!1223785 (not ((_ is ElementMatch!9233) r!17423)))))

(assert (=> b!2966987 (= e!1867138 e!1867137)))

(declare-fun bm!197221 () Bool)

(assert (=> bm!197221 (= call!197226 (isEmpty!19230 s!11993))))

(declare-fun b!2966988 () Bool)

(assert (=> b!2966988 (= e!1867133 e!1867139)))

(declare-fun res!1223786 () Bool)

(assert (=> b!2966988 (=> res!1223786 e!1867139)))

(assert (=> b!2966988 (= res!1223786 call!197226)))

(assert (= (and d!842430 c!486631) b!2966982))

(assert (= (and d!842430 (not c!486631)) b!2966979))

(assert (= (and d!842430 c!486630) b!2966975))

(assert (= (and d!842430 (not c!486630)) b!2966976))

(assert (= (and b!2966976 c!486629) b!2966981))

(assert (= (and b!2966976 (not c!486629)) b!2966987))

(assert (= (and b!2966987 (not res!1223785)) b!2966977))

(assert (= (and b!2966977 res!1223791) b!2966983))

(assert (= (and b!2966983 res!1223789) b!2966978))

(assert (= (and b!2966978 res!1223787) b!2966980))

(assert (= (and b!2966977 (not res!1223788)) b!2966985))

(assert (= (and b!2966985 res!1223792) b!2966988))

(assert (= (and b!2966988 (not res!1223786)) b!2966984))

(assert (= (and b!2966984 (not res!1223790)) b!2966986))

(assert (= (or b!2966975 b!2966983 b!2966988) bm!197221))

(assert (=> b!2966986 m!3336551))

(assert (=> b!2966979 m!3336551))

(assert (=> b!2966979 m!3336551))

(declare-fun m!3336755 () Bool)

(assert (=> b!2966979 m!3336755))

(assert (=> b!2966979 m!3336555))

(assert (=> b!2966979 m!3336755))

(assert (=> b!2966979 m!3336555))

(declare-fun m!3336757 () Bool)

(assert (=> b!2966979 m!3336757))

(assert (=> b!2966984 m!3336555))

(assert (=> b!2966984 m!3336555))

(assert (=> b!2966984 m!3336559))

(declare-fun m!3336759 () Bool)

(assert (=> b!2966982 m!3336759))

(assert (=> d!842430 m!3336563))

(assert (=> d!842430 m!3336549))

(assert (=> b!2966980 m!3336551))

(assert (=> bm!197221 m!3336563))

(assert (=> b!2966978 m!3336555))

(assert (=> b!2966978 m!3336555))

(assert (=> b!2966978 m!3336559))

(assert (=> b!2966378 d!842430))

(declare-fun d!842432 () Bool)

(assert (=> d!842432 (= (matchR!4115 r!17423 s!11993) (matchRSpec!1370 r!17423 s!11993))))

(declare-fun lt!1035372 () Unit!48845)

(declare-fun choose!17550 (Regex!9233 List!35098) Unit!48845)

(assert (=> d!842432 (= lt!1035372 (choose!17550 r!17423 s!11993))))

(assert (=> d!842432 (validRegex!3966 r!17423)))

(assert (=> d!842432 (= (mainMatchTheorem!1370 r!17423 s!11993) lt!1035372)))

(declare-fun bs!526421 () Bool)

(assert (= bs!526421 d!842432))

(assert (=> bs!526421 m!3336535))

(assert (=> bs!526421 m!3336533))

(declare-fun m!3336761 () Bool)

(assert (=> bs!526421 m!3336761))

(assert (=> bs!526421 m!3336549))

(assert (=> b!2966378 d!842432))

(declare-fun d!842434 () Bool)

(assert (=> d!842434 (= (isEmptyLang!349 lt!1035290) ((_ is EmptyLang!9233) lt!1035290))))

(assert (=> b!2966373 d!842434))

(declare-fun b!2967000 () Bool)

(declare-fun e!1867142 () Bool)

(declare-fun tp!946281 () Bool)

(declare-fun tp!946282 () Bool)

(assert (=> b!2967000 (= e!1867142 (and tp!946281 tp!946282))))

(declare-fun b!2966999 () Bool)

(assert (=> b!2966999 (= e!1867142 tp_is_empty!16029)))

(declare-fun b!2967001 () Bool)

(declare-fun tp!946279 () Bool)

(assert (=> b!2967001 (= e!1867142 tp!946279)))

(declare-fun b!2967002 () Bool)

(declare-fun tp!946280 () Bool)

(declare-fun tp!946278 () Bool)

(assert (=> b!2967002 (= e!1867142 (and tp!946280 tp!946278))))

(assert (=> b!2966374 (= tp!946226 e!1867142)))

(assert (= (and b!2966374 ((_ is ElementMatch!9233) (regOne!18978 r!17423))) b!2966999))

(assert (= (and b!2966374 ((_ is Concat!14554) (regOne!18978 r!17423))) b!2967000))

(assert (= (and b!2966374 ((_ is Star!9233) (regOne!18978 r!17423))) b!2967001))

(assert (= (and b!2966374 ((_ is Union!9233) (regOne!18978 r!17423))) b!2967002))

(declare-fun b!2967004 () Bool)

(declare-fun e!1867143 () Bool)

(declare-fun tp!946286 () Bool)

(declare-fun tp!946287 () Bool)

(assert (=> b!2967004 (= e!1867143 (and tp!946286 tp!946287))))

(declare-fun b!2967003 () Bool)

(assert (=> b!2967003 (= e!1867143 tp_is_empty!16029)))

(declare-fun b!2967005 () Bool)

(declare-fun tp!946284 () Bool)

(assert (=> b!2967005 (= e!1867143 tp!946284)))

(declare-fun b!2967006 () Bool)

(declare-fun tp!946285 () Bool)

(declare-fun tp!946283 () Bool)

(assert (=> b!2967006 (= e!1867143 (and tp!946285 tp!946283))))

(assert (=> b!2966374 (= tp!946224 e!1867143)))

(assert (= (and b!2966374 ((_ is ElementMatch!9233) (regTwo!18978 r!17423))) b!2967003))

(assert (= (and b!2966374 ((_ is Concat!14554) (regTwo!18978 r!17423))) b!2967004))

(assert (= (and b!2966374 ((_ is Star!9233) (regTwo!18978 r!17423))) b!2967005))

(assert (= (and b!2966374 ((_ is Union!9233) (regTwo!18978 r!17423))) b!2967006))

(declare-fun b!2967008 () Bool)

(declare-fun e!1867144 () Bool)

(declare-fun tp!946291 () Bool)

(declare-fun tp!946292 () Bool)

(assert (=> b!2967008 (= e!1867144 (and tp!946291 tp!946292))))

(declare-fun b!2967007 () Bool)

(assert (=> b!2967007 (= e!1867144 tp_is_empty!16029)))

(declare-fun b!2967009 () Bool)

(declare-fun tp!946289 () Bool)

(assert (=> b!2967009 (= e!1867144 tp!946289)))

(declare-fun b!2967010 () Bool)

(declare-fun tp!946290 () Bool)

(declare-fun tp!946288 () Bool)

(assert (=> b!2967010 (= e!1867144 (and tp!946290 tp!946288))))

(assert (=> b!2966371 (= tp!946229 e!1867144)))

(assert (= (and b!2966371 ((_ is ElementMatch!9233) (reg!9562 r!17423))) b!2967007))

(assert (= (and b!2966371 ((_ is Concat!14554) (reg!9562 r!17423))) b!2967008))

(assert (= (and b!2966371 ((_ is Star!9233) (reg!9562 r!17423))) b!2967009))

(assert (= (and b!2966371 ((_ is Union!9233) (reg!9562 r!17423))) b!2967010))

(declare-fun b!2967012 () Bool)

(declare-fun e!1867145 () Bool)

(declare-fun tp!946296 () Bool)

(declare-fun tp!946297 () Bool)

(assert (=> b!2967012 (= e!1867145 (and tp!946296 tp!946297))))

(declare-fun b!2967011 () Bool)

(assert (=> b!2967011 (= e!1867145 tp_is_empty!16029)))

(declare-fun b!2967013 () Bool)

(declare-fun tp!946294 () Bool)

(assert (=> b!2967013 (= e!1867145 tp!946294)))

(declare-fun b!2967014 () Bool)

(declare-fun tp!946295 () Bool)

(declare-fun tp!946293 () Bool)

(assert (=> b!2967014 (= e!1867145 (and tp!946295 tp!946293))))

(assert (=> b!2966368 (= tp!946227 e!1867145)))

(assert (= (and b!2966368 ((_ is ElementMatch!9233) (regOne!18979 r!17423))) b!2967011))

(assert (= (and b!2966368 ((_ is Concat!14554) (regOne!18979 r!17423))) b!2967012))

(assert (= (and b!2966368 ((_ is Star!9233) (regOne!18979 r!17423))) b!2967013))

(assert (= (and b!2966368 ((_ is Union!9233) (regOne!18979 r!17423))) b!2967014))

(declare-fun b!2967016 () Bool)

(declare-fun e!1867146 () Bool)

(declare-fun tp!946301 () Bool)

(declare-fun tp!946302 () Bool)

(assert (=> b!2967016 (= e!1867146 (and tp!946301 tp!946302))))

(declare-fun b!2967015 () Bool)

(assert (=> b!2967015 (= e!1867146 tp_is_empty!16029)))

(declare-fun b!2967017 () Bool)

(declare-fun tp!946299 () Bool)

(assert (=> b!2967017 (= e!1867146 tp!946299)))

(declare-fun b!2967018 () Bool)

(declare-fun tp!946300 () Bool)

(declare-fun tp!946298 () Bool)

(assert (=> b!2967018 (= e!1867146 (and tp!946300 tp!946298))))

(assert (=> b!2966368 (= tp!946225 e!1867146)))

(assert (= (and b!2966368 ((_ is ElementMatch!9233) (regTwo!18979 r!17423))) b!2967015))

(assert (= (and b!2966368 ((_ is Concat!14554) (regTwo!18979 r!17423))) b!2967016))

(assert (= (and b!2966368 ((_ is Star!9233) (regTwo!18979 r!17423))) b!2967017))

(assert (= (and b!2966368 ((_ is Union!9233) (regTwo!18979 r!17423))) b!2967018))

(declare-fun b!2967023 () Bool)

(declare-fun e!1867149 () Bool)

(declare-fun tp!946305 () Bool)

(assert (=> b!2967023 (= e!1867149 (and tp_is_empty!16029 tp!946305))))

(assert (=> b!2966379 (= tp!946228 e!1867149)))

(assert (= (and b!2966379 ((_ is Cons!34974) (t!234163 s!11993))) b!2967023))

(check-sat (not b!2966982) (not b!2967000) (not b!2966986) (not b!2967005) (not bm!197205) (not b!2966821) (not b!2967002) (not b!2966657) (not b!2966799) tp_is_empty!16029 (not b!2966800) (not b!2966806) (not b!2967009) (not b!2967014) (not b!2966774) (not d!842422) (not bm!197219) (not d!842376) (not b!2966823) (not b!2966962) (not bm!197175) (not d!842430) (not b!2966420) (not b!2966425) (not bm!197177) (not bm!197197) (not bm!197203) (not b!2967001) (not bm!197176) (not b!2967004) (not bm!197174) (not b!2966427) (not b!2966776) (not b!2967017) (not b!2966827) (not b!2966979) (not bm!197221) (not b!2966816) (not d!842408) (not bm!197201) (not b!2967023) (not bm!197173) (not bm!197198) (not b!2966639) (not bm!197170) (not b!2967012) (not bm!197169) (not b!2966421) (not bm!197168) (not b!2966628) (not bm!197220) (not b!2966778) (not b!2967013) (not b!2966668) (not b!2966474) (not b!2967006) (not d!842412) (not b!2967010) (not b!2966802) (not bm!197118) (not b!2967016) (not b!2966771) (not b!2967008) (not d!842386) (not b!2966829) (not d!842432) (not d!842396) (not b!2966419) (not b!2966969) (not bm!197167) (not bm!197166) (not b!2966980) (not b!2966751) (not b!2966822) (not b!2966770) (not b!2966798) (not b!2967018) (not b!2966825) (not bm!197204) (not b!2966804) (not d!842382) (not d!842416) (not b!2966984) (not b!2966978) (not b!2966772) (not b!2966423) (not bm!197207) (not b!2966475))
(check-sat)
