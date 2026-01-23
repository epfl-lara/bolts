; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292264 () Bool)

(assert start!292264)

(declare-fun b!3062444 () Bool)

(declare-fun e!1917481 () Bool)

(declare-fun tp!967549 () Bool)

(declare-fun tp!967550 () Bool)

(assert (=> b!3062444 (= e!1917481 (and tp!967549 tp!967550))))

(declare-fun b!3062445 () Bool)

(declare-fun res!1257236 () Bool)

(declare-fun e!1917484 () Bool)

(assert (=> b!3062445 (=> res!1257236 e!1917484)))

(declare-datatypes ((C!19168 0))(
  ( (C!19169 (val!11620 Int)) )
))
(declare-datatypes ((Regex!9491 0))(
  ( (ElementMatch!9491 (c!508483 C!19168)) (Concat!14812 (regOne!19494 Regex!9491) (regTwo!19494 Regex!9491)) (EmptyExpr!9491) (Star!9491 (reg!9820 Regex!9491)) (EmptyLang!9491) (Union!9491 (regOne!19495 Regex!9491) (regTwo!19495 Regex!9491)) )
))
(declare-fun lt!1050090 () Regex!9491)

(declare-fun isEmptyLang!542 (Regex!9491) Bool)

(assert (=> b!3062445 (= res!1257236 (isEmptyLang!542 lt!1050090))))

(declare-fun res!1257239 () Bool)

(declare-fun e!1917485 () Bool)

(assert (=> start!292264 (=> (not res!1257239) (not e!1917485))))

(declare-fun r!17423 () Regex!9491)

(declare-fun validRegex!4224 (Regex!9491) Bool)

(assert (=> start!292264 (= res!1257239 (validRegex!4224 r!17423))))

(assert (=> start!292264 e!1917485))

(assert (=> start!292264 e!1917481))

(declare-fun e!1917482 () Bool)

(assert (=> start!292264 e!1917482))

(declare-fun b!3062446 () Bool)

(declare-fun tp_is_empty!16545 () Bool)

(assert (=> b!3062446 (= e!1917481 tp_is_empty!16545)))

(declare-fun b!3062447 () Bool)

(declare-fun e!1917483 () Bool)

(assert (=> b!3062447 (= e!1917484 e!1917483)))

(declare-fun res!1257241 () Bool)

(assert (=> b!3062447 (=> res!1257241 e!1917483)))

(declare-fun lt!1050092 () Bool)

(assert (=> b!3062447 (= res!1257241 (not lt!1050092))))

(declare-datatypes ((List!35356 0))(
  ( (Nil!35232) (Cons!35232 (h!40652 C!19168) (t!234421 List!35356)) )
))
(declare-fun s!11993 () List!35356)

(declare-fun matchR!4373 (Regex!9491 List!35356) Bool)

(assert (=> b!3062447 (= lt!1050092 (matchR!4373 lt!1050090 s!11993))))

(assert (=> b!3062447 (= lt!1050092 (matchR!4373 (regTwo!19494 r!17423) s!11993))))

(declare-datatypes ((Unit!49421 0))(
  ( (Unit!49422) )
))
(declare-fun lt!1050095 () Unit!49421)

(declare-fun lemmaSimplifySound!276 (Regex!9491 List!35356) Unit!49421)

(assert (=> b!3062447 (= lt!1050095 (lemmaSimplifySound!276 (regTwo!19494 r!17423) s!11993))))

(declare-fun b!3062448 () Bool)

(declare-fun tp!967551 () Bool)

(assert (=> b!3062448 (= e!1917481 tp!967551)))

(declare-fun b!3062449 () Bool)

(declare-fun res!1257243 () Bool)

(assert (=> b!3062449 (=> res!1257243 e!1917483)))

(declare-fun nullable!3137 (Regex!9491) Bool)

(assert (=> b!3062449 (= res!1257243 (not (nullable!3137 (regOne!19494 r!17423))))))

(declare-fun b!3062450 () Bool)

(declare-fun tp!967553 () Bool)

(assert (=> b!3062450 (= e!1917482 (and tp_is_empty!16545 tp!967553))))

(declare-fun b!3062451 () Bool)

(assert (=> b!3062451 (= e!1917483 (validRegex!4224 (regOne!19494 r!17423)))))

(declare-datatypes ((tuple2!34152 0))(
  ( (tuple2!34153 (_1!20208 List!35356) (_2!20208 List!35356)) )
))
(declare-datatypes ((Option!6808 0))(
  ( (None!6807) (Some!6807 (v!34941 tuple2!34152)) )
))
(declare-fun isDefined!5359 (Option!6808) Bool)

(declare-fun findConcatSeparation!1202 (Regex!9491 Regex!9491 List!35356 List!35356 List!35356) Option!6808)

(assert (=> b!3062451 (isDefined!5359 (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993))))

(declare-fun lt!1050096 () Unit!49421)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!22 (Regex!9491 Regex!9491 List!35356 List!35356 List!35356 List!35356 List!35356) Unit!49421)

(assert (=> b!3062451 (= lt!1050096 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!22 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993 Nil!35232 s!11993))))

(declare-fun b!3062452 () Bool)

(declare-fun tp!967548 () Bool)

(declare-fun tp!967552 () Bool)

(assert (=> b!3062452 (= e!1917481 (and tp!967548 tp!967552))))

(declare-fun b!3062453 () Bool)

(declare-fun e!1917480 () Bool)

(assert (=> b!3062453 (= e!1917485 (not e!1917480))))

(declare-fun res!1257244 () Bool)

(assert (=> b!3062453 (=> res!1257244 e!1917480)))

(declare-fun lt!1050093 () Bool)

(get-info :version)

(assert (=> b!3062453 (= res!1257244 (or lt!1050093 (not ((_ is Concat!14812) r!17423))))))

(declare-fun matchRSpec!1628 (Regex!9491 List!35356) Bool)

(assert (=> b!3062453 (= lt!1050093 (matchRSpec!1628 r!17423 s!11993))))

(assert (=> b!3062453 (= lt!1050093 (matchR!4373 r!17423 s!11993))))

(declare-fun lt!1050091 () Unit!49421)

(declare-fun mainMatchTheorem!1628 (Regex!9491 List!35356) Unit!49421)

(assert (=> b!3062453 (= lt!1050091 (mainMatchTheorem!1628 r!17423 s!11993))))

(declare-fun b!3062454 () Bool)

(declare-fun res!1257237 () Bool)

(assert (=> b!3062454 (=> res!1257237 e!1917483)))

(assert (=> b!3062454 (= res!1257237 (not (matchR!4373 (regOne!19494 r!17423) Nil!35232)))))

(declare-fun b!3062455 () Bool)

(assert (=> b!3062455 (= e!1917480 e!1917484)))

(declare-fun res!1257240 () Bool)

(assert (=> b!3062455 (=> res!1257240 e!1917484)))

(declare-fun lt!1050094 () Regex!9491)

(assert (=> b!3062455 (= res!1257240 (isEmptyLang!542 lt!1050094))))

(declare-fun simplify!446 (Regex!9491) Regex!9491)

(assert (=> b!3062455 (= lt!1050090 (simplify!446 (regTwo!19494 r!17423)))))

(assert (=> b!3062455 (= lt!1050094 (simplify!446 (regOne!19494 r!17423)))))

(declare-fun b!3062456 () Bool)

(declare-fun res!1257242 () Bool)

(assert (=> b!3062456 (=> res!1257242 e!1917480)))

(declare-fun isEmpty!19547 (List!35356) Bool)

(assert (=> b!3062456 (= res!1257242 (isEmpty!19547 s!11993))))

(declare-fun b!3062457 () Bool)

(declare-fun res!1257238 () Bool)

(assert (=> b!3062457 (=> res!1257238 e!1917484)))

(declare-fun isEmptyExpr!548 (Regex!9491) Bool)

(assert (=> b!3062457 (= res!1257238 (not (isEmptyExpr!548 lt!1050094)))))

(assert (= (and start!292264 res!1257239) b!3062453))

(assert (= (and b!3062453 (not res!1257244)) b!3062456))

(assert (= (and b!3062456 (not res!1257242)) b!3062455))

(assert (= (and b!3062455 (not res!1257240)) b!3062445))

(assert (= (and b!3062445 (not res!1257236)) b!3062457))

(assert (= (and b!3062457 (not res!1257238)) b!3062447))

(assert (= (and b!3062447 (not res!1257241)) b!3062449))

(assert (= (and b!3062449 (not res!1257243)) b!3062454))

(assert (= (and b!3062454 (not res!1257237)) b!3062451))

(assert (= (and start!292264 ((_ is ElementMatch!9491) r!17423)) b!3062446))

(assert (= (and start!292264 ((_ is Concat!14812) r!17423)) b!3062444))

(assert (= (and start!292264 ((_ is Star!9491) r!17423)) b!3062448))

(assert (= (and start!292264 ((_ is Union!9491) r!17423)) b!3062452))

(assert (= (and start!292264 ((_ is Cons!35232) s!11993)) b!3062450))

(declare-fun m!3382171 () Bool)

(assert (=> b!3062451 m!3382171))

(declare-fun m!3382173 () Bool)

(assert (=> b!3062451 m!3382173))

(assert (=> b!3062451 m!3382173))

(declare-fun m!3382175 () Bool)

(assert (=> b!3062451 m!3382175))

(declare-fun m!3382177 () Bool)

(assert (=> b!3062451 m!3382177))

(declare-fun m!3382179 () Bool)

(assert (=> b!3062457 m!3382179))

(declare-fun m!3382181 () Bool)

(assert (=> b!3062456 m!3382181))

(declare-fun m!3382183 () Bool)

(assert (=> b!3062453 m!3382183))

(declare-fun m!3382185 () Bool)

(assert (=> b!3062453 m!3382185))

(declare-fun m!3382187 () Bool)

(assert (=> b!3062453 m!3382187))

(declare-fun m!3382189 () Bool)

(assert (=> start!292264 m!3382189))

(declare-fun m!3382191 () Bool)

(assert (=> b!3062449 m!3382191))

(declare-fun m!3382193 () Bool)

(assert (=> b!3062455 m!3382193))

(declare-fun m!3382195 () Bool)

(assert (=> b!3062455 m!3382195))

(declare-fun m!3382197 () Bool)

(assert (=> b!3062455 m!3382197))

(declare-fun m!3382199 () Bool)

(assert (=> b!3062447 m!3382199))

(declare-fun m!3382201 () Bool)

(assert (=> b!3062447 m!3382201))

(declare-fun m!3382203 () Bool)

(assert (=> b!3062447 m!3382203))

(declare-fun m!3382205 () Bool)

(assert (=> b!3062445 m!3382205))

(declare-fun m!3382207 () Bool)

(assert (=> b!3062454 m!3382207))

(check-sat (not b!3062453) (not b!3062450) (not b!3062457) (not start!292264) (not b!3062448) (not b!3062447) (not b!3062451) (not b!3062445) (not b!3062449) tp_is_empty!16545 (not b!3062454) (not b!3062455) (not b!3062444) (not b!3062452) (not b!3062456))
(check-sat)
(get-model)

(declare-fun d!855381 () Bool)

(declare-fun nullableFct!897 (Regex!9491) Bool)

(assert (=> d!855381 (= (nullable!3137 (regOne!19494 r!17423)) (nullableFct!897 (regOne!19494 r!17423)))))

(declare-fun bs!532474 () Bool)

(assert (= bs!532474 d!855381))

(declare-fun m!3382209 () Bool)

(assert (=> bs!532474 m!3382209))

(assert (=> b!3062449 d!855381))

(declare-fun d!855383 () Bool)

(assert (=> d!855383 (= (isEmptyLang!542 lt!1050094) ((_ is EmptyLang!9491) lt!1050094))))

(assert (=> b!3062455 d!855383))

(declare-fun b!3062550 () Bool)

(declare-fun e!1917541 () Regex!9491)

