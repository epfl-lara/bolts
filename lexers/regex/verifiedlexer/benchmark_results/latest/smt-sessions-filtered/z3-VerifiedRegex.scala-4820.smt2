; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247908 () Bool)

(assert start!247908)

(declare-fun b!2560370 () Bool)

(declare-fun res!1077973 () Bool)

(declare-fun e!1616986 () Bool)

(assert (=> b!2560370 (=> (not res!1077973) (not e!1616986))))

(declare-datatypes ((C!15388 0))(
  ( (C!15389 (val!9346 Int)) )
))
(declare-datatypes ((List!29680 0))(
  ( (Nil!29580) (Cons!29580 (h!35000 C!15388) (t!211379 List!29680)) )
))
(declare-fun tl!4068 () List!29680)

(declare-datatypes ((Regex!7615 0))(
  ( (ElementMatch!7615 (c!411269 C!15388)) (Concat!12311 (regOne!15742 Regex!7615) (regTwo!15742 Regex!7615)) (EmptyExpr!7615) (Star!7615 (reg!7944 Regex!7615)) (EmptyLang!7615) (Union!7615 (regOne!15743 Regex!7615) (regTwo!15743 Regex!7615)) )
))
(declare-fun r!27340 () Regex!7615)

(declare-fun c!14016 () C!15388)

(declare-fun nullable!2532 (Regex!7615) Bool)

(declare-fun derivative!310 (Regex!7615 List!29680) Regex!7615)

(declare-fun derivativeStep!2184 (Regex!7615 C!15388) Regex!7615)

(assert (=> b!2560370 (= res!1077973 (nullable!2532 (derivative!310 (derivativeStep!2184 r!27340 c!14016) tl!4068)))))

(declare-fun b!2560371 () Bool)

(declare-fun e!1616990 () Bool)

(declare-fun tp_is_empty!13085 () Bool)

(declare-fun tp!815530 () Bool)

(assert (=> b!2560371 (= e!1616990 (and tp_is_empty!13085 tp!815530))))

(declare-fun b!2560372 () Bool)

(declare-fun res!1077978 () Bool)

(assert (=> b!2560372 (=> (not res!1077978) (not e!1616986))))

(get-info :version)

(assert (=> b!2560372 (= res!1077978 (and (not ((_ is EmptyExpr!7615) r!27340)) (not ((_ is EmptyLang!7615) r!27340)) (not ((_ is ElementMatch!7615) r!27340)) (not ((_ is Union!7615) r!27340)) (not ((_ is Star!7615) r!27340))))))

(declare-fun b!2560373 () Bool)

(declare-fun e!1616988 () Bool)

(declare-fun tp!815528 () Bool)

(assert (=> b!2560373 (= e!1616988 tp!815528)))

(declare-fun b!2560374 () Bool)

(declare-fun res!1077974 () Bool)

(assert (=> b!2560374 (=> (not res!1077974) (not e!1616986))))

(assert (=> b!2560374 (= res!1077974 (nullable!2532 (regOne!15742 r!27340)))))

(declare-fun b!2560375 () Bool)

(declare-fun e!1616989 () Bool)

(declare-fun lt!904650 () Regex!7615)

(declare-fun validRegex!3241 (Regex!7615) Bool)

(assert (=> b!2560375 (= e!1616989 (validRegex!3241 lt!904650))))

(declare-fun res!1077977 () Bool)

(assert (=> start!247908 (=> (not res!1077977) (not e!1616986))))

(assert (=> start!247908 (= res!1077977 (validRegex!3241 r!27340))))

(assert (=> start!247908 e!1616986))

(assert (=> start!247908 e!1616988))

(assert (=> start!247908 tp_is_empty!13085))

(assert (=> start!247908 e!1616990))

(declare-fun b!2560376 () Bool)

(declare-fun tp!815527 () Bool)

(declare-fun tp!815529 () Bool)

(assert (=> b!2560376 (= e!1616988 (and tp!815527 tp!815529))))

(declare-fun b!2560377 () Bool)

(declare-fun tp!815525 () Bool)

(declare-fun tp!815526 () Bool)

(assert (=> b!2560377 (= e!1616988 (and tp!815525 tp!815526))))

(declare-fun b!2560378 () Bool)

(assert (=> b!2560378 (= e!1616988 tp_is_empty!13085)))

(declare-fun b!2560379 () Bool)

(assert (=> b!2560379 (= e!1616986 (not e!1616989))))

(declare-fun res!1077975 () Bool)

(assert (=> b!2560379 (=> res!1077975 e!1616989)))

(declare-fun lt!904651 () Bool)

(assert (=> b!2560379 (= res!1077975 lt!904651)))

(declare-fun e!1616987 () Bool)

(assert (=> b!2560379 e!1616987))

(declare-fun res!1077976 () Bool)

(assert (=> b!2560379 (=> res!1077976 e!1616987)))

(assert (=> b!2560379 (= res!1077976 lt!904651)))

(declare-fun lt!904647 () Regex!7615)

(declare-fun matchR!3560 (Regex!7615 List!29680) Bool)

(assert (=> b!2560379 (= lt!904651 (matchR!3560 lt!904647 tl!4068))))

(declare-datatypes ((Unit!43415 0))(
  ( (Unit!43416) )
))
(declare-fun lt!904648 () Unit!43415)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!210 (Regex!7615 Regex!7615 List!29680) Unit!43415)

(assert (=> b!2560379 (= lt!904648 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!210 lt!904647 lt!904650 tl!4068))))

(declare-fun lt!904649 () Regex!7615)

(assert (=> b!2560379 (= (matchR!3560 lt!904649 tl!4068) (matchR!3560 (derivative!310 lt!904649 tl!4068) Nil!29580))))

(declare-fun lt!904652 () Unit!43415)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!206 (Regex!7615 List!29680) Unit!43415)

(assert (=> b!2560379 (= lt!904652 (lemmaMatchRIsSameAsWholeDerivativeAndNil!206 lt!904649 tl!4068))))

(assert (=> b!2560379 (= lt!904649 (Union!7615 lt!904647 lt!904650))))

(assert (=> b!2560379 (= lt!904650 (derivativeStep!2184 (regTwo!15742 r!27340) c!14016))))

(assert (=> b!2560379 (= lt!904647 (Concat!12311 (derivativeStep!2184 (regOne!15742 r!27340) c!14016) (regTwo!15742 r!27340)))))

(declare-fun b!2560380 () Bool)

(assert (=> b!2560380 (= e!1616987 (matchR!3560 lt!904650 tl!4068))))

(assert (= (and start!247908 res!1077977) b!2560370))

(assert (= (and b!2560370 res!1077973) b!2560372))

(assert (= (and b!2560372 res!1077978) b!2560374))

(assert (= (and b!2560374 res!1077974) b!2560379))

(assert (= (and b!2560379 (not res!1077976)) b!2560380))

(assert (= (and b!2560379 (not res!1077975)) b!2560375))

(assert (= (and start!247908 ((_ is ElementMatch!7615) r!27340)) b!2560378))

(assert (= (and start!247908 ((_ is Concat!12311) r!27340)) b!2560376))

(assert (= (and start!247908 ((_ is Star!7615) r!27340)) b!2560373))

(assert (= (and start!247908 ((_ is Union!7615) r!27340)) b!2560377))

(assert (= (and start!247908 ((_ is Cons!29580) tl!4068)) b!2560371))

(declare-fun m!2900803 () Bool)

(assert (=> start!247908 m!2900803))

(declare-fun m!2900805 () Bool)

(assert (=> b!2560370 m!2900805))

(assert (=> b!2560370 m!2900805))

(declare-fun m!2900807 () Bool)

(assert (=> b!2560370 m!2900807))

(assert (=> b!2560370 m!2900807))

(declare-fun m!2900809 () Bool)

(assert (=> b!2560370 m!2900809))

(declare-fun m!2900811 () Bool)

(assert (=> b!2560380 m!2900811))

(declare-fun m!2900813 () Bool)

(assert (=> b!2560375 m!2900813))

(declare-fun m!2900815 () Bool)

(assert (=> b!2560374 m!2900815))

(declare-fun m!2900817 () Bool)

(assert (=> b!2560379 m!2900817))

(declare-fun m!2900819 () Bool)

(assert (=> b!2560379 m!2900819))

(declare-fun m!2900821 () Bool)

(assert (=> b!2560379 m!2900821))

(declare-fun m!2900823 () Bool)

(assert (=> b!2560379 m!2900823))

(declare-fun m!2900825 () Bool)

(assert (=> b!2560379 m!2900825))

(declare-fun m!2900827 () Bool)

(assert (=> b!2560379 m!2900827))

(assert (=> b!2560379 m!2900825))

(declare-fun m!2900829 () Bool)

(assert (=> b!2560379 m!2900829))

(declare-fun m!2900831 () Bool)

(assert (=> b!2560379 m!2900831))

(check-sat (not b!2560371) (not b!2560377) (not b!2560370) (not b!2560380) (not b!2560376) (not b!2560374) tp_is_empty!13085 (not b!2560379) (not b!2560375) (not b!2560373) (not start!247908))
(check-sat)
(get-model)

(declare-fun d!725405 () Bool)

(declare-fun nullableFct!757 (Regex!7615) Bool)

(assert (=> d!725405 (= (nullable!2532 (regOne!15742 r!27340)) (nullableFct!757 (regOne!15742 r!27340)))))

(declare-fun bs!469816 () Bool)

(assert (= bs!469816 d!725405))

(declare-fun m!2900833 () Bool)

(assert (=> bs!469816 m!2900833))

(assert (=> b!2560374 d!725405))

(declare-fun b!2560457 () Bool)

(declare-fun res!1078021 () Bool)

