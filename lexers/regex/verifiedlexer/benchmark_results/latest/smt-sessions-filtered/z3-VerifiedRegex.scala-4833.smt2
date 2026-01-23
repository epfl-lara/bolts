; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248552 () Bool)

(assert start!248552)

(declare-fun b!2572470 () Bool)

(declare-fun e!1623408 () Bool)

(declare-fun e!1623406 () Bool)

(assert (=> b!2572470 (= e!1623408 (not e!1623406))))

(declare-fun res!1082205 () Bool)

(assert (=> b!2572470 (=> res!1082205 e!1623406)))

(declare-fun lt!906172 () Bool)

(assert (=> b!2572470 (= res!1082205 (not lt!906172))))

(declare-datatypes ((C!15440 0))(
  ( (C!15441 (val!9372 Int)) )
))
(declare-datatypes ((List!29706 0))(
  ( (Nil!29606) (Cons!29606 (h!35026 C!15440) (t!211405 List!29706)) )
))
(declare-fun tl!4068 () List!29706)

(declare-datatypes ((Regex!7641 0))(
  ( (ElementMatch!7641 (c!414083 C!15440)) (Concat!12337 (regOne!15794 Regex!7641) (regTwo!15794 Regex!7641)) (EmptyExpr!7641) (Star!7641 (reg!7970 Regex!7641)) (EmptyLang!7641) (Union!7641 (regOne!15795 Regex!7641) (regTwo!15795 Regex!7641)) )
))
(declare-fun derivative!336 (Regex!7641 List!29706) Regex!7641)

(assert (=> b!2572470 (= (derivative!336 EmptyLang!7641 tl!4068) EmptyLang!7641)))

(declare-datatypes ((Unit!43463 0))(
  ( (Unit!43464) )
))
(declare-fun lt!906170 () Unit!43463)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!70 (Regex!7641 List!29706) Unit!43463)

(assert (=> b!2572470 (= lt!906170 (lemmaEmptyLangDerivativeIsAFixPoint!70 EmptyLang!7641 tl!4068))))

(declare-fun e!1623410 () Bool)

(assert (=> b!2572470 e!1623410))

(declare-fun res!1082203 () Bool)

(assert (=> b!2572470 (=> res!1082203 e!1623410)))

(assert (=> b!2572470 (= res!1082203 lt!906172)))

(declare-fun lt!906175 () Regex!7641)

(declare-fun matchR!3584 (Regex!7641 List!29706) Bool)

(assert (=> b!2572470 (= lt!906172 (matchR!3584 lt!906175 tl!4068))))

(declare-fun lt!906176 () Unit!43463)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!230 (Regex!7641 Regex!7641 List!29706) Unit!43463)

(assert (=> b!2572470 (= lt!906176 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!230 lt!906175 EmptyLang!7641 tl!4068))))

(declare-fun lt!906180 () Regex!7641)

(assert (=> b!2572470 (= (matchR!3584 lt!906180 tl!4068) (matchR!3584 (derivative!336 lt!906180 tl!4068) Nil!29606))))

(declare-fun lt!906174 () Unit!43463)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!230 (Regex!7641 List!29706) Unit!43463)

(assert (=> b!2572470 (= lt!906174 (lemmaMatchRIsSameAsWholeDerivativeAndNil!230 lt!906180 tl!4068))))

(assert (=> b!2572470 (= lt!906180 (Union!7641 lt!906175 EmptyLang!7641))))

(declare-fun lt!906173 () Regex!7641)

(declare-fun r!27340 () Regex!7641)

(assert (=> b!2572470 (= lt!906175 (Concat!12337 lt!906173 (regTwo!15794 r!27340)))))

(declare-fun c!14016 () C!15440)

(declare-fun derivativeStep!2210 (Regex!7641 C!15440) Regex!7641)

(assert (=> b!2572470 (= lt!906173 (derivativeStep!2210 (regOne!15794 r!27340) c!14016))))

(declare-fun b!2572471 () Bool)

(declare-fun e!1623404 () Bool)

(declare-fun e!1623409 () Bool)

(assert (=> b!2572471 (= e!1623404 e!1623409)))

(declare-fun res!1082199 () Bool)

(assert (=> b!2572471 (=> res!1082199 e!1623409)))

(declare-fun validRegex!3267 (Regex!7641) Bool)

(assert (=> b!2572471 (= res!1082199 (not (validRegex!3267 (regOne!15794 r!27340))))))

(declare-fun lt!906178 () Regex!7641)

(assert (=> b!2572471 (matchR!3584 lt!906178 Nil!29606)))

(declare-datatypes ((tuple2!29604 0))(
  ( (tuple2!29605 (_1!17344 List!29706) (_2!17344 List!29706)) )
))
(declare-fun lt!906169 () tuple2!29604)

(assert (=> b!2572471 (= lt!906178 (derivative!336 lt!906173 (_1!17344 lt!906169)))))

(declare-fun lt!906179 () Unit!43463)

(assert (=> b!2572471 (= lt!906179 (lemmaMatchRIsSameAsWholeDerivativeAndNil!230 lt!906173 (_1!17344 lt!906169)))))

(declare-fun b!2572472 () Bool)

(declare-fun res!1082201 () Bool)

(assert (=> b!2572472 (=> (not res!1082201) (not e!1623408))))

(get-info :version)

(assert (=> b!2572472 (= res!1082201 (and (not ((_ is EmptyExpr!7641) r!27340)) (not ((_ is EmptyLang!7641) r!27340)) (not ((_ is ElementMatch!7641) r!27340)) (not ((_ is Union!7641) r!27340)) (not ((_ is Star!7641) r!27340))))))

(declare-fun b!2572473 () Bool)

(assert (=> b!2572473 (= e!1623410 (matchR!3584 EmptyLang!7641 tl!4068))))

(declare-fun b!2572475 () Bool)

(declare-fun RegexPrimitiveSize!124 (Regex!7641) Int)

(assert (=> b!2572475 (= e!1623409 (< (RegexPrimitiveSize!124 (regOne!15794 r!27340)) (RegexPrimitiveSize!124 r!27340)))))

(declare-fun b!2572476 () Bool)

(declare-fun e!1623405 () Bool)

(declare-fun tp!818244 () Bool)

(assert (=> b!2572476 (= e!1623405 tp!818244)))

(declare-fun b!2572477 () Bool)

(declare-fun res!1082198 () Bool)

(assert (=> b!2572477 (=> (not res!1082198) (not e!1623408))))

(declare-fun nullable!2558 (Regex!7641) Bool)

(assert (=> b!2572477 (= res!1082198 (nullable!2558 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))

(declare-fun b!2572478 () Bool)

(declare-fun res!1082197 () Bool)

(assert (=> b!2572478 (=> res!1082197 e!1623404)))

(assert (=> b!2572478 (= res!1082197 (not (matchR!3584 (regOne!15794 r!27340) (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun b!2572479 () Bool)

(declare-fun tp!818242 () Bool)

(declare-fun tp!818246 () Bool)

(assert (=> b!2572479 (= e!1623405 (and tp!818242 tp!818246))))

(declare-fun b!2572480 () Bool)

(declare-fun e!1623407 () Bool)

(declare-fun tp_is_empty!13137 () Bool)

(declare-fun tp!818245 () Bool)

(assert (=> b!2572480 (= e!1623407 (and tp_is_empty!13137 tp!818245))))

(declare-fun b!2572481 () Bool)

(declare-fun res!1082200 () Bool)

(assert (=> b!2572481 (=> (not res!1082200) (not e!1623408))))

(assert (=> b!2572481 (= res!1082200 (not (nullable!2558 (regOne!15794 r!27340))))))

(declare-fun b!2572482 () Bool)

(declare-fun tp!818243 () Bool)

(declare-fun tp!818241 () Bool)

(assert (=> b!2572482 (= e!1623405 (and tp!818243 tp!818241))))

(declare-fun b!2572483 () Bool)

(declare-fun res!1082202 () Bool)

(assert (=> b!2572483 (=> res!1082202 e!1623409)))

(assert (=> b!2572483 (= res!1082202 (not (nullable!2558 lt!906178)))))

(declare-fun b!2572474 () Bool)

(assert (=> b!2572474 (= e!1623406 e!1623404)))

(declare-fun res!1082196 () Bool)

(assert (=> b!2572474 (=> res!1082196 e!1623404)))

(declare-fun ++!7280 (List!29706 List!29706) List!29706)

(assert (=> b!2572474 (= res!1082196 (not (= (++!7280 (_1!17344 lt!906169) (_2!17344 lt!906169)) tl!4068)))))

(declare-datatypes ((Option!5922 0))(
  ( (None!5921) (Some!5921 (v!31866 tuple2!29604)) )
))
(declare-fun lt!906171 () Option!5922)

(declare-fun get!9321 (Option!5922) tuple2!29604)

(assert (=> b!2572474 (= lt!906169 (get!9321 lt!906171))))

(declare-fun isDefined!4744 (Option!5922) Bool)

(assert (=> b!2572474 (isDefined!4744 lt!906171)))

(declare-fun findConcatSeparation!944 (Regex!7641 Regex!7641 List!29706 List!29706 List!29706) Option!5922)

(assert (=> b!2572474 (= lt!906171 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068))))

(declare-fun lt!906177 () Unit!43463)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!226 (Regex!7641 Regex!7641 List!29706) Unit!43463)

(assert (=> b!2572474 (= lt!906177 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!226 lt!906173 (regTwo!15794 r!27340) tl!4068))))

(declare-fun res!1082195 () Bool)

(assert (=> start!248552 (=> (not res!1082195) (not e!1623408))))

(assert (=> start!248552 (= res!1082195 (validRegex!3267 r!27340))))

(assert (=> start!248552 e!1623408))

(assert (=> start!248552 e!1623405))

(assert (=> start!248552 tp_is_empty!13137))

(assert (=> start!248552 e!1623407))

(declare-fun b!2572484 () Bool)

(declare-fun res!1082206 () Bool)

(assert (=> b!2572484 (=> res!1082206 e!1623404)))

(assert (=> b!2572484 (= res!1082206 (not (matchR!3584 (regTwo!15794 r!27340) (_2!17344 lt!906169))))))

(declare-fun b!2572485 () Bool)

(declare-fun res!1082204 () Bool)

(assert (=> b!2572485 (=> res!1082204 e!1623404)))

(assert (=> b!2572485 (= res!1082204 (not (matchR!3584 lt!906173 (_1!17344 lt!906169))))))

(declare-fun b!2572486 () Bool)

(assert (=> b!2572486 (= e!1623405 tp_is_empty!13137)))

(assert (= (and start!248552 res!1082195) b!2572477))

(assert (= (and b!2572477 res!1082198) b!2572472))

(assert (= (and b!2572472 res!1082201) b!2572481))

(assert (= (and b!2572481 res!1082200) b!2572470))

(assert (= (and b!2572470 (not res!1082203)) b!2572473))

(assert (= (and b!2572470 (not res!1082205)) b!2572474))

(assert (= (and b!2572474 (not res!1082196)) b!2572485))

(assert (= (and b!2572485 (not res!1082204)) b!2572484))

(assert (= (and b!2572484 (not res!1082206)) b!2572478))

(assert (= (and b!2572478 (not res!1082197)) b!2572471))

(assert (= (and b!2572471 (not res!1082199)) b!2572483))

(assert (= (and b!2572483 (not res!1082202)) b!2572475))

(assert (= (and start!248552 ((_ is ElementMatch!7641) r!27340)) b!2572486))

(assert (= (and start!248552 ((_ is Concat!12337) r!27340)) b!2572482))

(assert (= (and start!248552 ((_ is Star!7641) r!27340)) b!2572476))

(assert (= (and start!248552 ((_ is Union!7641) r!27340)) b!2572479))

(assert (= (and start!248552 ((_ is Cons!29606) tl!4068)) b!2572480))

(declare-fun m!2908405 () Bool)

(assert (=> b!2572477 m!2908405))

(assert (=> b!2572477 m!2908405))

(declare-fun m!2908407 () Bool)

(assert (=> b!2572477 m!2908407))

(assert (=> b!2572477 m!2908407))

(declare-fun m!2908409 () Bool)

(assert (=> b!2572477 m!2908409))

(declare-fun m!2908411 () Bool)

(assert (=> b!2572473 m!2908411))

(declare-fun m!2908413 () Bool)

(assert (=> start!248552 m!2908413))

(declare-fun m!2908415 () Bool)

(assert (=> b!2572484 m!2908415))

(declare-fun m!2908417 () Bool)

(assert (=> b!2572478 m!2908417))

(declare-fun m!2908419 () Bool)

(assert (=> b!2572471 m!2908419))

(declare-fun m!2908421 () Bool)

(assert (=> b!2572471 m!2908421))

(declare-fun m!2908423 () Bool)

(assert (=> b!2572471 m!2908423))

(declare-fun m!2908425 () Bool)

(assert (=> b!2572471 m!2908425))

(declare-fun m!2908427 () Bool)

(assert (=> b!2572475 m!2908427))

(declare-fun m!2908429 () Bool)

(assert (=> b!2572475 m!2908429))

(declare-fun m!2908431 () Bool)

(assert (=> b!2572483 m!2908431))

(declare-fun m!2908433 () Bool)

(assert (=> b!2572481 m!2908433))

(declare-fun m!2908435 () Bool)

(assert (=> b!2572474 m!2908435))

(declare-fun m!2908437 () Bool)

(assert (=> b!2572474 m!2908437))

(declare-fun m!2908439 () Bool)

(assert (=> b!2572474 m!2908439))

(declare-fun m!2908441 () Bool)

(assert (=> b!2572474 m!2908441))

(declare-fun m!2908443 () Bool)

(assert (=> b!2572474 m!2908443))

(declare-fun m!2908445 () Bool)

(assert (=> b!2572470 m!2908445))

(declare-fun m!2908447 () Bool)

(assert (=> b!2572470 m!2908447))

(declare-fun m!2908449 () Bool)

(assert (=> b!2572470 m!2908449))

(declare-fun m!2908451 () Bool)

(assert (=> b!2572470 m!2908451))

(declare-fun m!2908453 () Bool)

(assert (=> b!2572470 m!2908453))

(declare-fun m!2908455 () Bool)

(assert (=> b!2572470 m!2908455))

(assert (=> b!2572470 m!2908447))

(declare-fun m!2908457 () Bool)

(assert (=> b!2572470 m!2908457))

(declare-fun m!2908459 () Bool)

(assert (=> b!2572470 m!2908459))

(declare-fun m!2908461 () Bool)

(assert (=> b!2572470 m!2908461))

(declare-fun m!2908463 () Bool)

(assert (=> b!2572485 m!2908463))

(check-sat (not b!2572480) (not b!2572485) (not b!2572473) (not b!2572477) (not b!2572479) (not b!2572474) (not b!2572484) (not b!2572475) (not b!2572471) (not start!248552) (not b!2572482) tp_is_empty!13137 (not b!2572478) (not b!2572470) (not b!2572483) (not b!2572476) (not b!2572481))
(check-sat)
(get-model)

(declare-fun d!727754 () Bool)

(assert (=> d!727754 (= (get!9321 lt!906171) (v!31866 lt!906171))))

(assert (=> b!2572474 d!727754))

(declare-fun b!2572532 () Bool)

(declare-fun e!1623446 () Option!5922)

(declare-fun e!1623443 () Option!5922)

(assert (=> b!2572532 (= e!1623446 e!1623443)))

(declare-fun c!414095 () Bool)

(assert (=> b!2572532 (= c!414095 ((_ is Nil!29606) tl!4068))))

(declare-fun b!2572533 () Bool)

(declare-fun e!1623444 () Bool)

(declare-fun lt!906187 () Option!5922)

(assert (=> b!2572533 (= e!1623444 (= (++!7280 (_1!17344 (get!9321 lt!906187)) (_2!17344 (get!9321 lt!906187))) tl!4068))))

(declare-fun b!2572534 () Bool)

(assert (=> b!2572534 (= e!1623446 (Some!5921 (tuple2!29605 Nil!29606 tl!4068)))))

(declare-fun d!727756 () Bool)

(declare-fun e!1623442 () Bool)

(assert (=> d!727756 e!1623442))

(declare-fun res!1082235 () Bool)

(assert (=> d!727756 (=> res!1082235 e!1623442)))

(assert (=> d!727756 (= res!1082235 e!1623444)))

(declare-fun res!1082234 () Bool)

(assert (=> d!727756 (=> (not res!1082234) (not e!1623444))))

(assert (=> d!727756 (= res!1082234 (isDefined!4744 lt!906187))))

(assert (=> d!727756 (= lt!906187 e!1623446)))

(declare-fun c!414094 () Bool)

(declare-fun e!1623445 () Bool)

(assert (=> d!727756 (= c!414094 e!1623445)))

(declare-fun res!1082233 () Bool)

(assert (=> d!727756 (=> (not res!1082233) (not e!1623445))))

(assert (=> d!727756 (= res!1082233 (matchR!3584 lt!906173 Nil!29606))))

(assert (=> d!727756 (validRegex!3267 lt!906173)))

(assert (=> d!727756 (= (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068) lt!906187)))

(declare-fun b!2572535 () Bool)

(assert (=> b!2572535 (= e!1623443 None!5921)))

(declare-fun b!2572536 () Bool)

(declare-fun lt!906189 () Unit!43463)

(declare-fun lt!906188 () Unit!43463)

(assert (=> b!2572536 (= lt!906189 lt!906188)))

(assert (=> b!2572536 (= (++!7280 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!810 (List!29706 C!15440 List!29706 List!29706) Unit!43463)

(assert (=> b!2572536 (= lt!906188 (lemmaMoveElementToOtherListKeepsConcatEq!810 Nil!29606 (h!35026 tl!4068) (t!211405 tl!4068) tl!4068))))

(assert (=> b!2572536 (= e!1623443 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068) tl!4068))))

(declare-fun b!2572537 () Bool)

(declare-fun res!1082236 () Bool)

(assert (=> b!2572537 (=> (not res!1082236) (not e!1623444))))

(assert (=> b!2572537 (= res!1082236 (matchR!3584 (regTwo!15794 r!27340) (_2!17344 (get!9321 lt!906187))))))

(declare-fun b!2572538 () Bool)

(assert (=> b!2572538 (= e!1623442 (not (isDefined!4744 lt!906187)))))

(declare-fun b!2572539 () Bool)

(declare-fun res!1082232 () Bool)

(assert (=> b!2572539 (=> (not res!1082232) (not e!1623444))))

(assert (=> b!2572539 (= res!1082232 (matchR!3584 lt!906173 (_1!17344 (get!9321 lt!906187))))))

(declare-fun b!2572540 () Bool)

(assert (=> b!2572540 (= e!1623445 (matchR!3584 (regTwo!15794 r!27340) tl!4068))))

(assert (= (and d!727756 res!1082233) b!2572540))

(assert (= (and d!727756 c!414094) b!2572534))

(assert (= (and d!727756 (not c!414094)) b!2572532))

(assert (= (and b!2572532 c!414095) b!2572535))

(assert (= (and b!2572532 (not c!414095)) b!2572536))

(assert (= (and d!727756 res!1082234) b!2572539))

(assert (= (and b!2572539 res!1082232) b!2572537))

(assert (= (and b!2572537 res!1082236) b!2572533))

(assert (= (and d!727756 (not res!1082235)) b!2572538))

(declare-fun m!2908473 () Bool)

(assert (=> b!2572539 m!2908473))

(declare-fun m!2908475 () Bool)

(assert (=> b!2572539 m!2908475))

(declare-fun m!2908477 () Bool)

(assert (=> b!2572536 m!2908477))

(assert (=> b!2572536 m!2908477))

(declare-fun m!2908479 () Bool)

(assert (=> b!2572536 m!2908479))

(declare-fun m!2908481 () Bool)

(assert (=> b!2572536 m!2908481))

(assert (=> b!2572536 m!2908477))

(declare-fun m!2908483 () Bool)

(assert (=> b!2572536 m!2908483))

(assert (=> b!2572537 m!2908473))

(declare-fun m!2908485 () Bool)

(assert (=> b!2572537 m!2908485))

(declare-fun m!2908487 () Bool)

(assert (=> b!2572540 m!2908487))

(assert (=> b!2572533 m!2908473))

(declare-fun m!2908489 () Bool)

(assert (=> b!2572533 m!2908489))

(declare-fun m!2908491 () Bool)

(assert (=> b!2572538 m!2908491))

(assert (=> d!727756 m!2908491))

(declare-fun m!2908493 () Bool)

(assert (=> d!727756 m!2908493))

(declare-fun m!2908495 () Bool)

(assert (=> d!727756 m!2908495))

(assert (=> b!2572474 d!727756))

(declare-fun d!727764 () Bool)

(assert (=> d!727764 (isDefined!4744 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068))))

(declare-fun lt!906194 () Unit!43463)

(declare-fun choose!15171 (Regex!7641 Regex!7641 List!29706) Unit!43463)

(assert (=> d!727764 (= lt!906194 (choose!15171 lt!906173 (regTwo!15794 r!27340) tl!4068))))

(assert (=> d!727764 (validRegex!3267 lt!906173)))

(assert (=> d!727764 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!226 lt!906173 (regTwo!15794 r!27340) tl!4068) lt!906194)))

(declare-fun bs!470067 () Bool)

(assert (= bs!470067 d!727764))

(assert (=> bs!470067 m!2908437))

(assert (=> bs!470067 m!2908437))

(declare-fun m!2908497 () Bool)

(assert (=> bs!470067 m!2908497))

(declare-fun m!2908499 () Bool)

(assert (=> bs!470067 m!2908499))

(assert (=> bs!470067 m!2908495))

(assert (=> b!2572474 d!727764))

(declare-fun d!727766 () Bool)

(declare-fun isEmpty!17068 (Option!5922) Bool)

(assert (=> d!727766 (= (isDefined!4744 lt!906171) (not (isEmpty!17068 lt!906171)))))

(declare-fun bs!470068 () Bool)

(assert (= bs!470068 d!727766))

(declare-fun m!2908501 () Bool)

(assert (=> bs!470068 m!2908501))

(assert (=> b!2572474 d!727766))

(declare-fun b!2572593 () Bool)

(declare-fun res!1082265 () Bool)

(declare-fun e!1623473 () Bool)

(assert (=> b!2572593 (=> (not res!1082265) (not e!1623473))))

(declare-fun lt!906198 () List!29706)

(declare-fun size!22965 (List!29706) Int)

(assert (=> b!2572593 (= res!1082265 (= (size!22965 lt!906198) (+ (size!22965 (_1!17344 lt!906169)) (size!22965 (_2!17344 lt!906169)))))))

(declare-fun b!2572591 () Bool)

(declare-fun e!1623472 () List!29706)

(assert (=> b!2572591 (= e!1623472 (_2!17344 lt!906169))))

(declare-fun b!2572594 () Bool)

(assert (=> b!2572594 (= e!1623473 (or (not (= (_2!17344 lt!906169) Nil!29606)) (= lt!906198 (_1!17344 lt!906169))))))

(declare-fun b!2572592 () Bool)

(assert (=> b!2572592 (= e!1623472 (Cons!29606 (h!35026 (_1!17344 lt!906169)) (++!7280 (t!211405 (_1!17344 lt!906169)) (_2!17344 lt!906169))))))

(declare-fun d!727768 () Bool)

(assert (=> d!727768 e!1623473))

(declare-fun res!1082266 () Bool)

(assert (=> d!727768 (=> (not res!1082266) (not e!1623473))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4085 (List!29706) (InoxSet C!15440))

(assert (=> d!727768 (= res!1082266 (= (content!4085 lt!906198) ((_ map or) (content!4085 (_1!17344 lt!906169)) (content!4085 (_2!17344 lt!906169)))))))

(assert (=> d!727768 (= lt!906198 e!1623472)))

(declare-fun c!414107 () Bool)

(assert (=> d!727768 (= c!414107 ((_ is Nil!29606) (_1!17344 lt!906169)))))

(assert (=> d!727768 (= (++!7280 (_1!17344 lt!906169) (_2!17344 lt!906169)) lt!906198)))

(assert (= (and d!727768 c!414107) b!2572591))

(assert (= (and d!727768 (not c!414107)) b!2572592))

(assert (= (and d!727768 res!1082266) b!2572593))

(assert (= (and b!2572593 res!1082265) b!2572594))

(declare-fun m!2908517 () Bool)

(assert (=> b!2572593 m!2908517))

(declare-fun m!2908519 () Bool)

(assert (=> b!2572593 m!2908519))

(declare-fun m!2908521 () Bool)

(assert (=> b!2572593 m!2908521))

(declare-fun m!2908523 () Bool)

(assert (=> b!2572592 m!2908523))

(declare-fun m!2908525 () Bool)

(assert (=> d!727768 m!2908525))

(declare-fun m!2908527 () Bool)

(assert (=> d!727768 m!2908527))

(declare-fun m!2908529 () Bool)

(assert (=> d!727768 m!2908529))

(assert (=> b!2572474 d!727768))

(declare-fun b!2572678 () Bool)

(declare-fun res!1082291 () Bool)

(declare-fun e!1623520 () Bool)

(assert (=> b!2572678 (=> (not res!1082291) (not e!1623520))))

(declare-fun isEmpty!17069 (List!29706) Bool)

(declare-fun tail!4121 (List!29706) List!29706)

(assert (=> b!2572678 (= res!1082291 (isEmpty!17069 (tail!4121 (_1!17344 lt!906169))))))

(declare-fun b!2572679 () Bool)

(declare-fun e!1623518 () Bool)

(declare-fun head!5846 (List!29706) C!15440)

(assert (=> b!2572679 (= e!1623518 (not (= (head!5846 (_1!17344 lt!906169)) (c!414083 lt!906173))))))

(declare-fun b!2572680 () Bool)

(declare-fun res!1082289 () Bool)

(declare-fun e!1623519 () Bool)

(assert (=> b!2572680 (=> res!1082289 e!1623519)))

(assert (=> b!2572680 (= res!1082289 e!1623520)))

(declare-fun res!1082293 () Bool)

(assert (=> b!2572680 (=> (not res!1082293) (not e!1623520))))

(declare-fun lt!906211 () Bool)

(assert (=> b!2572680 (= res!1082293 lt!906211)))

(declare-fun b!2572681 () Bool)

(declare-fun e!1623523 () Bool)

(assert (=> b!2572681 (= e!1623523 (not lt!906211))))

(declare-fun d!727772 () Bool)

(declare-fun e!1623524 () Bool)

(assert (=> d!727772 e!1623524))

(declare-fun c!414139 () Bool)

(assert (=> d!727772 (= c!414139 ((_ is EmptyExpr!7641) lt!906173))))

(declare-fun e!1623522 () Bool)

(assert (=> d!727772 (= lt!906211 e!1623522)))

(declare-fun c!414141 () Bool)

(assert (=> d!727772 (= c!414141 (isEmpty!17069 (_1!17344 lt!906169)))))

(assert (=> d!727772 (validRegex!3267 lt!906173)))

(assert (=> d!727772 (= (matchR!3584 lt!906173 (_1!17344 lt!906169)) lt!906211)))

(declare-fun b!2572682 () Bool)

(declare-fun res!1082290 () Bool)

(assert (=> b!2572682 (=> res!1082290 e!1623519)))

(assert (=> b!2572682 (= res!1082290 (not ((_ is ElementMatch!7641) lt!906173)))))

(assert (=> b!2572682 (= e!1623523 e!1623519)))

(declare-fun b!2572683 () Bool)

(assert (=> b!2572683 (= e!1623520 (= (head!5846 (_1!17344 lt!906169)) (c!414083 lt!906173)))))

(declare-fun b!2572684 () Bool)

(declare-fun res!1082288 () Bool)

(assert (=> b!2572684 (=> res!1082288 e!1623518)))

(assert (=> b!2572684 (= res!1082288 (not (isEmpty!17069 (tail!4121 (_1!17344 lt!906169)))))))

(declare-fun b!2572685 () Bool)

(assert (=> b!2572685 (= e!1623522 (nullable!2558 lt!906173))))

(declare-fun b!2572686 () Bool)

(declare-fun call!166139 () Bool)

(assert (=> b!2572686 (= e!1623524 (= lt!906211 call!166139))))

(declare-fun bm!166134 () Bool)

(assert (=> bm!166134 (= call!166139 (isEmpty!17069 (_1!17344 lt!906169)))))

(declare-fun b!2572687 () Bool)

(declare-fun res!1082295 () Bool)

(assert (=> b!2572687 (=> (not res!1082295) (not e!1623520))))

(assert (=> b!2572687 (= res!1082295 (not call!166139))))

(declare-fun b!2572688 () Bool)

(assert (=> b!2572688 (= e!1623522 (matchR!3584 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))) (tail!4121 (_1!17344 lt!906169))))))

(declare-fun b!2572689 () Bool)

(assert (=> b!2572689 (= e!1623524 e!1623523)))

(declare-fun c!414140 () Bool)

(assert (=> b!2572689 (= c!414140 ((_ is EmptyLang!7641) lt!906173))))

(declare-fun b!2572690 () Bool)

(declare-fun e!1623521 () Bool)

(assert (=> b!2572690 (= e!1623519 e!1623521)))

(declare-fun res!1082292 () Bool)

(assert (=> b!2572690 (=> (not res!1082292) (not e!1623521))))

(assert (=> b!2572690 (= res!1082292 (not lt!906211))))

(declare-fun b!2572691 () Bool)

(assert (=> b!2572691 (= e!1623521 e!1623518)))

(declare-fun res!1082294 () Bool)

(assert (=> b!2572691 (=> res!1082294 e!1623518)))

(assert (=> b!2572691 (= res!1082294 call!166139)))

(assert (= (and d!727772 c!414141) b!2572685))

(assert (= (and d!727772 (not c!414141)) b!2572688))

(assert (= (and d!727772 c!414139) b!2572686))

(assert (= (and d!727772 (not c!414139)) b!2572689))

(assert (= (and b!2572689 c!414140) b!2572681))

(assert (= (and b!2572689 (not c!414140)) b!2572682))

(assert (= (and b!2572682 (not res!1082290)) b!2572680))

(assert (= (and b!2572680 res!1082293) b!2572687))

(assert (= (and b!2572687 res!1082295) b!2572678))

(assert (= (and b!2572678 res!1082291) b!2572683))

(assert (= (and b!2572680 (not res!1082289)) b!2572690))

(assert (= (and b!2572690 res!1082292) b!2572691))

(assert (= (and b!2572691 (not res!1082294)) b!2572684))

(assert (= (and b!2572684 (not res!1082288)) b!2572679))

(assert (= (or b!2572686 b!2572687 b!2572691) bm!166134))

(declare-fun m!2908567 () Bool)

(assert (=> b!2572678 m!2908567))

(assert (=> b!2572678 m!2908567))

(declare-fun m!2908569 () Bool)

(assert (=> b!2572678 m!2908569))

(declare-fun m!2908571 () Bool)

(assert (=> b!2572688 m!2908571))

(assert (=> b!2572688 m!2908571))

(declare-fun m!2908573 () Bool)

(assert (=> b!2572688 m!2908573))

(assert (=> b!2572688 m!2908567))

(assert (=> b!2572688 m!2908573))

(assert (=> b!2572688 m!2908567))

(declare-fun m!2908575 () Bool)

(assert (=> b!2572688 m!2908575))

(assert (=> b!2572684 m!2908567))

(assert (=> b!2572684 m!2908567))

(assert (=> b!2572684 m!2908569))

(declare-fun m!2908577 () Bool)

(assert (=> bm!166134 m!2908577))

(declare-fun m!2908579 () Bool)

(assert (=> b!2572685 m!2908579))

(assert (=> b!2572679 m!2908571))

(assert (=> d!727772 m!2908577))

(assert (=> d!727772 m!2908495))

(assert (=> b!2572683 m!2908571))

(assert (=> b!2572485 d!727772))

(declare-fun b!2572734 () Bool)

(declare-fun e!1623549 () Int)

(assert (=> b!2572734 (= e!1623549 0)))

(declare-fun b!2572735 () Bool)

(declare-fun e!1623550 () Int)

(declare-fun call!166156 () Int)

(assert (=> b!2572735 (= e!1623550 (+ 1 call!166156))))

(declare-fun b!2572736 () Bool)

(declare-fun e!1623547 () Int)

(declare-fun e!1623546 () Int)

(assert (=> b!2572736 (= e!1623547 e!1623546)))

(declare-fun c!414164 () Bool)

(assert (=> b!2572736 (= c!414164 ((_ is Concat!12337) (regOne!15794 r!27340)))))

(declare-fun b!2572737 () Bool)

(declare-fun call!166154 () Int)

(declare-fun call!166155 () Int)

(assert (=> b!2572737 (= e!1623546 (+ 1 call!166154 call!166155))))

(declare-fun b!2572738 () Bool)

(declare-fun c!414167 () Bool)

(assert (=> b!2572738 (= c!414167 ((_ is EmptyExpr!7641) (regOne!15794 r!27340)))))

(assert (=> b!2572738 (= e!1623546 e!1623549)))

(declare-fun b!2572739 () Bool)

(declare-fun e!1623548 () Int)

(assert (=> b!2572739 (= e!1623548 0)))

(declare-fun b!2572740 () Bool)

(declare-fun c!414166 () Bool)

(assert (=> b!2572740 (= c!414166 ((_ is EmptyLang!7641) (regOne!15794 r!27340)))))

(assert (=> b!2572740 (= e!1623550 e!1623548)))

(declare-fun bm!166149 () Bool)

(declare-fun c!414163 () Bool)

(assert (=> bm!166149 (= call!166155 (RegexPrimitiveSize!124 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(declare-fun d!727788 () Bool)

(declare-fun lt!906217 () Int)

(assert (=> d!727788 (>= lt!906217 0)))

(assert (=> d!727788 (= lt!906217 e!1623547)))

(declare-fun c!414165 () Bool)

(assert (=> d!727788 (= c!414165 ((_ is ElementMatch!7641) (regOne!15794 r!27340)))))

(assert (=> d!727788 (= (RegexPrimitiveSize!124 (regOne!15794 r!27340)) lt!906217)))

(declare-fun bm!166150 () Bool)

(assert (=> bm!166150 (= call!166154 (RegexPrimitiveSize!124 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(declare-fun b!2572741 () Bool)

(assert (=> b!2572741 (= e!1623548 (+ 1 call!166156 call!166154))))

(declare-fun b!2572742 () Bool)

(assert (=> b!2572742 (= e!1623547 1)))

(declare-fun bm!166151 () Bool)

(assert (=> bm!166151 (= call!166156 call!166155)))

(declare-fun b!2572743 () Bool)

(assert (=> b!2572743 (= e!1623549 e!1623550)))

(assert (=> b!2572743 (= c!414163 ((_ is Star!7641) (regOne!15794 r!27340)))))

(assert (= (and d!727788 c!414165) b!2572742))

(assert (= (and d!727788 (not c!414165)) b!2572736))

(assert (= (and b!2572736 c!414164) b!2572737))

(assert (= (and b!2572736 (not c!414164)) b!2572738))

(assert (= (and b!2572738 c!414167) b!2572734))

(assert (= (and b!2572738 (not c!414167)) b!2572743))

(assert (= (and b!2572743 c!414163) b!2572735))

(assert (= (and b!2572743 (not c!414163)) b!2572740))

(assert (= (and b!2572740 c!414166) b!2572739))

(assert (= (and b!2572740 (not c!414166)) b!2572741))

(assert (= (or b!2572735 b!2572741) bm!166151))

(assert (= (or b!2572737 bm!166151) bm!166149))

(assert (= (or b!2572737 b!2572741) bm!166150))

(declare-fun m!2908581 () Bool)

(assert (=> bm!166149 m!2908581))

(declare-fun m!2908583 () Bool)

(assert (=> bm!166150 m!2908583))

(assert (=> b!2572475 d!727788))

(declare-fun b!2572744 () Bool)

(declare-fun e!1623554 () Int)

(assert (=> b!2572744 (= e!1623554 0)))

(declare-fun b!2572745 () Bool)

(declare-fun e!1623555 () Int)

(declare-fun call!166159 () Int)

(assert (=> b!2572745 (= e!1623555 (+ 1 call!166159))))

(declare-fun b!2572746 () Bool)

(declare-fun e!1623552 () Int)

(declare-fun e!1623551 () Int)

(assert (=> b!2572746 (= e!1623552 e!1623551)))

(declare-fun c!414169 () Bool)

(assert (=> b!2572746 (= c!414169 ((_ is Concat!12337) r!27340))))

(declare-fun b!2572747 () Bool)

(declare-fun call!166157 () Int)

(declare-fun call!166158 () Int)

(assert (=> b!2572747 (= e!1623551 (+ 1 call!166157 call!166158))))

(declare-fun b!2572748 () Bool)

(declare-fun c!414172 () Bool)

(assert (=> b!2572748 (= c!414172 ((_ is EmptyExpr!7641) r!27340))))

(assert (=> b!2572748 (= e!1623551 e!1623554)))

(declare-fun b!2572749 () Bool)

(declare-fun e!1623553 () Int)

(assert (=> b!2572749 (= e!1623553 0)))

(declare-fun b!2572750 () Bool)

(declare-fun c!414171 () Bool)

(assert (=> b!2572750 (= c!414171 ((_ is EmptyLang!7641) r!27340))))

(assert (=> b!2572750 (= e!1623555 e!1623553)))

(declare-fun bm!166152 () Bool)

(declare-fun c!414168 () Bool)

(assert (=> bm!166152 (= call!166158 (RegexPrimitiveSize!124 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(declare-fun d!727790 () Bool)

(declare-fun lt!906218 () Int)

(assert (=> d!727790 (>= lt!906218 0)))

(assert (=> d!727790 (= lt!906218 e!1623552)))

(declare-fun c!414170 () Bool)

(assert (=> d!727790 (= c!414170 ((_ is ElementMatch!7641) r!27340))))

(assert (=> d!727790 (= (RegexPrimitiveSize!124 r!27340) lt!906218)))

(declare-fun bm!166153 () Bool)

(assert (=> bm!166153 (= call!166157 (RegexPrimitiveSize!124 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(declare-fun b!2572751 () Bool)

(assert (=> b!2572751 (= e!1623553 (+ 1 call!166159 call!166157))))

(declare-fun b!2572752 () Bool)

(assert (=> b!2572752 (= e!1623552 1)))

(declare-fun bm!166154 () Bool)

(assert (=> bm!166154 (= call!166159 call!166158)))

(declare-fun b!2572753 () Bool)

(assert (=> b!2572753 (= e!1623554 e!1623555)))

(assert (=> b!2572753 (= c!414168 ((_ is Star!7641) r!27340))))

(assert (= (and d!727790 c!414170) b!2572752))

(assert (= (and d!727790 (not c!414170)) b!2572746))

(assert (= (and b!2572746 c!414169) b!2572747))

(assert (= (and b!2572746 (not c!414169)) b!2572748))

(assert (= (and b!2572748 c!414172) b!2572744))

(assert (= (and b!2572748 (not c!414172)) b!2572753))

(assert (= (and b!2572753 c!414168) b!2572745))

(assert (= (and b!2572753 (not c!414168)) b!2572750))

(assert (= (and b!2572750 c!414171) b!2572749))

(assert (= (and b!2572750 (not c!414171)) b!2572751))

(assert (= (or b!2572745 b!2572751) bm!166154))

(assert (= (or b!2572747 bm!166154) bm!166152))

(assert (= (or b!2572747 b!2572751) bm!166153))

(declare-fun m!2908585 () Bool)

(assert (=> bm!166152 m!2908585))

(declare-fun m!2908587 () Bool)

(assert (=> bm!166153 m!2908587))

(assert (=> b!2572475 d!727790))

(declare-fun d!727792 () Bool)

(declare-fun nullableFct!783 (Regex!7641) Bool)

(assert (=> d!727792 (= (nullable!2558 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)) (nullableFct!783 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))

(declare-fun bs!470071 () Bool)

(assert (= bs!470071 d!727792))

(assert (=> bs!470071 m!2908407))

(declare-fun m!2908599 () Bool)

(assert (=> bs!470071 m!2908599))

(assert (=> b!2572477 d!727792))

(declare-fun d!727796 () Bool)

(declare-fun lt!906226 () Regex!7641)

(assert (=> d!727796 (validRegex!3267 lt!906226)))

(declare-fun e!1623570 () Regex!7641)

(assert (=> d!727796 (= lt!906226 e!1623570)))

(declare-fun c!414183 () Bool)

(assert (=> d!727796 (= c!414183 ((_ is Cons!29606) tl!4068))))

(assert (=> d!727796 (validRegex!3267 (derivativeStep!2210 r!27340 c!14016))))

(assert (=> d!727796 (= (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068) lt!906226)))

(declare-fun b!2572782 () Bool)

(assert (=> b!2572782 (= e!1623570 (derivative!336 (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)) (t!211405 tl!4068)))))

(declare-fun b!2572783 () Bool)

(assert (=> b!2572783 (= e!1623570 (derivativeStep!2210 r!27340 c!14016))))

(assert (= (and d!727796 c!414183) b!2572782))

(assert (= (and d!727796 (not c!414183)) b!2572783))

(declare-fun m!2908613 () Bool)

(assert (=> d!727796 m!2908613))

(assert (=> d!727796 m!2908405))

(declare-fun m!2908615 () Bool)

(assert (=> d!727796 m!2908615))

(assert (=> b!2572782 m!2908405))

(declare-fun m!2908617 () Bool)

(assert (=> b!2572782 m!2908617))

(assert (=> b!2572782 m!2908617))

(declare-fun m!2908619 () Bool)

(assert (=> b!2572782 m!2908619))

(assert (=> b!2572477 d!727796))

(declare-fun d!727802 () Bool)

(declare-fun lt!906245 () Regex!7641)

(assert (=> d!727802 (validRegex!3267 lt!906245)))

(declare-fun e!1623622 () Regex!7641)

(assert (=> d!727802 (= lt!906245 e!1623622)))

(declare-fun c!414214 () Bool)

(assert (=> d!727802 (= c!414214 (or ((_ is EmptyExpr!7641) r!27340) ((_ is EmptyLang!7641) r!27340)))))

(assert (=> d!727802 (validRegex!3267 r!27340)))

(assert (=> d!727802 (= (derivativeStep!2210 r!27340 c!14016) lt!906245)))

(declare-fun b!2572875 () Bool)

(declare-fun e!1623619 () Regex!7641)

(declare-fun call!166178 () Regex!7641)

(assert (=> b!2572875 (= e!1623619 (Union!7641 (Concat!12337 call!166178 (regTwo!15794 r!27340)) EmptyLang!7641))))

(declare-fun bm!166170 () Bool)

(declare-fun call!166177 () Regex!7641)

(declare-fun c!414215 () Bool)

(declare-fun c!414213 () Bool)

(assert (=> bm!166170 (= call!166177 (derivativeStep!2210 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))) c!14016))))

(declare-fun bm!166171 () Bool)

(declare-fun call!166175 () Regex!7641)

(assert (=> bm!166171 (= call!166178 call!166175)))

(declare-fun bm!166172 () Bool)

(declare-fun call!166176 () Regex!7641)

(assert (=> bm!166172 (= call!166176 (derivativeStep!2210 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)) c!14016))))

(declare-fun b!2572876 () Bool)

(declare-fun e!1623620 () Regex!7641)

(assert (=> b!2572876 (= e!1623620 (ite (= c!14016 (c!414083 r!27340)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2572877 () Bool)

(assert (=> b!2572877 (= e!1623622 e!1623620)))

(declare-fun c!414212 () Bool)

(assert (=> b!2572877 (= c!414212 ((_ is ElementMatch!7641) r!27340))))

(declare-fun b!2572878 () Bool)

(assert (=> b!2572878 (= c!414213 ((_ is Union!7641) r!27340))))

(declare-fun e!1623618 () Regex!7641)

(assert (=> b!2572878 (= e!1623620 e!1623618)))

(declare-fun bm!166173 () Bool)

(assert (=> bm!166173 (= call!166175 call!166177)))

(declare-fun b!2572879 () Bool)

(declare-fun c!414211 () Bool)

(assert (=> b!2572879 (= c!414211 (nullable!2558 (regOne!15794 r!27340)))))

(declare-fun e!1623621 () Regex!7641)

(assert (=> b!2572879 (= e!1623621 e!1623619)))

(declare-fun b!2572880 () Bool)

(assert (=> b!2572880 (= e!1623621 (Concat!12337 call!166175 r!27340))))

(declare-fun b!2572881 () Bool)

(assert (=> b!2572881 (= e!1623618 (Union!7641 call!166177 call!166176))))

(declare-fun b!2572882 () Bool)

(assert (=> b!2572882 (= e!1623619 (Union!7641 (Concat!12337 call!166178 (regTwo!15794 r!27340)) call!166176))))

(declare-fun b!2572883 () Bool)

(assert (=> b!2572883 (= e!1623618 e!1623621)))

(assert (=> b!2572883 (= c!414215 ((_ is Star!7641) r!27340))))

(declare-fun b!2572884 () Bool)

(assert (=> b!2572884 (= e!1623622 EmptyLang!7641)))

(assert (= (and d!727802 c!414214) b!2572884))

(assert (= (and d!727802 (not c!414214)) b!2572877))

(assert (= (and b!2572877 c!414212) b!2572876))

(assert (= (and b!2572877 (not c!414212)) b!2572878))

(assert (= (and b!2572878 c!414213) b!2572881))

(assert (= (and b!2572878 (not c!414213)) b!2572883))

(assert (= (and b!2572883 c!414215) b!2572880))

(assert (= (and b!2572883 (not c!414215)) b!2572879))

(assert (= (and b!2572879 c!414211) b!2572882))

(assert (= (and b!2572879 (not c!414211)) b!2572875))

(assert (= (or b!2572882 b!2572875) bm!166171))

(assert (= (or b!2572880 bm!166171) bm!166173))

(assert (= (or b!2572881 b!2572882) bm!166172))

(assert (= (or b!2572881 bm!166173) bm!166170))

(declare-fun m!2908697 () Bool)

(assert (=> d!727802 m!2908697))

(assert (=> d!727802 m!2908413))

(declare-fun m!2908699 () Bool)

(assert (=> bm!166170 m!2908699))

(declare-fun m!2908701 () Bool)

(assert (=> bm!166172 m!2908701))

(assert (=> b!2572879 m!2908433))

(assert (=> b!2572477 d!727802))

(declare-fun b!2572885 () Bool)

(declare-fun res!1082344 () Bool)

(declare-fun e!1623625 () Bool)

(assert (=> b!2572885 (=> (not res!1082344) (not e!1623625))))

(assert (=> b!2572885 (= res!1082344 (isEmpty!17069 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun b!2572886 () Bool)

(declare-fun e!1623623 () Bool)

(assert (=> b!2572886 (= e!1623623 (not (= (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))) (c!414083 (regOne!15794 r!27340)))))))

(declare-fun b!2572887 () Bool)

(declare-fun res!1082342 () Bool)

(declare-fun e!1623624 () Bool)

(assert (=> b!2572887 (=> res!1082342 e!1623624)))

(assert (=> b!2572887 (= res!1082342 e!1623625)))

(declare-fun res!1082346 () Bool)

(assert (=> b!2572887 (=> (not res!1082346) (not e!1623625))))

(declare-fun lt!906246 () Bool)

(assert (=> b!2572887 (= res!1082346 lt!906246)))

(declare-fun b!2572888 () Bool)

(declare-fun e!1623628 () Bool)

(assert (=> b!2572888 (= e!1623628 (not lt!906246))))

(declare-fun d!727820 () Bool)

(declare-fun e!1623629 () Bool)

(assert (=> d!727820 e!1623629))

(declare-fun c!414216 () Bool)

(assert (=> d!727820 (= c!414216 ((_ is EmptyExpr!7641) (regOne!15794 r!27340)))))

(declare-fun e!1623627 () Bool)

(assert (=> d!727820 (= lt!906246 e!1623627)))

(declare-fun c!414218 () Bool)

(assert (=> d!727820 (= c!414218 (isEmpty!17069 (Cons!29606 c!14016 (_1!17344 lt!906169))))))

(assert (=> d!727820 (validRegex!3267 (regOne!15794 r!27340))))

(assert (=> d!727820 (= (matchR!3584 (regOne!15794 r!27340) (Cons!29606 c!14016 (_1!17344 lt!906169))) lt!906246)))

(declare-fun b!2572889 () Bool)

(declare-fun res!1082343 () Bool)

(assert (=> b!2572889 (=> res!1082343 e!1623624)))

(assert (=> b!2572889 (= res!1082343 (not ((_ is ElementMatch!7641) (regOne!15794 r!27340))))))

(assert (=> b!2572889 (= e!1623628 e!1623624)))

(declare-fun b!2572890 () Bool)

(assert (=> b!2572890 (= e!1623625 (= (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))) (c!414083 (regOne!15794 r!27340))))))

(declare-fun b!2572891 () Bool)

(declare-fun res!1082341 () Bool)

(assert (=> b!2572891 (=> res!1082341 e!1623623)))

(assert (=> b!2572891 (= res!1082341 (not (isEmpty!17069 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun b!2572892 () Bool)

(assert (=> b!2572892 (= e!1623627 (nullable!2558 (regOne!15794 r!27340)))))

(declare-fun b!2572893 () Bool)

(declare-fun call!166179 () Bool)

(assert (=> b!2572893 (= e!1623629 (= lt!906246 call!166179))))

(declare-fun bm!166174 () Bool)

(assert (=> bm!166174 (= call!166179 (isEmpty!17069 (Cons!29606 c!14016 (_1!17344 lt!906169))))))

(declare-fun b!2572894 () Bool)

(declare-fun res!1082348 () Bool)

(assert (=> b!2572894 (=> (not res!1082348) (not e!1623625))))

(assert (=> b!2572894 (= res!1082348 (not call!166179))))

(declare-fun b!2572895 () Bool)

(assert (=> b!2572895 (= e!1623627 (matchR!3584 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))) (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun b!2572896 () Bool)

(assert (=> b!2572896 (= e!1623629 e!1623628)))

(declare-fun c!414217 () Bool)

(assert (=> b!2572896 (= c!414217 ((_ is EmptyLang!7641) (regOne!15794 r!27340)))))

(declare-fun b!2572897 () Bool)

(declare-fun e!1623626 () Bool)

(assert (=> b!2572897 (= e!1623624 e!1623626)))

(declare-fun res!1082345 () Bool)

(assert (=> b!2572897 (=> (not res!1082345) (not e!1623626))))

(assert (=> b!2572897 (= res!1082345 (not lt!906246))))

(declare-fun b!2572898 () Bool)

(assert (=> b!2572898 (= e!1623626 e!1623623)))

(declare-fun res!1082347 () Bool)

(assert (=> b!2572898 (=> res!1082347 e!1623623)))

(assert (=> b!2572898 (= res!1082347 call!166179)))

(assert (= (and d!727820 c!414218) b!2572892))

(assert (= (and d!727820 (not c!414218)) b!2572895))

(assert (= (and d!727820 c!414216) b!2572893))

(assert (= (and d!727820 (not c!414216)) b!2572896))

(assert (= (and b!2572896 c!414217) b!2572888))

(assert (= (and b!2572896 (not c!414217)) b!2572889))

(assert (= (and b!2572889 (not res!1082343)) b!2572887))

(assert (= (and b!2572887 res!1082346) b!2572894))

(assert (= (and b!2572894 res!1082348) b!2572885))

(assert (= (and b!2572885 res!1082344) b!2572890))

(assert (= (and b!2572887 (not res!1082342)) b!2572897))

(assert (= (and b!2572897 res!1082345) b!2572898))

(assert (= (and b!2572898 (not res!1082347)) b!2572891))

(assert (= (and b!2572891 (not res!1082341)) b!2572886))

(assert (= (or b!2572893 b!2572894 b!2572898) bm!166174))

(declare-fun m!2908707 () Bool)

(assert (=> b!2572885 m!2908707))

(assert (=> b!2572885 m!2908707))

(declare-fun m!2908709 () Bool)

(assert (=> b!2572885 m!2908709))

(declare-fun m!2908711 () Bool)

(assert (=> b!2572895 m!2908711))

(assert (=> b!2572895 m!2908711))

(declare-fun m!2908713 () Bool)

(assert (=> b!2572895 m!2908713))

(assert (=> b!2572895 m!2908707))

(assert (=> b!2572895 m!2908713))

(assert (=> b!2572895 m!2908707))

(declare-fun m!2908715 () Bool)

(assert (=> b!2572895 m!2908715))

(assert (=> b!2572891 m!2908707))

(assert (=> b!2572891 m!2908707))

(assert (=> b!2572891 m!2908709))

(declare-fun m!2908717 () Bool)

(assert (=> bm!166174 m!2908717))

(assert (=> b!2572892 m!2908433))

(assert (=> b!2572886 m!2908711))

(assert (=> d!727820 m!2908717))

(assert (=> d!727820 m!2908419))

(assert (=> b!2572890 m!2908711))

(assert (=> b!2572478 d!727820))

(declare-fun b!2572899 () Bool)

(declare-fun res!1082352 () Bool)

(declare-fun e!1623632 () Bool)

(assert (=> b!2572899 (=> (not res!1082352) (not e!1623632))))

(assert (=> b!2572899 (= res!1082352 (isEmpty!17069 (tail!4121 Nil!29606)))))

(declare-fun b!2572900 () Bool)

(declare-fun e!1623630 () Bool)

(assert (=> b!2572900 (= e!1623630 (not (= (head!5846 Nil!29606) (c!414083 (derivative!336 lt!906180 tl!4068)))))))

(declare-fun b!2572901 () Bool)

(declare-fun res!1082350 () Bool)

(declare-fun e!1623631 () Bool)

(assert (=> b!2572901 (=> res!1082350 e!1623631)))

(assert (=> b!2572901 (= res!1082350 e!1623632)))

(declare-fun res!1082354 () Bool)

(assert (=> b!2572901 (=> (not res!1082354) (not e!1623632))))

(declare-fun lt!906251 () Bool)

(assert (=> b!2572901 (= res!1082354 lt!906251)))

(declare-fun b!2572902 () Bool)

(declare-fun e!1623635 () Bool)

(assert (=> b!2572902 (= e!1623635 (not lt!906251))))

(declare-fun d!727826 () Bool)

(declare-fun e!1623636 () Bool)

(assert (=> d!727826 e!1623636))

(declare-fun c!414219 () Bool)

(assert (=> d!727826 (= c!414219 ((_ is EmptyExpr!7641) (derivative!336 lt!906180 tl!4068)))))

(declare-fun e!1623634 () Bool)

(assert (=> d!727826 (= lt!906251 e!1623634)))

(declare-fun c!414221 () Bool)

(assert (=> d!727826 (= c!414221 (isEmpty!17069 Nil!29606))))

(assert (=> d!727826 (validRegex!3267 (derivative!336 lt!906180 tl!4068))))

(assert (=> d!727826 (= (matchR!3584 (derivative!336 lt!906180 tl!4068) Nil!29606) lt!906251)))

(declare-fun b!2572903 () Bool)

(declare-fun res!1082351 () Bool)

(assert (=> b!2572903 (=> res!1082351 e!1623631)))

(assert (=> b!2572903 (= res!1082351 (not ((_ is ElementMatch!7641) (derivative!336 lt!906180 tl!4068))))))

(assert (=> b!2572903 (= e!1623635 e!1623631)))

(declare-fun b!2572904 () Bool)

(assert (=> b!2572904 (= e!1623632 (= (head!5846 Nil!29606) (c!414083 (derivative!336 lt!906180 tl!4068))))))

(declare-fun b!2572905 () Bool)

(declare-fun res!1082349 () Bool)

(assert (=> b!2572905 (=> res!1082349 e!1623630)))

(assert (=> b!2572905 (= res!1082349 (not (isEmpty!17069 (tail!4121 Nil!29606))))))

(declare-fun b!2572906 () Bool)

(assert (=> b!2572906 (= e!1623634 (nullable!2558 (derivative!336 lt!906180 tl!4068)))))

(declare-fun b!2572907 () Bool)

(declare-fun call!166180 () Bool)

(assert (=> b!2572907 (= e!1623636 (= lt!906251 call!166180))))

(declare-fun bm!166175 () Bool)

(assert (=> bm!166175 (= call!166180 (isEmpty!17069 Nil!29606))))

(declare-fun b!2572908 () Bool)

(declare-fun res!1082356 () Bool)

(assert (=> b!2572908 (=> (not res!1082356) (not e!1623632))))

(assert (=> b!2572908 (= res!1082356 (not call!166180))))

(declare-fun b!2572909 () Bool)

(assert (=> b!2572909 (= e!1623634 (matchR!3584 (derivativeStep!2210 (derivative!336 lt!906180 tl!4068) (head!5846 Nil!29606)) (tail!4121 Nil!29606)))))

(declare-fun b!2572910 () Bool)

(assert (=> b!2572910 (= e!1623636 e!1623635)))

(declare-fun c!414220 () Bool)

(assert (=> b!2572910 (= c!414220 ((_ is EmptyLang!7641) (derivative!336 lt!906180 tl!4068)))))

(declare-fun b!2572911 () Bool)

(declare-fun e!1623633 () Bool)

(assert (=> b!2572911 (= e!1623631 e!1623633)))

(declare-fun res!1082353 () Bool)

(assert (=> b!2572911 (=> (not res!1082353) (not e!1623633))))

(assert (=> b!2572911 (= res!1082353 (not lt!906251))))

(declare-fun b!2572912 () Bool)

(assert (=> b!2572912 (= e!1623633 e!1623630)))

(declare-fun res!1082355 () Bool)

(assert (=> b!2572912 (=> res!1082355 e!1623630)))

(assert (=> b!2572912 (= res!1082355 call!166180)))

(assert (= (and d!727826 c!414221) b!2572906))

(assert (= (and d!727826 (not c!414221)) b!2572909))

(assert (= (and d!727826 c!414219) b!2572907))

(assert (= (and d!727826 (not c!414219)) b!2572910))

(assert (= (and b!2572910 c!414220) b!2572902))

(assert (= (and b!2572910 (not c!414220)) b!2572903))

(assert (= (and b!2572903 (not res!1082351)) b!2572901))

(assert (= (and b!2572901 res!1082354) b!2572908))

(assert (= (and b!2572908 res!1082356) b!2572899))

(assert (= (and b!2572899 res!1082352) b!2572904))

(assert (= (and b!2572901 (not res!1082350)) b!2572911))

(assert (= (and b!2572911 res!1082353) b!2572912))

(assert (= (and b!2572912 (not res!1082355)) b!2572905))

(assert (= (and b!2572905 (not res!1082349)) b!2572900))

(assert (= (or b!2572907 b!2572908 b!2572912) bm!166175))

(declare-fun m!2908719 () Bool)

(assert (=> b!2572899 m!2908719))

(assert (=> b!2572899 m!2908719))

(declare-fun m!2908721 () Bool)

(assert (=> b!2572899 m!2908721))

(declare-fun m!2908723 () Bool)

(assert (=> b!2572909 m!2908723))

(assert (=> b!2572909 m!2908447))

(assert (=> b!2572909 m!2908723))

(declare-fun m!2908725 () Bool)

(assert (=> b!2572909 m!2908725))

(assert (=> b!2572909 m!2908719))

(assert (=> b!2572909 m!2908725))

(assert (=> b!2572909 m!2908719))

(declare-fun m!2908727 () Bool)

(assert (=> b!2572909 m!2908727))

(assert (=> b!2572905 m!2908719))

(assert (=> b!2572905 m!2908719))

(assert (=> b!2572905 m!2908721))

(declare-fun m!2908729 () Bool)

(assert (=> bm!166175 m!2908729))

(assert (=> b!2572906 m!2908447))

(declare-fun m!2908731 () Bool)

(assert (=> b!2572906 m!2908731))

(assert (=> b!2572900 m!2908723))

(assert (=> d!727826 m!2908729))

(assert (=> d!727826 m!2908447))

(declare-fun m!2908733 () Bool)

(assert (=> d!727826 m!2908733))

(assert (=> b!2572904 m!2908723))

(assert (=> b!2572470 d!727826))

(declare-fun d!727828 () Bool)

(declare-fun lt!906254 () Regex!7641)

(assert (=> d!727828 (validRegex!3267 lt!906254)))

(declare-fun e!1623645 () Regex!7641)

(assert (=> d!727828 (= lt!906254 e!1623645)))

(declare-fun c!414225 () Bool)

(assert (=> d!727828 (= c!414225 (or ((_ is EmptyExpr!7641) (regOne!15794 r!27340)) ((_ is EmptyLang!7641) (regOne!15794 r!27340))))))

(assert (=> d!727828 (validRegex!3267 (regOne!15794 r!27340))))

(assert (=> d!727828 (= (derivativeStep!2210 (regOne!15794 r!27340) c!14016) lt!906254)))

(declare-fun b!2572917 () Bool)

(declare-fun e!1623642 () Regex!7641)

(declare-fun call!166184 () Regex!7641)

(assert (=> b!2572917 (= e!1623642 (Union!7641 (Concat!12337 call!166184 (regTwo!15794 (regOne!15794 r!27340))) EmptyLang!7641))))

(declare-fun call!166183 () Regex!7641)

(declare-fun c!414226 () Bool)

(declare-fun bm!166176 () Bool)

(declare-fun c!414224 () Bool)

(assert (=> bm!166176 (= call!166183 (derivativeStep!2210 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))) c!14016))))

(declare-fun bm!166177 () Bool)

(declare-fun call!166181 () Regex!7641)

(assert (=> bm!166177 (= call!166184 call!166181)))

(declare-fun call!166182 () Regex!7641)

(declare-fun bm!166178 () Bool)

(assert (=> bm!166178 (= call!166182 (derivativeStep!2210 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))) c!14016))))

(declare-fun b!2572918 () Bool)

(declare-fun e!1623643 () Regex!7641)

(assert (=> b!2572918 (= e!1623643 (ite (= c!14016 (c!414083 (regOne!15794 r!27340))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2572919 () Bool)

(assert (=> b!2572919 (= e!1623645 e!1623643)))

(declare-fun c!414223 () Bool)

(assert (=> b!2572919 (= c!414223 ((_ is ElementMatch!7641) (regOne!15794 r!27340)))))

(declare-fun b!2572920 () Bool)

(assert (=> b!2572920 (= c!414224 ((_ is Union!7641) (regOne!15794 r!27340)))))

(declare-fun e!1623641 () Regex!7641)

(assert (=> b!2572920 (= e!1623643 e!1623641)))

(declare-fun bm!166179 () Bool)

(assert (=> bm!166179 (= call!166181 call!166183)))

(declare-fun b!2572921 () Bool)

(declare-fun c!414222 () Bool)

(assert (=> b!2572921 (= c!414222 (nullable!2558 (regOne!15794 (regOne!15794 r!27340))))))

(declare-fun e!1623644 () Regex!7641)

(assert (=> b!2572921 (= e!1623644 e!1623642)))

(declare-fun b!2572922 () Bool)

(assert (=> b!2572922 (= e!1623644 (Concat!12337 call!166181 (regOne!15794 r!27340)))))

(declare-fun b!2572923 () Bool)

(assert (=> b!2572923 (= e!1623641 (Union!7641 call!166183 call!166182))))

(declare-fun b!2572924 () Bool)

(assert (=> b!2572924 (= e!1623642 (Union!7641 (Concat!12337 call!166184 (regTwo!15794 (regOne!15794 r!27340))) call!166182))))

(declare-fun b!2572925 () Bool)

(assert (=> b!2572925 (= e!1623641 e!1623644)))

(assert (=> b!2572925 (= c!414226 ((_ is Star!7641) (regOne!15794 r!27340)))))

(declare-fun b!2572926 () Bool)

(assert (=> b!2572926 (= e!1623645 EmptyLang!7641)))

(assert (= (and d!727828 c!414225) b!2572926))

(assert (= (and d!727828 (not c!414225)) b!2572919))

(assert (= (and b!2572919 c!414223) b!2572918))

(assert (= (and b!2572919 (not c!414223)) b!2572920))

(assert (= (and b!2572920 c!414224) b!2572923))

(assert (= (and b!2572920 (not c!414224)) b!2572925))

(assert (= (and b!2572925 c!414226) b!2572922))

(assert (= (and b!2572925 (not c!414226)) b!2572921))

(assert (= (and b!2572921 c!414222) b!2572924))

(assert (= (and b!2572921 (not c!414222)) b!2572917))

(assert (= (or b!2572924 b!2572917) bm!166177))

(assert (= (or b!2572922 bm!166177) bm!166179))

(assert (= (or b!2572923 b!2572924) bm!166178))

(assert (= (or b!2572923 bm!166179) bm!166176))

(declare-fun m!2908737 () Bool)

(assert (=> d!727828 m!2908737))

(assert (=> d!727828 m!2908419))

(declare-fun m!2908739 () Bool)

(assert (=> bm!166176 m!2908739))

(declare-fun m!2908741 () Bool)

(assert (=> bm!166178 m!2908741))

(declare-fun m!2908743 () Bool)

(assert (=> b!2572921 m!2908743))

(assert (=> b!2572470 d!727828))

(declare-fun d!727832 () Bool)

(declare-fun lt!906257 () Regex!7641)

(assert (=> d!727832 (validRegex!3267 lt!906257)))

(declare-fun e!1623655 () Regex!7641)

(assert (=> d!727832 (= lt!906257 e!1623655)))

(declare-fun c!414230 () Bool)

(assert (=> d!727832 (= c!414230 ((_ is Cons!29606) tl!4068))))

(assert (=> d!727832 (validRegex!3267 EmptyLang!7641)))

(assert (=> d!727832 (= (derivative!336 EmptyLang!7641 tl!4068) lt!906257)))

(declare-fun b!2572943 () Bool)

(assert (=> b!2572943 (= e!1623655 (derivative!336 (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)) (t!211405 tl!4068)))))

(declare-fun b!2572944 () Bool)

(assert (=> b!2572944 (= e!1623655 EmptyLang!7641)))

(assert (= (and d!727832 c!414230) b!2572943))

(assert (= (and d!727832 (not c!414230)) b!2572944))

(declare-fun m!2908753 () Bool)

(assert (=> d!727832 m!2908753))

(declare-fun m!2908755 () Bool)

(assert (=> d!727832 m!2908755))

(declare-fun m!2908757 () Bool)

(assert (=> b!2572943 m!2908757))

(assert (=> b!2572943 m!2908757))

(declare-fun m!2908759 () Bool)

(assert (=> b!2572943 m!2908759))

(assert (=> b!2572470 d!727832))

(declare-fun d!727836 () Bool)

(assert (=> d!727836 (= (matchR!3584 lt!906180 tl!4068) (matchR!3584 (derivative!336 lt!906180 tl!4068) Nil!29606))))

(declare-fun lt!906264 () Unit!43463)

(declare-fun choose!15175 (Regex!7641 List!29706) Unit!43463)

(assert (=> d!727836 (= lt!906264 (choose!15175 lt!906180 tl!4068))))

(assert (=> d!727836 (validRegex!3267 lt!906180)))

(assert (=> d!727836 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!230 lt!906180 tl!4068) lt!906264)))

(declare-fun bs!470077 () Bool)

(assert (= bs!470077 d!727836))

(assert (=> bs!470077 m!2908447))

(assert (=> bs!470077 m!2908449))

(declare-fun m!2908807 () Bool)

(assert (=> bs!470077 m!2908807))

(assert (=> bs!470077 m!2908447))

(declare-fun m!2908809 () Bool)

(assert (=> bs!470077 m!2908809))

(assert (=> bs!470077 m!2908451))

(assert (=> b!2572470 d!727836))

(declare-fun b!2573028 () Bool)

(declare-fun res!1082398 () Bool)

(declare-fun e!1623693 () Bool)

(assert (=> b!2573028 (=> (not res!1082398) (not e!1623693))))

(assert (=> b!2573028 (= res!1082398 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2573029 () Bool)

(declare-fun e!1623691 () Bool)

(assert (=> b!2573029 (= e!1623691 (not (= (head!5846 tl!4068) (c!414083 lt!906175))))))

(declare-fun b!2573030 () Bool)

(declare-fun res!1082396 () Bool)

(declare-fun e!1623692 () Bool)

(assert (=> b!2573030 (=> res!1082396 e!1623692)))

(assert (=> b!2573030 (= res!1082396 e!1623693)))

(declare-fun res!1082400 () Bool)

(assert (=> b!2573030 (=> (not res!1082400) (not e!1623693))))

(declare-fun lt!906265 () Bool)

(assert (=> b!2573030 (= res!1082400 lt!906265)))

(declare-fun b!2573031 () Bool)

(declare-fun e!1623696 () Bool)

(assert (=> b!2573031 (= e!1623696 (not lt!906265))))

(declare-fun d!727846 () Bool)

(declare-fun e!1623697 () Bool)

(assert (=> d!727846 e!1623697))

(declare-fun c!414245 () Bool)

(assert (=> d!727846 (= c!414245 ((_ is EmptyExpr!7641) lt!906175))))

(declare-fun e!1623695 () Bool)

(assert (=> d!727846 (= lt!906265 e!1623695)))

(declare-fun c!414247 () Bool)

(assert (=> d!727846 (= c!414247 (isEmpty!17069 tl!4068))))

(assert (=> d!727846 (validRegex!3267 lt!906175)))

(assert (=> d!727846 (= (matchR!3584 lt!906175 tl!4068) lt!906265)))

(declare-fun b!2573032 () Bool)

(declare-fun res!1082397 () Bool)

(assert (=> b!2573032 (=> res!1082397 e!1623692)))

(assert (=> b!2573032 (= res!1082397 (not ((_ is ElementMatch!7641) lt!906175)))))

(assert (=> b!2573032 (= e!1623696 e!1623692)))

(declare-fun b!2573033 () Bool)

(assert (=> b!2573033 (= e!1623693 (= (head!5846 tl!4068) (c!414083 lt!906175)))))

(declare-fun b!2573034 () Bool)

(declare-fun res!1082395 () Bool)

(assert (=> b!2573034 (=> res!1082395 e!1623691)))

(assert (=> b!2573034 (= res!1082395 (not (isEmpty!17069 (tail!4121 tl!4068))))))

(declare-fun b!2573035 () Bool)

(assert (=> b!2573035 (= e!1623695 (nullable!2558 lt!906175))))

(declare-fun b!2573036 () Bool)

(declare-fun call!166193 () Bool)

(assert (=> b!2573036 (= e!1623697 (= lt!906265 call!166193))))

(declare-fun bm!166188 () Bool)

(assert (=> bm!166188 (= call!166193 (isEmpty!17069 tl!4068))))

(declare-fun b!2573037 () Bool)

(declare-fun res!1082402 () Bool)

(assert (=> b!2573037 (=> (not res!1082402) (not e!1623693))))

(assert (=> b!2573037 (= res!1082402 (not call!166193))))

(declare-fun b!2573038 () Bool)

(assert (=> b!2573038 (= e!1623695 (matchR!3584 (derivativeStep!2210 lt!906175 (head!5846 tl!4068)) (tail!4121 tl!4068)))))

(declare-fun b!2573039 () Bool)

(assert (=> b!2573039 (= e!1623697 e!1623696)))

(declare-fun c!414246 () Bool)

(assert (=> b!2573039 (= c!414246 ((_ is EmptyLang!7641) lt!906175))))

(declare-fun b!2573040 () Bool)

(declare-fun e!1623694 () Bool)

(assert (=> b!2573040 (= e!1623692 e!1623694)))

(declare-fun res!1082399 () Bool)

(assert (=> b!2573040 (=> (not res!1082399) (not e!1623694))))

(assert (=> b!2573040 (= res!1082399 (not lt!906265))))

(declare-fun b!2573041 () Bool)

(assert (=> b!2573041 (= e!1623694 e!1623691)))

(declare-fun res!1082401 () Bool)

(assert (=> b!2573041 (=> res!1082401 e!1623691)))

(assert (=> b!2573041 (= res!1082401 call!166193)))

(assert (= (and d!727846 c!414247) b!2573035))

(assert (= (and d!727846 (not c!414247)) b!2573038))

(assert (= (and d!727846 c!414245) b!2573036))

(assert (= (and d!727846 (not c!414245)) b!2573039))

(assert (= (and b!2573039 c!414246) b!2573031))

(assert (= (and b!2573039 (not c!414246)) b!2573032))

(assert (= (and b!2573032 (not res!1082397)) b!2573030))

(assert (= (and b!2573030 res!1082400) b!2573037))

(assert (= (and b!2573037 res!1082402) b!2573028))

(assert (= (and b!2573028 res!1082398) b!2573033))

(assert (= (and b!2573030 (not res!1082396)) b!2573040))

(assert (= (and b!2573040 res!1082399) b!2573041))

(assert (= (and b!2573041 (not res!1082401)) b!2573034))

(assert (= (and b!2573034 (not res!1082395)) b!2573029))

(assert (= (or b!2573036 b!2573037 b!2573041) bm!166188))

(declare-fun m!2908811 () Bool)

(assert (=> b!2573028 m!2908811))

(assert (=> b!2573028 m!2908811))

(declare-fun m!2908813 () Bool)

(assert (=> b!2573028 m!2908813))

(declare-fun m!2908815 () Bool)

(assert (=> b!2573038 m!2908815))

(assert (=> b!2573038 m!2908815))

(declare-fun m!2908817 () Bool)

(assert (=> b!2573038 m!2908817))

(assert (=> b!2573038 m!2908811))

(assert (=> b!2573038 m!2908817))

(assert (=> b!2573038 m!2908811))

(declare-fun m!2908819 () Bool)

(assert (=> b!2573038 m!2908819))

(assert (=> b!2573034 m!2908811))

(assert (=> b!2573034 m!2908811))

(assert (=> b!2573034 m!2908813))

(declare-fun m!2908821 () Bool)

(assert (=> bm!166188 m!2908821))

(declare-fun m!2908823 () Bool)

(assert (=> b!2573035 m!2908823))

(assert (=> b!2573029 m!2908815))

(assert (=> d!727846 m!2908821))

(declare-fun m!2908825 () Bool)

(assert (=> d!727846 m!2908825))

(assert (=> b!2573033 m!2908815))

(assert (=> b!2572470 d!727846))

(declare-fun d!727848 () Bool)

(declare-fun e!1623703 () Bool)

(assert (=> d!727848 e!1623703))

(declare-fun res!1082408 () Bool)

(assert (=> d!727848 (=> res!1082408 e!1623703)))

(assert (=> d!727848 (= res!1082408 (matchR!3584 lt!906175 tl!4068))))

(declare-fun lt!906268 () Unit!43463)

(declare-fun choose!15176 (Regex!7641 Regex!7641 List!29706) Unit!43463)

(assert (=> d!727848 (= lt!906268 (choose!15176 lt!906175 EmptyLang!7641 tl!4068))))

(declare-fun e!1623704 () Bool)

(assert (=> d!727848 e!1623704))

(declare-fun res!1082407 () Bool)

(assert (=> d!727848 (=> (not res!1082407) (not e!1623704))))

(assert (=> d!727848 (= res!1082407 (validRegex!3267 lt!906175))))

(assert (=> d!727848 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!230 lt!906175 EmptyLang!7641 tl!4068) lt!906268)))

(declare-fun b!2573050 () Bool)

(assert (=> b!2573050 (= e!1623704 (validRegex!3267 EmptyLang!7641))))

(declare-fun b!2573051 () Bool)

(assert (=> b!2573051 (= e!1623703 (matchR!3584 EmptyLang!7641 tl!4068))))

(assert (= (and d!727848 res!1082407) b!2573050))

(assert (= (and d!727848 (not res!1082408)) b!2573051))

(assert (=> d!727848 m!2908461))

(declare-fun m!2908827 () Bool)

(assert (=> d!727848 m!2908827))

(assert (=> d!727848 m!2908825))

(assert (=> b!2573050 m!2908755))

(assert (=> b!2573051 m!2908411))

(assert (=> b!2572470 d!727848))

(declare-fun d!727850 () Bool)

(declare-fun lt!906269 () Regex!7641)

(assert (=> d!727850 (validRegex!3267 lt!906269)))

(declare-fun e!1623705 () Regex!7641)

(assert (=> d!727850 (= lt!906269 e!1623705)))

(declare-fun c!414248 () Bool)

(assert (=> d!727850 (= c!414248 ((_ is Cons!29606) tl!4068))))

(assert (=> d!727850 (validRegex!3267 lt!906180)))

(assert (=> d!727850 (= (derivative!336 lt!906180 tl!4068) lt!906269)))

(declare-fun b!2573052 () Bool)

(assert (=> b!2573052 (= e!1623705 (derivative!336 (derivativeStep!2210 lt!906180 (h!35026 tl!4068)) (t!211405 tl!4068)))))

(declare-fun b!2573053 () Bool)

(assert (=> b!2573053 (= e!1623705 lt!906180)))

(assert (= (and d!727850 c!414248) b!2573052))

(assert (= (and d!727850 (not c!414248)) b!2573053))

(declare-fun m!2908829 () Bool)

(assert (=> d!727850 m!2908829))

(assert (=> d!727850 m!2908807))

(declare-fun m!2908831 () Bool)

(assert (=> b!2573052 m!2908831))

(assert (=> b!2573052 m!2908831))

(declare-fun m!2908833 () Bool)

(assert (=> b!2573052 m!2908833))

(assert (=> b!2572470 d!727850))

(declare-fun b!2573054 () Bool)

(declare-fun res!1082412 () Bool)

(declare-fun e!1623708 () Bool)

(assert (=> b!2573054 (=> (not res!1082412) (not e!1623708))))

(assert (=> b!2573054 (= res!1082412 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2573055 () Bool)

(declare-fun e!1623706 () Bool)

(assert (=> b!2573055 (= e!1623706 (not (= (head!5846 tl!4068) (c!414083 lt!906180))))))

(declare-fun b!2573056 () Bool)

(declare-fun res!1082410 () Bool)

(declare-fun e!1623707 () Bool)

(assert (=> b!2573056 (=> res!1082410 e!1623707)))

(assert (=> b!2573056 (= res!1082410 e!1623708)))

(declare-fun res!1082414 () Bool)

(assert (=> b!2573056 (=> (not res!1082414) (not e!1623708))))

(declare-fun lt!906270 () Bool)

(assert (=> b!2573056 (= res!1082414 lt!906270)))

(declare-fun b!2573057 () Bool)

(declare-fun e!1623711 () Bool)

(assert (=> b!2573057 (= e!1623711 (not lt!906270))))

(declare-fun d!727852 () Bool)

(declare-fun e!1623712 () Bool)

(assert (=> d!727852 e!1623712))

(declare-fun c!414249 () Bool)

(assert (=> d!727852 (= c!414249 ((_ is EmptyExpr!7641) lt!906180))))

(declare-fun e!1623710 () Bool)

(assert (=> d!727852 (= lt!906270 e!1623710)))

(declare-fun c!414251 () Bool)

(assert (=> d!727852 (= c!414251 (isEmpty!17069 tl!4068))))

(assert (=> d!727852 (validRegex!3267 lt!906180)))

(assert (=> d!727852 (= (matchR!3584 lt!906180 tl!4068) lt!906270)))

(declare-fun b!2573058 () Bool)

(declare-fun res!1082411 () Bool)

(assert (=> b!2573058 (=> res!1082411 e!1623707)))

(assert (=> b!2573058 (= res!1082411 (not ((_ is ElementMatch!7641) lt!906180)))))

(assert (=> b!2573058 (= e!1623711 e!1623707)))

(declare-fun b!2573059 () Bool)

(assert (=> b!2573059 (= e!1623708 (= (head!5846 tl!4068) (c!414083 lt!906180)))))

(declare-fun b!2573060 () Bool)

(declare-fun res!1082409 () Bool)

(assert (=> b!2573060 (=> res!1082409 e!1623706)))

(assert (=> b!2573060 (= res!1082409 (not (isEmpty!17069 (tail!4121 tl!4068))))))

(declare-fun b!2573061 () Bool)

(assert (=> b!2573061 (= e!1623710 (nullable!2558 lt!906180))))

(declare-fun b!2573062 () Bool)

(declare-fun call!166194 () Bool)

(assert (=> b!2573062 (= e!1623712 (= lt!906270 call!166194))))

(declare-fun bm!166189 () Bool)

(assert (=> bm!166189 (= call!166194 (isEmpty!17069 tl!4068))))

(declare-fun b!2573063 () Bool)

(declare-fun res!1082416 () Bool)

(assert (=> b!2573063 (=> (not res!1082416) (not e!1623708))))

(assert (=> b!2573063 (= res!1082416 (not call!166194))))

(declare-fun b!2573064 () Bool)

(assert (=> b!2573064 (= e!1623710 (matchR!3584 (derivativeStep!2210 lt!906180 (head!5846 tl!4068)) (tail!4121 tl!4068)))))

(declare-fun b!2573065 () Bool)

(assert (=> b!2573065 (= e!1623712 e!1623711)))

(declare-fun c!414250 () Bool)

(assert (=> b!2573065 (= c!414250 ((_ is EmptyLang!7641) lt!906180))))

(declare-fun b!2573066 () Bool)

(declare-fun e!1623709 () Bool)

(assert (=> b!2573066 (= e!1623707 e!1623709)))

(declare-fun res!1082413 () Bool)

(assert (=> b!2573066 (=> (not res!1082413) (not e!1623709))))

(assert (=> b!2573066 (= res!1082413 (not lt!906270))))

(declare-fun b!2573067 () Bool)

(assert (=> b!2573067 (= e!1623709 e!1623706)))

(declare-fun res!1082415 () Bool)

(assert (=> b!2573067 (=> res!1082415 e!1623706)))

(assert (=> b!2573067 (= res!1082415 call!166194)))

(assert (= (and d!727852 c!414251) b!2573061))

(assert (= (and d!727852 (not c!414251)) b!2573064))

(assert (= (and d!727852 c!414249) b!2573062))

(assert (= (and d!727852 (not c!414249)) b!2573065))

(assert (= (and b!2573065 c!414250) b!2573057))

(assert (= (and b!2573065 (not c!414250)) b!2573058))

(assert (= (and b!2573058 (not res!1082411)) b!2573056))

(assert (= (and b!2573056 res!1082414) b!2573063))

(assert (= (and b!2573063 res!1082416) b!2573054))

(assert (= (and b!2573054 res!1082412) b!2573059))

(assert (= (and b!2573056 (not res!1082410)) b!2573066))

(assert (= (and b!2573066 res!1082413) b!2573067))

(assert (= (and b!2573067 (not res!1082415)) b!2573060))

(assert (= (and b!2573060 (not res!1082409)) b!2573055))

(assert (= (or b!2573062 b!2573063 b!2573067) bm!166189))

(assert (=> b!2573054 m!2908811))

(assert (=> b!2573054 m!2908811))

(assert (=> b!2573054 m!2908813))

(assert (=> b!2573064 m!2908815))

(assert (=> b!2573064 m!2908815))

(declare-fun m!2908835 () Bool)

(assert (=> b!2573064 m!2908835))

(assert (=> b!2573064 m!2908811))

(assert (=> b!2573064 m!2908835))

(assert (=> b!2573064 m!2908811))

(declare-fun m!2908837 () Bool)

(assert (=> b!2573064 m!2908837))

(assert (=> b!2573060 m!2908811))

(assert (=> b!2573060 m!2908811))

(assert (=> b!2573060 m!2908813))

(assert (=> bm!166189 m!2908821))

(declare-fun m!2908839 () Bool)

(assert (=> b!2573061 m!2908839))

(assert (=> b!2573055 m!2908815))

(assert (=> d!727852 m!2908821))

(assert (=> d!727852 m!2908807))

(assert (=> b!2573059 m!2908815))

(assert (=> b!2572470 d!727852))

(declare-fun d!727854 () Bool)

(assert (=> d!727854 (= (derivative!336 EmptyLang!7641 tl!4068) EmptyLang!7641)))

(declare-fun lt!906273 () Unit!43463)

(declare-fun choose!15177 (Regex!7641 List!29706) Unit!43463)

(assert (=> d!727854 (= lt!906273 (choose!15177 EmptyLang!7641 tl!4068))))

(assert (=> d!727854 (= EmptyLang!7641 EmptyLang!7641)))

(assert (=> d!727854 (= (lemmaEmptyLangDerivativeIsAFixPoint!70 EmptyLang!7641 tl!4068) lt!906273)))

(declare-fun bs!470078 () Bool)

(assert (= bs!470078 d!727854))

(assert (=> bs!470078 m!2908459))

(declare-fun m!2908841 () Bool)

(assert (=> bs!470078 m!2908841))

(assert (=> b!2572470 d!727854))

(declare-fun d!727856 () Bool)

(assert (=> d!727856 (= (nullable!2558 (regOne!15794 r!27340)) (nullableFct!783 (regOne!15794 r!27340)))))

(declare-fun bs!470079 () Bool)

(assert (= bs!470079 d!727856))

(declare-fun m!2908843 () Bool)

(assert (=> bs!470079 m!2908843))

(assert (=> b!2572481 d!727856))

(declare-fun b!2573086 () Bool)

(declare-fun res!1082430 () Bool)

(declare-fun e!1623729 () Bool)

(assert (=> b!2573086 (=> res!1082430 e!1623729)))

(assert (=> b!2573086 (= res!1082430 (not ((_ is Concat!12337) (regOne!15794 r!27340))))))

(declare-fun e!1623730 () Bool)

(assert (=> b!2573086 (= e!1623730 e!1623729)))

(declare-fun b!2573087 () Bool)

(declare-fun e!1623728 () Bool)

(declare-fun call!166203 () Bool)

(assert (=> b!2573087 (= e!1623728 call!166203)))

(declare-fun b!2573088 () Bool)

(declare-fun e!1623727 () Bool)

(declare-fun e!1623733 () Bool)

(assert (=> b!2573088 (= e!1623727 e!1623733)))

(declare-fun c!414256 () Bool)

(assert (=> b!2573088 (= c!414256 ((_ is Star!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573090 () Bool)

(declare-fun res!1082429 () Bool)

(assert (=> b!2573090 (=> (not res!1082429) (not e!1623728))))

(declare-fun call!166202 () Bool)

(assert (=> b!2573090 (= res!1082429 call!166202)))

(assert (=> b!2573090 (= e!1623730 e!1623728)))

(declare-fun b!2573091 () Bool)

(assert (=> b!2573091 (= e!1623733 e!1623730)))

(declare-fun c!414257 () Bool)

(assert (=> b!2573091 (= c!414257 ((_ is Union!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573092 () Bool)

(declare-fun e!1623732 () Bool)

(assert (=> b!2573092 (= e!1623732 call!166202)))

(declare-fun call!166201 () Bool)

(declare-fun bm!166196 () Bool)

(assert (=> bm!166196 (= call!166201 (validRegex!3267 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2573093 () Bool)

(assert (=> b!2573093 (= e!1623729 e!1623732)))

(declare-fun res!1082428 () Bool)

(assert (=> b!2573093 (=> (not res!1082428) (not e!1623732))))

(assert (=> b!2573093 (= res!1082428 call!166203)))

(declare-fun bm!166197 () Bool)

(assert (=> bm!166197 (= call!166202 (validRegex!3267 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2573094 () Bool)

(declare-fun e!1623731 () Bool)

(assert (=> b!2573094 (= e!1623733 e!1623731)))

(declare-fun res!1082431 () Bool)

(assert (=> b!2573094 (= res!1082431 (not (nullable!2558 (reg!7970 (regOne!15794 r!27340)))))))

(assert (=> b!2573094 (=> (not res!1082431) (not e!1623731))))

(declare-fun bm!166198 () Bool)

(assert (=> bm!166198 (= call!166203 call!166201)))

(declare-fun d!727858 () Bool)

(declare-fun res!1082427 () Bool)

(assert (=> d!727858 (=> res!1082427 e!1623727)))

(assert (=> d!727858 (= res!1082427 ((_ is ElementMatch!7641) (regOne!15794 r!27340)))))

(assert (=> d!727858 (= (validRegex!3267 (regOne!15794 r!27340)) e!1623727)))

(declare-fun b!2573089 () Bool)

(assert (=> b!2573089 (= e!1623731 call!166201)))

(assert (= (and d!727858 (not res!1082427)) b!2573088))

(assert (= (and b!2573088 c!414256) b!2573094))

(assert (= (and b!2573088 (not c!414256)) b!2573091))

(assert (= (and b!2573094 res!1082431) b!2573089))

(assert (= (and b!2573091 c!414257) b!2573090))

(assert (= (and b!2573091 (not c!414257)) b!2573086))

(assert (= (and b!2573090 res!1082429) b!2573087))

(assert (= (and b!2573086 (not res!1082430)) b!2573093))

(assert (= (and b!2573093 res!1082428) b!2573092))

(assert (= (or b!2573090 b!2573092) bm!166197))

(assert (= (or b!2573087 b!2573093) bm!166198))

(assert (= (or b!2573089 bm!166198) bm!166196))

(declare-fun m!2908845 () Bool)

(assert (=> bm!166196 m!2908845))

(declare-fun m!2908847 () Bool)

(assert (=> bm!166197 m!2908847))

(declare-fun m!2908849 () Bool)

(assert (=> b!2573094 m!2908849))

(assert (=> b!2572471 d!727858))

(declare-fun b!2573095 () Bool)

(declare-fun res!1082435 () Bool)

(declare-fun e!1623736 () Bool)

(assert (=> b!2573095 (=> (not res!1082435) (not e!1623736))))

(assert (=> b!2573095 (= res!1082435 (isEmpty!17069 (tail!4121 Nil!29606)))))

(declare-fun b!2573096 () Bool)

(declare-fun e!1623734 () Bool)

(assert (=> b!2573096 (= e!1623734 (not (= (head!5846 Nil!29606) (c!414083 lt!906178))))))

(declare-fun b!2573097 () Bool)

(declare-fun res!1082433 () Bool)

(declare-fun e!1623735 () Bool)

(assert (=> b!2573097 (=> res!1082433 e!1623735)))

(assert (=> b!2573097 (= res!1082433 e!1623736)))

(declare-fun res!1082437 () Bool)

(assert (=> b!2573097 (=> (not res!1082437) (not e!1623736))))

(declare-fun lt!906274 () Bool)

(assert (=> b!2573097 (= res!1082437 lt!906274)))

(declare-fun b!2573098 () Bool)

(declare-fun e!1623739 () Bool)

(assert (=> b!2573098 (= e!1623739 (not lt!906274))))

(declare-fun d!727860 () Bool)

(declare-fun e!1623740 () Bool)

(assert (=> d!727860 e!1623740))

(declare-fun c!414258 () Bool)

(assert (=> d!727860 (= c!414258 ((_ is EmptyExpr!7641) lt!906178))))

(declare-fun e!1623738 () Bool)

(assert (=> d!727860 (= lt!906274 e!1623738)))

(declare-fun c!414260 () Bool)

(assert (=> d!727860 (= c!414260 (isEmpty!17069 Nil!29606))))

(assert (=> d!727860 (validRegex!3267 lt!906178)))

(assert (=> d!727860 (= (matchR!3584 lt!906178 Nil!29606) lt!906274)))

(declare-fun b!2573099 () Bool)

(declare-fun res!1082434 () Bool)

(assert (=> b!2573099 (=> res!1082434 e!1623735)))

(assert (=> b!2573099 (= res!1082434 (not ((_ is ElementMatch!7641) lt!906178)))))

(assert (=> b!2573099 (= e!1623739 e!1623735)))

(declare-fun b!2573100 () Bool)

(assert (=> b!2573100 (= e!1623736 (= (head!5846 Nil!29606) (c!414083 lt!906178)))))

(declare-fun b!2573101 () Bool)

(declare-fun res!1082432 () Bool)

(assert (=> b!2573101 (=> res!1082432 e!1623734)))

(assert (=> b!2573101 (= res!1082432 (not (isEmpty!17069 (tail!4121 Nil!29606))))))

(declare-fun b!2573102 () Bool)

(assert (=> b!2573102 (= e!1623738 (nullable!2558 lt!906178))))

(declare-fun b!2573103 () Bool)

(declare-fun call!166204 () Bool)

(assert (=> b!2573103 (= e!1623740 (= lt!906274 call!166204))))

(declare-fun bm!166199 () Bool)

(assert (=> bm!166199 (= call!166204 (isEmpty!17069 Nil!29606))))

(declare-fun b!2573104 () Bool)

(declare-fun res!1082439 () Bool)

(assert (=> b!2573104 (=> (not res!1082439) (not e!1623736))))

(assert (=> b!2573104 (= res!1082439 (not call!166204))))

(declare-fun b!2573105 () Bool)

(assert (=> b!2573105 (= e!1623738 (matchR!3584 (derivativeStep!2210 lt!906178 (head!5846 Nil!29606)) (tail!4121 Nil!29606)))))

(declare-fun b!2573106 () Bool)

(assert (=> b!2573106 (= e!1623740 e!1623739)))

(declare-fun c!414259 () Bool)

(assert (=> b!2573106 (= c!414259 ((_ is EmptyLang!7641) lt!906178))))

(declare-fun b!2573107 () Bool)

(declare-fun e!1623737 () Bool)

(assert (=> b!2573107 (= e!1623735 e!1623737)))

(declare-fun res!1082436 () Bool)

(assert (=> b!2573107 (=> (not res!1082436) (not e!1623737))))

(assert (=> b!2573107 (= res!1082436 (not lt!906274))))

(declare-fun b!2573108 () Bool)

(assert (=> b!2573108 (= e!1623737 e!1623734)))

(declare-fun res!1082438 () Bool)

(assert (=> b!2573108 (=> res!1082438 e!1623734)))

(assert (=> b!2573108 (= res!1082438 call!166204)))

(assert (= (and d!727860 c!414260) b!2573102))

(assert (= (and d!727860 (not c!414260)) b!2573105))

(assert (= (and d!727860 c!414258) b!2573103))

(assert (= (and d!727860 (not c!414258)) b!2573106))

(assert (= (and b!2573106 c!414259) b!2573098))

(assert (= (and b!2573106 (not c!414259)) b!2573099))

(assert (= (and b!2573099 (not res!1082434)) b!2573097))

(assert (= (and b!2573097 res!1082437) b!2573104))

(assert (= (and b!2573104 res!1082439) b!2573095))

(assert (= (and b!2573095 res!1082435) b!2573100))

(assert (= (and b!2573097 (not res!1082433)) b!2573107))

(assert (= (and b!2573107 res!1082436) b!2573108))

(assert (= (and b!2573108 (not res!1082438)) b!2573101))

(assert (= (and b!2573101 (not res!1082432)) b!2573096))

(assert (= (or b!2573103 b!2573104 b!2573108) bm!166199))

(assert (=> b!2573095 m!2908719))

(assert (=> b!2573095 m!2908719))

(assert (=> b!2573095 m!2908721))

(assert (=> b!2573105 m!2908723))

(assert (=> b!2573105 m!2908723))

(declare-fun m!2908851 () Bool)

(assert (=> b!2573105 m!2908851))

(assert (=> b!2573105 m!2908719))

(assert (=> b!2573105 m!2908851))

(assert (=> b!2573105 m!2908719))

(declare-fun m!2908853 () Bool)

(assert (=> b!2573105 m!2908853))

(assert (=> b!2573101 m!2908719))

(assert (=> b!2573101 m!2908719))

(assert (=> b!2573101 m!2908721))

(assert (=> bm!166199 m!2908729))

(assert (=> b!2573102 m!2908431))

(assert (=> b!2573096 m!2908723))

(assert (=> d!727860 m!2908729))

(declare-fun m!2908855 () Bool)

(assert (=> d!727860 m!2908855))

(assert (=> b!2573100 m!2908723))

(assert (=> b!2572471 d!727860))

(declare-fun d!727862 () Bool)

(declare-fun lt!906275 () Regex!7641)

(assert (=> d!727862 (validRegex!3267 lt!906275)))

(declare-fun e!1623741 () Regex!7641)

(assert (=> d!727862 (= lt!906275 e!1623741)))

(declare-fun c!414261 () Bool)

(assert (=> d!727862 (= c!414261 ((_ is Cons!29606) (_1!17344 lt!906169)))))

(assert (=> d!727862 (validRegex!3267 lt!906173)))

(assert (=> d!727862 (= (derivative!336 lt!906173 (_1!17344 lt!906169)) lt!906275)))

(declare-fun b!2573109 () Bool)

(assert (=> b!2573109 (= e!1623741 (derivative!336 (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))) (t!211405 (_1!17344 lt!906169))))))

(declare-fun b!2573110 () Bool)

(assert (=> b!2573110 (= e!1623741 lt!906173)))

(assert (= (and d!727862 c!414261) b!2573109))

(assert (= (and d!727862 (not c!414261)) b!2573110))

(declare-fun m!2908857 () Bool)

(assert (=> d!727862 m!2908857))

(assert (=> d!727862 m!2908495))

(declare-fun m!2908859 () Bool)

(assert (=> b!2573109 m!2908859))

(assert (=> b!2573109 m!2908859))

(declare-fun m!2908861 () Bool)

(assert (=> b!2573109 m!2908861))

(assert (=> b!2572471 d!727862))

(declare-fun d!727864 () Bool)

(assert (=> d!727864 (= (matchR!3584 lt!906173 (_1!17344 lt!906169)) (matchR!3584 (derivative!336 lt!906173 (_1!17344 lt!906169)) Nil!29606))))

(declare-fun lt!906276 () Unit!43463)

(assert (=> d!727864 (= lt!906276 (choose!15175 lt!906173 (_1!17344 lt!906169)))))

(assert (=> d!727864 (validRegex!3267 lt!906173)))

(assert (=> d!727864 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!230 lt!906173 (_1!17344 lt!906169)) lt!906276)))

(declare-fun bs!470080 () Bool)

(assert (= bs!470080 d!727864))

(assert (=> bs!470080 m!2908423))

(declare-fun m!2908863 () Bool)

(assert (=> bs!470080 m!2908863))

(assert (=> bs!470080 m!2908495))

(assert (=> bs!470080 m!2908423))

(declare-fun m!2908865 () Bool)

(assert (=> bs!470080 m!2908865))

(assert (=> bs!470080 m!2908463))

(assert (=> b!2572471 d!727864))

(declare-fun b!2573111 () Bool)

(declare-fun res!1082443 () Bool)

(declare-fun e!1623744 () Bool)

(assert (=> b!2573111 (=> res!1082443 e!1623744)))

(assert (=> b!2573111 (= res!1082443 (not ((_ is Concat!12337) r!27340)))))

(declare-fun e!1623745 () Bool)

(assert (=> b!2573111 (= e!1623745 e!1623744)))

(declare-fun b!2573112 () Bool)

(declare-fun e!1623743 () Bool)

(declare-fun call!166207 () Bool)

(assert (=> b!2573112 (= e!1623743 call!166207)))

(declare-fun b!2573113 () Bool)

(declare-fun e!1623742 () Bool)

(declare-fun e!1623748 () Bool)

(assert (=> b!2573113 (= e!1623742 e!1623748)))

(declare-fun c!414262 () Bool)

(assert (=> b!2573113 (= c!414262 ((_ is Star!7641) r!27340))))

(declare-fun b!2573115 () Bool)

(declare-fun res!1082442 () Bool)

(assert (=> b!2573115 (=> (not res!1082442) (not e!1623743))))

(declare-fun call!166206 () Bool)

(assert (=> b!2573115 (= res!1082442 call!166206)))

(assert (=> b!2573115 (= e!1623745 e!1623743)))

(declare-fun b!2573116 () Bool)

(assert (=> b!2573116 (= e!1623748 e!1623745)))

(declare-fun c!414263 () Bool)

(assert (=> b!2573116 (= c!414263 ((_ is Union!7641) r!27340))))

(declare-fun b!2573117 () Bool)

(declare-fun e!1623747 () Bool)

(assert (=> b!2573117 (= e!1623747 call!166206)))

(declare-fun call!166205 () Bool)

(declare-fun bm!166200 () Bool)

(assert (=> bm!166200 (= call!166205 (validRegex!3267 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2573118 () Bool)

(assert (=> b!2573118 (= e!1623744 e!1623747)))

(declare-fun res!1082441 () Bool)

(assert (=> b!2573118 (=> (not res!1082441) (not e!1623747))))

(assert (=> b!2573118 (= res!1082441 call!166207)))

(declare-fun bm!166201 () Bool)

(assert (=> bm!166201 (= call!166206 (validRegex!3267 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2573119 () Bool)

(declare-fun e!1623746 () Bool)

(assert (=> b!2573119 (= e!1623748 e!1623746)))

(declare-fun res!1082444 () Bool)

(assert (=> b!2573119 (= res!1082444 (not (nullable!2558 (reg!7970 r!27340))))))

(assert (=> b!2573119 (=> (not res!1082444) (not e!1623746))))

(declare-fun bm!166202 () Bool)

(assert (=> bm!166202 (= call!166207 call!166205)))

(declare-fun d!727866 () Bool)

(declare-fun res!1082440 () Bool)

(assert (=> d!727866 (=> res!1082440 e!1623742)))

(assert (=> d!727866 (= res!1082440 ((_ is ElementMatch!7641) r!27340))))

(assert (=> d!727866 (= (validRegex!3267 r!27340) e!1623742)))

(declare-fun b!2573114 () Bool)

(assert (=> b!2573114 (= e!1623746 call!166205)))

(assert (= (and d!727866 (not res!1082440)) b!2573113))

(assert (= (and b!2573113 c!414262) b!2573119))

(assert (= (and b!2573113 (not c!414262)) b!2573116))

(assert (= (and b!2573119 res!1082444) b!2573114))

(assert (= (and b!2573116 c!414263) b!2573115))

(assert (= (and b!2573116 (not c!414263)) b!2573111))

(assert (= (and b!2573115 res!1082442) b!2573112))

(assert (= (and b!2573111 (not res!1082443)) b!2573118))

(assert (= (and b!2573118 res!1082441) b!2573117))

(assert (= (or b!2573115 b!2573117) bm!166201))

(assert (= (or b!2573112 b!2573118) bm!166202))

(assert (= (or b!2573114 bm!166202) bm!166200))

(declare-fun m!2908867 () Bool)

(assert (=> bm!166200 m!2908867))

(declare-fun m!2908869 () Bool)

(assert (=> bm!166201 m!2908869))

(declare-fun m!2908871 () Bool)

(assert (=> b!2573119 m!2908871))

(assert (=> start!248552 d!727866))

(declare-fun d!727868 () Bool)

(assert (=> d!727868 (= (nullable!2558 lt!906178) (nullableFct!783 lt!906178))))

(declare-fun bs!470081 () Bool)

(assert (= bs!470081 d!727868))

(declare-fun m!2908873 () Bool)

(assert (=> bs!470081 m!2908873))

(assert (=> b!2572483 d!727868))

(declare-fun b!2573120 () Bool)

(declare-fun res!1082448 () Bool)

(declare-fun e!1623751 () Bool)

(assert (=> b!2573120 (=> (not res!1082448) (not e!1623751))))

(assert (=> b!2573120 (= res!1082448 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2573121 () Bool)

(declare-fun e!1623749 () Bool)

(assert (=> b!2573121 (= e!1623749 (not (= (head!5846 tl!4068) (c!414083 EmptyLang!7641))))))

(declare-fun b!2573122 () Bool)

(declare-fun res!1082446 () Bool)

(declare-fun e!1623750 () Bool)

(assert (=> b!2573122 (=> res!1082446 e!1623750)))

(assert (=> b!2573122 (= res!1082446 e!1623751)))

(declare-fun res!1082450 () Bool)

(assert (=> b!2573122 (=> (not res!1082450) (not e!1623751))))

(declare-fun lt!906277 () Bool)

(assert (=> b!2573122 (= res!1082450 lt!906277)))

(declare-fun b!2573123 () Bool)

(declare-fun e!1623754 () Bool)

(assert (=> b!2573123 (= e!1623754 (not lt!906277))))

(declare-fun d!727870 () Bool)

(declare-fun e!1623755 () Bool)

(assert (=> d!727870 e!1623755))

(declare-fun c!414264 () Bool)

(assert (=> d!727870 (= c!414264 ((_ is EmptyExpr!7641) EmptyLang!7641))))

(declare-fun e!1623753 () Bool)

(assert (=> d!727870 (= lt!906277 e!1623753)))

(declare-fun c!414266 () Bool)

(assert (=> d!727870 (= c!414266 (isEmpty!17069 tl!4068))))

(assert (=> d!727870 (validRegex!3267 EmptyLang!7641)))

(assert (=> d!727870 (= (matchR!3584 EmptyLang!7641 tl!4068) lt!906277)))

(declare-fun b!2573124 () Bool)

(declare-fun res!1082447 () Bool)

(assert (=> b!2573124 (=> res!1082447 e!1623750)))

(assert (=> b!2573124 (= res!1082447 (not ((_ is ElementMatch!7641) EmptyLang!7641)))))

(assert (=> b!2573124 (= e!1623754 e!1623750)))

(declare-fun b!2573125 () Bool)

(assert (=> b!2573125 (= e!1623751 (= (head!5846 tl!4068) (c!414083 EmptyLang!7641)))))

(declare-fun b!2573126 () Bool)

(declare-fun res!1082445 () Bool)

(assert (=> b!2573126 (=> res!1082445 e!1623749)))

(assert (=> b!2573126 (= res!1082445 (not (isEmpty!17069 (tail!4121 tl!4068))))))

(declare-fun b!2573127 () Bool)

(assert (=> b!2573127 (= e!1623753 (nullable!2558 EmptyLang!7641))))

(declare-fun b!2573128 () Bool)

(declare-fun call!166208 () Bool)

(assert (=> b!2573128 (= e!1623755 (= lt!906277 call!166208))))

(declare-fun bm!166203 () Bool)

(assert (=> bm!166203 (= call!166208 (isEmpty!17069 tl!4068))))

(declare-fun b!2573129 () Bool)

(declare-fun res!1082452 () Bool)

(assert (=> b!2573129 (=> (not res!1082452) (not e!1623751))))

(assert (=> b!2573129 (= res!1082452 (not call!166208))))

(declare-fun b!2573130 () Bool)

(assert (=> b!2573130 (= e!1623753 (matchR!3584 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)) (tail!4121 tl!4068)))))

(declare-fun b!2573131 () Bool)

(assert (=> b!2573131 (= e!1623755 e!1623754)))

(declare-fun c!414265 () Bool)

(assert (=> b!2573131 (= c!414265 ((_ is EmptyLang!7641) EmptyLang!7641))))

(declare-fun b!2573132 () Bool)

(declare-fun e!1623752 () Bool)

(assert (=> b!2573132 (= e!1623750 e!1623752)))

(declare-fun res!1082449 () Bool)

(assert (=> b!2573132 (=> (not res!1082449) (not e!1623752))))

(assert (=> b!2573132 (= res!1082449 (not lt!906277))))

(declare-fun b!2573133 () Bool)

(assert (=> b!2573133 (= e!1623752 e!1623749)))

(declare-fun res!1082451 () Bool)

(assert (=> b!2573133 (=> res!1082451 e!1623749)))

(assert (=> b!2573133 (= res!1082451 call!166208)))

(assert (= (and d!727870 c!414266) b!2573127))

(assert (= (and d!727870 (not c!414266)) b!2573130))

(assert (= (and d!727870 c!414264) b!2573128))

(assert (= (and d!727870 (not c!414264)) b!2573131))

(assert (= (and b!2573131 c!414265) b!2573123))

(assert (= (and b!2573131 (not c!414265)) b!2573124))

(assert (= (and b!2573124 (not res!1082447)) b!2573122))

(assert (= (and b!2573122 res!1082450) b!2573129))

(assert (= (and b!2573129 res!1082452) b!2573120))

(assert (= (and b!2573120 res!1082448) b!2573125))

(assert (= (and b!2573122 (not res!1082446)) b!2573132))

(assert (= (and b!2573132 res!1082449) b!2573133))

(assert (= (and b!2573133 (not res!1082451)) b!2573126))

(assert (= (and b!2573126 (not res!1082445)) b!2573121))

(assert (= (or b!2573128 b!2573129 b!2573133) bm!166203))

(assert (=> b!2573120 m!2908811))

(assert (=> b!2573120 m!2908811))

(assert (=> b!2573120 m!2908813))

(assert (=> b!2573130 m!2908815))

(assert (=> b!2573130 m!2908815))

(declare-fun m!2908875 () Bool)

(assert (=> b!2573130 m!2908875))

(assert (=> b!2573130 m!2908811))

(assert (=> b!2573130 m!2908875))

(assert (=> b!2573130 m!2908811))

(declare-fun m!2908877 () Bool)

(assert (=> b!2573130 m!2908877))

(assert (=> b!2573126 m!2908811))

(assert (=> b!2573126 m!2908811))

(assert (=> b!2573126 m!2908813))

(assert (=> bm!166203 m!2908821))

(declare-fun m!2908879 () Bool)

(assert (=> b!2573127 m!2908879))

(assert (=> b!2573121 m!2908815))

(assert (=> d!727870 m!2908821))

(assert (=> d!727870 m!2908755))

(assert (=> b!2573125 m!2908815))

(assert (=> b!2572473 d!727870))

(declare-fun b!2573134 () Bool)

(declare-fun res!1082456 () Bool)

(declare-fun e!1623758 () Bool)

(assert (=> b!2573134 (=> (not res!1082456) (not e!1623758))))

(assert (=> b!2573134 (= res!1082456 (isEmpty!17069 (tail!4121 (_2!17344 lt!906169))))))

(declare-fun b!2573135 () Bool)

(declare-fun e!1623756 () Bool)

(assert (=> b!2573135 (= e!1623756 (not (= (head!5846 (_2!17344 lt!906169)) (c!414083 (regTwo!15794 r!27340)))))))

(declare-fun b!2573136 () Bool)

(declare-fun res!1082454 () Bool)

(declare-fun e!1623757 () Bool)

(assert (=> b!2573136 (=> res!1082454 e!1623757)))

(assert (=> b!2573136 (= res!1082454 e!1623758)))

(declare-fun res!1082458 () Bool)

(assert (=> b!2573136 (=> (not res!1082458) (not e!1623758))))

(declare-fun lt!906278 () Bool)

(assert (=> b!2573136 (= res!1082458 lt!906278)))

(declare-fun b!2573137 () Bool)

(declare-fun e!1623761 () Bool)

(assert (=> b!2573137 (= e!1623761 (not lt!906278))))

(declare-fun d!727872 () Bool)

(declare-fun e!1623762 () Bool)

(assert (=> d!727872 e!1623762))

(declare-fun c!414267 () Bool)

(assert (=> d!727872 (= c!414267 ((_ is EmptyExpr!7641) (regTwo!15794 r!27340)))))

(declare-fun e!1623760 () Bool)

(assert (=> d!727872 (= lt!906278 e!1623760)))

(declare-fun c!414269 () Bool)

(assert (=> d!727872 (= c!414269 (isEmpty!17069 (_2!17344 lt!906169)))))

(assert (=> d!727872 (validRegex!3267 (regTwo!15794 r!27340))))

(assert (=> d!727872 (= (matchR!3584 (regTwo!15794 r!27340) (_2!17344 lt!906169)) lt!906278)))

(declare-fun b!2573138 () Bool)

(declare-fun res!1082455 () Bool)

(assert (=> b!2573138 (=> res!1082455 e!1623757)))

(assert (=> b!2573138 (= res!1082455 (not ((_ is ElementMatch!7641) (regTwo!15794 r!27340))))))

(assert (=> b!2573138 (= e!1623761 e!1623757)))

(declare-fun b!2573139 () Bool)

(assert (=> b!2573139 (= e!1623758 (= (head!5846 (_2!17344 lt!906169)) (c!414083 (regTwo!15794 r!27340))))))

(declare-fun b!2573140 () Bool)

(declare-fun res!1082453 () Bool)

(assert (=> b!2573140 (=> res!1082453 e!1623756)))

(assert (=> b!2573140 (= res!1082453 (not (isEmpty!17069 (tail!4121 (_2!17344 lt!906169)))))))

(declare-fun b!2573141 () Bool)

(assert (=> b!2573141 (= e!1623760 (nullable!2558 (regTwo!15794 r!27340)))))

(declare-fun b!2573142 () Bool)

(declare-fun call!166209 () Bool)

(assert (=> b!2573142 (= e!1623762 (= lt!906278 call!166209))))

(declare-fun bm!166204 () Bool)

(assert (=> bm!166204 (= call!166209 (isEmpty!17069 (_2!17344 lt!906169)))))

(declare-fun b!2573143 () Bool)

(declare-fun res!1082460 () Bool)

(assert (=> b!2573143 (=> (not res!1082460) (not e!1623758))))

(assert (=> b!2573143 (= res!1082460 (not call!166209))))

(declare-fun b!2573144 () Bool)

(assert (=> b!2573144 (= e!1623760 (matchR!3584 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))) (tail!4121 (_2!17344 lt!906169))))))

(declare-fun b!2573145 () Bool)

(assert (=> b!2573145 (= e!1623762 e!1623761)))

(declare-fun c!414268 () Bool)

(assert (=> b!2573145 (= c!414268 ((_ is EmptyLang!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2573146 () Bool)

(declare-fun e!1623759 () Bool)

(assert (=> b!2573146 (= e!1623757 e!1623759)))

(declare-fun res!1082457 () Bool)

(assert (=> b!2573146 (=> (not res!1082457) (not e!1623759))))

(assert (=> b!2573146 (= res!1082457 (not lt!906278))))

(declare-fun b!2573147 () Bool)

(assert (=> b!2573147 (= e!1623759 e!1623756)))

(declare-fun res!1082459 () Bool)

(assert (=> b!2573147 (=> res!1082459 e!1623756)))

(assert (=> b!2573147 (= res!1082459 call!166209)))

(assert (= (and d!727872 c!414269) b!2573141))

(assert (= (and d!727872 (not c!414269)) b!2573144))

(assert (= (and d!727872 c!414267) b!2573142))

(assert (= (and d!727872 (not c!414267)) b!2573145))

(assert (= (and b!2573145 c!414268) b!2573137))

(assert (= (and b!2573145 (not c!414268)) b!2573138))

(assert (= (and b!2573138 (not res!1082455)) b!2573136))

(assert (= (and b!2573136 res!1082458) b!2573143))

(assert (= (and b!2573143 res!1082460) b!2573134))

(assert (= (and b!2573134 res!1082456) b!2573139))

(assert (= (and b!2573136 (not res!1082454)) b!2573146))

(assert (= (and b!2573146 res!1082457) b!2573147))

(assert (= (and b!2573147 (not res!1082459)) b!2573140))

(assert (= (and b!2573140 (not res!1082453)) b!2573135))

(assert (= (or b!2573142 b!2573143 b!2573147) bm!166204))

(declare-fun m!2908881 () Bool)

(assert (=> b!2573134 m!2908881))

(assert (=> b!2573134 m!2908881))

(declare-fun m!2908883 () Bool)

(assert (=> b!2573134 m!2908883))

(declare-fun m!2908885 () Bool)

(assert (=> b!2573144 m!2908885))

(assert (=> b!2573144 m!2908885))

(declare-fun m!2908887 () Bool)

(assert (=> b!2573144 m!2908887))

(assert (=> b!2573144 m!2908881))

(assert (=> b!2573144 m!2908887))

(assert (=> b!2573144 m!2908881))

(declare-fun m!2908889 () Bool)

(assert (=> b!2573144 m!2908889))

(assert (=> b!2573140 m!2908881))

(assert (=> b!2573140 m!2908881))

(assert (=> b!2573140 m!2908883))

(declare-fun m!2908891 () Bool)

(assert (=> bm!166204 m!2908891))

(declare-fun m!2908893 () Bool)

(assert (=> b!2573141 m!2908893))

(assert (=> b!2573135 m!2908885))

(assert (=> d!727872 m!2908891))

(declare-fun m!2908895 () Bool)

(assert (=> d!727872 m!2908895))

(assert (=> b!2573139 m!2908885))

(assert (=> b!2572484 d!727872))

(declare-fun b!2573159 () Bool)

(declare-fun e!1623765 () Bool)

(declare-fun tp!818299 () Bool)

(declare-fun tp!818298 () Bool)

(assert (=> b!2573159 (= e!1623765 (and tp!818299 tp!818298))))

(assert (=> b!2572479 (= tp!818242 e!1623765)))

(declare-fun b!2573158 () Bool)

(assert (=> b!2573158 (= e!1623765 tp_is_empty!13137)))

(declare-fun b!2573161 () Bool)

(declare-fun tp!818295 () Bool)

(declare-fun tp!818296 () Bool)

(assert (=> b!2573161 (= e!1623765 (and tp!818295 tp!818296))))

(declare-fun b!2573160 () Bool)

(declare-fun tp!818297 () Bool)

(assert (=> b!2573160 (= e!1623765 tp!818297)))

(assert (= (and b!2572479 ((_ is ElementMatch!7641) (regOne!15795 r!27340))) b!2573158))

(assert (= (and b!2572479 ((_ is Concat!12337) (regOne!15795 r!27340))) b!2573159))

(assert (= (and b!2572479 ((_ is Star!7641) (regOne!15795 r!27340))) b!2573160))

(assert (= (and b!2572479 ((_ is Union!7641) (regOne!15795 r!27340))) b!2573161))

(declare-fun b!2573163 () Bool)

(declare-fun e!1623766 () Bool)

(declare-fun tp!818304 () Bool)

(declare-fun tp!818303 () Bool)

(assert (=> b!2573163 (= e!1623766 (and tp!818304 tp!818303))))

(assert (=> b!2572479 (= tp!818246 e!1623766)))

(declare-fun b!2573162 () Bool)

(assert (=> b!2573162 (= e!1623766 tp_is_empty!13137)))

(declare-fun b!2573165 () Bool)

(declare-fun tp!818300 () Bool)

(declare-fun tp!818301 () Bool)

(assert (=> b!2573165 (= e!1623766 (and tp!818300 tp!818301))))

(declare-fun b!2573164 () Bool)

(declare-fun tp!818302 () Bool)

(assert (=> b!2573164 (= e!1623766 tp!818302)))

(assert (= (and b!2572479 ((_ is ElementMatch!7641) (regTwo!15795 r!27340))) b!2573162))

(assert (= (and b!2572479 ((_ is Concat!12337) (regTwo!15795 r!27340))) b!2573163))

(assert (= (and b!2572479 ((_ is Star!7641) (regTwo!15795 r!27340))) b!2573164))

(assert (= (and b!2572479 ((_ is Union!7641) (regTwo!15795 r!27340))) b!2573165))

(declare-fun b!2573170 () Bool)

(declare-fun e!1623769 () Bool)

(declare-fun tp!818307 () Bool)

(assert (=> b!2573170 (= e!1623769 (and tp_is_empty!13137 tp!818307))))

(assert (=> b!2572480 (= tp!818245 e!1623769)))

(assert (= (and b!2572480 ((_ is Cons!29606) (t!211405 tl!4068))) b!2573170))

(declare-fun b!2573172 () Bool)

(declare-fun e!1623770 () Bool)

(declare-fun tp!818312 () Bool)

(declare-fun tp!818311 () Bool)

(assert (=> b!2573172 (= e!1623770 (and tp!818312 tp!818311))))

(assert (=> b!2572476 (= tp!818244 e!1623770)))

(declare-fun b!2573171 () Bool)

(assert (=> b!2573171 (= e!1623770 tp_is_empty!13137)))

(declare-fun b!2573174 () Bool)

(declare-fun tp!818308 () Bool)

(declare-fun tp!818309 () Bool)

(assert (=> b!2573174 (= e!1623770 (and tp!818308 tp!818309))))

(declare-fun b!2573173 () Bool)

(declare-fun tp!818310 () Bool)

(assert (=> b!2573173 (= e!1623770 tp!818310)))

(assert (= (and b!2572476 ((_ is ElementMatch!7641) (reg!7970 r!27340))) b!2573171))

(assert (= (and b!2572476 ((_ is Concat!12337) (reg!7970 r!27340))) b!2573172))

(assert (= (and b!2572476 ((_ is Star!7641) (reg!7970 r!27340))) b!2573173))

(assert (= (and b!2572476 ((_ is Union!7641) (reg!7970 r!27340))) b!2573174))

(declare-fun b!2573176 () Bool)

(declare-fun e!1623771 () Bool)

(declare-fun tp!818317 () Bool)

(declare-fun tp!818316 () Bool)

(assert (=> b!2573176 (= e!1623771 (and tp!818317 tp!818316))))

(assert (=> b!2572482 (= tp!818243 e!1623771)))

(declare-fun b!2573175 () Bool)

(assert (=> b!2573175 (= e!1623771 tp_is_empty!13137)))

(declare-fun b!2573178 () Bool)

(declare-fun tp!818313 () Bool)

(declare-fun tp!818314 () Bool)

(assert (=> b!2573178 (= e!1623771 (and tp!818313 tp!818314))))

(declare-fun b!2573177 () Bool)

(declare-fun tp!818315 () Bool)

(assert (=> b!2573177 (= e!1623771 tp!818315)))

(assert (= (and b!2572482 ((_ is ElementMatch!7641) (regOne!15794 r!27340))) b!2573175))

(assert (= (and b!2572482 ((_ is Concat!12337) (regOne!15794 r!27340))) b!2573176))

(assert (= (and b!2572482 ((_ is Star!7641) (regOne!15794 r!27340))) b!2573177))

(assert (= (and b!2572482 ((_ is Union!7641) (regOne!15794 r!27340))) b!2573178))

(declare-fun b!2573180 () Bool)

(declare-fun e!1623772 () Bool)

(declare-fun tp!818322 () Bool)

(declare-fun tp!818321 () Bool)

(assert (=> b!2573180 (= e!1623772 (and tp!818322 tp!818321))))

(assert (=> b!2572482 (= tp!818241 e!1623772)))

(declare-fun b!2573179 () Bool)

(assert (=> b!2573179 (= e!1623772 tp_is_empty!13137)))

(declare-fun b!2573182 () Bool)

(declare-fun tp!818318 () Bool)

(declare-fun tp!818319 () Bool)

(assert (=> b!2573182 (= e!1623772 (and tp!818318 tp!818319))))

(declare-fun b!2573181 () Bool)

(declare-fun tp!818320 () Bool)

(assert (=> b!2573181 (= e!1623772 tp!818320)))

(assert (= (and b!2572482 ((_ is ElementMatch!7641) (regTwo!15794 r!27340))) b!2573179))

(assert (= (and b!2572482 ((_ is Concat!12337) (regTwo!15794 r!27340))) b!2573180))

(assert (= (and b!2572482 ((_ is Star!7641) (regTwo!15794 r!27340))) b!2573181))

(assert (= (and b!2572482 ((_ is Union!7641) (regTwo!15794 r!27340))) b!2573182))

(check-sat (not d!727870) (not d!727860) (not bm!166203) (not b!2573182) (not b!2572688) (not b!2572895) (not b!2573126) (not b!2572683) (not b!2573161) (not b!2573144) (not d!727850) (not b!2572886) (not bm!166150) (not b!2573109) (not b!2573095) (not d!727862) (not b!2573134) (not b!2573034) (not b!2573050) (not bm!166204) (not b!2572592) (not b!2572890) (not b!2572921) (not b!2572892) (not b!2572904) (not b!2572899) (not d!727856) (not bm!166201) (not bm!166196) (not b!2573094) (not b!2572679) (not d!727796) (not b!2573163) (not bm!166149) (not d!727820) (not b!2573125) (not d!727868) (not d!727764) (not bm!166172) (not b!2572900) (not b!2573055) (not b!2573033) (not b!2573172) (not b!2573121) (not b!2572943) (not b!2573035) (not b!2572593) (not bm!166178) (not d!727872) (not b!2573028) (not b!2572782) (not b!2573051) (not b!2572885) (not bm!166175) (not b!2573060) (not b!2572684) (not d!727768) (not b!2572538) (not b!2572539) (not b!2572678) (not bm!166200) tp_is_empty!13137 (not d!727792) (not b!2573170) (not d!727854) (not b!2573165) (not d!727772) (not b!2572905) (not d!727832) (not b!2573164) (not b!2573059) (not b!2573159) (not b!2573038) (not b!2573054) (not b!2573061) (not bm!166188) (not bm!166176) (not b!2573178) (not b!2572536) (not b!2573135) (not b!2572533) (not bm!166199) (not b!2573029) (not b!2573139) (not d!727846) (not b!2573120) (not d!727802) (not b!2572685) (not d!727828) (not b!2573181) (not d!727864) (not bm!166197) (not bm!166153) (not b!2573096) (not d!727852) (not bm!166174) (not b!2572906) (not b!2573064) (not d!727826) (not d!727766) (not b!2572879) (not b!2573130) (not d!727848) (not b!2573140) (not bm!166134) (not bm!166189) (not b!2573119) (not b!2573105) (not b!2573174) (not b!2573101) (not b!2573176) (not b!2572909) (not b!2573100) (not bm!166170) (not b!2573127) (not d!727836) (not b!2573052) (not b!2573177) (not b!2573160) (not d!727756) (not b!2573173) (not b!2572891) (not b!2573141) (not b!2572537) (not b!2573180) (not b!2573102) (not b!2572540) (not bm!166152))
(check-sat)
(get-model)

(declare-fun d!727950 () Bool)

(assert (=> d!727950 (= (head!5846 (_2!17344 lt!906169)) (h!35026 (_2!17344 lt!906169)))))

(assert (=> b!2573135 d!727950))

(declare-fun b!2573395 () Bool)

(declare-fun e!1623918 () Bool)

(declare-fun e!1623922 () Bool)

(assert (=> b!2573395 (= e!1623918 e!1623922)))

(declare-fun res!1082557 () Bool)

(declare-fun call!166268 () Bool)

(assert (=> b!2573395 (= res!1082557 call!166268)))

(assert (=> b!2573395 (=> (not res!1082557) (not e!1623922))))

(declare-fun call!166267 () Bool)

(declare-fun c!414328 () Bool)

(declare-fun bm!166262 () Bool)

(assert (=> bm!166262 (= call!166267 (nullable!2558 (ite c!414328 (regOne!15795 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)) (regTwo!15794 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))))

(declare-fun d!727954 () Bool)

(declare-fun res!1082559 () Bool)

(declare-fun e!1623919 () Bool)

(assert (=> d!727954 (=> res!1082559 e!1623919)))

(assert (=> d!727954 (= res!1082559 ((_ is EmptyExpr!7641) (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))

(assert (=> d!727954 (= (nullableFct!783 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)) e!1623919)))

(declare-fun b!2573396 () Bool)

(declare-fun e!1623920 () Bool)

(assert (=> b!2573396 (= e!1623920 e!1623918)))

(assert (=> b!2573396 (= c!414328 ((_ is Union!7641) (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))

(declare-fun b!2573397 () Bool)

(declare-fun e!1623923 () Bool)

(assert (=> b!2573397 (= e!1623923 e!1623920)))

(declare-fun res!1082560 () Bool)

(assert (=> b!2573397 (=> res!1082560 e!1623920)))

(assert (=> b!2573397 (= res!1082560 ((_ is Star!7641) (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))

(declare-fun b!2573398 () Bool)

(assert (=> b!2573398 (= e!1623922 call!166267)))

(declare-fun b!2573399 () Bool)

(declare-fun e!1623921 () Bool)

(assert (=> b!2573399 (= e!1623921 call!166268)))

(declare-fun bm!166263 () Bool)

(assert (=> bm!166263 (= call!166268 (nullable!2558 (ite c!414328 (regTwo!15795 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)) (regOne!15794 (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2573400 () Bool)

(assert (=> b!2573400 (= e!1623919 e!1623923)))

(declare-fun res!1082558 () Bool)

(assert (=> b!2573400 (=> (not res!1082558) (not e!1623923))))

(assert (=> b!2573400 (= res!1082558 (and (not ((_ is EmptyLang!7641) (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7641) (derivative!336 (derivativeStep!2210 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2573401 () Bool)

(assert (=> b!2573401 (= e!1623918 e!1623921)))

(declare-fun res!1082561 () Bool)

(assert (=> b!2573401 (= res!1082561 call!166267)))

(assert (=> b!2573401 (=> res!1082561 e!1623921)))

(assert (= (and d!727954 (not res!1082559)) b!2573400))

(assert (= (and b!2573400 res!1082558) b!2573397))

(assert (= (and b!2573397 (not res!1082560)) b!2573396))

(assert (= (and b!2573396 c!414328) b!2573401))

(assert (= (and b!2573396 (not c!414328)) b!2573395))

(assert (= (and b!2573401 (not res!1082561)) b!2573399))

(assert (= (and b!2573395 res!1082557) b!2573398))

(assert (= (or b!2573399 b!2573395) bm!166263))

(assert (= (or b!2573401 b!2573398) bm!166262))

(declare-fun m!2909047 () Bool)

(assert (=> bm!166262 m!2909047))

(declare-fun m!2909049 () Bool)

(assert (=> bm!166263 m!2909049))

(assert (=> d!727792 d!727954))

(declare-fun d!727974 () Bool)

(assert (not d!727974))

(assert (=> b!2573095 d!727974))

(declare-fun d!727976 () Bool)

(assert (not d!727976))

(assert (=> b!2573095 d!727976))

(declare-fun d!727978 () Bool)

(assert (=> d!727978 (= (isEmpty!17069 Nil!29606) true)))

(assert (=> d!727860 d!727978))

(declare-fun b!2573426 () Bool)

(declare-fun res!1082573 () Bool)

(declare-fun e!1623938 () Bool)

(assert (=> b!2573426 (=> res!1082573 e!1623938)))

(assert (=> b!2573426 (= res!1082573 (not ((_ is Concat!12337) lt!906178)))))

(declare-fun e!1623939 () Bool)

(assert (=> b!2573426 (= e!1623939 e!1623938)))

(declare-fun b!2573427 () Bool)

(declare-fun e!1623937 () Bool)

(declare-fun call!166276 () Bool)

(assert (=> b!2573427 (= e!1623937 call!166276)))

(declare-fun b!2573428 () Bool)

(declare-fun e!1623936 () Bool)

(declare-fun e!1623942 () Bool)

(assert (=> b!2573428 (= e!1623936 e!1623942)))

(declare-fun c!414337 () Bool)

(assert (=> b!2573428 (= c!414337 ((_ is Star!7641) lt!906178))))

(declare-fun b!2573430 () Bool)

(declare-fun res!1082572 () Bool)

(assert (=> b!2573430 (=> (not res!1082572) (not e!1623937))))

(declare-fun call!166275 () Bool)

(assert (=> b!2573430 (= res!1082572 call!166275)))

(assert (=> b!2573430 (= e!1623939 e!1623937)))

(declare-fun b!2573431 () Bool)

(assert (=> b!2573431 (= e!1623942 e!1623939)))

(declare-fun c!414338 () Bool)

(assert (=> b!2573431 (= c!414338 ((_ is Union!7641) lt!906178))))

(declare-fun b!2573432 () Bool)

(declare-fun e!1623941 () Bool)

(assert (=> b!2573432 (= e!1623941 call!166275)))

(declare-fun bm!166269 () Bool)

(declare-fun call!166274 () Bool)

(assert (=> bm!166269 (= call!166274 (validRegex!3267 (ite c!414337 (reg!7970 lt!906178) (ite c!414338 (regTwo!15795 lt!906178) (regOne!15794 lt!906178)))))))

(declare-fun b!2573433 () Bool)

(assert (=> b!2573433 (= e!1623938 e!1623941)))

(declare-fun res!1082571 () Bool)

(assert (=> b!2573433 (=> (not res!1082571) (not e!1623941))))

(assert (=> b!2573433 (= res!1082571 call!166276)))

(declare-fun bm!166270 () Bool)

(assert (=> bm!166270 (= call!166275 (validRegex!3267 (ite c!414338 (regOne!15795 lt!906178) (regTwo!15794 lt!906178))))))

(declare-fun b!2573434 () Bool)

(declare-fun e!1623940 () Bool)

(assert (=> b!2573434 (= e!1623942 e!1623940)))

(declare-fun res!1082574 () Bool)

(assert (=> b!2573434 (= res!1082574 (not (nullable!2558 (reg!7970 lt!906178))))))

(assert (=> b!2573434 (=> (not res!1082574) (not e!1623940))))

(declare-fun bm!166271 () Bool)

(assert (=> bm!166271 (= call!166276 call!166274)))

(declare-fun d!727982 () Bool)

(declare-fun res!1082570 () Bool)

(assert (=> d!727982 (=> res!1082570 e!1623936)))

(assert (=> d!727982 (= res!1082570 ((_ is ElementMatch!7641) lt!906178))))

(assert (=> d!727982 (= (validRegex!3267 lt!906178) e!1623936)))

(declare-fun b!2573429 () Bool)

(assert (=> b!2573429 (= e!1623940 call!166274)))

(assert (= (and d!727982 (not res!1082570)) b!2573428))

(assert (= (and b!2573428 c!414337) b!2573434))

(assert (= (and b!2573428 (not c!414337)) b!2573431))

(assert (= (and b!2573434 res!1082574) b!2573429))

(assert (= (and b!2573431 c!414338) b!2573430))

(assert (= (and b!2573431 (not c!414338)) b!2573426))

(assert (= (and b!2573430 res!1082572) b!2573427))

(assert (= (and b!2573426 (not res!1082573)) b!2573433))

(assert (= (and b!2573433 res!1082571) b!2573432))

(assert (= (or b!2573430 b!2573432) bm!166270))

(assert (= (or b!2573427 b!2573433) bm!166271))

(assert (= (or b!2573429 bm!166271) bm!166269))

(declare-fun m!2909067 () Bool)

(assert (=> bm!166269 m!2909067))

(declare-fun m!2909069 () Bool)

(assert (=> bm!166270 m!2909069))

(declare-fun m!2909071 () Bool)

(assert (=> b!2573434 m!2909071))

(assert (=> d!727860 d!727982))

(declare-fun d!727986 () Bool)

(assert (=> d!727986 (= (isDefined!4744 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068)) (not (isEmpty!17068 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068))))))

(declare-fun bs!470088 () Bool)

(assert (= bs!470088 d!727986))

(assert (=> bs!470088 m!2908437))

(declare-fun m!2909073 () Bool)

(assert (=> bs!470088 m!2909073))

(assert (=> d!727764 d!727986))

(assert (=> d!727764 d!727756))

(declare-fun d!727988 () Bool)

(assert (=> d!727988 (isDefined!4744 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) Nil!29606 tl!4068 tl!4068))))

(assert (=> d!727988 true))

(declare-fun _$122!352 () Unit!43463)

(assert (=> d!727988 (= (choose!15171 lt!906173 (regTwo!15794 r!27340) tl!4068) _$122!352)))

(declare-fun bs!470089 () Bool)

(assert (= bs!470089 d!727988))

(assert (=> bs!470089 m!2908437))

(assert (=> bs!470089 m!2908437))

(assert (=> bs!470089 m!2908497))

(assert (=> d!727764 d!727988))

(declare-fun b!2573488 () Bool)

(declare-fun res!1082591 () Bool)

(declare-fun e!1623974 () Bool)

(assert (=> b!2573488 (=> res!1082591 e!1623974)))

(assert (=> b!2573488 (= res!1082591 (not ((_ is Concat!12337) lt!906173)))))

(declare-fun e!1623975 () Bool)

(assert (=> b!2573488 (= e!1623975 e!1623974)))

(declare-fun b!2573489 () Bool)

(declare-fun e!1623973 () Bool)

(declare-fun call!166293 () Bool)

(assert (=> b!2573489 (= e!1623973 call!166293)))

(declare-fun b!2573490 () Bool)

(declare-fun e!1623972 () Bool)

(declare-fun e!1623978 () Bool)

(assert (=> b!2573490 (= e!1623972 e!1623978)))

(declare-fun c!414359 () Bool)

(assert (=> b!2573490 (= c!414359 ((_ is Star!7641) lt!906173))))

(declare-fun b!2573492 () Bool)

(declare-fun res!1082590 () Bool)

(assert (=> b!2573492 (=> (not res!1082590) (not e!1623973))))

(declare-fun call!166292 () Bool)

(assert (=> b!2573492 (= res!1082590 call!166292)))

(assert (=> b!2573492 (= e!1623975 e!1623973)))

(declare-fun b!2573493 () Bool)

(assert (=> b!2573493 (= e!1623978 e!1623975)))

(declare-fun c!414360 () Bool)

(assert (=> b!2573493 (= c!414360 ((_ is Union!7641) lt!906173))))

(declare-fun b!2573494 () Bool)

(declare-fun e!1623977 () Bool)

(assert (=> b!2573494 (= e!1623977 call!166292)))

(declare-fun bm!166286 () Bool)

(declare-fun call!166291 () Bool)

(assert (=> bm!166286 (= call!166291 (validRegex!3267 (ite c!414359 (reg!7970 lt!906173) (ite c!414360 (regTwo!15795 lt!906173) (regOne!15794 lt!906173)))))))

(declare-fun b!2573495 () Bool)

(assert (=> b!2573495 (= e!1623974 e!1623977)))

(declare-fun res!1082589 () Bool)

(assert (=> b!2573495 (=> (not res!1082589) (not e!1623977))))

(assert (=> b!2573495 (= res!1082589 call!166293)))

(declare-fun bm!166287 () Bool)

(assert (=> bm!166287 (= call!166292 (validRegex!3267 (ite c!414360 (regOne!15795 lt!906173) (regTwo!15794 lt!906173))))))

(declare-fun b!2573496 () Bool)

(declare-fun e!1623976 () Bool)

(assert (=> b!2573496 (= e!1623978 e!1623976)))

(declare-fun res!1082592 () Bool)

(assert (=> b!2573496 (= res!1082592 (not (nullable!2558 (reg!7970 lt!906173))))))

(assert (=> b!2573496 (=> (not res!1082592) (not e!1623976))))

(declare-fun bm!166288 () Bool)

(assert (=> bm!166288 (= call!166293 call!166291)))

(declare-fun d!728004 () Bool)

(declare-fun res!1082588 () Bool)

(assert (=> d!728004 (=> res!1082588 e!1623972)))

(assert (=> d!728004 (= res!1082588 ((_ is ElementMatch!7641) lt!906173))))

(assert (=> d!728004 (= (validRegex!3267 lt!906173) e!1623972)))

(declare-fun b!2573491 () Bool)

(assert (=> b!2573491 (= e!1623976 call!166291)))

(assert (= (and d!728004 (not res!1082588)) b!2573490))

(assert (= (and b!2573490 c!414359) b!2573496))

(assert (= (and b!2573490 (not c!414359)) b!2573493))

(assert (= (and b!2573496 res!1082592) b!2573491))

(assert (= (and b!2573493 c!414360) b!2573492))

(assert (= (and b!2573493 (not c!414360)) b!2573488))

(assert (= (and b!2573492 res!1082590) b!2573489))

(assert (= (and b!2573488 (not res!1082591)) b!2573495))

(assert (= (and b!2573495 res!1082589) b!2573494))

(assert (= (or b!2573492 b!2573494) bm!166287))

(assert (= (or b!2573489 b!2573495) bm!166288))

(assert (= (or b!2573491 bm!166288) bm!166286))

(declare-fun m!2909093 () Bool)

(assert (=> bm!166286 m!2909093))

(declare-fun m!2909097 () Bool)

(assert (=> bm!166287 m!2909097))

(declare-fun m!2909099 () Bool)

(assert (=> b!2573496 m!2909099))

(assert (=> d!727764 d!728004))

(declare-fun d!728006 () Bool)

(assert (=> d!728006 (= (isEmpty!17069 (tail!4121 tl!4068)) ((_ is Nil!29606) (tail!4121 tl!4068)))))

(assert (=> b!2573060 d!728006))

(declare-fun d!728014 () Bool)

(assert (=> d!728014 (= (tail!4121 tl!4068) (t!211405 tl!4068))))

(assert (=> b!2573060 d!728014))

(declare-fun d!728018 () Bool)

(assert (=> d!728018 (= (isEmpty!17069 (tail!4121 (_1!17344 lt!906169))) ((_ is Nil!29606) (tail!4121 (_1!17344 lt!906169))))))

(assert (=> b!2572678 d!728018))

(declare-fun d!728020 () Bool)

(assert (=> d!728020 (= (tail!4121 (_1!17344 lt!906169)) (t!211405 (_1!17344 lt!906169)))))

(assert (=> b!2572678 d!728020))

(declare-fun b!2573507 () Bool)

(declare-fun res!1082596 () Bool)

(declare-fun e!1623986 () Bool)

(assert (=> b!2573507 (=> res!1082596 e!1623986)))

(assert (=> b!2573507 (= res!1082596 (not ((_ is Concat!12337) lt!906226)))))

(declare-fun e!1623987 () Bool)

(assert (=> b!2573507 (= e!1623987 e!1623986)))

(declare-fun b!2573508 () Bool)

(declare-fun e!1623985 () Bool)

(declare-fun call!166299 () Bool)

(assert (=> b!2573508 (= e!1623985 call!166299)))

(declare-fun b!2573509 () Bool)

(declare-fun e!1623984 () Bool)

(declare-fun e!1623990 () Bool)

(assert (=> b!2573509 (= e!1623984 e!1623990)))

(declare-fun c!414366 () Bool)

(assert (=> b!2573509 (= c!414366 ((_ is Star!7641) lt!906226))))

(declare-fun b!2573511 () Bool)

(declare-fun res!1082595 () Bool)

(assert (=> b!2573511 (=> (not res!1082595) (not e!1623985))))

(declare-fun call!166298 () Bool)

(assert (=> b!2573511 (= res!1082595 call!166298)))

(assert (=> b!2573511 (= e!1623987 e!1623985)))

(declare-fun b!2573512 () Bool)

(assert (=> b!2573512 (= e!1623990 e!1623987)))

(declare-fun c!414367 () Bool)

(assert (=> b!2573512 (= c!414367 ((_ is Union!7641) lt!906226))))

(declare-fun b!2573513 () Bool)

(declare-fun e!1623989 () Bool)

(assert (=> b!2573513 (= e!1623989 call!166298)))

(declare-fun call!166297 () Bool)

(declare-fun bm!166292 () Bool)

(assert (=> bm!166292 (= call!166297 (validRegex!3267 (ite c!414366 (reg!7970 lt!906226) (ite c!414367 (regTwo!15795 lt!906226) (regOne!15794 lt!906226)))))))

(declare-fun b!2573514 () Bool)

(assert (=> b!2573514 (= e!1623986 e!1623989)))

(declare-fun res!1082594 () Bool)

(assert (=> b!2573514 (=> (not res!1082594) (not e!1623989))))

(assert (=> b!2573514 (= res!1082594 call!166299)))

(declare-fun bm!166293 () Bool)

(assert (=> bm!166293 (= call!166298 (validRegex!3267 (ite c!414367 (regOne!15795 lt!906226) (regTwo!15794 lt!906226))))))

(declare-fun b!2573515 () Bool)

(declare-fun e!1623988 () Bool)

(assert (=> b!2573515 (= e!1623990 e!1623988)))

(declare-fun res!1082597 () Bool)

(assert (=> b!2573515 (= res!1082597 (not (nullable!2558 (reg!7970 lt!906226))))))

(assert (=> b!2573515 (=> (not res!1082597) (not e!1623988))))

(declare-fun bm!166294 () Bool)

(assert (=> bm!166294 (= call!166299 call!166297)))

(declare-fun d!728022 () Bool)

(declare-fun res!1082593 () Bool)

(assert (=> d!728022 (=> res!1082593 e!1623984)))

(assert (=> d!728022 (= res!1082593 ((_ is ElementMatch!7641) lt!906226))))

(assert (=> d!728022 (= (validRegex!3267 lt!906226) e!1623984)))

(declare-fun b!2573510 () Bool)

(assert (=> b!2573510 (= e!1623988 call!166297)))

(assert (= (and d!728022 (not res!1082593)) b!2573509))

(assert (= (and b!2573509 c!414366) b!2573515))

(assert (= (and b!2573509 (not c!414366)) b!2573512))

(assert (= (and b!2573515 res!1082597) b!2573510))

(assert (= (and b!2573512 c!414367) b!2573511))

(assert (= (and b!2573512 (not c!414367)) b!2573507))

(assert (= (and b!2573511 res!1082595) b!2573508))

(assert (= (and b!2573507 (not res!1082596)) b!2573514))

(assert (= (and b!2573514 res!1082594) b!2573513))

(assert (= (or b!2573511 b!2573513) bm!166293))

(assert (= (or b!2573508 b!2573514) bm!166294))

(assert (= (or b!2573510 bm!166294) bm!166292))

(declare-fun m!2909113 () Bool)

(assert (=> bm!166292 m!2909113))

(declare-fun m!2909115 () Bool)

(assert (=> bm!166293 m!2909115))

(declare-fun m!2909117 () Bool)

(assert (=> b!2573515 m!2909117))

(assert (=> d!727796 d!728022))

(declare-fun b!2573516 () Bool)

(declare-fun res!1082601 () Bool)

(declare-fun e!1623993 () Bool)

(assert (=> b!2573516 (=> res!1082601 e!1623993)))

(assert (=> b!2573516 (= res!1082601 (not ((_ is Concat!12337) (derivativeStep!2210 r!27340 c!14016))))))

(declare-fun e!1623994 () Bool)

(assert (=> b!2573516 (= e!1623994 e!1623993)))

(declare-fun b!2573517 () Bool)

(declare-fun e!1623992 () Bool)

(declare-fun call!166302 () Bool)

(assert (=> b!2573517 (= e!1623992 call!166302)))

(declare-fun b!2573518 () Bool)

(declare-fun e!1623991 () Bool)

(declare-fun e!1623997 () Bool)

(assert (=> b!2573518 (= e!1623991 e!1623997)))

(declare-fun c!414368 () Bool)

(assert (=> b!2573518 (= c!414368 ((_ is Star!7641) (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun b!2573520 () Bool)

(declare-fun res!1082600 () Bool)

(assert (=> b!2573520 (=> (not res!1082600) (not e!1623992))))

(declare-fun call!166301 () Bool)

(assert (=> b!2573520 (= res!1082600 call!166301)))

(assert (=> b!2573520 (= e!1623994 e!1623992)))

(declare-fun b!2573521 () Bool)

(assert (=> b!2573521 (= e!1623997 e!1623994)))

(declare-fun c!414369 () Bool)

(assert (=> b!2573521 (= c!414369 ((_ is Union!7641) (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun b!2573522 () Bool)

(declare-fun e!1623996 () Bool)

(assert (=> b!2573522 (= e!1623996 call!166301)))

(declare-fun call!166300 () Bool)

(declare-fun bm!166295 () Bool)

(assert (=> bm!166295 (= call!166300 (validRegex!3267 (ite c!414368 (reg!7970 (derivativeStep!2210 r!27340 c!14016)) (ite c!414369 (regTwo!15795 (derivativeStep!2210 r!27340 c!14016)) (regOne!15794 (derivativeStep!2210 r!27340 c!14016))))))))

(declare-fun b!2573523 () Bool)

(assert (=> b!2573523 (= e!1623993 e!1623996)))

(declare-fun res!1082599 () Bool)

(assert (=> b!2573523 (=> (not res!1082599) (not e!1623996))))

(assert (=> b!2573523 (= res!1082599 call!166302)))

(declare-fun bm!166296 () Bool)

(assert (=> bm!166296 (= call!166301 (validRegex!3267 (ite c!414369 (regOne!15795 (derivativeStep!2210 r!27340 c!14016)) (regTwo!15794 (derivativeStep!2210 r!27340 c!14016)))))))

(declare-fun b!2573524 () Bool)

(declare-fun e!1623995 () Bool)

(assert (=> b!2573524 (= e!1623997 e!1623995)))

(declare-fun res!1082602 () Bool)

(assert (=> b!2573524 (= res!1082602 (not (nullable!2558 (reg!7970 (derivativeStep!2210 r!27340 c!14016)))))))

(assert (=> b!2573524 (=> (not res!1082602) (not e!1623995))))

(declare-fun bm!166297 () Bool)

(assert (=> bm!166297 (= call!166302 call!166300)))

(declare-fun d!728026 () Bool)

(declare-fun res!1082598 () Bool)

(assert (=> d!728026 (=> res!1082598 e!1623991)))

(assert (=> d!728026 (= res!1082598 ((_ is ElementMatch!7641) (derivativeStep!2210 r!27340 c!14016)))))

(assert (=> d!728026 (= (validRegex!3267 (derivativeStep!2210 r!27340 c!14016)) e!1623991)))

(declare-fun b!2573519 () Bool)

(assert (=> b!2573519 (= e!1623995 call!166300)))

(assert (= (and d!728026 (not res!1082598)) b!2573518))

(assert (= (and b!2573518 c!414368) b!2573524))

(assert (= (and b!2573518 (not c!414368)) b!2573521))

(assert (= (and b!2573524 res!1082602) b!2573519))

(assert (= (and b!2573521 c!414369) b!2573520))

(assert (= (and b!2573521 (not c!414369)) b!2573516))

(assert (= (and b!2573520 res!1082600) b!2573517))

(assert (= (and b!2573516 (not res!1082601)) b!2573523))

(assert (= (and b!2573523 res!1082599) b!2573522))

(assert (= (or b!2573520 b!2573522) bm!166296))

(assert (= (or b!2573517 b!2573523) bm!166297))

(assert (= (or b!2573519 bm!166297) bm!166295))

(declare-fun m!2909119 () Bool)

(assert (=> bm!166295 m!2909119))

(declare-fun m!2909121 () Bool)

(assert (=> bm!166296 m!2909121))

(declare-fun m!2909123 () Bool)

(assert (=> b!2573524 m!2909123))

(assert (=> d!727796 d!728026))

(assert (=> d!727826 d!727978))

(declare-fun b!2573525 () Bool)

(declare-fun res!1082606 () Bool)

(declare-fun e!1624000 () Bool)

(assert (=> b!2573525 (=> res!1082606 e!1624000)))

(assert (=> b!2573525 (= res!1082606 (not ((_ is Concat!12337) (derivative!336 lt!906180 tl!4068))))))

(declare-fun e!1624001 () Bool)

(assert (=> b!2573525 (= e!1624001 e!1624000)))

(declare-fun b!2573526 () Bool)

(declare-fun e!1623999 () Bool)

(declare-fun call!166305 () Bool)

(assert (=> b!2573526 (= e!1623999 call!166305)))

(declare-fun b!2573527 () Bool)

(declare-fun e!1623998 () Bool)

(declare-fun e!1624004 () Bool)

(assert (=> b!2573527 (= e!1623998 e!1624004)))

(declare-fun c!414370 () Bool)

(assert (=> b!2573527 (= c!414370 ((_ is Star!7641) (derivative!336 lt!906180 tl!4068)))))

(declare-fun b!2573529 () Bool)

(declare-fun res!1082605 () Bool)

(assert (=> b!2573529 (=> (not res!1082605) (not e!1623999))))

(declare-fun call!166304 () Bool)

(assert (=> b!2573529 (= res!1082605 call!166304)))

(assert (=> b!2573529 (= e!1624001 e!1623999)))

(declare-fun b!2573530 () Bool)

(assert (=> b!2573530 (= e!1624004 e!1624001)))

(declare-fun c!414371 () Bool)

(assert (=> b!2573530 (= c!414371 ((_ is Union!7641) (derivative!336 lt!906180 tl!4068)))))

(declare-fun b!2573531 () Bool)

(declare-fun e!1624003 () Bool)

(assert (=> b!2573531 (= e!1624003 call!166304)))

(declare-fun call!166303 () Bool)

(declare-fun bm!166298 () Bool)

(assert (=> bm!166298 (= call!166303 (validRegex!3267 (ite c!414370 (reg!7970 (derivative!336 lt!906180 tl!4068)) (ite c!414371 (regTwo!15795 (derivative!336 lt!906180 tl!4068)) (regOne!15794 (derivative!336 lt!906180 tl!4068))))))))

(declare-fun b!2573532 () Bool)

(assert (=> b!2573532 (= e!1624000 e!1624003)))

(declare-fun res!1082604 () Bool)

(assert (=> b!2573532 (=> (not res!1082604) (not e!1624003))))

(assert (=> b!2573532 (= res!1082604 call!166305)))

(declare-fun bm!166299 () Bool)

(assert (=> bm!166299 (= call!166304 (validRegex!3267 (ite c!414371 (regOne!15795 (derivative!336 lt!906180 tl!4068)) (regTwo!15794 (derivative!336 lt!906180 tl!4068)))))))

(declare-fun b!2573533 () Bool)

(declare-fun e!1624002 () Bool)

(assert (=> b!2573533 (= e!1624004 e!1624002)))

(declare-fun res!1082607 () Bool)

(assert (=> b!2573533 (= res!1082607 (not (nullable!2558 (reg!7970 (derivative!336 lt!906180 tl!4068)))))))

(assert (=> b!2573533 (=> (not res!1082607) (not e!1624002))))

(declare-fun bm!166300 () Bool)

(assert (=> bm!166300 (= call!166305 call!166303)))

(declare-fun d!728028 () Bool)

(declare-fun res!1082603 () Bool)

(assert (=> d!728028 (=> res!1082603 e!1623998)))

(assert (=> d!728028 (= res!1082603 ((_ is ElementMatch!7641) (derivative!336 lt!906180 tl!4068)))))

(assert (=> d!728028 (= (validRegex!3267 (derivative!336 lt!906180 tl!4068)) e!1623998)))

(declare-fun b!2573528 () Bool)

(assert (=> b!2573528 (= e!1624002 call!166303)))

(assert (= (and d!728028 (not res!1082603)) b!2573527))

(assert (= (and b!2573527 c!414370) b!2573533))

(assert (= (and b!2573527 (not c!414370)) b!2573530))

(assert (= (and b!2573533 res!1082607) b!2573528))

(assert (= (and b!2573530 c!414371) b!2573529))

(assert (= (and b!2573530 (not c!414371)) b!2573525))

(assert (= (and b!2573529 res!1082605) b!2573526))

(assert (= (and b!2573525 (not res!1082606)) b!2573532))

(assert (= (and b!2573532 res!1082604) b!2573531))

(assert (= (or b!2573529 b!2573531) bm!166299))

(assert (= (or b!2573526 b!2573532) bm!166300))

(assert (= (or b!2573528 bm!166300) bm!166298))

(declare-fun m!2909125 () Bool)

(assert (=> bm!166298 m!2909125))

(declare-fun m!2909127 () Bool)

(assert (=> bm!166299 m!2909127))

(declare-fun m!2909129 () Bool)

(assert (=> b!2573533 m!2909129))

(assert (=> d!727826 d!728028))

(assert (=> b!2572899 d!727974))

(assert (=> b!2572899 d!727976))

(declare-fun b!2573534 () Bool)

(declare-fun res!1082611 () Bool)

(declare-fun e!1624007 () Bool)

(assert (=> b!2573534 (=> (not res!1082611) (not e!1624007))))

(assert (=> b!2573534 (= res!1082611 (isEmpty!17069 (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2573535 () Bool)

(declare-fun e!1624005 () Bool)

(assert (=> b!2573535 (= e!1624005 (not (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068))))))))

(declare-fun b!2573536 () Bool)

(declare-fun res!1082609 () Bool)

(declare-fun e!1624006 () Bool)

(assert (=> b!2573536 (=> res!1082609 e!1624006)))

(assert (=> b!2573536 (= res!1082609 e!1624007)))

(declare-fun res!1082613 () Bool)

(assert (=> b!2573536 (=> (not res!1082613) (not e!1624007))))

(declare-fun lt!906299 () Bool)

(assert (=> b!2573536 (= res!1082613 lt!906299)))

(declare-fun b!2573537 () Bool)

(declare-fun e!1624010 () Bool)

(assert (=> b!2573537 (= e!1624010 (not lt!906299))))

(declare-fun d!728030 () Bool)

(declare-fun e!1624011 () Bool)

(assert (=> d!728030 e!1624011))

(declare-fun c!414372 () Bool)

(assert (=> d!728030 (= c!414372 ((_ is EmptyExpr!7641) (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068))))))

(declare-fun e!1624009 () Bool)

(assert (=> d!728030 (= lt!906299 e!1624009)))

(declare-fun c!414374 () Bool)

(assert (=> d!728030 (= c!414374 (isEmpty!17069 (tail!4121 tl!4068)))))

(assert (=> d!728030 (validRegex!3267 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)))))

(assert (=> d!728030 (= (matchR!3584 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)) (tail!4121 tl!4068)) lt!906299)))

(declare-fun b!2573538 () Bool)

(declare-fun res!1082610 () Bool)

(assert (=> b!2573538 (=> res!1082610 e!1624006)))

(assert (=> b!2573538 (= res!1082610 (not ((_ is ElementMatch!7641) (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)))))))

(assert (=> b!2573538 (= e!1624010 e!1624006)))

(declare-fun b!2573539 () Bool)

(assert (=> b!2573539 (= e!1624007 (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)))))))

(declare-fun b!2573540 () Bool)

(declare-fun res!1082608 () Bool)

(assert (=> b!2573540 (=> res!1082608 e!1624005)))

(assert (=> b!2573540 (= res!1082608 (not (isEmpty!17069 (tail!4121 (tail!4121 tl!4068)))))))

(declare-fun b!2573541 () Bool)

(assert (=> b!2573541 (= e!1624009 (nullable!2558 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068))))))

(declare-fun b!2573542 () Bool)

(declare-fun call!166306 () Bool)

(assert (=> b!2573542 (= e!1624011 (= lt!906299 call!166306))))

(declare-fun bm!166301 () Bool)

(assert (=> bm!166301 (= call!166306 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2573543 () Bool)

(declare-fun res!1082615 () Bool)

(assert (=> b!2573543 (=> (not res!1082615) (not e!1624007))))

(assert (=> b!2573543 (= res!1082615 (not call!166306))))

(declare-fun b!2573544 () Bool)

(assert (=> b!2573544 (= e!1624009 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)) (head!5846 (tail!4121 tl!4068))) (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2573545 () Bool)

(assert (=> b!2573545 (= e!1624011 e!1624010)))

(declare-fun c!414373 () Bool)

(assert (=> b!2573545 (= c!414373 ((_ is EmptyLang!7641) (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068))))))

(declare-fun b!2573546 () Bool)

(declare-fun e!1624008 () Bool)

(assert (=> b!2573546 (= e!1624006 e!1624008)))

(declare-fun res!1082612 () Bool)

(assert (=> b!2573546 (=> (not res!1082612) (not e!1624008))))

(assert (=> b!2573546 (= res!1082612 (not lt!906299))))

(declare-fun b!2573547 () Bool)

(assert (=> b!2573547 (= e!1624008 e!1624005)))

(declare-fun res!1082614 () Bool)

(assert (=> b!2573547 (=> res!1082614 e!1624005)))

(assert (=> b!2573547 (= res!1082614 call!166306)))

(assert (= (and d!728030 c!414374) b!2573541))

(assert (= (and d!728030 (not c!414374)) b!2573544))

(assert (= (and d!728030 c!414372) b!2573542))

(assert (= (and d!728030 (not c!414372)) b!2573545))

(assert (= (and b!2573545 c!414373) b!2573537))

(assert (= (and b!2573545 (not c!414373)) b!2573538))

(assert (= (and b!2573538 (not res!1082610)) b!2573536))

(assert (= (and b!2573536 res!1082613) b!2573543))

(assert (= (and b!2573543 res!1082615) b!2573534))

(assert (= (and b!2573534 res!1082611) b!2573539))

(assert (= (and b!2573536 (not res!1082609)) b!2573546))

(assert (= (and b!2573546 res!1082612) b!2573547))

(assert (= (and b!2573547 (not res!1082614)) b!2573540))

(assert (= (and b!2573540 (not res!1082608)) b!2573535))

(assert (= (or b!2573542 b!2573543 b!2573547) bm!166301))

(assert (=> b!2573534 m!2908811))

(declare-fun m!2909131 () Bool)

(assert (=> b!2573534 m!2909131))

(assert (=> b!2573534 m!2909131))

(declare-fun m!2909133 () Bool)

(assert (=> b!2573534 m!2909133))

(assert (=> b!2573544 m!2908811))

(declare-fun m!2909135 () Bool)

(assert (=> b!2573544 m!2909135))

(assert (=> b!2573544 m!2908875))

(assert (=> b!2573544 m!2909135))

(declare-fun m!2909137 () Bool)

(assert (=> b!2573544 m!2909137))

(assert (=> b!2573544 m!2908811))

(assert (=> b!2573544 m!2909131))

(assert (=> b!2573544 m!2909137))

(assert (=> b!2573544 m!2909131))

(declare-fun m!2909139 () Bool)

(assert (=> b!2573544 m!2909139))

(assert (=> b!2573540 m!2908811))

(assert (=> b!2573540 m!2909131))

(assert (=> b!2573540 m!2909131))

(assert (=> b!2573540 m!2909133))

(assert (=> bm!166301 m!2908811))

(assert (=> bm!166301 m!2908813))

(assert (=> b!2573541 m!2908875))

(declare-fun m!2909141 () Bool)

(assert (=> b!2573541 m!2909141))

(assert (=> b!2573535 m!2908811))

(assert (=> b!2573535 m!2909135))

(assert (=> d!728030 m!2908811))

(assert (=> d!728030 m!2908813))

(assert (=> d!728030 m!2908875))

(declare-fun m!2909143 () Bool)

(assert (=> d!728030 m!2909143))

(assert (=> b!2573539 m!2908811))

(assert (=> b!2573539 m!2909135))

(assert (=> b!2573130 d!728030))

(declare-fun d!728034 () Bool)

(declare-fun lt!906301 () Regex!7641)

(assert (=> d!728034 (validRegex!3267 lt!906301)))

(declare-fun e!1624023 () Regex!7641)

(assert (=> d!728034 (= lt!906301 e!1624023)))

(declare-fun c!414381 () Bool)

(assert (=> d!728034 (= c!414381 (or ((_ is EmptyExpr!7641) EmptyLang!7641) ((_ is EmptyLang!7641) EmptyLang!7641)))))

(assert (=> d!728034 (validRegex!3267 EmptyLang!7641)))

(assert (=> d!728034 (= (derivativeStep!2210 EmptyLang!7641 (head!5846 tl!4068)) lt!906301)))

(declare-fun b!2573562 () Bool)

(declare-fun e!1624020 () Regex!7641)

(declare-fun call!166311 () Regex!7641)

(assert (=> b!2573562 (= e!1624020 (Union!7641 (Concat!12337 call!166311 (regTwo!15794 EmptyLang!7641)) EmptyLang!7641))))

(declare-fun c!414380 () Bool)

(declare-fun call!166310 () Regex!7641)

(declare-fun bm!166303 () Bool)

(declare-fun c!414382 () Bool)

(assert (=> bm!166303 (= call!166310 (derivativeStep!2210 (ite c!414380 (regOne!15795 EmptyLang!7641) (ite c!414382 (reg!7970 EmptyLang!7641) (regOne!15794 EmptyLang!7641))) (head!5846 tl!4068)))))

(declare-fun bm!166304 () Bool)

(declare-fun call!166308 () Regex!7641)

(assert (=> bm!166304 (= call!166311 call!166308)))

(declare-fun bm!166305 () Bool)

(declare-fun call!166309 () Regex!7641)

(assert (=> bm!166305 (= call!166309 (derivativeStep!2210 (ite c!414380 (regTwo!15795 EmptyLang!7641) (regTwo!15794 EmptyLang!7641)) (head!5846 tl!4068)))))

(declare-fun b!2573563 () Bool)

(declare-fun e!1624021 () Regex!7641)

(assert (=> b!2573563 (= e!1624021 (ite (= (head!5846 tl!4068) (c!414083 EmptyLang!7641)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2573564 () Bool)

(assert (=> b!2573564 (= e!1624023 e!1624021)))

(declare-fun c!414379 () Bool)

(assert (=> b!2573564 (= c!414379 ((_ is ElementMatch!7641) EmptyLang!7641))))

(declare-fun b!2573565 () Bool)

(assert (=> b!2573565 (= c!414380 ((_ is Union!7641) EmptyLang!7641))))

(declare-fun e!1624019 () Regex!7641)

(assert (=> b!2573565 (= e!1624021 e!1624019)))

(declare-fun bm!166306 () Bool)

(assert (=> bm!166306 (= call!166308 call!166310)))

(declare-fun b!2573566 () Bool)

(declare-fun c!414378 () Bool)

(assert (=> b!2573566 (= c!414378 (nullable!2558 (regOne!15794 EmptyLang!7641)))))

(declare-fun e!1624022 () Regex!7641)

(assert (=> b!2573566 (= e!1624022 e!1624020)))

(declare-fun b!2573567 () Bool)

(assert (=> b!2573567 (= e!1624022 (Concat!12337 call!166308 EmptyLang!7641))))

(declare-fun b!2573568 () Bool)

(assert (=> b!2573568 (= e!1624019 (Union!7641 call!166310 call!166309))))

(declare-fun b!2573569 () Bool)

(assert (=> b!2573569 (= e!1624020 (Union!7641 (Concat!12337 call!166311 (regTwo!15794 EmptyLang!7641)) call!166309))))

(declare-fun b!2573570 () Bool)

(assert (=> b!2573570 (= e!1624019 e!1624022)))

(assert (=> b!2573570 (= c!414382 ((_ is Star!7641) EmptyLang!7641))))

(declare-fun b!2573571 () Bool)

(assert (=> b!2573571 (= e!1624023 EmptyLang!7641)))

(assert (= (and d!728034 c!414381) b!2573571))

(assert (= (and d!728034 (not c!414381)) b!2573564))

(assert (= (and b!2573564 c!414379) b!2573563))

(assert (= (and b!2573564 (not c!414379)) b!2573565))

(assert (= (and b!2573565 c!414380) b!2573568))

(assert (= (and b!2573565 (not c!414380)) b!2573570))

(assert (= (and b!2573570 c!414382) b!2573567))

(assert (= (and b!2573570 (not c!414382)) b!2573566))

(assert (= (and b!2573566 c!414378) b!2573569))

(assert (= (and b!2573566 (not c!414378)) b!2573562))

(assert (= (or b!2573569 b!2573562) bm!166304))

(assert (= (or b!2573567 bm!166304) bm!166306))

(assert (= (or b!2573568 b!2573569) bm!166305))

(assert (= (or b!2573568 bm!166306) bm!166303))

(declare-fun m!2909153 () Bool)

(assert (=> d!728034 m!2909153))

(assert (=> d!728034 m!2908755))

(assert (=> bm!166303 m!2908815))

(declare-fun m!2909155 () Bool)

(assert (=> bm!166303 m!2909155))

(assert (=> bm!166305 m!2908815))

(declare-fun m!2909157 () Bool)

(assert (=> bm!166305 m!2909157))

(declare-fun m!2909159 () Bool)

(assert (=> b!2573566 m!2909159))

(assert (=> b!2573130 d!728034))

(declare-fun d!728038 () Bool)

(assert (=> d!728038 (= (head!5846 tl!4068) (h!35026 tl!4068))))

(assert (=> b!2573130 d!728038))

(assert (=> b!2573130 d!728014))

(assert (=> b!2572879 d!727856))

(declare-fun d!728040 () Bool)

(assert (=> d!728040 (= (isEmpty!17069 (Cons!29606 c!14016 (_1!17344 lt!906169))) ((_ is Nil!29606) (Cons!29606 c!14016 (_1!17344 lt!906169))))))

(assert (=> d!727820 d!728040))

(assert (=> d!727820 d!727858))

(declare-fun d!728044 () Bool)

(assert (=> d!728044 (= (isEmpty!17069 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))) ((_ is Nil!29606) (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(assert (=> b!2572885 d!728044))

(declare-fun d!728046 () Bool)

(assert (=> d!728046 (= (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169))) (t!211405 (Cons!29606 c!14016 (_1!17344 lt!906169))))))

(assert (=> b!2572885 d!728046))

(assert (=> b!2573028 d!728006))

(assert (=> b!2573028 d!728014))

(declare-fun b!2573581 () Bool)

(declare-fun res!1082632 () Bool)

(declare-fun e!1624033 () Bool)

(assert (=> b!2573581 (=> res!1082632 e!1624033)))

(assert (=> b!2573581 (= res!1082632 (not ((_ is Concat!12337) (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))))

(declare-fun e!1624034 () Bool)

(assert (=> b!2573581 (= e!1624034 e!1624033)))

(declare-fun b!2573582 () Bool)

(declare-fun e!1624032 () Bool)

(declare-fun call!166317 () Bool)

(assert (=> b!2573582 (= e!1624032 call!166317)))

(declare-fun b!2573583 () Bool)

(declare-fun e!1624031 () Bool)

(declare-fun e!1624037 () Bool)

(assert (=> b!2573583 (= e!1624031 e!1624037)))

(declare-fun c!414385 () Bool)

(assert (=> b!2573583 (= c!414385 ((_ is Star!7641) (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2573585 () Bool)

(declare-fun res!1082631 () Bool)

(assert (=> b!2573585 (=> (not res!1082631) (not e!1624032))))

(declare-fun call!166316 () Bool)

(assert (=> b!2573585 (= res!1082631 call!166316)))

(assert (=> b!2573585 (= e!1624034 e!1624032)))

(declare-fun b!2573586 () Bool)

(assert (=> b!2573586 (= e!1624037 e!1624034)))

(declare-fun c!414386 () Bool)

(assert (=> b!2573586 (= c!414386 ((_ is Union!7641) (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2573587 () Bool)

(declare-fun e!1624036 () Bool)

(assert (=> b!2573587 (= e!1624036 call!166316)))

(declare-fun call!166315 () Bool)

(declare-fun bm!166310 () Bool)

(assert (=> bm!166310 (= call!166315 (validRegex!3267 (ite c!414385 (reg!7970 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (ite c!414386 (regTwo!15795 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (regOne!15794 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))))))

(declare-fun b!2573588 () Bool)

(assert (=> b!2573588 (= e!1624033 e!1624036)))

(declare-fun res!1082630 () Bool)

(assert (=> b!2573588 (=> (not res!1082630) (not e!1624036))))

(assert (=> b!2573588 (= res!1082630 call!166317)))

(declare-fun bm!166311 () Bool)

(assert (=> bm!166311 (= call!166316 (validRegex!3267 (ite c!414386 (regOne!15795 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (regTwo!15794 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))))

(declare-fun b!2573589 () Bool)

(declare-fun e!1624035 () Bool)

(assert (=> b!2573589 (= e!1624037 e!1624035)))

(declare-fun res!1082633 () Bool)

(assert (=> b!2573589 (= res!1082633 (not (nullable!2558 (reg!7970 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))))

(assert (=> b!2573589 (=> (not res!1082633) (not e!1624035))))

(declare-fun bm!166312 () Bool)

(assert (=> bm!166312 (= call!166317 call!166315)))

(declare-fun d!728048 () Bool)

(declare-fun res!1082629 () Bool)

(assert (=> d!728048 (=> res!1082629 e!1624031)))

(assert (=> d!728048 (= res!1082629 ((_ is ElementMatch!7641) (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(assert (=> d!728048 (= (validRegex!3267 (ite c!414256 (reg!7970 (regOne!15794 r!27340)) (ite c!414257 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) e!1624031)))

(declare-fun b!2573584 () Bool)

(assert (=> b!2573584 (= e!1624035 call!166315)))

(assert (= (and d!728048 (not res!1082629)) b!2573583))

(assert (= (and b!2573583 c!414385) b!2573589))

(assert (= (and b!2573583 (not c!414385)) b!2573586))

(assert (= (and b!2573589 res!1082633) b!2573584))

(assert (= (and b!2573586 c!414386) b!2573585))

(assert (= (and b!2573586 (not c!414386)) b!2573581))

(assert (= (and b!2573585 res!1082631) b!2573582))

(assert (= (and b!2573581 (not res!1082632)) b!2573588))

(assert (= (and b!2573588 res!1082630) b!2573587))

(assert (= (or b!2573585 b!2573587) bm!166311))

(assert (= (or b!2573582 b!2573588) bm!166312))

(assert (= (or b!2573584 bm!166312) bm!166310))

(declare-fun m!2909169 () Bool)

(assert (=> bm!166310 m!2909169))

(declare-fun m!2909171 () Bool)

(assert (=> bm!166311 m!2909171))

(declare-fun m!2909173 () Bool)

(assert (=> b!2573589 m!2909173))

(assert (=> bm!166196 d!728048))

(assert (=> bm!166199 d!727978))

(declare-fun d!728052 () Bool)

(assert (=> d!728052 (= (nullable!2558 EmptyLang!7641) false)))

(assert (=> b!2573127 d!728052))

(declare-fun b!2573592 () Bool)

(declare-fun res!1082634 () Bool)

(declare-fun e!1624039 () Bool)

(assert (=> b!2573592 (=> (not res!1082634) (not e!1624039))))

(declare-fun lt!906302 () List!29706)

(assert (=> b!2573592 (= res!1082634 (= (size!22965 lt!906302) (+ (size!22965 (t!211405 (_1!17344 lt!906169))) (size!22965 (_2!17344 lt!906169)))))))

(declare-fun b!2573590 () Bool)

(declare-fun e!1624038 () List!29706)

(assert (=> b!2573590 (= e!1624038 (_2!17344 lt!906169))))

(declare-fun b!2573593 () Bool)

(assert (=> b!2573593 (= e!1624039 (or (not (= (_2!17344 lt!906169) Nil!29606)) (= lt!906302 (t!211405 (_1!17344 lt!906169)))))))

(declare-fun b!2573591 () Bool)

(assert (=> b!2573591 (= e!1624038 (Cons!29606 (h!35026 (t!211405 (_1!17344 lt!906169))) (++!7280 (t!211405 (t!211405 (_1!17344 lt!906169))) (_2!17344 lt!906169))))))

(declare-fun d!728054 () Bool)

(assert (=> d!728054 e!1624039))

(declare-fun res!1082635 () Bool)

(assert (=> d!728054 (=> (not res!1082635) (not e!1624039))))

(assert (=> d!728054 (= res!1082635 (= (content!4085 lt!906302) ((_ map or) (content!4085 (t!211405 (_1!17344 lt!906169))) (content!4085 (_2!17344 lt!906169)))))))

(assert (=> d!728054 (= lt!906302 e!1624038)))

(declare-fun c!414387 () Bool)

(assert (=> d!728054 (= c!414387 ((_ is Nil!29606) (t!211405 (_1!17344 lt!906169))))))

(assert (=> d!728054 (= (++!7280 (t!211405 (_1!17344 lt!906169)) (_2!17344 lt!906169)) lt!906302)))

(assert (= (and d!728054 c!414387) b!2573590))

(assert (= (and d!728054 (not c!414387)) b!2573591))

(assert (= (and d!728054 res!1082635) b!2573592))

(assert (= (and b!2573592 res!1082634) b!2573593))

(declare-fun m!2909175 () Bool)

(assert (=> b!2573592 m!2909175))

(declare-fun m!2909177 () Bool)

(assert (=> b!2573592 m!2909177))

(assert (=> b!2573592 m!2908521))

(declare-fun m!2909179 () Bool)

(assert (=> b!2573591 m!2909179))

(declare-fun m!2909181 () Bool)

(assert (=> d!728054 m!2909181))

(declare-fun m!2909183 () Bool)

(assert (=> d!728054 m!2909183))

(assert (=> d!728054 m!2908529))

(assert (=> b!2572592 d!728054))

(declare-fun d!728056 () Bool)

(assert (=> d!728056 (= (isEmpty!17069 (tail!4121 (_2!17344 lt!906169))) ((_ is Nil!29606) (tail!4121 (_2!17344 lt!906169))))))

(assert (=> b!2573140 d!728056))

(declare-fun d!728058 () Bool)

(assert (=> d!728058 (= (tail!4121 (_2!17344 lt!906169)) (t!211405 (_2!17344 lt!906169)))))

(assert (=> b!2573140 d!728058))

(declare-fun d!728060 () Bool)

(declare-fun lt!906303 () Regex!7641)

(assert (=> d!728060 (validRegex!3267 lt!906303)))

(declare-fun e!1624040 () Regex!7641)

(assert (=> d!728060 (= lt!906303 e!1624040)))

(declare-fun c!414388 () Bool)

(assert (=> d!728060 (= c!414388 ((_ is Cons!29606) (t!211405 (_1!17344 lt!906169))))))

(assert (=> d!728060 (validRegex!3267 (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))))))

(assert (=> d!728060 (= (derivative!336 (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))) (t!211405 (_1!17344 lt!906169))) lt!906303)))

(declare-fun b!2573594 () Bool)

(assert (=> b!2573594 (= e!1624040 (derivative!336 (derivativeStep!2210 (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))) (h!35026 (t!211405 (_1!17344 lt!906169)))) (t!211405 (t!211405 (_1!17344 lt!906169)))))))

(declare-fun b!2573595 () Bool)

(assert (=> b!2573595 (= e!1624040 (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))))))

(assert (= (and d!728060 c!414388) b!2573594))

(assert (= (and d!728060 (not c!414388)) b!2573595))

(declare-fun m!2909185 () Bool)

(assert (=> d!728060 m!2909185))

(assert (=> d!728060 m!2908859))

(declare-fun m!2909187 () Bool)

(assert (=> d!728060 m!2909187))

(assert (=> b!2573594 m!2908859))

(declare-fun m!2909189 () Bool)

(assert (=> b!2573594 m!2909189))

(assert (=> b!2573594 m!2909189))

(declare-fun m!2909191 () Bool)

(assert (=> b!2573594 m!2909191))

(assert (=> b!2573109 d!728060))

(declare-fun d!728062 () Bool)

(declare-fun lt!906304 () Regex!7641)

(assert (=> d!728062 (validRegex!3267 lt!906304)))

(declare-fun e!1624045 () Regex!7641)

(assert (=> d!728062 (= lt!906304 e!1624045)))

(declare-fun c!414392 () Bool)

(assert (=> d!728062 (= c!414392 (or ((_ is EmptyExpr!7641) lt!906173) ((_ is EmptyLang!7641) lt!906173)))))

(assert (=> d!728062 (validRegex!3267 lt!906173)))

(assert (=> d!728062 (= (derivativeStep!2210 lt!906173 (h!35026 (_1!17344 lt!906169))) lt!906304)))

(declare-fun b!2573596 () Bool)

(declare-fun e!1624042 () Regex!7641)

(declare-fun call!166321 () Regex!7641)

(assert (=> b!2573596 (= e!1624042 (Union!7641 (Concat!12337 call!166321 (regTwo!15794 lt!906173)) EmptyLang!7641))))

(declare-fun c!414393 () Bool)

(declare-fun call!166320 () Regex!7641)

(declare-fun bm!166313 () Bool)

(declare-fun c!414391 () Bool)

(assert (=> bm!166313 (= call!166320 (derivativeStep!2210 (ite c!414391 (regOne!15795 lt!906173) (ite c!414393 (reg!7970 lt!906173) (regOne!15794 lt!906173))) (h!35026 (_1!17344 lt!906169))))))

(declare-fun bm!166314 () Bool)

(declare-fun call!166318 () Regex!7641)

(assert (=> bm!166314 (= call!166321 call!166318)))

(declare-fun bm!166315 () Bool)

(declare-fun call!166319 () Regex!7641)

(assert (=> bm!166315 (= call!166319 (derivativeStep!2210 (ite c!414391 (regTwo!15795 lt!906173) (regTwo!15794 lt!906173)) (h!35026 (_1!17344 lt!906169))))))

(declare-fun b!2573597 () Bool)

(declare-fun e!1624043 () Regex!7641)

(assert (=> b!2573597 (= e!1624043 (ite (= (h!35026 (_1!17344 lt!906169)) (c!414083 lt!906173)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2573598 () Bool)

(assert (=> b!2573598 (= e!1624045 e!1624043)))

(declare-fun c!414390 () Bool)

(assert (=> b!2573598 (= c!414390 ((_ is ElementMatch!7641) lt!906173))))

(declare-fun b!2573599 () Bool)

(assert (=> b!2573599 (= c!414391 ((_ is Union!7641) lt!906173))))

(declare-fun e!1624041 () Regex!7641)

(assert (=> b!2573599 (= e!1624043 e!1624041)))

(declare-fun bm!166316 () Bool)

(assert (=> bm!166316 (= call!166318 call!166320)))

(declare-fun b!2573600 () Bool)

(declare-fun c!414389 () Bool)

(assert (=> b!2573600 (= c!414389 (nullable!2558 (regOne!15794 lt!906173)))))

(declare-fun e!1624044 () Regex!7641)

(assert (=> b!2573600 (= e!1624044 e!1624042)))

(declare-fun b!2573601 () Bool)

(assert (=> b!2573601 (= e!1624044 (Concat!12337 call!166318 lt!906173))))

(declare-fun b!2573602 () Bool)

(assert (=> b!2573602 (= e!1624041 (Union!7641 call!166320 call!166319))))

(declare-fun b!2573603 () Bool)

(assert (=> b!2573603 (= e!1624042 (Union!7641 (Concat!12337 call!166321 (regTwo!15794 lt!906173)) call!166319))))

(declare-fun b!2573604 () Bool)

(assert (=> b!2573604 (= e!1624041 e!1624044)))

(assert (=> b!2573604 (= c!414393 ((_ is Star!7641) lt!906173))))

(declare-fun b!2573605 () Bool)

(assert (=> b!2573605 (= e!1624045 EmptyLang!7641)))

(assert (= (and d!728062 c!414392) b!2573605))

(assert (= (and d!728062 (not c!414392)) b!2573598))

(assert (= (and b!2573598 c!414390) b!2573597))

(assert (= (and b!2573598 (not c!414390)) b!2573599))

(assert (= (and b!2573599 c!414391) b!2573602))

(assert (= (and b!2573599 (not c!414391)) b!2573604))

(assert (= (and b!2573604 c!414393) b!2573601))

(assert (= (and b!2573604 (not c!414393)) b!2573600))

(assert (= (and b!2573600 c!414389) b!2573603))

(assert (= (and b!2573600 (not c!414389)) b!2573596))

(assert (= (or b!2573603 b!2573596) bm!166314))

(assert (= (or b!2573601 bm!166314) bm!166316))

(assert (= (or b!2573602 b!2573603) bm!166315))

(assert (= (or b!2573602 bm!166316) bm!166313))

(declare-fun m!2909193 () Bool)

(assert (=> d!728062 m!2909193))

(assert (=> d!728062 m!2908495))

(declare-fun m!2909195 () Bool)

(assert (=> bm!166313 m!2909195))

(declare-fun m!2909197 () Bool)

(assert (=> bm!166315 m!2909197))

(declare-fun m!2909199 () Bool)

(assert (=> b!2573600 m!2909199))

(assert (=> b!2573109 d!728062))

(declare-fun d!728066 () Bool)

(assert (not d!728066))

(assert (=> b!2573100 d!728066))

(declare-fun b!2573620 () Bool)

(declare-fun res!1082647 () Bool)

(declare-fun e!1624055 () Bool)

(assert (=> b!2573620 (=> res!1082647 e!1624055)))

(assert (=> b!2573620 (= res!1082647 (not ((_ is Concat!12337) (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340))))))))

(declare-fun e!1624056 () Bool)

(assert (=> b!2573620 (= e!1624056 e!1624055)))

(declare-fun b!2573621 () Bool)

(declare-fun e!1624054 () Bool)

(declare-fun call!166325 () Bool)

(assert (=> b!2573621 (= e!1624054 call!166325)))

(declare-fun b!2573622 () Bool)

(declare-fun e!1624053 () Bool)

(declare-fun e!1624059 () Bool)

(assert (=> b!2573622 (= e!1624053 e!1624059)))

(declare-fun c!414397 () Bool)

(assert (=> b!2573622 (= c!414397 ((_ is Star!7641) (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2573624 () Bool)

(declare-fun res!1082646 () Bool)

(assert (=> b!2573624 (=> (not res!1082646) (not e!1624054))))

(declare-fun call!166324 () Bool)

(assert (=> b!2573624 (= res!1082646 call!166324)))

(assert (=> b!2573624 (= e!1624056 e!1624054)))

(declare-fun b!2573625 () Bool)

(assert (=> b!2573625 (= e!1624059 e!1624056)))

(declare-fun c!414398 () Bool)

(assert (=> b!2573625 (= c!414398 ((_ is Union!7641) (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2573626 () Bool)

(declare-fun e!1624058 () Bool)

(assert (=> b!2573626 (= e!1624058 call!166324)))

(declare-fun bm!166318 () Bool)

(declare-fun call!166323 () Bool)

(assert (=> bm!166318 (= call!166323 (validRegex!3267 (ite c!414397 (reg!7970 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))) (ite c!414398 (regTwo!15795 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))) (regOne!15794 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340))))))))))

(declare-fun b!2573627 () Bool)

(assert (=> b!2573627 (= e!1624055 e!1624058)))

(declare-fun res!1082645 () Bool)

(assert (=> b!2573627 (=> (not res!1082645) (not e!1624058))))

(assert (=> b!2573627 (= res!1082645 call!166325)))

(declare-fun bm!166319 () Bool)

(assert (=> bm!166319 (= call!166324 (validRegex!3267 (ite c!414398 (regOne!15795 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))) (regTwo!15794 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))))

(declare-fun b!2573628 () Bool)

(declare-fun e!1624057 () Bool)

(assert (=> b!2573628 (= e!1624059 e!1624057)))

(declare-fun res!1082648 () Bool)

(assert (=> b!2573628 (= res!1082648 (not (nullable!2558 (reg!7970 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))))

(assert (=> b!2573628 (=> (not res!1082648) (not e!1624057))))

(declare-fun bm!166320 () Bool)

(assert (=> bm!166320 (= call!166325 call!166323)))

(declare-fun d!728068 () Bool)

(declare-fun res!1082644 () Bool)

(assert (=> d!728068 (=> res!1082644 e!1624053)))

(assert (=> d!728068 (= res!1082644 ((_ is ElementMatch!7641) (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))))))

(assert (=> d!728068 (= (validRegex!3267 (ite c!414262 (reg!7970 r!27340) (ite c!414263 (regTwo!15795 r!27340) (regOne!15794 r!27340)))) e!1624053)))

(declare-fun b!2573623 () Bool)

(assert (=> b!2573623 (= e!1624057 call!166323)))

(assert (= (and d!728068 (not res!1082644)) b!2573622))

(assert (= (and b!2573622 c!414397) b!2573628))

(assert (= (and b!2573622 (not c!414397)) b!2573625))

(assert (= (and b!2573628 res!1082648) b!2573623))

(assert (= (and b!2573625 c!414398) b!2573624))

(assert (= (and b!2573625 (not c!414398)) b!2573620))

(assert (= (and b!2573624 res!1082646) b!2573621))

(assert (= (and b!2573620 (not res!1082647)) b!2573627))

(assert (= (and b!2573627 res!1082645) b!2573626))

(assert (= (or b!2573624 b!2573626) bm!166319))

(assert (= (or b!2573621 b!2573627) bm!166320))

(assert (= (or b!2573623 bm!166320) bm!166318))

(declare-fun m!2909223 () Bool)

(assert (=> bm!166318 m!2909223))

(declare-fun m!2909225 () Bool)

(assert (=> bm!166319 m!2909225))

(declare-fun m!2909227 () Bool)

(assert (=> b!2573628 m!2909227))

(assert (=> bm!166200 d!728068))

(declare-fun b!2573655 () Bool)

(declare-fun res!1082657 () Bool)

(declare-fun e!1624073 () Bool)

(assert (=> b!2573655 (=> (not res!1082657) (not e!1624073))))

(declare-fun lt!906308 () List!29706)

(assert (=> b!2573655 (= res!1082657 (= (size!22965 lt!906308) (+ (size!22965 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))) (size!22965 (t!211405 tl!4068)))))))

(declare-fun b!2573653 () Bool)

(declare-fun e!1624072 () List!29706)

(assert (=> b!2573653 (= e!1624072 (t!211405 tl!4068))))

(declare-fun b!2573656 () Bool)

(assert (=> b!2573656 (= e!1624073 (or (not (= (t!211405 tl!4068) Nil!29606)) (= lt!906308 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)))))))

(declare-fun b!2573654 () Bool)

(assert (=> b!2573654 (= e!1624072 (Cons!29606 (h!35026 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))) (++!7280 (t!211405 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))) (t!211405 tl!4068))))))

(declare-fun d!728078 () Bool)

(assert (=> d!728078 e!1624073))

(declare-fun res!1082658 () Bool)

(assert (=> d!728078 (=> (not res!1082658) (not e!1624073))))

(assert (=> d!728078 (= res!1082658 (= (content!4085 lt!906308) ((_ map or) (content!4085 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))) (content!4085 (t!211405 tl!4068)))))))

(assert (=> d!728078 (= lt!906308 e!1624072)))

(declare-fun c!414407 () Bool)

(assert (=> d!728078 (= c!414407 ((_ is Nil!29606) (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))))))

(assert (=> d!728078 (= (++!7280 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068)) lt!906308)))

(assert (= (and d!728078 c!414407) b!2573653))

(assert (= (and d!728078 (not c!414407)) b!2573654))

(assert (= (and d!728078 res!1082658) b!2573655))

(assert (= (and b!2573655 res!1082657) b!2573656))

(declare-fun m!2909231 () Bool)

(assert (=> b!2573655 m!2909231))

(assert (=> b!2573655 m!2908477))

(declare-fun m!2909235 () Bool)

(assert (=> b!2573655 m!2909235))

(declare-fun m!2909237 () Bool)

(assert (=> b!2573655 m!2909237))

(declare-fun m!2909241 () Bool)

(assert (=> b!2573654 m!2909241))

(declare-fun m!2909243 () Bool)

(assert (=> d!728078 m!2909243))

(assert (=> d!728078 m!2908477))

(declare-fun m!2909247 () Bool)

(assert (=> d!728078 m!2909247))

(declare-fun m!2909251 () Bool)

(assert (=> d!728078 m!2909251))

(assert (=> b!2572536 d!728078))

(declare-fun b!2573659 () Bool)

(declare-fun res!1082659 () Bool)

(declare-fun e!1624075 () Bool)

(assert (=> b!2573659 (=> (not res!1082659) (not e!1624075))))

(declare-fun lt!906309 () List!29706)

(assert (=> b!2573659 (= res!1082659 (= (size!22965 lt!906309) (+ (size!22965 Nil!29606) (size!22965 (Cons!29606 (h!35026 tl!4068) Nil!29606)))))))

(declare-fun b!2573657 () Bool)

(declare-fun e!1624074 () List!29706)

(assert (=> b!2573657 (= e!1624074 (Cons!29606 (h!35026 tl!4068) Nil!29606))))

(declare-fun b!2573660 () Bool)

(assert (=> b!2573660 (= e!1624075 (or (not (= (Cons!29606 (h!35026 tl!4068) Nil!29606) Nil!29606)) (= lt!906309 Nil!29606)))))

(declare-fun b!2573658 () Bool)

(assert (=> b!2573658 (= e!1624074 (Cons!29606 (h!35026 Nil!29606) (++!7280 (t!211405 Nil!29606) (Cons!29606 (h!35026 tl!4068) Nil!29606))))))

(declare-fun d!728080 () Bool)

(assert (=> d!728080 e!1624075))

(declare-fun res!1082660 () Bool)

(assert (=> d!728080 (=> (not res!1082660) (not e!1624075))))

(assert (=> d!728080 (= res!1082660 (= (content!4085 lt!906309) ((_ map or) (content!4085 Nil!29606) (content!4085 (Cons!29606 (h!35026 tl!4068) Nil!29606)))))))

(assert (=> d!728080 (= lt!906309 e!1624074)))

(declare-fun c!414408 () Bool)

(assert (=> d!728080 (= c!414408 ((_ is Nil!29606) Nil!29606))))

(assert (=> d!728080 (= (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) lt!906309)))

(assert (= (and d!728080 c!414408) b!2573657))

(assert (= (and d!728080 (not c!414408)) b!2573658))

(assert (= (and d!728080 res!1082660) b!2573659))

(assert (= (and b!2573659 res!1082659) b!2573660))

(declare-fun m!2909263 () Bool)

(assert (=> b!2573659 m!2909263))

(declare-fun m!2909265 () Bool)

(assert (=> b!2573659 m!2909265))

(declare-fun m!2909267 () Bool)

(assert (=> b!2573659 m!2909267))

(declare-fun m!2909269 () Bool)

(assert (=> b!2573658 m!2909269))

(declare-fun m!2909271 () Bool)

(assert (=> d!728080 m!2909271))

(declare-fun m!2909273 () Bool)

(assert (=> d!728080 m!2909273))

(declare-fun m!2909275 () Bool)

(assert (=> d!728080 m!2909275))

(assert (=> b!2572536 d!728080))

(declare-fun d!728086 () Bool)

(assert (=> d!728086 (= (++!7280 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068)) tl!4068)))

(declare-fun lt!906319 () Unit!43463)

(declare-fun choose!15178 (List!29706 C!15440 List!29706 List!29706) Unit!43463)

(assert (=> d!728086 (= lt!906319 (choose!15178 Nil!29606 (h!35026 tl!4068) (t!211405 tl!4068) tl!4068))))

(assert (=> d!728086 (= (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) (t!211405 tl!4068))) tl!4068)))

(assert (=> d!728086 (= (lemmaMoveElementToOtherListKeepsConcatEq!810 Nil!29606 (h!35026 tl!4068) (t!211405 tl!4068) tl!4068) lt!906319)))

(declare-fun bs!470096 () Bool)

(assert (= bs!470096 d!728086))

(assert (=> bs!470096 m!2908477))

(assert (=> bs!470096 m!2908477))

(assert (=> bs!470096 m!2908479))

(declare-fun m!2909345 () Bool)

(assert (=> bs!470096 m!2909345))

(declare-fun m!2909347 () Bool)

(assert (=> bs!470096 m!2909347))

(assert (=> b!2572536 d!728086))

(declare-fun b!2573734 () Bool)

(declare-fun e!1624124 () Option!5922)

(declare-fun e!1624121 () Option!5922)

(assert (=> b!2573734 (= e!1624124 e!1624121)))

(declare-fun c!414439 () Bool)

(assert (=> b!2573734 (= c!414439 ((_ is Nil!29606) (t!211405 tl!4068)))))

(declare-fun b!2573735 () Bool)

(declare-fun e!1624122 () Bool)

(declare-fun lt!906320 () Option!5922)

(assert (=> b!2573735 (= e!1624122 (= (++!7280 (_1!17344 (get!9321 lt!906320)) (_2!17344 (get!9321 lt!906320))) tl!4068))))

(declare-fun b!2573736 () Bool)

(assert (=> b!2573736 (= e!1624124 (Some!5921 (tuple2!29605 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068))))))

(declare-fun d!728112 () Bool)

(declare-fun e!1624120 () Bool)

(assert (=> d!728112 e!1624120))

(declare-fun res!1082679 () Bool)

(assert (=> d!728112 (=> res!1082679 e!1624120)))

(assert (=> d!728112 (= res!1082679 e!1624122)))

(declare-fun res!1082678 () Bool)

(assert (=> d!728112 (=> (not res!1082678) (not e!1624122))))

(assert (=> d!728112 (= res!1082678 (isDefined!4744 lt!906320))))

(assert (=> d!728112 (= lt!906320 e!1624124)))

(declare-fun c!414438 () Bool)

(declare-fun e!1624123 () Bool)

(assert (=> d!728112 (= c!414438 e!1624123)))

(declare-fun res!1082677 () Bool)

(assert (=> d!728112 (=> (not res!1082677) (not e!1624123))))

(assert (=> d!728112 (= res!1082677 (matchR!3584 lt!906173 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606))))))

(assert (=> d!728112 (validRegex!3267 lt!906173)))

(assert (=> d!728112 (= (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (t!211405 tl!4068) tl!4068) lt!906320)))

(declare-fun b!2573737 () Bool)

(assert (=> b!2573737 (= e!1624121 None!5921)))

(declare-fun b!2573738 () Bool)

(declare-fun lt!906322 () Unit!43463)

(declare-fun lt!906321 () Unit!43463)

(assert (=> b!2573738 (= lt!906322 lt!906321)))

(assert (=> b!2573738 (= (++!7280 (++!7280 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (Cons!29606 (h!35026 (t!211405 tl!4068)) Nil!29606)) (t!211405 (t!211405 tl!4068))) tl!4068)))

(assert (=> b!2573738 (= lt!906321 (lemmaMoveElementToOtherListKeepsConcatEq!810 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (h!35026 (t!211405 tl!4068)) (t!211405 (t!211405 tl!4068)) tl!4068))))

(assert (=> b!2573738 (= e!1624121 (findConcatSeparation!944 lt!906173 (regTwo!15794 r!27340) (++!7280 (++!7280 Nil!29606 (Cons!29606 (h!35026 tl!4068) Nil!29606)) (Cons!29606 (h!35026 (t!211405 tl!4068)) Nil!29606)) (t!211405 (t!211405 tl!4068)) tl!4068))))

(declare-fun b!2573739 () Bool)

(declare-fun res!1082680 () Bool)

(assert (=> b!2573739 (=> (not res!1082680) (not e!1624122))))

(assert (=> b!2573739 (= res!1082680 (matchR!3584 (regTwo!15794 r!27340) (_2!17344 (get!9321 lt!906320))))))

(declare-fun b!2573740 () Bool)

(assert (=> b!2573740 (= e!1624120 (not (isDefined!4744 lt!906320)))))

(declare-fun b!2573741 () Bool)

(declare-fun res!1082676 () Bool)

(assert (=> b!2573741 (=> (not res!1082676) (not e!1624122))))

(assert (=> b!2573741 (= res!1082676 (matchR!3584 lt!906173 (_1!17344 (get!9321 lt!906320))))))

(declare-fun b!2573742 () Bool)

(assert (=> b!2573742 (= e!1624123 (matchR!3584 (regTwo!15794 r!27340) (t!211405 tl!4068)))))

(assert (= (and d!728112 res!1082677) b!2573742))

(assert (= (and d!728112 c!414438) b!2573736))

(assert (= (and d!728112 (not c!414438)) b!2573734))

(assert (= (and b!2573734 c!414439) b!2573737))

(assert (= (and b!2573734 (not c!414439)) b!2573738))

(assert (= (and d!728112 res!1082678) b!2573741))

(assert (= (and b!2573741 res!1082676) b!2573739))

(assert (= (and b!2573739 res!1082680) b!2573735))

(assert (= (and d!728112 (not res!1082679)) b!2573740))

(declare-fun m!2909359 () Bool)

(assert (=> b!2573741 m!2909359))

(declare-fun m!2909361 () Bool)

(assert (=> b!2573741 m!2909361))

(assert (=> b!2573738 m!2908477))

(declare-fun m!2909363 () Bool)

(assert (=> b!2573738 m!2909363))

(assert (=> b!2573738 m!2909363))

(declare-fun m!2909365 () Bool)

(assert (=> b!2573738 m!2909365))

(assert (=> b!2573738 m!2908477))

(declare-fun m!2909367 () Bool)

(assert (=> b!2573738 m!2909367))

(assert (=> b!2573738 m!2909363))

(declare-fun m!2909371 () Bool)

(assert (=> b!2573738 m!2909371))

(assert (=> b!2573739 m!2909359))

(declare-fun m!2909375 () Bool)

(assert (=> b!2573739 m!2909375))

(declare-fun m!2909377 () Bool)

(assert (=> b!2573742 m!2909377))

(assert (=> b!2573735 m!2909359))

(declare-fun m!2909381 () Bool)

(assert (=> b!2573735 m!2909381))

(declare-fun m!2909383 () Bool)

(assert (=> b!2573740 m!2909383))

(assert (=> d!728112 m!2909383))

(assert (=> d!728112 m!2908477))

(declare-fun m!2909389 () Bool)

(assert (=> d!728112 m!2909389))

(assert (=> d!728112 m!2908495))

(assert (=> b!2572536 d!728112))

(declare-fun b!2573768 () Bool)

(declare-fun e!1624141 () Bool)

(declare-fun e!1624147 () Bool)

(assert (=> b!2573768 (= e!1624141 e!1624147)))

(declare-fun res!1082693 () Bool)

(declare-fun call!166360 () Bool)

(assert (=> b!2573768 (= res!1082693 call!166360)))

(assert (=> b!2573768 (=> (not res!1082693) (not e!1624147))))

(declare-fun bm!166354 () Bool)

(declare-fun call!166359 () Bool)

(declare-fun c!414449 () Bool)

(assert (=> bm!166354 (= call!166359 (nullable!2558 (ite c!414449 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun d!728124 () Bool)

(declare-fun res!1082696 () Bool)

(declare-fun e!1624142 () Bool)

(assert (=> d!728124 (=> res!1082696 e!1624142)))

(assert (=> d!728124 (= res!1082696 ((_ is EmptyExpr!7641) (regOne!15794 r!27340)))))

(assert (=> d!728124 (= (nullableFct!783 (regOne!15794 r!27340)) e!1624142)))

(declare-fun b!2573771 () Bool)

(declare-fun e!1624144 () Bool)

(assert (=> b!2573771 (= e!1624144 e!1624141)))

(assert (=> b!2573771 (= c!414449 ((_ is Union!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573773 () Bool)

(declare-fun e!1624148 () Bool)

(assert (=> b!2573773 (= e!1624148 e!1624144)))

(declare-fun res!1082697 () Bool)

(assert (=> b!2573773 (=> res!1082697 e!1624144)))

(assert (=> b!2573773 (= res!1082697 ((_ is Star!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573775 () Bool)

(assert (=> b!2573775 (= e!1624147 call!166359)))

(declare-fun b!2573777 () Bool)

(declare-fun e!1624146 () Bool)

(assert (=> b!2573777 (= e!1624146 call!166360)))

(declare-fun bm!166355 () Bool)

(assert (=> bm!166355 (= call!166360 (nullable!2558 (ite c!414449 (regTwo!15795 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2573779 () Bool)

(assert (=> b!2573779 (= e!1624142 e!1624148)))

(declare-fun res!1082694 () Bool)

(assert (=> b!2573779 (=> (not res!1082694) (not e!1624148))))

(assert (=> b!2573779 (= res!1082694 (and (not ((_ is EmptyLang!7641) (regOne!15794 r!27340))) (not ((_ is ElementMatch!7641) (regOne!15794 r!27340)))))))

(declare-fun b!2573780 () Bool)

(assert (=> b!2573780 (= e!1624141 e!1624146)))

(declare-fun res!1082698 () Bool)

(assert (=> b!2573780 (= res!1082698 call!166359)))

(assert (=> b!2573780 (=> res!1082698 e!1624146)))

(assert (= (and d!728124 (not res!1082696)) b!2573779))

(assert (= (and b!2573779 res!1082694) b!2573773))

(assert (= (and b!2573773 (not res!1082697)) b!2573771))

(assert (= (and b!2573771 c!414449) b!2573780))

(assert (= (and b!2573771 (not c!414449)) b!2573768))

(assert (= (and b!2573780 (not res!1082698)) b!2573777))

(assert (= (and b!2573768 res!1082693) b!2573775))

(assert (= (or b!2573777 b!2573768) bm!166355))

(assert (= (or b!2573780 b!2573775) bm!166354))

(declare-fun m!2909391 () Bool)

(assert (=> bm!166354 m!2909391))

(declare-fun m!2909393 () Bool)

(assert (=> bm!166355 m!2909393))

(assert (=> d!727856 d!728124))

(declare-fun d!728126 () Bool)

(assert (=> d!728126 (= (isDefined!4744 lt!906187) (not (isEmpty!17068 lt!906187)))))

(declare-fun bs!470097 () Bool)

(assert (= bs!470097 d!728126))

(declare-fun m!2909401 () Bool)

(assert (=> bs!470097 m!2909401))

(assert (=> b!2572538 d!728126))

(assert (=> b!2573121 d!728038))

(assert (=> b!2573134 d!728056))

(assert (=> b!2573134 d!728058))

(declare-fun d!728128 () Bool)

(assert (=> d!728128 (= (isEmpty!17069 (_2!17344 lt!906169)) ((_ is Nil!29606) (_2!17344 lt!906169)))))

(assert (=> d!727872 d!728128))

(declare-fun b!2573781 () Bool)

(declare-fun res!1082702 () Bool)

(declare-fun e!1624151 () Bool)

(assert (=> b!2573781 (=> res!1082702 e!1624151)))

(assert (=> b!2573781 (= res!1082702 (not ((_ is Concat!12337) (regTwo!15794 r!27340))))))

(declare-fun e!1624152 () Bool)

(assert (=> b!2573781 (= e!1624152 e!1624151)))

(declare-fun b!2573782 () Bool)

(declare-fun e!1624150 () Bool)

(declare-fun call!166363 () Bool)

(assert (=> b!2573782 (= e!1624150 call!166363)))

(declare-fun b!2573783 () Bool)

(declare-fun e!1624149 () Bool)

(declare-fun e!1624155 () Bool)

(assert (=> b!2573783 (= e!1624149 e!1624155)))

(declare-fun c!414450 () Bool)

(assert (=> b!2573783 (= c!414450 ((_ is Star!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2573785 () Bool)

(declare-fun res!1082701 () Bool)

(assert (=> b!2573785 (=> (not res!1082701) (not e!1624150))))

(declare-fun call!166362 () Bool)

(assert (=> b!2573785 (= res!1082701 call!166362)))

(assert (=> b!2573785 (= e!1624152 e!1624150)))

(declare-fun b!2573786 () Bool)

(assert (=> b!2573786 (= e!1624155 e!1624152)))

(declare-fun c!414451 () Bool)

(assert (=> b!2573786 (= c!414451 ((_ is Union!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2573787 () Bool)

(declare-fun e!1624154 () Bool)

(assert (=> b!2573787 (= e!1624154 call!166362)))

(declare-fun bm!166356 () Bool)

(declare-fun call!166361 () Bool)

(assert (=> bm!166356 (= call!166361 (validRegex!3267 (ite c!414450 (reg!7970 (regTwo!15794 r!27340)) (ite c!414451 (regTwo!15795 (regTwo!15794 r!27340)) (regOne!15794 (regTwo!15794 r!27340))))))))

(declare-fun b!2573788 () Bool)

(assert (=> b!2573788 (= e!1624151 e!1624154)))

(declare-fun res!1082700 () Bool)

(assert (=> b!2573788 (=> (not res!1082700) (not e!1624154))))

(assert (=> b!2573788 (= res!1082700 call!166363)))

(declare-fun bm!166357 () Bool)

(assert (=> bm!166357 (= call!166362 (validRegex!3267 (ite c!414451 (regOne!15795 (regTwo!15794 r!27340)) (regTwo!15794 (regTwo!15794 r!27340)))))))

(declare-fun b!2573789 () Bool)

(declare-fun e!1624153 () Bool)

(assert (=> b!2573789 (= e!1624155 e!1624153)))

(declare-fun res!1082703 () Bool)

(assert (=> b!2573789 (= res!1082703 (not (nullable!2558 (reg!7970 (regTwo!15794 r!27340)))))))

(assert (=> b!2573789 (=> (not res!1082703) (not e!1624153))))

(declare-fun bm!166358 () Bool)

(assert (=> bm!166358 (= call!166363 call!166361)))

(declare-fun d!728130 () Bool)

(declare-fun res!1082699 () Bool)

(assert (=> d!728130 (=> res!1082699 e!1624149)))

(assert (=> d!728130 (= res!1082699 ((_ is ElementMatch!7641) (regTwo!15794 r!27340)))))

(assert (=> d!728130 (= (validRegex!3267 (regTwo!15794 r!27340)) e!1624149)))

(declare-fun b!2573784 () Bool)

(assert (=> b!2573784 (= e!1624153 call!166361)))

(assert (= (and d!728130 (not res!1082699)) b!2573783))

(assert (= (and b!2573783 c!414450) b!2573789))

(assert (= (and b!2573783 (not c!414450)) b!2573786))

(assert (= (and b!2573789 res!1082703) b!2573784))

(assert (= (and b!2573786 c!414451) b!2573785))

(assert (= (and b!2573786 (not c!414451)) b!2573781))

(assert (= (and b!2573785 res!1082701) b!2573782))

(assert (= (and b!2573781 (not res!1082702)) b!2573788))

(assert (= (and b!2573788 res!1082700) b!2573787))

(assert (= (or b!2573785 b!2573787) bm!166357))

(assert (= (or b!2573782 b!2573788) bm!166358))

(assert (= (or b!2573784 bm!166358) bm!166356))

(declare-fun m!2909415 () Bool)

(assert (=> bm!166356 m!2909415))

(declare-fun m!2909419 () Bool)

(assert (=> bm!166357 m!2909419))

(declare-fun m!2909421 () Bool)

(assert (=> b!2573789 m!2909421))

(assert (=> d!727872 d!728130))

(declare-fun d!728136 () Bool)

(assert (=> d!728136 (= (nullable!2558 lt!906173) (nullableFct!783 lt!906173))))

(declare-fun bs!470098 () Bool)

(assert (= bs!470098 d!728136))

(declare-fun m!2909423 () Bool)

(assert (=> bs!470098 m!2909423))

(assert (=> b!2572685 d!728136))

(declare-fun b!2573809 () Bool)

(declare-fun res!1082712 () Bool)

(declare-fun e!1624170 () Bool)

(assert (=> b!2573809 (=> (not res!1082712) (not e!1624170))))

(assert (=> b!2573809 (= res!1082712 (isEmpty!17069 (tail!4121 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun e!1624168 () Bool)

(declare-fun b!2573810 () Bool)

(assert (=> b!2573810 (= e!1624168 (not (= (head!5846 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))) (c!414083 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))))

(declare-fun b!2573811 () Bool)

(declare-fun res!1082710 () Bool)

(declare-fun e!1624169 () Bool)

(assert (=> b!2573811 (=> res!1082710 e!1624169)))

(assert (=> b!2573811 (= res!1082710 e!1624170)))

(declare-fun res!1082714 () Bool)

(assert (=> b!2573811 (=> (not res!1082714) (not e!1624170))))

(declare-fun lt!906325 () Bool)

(assert (=> b!2573811 (= res!1082714 lt!906325)))

(declare-fun b!2573812 () Bool)

(declare-fun e!1624173 () Bool)

(assert (=> b!2573812 (= e!1624173 (not lt!906325))))

(declare-fun d!728138 () Bool)

(declare-fun e!1624174 () Bool)

(assert (=> d!728138 e!1624174))

(declare-fun c!414459 () Bool)

(assert (=> d!728138 (= c!414459 ((_ is EmptyExpr!7641) (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun e!1624172 () Bool)

(assert (=> d!728138 (= lt!906325 e!1624172)))

(declare-fun c!414461 () Bool)

(assert (=> d!728138 (= c!414461 (isEmpty!17069 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(assert (=> d!728138 (validRegex!3267 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(assert (=> d!728138 (= (matchR!3584 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))) (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))) lt!906325)))

(declare-fun b!2573813 () Bool)

(declare-fun res!1082711 () Bool)

(assert (=> b!2573813 (=> res!1082711 e!1624169)))

(assert (=> b!2573813 (= res!1082711 (not ((_ is ElementMatch!7641) (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))))

(assert (=> b!2573813 (= e!1624173 e!1624169)))

(declare-fun b!2573814 () Bool)

(assert (=> b!2573814 (= e!1624170 (= (head!5846 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))) (c!414083 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))))

(declare-fun b!2573815 () Bool)

(declare-fun res!1082709 () Bool)

(assert (=> b!2573815 (=> res!1082709 e!1624168)))

(assert (=> b!2573815 (= res!1082709 (not (isEmpty!17069 (tail!4121 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))))

(declare-fun b!2573816 () Bool)

(assert (=> b!2573816 (= e!1624172 (nullable!2558 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun b!2573817 () Bool)

(declare-fun call!166371 () Bool)

(assert (=> b!2573817 (= e!1624174 (= lt!906325 call!166371))))

(declare-fun bm!166366 () Bool)

(assert (=> bm!166366 (= call!166371 (isEmpty!17069 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun b!2573818 () Bool)

(declare-fun res!1082716 () Bool)

(assert (=> b!2573818 (=> (not res!1082716) (not e!1624170))))

(assert (=> b!2573818 (= res!1082716 (not call!166371))))

(declare-fun b!2573819 () Bool)

(assert (=> b!2573819 (= e!1624172 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))) (head!5846 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169))))) (tail!4121 (tail!4121 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun b!2573820 () Bool)

(assert (=> b!2573820 (= e!1624174 e!1624173)))

(declare-fun c!414460 () Bool)

(assert (=> b!2573820 (= c!414460 ((_ is EmptyLang!7641) (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))))))))

(declare-fun b!2573821 () Bool)

(declare-fun e!1624171 () Bool)

(assert (=> b!2573821 (= e!1624169 e!1624171)))

(declare-fun res!1082713 () Bool)

(assert (=> b!2573821 (=> (not res!1082713) (not e!1624171))))

(assert (=> b!2573821 (= res!1082713 (not lt!906325))))

(declare-fun b!2573822 () Bool)

(assert (=> b!2573822 (= e!1624171 e!1624168)))

(declare-fun res!1082715 () Bool)

(assert (=> b!2573822 (=> res!1082715 e!1624168)))

(assert (=> b!2573822 (= res!1082715 call!166371)))

(assert (= (and d!728138 c!414461) b!2573816))

(assert (= (and d!728138 (not c!414461)) b!2573819))

(assert (= (and d!728138 c!414459) b!2573817))

(assert (= (and d!728138 (not c!414459)) b!2573820))

(assert (= (and b!2573820 c!414460) b!2573812))

(assert (= (and b!2573820 (not c!414460)) b!2573813))

(assert (= (and b!2573813 (not res!1082711)) b!2573811))

(assert (= (and b!2573811 res!1082714) b!2573818))

(assert (= (and b!2573818 res!1082716) b!2573809))

(assert (= (and b!2573809 res!1082712) b!2573814))

(assert (= (and b!2573811 (not res!1082710)) b!2573821))

(assert (= (and b!2573821 res!1082713) b!2573822))

(assert (= (and b!2573822 (not res!1082715)) b!2573815))

(assert (= (and b!2573815 (not res!1082709)) b!2573810))

(assert (= (or b!2573817 b!2573818 b!2573822) bm!166366))

(assert (=> b!2573809 m!2908707))

(declare-fun m!2909441 () Bool)

(assert (=> b!2573809 m!2909441))

(assert (=> b!2573809 m!2909441))

(declare-fun m!2909449 () Bool)

(assert (=> b!2573809 m!2909449))

(assert (=> b!2573819 m!2908707))

(declare-fun m!2909457 () Bool)

(assert (=> b!2573819 m!2909457))

(assert (=> b!2573819 m!2908713))

(assert (=> b!2573819 m!2909457))

(declare-fun m!2909459 () Bool)

(assert (=> b!2573819 m!2909459))

(assert (=> b!2573819 m!2908707))

(assert (=> b!2573819 m!2909441))

(assert (=> b!2573819 m!2909459))

(assert (=> b!2573819 m!2909441))

(declare-fun m!2909462 () Bool)

(assert (=> b!2573819 m!2909462))

(assert (=> b!2573815 m!2908707))

(assert (=> b!2573815 m!2909441))

(assert (=> b!2573815 m!2909441))

(assert (=> b!2573815 m!2909449))

(assert (=> bm!166366 m!2908707))

(assert (=> bm!166366 m!2908709))

(assert (=> b!2573816 m!2908713))

(declare-fun m!2909477 () Bool)

(assert (=> b!2573816 m!2909477))

(assert (=> b!2573810 m!2908707))

(assert (=> b!2573810 m!2909457))

(assert (=> d!728138 m!2908707))

(assert (=> d!728138 m!2908709))

(assert (=> d!728138 m!2908713))

(declare-fun m!2909479 () Bool)

(assert (=> d!728138 m!2909479))

(assert (=> b!2573814 m!2908707))

(assert (=> b!2573814 m!2909457))

(assert (=> b!2572895 d!728138))

(declare-fun d!728150 () Bool)

(declare-fun lt!906328 () Regex!7641)

(assert (=> d!728150 (validRegex!3267 lt!906328)))

(declare-fun e!1624190 () Regex!7641)

(assert (=> d!728150 (= lt!906328 e!1624190)))

(declare-fun c!414469 () Bool)

(assert (=> d!728150 (= c!414469 (or ((_ is EmptyExpr!7641) (regOne!15794 r!27340)) ((_ is EmptyLang!7641) (regOne!15794 r!27340))))))

(assert (=> d!728150 (validRegex!3267 (regOne!15794 r!27340))))

(assert (=> d!728150 (= (derivativeStep!2210 (regOne!15794 r!27340) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))) lt!906328)))

(declare-fun b!2573840 () Bool)

(declare-fun e!1624187 () Regex!7641)

(declare-fun call!166378 () Regex!7641)

(assert (=> b!2573840 (= e!1624187 (Union!7641 (Concat!12337 call!166378 (regTwo!15794 (regOne!15794 r!27340))) EmptyLang!7641))))

(declare-fun c!414468 () Bool)

(declare-fun c!414470 () Bool)

(declare-fun call!166377 () Regex!7641)

(declare-fun bm!166370 () Bool)

(assert (=> bm!166370 (= call!166377 (derivativeStep!2210 (ite c!414468 (regOne!15795 (regOne!15794 r!27340)) (ite c!414470 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun bm!166371 () Bool)

(declare-fun call!166375 () Regex!7641)

(assert (=> bm!166371 (= call!166378 call!166375)))

(declare-fun call!166376 () Regex!7641)

(declare-fun bm!166372 () Bool)

(assert (=> bm!166372 (= call!166376 (derivativeStep!2210 (ite c!414468 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))) (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169)))))))

(declare-fun b!2573841 () Bool)

(declare-fun e!1624188 () Regex!7641)

(assert (=> b!2573841 (= e!1624188 (ite (= (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))) (c!414083 (regOne!15794 r!27340))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2573842 () Bool)

(assert (=> b!2573842 (= e!1624190 e!1624188)))

(declare-fun c!414467 () Bool)

(assert (=> b!2573842 (= c!414467 ((_ is ElementMatch!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573843 () Bool)

(assert (=> b!2573843 (= c!414468 ((_ is Union!7641) (regOne!15794 r!27340)))))

(declare-fun e!1624186 () Regex!7641)

(assert (=> b!2573843 (= e!1624188 e!1624186)))

(declare-fun bm!166373 () Bool)

(assert (=> bm!166373 (= call!166375 call!166377)))

(declare-fun b!2573844 () Bool)

(declare-fun c!414466 () Bool)

(assert (=> b!2573844 (= c!414466 (nullable!2558 (regOne!15794 (regOne!15794 r!27340))))))

(declare-fun e!1624189 () Regex!7641)

(assert (=> b!2573844 (= e!1624189 e!1624187)))

(declare-fun b!2573845 () Bool)

(assert (=> b!2573845 (= e!1624189 (Concat!12337 call!166375 (regOne!15794 r!27340)))))

(declare-fun b!2573846 () Bool)

(assert (=> b!2573846 (= e!1624186 (Union!7641 call!166377 call!166376))))

(declare-fun b!2573847 () Bool)

(assert (=> b!2573847 (= e!1624187 (Union!7641 (Concat!12337 call!166378 (regTwo!15794 (regOne!15794 r!27340))) call!166376))))

(declare-fun b!2573848 () Bool)

(assert (=> b!2573848 (= e!1624186 e!1624189)))

(assert (=> b!2573848 (= c!414470 ((_ is Star!7641) (regOne!15794 r!27340)))))

(declare-fun b!2573849 () Bool)

(assert (=> b!2573849 (= e!1624190 EmptyLang!7641)))

(assert (= (and d!728150 c!414469) b!2573849))

(assert (= (and d!728150 (not c!414469)) b!2573842))

(assert (= (and b!2573842 c!414467) b!2573841))

(assert (= (and b!2573842 (not c!414467)) b!2573843))

(assert (= (and b!2573843 c!414468) b!2573846))

(assert (= (and b!2573843 (not c!414468)) b!2573848))

(assert (= (and b!2573848 c!414470) b!2573845))

(assert (= (and b!2573848 (not c!414470)) b!2573844))

(assert (= (and b!2573844 c!414466) b!2573847))

(assert (= (and b!2573844 (not c!414466)) b!2573840))

(assert (= (or b!2573847 b!2573840) bm!166371))

(assert (= (or b!2573845 bm!166371) bm!166373))

(assert (= (or b!2573846 b!2573847) bm!166372))

(assert (= (or b!2573846 bm!166373) bm!166370))

(declare-fun m!2909481 () Bool)

(assert (=> d!728150 m!2909481))

(assert (=> d!728150 m!2908419))

(assert (=> bm!166370 m!2908711))

(declare-fun m!2909483 () Bool)

(assert (=> bm!166370 m!2909483))

(assert (=> bm!166372 m!2908711))

(declare-fun m!2909485 () Bool)

(assert (=> bm!166372 m!2909485))

(assert (=> b!2573844 m!2908743))

(assert (=> b!2572895 d!728150))

(declare-fun d!728152 () Bool)

(assert (=> d!728152 (= (head!5846 (Cons!29606 c!14016 (_1!17344 lt!906169))) (h!35026 (Cons!29606 c!14016 (_1!17344 lt!906169))))))

(assert (=> b!2572895 d!728152))

(assert (=> b!2572895 d!728046))

(declare-fun d!728154 () Bool)

(assert (=> d!728154 (= (isEmpty!17069 tl!4068) ((_ is Nil!29606) tl!4068))))

(assert (=> d!727846 d!728154))

(declare-fun b!2573850 () Bool)

(declare-fun res!1082729 () Bool)

(declare-fun e!1624193 () Bool)

(assert (=> b!2573850 (=> res!1082729 e!1624193)))

(assert (=> b!2573850 (= res!1082729 (not ((_ is Concat!12337) lt!906175)))))

(declare-fun e!1624194 () Bool)

(assert (=> b!2573850 (= e!1624194 e!1624193)))

(declare-fun b!2573851 () Bool)

(declare-fun e!1624192 () Bool)

(declare-fun call!166381 () Bool)

(assert (=> b!2573851 (= e!1624192 call!166381)))

(declare-fun b!2573852 () Bool)

(declare-fun e!1624191 () Bool)

(declare-fun e!1624197 () Bool)

(assert (=> b!2573852 (= e!1624191 e!1624197)))

(declare-fun c!414471 () Bool)

(assert (=> b!2573852 (= c!414471 ((_ is Star!7641) lt!906175))))

(declare-fun b!2573854 () Bool)

(declare-fun res!1082728 () Bool)

(assert (=> b!2573854 (=> (not res!1082728) (not e!1624192))))

(declare-fun call!166380 () Bool)

(assert (=> b!2573854 (= res!1082728 call!166380)))

(assert (=> b!2573854 (= e!1624194 e!1624192)))

(declare-fun b!2573855 () Bool)

(assert (=> b!2573855 (= e!1624197 e!1624194)))

(declare-fun c!414472 () Bool)

(assert (=> b!2573855 (= c!414472 ((_ is Union!7641) lt!906175))))

(declare-fun b!2573856 () Bool)

(declare-fun e!1624196 () Bool)

(assert (=> b!2573856 (= e!1624196 call!166380)))

(declare-fun call!166379 () Bool)

(declare-fun bm!166374 () Bool)

(assert (=> bm!166374 (= call!166379 (validRegex!3267 (ite c!414471 (reg!7970 lt!906175) (ite c!414472 (regTwo!15795 lt!906175) (regOne!15794 lt!906175)))))))

(declare-fun b!2573857 () Bool)

(assert (=> b!2573857 (= e!1624193 e!1624196)))

(declare-fun res!1082727 () Bool)

(assert (=> b!2573857 (=> (not res!1082727) (not e!1624196))))

(assert (=> b!2573857 (= res!1082727 call!166381)))

(declare-fun bm!166375 () Bool)

(assert (=> bm!166375 (= call!166380 (validRegex!3267 (ite c!414472 (regOne!15795 lt!906175) (regTwo!15794 lt!906175))))))

(declare-fun b!2573858 () Bool)

(declare-fun e!1624195 () Bool)

(assert (=> b!2573858 (= e!1624197 e!1624195)))

(declare-fun res!1082730 () Bool)

(assert (=> b!2573858 (= res!1082730 (not (nullable!2558 (reg!7970 lt!906175))))))

(assert (=> b!2573858 (=> (not res!1082730) (not e!1624195))))

(declare-fun bm!166376 () Bool)

(assert (=> bm!166376 (= call!166381 call!166379)))

(declare-fun d!728156 () Bool)

(declare-fun res!1082726 () Bool)

(assert (=> d!728156 (=> res!1082726 e!1624191)))

(assert (=> d!728156 (= res!1082726 ((_ is ElementMatch!7641) lt!906175))))

(assert (=> d!728156 (= (validRegex!3267 lt!906175) e!1624191)))

(declare-fun b!2573853 () Bool)

(assert (=> b!2573853 (= e!1624195 call!166379)))

(assert (= (and d!728156 (not res!1082726)) b!2573852))

(assert (= (and b!2573852 c!414471) b!2573858))

(assert (= (and b!2573852 (not c!414471)) b!2573855))

(assert (= (and b!2573858 res!1082730) b!2573853))

(assert (= (and b!2573855 c!414472) b!2573854))

(assert (= (and b!2573855 (not c!414472)) b!2573850))

(assert (= (and b!2573854 res!1082728) b!2573851))

(assert (= (and b!2573850 (not res!1082729)) b!2573857))

(assert (= (and b!2573857 res!1082727) b!2573856))

(assert (= (or b!2573854 b!2573856) bm!166375))

(assert (= (or b!2573851 b!2573857) bm!166376))

(assert (= (or b!2573853 bm!166376) bm!166374))

(declare-fun m!2909487 () Bool)

(assert (=> bm!166374 m!2909487))

(declare-fun m!2909489 () Bool)

(assert (=> bm!166375 m!2909489))

(declare-fun m!2909491 () Bool)

(assert (=> b!2573858 m!2909491))

(assert (=> d!727846 d!728156))

(declare-fun b!2573859 () Bool)

(declare-fun res!1082734 () Bool)

(declare-fun e!1624200 () Bool)

(assert (=> b!2573859 (=> (not res!1082734) (not e!1624200))))

(assert (=> b!2573859 (= res!1082734 (isEmpty!17069 (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2573860 () Bool)

(declare-fun e!1624198 () Bool)

(assert (=> b!2573860 (= e!1624198 (not (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 lt!906175 (head!5846 tl!4068))))))))

(declare-fun b!2573861 () Bool)

(declare-fun res!1082732 () Bool)

(declare-fun e!1624199 () Bool)

(assert (=> b!2573861 (=> res!1082732 e!1624199)))

(assert (=> b!2573861 (= res!1082732 e!1624200)))

(declare-fun res!1082736 () Bool)

(assert (=> b!2573861 (=> (not res!1082736) (not e!1624200))))

(declare-fun lt!906329 () Bool)

(assert (=> b!2573861 (= res!1082736 lt!906329)))

(declare-fun b!2573862 () Bool)

(declare-fun e!1624203 () Bool)

(assert (=> b!2573862 (= e!1624203 (not lt!906329))))

(declare-fun d!728158 () Bool)

(declare-fun e!1624204 () Bool)

(assert (=> d!728158 e!1624204))

(declare-fun c!414473 () Bool)

(assert (=> d!728158 (= c!414473 ((_ is EmptyExpr!7641) (derivativeStep!2210 lt!906175 (head!5846 tl!4068))))))

(declare-fun e!1624202 () Bool)

(assert (=> d!728158 (= lt!906329 e!1624202)))

(declare-fun c!414475 () Bool)

(assert (=> d!728158 (= c!414475 (isEmpty!17069 (tail!4121 tl!4068)))))

(assert (=> d!728158 (validRegex!3267 (derivativeStep!2210 lt!906175 (head!5846 tl!4068)))))

(assert (=> d!728158 (= (matchR!3584 (derivativeStep!2210 lt!906175 (head!5846 tl!4068)) (tail!4121 tl!4068)) lt!906329)))

(declare-fun b!2573863 () Bool)

(declare-fun res!1082733 () Bool)

(assert (=> b!2573863 (=> res!1082733 e!1624199)))

(assert (=> b!2573863 (= res!1082733 (not ((_ is ElementMatch!7641) (derivativeStep!2210 lt!906175 (head!5846 tl!4068)))))))

(assert (=> b!2573863 (= e!1624203 e!1624199)))

(declare-fun b!2573864 () Bool)

(assert (=> b!2573864 (= e!1624200 (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 lt!906175 (head!5846 tl!4068)))))))

(declare-fun b!2573865 () Bool)

(declare-fun res!1082731 () Bool)

(assert (=> b!2573865 (=> res!1082731 e!1624198)))

(assert (=> b!2573865 (= res!1082731 (not (isEmpty!17069 (tail!4121 (tail!4121 tl!4068)))))))

(declare-fun b!2573866 () Bool)

(assert (=> b!2573866 (= e!1624202 (nullable!2558 (derivativeStep!2210 lt!906175 (head!5846 tl!4068))))))

(declare-fun b!2573867 () Bool)

(declare-fun call!166382 () Bool)

(assert (=> b!2573867 (= e!1624204 (= lt!906329 call!166382))))

(declare-fun bm!166377 () Bool)

(assert (=> bm!166377 (= call!166382 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2573868 () Bool)

(declare-fun res!1082738 () Bool)

(assert (=> b!2573868 (=> (not res!1082738) (not e!1624200))))

(assert (=> b!2573868 (= res!1082738 (not call!166382))))

(declare-fun b!2573869 () Bool)

(assert (=> b!2573869 (= e!1624202 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 lt!906175 (head!5846 tl!4068)) (head!5846 (tail!4121 tl!4068))) (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2573870 () Bool)

(assert (=> b!2573870 (= e!1624204 e!1624203)))

(declare-fun c!414474 () Bool)

(assert (=> b!2573870 (= c!414474 ((_ is EmptyLang!7641) (derivativeStep!2210 lt!906175 (head!5846 tl!4068))))))

(declare-fun b!2573871 () Bool)

(declare-fun e!1624201 () Bool)

(assert (=> b!2573871 (= e!1624199 e!1624201)))

(declare-fun res!1082735 () Bool)

(assert (=> b!2573871 (=> (not res!1082735) (not e!1624201))))

(assert (=> b!2573871 (= res!1082735 (not lt!906329))))

(declare-fun b!2573872 () Bool)

(assert (=> b!2573872 (= e!1624201 e!1624198)))

(declare-fun res!1082737 () Bool)

(assert (=> b!2573872 (=> res!1082737 e!1624198)))

(assert (=> b!2573872 (= res!1082737 call!166382)))

(assert (= (and d!728158 c!414475) b!2573866))

(assert (= (and d!728158 (not c!414475)) b!2573869))

(assert (= (and d!728158 c!414473) b!2573867))

(assert (= (and d!728158 (not c!414473)) b!2573870))

(assert (= (and b!2573870 c!414474) b!2573862))

(assert (= (and b!2573870 (not c!414474)) b!2573863))

(assert (= (and b!2573863 (not res!1082733)) b!2573861))

(assert (= (and b!2573861 res!1082736) b!2573868))

(assert (= (and b!2573868 res!1082738) b!2573859))

(assert (= (and b!2573859 res!1082734) b!2573864))

(assert (= (and b!2573861 (not res!1082732)) b!2573871))

(assert (= (and b!2573871 res!1082735) b!2573872))

(assert (= (and b!2573872 (not res!1082737)) b!2573865))

(assert (= (and b!2573865 (not res!1082731)) b!2573860))

(assert (= (or b!2573867 b!2573868 b!2573872) bm!166377))

(assert (=> b!2573859 m!2908811))

(assert (=> b!2573859 m!2909131))

(assert (=> b!2573859 m!2909131))

(assert (=> b!2573859 m!2909133))

(assert (=> b!2573869 m!2908811))

(assert (=> b!2573869 m!2909135))

(assert (=> b!2573869 m!2908817))

(assert (=> b!2573869 m!2909135))

(declare-fun m!2909493 () Bool)

(assert (=> b!2573869 m!2909493))

(assert (=> b!2573869 m!2908811))

(assert (=> b!2573869 m!2909131))

(assert (=> b!2573869 m!2909493))

(assert (=> b!2573869 m!2909131))

(declare-fun m!2909495 () Bool)

(assert (=> b!2573869 m!2909495))

(assert (=> b!2573865 m!2908811))

(assert (=> b!2573865 m!2909131))

(assert (=> b!2573865 m!2909131))

(assert (=> b!2573865 m!2909133))

(assert (=> bm!166377 m!2908811))

(assert (=> bm!166377 m!2908813))

(assert (=> b!2573866 m!2908817))

(declare-fun m!2909497 () Bool)

(assert (=> b!2573866 m!2909497))

(assert (=> b!2573860 m!2908811))

(assert (=> b!2573860 m!2909135))

(assert (=> d!728158 m!2908811))

(assert (=> d!728158 m!2908813))

(assert (=> d!728158 m!2908817))

(declare-fun m!2909499 () Bool)

(assert (=> d!728158 m!2909499))

(assert (=> b!2573864 m!2908811))

(assert (=> b!2573864 m!2909135))

(assert (=> b!2573038 d!728158))

(declare-fun d!728160 () Bool)

(declare-fun lt!906333 () Regex!7641)

(assert (=> d!728160 (validRegex!3267 lt!906333)))

(declare-fun e!1624209 () Regex!7641)

(assert (=> d!728160 (= lt!906333 e!1624209)))

(declare-fun c!414479 () Bool)

(assert (=> d!728160 (= c!414479 (or ((_ is EmptyExpr!7641) lt!906175) ((_ is EmptyLang!7641) lt!906175)))))

(assert (=> d!728160 (validRegex!3267 lt!906175)))

(assert (=> d!728160 (= (derivativeStep!2210 lt!906175 (head!5846 tl!4068)) lt!906333)))

(declare-fun b!2573873 () Bool)

(declare-fun e!1624206 () Regex!7641)

(declare-fun call!166386 () Regex!7641)

(assert (=> b!2573873 (= e!1624206 (Union!7641 (Concat!12337 call!166386 (regTwo!15794 lt!906175)) EmptyLang!7641))))

(declare-fun call!166385 () Regex!7641)

(declare-fun c!414480 () Bool)

(declare-fun c!414478 () Bool)

(declare-fun bm!166378 () Bool)

(assert (=> bm!166378 (= call!166385 (derivativeStep!2210 (ite c!414478 (regOne!15795 lt!906175) (ite c!414480 (reg!7970 lt!906175) (regOne!15794 lt!906175))) (head!5846 tl!4068)))))

(declare-fun bm!166379 () Bool)

(declare-fun call!166383 () Regex!7641)

(assert (=> bm!166379 (= call!166386 call!166383)))

(declare-fun call!166384 () Regex!7641)

(declare-fun bm!166380 () Bool)

(assert (=> bm!166380 (= call!166384 (derivativeStep!2210 (ite c!414478 (regTwo!15795 lt!906175) (regTwo!15794 lt!906175)) (head!5846 tl!4068)))))

(declare-fun b!2573874 () Bool)

(declare-fun e!1624207 () Regex!7641)

(assert (=> b!2573874 (= e!1624207 (ite (= (head!5846 tl!4068) (c!414083 lt!906175)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2573875 () Bool)

(assert (=> b!2573875 (= e!1624209 e!1624207)))

(declare-fun c!414477 () Bool)

(assert (=> b!2573875 (= c!414477 ((_ is ElementMatch!7641) lt!906175))))

(declare-fun b!2573876 () Bool)

(assert (=> b!2573876 (= c!414478 ((_ is Union!7641) lt!906175))))

(declare-fun e!1624205 () Regex!7641)

(assert (=> b!2573876 (= e!1624207 e!1624205)))

(declare-fun bm!166381 () Bool)

(assert (=> bm!166381 (= call!166383 call!166385)))

(declare-fun b!2573877 () Bool)

(declare-fun c!414476 () Bool)

(assert (=> b!2573877 (= c!414476 (nullable!2558 (regOne!15794 lt!906175)))))

(declare-fun e!1624208 () Regex!7641)

(assert (=> b!2573877 (= e!1624208 e!1624206)))

(declare-fun b!2573878 () Bool)

(assert (=> b!2573878 (= e!1624208 (Concat!12337 call!166383 lt!906175))))

(declare-fun b!2573879 () Bool)

(assert (=> b!2573879 (= e!1624205 (Union!7641 call!166385 call!166384))))

(declare-fun b!2573880 () Bool)

(assert (=> b!2573880 (= e!1624206 (Union!7641 (Concat!12337 call!166386 (regTwo!15794 lt!906175)) call!166384))))

(declare-fun b!2573881 () Bool)

(assert (=> b!2573881 (= e!1624205 e!1624208)))

(assert (=> b!2573881 (= c!414480 ((_ is Star!7641) lt!906175))))

(declare-fun b!2573882 () Bool)

(assert (=> b!2573882 (= e!1624209 EmptyLang!7641)))

(assert (= (and d!728160 c!414479) b!2573882))

(assert (= (and d!728160 (not c!414479)) b!2573875))

(assert (= (and b!2573875 c!414477) b!2573874))

(assert (= (and b!2573875 (not c!414477)) b!2573876))

(assert (= (and b!2573876 c!414478) b!2573879))

(assert (= (and b!2573876 (not c!414478)) b!2573881))

(assert (= (and b!2573881 c!414480) b!2573878))

(assert (= (and b!2573881 (not c!414480)) b!2573877))

(assert (= (and b!2573877 c!414476) b!2573880))

(assert (= (and b!2573877 (not c!414476)) b!2573873))

(assert (= (or b!2573880 b!2573873) bm!166379))

(assert (= (or b!2573878 bm!166379) bm!166381))

(assert (= (or b!2573879 b!2573880) bm!166380))

(assert (= (or b!2573879 bm!166381) bm!166378))

(declare-fun m!2909505 () Bool)

(assert (=> d!728160 m!2909505))

(assert (=> d!728160 m!2908825))

(assert (=> bm!166378 m!2908815))

(declare-fun m!2909507 () Bool)

(assert (=> bm!166378 m!2909507))

(assert (=> bm!166380 m!2908815))

(declare-fun m!2909509 () Bool)

(assert (=> bm!166380 m!2909509))

(declare-fun m!2909511 () Bool)

(assert (=> b!2573877 m!2909511))

(assert (=> b!2573038 d!728160))

(assert (=> b!2573038 d!728038))

(assert (=> b!2573038 d!728014))

(declare-fun d!728164 () Bool)

(assert (=> d!728164 (= (nullable!2558 (derivative!336 lt!906180 tl!4068)) (nullableFct!783 (derivative!336 lt!906180 tl!4068)))))

(declare-fun bs!470101 () Bool)

(assert (= bs!470101 d!728164))

(assert (=> bs!470101 m!2908447))

(declare-fun m!2909513 () Bool)

(assert (=> bs!470101 m!2909513))

(assert (=> b!2572906 d!728164))

(assert (=> bm!166189 d!728154))

(declare-fun d!728166 () Bool)

(declare-fun lt!906337 () Regex!7641)

(assert (=> d!728166 (validRegex!3267 lt!906337)))

(declare-fun e!1624219 () Regex!7641)

(assert (=> d!728166 (= lt!906337 e!1624219)))

(declare-fun c!414486 () Bool)

(assert (=> d!728166 (= c!414486 (or ((_ is EmptyExpr!7641) (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) ((_ is EmptyLang!7641) (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))))))

(assert (=> d!728166 (validRegex!3267 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))))

(assert (=> d!728166 (= (derivativeStep!2210 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))) c!14016) lt!906337)))

(declare-fun b!2573892 () Bool)

(declare-fun e!1624216 () Regex!7641)

(declare-fun call!166390 () Regex!7641)

(assert (=> b!2573892 (= e!1624216 (Union!7641 (Concat!12337 call!166390 (regTwo!15794 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))) EmptyLang!7641))))

(declare-fun call!166389 () Regex!7641)

(declare-fun bm!166382 () Bool)

(declare-fun c!414485 () Bool)

(declare-fun c!414487 () Bool)

(assert (=> bm!166382 (= call!166389 (derivativeStep!2210 (ite c!414485 (regOne!15795 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (ite c!414487 (reg!7970 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (regOne!15794 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))) c!14016))))

(declare-fun bm!166383 () Bool)

(declare-fun call!166387 () Regex!7641)

(assert (=> bm!166383 (= call!166390 call!166387)))

(declare-fun bm!166384 () Bool)

(declare-fun call!166388 () Regex!7641)

(assert (=> bm!166384 (= call!166388 (derivativeStep!2210 (ite c!414485 (regTwo!15795 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (regTwo!15794 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))) c!14016))))

(declare-fun e!1624217 () Regex!7641)

(declare-fun b!2573893 () Bool)

(assert (=> b!2573893 (= e!1624217 (ite (= c!14016 (c!414083 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2573894 () Bool)

(assert (=> b!2573894 (= e!1624219 e!1624217)))

(declare-fun c!414484 () Bool)

(assert (=> b!2573894 (= c!414484 ((_ is ElementMatch!7641) (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2573895 () Bool)

(assert (=> b!2573895 (= c!414485 ((_ is Union!7641) (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun e!1624215 () Regex!7641)

(assert (=> b!2573895 (= e!1624217 e!1624215)))

(declare-fun bm!166385 () Bool)

(assert (=> bm!166385 (= call!166387 call!166389)))

(declare-fun b!2573896 () Bool)

(declare-fun c!414483 () Bool)

(assert (=> b!2573896 (= c!414483 (nullable!2558 (regOne!15794 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))))))

(declare-fun e!1624218 () Regex!7641)

(assert (=> b!2573896 (= e!1624218 e!1624216)))

(declare-fun b!2573897 () Bool)

(assert (=> b!2573897 (= e!1624218 (Concat!12337 call!166387 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2573898 () Bool)

(assert (=> b!2573898 (= e!1624215 (Union!7641 call!166389 call!166388))))

(declare-fun b!2573899 () Bool)

(assert (=> b!2573899 (= e!1624216 (Union!7641 (Concat!12337 call!166390 (regTwo!15794 (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))) call!166388))))

(declare-fun b!2573900 () Bool)

(assert (=> b!2573900 (= e!1624215 e!1624218)))

(assert (=> b!2573900 (= c!414487 ((_ is Star!7641) (ite c!414224 (regTwo!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2573901 () Bool)

(assert (=> b!2573901 (= e!1624219 EmptyLang!7641)))

(assert (= (and d!728166 c!414486) b!2573901))

(assert (= (and d!728166 (not c!414486)) b!2573894))

(assert (= (and b!2573894 c!414484) b!2573893))

(assert (= (and b!2573894 (not c!414484)) b!2573895))

(assert (= (and b!2573895 c!414485) b!2573898))

(assert (= (and b!2573895 (not c!414485)) b!2573900))

(assert (= (and b!2573900 c!414487) b!2573897))

(assert (= (and b!2573900 (not c!414487)) b!2573896))

(assert (= (and b!2573896 c!414483) b!2573899))

(assert (= (and b!2573896 (not c!414483)) b!2573892))

(assert (= (or b!2573899 b!2573892) bm!166383))

(assert (= (or b!2573897 bm!166383) bm!166385))

(assert (= (or b!2573898 b!2573899) bm!166384))

(assert (= (or b!2573898 bm!166385) bm!166382))

(declare-fun m!2909527 () Bool)

(assert (=> d!728166 m!2909527))

(declare-fun m!2909529 () Bool)

(assert (=> d!728166 m!2909529))

(declare-fun m!2909535 () Bool)

(assert (=> bm!166382 m!2909535))

(declare-fun m!2909539 () Bool)

(assert (=> bm!166384 m!2909539))

(declare-fun m!2909541 () Bool)

(assert (=> b!2573896 m!2909541))

(assert (=> bm!166178 d!728166))

(assert (=> b!2572892 d!727856))

(assert (=> d!727756 d!728126))

(declare-fun b!2573902 () Bool)

(declare-fun res!1082747 () Bool)

(declare-fun e!1624222 () Bool)

(assert (=> b!2573902 (=> (not res!1082747) (not e!1624222))))

(assert (=> b!2573902 (= res!1082747 (isEmpty!17069 (tail!4121 Nil!29606)))))

(declare-fun b!2573903 () Bool)

(declare-fun e!1624220 () Bool)

(assert (=> b!2573903 (= e!1624220 (not (= (head!5846 Nil!29606) (c!414083 lt!906173))))))

(declare-fun b!2573904 () Bool)

(declare-fun res!1082745 () Bool)

(declare-fun e!1624221 () Bool)

(assert (=> b!2573904 (=> res!1082745 e!1624221)))

(assert (=> b!2573904 (= res!1082745 e!1624222)))

(declare-fun res!1082749 () Bool)

(assert (=> b!2573904 (=> (not res!1082749) (not e!1624222))))

(declare-fun lt!906338 () Bool)

(assert (=> b!2573904 (= res!1082749 lt!906338)))

(declare-fun b!2573905 () Bool)

(declare-fun e!1624225 () Bool)

(assert (=> b!2573905 (= e!1624225 (not lt!906338))))

(declare-fun d!728168 () Bool)

(declare-fun e!1624226 () Bool)

(assert (=> d!728168 e!1624226))

(declare-fun c!414488 () Bool)

(assert (=> d!728168 (= c!414488 ((_ is EmptyExpr!7641) lt!906173))))

(declare-fun e!1624224 () Bool)

(assert (=> d!728168 (= lt!906338 e!1624224)))

(declare-fun c!414490 () Bool)

(assert (=> d!728168 (= c!414490 (isEmpty!17069 Nil!29606))))

(assert (=> d!728168 (validRegex!3267 lt!906173)))

(assert (=> d!728168 (= (matchR!3584 lt!906173 Nil!29606) lt!906338)))

(declare-fun b!2573906 () Bool)

(declare-fun res!1082746 () Bool)

(assert (=> b!2573906 (=> res!1082746 e!1624221)))

(assert (=> b!2573906 (= res!1082746 (not ((_ is ElementMatch!7641) lt!906173)))))

(assert (=> b!2573906 (= e!1624225 e!1624221)))

(declare-fun b!2573907 () Bool)

(assert (=> b!2573907 (= e!1624222 (= (head!5846 Nil!29606) (c!414083 lt!906173)))))

(declare-fun b!2573908 () Bool)

(declare-fun res!1082744 () Bool)

(assert (=> b!2573908 (=> res!1082744 e!1624220)))

(assert (=> b!2573908 (= res!1082744 (not (isEmpty!17069 (tail!4121 Nil!29606))))))

(declare-fun b!2573909 () Bool)

(assert (=> b!2573909 (= e!1624224 (nullable!2558 lt!906173))))

(declare-fun b!2573910 () Bool)

(declare-fun call!166391 () Bool)

(assert (=> b!2573910 (= e!1624226 (= lt!906338 call!166391))))

(declare-fun bm!166386 () Bool)

(assert (=> bm!166386 (= call!166391 (isEmpty!17069 Nil!29606))))

(declare-fun b!2573911 () Bool)

(declare-fun res!1082751 () Bool)

(assert (=> b!2573911 (=> (not res!1082751) (not e!1624222))))

(assert (=> b!2573911 (= res!1082751 (not call!166391))))

(declare-fun b!2573912 () Bool)

(assert (=> b!2573912 (= e!1624224 (matchR!3584 (derivativeStep!2210 lt!906173 (head!5846 Nil!29606)) (tail!4121 Nil!29606)))))

(declare-fun b!2573913 () Bool)

(assert (=> b!2573913 (= e!1624226 e!1624225)))

(declare-fun c!414489 () Bool)

(assert (=> b!2573913 (= c!414489 ((_ is EmptyLang!7641) lt!906173))))

(declare-fun b!2573914 () Bool)

(declare-fun e!1624223 () Bool)

(assert (=> b!2573914 (= e!1624221 e!1624223)))

(declare-fun res!1082748 () Bool)

(assert (=> b!2573914 (=> (not res!1082748) (not e!1624223))))

(assert (=> b!2573914 (= res!1082748 (not lt!906338))))

(declare-fun b!2573915 () Bool)

(assert (=> b!2573915 (= e!1624223 e!1624220)))

(declare-fun res!1082750 () Bool)

(assert (=> b!2573915 (=> res!1082750 e!1624220)))

(assert (=> b!2573915 (= res!1082750 call!166391)))

(assert (= (and d!728168 c!414490) b!2573909))

(assert (= (and d!728168 (not c!414490)) b!2573912))

(assert (= (and d!728168 c!414488) b!2573910))

(assert (= (and d!728168 (not c!414488)) b!2573913))

(assert (= (and b!2573913 c!414489) b!2573905))

(assert (= (and b!2573913 (not c!414489)) b!2573906))

(assert (= (and b!2573906 (not res!1082746)) b!2573904))

(assert (= (and b!2573904 res!1082749) b!2573911))

(assert (= (and b!2573911 res!1082751) b!2573902))

(assert (= (and b!2573902 res!1082747) b!2573907))

(assert (= (and b!2573904 (not res!1082745)) b!2573914))

(assert (= (and b!2573914 res!1082748) b!2573915))

(assert (= (and b!2573915 (not res!1082750)) b!2573908))

(assert (= (and b!2573908 (not res!1082744)) b!2573903))

(assert (= (or b!2573910 b!2573911 b!2573915) bm!166386))

(assert (=> b!2573902 m!2908719))

(assert (=> b!2573902 m!2908719))

(assert (=> b!2573902 m!2908721))

(assert (=> b!2573912 m!2908723))

(assert (=> b!2573912 m!2908723))

(declare-fun m!2909557 () Bool)

(assert (=> b!2573912 m!2909557))

(assert (=> b!2573912 m!2908719))

(assert (=> b!2573912 m!2909557))

(assert (=> b!2573912 m!2908719))

(declare-fun m!2909559 () Bool)

(assert (=> b!2573912 m!2909559))

(assert (=> b!2573908 m!2908719))

(assert (=> b!2573908 m!2908719))

(assert (=> b!2573908 m!2908721))

(assert (=> bm!166386 m!2908729))

(assert (=> b!2573909 m!2908579))

(assert (=> b!2573903 m!2908723))

(assert (=> d!728168 m!2908729))

(assert (=> d!728168 m!2908495))

(assert (=> b!2573907 m!2908723))

(assert (=> d!727756 d!728168))

(assert (=> d!727756 d!728004))

(declare-fun d!728174 () Bool)

(assert (=> d!728174 (= (nullable!2558 lt!906175) (nullableFct!783 lt!906175))))

(declare-fun bs!470103 () Bool)

(assert (= bs!470103 d!728174))

(declare-fun m!2909561 () Bool)

(assert (=> bs!470103 m!2909561))

(assert (=> b!2573035 d!728174))

(assert (=> b!2573059 d!728038))

(declare-fun b!2573940 () Bool)

(declare-fun e!1624242 () Int)

(assert (=> b!2573940 (= e!1624242 0)))

(declare-fun b!2573941 () Bool)

(declare-fun e!1624243 () Int)

(declare-fun call!166399 () Int)

(assert (=> b!2573941 (= e!1624243 (+ 1 call!166399))))

(declare-fun b!2573942 () Bool)

(declare-fun e!1624240 () Int)

(declare-fun e!1624239 () Int)

(assert (=> b!2573942 (= e!1624240 e!1624239)))

(declare-fun c!414500 () Bool)

(assert (=> b!2573942 (= c!414500 ((_ is Concat!12337) (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(declare-fun b!2573943 () Bool)

(declare-fun call!166397 () Int)

(declare-fun call!166398 () Int)

(assert (=> b!2573943 (= e!1624239 (+ 1 call!166397 call!166398))))

(declare-fun b!2573944 () Bool)

(declare-fun c!414503 () Bool)

(assert (=> b!2573944 (= c!414503 ((_ is EmptyExpr!7641) (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(assert (=> b!2573944 (= e!1624239 e!1624242)))

(declare-fun b!2573945 () Bool)

(declare-fun e!1624241 () Int)

(assert (=> b!2573945 (= e!1624241 0)))

(declare-fun b!2573946 () Bool)

(declare-fun c!414502 () Bool)

(assert (=> b!2573946 (= c!414502 ((_ is EmptyLang!7641) (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(assert (=> b!2573946 (= e!1624243 e!1624241)))

(declare-fun c!414499 () Bool)

(declare-fun bm!166392 () Bool)

(assert (=> bm!166392 (= call!166398 (RegexPrimitiveSize!124 (ite c!414500 (regTwo!15794 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))) (ite c!414499 (reg!7970 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))) (regOne!15795 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340))))))))))

(declare-fun d!728178 () Bool)

(declare-fun lt!906341 () Int)

(assert (=> d!728178 (>= lt!906341 0)))

(assert (=> d!728178 (= lt!906341 e!1624240)))

(declare-fun c!414501 () Bool)

(assert (=> d!728178 (= c!414501 ((_ is ElementMatch!7641) (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(assert (=> d!728178 (= (RegexPrimitiveSize!124 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))) lt!906341)))

(declare-fun bm!166393 () Bool)

(assert (=> bm!166393 (= call!166397 (RegexPrimitiveSize!124 (ite c!414500 (regOne!15794 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))) (regTwo!15795 (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))))

(declare-fun b!2573947 () Bool)

(assert (=> b!2573947 (= e!1624241 (+ 1 call!166399 call!166397))))

(declare-fun b!2573948 () Bool)

(assert (=> b!2573948 (= e!1624240 1)))

(declare-fun bm!166394 () Bool)

(assert (=> bm!166394 (= call!166399 call!166398)))

(declare-fun b!2573949 () Bool)

(assert (=> b!2573949 (= e!1624242 e!1624243)))

(assert (=> b!2573949 (= c!414499 ((_ is Star!7641) (ite c!414164 (regOne!15794 (regOne!15794 r!27340)) (regTwo!15795 (regOne!15794 r!27340)))))))

(assert (= (and d!728178 c!414501) b!2573948))

(assert (= (and d!728178 (not c!414501)) b!2573942))

(assert (= (and b!2573942 c!414500) b!2573943))

(assert (= (and b!2573942 (not c!414500)) b!2573944))

(assert (= (and b!2573944 c!414503) b!2573940))

(assert (= (and b!2573944 (not c!414503)) b!2573949))

(assert (= (and b!2573949 c!414499) b!2573941))

(assert (= (and b!2573949 (not c!414499)) b!2573946))

(assert (= (and b!2573946 c!414502) b!2573945))

(assert (= (and b!2573946 (not c!414502)) b!2573947))

(assert (= (or b!2573941 b!2573947) bm!166394))

(assert (= (or b!2573943 bm!166394) bm!166392))

(assert (= (or b!2573943 b!2573947) bm!166393))

(declare-fun m!2909563 () Bool)

(assert (=> bm!166392 m!2909563))

(declare-fun m!2909565 () Bool)

(assert (=> bm!166393 m!2909565))

(assert (=> bm!166150 d!728178))

(declare-fun d!728180 () Bool)

(assert (=> d!728180 (= (nullable!2558 (reg!7970 (regOne!15794 r!27340))) (nullableFct!783 (reg!7970 (regOne!15794 r!27340))))))

(declare-fun bs!470104 () Bool)

(assert (= bs!470104 d!728180))

(declare-fun m!2909571 () Bool)

(assert (=> bs!470104 m!2909571))

(assert (=> b!2573094 d!728180))

(declare-fun d!728182 () Bool)

(assert (=> d!728182 (= (isEmpty!17068 lt!906171) (not ((_ is Some!5921) lt!906171)))))

(assert (=> d!727766 d!728182))

(assert (=> b!2573055 d!728038))

(assert (=> d!727854 d!727832))

(declare-fun d!728186 () Bool)

(assert (=> d!728186 (= (derivative!336 EmptyLang!7641 tl!4068) EmptyLang!7641)))

(assert (=> d!728186 true))

(declare-fun _$134!186 () Unit!43463)

(assert (=> d!728186 (= (choose!15177 EmptyLang!7641 tl!4068) _$134!186)))

(declare-fun bs!470105 () Bool)

(assert (= bs!470105 d!728186))

(assert (=> bs!470105 m!2908459))

(assert (=> d!727854 d!728186))

(assert (=> bm!166204 d!728128))

(declare-fun b!2573973 () Bool)

(declare-fun res!1082767 () Bool)

(declare-fun e!1624258 () Bool)

(assert (=> b!2573973 (=> (not res!1082767) (not e!1624258))))

(declare-fun lt!906344 () List!29706)

(assert (=> b!2573973 (= res!1082767 (= (size!22965 lt!906344) (+ (size!22965 (_1!17344 (get!9321 lt!906187))) (size!22965 (_2!17344 (get!9321 lt!906187))))))))

(declare-fun b!2573971 () Bool)

(declare-fun e!1624257 () List!29706)

(assert (=> b!2573971 (= e!1624257 (_2!17344 (get!9321 lt!906187)))))

(declare-fun b!2573974 () Bool)

(assert (=> b!2573974 (= e!1624258 (or (not (= (_2!17344 (get!9321 lt!906187)) Nil!29606)) (= lt!906344 (_1!17344 (get!9321 lt!906187)))))))

(declare-fun b!2573972 () Bool)

(assert (=> b!2573972 (= e!1624257 (Cons!29606 (h!35026 (_1!17344 (get!9321 lt!906187))) (++!7280 (t!211405 (_1!17344 (get!9321 lt!906187))) (_2!17344 (get!9321 lt!906187)))))))

(declare-fun d!728192 () Bool)

(assert (=> d!728192 e!1624258))

(declare-fun res!1082768 () Bool)

(assert (=> d!728192 (=> (not res!1082768) (not e!1624258))))

(assert (=> d!728192 (= res!1082768 (= (content!4085 lt!906344) ((_ map or) (content!4085 (_1!17344 (get!9321 lt!906187))) (content!4085 (_2!17344 (get!9321 lt!906187))))))))

(assert (=> d!728192 (= lt!906344 e!1624257)))

(declare-fun c!414511 () Bool)

(assert (=> d!728192 (= c!414511 ((_ is Nil!29606) (_1!17344 (get!9321 lt!906187))))))

(assert (=> d!728192 (= (++!7280 (_1!17344 (get!9321 lt!906187)) (_2!17344 (get!9321 lt!906187))) lt!906344)))

(assert (= (and d!728192 c!414511) b!2573971))

(assert (= (and d!728192 (not c!414511)) b!2573972))

(assert (= (and d!728192 res!1082768) b!2573973))

(assert (= (and b!2573973 res!1082767) b!2573974))

(declare-fun m!2909607 () Bool)

(assert (=> b!2573973 m!2909607))

(declare-fun m!2909609 () Bool)

(assert (=> b!2573973 m!2909609))

(declare-fun m!2909611 () Bool)

(assert (=> b!2573973 m!2909611))

(declare-fun m!2909613 () Bool)

(assert (=> b!2573972 m!2909613))

(declare-fun m!2909615 () Bool)

(assert (=> d!728192 m!2909615))

(declare-fun m!2909617 () Bool)

(assert (=> d!728192 m!2909617))

(declare-fun m!2909619 () Bool)

(assert (=> d!728192 m!2909619))

(assert (=> b!2572533 d!728192))

(declare-fun d!728196 () Bool)

(assert (=> d!728196 (= (get!9321 lt!906187) (v!31866 lt!906187))))

(assert (=> b!2572533 d!728196))

(declare-fun d!728198 () Bool)

(assert (=> d!728198 (= (nullable!2558 (reg!7970 r!27340)) (nullableFct!783 (reg!7970 r!27340)))))

(declare-fun bs!470106 () Bool)

(assert (= bs!470106 d!728198))

(declare-fun m!2909621 () Bool)

(assert (=> bs!470106 m!2909621))

(assert (=> b!2573119 d!728198))

(declare-fun d!728200 () Bool)

(declare-fun lt!906349 () Int)

(assert (=> d!728200 (>= lt!906349 0)))

(declare-fun e!1624275 () Int)

(assert (=> d!728200 (= lt!906349 e!1624275)))

(declare-fun c!414520 () Bool)

(assert (=> d!728200 (= c!414520 ((_ is Nil!29606) lt!906198))))

(assert (=> d!728200 (= (size!22965 lt!906198) lt!906349)))

(declare-fun b!2574007 () Bool)

(assert (=> b!2574007 (= e!1624275 0)))

(declare-fun b!2574008 () Bool)

(assert (=> b!2574008 (= e!1624275 (+ 1 (size!22965 (t!211405 lt!906198))))))

(assert (= (and d!728200 c!414520) b!2574007))

(assert (= (and d!728200 (not c!414520)) b!2574008))

(declare-fun m!2909627 () Bool)

(assert (=> b!2574008 m!2909627))

(assert (=> b!2572593 d!728200))

(declare-fun d!728206 () Bool)

(declare-fun lt!906350 () Int)

(assert (=> d!728206 (>= lt!906350 0)))

(declare-fun e!1624276 () Int)

(assert (=> d!728206 (= lt!906350 e!1624276)))

(declare-fun c!414521 () Bool)

(assert (=> d!728206 (= c!414521 ((_ is Nil!29606) (_1!17344 lt!906169)))))

(assert (=> d!728206 (= (size!22965 (_1!17344 lt!906169)) lt!906350)))

(declare-fun b!2574009 () Bool)

(assert (=> b!2574009 (= e!1624276 0)))

(declare-fun b!2574010 () Bool)

(assert (=> b!2574010 (= e!1624276 (+ 1 (size!22965 (t!211405 (_1!17344 lt!906169)))))))

(assert (= (and d!728206 c!414521) b!2574009))

(assert (= (and d!728206 (not c!414521)) b!2574010))

(assert (=> b!2574010 m!2909177))

(assert (=> b!2572593 d!728206))

(declare-fun d!728208 () Bool)

(declare-fun lt!906351 () Int)

(assert (=> d!728208 (>= lt!906351 0)))

(declare-fun e!1624277 () Int)

(assert (=> d!728208 (= lt!906351 e!1624277)))

(declare-fun c!414522 () Bool)

(assert (=> d!728208 (= c!414522 ((_ is Nil!29606) (_2!17344 lt!906169)))))

(assert (=> d!728208 (= (size!22965 (_2!17344 lt!906169)) lt!906351)))

(declare-fun b!2574011 () Bool)

(assert (=> b!2574011 (= e!1624277 0)))

(declare-fun b!2574012 () Bool)

(assert (=> b!2574012 (= e!1624277 (+ 1 (size!22965 (t!211405 (_2!17344 lt!906169)))))))

(assert (= (and d!728208 c!414522) b!2574011))

(assert (= (and d!728208 (not c!414522)) b!2574012))

(declare-fun m!2909631 () Bool)

(assert (=> b!2574012 m!2909631))

(assert (=> b!2572593 d!728208))

(assert (=> b!2573126 d!728006))

(assert (=> b!2573126 d!728014))

(declare-fun d!728210 () Bool)

(declare-fun lt!906352 () Regex!7641)

(assert (=> d!728210 (validRegex!3267 lt!906352)))

(declare-fun e!1624278 () Regex!7641)

(assert (=> d!728210 (= lt!906352 e!1624278)))

(declare-fun c!414523 () Bool)

(assert (=> d!728210 (= c!414523 ((_ is Cons!29606) (t!211405 tl!4068)))))

(assert (=> d!728210 (validRegex!3267 (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)))))

(assert (=> d!728210 (= (derivative!336 (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)) (t!211405 tl!4068)) lt!906352)))

(declare-fun b!2574013 () Bool)

(assert (=> b!2574013 (= e!1624278 (derivative!336 (derivativeStep!2210 (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)) (h!35026 (t!211405 tl!4068))) (t!211405 (t!211405 tl!4068))))))

(declare-fun b!2574014 () Bool)

(assert (=> b!2574014 (= e!1624278 (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)))))

(assert (= (and d!728210 c!414523) b!2574013))

(assert (= (and d!728210 (not c!414523)) b!2574014))

(declare-fun m!2909635 () Bool)

(assert (=> d!728210 m!2909635))

(assert (=> d!728210 m!2908757))

(declare-fun m!2909639 () Bool)

(assert (=> d!728210 m!2909639))

(assert (=> b!2574013 m!2908757))

(declare-fun m!2909641 () Bool)

(assert (=> b!2574013 m!2909641))

(assert (=> b!2574013 m!2909641))

(declare-fun m!2909645 () Bool)

(assert (=> b!2574013 m!2909645))

(assert (=> b!2572943 d!728210))

(declare-fun d!728212 () Bool)

(declare-fun lt!906353 () Regex!7641)

(assert (=> d!728212 (validRegex!3267 lt!906353)))

(declare-fun e!1624283 () Regex!7641)

(assert (=> d!728212 (= lt!906353 e!1624283)))

(declare-fun c!414527 () Bool)

(assert (=> d!728212 (= c!414527 (or ((_ is EmptyExpr!7641) EmptyLang!7641) ((_ is EmptyLang!7641) EmptyLang!7641)))))

(assert (=> d!728212 (validRegex!3267 EmptyLang!7641)))

(assert (=> d!728212 (= (derivativeStep!2210 EmptyLang!7641 (h!35026 tl!4068)) lt!906353)))

(declare-fun b!2574015 () Bool)

(declare-fun e!1624280 () Regex!7641)

(declare-fun call!166411 () Regex!7641)

(assert (=> b!2574015 (= e!1624280 (Union!7641 (Concat!12337 call!166411 (regTwo!15794 EmptyLang!7641)) EmptyLang!7641))))

(declare-fun call!166410 () Regex!7641)

(declare-fun bm!166403 () Bool)

(declare-fun c!414528 () Bool)

(declare-fun c!414526 () Bool)

(assert (=> bm!166403 (= call!166410 (derivativeStep!2210 (ite c!414526 (regOne!15795 EmptyLang!7641) (ite c!414528 (reg!7970 EmptyLang!7641) (regOne!15794 EmptyLang!7641))) (h!35026 tl!4068)))))

(declare-fun bm!166404 () Bool)

(declare-fun call!166408 () Regex!7641)

(assert (=> bm!166404 (= call!166411 call!166408)))

(declare-fun bm!166405 () Bool)

(declare-fun call!166409 () Regex!7641)

(assert (=> bm!166405 (= call!166409 (derivativeStep!2210 (ite c!414526 (regTwo!15795 EmptyLang!7641) (regTwo!15794 EmptyLang!7641)) (h!35026 tl!4068)))))

(declare-fun b!2574016 () Bool)

(declare-fun e!1624281 () Regex!7641)

(assert (=> b!2574016 (= e!1624281 (ite (= (h!35026 tl!4068) (c!414083 EmptyLang!7641)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574017 () Bool)

(assert (=> b!2574017 (= e!1624283 e!1624281)))

(declare-fun c!414525 () Bool)

(assert (=> b!2574017 (= c!414525 ((_ is ElementMatch!7641) EmptyLang!7641))))

(declare-fun b!2574018 () Bool)

(assert (=> b!2574018 (= c!414526 ((_ is Union!7641) EmptyLang!7641))))

(declare-fun e!1624279 () Regex!7641)

(assert (=> b!2574018 (= e!1624281 e!1624279)))

(declare-fun bm!166406 () Bool)

(assert (=> bm!166406 (= call!166408 call!166410)))

(declare-fun b!2574019 () Bool)

(declare-fun c!414524 () Bool)

(assert (=> b!2574019 (= c!414524 (nullable!2558 (regOne!15794 EmptyLang!7641)))))

(declare-fun e!1624282 () Regex!7641)

(assert (=> b!2574019 (= e!1624282 e!1624280)))

(declare-fun b!2574020 () Bool)

(assert (=> b!2574020 (= e!1624282 (Concat!12337 call!166408 EmptyLang!7641))))

(declare-fun b!2574021 () Bool)

(assert (=> b!2574021 (= e!1624279 (Union!7641 call!166410 call!166409))))

(declare-fun b!2574022 () Bool)

(assert (=> b!2574022 (= e!1624280 (Union!7641 (Concat!12337 call!166411 (regTwo!15794 EmptyLang!7641)) call!166409))))

(declare-fun b!2574023 () Bool)

(assert (=> b!2574023 (= e!1624279 e!1624282)))

(assert (=> b!2574023 (= c!414528 ((_ is Star!7641) EmptyLang!7641))))

(declare-fun b!2574024 () Bool)

(assert (=> b!2574024 (= e!1624283 EmptyLang!7641)))

(assert (= (and d!728212 c!414527) b!2574024))

(assert (= (and d!728212 (not c!414527)) b!2574017))

(assert (= (and b!2574017 c!414525) b!2574016))

(assert (= (and b!2574017 (not c!414525)) b!2574018))

(assert (= (and b!2574018 c!414526) b!2574021))

(assert (= (and b!2574018 (not c!414526)) b!2574023))

(assert (= (and b!2574023 c!414528) b!2574020))

(assert (= (and b!2574023 (not c!414528)) b!2574019))

(assert (= (and b!2574019 c!414524) b!2574022))

(assert (= (and b!2574019 (not c!414524)) b!2574015))

(assert (= (or b!2574022 b!2574015) bm!166404))

(assert (= (or b!2574020 bm!166404) bm!166406))

(assert (= (or b!2574021 b!2574022) bm!166405))

(assert (= (or b!2574021 bm!166406) bm!166403))

(declare-fun m!2909647 () Bool)

(assert (=> d!728212 m!2909647))

(assert (=> d!728212 m!2908755))

(declare-fun m!2909651 () Bool)

(assert (=> bm!166403 m!2909651))

(declare-fun m!2909653 () Bool)

(assert (=> bm!166405 m!2909653))

(assert (=> b!2574019 m!2909159))

(assert (=> b!2572943 d!728212))

(declare-fun d!728216 () Bool)

(declare-fun lt!906355 () Regex!7641)

(assert (=> d!728216 (validRegex!3267 lt!906355)))

(declare-fun e!1624293 () Regex!7641)

(assert (=> d!728216 (= lt!906355 e!1624293)))

(declare-fun c!414537 () Bool)

(assert (=> d!728216 (= c!414537 (or ((_ is EmptyExpr!7641) (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))) ((_ is EmptyLang!7641) (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))))))

(assert (=> d!728216 (validRegex!3267 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))))

(assert (=> d!728216 (= (derivativeStep!2210 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)) c!14016) lt!906355)))

(declare-fun call!166419 () Regex!7641)

(declare-fun b!2574035 () Bool)

(declare-fun e!1624290 () Regex!7641)

(assert (=> b!2574035 (= e!1624290 (Union!7641 (Concat!12337 call!166419 (regTwo!15794 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))) EmptyLang!7641))))

(declare-fun call!166418 () Regex!7641)

(declare-fun c!414536 () Bool)

(declare-fun c!414538 () Bool)

(declare-fun bm!166411 () Bool)

(assert (=> bm!166411 (= call!166418 (derivativeStep!2210 (ite c!414536 (regOne!15795 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))) (ite c!414538 (reg!7970 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))) (regOne!15794 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))))) c!14016))))

(declare-fun bm!166412 () Bool)

(declare-fun call!166416 () Regex!7641)

(assert (=> bm!166412 (= call!166419 call!166416)))

(declare-fun bm!166413 () Bool)

(declare-fun call!166417 () Regex!7641)

(assert (=> bm!166413 (= call!166417 (derivativeStep!2210 (ite c!414536 (regTwo!15795 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))) (regTwo!15794 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))) c!14016))))

(declare-fun e!1624291 () Regex!7641)

(declare-fun b!2574036 () Bool)

(assert (=> b!2574036 (= e!1624291 (ite (= c!14016 (c!414083 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574037 () Bool)

(assert (=> b!2574037 (= e!1624293 e!1624291)))

(declare-fun c!414535 () Bool)

(assert (=> b!2574037 (= c!414535 ((_ is ElementMatch!7641) (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2574038 () Bool)

(assert (=> b!2574038 (= c!414536 ((_ is Union!7641) (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun e!1624289 () Regex!7641)

(assert (=> b!2574038 (= e!1624291 e!1624289)))

(declare-fun bm!166414 () Bool)

(assert (=> bm!166414 (= call!166416 call!166418)))

(declare-fun b!2574039 () Bool)

(declare-fun c!414534 () Bool)

(assert (=> b!2574039 (= c!414534 (nullable!2558 (regOne!15794 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))))))

(declare-fun e!1624292 () Regex!7641)

(assert (=> b!2574039 (= e!1624292 e!1624290)))

(declare-fun b!2574040 () Bool)

(assert (=> b!2574040 (= e!1624292 (Concat!12337 call!166416 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2574041 () Bool)

(assert (=> b!2574041 (= e!1624289 (Union!7641 call!166418 call!166417))))

(declare-fun b!2574042 () Bool)

(assert (=> b!2574042 (= e!1624290 (Union!7641 (Concat!12337 call!166419 (regTwo!15794 (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340)))) call!166417))))

(declare-fun b!2574043 () Bool)

(assert (=> b!2574043 (= e!1624289 e!1624292)))

(assert (=> b!2574043 (= c!414538 ((_ is Star!7641) (ite c!414213 (regTwo!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2574044 () Bool)

(assert (=> b!2574044 (= e!1624293 EmptyLang!7641)))

(assert (= (and d!728216 c!414537) b!2574044))

(assert (= (and d!728216 (not c!414537)) b!2574037))

(assert (= (and b!2574037 c!414535) b!2574036))

(assert (= (and b!2574037 (not c!414535)) b!2574038))

(assert (= (and b!2574038 c!414536) b!2574041))

(assert (= (and b!2574038 (not c!414536)) b!2574043))

(assert (= (and b!2574043 c!414538) b!2574040))

(assert (= (and b!2574043 (not c!414538)) b!2574039))

(assert (= (and b!2574039 c!414534) b!2574042))

(assert (= (and b!2574039 (not c!414534)) b!2574035))

(assert (= (or b!2574042 b!2574035) bm!166412))

(assert (= (or b!2574040 bm!166412) bm!166414))

(assert (= (or b!2574041 b!2574042) bm!166413))

(assert (= (or b!2574041 bm!166414) bm!166411))

(declare-fun m!2909659 () Bool)

(assert (=> d!728216 m!2909659))

(declare-fun m!2909661 () Bool)

(assert (=> d!728216 m!2909661))

(declare-fun m!2909663 () Bool)

(assert (=> bm!166411 m!2909663))

(declare-fun m!2909665 () Bool)

(assert (=> bm!166413 m!2909665))

(declare-fun m!2909667 () Bool)

(assert (=> b!2574039 m!2909667))

(assert (=> bm!166172 d!728216))

(assert (=> b!2573139 d!727950))

(declare-fun d!728218 () Bool)

(declare-fun c!414541 () Bool)

(assert (=> d!728218 (= c!414541 ((_ is Nil!29606) lt!906198))))

(declare-fun e!1624308 () (InoxSet C!15440))

(assert (=> d!728218 (= (content!4085 lt!906198) e!1624308)))

(declare-fun b!2574092 () Bool)

(assert (=> b!2574092 (= e!1624308 ((as const (Array C!15440 Bool)) false))))

(declare-fun b!2574094 () Bool)

(assert (=> b!2574094 (= e!1624308 ((_ map or) (store ((as const (Array C!15440 Bool)) false) (h!35026 lt!906198) true) (content!4085 (t!211405 lt!906198))))))

(assert (= (and d!728218 c!414541) b!2574092))

(assert (= (and d!728218 (not c!414541)) b!2574094))

(declare-fun m!2909669 () Bool)

(assert (=> b!2574094 m!2909669))

(declare-fun m!2909671 () Bool)

(assert (=> b!2574094 m!2909671))

(assert (=> d!727768 d!728218))

(declare-fun d!728220 () Bool)

(declare-fun c!414542 () Bool)

(assert (=> d!728220 (= c!414542 ((_ is Nil!29606) (_1!17344 lt!906169)))))

(declare-fun e!1624310 () (InoxSet C!15440))

(assert (=> d!728220 (= (content!4085 (_1!17344 lt!906169)) e!1624310)))

(declare-fun b!2574100 () Bool)

(assert (=> b!2574100 (= e!1624310 ((as const (Array C!15440 Bool)) false))))

(declare-fun b!2574101 () Bool)

(assert (=> b!2574101 (= e!1624310 ((_ map or) (store ((as const (Array C!15440 Bool)) false) (h!35026 (_1!17344 lt!906169)) true) (content!4085 (t!211405 (_1!17344 lt!906169)))))))

(assert (= (and d!728220 c!414542) b!2574100))

(assert (= (and d!728220 (not c!414542)) b!2574101))

(declare-fun m!2909673 () Bool)

(assert (=> b!2574101 m!2909673))

(assert (=> b!2574101 m!2909183))

(assert (=> d!727768 d!728220))

(declare-fun d!728222 () Bool)

(declare-fun c!414543 () Bool)

(assert (=> d!728222 (= c!414543 ((_ is Nil!29606) (_2!17344 lt!906169)))))

(declare-fun e!1624312 () (InoxSet C!15440))

(assert (=> d!728222 (= (content!4085 (_2!17344 lt!906169)) e!1624312)))

(declare-fun b!2574106 () Bool)

(assert (=> b!2574106 (= e!1624312 ((as const (Array C!15440 Bool)) false))))

(declare-fun b!2574107 () Bool)

(assert (=> b!2574107 (= e!1624312 ((_ map or) (store ((as const (Array C!15440 Bool)) false) (h!35026 (_2!17344 lt!906169)) true) (content!4085 (t!211405 (_2!17344 lt!906169)))))))

(assert (= (and d!728222 c!414543) b!2574106))

(assert (= (and d!728222 (not c!414543)) b!2574107))

(declare-fun m!2909675 () Bool)

(assert (=> b!2574107 m!2909675))

(declare-fun m!2909677 () Bool)

(assert (=> b!2574107 m!2909677))

(assert (=> d!727768 d!728222))

(declare-fun b!2574115 () Bool)

(declare-fun res!1082788 () Bool)

(declare-fun e!1624316 () Bool)

(assert (=> b!2574115 (=> res!1082788 e!1624316)))

(assert (=> b!2574115 (= res!1082788 (not ((_ is Concat!12337) lt!906245)))))

(declare-fun e!1624317 () Bool)

(assert (=> b!2574115 (= e!1624317 e!1624316)))

(declare-fun b!2574117 () Bool)

(declare-fun e!1624315 () Bool)

(declare-fun call!166422 () Bool)

(assert (=> b!2574117 (= e!1624315 call!166422)))

(declare-fun b!2574118 () Bool)

(declare-fun e!1624314 () Bool)

(declare-fun e!1624321 () Bool)

(assert (=> b!2574118 (= e!1624314 e!1624321)))

(declare-fun c!414544 () Bool)

(assert (=> b!2574118 (= c!414544 ((_ is Star!7641) lt!906245))))

(declare-fun b!2574120 () Bool)

(declare-fun res!1082787 () Bool)

(assert (=> b!2574120 (=> (not res!1082787) (not e!1624315))))

(declare-fun call!166421 () Bool)

(assert (=> b!2574120 (= res!1082787 call!166421)))

(assert (=> b!2574120 (= e!1624317 e!1624315)))

(declare-fun b!2574121 () Bool)

(assert (=> b!2574121 (= e!1624321 e!1624317)))

(declare-fun c!414545 () Bool)

(assert (=> b!2574121 (= c!414545 ((_ is Union!7641) lt!906245))))

(declare-fun b!2574122 () Bool)

(declare-fun e!1624320 () Bool)

(assert (=> b!2574122 (= e!1624320 call!166421)))

(declare-fun bm!166415 () Bool)

(declare-fun call!166420 () Bool)

(assert (=> bm!166415 (= call!166420 (validRegex!3267 (ite c!414544 (reg!7970 lt!906245) (ite c!414545 (regTwo!15795 lt!906245) (regOne!15794 lt!906245)))))))

(declare-fun b!2574123 () Bool)

(assert (=> b!2574123 (= e!1624316 e!1624320)))

(declare-fun res!1082786 () Bool)

(assert (=> b!2574123 (=> (not res!1082786) (not e!1624320))))

(assert (=> b!2574123 (= res!1082786 call!166422)))

(declare-fun bm!166416 () Bool)

(assert (=> bm!166416 (= call!166421 (validRegex!3267 (ite c!414545 (regOne!15795 lt!906245) (regTwo!15794 lt!906245))))))

(declare-fun b!2574124 () Bool)

(declare-fun e!1624318 () Bool)

(assert (=> b!2574124 (= e!1624321 e!1624318)))

(declare-fun res!1082789 () Bool)

(assert (=> b!2574124 (= res!1082789 (not (nullable!2558 (reg!7970 lt!906245))))))

(assert (=> b!2574124 (=> (not res!1082789) (not e!1624318))))

(declare-fun bm!166417 () Bool)

(assert (=> bm!166417 (= call!166422 call!166420)))

(declare-fun d!728224 () Bool)

(declare-fun res!1082785 () Bool)

(assert (=> d!728224 (=> res!1082785 e!1624314)))

(assert (=> d!728224 (= res!1082785 ((_ is ElementMatch!7641) lt!906245))))

(assert (=> d!728224 (= (validRegex!3267 lt!906245) e!1624314)))

(declare-fun b!2574119 () Bool)

(assert (=> b!2574119 (= e!1624318 call!166420)))

(assert (= (and d!728224 (not res!1082785)) b!2574118))

(assert (= (and b!2574118 c!414544) b!2574124))

(assert (= (and b!2574118 (not c!414544)) b!2574121))

(assert (= (and b!2574124 res!1082789) b!2574119))

(assert (= (and b!2574121 c!414545) b!2574120))

(assert (= (and b!2574121 (not c!414545)) b!2574115))

(assert (= (and b!2574120 res!1082787) b!2574117))

(assert (= (and b!2574115 (not res!1082788)) b!2574123))

(assert (= (and b!2574123 res!1082786) b!2574122))

(assert (= (or b!2574120 b!2574122) bm!166416))

(assert (= (or b!2574117 b!2574123) bm!166417))

(assert (= (or b!2574119 bm!166417) bm!166415))

(declare-fun m!2909679 () Bool)

(assert (=> bm!166415 m!2909679))

(declare-fun m!2909681 () Bool)

(assert (=> bm!166416 m!2909681))

(declare-fun m!2909683 () Bool)

(assert (=> b!2574124 m!2909683))

(assert (=> d!727802 d!728224))

(assert (=> d!727802 d!727866))

(declare-fun b!2574141 () Bool)

(declare-fun res!1082793 () Bool)

(declare-fun e!1624328 () Bool)

(assert (=> b!2574141 (=> (not res!1082793) (not e!1624328))))

(assert (=> b!2574141 (= res!1082793 (isEmpty!17069 (tail!4121 (_2!17344 (get!9321 lt!906187)))))))

(declare-fun b!2574142 () Bool)

(declare-fun e!1624326 () Bool)

(assert (=> b!2574142 (= e!1624326 (not (= (head!5846 (_2!17344 (get!9321 lt!906187))) (c!414083 (regTwo!15794 r!27340)))))))

(declare-fun b!2574143 () Bool)

(declare-fun res!1082791 () Bool)

(declare-fun e!1624327 () Bool)

(assert (=> b!2574143 (=> res!1082791 e!1624327)))

(assert (=> b!2574143 (= res!1082791 e!1624328)))

(declare-fun res!1082795 () Bool)

(assert (=> b!2574143 (=> (not res!1082795) (not e!1624328))))

(declare-fun lt!906356 () Bool)

(assert (=> b!2574143 (= res!1082795 lt!906356)))

(declare-fun b!2574144 () Bool)

(declare-fun e!1624331 () Bool)

(assert (=> b!2574144 (= e!1624331 (not lt!906356))))

(declare-fun d!728226 () Bool)

(declare-fun e!1624332 () Bool)

(assert (=> d!728226 e!1624332))

(declare-fun c!414546 () Bool)

(assert (=> d!728226 (= c!414546 ((_ is EmptyExpr!7641) (regTwo!15794 r!27340)))))

(declare-fun e!1624330 () Bool)

(assert (=> d!728226 (= lt!906356 e!1624330)))

(declare-fun c!414548 () Bool)

(assert (=> d!728226 (= c!414548 (isEmpty!17069 (_2!17344 (get!9321 lt!906187))))))

(assert (=> d!728226 (validRegex!3267 (regTwo!15794 r!27340))))

(assert (=> d!728226 (= (matchR!3584 (regTwo!15794 r!27340) (_2!17344 (get!9321 lt!906187))) lt!906356)))

(declare-fun b!2574145 () Bool)

(declare-fun res!1082792 () Bool)

(assert (=> b!2574145 (=> res!1082792 e!1624327)))

(assert (=> b!2574145 (= res!1082792 (not ((_ is ElementMatch!7641) (regTwo!15794 r!27340))))))

(assert (=> b!2574145 (= e!1624331 e!1624327)))

(declare-fun b!2574146 () Bool)

(assert (=> b!2574146 (= e!1624328 (= (head!5846 (_2!17344 (get!9321 lt!906187))) (c!414083 (regTwo!15794 r!27340))))))

(declare-fun b!2574147 () Bool)

(declare-fun res!1082790 () Bool)

(assert (=> b!2574147 (=> res!1082790 e!1624326)))

(assert (=> b!2574147 (= res!1082790 (not (isEmpty!17069 (tail!4121 (_2!17344 (get!9321 lt!906187))))))))

(declare-fun b!2574148 () Bool)

(assert (=> b!2574148 (= e!1624330 (nullable!2558 (regTwo!15794 r!27340)))))

(declare-fun b!2574149 () Bool)

(declare-fun call!166423 () Bool)

(assert (=> b!2574149 (= e!1624332 (= lt!906356 call!166423))))

(declare-fun bm!166418 () Bool)

(assert (=> bm!166418 (= call!166423 (isEmpty!17069 (_2!17344 (get!9321 lt!906187))))))

(declare-fun b!2574150 () Bool)

(declare-fun res!1082797 () Bool)

(assert (=> b!2574150 (=> (not res!1082797) (not e!1624328))))

(assert (=> b!2574150 (= res!1082797 (not call!166423))))

(declare-fun b!2574151 () Bool)

(assert (=> b!2574151 (= e!1624330 (matchR!3584 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 (get!9321 lt!906187)))) (tail!4121 (_2!17344 (get!9321 lt!906187)))))))

(declare-fun b!2574152 () Bool)

(assert (=> b!2574152 (= e!1624332 e!1624331)))

(declare-fun c!414547 () Bool)

(assert (=> b!2574152 (= c!414547 ((_ is EmptyLang!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2574153 () Bool)

(declare-fun e!1624329 () Bool)

(assert (=> b!2574153 (= e!1624327 e!1624329)))

(declare-fun res!1082794 () Bool)

(assert (=> b!2574153 (=> (not res!1082794) (not e!1624329))))

(assert (=> b!2574153 (= res!1082794 (not lt!906356))))

(declare-fun b!2574154 () Bool)

(assert (=> b!2574154 (= e!1624329 e!1624326)))

(declare-fun res!1082796 () Bool)

(assert (=> b!2574154 (=> res!1082796 e!1624326)))

(assert (=> b!2574154 (= res!1082796 call!166423)))

(assert (= (and d!728226 c!414548) b!2574148))

(assert (= (and d!728226 (not c!414548)) b!2574151))

(assert (= (and d!728226 c!414546) b!2574149))

(assert (= (and d!728226 (not c!414546)) b!2574152))

(assert (= (and b!2574152 c!414547) b!2574144))

(assert (= (and b!2574152 (not c!414547)) b!2574145))

(assert (= (and b!2574145 (not res!1082792)) b!2574143))

(assert (= (and b!2574143 res!1082795) b!2574150))

(assert (= (and b!2574150 res!1082797) b!2574141))

(assert (= (and b!2574141 res!1082793) b!2574146))

(assert (= (and b!2574143 (not res!1082791)) b!2574153))

(assert (= (and b!2574153 res!1082794) b!2574154))

(assert (= (and b!2574154 (not res!1082796)) b!2574147))

(assert (= (and b!2574147 (not res!1082790)) b!2574142))

(assert (= (or b!2574149 b!2574150 b!2574154) bm!166418))

(declare-fun m!2909685 () Bool)

(assert (=> b!2574141 m!2909685))

(assert (=> b!2574141 m!2909685))

(declare-fun m!2909687 () Bool)

(assert (=> b!2574141 m!2909687))

(declare-fun m!2909689 () Bool)

(assert (=> b!2574151 m!2909689))

(assert (=> b!2574151 m!2909689))

(declare-fun m!2909691 () Bool)

(assert (=> b!2574151 m!2909691))

(assert (=> b!2574151 m!2909685))

(assert (=> b!2574151 m!2909691))

(assert (=> b!2574151 m!2909685))

(declare-fun m!2909693 () Bool)

(assert (=> b!2574151 m!2909693))

(assert (=> b!2574147 m!2909685))

(assert (=> b!2574147 m!2909685))

(assert (=> b!2574147 m!2909687))

(declare-fun m!2909695 () Bool)

(assert (=> bm!166418 m!2909695))

(assert (=> b!2574148 m!2908893))

(assert (=> b!2574142 m!2909689))

(assert (=> d!728226 m!2909695))

(assert (=> d!728226 m!2908895))

(assert (=> b!2574146 m!2909689))

(assert (=> b!2572537 d!728226))

(assert (=> b!2572537 d!728196))

(declare-fun d!728228 () Bool)

(assert (=> d!728228 (= (isEmpty!17069 (_1!17344 lt!906169)) ((_ is Nil!29606) (_1!17344 lt!906169)))))

(assert (=> d!727772 d!728228))

(assert (=> d!727772 d!728004))

(declare-fun d!728230 () Bool)

(assert (=> d!728230 (= (nullable!2558 (regOne!15794 (regOne!15794 r!27340))) (nullableFct!783 (regOne!15794 (regOne!15794 r!27340))))))

(declare-fun bs!470107 () Bool)

(assert (= bs!470107 d!728230))

(declare-fun m!2909697 () Bool)

(assert (=> bs!470107 m!2909697))

(assert (=> b!2572921 d!728230))

(assert (=> d!727870 d!728154))

(declare-fun d!728232 () Bool)

(assert (=> d!728232 (= (validRegex!3267 EmptyLang!7641) true)))

(assert (=> d!727870 d!728232))

(declare-fun b!2574179 () Bool)

(declare-fun res!1082801 () Bool)

(declare-fun e!1624341 () Bool)

(assert (=> b!2574179 (=> (not res!1082801) (not e!1624341))))

(assert (=> b!2574179 (= res!1082801 (isEmpty!17069 (tail!4121 (_1!17344 (get!9321 lt!906187)))))))

(declare-fun b!2574180 () Bool)

(declare-fun e!1624339 () Bool)

(assert (=> b!2574180 (= e!1624339 (not (= (head!5846 (_1!17344 (get!9321 lt!906187))) (c!414083 lt!906173))))))

(declare-fun b!2574181 () Bool)

(declare-fun res!1082799 () Bool)

(declare-fun e!1624340 () Bool)

(assert (=> b!2574181 (=> res!1082799 e!1624340)))

(assert (=> b!2574181 (= res!1082799 e!1624341)))

(declare-fun res!1082803 () Bool)

(assert (=> b!2574181 (=> (not res!1082803) (not e!1624341))))

(declare-fun lt!906357 () Bool)

(assert (=> b!2574181 (= res!1082803 lt!906357)))

(declare-fun b!2574182 () Bool)

(declare-fun e!1624344 () Bool)

(assert (=> b!2574182 (= e!1624344 (not lt!906357))))

(declare-fun d!728234 () Bool)

(declare-fun e!1624345 () Bool)

(assert (=> d!728234 e!1624345))

(declare-fun c!414549 () Bool)

(assert (=> d!728234 (= c!414549 ((_ is EmptyExpr!7641) lt!906173))))

(declare-fun e!1624343 () Bool)

(assert (=> d!728234 (= lt!906357 e!1624343)))

(declare-fun c!414551 () Bool)

(assert (=> d!728234 (= c!414551 (isEmpty!17069 (_1!17344 (get!9321 lt!906187))))))

(assert (=> d!728234 (validRegex!3267 lt!906173)))

(assert (=> d!728234 (= (matchR!3584 lt!906173 (_1!17344 (get!9321 lt!906187))) lt!906357)))

(declare-fun b!2574183 () Bool)

(declare-fun res!1082800 () Bool)

(assert (=> b!2574183 (=> res!1082800 e!1624340)))

(assert (=> b!2574183 (= res!1082800 (not ((_ is ElementMatch!7641) lt!906173)))))

(assert (=> b!2574183 (= e!1624344 e!1624340)))

(declare-fun b!2574184 () Bool)

(assert (=> b!2574184 (= e!1624341 (= (head!5846 (_1!17344 (get!9321 lt!906187))) (c!414083 lt!906173)))))

(declare-fun b!2574185 () Bool)

(declare-fun res!1082798 () Bool)

(assert (=> b!2574185 (=> res!1082798 e!1624339)))

(assert (=> b!2574185 (= res!1082798 (not (isEmpty!17069 (tail!4121 (_1!17344 (get!9321 lt!906187))))))))

(declare-fun b!2574186 () Bool)

(assert (=> b!2574186 (= e!1624343 (nullable!2558 lt!906173))))

(declare-fun b!2574187 () Bool)

(declare-fun call!166424 () Bool)

(assert (=> b!2574187 (= e!1624345 (= lt!906357 call!166424))))

(declare-fun bm!166419 () Bool)

(assert (=> bm!166419 (= call!166424 (isEmpty!17069 (_1!17344 (get!9321 lt!906187))))))

(declare-fun b!2574188 () Bool)

(declare-fun res!1082805 () Bool)

(assert (=> b!2574188 (=> (not res!1082805) (not e!1624341))))

(assert (=> b!2574188 (= res!1082805 (not call!166424))))

(declare-fun b!2574189 () Bool)

(assert (=> b!2574189 (= e!1624343 (matchR!3584 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 (get!9321 lt!906187)))) (tail!4121 (_1!17344 (get!9321 lt!906187)))))))

(declare-fun b!2574190 () Bool)

(assert (=> b!2574190 (= e!1624345 e!1624344)))

(declare-fun c!414550 () Bool)

(assert (=> b!2574190 (= c!414550 ((_ is EmptyLang!7641) lt!906173))))

(declare-fun b!2574191 () Bool)

(declare-fun e!1624342 () Bool)

(assert (=> b!2574191 (= e!1624340 e!1624342)))

(declare-fun res!1082802 () Bool)

(assert (=> b!2574191 (=> (not res!1082802) (not e!1624342))))

(assert (=> b!2574191 (= res!1082802 (not lt!906357))))

(declare-fun b!2574192 () Bool)

(assert (=> b!2574192 (= e!1624342 e!1624339)))

(declare-fun res!1082804 () Bool)

(assert (=> b!2574192 (=> res!1082804 e!1624339)))

(assert (=> b!2574192 (= res!1082804 call!166424)))

(assert (= (and d!728234 c!414551) b!2574186))

(assert (= (and d!728234 (not c!414551)) b!2574189))

(assert (= (and d!728234 c!414549) b!2574187))

(assert (= (and d!728234 (not c!414549)) b!2574190))

(assert (= (and b!2574190 c!414550) b!2574182))

(assert (= (and b!2574190 (not c!414550)) b!2574183))

(assert (= (and b!2574183 (not res!1082800)) b!2574181))

(assert (= (and b!2574181 res!1082803) b!2574188))

(assert (= (and b!2574188 res!1082805) b!2574179))

(assert (= (and b!2574179 res!1082801) b!2574184))

(assert (= (and b!2574181 (not res!1082799)) b!2574191))

(assert (= (and b!2574191 res!1082802) b!2574192))

(assert (= (and b!2574192 (not res!1082804)) b!2574185))

(assert (= (and b!2574185 (not res!1082798)) b!2574180))

(assert (= (or b!2574187 b!2574188 b!2574192) bm!166419))

(declare-fun m!2909699 () Bool)

(assert (=> b!2574179 m!2909699))

(assert (=> b!2574179 m!2909699))

(declare-fun m!2909701 () Bool)

(assert (=> b!2574179 m!2909701))

(declare-fun m!2909703 () Bool)

(assert (=> b!2574189 m!2909703))

(assert (=> b!2574189 m!2909703))

(declare-fun m!2909705 () Bool)

(assert (=> b!2574189 m!2909705))

(assert (=> b!2574189 m!2909699))

(assert (=> b!2574189 m!2909705))

(assert (=> b!2574189 m!2909699))

(declare-fun m!2909707 () Bool)

(assert (=> b!2574189 m!2909707))

(assert (=> b!2574185 m!2909699))

(assert (=> b!2574185 m!2909699))

(assert (=> b!2574185 m!2909701))

(declare-fun m!2909709 () Bool)

(assert (=> bm!166419 m!2909709))

(assert (=> b!2574186 m!2908579))

(assert (=> b!2574180 m!2909703))

(assert (=> d!728234 m!2909709))

(assert (=> d!728234 m!2908495))

(assert (=> b!2574184 m!2909703))

(assert (=> b!2572539 d!728234))

(assert (=> b!2572539 d!728196))

(declare-fun d!728236 () Bool)

(declare-fun lt!906358 () Regex!7641)

(assert (=> d!728236 (validRegex!3267 lt!906358)))

(declare-fun e!1624346 () Regex!7641)

(assert (=> d!728236 (= lt!906358 e!1624346)))

(declare-fun c!414552 () Bool)

(assert (=> d!728236 (= c!414552 ((_ is Cons!29606) (t!211405 tl!4068)))))

(assert (=> d!728236 (validRegex!3267 (derivativeStep!2210 lt!906180 (h!35026 tl!4068)))))

(assert (=> d!728236 (= (derivative!336 (derivativeStep!2210 lt!906180 (h!35026 tl!4068)) (t!211405 tl!4068)) lt!906358)))

(declare-fun b!2574193 () Bool)

(assert (=> b!2574193 (= e!1624346 (derivative!336 (derivativeStep!2210 (derivativeStep!2210 lt!906180 (h!35026 tl!4068)) (h!35026 (t!211405 tl!4068))) (t!211405 (t!211405 tl!4068))))))

(declare-fun b!2574194 () Bool)

(assert (=> b!2574194 (= e!1624346 (derivativeStep!2210 lt!906180 (h!35026 tl!4068)))))

(assert (= (and d!728236 c!414552) b!2574193))

(assert (= (and d!728236 (not c!414552)) b!2574194))

(declare-fun m!2909711 () Bool)

(assert (=> d!728236 m!2909711))

(assert (=> d!728236 m!2908831))

(declare-fun m!2909713 () Bool)

(assert (=> d!728236 m!2909713))

(assert (=> b!2574193 m!2908831))

(declare-fun m!2909715 () Bool)

(assert (=> b!2574193 m!2909715))

(assert (=> b!2574193 m!2909715))

(declare-fun m!2909717 () Bool)

(assert (=> b!2574193 m!2909717))

(assert (=> b!2573052 d!728236))

(declare-fun d!728238 () Bool)

(declare-fun lt!906359 () Regex!7641)

(assert (=> d!728238 (validRegex!3267 lt!906359)))

(declare-fun e!1624351 () Regex!7641)

(assert (=> d!728238 (= lt!906359 e!1624351)))

(declare-fun c!414556 () Bool)

(assert (=> d!728238 (= c!414556 (or ((_ is EmptyExpr!7641) lt!906180) ((_ is EmptyLang!7641) lt!906180)))))

(assert (=> d!728238 (validRegex!3267 lt!906180)))

(assert (=> d!728238 (= (derivativeStep!2210 lt!906180 (h!35026 tl!4068)) lt!906359)))

(declare-fun b!2574195 () Bool)

(declare-fun e!1624348 () Regex!7641)

(declare-fun call!166428 () Regex!7641)

(assert (=> b!2574195 (= e!1624348 (Union!7641 (Concat!12337 call!166428 (regTwo!15794 lt!906180)) EmptyLang!7641))))

(declare-fun call!166427 () Regex!7641)

(declare-fun c!414555 () Bool)

(declare-fun c!414557 () Bool)

(declare-fun bm!166420 () Bool)

(assert (=> bm!166420 (= call!166427 (derivativeStep!2210 (ite c!414555 (regOne!15795 lt!906180) (ite c!414557 (reg!7970 lt!906180) (regOne!15794 lt!906180))) (h!35026 tl!4068)))))

(declare-fun bm!166421 () Bool)

(declare-fun call!166425 () Regex!7641)

(assert (=> bm!166421 (= call!166428 call!166425)))

(declare-fun bm!166422 () Bool)

(declare-fun call!166426 () Regex!7641)

(assert (=> bm!166422 (= call!166426 (derivativeStep!2210 (ite c!414555 (regTwo!15795 lt!906180) (regTwo!15794 lt!906180)) (h!35026 tl!4068)))))

(declare-fun b!2574196 () Bool)

(declare-fun e!1624349 () Regex!7641)

(assert (=> b!2574196 (= e!1624349 (ite (= (h!35026 tl!4068) (c!414083 lt!906180)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574197 () Bool)

(assert (=> b!2574197 (= e!1624351 e!1624349)))

(declare-fun c!414554 () Bool)

(assert (=> b!2574197 (= c!414554 ((_ is ElementMatch!7641) lt!906180))))

(declare-fun b!2574198 () Bool)

(assert (=> b!2574198 (= c!414555 ((_ is Union!7641) lt!906180))))

(declare-fun e!1624347 () Regex!7641)

(assert (=> b!2574198 (= e!1624349 e!1624347)))

(declare-fun bm!166423 () Bool)

(assert (=> bm!166423 (= call!166425 call!166427)))

(declare-fun b!2574199 () Bool)

(declare-fun c!414553 () Bool)

(assert (=> b!2574199 (= c!414553 (nullable!2558 (regOne!15794 lt!906180)))))

(declare-fun e!1624350 () Regex!7641)

(assert (=> b!2574199 (= e!1624350 e!1624348)))

(declare-fun b!2574200 () Bool)

(assert (=> b!2574200 (= e!1624350 (Concat!12337 call!166425 lt!906180))))

(declare-fun b!2574201 () Bool)

(assert (=> b!2574201 (= e!1624347 (Union!7641 call!166427 call!166426))))

(declare-fun b!2574202 () Bool)

(assert (=> b!2574202 (= e!1624348 (Union!7641 (Concat!12337 call!166428 (regTwo!15794 lt!906180)) call!166426))))

(declare-fun b!2574203 () Bool)

(assert (=> b!2574203 (= e!1624347 e!1624350)))

(assert (=> b!2574203 (= c!414557 ((_ is Star!7641) lt!906180))))

(declare-fun b!2574204 () Bool)

(assert (=> b!2574204 (= e!1624351 EmptyLang!7641)))

(assert (= (and d!728238 c!414556) b!2574204))

(assert (= (and d!728238 (not c!414556)) b!2574197))

(assert (= (and b!2574197 c!414554) b!2574196))

(assert (= (and b!2574197 (not c!414554)) b!2574198))

(assert (= (and b!2574198 c!414555) b!2574201))

(assert (= (and b!2574198 (not c!414555)) b!2574203))

(assert (= (and b!2574203 c!414557) b!2574200))

(assert (= (and b!2574203 (not c!414557)) b!2574199))

(assert (= (and b!2574199 c!414553) b!2574202))

(assert (= (and b!2574199 (not c!414553)) b!2574195))

(assert (= (or b!2574202 b!2574195) bm!166421))

(assert (= (or b!2574200 bm!166421) bm!166423))

(assert (= (or b!2574201 b!2574202) bm!166422))

(assert (= (or b!2574201 bm!166423) bm!166420))

(declare-fun m!2909719 () Bool)

(assert (=> d!728238 m!2909719))

(assert (=> d!728238 m!2908807))

(declare-fun m!2909721 () Bool)

(assert (=> bm!166420 m!2909721))

(declare-fun m!2909723 () Bool)

(assert (=> bm!166422 m!2909723))

(declare-fun m!2909725 () Bool)

(assert (=> b!2574199 m!2909725))

(assert (=> b!2573052 d!728238))

(assert (=> b!2573120 d!728006))

(assert (=> b!2573120 d!728014))

(declare-fun b!2574205 () Bool)

(declare-fun res!1082809 () Bool)

(declare-fun e!1624354 () Bool)

(assert (=> b!2574205 (=> res!1082809 e!1624354)))

(assert (=> b!2574205 (= res!1082809 (not ((_ is Concat!12337) lt!906257)))))

(declare-fun e!1624355 () Bool)

(assert (=> b!2574205 (= e!1624355 e!1624354)))

(declare-fun b!2574206 () Bool)

(declare-fun e!1624353 () Bool)

(declare-fun call!166431 () Bool)

(assert (=> b!2574206 (= e!1624353 call!166431)))

(declare-fun b!2574207 () Bool)

(declare-fun e!1624352 () Bool)

(declare-fun e!1624358 () Bool)

(assert (=> b!2574207 (= e!1624352 e!1624358)))

(declare-fun c!414558 () Bool)

(assert (=> b!2574207 (= c!414558 ((_ is Star!7641) lt!906257))))

(declare-fun b!2574209 () Bool)

(declare-fun res!1082808 () Bool)

(assert (=> b!2574209 (=> (not res!1082808) (not e!1624353))))

(declare-fun call!166430 () Bool)

(assert (=> b!2574209 (= res!1082808 call!166430)))

(assert (=> b!2574209 (= e!1624355 e!1624353)))

(declare-fun b!2574210 () Bool)

(assert (=> b!2574210 (= e!1624358 e!1624355)))

(declare-fun c!414559 () Bool)

(assert (=> b!2574210 (= c!414559 ((_ is Union!7641) lt!906257))))

(declare-fun b!2574211 () Bool)

(declare-fun e!1624357 () Bool)

(assert (=> b!2574211 (= e!1624357 call!166430)))

(declare-fun call!166429 () Bool)

(declare-fun bm!166424 () Bool)

(assert (=> bm!166424 (= call!166429 (validRegex!3267 (ite c!414558 (reg!7970 lt!906257) (ite c!414559 (regTwo!15795 lt!906257) (regOne!15794 lt!906257)))))))

(declare-fun b!2574212 () Bool)

(assert (=> b!2574212 (= e!1624354 e!1624357)))

(declare-fun res!1082807 () Bool)

(assert (=> b!2574212 (=> (not res!1082807) (not e!1624357))))

(assert (=> b!2574212 (= res!1082807 call!166431)))

(declare-fun bm!166425 () Bool)

(assert (=> bm!166425 (= call!166430 (validRegex!3267 (ite c!414559 (regOne!15795 lt!906257) (regTwo!15794 lt!906257))))))

(declare-fun b!2574213 () Bool)

(declare-fun e!1624356 () Bool)

(assert (=> b!2574213 (= e!1624358 e!1624356)))

(declare-fun res!1082810 () Bool)

(assert (=> b!2574213 (= res!1082810 (not (nullable!2558 (reg!7970 lt!906257))))))

(assert (=> b!2574213 (=> (not res!1082810) (not e!1624356))))

(declare-fun bm!166426 () Bool)

(assert (=> bm!166426 (= call!166431 call!166429)))

(declare-fun d!728240 () Bool)

(declare-fun res!1082806 () Bool)

(assert (=> d!728240 (=> res!1082806 e!1624352)))

(assert (=> d!728240 (= res!1082806 ((_ is ElementMatch!7641) lt!906257))))

(assert (=> d!728240 (= (validRegex!3267 lt!906257) e!1624352)))

(declare-fun b!2574208 () Bool)

(assert (=> b!2574208 (= e!1624356 call!166429)))

(assert (= (and d!728240 (not res!1082806)) b!2574207))

(assert (= (and b!2574207 c!414558) b!2574213))

(assert (= (and b!2574207 (not c!414558)) b!2574210))

(assert (= (and b!2574213 res!1082810) b!2574208))

(assert (= (and b!2574210 c!414559) b!2574209))

(assert (= (and b!2574210 (not c!414559)) b!2574205))

(assert (= (and b!2574209 res!1082808) b!2574206))

(assert (= (and b!2574205 (not res!1082809)) b!2574212))

(assert (= (and b!2574212 res!1082807) b!2574211))

(assert (= (or b!2574209 b!2574211) bm!166425))

(assert (= (or b!2574206 b!2574212) bm!166426))

(assert (= (or b!2574208 bm!166426) bm!166424))

(declare-fun m!2909727 () Bool)

(assert (=> bm!166424 m!2909727))

(declare-fun m!2909729 () Bool)

(assert (=> bm!166425 m!2909729))

(declare-fun m!2909731 () Bool)

(assert (=> b!2574213 m!2909731))

(assert (=> d!727832 d!728240))

(assert (=> d!727832 d!728232))

(assert (=> b!2572684 d!728018))

(assert (=> b!2572684 d!728020))

(assert (=> b!2572905 d!727974))

(assert (=> b!2572905 d!727976))

(declare-fun b!2574214 () Bool)

(declare-fun res!1082814 () Bool)

(declare-fun e!1624361 () Bool)

(assert (=> b!2574214 (=> res!1082814 e!1624361)))

(assert (=> b!2574214 (= res!1082814 (not ((_ is Concat!12337) lt!906269)))))

(declare-fun e!1624362 () Bool)

(assert (=> b!2574214 (= e!1624362 e!1624361)))

(declare-fun b!2574215 () Bool)

(declare-fun e!1624360 () Bool)

(declare-fun call!166434 () Bool)

(assert (=> b!2574215 (= e!1624360 call!166434)))

(declare-fun b!2574216 () Bool)

(declare-fun e!1624359 () Bool)

(declare-fun e!1624365 () Bool)

(assert (=> b!2574216 (= e!1624359 e!1624365)))

(declare-fun c!414560 () Bool)

(assert (=> b!2574216 (= c!414560 ((_ is Star!7641) lt!906269))))

(declare-fun b!2574218 () Bool)

(declare-fun res!1082813 () Bool)

(assert (=> b!2574218 (=> (not res!1082813) (not e!1624360))))

(declare-fun call!166433 () Bool)

(assert (=> b!2574218 (= res!1082813 call!166433)))

(assert (=> b!2574218 (= e!1624362 e!1624360)))

(declare-fun b!2574219 () Bool)

(assert (=> b!2574219 (= e!1624365 e!1624362)))

(declare-fun c!414561 () Bool)

(assert (=> b!2574219 (= c!414561 ((_ is Union!7641) lt!906269))))

(declare-fun b!2574220 () Bool)

(declare-fun e!1624364 () Bool)

(assert (=> b!2574220 (= e!1624364 call!166433)))

(declare-fun call!166432 () Bool)

(declare-fun bm!166427 () Bool)

(assert (=> bm!166427 (= call!166432 (validRegex!3267 (ite c!414560 (reg!7970 lt!906269) (ite c!414561 (regTwo!15795 lt!906269) (regOne!15794 lt!906269)))))))

(declare-fun b!2574221 () Bool)

(assert (=> b!2574221 (= e!1624361 e!1624364)))

(declare-fun res!1082812 () Bool)

(assert (=> b!2574221 (=> (not res!1082812) (not e!1624364))))

(assert (=> b!2574221 (= res!1082812 call!166434)))

(declare-fun bm!166428 () Bool)

(assert (=> bm!166428 (= call!166433 (validRegex!3267 (ite c!414561 (regOne!15795 lt!906269) (regTwo!15794 lt!906269))))))

(declare-fun b!2574222 () Bool)

(declare-fun e!1624363 () Bool)

(assert (=> b!2574222 (= e!1624365 e!1624363)))

(declare-fun res!1082815 () Bool)

(assert (=> b!2574222 (= res!1082815 (not (nullable!2558 (reg!7970 lt!906269))))))

(assert (=> b!2574222 (=> (not res!1082815) (not e!1624363))))

(declare-fun bm!166429 () Bool)

(assert (=> bm!166429 (= call!166434 call!166432)))

(declare-fun d!728242 () Bool)

(declare-fun res!1082811 () Bool)

(assert (=> d!728242 (=> res!1082811 e!1624359)))

(assert (=> d!728242 (= res!1082811 ((_ is ElementMatch!7641) lt!906269))))

(assert (=> d!728242 (= (validRegex!3267 lt!906269) e!1624359)))

(declare-fun b!2574217 () Bool)

(assert (=> b!2574217 (= e!1624363 call!166432)))

(assert (= (and d!728242 (not res!1082811)) b!2574216))

(assert (= (and b!2574216 c!414560) b!2574222))

(assert (= (and b!2574216 (not c!414560)) b!2574219))

(assert (= (and b!2574222 res!1082815) b!2574217))

(assert (= (and b!2574219 c!414561) b!2574218))

(assert (= (and b!2574219 (not c!414561)) b!2574214))

(assert (= (and b!2574218 res!1082813) b!2574215))

(assert (= (and b!2574214 (not res!1082814)) b!2574221))

(assert (= (and b!2574221 res!1082812) b!2574220))

(assert (= (or b!2574218 b!2574220) bm!166428))

(assert (= (or b!2574215 b!2574221) bm!166429))

(assert (= (or b!2574217 bm!166429) bm!166427))

(declare-fun m!2909733 () Bool)

(assert (=> bm!166427 m!2909733))

(declare-fun m!2909735 () Bool)

(assert (=> bm!166428 m!2909735))

(declare-fun m!2909737 () Bool)

(assert (=> b!2574222 m!2909737))

(assert (=> d!727850 d!728242))

(declare-fun b!2574223 () Bool)

(declare-fun res!1082819 () Bool)

(declare-fun e!1624368 () Bool)

(assert (=> b!2574223 (=> res!1082819 e!1624368)))

(assert (=> b!2574223 (= res!1082819 (not ((_ is Concat!12337) lt!906180)))))

(declare-fun e!1624369 () Bool)

(assert (=> b!2574223 (= e!1624369 e!1624368)))

(declare-fun b!2574224 () Bool)

(declare-fun e!1624367 () Bool)

(declare-fun call!166437 () Bool)

(assert (=> b!2574224 (= e!1624367 call!166437)))

(declare-fun b!2574225 () Bool)

(declare-fun e!1624366 () Bool)

(declare-fun e!1624372 () Bool)

(assert (=> b!2574225 (= e!1624366 e!1624372)))

(declare-fun c!414562 () Bool)

(assert (=> b!2574225 (= c!414562 ((_ is Star!7641) lt!906180))))

(declare-fun b!2574227 () Bool)

(declare-fun res!1082818 () Bool)

(assert (=> b!2574227 (=> (not res!1082818) (not e!1624367))))

(declare-fun call!166436 () Bool)

(assert (=> b!2574227 (= res!1082818 call!166436)))

(assert (=> b!2574227 (= e!1624369 e!1624367)))

(declare-fun b!2574228 () Bool)

(assert (=> b!2574228 (= e!1624372 e!1624369)))

(declare-fun c!414563 () Bool)

(assert (=> b!2574228 (= c!414563 ((_ is Union!7641) lt!906180))))

(declare-fun b!2574229 () Bool)

(declare-fun e!1624371 () Bool)

(assert (=> b!2574229 (= e!1624371 call!166436)))

(declare-fun call!166435 () Bool)

(declare-fun bm!166430 () Bool)

(assert (=> bm!166430 (= call!166435 (validRegex!3267 (ite c!414562 (reg!7970 lt!906180) (ite c!414563 (regTwo!15795 lt!906180) (regOne!15794 lt!906180)))))))

(declare-fun b!2574230 () Bool)

(assert (=> b!2574230 (= e!1624368 e!1624371)))

(declare-fun res!1082817 () Bool)

(assert (=> b!2574230 (=> (not res!1082817) (not e!1624371))))

(assert (=> b!2574230 (= res!1082817 call!166437)))

(declare-fun bm!166431 () Bool)

(assert (=> bm!166431 (= call!166436 (validRegex!3267 (ite c!414563 (regOne!15795 lt!906180) (regTwo!15794 lt!906180))))))

(declare-fun b!2574231 () Bool)

(declare-fun e!1624370 () Bool)

(assert (=> b!2574231 (= e!1624372 e!1624370)))

(declare-fun res!1082820 () Bool)

(assert (=> b!2574231 (= res!1082820 (not (nullable!2558 (reg!7970 lt!906180))))))

(assert (=> b!2574231 (=> (not res!1082820) (not e!1624370))))

(declare-fun bm!166432 () Bool)

(assert (=> bm!166432 (= call!166437 call!166435)))

(declare-fun d!728244 () Bool)

(declare-fun res!1082816 () Bool)

(assert (=> d!728244 (=> res!1082816 e!1624366)))

(assert (=> d!728244 (= res!1082816 ((_ is ElementMatch!7641) lt!906180))))

(assert (=> d!728244 (= (validRegex!3267 lt!906180) e!1624366)))

(declare-fun b!2574226 () Bool)

(assert (=> b!2574226 (= e!1624370 call!166435)))

(assert (= (and d!728244 (not res!1082816)) b!2574225))

(assert (= (and b!2574225 c!414562) b!2574231))

(assert (= (and b!2574225 (not c!414562)) b!2574228))

(assert (= (and b!2574231 res!1082820) b!2574226))

(assert (= (and b!2574228 c!414563) b!2574227))

(assert (= (and b!2574228 (not c!414563)) b!2574223))

(assert (= (and b!2574227 res!1082818) b!2574224))

(assert (= (and b!2574223 (not res!1082819)) b!2574230))

(assert (= (and b!2574230 res!1082817) b!2574229))

(assert (= (or b!2574227 b!2574229) bm!166431))

(assert (= (or b!2574224 b!2574230) bm!166432))

(assert (= (or b!2574226 bm!166432) bm!166430))

(declare-fun m!2909739 () Bool)

(assert (=> bm!166430 m!2909739))

(declare-fun m!2909741 () Bool)

(assert (=> bm!166431 m!2909741))

(declare-fun m!2909743 () Bool)

(assert (=> b!2574231 m!2909743))

(assert (=> d!727850 d!728244))

(assert (=> b!2572891 d!728044))

(assert (=> b!2572891 d!728046))

(assert (=> b!2573034 d!728006))

(assert (=> b!2573034 d!728014))

(assert (=> b!2573051 d!727870))

(declare-fun b!2574232 () Bool)

(declare-fun e!1624376 () Int)

(assert (=> b!2574232 (= e!1624376 0)))

(declare-fun b!2574233 () Bool)

(declare-fun e!1624377 () Int)

(declare-fun call!166440 () Int)

(assert (=> b!2574233 (= e!1624377 (+ 1 call!166440))))

(declare-fun b!2574234 () Bool)

(declare-fun e!1624374 () Int)

(declare-fun e!1624373 () Int)

(assert (=> b!2574234 (= e!1624374 e!1624373)))

(declare-fun c!414565 () Bool)

(assert (=> b!2574234 (= c!414565 ((_ is Concat!12337) (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(declare-fun b!2574235 () Bool)

(declare-fun call!166438 () Int)

(declare-fun call!166439 () Int)

(assert (=> b!2574235 (= e!1624373 (+ 1 call!166438 call!166439))))

(declare-fun b!2574236 () Bool)

(declare-fun c!414568 () Bool)

(assert (=> b!2574236 (= c!414568 ((_ is EmptyExpr!7641) (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(assert (=> b!2574236 (= e!1624373 e!1624376)))

(declare-fun b!2574237 () Bool)

(declare-fun e!1624375 () Int)

(assert (=> b!2574237 (= e!1624375 0)))

(declare-fun b!2574238 () Bool)

(declare-fun c!414567 () Bool)

(assert (=> b!2574238 (= c!414567 ((_ is EmptyLang!7641) (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(assert (=> b!2574238 (= e!1624377 e!1624375)))

(declare-fun c!414564 () Bool)

(declare-fun bm!166433 () Bool)

(assert (=> bm!166433 (= call!166439 (RegexPrimitiveSize!124 (ite c!414565 (regTwo!15794 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))) (ite c!414564 (reg!7970 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))) (regOne!15795 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340)))))))))))

(declare-fun d!728246 () Bool)

(declare-fun lt!906360 () Int)

(assert (=> d!728246 (>= lt!906360 0)))

(assert (=> d!728246 (= lt!906360 e!1624374)))

(declare-fun c!414566 () Bool)

(assert (=> d!728246 (= c!414566 ((_ is ElementMatch!7641) (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(assert (=> d!728246 (= (RegexPrimitiveSize!124 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))) lt!906360)))

(declare-fun bm!166434 () Bool)

(assert (=> bm!166434 (= call!166438 (RegexPrimitiveSize!124 (ite c!414565 (regOne!15794 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))) (regTwo!15795 (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))))

(declare-fun b!2574239 () Bool)

(assert (=> b!2574239 (= e!1624375 (+ 1 call!166440 call!166438))))

(declare-fun b!2574240 () Bool)

(assert (=> b!2574240 (= e!1624374 1)))

(declare-fun bm!166435 () Bool)

(assert (=> bm!166435 (= call!166440 call!166439)))

(declare-fun b!2574241 () Bool)

(assert (=> b!2574241 (= e!1624376 e!1624377)))

(assert (=> b!2574241 (= c!414564 ((_ is Star!7641) (ite c!414164 (regTwo!15794 (regOne!15794 r!27340)) (ite c!414163 (reg!7970 (regOne!15794 r!27340)) (regOne!15795 (regOne!15794 r!27340))))))))

(assert (= (and d!728246 c!414566) b!2574240))

(assert (= (and d!728246 (not c!414566)) b!2574234))

(assert (= (and b!2574234 c!414565) b!2574235))

(assert (= (and b!2574234 (not c!414565)) b!2574236))

(assert (= (and b!2574236 c!414568) b!2574232))

(assert (= (and b!2574236 (not c!414568)) b!2574241))

(assert (= (and b!2574241 c!414564) b!2574233))

(assert (= (and b!2574241 (not c!414564)) b!2574238))

(assert (= (and b!2574238 c!414567) b!2574237))

(assert (= (and b!2574238 (not c!414567)) b!2574239))

(assert (= (or b!2574233 b!2574239) bm!166435))

(assert (= (or b!2574235 bm!166435) bm!166433))

(assert (= (or b!2574235 b!2574239) bm!166434))

(declare-fun m!2909745 () Bool)

(assert (=> bm!166433 m!2909745))

(declare-fun m!2909747 () Bool)

(assert (=> bm!166434 m!2909747))

(assert (=> bm!166149 d!728246))

(declare-fun b!2574242 () Bool)

(declare-fun res!1082824 () Bool)

(declare-fun e!1624380 () Bool)

(assert (=> b!2574242 (=> res!1082824 e!1624380)))

(assert (=> b!2574242 (= res!1082824 (not ((_ is Concat!12337) (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))))))

(declare-fun e!1624381 () Bool)

(assert (=> b!2574242 (= e!1624381 e!1624380)))

(declare-fun b!2574243 () Bool)

(declare-fun e!1624379 () Bool)

(declare-fun call!166443 () Bool)

(assert (=> b!2574243 (= e!1624379 call!166443)))

(declare-fun b!2574244 () Bool)

(declare-fun e!1624378 () Bool)

(declare-fun e!1624384 () Bool)

(assert (=> b!2574244 (= e!1624378 e!1624384)))

(declare-fun c!414569 () Bool)

(assert (=> b!2574244 (= c!414569 ((_ is Star!7641) (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2574246 () Bool)

(declare-fun res!1082823 () Bool)

(assert (=> b!2574246 (=> (not res!1082823) (not e!1624379))))

(declare-fun call!166442 () Bool)

(assert (=> b!2574246 (= res!1082823 call!166442)))

(assert (=> b!2574246 (= e!1624381 e!1624379)))

(declare-fun b!2574247 () Bool)

(assert (=> b!2574247 (= e!1624384 e!1624381)))

(declare-fun c!414570 () Bool)

(assert (=> b!2574247 (= c!414570 ((_ is Union!7641) (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(declare-fun b!2574248 () Bool)

(declare-fun e!1624383 () Bool)

(assert (=> b!2574248 (= e!1624383 call!166442)))

(declare-fun bm!166436 () Bool)

(declare-fun call!166441 () Bool)

(assert (=> bm!166436 (= call!166441 (validRegex!3267 (ite c!414569 (reg!7970 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (ite c!414570 (regTwo!15795 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (regOne!15794 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340))))))))))

(declare-fun b!2574249 () Bool)

(assert (=> b!2574249 (= e!1624380 e!1624383)))

(declare-fun res!1082822 () Bool)

(assert (=> b!2574249 (=> (not res!1082822) (not e!1624383))))

(assert (=> b!2574249 (= res!1082822 call!166443)))

(declare-fun bm!166437 () Bool)

(assert (=> bm!166437 (= call!166442 (validRegex!3267 (ite c!414570 (regOne!15795 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) (regTwo!15794 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))))

(declare-fun b!2574250 () Bool)

(declare-fun e!1624382 () Bool)

(assert (=> b!2574250 (= e!1624384 e!1624382)))

(declare-fun res!1082825 () Bool)

(assert (=> b!2574250 (= res!1082825 (not (nullable!2558 (reg!7970 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))))

(assert (=> b!2574250 (=> (not res!1082825) (not e!1624382))))

(declare-fun bm!166438 () Bool)

(assert (=> bm!166438 (= call!166443 call!166441)))

(declare-fun d!728248 () Bool)

(declare-fun res!1082821 () Bool)

(assert (=> d!728248 (=> res!1082821 e!1624378)))

(assert (=> d!728248 (= res!1082821 ((_ is ElementMatch!7641) (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))))))

(assert (=> d!728248 (= (validRegex!3267 (ite c!414257 (regOne!15795 (regOne!15794 r!27340)) (regTwo!15794 (regOne!15794 r!27340)))) e!1624378)))

(declare-fun b!2574245 () Bool)

(assert (=> b!2574245 (= e!1624382 call!166441)))

(assert (= (and d!728248 (not res!1082821)) b!2574244))

(assert (= (and b!2574244 c!414569) b!2574250))

(assert (= (and b!2574244 (not c!414569)) b!2574247))

(assert (= (and b!2574250 res!1082825) b!2574245))

(assert (= (and b!2574247 c!414570) b!2574246))

(assert (= (and b!2574247 (not c!414570)) b!2574242))

(assert (= (and b!2574246 res!1082823) b!2574243))

(assert (= (and b!2574242 (not res!1082824)) b!2574249))

(assert (= (and b!2574249 res!1082822) b!2574248))

(assert (= (or b!2574246 b!2574248) bm!166437))

(assert (= (or b!2574243 b!2574249) bm!166438))

(assert (= (or b!2574245 bm!166438) bm!166436))

(declare-fun m!2909749 () Bool)

(assert (=> bm!166436 m!2909749))

(declare-fun m!2909751 () Bool)

(assert (=> bm!166437 m!2909751))

(declare-fun m!2909753 () Bool)

(assert (=> b!2574250 m!2909753))

(assert (=> bm!166197 d!728248))

(declare-fun d!728250 () Bool)

(assert (not d!728250))

(assert (=> b!2573105 d!728250))

(declare-fun d!728252 () Bool)

(assert (not d!728252))

(assert (=> b!2573105 d!728252))

(assert (=> b!2573105 d!728066))

(assert (=> b!2573105 d!727976))

(assert (=> d!727852 d!728154))

(assert (=> d!727852 d!728244))

(assert (=> bm!166203 d!728154))

(assert (=> b!2573054 d!728006))

(assert (=> b!2573054 d!728014))

(assert (=> b!2573102 d!727868))

(declare-fun b!2574251 () Bool)

(declare-fun res!1082829 () Bool)

(declare-fun e!1624387 () Bool)

(assert (=> b!2574251 (=> res!1082829 e!1624387)))

(assert (=> b!2574251 (= res!1082829 (not ((_ is Concat!12337) (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340)))))))

(declare-fun e!1624388 () Bool)

(assert (=> b!2574251 (= e!1624388 e!1624387)))

(declare-fun b!2574252 () Bool)

(declare-fun e!1624386 () Bool)

(declare-fun call!166446 () Bool)

(assert (=> b!2574252 (= e!1624386 call!166446)))

(declare-fun b!2574253 () Bool)

(declare-fun e!1624385 () Bool)

(declare-fun e!1624391 () Bool)

(assert (=> b!2574253 (= e!1624385 e!1624391)))

(declare-fun c!414571 () Bool)

(assert (=> b!2574253 (= c!414571 ((_ is Star!7641) (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2574255 () Bool)

(declare-fun res!1082828 () Bool)

(assert (=> b!2574255 (=> (not res!1082828) (not e!1624386))))

(declare-fun call!166445 () Bool)

(assert (=> b!2574255 (= res!1082828 call!166445)))

(assert (=> b!2574255 (= e!1624388 e!1624386)))

(declare-fun b!2574256 () Bool)

(assert (=> b!2574256 (= e!1624391 e!1624388)))

(declare-fun c!414572 () Bool)

(assert (=> b!2574256 (= c!414572 ((_ is Union!7641) (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))

(declare-fun b!2574257 () Bool)

(declare-fun e!1624390 () Bool)

(assert (=> b!2574257 (= e!1624390 call!166445)))

(declare-fun bm!166439 () Bool)

(declare-fun call!166444 () Bool)

(assert (=> bm!166439 (= call!166444 (validRegex!3267 (ite c!414571 (reg!7970 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))) (ite c!414572 (regTwo!15795 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))) (regOne!15794 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340)))))))))

(declare-fun b!2574258 () Bool)

(assert (=> b!2574258 (= e!1624387 e!1624390)))

(declare-fun res!1082827 () Bool)

(assert (=> b!2574258 (=> (not res!1082827) (not e!1624390))))

(assert (=> b!2574258 (= res!1082827 call!166446)))

(declare-fun bm!166440 () Bool)

(assert (=> bm!166440 (= call!166445 (validRegex!3267 (ite c!414572 (regOne!15795 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))) (regTwo!15794 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))))

(declare-fun b!2574259 () Bool)

(declare-fun e!1624389 () Bool)

(assert (=> b!2574259 (= e!1624391 e!1624389)))

(declare-fun res!1082830 () Bool)

(assert (=> b!2574259 (= res!1082830 (not (nullable!2558 (reg!7970 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))))

(assert (=> b!2574259 (=> (not res!1082830) (not e!1624389))))

(declare-fun bm!166441 () Bool)

(assert (=> bm!166441 (= call!166446 call!166444)))

(declare-fun d!728254 () Bool)

(declare-fun res!1082826 () Bool)

(assert (=> d!728254 (=> res!1082826 e!1624385)))

(assert (=> d!728254 (= res!1082826 ((_ is ElementMatch!7641) (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))))))

(assert (=> d!728254 (= (validRegex!3267 (ite c!414263 (regOne!15795 r!27340) (regTwo!15794 r!27340))) e!1624385)))

(declare-fun b!2574254 () Bool)

(assert (=> b!2574254 (= e!1624389 call!166444)))

(assert (= (and d!728254 (not res!1082826)) b!2574253))

(assert (= (and b!2574253 c!414571) b!2574259))

(assert (= (and b!2574253 (not c!414571)) b!2574256))

(assert (= (and b!2574259 res!1082830) b!2574254))

(assert (= (and b!2574256 c!414572) b!2574255))

(assert (= (and b!2574256 (not c!414572)) b!2574251))

(assert (= (and b!2574255 res!1082828) b!2574252))

(assert (= (and b!2574251 (not res!1082829)) b!2574258))

(assert (= (and b!2574258 res!1082827) b!2574257))

(assert (= (or b!2574255 b!2574257) bm!166440))

(assert (= (or b!2574252 b!2574258) bm!166441))

(assert (= (or b!2574254 bm!166441) bm!166439))

(declare-fun m!2909755 () Bool)

(assert (=> bm!166439 m!2909755))

(declare-fun m!2909757 () Bool)

(assert (=> bm!166440 m!2909757))

(declare-fun m!2909759 () Bool)

(assert (=> b!2574259 m!2909759))

(assert (=> bm!166201 d!728254))

(assert (=> b!2573125 d!728038))

(declare-fun b!2574260 () Bool)

(declare-fun e!1624395 () Int)

(assert (=> b!2574260 (= e!1624395 0)))

(declare-fun b!2574261 () Bool)

(declare-fun e!1624396 () Int)

(declare-fun call!166449 () Int)

(assert (=> b!2574261 (= e!1624396 (+ 1 call!166449))))

(declare-fun b!2574262 () Bool)

(declare-fun e!1624393 () Int)

(declare-fun e!1624392 () Int)

(assert (=> b!2574262 (= e!1624393 e!1624392)))

(declare-fun c!414574 () Bool)

(assert (=> b!2574262 (= c!414574 ((_ is Concat!12337) (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(declare-fun b!2574263 () Bool)

(declare-fun call!166447 () Int)

(declare-fun call!166448 () Int)

(assert (=> b!2574263 (= e!1624392 (+ 1 call!166447 call!166448))))

(declare-fun b!2574264 () Bool)

(declare-fun c!414577 () Bool)

(assert (=> b!2574264 (= c!414577 ((_ is EmptyExpr!7641) (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(assert (=> b!2574264 (= e!1624392 e!1624395)))

(declare-fun b!2574265 () Bool)

(declare-fun e!1624394 () Int)

(assert (=> b!2574265 (= e!1624394 0)))

(declare-fun b!2574266 () Bool)

(declare-fun c!414576 () Bool)

(assert (=> b!2574266 (= c!414576 ((_ is EmptyLang!7641) (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(assert (=> b!2574266 (= e!1624396 e!1624394)))

(declare-fun bm!166442 () Bool)

(declare-fun c!414573 () Bool)

(assert (=> bm!166442 (= call!166448 (RegexPrimitiveSize!124 (ite c!414574 (regTwo!15794 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))) (ite c!414573 (reg!7970 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))) (regOne!15795 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340)))))))))

(declare-fun d!728256 () Bool)

(declare-fun lt!906361 () Int)

(assert (=> d!728256 (>= lt!906361 0)))

(assert (=> d!728256 (= lt!906361 e!1624393)))

(declare-fun c!414575 () Bool)

(assert (=> d!728256 (= c!414575 ((_ is ElementMatch!7641) (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(assert (=> d!728256 (= (RegexPrimitiveSize!124 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))) lt!906361)))

(declare-fun bm!166443 () Bool)

(assert (=> bm!166443 (= call!166447 (RegexPrimitiveSize!124 (ite c!414574 (regOne!15794 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))) (regTwo!15795 (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))))

(declare-fun b!2574267 () Bool)

(assert (=> b!2574267 (= e!1624394 (+ 1 call!166449 call!166447))))

(declare-fun b!2574268 () Bool)

(assert (=> b!2574268 (= e!1624393 1)))

(declare-fun bm!166444 () Bool)

(assert (=> bm!166444 (= call!166449 call!166448)))

(declare-fun b!2574269 () Bool)

(assert (=> b!2574269 (= e!1624395 e!1624396)))

(assert (=> b!2574269 (= c!414573 ((_ is Star!7641) (ite c!414169 (regOne!15794 r!27340) (regTwo!15795 r!27340))))))

(assert (= (and d!728256 c!414575) b!2574268))

(assert (= (and d!728256 (not c!414575)) b!2574262))

(assert (= (and b!2574262 c!414574) b!2574263))

(assert (= (and b!2574262 (not c!414574)) b!2574264))

(assert (= (and b!2574264 c!414577) b!2574260))

(assert (= (and b!2574264 (not c!414577)) b!2574269))

(assert (= (and b!2574269 c!414573) b!2574261))

(assert (= (and b!2574269 (not c!414573)) b!2574266))

(assert (= (and b!2574266 c!414576) b!2574265))

(assert (= (and b!2574266 (not c!414576)) b!2574267))

(assert (= (or b!2574261 b!2574267) bm!166444))

(assert (= (or b!2574263 bm!166444) bm!166442))

(assert (= (or b!2574263 b!2574267) bm!166443))

(declare-fun m!2909761 () Bool)

(assert (=> bm!166442 m!2909761))

(declare-fun m!2909763 () Bool)

(assert (=> bm!166443 m!2909763))

(assert (=> bm!166153 d!728256))

(declare-fun b!2574270 () Bool)

(declare-fun res!1082834 () Bool)

(declare-fun e!1624399 () Bool)

(assert (=> b!2574270 (=> (not res!1082834) (not e!1624399))))

(assert (=> b!2574270 (= res!1082834 (isEmpty!17069 (tail!4121 (tail!4121 (_1!17344 lt!906169)))))))

(declare-fun b!2574271 () Bool)

(declare-fun e!1624397 () Bool)

(assert (=> b!2574271 (= e!1624397 (not (= (head!5846 (tail!4121 (_1!17344 lt!906169))) (c!414083 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169)))))))))

(declare-fun b!2574272 () Bool)

(declare-fun res!1082832 () Bool)

(declare-fun e!1624398 () Bool)

(assert (=> b!2574272 (=> res!1082832 e!1624398)))

(assert (=> b!2574272 (= res!1082832 e!1624399)))

(declare-fun res!1082836 () Bool)

(assert (=> b!2574272 (=> (not res!1082836) (not e!1624399))))

(declare-fun lt!906362 () Bool)

(assert (=> b!2574272 (= res!1082836 lt!906362)))

(declare-fun b!2574273 () Bool)

(declare-fun e!1624402 () Bool)

(assert (=> b!2574273 (= e!1624402 (not lt!906362))))

(declare-fun d!728258 () Bool)

(declare-fun e!1624403 () Bool)

(assert (=> d!728258 e!1624403))

(declare-fun c!414578 () Bool)

(assert (=> d!728258 (= c!414578 ((_ is EmptyExpr!7641) (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169)))))))

(declare-fun e!1624401 () Bool)

(assert (=> d!728258 (= lt!906362 e!1624401)))

(declare-fun c!414580 () Bool)

(assert (=> d!728258 (= c!414580 (isEmpty!17069 (tail!4121 (_1!17344 lt!906169))))))

(assert (=> d!728258 (validRegex!3267 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))))))

(assert (=> d!728258 (= (matchR!3584 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))) (tail!4121 (_1!17344 lt!906169))) lt!906362)))

(declare-fun b!2574274 () Bool)

(declare-fun res!1082833 () Bool)

(assert (=> b!2574274 (=> res!1082833 e!1624398)))

(assert (=> b!2574274 (= res!1082833 (not ((_ is ElementMatch!7641) (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))))))))

(assert (=> b!2574274 (= e!1624402 e!1624398)))

(declare-fun b!2574275 () Bool)

(assert (=> b!2574275 (= e!1624399 (= (head!5846 (tail!4121 (_1!17344 lt!906169))) (c!414083 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))))))))

(declare-fun b!2574276 () Bool)

(declare-fun res!1082831 () Bool)

(assert (=> b!2574276 (=> res!1082831 e!1624397)))

(assert (=> b!2574276 (= res!1082831 (not (isEmpty!17069 (tail!4121 (tail!4121 (_1!17344 lt!906169))))))))

(declare-fun b!2574277 () Bool)

(assert (=> b!2574277 (= e!1624401 (nullable!2558 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169)))))))

(declare-fun b!2574278 () Bool)

(declare-fun call!166450 () Bool)

(assert (=> b!2574278 (= e!1624403 (= lt!906362 call!166450))))

(declare-fun bm!166445 () Bool)

(assert (=> bm!166445 (= call!166450 (isEmpty!17069 (tail!4121 (_1!17344 lt!906169))))))

(declare-fun b!2574279 () Bool)

(declare-fun res!1082838 () Bool)

(assert (=> b!2574279 (=> (not res!1082838) (not e!1624399))))

(assert (=> b!2574279 (= res!1082838 (not call!166450))))

(declare-fun b!2574280 () Bool)

(assert (=> b!2574280 (= e!1624401 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))) (head!5846 (tail!4121 (_1!17344 lt!906169)))) (tail!4121 (tail!4121 (_1!17344 lt!906169)))))))

(declare-fun b!2574281 () Bool)

(assert (=> b!2574281 (= e!1624403 e!1624402)))

(declare-fun c!414579 () Bool)

(assert (=> b!2574281 (= c!414579 ((_ is EmptyLang!7641) (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169)))))))

(declare-fun b!2574282 () Bool)

(declare-fun e!1624400 () Bool)

(assert (=> b!2574282 (= e!1624398 e!1624400)))

(declare-fun res!1082835 () Bool)

(assert (=> b!2574282 (=> (not res!1082835) (not e!1624400))))

(assert (=> b!2574282 (= res!1082835 (not lt!906362))))

(declare-fun b!2574283 () Bool)

(assert (=> b!2574283 (= e!1624400 e!1624397)))

(declare-fun res!1082837 () Bool)

(assert (=> b!2574283 (=> res!1082837 e!1624397)))

(assert (=> b!2574283 (= res!1082837 call!166450)))

(assert (= (and d!728258 c!414580) b!2574277))

(assert (= (and d!728258 (not c!414580)) b!2574280))

(assert (= (and d!728258 c!414578) b!2574278))

(assert (= (and d!728258 (not c!414578)) b!2574281))

(assert (= (and b!2574281 c!414579) b!2574273))

(assert (= (and b!2574281 (not c!414579)) b!2574274))

(assert (= (and b!2574274 (not res!1082833)) b!2574272))

(assert (= (and b!2574272 res!1082836) b!2574279))

(assert (= (and b!2574279 res!1082838) b!2574270))

(assert (= (and b!2574270 res!1082834) b!2574275))

(assert (= (and b!2574272 (not res!1082832)) b!2574282))

(assert (= (and b!2574282 res!1082835) b!2574283))

(assert (= (and b!2574283 (not res!1082837)) b!2574276))

(assert (= (and b!2574276 (not res!1082831)) b!2574271))

(assert (= (or b!2574278 b!2574279 b!2574283) bm!166445))

(assert (=> b!2574270 m!2908567))

(declare-fun m!2909765 () Bool)

(assert (=> b!2574270 m!2909765))

(assert (=> b!2574270 m!2909765))

(declare-fun m!2909767 () Bool)

(assert (=> b!2574270 m!2909767))

(assert (=> b!2574280 m!2908567))

(declare-fun m!2909769 () Bool)

(assert (=> b!2574280 m!2909769))

(assert (=> b!2574280 m!2908573))

(assert (=> b!2574280 m!2909769))

(declare-fun m!2909771 () Bool)

(assert (=> b!2574280 m!2909771))

(assert (=> b!2574280 m!2908567))

(assert (=> b!2574280 m!2909765))

(assert (=> b!2574280 m!2909771))

(assert (=> b!2574280 m!2909765))

(declare-fun m!2909773 () Bool)

(assert (=> b!2574280 m!2909773))

(assert (=> b!2574276 m!2908567))

(assert (=> b!2574276 m!2909765))

(assert (=> b!2574276 m!2909765))

(assert (=> b!2574276 m!2909767))

(assert (=> bm!166445 m!2908567))

(assert (=> bm!166445 m!2908569))

(assert (=> b!2574277 m!2908573))

(declare-fun m!2909775 () Bool)

(assert (=> b!2574277 m!2909775))

(assert (=> b!2574271 m!2908567))

(assert (=> b!2574271 m!2909769))

(assert (=> d!728258 m!2908567))

(assert (=> d!728258 m!2908569))

(assert (=> d!728258 m!2908573))

(declare-fun m!2909777 () Bool)

(assert (=> d!728258 m!2909777))

(assert (=> b!2574275 m!2908567))

(assert (=> b!2574275 m!2909769))

(assert (=> b!2572688 d!728258))

(declare-fun d!728260 () Bool)

(declare-fun lt!906363 () Regex!7641)

(assert (=> d!728260 (validRegex!3267 lt!906363)))

(declare-fun e!1624408 () Regex!7641)

(assert (=> d!728260 (= lt!906363 e!1624408)))

(declare-fun c!414584 () Bool)

(assert (=> d!728260 (= c!414584 (or ((_ is EmptyExpr!7641) lt!906173) ((_ is EmptyLang!7641) lt!906173)))))

(assert (=> d!728260 (validRegex!3267 lt!906173)))

(assert (=> d!728260 (= (derivativeStep!2210 lt!906173 (head!5846 (_1!17344 lt!906169))) lt!906363)))

(declare-fun b!2574284 () Bool)

(declare-fun e!1624405 () Regex!7641)

(declare-fun call!166454 () Regex!7641)

(assert (=> b!2574284 (= e!1624405 (Union!7641 (Concat!12337 call!166454 (regTwo!15794 lt!906173)) EmptyLang!7641))))

(declare-fun call!166453 () Regex!7641)

(declare-fun c!414585 () Bool)

(declare-fun c!414583 () Bool)

(declare-fun bm!166446 () Bool)

(assert (=> bm!166446 (= call!166453 (derivativeStep!2210 (ite c!414583 (regOne!15795 lt!906173) (ite c!414585 (reg!7970 lt!906173) (regOne!15794 lt!906173))) (head!5846 (_1!17344 lt!906169))))))

(declare-fun bm!166447 () Bool)

(declare-fun call!166451 () Regex!7641)

(assert (=> bm!166447 (= call!166454 call!166451)))

(declare-fun call!166452 () Regex!7641)

(declare-fun bm!166448 () Bool)

(assert (=> bm!166448 (= call!166452 (derivativeStep!2210 (ite c!414583 (regTwo!15795 lt!906173) (regTwo!15794 lt!906173)) (head!5846 (_1!17344 lt!906169))))))

(declare-fun b!2574285 () Bool)

(declare-fun e!1624406 () Regex!7641)

(assert (=> b!2574285 (= e!1624406 (ite (= (head!5846 (_1!17344 lt!906169)) (c!414083 lt!906173)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574286 () Bool)

(assert (=> b!2574286 (= e!1624408 e!1624406)))

(declare-fun c!414582 () Bool)

(assert (=> b!2574286 (= c!414582 ((_ is ElementMatch!7641) lt!906173))))

(declare-fun b!2574287 () Bool)

(assert (=> b!2574287 (= c!414583 ((_ is Union!7641) lt!906173))))

(declare-fun e!1624404 () Regex!7641)

(assert (=> b!2574287 (= e!1624406 e!1624404)))

(declare-fun bm!166449 () Bool)

(assert (=> bm!166449 (= call!166451 call!166453)))

(declare-fun b!2574288 () Bool)

(declare-fun c!414581 () Bool)

(assert (=> b!2574288 (= c!414581 (nullable!2558 (regOne!15794 lt!906173)))))

(declare-fun e!1624407 () Regex!7641)

(assert (=> b!2574288 (= e!1624407 e!1624405)))

(declare-fun b!2574289 () Bool)

(assert (=> b!2574289 (= e!1624407 (Concat!12337 call!166451 lt!906173))))

(declare-fun b!2574290 () Bool)

(assert (=> b!2574290 (= e!1624404 (Union!7641 call!166453 call!166452))))

(declare-fun b!2574291 () Bool)

(assert (=> b!2574291 (= e!1624405 (Union!7641 (Concat!12337 call!166454 (regTwo!15794 lt!906173)) call!166452))))

(declare-fun b!2574292 () Bool)

(assert (=> b!2574292 (= e!1624404 e!1624407)))

(assert (=> b!2574292 (= c!414585 ((_ is Star!7641) lt!906173))))

(declare-fun b!2574293 () Bool)

(assert (=> b!2574293 (= e!1624408 EmptyLang!7641)))

(assert (= (and d!728260 c!414584) b!2574293))

(assert (= (and d!728260 (not c!414584)) b!2574286))

(assert (= (and b!2574286 c!414582) b!2574285))

(assert (= (and b!2574286 (not c!414582)) b!2574287))

(assert (= (and b!2574287 c!414583) b!2574290))

(assert (= (and b!2574287 (not c!414583)) b!2574292))

(assert (= (and b!2574292 c!414585) b!2574289))

(assert (= (and b!2574292 (not c!414585)) b!2574288))

(assert (= (and b!2574288 c!414581) b!2574291))

(assert (= (and b!2574288 (not c!414581)) b!2574284))

(assert (= (or b!2574291 b!2574284) bm!166447))

(assert (= (or b!2574289 bm!166447) bm!166449))

(assert (= (or b!2574290 b!2574291) bm!166448))

(assert (= (or b!2574290 bm!166449) bm!166446))

(declare-fun m!2909779 () Bool)

(assert (=> d!728260 m!2909779))

(assert (=> d!728260 m!2908495))

(assert (=> bm!166446 m!2908571))

(declare-fun m!2909781 () Bool)

(assert (=> bm!166446 m!2909781))

(assert (=> bm!166448 m!2908571))

(declare-fun m!2909783 () Bool)

(assert (=> bm!166448 m!2909783))

(assert (=> b!2574288 m!2909199))

(assert (=> b!2572688 d!728260))

(declare-fun d!728262 () Bool)

(assert (=> d!728262 (= (head!5846 (_1!17344 lt!906169)) (h!35026 (_1!17344 lt!906169)))))

(assert (=> b!2572688 d!728262))

(assert (=> b!2572688 d!728020))

(declare-fun d!728264 () Bool)

(assert (not d!728264))

(assert (=> b!2572909 d!728264))

(declare-fun d!728266 () Bool)

(assert (not d!728266))

(assert (=> b!2572909 d!728266))

(assert (=> b!2572909 d!728066))

(assert (=> b!2572909 d!727976))

(assert (=> bm!166134 d!728228))

(declare-fun b!2574294 () Bool)

(declare-fun res!1082842 () Bool)

(declare-fun e!1624411 () Bool)

(assert (=> b!2574294 (=> res!1082842 e!1624411)))

(assert (=> b!2574294 (= res!1082842 (not ((_ is Concat!12337) lt!906275)))))

(declare-fun e!1624412 () Bool)

(assert (=> b!2574294 (= e!1624412 e!1624411)))

(declare-fun b!2574295 () Bool)

(declare-fun e!1624410 () Bool)

(declare-fun call!166457 () Bool)

(assert (=> b!2574295 (= e!1624410 call!166457)))

(declare-fun b!2574296 () Bool)

(declare-fun e!1624409 () Bool)

(declare-fun e!1624415 () Bool)

(assert (=> b!2574296 (= e!1624409 e!1624415)))

(declare-fun c!414586 () Bool)

(assert (=> b!2574296 (= c!414586 ((_ is Star!7641) lt!906275))))

(declare-fun b!2574298 () Bool)

(declare-fun res!1082841 () Bool)

(assert (=> b!2574298 (=> (not res!1082841) (not e!1624410))))

(declare-fun call!166456 () Bool)

(assert (=> b!2574298 (= res!1082841 call!166456)))

(assert (=> b!2574298 (= e!1624412 e!1624410)))

(declare-fun b!2574299 () Bool)

(assert (=> b!2574299 (= e!1624415 e!1624412)))

(declare-fun c!414587 () Bool)

(assert (=> b!2574299 (= c!414587 ((_ is Union!7641) lt!906275))))

(declare-fun b!2574300 () Bool)

(declare-fun e!1624414 () Bool)

(assert (=> b!2574300 (= e!1624414 call!166456)))

(declare-fun call!166455 () Bool)

(declare-fun bm!166450 () Bool)

(assert (=> bm!166450 (= call!166455 (validRegex!3267 (ite c!414586 (reg!7970 lt!906275) (ite c!414587 (regTwo!15795 lt!906275) (regOne!15794 lt!906275)))))))

(declare-fun b!2574301 () Bool)

(assert (=> b!2574301 (= e!1624411 e!1624414)))

(declare-fun res!1082840 () Bool)

(assert (=> b!2574301 (=> (not res!1082840) (not e!1624414))))

(assert (=> b!2574301 (= res!1082840 call!166457)))

(declare-fun bm!166451 () Bool)

(assert (=> bm!166451 (= call!166456 (validRegex!3267 (ite c!414587 (regOne!15795 lt!906275) (regTwo!15794 lt!906275))))))

(declare-fun b!2574302 () Bool)

(declare-fun e!1624413 () Bool)

(assert (=> b!2574302 (= e!1624415 e!1624413)))

(declare-fun res!1082843 () Bool)

(assert (=> b!2574302 (= res!1082843 (not (nullable!2558 (reg!7970 lt!906275))))))

(assert (=> b!2574302 (=> (not res!1082843) (not e!1624413))))

(declare-fun bm!166452 () Bool)

(assert (=> bm!166452 (= call!166457 call!166455)))

(declare-fun d!728268 () Bool)

(declare-fun res!1082839 () Bool)

(assert (=> d!728268 (=> res!1082839 e!1624409)))

(assert (=> d!728268 (= res!1082839 ((_ is ElementMatch!7641) lt!906275))))

(assert (=> d!728268 (= (validRegex!3267 lt!906275) e!1624409)))

(declare-fun b!2574297 () Bool)

(assert (=> b!2574297 (= e!1624413 call!166455)))

(assert (= (and d!728268 (not res!1082839)) b!2574296))

(assert (= (and b!2574296 c!414586) b!2574302))

(assert (= (and b!2574296 (not c!414586)) b!2574299))

(assert (= (and b!2574302 res!1082843) b!2574297))

(assert (= (and b!2574299 c!414587) b!2574298))

(assert (= (and b!2574299 (not c!414587)) b!2574294))

(assert (= (and b!2574298 res!1082841) b!2574295))

(assert (= (and b!2574294 (not res!1082842)) b!2574301))

(assert (= (and b!2574301 res!1082840) b!2574300))

(assert (= (or b!2574298 b!2574300) bm!166451))

(assert (= (or b!2574295 b!2574301) bm!166452))

(assert (= (or b!2574297 bm!166452) bm!166450))

(declare-fun m!2909785 () Bool)

(assert (=> bm!166450 m!2909785))

(declare-fun m!2909787 () Bool)

(assert (=> bm!166451 m!2909787))

(declare-fun m!2909789 () Bool)

(assert (=> b!2574302 m!2909789))

(assert (=> d!727862 d!728268))

(assert (=> d!727862 d!728004))

(assert (=> b!2573096 d!728066))

(assert (=> bm!166175 d!727978))

(declare-fun b!2574303 () Bool)

(declare-fun res!1082847 () Bool)

(declare-fun e!1624418 () Bool)

(assert (=> b!2574303 (=> (not res!1082847) (not e!1624418))))

(assert (=> b!2574303 (= res!1082847 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2574304 () Bool)

(declare-fun e!1624416 () Bool)

(assert (=> b!2574304 (= e!1624416 (not (= (head!5846 tl!4068) (c!414083 (regTwo!15794 r!27340)))))))

(declare-fun b!2574305 () Bool)

(declare-fun res!1082845 () Bool)

(declare-fun e!1624417 () Bool)

(assert (=> b!2574305 (=> res!1082845 e!1624417)))

(assert (=> b!2574305 (= res!1082845 e!1624418)))

(declare-fun res!1082849 () Bool)

(assert (=> b!2574305 (=> (not res!1082849) (not e!1624418))))

(declare-fun lt!906364 () Bool)

(assert (=> b!2574305 (= res!1082849 lt!906364)))

(declare-fun b!2574306 () Bool)

(declare-fun e!1624421 () Bool)

(assert (=> b!2574306 (= e!1624421 (not lt!906364))))

(declare-fun d!728270 () Bool)

(declare-fun e!1624422 () Bool)

(assert (=> d!728270 e!1624422))

(declare-fun c!414588 () Bool)

(assert (=> d!728270 (= c!414588 ((_ is EmptyExpr!7641) (regTwo!15794 r!27340)))))

(declare-fun e!1624420 () Bool)

(assert (=> d!728270 (= lt!906364 e!1624420)))

(declare-fun c!414590 () Bool)

(assert (=> d!728270 (= c!414590 (isEmpty!17069 tl!4068))))

(assert (=> d!728270 (validRegex!3267 (regTwo!15794 r!27340))))

(assert (=> d!728270 (= (matchR!3584 (regTwo!15794 r!27340) tl!4068) lt!906364)))

(declare-fun b!2574307 () Bool)

(declare-fun res!1082846 () Bool)

(assert (=> b!2574307 (=> res!1082846 e!1624417)))

(assert (=> b!2574307 (= res!1082846 (not ((_ is ElementMatch!7641) (regTwo!15794 r!27340))))))

(assert (=> b!2574307 (= e!1624421 e!1624417)))

(declare-fun b!2574308 () Bool)

(assert (=> b!2574308 (= e!1624418 (= (head!5846 tl!4068) (c!414083 (regTwo!15794 r!27340))))))

(declare-fun b!2574309 () Bool)

(declare-fun res!1082844 () Bool)

(assert (=> b!2574309 (=> res!1082844 e!1624416)))

(assert (=> b!2574309 (= res!1082844 (not (isEmpty!17069 (tail!4121 tl!4068))))))

(declare-fun b!2574310 () Bool)

(assert (=> b!2574310 (= e!1624420 (nullable!2558 (regTwo!15794 r!27340)))))

(declare-fun b!2574311 () Bool)

(declare-fun call!166458 () Bool)

(assert (=> b!2574311 (= e!1624422 (= lt!906364 call!166458))))

(declare-fun bm!166453 () Bool)

(assert (=> bm!166453 (= call!166458 (isEmpty!17069 tl!4068))))

(declare-fun b!2574312 () Bool)

(declare-fun res!1082851 () Bool)

(assert (=> b!2574312 (=> (not res!1082851) (not e!1624418))))

(assert (=> b!2574312 (= res!1082851 (not call!166458))))

(declare-fun b!2574313 () Bool)

(assert (=> b!2574313 (= e!1624420 (matchR!3584 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 tl!4068)) (tail!4121 tl!4068)))))

(declare-fun b!2574314 () Bool)

(assert (=> b!2574314 (= e!1624422 e!1624421)))

(declare-fun c!414589 () Bool)

(assert (=> b!2574314 (= c!414589 ((_ is EmptyLang!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2574315 () Bool)

(declare-fun e!1624419 () Bool)

(assert (=> b!2574315 (= e!1624417 e!1624419)))

(declare-fun res!1082848 () Bool)

(assert (=> b!2574315 (=> (not res!1082848) (not e!1624419))))

(assert (=> b!2574315 (= res!1082848 (not lt!906364))))

(declare-fun b!2574316 () Bool)

(assert (=> b!2574316 (= e!1624419 e!1624416)))

(declare-fun res!1082850 () Bool)

(assert (=> b!2574316 (=> res!1082850 e!1624416)))

(assert (=> b!2574316 (= res!1082850 call!166458)))

(assert (= (and d!728270 c!414590) b!2574310))

(assert (= (and d!728270 (not c!414590)) b!2574313))

(assert (= (and d!728270 c!414588) b!2574311))

(assert (= (and d!728270 (not c!414588)) b!2574314))

(assert (= (and b!2574314 c!414589) b!2574306))

(assert (= (and b!2574314 (not c!414589)) b!2574307))

(assert (= (and b!2574307 (not res!1082846)) b!2574305))

(assert (= (and b!2574305 res!1082849) b!2574312))

(assert (= (and b!2574312 res!1082851) b!2574303))

(assert (= (and b!2574303 res!1082847) b!2574308))

(assert (= (and b!2574305 (not res!1082845)) b!2574315))

(assert (= (and b!2574315 res!1082848) b!2574316))

(assert (= (and b!2574316 (not res!1082850)) b!2574309))

(assert (= (and b!2574309 (not res!1082844)) b!2574304))

(assert (= (or b!2574311 b!2574312 b!2574316) bm!166453))

(assert (=> b!2574303 m!2908811))

(assert (=> b!2574303 m!2908811))

(assert (=> b!2574303 m!2908813))

(assert (=> b!2574313 m!2908815))

(assert (=> b!2574313 m!2908815))

(declare-fun m!2909791 () Bool)

(assert (=> b!2574313 m!2909791))

(assert (=> b!2574313 m!2908811))

(assert (=> b!2574313 m!2909791))

(assert (=> b!2574313 m!2908811))

(declare-fun m!2909793 () Bool)

(assert (=> b!2574313 m!2909793))

(assert (=> b!2574309 m!2908811))

(assert (=> b!2574309 m!2908811))

(assert (=> b!2574309 m!2908813))

(assert (=> bm!166453 m!2908821))

(assert (=> b!2574310 m!2908893))

(assert (=> b!2574304 m!2908815))

(assert (=> d!728270 m!2908821))

(assert (=> d!728270 m!2908895))

(assert (=> b!2574308 m!2908815))

(assert (=> b!2572540 d!728270))

(declare-fun b!2574317 () Bool)

(declare-fun res!1082855 () Bool)

(declare-fun e!1624425 () Bool)

(assert (=> b!2574317 (=> res!1082855 e!1624425)))

(assert (=> b!2574317 (= res!1082855 (not ((_ is Concat!12337) lt!906254)))))

(declare-fun e!1624426 () Bool)

(assert (=> b!2574317 (= e!1624426 e!1624425)))

(declare-fun b!2574318 () Bool)

(declare-fun e!1624424 () Bool)

(declare-fun call!166461 () Bool)

(assert (=> b!2574318 (= e!1624424 call!166461)))

(declare-fun b!2574319 () Bool)

(declare-fun e!1624423 () Bool)

(declare-fun e!1624429 () Bool)

(assert (=> b!2574319 (= e!1624423 e!1624429)))

(declare-fun c!414591 () Bool)

(assert (=> b!2574319 (= c!414591 ((_ is Star!7641) lt!906254))))

(declare-fun b!2574321 () Bool)

(declare-fun res!1082854 () Bool)

(assert (=> b!2574321 (=> (not res!1082854) (not e!1624424))))

(declare-fun call!166460 () Bool)

(assert (=> b!2574321 (= res!1082854 call!166460)))

(assert (=> b!2574321 (= e!1624426 e!1624424)))

(declare-fun b!2574322 () Bool)

(assert (=> b!2574322 (= e!1624429 e!1624426)))

(declare-fun c!414592 () Bool)

(assert (=> b!2574322 (= c!414592 ((_ is Union!7641) lt!906254))))

(declare-fun b!2574323 () Bool)

(declare-fun e!1624428 () Bool)

(assert (=> b!2574323 (= e!1624428 call!166460)))

(declare-fun call!166459 () Bool)

(declare-fun bm!166454 () Bool)

(assert (=> bm!166454 (= call!166459 (validRegex!3267 (ite c!414591 (reg!7970 lt!906254) (ite c!414592 (regTwo!15795 lt!906254) (regOne!15794 lt!906254)))))))

(declare-fun b!2574324 () Bool)

(assert (=> b!2574324 (= e!1624425 e!1624428)))

(declare-fun res!1082853 () Bool)

(assert (=> b!2574324 (=> (not res!1082853) (not e!1624428))))

(assert (=> b!2574324 (= res!1082853 call!166461)))

(declare-fun bm!166455 () Bool)

(assert (=> bm!166455 (= call!166460 (validRegex!3267 (ite c!414592 (regOne!15795 lt!906254) (regTwo!15794 lt!906254))))))

(declare-fun b!2574325 () Bool)

(declare-fun e!1624427 () Bool)

(assert (=> b!2574325 (= e!1624429 e!1624427)))

(declare-fun res!1082856 () Bool)

(assert (=> b!2574325 (= res!1082856 (not (nullable!2558 (reg!7970 lt!906254))))))

(assert (=> b!2574325 (=> (not res!1082856) (not e!1624427))))

(declare-fun bm!166456 () Bool)

(assert (=> bm!166456 (= call!166461 call!166459)))

(declare-fun d!728272 () Bool)

(declare-fun res!1082852 () Bool)

(assert (=> d!728272 (=> res!1082852 e!1624423)))

(assert (=> d!728272 (= res!1082852 ((_ is ElementMatch!7641) lt!906254))))

(assert (=> d!728272 (= (validRegex!3267 lt!906254) e!1624423)))

(declare-fun b!2574320 () Bool)

(assert (=> b!2574320 (= e!1624427 call!166459)))

(assert (= (and d!728272 (not res!1082852)) b!2574319))

(assert (= (and b!2574319 c!414591) b!2574325))

(assert (= (and b!2574319 (not c!414591)) b!2574322))

(assert (= (and b!2574325 res!1082856) b!2574320))

(assert (= (and b!2574322 c!414592) b!2574321))

(assert (= (and b!2574322 (not c!414592)) b!2574317))

(assert (= (and b!2574321 res!1082854) b!2574318))

(assert (= (and b!2574317 (not res!1082855)) b!2574324))

(assert (= (and b!2574324 res!1082853) b!2574323))

(assert (= (or b!2574321 b!2574323) bm!166455))

(assert (= (or b!2574318 b!2574324) bm!166456))

(assert (= (or b!2574320 bm!166456) bm!166454))

(declare-fun m!2909795 () Bool)

(assert (=> bm!166454 m!2909795))

(declare-fun m!2909797 () Bool)

(assert (=> bm!166455 m!2909797))

(declare-fun m!2909799 () Bool)

(assert (=> b!2574325 m!2909799))

(assert (=> d!727828 d!728272))

(assert (=> d!727828 d!727858))

(declare-fun b!2574326 () Bool)

(declare-fun res!1082860 () Bool)

(declare-fun e!1624432 () Bool)

(assert (=> b!2574326 (=> (not res!1082860) (not e!1624432))))

(assert (=> b!2574326 (= res!1082860 (isEmpty!17069 (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2574327 () Bool)

(declare-fun e!1624430 () Bool)

(assert (=> b!2574327 (= e!1624430 (not (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 lt!906180 (head!5846 tl!4068))))))))

(declare-fun b!2574328 () Bool)

(declare-fun res!1082858 () Bool)

(declare-fun e!1624431 () Bool)

(assert (=> b!2574328 (=> res!1082858 e!1624431)))

(assert (=> b!2574328 (= res!1082858 e!1624432)))

(declare-fun res!1082862 () Bool)

(assert (=> b!2574328 (=> (not res!1082862) (not e!1624432))))

(declare-fun lt!906365 () Bool)

(assert (=> b!2574328 (= res!1082862 lt!906365)))

(declare-fun b!2574329 () Bool)

(declare-fun e!1624435 () Bool)

(assert (=> b!2574329 (= e!1624435 (not lt!906365))))

(declare-fun d!728274 () Bool)

(declare-fun e!1624436 () Bool)

(assert (=> d!728274 e!1624436))

(declare-fun c!414593 () Bool)

(assert (=> d!728274 (= c!414593 ((_ is EmptyExpr!7641) (derivativeStep!2210 lt!906180 (head!5846 tl!4068))))))

(declare-fun e!1624434 () Bool)

(assert (=> d!728274 (= lt!906365 e!1624434)))

(declare-fun c!414595 () Bool)

(assert (=> d!728274 (= c!414595 (isEmpty!17069 (tail!4121 tl!4068)))))

(assert (=> d!728274 (validRegex!3267 (derivativeStep!2210 lt!906180 (head!5846 tl!4068)))))

(assert (=> d!728274 (= (matchR!3584 (derivativeStep!2210 lt!906180 (head!5846 tl!4068)) (tail!4121 tl!4068)) lt!906365)))

(declare-fun b!2574330 () Bool)

(declare-fun res!1082859 () Bool)

(assert (=> b!2574330 (=> res!1082859 e!1624431)))

(assert (=> b!2574330 (= res!1082859 (not ((_ is ElementMatch!7641) (derivativeStep!2210 lt!906180 (head!5846 tl!4068)))))))

(assert (=> b!2574330 (= e!1624435 e!1624431)))

(declare-fun b!2574331 () Bool)

(assert (=> b!2574331 (= e!1624432 (= (head!5846 (tail!4121 tl!4068)) (c!414083 (derivativeStep!2210 lt!906180 (head!5846 tl!4068)))))))

(declare-fun b!2574332 () Bool)

(declare-fun res!1082857 () Bool)

(assert (=> b!2574332 (=> res!1082857 e!1624430)))

(assert (=> b!2574332 (= res!1082857 (not (isEmpty!17069 (tail!4121 (tail!4121 tl!4068)))))))

(declare-fun b!2574333 () Bool)

(assert (=> b!2574333 (= e!1624434 (nullable!2558 (derivativeStep!2210 lt!906180 (head!5846 tl!4068))))))

(declare-fun b!2574334 () Bool)

(declare-fun call!166462 () Bool)

(assert (=> b!2574334 (= e!1624436 (= lt!906365 call!166462))))

(declare-fun bm!166457 () Bool)

(assert (=> bm!166457 (= call!166462 (isEmpty!17069 (tail!4121 tl!4068)))))

(declare-fun b!2574335 () Bool)

(declare-fun res!1082864 () Bool)

(assert (=> b!2574335 (=> (not res!1082864) (not e!1624432))))

(assert (=> b!2574335 (= res!1082864 (not call!166462))))

(declare-fun b!2574336 () Bool)

(assert (=> b!2574336 (= e!1624434 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 lt!906180 (head!5846 tl!4068)) (head!5846 (tail!4121 tl!4068))) (tail!4121 (tail!4121 tl!4068))))))

(declare-fun b!2574337 () Bool)

(assert (=> b!2574337 (= e!1624436 e!1624435)))

(declare-fun c!414594 () Bool)

(assert (=> b!2574337 (= c!414594 ((_ is EmptyLang!7641) (derivativeStep!2210 lt!906180 (head!5846 tl!4068))))))

(declare-fun b!2574338 () Bool)

(declare-fun e!1624433 () Bool)

(assert (=> b!2574338 (= e!1624431 e!1624433)))

(declare-fun res!1082861 () Bool)

(assert (=> b!2574338 (=> (not res!1082861) (not e!1624433))))

(assert (=> b!2574338 (= res!1082861 (not lt!906365))))

(declare-fun b!2574339 () Bool)

(assert (=> b!2574339 (= e!1624433 e!1624430)))

(declare-fun res!1082863 () Bool)

(assert (=> b!2574339 (=> res!1082863 e!1624430)))

(assert (=> b!2574339 (= res!1082863 call!166462)))

(assert (= (and d!728274 c!414595) b!2574333))

(assert (= (and d!728274 (not c!414595)) b!2574336))

(assert (= (and d!728274 c!414593) b!2574334))

(assert (= (and d!728274 (not c!414593)) b!2574337))

(assert (= (and b!2574337 c!414594) b!2574329))

(assert (= (and b!2574337 (not c!414594)) b!2574330))

(assert (= (and b!2574330 (not res!1082859)) b!2574328))

(assert (= (and b!2574328 res!1082862) b!2574335))

(assert (= (and b!2574335 res!1082864) b!2574326))

(assert (= (and b!2574326 res!1082860) b!2574331))

(assert (= (and b!2574328 (not res!1082858)) b!2574338))

(assert (= (and b!2574338 res!1082861) b!2574339))

(assert (= (and b!2574339 (not res!1082863)) b!2574332))

(assert (= (and b!2574332 (not res!1082857)) b!2574327))

(assert (= (or b!2574334 b!2574335 b!2574339) bm!166457))

(assert (=> b!2574326 m!2908811))

(assert (=> b!2574326 m!2909131))

(assert (=> b!2574326 m!2909131))

(assert (=> b!2574326 m!2909133))

(assert (=> b!2574336 m!2908811))

(assert (=> b!2574336 m!2909135))

(assert (=> b!2574336 m!2908835))

(assert (=> b!2574336 m!2909135))

(declare-fun m!2909801 () Bool)

(assert (=> b!2574336 m!2909801))

(assert (=> b!2574336 m!2908811))

(assert (=> b!2574336 m!2909131))

(assert (=> b!2574336 m!2909801))

(assert (=> b!2574336 m!2909131))

(declare-fun m!2909803 () Bool)

(assert (=> b!2574336 m!2909803))

(assert (=> b!2574332 m!2908811))

(assert (=> b!2574332 m!2909131))

(assert (=> b!2574332 m!2909131))

(assert (=> b!2574332 m!2909133))

(assert (=> bm!166457 m!2908811))

(assert (=> bm!166457 m!2908813))

(assert (=> b!2574333 m!2908835))

(declare-fun m!2909805 () Bool)

(assert (=> b!2574333 m!2909805))

(assert (=> b!2574327 m!2908811))

(assert (=> b!2574327 m!2909135))

(assert (=> d!728274 m!2908811))

(assert (=> d!728274 m!2908813))

(assert (=> d!728274 m!2908835))

(declare-fun m!2909807 () Bool)

(assert (=> d!728274 m!2909807))

(assert (=> b!2574331 m!2908811))

(assert (=> b!2574331 m!2909135))

(assert (=> b!2573064 d!728274))

(declare-fun d!728276 () Bool)

(declare-fun lt!906366 () Regex!7641)

(assert (=> d!728276 (validRegex!3267 lt!906366)))

(declare-fun e!1624441 () Regex!7641)

(assert (=> d!728276 (= lt!906366 e!1624441)))

(declare-fun c!414599 () Bool)

(assert (=> d!728276 (= c!414599 (or ((_ is EmptyExpr!7641) lt!906180) ((_ is EmptyLang!7641) lt!906180)))))

(assert (=> d!728276 (validRegex!3267 lt!906180)))

(assert (=> d!728276 (= (derivativeStep!2210 lt!906180 (head!5846 tl!4068)) lt!906366)))

(declare-fun b!2574340 () Bool)

(declare-fun e!1624438 () Regex!7641)

(declare-fun call!166466 () Regex!7641)

(assert (=> b!2574340 (= e!1624438 (Union!7641 (Concat!12337 call!166466 (regTwo!15794 lt!906180)) EmptyLang!7641))))

(declare-fun bm!166458 () Bool)

(declare-fun c!414598 () Bool)

(declare-fun c!414600 () Bool)

(declare-fun call!166465 () Regex!7641)

(assert (=> bm!166458 (= call!166465 (derivativeStep!2210 (ite c!414598 (regOne!15795 lt!906180) (ite c!414600 (reg!7970 lt!906180) (regOne!15794 lt!906180))) (head!5846 tl!4068)))))

(declare-fun bm!166459 () Bool)

(declare-fun call!166463 () Regex!7641)

(assert (=> bm!166459 (= call!166466 call!166463)))

(declare-fun bm!166460 () Bool)

(declare-fun call!166464 () Regex!7641)

(assert (=> bm!166460 (= call!166464 (derivativeStep!2210 (ite c!414598 (regTwo!15795 lt!906180) (regTwo!15794 lt!906180)) (head!5846 tl!4068)))))

(declare-fun b!2574341 () Bool)

(declare-fun e!1624439 () Regex!7641)

(assert (=> b!2574341 (= e!1624439 (ite (= (head!5846 tl!4068) (c!414083 lt!906180)) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574342 () Bool)

(assert (=> b!2574342 (= e!1624441 e!1624439)))

(declare-fun c!414597 () Bool)

(assert (=> b!2574342 (= c!414597 ((_ is ElementMatch!7641) lt!906180))))

(declare-fun b!2574343 () Bool)

(assert (=> b!2574343 (= c!414598 ((_ is Union!7641) lt!906180))))

(declare-fun e!1624437 () Regex!7641)

(assert (=> b!2574343 (= e!1624439 e!1624437)))

(declare-fun bm!166461 () Bool)

(assert (=> bm!166461 (= call!166463 call!166465)))

(declare-fun b!2574344 () Bool)

(declare-fun c!414596 () Bool)

(assert (=> b!2574344 (= c!414596 (nullable!2558 (regOne!15794 lt!906180)))))

(declare-fun e!1624440 () Regex!7641)

(assert (=> b!2574344 (= e!1624440 e!1624438)))

(declare-fun b!2574345 () Bool)

(assert (=> b!2574345 (= e!1624440 (Concat!12337 call!166463 lt!906180))))

(declare-fun b!2574346 () Bool)

(assert (=> b!2574346 (= e!1624437 (Union!7641 call!166465 call!166464))))

(declare-fun b!2574347 () Bool)

(assert (=> b!2574347 (= e!1624438 (Union!7641 (Concat!12337 call!166466 (regTwo!15794 lt!906180)) call!166464))))

(declare-fun b!2574348 () Bool)

(assert (=> b!2574348 (= e!1624437 e!1624440)))

(assert (=> b!2574348 (= c!414600 ((_ is Star!7641) lt!906180))))

(declare-fun b!2574349 () Bool)

(assert (=> b!2574349 (= e!1624441 EmptyLang!7641)))

(assert (= (and d!728276 c!414599) b!2574349))

(assert (= (and d!728276 (not c!414599)) b!2574342))

(assert (= (and b!2574342 c!414597) b!2574341))

(assert (= (and b!2574342 (not c!414597)) b!2574343))

(assert (= (and b!2574343 c!414598) b!2574346))

(assert (= (and b!2574343 (not c!414598)) b!2574348))

(assert (= (and b!2574348 c!414600) b!2574345))

(assert (= (and b!2574348 (not c!414600)) b!2574344))

(assert (= (and b!2574344 c!414596) b!2574347))

(assert (= (and b!2574344 (not c!414596)) b!2574340))

(assert (= (or b!2574347 b!2574340) bm!166459))

(assert (= (or b!2574345 bm!166459) bm!166461))

(assert (= (or b!2574346 b!2574347) bm!166460))

(assert (= (or b!2574346 bm!166461) bm!166458))

(declare-fun m!2909809 () Bool)

(assert (=> d!728276 m!2909809))

(assert (=> d!728276 m!2908807))

(assert (=> bm!166458 m!2908815))

(declare-fun m!2909811 () Bool)

(assert (=> bm!166458 m!2909811))

(assert (=> bm!166460 m!2908815))

(declare-fun m!2909813 () Bool)

(assert (=> bm!166460 m!2909813))

(assert (=> b!2574344 m!2909725))

(assert (=> b!2573064 d!728276))

(assert (=> b!2573064 d!728038))

(assert (=> b!2573064 d!728014))

(assert (=> b!2572683 d!728262))

(assert (=> bm!166174 d!728040))

(assert (=> bm!166188 d!728154))

(assert (=> b!2572904 d!728066))

(declare-fun d!728278 () Bool)

(assert (=> d!728278 (= (nullable!2558 lt!906180) (nullableFct!783 lt!906180))))

(declare-fun bs!470108 () Bool)

(assert (= bs!470108 d!728278))

(declare-fun m!2909815 () Bool)

(assert (=> bs!470108 m!2909815))

(assert (=> b!2573061 d!728278))

(declare-fun d!728280 () Bool)

(declare-fun lt!906367 () Regex!7641)

(assert (=> d!728280 (validRegex!3267 lt!906367)))

(declare-fun e!1624446 () Regex!7641)

(assert (=> d!728280 (= lt!906367 e!1624446)))

(declare-fun c!414604 () Bool)

(assert (=> d!728280 (= c!414604 (or ((_ is EmptyExpr!7641) (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) ((_ is EmptyLang!7641) (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))))

(assert (=> d!728280 (validRegex!3267 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))

(assert (=> d!728280 (= (derivativeStep!2210 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))) c!14016) lt!906367)))

(declare-fun call!166470 () Regex!7641)

(declare-fun b!2574350 () Bool)

(declare-fun e!1624443 () Regex!7641)

(assert (=> b!2574350 (= e!1624443 (Union!7641 (Concat!12337 call!166470 (regTwo!15794 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))) EmptyLang!7641))))

(declare-fun c!414603 () Bool)

(declare-fun c!414605 () Bool)

(declare-fun bm!166462 () Bool)

(declare-fun call!166469 () Regex!7641)

(assert (=> bm!166462 (= call!166469 (derivativeStep!2210 (ite c!414603 (regOne!15795 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (ite c!414605 (reg!7970 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (regOne!15794 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))) c!14016))))

(declare-fun bm!166463 () Bool)

(declare-fun call!166467 () Regex!7641)

(assert (=> bm!166463 (= call!166470 call!166467)))

(declare-fun bm!166464 () Bool)

(declare-fun call!166468 () Regex!7641)

(assert (=> bm!166464 (= call!166468 (derivativeStep!2210 (ite c!414603 (regTwo!15795 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))) (regTwo!15794 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))) c!14016))))

(declare-fun e!1624444 () Regex!7641)

(declare-fun b!2574351 () Bool)

(assert (=> b!2574351 (= e!1624444 (ite (= c!14016 (c!414083 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574352 () Bool)

(assert (=> b!2574352 (= e!1624446 e!1624444)))

(declare-fun c!414602 () Bool)

(assert (=> b!2574352 (= c!414602 ((_ is ElementMatch!7641) (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2574353 () Bool)

(assert (=> b!2574353 (= c!414603 ((_ is Union!7641) (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun e!1624442 () Regex!7641)

(assert (=> b!2574353 (= e!1624444 e!1624442)))

(declare-fun bm!166465 () Bool)

(assert (=> bm!166465 (= call!166467 call!166469)))

(declare-fun b!2574354 () Bool)

(declare-fun c!414601 () Bool)

(assert (=> b!2574354 (= c!414601 (nullable!2558 (regOne!15794 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))))))

(declare-fun e!1624445 () Regex!7641)

(assert (=> b!2574354 (= e!1624445 e!1624443)))

(declare-fun b!2574355 () Bool)

(assert (=> b!2574355 (= e!1624445 (Concat!12337 call!166467 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2574356 () Bool)

(assert (=> b!2574356 (= e!1624442 (Union!7641 call!166469 call!166468))))

(declare-fun b!2574357 () Bool)

(assert (=> b!2574357 (= e!1624443 (Union!7641 (Concat!12337 call!166470 (regTwo!15794 (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340)))))) call!166468))))

(declare-fun b!2574358 () Bool)

(assert (=> b!2574358 (= e!1624442 e!1624445)))

(assert (=> b!2574358 (= c!414605 ((_ is Star!7641) (ite c!414224 (regOne!15795 (regOne!15794 r!27340)) (ite c!414226 (reg!7970 (regOne!15794 r!27340)) (regOne!15794 (regOne!15794 r!27340))))))))

(declare-fun b!2574359 () Bool)

(assert (=> b!2574359 (= e!1624446 EmptyLang!7641)))

(assert (= (and d!728280 c!414604) b!2574359))

(assert (= (and d!728280 (not c!414604)) b!2574352))

(assert (= (and b!2574352 c!414602) b!2574351))

(assert (= (and b!2574352 (not c!414602)) b!2574353))

(assert (= (and b!2574353 c!414603) b!2574356))

(assert (= (and b!2574353 (not c!414603)) b!2574358))

(assert (= (and b!2574358 c!414605) b!2574355))

(assert (= (and b!2574358 (not c!414605)) b!2574354))

(assert (= (and b!2574354 c!414601) b!2574357))

(assert (= (and b!2574354 (not c!414601)) b!2574350))

(assert (= (or b!2574357 b!2574350) bm!166463))

(assert (= (or b!2574355 bm!166463) bm!166465))

(assert (= (or b!2574356 b!2574357) bm!166464))

(assert (= (or b!2574356 bm!166465) bm!166462))

(declare-fun m!2909817 () Bool)

(assert (=> d!728280 m!2909817))

(declare-fun m!2909819 () Bool)

(assert (=> d!728280 m!2909819))

(declare-fun m!2909821 () Bool)

(assert (=> bm!166462 m!2909821))

(declare-fun m!2909823 () Bool)

(assert (=> bm!166464 m!2909823))

(declare-fun m!2909825 () Bool)

(assert (=> b!2574354 m!2909825))

(assert (=> bm!166176 d!728280))

(declare-fun b!2574360 () Bool)

(declare-fun e!1624447 () Bool)

(declare-fun e!1624451 () Bool)

(assert (=> b!2574360 (= e!1624447 e!1624451)))

(declare-fun res!1082865 () Bool)

(declare-fun call!166472 () Bool)

(assert (=> b!2574360 (= res!1082865 call!166472)))

(assert (=> b!2574360 (=> (not res!1082865) (not e!1624451))))

(declare-fun bm!166466 () Bool)

(declare-fun call!166471 () Bool)

(declare-fun c!414606 () Bool)

(assert (=> bm!166466 (= call!166471 (nullable!2558 (ite c!414606 (regOne!15795 lt!906178) (regTwo!15794 lt!906178))))))

(declare-fun d!728282 () Bool)

(declare-fun res!1082867 () Bool)

(declare-fun e!1624448 () Bool)

(assert (=> d!728282 (=> res!1082867 e!1624448)))

(assert (=> d!728282 (= res!1082867 ((_ is EmptyExpr!7641) lt!906178))))

(assert (=> d!728282 (= (nullableFct!783 lt!906178) e!1624448)))

(declare-fun b!2574361 () Bool)

(declare-fun e!1624449 () Bool)

(assert (=> b!2574361 (= e!1624449 e!1624447)))

(assert (=> b!2574361 (= c!414606 ((_ is Union!7641) lt!906178))))

(declare-fun b!2574362 () Bool)

(declare-fun e!1624452 () Bool)

(assert (=> b!2574362 (= e!1624452 e!1624449)))

(declare-fun res!1082868 () Bool)

(assert (=> b!2574362 (=> res!1082868 e!1624449)))

(assert (=> b!2574362 (= res!1082868 ((_ is Star!7641) lt!906178))))

(declare-fun b!2574363 () Bool)

(assert (=> b!2574363 (= e!1624451 call!166471)))

(declare-fun b!2574364 () Bool)

(declare-fun e!1624450 () Bool)

(assert (=> b!2574364 (= e!1624450 call!166472)))

(declare-fun bm!166467 () Bool)

(assert (=> bm!166467 (= call!166472 (nullable!2558 (ite c!414606 (regTwo!15795 lt!906178) (regOne!15794 lt!906178))))))

(declare-fun b!2574365 () Bool)

(assert (=> b!2574365 (= e!1624448 e!1624452)))

(declare-fun res!1082866 () Bool)

(assert (=> b!2574365 (=> (not res!1082866) (not e!1624452))))

(assert (=> b!2574365 (= res!1082866 (and (not ((_ is EmptyLang!7641) lt!906178)) (not ((_ is ElementMatch!7641) lt!906178))))))

(declare-fun b!2574366 () Bool)

(assert (=> b!2574366 (= e!1624447 e!1624450)))

(declare-fun res!1082869 () Bool)

(assert (=> b!2574366 (= res!1082869 call!166471)))

(assert (=> b!2574366 (=> res!1082869 e!1624450)))

(assert (= (and d!728282 (not res!1082867)) b!2574365))

(assert (= (and b!2574365 res!1082866) b!2574362))

(assert (= (and b!2574362 (not res!1082868)) b!2574361))

(assert (= (and b!2574361 c!414606) b!2574366))

(assert (= (and b!2574361 (not c!414606)) b!2574360))

(assert (= (and b!2574366 (not res!1082869)) b!2574364))

(assert (= (and b!2574360 res!1082865) b!2574363))

(assert (= (or b!2574364 b!2574360) bm!166467))

(assert (= (or b!2574366 b!2574363) bm!166466))

(declare-fun m!2909827 () Bool)

(assert (=> bm!166466 m!2909827))

(declare-fun m!2909829 () Bool)

(assert (=> bm!166467 m!2909829))

(assert (=> d!727868 d!728282))

(assert (=> b!2572679 d!728262))

(assert (=> b!2572890 d!728152))

(assert (=> b!2573033 d!728038))

(assert (=> b!2572900 d!728066))

(assert (=> b!2573050 d!728232))

(declare-fun d!728284 () Bool)

(declare-fun lt!906368 () Regex!7641)

(assert (=> d!728284 (validRegex!3267 lt!906368)))

(declare-fun e!1624453 () Regex!7641)

(assert (=> d!728284 (= lt!906368 e!1624453)))

(declare-fun c!414607 () Bool)

(assert (=> d!728284 (= c!414607 ((_ is Cons!29606) (t!211405 tl!4068)))))

(assert (=> d!728284 (validRegex!3267 (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)))))

(assert (=> d!728284 (= (derivative!336 (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)) (t!211405 tl!4068)) lt!906368)))

(declare-fun b!2574367 () Bool)

(assert (=> b!2574367 (= e!1624453 (derivative!336 (derivativeStep!2210 (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)) (h!35026 (t!211405 tl!4068))) (t!211405 (t!211405 tl!4068))))))

(declare-fun b!2574368 () Bool)

(assert (=> b!2574368 (= e!1624453 (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)))))

(assert (= (and d!728284 c!414607) b!2574367))

(assert (= (and d!728284 (not c!414607)) b!2574368))

(declare-fun m!2909831 () Bool)

(assert (=> d!728284 m!2909831))

(assert (=> d!728284 m!2908617))

(declare-fun m!2909833 () Bool)

(assert (=> d!728284 m!2909833))

(assert (=> b!2574367 m!2908617))

(declare-fun m!2909835 () Bool)

(assert (=> b!2574367 m!2909835))

(assert (=> b!2574367 m!2909835))

(declare-fun m!2909837 () Bool)

(assert (=> b!2574367 m!2909837))

(assert (=> b!2572782 d!728284))

(declare-fun d!728286 () Bool)

(declare-fun lt!906369 () Regex!7641)

(assert (=> d!728286 (validRegex!3267 lt!906369)))

(declare-fun e!1624458 () Regex!7641)

(assert (=> d!728286 (= lt!906369 e!1624458)))

(declare-fun c!414611 () Bool)

(assert (=> d!728286 (= c!414611 (or ((_ is EmptyExpr!7641) (derivativeStep!2210 r!27340 c!14016)) ((_ is EmptyLang!7641) (derivativeStep!2210 r!27340 c!14016))))))

(assert (=> d!728286 (validRegex!3267 (derivativeStep!2210 r!27340 c!14016))))

(assert (=> d!728286 (= (derivativeStep!2210 (derivativeStep!2210 r!27340 c!14016) (h!35026 tl!4068)) lt!906369)))

(declare-fun call!166476 () Regex!7641)

(declare-fun e!1624455 () Regex!7641)

(declare-fun b!2574369 () Bool)

(assert (=> b!2574369 (= e!1624455 (Union!7641 (Concat!12337 call!166476 (regTwo!15794 (derivativeStep!2210 r!27340 c!14016))) EmptyLang!7641))))

(declare-fun bm!166468 () Bool)

(declare-fun call!166475 () Regex!7641)

(declare-fun c!414612 () Bool)

(declare-fun c!414610 () Bool)

(assert (=> bm!166468 (= call!166475 (derivativeStep!2210 (ite c!414610 (regOne!15795 (derivativeStep!2210 r!27340 c!14016)) (ite c!414612 (reg!7970 (derivativeStep!2210 r!27340 c!14016)) (regOne!15794 (derivativeStep!2210 r!27340 c!14016)))) (h!35026 tl!4068)))))

(declare-fun bm!166469 () Bool)

(declare-fun call!166473 () Regex!7641)

(assert (=> bm!166469 (= call!166476 call!166473)))

(declare-fun call!166474 () Regex!7641)

(declare-fun bm!166470 () Bool)

(assert (=> bm!166470 (= call!166474 (derivativeStep!2210 (ite c!414610 (regTwo!15795 (derivativeStep!2210 r!27340 c!14016)) (regTwo!15794 (derivativeStep!2210 r!27340 c!14016))) (h!35026 tl!4068)))))

(declare-fun b!2574370 () Bool)

(declare-fun e!1624456 () Regex!7641)

(assert (=> b!2574370 (= e!1624456 (ite (= (h!35026 tl!4068) (c!414083 (derivativeStep!2210 r!27340 c!14016))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574371 () Bool)

(assert (=> b!2574371 (= e!1624458 e!1624456)))

(declare-fun c!414609 () Bool)

(assert (=> b!2574371 (= c!414609 ((_ is ElementMatch!7641) (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun b!2574372 () Bool)

(assert (=> b!2574372 (= c!414610 ((_ is Union!7641) (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun e!1624454 () Regex!7641)

(assert (=> b!2574372 (= e!1624456 e!1624454)))

(declare-fun bm!166471 () Bool)

(assert (=> bm!166471 (= call!166473 call!166475)))

(declare-fun b!2574373 () Bool)

(declare-fun c!414608 () Bool)

(assert (=> b!2574373 (= c!414608 (nullable!2558 (regOne!15794 (derivativeStep!2210 r!27340 c!14016))))))

(declare-fun e!1624457 () Regex!7641)

(assert (=> b!2574373 (= e!1624457 e!1624455)))

(declare-fun b!2574374 () Bool)

(assert (=> b!2574374 (= e!1624457 (Concat!12337 call!166473 (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun b!2574375 () Bool)

(assert (=> b!2574375 (= e!1624454 (Union!7641 call!166475 call!166474))))

(declare-fun b!2574376 () Bool)

(assert (=> b!2574376 (= e!1624455 (Union!7641 (Concat!12337 call!166476 (regTwo!15794 (derivativeStep!2210 r!27340 c!14016))) call!166474))))

(declare-fun b!2574377 () Bool)

(assert (=> b!2574377 (= e!1624454 e!1624457)))

(assert (=> b!2574377 (= c!414612 ((_ is Star!7641) (derivativeStep!2210 r!27340 c!14016)))))

(declare-fun b!2574378 () Bool)

(assert (=> b!2574378 (= e!1624458 EmptyLang!7641)))

(assert (= (and d!728286 c!414611) b!2574378))

(assert (= (and d!728286 (not c!414611)) b!2574371))

(assert (= (and b!2574371 c!414609) b!2574370))

(assert (= (and b!2574371 (not c!414609)) b!2574372))

(assert (= (and b!2574372 c!414610) b!2574375))

(assert (= (and b!2574372 (not c!414610)) b!2574377))

(assert (= (and b!2574377 c!414612) b!2574374))

(assert (= (and b!2574377 (not c!414612)) b!2574373))

(assert (= (and b!2574373 c!414608) b!2574376))

(assert (= (and b!2574373 (not c!414608)) b!2574369))

(assert (= (or b!2574376 b!2574369) bm!166469))

(assert (= (or b!2574374 bm!166469) bm!166471))

(assert (= (or b!2574375 b!2574376) bm!166470))

(assert (= (or b!2574375 bm!166471) bm!166468))

(declare-fun m!2909839 () Bool)

(assert (=> d!728286 m!2909839))

(assert (=> d!728286 m!2908405))

(assert (=> d!728286 m!2908615))

(declare-fun m!2909841 () Bool)

(assert (=> bm!166468 m!2909841))

(declare-fun m!2909843 () Bool)

(assert (=> bm!166470 m!2909843))

(declare-fun m!2909845 () Bool)

(assert (=> b!2574373 m!2909845))

(assert (=> b!2572782 d!728286))

(declare-fun d!728288 () Bool)

(assert (=> d!728288 (= (matchR!3584 lt!906173 (_1!17344 lt!906169)) (matchR!3584 (derivative!336 lt!906173 (_1!17344 lt!906169)) Nil!29606))))

(assert (=> d!728288 true))

(declare-fun _$108!414 () Unit!43463)

(assert (=> d!728288 (= (choose!15175 lt!906173 (_1!17344 lt!906169)) _$108!414)))

(declare-fun bs!470109 () Bool)

(assert (= bs!470109 d!728288))

(assert (=> bs!470109 m!2908463))

(assert (=> bs!470109 m!2908423))

(assert (=> bs!470109 m!2908423))

(assert (=> bs!470109 m!2908863))

(assert (=> d!727864 d!728288))

(assert (=> d!727864 d!728004))

(assert (=> d!727864 d!727862))

(declare-fun b!2574379 () Bool)

(declare-fun res!1082873 () Bool)

(declare-fun e!1624461 () Bool)

(assert (=> b!2574379 (=> (not res!1082873) (not e!1624461))))

(assert (=> b!2574379 (= res!1082873 (isEmpty!17069 (tail!4121 Nil!29606)))))

(declare-fun b!2574380 () Bool)

(declare-fun e!1624459 () Bool)

(assert (=> b!2574380 (= e!1624459 (not (= (head!5846 Nil!29606) (c!414083 (derivative!336 lt!906173 (_1!17344 lt!906169))))))))

(declare-fun b!2574381 () Bool)

(declare-fun res!1082871 () Bool)

(declare-fun e!1624460 () Bool)

(assert (=> b!2574381 (=> res!1082871 e!1624460)))

(assert (=> b!2574381 (= res!1082871 e!1624461)))

(declare-fun res!1082875 () Bool)

(assert (=> b!2574381 (=> (not res!1082875) (not e!1624461))))

(declare-fun lt!906370 () Bool)

(assert (=> b!2574381 (= res!1082875 lt!906370)))

(declare-fun b!2574382 () Bool)

(declare-fun e!1624464 () Bool)

(assert (=> b!2574382 (= e!1624464 (not lt!906370))))

(declare-fun d!728290 () Bool)

(declare-fun e!1624465 () Bool)

(assert (=> d!728290 e!1624465))

(declare-fun c!414613 () Bool)

(assert (=> d!728290 (= c!414613 ((_ is EmptyExpr!7641) (derivative!336 lt!906173 (_1!17344 lt!906169))))))

(declare-fun e!1624463 () Bool)

(assert (=> d!728290 (= lt!906370 e!1624463)))

(declare-fun c!414615 () Bool)

(assert (=> d!728290 (= c!414615 (isEmpty!17069 Nil!29606))))

(assert (=> d!728290 (validRegex!3267 (derivative!336 lt!906173 (_1!17344 lt!906169)))))

(assert (=> d!728290 (= (matchR!3584 (derivative!336 lt!906173 (_1!17344 lt!906169)) Nil!29606) lt!906370)))

(declare-fun b!2574383 () Bool)

(declare-fun res!1082872 () Bool)

(assert (=> b!2574383 (=> res!1082872 e!1624460)))

(assert (=> b!2574383 (= res!1082872 (not ((_ is ElementMatch!7641) (derivative!336 lt!906173 (_1!17344 lt!906169)))))))

(assert (=> b!2574383 (= e!1624464 e!1624460)))

(declare-fun b!2574384 () Bool)

(assert (=> b!2574384 (= e!1624461 (= (head!5846 Nil!29606) (c!414083 (derivative!336 lt!906173 (_1!17344 lt!906169)))))))

(declare-fun b!2574385 () Bool)

(declare-fun res!1082870 () Bool)

(assert (=> b!2574385 (=> res!1082870 e!1624459)))

(assert (=> b!2574385 (= res!1082870 (not (isEmpty!17069 (tail!4121 Nil!29606))))))

(declare-fun b!2574386 () Bool)

(assert (=> b!2574386 (= e!1624463 (nullable!2558 (derivative!336 lt!906173 (_1!17344 lt!906169))))))

(declare-fun b!2574387 () Bool)

(declare-fun call!166477 () Bool)

(assert (=> b!2574387 (= e!1624465 (= lt!906370 call!166477))))

(declare-fun bm!166472 () Bool)

(assert (=> bm!166472 (= call!166477 (isEmpty!17069 Nil!29606))))

(declare-fun b!2574388 () Bool)

(declare-fun res!1082877 () Bool)

(assert (=> b!2574388 (=> (not res!1082877) (not e!1624461))))

(assert (=> b!2574388 (= res!1082877 (not call!166477))))

(declare-fun b!2574389 () Bool)

(assert (=> b!2574389 (= e!1624463 (matchR!3584 (derivativeStep!2210 (derivative!336 lt!906173 (_1!17344 lt!906169)) (head!5846 Nil!29606)) (tail!4121 Nil!29606)))))

(declare-fun b!2574390 () Bool)

(assert (=> b!2574390 (= e!1624465 e!1624464)))

(declare-fun c!414614 () Bool)

(assert (=> b!2574390 (= c!414614 ((_ is EmptyLang!7641) (derivative!336 lt!906173 (_1!17344 lt!906169))))))

(declare-fun b!2574391 () Bool)

(declare-fun e!1624462 () Bool)

(assert (=> b!2574391 (= e!1624460 e!1624462)))

(declare-fun res!1082874 () Bool)

(assert (=> b!2574391 (=> (not res!1082874) (not e!1624462))))

(assert (=> b!2574391 (= res!1082874 (not lt!906370))))

(declare-fun b!2574392 () Bool)

(assert (=> b!2574392 (= e!1624462 e!1624459)))

(declare-fun res!1082876 () Bool)

(assert (=> b!2574392 (=> res!1082876 e!1624459)))

(assert (=> b!2574392 (= res!1082876 call!166477)))

(assert (= (and d!728290 c!414615) b!2574386))

(assert (= (and d!728290 (not c!414615)) b!2574389))

(assert (= (and d!728290 c!414613) b!2574387))

(assert (= (and d!728290 (not c!414613)) b!2574390))

(assert (= (and b!2574390 c!414614) b!2574382))

(assert (= (and b!2574390 (not c!414614)) b!2574383))

(assert (= (and b!2574383 (not res!1082872)) b!2574381))

(assert (= (and b!2574381 res!1082875) b!2574388))

(assert (= (and b!2574388 res!1082877) b!2574379))

(assert (= (and b!2574379 res!1082873) b!2574384))

(assert (= (and b!2574381 (not res!1082871)) b!2574391))

(assert (= (and b!2574391 res!1082874) b!2574392))

(assert (= (and b!2574392 (not res!1082876)) b!2574385))

(assert (= (and b!2574385 (not res!1082870)) b!2574380))

(assert (= (or b!2574387 b!2574388 b!2574392) bm!166472))

(assert (=> b!2574379 m!2908719))

(assert (=> b!2574379 m!2908719))

(assert (=> b!2574379 m!2908721))

(assert (=> b!2574389 m!2908723))

(assert (=> b!2574389 m!2908423))

(assert (=> b!2574389 m!2908723))

(declare-fun m!2909847 () Bool)

(assert (=> b!2574389 m!2909847))

(assert (=> b!2574389 m!2908719))

(assert (=> b!2574389 m!2909847))

(assert (=> b!2574389 m!2908719))

(declare-fun m!2909849 () Bool)

(assert (=> b!2574389 m!2909849))

(assert (=> b!2574385 m!2908719))

(assert (=> b!2574385 m!2908719))

(assert (=> b!2574385 m!2908721))

(assert (=> bm!166472 m!2908729))

(assert (=> b!2574386 m!2908423))

(declare-fun m!2909851 () Bool)

(assert (=> b!2574386 m!2909851))

(assert (=> b!2574380 m!2908723))

(assert (=> d!728290 m!2908729))

(assert (=> d!728290 m!2908423))

(declare-fun m!2909853 () Bool)

(assert (=> d!728290 m!2909853))

(assert (=> b!2574384 m!2908723))

(assert (=> d!727864 d!728290))

(assert (=> d!727864 d!727772))

(declare-fun b!2574393 () Bool)

(declare-fun res!1082881 () Bool)

(declare-fun e!1624468 () Bool)

(assert (=> b!2574393 (=> (not res!1082881) (not e!1624468))))

(assert (=> b!2574393 (= res!1082881 (isEmpty!17069 (tail!4121 (tail!4121 (_2!17344 lt!906169)))))))

(declare-fun b!2574394 () Bool)

(declare-fun e!1624466 () Bool)

(assert (=> b!2574394 (= e!1624466 (not (= (head!5846 (tail!4121 (_2!17344 lt!906169))) (c!414083 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169)))))))))

(declare-fun b!2574395 () Bool)

(declare-fun res!1082879 () Bool)

(declare-fun e!1624467 () Bool)

(assert (=> b!2574395 (=> res!1082879 e!1624467)))

(assert (=> b!2574395 (= res!1082879 e!1624468)))

(declare-fun res!1082883 () Bool)

(assert (=> b!2574395 (=> (not res!1082883) (not e!1624468))))

(declare-fun lt!906371 () Bool)

(assert (=> b!2574395 (= res!1082883 lt!906371)))

(declare-fun b!2574396 () Bool)

(declare-fun e!1624471 () Bool)

(assert (=> b!2574396 (= e!1624471 (not lt!906371))))

(declare-fun d!728292 () Bool)

(declare-fun e!1624472 () Bool)

(assert (=> d!728292 e!1624472))

(declare-fun c!414616 () Bool)

(assert (=> d!728292 (= c!414616 ((_ is EmptyExpr!7641) (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169)))))))

(declare-fun e!1624470 () Bool)

(assert (=> d!728292 (= lt!906371 e!1624470)))

(declare-fun c!414618 () Bool)

(assert (=> d!728292 (= c!414618 (isEmpty!17069 (tail!4121 (_2!17344 lt!906169))))))

(assert (=> d!728292 (validRegex!3267 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))))))

(assert (=> d!728292 (= (matchR!3584 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))) (tail!4121 (_2!17344 lt!906169))) lt!906371)))

(declare-fun b!2574397 () Bool)

(declare-fun res!1082880 () Bool)

(assert (=> b!2574397 (=> res!1082880 e!1624467)))

(assert (=> b!2574397 (= res!1082880 (not ((_ is ElementMatch!7641) (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))))))))

(assert (=> b!2574397 (= e!1624471 e!1624467)))

(declare-fun b!2574398 () Bool)

(assert (=> b!2574398 (= e!1624468 (= (head!5846 (tail!4121 (_2!17344 lt!906169))) (c!414083 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))))))))

(declare-fun b!2574399 () Bool)

(declare-fun res!1082878 () Bool)

(assert (=> b!2574399 (=> res!1082878 e!1624466)))

(assert (=> b!2574399 (= res!1082878 (not (isEmpty!17069 (tail!4121 (tail!4121 (_2!17344 lt!906169))))))))

(declare-fun b!2574400 () Bool)

(assert (=> b!2574400 (= e!1624470 (nullable!2558 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169)))))))

(declare-fun b!2574401 () Bool)

(declare-fun call!166478 () Bool)

(assert (=> b!2574401 (= e!1624472 (= lt!906371 call!166478))))

(declare-fun bm!166473 () Bool)

(assert (=> bm!166473 (= call!166478 (isEmpty!17069 (tail!4121 (_2!17344 lt!906169))))))

(declare-fun b!2574402 () Bool)

(declare-fun res!1082885 () Bool)

(assert (=> b!2574402 (=> (not res!1082885) (not e!1624468))))

(assert (=> b!2574402 (= res!1082885 (not call!166478))))

(declare-fun b!2574403 () Bool)

(assert (=> b!2574403 (= e!1624470 (matchR!3584 (derivativeStep!2210 (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))) (head!5846 (tail!4121 (_2!17344 lt!906169)))) (tail!4121 (tail!4121 (_2!17344 lt!906169)))))))

(declare-fun b!2574404 () Bool)

(assert (=> b!2574404 (= e!1624472 e!1624471)))

(declare-fun c!414617 () Bool)

(assert (=> b!2574404 (= c!414617 ((_ is EmptyLang!7641) (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169)))))))

(declare-fun b!2574405 () Bool)

(declare-fun e!1624469 () Bool)

(assert (=> b!2574405 (= e!1624467 e!1624469)))

(declare-fun res!1082882 () Bool)

(assert (=> b!2574405 (=> (not res!1082882) (not e!1624469))))

(assert (=> b!2574405 (= res!1082882 (not lt!906371))))

(declare-fun b!2574406 () Bool)

(assert (=> b!2574406 (= e!1624469 e!1624466)))

(declare-fun res!1082884 () Bool)

(assert (=> b!2574406 (=> res!1082884 e!1624466)))

(assert (=> b!2574406 (= res!1082884 call!166478)))

(assert (= (and d!728292 c!414618) b!2574400))

(assert (= (and d!728292 (not c!414618)) b!2574403))

(assert (= (and d!728292 c!414616) b!2574401))

(assert (= (and d!728292 (not c!414616)) b!2574404))

(assert (= (and b!2574404 c!414617) b!2574396))

(assert (= (and b!2574404 (not c!414617)) b!2574397))

(assert (= (and b!2574397 (not res!1082880)) b!2574395))

(assert (= (and b!2574395 res!1082883) b!2574402))

(assert (= (and b!2574402 res!1082885) b!2574393))

(assert (= (and b!2574393 res!1082881) b!2574398))

(assert (= (and b!2574395 (not res!1082879)) b!2574405))

(assert (= (and b!2574405 res!1082882) b!2574406))

(assert (= (and b!2574406 (not res!1082884)) b!2574399))

(assert (= (and b!2574399 (not res!1082878)) b!2574394))

(assert (= (or b!2574401 b!2574402 b!2574406) bm!166473))

(assert (=> b!2574393 m!2908881))

(declare-fun m!2909855 () Bool)

(assert (=> b!2574393 m!2909855))

(assert (=> b!2574393 m!2909855))

(declare-fun m!2909857 () Bool)

(assert (=> b!2574393 m!2909857))

(assert (=> b!2574403 m!2908881))

(declare-fun m!2909859 () Bool)

(assert (=> b!2574403 m!2909859))

(assert (=> b!2574403 m!2908887))

(assert (=> b!2574403 m!2909859))

(declare-fun m!2909861 () Bool)

(assert (=> b!2574403 m!2909861))

(assert (=> b!2574403 m!2908881))

(assert (=> b!2574403 m!2909855))

(assert (=> b!2574403 m!2909861))

(assert (=> b!2574403 m!2909855))

(declare-fun m!2909863 () Bool)

(assert (=> b!2574403 m!2909863))

(assert (=> b!2574399 m!2908881))

(assert (=> b!2574399 m!2909855))

(assert (=> b!2574399 m!2909855))

(assert (=> b!2574399 m!2909857))

(assert (=> bm!166473 m!2908881))

(assert (=> bm!166473 m!2908883))

(assert (=> b!2574400 m!2908887))

(declare-fun m!2909865 () Bool)

(assert (=> b!2574400 m!2909865))

(assert (=> b!2574394 m!2908881))

(assert (=> b!2574394 m!2909859))

(assert (=> d!728292 m!2908881))

(assert (=> d!728292 m!2908883))

(assert (=> d!728292 m!2908887))

(declare-fun m!2909867 () Bool)

(assert (=> d!728292 m!2909867))

(assert (=> b!2574398 m!2908881))

(assert (=> b!2574398 m!2909859))

(assert (=> b!2573144 d!728292))

(declare-fun d!728294 () Bool)

(declare-fun lt!906372 () Regex!7641)

(assert (=> d!728294 (validRegex!3267 lt!906372)))

(declare-fun e!1624477 () Regex!7641)

(assert (=> d!728294 (= lt!906372 e!1624477)))

(declare-fun c!414622 () Bool)

(assert (=> d!728294 (= c!414622 (or ((_ is EmptyExpr!7641) (regTwo!15794 r!27340)) ((_ is EmptyLang!7641) (regTwo!15794 r!27340))))))

(assert (=> d!728294 (validRegex!3267 (regTwo!15794 r!27340))))

(assert (=> d!728294 (= (derivativeStep!2210 (regTwo!15794 r!27340) (head!5846 (_2!17344 lt!906169))) lt!906372)))

(declare-fun b!2574407 () Bool)

(declare-fun e!1624474 () Regex!7641)

(declare-fun call!166482 () Regex!7641)

(assert (=> b!2574407 (= e!1624474 (Union!7641 (Concat!12337 call!166482 (regTwo!15794 (regTwo!15794 r!27340))) EmptyLang!7641))))

(declare-fun bm!166474 () Bool)

(declare-fun c!414621 () Bool)

(declare-fun call!166481 () Regex!7641)

(declare-fun c!414623 () Bool)

(assert (=> bm!166474 (= call!166481 (derivativeStep!2210 (ite c!414621 (regOne!15795 (regTwo!15794 r!27340)) (ite c!414623 (reg!7970 (regTwo!15794 r!27340)) (regOne!15794 (regTwo!15794 r!27340)))) (head!5846 (_2!17344 lt!906169))))))

(declare-fun bm!166475 () Bool)

(declare-fun call!166479 () Regex!7641)

(assert (=> bm!166475 (= call!166482 call!166479)))

(declare-fun bm!166476 () Bool)

(declare-fun call!166480 () Regex!7641)

(assert (=> bm!166476 (= call!166480 (derivativeStep!2210 (ite c!414621 (regTwo!15795 (regTwo!15794 r!27340)) (regTwo!15794 (regTwo!15794 r!27340))) (head!5846 (_2!17344 lt!906169))))))

(declare-fun b!2574408 () Bool)

(declare-fun e!1624475 () Regex!7641)

(assert (=> b!2574408 (= e!1624475 (ite (= (head!5846 (_2!17344 lt!906169)) (c!414083 (regTwo!15794 r!27340))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574409 () Bool)

(assert (=> b!2574409 (= e!1624477 e!1624475)))

(declare-fun c!414620 () Bool)

(assert (=> b!2574409 (= c!414620 ((_ is ElementMatch!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2574410 () Bool)

(assert (=> b!2574410 (= c!414621 ((_ is Union!7641) (regTwo!15794 r!27340)))))

(declare-fun e!1624473 () Regex!7641)

(assert (=> b!2574410 (= e!1624475 e!1624473)))

(declare-fun bm!166477 () Bool)

(assert (=> bm!166477 (= call!166479 call!166481)))

(declare-fun b!2574411 () Bool)

(declare-fun c!414619 () Bool)

(assert (=> b!2574411 (= c!414619 (nullable!2558 (regOne!15794 (regTwo!15794 r!27340))))))

(declare-fun e!1624476 () Regex!7641)

(assert (=> b!2574411 (= e!1624476 e!1624474)))

(declare-fun b!2574412 () Bool)

(assert (=> b!2574412 (= e!1624476 (Concat!12337 call!166479 (regTwo!15794 r!27340)))))

(declare-fun b!2574413 () Bool)

(assert (=> b!2574413 (= e!1624473 (Union!7641 call!166481 call!166480))))

(declare-fun b!2574414 () Bool)

(assert (=> b!2574414 (= e!1624474 (Union!7641 (Concat!12337 call!166482 (regTwo!15794 (regTwo!15794 r!27340))) call!166480))))

(declare-fun b!2574415 () Bool)

(assert (=> b!2574415 (= e!1624473 e!1624476)))

(assert (=> b!2574415 (= c!414623 ((_ is Star!7641) (regTwo!15794 r!27340)))))

(declare-fun b!2574416 () Bool)

(assert (=> b!2574416 (= e!1624477 EmptyLang!7641)))

(assert (= (and d!728294 c!414622) b!2574416))

(assert (= (and d!728294 (not c!414622)) b!2574409))

(assert (= (and b!2574409 c!414620) b!2574408))

(assert (= (and b!2574409 (not c!414620)) b!2574410))

(assert (= (and b!2574410 c!414621) b!2574413))

(assert (= (and b!2574410 (not c!414621)) b!2574415))

(assert (= (and b!2574415 c!414623) b!2574412))

(assert (= (and b!2574415 (not c!414623)) b!2574411))

(assert (= (and b!2574411 c!414619) b!2574414))

(assert (= (and b!2574411 (not c!414619)) b!2574407))

(assert (= (or b!2574414 b!2574407) bm!166475))

(assert (= (or b!2574412 bm!166475) bm!166477))

(assert (= (or b!2574413 b!2574414) bm!166476))

(assert (= (or b!2574413 bm!166477) bm!166474))

(declare-fun m!2909869 () Bool)

(assert (=> d!728294 m!2909869))

(assert (=> d!728294 m!2908895))

(assert (=> bm!166474 m!2908885))

(declare-fun m!2909871 () Bool)

(assert (=> bm!166474 m!2909871))

(assert (=> bm!166476 m!2908885))

(declare-fun m!2909873 () Bool)

(assert (=> bm!166476 m!2909873))

(declare-fun m!2909875 () Bool)

(assert (=> b!2574411 m!2909875))

(assert (=> b!2573144 d!728294))

(assert (=> b!2573144 d!727950))

(assert (=> b!2573144 d!728058))

(assert (=> d!727836 d!727826))

(declare-fun d!728296 () Bool)

(assert (=> d!728296 (= (matchR!3584 lt!906180 tl!4068) (matchR!3584 (derivative!336 lt!906180 tl!4068) Nil!29606))))

(assert (=> d!728296 true))

(declare-fun _$108!415 () Unit!43463)

(assert (=> d!728296 (= (choose!15175 lt!906180 tl!4068) _$108!415)))

(declare-fun bs!470110 () Bool)

(assert (= bs!470110 d!728296))

(assert (=> bs!470110 m!2908451))

(assert (=> bs!470110 m!2908447))

(assert (=> bs!470110 m!2908447))

(assert (=> bs!470110 m!2908449))

(assert (=> d!727836 d!728296))

(assert (=> d!727836 d!728244))

(assert (=> d!727836 d!727850))

(assert (=> d!727836 d!727852))

(assert (=> b!2572886 d!728152))

(assert (=> b!2573029 d!728038))

(assert (=> d!727848 d!727846))

(declare-fun d!728298 () Bool)

(declare-fun e!1624480 () Bool)

(assert (=> d!728298 e!1624480))

(declare-fun res!1082888 () Bool)

(assert (=> d!728298 (=> res!1082888 e!1624480)))

(assert (=> d!728298 (= res!1082888 (matchR!3584 lt!906175 tl!4068))))

(assert (=> d!728298 true))

(declare-fun _$116!373 () Unit!43463)

(assert (=> d!728298 (= (choose!15176 lt!906175 EmptyLang!7641 tl!4068) _$116!373)))

(declare-fun b!2574419 () Bool)

(assert (=> b!2574419 (= e!1624480 (matchR!3584 EmptyLang!7641 tl!4068))))

(assert (= (and d!728298 (not res!1082888)) b!2574419))

(assert (=> d!728298 m!2908461))

(assert (=> b!2574419 m!2908411))

(assert (=> d!727848 d!728298))

(assert (=> d!727848 d!728156))

(declare-fun d!728300 () Bool)

(assert (=> d!728300 (= (nullable!2558 (regTwo!15794 r!27340)) (nullableFct!783 (regTwo!15794 r!27340)))))

(declare-fun bs!470111 () Bool)

(assert (= bs!470111 d!728300))

(declare-fun m!2909877 () Bool)

(assert (=> bs!470111 m!2909877))

(assert (=> b!2573141 d!728300))

(assert (=> b!2573101 d!727974))

(assert (=> b!2573101 d!727976))

(declare-fun b!2574420 () Bool)

(declare-fun e!1624484 () Int)

(assert (=> b!2574420 (= e!1624484 0)))

(declare-fun b!2574421 () Bool)

(declare-fun e!1624485 () Int)

(declare-fun call!166485 () Int)

(assert (=> b!2574421 (= e!1624485 (+ 1 call!166485))))

(declare-fun b!2574422 () Bool)

(declare-fun e!1624482 () Int)

(declare-fun e!1624481 () Int)

(assert (=> b!2574422 (= e!1624482 e!1624481)))

(declare-fun c!414625 () Bool)

(assert (=> b!2574422 (= c!414625 ((_ is Concat!12337) (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(declare-fun b!2574423 () Bool)

(declare-fun call!166483 () Int)

(declare-fun call!166484 () Int)

(assert (=> b!2574423 (= e!1624481 (+ 1 call!166483 call!166484))))

(declare-fun c!414628 () Bool)

(declare-fun b!2574424 () Bool)

(assert (=> b!2574424 (= c!414628 ((_ is EmptyExpr!7641) (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(assert (=> b!2574424 (= e!1624481 e!1624484)))

(declare-fun b!2574425 () Bool)

(declare-fun e!1624483 () Int)

(assert (=> b!2574425 (= e!1624483 0)))

(declare-fun c!414627 () Bool)

(declare-fun b!2574426 () Bool)

(assert (=> b!2574426 (= c!414627 ((_ is EmptyLang!7641) (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(assert (=> b!2574426 (= e!1624485 e!1624483)))

(declare-fun bm!166478 () Bool)

(declare-fun c!414624 () Bool)

(assert (=> bm!166478 (= call!166484 (RegexPrimitiveSize!124 (ite c!414625 (regTwo!15794 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))) (ite c!414624 (reg!7970 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))) (regOne!15795 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340))))))))))

(declare-fun d!728302 () Bool)

(declare-fun lt!906373 () Int)

(assert (=> d!728302 (>= lt!906373 0)))

(assert (=> d!728302 (= lt!906373 e!1624482)))

(declare-fun c!414626 () Bool)

(assert (=> d!728302 (= c!414626 ((_ is ElementMatch!7641) (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(assert (=> d!728302 (= (RegexPrimitiveSize!124 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))) lt!906373)))

(declare-fun bm!166479 () Bool)

(assert (=> bm!166479 (= call!166483 (RegexPrimitiveSize!124 (ite c!414625 (regOne!15794 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))) (regTwo!15795 (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))))

(declare-fun b!2574427 () Bool)

(assert (=> b!2574427 (= e!1624483 (+ 1 call!166485 call!166483))))

(declare-fun b!2574428 () Bool)

(assert (=> b!2574428 (= e!1624482 1)))

(declare-fun bm!166480 () Bool)

(assert (=> bm!166480 (= call!166485 call!166484)))

(declare-fun b!2574429 () Bool)

(assert (=> b!2574429 (= e!1624484 e!1624485)))

(assert (=> b!2574429 (= c!414624 ((_ is Star!7641) (ite c!414169 (regTwo!15794 r!27340) (ite c!414168 (reg!7970 r!27340) (regOne!15795 r!27340)))))))

(assert (= (and d!728302 c!414626) b!2574428))

(assert (= (and d!728302 (not c!414626)) b!2574422))

(assert (= (and b!2574422 c!414625) b!2574423))

(assert (= (and b!2574422 (not c!414625)) b!2574424))

(assert (= (and b!2574424 c!414628) b!2574420))

(assert (= (and b!2574424 (not c!414628)) b!2574429))

(assert (= (and b!2574429 c!414624) b!2574421))

(assert (= (and b!2574429 (not c!414624)) b!2574426))

(assert (= (and b!2574426 c!414627) b!2574425))

(assert (= (and b!2574426 (not c!414627)) b!2574427))

(assert (= (or b!2574421 b!2574427) bm!166480))

(assert (= (or b!2574423 bm!166480) bm!166478))

(assert (= (or b!2574423 b!2574427) bm!166479))

(declare-fun m!2909879 () Bool)

(assert (=> bm!166478 m!2909879))

(declare-fun m!2909881 () Bool)

(assert (=> bm!166479 m!2909881))

(assert (=> bm!166152 d!728302))

(declare-fun d!728304 () Bool)

(declare-fun lt!906374 () Regex!7641)

(assert (=> d!728304 (validRegex!3267 lt!906374)))

(declare-fun e!1624490 () Regex!7641)

(assert (=> d!728304 (= lt!906374 e!1624490)))

(declare-fun c!414632 () Bool)

(assert (=> d!728304 (= c!414632 (or ((_ is EmptyExpr!7641) (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))) ((_ is EmptyLang!7641) (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))))))

(assert (=> d!728304 (validRegex!3267 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))))

(assert (=> d!728304 (= (derivativeStep!2210 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))) c!14016) lt!906374)))

(declare-fun call!166489 () Regex!7641)

(declare-fun b!2574430 () Bool)

(declare-fun e!1624487 () Regex!7641)

(assert (=> b!2574430 (= e!1624487 (Union!7641 (Concat!12337 call!166489 (regTwo!15794 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))) EmptyLang!7641))))

(declare-fun call!166488 () Regex!7641)

(declare-fun bm!166481 () Bool)

(declare-fun c!414631 () Bool)

(declare-fun c!414633 () Bool)

(assert (=> bm!166481 (= call!166488 (derivativeStep!2210 (ite c!414631 (regOne!15795 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))) (ite c!414633 (reg!7970 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))) (regOne!15794 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))))) c!14016))))

(declare-fun bm!166482 () Bool)

(declare-fun call!166486 () Regex!7641)

(assert (=> bm!166482 (= call!166489 call!166486)))

(declare-fun call!166487 () Regex!7641)

(declare-fun bm!166483 () Bool)

(assert (=> bm!166483 (= call!166487 (derivativeStep!2210 (ite c!414631 (regTwo!15795 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))) (regTwo!15794 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))) c!14016))))

(declare-fun e!1624488 () Regex!7641)

(declare-fun b!2574431 () Bool)

(assert (=> b!2574431 (= e!1624488 (ite (= c!14016 (c!414083 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))) EmptyExpr!7641 EmptyLang!7641))))

(declare-fun b!2574432 () Bool)

(assert (=> b!2574432 (= e!1624490 e!1624488)))

(declare-fun c!414630 () Bool)

(assert (=> b!2574432 (= c!414630 ((_ is ElementMatch!7641) (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2574433 () Bool)

(assert (=> b!2574433 (= c!414631 ((_ is Union!7641) (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))))))

(declare-fun e!1624486 () Regex!7641)

(assert (=> b!2574433 (= e!1624488 e!1624486)))

(declare-fun bm!166484 () Bool)

(assert (=> bm!166484 (= call!166486 call!166488)))

(declare-fun b!2574434 () Bool)

(declare-fun c!414629 () Bool)

(assert (=> b!2574434 (= c!414629 (nullable!2558 (regOne!15794 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))))))

(declare-fun e!1624489 () Regex!7641)

(assert (=> b!2574434 (= e!1624489 e!1624487)))

(declare-fun b!2574435 () Bool)

(assert (=> b!2574435 (= e!1624489 (Concat!12337 call!166486 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2574436 () Bool)

(assert (=> b!2574436 (= e!1624486 (Union!7641 call!166488 call!166487))))

(declare-fun b!2574437 () Bool)

(assert (=> b!2574437 (= e!1624487 (Union!7641 (Concat!12337 call!166489 (regTwo!15794 (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340))))) call!166487))))

(declare-fun b!2574438 () Bool)

(assert (=> b!2574438 (= e!1624486 e!1624489)))

(assert (=> b!2574438 (= c!414633 ((_ is Star!7641) (ite c!414213 (regOne!15795 r!27340) (ite c!414215 (reg!7970 r!27340) (regOne!15794 r!27340)))))))

(declare-fun b!2574439 () Bool)

(assert (=> b!2574439 (= e!1624490 EmptyLang!7641)))

(assert (= (and d!728304 c!414632) b!2574439))

(assert (= (and d!728304 (not c!414632)) b!2574432))

(assert (= (and b!2574432 c!414630) b!2574431))

(assert (= (and b!2574432 (not c!414630)) b!2574433))

(assert (= (and b!2574433 c!414631) b!2574436))

(assert (= (and b!2574433 (not c!414631)) b!2574438))

(assert (= (and b!2574438 c!414633) b!2574435))

(assert (= (and b!2574438 (not c!414633)) b!2574434))

(assert (= (and b!2574434 c!414629) b!2574437))

(assert (= (and b!2574434 (not c!414629)) b!2574430))

(assert (= (or b!2574437 b!2574430) bm!166482))

(assert (= (or b!2574435 bm!166482) bm!166484))

(assert (= (or b!2574436 b!2574437) bm!166483))

(assert (= (or b!2574436 bm!166484) bm!166481))

(declare-fun m!2909883 () Bool)

(assert (=> d!728304 m!2909883))

(declare-fun m!2909885 () Bool)

(assert (=> d!728304 m!2909885))

(declare-fun m!2909887 () Bool)

(assert (=> bm!166481 m!2909887))

(declare-fun m!2909889 () Bool)

(assert (=> bm!166483 m!2909889))

(declare-fun m!2909891 () Bool)

(assert (=> b!2574434 m!2909891))

(assert (=> bm!166170 d!728304))

(declare-fun b!2574441 () Bool)

(declare-fun e!1624491 () Bool)

(declare-fun tp!818453 () Bool)

(declare-fun tp!818452 () Bool)

(assert (=> b!2574441 (= e!1624491 (and tp!818453 tp!818452))))

(assert (=> b!2573160 (= tp!818297 e!1624491)))

(declare-fun b!2574440 () Bool)

(assert (=> b!2574440 (= e!1624491 tp_is_empty!13137)))

(declare-fun b!2574443 () Bool)

(declare-fun tp!818449 () Bool)

(declare-fun tp!818450 () Bool)

(assert (=> b!2574443 (= e!1624491 (and tp!818449 tp!818450))))

(declare-fun b!2574442 () Bool)

(declare-fun tp!818451 () Bool)

(assert (=> b!2574442 (= e!1624491 tp!818451)))

(assert (= (and b!2573160 ((_ is ElementMatch!7641) (reg!7970 (regOne!15795 r!27340)))) b!2574440))

(assert (= (and b!2573160 ((_ is Concat!12337) (reg!7970 (regOne!15795 r!27340)))) b!2574441))

(assert (= (and b!2573160 ((_ is Star!7641) (reg!7970 (regOne!15795 r!27340)))) b!2574442))

(assert (= (and b!2573160 ((_ is Union!7641) (reg!7970 (regOne!15795 r!27340)))) b!2574443))

(declare-fun b!2574445 () Bool)

(declare-fun e!1624492 () Bool)

(declare-fun tp!818458 () Bool)

(declare-fun tp!818457 () Bool)

(assert (=> b!2574445 (= e!1624492 (and tp!818458 tp!818457))))

(assert (=> b!2573159 (= tp!818299 e!1624492)))

(declare-fun b!2574444 () Bool)

(assert (=> b!2574444 (= e!1624492 tp_is_empty!13137)))

(declare-fun b!2574447 () Bool)

(declare-fun tp!818454 () Bool)

(declare-fun tp!818455 () Bool)

(assert (=> b!2574447 (= e!1624492 (and tp!818454 tp!818455))))

(declare-fun b!2574446 () Bool)

(declare-fun tp!818456 () Bool)

(assert (=> b!2574446 (= e!1624492 tp!818456)))

(assert (= (and b!2573159 ((_ is ElementMatch!7641) (regOne!15794 (regOne!15795 r!27340)))) b!2574444))

(assert (= (and b!2573159 ((_ is Concat!12337) (regOne!15794 (regOne!15795 r!27340)))) b!2574445))

(assert (= (and b!2573159 ((_ is Star!7641) (regOne!15794 (regOne!15795 r!27340)))) b!2574446))

(assert (= (and b!2573159 ((_ is Union!7641) (regOne!15794 (regOne!15795 r!27340)))) b!2574447))

(declare-fun b!2574449 () Bool)

(declare-fun e!1624493 () Bool)

(declare-fun tp!818463 () Bool)

(declare-fun tp!818462 () Bool)

(assert (=> b!2574449 (= e!1624493 (and tp!818463 tp!818462))))

(assert (=> b!2573159 (= tp!818298 e!1624493)))

(declare-fun b!2574448 () Bool)

(assert (=> b!2574448 (= e!1624493 tp_is_empty!13137)))

(declare-fun b!2574451 () Bool)

(declare-fun tp!818459 () Bool)

(declare-fun tp!818460 () Bool)

(assert (=> b!2574451 (= e!1624493 (and tp!818459 tp!818460))))

(declare-fun b!2574450 () Bool)

(declare-fun tp!818461 () Bool)

(assert (=> b!2574450 (= e!1624493 tp!818461)))

(assert (= (and b!2573159 ((_ is ElementMatch!7641) (regTwo!15794 (regOne!15795 r!27340)))) b!2574448))

(assert (= (and b!2573159 ((_ is Concat!12337) (regTwo!15794 (regOne!15795 r!27340)))) b!2574449))

(assert (= (and b!2573159 ((_ is Star!7641) (regTwo!15794 (regOne!15795 r!27340)))) b!2574450))

(assert (= (and b!2573159 ((_ is Union!7641) (regTwo!15794 (regOne!15795 r!27340)))) b!2574451))

(declare-fun b!2574453 () Bool)

(declare-fun e!1624494 () Bool)

(declare-fun tp!818468 () Bool)

(declare-fun tp!818467 () Bool)

(assert (=> b!2574453 (= e!1624494 (and tp!818468 tp!818467))))

(assert (=> b!2573164 (= tp!818302 e!1624494)))

(declare-fun b!2574452 () Bool)

(assert (=> b!2574452 (= e!1624494 tp_is_empty!13137)))

(declare-fun b!2574455 () Bool)

(declare-fun tp!818464 () Bool)

(declare-fun tp!818465 () Bool)

(assert (=> b!2574455 (= e!1624494 (and tp!818464 tp!818465))))

(declare-fun b!2574454 () Bool)

(declare-fun tp!818466 () Bool)

(assert (=> b!2574454 (= e!1624494 tp!818466)))

(assert (= (and b!2573164 ((_ is ElementMatch!7641) (reg!7970 (regTwo!15795 r!27340)))) b!2574452))

(assert (= (and b!2573164 ((_ is Concat!12337) (reg!7970 (regTwo!15795 r!27340)))) b!2574453))

(assert (= (and b!2573164 ((_ is Star!7641) (reg!7970 (regTwo!15795 r!27340)))) b!2574454))

(assert (= (and b!2573164 ((_ is Union!7641) (reg!7970 (regTwo!15795 r!27340)))) b!2574455))

(declare-fun b!2574457 () Bool)

(declare-fun e!1624495 () Bool)

(declare-fun tp!818473 () Bool)

(declare-fun tp!818472 () Bool)

(assert (=> b!2574457 (= e!1624495 (and tp!818473 tp!818472))))

(assert (=> b!2573163 (= tp!818304 e!1624495)))

(declare-fun b!2574456 () Bool)

(assert (=> b!2574456 (= e!1624495 tp_is_empty!13137)))

(declare-fun b!2574459 () Bool)

(declare-fun tp!818469 () Bool)

(declare-fun tp!818470 () Bool)

(assert (=> b!2574459 (= e!1624495 (and tp!818469 tp!818470))))

(declare-fun b!2574458 () Bool)

(declare-fun tp!818471 () Bool)

(assert (=> b!2574458 (= e!1624495 tp!818471)))

(assert (= (and b!2573163 ((_ is ElementMatch!7641) (regOne!15794 (regTwo!15795 r!27340)))) b!2574456))

(assert (= (and b!2573163 ((_ is Concat!12337) (regOne!15794 (regTwo!15795 r!27340)))) b!2574457))

(assert (= (and b!2573163 ((_ is Star!7641) (regOne!15794 (regTwo!15795 r!27340)))) b!2574458))

(assert (= (and b!2573163 ((_ is Union!7641) (regOne!15794 (regTwo!15795 r!27340)))) b!2574459))

(declare-fun b!2574461 () Bool)

(declare-fun e!1624496 () Bool)

(declare-fun tp!818478 () Bool)

(declare-fun tp!818477 () Bool)

(assert (=> b!2574461 (= e!1624496 (and tp!818478 tp!818477))))

(assert (=> b!2573163 (= tp!818303 e!1624496)))

(declare-fun b!2574460 () Bool)

(assert (=> b!2574460 (= e!1624496 tp_is_empty!13137)))

(declare-fun b!2574463 () Bool)

(declare-fun tp!818474 () Bool)

(declare-fun tp!818475 () Bool)

(assert (=> b!2574463 (= e!1624496 (and tp!818474 tp!818475))))

(declare-fun b!2574462 () Bool)

(declare-fun tp!818476 () Bool)

(assert (=> b!2574462 (= e!1624496 tp!818476)))

(assert (= (and b!2573163 ((_ is ElementMatch!7641) (regTwo!15794 (regTwo!15795 r!27340)))) b!2574460))

(assert (= (and b!2573163 ((_ is Concat!12337) (regTwo!15794 (regTwo!15795 r!27340)))) b!2574461))

(assert (= (and b!2573163 ((_ is Star!7641) (regTwo!15794 (regTwo!15795 r!27340)))) b!2574462))

(assert (= (and b!2573163 ((_ is Union!7641) (regTwo!15794 (regTwo!15795 r!27340)))) b!2574463))

(declare-fun b!2574464 () Bool)

(declare-fun e!1624497 () Bool)

(declare-fun tp!818479 () Bool)

(assert (=> b!2574464 (= e!1624497 (and tp_is_empty!13137 tp!818479))))

(assert (=> b!2573170 (= tp!818307 e!1624497)))

(assert (= (and b!2573170 ((_ is Cons!29606) (t!211405 (t!211405 tl!4068)))) b!2574464))

(declare-fun b!2574466 () Bool)

(declare-fun e!1624498 () Bool)

(declare-fun tp!818484 () Bool)

(declare-fun tp!818483 () Bool)

(assert (=> b!2574466 (= e!1624498 (and tp!818484 tp!818483))))

(assert (=> b!2573174 (= tp!818308 e!1624498)))

(declare-fun b!2574465 () Bool)

(assert (=> b!2574465 (= e!1624498 tp_is_empty!13137)))

(declare-fun b!2574468 () Bool)

(declare-fun tp!818480 () Bool)

(declare-fun tp!818481 () Bool)

(assert (=> b!2574468 (= e!1624498 (and tp!818480 tp!818481))))

(declare-fun b!2574467 () Bool)

(declare-fun tp!818482 () Bool)

(assert (=> b!2574467 (= e!1624498 tp!818482)))

(assert (= (and b!2573174 ((_ is ElementMatch!7641) (regOne!15795 (reg!7970 r!27340)))) b!2574465))

(assert (= (and b!2573174 ((_ is Concat!12337) (regOne!15795 (reg!7970 r!27340)))) b!2574466))

(assert (= (and b!2573174 ((_ is Star!7641) (regOne!15795 (reg!7970 r!27340)))) b!2574467))

(assert (= (and b!2573174 ((_ is Union!7641) (regOne!15795 (reg!7970 r!27340)))) b!2574468))

(declare-fun b!2574470 () Bool)

(declare-fun e!1624499 () Bool)

(declare-fun tp!818489 () Bool)

(declare-fun tp!818488 () Bool)

(assert (=> b!2574470 (= e!1624499 (and tp!818489 tp!818488))))

(assert (=> b!2573174 (= tp!818309 e!1624499)))

(declare-fun b!2574469 () Bool)

(assert (=> b!2574469 (= e!1624499 tp_is_empty!13137)))

(declare-fun b!2574472 () Bool)

(declare-fun tp!818485 () Bool)

(declare-fun tp!818486 () Bool)

(assert (=> b!2574472 (= e!1624499 (and tp!818485 tp!818486))))

(declare-fun b!2574471 () Bool)

(declare-fun tp!818487 () Bool)

(assert (=> b!2574471 (= e!1624499 tp!818487)))

(assert (= (and b!2573174 ((_ is ElementMatch!7641) (regTwo!15795 (reg!7970 r!27340)))) b!2574469))

(assert (= (and b!2573174 ((_ is Concat!12337) (regTwo!15795 (reg!7970 r!27340)))) b!2574470))

(assert (= (and b!2573174 ((_ is Star!7641) (regTwo!15795 (reg!7970 r!27340)))) b!2574471))

(assert (= (and b!2573174 ((_ is Union!7641) (regTwo!15795 (reg!7970 r!27340)))) b!2574472))

(declare-fun b!2574474 () Bool)

(declare-fun e!1624500 () Bool)

(declare-fun tp!818494 () Bool)

(declare-fun tp!818493 () Bool)

(assert (=> b!2574474 (= e!1624500 (and tp!818494 tp!818493))))

(assert (=> b!2573173 (= tp!818310 e!1624500)))

(declare-fun b!2574473 () Bool)

(assert (=> b!2574473 (= e!1624500 tp_is_empty!13137)))

(declare-fun b!2574476 () Bool)

(declare-fun tp!818490 () Bool)

(declare-fun tp!818491 () Bool)

(assert (=> b!2574476 (= e!1624500 (and tp!818490 tp!818491))))

(declare-fun b!2574475 () Bool)

(declare-fun tp!818492 () Bool)

(assert (=> b!2574475 (= e!1624500 tp!818492)))

(assert (= (and b!2573173 ((_ is ElementMatch!7641) (reg!7970 (reg!7970 r!27340)))) b!2574473))

(assert (= (and b!2573173 ((_ is Concat!12337) (reg!7970 (reg!7970 r!27340)))) b!2574474))

(assert (= (and b!2573173 ((_ is Star!7641) (reg!7970 (reg!7970 r!27340)))) b!2574475))

(assert (= (and b!2573173 ((_ is Union!7641) (reg!7970 (reg!7970 r!27340)))) b!2574476))

(declare-fun b!2574478 () Bool)

(declare-fun e!1624501 () Bool)

(declare-fun tp!818499 () Bool)

(declare-fun tp!818498 () Bool)

(assert (=> b!2574478 (= e!1624501 (and tp!818499 tp!818498))))

(assert (=> b!2573178 (= tp!818313 e!1624501)))

(declare-fun b!2574477 () Bool)

(assert (=> b!2574477 (= e!1624501 tp_is_empty!13137)))

(declare-fun b!2574480 () Bool)

(declare-fun tp!818495 () Bool)

(declare-fun tp!818496 () Bool)

(assert (=> b!2574480 (= e!1624501 (and tp!818495 tp!818496))))

(declare-fun b!2574479 () Bool)

(declare-fun tp!818497 () Bool)

(assert (=> b!2574479 (= e!1624501 tp!818497)))

(assert (= (and b!2573178 ((_ is ElementMatch!7641) (regOne!15795 (regOne!15794 r!27340)))) b!2574477))

(assert (= (and b!2573178 ((_ is Concat!12337) (regOne!15795 (regOne!15794 r!27340)))) b!2574478))

(assert (= (and b!2573178 ((_ is Star!7641) (regOne!15795 (regOne!15794 r!27340)))) b!2574479))

(assert (= (and b!2573178 ((_ is Union!7641) (regOne!15795 (regOne!15794 r!27340)))) b!2574480))

(declare-fun b!2574482 () Bool)

(declare-fun e!1624502 () Bool)

(declare-fun tp!818504 () Bool)

(declare-fun tp!818503 () Bool)

(assert (=> b!2574482 (= e!1624502 (and tp!818504 tp!818503))))

(assert (=> b!2573178 (= tp!818314 e!1624502)))

(declare-fun b!2574481 () Bool)

(assert (=> b!2574481 (= e!1624502 tp_is_empty!13137)))

(declare-fun b!2574484 () Bool)

(declare-fun tp!818500 () Bool)

(declare-fun tp!818501 () Bool)

(assert (=> b!2574484 (= e!1624502 (and tp!818500 tp!818501))))

(declare-fun b!2574483 () Bool)

(declare-fun tp!818502 () Bool)

(assert (=> b!2574483 (= e!1624502 tp!818502)))

(assert (= (and b!2573178 ((_ is ElementMatch!7641) (regTwo!15795 (regOne!15794 r!27340)))) b!2574481))

(assert (= (and b!2573178 ((_ is Concat!12337) (regTwo!15795 (regOne!15794 r!27340)))) b!2574482))

(assert (= (and b!2573178 ((_ is Star!7641) (regTwo!15795 (regOne!15794 r!27340)))) b!2574483))

(assert (= (and b!2573178 ((_ is Union!7641) (regTwo!15795 (regOne!15794 r!27340)))) b!2574484))

(declare-fun b!2574486 () Bool)

(declare-fun e!1624503 () Bool)

(declare-fun tp!818509 () Bool)

(declare-fun tp!818508 () Bool)

(assert (=> b!2574486 (= e!1624503 (and tp!818509 tp!818508))))

(assert (=> b!2573177 (= tp!818315 e!1624503)))

(declare-fun b!2574485 () Bool)

(assert (=> b!2574485 (= e!1624503 tp_is_empty!13137)))

(declare-fun b!2574488 () Bool)

(declare-fun tp!818505 () Bool)

(declare-fun tp!818506 () Bool)

(assert (=> b!2574488 (= e!1624503 (and tp!818505 tp!818506))))

(declare-fun b!2574487 () Bool)

(declare-fun tp!818507 () Bool)

(assert (=> b!2574487 (= e!1624503 tp!818507)))

(assert (= (and b!2573177 ((_ is ElementMatch!7641) (reg!7970 (regOne!15794 r!27340)))) b!2574485))

(assert (= (and b!2573177 ((_ is Concat!12337) (reg!7970 (regOne!15794 r!27340)))) b!2574486))

(assert (= (and b!2573177 ((_ is Star!7641) (reg!7970 (regOne!15794 r!27340)))) b!2574487))

(assert (= (and b!2573177 ((_ is Union!7641) (reg!7970 (regOne!15794 r!27340)))) b!2574488))

(declare-fun b!2574490 () Bool)

(declare-fun e!1624504 () Bool)

(declare-fun tp!818514 () Bool)

(declare-fun tp!818513 () Bool)

(assert (=> b!2574490 (= e!1624504 (and tp!818514 tp!818513))))

(assert (=> b!2573182 (= tp!818318 e!1624504)))

(declare-fun b!2574489 () Bool)

(assert (=> b!2574489 (= e!1624504 tp_is_empty!13137)))

(declare-fun b!2574492 () Bool)

(declare-fun tp!818510 () Bool)

(declare-fun tp!818511 () Bool)

(assert (=> b!2574492 (= e!1624504 (and tp!818510 tp!818511))))

(declare-fun b!2574491 () Bool)

(declare-fun tp!818512 () Bool)

(assert (=> b!2574491 (= e!1624504 tp!818512)))

(assert (= (and b!2573182 ((_ is ElementMatch!7641) (regOne!15795 (regTwo!15794 r!27340)))) b!2574489))

(assert (= (and b!2573182 ((_ is Concat!12337) (regOne!15795 (regTwo!15794 r!27340)))) b!2574490))

(assert (= (and b!2573182 ((_ is Star!7641) (regOne!15795 (regTwo!15794 r!27340)))) b!2574491))

(assert (= (and b!2573182 ((_ is Union!7641) (regOne!15795 (regTwo!15794 r!27340)))) b!2574492))

(declare-fun b!2574494 () Bool)

(declare-fun e!1624505 () Bool)

(declare-fun tp!818519 () Bool)

(declare-fun tp!818518 () Bool)

(assert (=> b!2574494 (= e!1624505 (and tp!818519 tp!818518))))

(assert (=> b!2573182 (= tp!818319 e!1624505)))

(declare-fun b!2574493 () Bool)

(assert (=> b!2574493 (= e!1624505 tp_is_empty!13137)))

(declare-fun b!2574496 () Bool)

(declare-fun tp!818515 () Bool)

(declare-fun tp!818516 () Bool)

(assert (=> b!2574496 (= e!1624505 (and tp!818515 tp!818516))))

(declare-fun b!2574495 () Bool)

(declare-fun tp!818517 () Bool)

(assert (=> b!2574495 (= e!1624505 tp!818517)))

(assert (= (and b!2573182 ((_ is ElementMatch!7641) (regTwo!15795 (regTwo!15794 r!27340)))) b!2574493))

(assert (= (and b!2573182 ((_ is Concat!12337) (regTwo!15795 (regTwo!15794 r!27340)))) b!2574494))

(assert (= (and b!2573182 ((_ is Star!7641) (regTwo!15795 (regTwo!15794 r!27340)))) b!2574495))

(assert (= (and b!2573182 ((_ is Union!7641) (regTwo!15795 (regTwo!15794 r!27340)))) b!2574496))

(declare-fun b!2574498 () Bool)

(declare-fun e!1624506 () Bool)

(declare-fun tp!818524 () Bool)

(declare-fun tp!818523 () Bool)

(assert (=> b!2574498 (= e!1624506 (and tp!818524 tp!818523))))

(assert (=> b!2573181 (= tp!818320 e!1624506)))

(declare-fun b!2574497 () Bool)

(assert (=> b!2574497 (= e!1624506 tp_is_empty!13137)))

(declare-fun b!2574500 () Bool)

(declare-fun tp!818520 () Bool)

(declare-fun tp!818521 () Bool)

(assert (=> b!2574500 (= e!1624506 (and tp!818520 tp!818521))))

(declare-fun b!2574499 () Bool)

(declare-fun tp!818522 () Bool)

(assert (=> b!2574499 (= e!1624506 tp!818522)))

(assert (= (and b!2573181 ((_ is ElementMatch!7641) (reg!7970 (regTwo!15794 r!27340)))) b!2574497))

(assert (= (and b!2573181 ((_ is Concat!12337) (reg!7970 (regTwo!15794 r!27340)))) b!2574498))

(assert (= (and b!2573181 ((_ is Star!7641) (reg!7970 (regTwo!15794 r!27340)))) b!2574499))

(assert (= (and b!2573181 ((_ is Union!7641) (reg!7970 (regTwo!15794 r!27340)))) b!2574500))

(declare-fun b!2574502 () Bool)

(declare-fun e!1624507 () Bool)

(declare-fun tp!818529 () Bool)

(declare-fun tp!818528 () Bool)

(assert (=> b!2574502 (= e!1624507 (and tp!818529 tp!818528))))

(assert (=> b!2573172 (= tp!818312 e!1624507)))

(declare-fun b!2574501 () Bool)

(assert (=> b!2574501 (= e!1624507 tp_is_empty!13137)))

(declare-fun b!2574504 () Bool)

(declare-fun tp!818525 () Bool)

(declare-fun tp!818526 () Bool)

(assert (=> b!2574504 (= e!1624507 (and tp!818525 tp!818526))))

(declare-fun b!2574503 () Bool)

(declare-fun tp!818527 () Bool)

(assert (=> b!2574503 (= e!1624507 tp!818527)))

(assert (= (and b!2573172 ((_ is ElementMatch!7641) (regOne!15794 (reg!7970 r!27340)))) b!2574501))

(assert (= (and b!2573172 ((_ is Concat!12337) (regOne!15794 (reg!7970 r!27340)))) b!2574502))

(assert (= (and b!2573172 ((_ is Star!7641) (regOne!15794 (reg!7970 r!27340)))) b!2574503))

(assert (= (and b!2573172 ((_ is Union!7641) (regOne!15794 (reg!7970 r!27340)))) b!2574504))

(declare-fun b!2574506 () Bool)

(declare-fun e!1624508 () Bool)

(declare-fun tp!818534 () Bool)

(declare-fun tp!818533 () Bool)

(assert (=> b!2574506 (= e!1624508 (and tp!818534 tp!818533))))

(assert (=> b!2573172 (= tp!818311 e!1624508)))

(declare-fun b!2574505 () Bool)

(assert (=> b!2574505 (= e!1624508 tp_is_empty!13137)))

(declare-fun b!2574508 () Bool)

(declare-fun tp!818530 () Bool)

(declare-fun tp!818531 () Bool)

(assert (=> b!2574508 (= e!1624508 (and tp!818530 tp!818531))))

(declare-fun b!2574507 () Bool)

(declare-fun tp!818532 () Bool)

(assert (=> b!2574507 (= e!1624508 tp!818532)))

(assert (= (and b!2573172 ((_ is ElementMatch!7641) (regTwo!15794 (reg!7970 r!27340)))) b!2574505))

(assert (= (and b!2573172 ((_ is Concat!12337) (regTwo!15794 (reg!7970 r!27340)))) b!2574506))

(assert (= (and b!2573172 ((_ is Star!7641) (regTwo!15794 (reg!7970 r!27340)))) b!2574507))

(assert (= (and b!2573172 ((_ is Union!7641) (regTwo!15794 (reg!7970 r!27340)))) b!2574508))

(declare-fun b!2574510 () Bool)

(declare-fun e!1624509 () Bool)

(declare-fun tp!818539 () Bool)

(declare-fun tp!818538 () Bool)

(assert (=> b!2574510 (= e!1624509 (and tp!818539 tp!818538))))

(assert (=> b!2573161 (= tp!818295 e!1624509)))

(declare-fun b!2574509 () Bool)

(assert (=> b!2574509 (= e!1624509 tp_is_empty!13137)))

(declare-fun b!2574512 () Bool)

(declare-fun tp!818535 () Bool)

(declare-fun tp!818536 () Bool)

(assert (=> b!2574512 (= e!1624509 (and tp!818535 tp!818536))))

(declare-fun b!2574511 () Bool)

(declare-fun tp!818537 () Bool)

(assert (=> b!2574511 (= e!1624509 tp!818537)))

(assert (= (and b!2573161 ((_ is ElementMatch!7641) (regOne!15795 (regOne!15795 r!27340)))) b!2574509))

(assert (= (and b!2573161 ((_ is Concat!12337) (regOne!15795 (regOne!15795 r!27340)))) b!2574510))

(assert (= (and b!2573161 ((_ is Star!7641) (regOne!15795 (regOne!15795 r!27340)))) b!2574511))

(assert (= (and b!2573161 ((_ is Union!7641) (regOne!15795 (regOne!15795 r!27340)))) b!2574512))

(declare-fun b!2574514 () Bool)

(declare-fun e!1624510 () Bool)

(declare-fun tp!818544 () Bool)

(declare-fun tp!818543 () Bool)

(assert (=> b!2574514 (= e!1624510 (and tp!818544 tp!818543))))

(assert (=> b!2573161 (= tp!818296 e!1624510)))

(declare-fun b!2574513 () Bool)

(assert (=> b!2574513 (= e!1624510 tp_is_empty!13137)))

(declare-fun b!2574516 () Bool)

(declare-fun tp!818540 () Bool)

(declare-fun tp!818541 () Bool)

(assert (=> b!2574516 (= e!1624510 (and tp!818540 tp!818541))))

(declare-fun b!2574515 () Bool)

(declare-fun tp!818542 () Bool)

(assert (=> b!2574515 (= e!1624510 tp!818542)))

(assert (= (and b!2573161 ((_ is ElementMatch!7641) (regTwo!15795 (regOne!15795 r!27340)))) b!2574513))

(assert (= (and b!2573161 ((_ is Concat!12337) (regTwo!15795 (regOne!15795 r!27340)))) b!2574514))

(assert (= (and b!2573161 ((_ is Star!7641) (regTwo!15795 (regOne!15795 r!27340)))) b!2574515))

(assert (= (and b!2573161 ((_ is Union!7641) (regTwo!15795 (regOne!15795 r!27340)))) b!2574516))

(declare-fun b!2574518 () Bool)

(declare-fun e!1624511 () Bool)

(declare-fun tp!818549 () Bool)

(declare-fun tp!818548 () Bool)

(assert (=> b!2574518 (= e!1624511 (and tp!818549 tp!818548))))

(assert (=> b!2573176 (= tp!818317 e!1624511)))

(declare-fun b!2574517 () Bool)

(assert (=> b!2574517 (= e!1624511 tp_is_empty!13137)))

(declare-fun b!2574520 () Bool)

(declare-fun tp!818545 () Bool)

(declare-fun tp!818546 () Bool)

(assert (=> b!2574520 (= e!1624511 (and tp!818545 tp!818546))))

(declare-fun b!2574519 () Bool)

(declare-fun tp!818547 () Bool)

(assert (=> b!2574519 (= e!1624511 tp!818547)))

(assert (= (and b!2573176 ((_ is ElementMatch!7641) (regOne!15794 (regOne!15794 r!27340)))) b!2574517))

(assert (= (and b!2573176 ((_ is Concat!12337) (regOne!15794 (regOne!15794 r!27340)))) b!2574518))

(assert (= (and b!2573176 ((_ is Star!7641) (regOne!15794 (regOne!15794 r!27340)))) b!2574519))

(assert (= (and b!2573176 ((_ is Union!7641) (regOne!15794 (regOne!15794 r!27340)))) b!2574520))

(declare-fun b!2574522 () Bool)

(declare-fun e!1624512 () Bool)

(declare-fun tp!818554 () Bool)

(declare-fun tp!818553 () Bool)

(assert (=> b!2574522 (= e!1624512 (and tp!818554 tp!818553))))

(assert (=> b!2573176 (= tp!818316 e!1624512)))

(declare-fun b!2574521 () Bool)

(assert (=> b!2574521 (= e!1624512 tp_is_empty!13137)))

(declare-fun b!2574524 () Bool)

(declare-fun tp!818550 () Bool)

(declare-fun tp!818551 () Bool)

(assert (=> b!2574524 (= e!1624512 (and tp!818550 tp!818551))))

(declare-fun b!2574523 () Bool)

(declare-fun tp!818552 () Bool)

(assert (=> b!2574523 (= e!1624512 tp!818552)))

(assert (= (and b!2573176 ((_ is ElementMatch!7641) (regTwo!15794 (regOne!15794 r!27340)))) b!2574521))

(assert (= (and b!2573176 ((_ is Concat!12337) (regTwo!15794 (regOne!15794 r!27340)))) b!2574522))

(assert (= (and b!2573176 ((_ is Star!7641) (regTwo!15794 (regOne!15794 r!27340)))) b!2574523))

(assert (= (and b!2573176 ((_ is Union!7641) (regTwo!15794 (regOne!15794 r!27340)))) b!2574524))

(declare-fun b!2574526 () Bool)

(declare-fun e!1624513 () Bool)

(declare-fun tp!818559 () Bool)

(declare-fun tp!818558 () Bool)

(assert (=> b!2574526 (= e!1624513 (and tp!818559 tp!818558))))

(assert (=> b!2573165 (= tp!818300 e!1624513)))

(declare-fun b!2574525 () Bool)

(assert (=> b!2574525 (= e!1624513 tp_is_empty!13137)))

(declare-fun b!2574528 () Bool)

(declare-fun tp!818555 () Bool)

(declare-fun tp!818556 () Bool)

(assert (=> b!2574528 (= e!1624513 (and tp!818555 tp!818556))))

(declare-fun b!2574527 () Bool)

(declare-fun tp!818557 () Bool)

(assert (=> b!2574527 (= e!1624513 tp!818557)))

(assert (= (and b!2573165 ((_ is ElementMatch!7641) (regOne!15795 (regTwo!15795 r!27340)))) b!2574525))

(assert (= (and b!2573165 ((_ is Concat!12337) (regOne!15795 (regTwo!15795 r!27340)))) b!2574526))

(assert (= (and b!2573165 ((_ is Star!7641) (regOne!15795 (regTwo!15795 r!27340)))) b!2574527))

(assert (= (and b!2573165 ((_ is Union!7641) (regOne!15795 (regTwo!15795 r!27340)))) b!2574528))

(declare-fun b!2574530 () Bool)

(declare-fun e!1624514 () Bool)

(declare-fun tp!818564 () Bool)

(declare-fun tp!818563 () Bool)

(assert (=> b!2574530 (= e!1624514 (and tp!818564 tp!818563))))

(assert (=> b!2573165 (= tp!818301 e!1624514)))

(declare-fun b!2574529 () Bool)

(assert (=> b!2574529 (= e!1624514 tp_is_empty!13137)))

(declare-fun b!2574532 () Bool)

(declare-fun tp!818560 () Bool)

(declare-fun tp!818561 () Bool)

(assert (=> b!2574532 (= e!1624514 (and tp!818560 tp!818561))))

(declare-fun b!2574531 () Bool)

(declare-fun tp!818562 () Bool)

(assert (=> b!2574531 (= e!1624514 tp!818562)))

(assert (= (and b!2573165 ((_ is ElementMatch!7641) (regTwo!15795 (regTwo!15795 r!27340)))) b!2574529))

(assert (= (and b!2573165 ((_ is Concat!12337) (regTwo!15795 (regTwo!15795 r!27340)))) b!2574530))

(assert (= (and b!2573165 ((_ is Star!7641) (regTwo!15795 (regTwo!15795 r!27340)))) b!2574531))

(assert (= (and b!2573165 ((_ is Union!7641) (regTwo!15795 (regTwo!15795 r!27340)))) b!2574532))

(declare-fun b!2574534 () Bool)

(declare-fun e!1624515 () Bool)

(declare-fun tp!818569 () Bool)

(declare-fun tp!818568 () Bool)

(assert (=> b!2574534 (= e!1624515 (and tp!818569 tp!818568))))

(assert (=> b!2573180 (= tp!818322 e!1624515)))

(declare-fun b!2574533 () Bool)

(assert (=> b!2574533 (= e!1624515 tp_is_empty!13137)))

(declare-fun b!2574536 () Bool)

(declare-fun tp!818565 () Bool)

(declare-fun tp!818566 () Bool)

(assert (=> b!2574536 (= e!1624515 (and tp!818565 tp!818566))))

(declare-fun b!2574535 () Bool)

(declare-fun tp!818567 () Bool)

(assert (=> b!2574535 (= e!1624515 tp!818567)))

(assert (= (and b!2573180 ((_ is ElementMatch!7641) (regOne!15794 (regTwo!15794 r!27340)))) b!2574533))

(assert (= (and b!2573180 ((_ is Concat!12337) (regOne!15794 (regTwo!15794 r!27340)))) b!2574534))

(assert (= (and b!2573180 ((_ is Star!7641) (regOne!15794 (regTwo!15794 r!27340)))) b!2574535))

(assert (= (and b!2573180 ((_ is Union!7641) (regOne!15794 (regTwo!15794 r!27340)))) b!2574536))

(declare-fun b!2574538 () Bool)

(declare-fun e!1624516 () Bool)

(declare-fun tp!818574 () Bool)

(declare-fun tp!818573 () Bool)

(assert (=> b!2574538 (= e!1624516 (and tp!818574 tp!818573))))

(assert (=> b!2573180 (= tp!818321 e!1624516)))

(declare-fun b!2574537 () Bool)

(assert (=> b!2574537 (= e!1624516 tp_is_empty!13137)))

(declare-fun b!2574540 () Bool)

(declare-fun tp!818570 () Bool)

(declare-fun tp!818571 () Bool)

(assert (=> b!2574540 (= e!1624516 (and tp!818570 tp!818571))))

(declare-fun b!2574539 () Bool)

(declare-fun tp!818572 () Bool)

(assert (=> b!2574539 (= e!1624516 tp!818572)))

(assert (= (and b!2573180 ((_ is ElementMatch!7641) (regTwo!15794 (regTwo!15794 r!27340)))) b!2574537))

(assert (= (and b!2573180 ((_ is Concat!12337) (regTwo!15794 (regTwo!15794 r!27340)))) b!2574538))

(assert (= (and b!2573180 ((_ is Star!7641) (regTwo!15794 (regTwo!15794 r!27340)))) b!2574539))

(assert (= (and b!2573180 ((_ is Union!7641) (regTwo!15794 (regTwo!15794 r!27340)))) b!2574540))

(check-sat (not b!2574536) (not b!2574496) (not b!2574491) (not b!2573972) (not bm!166318) (not d!728192) (not bm!166457) (not d!727986) (not bm!166446) (not bm!166354) (not b!2574508) (not bm!166375) (not b!2574512) (not b!2573566) (not b!2574379) (not b!2573591) (not b!2573534) (not b!2574186) (not d!728270) (not bm!166481) (not b!2574523) (not bm!166424) (not d!728294) (not d!728290) (not b!2574302) (not b!2574522) (not b!2574475) (not b!2574490) (not bm!166286) (not b!2574354) (not b!2574141) (not d!728112) (not b!2573541) (not b!2574276) (not b!2574398) (not d!728168) (not b!2573865) (not bm!166357) (not bm!166305) (not b!2573815) (not d!728280) (not b!2574480) (not b!2573859) (not bm!166448) (not b!2574503) (not d!728158) (not b!2574213) (not b!2574454) (not b!2574476) (not bm!166483) (not b!2574180) (not bm!166420) (not b!2574482) (not b!2574124) (not bm!166440) (not b!2574184) (not d!728292) (not b!2573866) (not b!2574524) (not b!2574483) (not b!2574539) (not b!2573740) (not b!2574531) (not bm!166303) (not b!2574250) (not d!728198) (not b!2574309) (not b!2574325) (not b!2574514) (not b!2574471) (not b!2574457) (not b!2574403) (not bm!166378) (not bm!166436) (not bm!166313) (not bm!166299) (not b!2574484) (not b!2574515) (not b!2574012) (not d!728054) (not bm!166269) (not b!2574498) (not b!2574468) (not bm!166460) (not bm!166427) (not b!2573912) (not b!2574446) (not b!2574441) (not d!728234) (not bm!166462) (not bm!166472) (not b!2573589) (not b!2574534) (not b!2573434) (not d!728226) (not b!2574463) (not b!2573908) (not b!2574494) (not d!728166) (not d!728138) (not b!2574445) (not bm!166468) (not b!2573739) (not b!2573658) (not b!2573869) (not b!2574304) (not bm!166479) (not bm!166476) (not b!2574270) (not bm!166374) (not b!2574367) (not bm!166422) (not d!728298) (not b!2573535) (not d!728164) (not b!2573877) (not b!2574502) (not bm!166301) (not b!2574094) (not b!2574500) (not b!2574527) (not b!2574179) (not b!2574507) (not b!2574313) (not b!2574506) (not b!2573544) (not d!728260) (not bm!166466) (not bm!166315) (not b!2574453) (not bm!166437) (not b!2574189) (not d!728230) (not b!2574530) (not b!2573741) (not b!2573659) (not d!728080) (not b!2574450) (not b!2573789) (not b!2574488) (not b!2574327) (not d!728278) (not b!2574151) (not b!2573909) (not b!2574222) (not b!2573592) (not bm!166419) (not b!2573902) (not bm!166384) (not b!2574107) (not bm!166478) (not b!2574385) (not bm!166431) (not bm!166392) (not b!2574344) (not b!2574148) (not bm!166433) (not b!2574411) (not b!2574528) (not b!2574303) (not bm!166366) (not d!728126) (not bm!166262) (not b!2574380) (not b!2573496) (not bm!166355) (not b!2574487) (not bm!166454) (not b!2574504) (not b!2574101) (not bm!166430) (not d!728276) (not b!2573735) (not b!2574332) (not b!2574472) tp_is_empty!13137 (not b!2573860) (not bm!166445) (not bm!166443) (not b!2574394) (not b!2574199) (not b!2574333) (not bm!166356) (not bm!166453) (not b!2574511) (not bm!166380) (not d!728284) (not bm!166293) (not d!728286) (not b!2574393) (not bm!166451) (not b!2574518) (not b!2574389) (not b!2574535) (not b!2574231) (not bm!166425) (not bm!166428) (not bm!166474) (not b!2573533) (not b!2573858) (not bm!166319) (not b!2574516) (not b!2574185) (not b!2574434) (not b!2573742) (not b!2573655) (not b!2574462) (not bm!166418) (not d!728296) (not bm!166405) (not b!2573600) (not b!2574447) (not b!2574331) (not b!2574193) (not b!2574538) (not d!728086) (not b!2574510) (not b!2574455) (not b!2574039) (not d!728174) (not b!2573524) (not d!728150) (not b!2574400) (not bm!166411) (not b!2573814) (not b!2574280) (not d!728238) (not b!2574486) (not d!728212) (not bm!166442) (not d!728216) (not bm!166386) (not b!2574271) (not b!2574499) (not b!2574532) (not b!2573654) (not b!2573819) (not b!2574520) (not b!2574008) (not bm!166439) (not b!2574146) (not b!2574419) (not d!728062) (not b!2573973) (not d!728060) (not d!728304) (not bm!166298) (not b!2574386) (not bm!166450) (not b!2573896) (not b!2574275) (not b!2574449) (not bm!166464) (not b!2574310) (not b!2573816) (not bm!166292) (not b!2574308) (not b!2574142) (not bm!166393) (not bm!166372) (not bm!166270) (not d!728180) (not b!2573810) (not b!2573594) (not d!728274) (not d!728078) (not d!728300) (not b!2573907) (not bm!166263) (not b!2573515) (not b!2574451) (not b!2573628) (not bm!166473) (not b!2574326) (not d!728258) (not b!2574399) (not b!2574373) (not b!2574474) (not b!2574277) (not b!2574288) (not b!2574467) (not d!728160) (not b!2573809) (not b!2574010) (not bm!166370) (not d!728210) (not d!728034) (not b!2574336) (not bm!166311) (not bm!166467) (not b!2573738) (not b!2574492) (not bm!166415) (not b!2574384) (not b!2573539) (not b!2574259) (not b!2574464) (not bm!166382) (not bm!166413) (not d!728186) (not b!2574479) (not d!728136) (not b!2574458) (not b!2573540) (not bm!166295) (not bm!166434) (not bm!166416) (not bm!166310) (not b!2573864) (not bm!166287) (not b!2574466) (not b!2574540) (not d!727988) (not bm!166377) (not bm!166455) (not b!2574459) (not bm!166458) (not b!2574519) (not bm!166470) (not b!2574147) (not bm!166403) (not b!2574013) (not b!2574019) (not b!2574442) (not b!2574443) (not d!728288) (not d!728030) (not d!728236) (not b!2573903) (not bm!166296) (not b!2574461) (not b!2574470) (not b!2573844) (not b!2574526) (not b!2574478) (not b!2574495))
(check-sat)
