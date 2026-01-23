; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246100 () Bool)

(assert start!246100)

(declare-fun b!2526453 () Bool)

(declare-fun e!1599335 () Bool)

(declare-datatypes ((C!15200 0))(
  ( (C!15201 (val!9252 Int)) )
))
(declare-datatypes ((List!29586 0))(
  ( (Nil!29486) (Cons!29486 (h!34906 C!15200) (t!211285 List!29586)) )
))
(declare-fun tl!4068 () List!29586)

(declare-datatypes ((Regex!7521 0))(
  ( (ElementMatch!7521 (c!403337 C!15200)) (Concat!12217 (regOne!15554 Regex!7521) (regTwo!15554 Regex!7521)) (EmptyExpr!7521) (Star!7521 (reg!7850 Regex!7521)) (EmptyLang!7521) (Union!7521 (regOne!15555 Regex!7521) (regTwo!15555 Regex!7521)) )
))
(declare-fun matchR!3508 (Regex!7521 List!29586) Bool)

(assert (=> b!2526453 (= e!1599335 (matchR!3508 EmptyLang!7521 tl!4068))))

(declare-fun b!2526454 () Bool)

(declare-fun res!1067146 () Bool)

(declare-fun e!1599339 () Bool)

(assert (=> b!2526454 (=> (not res!1067146) (not e!1599339))))

(declare-fun r!27340 () Regex!7521)

(get-info :version)

(assert (=> b!2526454 (= res!1067146 (and (not ((_ is EmptyExpr!7521) r!27340)) (not ((_ is EmptyLang!7521) r!27340)) (not ((_ is ElementMatch!7521) r!27340)) (not ((_ is Union!7521) r!27340)) (not ((_ is Star!7521) r!27340))))))

(declare-fun b!2526455 () Bool)

(declare-fun e!1599337 () Bool)

(declare-fun lt!900593 () Regex!7521)

(declare-datatypes ((tuple2!29540 0))(
  ( (tuple2!29541 (_1!17312 List!29586) (_2!17312 List!29586)) )
))
(declare-fun lt!900598 () tuple2!29540)

(assert (=> b!2526455 (= e!1599337 (matchR!3508 lt!900593 (_1!17312 lt!900598)))))

(declare-fun b!2526456 () Bool)

(declare-fun e!1599336 () Bool)

(assert (=> b!2526456 (= e!1599339 (not e!1599336))))

(declare-fun res!1067142 () Bool)

(assert (=> b!2526456 (=> res!1067142 e!1599336)))

(declare-fun lt!900597 () Bool)

(assert (=> b!2526456 (= res!1067142 (not lt!900597))))

(declare-fun derivative!216 (Regex!7521 List!29586) Regex!7521)

(assert (=> b!2526456 (= (derivative!216 EmptyLang!7521 tl!4068) EmptyLang!7521)))

(declare-datatypes ((Unit!43267 0))(
  ( (Unit!43268) )
))
(declare-fun lt!900590 () Unit!43267)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!38 (Regex!7521 List!29586) Unit!43267)

(assert (=> b!2526456 (= lt!900590 (lemmaEmptyLangDerivativeIsAFixPoint!38 EmptyLang!7521 tl!4068))))

(assert (=> b!2526456 e!1599335))

(declare-fun res!1067144 () Bool)

(assert (=> b!2526456 (=> res!1067144 e!1599335)))

(assert (=> b!2526456 (= res!1067144 lt!900597)))

(declare-fun lt!900596 () Regex!7521)

(assert (=> b!2526456 (= lt!900597 (matchR!3508 lt!900596 tl!4068))))

(declare-fun lt!900594 () Unit!43267)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!186 (Regex!7521 Regex!7521 List!29586) Unit!43267)

(assert (=> b!2526456 (= lt!900594 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!186 lt!900596 EmptyLang!7521 tl!4068))))

(declare-fun lt!900589 () Regex!7521)

(assert (=> b!2526456 (= (matchR!3508 lt!900589 tl!4068) (matchR!3508 (derivative!216 lt!900589 tl!4068) Nil!29486))))

(declare-fun lt!900595 () Unit!43267)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!154 (Regex!7521 List!29586) Unit!43267)

(assert (=> b!2526456 (= lt!900595 (lemmaMatchRIsSameAsWholeDerivativeAndNil!154 lt!900589 tl!4068))))

(assert (=> b!2526456 (= lt!900589 (Union!7521 lt!900596 EmptyLang!7521))))

(assert (=> b!2526456 (= lt!900596 (Concat!12217 lt!900593 (regTwo!15554 r!27340)))))

(declare-fun c!14016 () C!15200)

(declare-fun derivativeStep!2090 (Regex!7521 C!15200) Regex!7521)

(assert (=> b!2526456 (= lt!900593 (derivativeStep!2090 (regOne!15554 r!27340) c!14016))))

(declare-fun b!2526457 () Bool)

(declare-fun e!1599340 () Bool)

(declare-fun tp!806762 () Bool)

(declare-fun tp!806761 () Bool)

(assert (=> b!2526457 (= e!1599340 (and tp!806762 tp!806761))))

(declare-fun b!2526458 () Bool)

(declare-fun tp_is_empty!12897 () Bool)

(assert (=> b!2526458 (= e!1599340 tp_is_empty!12897)))

(declare-fun b!2526459 () Bool)

(declare-fun tp!806763 () Bool)

(declare-fun tp!806764 () Bool)

(assert (=> b!2526459 (= e!1599340 (and tp!806763 tp!806764))))

(declare-fun b!2526460 () Bool)

(declare-fun res!1067145 () Bool)

(assert (=> b!2526460 (=> (not res!1067145) (not e!1599339))))

(declare-fun nullable!2438 (Regex!7521) Bool)

(assert (=> b!2526460 (= res!1067145 (not (nullable!2438 (regOne!15554 r!27340))))))

(declare-fun res!1067148 () Bool)

(assert (=> start!246100 (=> (not res!1067148) (not e!1599339))))

(declare-fun validRegex!3147 (Regex!7521) Bool)

(assert (=> start!246100 (= res!1067148 (validRegex!3147 r!27340))))

(assert (=> start!246100 e!1599339))

(assert (=> start!246100 e!1599340))

(assert (=> start!246100 tp_is_empty!12897))

(declare-fun e!1599338 () Bool)

(assert (=> start!246100 e!1599338))

(declare-fun b!2526461 () Bool)

(declare-fun res!1067147 () Bool)

(assert (=> b!2526461 (=> (not res!1067147) (not e!1599339))))

(assert (=> b!2526461 (= res!1067147 (nullable!2438 (derivative!216 (derivativeStep!2090 r!27340 c!14016) tl!4068)))))

(declare-fun b!2526462 () Bool)

(declare-fun tp!806765 () Bool)

(assert (=> b!2526462 (= e!1599338 (and tp_is_empty!12897 tp!806765))))

(declare-fun b!2526463 () Bool)

(assert (=> b!2526463 (= e!1599336 e!1599337)))

(declare-fun res!1067143 () Bool)

(assert (=> b!2526463 (=> res!1067143 e!1599337)))

(declare-fun ++!7240 (List!29586 List!29586) List!29586)

(assert (=> b!2526463 (= res!1067143 (not (= (++!7240 (_1!17312 lt!900598) (_2!17312 lt!900598)) tl!4068)))))

(declare-datatypes ((Option!5890 0))(
  ( (None!5889) (Some!5889 (v!31822 tuple2!29540)) )
))
(declare-fun lt!900592 () Option!5890)

(declare-fun get!9229 (Option!5890) tuple2!29540)

(assert (=> b!2526463 (= lt!900598 (get!9229 lt!900592))))

(declare-fun isDefined!4712 (Option!5890) Bool)

(assert (=> b!2526463 (isDefined!4712 lt!900592)))

(declare-fun findConcatSeparation!912 (Regex!7521 Regex!7521 List!29586 List!29586 List!29586) Option!5890)

(assert (=> b!2526463 (= lt!900592 (findConcatSeparation!912 lt!900593 (regTwo!15554 r!27340) Nil!29486 tl!4068 tl!4068))))

(declare-fun lt!900591 () Unit!43267)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!194 (Regex!7521 Regex!7521 List!29586) Unit!43267)

(assert (=> b!2526463 (= lt!900591 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!194 lt!900593 (regTwo!15554 r!27340) tl!4068))))

(declare-fun b!2526464 () Bool)

(declare-fun tp!806766 () Bool)

(assert (=> b!2526464 (= e!1599340 tp!806766)))

(assert (= (and start!246100 res!1067148) b!2526461))

(assert (= (and b!2526461 res!1067147) b!2526454))

(assert (= (and b!2526454 res!1067146) b!2526460))

(assert (= (and b!2526460 res!1067145) b!2526456))

(assert (= (and b!2526456 (not res!1067144)) b!2526453))

(assert (= (and b!2526456 (not res!1067142)) b!2526463))

(assert (= (and b!2526463 (not res!1067143)) b!2526455))

(assert (= (and start!246100 ((_ is ElementMatch!7521) r!27340)) b!2526458))

(assert (= (and start!246100 ((_ is Concat!12217) r!27340)) b!2526457))

(assert (= (and start!246100 ((_ is Star!7521) r!27340)) b!2526464))

(assert (= (and start!246100 ((_ is Union!7521) r!27340)) b!2526459))

(assert (= (and start!246100 ((_ is Cons!29486) tl!4068)) b!2526462))

(declare-fun m!2879511 () Bool)

(assert (=> start!246100 m!2879511))

(declare-fun m!2879513 () Bool)

(assert (=> b!2526453 m!2879513))

(declare-fun m!2879515 () Bool)

(assert (=> b!2526456 m!2879515))

(declare-fun m!2879517 () Bool)

(assert (=> b!2526456 m!2879517))

(declare-fun m!2879519 () Bool)

(assert (=> b!2526456 m!2879519))

(declare-fun m!2879521 () Bool)

(assert (=> b!2526456 m!2879521))

(declare-fun m!2879523 () Bool)

(assert (=> b!2526456 m!2879523))

(declare-fun m!2879525 () Bool)

(assert (=> b!2526456 m!2879525))

(declare-fun m!2879527 () Bool)

(assert (=> b!2526456 m!2879527))

(declare-fun m!2879529 () Bool)

(assert (=> b!2526456 m!2879529))

(declare-fun m!2879531 () Bool)

(assert (=> b!2526456 m!2879531))

(assert (=> b!2526456 m!2879521))

(declare-fun m!2879533 () Bool)

(assert (=> b!2526461 m!2879533))

(assert (=> b!2526461 m!2879533))

(declare-fun m!2879535 () Bool)

(assert (=> b!2526461 m!2879535))

(assert (=> b!2526461 m!2879535))

(declare-fun m!2879537 () Bool)

(assert (=> b!2526461 m!2879537))

(declare-fun m!2879539 () Bool)

(assert (=> b!2526463 m!2879539))

(declare-fun m!2879541 () Bool)

(assert (=> b!2526463 m!2879541))

(declare-fun m!2879543 () Bool)

(assert (=> b!2526463 m!2879543))

(declare-fun m!2879545 () Bool)

(assert (=> b!2526463 m!2879545))

(declare-fun m!2879547 () Bool)

(assert (=> b!2526463 m!2879547))