(declare-fun e!1617031 () Bool)

(assert (=> b!2560457 (=> res!1078021 e!1617031)))

(assert (=> b!2560457 (= res!1078021 (not ((_ is ElementMatch!7615) lt!904647)))))

(declare-fun e!1617029 () Bool)

(assert (=> b!2560457 (= e!1617029 e!1617031)))

(declare-fun d!725407 () Bool)

(declare-fun e!1617033 () Bool)

(assert (=> d!725407 e!1617033))

(declare-fun c!411288 () Bool)

(assert (=> d!725407 (= c!411288 ((_ is EmptyExpr!7615) lt!904647))))

(declare-fun lt!904661 () Bool)

(declare-fun e!1617030 () Bool)

(assert (=> d!725407 (= lt!904661 e!1617030)))

(declare-fun c!411289 () Bool)

(declare-fun isEmpty!17038 (List!29680) Bool)

(assert (=> d!725407 (= c!411289 (isEmpty!17038 tl!4068))))

(assert (=> d!725407 (validRegex!3241 lt!904647)))

(assert (=> d!725407 (= (matchR!3560 lt!904647 tl!4068) lt!904661)))

(declare-fun b!2560458 () Bool)

(declare-fun e!1617034 () Bool)

(declare-fun head!5822 (List!29680) C!15388)

(assert (=> b!2560458 (= e!1617034 (= (head!5822 tl!4068) (c!411269 lt!904647)))))

(declare-fun b!2560459 () Bool)

(declare-fun tail!4097 (List!29680) List!29680)

(assert (=> b!2560459 (= e!1617030 (matchR!3560 (derivativeStep!2184 lt!904647 (head!5822 tl!4068)) (tail!4097 tl!4068)))))

(declare-fun b!2560460 () Bool)

(assert (=> b!2560460 (= e!1617030 (nullable!2532 lt!904647))))

(declare-fun b!2560461 () Bool)

(assert (=> b!2560461 (= e!1617033 e!1617029)))

(declare-fun c!411290 () Bool)

(assert (=> b!2560461 (= c!411290 ((_ is EmptyLang!7615) lt!904647))))

(declare-fun bm!163960 () Bool)

(declare-fun call!163965 () Bool)

(assert (=> bm!163960 (= call!163965 (isEmpty!17038 tl!4068))))

(declare-fun b!2560462 () Bool)

(declare-fun res!1078025 () Bool)

(declare-fun e!1617035 () Bool)

(assert (=> b!2560462 (=> res!1078025 e!1617035)))

(assert (=> b!2560462 (= res!1078025 (not (isEmpty!17038 (tail!4097 tl!4068))))))

(declare-fun b!2560463 () Bool)

(declare-fun e!1617032 () Bool)

(assert (=> b!2560463 (= e!1617031 e!1617032)))

(declare-fun res!1078020 () Bool)

(assert (=> b!2560463 (=> (not res!1078020) (not e!1617032))))

(assert (=> b!2560463 (= res!1078020 (not lt!904661))))

(declare-fun b!2560464 () Bool)

(assert (=> b!2560464 (= e!1617035 (not (= (head!5822 tl!4068) (c!411269 lt!904647))))))

(declare-fun b!2560465 () Bool)

(assert (=> b!2560465 (= e!1617033 (= lt!904661 call!163965))))

(declare-fun b!2560466 () Bool)

(declare-fun res!1078026 () Bool)

(assert (=> b!2560466 (=> (not res!1078026) (not e!1617034))))

(assert (=> b!2560466 (= res!1078026 (isEmpty!17038 (tail!4097 tl!4068)))))

(declare-fun b!2560467 () Bool)

(assert (=> b!2560467 (= e!1617032 e!1617035)))

(declare-fun res!1078023 () Bool)

(assert (=> b!2560467 (=> res!1078023 e!1617035)))

(assert (=> b!2560467 (= res!1078023 call!163965)))

(declare-fun b!2560468 () Bool)

(declare-fun res!1078022 () Bool)

(assert (=> b!2560468 (=> (not res!1078022) (not e!1617034))))

(assert (=> b!2560468 (= res!1078022 (not call!163965))))

(declare-fun b!2560469 () Bool)

(declare-fun res!1078024 () Bool)

(assert (=> b!2560469 (=> res!1078024 e!1617031)))

(assert (=> b!2560469 (= res!1078024 e!1617034)))

(declare-fun res!1078019 () Bool)

(assert (=> b!2560469 (=> (not res!1078019) (not e!1617034))))

(assert (=> b!2560469 (= res!1078019 lt!904661)))

(declare-fun b!2560470 () Bool)

(assert (=> b!2560470 (= e!1617029 (not lt!904661))))

(assert (= (and d!725407 c!411289) b!2560460))

(assert (= (and d!725407 (not c!411289)) b!2560459))

(assert (= (and d!725407 c!411288) b!2560465))

(assert (= (and d!725407 (not c!411288)) b!2560461))

(assert (= (and b!2560461 c!411290) b!2560470))

(assert (= (and b!2560461 (not c!411290)) b!2560457))

(assert (= (and b!2560457 (not res!1078021)) b!2560469))

(assert (= (and b!2560469 res!1078019) b!2560468))

(assert (= (and b!2560468 res!1078022) b!2560466))

(assert (= (and b!2560466 res!1078026) b!2560458))

(assert (= (and b!2560469 (not res!1078024)) b!2560463))

(assert (= (and b!2560463 res!1078020) b!2560467))

(assert (= (and b!2560467 (not res!1078023)) b!2560462))

(assert (= (and b!2560462 (not res!1078025)) b!2560464))

(assert (= (or b!2560465 b!2560467 b!2560468) bm!163960))

(declare-fun m!2900859 () Bool)

(assert (=> b!2560464 m!2900859))

(declare-fun m!2900861 () Bool)

(assert (=> b!2560466 m!2900861))

(assert (=> b!2560466 m!2900861))

(declare-fun m!2900863 () Bool)

(assert (=> b!2560466 m!2900863))

(assert (=> b!2560462 m!2900861))

(assert (=> b!2560462 m!2900861))

(assert (=> b!2560462 m!2900863))

(declare-fun m!2900865 () Bool)

(assert (=> b!2560460 m!2900865))

(assert (=> b!2560458 m!2900859))

(declare-fun m!2900867 () Bool)

(assert (=> bm!163960 m!2900867))

(assert (=> d!725407 m!2900867))

(declare-fun m!2900869 () Bool)

(assert (=> d!725407 m!2900869))

(assert (=> b!2560459 m!2900859))

(assert (=> b!2560459 m!2900859))

(declare-fun m!2900871 () Bool)

(assert (=> b!2560459 m!2900871))

(assert (=> b!2560459 m!2900861))

(assert (=> b!2560459 m!2900871))

(assert (=> b!2560459 m!2900861))

(declare-fun m!2900873 () Bool)

(assert (=> b!2560459 m!2900873))

(assert (=> b!2560379 d!725407))

(declare-fun d!725417 () Bool)

(assert (=> d!725417 (= (matchR!3560 lt!904649 tl!4068) (matchR!3560 (derivative!310 lt!904649 tl!4068) Nil!29580))))

(declare-fun lt!904666 () Unit!43415)

(declare-fun choose!15107 (Regex!7615 List!29680) Unit!43415)

(assert (=> d!725417 (= lt!904666 (choose!15107 lt!904649 tl!4068))))

(assert (=> d!725417 (validRegex!3241 lt!904649)))

(assert (=> d!725417 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!206 lt!904649 tl!4068) lt!904666)))

(declare-fun bs!469818 () Bool)

(assert (= bs!469818 d!725417))

(assert (=> bs!469818 m!2900825))

(assert (=> bs!469818 m!2900827))

(assert (=> bs!469818 m!2900823))

(assert (=> bs!469818 m!2900825))

(declare-fun m!2900875 () Bool)

(assert (=> bs!469818 m!2900875))

(declare-fun m!2900877 () Bool)

(assert (=> bs!469818 m!2900877))

(assert (=> b!2560379 d!725417))

(declare-fun b!2560491 () Bool)

(declare-fun res!1078029 () Bool)

(declare-fun e!1617048 () Bool)

(assert (=> b!2560491 (=> res!1078029 e!1617048)))

(assert (=> b!2560491 (= res!1078029 (not ((_ is ElementMatch!7615) (derivative!310 lt!904649 tl!4068))))))

(declare-fun e!1617046 () Bool)

(assert (=> b!2560491 (= e!1617046 e!1617048)))

(declare-fun d!725419 () Bool)

(declare-fun e!1617050 () Bool)

(assert (=> d!725419 e!1617050))

(declare-fun c!411301 () Bool)

(assert (=> d!725419 (= c!411301 ((_ is EmptyExpr!7615) (derivative!310 lt!904649 tl!4068)))))

(declare-fun lt!904667 () Bool)

(declare-fun e!1617047 () Bool)

(assert (=> d!725419 (= lt!904667 e!1617047)))

(declare-fun c!411302 () Bool)

(assert (=> d!725419 (= c!411302 (isEmpty!17038 Nil!29580))))

(assert (=> d!725419 (validRegex!3241 (derivative!310 lt!904649 tl!4068))))

(assert (=> d!725419 (= (matchR!3560 (derivative!310 lt!904649 tl!4068) Nil!29580) lt!904667)))

(declare-fun b!2560492 () Bool)

(declare-fun e!1617051 () Bool)

(assert (=> b!2560492 (= e!1617051 (= (head!5822 Nil!29580) (c!411269 (derivative!310 lt!904649 tl!4068))))))

(declare-fun b!2560493 () Bool)