(declare-fun lt!1050112 () Regex!9491)

(assert (=> b!3062550 (= e!1917541 (Star!9491 lt!1050112))))

(declare-fun b!3062551 () Bool)

(declare-fun e!1917545 () Regex!9491)

(declare-fun lt!1050117 () Regex!9491)

(declare-fun lt!1050116 () Regex!9491)

(assert (=> b!3062551 (= e!1917545 (Union!9491 lt!1050117 lt!1050116))))

(declare-fun b!3062552 () Bool)

(declare-fun e!1917538 () Regex!9491)

(declare-fun lt!1050115 () Regex!9491)

(assert (=> b!3062552 (= e!1917538 lt!1050115)))

(declare-fun b!3062553 () Bool)

(declare-fun e!1917539 () Bool)

(declare-fun lt!1050113 () Regex!9491)

(assert (=> b!3062553 (= e!1917539 (= (nullable!3137 lt!1050113) (nullable!3137 (regTwo!19494 r!17423))))))

(declare-fun lt!1050114 () Regex!9491)

(declare-fun call!211946 () Bool)

(declare-fun bm!211939 () Bool)

(declare-fun c!508519 () Bool)

(assert (=> bm!211939 (= call!211946 (isEmptyExpr!548 (ite c!508519 lt!1050112 lt!1050114)))))

(declare-fun c!508521 () Bool)

(declare-fun call!211948 () Regex!9491)

(declare-fun bm!211940 () Bool)

(assert (=> bm!211940 (= call!211948 (simplify!446 (ite c!508519 (reg!9820 (regTwo!19494 r!17423)) (ite c!508521 (regTwo!19495 (regTwo!19494 r!17423)) (regOne!19494 (regTwo!19494 r!17423))))))))

(declare-fun bm!211941 () Bool)

(declare-fun call!211950 () Regex!9491)

(assert (=> bm!211941 (= call!211950 (simplify!446 (ite c!508521 (regOne!19495 (regTwo!19494 r!17423)) (regTwo!19494 (regTwo!19494 r!17423)))))))

(declare-fun bm!211942 () Bool)

(declare-fun call!211945 () Bool)

(assert (=> bm!211942 (= call!211945 (isEmptyLang!542 (ite c!508519 lt!1050112 (ite c!508521 lt!1050117 lt!1050115))))))

(declare-fun b!3062554 () Bool)

(declare-fun e!1917535 () Regex!9491)

(declare-fun e!1917548 () Regex!9491)

(assert (=> b!3062554 (= e!1917535 e!1917548)))

(declare-fun c!508515 () Bool)

(assert (=> b!3062554 (= c!508515 ((_ is ElementMatch!9491) (regTwo!19494 r!17423)))))

(declare-fun call!211949 () Bool)

(declare-fun bm!211943 () Bool)

(assert (=> bm!211943 (= call!211949 (isEmptyLang!542 (ite c!508521 lt!1050116 lt!1050114)))))

(declare-fun d!855385 () Bool)

(assert (=> d!855385 e!1917539))

(declare-fun res!1257277 () Bool)

(assert (=> d!855385 (=> (not res!1257277) (not e!1917539))))

(assert (=> d!855385 (= res!1257277 (validRegex!4224 lt!1050113))))

(assert (=> d!855385 (= lt!1050113 e!1917535)))

(declare-fun c!508522 () Bool)

(assert (=> d!855385 (= c!508522 ((_ is EmptyLang!9491) (regTwo!19494 r!17423)))))

(assert (=> d!855385 (validRegex!4224 (regTwo!19494 r!17423))))

(assert (=> d!855385 (= (simplify!446 (regTwo!19494 r!17423)) lt!1050113)))

(declare-fun b!3062555 () Bool)

(assert (=> b!3062555 (= c!508521 ((_ is Union!9491) (regTwo!19494 r!17423)))))

(declare-fun e!1917544 () Regex!9491)

(declare-fun e!1917543 () Regex!9491)

(assert (=> b!3062555 (= e!1917544 e!1917543)))

(declare-fun b!3062556 () Bool)

(declare-fun e!1917542 () Regex!9491)

(assert (=> b!3062556 (= e!1917542 e!1917544)))

(assert (=> b!3062556 (= c!508519 ((_ is Star!9491) (regTwo!19494 r!17423)))))

(declare-fun b!3062557 () Bool)

(declare-fun e!1917546 () Regex!9491)

(assert (=> b!3062557 (= e!1917543 e!1917546)))

(declare-fun call!211947 () Regex!9491)

(assert (=> b!3062557 (= lt!1050114 call!211947)))

(assert (=> b!3062557 (= lt!1050115 call!211950)))

(declare-fun res!1257275 () Bool)

(assert (=> b!3062557 (= res!1257275 call!211949)))

(declare-fun e!1917537 () Bool)

(assert (=> b!3062557 (=> res!1257275 e!1917537)))

(declare-fun c!508518 () Bool)

(assert (=> b!3062557 (= c!508518 e!1917537)))

(declare-fun bm!211944 () Bool)

(assert (=> bm!211944 (= call!211947 call!211948)))

(declare-fun bm!211945 () Bool)

(declare-fun call!211944 () Bool)

(assert (=> bm!211945 (= call!211944 call!211945)))

(declare-fun b!3062558 () Bool)

(assert (=> b!3062558 (= e!1917541 EmptyExpr!9491)))

(declare-fun b!3062559 () Bool)

(declare-fun c!508525 () Bool)

(assert (=> b!3062559 (= c!508525 ((_ is EmptyExpr!9491) (regTwo!19494 r!17423)))))

(assert (=> b!3062559 (= e!1917548 e!1917542)))

(declare-fun b!3062560 () Bool)

(declare-fun e!1917540 () Regex!9491)

(assert (=> b!3062560 (= e!1917540 lt!1050116)))

(declare-fun b!3062561 () Bool)

(assert (=> b!3062561 (= e!1917537 call!211944)))

(declare-fun b!3062562 () Bool)

(assert (=> b!3062562 (= e!1917542 EmptyExpr!9491)))

(declare-fun b!3062563 () Bool)

(assert (=> b!3062563 (= e!1917543 e!1917540)))

(assert (=> b!3062563 (= lt!1050117 call!211950)))

(assert (=> b!3062563 (= lt!1050116 call!211947)))

(declare-fun c!508524 () Bool)

(assert (=> b!3062563 (= c!508524 call!211944)))

(declare-fun b!3062564 () Bool)

(assert (=> b!3062564 (= e!1917546 EmptyLang!9491)))

(declare-fun b!3062565 () Bool)

(declare-fun e!1917547 () Bool)

(assert (=> b!3062565 (= e!1917547 call!211946)))

(declare-fun b!3062566 () Bool)

(assert (=> b!3062566 (= e!1917545 lt!1050117)))

(declare-fun b!3062567 () Bool)

(assert (=> b!3062567 (= e!1917535 EmptyLang!9491)))

(declare-fun b!3062568 () Bool)

(declare-fun e!1917536 () Regex!9491)

(assert (=> b!3062568 (= e!1917538 e!1917536)))

(declare-fun c!508523 () Bool)

(assert (=> b!3062568 (= c!508523 (isEmptyExpr!548 lt!1050115))))

(declare-fun b!3062569 () Bool)

(assert (=> b!3062569 (= e!1917536 lt!1050114)))

(declare-fun b!3062570 () Bool)

(assert (=> b!3062570 (= e!1917548 (regTwo!19494 r!17423))))

(declare-fun b!3062571 () Bool)

(declare-fun c!508517 () Bool)

(assert (=> b!3062571 (= c!508517 call!211949)))

(assert (=> b!3062571 (= e!1917540 e!1917545)))

(declare-fun b!3062572 () Bool)

(declare-fun c!508516 () Bool)

(assert (=> b!3062572 (= c!508516 e!1917547)))

(declare-fun res!1257276 () Bool)

(assert (=> b!3062572 (=> res!1257276 e!1917547)))

(assert (=> b!3062572 (= res!1257276 call!211945)))

(assert (=> b!3062572 (= lt!1050112 call!211948)))

(assert (=> b!3062572 (= e!1917544 e!1917541)))

(declare-fun b!3062573 () Bool)

(declare-fun c!508520 () Bool)

(assert (=> b!3062573 (= c!508520 call!211946)))

(assert (=> b!3062573 (= e!1917546 e!1917538)))

(declare-fun b!3062574 () Bool)

(assert (=> b!3062574 (= e!1917536 (Concat!14812 lt!1050114 lt!1050115))))

(assert (= (and d!855385 c!508522) b!3062567))

(assert (= (and d!855385 (not c!508522)) b!3062554))

(assert (= (and b!3062554 c!508515) b!3062570))

(assert (= (and b!3062554 (not c!508515)) b!3062559))

(assert (= (and b!3062559 c!508525) b!3062562))

(assert (= (and b!3062559 (not c!508525)) b!3062556))

(assert (= (and b!3062556 c!508519) b!3062572))

(assert (= (and b!3062556 (not c!508519)) b!3062555))

(assert (= (and b!3062572 (not res!1257276)) b!3062565))

(assert (= (and b!3062572 c!508516) b!3062558))

(assert (= (and b!3062572 (not c!508516)) b!3062550))

(assert (= (and b!3062555 c!508521) b!3062563))

(assert (= (and b!3062555 (not c!508521)) b!3062557))

(assert (= (and b!3062563 c!508524) b!3062560))

(assert (= (and b!3062563 (not c!508524)) b!3062571))

(assert (= (and b!3062571 c!508517) b!3062566))

(assert (= (and b!3062571 (not c!508517)) b!3062551))

(assert (= (and b!3062557 (not res!1257275)) b!3062561))

(assert (= (and b!3062557 c!508518) b!3062564))

(assert (= (and b!3062557 (not c!508518)) b!3062573))

(assert (= (and b!3062573 c!508520) b!3062552))

(assert (= (and b!3062573 (not c!508520)) b!3062568))

(assert (= (and b!3062568 c!508523) b!3062569))

(assert (= (and b!3062568 (not c!508523)) b!3062574))

(assert (= (or b!3062563 b!3062557) bm!211941))

(assert (= (or b!3062563 b!3062557) bm!211944))

(assert (= (or b!3062563 b!3062561) bm!211945))

(assert (= (or b!3062571 b!3062557) bm!211943))

(assert (= (or b!3062565 b!3062573) bm!211939))

(assert (= (or b!3062572 bm!211944) bm!211940))

(assert (= (or b!3062572 bm!211945) bm!211942))

(assert (= (and d!855385 res!1257277) b!3062553))

(declare-fun m!3382225 () Bool)

(assert (=> bm!211939 m!3382225))

(declare-fun m!3382227 () Bool)

(assert (=> bm!211943 m!3382227))

(declare-fun m!3382229 () Bool)

(assert (=> bm!211940 m!3382229))

(declare-fun m!3382231 () Bool)

(assert (=> d!855385 m!3382231))

(declare-fun m!3382233 () Bool)

(assert (=> d!855385 m!3382233))

(declare-fun m!3382235 () Bool)

(assert (=> bm!211942 m!3382235))

(declare-fun m!3382237 () Bool)

(assert (=> b!3062553 m!3382237))

(declare-fun m!3382239 () Bool)

(assert (=> b!3062553 m!3382239))

(declare-fun m!3382241 () Bool)

(assert (=> b!3062568 m!3382241))

(declare-fun m!3382243 () Bool)

(assert (=> bm!211941 m!3382243))

(assert (=> b!3062455 d!855385))

(declare-fun b!3062593 () Bool)

(declare-fun e!1917569 () Regex!9491)

(declare-fun lt!1050118 () Regex!9491)

(assert (=> b!3062593 (= e!1917569 (Star!9491 lt!1050118))))

(declare-fun b!3062594 () Bool)

(declare-fun e!1917573 () Regex!9491)

(declare-fun lt!1050123 () Regex!9491)

(declare-fun lt!1050122 () Regex!9491)