(declare-fun m!2879549 () Bool)

(assert (=> b!2526455 m!2879549))

(declare-fun m!2879551 () Bool)

(assert (=> b!2526460 m!2879551))

(check-sat (not b!2526460) tp_is_empty!12897 (not b!2526461) (not b!2526456) (not b!2526453) (not b!2526459) (not b!2526463) (not b!2526462) (not start!246100) (not b!2526457) (not b!2526455) (not b!2526464))
(check-sat)
(get-model)

(declare-fun b!2526519 () Bool)

(declare-fun res!1067170 () Bool)

(declare-fun e!1599373 () Bool)

(assert (=> b!2526519 (=> (not res!1067170) (not e!1599373))))

(declare-fun isEmpty!16961 (List!29586) Bool)

(declare-fun tail!4047 (List!29586) List!29586)

(assert (=> b!2526519 (= res!1067170 (isEmpty!16961 (tail!4047 (_1!17312 lt!900598))))))

(declare-fun b!2526520 () Bool)

(declare-fun e!1599372 () Bool)

(declare-fun lt!900606 () Bool)

(declare-fun call!157902 () Bool)

(assert (=> b!2526520 (= e!1599372 (= lt!900606 call!157902))))

(declare-fun b!2526522 () Bool)

(declare-fun res!1067165 () Bool)

(declare-fun e!1599369 () Bool)

(assert (=> b!2526522 (=> res!1067165 e!1599369)))

(assert (=> b!2526522 (= res!1067165 e!1599373)))

(declare-fun res!1067172 () Bool)

(assert (=> b!2526522 (=> (not res!1067172) (not e!1599373))))

(assert (=> b!2526522 (= res!1067172 lt!900606)))

(declare-fun b!2526523 () Bool)

(declare-fun e!1599371 () Bool)

(assert (=> b!2526523 (= e!1599371 (not lt!900606))))

(declare-fun bm!157897 () Bool)

(assert (=> bm!157897 (= call!157902 (isEmpty!16961 (_1!17312 lt!900598)))))

(declare-fun b!2526524 () Bool)

(declare-fun e!1599368 () Bool)

(declare-fun head!5770 (List!29586) C!15200)

(assert (=> b!2526524 (= e!1599368 (matchR!3508 (derivativeStep!2090 lt!900593 (head!5770 (_1!17312 lt!900598))) (tail!4047 (_1!17312 lt!900598))))))

(declare-fun b!2526525 () Bool)

(assert (=> b!2526525 (= e!1599368 (nullable!2438 lt!900593))))

(declare-fun b!2526526 () Bool)

(declare-fun res!1067169 () Bool)

(declare-fun e!1599374 () Bool)

(assert (=> b!2526526 (=> res!1067169 e!1599374)))

(assert (=> b!2526526 (= res!1067169 (not (isEmpty!16961 (tail!4047 (_1!17312 lt!900598)))))))

(declare-fun b!2526527 () Bool)

(assert (=> b!2526527 (= e!1599372 e!1599371)))

(declare-fun c!403357 () Bool)

(assert (=> b!2526527 (= c!403357 ((_ is EmptyLang!7521) lt!900593))))

(declare-fun d!719092 () Bool)

(assert (=> d!719092 e!1599372))

(declare-fun c!403359 () Bool)

(assert (=> d!719092 (= c!403359 ((_ is EmptyExpr!7521) lt!900593))))

(assert (=> d!719092 (= lt!900606 e!1599368)))

(declare-fun c!403358 () Bool)

(assert (=> d!719092 (= c!403358 (isEmpty!16961 (_1!17312 lt!900598)))))

(assert (=> d!719092 (validRegex!3147 lt!900593)))

(assert (=> d!719092 (= (matchR!3508 lt!900593 (_1!17312 lt!900598)) lt!900606)))

(declare-fun b!2526521 () Bool)

(assert (=> b!2526521 (= e!1599374 (not (= (head!5770 (_1!17312 lt!900598)) (c!403337 lt!900593))))))

(declare-fun b!2526528 () Bool)

(declare-fun res!1067167 () Bool)

(assert (=> b!2526528 (=> (not res!1067167) (not e!1599373))))

(assert (=> b!2526528 (= res!1067167 (not call!157902))))

(declare-fun b!2526529 () Bool)

(declare-fun e!1599370 () Bool)

(assert (=> b!2526529 (= e!1599369 e!1599370)))

(declare-fun res!1067171 () Bool)

(assert (=> b!2526529 (=> (not res!1067171) (not e!1599370))))

(assert (=> b!2526529 (= res!1067171 (not lt!900606))))

(declare-fun b!2526530 () Bool)

(assert (=> b!2526530 (= e!1599370 e!1599374)))

(declare-fun res!1067168 () Bool)

(assert (=> b!2526530 (=> res!1067168 e!1599374)))

(assert (=> b!2526530 (= res!1067168 call!157902)))

(declare-fun b!2526531 () Bool)

(assert (=> b!2526531 (= e!1599373 (= (head!5770 (_1!17312 lt!900598)) (c!403337 lt!900593)))))

(declare-fun b!2526532 () Bool)

(declare-fun res!1067166 () Bool)

(assert (=> b!2526532 (=> res!1067166 e!1599369)))

(assert (=> b!2526532 (= res!1067166 (not ((_ is ElementMatch!7521) lt!900593)))))

(assert (=> b!2526532 (= e!1599371 e!1599369)))

(assert (= (and d!719092 c!403358) b!2526525))

(assert (= (and d!719092 (not c!403358)) b!2526524))

(assert (= (and d!719092 c!403359) b!2526520))

(assert (= (and d!719092 (not c!403359)) b!2526527))

(assert (= (and b!2526527 c!403357) b!2526523))

(assert (= (and b!2526527 (not c!403357)) b!2526532))

(assert (= (and b!2526532 (not res!1067166)) b!2526522))

(assert (= (and b!2526522 res!1067172) b!2526528))

(assert (= (and b!2526528 res!1067167) b!2526519))

(assert (= (and b!2526519 res!1067170) b!2526531))

(assert (= (and b!2526522 (not res!1067165)) b!2526529))

(assert (= (and b!2526529 res!1067171) b!2526530))

(assert (= (and b!2526530 (not res!1067168)) b!2526526))

(assert (= (and b!2526526 (not res!1067169)) b!2526521))

(assert (= (or b!2526520 b!2526528 b!2526530) bm!157897))

(declare-fun m!2879565 () Bool)

(assert (=> b!2526519 m!2879565))

(assert (=> b!2526519 m!2879565))

(declare-fun m!2879567 () Bool)

(assert (=> b!2526519 m!2879567))

(declare-fun m!2879569 () Bool)

(assert (=> d!719092 m!2879569))

(declare-fun m!2879571 () Bool)

(assert (=> d!719092 m!2879571))

(declare-fun m!2879573 () Bool)

(assert (=> b!2526524 m!2879573))

(assert (=> b!2526524 m!2879573))

(declare-fun m!2879575 () Bool)

(assert (=> b!2526524 m!2879575))

(assert (=> b!2526524 m!2879565))

(assert (=> b!2526524 m!2879575))

(assert (=> b!2526524 m!2879565))

(declare-fun m!2879577 () Bool)

(assert (=> b!2526524 m!2879577))

(assert (=> b!2526531 m!2879573))

(assert (=> bm!157897 m!2879569))

(assert (=> b!2526526 m!2879565))

(assert (=> b!2526526 m!2879565))

(assert (=> b!2526526 m!2879567))

(assert (=> b!2526521 m!2879573))

(declare-fun m!2879579 () Bool)

(assert (=> b!2526525 m!2879579))

(assert (=> b!2526455 d!719092))

(declare-fun d!719100 () Bool)

(declare-fun nullableFct!679 (Regex!7521) Bool)

(assert (=> d!719100 (= (nullable!2438 (regOne!15554 r!27340)) (nullableFct!679 (regOne!15554 r!27340)))))

(declare-fun bs!469108 () Bool)

(assert (= bs!469108 d!719100))

(declare-fun m!2879581 () Bool)

(assert (=> bs!469108 m!2879581))

(assert (=> b!2526460 d!719100))

(declare-fun b!2526571 () Bool)

(declare-fun e!1599405 () Bool)

(declare-fun e!1599399 () Bool)

(assert (=> b!2526571 (= e!1599405 e!1599399)))

(declare-fun res!1067186 () Bool)

(assert (=> b!2526571 (= res!1067186 (not (nullable!2438 (reg!7850 r!27340))))))

(assert (=> b!2526571 (=> (not res!1067186) (not e!1599399))))

(declare-fun b!2526572 () Bool)

(declare-fun e!1599402 () Bool)

(declare-fun call!157918 () Bool)

(assert (=> b!2526572 (= e!1599402 call!157918)))

(declare-fun b!2526573 () Bool)

(declare-fun call!157919 () Bool)

(assert (=> b!2526573 (= e!1599399 call!157919)))

(declare-fun b!2526574 () Bool)

(declare-fun e!1599403 () Bool)

(assert (=> b!2526574 (= e!1599403 e!1599402)))

(declare-fun res!1067183 () Bool)

(assert (=> b!2526574 (=> (not res!1067183) (not e!1599402))))

(declare-fun call!157917 () Bool)

(assert (=> b!2526574 (= res!1067183 call!157917)))

(declare-fun b!2526575 () Bool)

(declare-fun e!1599400 () Bool)

(assert (=> b!2526575 (= e!1599400 call!157917)))

(declare-fun b!2526576 () Bool)

(declare-fun res!1067187 () Bool)

(assert (=> b!2526576 (=> res!1067187 e!1599403)))

(assert (=> b!2526576 (= res!1067187 (not ((_ is Concat!12217) r!27340)))))

(declare-fun e!1599404 () Bool)

(assert (=> b!2526576 (= e!1599404 e!1599403)))

(declare-fun bm!157913 () Bool)

(declare-fun c!403374 () Bool)

(declare-fun c!403375 () Bool)

(assert (=> bm!157913 (= call!157919 (validRegex!3147 (ite c!403375 (reg!7850 r!27340) (ite c!403374 (regOne!15555 r!27340) (regTwo!15554 r!27340)))))))

(declare-fun b!2526577 () Bool)

(declare-fun e!1599401 () Bool)

(assert (=> b!2526577 (= e!1599401 e!1599405)))

(assert (=> b!2526577 (= c!403375 ((_ is Star!7521) r!27340))))

(declare-fun bm!157914 () Bool)

(assert (=> bm!157914 (= call!157917 (validRegex!3147 (ite c!403374 (regTwo!15555 r!27340) (regOne!15554 r!27340))))))

(declare-fun b!2526578 () Bool)

(declare-fun res!1067184 () Bool)

(assert (=> b!2526578 (=> (not res!1067184) (not e!1599400))))

(assert (=> b!2526578 (= res!1067184 call!157918)))

(assert (=> b!2526578 (= e!1599404 e!1599400)))

(declare-fun b!2526579 () Bool)

(assert (=> b!2526579 (= e!1599405 e!1599404)))

(assert (=> b!2526579 (= c!403374 ((_ is Union!7521) r!27340))))

(declare-fun bm!157912 () Bool)

(assert (=> bm!157912 (= call!157918 call!157919)))

(declare-fun d!719102 () Bool)

(declare-fun res!1067185 () Bool)