(assert (=> b!2560493 (= e!1617047 (matchR!3560 (derivativeStep!2184 (derivative!310 lt!904649 tl!4068) (head!5822 Nil!29580)) (tail!4097 Nil!29580)))))

(declare-fun b!2560494 () Bool)

(assert (=> b!2560494 (= e!1617047 (nullable!2532 (derivative!310 lt!904649 tl!4068)))))

(declare-fun b!2560495 () Bool)

(assert (=> b!2560495 (= e!1617050 e!1617046)))

(declare-fun c!411303 () Bool)

(assert (=> b!2560495 (= c!411303 ((_ is EmptyLang!7615) (derivative!310 lt!904649 tl!4068)))))

(declare-fun bm!163969 () Bool)

(declare-fun call!163974 () Bool)

(assert (=> bm!163969 (= call!163974 (isEmpty!17038 Nil!29580))))

(declare-fun b!2560496 () Bool)

(declare-fun res!1078033 () Bool)

(declare-fun e!1617052 () Bool)

(assert (=> b!2560496 (=> res!1078033 e!1617052)))

(assert (=> b!2560496 (= res!1078033 (not (isEmpty!17038 (tail!4097 Nil!29580))))))

(declare-fun b!2560497 () Bool)

(declare-fun e!1617049 () Bool)

(assert (=> b!2560497 (= e!1617048 e!1617049)))

(declare-fun res!1078028 () Bool)

(assert (=> b!2560497 (=> (not res!1078028) (not e!1617049))))

(assert (=> b!2560497 (= res!1078028 (not lt!904667))))

(declare-fun b!2560498 () Bool)

(assert (=> b!2560498 (= e!1617052 (not (= (head!5822 Nil!29580) (c!411269 (derivative!310 lt!904649 tl!4068)))))))

(declare-fun b!2560499 () Bool)

(assert (=> b!2560499 (= e!1617050 (= lt!904667 call!163974))))

(declare-fun b!2560500 () Bool)

(declare-fun res!1078034 () Bool)

(assert (=> b!2560500 (=> (not res!1078034) (not e!1617051))))

(assert (=> b!2560500 (= res!1078034 (isEmpty!17038 (tail!4097 Nil!29580)))))

(declare-fun b!2560501 () Bool)

(assert (=> b!2560501 (= e!1617049 e!1617052)))

(declare-fun res!1078031 () Bool)

(assert (=> b!2560501 (=> res!1078031 e!1617052)))

(assert (=> b!2560501 (= res!1078031 call!163974)))

(declare-fun b!2560502 () Bool)

(declare-fun res!1078030 () Bool)

(assert (=> b!2560502 (=> (not res!1078030) (not e!1617051))))

(assert (=> b!2560502 (= res!1078030 (not call!163974))))

(declare-fun b!2560503 () Bool)

(declare-fun res!1078032 () Bool)

(assert (=> b!2560503 (=> res!1078032 e!1617048)))

(assert (=> b!2560503 (= res!1078032 e!1617051)))

(declare-fun res!1078027 () Bool)

(assert (=> b!2560503 (=> (not res!1078027) (not e!1617051))))

(assert (=> b!2560503 (= res!1078027 lt!904667)))

(declare-fun b!2560504 () Bool)

(assert (=> b!2560504 (= e!1617046 (not lt!904667))))

(assert (= (and d!725419 c!411302) b!2560494))

(assert (= (and d!725419 (not c!411302)) b!2560493))

(assert (= (and d!725419 c!411301) b!2560499))

(assert (= (and d!725419 (not c!411301)) b!2560495))

(assert (= (and b!2560495 c!411303) b!2560504))

(assert (= (and b!2560495 (not c!411303)) b!2560491))

(assert (= (and b!2560491 (not res!1078029)) b!2560503))

(assert (= (and b!2560503 res!1078027) b!2560502))

(assert (= (and b!2560502 res!1078030) b!2560500))

(assert (= (and b!2560500 res!1078034) b!2560492))

(assert (= (and b!2560503 (not res!1078032)) b!2560497))

(assert (= (and b!2560497 res!1078028) b!2560501))

(assert (= (and b!2560501 (not res!1078031)) b!2560496))

(assert (= (and b!2560496 (not res!1078033)) b!2560498))

(assert (= (or b!2560499 b!2560501 b!2560502) bm!163969))

(declare-fun m!2900879 () Bool)

(assert (=> b!2560498 m!2900879))

(declare-fun m!2900881 () Bool)

(assert (=> b!2560500 m!2900881))

(assert (=> b!2560500 m!2900881))

(declare-fun m!2900883 () Bool)

(assert (=> b!2560500 m!2900883))

(assert (=> b!2560496 m!2900881))

(assert (=> b!2560496 m!2900881))

(assert (=> b!2560496 m!2900883))

(assert (=> b!2560494 m!2900825))

(declare-fun m!2900885 () Bool)

(assert (=> b!2560494 m!2900885))

(assert (=> b!2560492 m!2900879))

(declare-fun m!2900887 () Bool)

(assert (=> bm!163969 m!2900887))

(assert (=> d!725419 m!2900887))

(assert (=> d!725419 m!2900825))

(declare-fun m!2900889 () Bool)

(assert (=> d!725419 m!2900889))

(assert (=> b!2560493 m!2900879))

(assert (=> b!2560493 m!2900825))

(assert (=> b!2560493 m!2900879))

(declare-fun m!2900891 () Bool)

(assert (=> b!2560493 m!2900891))

(assert (=> b!2560493 m!2900881))

(assert (=> b!2560493 m!2900891))

(assert (=> b!2560493 m!2900881))

(declare-fun m!2900893 () Bool)

(assert (=> b!2560493 m!2900893))

(assert (=> b!2560379 d!725419))

(declare-fun d!725421 () Bool)

(declare-fun e!1617077 () Bool)

(assert (=> d!725421 e!1617077))

(declare-fun res!1078050 () Bool)

(assert (=> d!725421 (=> res!1078050 e!1617077)))

(assert (=> d!725421 (= res!1078050 (matchR!3560 lt!904647 tl!4068))))

(declare-fun lt!904671 () Unit!43415)

(declare-fun choose!15108 (Regex!7615 Regex!7615 List!29680) Unit!43415)

(assert (=> d!725421 (= lt!904671 (choose!15108 lt!904647 lt!904650 tl!4068))))

(declare-fun e!1617076 () Bool)

(assert (=> d!725421 e!1617076))

(declare-fun res!1078049 () Bool)

(assert (=> d!725421 (=> (not res!1078049) (not e!1617076))))

(assert (=> d!725421 (= res!1078049 (validRegex!3241 lt!904647))))

(assert (=> d!725421 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!210 lt!904647 lt!904650 tl!4068) lt!904671)))

(declare-fun b!2560537 () Bool)

(assert (=> b!2560537 (= e!1617076 (validRegex!3241 lt!904650))))

(declare-fun b!2560538 () Bool)

(assert (=> b!2560538 (= e!1617077 (matchR!3560 lt!904650 tl!4068))))

(assert (= (and d!725421 res!1078049) b!2560537))

(assert (= (and d!725421 (not res!1078050)) b!2560538))

(assert (=> d!725421 m!2900819))

(declare-fun m!2900901 () Bool)

(assert (=> d!725421 m!2900901))

(assert (=> d!725421 m!2900869))

(assert (=> b!2560537 m!2900813))

(assert (=> b!2560538 m!2900811))

(assert (=> b!2560379 d!725421))

(declare-fun d!725425 () Bool)

(declare-fun lt!904674 () Regex!7615)

(assert (=> d!725425 (validRegex!3241 lt!904674)))

(declare-fun e!1617087 () Regex!7615)

(assert (=> d!725425 (= lt!904674 e!1617087)))

(declare-fun c!411317 () Bool)

(assert (=> d!725425 (= c!411317 ((_ is Cons!29580) tl!4068))))

(assert (=> d!725425 (validRegex!3241 lt!904649)))

(assert (=> d!725425 (= (derivative!310 lt!904649 tl!4068) lt!904674)))

(declare-fun b!2560552 () Bool)

(assert (=> b!2560552 (= e!1617087 (derivative!310 (derivativeStep!2184 lt!904649 (h!35000 tl!4068)) (t!211379 tl!4068)))))

(declare-fun b!2560553 () Bool)

(assert (=> b!2560553 (= e!1617087 lt!904649)))

(assert (= (and d!725425 c!411317) b!2560552))

(assert (= (and d!725425 (not c!411317)) b!2560553))

(declare-fun m!2900909 () Bool)

(assert (=> d!725425 m!2900909))

(assert (=> d!725425 m!2900877))

(declare-fun m!2900911 () Bool)

(assert (=> b!2560552 m!2900911))

(assert (=> b!2560552 m!2900911))

(declare-fun m!2900913 () Bool)

(assert (=> b!2560552 m!2900913))

(assert (=> b!2560379 d!725425))

(declare-fun b!2560554 () Bool)

(declare-fun res!1078058 () Bool)

(declare-fun e!1617090 () Bool)

(assert (=> b!2560554 (=> res!1078058 e!1617090)))

(assert (=> b!2560554 (= res!1078058 (not ((_ is ElementMatch!7615) lt!904649)))))

(declare-fun e!1617088 () Bool)

(assert (=> b!2560554 (= e!1617088 e!1617090)))

(declare-fun d!725429 () Bool)

(declare-fun e!1617092 () Bool)

(assert (=> d!725429 e!1617092))

(declare-fun c!411318 () Bool)

(assert (=> d!725429 (= c!411318 ((_ is EmptyExpr!7615) lt!904649))))

(declare-fun lt!904675 () Bool)

(declare-fun e!1617089 () Bool)

(assert (=> d!725429 (= lt!904675 e!1617089)))

(declare-fun c!411319 () Bool)