(assert (=> b!3062594 (= e!1917573 (Union!9491 lt!1050123 lt!1050122))))

(declare-fun b!3062595 () Bool)

(declare-fun e!1917566 () Regex!9491)

(declare-fun lt!1050121 () Regex!9491)

(assert (=> b!3062595 (= e!1917566 lt!1050121)))

(declare-fun b!3062596 () Bool)

(declare-fun e!1917567 () Bool)

(declare-fun lt!1050119 () Regex!9491)

(assert (=> b!3062596 (= e!1917567 (= (nullable!3137 lt!1050119) (nullable!3137 (regOne!19494 r!17423))))))

(declare-fun bm!211950 () Bool)

(declare-fun lt!1050120 () Regex!9491)

(declare-fun c!508534 () Bool)

(declare-fun call!211959 () Bool)

(assert (=> bm!211950 (= call!211959 (isEmptyExpr!548 (ite c!508534 lt!1050118 lt!1050120)))))

(declare-fun c!508536 () Bool)

(declare-fun bm!211951 () Bool)

(declare-fun call!211961 () Regex!9491)

(assert (=> bm!211951 (= call!211961 (simplify!446 (ite c!508534 (reg!9820 (regOne!19494 r!17423)) (ite c!508536 (regTwo!19495 (regOne!19494 r!17423)) (regOne!19494 (regOne!19494 r!17423))))))))

(declare-fun bm!211952 () Bool)

(declare-fun call!211963 () Regex!9491)

(assert (=> bm!211952 (= call!211963 (simplify!446 (ite c!508536 (regOne!19495 (regOne!19494 r!17423)) (regTwo!19494 (regOne!19494 r!17423)))))))

(declare-fun bm!211953 () Bool)

(declare-fun call!211958 () Bool)

(assert (=> bm!211953 (= call!211958 (isEmptyLang!542 (ite c!508534 lt!1050118 (ite c!508536 lt!1050123 lt!1050121))))))

(declare-fun b!3062597 () Bool)

(declare-fun e!1917563 () Regex!9491)

(declare-fun e!1917576 () Regex!9491)

(assert (=> b!3062597 (= e!1917563 e!1917576)))

(declare-fun c!508530 () Bool)

(assert (=> b!3062597 (= c!508530 ((_ is ElementMatch!9491) (regOne!19494 r!17423)))))

(declare-fun call!211962 () Bool)

(declare-fun bm!211954 () Bool)

(assert (=> bm!211954 (= call!211962 (isEmptyLang!542 (ite c!508536 lt!1050122 lt!1050120)))))

(declare-fun d!855395 () Bool)

(assert (=> d!855395 e!1917567))

(declare-fun res!1257290 () Bool)

(assert (=> d!855395 (=> (not res!1257290) (not e!1917567))))

(assert (=> d!855395 (= res!1257290 (validRegex!4224 lt!1050119))))

(assert (=> d!855395 (= lt!1050119 e!1917563)))

(declare-fun c!508537 () Bool)

(assert (=> d!855395 (= c!508537 ((_ is EmptyLang!9491) (regOne!19494 r!17423)))))

(assert (=> d!855395 (validRegex!4224 (regOne!19494 r!17423))))

(assert (=> d!855395 (= (simplify!446 (regOne!19494 r!17423)) lt!1050119)))

(declare-fun b!3062598 () Bool)

(assert (=> b!3062598 (= c!508536 ((_ is Union!9491) (regOne!19494 r!17423)))))

(declare-fun e!1917572 () Regex!9491)

(declare-fun e!1917571 () Regex!9491)

(assert (=> b!3062598 (= e!1917572 e!1917571)))

(declare-fun b!3062599 () Bool)

(declare-fun e!1917570 () Regex!9491)

(assert (=> b!3062599 (= e!1917570 e!1917572)))

(assert (=> b!3062599 (= c!508534 ((_ is Star!9491) (regOne!19494 r!17423)))))

(declare-fun b!3062600 () Bool)

(declare-fun e!1917574 () Regex!9491)

(assert (=> b!3062600 (= e!1917571 e!1917574)))

(declare-fun call!211960 () Regex!9491)

(assert (=> b!3062600 (= lt!1050120 call!211960)))

(assert (=> b!3062600 (= lt!1050121 call!211963)))

(declare-fun res!1257288 () Bool)

(assert (=> b!3062600 (= res!1257288 call!211962)))

(declare-fun e!1917565 () Bool)

(assert (=> b!3062600 (=> res!1257288 e!1917565)))

(declare-fun c!508533 () Bool)

(assert (=> b!3062600 (= c!508533 e!1917565)))

(declare-fun bm!211955 () Bool)

(assert (=> bm!211955 (= call!211960 call!211961)))

(declare-fun bm!211956 () Bool)

(declare-fun call!211957 () Bool)

(assert (=> bm!211956 (= call!211957 call!211958)))

(declare-fun b!3062601 () Bool)

(assert (=> b!3062601 (= e!1917569 EmptyExpr!9491)))

(declare-fun b!3062602 () Bool)

(declare-fun c!508540 () Bool)

(assert (=> b!3062602 (= c!508540 ((_ is EmptyExpr!9491) (regOne!19494 r!17423)))))

(assert (=> b!3062602 (= e!1917576 e!1917570)))

(declare-fun b!3062603 () Bool)

(declare-fun e!1917568 () Regex!9491)

(assert (=> b!3062603 (= e!1917568 lt!1050122)))

(declare-fun b!3062604 () Bool)

(assert (=> b!3062604 (= e!1917565 call!211957)))

(declare-fun b!3062605 () Bool)

(assert (=> b!3062605 (= e!1917570 EmptyExpr!9491)))

(declare-fun b!3062606 () Bool)

(assert (=> b!3062606 (= e!1917571 e!1917568)))

(assert (=> b!3062606 (= lt!1050123 call!211963)))

(assert (=> b!3062606 (= lt!1050122 call!211960)))

(declare-fun c!508539 () Bool)

(assert (=> b!3062606 (= c!508539 call!211957)))

(declare-fun b!3062607 () Bool)

(assert (=> b!3062607 (= e!1917574 EmptyLang!9491)))

(declare-fun b!3062608 () Bool)

(declare-fun e!1917575 () Bool)

(assert (=> b!3062608 (= e!1917575 call!211959)))

(declare-fun b!3062609 () Bool)

(assert (=> b!3062609 (= e!1917573 lt!1050123)))

(declare-fun b!3062610 () Bool)

(assert (=> b!3062610 (= e!1917563 EmptyLang!9491)))

(declare-fun b!3062611 () Bool)

(declare-fun e!1917564 () Regex!9491)

(assert (=> b!3062611 (= e!1917566 e!1917564)))

(declare-fun c!508538 () Bool)

(assert (=> b!3062611 (= c!508538 (isEmptyExpr!548 lt!1050121))))

(declare-fun b!3062612 () Bool)

(assert (=> b!3062612 (= e!1917564 lt!1050120)))

(declare-fun b!3062613 () Bool)

(assert (=> b!3062613 (= e!1917576 (regOne!19494 r!17423))))

(declare-fun b!3062614 () Bool)

(declare-fun c!508532 () Bool)

(assert (=> b!3062614 (= c!508532 call!211962)))

(assert (=> b!3062614 (= e!1917568 e!1917573)))

(declare-fun b!3062615 () Bool)

(declare-fun c!508531 () Bool)

(assert (=> b!3062615 (= c!508531 e!1917575)))

(declare-fun res!1257289 () Bool)

(assert (=> b!3062615 (=> res!1257289 e!1917575)))

(assert (=> b!3062615 (= res!1257289 call!211958)))

(assert (=> b!3062615 (= lt!1050118 call!211961)))

(assert (=> b!3062615 (= e!1917572 e!1917569)))

(declare-fun b!3062616 () Bool)

(declare-fun c!508535 () Bool)

(assert (=> b!3062616 (= c!508535 call!211959)))

(assert (=> b!3062616 (= e!1917574 e!1917566)))

(declare-fun b!3062617 () Bool)

(assert (=> b!3062617 (= e!1917564 (Concat!14812 lt!1050120 lt!1050121))))

(assert (= (and d!855395 c!508537) b!3062610))

(assert (= (and d!855395 (not c!508537)) b!3062597))

(assert (= (and b!3062597 c!508530) b!3062613))

(assert (= (and b!3062597 (not c!508530)) b!3062602))

(assert (= (and b!3062602 c!508540) b!3062605))

(assert (= (and b!3062602 (not c!508540)) b!3062599))

(assert (= (and b!3062599 c!508534) b!3062615))

(assert (= (and b!3062599 (not c!508534)) b!3062598))

(assert (= (and b!3062615 (not res!1257289)) b!3062608))

(assert (= (and b!3062615 c!508531) b!3062601))

(assert (= (and b!3062615 (not c!508531)) b!3062593))

(assert (= (and b!3062598 c!508536) b!3062606))

(assert (= (and b!3062598 (not c!508536)) b!3062600))

(assert (= (and b!3062606 c!508539) b!3062603))

(assert (= (and b!3062606 (not c!508539)) b!3062614))

(assert (= (and b!3062614 c!508532) b!3062609))

(assert (= (and b!3062614 (not c!508532)) b!3062594))

(assert (= (and b!3062600 (not res!1257288)) b!3062604))

(assert (= (and b!3062600 c!508533) b!3062607))

(assert (= (and b!3062600 (not c!508533)) b!3062616))

(assert (= (and b!3062616 c!508535) b!3062595))

(assert (= (and b!3062616 (not c!508535)) b!3062611))

(assert (= (and b!3062611 c!508538) b!3062612))

(assert (= (and b!3062611 (not c!508538)) b!3062617))

(assert (= (or b!3062606 b!3062600) bm!211952))

(assert (= (or b!3062606 b!3062600) bm!211955))

(assert (= (or b!3062606 b!3062604) bm!211956))

(assert (= (or b!3062614 b!3062600) bm!211954))

(assert (= (or b!3062608 b!3062616) bm!211950))

(assert (= (or b!3062615 bm!211955) bm!211951))

(assert (= (or b!3062615 bm!211956) bm!211953))

(assert (= (and d!855395 res!1257290) b!3062596))

(declare-fun m!3382245 () Bool)

(assert (=> bm!211950 m!3382245))

(declare-fun m!3382247 () Bool)

(assert (=> bm!211954 m!3382247))

(declare-fun m!3382249 () Bool)

(assert (=> bm!211951 m!3382249))

(declare-fun m!3382251 () Bool)

(assert (=> d!855395 m!3382251))

(assert (=> d!855395 m!3382171))

(declare-fun m!3382253 () Bool)

(assert (=> bm!211953 m!3382253))

(declare-fun m!3382255 () Bool)

(assert (=> b!3062596 m!3382255))

(assert (=> b!3062596 m!3382191))

(declare-fun m!3382257 () Bool)

(assert (=> b!3062611 m!3382257))

(declare-fun m!3382259 () Bool)

(assert (=> bm!211952 m!3382259))

(assert (=> b!3062455 d!855395))

(declare-fun d!855397 () Bool)

(assert (=> d!855397 (= (isEmptyLang!542 lt!1050090) ((_ is EmptyLang!9491) lt!1050090))))

(assert (=> b!3062445 d!855397))

(declare-fun d!855399 () Bool)

(assert (=> d!855399 (= (isEmpty!19547 s!11993) ((_ is Nil!35232) s!11993))))

(assert (=> b!3062456 d!855399))

(declare-fun b!3062645 () Bool)

(declare-fun e!1917599 () Bool)

(declare-fun e!1917603 () Bool)

(assert (=> b!3062645 (= e!1917599 e!1917603)))

(declare-fun c!508548 () Bool)

(assert (=> b!3062645 (= c!508548 ((_ is Star!9491) (regOne!19494 r!17423)))))

(declare-fun b!3062646 () Bool)

(declare-fun e!1917600 () Bool)

(declare-fun call!211974 () Bool)