(assert (=> d!719102 (=> res!1067185 e!1599401)))

(assert (=> d!719102 (= res!1067185 ((_ is ElementMatch!7521) r!27340))))

(assert (=> d!719102 (= (validRegex!3147 r!27340) e!1599401)))

(assert (= (and d!719102 (not res!1067185)) b!2526577))

(assert (= (and b!2526577 c!403375) b!2526571))

(assert (= (and b!2526577 (not c!403375)) b!2526579))

(assert (= (and b!2526571 res!1067186) b!2526573))

(assert (= (and b!2526579 c!403374) b!2526578))

(assert (= (and b!2526579 (not c!403374)) b!2526576))

(assert (= (and b!2526578 res!1067184) b!2526575))

(assert (= (and b!2526576 (not res!1067187)) b!2526574))

(assert (= (and b!2526574 res!1067183) b!2526572))

(assert (= (or b!2526578 b!2526572) bm!157912))

(assert (= (or b!2526575 b!2526574) bm!157914))

(assert (= (or b!2526573 bm!157912) bm!157913))

(declare-fun m!2879599 () Bool)

(assert (=> b!2526571 m!2879599))

(declare-fun m!2879601 () Bool)

(assert (=> bm!157913 m!2879601))

(declare-fun m!2879603 () Bool)

(assert (=> bm!157914 m!2879603))

(assert (=> start!246100 d!719102))

(declare-fun d!719108 () Bool)