(assert (=> d!725429 (= c!411319 (isEmpty!17038 tl!4068))))

(assert (=> d!725429 (validRegex!3241 lt!904649)))

(assert (=> d!725429 (= (matchR!3560 lt!904649 tl!4068) lt!904675)))

(declare-fun b!2560555 () Bool)

(declare-fun e!1617093 () Bool)

(assert (=> b!2560555 (= e!1617093 (= (head!5822 tl!4068) (c!411269 lt!904649)))))

(declare-fun b!2560556 () Bool)

(assert (=> b!2560556 (= e!1617089 (matchR!3560 (derivativeStep!2184 lt!904649 (head!5822 tl!4068)) (tail!4097 tl!4068)))))

(declare-fun b!2560557 () Bool)

(assert (=> b!2560557 (= e!1617089 (nullable!2532 lt!904649))))

(declare-fun b!2560558 () Bool)

(assert (=> b!2560558 (= e!1617092 e!1617088)))

(declare-fun c!411320 () Bool)

(assert (=> b!2560558 (= c!411320 ((_ is EmptyLang!7615) lt!904649))))

(declare-fun bm!163983 () Bool)

(declare-fun call!163988 () Bool)

(assert (=> bm!163983 (= call!163988 (isEmpty!17038 tl!4068))))

(declare-fun b!2560559 () Bool)

(declare-fun res!1078062 () Bool)

(declare-fun e!1617094 () Bool)

(assert (=> b!2560559 (=> res!1078062 e!1617094)))

(assert (=> b!2560559 (= res!1078062 (not (isEmpty!17038 (tail!4097 tl!4068))))))

(declare-fun b!2560560 () Bool)

(declare-fun e!1617091 () Bool)

(assert (=> b!2560560 (= e!1617090 e!1617091)))

(declare-fun res!1078057 () Bool)

(assert (=> b!2560560 (=> (not res!1078057) (not e!1617091))))

(assert (=> b!2560560 (= res!1078057 (not lt!904675))))

(declare-fun b!2560561 () Bool)

(assert (=> b!2560561 (= e!1617094 (not (= (head!5822 tl!4068) (c!411269 lt!904649))))))

(declare-fun b!2560562 () Bool)

(assert (=> b!2560562 (= e!1617092 (= lt!904675 call!163988))))

(declare-fun b!2560563 () Bool)

(declare-fun res!1078063 () Bool)

(assert (=> b!2560563 (=> (not res!1078063) (not e!1617093))))

(assert (=> b!2560563 (= res!1078063 (isEmpty!17038 (tail!4097 tl!4068)))))

(declare-fun b!2560564 () Bool)

(assert (=> b!2560564 (= e!1617091 e!1617094)))

(declare-fun res!1078060 () Bool)

(assert (=> b!2560564 (=> res!1078060 e!1617094)))

(assert (=> b!2560564 (= res!1078060 call!163988)))

(declare-fun b!2560565 () Bool)

(declare-fun res!1078059 () Bool)

(assert (=> b!2560565 (=> (not res!1078059) (not e!1617093))))

(assert (=> b!2560565 (= res!1078059 (not call!163988))))

(declare-fun b!2560566 () Bool)

(declare-fun res!1078061 () Bool)

(assert (=> b!2560566 (=> res!1078061 e!1617090)))

(assert (=> b!2560566 (= res!1078061 e!1617093)))

(declare-fun res!1078056 () Bool)

(assert (=> b!2560566 (=> (not res!1078056) (not e!1617093))))

(assert (=> b!2560566 (= res!1078056 lt!904675)))

(declare-fun b!2560567 () Bool)

(assert (=> b!2560567 (= e!1617088 (not lt!904675))))

(assert (= (and d!725429 c!411319) b!2560557))

(assert (= (and d!725429 (not c!411319)) b!2560556))

(assert (= (and d!725429 c!411318) b!2560562))

(assert (= (and d!725429 (not c!411318)) b!2560558))

(assert (= (and b!2560558 c!411320) b!2560567))

(assert (= (and b!2560558 (not c!411320)) b!2560554))

(assert (= (and b!2560554 (not res!1078058)) b!2560566))

(assert (= (and b!2560566 res!1078056) b!2560565))

(assert (= (and b!2560565 res!1078059) b!2560563))

(assert (= (and b!2560563 res!1078063) b!2560555))

(assert (= (and b!2560566 (not res!1078061)) b!2560560))

(assert (= (and b!2560560 res!1078057) b!2560564))

(assert (= (and b!2560564 (not res!1078060)) b!2560559))

(assert (= (and b!2560559 (not res!1078062)) b!2560561))

(assert (= (or b!2560562 b!2560564 b!2560565) bm!163983))

(assert (=> b!2560561 m!2900859))

(assert (=> b!2560563 m!2900861))

(assert (=> b!2560563 m!2900861))

(assert (=> b!2560563 m!2900863))

(assert (=> b!2560559 m!2900861))

(assert (=> b!2560559 m!2900861))

(assert (=> b!2560559 m!2900863))

(declare-fun m!2900915 () Bool)

(assert (=> b!2560557 m!2900915))

(assert (=> b!2560555 m!2900859))

(assert (=> bm!163983 m!2900867))

(assert (=> d!725429 m!2900867))

(assert (=> d!725429 m!2900877))

(assert (=> b!2560556 m!2900859))

(assert (=> b!2560556 m!2900859))

(declare-fun m!2900917 () Bool)

(assert (=> b!2560556 m!2900917))

(assert (=> b!2560556 m!2900861))

(assert (=> b!2560556 m!2900917))

(assert (=> b!2560556 m!2900861))

(declare-fun m!2900919 () Bool)

(assert (=> b!2560556 m!2900919))

(assert (=> b!2560379 d!725429))

(declare-fun b!2560702 () Bool)

(declare-fun e!1617164 () Regex!7615)

(declare-fun e!1617160 () Regex!7615)

(assert (=> b!2560702 (= e!1617164 e!1617160)))

(declare-fun c!411356 () Bool)

(assert (=> b!2560702 (= c!411356 ((_ is Star!7615) (regTwo!15742 r!27340)))))

(declare-fun call!164011 () Regex!7615)

(declare-fun c!411355 () Bool)

(declare-fun bm!164006 () Bool)

(assert (=> bm!164006 (= call!164011 (derivativeStep!2184 (ite c!411355 (regOne!15743 (regTwo!15742 r!27340)) (ite c!411356 (reg!7944 (regTwo!15742 r!27340)) (regOne!15742 (regTwo!15742 r!27340)))) c!14016))))

(declare-fun d!725431 () Bool)

(declare-fun lt!904690 () Regex!7615)

(assert (=> d!725431 (validRegex!3241 lt!904690)))

(declare-fun e!1617162 () Regex!7615)

(assert (=> d!725431 (= lt!904690 e!1617162)))

(declare-fun c!411353 () Bool)

(assert (=> d!725431 (= c!411353 (or ((_ is EmptyExpr!7615) (regTwo!15742 r!27340)) ((_ is EmptyLang!7615) (regTwo!15742 r!27340))))))

(assert (=> d!725431 (validRegex!3241 (regTwo!15742 r!27340))))

(assert (=> d!725431 (= (derivativeStep!2184 (regTwo!15742 r!27340) c!14016) lt!904690)))

(declare-fun bm!164007 () Bool)

(declare-fun call!164012 () Regex!7615)

(declare-fun call!164014 () Regex!7615)

(assert (=> bm!164007 (= call!164012 call!164014)))

(declare-fun b!2560703 () Bool)

(declare-fun c!411357 () Bool)

(assert (=> b!2560703 (= c!411357 (nullable!2532 (regOne!15742 (regTwo!15742 r!27340))))))

(declare-fun e!1617163 () Regex!7615)

(assert (=> b!2560703 (= e!1617160 e!1617163)))

(declare-fun b!2560704 () Bool)

(assert (=> b!2560704 (= e!1617163 (Union!7615 (Concat!12311 call!164012 (regTwo!15742 (regTwo!15742 r!27340))) EmptyLang!7615))))

(declare-fun b!2560705 () Bool)

(assert (=> b!2560705 (= e!1617162 EmptyLang!7615)))

(declare-fun call!164013 () Regex!7615)

(declare-fun b!2560706 () Bool)

(assert (=> b!2560706 (= e!1617163 (Union!7615 (Concat!12311 call!164012 (regTwo!15742 (regTwo!15742 r!27340))) call!164013))))

(declare-fun b!2560707 () Bool)

(assert (=> b!2560707 (= e!1617164 (Union!7615 call!164011 call!164013))))

(declare-fun b!2560708 () Bool)

(declare-fun e!1617161 () Regex!7615)

(assert (=> b!2560708 (= e!1617162 e!1617161)))

(declare-fun c!411354 () Bool)

(assert (=> b!2560708 (= c!411354 ((_ is ElementMatch!7615) (regTwo!15742 r!27340)))))

(declare-fun b!2560709 () Bool)

(assert (=> b!2560709 (= c!411355 ((_ is Union!7615) (regTwo!15742 r!27340)))))

(assert (=> b!2560709 (= e!1617161 e!1617164)))

(declare-fun b!2560710 () Bool)

(assert (=> b!2560710 (= e!1617161 (ite (= c!14016 (c!411269 (regTwo!15742 r!27340))) EmptyExpr!7615 EmptyLang!7615))))

(declare-fun b!2560711 () Bool)

(assert (=> b!2560711 (= e!1617160 (Concat!12311 call!164014 (regTwo!15742 r!27340)))))

(declare-fun bm!164008 () Bool)

(assert (=> bm!164008 (= call!164014 call!164011)))

(declare-fun bm!164009 () Bool)