(assert (=> b!3062646 (= e!1917600 call!211974)))

(declare-fun b!3062647 () Bool)

(declare-fun e!1917598 () Bool)

(declare-fun e!1917601 () Bool)

(assert (=> b!3062647 (= e!1917598 e!1917601)))

(declare-fun res!1257306 () Bool)

(assert (=> b!3062647 (=> (not res!1257306) (not e!1917601))))

(declare-fun call!211975 () Bool)

(assert (=> b!3062647 (= res!1257306 call!211975)))

(declare-fun b!3062648 () Bool)

(declare-fun e!1917602 () Bool)

(assert (=> b!3062648 (= e!1917602 call!211975)))

(declare-fun b!3062649 () Bool)

(declare-fun res!1257310 () Bool)

(assert (=> b!3062649 (=> (not res!1257310) (not e!1917602))))

(declare-fun call!211973 () Bool)

(assert (=> b!3062649 (= res!1257310 call!211973)))

(declare-fun e!1917604 () Bool)

(assert (=> b!3062649 (= e!1917604 e!1917602)))

(declare-fun b!3062650 () Bool)

(assert (=> b!3062650 (= e!1917601 call!211973)))

(declare-fun b!3062651 () Bool)

(declare-fun res!1257308 () Bool)

(assert (=> b!3062651 (=> res!1257308 e!1917598)))

(assert (=> b!3062651 (= res!1257308 (not ((_ is Concat!14812) (regOne!19494 r!17423))))))

(assert (=> b!3062651 (= e!1917604 e!1917598)))

(declare-fun d!855401 () Bool)

(declare-fun res!1257307 () Bool)

(assert (=> d!855401 (=> res!1257307 e!1917599)))

(assert (=> d!855401 (= res!1257307 ((_ is ElementMatch!9491) (regOne!19494 r!17423)))))

(assert (=> d!855401 (= (validRegex!4224 (regOne!19494 r!17423)) e!1917599)))

(declare-fun bm!211968 () Bool)

(declare-fun c!508547 () Bool)

(assert (=> bm!211968 (= call!211975 (validRegex!4224 (ite c!508547 (regTwo!19495 (regOne!19494 r!17423)) (regOne!19494 (regOne!19494 r!17423)))))))

(declare-fun bm!211969 () Bool)

(assert (=> bm!211969 (= call!211974 (validRegex!4224 (ite c!508548 (reg!9820 (regOne!19494 r!17423)) (ite c!508547 (regOne!19495 (regOne!19494 r!17423)) (regTwo!19494 (regOne!19494 r!17423))))))))

(declare-fun b!3062652 () Bool)

(assert (=> b!3062652 (= e!1917603 e!1917604)))

(assert (=> b!3062652 (= c!508547 ((_ is Union!9491) (regOne!19494 r!17423)))))

(declare-fun bm!211970 () Bool)

(assert (=> bm!211970 (= call!211973 call!211974)))

(declare-fun b!3062653 () Bool)

(assert (=> b!3062653 (= e!1917603 e!1917600)))

(declare-fun res!1257309 () Bool)

(assert (=> b!3062653 (= res!1257309 (not (nullable!3137 (reg!9820 (regOne!19494 r!17423)))))))

(assert (=> b!3062653 (=> (not res!1257309) (not e!1917600))))

(assert (= (and d!855401 (not res!1257307)) b!3062645))

(assert (= (and b!3062645 c!508548) b!3062653))

(assert (= (and b!3062645 (not c!508548)) b!3062652))

(assert (= (and b!3062653 res!1257309) b!3062646))

(assert (= (and b!3062652 c!508547) b!3062649))

(assert (= (and b!3062652 (not c!508547)) b!3062651))

(assert (= (and b!3062649 res!1257310) b!3062648))

(assert (= (and b!3062651 (not res!1257308)) b!3062647))

(assert (= (and b!3062647 res!1257306) b!3062650))

(assert (= (or b!3062649 b!3062650) bm!211970))

(assert (= (or b!3062648 b!3062647) bm!211968))

(assert (= (or b!3062646 bm!211970) bm!211969))

(declare-fun m!3382269 () Bool)

(assert (=> bm!211968 m!3382269))

(declare-fun m!3382271 () Bool)

(assert (=> bm!211969 m!3382271))

(declare-fun m!3382273 () Bool)

(assert (=> b!3062653 m!3382273))

(assert (=> b!3062451 d!855401))

(declare-fun d!855407 () Bool)

(declare-fun isEmpty!19549 (Option!6808) Bool)

(assert (=> d!855407 (= (isDefined!5359 (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993)) (not (isEmpty!19549 (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993))))))

(declare-fun bs!532477 () Bool)

(assert (= bs!532477 d!855407))

(assert (=> bs!532477 m!3382173))

(declare-fun m!3382275 () Bool)

(assert (=> bs!532477 m!3382275))

(assert (=> b!3062451 d!855407))

(declare-fun b!3062699 () Bool)

(declare-fun e!1917631 () Option!6808)

(assert (=> b!3062699 (= e!1917631 None!6807)))

(declare-fun b!3062700 () Bool)

(declare-fun e!1917632 () Bool)

(declare-fun lt!1050141 () Option!6808)

(declare-fun ++!8456 (List!35356 List!35356) List!35356)

(declare-fun get!11020 (Option!6808) tuple2!34152)

(assert (=> b!3062700 (= e!1917632 (= (++!8456 (_1!20208 (get!11020 lt!1050141)) (_2!20208 (get!11020 lt!1050141))) s!11993))))

(declare-fun b!3062701 () Bool)

(declare-fun e!1917634 () Bool)

(assert (=> b!3062701 (= e!1917634 (not (isDefined!5359 lt!1050141)))))

(declare-fun b!3062702 () Bool)

(declare-fun res!1257340 () Bool)

(assert (=> b!3062702 (=> (not res!1257340) (not e!1917632))))

(assert (=> b!3062702 (= res!1257340 (matchR!4373 (regTwo!19494 r!17423) (_2!20208 (get!11020 lt!1050141))))))

(declare-fun b!3062703 () Bool)

(declare-fun e!1917633 () Option!6808)

(assert (=> b!3062703 (= e!1917633 (Some!6807 (tuple2!34153 Nil!35232 s!11993)))))

(declare-fun b!3062704 () Bool)

(assert (=> b!3062704 (= e!1917633 e!1917631)))

(declare-fun c!508559 () Bool)

(assert (=> b!3062704 (= c!508559 ((_ is Nil!35232) s!11993))))

(declare-fun d!855409 () Bool)

(assert (=> d!855409 e!1917634))

(declare-fun res!1257337 () Bool)

(assert (=> d!855409 (=> res!1257337 e!1917634)))

(assert (=> d!855409 (= res!1257337 e!1917632)))

(declare-fun res!1257339 () Bool)

(assert (=> d!855409 (=> (not res!1257339) (not e!1917632))))

(assert (=> d!855409 (= res!1257339 (isDefined!5359 lt!1050141))))

(assert (=> d!855409 (= lt!1050141 e!1917633)))

(declare-fun c!508560 () Bool)

(declare-fun e!1917630 () Bool)

(assert (=> d!855409 (= c!508560 e!1917630)))

(declare-fun res!1257338 () Bool)

(assert (=> d!855409 (=> (not res!1257338) (not e!1917630))))

(assert (=> d!855409 (= res!1257338 (matchR!4373 (regOne!19494 r!17423) Nil!35232))))

(assert (=> d!855409 (validRegex!4224 (regOne!19494 r!17423))))

(assert (=> d!855409 (= (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993) lt!1050141)))

(declare-fun b!3062705 () Bool)

(declare-fun lt!1050143 () Unit!49421)

(declare-fun lt!1050142 () Unit!49421)

(assert (=> b!3062705 (= lt!1050143 lt!1050142)))