(assert (=> d!719108 (= (nullable!2438 (derivative!216 (derivativeStep!2090 r!27340 c!14016) tl!4068)) (nullableFct!679 (derivative!216 (derivativeStep!2090 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469109 () Bool)

(assert (= bs!469109 d!719108))

(assert (=> bs!469109 m!2879535))

(declare-fun m!2879605 () Bool)

(assert (=> bs!469109 m!2879605))

(assert (=> b!2526461 d!719108))

(declare-fun d!719110 () Bool)

(declare-fun lt!900613 () Regex!7521)

(assert (=> d!719110 (validRegex!3147 lt!900613)))

(declare-fun e!1599422 () Regex!7521)

(assert (=> d!719110 (= lt!900613 e!1599422)))

(declare-fun c!403384 () Bool)

(assert (=> d!719110 (= c!403384 ((_ is Cons!29486) tl!4068))))

(assert (=> d!719110 (validRegex!3147 (derivativeStep!2090 r!27340 c!14016))))

(assert (=> d!719110 (= (derivative!216 (derivativeStep!2090 r!27340 c!14016) tl!4068) lt!900613)))

(declare-fun b!2526612 () Bool)

(assert (=> b!2526612 (= e!1599422 (derivative!216 (derivativeStep!2090 (derivativeStep!2090 r!27340 c!14016) (h!34906 tl!4068)) (t!211285 tl!4068)))))

(declare-fun b!2526613 () Bool)

(assert (=> b!2526613 (= e!1599422 (derivativeStep!2090 r!27340 c!14016))))

(assert (= (and d!719110 c!403384) b!2526612))

(assert (= (and d!719110 (not c!403384)) b!2526613))

(declare-fun m!2879607 () Bool)

(assert (=> d!719110 m!2879607))

(assert (=> d!719110 m!2879533))

(declare-fun m!2879609 () Bool)

(assert (=> d!719110 m!2879609))

(assert (=> b!2526612 m!2879533))

(declare-fun m!2879611 () Bool)

(assert (=> b!2526612 m!2879611))

(assert (=> b!2526612 m!2879611))

(declare-fun m!2879613 () Bool)

(assert (=> b!2526612 m!2879613))

(assert (=> b!2526461 d!719110))

(declare-fun b!2526670 () Bool)

(declare-fun e!1599456 () Regex!7521)

(declare-fun e!1599454 () Regex!7521)

(assert (=> b!2526670 (= e!1599456 e!1599454)))

(declare-fun c!403405 () Bool)

(assert (=> b!2526670 (= c!403405 ((_ is Star!7521) r!27340))))

(declare-fun call!157933 () Regex!7521)

(declare-fun bm!157928 () Bool)

(declare-fun c!403402 () Bool)

(assert (=> bm!157928 (= call!157933 (derivativeStep!2090 (ite c!403402 (regTwo!15555 r!27340) (regTwo!15554 r!27340)) c!14016))))

(declare-fun b!2526671 () Bool)

(declare-fun e!1599458 () Regex!7521)

(assert (=> b!2526671 (= e!1599458 EmptyLang!7521)))

(declare-fun b!2526672 () Bool)

(declare-fun call!157934 () Regex!7521)

(assert (=> b!2526672 (= e!1599454 (Concat!12217 call!157934 r!27340))))

(declare-fun b!2526673 () Bool)

(declare-fun e!1599455 () Regex!7521)

(assert (=> b!2526673 (= e!1599458 e!1599455)))

(declare-fun c!403403 () Bool)

(assert (=> b!2526673 (= c!403403 ((_ is ElementMatch!7521) r!27340))))

(declare-fun b!2526674 () Bool)

(declare-fun c!403404 () Bool)

(assert (=> b!2526674 (= c!403404 (nullable!2438 (regOne!15554 r!27340)))))

(declare-fun e!1599457 () Regex!7521)

(assert (=> b!2526674 (= e!1599454 e!1599457)))

(declare-fun bm!157929 () Bool)

(declare-fun call!157932 () Regex!7521)

(assert (=> bm!157929 (= call!157932 (derivativeStep!2090 (ite c!403402 (regOne!15555 r!27340) (ite c!403405 (reg!7850 r!27340) (regOne!15554 r!27340))) c!14016))))

(declare-fun b!2526675 () Bool)

(assert (=> b!2526675 (= c!403402 ((_ is Union!7521) r!27340))))

(assert (=> b!2526675 (= e!1599455 e!1599456)))

(declare-fun b!2526676 () Bool)

(assert (=> b!2526676 (= e!1599456 (Union!7521 call!157932 call!157933))))

(declare-fun bm!157930 () Bool)

(assert (=> bm!157930 (= call!157934 call!157932)))

(declare-fun d!719112 () Bool)

(declare-fun lt!900625 () Regex!7521)

(assert (=> d!719112 (validRegex!3147 lt!900625)))

(assert (=> d!719112 (= lt!900625 e!1599458)))

(declare-fun c!403406 () Bool)

(assert (=> d!719112 (= c!403406 (or ((_ is EmptyExpr!7521) r!27340) ((_ is EmptyLang!7521) r!27340)))))

(assert (=> d!719112 (validRegex!3147 r!27340)))

(assert (=> d!719112 (= (derivativeStep!2090 r!27340 c!14016) lt!900625)))

(declare-fun bm!157927 () Bool)

(declare-fun call!157935 () Regex!7521)

(assert (=> bm!157927 (= call!157935 call!157934)))

(declare-fun b!2526677 () Bool)

(assert (=> b!2526677 (= e!1599457 (Union!7521 (Concat!12217 call!157935 (regTwo!15554 r!27340)) EmptyLang!7521))))

(declare-fun b!2526678 () Bool)

(assert (=> b!2526678 (= e!1599457 (Union!7521 (Concat!12217 call!157935 (regTwo!15554 r!27340)) call!157933))))

(declare-fun b!2526679 () Bool)

(assert (=> b!2526679 (= e!1599455 (ite (= c!14016 (c!403337 r!27340)) EmptyExpr!7521 EmptyLang!7521))))

(assert (= (and d!719112 c!403406) b!2526671))

(assert (= (and d!719112 (not c!403406)) b!2526673))

(assert (= (and b!2526673 c!403403) b!2526679))

(assert (= (and b!2526673 (not c!403403)) b!2526675))

(assert (= (and b!2526675 c!403402) b!2526676))

(assert (= (and b!2526675 (not c!403402)) b!2526670))

(assert (= (and b!2526670 c!403405) b!2526672))

(assert (= (and b!2526670 (not c!403405)) b!2526674))

(assert (= (and b!2526674 c!403404) b!2526678))

(assert (= (and b!2526674 (not c!403404)) b!2526677))

(assert (= (or b!2526678 b!2526677) bm!157927))

(assert (= (or b!2526672 bm!157927) bm!157930))

(assert (= (or b!2526676 b!2526678) bm!157928))

(assert (= (or b!2526676 bm!157930) bm!157929))

(declare-fun m!2879661 () Bool)

(assert (=> bm!157928 m!2879661))

(assert (=> b!2526674 m!2879551))

(declare-fun m!2879663 () Bool)

(assert (=> bm!157929 m!2879663))

(declare-fun m!2879665 () Bool)

(assert (=> d!719112 m!2879665))

(assert (=> d!719112 m!2879511))

(assert (=> b!2526461 d!719112))

(declare-fun b!2526680 () Bool)

(declare-fun e!1599461 () Regex!7521)

(declare-fun e!1599459 () Regex!7521)

(assert (=> b!2526680 (= e!1599461 e!1599459)))

(declare-fun c!403410 () Bool)

(assert (=> b!2526680 (= c!403410 ((_ is Star!7521) (regOne!15554 r!27340)))))

(declare-fun bm!157932 () Bool)

(declare-fun c!403407 () Bool)

(declare-fun call!157937 () Regex!7521)

(assert (=> bm!157932 (= call!157937 (derivativeStep!2090 (ite c!403407 (regTwo!15555 (regOne!15554 r!27340)) (regTwo!15554 (regOne!15554 r!27340))) c!14016))))

(declare-fun b!2526681 () Bool)

(declare-fun e!1599463 () Regex!7521)

(assert (=> b!2526681 (= e!1599463 EmptyLang!7521)))

(declare-fun b!2526682 () Bool)

(declare-fun call!157938 () Regex!7521)

(assert (=> b!2526682 (= e!1599459 (Concat!12217 call!157938 (regOne!15554 r!27340)))))

(declare-fun b!2526683 () Bool)

(declare-fun e!1599460 () Regex!7521)

(assert (=> b!2526683 (= e!1599463 e!1599460)))

(declare-fun c!403408 () Bool)

(assert (=> b!2526683 (= c!403408 ((_ is ElementMatch!7521) (regOne!15554 r!27340)))))

(declare-fun b!2526684 () Bool)

(declare-fun c!403409 () Bool)

(assert (=> b!2526684 (= c!403409 (nullable!2438 (regOne!15554 (regOne!15554 r!27340))))))

(declare-fun e!1599462 () Regex!7521)

(assert (=> b!2526684 (= e!1599459 e!1599462)))

(declare-fun call!157936 () Regex!7521)

(declare-fun bm!157933 () Bool)

(assert (=> bm!157933 (= call!157936 (derivativeStep!2090 (ite c!403407 (regOne!15555 (regOne!15554 r!27340)) (ite c!403410 (reg!7850 (regOne!15554 r!27340)) (regOne!15554 (regOne!15554 r!27340)))) c!14016))))

(declare-fun b!2526685 () Bool)

(assert (=> b!2526685 (= c!403407 ((_ is Union!7521) (regOne!15554 r!27340)))))

(assert (=> b!2526685 (= e!1599460 e!1599461)))

(declare-fun b!2526686 () Bool)

(assert (=> b!2526686 (= e!1599461 (Union!7521 call!157936 call!157937))))

(declare-fun bm!157934 () Bool)

(assert (=> bm!157934 (= call!157938 call!157936)))

(declare-fun d!719124 () Bool)

(declare-fun lt!900628 () Regex!7521)

(assert (=> d!719124 (validRegex!3147 lt!900628)))

(assert (=> d!719124 (= lt!900628 e!1599463)))

(declare-fun c!403411 () Bool)

(assert (=> d!719124 (= c!403411 (or ((_ is EmptyExpr!7521) (regOne!15554 r!27340)) ((_ is EmptyLang!7521) (regOne!15554 r!27340))))))

(assert (=> d!719124 (validRegex!3147 (regOne!15554 r!27340))))

(assert (=> d!719124 (= (derivativeStep!2090 (regOne!15554 r!27340) c!14016) lt!900628)))

(declare-fun bm!157931 () Bool)

(declare-fun call!157939 () Regex!7521)

(assert (=> bm!157931 (= call!157939 call!157938)))

(declare-fun b!2526687 () Bool)

(assert (=> b!2526687 (= e!1599462 (Union!7521 (Concat!12217 call!157939 (regTwo!15554 (regOne!15554 r!27340))) EmptyLang!7521))))

(declare-fun b!2526688 () Bool)

(assert (=> b!2526688 (= e!1599462 (Union!7521 (Concat!12217 call!157939 (regTwo!15554 (regOne!15554 r!27340))) call!157937))))

(declare-fun b!2526689 () Bool)

(assert (=> b!2526689 (= e!1599460 (ite (= c!14016 (c!403337 (regOne!15554 r!27340))) EmptyExpr!7521 EmptyLang!7521))))

(assert (= (and d!719124 c!403411) b!2526681))

(assert (= (and d!719124 (not c!403411)) b!2526683))

(assert (= (and b!2526683 c!403408) b!2526689))

(assert (= (and b!2526683 (not c!403408)) b!2526685))

(assert (= (and b!2526685 c!403407) b!2526686))

(assert (= (and b!2526685 (not c!403407)) b!2526680))

(assert (= (and b!2526680 c!403410) b!2526682))

(assert (= (and b!2526680 (not c!403410)) b!2526684))

(assert (= (and b!2526684 c!403409) b!2526688))

(assert (= (and b!2526684 (not c!403409)) b!2526687))

(assert (= (or b!2526688 b!2526687) bm!157931))

(assert (= (or b!2526682 bm!157931) bm!157934))

(assert (= (or b!2526686 b!2526688) bm!157932))

(assert (= (or b!2526686 bm!157934) bm!157933))

(declare-fun m!2879669 () Bool)

(assert (=> bm!157932 m!2879669))

(declare-fun m!2879671 () Bool)

(assert (=> b!2526684 m!2879671))

(declare-fun m!2879673 () Bool)

(assert (=> bm!157933 m!2879673))

(declare-fun m!2879675 () Bool)

(assert (=> d!719124 m!2879675))

(declare-fun m!2879677 () Bool)

(assert (=> d!719124 m!2879677))

(assert (=> b!2526456 d!719124))

(declare-fun d!719128 () Bool)

(declare-fun lt!900631 () Regex!7521)

(assert (=> d!719128 (validRegex!3147 lt!900631)))

(declare-fun e!1599471 () Regex!7521)

(assert (=> d!719128 (= lt!900631 e!1599471)))

(declare-fun c!403415 () Bool)

(assert (=> d!719128 (= c!403415 ((_ is Cons!29486) tl!4068))))

(assert (=> d!719128 (validRegex!3147 EmptyLang!7521)))

(assert (=> d!719128 (= (derivative!216 EmptyLang!7521 tl!4068) lt!900631)))

(declare-fun b!2526704 () Bool)

(assert (=> b!2526704 (= e!1599471 (derivative!216 (derivativeStep!2090 EmptyLang!7521 (h!34906 tl!4068)) (t!211285 tl!4068)))))

(declare-fun b!2526705 () Bool)

(assert (=> b!2526705 (= e!1599471 EmptyLang!7521)))

(assert (= (and d!719128 c!403415) b!2526704))

(assert (= (and d!719128 (not c!403415)) b!2526705))

(declare-fun m!2879679 () Bool)

(assert (=> d!719128 m!2879679))

(declare-fun m!2879681 () Bool)

(assert (=> d!719128 m!2879681))

(declare-fun m!2879683 () Bool)

(assert (=> b!2526704 m!2879683))

(assert (=> b!2526704 m!2879683))

(declare-fun m!2879685 () Bool)

(assert (=> b!2526704 m!2879685))

(assert (=> b!2526456 d!719128))

(declare-fun b!2526706 () Bool)

(declare-fun res!1067239 () Bool)

(declare-fun e!1599477 () Bool)

(assert (=> b!2526706 (=> (not res!1067239) (not e!1599477))))

(assert (=> b!2526706 (= res!1067239 (isEmpty!16961 (tail!4047 tl!4068)))))

(declare-fun b!2526707 () Bool)

(declare-fun e!1599476 () Bool)

(declare-fun lt!900632 () Bool)

(declare-fun call!157941 () Bool)

(assert (=> b!2526707 (= e!1599476 (= lt!900632 call!157941))))

(declare-fun b!2526709 () Bool)

(declare-fun res!1067234 () Bool)

(declare-fun e!1599473 () Bool)

(assert (=> b!2526709 (=> res!1067234 e!1599473)))

(assert (=> b!2526709 (= res!1067234 e!1599477)))

(declare-fun res!1067241 () Bool)

(assert (=> b!2526709 (=> (not res!1067241) (not e!1599477))))

(assert (=> b!2526709 (= res!1067241 lt!900632)))

(declare-fun b!2526710 () Bool)

(declare-fun e!1599475 () Bool)

(assert (=> b!2526710 (= e!1599475 (not lt!900632))))

(declare-fun bm!157936 () Bool)

(assert (=> bm!157936 (= call!157941 (isEmpty!16961 tl!4068))))

(declare-fun b!2526711 () Bool)

(declare-fun e!1599472 () Bool)

(assert (=> b!2526711 (= e!1599472 (matchR!3508 (derivativeStep!2090 lt!900589 (head!5770 tl!4068)) (tail!4047 tl!4068)))))

(declare-fun b!2526712 () Bool)

(assert (=> b!2526712 (= e!1599472 (nullable!2438 lt!900589))))

(declare-fun b!2526713 () Bool)

(declare-fun res!1067238 () Bool)

(declare-fun e!1599478 () Bool)

(assert (=> b!2526713 (=> res!1067238 e!1599478)))

(assert (=> b!2526713 (= res!1067238 (not (isEmpty!16961 (tail!4047 tl!4068))))))

(declare-fun b!2526714 () Bool)

(assert (=> b!2526714 (= e!1599476 e!1599475)))

(declare-fun c!403416 () Bool)

(assert (=> b!2526714 (= c!403416 ((_ is EmptyLang!7521) lt!900589))))

(declare-fun d!719130 () Bool)

(assert (=> d!719130 e!1599476))

(declare-fun c!403418 () Bool)

(assert (=> d!719130 (= c!403418 ((_ is EmptyExpr!7521) lt!900589))))

(assert (=> d!719130 (= lt!900632 e!1599472)))

(declare-fun c!403417 () Bool)

(assert (=> d!719130 (= c!403417 (isEmpty!16961 tl!4068))))

(assert (=> d!719130 (validRegex!3147 lt!900589)))

(assert (=> d!719130 (= (matchR!3508 lt!900589 tl!4068) lt!900632)))

(declare-fun b!2526708 () Bool)

(assert (=> b!2526708 (= e!1599478 (not (= (head!5770 tl!4068) (c!403337 lt!900589))))))

(declare-fun b!2526715 () Bool)

(declare-fun res!1067236 () Bool)

(assert (=> b!2526715 (=> (not res!1067236) (not e!1599477))))

(assert (=> b!2526715 (= res!1067236 (not call!157941))))

(declare-fun b!2526716 () Bool)

(declare-fun e!1599474 () Bool)

(assert (=> b!2526716 (= e!1599473 e!1599474)))

(declare-fun res!1067240 () Bool)

(assert (=> b!2526716 (=> (not res!1067240) (not e!1599474))))

(assert (=> b!2526716 (= res!1067240 (not lt!900632))))

(declare-fun b!2526717 () Bool)

(assert (=> b!2526717 (= e!1599474 e!1599478)))

(declare-fun res!1067237 () Bool)

(assert (=> b!2526717 (=> res!1067237 e!1599478)))

(assert (=> b!2526717 (= res!1067237 call!157941)))

(declare-fun b!2526718 () Bool)

(assert (=> b!2526718 (= e!1599477 (= (head!5770 tl!4068) (c!403337 lt!900589)))))

(declare-fun b!2526719 () Bool)

(declare-fun res!1067235 () Bool)

(assert (=> b!2526719 (=> res!1067235 e!1599473)))

(assert (=> b!2526719 (= res!1067235 (not ((_ is ElementMatch!7521) lt!900589)))))

(assert (=> b!2526719 (= e!1599475 e!1599473)))

(assert (= (and d!719130 c!403417) b!2526712))

(assert (= (and d!719130 (not c!403417)) b!2526711))

(assert (= (and d!719130 c!403418) b!2526707))

(assert (= (and d!719130 (not c!403418)) b!2526714))

(assert (= (and b!2526714 c!403416) b!2526710))

(assert (= (and b!2526714 (not c!403416)) b!2526719))

(assert (= (and b!2526719 (not res!1067235)) b!2526709))

(assert (= (and b!2526709 res!1067241) b!2526715))

(assert (= (and b!2526715 res!1067236) b!2526706))

(assert (= (and b!2526706 res!1067239) b!2526718))

(assert (= (and b!2526709 (not res!1067234)) b!2526716))

(assert (= (and b!2526716 res!1067240) b!2526717))

(assert (= (and b!2526717 (not res!1067237)) b!2526713))

(assert (= (and b!2526713 (not res!1067238)) b!2526708))

(assert (= (or b!2526707 b!2526715 b!2526717) bm!157936))

(declare-fun m!2879699 () Bool)

(assert (=> b!2526706 m!2879699))

(assert (=> b!2526706 m!2879699))

(declare-fun m!2879701 () Bool)

(assert (=> b!2526706 m!2879701))

(declare-fun m!2879703 () Bool)

(assert (=> d!719130 m!2879703))

(declare-fun m!2879705 () Bool)

(assert (=> d!719130 m!2879705))

(declare-fun m!2879707 () Bool)

(assert (=> b!2526711 m!2879707))

(assert (=> b!2526711 m!2879707))

(declare-fun m!2879709 () Bool)

(assert (=> b!2526711 m!2879709))

(assert (=> b!2526711 m!2879699))

(assert (=> b!2526711 m!2879709))

(assert (=> b!2526711 m!2879699))

(declare-fun m!2879711 () Bool)

(assert (=> b!2526711 m!2879711))

(assert (=> b!2526718 m!2879707))

(assert (=> bm!157936 m!2879703))

(assert (=> b!2526713 m!2879699))

(assert (=> b!2526713 m!2879699))

(assert (=> b!2526713 m!2879701))

(assert (=> b!2526708 m!2879707))

(declare-fun m!2879713 () Bool)

(assert (=> b!2526712 m!2879713))

(assert (=> b!2526456 d!719130))

(declare-fun d!719136 () Bool)

(declare-fun lt!900634 () Regex!7521)

(assert (=> d!719136 (validRegex!3147 lt!900634)))

(declare-fun e!1599480 () Regex!7521)

(assert (=> d!719136 (= lt!900634 e!1599480)))

(declare-fun c!403420 () Bool)

(assert (=> d!719136 (= c!403420 ((_ is Cons!29486) tl!4068))))

(assert (=> d!719136 (validRegex!3147 lt!900589)))

(assert (=> d!719136 (= (derivative!216 lt!900589 tl!4068) lt!900634)))

(declare-fun b!2526722 () Bool)

(assert (=> b!2526722 (= e!1599480 (derivative!216 (derivativeStep!2090 lt!900589 (h!34906 tl!4068)) (t!211285 tl!4068)))))

(declare-fun b!2526723 () Bool)

(assert (=> b!2526723 (= e!1599480 lt!900589)))

(assert (= (and d!719136 c!403420) b!2526722))

(assert (= (and d!719136 (not c!403420)) b!2526723))

(declare-fun m!2879715 () Bool)

(assert (=> d!719136 m!2879715))

(assert (=> d!719136 m!2879705))

(declare-fun m!2879717 () Bool)

(assert (=> b!2526722 m!2879717))

(assert (=> b!2526722 m!2879717))

(declare-fun m!2879719 () Bool)

(assert (=> b!2526722 m!2879719))

(assert (=> b!2526456 d!719136))

(declare-fun d!719138 () Bool)

(declare-fun e!1599500 () Bool)

(assert (=> d!719138 e!1599500))

(declare-fun res!1067257 () Bool)

(assert (=> d!719138 (=> res!1067257 e!1599500)))

(assert (=> d!719138 (= res!1067257 (matchR!3508 lt!900596 tl!4068))))

(declare-fun lt!900637 () Unit!43267)

(declare-fun choose!14982 (Regex!7521 Regex!7521 List!29586) Unit!43267)

(assert (=> d!719138 (= lt!900637 (choose!14982 lt!900596 EmptyLang!7521 tl!4068))))

(declare-fun e!1599499 () Bool)

(assert (=> d!719138 e!1599499))

(declare-fun res!1067256 () Bool)

(assert (=> d!719138 (=> (not res!1067256) (not e!1599499))))

(assert (=> d!719138 (= res!1067256 (validRegex!3147 lt!900596))))

(assert (=> d!719138 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!186 lt!900596 EmptyLang!7521 tl!4068) lt!900637)))

(declare-fun b!2526746 () Bool)

(assert (=> b!2526746 (= e!1599499 (validRegex!3147 EmptyLang!7521))))

(declare-fun b!2526747 () Bool)

(assert (=> b!2526747 (= e!1599500 (matchR!3508 EmptyLang!7521 tl!4068))))

(assert (= (and d!719138 res!1067256) b!2526746))

(assert (= (and d!719138 (not res!1067257)) b!2526747))

(assert (=> d!719138 m!2879529))

(declare-fun m!2879721 () Bool)

(assert (=> d!719138 m!2879721))

(declare-fun m!2879723 () Bool)

(assert (=> d!719138 m!2879723))

(assert (=> b!2526746 m!2879681))

(assert (=> b!2526747 m!2879513))

(assert (=> b!2526456 d!719138))

(declare-fun b!2526757 () Bool)

(declare-fun res!1067268 () Bool)

(declare-fun e!1599513 () Bool)

(assert (=> b!2526757 (=> (not res!1067268) (not e!1599513))))

(assert (=> b!2526757 (= res!1067268 (isEmpty!16961 (tail!4047 Nil!29486)))))

(declare-fun b!2526758 () Bool)

(declare-fun e!1599512 () Bool)

(declare-fun lt!900638 () Bool)

(declare-fun call!157951 () Bool)

(assert (=> b!2526758 (= e!1599512 (= lt!900638 call!157951))))

(declare-fun b!2526760 () Bool)

(declare-fun res!1067263 () Bool)

(declare-fun e!1599509 () Bool)

(assert (=> b!2526760 (=> res!1067263 e!1599509)))

(assert (=> b!2526760 (= res!1067263 e!1599513)))

(declare-fun res!1067270 () Bool)

(assert (=> b!2526760 (=> (not res!1067270) (not e!1599513))))

(assert (=> b!2526760 (= res!1067270 lt!900638)))

(declare-fun b!2526761 () Bool)

(declare-fun e!1599511 () Bool)

(assert (=> b!2526761 (= e!1599511 (not lt!900638))))

(declare-fun bm!157946 () Bool)

(assert (=> bm!157946 (= call!157951 (isEmpty!16961 Nil!29486))))

(declare-fun b!2526762 () Bool)

(declare-fun e!1599508 () Bool)

(assert (=> b!2526762 (= e!1599508 (matchR!3508 (derivativeStep!2090 (derivative!216 lt!900589 tl!4068) (head!5770 Nil!29486)) (tail!4047 Nil!29486)))))

(declare-fun b!2526763 () Bool)

(assert (=> b!2526763 (= e!1599508 (nullable!2438 (derivative!216 lt!900589 tl!4068)))))

(declare-fun b!2526764 () Bool)

(declare-fun res!1067267 () Bool)

(declare-fun e!1599514 () Bool)

(assert (=> b!2526764 (=> res!1067267 e!1599514)))

(assert (=> b!2526764 (= res!1067267 (not (isEmpty!16961 (tail!4047 Nil!29486))))))

(declare-fun b!2526765 () Bool)

(assert (=> b!2526765 (= e!1599512 e!1599511)))

(declare-fun c!403427 () Bool)

(assert (=> b!2526765 (= c!403427 ((_ is EmptyLang!7521) (derivative!216 lt!900589 tl!4068)))))

(declare-fun d!719140 () Bool)

(assert (=> d!719140 e!1599512))

(declare-fun c!403429 () Bool)

(assert (=> d!719140 (= c!403429 ((_ is EmptyExpr!7521) (derivative!216 lt!900589 tl!4068)))))

(assert (=> d!719140 (= lt!900638 e!1599508)))

(declare-fun c!403428 () Bool)

(assert (=> d!719140 (= c!403428 (isEmpty!16961 Nil!29486))))

(assert (=> d!719140 (validRegex!3147 (derivative!216 lt!900589 tl!4068))))

(assert (=> d!719140 (= (matchR!3508 (derivative!216 lt!900589 tl!4068) Nil!29486) lt!900638)))

(declare-fun b!2526759 () Bool)

(assert (=> b!2526759 (= e!1599514 (not (= (head!5770 Nil!29486) (c!403337 (derivative!216 lt!900589 tl!4068)))))))

(declare-fun b!2526766 () Bool)

(declare-fun res!1067265 () Bool)

(assert (=> b!2526766 (=> (not res!1067265) (not e!1599513))))

(assert (=> b!2526766 (= res!1067265 (not call!157951))))

(declare-fun b!2526767 () Bool)

(declare-fun e!1599510 () Bool)

(assert (=> b!2526767 (= e!1599509 e!1599510)))

(declare-fun res!1067269 () Bool)

(assert (=> b!2526767 (=> (not res!1067269) (not e!1599510))))

(assert (=> b!2526767 (= res!1067269 (not lt!900638))))

(declare-fun b!2526768 () Bool)

(assert (=> b!2526768 (= e!1599510 e!1599514)))

(declare-fun res!1067266 () Bool)

(assert (=> b!2526768 (=> res!1067266 e!1599514)))

(assert (=> b!2526768 (= res!1067266 call!157951)))

(declare-fun b!2526769 () Bool)

(assert (=> b!2526769 (= e!1599513 (= (head!5770 Nil!29486) (c!403337 (derivative!216 lt!900589 tl!4068))))))

(declare-fun b!2526770 () Bool)

(declare-fun res!1067264 () Bool)

(assert (=> b!2526770 (=> res!1067264 e!1599509)))

(assert (=> b!2526770 (= res!1067264 (not ((_ is ElementMatch!7521) (derivative!216 lt!900589 tl!4068))))))

(assert (=> b!2526770 (= e!1599511 e!1599509)))

(assert (= (and d!719140 c!403428) b!2526763))

(assert (= (and d!719140 (not c!403428)) b!2526762))

(assert (= (and d!719140 c!403429) b!2526758))

(assert (= (and d!719140 (not c!403429)) b!2526765))

(assert (= (and b!2526765 c!403427) b!2526761))

(assert (= (and b!2526765 (not c!403427)) b!2526770))

(assert (= (and b!2526770 (not res!1067264)) b!2526760))

(assert (= (and b!2526760 res!1067270) b!2526766))

(assert (= (and b!2526766 res!1067265) b!2526757))

(assert (= (and b!2526757 res!1067268) b!2526769))

(assert (= (and b!2526760 (not res!1067263)) b!2526767))

(assert (= (and b!2526767 res!1067269) b!2526768))

(assert (= (and b!2526768 (not res!1067266)) b!2526764))

(assert (= (and b!2526764 (not res!1067267)) b!2526759))

(assert (= (or b!2526758 b!2526766 b!2526768) bm!157946))

(declare-fun m!2879731 () Bool)

(assert (=> b!2526757 m!2879731))

(assert (=> b!2526757 m!2879731))

(declare-fun m!2879733 () Bool)

(assert (=> b!2526757 m!2879733))

(declare-fun m!2879735 () Bool)

(assert (=> d!719140 m!2879735))

(assert (=> d!719140 m!2879521))

(declare-fun m!2879737 () Bool)

(assert (=> d!719140 m!2879737))

(declare-fun m!2879739 () Bool)

(assert (=> b!2526762 m!2879739))

(assert (=> b!2526762 m!2879521))

(assert (=> b!2526762 m!2879739))

(declare-fun m!2879741 () Bool)

(assert (=> b!2526762 m!2879741))

(assert (=> b!2526762 m!2879731))

(assert (=> b!2526762 m!2879741))

(assert (=> b!2526762 m!2879731))

(declare-fun m!2879743 () Bool)

(assert (=> b!2526762 m!2879743))

(assert (=> b!2526769 m!2879739))

(assert (=> bm!157946 m!2879735))

(assert (=> b!2526764 m!2879731))

(assert (=> b!2526764 m!2879731))

(assert (=> b!2526764 m!2879733))

(assert (=> b!2526759 m!2879739))

(assert (=> b!2526763 m!2879521))

(declare-fun m!2879749 () Bool)

(assert (=> b!2526763 m!2879749))

(assert (=> b!2526456 d!719140))

(declare-fun d!719144 () Bool)

(assert (=> d!719144 (= (matchR!3508 lt!900589 tl!4068) (matchR!3508 (derivative!216 lt!900589 tl!4068) Nil!29486))))

(declare-fun lt!900643 () Unit!43267)

(declare-fun choose!14984 (Regex!7521 List!29586) Unit!43267)

(assert (=> d!719144 (= lt!900643 (choose!14984 lt!900589 tl!4068))))

(assert (=> d!719144 (validRegex!3147 lt!900589)))

(assert (=> d!719144 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!154 lt!900589 tl!4068) lt!900643)))

(declare-fun bs!469113 () Bool)

(assert (= bs!469113 d!719144))

(assert (=> bs!469113 m!2879531))

(assert (=> bs!469113 m!2879521))

(assert (=> bs!469113 m!2879523))

(declare-fun m!2879771 () Bool)

(assert (=> bs!469113 m!2879771))

(assert (=> bs!469113 m!2879521))

(assert (=> bs!469113 m!2879705))

(assert (=> b!2526456 d!719144))

(declare-fun d!719154 () Bool)

(assert (=> d!719154 (= (derivative!216 EmptyLang!7521 tl!4068) EmptyLang!7521)))

(declare-fun lt!900646 () Unit!43267)

(declare-fun choose!14985 (Regex!7521 List!29586) Unit!43267)

(assert (=> d!719154 (= lt!900646 (choose!14985 EmptyLang!7521 tl!4068))))

(assert (=> d!719154 (= EmptyLang!7521 EmptyLang!7521)))

(assert (=> d!719154 (= (lemmaEmptyLangDerivativeIsAFixPoint!38 EmptyLang!7521 tl!4068) lt!900646)))

(declare-fun bs!469114 () Bool)

(assert (= bs!469114 d!719154))

(assert (=> bs!469114 m!2879519))

(declare-fun m!2879773 () Bool)

(assert (=> bs!469114 m!2879773))

(assert (=> b!2526456 d!719154))

(declare-fun b!2526799 () Bool)

(declare-fun res!1067292 () Bool)

(declare-fun e!1599534 () Bool)

(assert (=> b!2526799 (=> (not res!1067292) (not e!1599534))))

(assert (=> b!2526799 (= res!1067292 (isEmpty!16961 (tail!4047 tl!4068)))))

(declare-fun b!2526800 () Bool)

(declare-fun e!1599533 () Bool)

(declare-fun lt!900647 () Bool)

(declare-fun call!157954 () Bool)

(assert (=> b!2526800 (= e!1599533 (= lt!900647 call!157954))))

(declare-fun b!2526802 () Bool)

(declare-fun res!1067287 () Bool)

(declare-fun e!1599530 () Bool)

(assert (=> b!2526802 (=> res!1067287 e!1599530)))

(assert (=> b!2526802 (= res!1067287 e!1599534)))

(declare-fun res!1067294 () Bool)

(assert (=> b!2526802 (=> (not res!1067294) (not e!1599534))))

(assert (=> b!2526802 (= res!1067294 lt!900647)))

(declare-fun b!2526803 () Bool)

(declare-fun e!1599532 () Bool)

(assert (=> b!2526803 (= e!1599532 (not lt!900647))))

(declare-fun bm!157949 () Bool)

(assert (=> bm!157949 (= call!157954 (isEmpty!16961 tl!4068))))

(declare-fun b!2526804 () Bool)

(declare-fun e!1599529 () Bool)

(assert (=> b!2526804 (= e!1599529 (matchR!3508 (derivativeStep!2090 lt!900596 (head!5770 tl!4068)) (tail!4047 tl!4068)))))

(declare-fun b!2526805 () Bool)

(assert (=> b!2526805 (= e!1599529 (nullable!2438 lt!900596))))

(declare-fun b!2526806 () Bool)

(declare-fun res!1067291 () Bool)

(declare-fun e!1599535 () Bool)

(assert (=> b!2526806 (=> res!1067291 e!1599535)))

(assert (=> b!2526806 (= res!1067291 (not (isEmpty!16961 (tail!4047 tl!4068))))))

(declare-fun b!2526807 () Bool)

(assert (=> b!2526807 (= e!1599533 e!1599532)))

(declare-fun c!403436 () Bool)

(assert (=> b!2526807 (= c!403436 ((_ is EmptyLang!7521) lt!900596))))

(declare-fun d!719156 () Bool)

(assert (=> d!719156 e!1599533))

(declare-fun c!403438 () Bool)

(assert (=> d!719156 (= c!403438 ((_ is EmptyExpr!7521) lt!900596))))

(assert (=> d!719156 (= lt!900647 e!1599529)))

(declare-fun c!403437 () Bool)

(assert (=> d!719156 (= c!403437 (isEmpty!16961 tl!4068))))

(assert (=> d!719156 (validRegex!3147 lt!900596)))

(assert (=> d!719156 (= (matchR!3508 lt!900596 tl!4068) lt!900647)))

(declare-fun b!2526801 () Bool)

(assert (=> b!2526801 (= e!1599535 (not (= (head!5770 tl!4068) (c!403337 lt!900596))))))

(declare-fun b!2526808 () Bool)

(declare-fun res!1067289 () Bool)

(assert (=> b!2526808 (=> (not res!1067289) (not e!1599534))))

(assert (=> b!2526808 (= res!1067289 (not call!157954))))

(declare-fun b!2526809 () Bool)

(declare-fun e!1599531 () Bool)

(assert (=> b!2526809 (= e!1599530 e!1599531)))

(declare-fun res!1067293 () Bool)

(assert (=> b!2526809 (=> (not res!1067293) (not e!1599531))))

(assert (=> b!2526809 (= res!1067293 (not lt!900647))))

(declare-fun b!2526810 () Bool)

(assert (=> b!2526810 (= e!1599531 e!1599535)))

(declare-fun res!1067290 () Bool)

(assert (=> b!2526810 (=> res!1067290 e!1599535)))

(assert (=> b!2526810 (= res!1067290 call!157954)))

(declare-fun b!2526811 () Bool)

(assert (=> b!2526811 (= e!1599534 (= (head!5770 tl!4068) (c!403337 lt!900596)))))

(declare-fun b!2526812 () Bool)

(declare-fun res!1067288 () Bool)

(assert (=> b!2526812 (=> res!1067288 e!1599530)))

(assert (=> b!2526812 (= res!1067288 (not ((_ is ElementMatch!7521) lt!900596)))))

(assert (=> b!2526812 (= e!1599532 e!1599530)))

(assert (= (and d!719156 c!403437) b!2526805))

(assert (= (and d!719156 (not c!403437)) b!2526804))

(assert (= (and d!719156 c!403438) b!2526800))

(assert (= (and d!719156 (not c!403438)) b!2526807))

(assert (= (and b!2526807 c!403436) b!2526803))

(assert (= (and b!2526807 (not c!403436)) b!2526812))

(assert (= (and b!2526812 (not res!1067288)) b!2526802))

(assert (= (and b!2526802 res!1067294) b!2526808))

(assert (= (and b!2526808 res!1067289) b!2526799))

(assert (= (and b!2526799 res!1067292) b!2526811))

(assert (= (and b!2526802 (not res!1067287)) b!2526809))

(assert (= (and b!2526809 res!1067293) b!2526810))

(assert (= (and b!2526810 (not res!1067290)) b!2526806))

(assert (= (and b!2526806 (not res!1067291)) b!2526801))

(assert (= (or b!2526800 b!2526808 b!2526810) bm!157949))

(assert (=> b!2526799 m!2879699))

(assert (=> b!2526799 m!2879699))

(assert (=> b!2526799 m!2879701))

(assert (=> d!719156 m!2879703))

(assert (=> d!719156 m!2879723))

(assert (=> b!2526804 m!2879707))

(assert (=> b!2526804 m!2879707))

(declare-fun m!2879775 () Bool)

(assert (=> b!2526804 m!2879775))

(assert (=> b!2526804 m!2879699))

(assert (=> b!2526804 m!2879775))

(assert (=> b!2526804 m!2879699))

(declare-fun m!2879777 () Bool)

(assert (=> b!2526804 m!2879777))

(assert (=> b!2526811 m!2879707))

(assert (=> bm!157949 m!2879703))

(assert (=> b!2526806 m!2879699))

(assert (=> b!2526806 m!2879699))

(assert (=> b!2526806 m!2879701))

(assert (=> b!2526801 m!2879707))

(declare-fun m!2879779 () Bool)

(assert (=> b!2526805 m!2879779))

(assert (=> b!2526456 d!719156))

(declare-fun d!719158 () Bool)

(declare-fun isEmpty!16963 (Option!5890) Bool)

(assert (=> d!719158 (= (isDefined!4712 lt!900592) (not (isEmpty!16963 lt!900592)))))

(declare-fun bs!469115 () Bool)

(assert (= bs!469115 d!719158))

(declare-fun m!2879781 () Bool)

(assert (=> bs!469115 m!2879781))

(assert (=> b!2526463 d!719158))

(declare-fun d!719160 () Bool)

(assert (=> d!719160 (= (get!9229 lt!900592) (v!31822 lt!900592))))

(assert (=> b!2526463 d!719160))

(declare-fun b!2526850 () Bool)

(declare-fun res!1067314 () Bool)

(declare-fun e!1599555 () Bool)

(assert (=> b!2526850 (=> (not res!1067314) (not e!1599555))))

(declare-fun lt!900659 () List!29586)

(declare-fun size!22929 (List!29586) Int)

(assert (=> b!2526850 (= res!1067314 (= (size!22929 lt!900659) (+ (size!22929 (_1!17312 lt!900598)) (size!22929 (_2!17312 lt!900598)))))))

(declare-fun b!2526849 () Bool)

(declare-fun e!1599556 () List!29586)

(assert (=> b!2526849 (= e!1599556 (Cons!29486 (h!34906 (_1!17312 lt!900598)) (++!7240 (t!211285 (_1!17312 lt!900598)) (_2!17312 lt!900598))))))

(declare-fun d!719162 () Bool)

(assert (=> d!719162 e!1599555))

(declare-fun res!1067315 () Bool)

(assert (=> d!719162 (=> (not res!1067315) (not e!1599555))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4047 (List!29586) (InoxSet C!15200))

(assert (=> d!719162 (= res!1067315 (= (content!4047 lt!900659) ((_ map or) (content!4047 (_1!17312 lt!900598)) (content!4047 (_2!17312 lt!900598)))))))

(assert (=> d!719162 (= lt!900659 e!1599556)))

(declare-fun c!403447 () Bool)

(assert (=> d!719162 (= c!403447 ((_ is Nil!29486) (_1!17312 lt!900598)))))

(assert (=> d!719162 (= (++!7240 (_1!17312 lt!900598) (_2!17312 lt!900598)) lt!900659)))

(declare-fun b!2526848 () Bool)

(assert (=> b!2526848 (= e!1599556 (_2!17312 lt!900598))))

(declare-fun b!2526851 () Bool)

(assert (=> b!2526851 (= e!1599555 (or (not (= (_2!17312 lt!900598) Nil!29486)) (= lt!900659 (_1!17312 lt!900598))))))

(assert (= (and d!719162 c!403447) b!2526848))

(assert (= (and d!719162 (not c!403447)) b!2526849))

(assert (= (and d!719162 res!1067315) b!2526850))

(assert (= (and b!2526850 res!1067314) b!2526851))

(declare-fun m!2879805 () Bool)

(assert (=> b!2526850 m!2879805))

(declare-fun m!2879807 () Bool)

(assert (=> b!2526850 m!2879807))

(declare-fun m!2879809 () Bool)

(assert (=> b!2526850 m!2879809))

(declare-fun m!2879811 () Bool)

(assert (=> b!2526849 m!2879811))

(declare-fun m!2879813 () Bool)

(assert (=> d!719162 m!2879813))

(declare-fun m!2879815 () Bool)

(assert (=> d!719162 m!2879815))

(declare-fun m!2879817 () Bool)

(assert (=> d!719162 m!2879817))

(assert (=> b!2526463 d!719162))

(declare-fun b!2526917 () Bool)

(declare-fun e!1599587 () Bool)

(declare-fun lt!900673 () Option!5890)

(assert (=> b!2526917 (= e!1599587 (= (++!7240 (_1!17312 (get!9229 lt!900673)) (_2!17312 (get!9229 lt!900673))) tl!4068))))

(declare-fun b!2526918 () Bool)

(declare-fun e!1599586 () Bool)

(assert (=> b!2526918 (= e!1599586 (not (isDefined!4712 lt!900673)))))

(declare-fun b!2526919 () Bool)

(declare-fun res!1067334 () Bool)

(assert (=> b!2526919 (=> (not res!1067334) (not e!1599587))))

(assert (=> b!2526919 (= res!1067334 (matchR!3508 (regTwo!15554 r!27340) (_2!17312 (get!9229 lt!900673))))))

(declare-fun b!2526920 () Bool)

(declare-fun e!1599584 () Option!5890)

(assert (=> b!2526920 (= e!1599584 None!5889)))

(declare-fun b!2526921 () Bool)

(declare-fun e!1599585 () Option!5890)

(assert (=> b!2526921 (= e!1599585 e!1599584)))

(declare-fun c!403455 () Bool)

(assert (=> b!2526921 (= c!403455 ((_ is Nil!29486) tl!4068))))

(declare-fun d!719166 () Bool)

(assert (=> d!719166 e!1599586))

(declare-fun res!1067332 () Bool)

(assert (=> d!719166 (=> res!1067332 e!1599586)))

(assert (=> d!719166 (= res!1067332 e!1599587)))

(declare-fun res!1067335 () Bool)

(assert (=> d!719166 (=> (not res!1067335) (not e!1599587))))

(assert (=> d!719166 (= res!1067335 (isDefined!4712 lt!900673))))

(assert (=> d!719166 (= lt!900673 e!1599585)))

(declare-fun c!403456 () Bool)

(declare-fun e!1599583 () Bool)

(assert (=> d!719166 (= c!403456 e!1599583)))

(declare-fun res!1067336 () Bool)

(assert (=> d!719166 (=> (not res!1067336) (not e!1599583))))

(assert (=> d!719166 (= res!1067336 (matchR!3508 lt!900593 Nil!29486))))

(assert (=> d!719166 (validRegex!3147 lt!900593)))

(assert (=> d!719166 (= (findConcatSeparation!912 lt!900593 (regTwo!15554 r!27340) Nil!29486 tl!4068 tl!4068) lt!900673)))

(declare-fun b!2526922 () Bool)

(declare-fun res!1067333 () Bool)

(assert (=> b!2526922 (=> (not res!1067333) (not e!1599587))))

(assert (=> b!2526922 (= res!1067333 (matchR!3508 lt!900593 (_1!17312 (get!9229 lt!900673))))))

(declare-fun b!2526923 () Bool)

(assert (=> b!2526923 (= e!1599585 (Some!5889 (tuple2!29541 Nil!29486 tl!4068)))))

(declare-fun b!2526924 () Bool)

(declare-fun lt!900672 () Unit!43267)

(declare-fun lt!900674 () Unit!43267)

(assert (=> b!2526924 (= lt!900672 lt!900674)))

(assert (=> b!2526924 (= (++!7240 (++!7240 Nil!29486 (Cons!29486 (h!34906 tl!4068) Nil!29486)) (t!211285 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!780 (List!29586 C!15200 List!29586 List!29586) Unit!43267)

(assert (=> b!2526924 (= lt!900674 (lemmaMoveElementToOtherListKeepsConcatEq!780 Nil!29486 (h!34906 tl!4068) (t!211285 tl!4068) tl!4068))))

(assert (=> b!2526924 (= e!1599584 (findConcatSeparation!912 lt!900593 (regTwo!15554 r!27340) (++!7240 Nil!29486 (Cons!29486 (h!34906 tl!4068) Nil!29486)) (t!211285 tl!4068) tl!4068))))

(declare-fun b!2526925 () Bool)

(assert (=> b!2526925 (= e!1599583 (matchR!3508 (regTwo!15554 r!27340) tl!4068))))

(assert (= (and d!719166 res!1067336) b!2526925))

(assert (= (and d!719166 c!403456) b!2526923))

(assert (= (and d!719166 (not c!403456)) b!2526921))

(assert (= (and b!2526921 c!403455) b!2526920))

(assert (= (and b!2526921 (not c!403455)) b!2526924))

(assert (= (and d!719166 res!1067335) b!2526922))

(assert (= (and b!2526922 res!1067333) b!2526919))

(assert (= (and b!2526919 res!1067334) b!2526917))

(assert (= (and d!719166 (not res!1067332)) b!2526918))

(declare-fun m!2879837 () Bool)

(assert (=> d!719166 m!2879837))

(declare-fun m!2879839 () Bool)

(assert (=> d!719166 m!2879839))

(assert (=> d!719166 m!2879571))

(declare-fun m!2879841 () Bool)

(assert (=> b!2526917 m!2879841))

(declare-fun m!2879843 () Bool)

(assert (=> b!2526917 m!2879843))

(assert (=> b!2526922 m!2879841))

(declare-fun m!2879845 () Bool)

(assert (=> b!2526922 m!2879845))

(declare-fun m!2879847 () Bool)

(assert (=> b!2526925 m!2879847))

(assert (=> b!2526918 m!2879837))

(declare-fun m!2879849 () Bool)

(assert (=> b!2526924 m!2879849))

(assert (=> b!2526924 m!2879849))

(declare-fun m!2879851 () Bool)

(assert (=> b!2526924 m!2879851))

(declare-fun m!2879853 () Bool)

(assert (=> b!2526924 m!2879853))

(assert (=> b!2526924 m!2879849))

(declare-fun m!2879855 () Bool)

(assert (=> b!2526924 m!2879855))

(assert (=> b!2526919 m!2879841))

(declare-fun m!2879857 () Bool)

(assert (=> b!2526919 m!2879857))

(assert (=> b!2526463 d!719166))

(declare-fun d!719170 () Bool)

(assert (=> d!719170 (isDefined!4712 (findConcatSeparation!912 lt!900593 (regTwo!15554 r!27340) Nil!29486 tl!4068 tl!4068))))

(declare-fun lt!900677 () Unit!43267)

(declare-fun choose!14986 (Regex!7521 Regex!7521 List!29586) Unit!43267)

(assert (=> d!719170 (= lt!900677 (choose!14986 lt!900593 (regTwo!15554 r!27340) tl!4068))))

(assert (=> d!719170 (validRegex!3147 lt!900593)))

(assert (=> d!719170 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!194 lt!900593 (regTwo!15554 r!27340) tl!4068) lt!900677)))

(declare-fun bs!469117 () Bool)

(assert (= bs!469117 d!719170))

(assert (=> bs!469117 m!2879547))

(assert (=> bs!469117 m!2879547))

(declare-fun m!2879859 () Bool)

(assert (=> bs!469117 m!2879859))

(declare-fun m!2879861 () Bool)

(assert (=> bs!469117 m!2879861))

(assert (=> bs!469117 m!2879571))

(assert (=> b!2526463 d!719170))

(declare-fun b!2526926 () Bool)

(declare-fun res!1067342 () Bool)

(declare-fun e!1599593 () Bool)

(assert (=> b!2526926 (=> (not res!1067342) (not e!1599593))))

(assert (=> b!2526926 (= res!1067342 (isEmpty!16961 (tail!4047 tl!4068)))))

(declare-fun b!2526927 () Bool)

(declare-fun e!1599592 () Bool)

(declare-fun lt!900678 () Bool)

(declare-fun call!157955 () Bool)

(assert (=> b!2526927 (= e!1599592 (= lt!900678 call!157955))))

(declare-fun b!2526929 () Bool)

(declare-fun res!1067337 () Bool)

(declare-fun e!1599589 () Bool)

(assert (=> b!2526929 (=> res!1067337 e!1599589)))

(assert (=> b!2526929 (= res!1067337 e!1599593)))

(declare-fun res!1067344 () Bool)

(assert (=> b!2526929 (=> (not res!1067344) (not e!1599593))))

(assert (=> b!2526929 (= res!1067344 lt!900678)))

(declare-fun b!2526930 () Bool)

(declare-fun e!1599591 () Bool)

(assert (=> b!2526930 (= e!1599591 (not lt!900678))))

(declare-fun bm!157950 () Bool)

(assert (=> bm!157950 (= call!157955 (isEmpty!16961 tl!4068))))

(declare-fun b!2526931 () Bool)

(declare-fun e!1599588 () Bool)

(assert (=> b!2526931 (= e!1599588 (matchR!3508 (derivativeStep!2090 EmptyLang!7521 (head!5770 tl!4068)) (tail!4047 tl!4068)))))

(declare-fun b!2526932 () Bool)

(assert (=> b!2526932 (= e!1599588 (nullable!2438 EmptyLang!7521))))

(declare-fun b!2526933 () Bool)

(declare-fun res!1067341 () Bool)

(declare-fun e!1599594 () Bool)

(assert (=> b!2526933 (=> res!1067341 e!1599594)))

(assert (=> b!2526933 (= res!1067341 (not (isEmpty!16961 (tail!4047 tl!4068))))))

(declare-fun b!2526934 () Bool)

(assert (=> b!2526934 (= e!1599592 e!1599591)))

(declare-fun c!403457 () Bool)

(assert (=> b!2526934 (= c!403457 ((_ is EmptyLang!7521) EmptyLang!7521))))

(declare-fun d!719172 () Bool)

(assert (=> d!719172 e!1599592))

(declare-fun c!403459 () Bool)

(assert (=> d!719172 (= c!403459 ((_ is EmptyExpr!7521) EmptyLang!7521))))

(assert (=> d!719172 (= lt!900678 e!1599588)))

(declare-fun c!403458 () Bool)

(assert (=> d!719172 (= c!403458 (isEmpty!16961 tl!4068))))

(assert (=> d!719172 (validRegex!3147 EmptyLang!7521)))

(assert (=> d!719172 (= (matchR!3508 EmptyLang!7521 tl!4068) lt!900678)))

(declare-fun b!2526928 () Bool)

(assert (=> b!2526928 (= e!1599594 (not (= (head!5770 tl!4068) (c!403337 EmptyLang!7521))))))

(declare-fun b!2526935 () Bool)

(declare-fun res!1067339 () Bool)

(assert (=> b!2526935 (=> (not res!1067339) (not e!1599593))))

(assert (=> b!2526935 (= res!1067339 (not call!157955))))

(declare-fun b!2526936 () Bool)

(declare-fun e!1599590 () Bool)

(assert (=> b!2526936 (= e!1599589 e!1599590)))

(declare-fun res!1067343 () Bool)

(assert (=> b!2526936 (=> (not res!1067343) (not e!1599590))))

(assert (=> b!2526936 (= res!1067343 (not lt!900678))))

(declare-fun b!2526937 () Bool)

(assert (=> b!2526937 (= e!1599590 e!1599594)))

(declare-fun res!1067340 () Bool)

(assert (=> b!2526937 (=> res!1067340 e!1599594)))

(assert (=> b!2526937 (= res!1067340 call!157955)))

(declare-fun b!2526938 () Bool)

(assert (=> b!2526938 (= e!1599593 (= (head!5770 tl!4068) (c!403337 EmptyLang!7521)))))

(declare-fun b!2526939 () Bool)

(declare-fun res!1067338 () Bool)

(assert (=> b!2526939 (=> res!1067338 e!1599589)))

(assert (=> b!2526939 (= res!1067338 (not ((_ is ElementMatch!7521) EmptyLang!7521)))))

(assert (=> b!2526939 (= e!1599591 e!1599589)))

(assert (= (and d!719172 c!403458) b!2526932))

(assert (= (and d!719172 (not c!403458)) b!2526931))

(assert (= (and d!719172 c!403459) b!2526927))

(assert (= (and d!719172 (not c!403459)) b!2526934))

(assert (= (and b!2526934 c!403457) b!2526930))

(assert (= (and b!2526934 (not c!403457)) b!2526939))

(assert (= (and b!2526939 (not res!1067338)) b!2526929))

(assert (= (and b!2526929 res!1067344) b!2526935))

(assert (= (and b!2526935 res!1067339) b!2526926))

(assert (= (and b!2526926 res!1067342) b!2526938))

(assert (= (and b!2526929 (not res!1067337)) b!2526936))

(assert (= (and b!2526936 res!1067343) b!2526937))

(assert (= (and b!2526937 (not res!1067340)) b!2526933))

(assert (= (and b!2526933 (not res!1067341)) b!2526928))

(assert (= (or b!2526927 b!2526935 b!2526937) bm!157950))

(assert (=> b!2526926 m!2879699))

(assert (=> b!2526926 m!2879699))

(assert (=> b!2526926 m!2879701))

(assert (=> d!719172 m!2879703))

(assert (=> d!719172 m!2879681))

(assert (=> b!2526931 m!2879707))

(assert (=> b!2526931 m!2879707))

(declare-fun m!2879863 () Bool)

(assert (=> b!2526931 m!2879863))

(assert (=> b!2526931 m!2879699))

(assert (=> b!2526931 m!2879863))

(assert (=> b!2526931 m!2879699))

(declare-fun m!2879865 () Bool)

(assert (=> b!2526931 m!2879865))

(assert (=> b!2526938 m!2879707))

(assert (=> bm!157950 m!2879703))

(assert (=> b!2526933 m!2879699))

(assert (=> b!2526933 m!2879699))

(assert (=> b!2526933 m!2879701))

(assert (=> b!2526928 m!2879707))

(declare-fun m!2879867 () Bool)

(assert (=> b!2526932 m!2879867))

(assert (=> b!2526453 d!719172))

(declare-fun b!2526944 () Bool)

(declare-fun e!1599597 () Bool)

(declare-fun tp!806807 () Bool)

(assert (=> b!2526944 (= e!1599597 (and tp_is_empty!12897 tp!806807))))

(assert (=> b!2526462 (= tp!806765 e!1599597)))

(assert (= (and b!2526462 ((_ is Cons!29486) (t!211285 tl!4068))) b!2526944))

(declare-fun b!2526955 () Bool)

(declare-fun e!1599600 () Bool)

(assert (=> b!2526955 (= e!1599600 tp_is_empty!12897)))

(declare-fun b!2526956 () Bool)

(declare-fun tp!806820 () Bool)

(declare-fun tp!806821 () Bool)

(assert (=> b!2526956 (= e!1599600 (and tp!806820 tp!806821))))

(assert (=> b!2526457 (= tp!806762 e!1599600)))

(declare-fun b!2526958 () Bool)

(declare-fun tp!806819 () Bool)

(declare-fun tp!806822 () Bool)

(assert (=> b!2526958 (= e!1599600 (and tp!806819 tp!806822))))

(declare-fun b!2526957 () Bool)

(declare-fun tp!806818 () Bool)

(assert (=> b!2526957 (= e!1599600 tp!806818)))

(assert (= (and b!2526457 ((_ is ElementMatch!7521) (regOne!15554 r!27340))) b!2526955))

(assert (= (and b!2526457 ((_ is Concat!12217) (regOne!15554 r!27340))) b!2526956))

(assert (= (and b!2526457 ((_ is Star!7521) (regOne!15554 r!27340))) b!2526957))

(assert (= (and b!2526457 ((_ is Union!7521) (regOne!15554 r!27340))) b!2526958))

(declare-fun b!2526959 () Bool)

(declare-fun e!1599601 () Bool)

(assert (=> b!2526959 (= e!1599601 tp_is_empty!12897)))

(declare-fun b!2526960 () Bool)

(declare-fun tp!806825 () Bool)

(declare-fun tp!806826 () Bool)

(assert (=> b!2526960 (= e!1599601 (and tp!806825 tp!806826))))

(assert (=> b!2526457 (= tp!806761 e!1599601)))

(declare-fun b!2526962 () Bool)

(declare-fun tp!806824 () Bool)

(declare-fun tp!806827 () Bool)

(assert (=> b!2526962 (= e!1599601 (and tp!806824 tp!806827))))

(declare-fun b!2526961 () Bool)

(declare-fun tp!806823 () Bool)

(assert (=> b!2526961 (= e!1599601 tp!806823)))

(assert (= (and b!2526457 ((_ is ElementMatch!7521) (regTwo!15554 r!27340))) b!2526959))

(assert (= (and b!2526457 ((_ is Concat!12217) (regTwo!15554 r!27340))) b!2526960))

(assert (= (and b!2526457 ((_ is Star!7521) (regTwo!15554 r!27340))) b!2526961))

(assert (= (and b!2526457 ((_ is Union!7521) (regTwo!15554 r!27340))) b!2526962))

(declare-fun b!2526963 () Bool)

(declare-fun e!1599602 () Bool)

(assert (=> b!2526963 (= e!1599602 tp_is_empty!12897)))

(declare-fun b!2526964 () Bool)

(declare-fun tp!806830 () Bool)

(declare-fun tp!806831 () Bool)

(assert (=> b!2526964 (= e!1599602 (and tp!806830 tp!806831))))

(assert (=> b!2526459 (= tp!806763 e!1599602)))

(declare-fun b!2526966 () Bool)

(declare-fun tp!806829 () Bool)

(declare-fun tp!806832 () Bool)

(assert (=> b!2526966 (= e!1599602 (and tp!806829 tp!806832))))

(declare-fun b!2526965 () Bool)

(declare-fun tp!806828 () Bool)

(assert (=> b!2526965 (= e!1599602 tp!806828)))

(assert (= (and b!2526459 ((_ is ElementMatch!7521) (regOne!15555 r!27340))) b!2526963))

(assert (= (and b!2526459 ((_ is Concat!12217) (regOne!15555 r!27340))) b!2526964))

(assert (= (and b!2526459 ((_ is Star!7521) (regOne!15555 r!27340))) b!2526965))

(assert (= (and b!2526459 ((_ is Union!7521) (regOne!15555 r!27340))) b!2526966))

(declare-fun b!2526967 () Bool)

(declare-fun e!1599603 () Bool)

(assert (=> b!2526967 (= e!1599603 tp_is_empty!12897)))

(declare-fun b!2526968 () Bool)

(declare-fun tp!806835 () Bool)

(declare-fun tp!806836 () Bool)

(assert (=> b!2526968 (= e!1599603 (and tp!806835 tp!806836))))

(assert (=> b!2526459 (= tp!806764 e!1599603)))

(declare-fun b!2526970 () Bool)

(declare-fun tp!806834 () Bool)

(declare-fun tp!806837 () Bool)

(assert (=> b!2526970 (= e!1599603 (and tp!806834 tp!806837))))

(declare-fun b!2526969 () Bool)

(declare-fun tp!806833 () Bool)

(assert (=> b!2526969 (= e!1599603 tp!806833)))

(assert (= (and b!2526459 ((_ is ElementMatch!7521) (regTwo!15555 r!27340))) b!2526967))

(assert (= (and b!2526459 ((_ is Concat!12217) (regTwo!15555 r!27340))) b!2526968))

(assert (= (and b!2526459 ((_ is Star!7521) (regTwo!15555 r!27340))) b!2526969))

(assert (= (and b!2526459 ((_ is Union!7521) (regTwo!15555 r!27340))) b!2526970))

(declare-fun b!2526971 () Bool)

(declare-fun e!1599604 () Bool)

(assert (=> b!2526971 (= e!1599604 tp_is_empty!12897)))

(declare-fun b!2526972 () Bool)

(declare-fun tp!806840 () Bool)

(declare-fun tp!806841 () Bool)

(assert (=> b!2526972 (= e!1599604 (and tp!806840 tp!806841))))

(assert (=> b!2526464 (= tp!806766 e!1599604)))

(declare-fun b!2526974 () Bool)

(declare-fun tp!806839 () Bool)

(declare-fun tp!806842 () Bool)

(assert (=> b!2526974 (= e!1599604 (and tp!806839 tp!806842))))

(declare-fun b!2526973 () Bool)

(declare-fun tp!806838 () Bool)

(assert (=> b!2526973 (= e!1599604 tp!806838)))

(assert (= (and b!2526464 ((_ is ElementMatch!7521) (reg!7850 r!27340))) b!2526971))

(assert (= (and b!2526464 ((_ is Concat!12217) (reg!7850 r!27340))) b!2526972))

(assert (= (and b!2526464 ((_ is Star!7521) (reg!7850 r!27340))) b!2526973))

(assert (= (and b!2526464 ((_ is Union!7521) (reg!7850 r!27340))) b!2526974))

(check-sat (not d!719108) (not b!2526746) (not b!2526917) (not b!2526711) (not d!719156) (not b!2526763) (not b!2526524) (not d!719130) (not b!2526612) (not bm!157936) (not b!2526919) (not b!2526747) (not d!719128) (not b!2526674) (not b!2526938) (not b!2526806) (not b!2526521) (not d!719110) (not d!719100) (not b!2526811) (not b!2526970) (not d!719124) (not b!2526531) (not b!2526757) (not b!2526519) (not b!2526801) tp_is_empty!12897 (not b!2526926) (not b!2526956) (not b!2526968) (not d!719144) (not b!2526974) (not bm!157933) (not b!2526769) (not b!2526932) (not bm!157929) (not b!2526712) (not bm!157932) (not b!2526706) (not b!2526722) (not b!2526973) (not d!719138) (not b!2526928) (not b!2526571) (not b!2526969) (not b!2526804) (not b!2526526) (not bm!157950) (not d!719170) (not d!719154) (not bm!157913) (not b!2526708) (not d!719140) (not bm!157946) (not d!719166) (not b!2526718) (not b!2526525) (not b!2526960) (not bm!157949) (not b!2526762) (not d!719112) (not bm!157897) (not b!2526944) (not b!2526713) (not b!2526805) (not b!2526799) (not bm!157928) (not bm!157914) (not d!719162) (not b!2526759) (not b!2526849) (not b!2526962) (not b!2526964) (not b!2526966) (not b!2526684) (not b!2526958) (not b!2526764) (not b!2526924) (not b!2526922) (not d!719172) (not b!2526704) (not b!2526918) (not d!719092) (not b!2526965) (not b!2526933) (not d!719158) (not d!719136) (not b!2526972) (not b!2526931) (not b!2526957) (not b!2526925) (not b!2526961) (not b!2526850))
(check-sat)