(assert (=> bm!164009 (= call!164013 (derivativeStep!2184 (ite c!411355 (regTwo!15743 (regTwo!15742 r!27340)) (regTwo!15742 (regTwo!15742 r!27340))) c!14016))))

(assert (= (and d!725431 c!411353) b!2560705))

(assert (= (and d!725431 (not c!411353)) b!2560708))

(assert (= (and b!2560708 c!411354) b!2560710))

(assert (= (and b!2560708 (not c!411354)) b!2560709))

(assert (= (and b!2560709 c!411355) b!2560707))

(assert (= (and b!2560709 (not c!411355)) b!2560702))

(assert (= (and b!2560702 c!411356) b!2560711))

(assert (= (and b!2560702 (not c!411356)) b!2560703))

(assert (= (and b!2560703 c!411357) b!2560706))

(assert (= (and b!2560703 (not c!411357)) b!2560704))

(assert (= (or b!2560706 b!2560704) bm!164007))

(assert (= (or b!2560711 bm!164007) bm!164008))

(assert (= (or b!2560707 b!2560706) bm!164009))

(assert (= (or b!2560707 bm!164008) bm!164006))

(declare-fun m!2900991 () Bool)

(assert (=> bm!164006 m!2900991))

(declare-fun m!2900993 () Bool)

(assert (=> d!725431 m!2900993))

(declare-fun m!2900995 () Bool)

(assert (=> d!725431 m!2900995))

(declare-fun m!2900997 () Bool)

(assert (=> b!2560703 m!2900997))

(declare-fun m!2900999 () Bool)

(assert (=> bm!164009 m!2900999))

(assert (=> b!2560379 d!725431))

(declare-fun b!2560712 () Bool)

(declare-fun e!1617169 () Regex!7615)

(declare-fun e!1617165 () Regex!7615)

(assert (=> b!2560712 (= e!1617169 e!1617165)))

(declare-fun c!411361 () Bool)

(assert (=> b!2560712 (= c!411361 ((_ is Star!7615) (regOne!15742 r!27340)))))

(declare-fun bm!164010 () Bool)

(declare-fun c!411360 () Bool)

(declare-fun call!164015 () Regex!7615)

(assert (=> bm!164010 (= call!164015 (derivativeStep!2184 (ite c!411360 (regOne!15743 (regOne!15742 r!27340)) (ite c!411361 (reg!7944 (regOne!15742 r!27340)) (regOne!15742 (regOne!15742 r!27340)))) c!14016))))

(declare-fun d!725451 () Bool)

(declare-fun lt!904691 () Regex!7615)

(assert (=> d!725451 (validRegex!3241 lt!904691)))

(declare-fun e!1617167 () Regex!7615)

(assert (=> d!725451 (= lt!904691 e!1617167)))

(declare-fun c!411358 () Bool)

(assert (=> d!725451 (= c!411358 (or ((_ is EmptyExpr!7615) (regOne!15742 r!27340)) ((_ is EmptyLang!7615) (regOne!15742 r!27340))))))

(assert (=> d!725451 (validRegex!3241 (regOne!15742 r!27340))))

(assert (=> d!725451 (= (derivativeStep!2184 (regOne!15742 r!27340) c!14016) lt!904691)))

(declare-fun bm!164011 () Bool)

(declare-fun call!164016 () Regex!7615)

(declare-fun call!164018 () Regex!7615)

(assert (=> bm!164011 (= call!164016 call!164018)))

(declare-fun b!2560713 () Bool)

(declare-fun c!411362 () Bool)

(assert (=> b!2560713 (= c!411362 (nullable!2532 (regOne!15742 (regOne!15742 r!27340))))))

(declare-fun e!1617168 () Regex!7615)

(assert (=> b!2560713 (= e!1617165 e!1617168)))

(declare-fun b!2560714 () Bool)

(assert (=> b!2560714 (= e!1617168 (Union!7615 (Concat!12311 call!164016 (regTwo!15742 (regOne!15742 r!27340))) EmptyLang!7615))))

(declare-fun b!2560715 () Bool)

(assert (=> b!2560715 (= e!1617167 EmptyLang!7615)))

(declare-fun b!2560716 () Bool)

(declare-fun call!164017 () Regex!7615)

(assert (=> b!2560716 (= e!1617168 (Union!7615 (Concat!12311 call!164016 (regTwo!15742 (regOne!15742 r!27340))) call!164017))))

(declare-fun b!2560717 () Bool)

(assert (=> b!2560717 (= e!1617169 (Union!7615 call!164015 call!164017))))

(declare-fun b!2560718 () Bool)

(declare-fun e!1617166 () Regex!7615)

(assert (=> b!2560718 (= e!1617167 e!1617166)))

(declare-fun c!411359 () Bool)

(assert (=> b!2560718 (= c!411359 ((_ is ElementMatch!7615) (regOne!15742 r!27340)))))

(declare-fun b!2560719 () Bool)

(assert (=> b!2560719 (= c!411360 ((_ is Union!7615) (regOne!15742 r!27340)))))

(assert (=> b!2560719 (= e!1617166 e!1617169)))

(declare-fun b!2560720 () Bool)

(assert (=> b!2560720 (= e!1617166 (ite (= c!14016 (c!411269 (regOne!15742 r!27340))) EmptyExpr!7615 EmptyLang!7615))))

(declare-fun b!2560721 () Bool)

(assert (=> b!2560721 (= e!1617165 (Concat!12311 call!164018 (regOne!15742 r!27340)))))

(declare-fun bm!164012 () Bool)

(assert (=> bm!164012 (= call!164018 call!164015)))

(declare-fun bm!164013 () Bool)

(assert (=> bm!164013 (= call!164017 (derivativeStep!2184 (ite c!411360 (regTwo!15743 (regOne!15742 r!27340)) (regTwo!15742 (regOne!15742 r!27340))) c!14016))))

(assert (= (and d!725451 c!411358) b!2560715))

(assert (= (and d!725451 (not c!411358)) b!2560718))

(assert (= (and b!2560718 c!411359) b!2560720))

(assert (= (and b!2560718 (not c!411359)) b!2560719))

(assert (= (and b!2560719 c!411360) b!2560717))

(assert (= (and b!2560719 (not c!411360)) b!2560712))

(assert (= (and b!2560712 c!411361) b!2560721))

(assert (= (and b!2560712 (not c!411361)) b!2560713))

(assert (= (and b!2560713 c!411362) b!2560716))

(assert (= (and b!2560713 (not c!411362)) b!2560714))

(assert (= (or b!2560716 b!2560714) bm!164011))

(assert (= (or b!2560721 bm!164011) bm!164012))

(assert (= (or b!2560717 b!2560716) bm!164013))

(assert (= (or b!2560717 bm!164012) bm!164010))

(declare-fun m!2901001 () Bool)

(assert (=> bm!164010 m!2901001))

(declare-fun m!2901003 () Bool)

(assert (=> d!725451 m!2901003))

(declare-fun m!2901005 () Bool)

(assert (=> d!725451 m!2901005))

(declare-fun m!2901007 () Bool)

(assert (=> b!2560713 m!2901007))

(declare-fun m!2901009 () Bool)

(assert (=> bm!164013 m!2901009))

(assert (=> b!2560379 d!725451))

(declare-fun b!2560740 () Bool)

(declare-fun e!1617187 () Bool)

(declare-fun e!1617190 () Bool)

(assert (=> b!2560740 (= e!1617187 e!1617190)))

(declare-fun c!411368 () Bool)

(assert (=> b!2560740 (= c!411368 ((_ is Union!7615) r!27340))))

(declare-fun b!2560741 () Bool)

(declare-fun e!1617184 () Bool)

(declare-fun call!164026 () Bool)

(assert (=> b!2560741 (= e!1617184 call!164026)))

(declare-fun b!2560742 () Bool)

(declare-fun e!1617188 () Bool)

(assert (=> b!2560742 (= e!1617187 e!1617188)))

(declare-fun res!1078113 () Bool)

(assert (=> b!2560742 (= res!1078113 (not (nullable!2532 (reg!7944 r!27340))))))

(assert (=> b!2560742 (=> (not res!1078113) (not e!1617188))))

(declare-fun b!2560743 () Bool)

(declare-fun e!1617185 () Bool)

(assert (=> b!2560743 (= e!1617185 e!1617187)))

(declare-fun c!411367 () Bool)

(assert (=> b!2560743 (= c!411367 ((_ is Star!7615) r!27340))))

(declare-fun b!2560744 () Bool)

(declare-fun e!1617186 () Bool)

(declare-fun e!1617189 () Bool)

(assert (=> b!2560744 (= e!1617186 e!1617189)))

(declare-fun res!1078110 () Bool)

(assert (=> b!2560744 (=> (not res!1078110) (not e!1617189))))

(assert (=> b!2560744 (= res!1078110 call!164026)))

(declare-fun bm!164020 () Bool)

(declare-fun call!164027 () Bool)

(assert (=> bm!164020 (= call!164027 (validRegex!3241 (ite c!411368 (regOne!15743 r!27340) (regTwo!15742 r!27340))))))

(declare-fun d!725453 () Bool)

(declare-fun res!1078109 () Bool)

(assert (=> d!725453 (=> res!1078109 e!1617185)))

(assert (=> d!725453 (= res!1078109 ((_ is ElementMatch!7615) r!27340))))

(assert (=> d!725453 (= (validRegex!3241 r!27340) e!1617185)))

(declare-fun bm!164021 () Bool)

(declare-fun call!164025 () Bool)

(assert (=> bm!164021 (= call!164026 call!164025)))

(declare-fun b!2560745 () Bool)

(declare-fun res!1078112 () Bool)

(assert (=> b!2560745 (=> res!1078112 e!1617186)))