(assert (=> b!3062705 (= (++!8456 (++!8456 Nil!35232 (Cons!35232 (h!40652 s!11993) Nil!35232)) (t!234421 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1059 (List!35356 C!19168 List!35356 List!35356) Unit!49421)

(assert (=> b!3062705 (= lt!1050142 (lemmaMoveElementToOtherListKeepsConcatEq!1059 Nil!35232 (h!40652 s!11993) (t!234421 s!11993) s!11993))))

(assert (=> b!3062705 (= e!1917631 (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) (++!8456 Nil!35232 (Cons!35232 (h!40652 s!11993) Nil!35232)) (t!234421 s!11993) s!11993))))

(declare-fun b!3062706 () Bool)

(assert (=> b!3062706 (= e!1917630 (matchR!4373 (regTwo!19494 r!17423) s!11993))))

(declare-fun b!3062707 () Bool)

(declare-fun res!1257336 () Bool)

(assert (=> b!3062707 (=> (not res!1257336) (not e!1917632))))

(assert (=> b!3062707 (= res!1257336 (matchR!4373 (regOne!19494 r!17423) (_1!20208 (get!11020 lt!1050141))))))

(assert (= (and d!855409 res!1257338) b!3062706))

(assert (= (and d!855409 c!508560) b!3062703))

(assert (= (and d!855409 (not c!508560)) b!3062704))

(assert (= (and b!3062704 c!508559) b!3062699))

(assert (= (and b!3062704 (not c!508559)) b!3062705))

(assert (= (and d!855409 res!1257339) b!3062707))

(assert (= (and b!3062707 res!1257336) b!3062702))

(assert (= (and b!3062702 res!1257340) b!3062700))

(assert (= (and d!855409 (not res!1257337)) b!3062701))

(declare-fun m!3382297 () Bool)

(assert (=> b!3062705 m!3382297))

(assert (=> b!3062705 m!3382297))

(declare-fun m!3382299 () Bool)

(assert (=> b!3062705 m!3382299))

(declare-fun m!3382301 () Bool)

(assert (=> b!3062705 m!3382301))

(assert (=> b!3062705 m!3382297))

(declare-fun m!3382303 () Bool)

(assert (=> b!3062705 m!3382303))

(declare-fun m!3382305 () Bool)

(assert (=> b!3062700 m!3382305))

(declare-fun m!3382307 () Bool)

(assert (=> b!3062700 m!3382307))

(declare-fun m!3382309 () Bool)

(assert (=> d!855409 m!3382309))

(assert (=> d!855409 m!3382207))

(assert (=> d!855409 m!3382171))

(assert (=> b!3062702 m!3382305))

(declare-fun m!3382311 () Bool)

(assert (=> b!3062702 m!3382311))

(assert (=> b!3062701 m!3382309))

(assert (=> b!3062706 m!3382201))

(assert (=> b!3062707 m!3382305))

(declare-fun m!3382313 () Bool)

(assert (=> b!3062707 m!3382313))

(assert (=> b!3062451 d!855409))

(declare-fun d!855417 () Bool)

(assert (=> d!855417 (isDefined!5359 (findConcatSeparation!1202 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993))))

(declare-fun lt!1050147 () Unit!49421)

(declare-fun choose!18134 (Regex!9491 Regex!9491 List!35356 List!35356 List!35356 List!35356 List!35356) Unit!49421)

(assert (=> d!855417 (= lt!1050147 (choose!18134 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993 Nil!35232 s!11993))))

(assert (=> d!855417 (validRegex!4224 (regOne!19494 r!17423))))

(assert (=> d!855417 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!22 (regOne!19494 r!17423) (regTwo!19494 r!17423) Nil!35232 s!11993 s!11993 Nil!35232 s!11993) lt!1050147)))

(declare-fun bs!532479 () Bool)

(assert (= bs!532479 d!855417))

(assert (=> bs!532479 m!3382173))

(assert (=> bs!532479 m!3382173))

(assert (=> bs!532479 m!3382175))

(declare-fun m!3382315 () Bool)

(assert (=> bs!532479 m!3382315))

(assert (=> bs!532479 m!3382171))

(assert (=> b!3062451 d!855417))

(declare-fun b!3062712 () Bool)

(declare-fun e!1917638 () Bool)

(declare-fun e!1917642 () Bool)

(assert (=> b!3062712 (= e!1917638 e!1917642)))

(declare-fun c!508564 () Bool)

(assert (=> b!3062712 (= c!508564 ((_ is Star!9491) r!17423))))

(declare-fun b!3062713 () Bool)

(declare-fun e!1917639 () Bool)

(declare-fun call!211977 () Bool)

(assert (=> b!3062713 (= e!1917639 call!211977)))

(declare-fun b!3062714 () Bool)

(declare-fun e!1917637 () Bool)

(declare-fun e!1917640 () Bool)

(assert (=> b!3062714 (= e!1917637 e!1917640)))

(declare-fun res!1257341 () Bool)

(assert (=> b!3062714 (=> (not res!1257341) (not e!1917640))))

(declare-fun call!211978 () Bool)

(assert (=> b!3062714 (= res!1257341 call!211978)))

(declare-fun b!3062715 () Bool)

(declare-fun e!1917641 () Bool)

(assert (=> b!3062715 (= e!1917641 call!211978)))

(declare-fun b!3062716 () Bool)

(declare-fun res!1257345 () Bool)

(assert (=> b!3062716 (=> (not res!1257345) (not e!1917641))))

(declare-fun call!211976 () Bool)

(assert (=> b!3062716 (= res!1257345 call!211976)))

(declare-fun e!1917643 () Bool)

(assert (=> b!3062716 (= e!1917643 e!1917641)))

(declare-fun b!3062717 () Bool)

(assert (=> b!3062717 (= e!1917640 call!211976)))

(declare-fun b!3062718 () Bool)

(declare-fun res!1257343 () Bool)

(assert (=> b!3062718 (=> res!1257343 e!1917637)))

(assert (=> b!3062718 (= res!1257343 (not ((_ is Concat!14812) r!17423)))))

(assert (=> b!3062718 (= e!1917643 e!1917637)))

(declare-fun d!855419 () Bool)

(declare-fun res!1257342 () Bool)

(assert (=> d!855419 (=> res!1257342 e!1917638)))

(assert (=> d!855419 (= res!1257342 ((_ is ElementMatch!9491) r!17423))))

(assert (=> d!855419 (= (validRegex!4224 r!17423) e!1917638)))

(declare-fun bm!211971 () Bool)

(declare-fun c!508563 () Bool)

(assert (=> bm!211971 (= call!211978 (validRegex!4224 (ite c!508563 (regTwo!19495 r!17423) (regOne!19494 r!17423))))))

(declare-fun bm!211972 () Bool)

(assert (=> bm!211972 (= call!211977 (validRegex!4224 (ite c!508564 (reg!9820 r!17423) (ite c!508563 (regOne!19495 r!17423) (regTwo!19494 r!17423)))))))

(declare-fun b!3062719 () Bool)

(assert (=> b!3062719 (= e!1917642 e!1917643)))

(assert (=> b!3062719 (= c!508563 ((_ is Union!9491) r!17423))))

(declare-fun bm!211973 () Bool)

(assert (=> bm!211973 (= call!211976 call!211977)))

(declare-fun b!3062720 () Bool)

(assert (=> b!3062720 (= e!1917642 e!1917639)))

(declare-fun res!1257344 () Bool)

(assert (=> b!3062720 (= res!1257344 (not (nullable!3137 (reg!9820 r!17423))))))

(assert (=> b!3062720 (=> (not res!1257344) (not e!1917639))))

(assert (= (and d!855419 (not res!1257342)) b!3062712))

(assert (= (and b!3062712 c!508564) b!3062720))

(assert (= (and b!3062712 (not c!508564)) b!3062719))

(assert (= (and b!3062720 res!1257344) b!3062713))

(assert (= (and b!3062719 c!508563) b!3062716))

(assert (= (and b!3062719 (not c!508563)) b!3062718))

(assert (= (and b!3062716 res!1257345) b!3062715))

(assert (= (and b!3062718 (not res!1257343)) b!3062714))

(assert (= (and b!3062714 res!1257341) b!3062717))

(assert (= (or b!3062716 b!3062717) bm!211973))

(assert (= (or b!3062715 b!3062714) bm!211971))

(assert (= (or b!3062713 bm!211973) bm!211972))

(declare-fun m!3382317 () Bool)

(assert (=> bm!211971 m!3382317))

(declare-fun m!3382319 () Bool)

(assert (=> bm!211972 m!3382319))

(declare-fun m!3382321 () Bool)

(assert (=> b!3062720 m!3382321))

(assert (=> start!292264 d!855419))

(declare-fun d!855421 () Bool)

(assert (=> d!855421 (= (isEmptyExpr!548 lt!1050094) ((_ is EmptyExpr!9491) lt!1050094))))

(assert (=> b!3062457 d!855421))

(declare-fun d!855423 () Bool)

(declare-fun e!1917676 () Bool)

(assert (=> d!855423 e!1917676))

(declare-fun c!508578 () Bool)

(assert (=> d!855423 (= c!508578 ((_ is EmptyExpr!9491) lt!1050090))))

(declare-fun lt!1050150 () Bool)

(declare-fun e!1917670 () Bool)

(assert (=> d!855423 (= lt!1050150 e!1917670)))

(declare-fun c!508579 () Bool)

(assert (=> d!855423 (= c!508579 (isEmpty!19547 s!11993))))

(assert (=> d!855423 (validRegex!4224 lt!1050090)))

(assert (=> d!855423 (= (matchR!4373 lt!1050090 s!11993) lt!1050150)))

(declare-fun b!3062767 () Bool)

(declare-fun e!1917674 () Bool)

(declare-fun e!1917673 () Bool)

(assert (=> b!3062767 (= e!1917674 e!1917673)))

(declare-fun res!1257374 () Bool)

(assert (=> b!3062767 (=> (not res!1257374) (not e!1917673))))

(assert (=> b!3062767 (= res!1257374 (not lt!1050150))))

(declare-fun b!3062768 () Bool)

(declare-fun e!1917672 () Bool)

(assert (=> b!3062768 (= e!1917672 (not lt!1050150))))

(declare-fun b!3062769 () Bool)

(declare-fun res!1257370 () Bool)

(declare-fun e!1917671 () Bool)

(assert (=> b!3062769 (=> (not res!1257370) (not e!1917671))))

(declare-fun call!211981 () Bool)

(assert (=> b!3062769 (= res!1257370 (not call!211981))))

(declare-fun b!3062770 () Bool)

(assert (=> b!3062770 (= e!1917676 e!1917672)))

(declare-fun c!508577 () Bool)

(assert (=> b!3062770 (= c!508577 ((_ is EmptyLang!9491) lt!1050090))))

(declare-fun bm!211976 () Bool)

(assert (=> bm!211976 (= call!211981 (isEmpty!19547 s!11993))))

(declare-fun b!3062771 () Bool)

(declare-fun res!1257373 () Bool)

(declare-fun e!1917675 () Bool)

(assert (=> b!3062771 (=> res!1257373 e!1917675)))

(declare-fun tail!5018 (List!35356) List!35356)

(assert (=> b!3062771 (= res!1257373 (not (isEmpty!19547 (tail!5018 s!11993))))))

(declare-fun b!3062772 () Bool)

(declare-fun derivativeStep!2733 (Regex!9491 C!19168) Regex!9491)

(declare-fun head!6792 (List!35356) C!19168)

(assert (=> b!3062772 (= e!1917670 (matchR!4373 (derivativeStep!2733 lt!1050090 (head!6792 s!11993)) (tail!5018 s!11993)))))

(declare-fun b!3062773 () Bool)

(assert (=> b!3062773 (= e!1917673 e!1917675)))

(declare-fun res!1257369 () Bool)

(assert (=> b!3062773 (=> res!1257369 e!1917675)))

(assert (=> b!3062773 (= res!1257369 call!211981)))

(declare-fun b!3062774 () Bool)

(assert (=> b!3062774 (= e!1917676 (= lt!1050150 call!211981))))

(declare-fun b!3062775 () Bool)

(declare-fun res!1257371 () Bool)

(assert (=> b!3062775 (=> res!1257371 e!1917674)))

(assert (=> b!3062775 (= res!1257371 e!1917671)))

(declare-fun res!1257372 () Bool)

(assert (=> b!3062775 (=> (not res!1257372) (not e!1917671))))

(assert (=> b!3062775 (= res!1257372 lt!1050150)))

(declare-fun b!3062776 () Bool)

(declare-fun res!1257368 () Bool)

(assert (=> b!3062776 (=> res!1257368 e!1917674)))

(assert (=> b!3062776 (= res!1257368 (not ((_ is ElementMatch!9491) lt!1050090)))))

(assert (=> b!3062776 (= e!1917672 e!1917674)))

(declare-fun b!3062777 () Bool)

(assert (=> b!3062777 (= e!1917671 (= (head!6792 s!11993) (c!508483 lt!1050090)))))

(declare-fun b!3062778 () Bool)

(assert (=> b!3062778 (= e!1917670 (nullable!3137 lt!1050090))))

(declare-fun b!3062779 () Bool)

(declare-fun res!1257375 () Bool)

(assert (=> b!3062779 (=> (not res!1257375) (not e!1917671))))

(assert (=> b!3062779 (= res!1257375 (isEmpty!19547 (tail!5018 s!11993)))))

(declare-fun b!3062780 () Bool)

(assert (=> b!3062780 (= e!1917675 (not (= (head!6792 s!11993) (c!508483 lt!1050090))))))

(assert (= (and d!855423 c!508579) b!3062778))

(assert (= (and d!855423 (not c!508579)) b!3062772))

(assert (= (and d!855423 c!508578) b!3062774))

(assert (= (and d!855423 (not c!508578)) b!3062770))

(assert (= (and b!3062770 c!508577) b!3062768))

(assert (= (and b!3062770 (not c!508577)) b!3062776))

(assert (= (and b!3062776 (not res!1257368)) b!3062775))

(assert (= (and b!3062775 res!1257372) b!3062769))

(assert (= (and b!3062769 res!1257370) b!3062779))

(assert (= (and b!3062779 res!1257375) b!3062777))

(assert (= (and b!3062775 (not res!1257371)) b!3062767))

(assert (= (and b!3062767 res!1257374) b!3062773))

(assert (= (and b!3062773 (not res!1257369)) b!3062771))

(assert (= (and b!3062771 (not res!1257373)) b!3062780))

(assert (= (or b!3062774 b!3062769 b!3062773) bm!211976))

(assert (=> d!855423 m!3382181))

(declare-fun m!3382323 () Bool)

(assert (=> d!855423 m!3382323))

(declare-fun m!3382325 () Bool)

(assert (=> b!3062771 m!3382325))

(assert (=> b!3062771 m!3382325))

(declare-fun m!3382327 () Bool)

(assert (=> b!3062771 m!3382327))

(declare-fun m!3382329 () Bool)

(assert (=> b!3062772 m!3382329))

(assert (=> b!3062772 m!3382329))

(declare-fun m!3382331 () Bool)

(assert (=> b!3062772 m!3382331))

(assert (=> b!3062772 m!3382325))

(assert (=> b!3062772 m!3382331))

(assert (=> b!3062772 m!3382325))

(declare-fun m!3382333 () Bool)

(assert (=> b!3062772 m!3382333))

(assert (=> bm!211976 m!3382181))

(declare-fun m!3382335 () Bool)

(assert (=> b!3062778 m!3382335))

(assert (=> b!3062779 m!3382325))

(assert (=> b!3062779 m!3382325))

(assert (=> b!3062779 m!3382327))

(assert (=> b!3062780 m!3382329))

(assert (=> b!3062777 m!3382329))

(assert (=> b!3062447 d!855423))

(declare-fun d!855425 () Bool)

(declare-fun e!1917683 () Bool)

(assert (=> d!855425 e!1917683))

(declare-fun c!508581 () Bool)

(assert (=> d!855425 (= c!508581 ((_ is EmptyExpr!9491) (regTwo!19494 r!17423)))))

(declare-fun lt!1050151 () Bool)

(declare-fun e!1917677 () Bool)

(assert (=> d!855425 (= lt!1050151 e!1917677)))

(declare-fun c!508582 () Bool)

(assert (=> d!855425 (= c!508582 (isEmpty!19547 s!11993))))

(assert (=> d!855425 (validRegex!4224 (regTwo!19494 r!17423))))

(assert (=> d!855425 (= (matchR!4373 (regTwo!19494 r!17423) s!11993) lt!1050151)))

(declare-fun b!3062781 () Bool)

(declare-fun e!1917681 () Bool)

(declare-fun e!1917680 () Bool)

(assert (=> b!3062781 (= e!1917681 e!1917680)))

(declare-fun res!1257382 () Bool)

(assert (=> b!3062781 (=> (not res!1257382) (not e!1917680))))

(assert (=> b!3062781 (= res!1257382 (not lt!1050151))))

(declare-fun b!3062782 () Bool)

(declare-fun e!1917679 () Bool)

(assert (=> b!3062782 (= e!1917679 (not lt!1050151))))

(declare-fun b!3062783 () Bool)

(declare-fun res!1257378 () Bool)

(declare-fun e!1917678 () Bool)

(assert (=> b!3062783 (=> (not res!1257378) (not e!1917678))))

(declare-fun call!211982 () Bool)

(assert (=> b!3062783 (= res!1257378 (not call!211982))))

(declare-fun b!3062784 () Bool)

(assert (=> b!3062784 (= e!1917683 e!1917679)))

(declare-fun c!508580 () Bool)

(assert (=> b!3062784 (= c!508580 ((_ is EmptyLang!9491) (regTwo!19494 r!17423)))))

(declare-fun bm!211977 () Bool)

(assert (=> bm!211977 (= call!211982 (isEmpty!19547 s!11993))))

(declare-fun b!3062785 () Bool)

(declare-fun res!1257381 () Bool)

(declare-fun e!1917682 () Bool)

(assert (=> b!3062785 (=> res!1257381 e!1917682)))

(assert (=> b!3062785 (= res!1257381 (not (isEmpty!19547 (tail!5018 s!11993))))))

(declare-fun b!3062786 () Bool)

(assert (=> b!3062786 (= e!1917677 (matchR!4373 (derivativeStep!2733 (regTwo!19494 r!17423) (head!6792 s!11993)) (tail!5018 s!11993)))))

(declare-fun b!3062787 () Bool)

(assert (=> b!3062787 (= e!1917680 e!1917682)))

(declare-fun res!1257377 () Bool)

(assert (=> b!3062787 (=> res!1257377 e!1917682)))

(assert (=> b!3062787 (= res!1257377 call!211982)))

(declare-fun b!3062788 () Bool)

(assert (=> b!3062788 (= e!1917683 (= lt!1050151 call!211982))))

(declare-fun b!3062789 () Bool)

(declare-fun res!1257379 () Bool)

(assert (=> b!3062789 (=> res!1257379 e!1917681)))

(assert (=> b!3062789 (= res!1257379 e!1917678)))

(declare-fun res!1257380 () Bool)

(assert (=> b!3062789 (=> (not res!1257380) (not e!1917678))))

(assert (=> b!3062789 (= res!1257380 lt!1050151)))

(declare-fun b!3062790 () Bool)

(declare-fun res!1257376 () Bool)

(assert (=> b!3062790 (=> res!1257376 e!1917681)))

(assert (=> b!3062790 (= res!1257376 (not ((_ is ElementMatch!9491) (regTwo!19494 r!17423))))))

(assert (=> b!3062790 (= e!1917679 e!1917681)))

(declare-fun b!3062791 () Bool)

(assert (=> b!3062791 (= e!1917678 (= (head!6792 s!11993) (c!508483 (regTwo!19494 r!17423))))))

(declare-fun b!3062792 () Bool)

(assert (=> b!3062792 (= e!1917677 (nullable!3137 (regTwo!19494 r!17423)))))

(declare-fun b!3062793 () Bool)

(declare-fun res!1257383 () Bool)

(assert (=> b!3062793 (=> (not res!1257383) (not e!1917678))))

(assert (=> b!3062793 (= res!1257383 (isEmpty!19547 (tail!5018 s!11993)))))

(declare-fun b!3062794 () Bool)

(assert (=> b!3062794 (= e!1917682 (not (= (head!6792 s!11993) (c!508483 (regTwo!19494 r!17423)))))))

(assert (= (and d!855425 c!508582) b!3062792))

(assert (= (and d!855425 (not c!508582)) b!3062786))

(assert (= (and d!855425 c!508581) b!3062788))

(assert (= (and d!855425 (not c!508581)) b!3062784))

(assert (= (and b!3062784 c!508580) b!3062782))

(assert (= (and b!3062784 (not c!508580)) b!3062790))

(assert (= (and b!3062790 (not res!1257376)) b!3062789))

(assert (= (and b!3062789 res!1257380) b!3062783))

(assert (= (and b!3062783 res!1257378) b!3062793))

(assert (= (and b!3062793 res!1257383) b!3062791))

(assert (= (and b!3062789 (not res!1257379)) b!3062781))

(assert (= (and b!3062781 res!1257382) b!3062787))

(assert (= (and b!3062787 (not res!1257377)) b!3062785))

(assert (= (and b!3062785 (not res!1257381)) b!3062794))

(assert (= (or b!3062788 b!3062783 b!3062787) bm!211977))

(assert (=> d!855425 m!3382181))

(assert (=> d!855425 m!3382233))

(assert (=> b!3062785 m!3382325))

(assert (=> b!3062785 m!3382325))

(assert (=> b!3062785 m!3382327))

(assert (=> b!3062786 m!3382329))

(assert (=> b!3062786 m!3382329))

(declare-fun m!3382337 () Bool)

(assert (=> b!3062786 m!3382337))

(assert (=> b!3062786 m!3382325))

(assert (=> b!3062786 m!3382337))

(assert (=> b!3062786 m!3382325))

(declare-fun m!3382339 () Bool)

(assert (=> b!3062786 m!3382339))

(assert (=> bm!211977 m!3382181))

(assert (=> b!3062792 m!3382239))

(assert (=> b!3062793 m!3382325))

(assert (=> b!3062793 m!3382325))

(assert (=> b!3062793 m!3382327))

(assert (=> b!3062794 m!3382329))

(assert (=> b!3062791 m!3382329))

(assert (=> b!3062447 d!855425))

(declare-fun d!855427 () Bool)

(assert (=> d!855427 (= (matchR!4373 (regTwo!19494 r!17423) s!11993) (matchR!4373 (simplify!446 (regTwo!19494 r!17423)) s!11993))))

(declare-fun lt!1050154 () Unit!49421)

(declare-fun choose!18136 (Regex!9491 List!35356) Unit!49421)

(assert (=> d!855427 (= lt!1050154 (choose!18136 (regTwo!19494 r!17423) s!11993))))

(assert (=> d!855427 (validRegex!4224 (regTwo!19494 r!17423))))

(assert (=> d!855427 (= (lemmaSimplifySound!276 (regTwo!19494 r!17423) s!11993) lt!1050154)))

(declare-fun bs!532480 () Bool)

(assert (= bs!532480 d!855427))

(assert (=> bs!532480 m!3382201))

(assert (=> bs!532480 m!3382233))

(assert (=> bs!532480 m!3382195))

(declare-fun m!3382341 () Bool)

(assert (=> bs!532480 m!3382341))

(assert (=> bs!532480 m!3382195))

(declare-fun m!3382343 () Bool)

(assert (=> bs!532480 m!3382343))

(assert (=> b!3062447 d!855427))

(declare-fun b!3063041 () Bool)

(assert (=> b!3063041 true))

(assert (=> b!3063041 true))

(declare-fun bs!532484 () Bool)

(declare-fun b!3063044 () Bool)

(assert (= bs!532484 (and b!3063044 b!3063041)))

(declare-fun lambda!113910 () Int)

(declare-fun lambda!113909 () Int)

(assert (=> bs!532484 (not (= lambda!113910 lambda!113909))))

(assert (=> b!3063044 true))

(assert (=> b!3063044 true))

(declare-fun b!3063038 () Bool)

(declare-fun e!1917813 () Bool)

(declare-fun e!1917809 () Bool)

(assert (=> b!3063038 (= e!1917813 e!1917809)))

(declare-fun c!508651 () Bool)

(assert (=> b!3063038 (= c!508651 ((_ is Star!9491) r!17423))))

(declare-fun d!855429 () Bool)

(declare-fun c!508652 () Bool)

(assert (=> d!855429 (= c!508652 ((_ is EmptyExpr!9491) r!17423))))

(declare-fun e!1917808 () Bool)

(assert (=> d!855429 (= (matchRSpec!1628 r!17423 s!11993) e!1917808)))

(declare-fun b!3063039 () Bool)

(declare-fun call!212027 () Bool)

(assert (=> b!3063039 (= e!1917808 call!212027)))

(declare-fun bm!212022 () Bool)

(assert (=> bm!212022 (= call!212027 (isEmpty!19547 s!11993))))

(declare-fun b!3063040 () Bool)

(declare-fun e!1917811 () Bool)

(assert (=> b!3063040 (= e!1917813 e!1917811)))

(declare-fun res!1257454 () Bool)

(assert (=> b!3063040 (= res!1257454 (matchRSpec!1628 (regOne!19495 r!17423) s!11993))))

(assert (=> b!3063040 (=> res!1257454 e!1917811)))

(declare-fun e!1917812 () Bool)

(declare-fun call!212028 () Bool)

(assert (=> b!3063041 (= e!1917812 call!212028)))

(declare-fun b!3063042 () Bool)

(declare-fun c!508650 () Bool)

(assert (=> b!3063042 (= c!508650 ((_ is ElementMatch!9491) r!17423))))

(declare-fun e!1917807 () Bool)

(declare-fun e!1917810 () Bool)

(assert (=> b!3063042 (= e!1917807 e!1917810)))

(declare-fun b!3063043 () Bool)

(assert (=> b!3063043 (= e!1917808 e!1917807)))

(declare-fun res!1257455 () Bool)

(assert (=> b!3063043 (= res!1257455 (not ((_ is EmptyLang!9491) r!17423)))))

(assert (=> b!3063043 (=> (not res!1257455) (not e!1917807))))

(assert (=> b!3063044 (= e!1917809 call!212028)))

(declare-fun bm!212023 () Bool)

(declare-fun Exists!1754 (Int) Bool)

(assert (=> bm!212023 (= call!212028 (Exists!1754 (ite c!508651 lambda!113909 lambda!113910)))))

(declare-fun b!3063045 () Bool)

(assert (=> b!3063045 (= e!1917811 (matchRSpec!1628 (regTwo!19495 r!17423) s!11993))))

(declare-fun b!3063046 () Bool)

(declare-fun c!508653 () Bool)

(assert (=> b!3063046 (= c!508653 ((_ is Union!9491) r!17423))))

(assert (=> b!3063046 (= e!1917810 e!1917813)))

(declare-fun b!3063047 () Bool)

(declare-fun res!1257456 () Bool)

(assert (=> b!3063047 (=> res!1257456 e!1917812)))

(assert (=> b!3063047 (= res!1257456 call!212027)))

(assert (=> b!3063047 (= e!1917809 e!1917812)))

(declare-fun b!3063048 () Bool)

(assert (=> b!3063048 (= e!1917810 (= s!11993 (Cons!35232 (c!508483 r!17423) Nil!35232)))))

(assert (= (and d!855429 c!508652) b!3063039))

(assert (= (and d!855429 (not c!508652)) b!3063043))

(assert (= (and b!3063043 res!1257455) b!3063042))

(assert (= (and b!3063042 c!508650) b!3063048))

(assert (= (and b!3063042 (not c!508650)) b!3063046))

(assert (= (and b!3063046 c!508653) b!3063040))

(assert (= (and b!3063046 (not c!508653)) b!3063038))

(assert (= (and b!3063040 (not res!1257454)) b!3063045))

(assert (= (and b!3063038 c!508651) b!3063047))

(assert (= (and b!3063038 (not c!508651)) b!3063044))

(assert (= (and b!3063047 (not res!1257456)) b!3063041))

(assert (= (or b!3063041 b!3063044) bm!212023))

(assert (= (or b!3063039 b!3063047) bm!212022))

(assert (=> bm!212022 m!3382181))

(declare-fun m!3382423 () Bool)

(assert (=> b!3063040 m!3382423))

(declare-fun m!3382425 () Bool)

(assert (=> bm!212023 m!3382425))

(declare-fun m!3382427 () Bool)

(assert (=> b!3063045 m!3382427))

(assert (=> b!3062453 d!855429))

(declare-fun d!855451 () Bool)

(declare-fun e!1917820 () Bool)

(assert (=> d!855451 e!1917820))

(declare-fun c!508655 () Bool)

(assert (=> d!855451 (= c!508655 ((_ is EmptyExpr!9491) r!17423))))

(declare-fun lt!1050188 () Bool)

(declare-fun e!1917814 () Bool)

(assert (=> d!855451 (= lt!1050188 e!1917814)))

(declare-fun c!508656 () Bool)

(assert (=> d!855451 (= c!508656 (isEmpty!19547 s!11993))))

(assert (=> d!855451 (validRegex!4224 r!17423)))

(assert (=> d!855451 (= (matchR!4373 r!17423 s!11993) lt!1050188)))

(declare-fun b!3063053 () Bool)

(declare-fun e!1917818 () Bool)

(declare-fun e!1917817 () Bool)

(assert (=> b!3063053 (= e!1917818 e!1917817)))

(declare-fun res!1257463 () Bool)

(assert (=> b!3063053 (=> (not res!1257463) (not e!1917817))))

(assert (=> b!3063053 (= res!1257463 (not lt!1050188))))

(declare-fun b!3063054 () Bool)

(declare-fun e!1917816 () Bool)

(assert (=> b!3063054 (= e!1917816 (not lt!1050188))))

(declare-fun b!3063055 () Bool)

(declare-fun res!1257459 () Bool)

(declare-fun e!1917815 () Bool)

(assert (=> b!3063055 (=> (not res!1257459) (not e!1917815))))

(declare-fun call!212029 () Bool)

(assert (=> b!3063055 (= res!1257459 (not call!212029))))

(declare-fun b!3063056 () Bool)

(assert (=> b!3063056 (= e!1917820 e!1917816)))

(declare-fun c!508654 () Bool)

(assert (=> b!3063056 (= c!508654 ((_ is EmptyLang!9491) r!17423))))

(declare-fun bm!212024 () Bool)

(assert (=> bm!212024 (= call!212029 (isEmpty!19547 s!11993))))

(declare-fun b!3063057 () Bool)

(declare-fun res!1257462 () Bool)

(declare-fun e!1917819 () Bool)

(assert (=> b!3063057 (=> res!1257462 e!1917819)))

(assert (=> b!3063057 (= res!1257462 (not (isEmpty!19547 (tail!5018 s!11993))))))

(declare-fun b!3063058 () Bool)

(assert (=> b!3063058 (= e!1917814 (matchR!4373 (derivativeStep!2733 r!17423 (head!6792 s!11993)) (tail!5018 s!11993)))))

(declare-fun b!3063059 () Bool)

(assert (=> b!3063059 (= e!1917817 e!1917819)))

(declare-fun res!1257458 () Bool)

(assert (=> b!3063059 (=> res!1257458 e!1917819)))

(assert (=> b!3063059 (= res!1257458 call!212029)))

(declare-fun b!3063060 () Bool)

(assert (=> b!3063060 (= e!1917820 (= lt!1050188 call!212029))))

(declare-fun b!3063061 () Bool)

(declare-fun res!1257460 () Bool)

(assert (=> b!3063061 (=> res!1257460 e!1917818)))

(assert (=> b!3063061 (= res!1257460 e!1917815)))

(declare-fun res!1257461 () Bool)

(assert (=> b!3063061 (=> (not res!1257461) (not e!1917815))))

(assert (=> b!3063061 (= res!1257461 lt!1050188)))

(declare-fun b!3063062 () Bool)

(declare-fun res!1257457 () Bool)

(assert (=> b!3063062 (=> res!1257457 e!1917818)))

(assert (=> b!3063062 (= res!1257457 (not ((_ is ElementMatch!9491) r!17423)))))

(assert (=> b!3063062 (= e!1917816 e!1917818)))

(declare-fun b!3063063 () Bool)

(assert (=> b!3063063 (= e!1917815 (= (head!6792 s!11993) (c!508483 r!17423)))))

(declare-fun b!3063064 () Bool)

(assert (=> b!3063064 (= e!1917814 (nullable!3137 r!17423))))

(declare-fun b!3063065 () Bool)

(declare-fun res!1257464 () Bool)

(assert (=> b!3063065 (=> (not res!1257464) (not e!1917815))))

(assert (=> b!3063065 (= res!1257464 (isEmpty!19547 (tail!5018 s!11993)))))

(declare-fun b!3063066 () Bool)

(assert (=> b!3063066 (= e!1917819 (not (= (head!6792 s!11993) (c!508483 r!17423))))))

(assert (= (and d!855451 c!508656) b!3063064))

(assert (= (and d!855451 (not c!508656)) b!3063058))

(assert (= (and d!855451 c!508655) b!3063060))

(assert (= (and d!855451 (not c!508655)) b!3063056))

(assert (= (and b!3063056 c!508654) b!3063054))

(assert (= (and b!3063056 (not c!508654)) b!3063062))

(assert (= (and b!3063062 (not res!1257457)) b!3063061))

(assert (= (and b!3063061 res!1257461) b!3063055))

(assert (= (and b!3063055 res!1257459) b!3063065))

(assert (= (and b!3063065 res!1257464) b!3063063))

(assert (= (and b!3063061 (not res!1257460)) b!3063053))

(assert (= (and b!3063053 res!1257463) b!3063059))

(assert (= (and b!3063059 (not res!1257458)) b!3063057))

(assert (= (and b!3063057 (not res!1257462)) b!3063066))

(assert (= (or b!3063060 b!3063055 b!3063059) bm!212024))

(assert (=> d!855451 m!3382181))

(assert (=> d!855451 m!3382189))

(assert (=> b!3063057 m!3382325))

(assert (=> b!3063057 m!3382325))

(assert (=> b!3063057 m!3382327))

(assert (=> b!3063058 m!3382329))

(assert (=> b!3063058 m!3382329))

(declare-fun m!3382429 () Bool)

(assert (=> b!3063058 m!3382429))

(assert (=> b!3063058 m!3382325))

(assert (=> b!3063058 m!3382429))

(assert (=> b!3063058 m!3382325))

(declare-fun m!3382431 () Bool)

(assert (=> b!3063058 m!3382431))

(assert (=> bm!212024 m!3382181))

(declare-fun m!3382433 () Bool)

(assert (=> b!3063064 m!3382433))

(assert (=> b!3063065 m!3382325))

(assert (=> b!3063065 m!3382325))

(assert (=> b!3063065 m!3382327))

(assert (=> b!3063066 m!3382329))

(assert (=> b!3063063 m!3382329))

(assert (=> b!3062453 d!855451))

(declare-fun d!855453 () Bool)

(assert (=> d!855453 (= (matchR!4373 r!17423 s!11993) (matchRSpec!1628 r!17423 s!11993))))

(declare-fun lt!1050191 () Unit!49421)

(declare-fun choose!18137 (Regex!9491 List!35356) Unit!49421)

(assert (=> d!855453 (= lt!1050191 (choose!18137 r!17423 s!11993))))

(assert (=> d!855453 (validRegex!4224 r!17423)))

(assert (=> d!855453 (= (mainMatchTheorem!1628 r!17423 s!11993) lt!1050191)))

(declare-fun bs!532485 () Bool)

(assert (= bs!532485 d!855453))

(assert (=> bs!532485 m!3382185))

(assert (=> bs!532485 m!3382183))

(declare-fun m!3382435 () Bool)

(assert (=> bs!532485 m!3382435))

(assert (=> bs!532485 m!3382189))

(assert (=> b!3062453 d!855453))

(declare-fun d!855455 () Bool)

(declare-fun e!1917827 () Bool)

(assert (=> d!855455 e!1917827))

(declare-fun c!508658 () Bool)

(assert (=> d!855455 (= c!508658 ((_ is EmptyExpr!9491) (regOne!19494 r!17423)))))

(declare-fun lt!1050192 () Bool)

(declare-fun e!1917821 () Bool)

(assert (=> d!855455 (= lt!1050192 e!1917821)))

(declare-fun c!508659 () Bool)

(assert (=> d!855455 (= c!508659 (isEmpty!19547 Nil!35232))))

(assert (=> d!855455 (validRegex!4224 (regOne!19494 r!17423))))

(assert (=> d!855455 (= (matchR!4373 (regOne!19494 r!17423) Nil!35232) lt!1050192)))

(declare-fun b!3063067 () Bool)

(declare-fun e!1917825 () Bool)

(declare-fun e!1917824 () Bool)

(assert (=> b!3063067 (= e!1917825 e!1917824)))

(declare-fun res!1257471 () Bool)

(assert (=> b!3063067 (=> (not res!1257471) (not e!1917824))))

(assert (=> b!3063067 (= res!1257471 (not lt!1050192))))

(declare-fun b!3063068 () Bool)

(declare-fun e!1917823 () Bool)

(assert (=> b!3063068 (= e!1917823 (not lt!1050192))))

(declare-fun b!3063069 () Bool)

(declare-fun res!1257467 () Bool)

(declare-fun e!1917822 () Bool)

(assert (=> b!3063069 (=> (not res!1257467) (not e!1917822))))

(declare-fun call!212030 () Bool)

(assert (=> b!3063069 (= res!1257467 (not call!212030))))

(declare-fun b!3063070 () Bool)

(assert (=> b!3063070 (= e!1917827 e!1917823)))

(declare-fun c!508657 () Bool)

(assert (=> b!3063070 (= c!508657 ((_ is EmptyLang!9491) (regOne!19494 r!17423)))))

(declare-fun bm!212025 () Bool)

(assert (=> bm!212025 (= call!212030 (isEmpty!19547 Nil!35232))))

(declare-fun b!3063071 () Bool)

(declare-fun res!1257470 () Bool)

(declare-fun e!1917826 () Bool)

(assert (=> b!3063071 (=> res!1257470 e!1917826)))

(assert (=> b!3063071 (= res!1257470 (not (isEmpty!19547 (tail!5018 Nil!35232))))))

(declare-fun b!3063072 () Bool)

(assert (=> b!3063072 (= e!1917821 (matchR!4373 (derivativeStep!2733 (regOne!19494 r!17423) (head!6792 Nil!35232)) (tail!5018 Nil!35232)))))

(declare-fun b!3063073 () Bool)

(assert (=> b!3063073 (= e!1917824 e!1917826)))

(declare-fun res!1257466 () Bool)

(assert (=> b!3063073 (=> res!1257466 e!1917826)))

(assert (=> b!3063073 (= res!1257466 call!212030)))

(declare-fun b!3063074 () Bool)

(assert (=> b!3063074 (= e!1917827 (= lt!1050192 call!212030))))

(declare-fun b!3063075 () Bool)

(declare-fun res!1257468 () Bool)

(assert (=> b!3063075 (=> res!1257468 e!1917825)))

(assert (=> b!3063075 (= res!1257468 e!1917822)))

(declare-fun res!1257469 () Bool)

(assert (=> b!3063075 (=> (not res!1257469) (not e!1917822))))

(assert (=> b!3063075 (= res!1257469 lt!1050192)))

(declare-fun b!3063076 () Bool)

(declare-fun res!1257465 () Bool)

(assert (=> b!3063076 (=> res!1257465 e!1917825)))

(assert (=> b!3063076 (= res!1257465 (not ((_ is ElementMatch!9491) (regOne!19494 r!17423))))))

(assert (=> b!3063076 (= e!1917823 e!1917825)))

(declare-fun b!3063077 () Bool)

(assert (=> b!3063077 (= e!1917822 (= (head!6792 Nil!35232) (c!508483 (regOne!19494 r!17423))))))

(declare-fun b!3063078 () Bool)

(assert (=> b!3063078 (= e!1917821 (nullable!3137 (regOne!19494 r!17423)))))

(declare-fun b!3063079 () Bool)

(declare-fun res!1257472 () Bool)

(assert (=> b!3063079 (=> (not res!1257472) (not e!1917822))))

(assert (=> b!3063079 (= res!1257472 (isEmpty!19547 (tail!5018 Nil!35232)))))

(declare-fun b!3063080 () Bool)

(assert (=> b!3063080 (= e!1917826 (not (= (head!6792 Nil!35232) (c!508483 (regOne!19494 r!17423)))))))

(assert (= (and d!855455 c!508659) b!3063078))

(assert (= (and d!855455 (not c!508659)) b!3063072))

(assert (= (and d!855455 c!508658) b!3063074))

(assert (= (and d!855455 (not c!508658)) b!3063070))

(assert (= (and b!3063070 c!508657) b!3063068))

(assert (= (and b!3063070 (not c!508657)) b!3063076))

(assert (= (and b!3063076 (not res!1257465)) b!3063075))

(assert (= (and b!3063075 res!1257469) b!3063069))

(assert (= (and b!3063069 res!1257467) b!3063079))

(assert (= (and b!3063079 res!1257472) b!3063077))

(assert (= (and b!3063075 (not res!1257468)) b!3063067))

(assert (= (and b!3063067 res!1257471) b!3063073))

(assert (= (and b!3063073 (not res!1257466)) b!3063071))

(assert (= (and b!3063071 (not res!1257470)) b!3063080))

(assert (= (or b!3063074 b!3063069 b!3063073) bm!212025))

(declare-fun m!3382437 () Bool)

(assert (=> d!855455 m!3382437))

(assert (=> d!855455 m!3382171))

(declare-fun m!3382439 () Bool)

(assert (=> b!3063071 m!3382439))

(assert (=> b!3063071 m!3382439))

(declare-fun m!3382441 () Bool)

(assert (=> b!3063071 m!3382441))

(declare-fun m!3382443 () Bool)

(assert (=> b!3063072 m!3382443))

(assert (=> b!3063072 m!3382443))

(declare-fun m!3382445 () Bool)

(assert (=> b!3063072 m!3382445))

(assert (=> b!3063072 m!3382439))

(assert (=> b!3063072 m!3382445))

(assert (=> b!3063072 m!3382439))

(declare-fun m!3382447 () Bool)

(assert (=> b!3063072 m!3382447))

(assert (=> bm!212025 m!3382437))

(assert (=> b!3063078 m!3382191))

(assert (=> b!3063079 m!3382439))

(assert (=> b!3063079 m!3382439))

(assert (=> b!3063079 m!3382441))

(assert (=> b!3063080 m!3382443))

(assert (=> b!3063077 m!3382443))

(assert (=> b!3062454 d!855455))

(declare-fun b!3063092 () Bool)

(declare-fun e!1917830 () Bool)

(declare-fun tp!967603 () Bool)

(declare-fun tp!967606 () Bool)

(assert (=> b!3063092 (= e!1917830 (and tp!967603 tp!967606))))

(declare-fun b!3063091 () Bool)

(assert (=> b!3063091 (= e!1917830 tp_is_empty!16545)))

(declare-fun b!3063094 () Bool)

(declare-fun tp!967602 () Bool)

(declare-fun tp!967605 () Bool)

(assert (=> b!3063094 (= e!1917830 (and tp!967602 tp!967605))))

(assert (=> b!3062444 (= tp!967549 e!1917830)))

(declare-fun b!3063093 () Bool)

(declare-fun tp!967604 () Bool)

(assert (=> b!3063093 (= e!1917830 tp!967604)))

(assert (= (and b!3062444 ((_ is ElementMatch!9491) (regOne!19494 r!17423))) b!3063091))

(assert (= (and b!3062444 ((_ is Concat!14812) (regOne!19494 r!17423))) b!3063092))

(assert (= (and b!3062444 ((_ is Star!9491) (regOne!19494 r!17423))) b!3063093))

(assert (= (and b!3062444 ((_ is Union!9491) (regOne!19494 r!17423))) b!3063094))

(declare-fun b!3063096 () Bool)

(declare-fun e!1917831 () Bool)

(declare-fun tp!967608 () Bool)

(declare-fun tp!967611 () Bool)

(assert (=> b!3063096 (= e!1917831 (and tp!967608 tp!967611))))

(declare-fun b!3063095 () Bool)

(assert (=> b!3063095 (= e!1917831 tp_is_empty!16545)))

(declare-fun b!3063098 () Bool)

(declare-fun tp!967607 () Bool)

(declare-fun tp!967610 () Bool)

(assert (=> b!3063098 (= e!1917831 (and tp!967607 tp!967610))))

(assert (=> b!3062444 (= tp!967550 e!1917831)))

(declare-fun b!3063097 () Bool)

(declare-fun tp!967609 () Bool)

(assert (=> b!3063097 (= e!1917831 tp!967609)))

(assert (= (and b!3062444 ((_ is ElementMatch!9491) (regTwo!19494 r!17423))) b!3063095))

(assert (= (and b!3062444 ((_ is Concat!14812) (regTwo!19494 r!17423))) b!3063096))

(assert (= (and b!3062444 ((_ is Star!9491) (regTwo!19494 r!17423))) b!3063097))

(assert (= (and b!3062444 ((_ is Union!9491) (regTwo!19494 r!17423))) b!3063098))

(declare-fun b!3063103 () Bool)

(declare-fun e!1917834 () Bool)

(declare-fun tp!967614 () Bool)

(assert (=> b!3063103 (= e!1917834 (and tp_is_empty!16545 tp!967614))))

(assert (=> b!3062450 (= tp!967553 e!1917834)))

(assert (= (and b!3062450 ((_ is Cons!35232) (t!234421 s!11993))) b!3063103))

(declare-fun b!3063105 () Bool)

(declare-fun e!1917835 () Bool)

(declare-fun tp!967616 () Bool)

(declare-fun tp!967619 () Bool)

(assert (=> b!3063105 (= e!1917835 (and tp!967616 tp!967619))))

(declare-fun b!3063104 () Bool)

(assert (=> b!3063104 (= e!1917835 tp_is_empty!16545)))

(declare-fun b!3063107 () Bool)

(declare-fun tp!967615 () Bool)

(declare-fun tp!967618 () Bool)

(assert (=> b!3063107 (= e!1917835 (and tp!967615 tp!967618))))

(assert (=> b!3062452 (= tp!967548 e!1917835)))

(declare-fun b!3063106 () Bool)

(declare-fun tp!967617 () Bool)

(assert (=> b!3063106 (= e!1917835 tp!967617)))

(assert (= (and b!3062452 ((_ is ElementMatch!9491) (regOne!19495 r!17423))) b!3063104))

(assert (= (and b!3062452 ((_ is Concat!14812) (regOne!19495 r!17423))) b!3063105))

(assert (= (and b!3062452 ((_ is Star!9491) (regOne!19495 r!17423))) b!3063106))

(assert (= (and b!3062452 ((_ is Union!9491) (regOne!19495 r!17423))) b!3063107))

(declare-fun b!3063109 () Bool)

(declare-fun e!1917836 () Bool)

(declare-fun tp!967621 () Bool)

(declare-fun tp!967624 () Bool)

(assert (=> b!3063109 (= e!1917836 (and tp!967621 tp!967624))))

(declare-fun b!3063108 () Bool)

(assert (=> b!3063108 (= e!1917836 tp_is_empty!16545)))

(declare-fun b!3063111 () Bool)

(declare-fun tp!967620 () Bool)

(declare-fun tp!967623 () Bool)

(assert (=> b!3063111 (= e!1917836 (and tp!967620 tp!967623))))

(assert (=> b!3062452 (= tp!967552 e!1917836)))

(declare-fun b!3063110 () Bool)

(declare-fun tp!967622 () Bool)

(assert (=> b!3063110 (= e!1917836 tp!967622)))

(assert (= (and b!3062452 ((_ is ElementMatch!9491) (regTwo!19495 r!17423))) b!3063108))

(assert (= (and b!3062452 ((_ is Concat!14812) (regTwo!19495 r!17423))) b!3063109))

(assert (= (and b!3062452 ((_ is Star!9491) (regTwo!19495 r!17423))) b!3063110))

(assert (= (and b!3062452 ((_ is Union!9491) (regTwo!19495 r!17423))) b!3063111))

(declare-fun b!3063113 () Bool)

(declare-fun e!1917837 () Bool)

(declare-fun tp!967626 () Bool)

(declare-fun tp!967629 () Bool)

(assert (=> b!3063113 (= e!1917837 (and tp!967626 tp!967629))))

(declare-fun b!3063112 () Bool)

(assert (=> b!3063112 (= e!1917837 tp_is_empty!16545)))

(declare-fun b!3063115 () Bool)

(declare-fun tp!967625 () Bool)

(declare-fun tp!967628 () Bool)

(assert (=> b!3063115 (= e!1917837 (and tp!967625 tp!967628))))

(assert (=> b!3062448 (= tp!967551 e!1917837)))

(declare-fun b!3063114 () Bool)

(declare-fun tp!967627 () Bool)

(assert (=> b!3063114 (= e!1917837 tp!967627)))

(assert (= (and b!3062448 ((_ is ElementMatch!9491) (reg!9820 r!17423))) b!3063112))

(assert (= (and b!3062448 ((_ is Concat!14812) (reg!9820 r!17423))) b!3063113))

(assert (= (and b!3062448 ((_ is Star!9491) (reg!9820 r!17423))) b!3063114))

(assert (= (and b!3062448 ((_ is Union!9491) (reg!9820 r!17423))) b!3063115))

(check-sat (not bm!211969) (not b!3062777) (not b!3063097) (not b!3063092) (not b!3062706) (not b!3063066) (not bm!211954) (not b!3062791) (not b!3063111) (not b!3062793) (not b!3063105) (not b!3063115) (not bm!212023) (not bm!211953) (not bm!211971) (not b!3062780) (not b!3063109) (not bm!211942) (not bm!212025) (not b!3062792) (not bm!211977) (not b!3062700) (not d!855451) (not bm!211952) (not bm!211976) (not bm!212024) (not d!855409) (not b!3063113) (not b!3063094) (not b!3063063) (not bm!211950) (not bm!211943) (not d!855427) (not b!3062702) (not bm!211972) (not d!855423) (not d!855425) (not bm!211939) (not bm!211940) (not bm!211951) (not bm!211941) (not b!3062701) (not b!3062778) (not b!3063096) (not b!3063098) (not d!855395) (not b!3063071) (not b!3062720) (not b!3062786) (not b!3063058) (not b!3062553) (not b!3062779) (not b!3062596) (not b!3063110) (not bm!211968) (not b!3063072) (not bm!212022) (not d!855455) (not b!3063065) (not b!3062653) (not b!3062771) (not b!3063103) (not b!3063107) (not b!3063045) (not b!3062772) (not b!3063093) (not b!3063040) (not b!3063077) (not b!3062794) (not b!3062611) (not b!3063114) (not b!3063057) (not d!855385) (not d!855381) (not b!3063064) (not b!3062568) (not d!855417) (not b!3063079) (not b!3062785) (not b!3063078) (not b!3063106) (not d!855453) (not b!3063080) tp_is_empty!16545 (not d!855407) (not b!3062707) (not b!3062705))
(check-sat)