(assert (=> b!2560745 (= res!1078112 (not ((_ is Concat!12311) r!27340)))))

(assert (=> b!2560745 (= e!1617190 e!1617186)))

(declare-fun b!2560746 () Bool)

(assert (=> b!2560746 (= e!1617189 call!164027)))

(declare-fun b!2560747 () Bool)

(declare-fun res!1078111 () Bool)

(assert (=> b!2560747 (=> (not res!1078111) (not e!1617184))))

(assert (=> b!2560747 (= res!1078111 call!164027)))

(assert (=> b!2560747 (= e!1617190 e!1617184)))

(declare-fun b!2560748 () Bool)

(assert (=> b!2560748 (= e!1617188 call!164025)))

(declare-fun bm!164022 () Bool)

(assert (=> bm!164022 (= call!164025 (validRegex!3241 (ite c!411367 (reg!7944 r!27340) (ite c!411368 (regTwo!15743 r!27340) (regOne!15742 r!27340)))))))

(assert (= (and d!725453 (not res!1078109)) b!2560743))

(assert (= (and b!2560743 c!411367) b!2560742))

(assert (= (and b!2560743 (not c!411367)) b!2560740))

(assert (= (and b!2560742 res!1078113) b!2560748))

(assert (= (and b!2560740 c!411368) b!2560747))

(assert (= (and b!2560740 (not c!411368)) b!2560745))

(assert (= (and b!2560747 res!1078111) b!2560741))

(assert (= (and b!2560745 (not res!1078112)) b!2560744))

(assert (= (and b!2560744 res!1078110) b!2560746))

(assert (= (or b!2560747 b!2560746) bm!164020))

(assert (= (or b!2560741 b!2560744) bm!164021))

(assert (= (or b!2560748 bm!164021) bm!164022))

(declare-fun m!2901011 () Bool)

(assert (=> b!2560742 m!2901011))

(declare-fun m!2901013 () Bool)

(assert (=> bm!164020 m!2901013))

(declare-fun m!2901015 () Bool)

(assert (=> bm!164022 m!2901015))

(assert (=> start!247908 d!725453))

(declare-fun b!2560749 () Bool)

(declare-fun res!1078116 () Bool)

(declare-fun e!1617193 () Bool)

(assert (=> b!2560749 (=> res!1078116 e!1617193)))

(assert (=> b!2560749 (= res!1078116 (not ((_ is ElementMatch!7615) lt!904650)))))

(declare-fun e!1617191 () Bool)

(assert (=> b!2560749 (= e!1617191 e!1617193)))

(declare-fun d!725455 () Bool)

(declare-fun e!1617195 () Bool)

(assert (=> d!725455 e!1617195))

(declare-fun c!411369 () Bool)

(assert (=> d!725455 (= c!411369 ((_ is EmptyExpr!7615) lt!904650))))

(declare-fun lt!904692 () Bool)

(declare-fun e!1617192 () Bool)

(assert (=> d!725455 (= lt!904692 e!1617192)))

(declare-fun c!411370 () Bool)

(assert (=> d!725455 (= c!411370 (isEmpty!17038 tl!4068))))

(assert (=> d!725455 (validRegex!3241 lt!904650)))

(assert (=> d!725455 (= (matchR!3560 lt!904650 tl!4068) lt!904692)))

(declare-fun b!2560750 () Bool)

(declare-fun e!1617196 () Bool)

(assert (=> b!2560750 (= e!1617196 (= (head!5822 tl!4068) (c!411269 lt!904650)))))

(declare-fun b!2560751 () Bool)

(assert (=> b!2560751 (= e!1617192 (matchR!3560 (derivativeStep!2184 lt!904650 (head!5822 tl!4068)) (tail!4097 tl!4068)))))

(declare-fun b!2560752 () Bool)

(assert (=> b!2560752 (= e!1617192 (nullable!2532 lt!904650))))

(declare-fun b!2560753 () Bool)

(assert (=> b!2560753 (= e!1617195 e!1617191)))

(declare-fun c!411371 () Bool)

(assert (=> b!2560753 (= c!411371 ((_ is EmptyLang!7615) lt!904650))))

(declare-fun bm!164023 () Bool)

(declare-fun call!164028 () Bool)

(assert (=> bm!164023 (= call!164028 (isEmpty!17038 tl!4068))))

(declare-fun b!2560754 () Bool)

(declare-fun res!1078120 () Bool)

(declare-fun e!1617197 () Bool)

(assert (=> b!2560754 (=> res!1078120 e!1617197)))

(assert (=> b!2560754 (= res!1078120 (not (isEmpty!17038 (tail!4097 tl!4068))))))

(declare-fun b!2560755 () Bool)

(declare-fun e!1617194 () Bool)

(assert (=> b!2560755 (= e!1617193 e!1617194)))

(declare-fun res!1078115 () Bool)

(assert (=> b!2560755 (=> (not res!1078115) (not e!1617194))))

(assert (=> b!2560755 (= res!1078115 (not lt!904692))))

(declare-fun b!2560756 () Bool)

(assert (=> b!2560756 (= e!1617197 (not (= (head!5822 tl!4068) (c!411269 lt!904650))))))

(declare-fun b!2560757 () Bool)

(assert (=> b!2560757 (= e!1617195 (= lt!904692 call!164028))))

(declare-fun b!2560758 () Bool)

(declare-fun res!1078121 () Bool)

(assert (=> b!2560758 (=> (not res!1078121) (not e!1617196))))

(assert (=> b!2560758 (= res!1078121 (isEmpty!17038 (tail!4097 tl!4068)))))

(declare-fun b!2560759 () Bool)

(assert (=> b!2560759 (= e!1617194 e!1617197)))

(declare-fun res!1078118 () Bool)

(assert (=> b!2560759 (=> res!1078118 e!1617197)))

(assert (=> b!2560759 (= res!1078118 call!164028)))

(declare-fun b!2560760 () Bool)

(declare-fun res!1078117 () Bool)

(assert (=> b!2560760 (=> (not res!1078117) (not e!1617196))))

(assert (=> b!2560760 (= res!1078117 (not call!164028))))

(declare-fun b!2560761 () Bool)

(declare-fun res!1078119 () Bool)

(assert (=> b!2560761 (=> res!1078119 e!1617193)))

(assert (=> b!2560761 (= res!1078119 e!1617196)))

(declare-fun res!1078114 () Bool)

(assert (=> b!2560761 (=> (not res!1078114) (not e!1617196))))

(assert (=> b!2560761 (= res!1078114 lt!904692)))

(declare-fun b!2560762 () Bool)

(assert (=> b!2560762 (= e!1617191 (not lt!904692))))

(assert (= (and d!725455 c!411370) b!2560752))

(assert (= (and d!725455 (not c!411370)) b!2560751))

(assert (= (and d!725455 c!411369) b!2560757))

(assert (= (and d!725455 (not c!411369)) b!2560753))

(assert (= (and b!2560753 c!411371) b!2560762))

(assert (= (and b!2560753 (not c!411371)) b!2560749))

(assert (= (and b!2560749 (not res!1078116)) b!2560761))

(assert (= (and b!2560761 res!1078114) b!2560760))

(assert (= (and b!2560760 res!1078117) b!2560758))

(assert (= (and b!2560758 res!1078121) b!2560750))

(assert (= (and b!2560761 (not res!1078119)) b!2560755))

(assert (= (and b!2560755 res!1078115) b!2560759))

(assert (= (and b!2560759 (not res!1078118)) b!2560754))

(assert (= (and b!2560754 (not res!1078120)) b!2560756))

(assert (= (or b!2560757 b!2560759 b!2560760) bm!164023))

(assert (=> b!2560756 m!2900859))

(assert (=> b!2560758 m!2900861))

(assert (=> b!2560758 m!2900861))

(assert (=> b!2560758 m!2900863))

(assert (=> b!2560754 m!2900861))

(assert (=> b!2560754 m!2900861))

(assert (=> b!2560754 m!2900863))

(declare-fun m!2901017 () Bool)

(assert (=> b!2560752 m!2901017))

(assert (=> b!2560750 m!2900859))

(assert (=> bm!164023 m!2900867))

(assert (=> d!725455 m!2900867))

(assert (=> d!725455 m!2900813))

(assert (=> b!2560751 m!2900859))

(assert (=> b!2560751 m!2900859))

(declare-fun m!2901019 () Bool)

(assert (=> b!2560751 m!2901019))

(assert (=> b!2560751 m!2900861))

(assert (=> b!2560751 m!2901019))

(assert (=> b!2560751 m!2900861))

(declare-fun m!2901021 () Bool)

(assert (=> b!2560751 m!2901021))

(assert (=> b!2560380 d!725455))

(declare-fun d!725457 () Bool)

(assert (=> d!725457 (= (nullable!2532 (derivative!310 (derivativeStep!2184 r!27340 c!14016) tl!4068)) (nullableFct!757 (derivative!310 (derivativeStep!2184 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469821 () Bool)

(assert (= bs!469821 d!725457))

(assert (=> bs!469821 m!2900807))

(declare-fun m!2901023 () Bool)

(assert (=> bs!469821 m!2901023))

(assert (=> b!2560370 d!725457))

(declare-fun d!725459 () Bool)

(declare-fun lt!904693 () Regex!7615)

(assert (=> d!725459 (validRegex!3241 lt!904693)))

(declare-fun e!1617198 () Regex!7615)

(assert (=> d!725459 (= lt!904693 e!1617198)))

(declare-fun c!411372 () Bool)

(assert (=> d!725459 (= c!411372 ((_ is Cons!29580) tl!4068))))

(assert (=> d!725459 (validRegex!3241 (derivativeStep!2184 r!27340 c!14016))))

(assert (=> d!725459 (= (derivative!310 (derivativeStep!2184 r!27340 c!14016) tl!4068) lt!904693)))

(declare-fun b!2560763 () Bool)

(assert (=> b!2560763 (= e!1617198 (derivative!310 (derivativeStep!2184 (derivativeStep!2184 r!27340 c!14016) (h!35000 tl!4068)) (t!211379 tl!4068)))))

(declare-fun b!2560764 () Bool)

(assert (=> b!2560764 (= e!1617198 (derivativeStep!2184 r!27340 c!14016))))

(assert (= (and d!725459 c!411372) b!2560763))

(assert (= (and d!725459 (not c!411372)) b!2560764))

(declare-fun m!2901025 () Bool)

(assert (=> d!725459 m!2901025))

(assert (=> d!725459 m!2900805))

(declare-fun m!2901027 () Bool)

(assert (=> d!725459 m!2901027))

(assert (=> b!2560763 m!2900805))

(declare-fun m!2901029 () Bool)

(assert (=> b!2560763 m!2901029))

(assert (=> b!2560763 m!2901029))

(declare-fun m!2901031 () Bool)

(assert (=> b!2560763 m!2901031))

(assert (=> b!2560370 d!725459))

(declare-fun b!2560765 () Bool)

(declare-fun e!1617203 () Regex!7615)

(declare-fun e!1617199 () Regex!7615)

(assert (=> b!2560765 (= e!1617203 e!1617199)))

(declare-fun c!411376 () Bool)

(assert (=> b!2560765 (= c!411376 ((_ is Star!7615) r!27340))))

(declare-fun call!164029 () Regex!7615)

(declare-fun bm!164024 () Bool)

(declare-fun c!411375 () Bool)

(assert (=> bm!164024 (= call!164029 (derivativeStep!2184 (ite c!411375 (regOne!15743 r!27340) (ite c!411376 (reg!7944 r!27340) (regOne!15742 r!27340))) c!14016))))

(declare-fun d!725461 () Bool)

(declare-fun lt!904694 () Regex!7615)

(assert (=> d!725461 (validRegex!3241 lt!904694)))

(declare-fun e!1617201 () Regex!7615)

(assert (=> d!725461 (= lt!904694 e!1617201)))

(declare-fun c!411373 () Bool)

(assert (=> d!725461 (= c!411373 (or ((_ is EmptyExpr!7615) r!27340) ((_ is EmptyLang!7615) r!27340)))))

(assert (=> d!725461 (validRegex!3241 r!27340)))

(assert (=> d!725461 (= (derivativeStep!2184 r!27340 c!14016) lt!904694)))

(declare-fun bm!164025 () Bool)

(declare-fun call!164030 () Regex!7615)

(declare-fun call!164032 () Regex!7615)

(assert (=> bm!164025 (= call!164030 call!164032)))

(declare-fun b!2560766 () Bool)

(declare-fun c!411377 () Bool)

(assert (=> b!2560766 (= c!411377 (nullable!2532 (regOne!15742 r!27340)))))

(declare-fun e!1617202 () Regex!7615)

(assert (=> b!2560766 (= e!1617199 e!1617202)))

(declare-fun b!2560767 () Bool)

(assert (=> b!2560767 (= e!1617202 (Union!7615 (Concat!12311 call!164030 (regTwo!15742 r!27340)) EmptyLang!7615))))

(declare-fun b!2560768 () Bool)

(assert (=> b!2560768 (= e!1617201 EmptyLang!7615)))

(declare-fun b!2560769 () Bool)

(declare-fun call!164031 () Regex!7615)

(assert (=> b!2560769 (= e!1617202 (Union!7615 (Concat!12311 call!164030 (regTwo!15742 r!27340)) call!164031))))

(declare-fun b!2560770 () Bool)

(assert (=> b!2560770 (= e!1617203 (Union!7615 call!164029 call!164031))))

(declare-fun b!2560771 () Bool)

(declare-fun e!1617200 () Regex!7615)

(assert (=> b!2560771 (= e!1617201 e!1617200)))

(declare-fun c!411374 () Bool)

(assert (=> b!2560771 (= c!411374 ((_ is ElementMatch!7615) r!27340))))

(declare-fun b!2560772 () Bool)

(assert (=> b!2560772 (= c!411375 ((_ is Union!7615) r!27340))))

(assert (=> b!2560772 (= e!1617200 e!1617203)))

(declare-fun b!2560773 () Bool)

(assert (=> b!2560773 (= e!1617200 (ite (= c!14016 (c!411269 r!27340)) EmptyExpr!7615 EmptyLang!7615))))

(declare-fun b!2560774 () Bool)

(assert (=> b!2560774 (= e!1617199 (Concat!12311 call!164032 r!27340))))

(declare-fun bm!164026 () Bool)

(assert (=> bm!164026 (= call!164032 call!164029)))

(declare-fun bm!164027 () Bool)

(assert (=> bm!164027 (= call!164031 (derivativeStep!2184 (ite c!411375 (regTwo!15743 r!27340) (regTwo!15742 r!27340)) c!14016))))

(assert (= (and d!725461 c!411373) b!2560768))

(assert (= (and d!725461 (not c!411373)) b!2560771))

(assert (= (and b!2560771 c!411374) b!2560773))

(assert (= (and b!2560771 (not c!411374)) b!2560772))

(assert (= (and b!2560772 c!411375) b!2560770))

(assert (= (and b!2560772 (not c!411375)) b!2560765))

(assert (= (and b!2560765 c!411376) b!2560774))

(assert (= (and b!2560765 (not c!411376)) b!2560766))

(assert (= (and b!2560766 c!411377) b!2560769))

(assert (= (and b!2560766 (not c!411377)) b!2560767))

(assert (= (or b!2560769 b!2560767) bm!164025))

(assert (= (or b!2560774 bm!164025) bm!164026))

(assert (= (or b!2560770 b!2560769) bm!164027))

(assert (= (or b!2560770 bm!164026) bm!164024))

(declare-fun m!2901033 () Bool)

(assert (=> bm!164024 m!2901033))

(declare-fun m!2901035 () Bool)

(assert (=> d!725461 m!2901035))

(assert (=> d!725461 m!2900803))

(assert (=> b!2560766 m!2900815))

(declare-fun m!2901037 () Bool)

(assert (=> bm!164027 m!2901037))

(assert (=> b!2560370 d!725461))

(declare-fun b!2560775 () Bool)

(declare-fun e!1617207 () Bool)

(declare-fun e!1617210 () Bool)

(assert (=> b!2560775 (= e!1617207 e!1617210)))

(declare-fun c!411379 () Bool)

(assert (=> b!2560775 (= c!411379 ((_ is Union!7615) lt!904650))))

(declare-fun b!2560776 () Bool)

(declare-fun e!1617204 () Bool)

(declare-fun call!164034 () Bool)

(assert (=> b!2560776 (= e!1617204 call!164034)))

(declare-fun b!2560777 () Bool)

(declare-fun e!1617208 () Bool)

(assert (=> b!2560777 (= e!1617207 e!1617208)))

(declare-fun res!1078126 () Bool)

(assert (=> b!2560777 (= res!1078126 (not (nullable!2532 (reg!7944 lt!904650))))))

(assert (=> b!2560777 (=> (not res!1078126) (not e!1617208))))

(declare-fun b!2560778 () Bool)

(declare-fun e!1617205 () Bool)

(assert (=> b!2560778 (= e!1617205 e!1617207)))

(declare-fun c!411378 () Bool)

(assert (=> b!2560778 (= c!411378 ((_ is Star!7615) lt!904650))))

(declare-fun b!2560779 () Bool)

(declare-fun e!1617206 () Bool)

(declare-fun e!1617209 () Bool)

(assert (=> b!2560779 (= e!1617206 e!1617209)))

(declare-fun res!1078123 () Bool)

(assert (=> b!2560779 (=> (not res!1078123) (not e!1617209))))

(assert (=> b!2560779 (= res!1078123 call!164034)))

(declare-fun bm!164028 () Bool)

(declare-fun call!164035 () Bool)

(assert (=> bm!164028 (= call!164035 (validRegex!3241 (ite c!411379 (regOne!15743 lt!904650) (regTwo!15742 lt!904650))))))

(declare-fun d!725463 () Bool)

(declare-fun res!1078122 () Bool)

(assert (=> d!725463 (=> res!1078122 e!1617205)))

(assert (=> d!725463 (= res!1078122 ((_ is ElementMatch!7615) lt!904650))))

(assert (=> d!725463 (= (validRegex!3241 lt!904650) e!1617205)))

(declare-fun bm!164029 () Bool)

(declare-fun call!164033 () Bool)

(assert (=> bm!164029 (= call!164034 call!164033)))

(declare-fun b!2560780 () Bool)

(declare-fun res!1078125 () Bool)

(assert (=> b!2560780 (=> res!1078125 e!1617206)))

(assert (=> b!2560780 (= res!1078125 (not ((_ is Concat!12311) lt!904650)))))

(assert (=> b!2560780 (= e!1617210 e!1617206)))

(declare-fun b!2560781 () Bool)

(assert (=> b!2560781 (= e!1617209 call!164035)))

(declare-fun b!2560782 () Bool)

(declare-fun res!1078124 () Bool)

(assert (=> b!2560782 (=> (not res!1078124) (not e!1617204))))

(assert (=> b!2560782 (= res!1078124 call!164035)))

(assert (=> b!2560782 (= e!1617210 e!1617204)))

(declare-fun b!2560783 () Bool)

(assert (=> b!2560783 (= e!1617208 call!164033)))

(declare-fun bm!164030 () Bool)

(assert (=> bm!164030 (= call!164033 (validRegex!3241 (ite c!411378 (reg!7944 lt!904650) (ite c!411379 (regTwo!15743 lt!904650) (regOne!15742 lt!904650)))))))

(assert (= (and d!725463 (not res!1078122)) b!2560778))

(assert (= (and b!2560778 c!411378) b!2560777))

(assert (= (and b!2560778 (not c!411378)) b!2560775))

(assert (= (and b!2560777 res!1078126) b!2560783))

(assert (= (and b!2560775 c!411379) b!2560782))

(assert (= (and b!2560775 (not c!411379)) b!2560780))

(assert (= (and b!2560782 res!1078124) b!2560776))

(assert (= (and b!2560780 (not res!1078125)) b!2560779))

(assert (= (and b!2560779 res!1078123) b!2560781))

(assert (= (or b!2560782 b!2560781) bm!164028))

(assert (= (or b!2560776 b!2560779) bm!164029))

(assert (= (or b!2560783 bm!164029) bm!164030))

(declare-fun m!2901039 () Bool)

(assert (=> b!2560777 m!2901039))

(declare-fun m!2901041 () Bool)

(assert (=> bm!164028 m!2901041))

(declare-fun m!2901043 () Bool)

(assert (=> bm!164030 m!2901043))

(assert (=> b!2560375 d!725463))

(declare-fun b!2560794 () Bool)

(declare-fun e!1617213 () Bool)

(assert (=> b!2560794 (= e!1617213 tp_is_empty!13085)))

(declare-fun b!2560797 () Bool)

(declare-fun tp!815580 () Bool)

(declare-fun tp!815582 () Bool)

(assert (=> b!2560797 (= e!1617213 (and tp!815580 tp!815582))))

(declare-fun b!2560796 () Bool)

(declare-fun tp!815583 () Bool)

(assert (=> b!2560796 (= e!1617213 tp!815583)))

(assert (=> b!2560373 (= tp!815528 e!1617213)))

(declare-fun b!2560795 () Bool)

(declare-fun tp!815579 () Bool)

(declare-fun tp!815581 () Bool)

(assert (=> b!2560795 (= e!1617213 (and tp!815579 tp!815581))))

(assert (= (and b!2560373 ((_ is ElementMatch!7615) (reg!7944 r!27340))) b!2560794))

(assert (= (and b!2560373 ((_ is Concat!12311) (reg!7944 r!27340))) b!2560795))

(assert (= (and b!2560373 ((_ is Star!7615) (reg!7944 r!27340))) b!2560796))

(assert (= (and b!2560373 ((_ is Union!7615) (reg!7944 r!27340))) b!2560797))

(declare-fun b!2560798 () Bool)

(declare-fun e!1617214 () Bool)

(assert (=> b!2560798 (= e!1617214 tp_is_empty!13085)))

(declare-fun b!2560801 () Bool)

(declare-fun tp!815585 () Bool)

(declare-fun tp!815587 () Bool)

(assert (=> b!2560801 (= e!1617214 (and tp!815585 tp!815587))))

(declare-fun b!2560800 () Bool)

(declare-fun tp!815588 () Bool)

(assert (=> b!2560800 (= e!1617214 tp!815588)))

(assert (=> b!2560377 (= tp!815525 e!1617214)))

(declare-fun b!2560799 () Bool)

(declare-fun tp!815584 () Bool)

(declare-fun tp!815586 () Bool)

(assert (=> b!2560799 (= e!1617214 (and tp!815584 tp!815586))))

(assert (= (and b!2560377 ((_ is ElementMatch!7615) (regOne!15743 r!27340))) b!2560798))

(assert (= (and b!2560377 ((_ is Concat!12311) (regOne!15743 r!27340))) b!2560799))

(assert (= (and b!2560377 ((_ is Star!7615) (regOne!15743 r!27340))) b!2560800))

(assert (= (and b!2560377 ((_ is Union!7615) (regOne!15743 r!27340))) b!2560801))

(declare-fun b!2560802 () Bool)

(declare-fun e!1617215 () Bool)

(assert (=> b!2560802 (= e!1617215 tp_is_empty!13085)))

(declare-fun b!2560805 () Bool)

(declare-fun tp!815590 () Bool)

(declare-fun tp!815592 () Bool)

(assert (=> b!2560805 (= e!1617215 (and tp!815590 tp!815592))))

(declare-fun b!2560804 () Bool)

(declare-fun tp!815593 () Bool)

(assert (=> b!2560804 (= e!1617215 tp!815593)))

(assert (=> b!2560377 (= tp!815526 e!1617215)))

(declare-fun b!2560803 () Bool)

(declare-fun tp!815589 () Bool)

(declare-fun tp!815591 () Bool)

(assert (=> b!2560803 (= e!1617215 (and tp!815589 tp!815591))))

(assert (= (and b!2560377 ((_ is ElementMatch!7615) (regTwo!15743 r!27340))) b!2560802))

(assert (= (and b!2560377 ((_ is Concat!12311) (regTwo!15743 r!27340))) b!2560803))

(assert (= (and b!2560377 ((_ is Star!7615) (regTwo!15743 r!27340))) b!2560804))

(assert (= (and b!2560377 ((_ is Union!7615) (regTwo!15743 r!27340))) b!2560805))

(declare-fun b!2560806 () Bool)

(declare-fun e!1617216 () Bool)

(assert (=> b!2560806 (= e!1617216 tp_is_empty!13085)))

(declare-fun b!2560809 () Bool)

(declare-fun tp!815595 () Bool)

(declare-fun tp!815597 () Bool)

(assert (=> b!2560809 (= e!1617216 (and tp!815595 tp!815597))))

(declare-fun b!2560808 () Bool)

(declare-fun tp!815598 () Bool)

(assert (=> b!2560808 (= e!1617216 tp!815598)))

(assert (=> b!2560376 (= tp!815527 e!1617216)))

(declare-fun b!2560807 () Bool)

(declare-fun tp!815594 () Bool)

(declare-fun tp!815596 () Bool)

(assert (=> b!2560807 (= e!1617216 (and tp!815594 tp!815596))))

(assert (= (and b!2560376 ((_ is ElementMatch!7615) (regOne!15742 r!27340))) b!2560806))

(assert (= (and b!2560376 ((_ is Concat!12311) (regOne!15742 r!27340))) b!2560807))

(assert (= (and b!2560376 ((_ is Star!7615) (regOne!15742 r!27340))) b!2560808))

(assert (= (and b!2560376 ((_ is Union!7615) (regOne!15742 r!27340))) b!2560809))

(declare-fun b!2560810 () Bool)

(declare-fun e!1617217 () Bool)

(assert (=> b!2560810 (= e!1617217 tp_is_empty!13085)))

(declare-fun b!2560813 () Bool)

(declare-fun tp!815600 () Bool)

(declare-fun tp!815602 () Bool)

(assert (=> b!2560813 (= e!1617217 (and tp!815600 tp!815602))))

(declare-fun b!2560812 () Bool)

(declare-fun tp!815603 () Bool)

(assert (=> b!2560812 (= e!1617217 tp!815603)))

(assert (=> b!2560376 (= tp!815529 e!1617217)))

(declare-fun b!2560811 () Bool)

(declare-fun tp!815599 () Bool)

(declare-fun tp!815601 () Bool)

(assert (=> b!2560811 (= e!1617217 (and tp!815599 tp!815601))))

(assert (= (and b!2560376 ((_ is ElementMatch!7615) (regTwo!15742 r!27340))) b!2560810))

(assert (= (and b!2560376 ((_ is Concat!12311) (regTwo!15742 r!27340))) b!2560811))

(assert (= (and b!2560376 ((_ is Star!7615) (regTwo!15742 r!27340))) b!2560812))

(assert (= (and b!2560376 ((_ is Union!7615) (regTwo!15742 r!27340))) b!2560813))

(declare-fun b!2560818 () Bool)

(declare-fun e!1617220 () Bool)

(declare-fun tp!815606 () Bool)

(assert (=> b!2560818 (= e!1617220 (and tp_is_empty!13085 tp!815606))))

(assert (=> b!2560371 (= tp!815530 e!1617220)))

(assert (= (and b!2560371 ((_ is Cons!29580) (t!211379 tl!4068))) b!2560818))

(check-sat (not b!2560750) (not d!725431) (not d!725417) (not b!2560460) (not b!2560559) (not b!2560492) (not d!725421) (not bm!163960) (not bm!164020) (not bm!164006) (not d!725429) (not bm!164022) (not b!2560493) (not b!2560498) (not b!2560538) (not b!2560796) (not b!2560801) (not b!2560459) (not b!2560804) (not d!725457) (not b!2560818) (not b!2560763) (not b!2560756) (not d!725451) (not bm!164030) (not b!2560797) (not b!2560561) (not b!2560751) (not b!2560556) (not b!2560466) (not d!725459) (not b!2560754) (not bm!164024) (not b!2560799) (not d!725425) (not d!725419) (not b!2560811) (not b!2560805) (not b!2560742) (not bm!163983) (not b!2560458) (not b!2560813) (not b!2560494) (not b!2560500) (not b!2560713) (not bm!164028) (not b!2560552) (not bm!163969) (not b!2560777) (not b!2560464) (not b!2560766) (not b!2560752) (not b!2560809) (not b!2560563) (not d!725461) (not b!2560808) (not b!2560703) (not d!725455) (not bm!164023) tp_is_empty!13085 (not bm!164027) (not b!2560795) (not b!2560555) (not d!725407) (not bm!164009) (not bm!164013) (not b!2560807) (not b!2560758) (not b!2560496) (not b!2560803) (not d!725405) (not b!2560812) (not bm!164010) (not b!2560800) (not b!2560537) (not b!2560462) (not b!2560557))
(check-sat)
