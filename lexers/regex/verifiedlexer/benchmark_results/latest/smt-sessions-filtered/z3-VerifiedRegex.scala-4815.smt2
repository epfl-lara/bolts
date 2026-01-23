; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247496 () Bool)

(assert start!247496)

(declare-fun b!2552478 () Bool)

(declare-fun e!1612785 () Bool)

(declare-fun tp!814210 () Bool)

(assert (=> b!2552478 (= e!1612785 tp!814210)))

(declare-fun b!2552479 () Bool)

(declare-fun res!1075065 () Bool)

(declare-fun e!1612789 () Bool)

(assert (=> b!2552479 (=> res!1075065 e!1612789)))

(declare-datatypes ((C!15368 0))(
  ( (C!15369 (val!9336 Int)) )
))
(declare-datatypes ((List!29670 0))(
  ( (Nil!29570) (Cons!29570 (h!34990 C!15368) (t!211369 List!29670)) )
))
(declare-datatypes ((tuple2!29572 0))(
  ( (tuple2!29573 (_1!17328 List!29670) (_2!17328 List!29670)) )
))
(declare-fun lt!903608 () tuple2!29572)

(declare-datatypes ((Regex!7605 0))(
  ( (ElementMatch!7605 (c!409317 C!15368)) (Concat!12301 (regOne!15722 Regex!7605) (regTwo!15722 Regex!7605)) (EmptyExpr!7605) (Star!7605 (reg!7934 Regex!7605)) (EmptyLang!7605) (Union!7605 (regOne!15723 Regex!7605) (regTwo!15723 Regex!7605)) )
))
(declare-fun r!27340 () Regex!7605)

(declare-fun c!14016 () C!15368)

(declare-fun matchR!3550 (Regex!7605 List!29670) Bool)

(assert (=> b!2552479 (= res!1075065 (not (matchR!3550 (regOne!15722 r!27340) (Cons!29570 c!14016 (_1!17328 lt!903608)))))))

(declare-fun b!2552480 () Bool)

(declare-fun res!1075070 () Bool)

(declare-fun e!1612786 () Bool)

(assert (=> b!2552480 (=> (not res!1075070) (not e!1612786))))

(declare-fun tl!4068 () List!29670)

(declare-fun nullable!2522 (Regex!7605) Bool)

(declare-fun derivative!300 (Regex!7605 List!29670) Regex!7605)

(declare-fun derivativeStep!2174 (Regex!7605 C!15368) Regex!7605)

(assert (=> b!2552480 (= res!1075070 (nullable!2522 (derivative!300 (derivativeStep!2174 r!27340 c!14016) tl!4068)))))

(declare-fun b!2552481 () Bool)

(declare-fun res!1075069 () Bool)

(assert (=> b!2552481 (=> res!1075069 e!1612789)))

(declare-fun lt!903603 () Regex!7605)

(assert (=> b!2552481 (= res!1075069 (not (matchR!3550 lt!903603 (_1!17328 lt!903608))))))

(declare-fun b!2552482 () Bool)

(declare-fun e!1612787 () Bool)

(assert (=> b!2552482 (= e!1612786 (not e!1612787))))

(declare-fun res!1075067 () Bool)

(assert (=> b!2552482 (=> res!1075067 e!1612787)))

(declare-fun lt!903605 () Bool)

(assert (=> b!2552482 (= res!1075067 (not lt!903605))))

(declare-fun e!1612790 () Bool)

(assert (=> b!2552482 e!1612790))

(declare-fun res!1075063 () Bool)

(assert (=> b!2552482 (=> res!1075063 e!1612790)))

(assert (=> b!2552482 (= res!1075063 lt!903605)))

(declare-fun lt!903611 () Regex!7605)

(assert (=> b!2552482 (= lt!903605 (matchR!3550 lt!903611 tl!4068))))

(declare-datatypes ((Unit!43395 0))(
  ( (Unit!43396) )
))
(declare-fun lt!903612 () Unit!43395)

(declare-fun lt!903604 () Regex!7605)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!200 (Regex!7605 Regex!7605 List!29670) Unit!43395)

(assert (=> b!2552482 (= lt!903612 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!200 lt!903611 lt!903604 tl!4068))))

(declare-fun lt!903607 () Regex!7605)

(assert (=> b!2552482 (= (matchR!3550 lt!903607 tl!4068) (matchR!3550 (derivative!300 lt!903607 tl!4068) Nil!29570))))

(declare-fun lt!903606 () Unit!43395)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!196 (Regex!7605 List!29670) Unit!43395)

(assert (=> b!2552482 (= lt!903606 (lemmaMatchRIsSameAsWholeDerivativeAndNil!196 lt!903607 tl!4068))))

(assert (=> b!2552482 (= lt!903607 (Union!7605 lt!903611 lt!903604))))

(assert (=> b!2552482 (= lt!903604 (derivativeStep!2174 (regTwo!15722 r!27340) c!14016))))

(assert (=> b!2552482 (= lt!903611 (Concat!12301 lt!903603 (regTwo!15722 r!27340)))))

(assert (=> b!2552482 (= lt!903603 (derivativeStep!2174 (regOne!15722 r!27340) c!14016))))

(declare-fun b!2552483 () Bool)

(declare-fun tp!814214 () Bool)

(declare-fun tp!814212 () Bool)

(assert (=> b!2552483 (= e!1612785 (and tp!814214 tp!814212))))

(declare-fun b!2552484 () Bool)

(assert (=> b!2552484 (= e!1612787 e!1612789)))

(declare-fun res!1075068 () Bool)

(assert (=> b!2552484 (=> res!1075068 e!1612789)))

(declare-fun ++!7262 (List!29670 List!29670) List!29670)

(assert (=> b!2552484 (= res!1075068 (not (= (++!7262 (_1!17328 lt!903608) (_2!17328 lt!903608)) tl!4068)))))

(declare-datatypes ((Option!5906 0))(
  ( (None!5905) (Some!5905 (v!31846 tuple2!29572)) )
))
(declare-fun lt!903610 () Option!5906)

(declare-fun get!9287 (Option!5906) tuple2!29572)

(assert (=> b!2552484 (= lt!903608 (get!9287 lt!903610))))

(declare-fun isDefined!4728 (Option!5906) Bool)

(assert (=> b!2552484 (isDefined!4728 lt!903610)))

(declare-fun findConcatSeparation!928 (Regex!7605 Regex!7605 List!29670 List!29670 List!29670) Option!5906)

(assert (=> b!2552484 (= lt!903610 (findConcatSeparation!928 lt!903603 (regTwo!15722 r!27340) Nil!29570 tl!4068 tl!4068))))

(declare-fun lt!903609 () Unit!43395)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!210 (Regex!7605 Regex!7605 List!29670) Unit!43395)

(assert (=> b!2552484 (= lt!903609 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!210 lt!903603 (regTwo!15722 r!27340) tl!4068))))

(declare-fun b!2552485 () Bool)

(declare-fun tp!814209 () Bool)

(declare-fun tp!814211 () Bool)

(assert (=> b!2552485 (= e!1612785 (and tp!814209 tp!814211))))

(declare-fun b!2552487 () Bool)

(declare-fun res!1075072 () Bool)

(assert (=> b!2552487 (=> res!1075072 e!1612789)))

(assert (=> b!2552487 (= res!1075072 (not (matchR!3550 (regTwo!15722 r!27340) (_2!17328 lt!903608))))))

(declare-fun b!2552488 () Bool)

(declare-fun validRegex!3231 (Regex!7605) Bool)

(assert (=> b!2552488 (= e!1612789 (validRegex!3231 lt!903603))))

(declare-fun b!2552489 () Bool)

(declare-fun res!1075071 () Bool)

(assert (=> b!2552489 (=> (not res!1075071) (not e!1612786))))

(assert (=> b!2552489 (= res!1075071 (nullable!2522 (regOne!15722 r!27340)))))

(declare-fun b!2552490 () Bool)

(declare-fun e!1612788 () Bool)

(declare-fun tp_is_empty!13065 () Bool)

(declare-fun tp!814213 () Bool)

(assert (=> b!2552490 (= e!1612788 (and tp_is_empty!13065 tp!814213))))

(declare-fun b!2552491 () Bool)

(assert (=> b!2552491 (= e!1612790 (matchR!3550 lt!903604 tl!4068))))

(declare-fun b!2552492 () Bool)

(declare-fun res!1075064 () Bool)

(assert (=> b!2552492 (=> (not res!1075064) (not e!1612786))))

(get-info :version)

(assert (=> b!2552492 (= res!1075064 (and (not ((_ is EmptyExpr!7605) r!27340)) (not ((_ is EmptyLang!7605) r!27340)) (not ((_ is ElementMatch!7605) r!27340)) (not ((_ is Union!7605) r!27340)) (not ((_ is Star!7605) r!27340))))))

(declare-fun b!2552486 () Bool)

(assert (=> b!2552486 (= e!1612785 tp_is_empty!13065)))

(declare-fun res!1075066 () Bool)

(assert (=> start!247496 (=> (not res!1075066) (not e!1612786))))

(assert (=> start!247496 (= res!1075066 (validRegex!3231 r!27340))))

(assert (=> start!247496 e!1612786))

(assert (=> start!247496 e!1612785))

(assert (=> start!247496 tp_is_empty!13065))

(assert (=> start!247496 e!1612788))

(assert (= (and start!247496 res!1075066) b!2552480))

(assert (= (and b!2552480 res!1075070) b!2552492))

(assert (= (and b!2552492 res!1075064) b!2552489))

(assert (= (and b!2552489 res!1075071) b!2552482))

(assert (= (and b!2552482 (not res!1075063)) b!2552491))

(assert (= (and b!2552482 (not res!1075067)) b!2552484))

(assert (= (and b!2552484 (not res!1075068)) b!2552481))

(assert (= (and b!2552481 (not res!1075069)) b!2552487))

(assert (= (and b!2552487 (not res!1075072)) b!2552479))

(assert (= (and b!2552479 (not res!1075065)) b!2552488))

(assert (= (and start!247496 ((_ is ElementMatch!7605) r!27340)) b!2552486))

(assert (= (and start!247496 ((_ is Concat!12301) r!27340)) b!2552483))

(assert (= (and start!247496 ((_ is Star!7605) r!27340)) b!2552478))

(assert (= (and start!247496 ((_ is Union!7605) r!27340)) b!2552485))

(assert (= (and start!247496 ((_ is Cons!29570) tl!4068)) b!2552490))

(declare-fun m!2895003 () Bool)

(assert (=> b!2552489 m!2895003))

(declare-fun m!2895005 () Bool)

(assert (=> b!2552479 m!2895005))

(declare-fun m!2895007 () Bool)

(assert (=> b!2552491 m!2895007))

(declare-fun m!2895009 () Bool)

(assert (=> b!2552487 m!2895009))

(declare-fun m!2895011 () Bool)

(assert (=> b!2552481 m!2895011))

(declare-fun m!2895013 () Bool)

(assert (=> b!2552482 m!2895013))

(declare-fun m!2895015 () Bool)

(assert (=> b!2552482 m!2895015))

(declare-fun m!2895017 () Bool)

(assert (=> b!2552482 m!2895017))

(declare-fun m!2895019 () Bool)

(assert (=> b!2552482 m!2895019))

(declare-fun m!2895021 () Bool)

(assert (=> b!2552482 m!2895021))

(assert (=> b!2552482 m!2895019))

(declare-fun m!2895023 () Bool)

(assert (=> b!2552482 m!2895023))

(declare-fun m!2895025 () Bool)

(assert (=> b!2552482 m!2895025))

(declare-fun m!2895027 () Bool)

(assert (=> b!2552482 m!2895027))

(declare-fun m!2895029 () Bool)

(assert (=> b!2552480 m!2895029))

(assert (=> b!2552480 m!2895029))

(declare-fun m!2895031 () Bool)

(assert (=> b!2552480 m!2895031))

(assert (=> b!2552480 m!2895031))

(declare-fun m!2895033 () Bool)

(assert (=> b!2552480 m!2895033))

(declare-fun m!2895035 () Bool)

(assert (=> start!247496 m!2895035))

(declare-fun m!2895037 () Bool)

(assert (=> b!2552484 m!2895037))

(declare-fun m!2895039 () Bool)

(assert (=> b!2552484 m!2895039))

(declare-fun m!2895041 () Bool)

(assert (=> b!2552484 m!2895041))

(declare-fun m!2895043 () Bool)

(assert (=> b!2552484 m!2895043))

(declare-fun m!2895045 () Bool)

(assert (=> b!2552484 m!2895045))

(declare-fun m!2895047 () Bool)

(assert (=> b!2552488 m!2895047))

(check-sat (not b!2552483) (not b!2552489) (not b!2552479) (not b!2552491) tp_is_empty!13065 (not b!2552480) (not b!2552487) (not b!2552490) (not b!2552481) (not b!2552478) (not start!247496) (not b!2552488) (not b!2552484) (not b!2552485) (not b!2552482))
(check-sat)
(get-model)

(declare-fun b!2552523 () Bool)

(declare-fun e!1612808 () Option!5906)

(declare-fun e!1612811 () Option!5906)

(assert (=> b!2552523 (= e!1612808 e!1612811)))

(declare-fun c!409326 () Bool)

(assert (=> b!2552523 (= c!409326 ((_ is Nil!29570) tl!4068))))

(declare-fun b!2552524 () Bool)

(declare-fun res!1075089 () Bool)

(declare-fun e!1612807 () Bool)

(assert (=> b!2552524 (=> (not res!1075089) (not e!1612807))))

(declare-fun lt!903627 () Option!5906)

(assert (=> b!2552524 (= res!1075089 (matchR!3550 lt!903603 (_1!17328 (get!9287 lt!903627))))))

(declare-fun b!2552525 () Bool)

(declare-fun e!1612809 () Bool)

(assert (=> b!2552525 (= e!1612809 (not (isDefined!4728 lt!903627)))))

(declare-fun b!2552526 () Bool)

(assert (=> b!2552526 (= e!1612807 (= (++!7262 (_1!17328 (get!9287 lt!903627)) (_2!17328 (get!9287 lt!903627))) tl!4068))))

(declare-fun d!723546 () Bool)

(assert (=> d!723546 e!1612809))

(declare-fun res!1075091 () Bool)

(assert (=> d!723546 (=> res!1075091 e!1612809)))

(assert (=> d!723546 (= res!1075091 e!1612807)))

(declare-fun res!1075093 () Bool)

(assert (=> d!723546 (=> (not res!1075093) (not e!1612807))))

(assert (=> d!723546 (= res!1075093 (isDefined!4728 lt!903627))))

(assert (=> d!723546 (= lt!903627 e!1612808)))

(declare-fun c!409325 () Bool)

(declare-fun e!1612810 () Bool)

(assert (=> d!723546 (= c!409325 e!1612810)))

(declare-fun res!1075090 () Bool)

(assert (=> d!723546 (=> (not res!1075090) (not e!1612810))))

(assert (=> d!723546 (= res!1075090 (matchR!3550 lt!903603 Nil!29570))))

(assert (=> d!723546 (validRegex!3231 lt!903603)))

(assert (=> d!723546 (= (findConcatSeparation!928 lt!903603 (regTwo!15722 r!27340) Nil!29570 tl!4068 tl!4068) lt!903627)))

(declare-fun b!2552527 () Bool)

(declare-fun res!1075092 () Bool)

(assert (=> b!2552527 (=> (not res!1075092) (not e!1612807))))

(assert (=> b!2552527 (= res!1075092 (matchR!3550 (regTwo!15722 r!27340) (_2!17328 (get!9287 lt!903627))))))

(declare-fun b!2552528 () Bool)

(declare-fun lt!903626 () Unit!43395)

(declare-fun lt!903625 () Unit!43395)

(assert (=> b!2552528 (= lt!903626 lt!903625)))

(assert (=> b!2552528 (= (++!7262 (++!7262 Nil!29570 (Cons!29570 (h!34990 tl!4068) Nil!29570)) (t!211369 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!795 (List!29670 C!15368 List!29670 List!29670) Unit!43395)

(assert (=> b!2552528 (= lt!903625 (lemmaMoveElementToOtherListKeepsConcatEq!795 Nil!29570 (h!34990 tl!4068) (t!211369 tl!4068) tl!4068))))

(assert (=> b!2552528 (= e!1612811 (findConcatSeparation!928 lt!903603 (regTwo!15722 r!27340) (++!7262 Nil!29570 (Cons!29570 (h!34990 tl!4068) Nil!29570)) (t!211369 tl!4068) tl!4068))))

(declare-fun b!2552529 () Bool)

(assert (=> b!2552529 (= e!1612810 (matchR!3550 (regTwo!15722 r!27340) tl!4068))))

(declare-fun b!2552530 () Bool)

(assert (=> b!2552530 (= e!1612808 (Some!5905 (tuple2!29573 Nil!29570 tl!4068)))))

(declare-fun b!2552531 () Bool)

(assert (=> b!2552531 (= e!1612811 None!5905)))

(assert (= (and d!723546 res!1075090) b!2552529))

(assert (= (and d!723546 c!409325) b!2552530))

(assert (= (and d!723546 (not c!409325)) b!2552523))

(assert (= (and b!2552523 c!409326) b!2552531))

(assert (= (and b!2552523 (not c!409326)) b!2552528))

(assert (= (and d!723546 res!1075093) b!2552524))

(assert (= (and b!2552524 res!1075089) b!2552527))

(assert (= (and b!2552527 res!1075092) b!2552526))

(assert (= (and d!723546 (not res!1075091)) b!2552525))

(declare-fun m!2895069 () Bool)

(assert (=> b!2552527 m!2895069))

(declare-fun m!2895071 () Bool)

(assert (=> b!2552527 m!2895071))

(declare-fun m!2895073 () Bool)

(assert (=> b!2552529 m!2895073))

(declare-fun m!2895075 () Bool)

(assert (=> b!2552528 m!2895075))

(assert (=> b!2552528 m!2895075))

(declare-fun m!2895077 () Bool)

(assert (=> b!2552528 m!2895077))

(declare-fun m!2895079 () Bool)

(assert (=> b!2552528 m!2895079))

(assert (=> b!2552528 m!2895075))

(declare-fun m!2895081 () Bool)

(assert (=> b!2552528 m!2895081))

(declare-fun m!2895083 () Bool)

(assert (=> d!723546 m!2895083))

(declare-fun m!2895085 () Bool)

(assert (=> d!723546 m!2895085))

(assert (=> d!723546 m!2895047))

(assert (=> b!2552524 m!2895069))

(declare-fun m!2895087 () Bool)

(assert (=> b!2552524 m!2895087))

(assert (=> b!2552526 m!2895069))

(declare-fun m!2895089 () Bool)

(assert (=> b!2552526 m!2895089))

(assert (=> b!2552525 m!2895083))

(assert (=> b!2552484 d!723546))

(declare-fun b!2552560 () Bool)

(declare-fun res!1075108 () Bool)

(declare-fun e!1612826 () Bool)

(assert (=> b!2552560 (=> (not res!1075108) (not e!1612826))))

(declare-fun lt!903636 () List!29670)

(declare-fun size!22948 (List!29670) Int)

(assert (=> b!2552560 (= res!1075108 (= (size!22948 lt!903636) (+ (size!22948 (_1!17328 lt!903608)) (size!22948 (_2!17328 lt!903608)))))))

(declare-fun b!2552561 () Bool)

(assert (=> b!2552561 (= e!1612826 (or (not (= (_2!17328 lt!903608) Nil!29570)) (= lt!903636 (_1!17328 lt!903608))))))

(declare-fun b!2552558 () Bool)

(declare-fun e!1612827 () List!29670)

(assert (=> b!2552558 (= e!1612827 (_2!17328 lt!903608))))

(declare-fun d!723556 () Bool)

(assert (=> d!723556 e!1612826))

(declare-fun res!1075109 () Bool)

(assert (=> d!723556 (=> (not res!1075109) (not e!1612826))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4068 (List!29670) (InoxSet C!15368))

(assert (=> d!723556 (= res!1075109 (= (content!4068 lt!903636) ((_ map or) (content!4068 (_1!17328 lt!903608)) (content!4068 (_2!17328 lt!903608)))))))

(assert (=> d!723556 (= lt!903636 e!1612827)))

(declare-fun c!409333 () Bool)

(assert (=> d!723556 (= c!409333 ((_ is Nil!29570) (_1!17328 lt!903608)))))

(assert (=> d!723556 (= (++!7262 (_1!17328 lt!903608) (_2!17328 lt!903608)) lt!903636)))

(declare-fun b!2552559 () Bool)

(assert (=> b!2552559 (= e!1612827 (Cons!29570 (h!34990 (_1!17328 lt!903608)) (++!7262 (t!211369 (_1!17328 lt!903608)) (_2!17328 lt!903608))))))

(assert (= (and d!723556 c!409333) b!2552558))

(assert (= (and d!723556 (not c!409333)) b!2552559))

(assert (= (and d!723556 res!1075109) b!2552560))

(assert (= (and b!2552560 res!1075108) b!2552561))

(declare-fun m!2895091 () Bool)

(assert (=> b!2552560 m!2895091))

(declare-fun m!2895093 () Bool)

(assert (=> b!2552560 m!2895093))

(declare-fun m!2895095 () Bool)

(assert (=> b!2552560 m!2895095))

(declare-fun m!2895097 () Bool)

(assert (=> d!723556 m!2895097))

(declare-fun m!2895099 () Bool)

(assert (=> d!723556 m!2895099))

(declare-fun m!2895101 () Bool)

(assert (=> d!723556 m!2895101))

(declare-fun m!2895103 () Bool)

(assert (=> b!2552559 m!2895103))

(assert (=> b!2552484 d!723556))

(declare-fun d!723558 () Bool)

(assert (=> d!723558 (= (get!9287 lt!903610) (v!31846 lt!903610))))

(assert (=> b!2552484 d!723558))

(declare-fun d!723560 () Bool)

(assert (=> d!723560 (isDefined!4728 (findConcatSeparation!928 lt!903603 (regTwo!15722 r!27340) Nil!29570 tl!4068 tl!4068))))

(declare-fun lt!903642 () Unit!43395)

(declare-fun choose!15069 (Regex!7605 Regex!7605 List!29670) Unit!43395)

(assert (=> d!723560 (= lt!903642 (choose!15069 lt!903603 (regTwo!15722 r!27340) tl!4068))))

(assert (=> d!723560 (validRegex!3231 lt!903603)))

(assert (=> d!723560 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!210 lt!903603 (regTwo!15722 r!27340) tl!4068) lt!903642)))

(declare-fun bs!469644 () Bool)

(assert (= bs!469644 d!723560))

(assert (=> bs!469644 m!2895041))

(assert (=> bs!469644 m!2895041))

(declare-fun m!2895127 () Bool)

(assert (=> bs!469644 m!2895127))

(declare-fun m!2895129 () Bool)

(assert (=> bs!469644 m!2895129))

(assert (=> bs!469644 m!2895047))

(assert (=> b!2552484 d!723560))

(declare-fun d!723564 () Bool)

(declare-fun isEmpty!17019 (Option!5906) Bool)

(assert (=> d!723564 (= (isDefined!4728 lt!903610) (not (isEmpty!17019 lt!903610)))))

(declare-fun bs!469645 () Bool)

(assert (= bs!469645 d!723564))

(declare-fun m!2895131 () Bool)

(assert (=> bs!469645 m!2895131))

(assert (=> b!2552484 d!723564))

(declare-fun b!2552659 () Bool)

(declare-fun e!1612882 () Bool)

(declare-fun lt!903648 () Bool)

(declare-fun call!162615 () Bool)

(assert (=> b!2552659 (= e!1612882 (= lt!903648 call!162615))))

(declare-fun e!1612888 () Bool)

(declare-fun b!2552660 () Bool)

(declare-fun head!5812 (List!29670) C!15368)

(assert (=> b!2552660 (= e!1612888 (= (head!5812 (Cons!29570 c!14016 (_1!17328 lt!903608))) (c!409317 (regOne!15722 r!27340))))))

(declare-fun b!2552661 () Bool)

(declare-fun e!1612885 () Bool)

(declare-fun e!1612887 () Bool)

(assert (=> b!2552661 (= e!1612885 e!1612887)))

(declare-fun res!1075168 () Bool)

(assert (=> b!2552661 (=> res!1075168 e!1612887)))

(assert (=> b!2552661 (= res!1075168 call!162615)))

(declare-fun b!2552662 () Bool)

(declare-fun e!1612883 () Bool)

(assert (=> b!2552662 (= e!1612883 (not lt!903648))))

(declare-fun b!2552663 () Bool)

(declare-fun e!1612886 () Bool)

(assert (=> b!2552663 (= e!1612886 (nullable!2522 (regOne!15722 r!27340)))))

(declare-fun b!2552665 () Bool)

(declare-fun tail!4087 (List!29670) List!29670)

(assert (=> b!2552665 (= e!1612886 (matchR!3550 (derivativeStep!2174 (regOne!15722 r!27340) (head!5812 (Cons!29570 c!14016 (_1!17328 lt!903608)))) (tail!4087 (Cons!29570 c!14016 (_1!17328 lt!903608)))))))

(declare-fun b!2552666 () Bool)

(declare-fun e!1612884 () Bool)

(assert (=> b!2552666 (= e!1612884 e!1612885)))

(declare-fun res!1075170 () Bool)

(assert (=> b!2552666 (=> (not res!1075170) (not e!1612885))))

(assert (=> b!2552666 (= res!1075170 (not lt!903648))))

(declare-fun b!2552667 () Bool)

(declare-fun res!1075169 () Bool)

(assert (=> b!2552667 (=> res!1075169 e!1612884)))

(assert (=> b!2552667 (= res!1075169 e!1612888)))

(declare-fun res!1075167 () Bool)

(assert (=> b!2552667 (=> (not res!1075167) (not e!1612888))))

(assert (=> b!2552667 (= res!1075167 lt!903648)))

(declare-fun b!2552668 () Bool)

(assert (=> b!2552668 (= e!1612882 e!1612883)))

(declare-fun c!409356 () Bool)

(assert (=> b!2552668 (= c!409356 ((_ is EmptyLang!7605) (regOne!15722 r!27340)))))

(declare-fun bm!162610 () Bool)

(declare-fun isEmpty!17020 (List!29670) Bool)

(assert (=> bm!162610 (= call!162615 (isEmpty!17020 (Cons!29570 c!14016 (_1!17328 lt!903608))))))

(declare-fun b!2552669 () Bool)

(declare-fun res!1075172 () Bool)

(assert (=> b!2552669 (=> res!1075172 e!1612884)))

(assert (=> b!2552669 (= res!1075172 (not ((_ is ElementMatch!7605) (regOne!15722 r!27340))))))

(assert (=> b!2552669 (= e!1612883 e!1612884)))

(declare-fun b!2552670 () Bool)

(assert (=> b!2552670 (= e!1612887 (not (= (head!5812 (Cons!29570 c!14016 (_1!17328 lt!903608))) (c!409317 (regOne!15722 r!27340)))))))

(declare-fun b!2552671 () Bool)

(declare-fun res!1075171 () Bool)

(assert (=> b!2552671 (=> (not res!1075171) (not e!1612888))))

(assert (=> b!2552671 (= res!1075171 (isEmpty!17020 (tail!4087 (Cons!29570 c!14016 (_1!17328 lt!903608)))))))

(declare-fun b!2552672 () Bool)

(declare-fun res!1075165 () Bool)

(assert (=> b!2552672 (=> (not res!1075165) (not e!1612888))))

(assert (=> b!2552672 (= res!1075165 (not call!162615))))

(declare-fun d!723566 () Bool)

(assert (=> d!723566 e!1612882))

(declare-fun c!409357 () Bool)

(assert (=> d!723566 (= c!409357 ((_ is EmptyExpr!7605) (regOne!15722 r!27340)))))

(assert (=> d!723566 (= lt!903648 e!1612886)))

(declare-fun c!409355 () Bool)

(assert (=> d!723566 (= c!409355 (isEmpty!17020 (Cons!29570 c!14016 (_1!17328 lt!903608))))))

(assert (=> d!723566 (validRegex!3231 (regOne!15722 r!27340))))

(assert (=> d!723566 (= (matchR!3550 (regOne!15722 r!27340) (Cons!29570 c!14016 (_1!17328 lt!903608))) lt!903648)))

(declare-fun b!2552664 () Bool)

(declare-fun res!1075166 () Bool)

(assert (=> b!2552664 (=> res!1075166 e!1612887)))

(assert (=> b!2552664 (= res!1075166 (not (isEmpty!17020 (tail!4087 (Cons!29570 c!14016 (_1!17328 lt!903608))))))))

(assert (= (and d!723566 c!409355) b!2552663))

(assert (= (and d!723566 (not c!409355)) b!2552665))

(assert (= (and d!723566 c!409357) b!2552659))

(assert (= (and d!723566 (not c!409357)) b!2552668))

(assert (= (and b!2552668 c!409356) b!2552662))

(assert (= (and b!2552668 (not c!409356)) b!2552669))

(assert (= (and b!2552669 (not res!1075172)) b!2552667))

(assert (= (and b!2552667 res!1075167) b!2552672))

(assert (= (and b!2552672 res!1075165) b!2552671))

(assert (= (and b!2552671 res!1075171) b!2552660))

(assert (= (and b!2552667 (not res!1075169)) b!2552666))

(assert (= (and b!2552666 res!1075170) b!2552661))

(assert (= (and b!2552661 (not res!1075168)) b!2552664))

(assert (= (and b!2552664 (not res!1075166)) b!2552670))

(assert (= (or b!2552659 b!2552661 b!2552672) bm!162610))

(declare-fun m!2895147 () Bool)

(assert (=> b!2552671 m!2895147))

(assert (=> b!2552671 m!2895147))

(declare-fun m!2895149 () Bool)

(assert (=> b!2552671 m!2895149))

(declare-fun m!2895151 () Bool)

(assert (=> b!2552665 m!2895151))

(assert (=> b!2552665 m!2895151))

(declare-fun m!2895153 () Bool)

(assert (=> b!2552665 m!2895153))

(assert (=> b!2552665 m!2895147))

(assert (=> b!2552665 m!2895153))

(assert (=> b!2552665 m!2895147))

(declare-fun m!2895161 () Bool)

(assert (=> b!2552665 m!2895161))

(declare-fun m!2895163 () Bool)

(assert (=> bm!162610 m!2895163))

(assert (=> b!2552670 m!2895151))

(assert (=> b!2552664 m!2895147))

(assert (=> b!2552664 m!2895147))

(assert (=> b!2552664 m!2895149))

(assert (=> b!2552663 m!2895003))

(assert (=> d!723566 m!2895163))

(declare-fun m!2895165 () Bool)

(assert (=> d!723566 m!2895165))

(assert (=> b!2552660 m!2895151))

(assert (=> b!2552479 d!723566))

(declare-fun d!723572 () Bool)

(declare-fun nullableFct!747 (Regex!7605) Bool)

(assert (=> d!723572 (= (nullable!2522 (regOne!15722 r!27340)) (nullableFct!747 (regOne!15722 r!27340)))))

(declare-fun bs!469646 () Bool)

(assert (= bs!469646 d!723572))

(declare-fun m!2895173 () Bool)

(assert (=> bs!469646 m!2895173))

(assert (=> b!2552489 d!723572))

(declare-fun d!723574 () Bool)

(assert (=> d!723574 (= (nullable!2522 (derivative!300 (derivativeStep!2174 r!27340 c!14016) tl!4068)) (nullableFct!747 (derivative!300 (derivativeStep!2174 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469647 () Bool)

(assert (= bs!469647 d!723574))

(assert (=> bs!469647 m!2895031))

(declare-fun m!2895183 () Bool)

(assert (=> bs!469647 m!2895183))

(assert (=> b!2552480 d!723574))

(declare-fun d!723578 () Bool)

(declare-fun lt!903655 () Regex!7605)

(assert (=> d!723578 (validRegex!3231 lt!903655)))

(declare-fun e!1612914 () Regex!7605)

(assert (=> d!723578 (= lt!903655 e!1612914)))

(declare-fun c!409370 () Bool)

(assert (=> d!723578 (= c!409370 ((_ is Cons!29570) tl!4068))))

(assert (=> d!723578 (validRegex!3231 (derivativeStep!2174 r!27340 c!14016))))

(assert (=> d!723578 (= (derivative!300 (derivativeStep!2174 r!27340 c!14016) tl!4068) lt!903655)))

(declare-fun b!2552718 () Bool)

(assert (=> b!2552718 (= e!1612914 (derivative!300 (derivativeStep!2174 (derivativeStep!2174 r!27340 c!14016) (h!34990 tl!4068)) (t!211369 tl!4068)))))

(declare-fun b!2552719 () Bool)

(assert (=> b!2552719 (= e!1612914 (derivativeStep!2174 r!27340 c!14016))))

(assert (= (and d!723578 c!409370) b!2552718))

(assert (= (and d!723578 (not c!409370)) b!2552719))

(declare-fun m!2895203 () Bool)

(assert (=> d!723578 m!2895203))

(assert (=> d!723578 m!2895029))

(declare-fun m!2895205 () Bool)

(assert (=> d!723578 m!2895205))

(assert (=> b!2552718 m!2895029))

(declare-fun m!2895207 () Bool)

(assert (=> b!2552718 m!2895207))

(assert (=> b!2552718 m!2895207))

(declare-fun m!2895209 () Bool)

(assert (=> b!2552718 m!2895209))

(assert (=> b!2552480 d!723578))

(declare-fun d!723584 () Bool)

(declare-fun lt!903668 () Regex!7605)

(assert (=> d!723584 (validRegex!3231 lt!903668)))

(declare-fun e!1612977 () Regex!7605)

(assert (=> d!723584 (= lt!903668 e!1612977)))

(declare-fun c!409411 () Bool)

(assert (=> d!723584 (= c!409411 (or ((_ is EmptyExpr!7605) r!27340) ((_ is EmptyLang!7605) r!27340)))))

(assert (=> d!723584 (validRegex!3231 r!27340)))

(assert (=> d!723584 (= (derivativeStep!2174 r!27340 c!14016) lt!903668)))

(declare-fun b!2552829 () Bool)

(declare-fun e!1612978 () Regex!7605)

(assert (=> b!2552829 (= e!1612978 (ite (= c!14016 (c!409317 r!27340)) EmptyExpr!7605 EmptyLang!7605))))

(declare-fun call!162648 () Regex!7605)

(declare-fun c!409412 () Bool)

(declare-fun bm!162642 () Bool)

(assert (=> bm!162642 (= call!162648 (derivativeStep!2174 (ite c!409412 (regOne!15723 r!27340) (regTwo!15722 r!27340)) c!14016))))

(declare-fun b!2552830 () Bool)

(declare-fun e!1612976 () Regex!7605)

(declare-fun call!162649 () Regex!7605)

(assert (=> b!2552830 (= e!1612976 (Concat!12301 call!162649 r!27340))))

(declare-fun b!2552831 () Bool)

(assert (=> b!2552831 (= e!1612977 EmptyLang!7605)))

(declare-fun bm!162643 () Bool)

(declare-fun call!162647 () Regex!7605)

(assert (=> bm!162643 (= call!162649 call!162647)))

(declare-fun b!2552832 () Bool)

(declare-fun c!409410 () Bool)

(assert (=> b!2552832 (= c!409410 (nullable!2522 (regOne!15722 r!27340)))))

(declare-fun e!1612979 () Regex!7605)

(assert (=> b!2552832 (= e!1612976 e!1612979)))

(declare-fun c!409409 () Bool)

(declare-fun bm!162644 () Bool)

(assert (=> bm!162644 (= call!162647 (derivativeStep!2174 (ite c!409412 (regTwo!15723 r!27340) (ite c!409409 (reg!7934 r!27340) (regOne!15722 r!27340))) c!14016))))

(declare-fun b!2552833 () Bool)

(assert (=> b!2552833 (= e!1612977 e!1612978)))

(declare-fun c!409408 () Bool)

(assert (=> b!2552833 (= c!409408 ((_ is ElementMatch!7605) r!27340))))

(declare-fun b!2552834 () Bool)

(assert (=> b!2552834 (= c!409412 ((_ is Union!7605) r!27340))))

(declare-fun e!1612975 () Regex!7605)

(assert (=> b!2552834 (= e!1612978 e!1612975)))

(declare-fun b!2552835 () Bool)

(assert (=> b!2552835 (= e!1612975 e!1612976)))

(assert (=> b!2552835 (= c!409409 ((_ is Star!7605) r!27340))))

(declare-fun call!162650 () Regex!7605)

(declare-fun b!2552836 () Bool)

(assert (=> b!2552836 (= e!1612979 (Union!7605 (Concat!12301 call!162650 (regTwo!15722 r!27340)) call!162648))))

(declare-fun b!2552837 () Bool)

(assert (=> b!2552837 (= e!1612979 (Union!7605 (Concat!12301 call!162650 (regTwo!15722 r!27340)) EmptyLang!7605))))

(declare-fun b!2552838 () Bool)

(assert (=> b!2552838 (= e!1612975 (Union!7605 call!162648 call!162647))))

(declare-fun bm!162645 () Bool)

(assert (=> bm!162645 (= call!162650 call!162649)))

(assert (= (and d!723584 c!409411) b!2552831))

(assert (= (and d!723584 (not c!409411)) b!2552833))

(assert (= (and b!2552833 c!409408) b!2552829))

(assert (= (and b!2552833 (not c!409408)) b!2552834))

(assert (= (and b!2552834 c!409412) b!2552838))

(assert (= (and b!2552834 (not c!409412)) b!2552835))

(assert (= (and b!2552835 c!409409) b!2552830))

(assert (= (and b!2552835 (not c!409409)) b!2552832))

(assert (= (and b!2552832 c!409410) b!2552836))

(assert (= (and b!2552832 (not c!409410)) b!2552837))

(assert (= (or b!2552836 b!2552837) bm!162645))

(assert (= (or b!2552830 bm!162645) bm!162643))

(assert (= (or b!2552838 bm!162643) bm!162644))

(assert (= (or b!2552838 b!2552836) bm!162642))

(declare-fun m!2895281 () Bool)

(assert (=> d!723584 m!2895281))

(assert (=> d!723584 m!2895035))

(declare-fun m!2895285 () Bool)

(assert (=> bm!162642 m!2895285))

(assert (=> b!2552832 m!2895003))

(declare-fun m!2895287 () Bool)

(assert (=> bm!162644 m!2895287))

(assert (=> b!2552480 d!723584))

(declare-fun b!2552855 () Bool)

(declare-fun e!1612988 () Bool)

(declare-fun lt!903671 () Bool)

(declare-fun call!162653 () Bool)

(assert (=> b!2552855 (= e!1612988 (= lt!903671 call!162653))))

(declare-fun b!2552856 () Bool)

(declare-fun e!1612999 () Bool)

(assert (=> b!2552856 (= e!1612999 (= (head!5812 tl!4068) (c!409317 lt!903604)))))

(declare-fun b!2552857 () Bool)

(declare-fun e!1612994 () Bool)

(declare-fun e!1612997 () Bool)

(assert (=> b!2552857 (= e!1612994 e!1612997)))

(declare-fun res!1075240 () Bool)

(assert (=> b!2552857 (=> res!1075240 e!1612997)))

(assert (=> b!2552857 (= res!1075240 call!162653)))

(declare-fun b!2552859 () Bool)

(declare-fun e!1612989 () Bool)

(assert (=> b!2552859 (= e!1612989 (not lt!903671))))

(declare-fun b!2552860 () Bool)

(declare-fun e!1612996 () Bool)

(assert (=> b!2552860 (= e!1612996 (nullable!2522 lt!903604))))

(declare-fun b!2552863 () Bool)

(assert (=> b!2552863 (= e!1612996 (matchR!3550 (derivativeStep!2174 lt!903604 (head!5812 tl!4068)) (tail!4087 tl!4068)))))

(declare-fun b!2552865 () Bool)

(declare-fun e!1612992 () Bool)

(assert (=> b!2552865 (= e!1612992 e!1612994)))

(declare-fun res!1075242 () Bool)

(assert (=> b!2552865 (=> (not res!1075242) (not e!1612994))))

(assert (=> b!2552865 (= res!1075242 (not lt!903671))))

(declare-fun b!2552867 () Bool)

(declare-fun res!1075241 () Bool)

(assert (=> b!2552867 (=> res!1075241 e!1612992)))

(assert (=> b!2552867 (= res!1075241 e!1612999)))

(declare-fun res!1075239 () Bool)

(assert (=> b!2552867 (=> (not res!1075239) (not e!1612999))))

(assert (=> b!2552867 (= res!1075239 lt!903671)))

(declare-fun b!2552869 () Bool)

(assert (=> b!2552869 (= e!1612988 e!1612989)))

(declare-fun c!409419 () Bool)

(assert (=> b!2552869 (= c!409419 ((_ is EmptyLang!7605) lt!903604))))

(declare-fun bm!162649 () Bool)

(assert (=> bm!162649 (= call!162653 (isEmpty!17020 tl!4068))))

(declare-fun b!2552872 () Bool)

(declare-fun res!1075244 () Bool)

(assert (=> b!2552872 (=> res!1075244 e!1612992)))

(assert (=> b!2552872 (= res!1075244 (not ((_ is ElementMatch!7605) lt!903604)))))

(assert (=> b!2552872 (= e!1612989 e!1612992)))

(declare-fun b!2552873 () Bool)

(assert (=> b!2552873 (= e!1612997 (not (= (head!5812 tl!4068) (c!409317 lt!903604))))))

(declare-fun b!2552875 () Bool)

(declare-fun res!1075243 () Bool)

(assert (=> b!2552875 (=> (not res!1075243) (not e!1612999))))

(assert (=> b!2552875 (= res!1075243 (isEmpty!17020 (tail!4087 tl!4068)))))

(declare-fun b!2552877 () Bool)

(declare-fun res!1075237 () Bool)

(assert (=> b!2552877 (=> (not res!1075237) (not e!1612999))))

(assert (=> b!2552877 (= res!1075237 (not call!162653))))

(declare-fun d!723604 () Bool)

(assert (=> d!723604 e!1612988))

(declare-fun c!409420 () Bool)

(assert (=> d!723604 (= c!409420 ((_ is EmptyExpr!7605) lt!903604))))

(assert (=> d!723604 (= lt!903671 e!1612996)))

(declare-fun c!409417 () Bool)

(assert (=> d!723604 (= c!409417 (isEmpty!17020 tl!4068))))

(assert (=> d!723604 (validRegex!3231 lt!903604)))

(assert (=> d!723604 (= (matchR!3550 lt!903604 tl!4068) lt!903671)))

(declare-fun b!2552861 () Bool)

(declare-fun res!1075238 () Bool)

(assert (=> b!2552861 (=> res!1075238 e!1612997)))

(assert (=> b!2552861 (= res!1075238 (not (isEmpty!17020 (tail!4087 tl!4068))))))

(assert (= (and d!723604 c!409417) b!2552860))

(assert (= (and d!723604 (not c!409417)) b!2552863))

(assert (= (and d!723604 c!409420) b!2552855))

(assert (= (and d!723604 (not c!409420)) b!2552869))

(assert (= (and b!2552869 c!409419) b!2552859))

(assert (= (and b!2552869 (not c!409419)) b!2552872))

(assert (= (and b!2552872 (not res!1075244)) b!2552867))

(assert (= (and b!2552867 res!1075239) b!2552877))

(assert (= (and b!2552877 res!1075237) b!2552875))

(assert (= (and b!2552875 res!1075243) b!2552856))

(assert (= (and b!2552867 (not res!1075241)) b!2552865))

(assert (= (and b!2552865 res!1075242) b!2552857))

(assert (= (and b!2552857 (not res!1075240)) b!2552861))

(assert (= (and b!2552861 (not res!1075238)) b!2552873))

(assert (= (or b!2552855 b!2552857 b!2552877) bm!162649))

(declare-fun m!2895311 () Bool)

(assert (=> b!2552875 m!2895311))

(assert (=> b!2552875 m!2895311))

(declare-fun m!2895313 () Bool)

(assert (=> b!2552875 m!2895313))

(declare-fun m!2895315 () Bool)

(assert (=> b!2552863 m!2895315))

(assert (=> b!2552863 m!2895315))

(declare-fun m!2895317 () Bool)

(assert (=> b!2552863 m!2895317))

(assert (=> b!2552863 m!2895311))

(assert (=> b!2552863 m!2895317))

(assert (=> b!2552863 m!2895311))

(declare-fun m!2895319 () Bool)

(assert (=> b!2552863 m!2895319))

(declare-fun m!2895321 () Bool)

(assert (=> bm!162649 m!2895321))

(assert (=> b!2552873 m!2895315))

(assert (=> b!2552861 m!2895311))

(assert (=> b!2552861 m!2895311))

(assert (=> b!2552861 m!2895313))

(declare-fun m!2895323 () Bool)

(assert (=> b!2552860 m!2895323))

(assert (=> d!723604 m!2895321))

(declare-fun m!2895325 () Bool)

(assert (=> d!723604 m!2895325))

(assert (=> b!2552856 m!2895315))

(assert (=> b!2552491 d!723604))

(declare-fun b!2552889 () Bool)

(declare-fun e!1613005 () Bool)

(declare-fun lt!903674 () Bool)

(declare-fun call!162661 () Bool)

(assert (=> b!2552889 (= e!1613005 (= lt!903674 call!162661))))

(declare-fun b!2552890 () Bool)

(declare-fun e!1613011 () Bool)

(assert (=> b!2552890 (= e!1613011 (= (head!5812 (_2!17328 lt!903608)) (c!409317 (regTwo!15722 r!27340))))))

(declare-fun b!2552891 () Bool)

(declare-fun e!1613008 () Bool)

(declare-fun e!1613010 () Bool)

(assert (=> b!2552891 (= e!1613008 e!1613010)))

(declare-fun res!1075248 () Bool)

(assert (=> b!2552891 (=> res!1075248 e!1613010)))

(assert (=> b!2552891 (= res!1075248 call!162661)))

(declare-fun b!2552892 () Bool)

(declare-fun e!1613006 () Bool)

(assert (=> b!2552892 (= e!1613006 (not lt!903674))))

(declare-fun b!2552893 () Bool)

(declare-fun e!1613009 () Bool)

(assert (=> b!2552893 (= e!1613009 (nullable!2522 (regTwo!15722 r!27340)))))

(declare-fun b!2552895 () Bool)

(assert (=> b!2552895 (= e!1613009 (matchR!3550 (derivativeStep!2174 (regTwo!15722 r!27340) (head!5812 (_2!17328 lt!903608))) (tail!4087 (_2!17328 lt!903608))))))

(declare-fun b!2552896 () Bool)

(declare-fun e!1613007 () Bool)

(assert (=> b!2552896 (= e!1613007 e!1613008)))

(declare-fun res!1075250 () Bool)

(assert (=> b!2552896 (=> (not res!1075250) (not e!1613008))))

(assert (=> b!2552896 (= res!1075250 (not lt!903674))))

(declare-fun b!2552897 () Bool)

(declare-fun res!1075249 () Bool)

(assert (=> b!2552897 (=> res!1075249 e!1613007)))

(assert (=> b!2552897 (= res!1075249 e!1613011)))

(declare-fun res!1075247 () Bool)

(assert (=> b!2552897 (=> (not res!1075247) (not e!1613011))))

(assert (=> b!2552897 (= res!1075247 lt!903674)))

(declare-fun b!2552898 () Bool)

(assert (=> b!2552898 (= e!1613005 e!1613006)))

(declare-fun c!409431 () Bool)

(assert (=> b!2552898 (= c!409431 ((_ is EmptyLang!7605) (regTwo!15722 r!27340)))))

(declare-fun bm!162656 () Bool)

(assert (=> bm!162656 (= call!162661 (isEmpty!17020 (_2!17328 lt!903608)))))

(declare-fun b!2552899 () Bool)

(declare-fun res!1075252 () Bool)

(assert (=> b!2552899 (=> res!1075252 e!1613007)))

(assert (=> b!2552899 (= res!1075252 (not ((_ is ElementMatch!7605) (regTwo!15722 r!27340))))))

(assert (=> b!2552899 (= e!1613006 e!1613007)))

(declare-fun b!2552900 () Bool)

(assert (=> b!2552900 (= e!1613010 (not (= (head!5812 (_2!17328 lt!903608)) (c!409317 (regTwo!15722 r!27340)))))))

(declare-fun b!2552901 () Bool)

(declare-fun res!1075251 () Bool)

(assert (=> b!2552901 (=> (not res!1075251) (not e!1613011))))

(assert (=> b!2552901 (= res!1075251 (isEmpty!17020 (tail!4087 (_2!17328 lt!903608))))))

(declare-fun b!2552902 () Bool)

(declare-fun res!1075245 () Bool)

(assert (=> b!2552902 (=> (not res!1075245) (not e!1613011))))

(assert (=> b!2552902 (= res!1075245 (not call!162661))))

(declare-fun d!723612 () Bool)

(assert (=> d!723612 e!1613005))

(declare-fun c!409432 () Bool)

(assert (=> d!723612 (= c!409432 ((_ is EmptyExpr!7605) (regTwo!15722 r!27340)))))

(assert (=> d!723612 (= lt!903674 e!1613009)))

(declare-fun c!409430 () Bool)

(assert (=> d!723612 (= c!409430 (isEmpty!17020 (_2!17328 lt!903608)))))

(assert (=> d!723612 (validRegex!3231 (regTwo!15722 r!27340))))

(assert (=> d!723612 (= (matchR!3550 (regTwo!15722 r!27340) (_2!17328 lt!903608)) lt!903674)))

(declare-fun b!2552894 () Bool)

(declare-fun res!1075246 () Bool)

(assert (=> b!2552894 (=> res!1075246 e!1613010)))

(assert (=> b!2552894 (= res!1075246 (not (isEmpty!17020 (tail!4087 (_2!17328 lt!903608)))))))

(assert (= (and d!723612 c!409430) b!2552893))

(assert (= (and d!723612 (not c!409430)) b!2552895))

(assert (= (and d!723612 c!409432) b!2552889))

(assert (= (and d!723612 (not c!409432)) b!2552898))

(assert (= (and b!2552898 c!409431) b!2552892))

(assert (= (and b!2552898 (not c!409431)) b!2552899))

(assert (= (and b!2552899 (not res!1075252)) b!2552897))

(assert (= (and b!2552897 res!1075247) b!2552902))

(assert (= (and b!2552902 res!1075245) b!2552901))

(assert (= (and b!2552901 res!1075251) b!2552890))

(assert (= (and b!2552897 (not res!1075249)) b!2552896))

(assert (= (and b!2552896 res!1075250) b!2552891))

(assert (= (and b!2552891 (not res!1075248)) b!2552894))

(assert (= (and b!2552894 (not res!1075246)) b!2552900))

(assert (= (or b!2552889 b!2552891 b!2552902) bm!162656))

(declare-fun m!2895327 () Bool)

(assert (=> b!2552901 m!2895327))

(assert (=> b!2552901 m!2895327))

(declare-fun m!2895329 () Bool)

(assert (=> b!2552901 m!2895329))

(declare-fun m!2895331 () Bool)

(assert (=> b!2552895 m!2895331))

(assert (=> b!2552895 m!2895331))

(declare-fun m!2895333 () Bool)

(assert (=> b!2552895 m!2895333))

(assert (=> b!2552895 m!2895327))

(assert (=> b!2552895 m!2895333))

(assert (=> b!2552895 m!2895327))

(declare-fun m!2895337 () Bool)

(assert (=> b!2552895 m!2895337))

(declare-fun m!2895339 () Bool)

(assert (=> bm!162656 m!2895339))

(assert (=> b!2552900 m!2895331))

(assert (=> b!2552894 m!2895327))

(assert (=> b!2552894 m!2895327))

(assert (=> b!2552894 m!2895329))

(declare-fun m!2895341 () Bool)

(assert (=> b!2552893 m!2895341))

(assert (=> d!723612 m!2895339))

(declare-fun m!2895343 () Bool)

(assert (=> d!723612 m!2895343))

(assert (=> b!2552890 m!2895331))

(assert (=> b!2552487 d!723612))

(declare-fun b!2552913 () Bool)

(declare-fun e!1613014 () Bool)

(declare-fun lt!903678 () Bool)

(declare-fun call!162662 () Bool)

(assert (=> b!2552913 (= e!1613014 (= lt!903678 call!162662))))

(declare-fun b!2552914 () Bool)

(declare-fun e!1613020 () Bool)

(assert (=> b!2552914 (= e!1613020 (= (head!5812 (_1!17328 lt!903608)) (c!409317 lt!903603)))))

(declare-fun b!2552915 () Bool)

(declare-fun e!1613017 () Bool)

(declare-fun e!1613019 () Bool)

(assert (=> b!2552915 (= e!1613017 e!1613019)))

(declare-fun res!1075256 () Bool)

(assert (=> b!2552915 (=> res!1075256 e!1613019)))

(assert (=> b!2552915 (= res!1075256 call!162662)))

(declare-fun b!2552916 () Bool)

(declare-fun e!1613015 () Bool)

(assert (=> b!2552916 (= e!1613015 (not lt!903678))))

(declare-fun b!2552917 () Bool)

(declare-fun e!1613018 () Bool)

(assert (=> b!2552917 (= e!1613018 (nullable!2522 lt!903603))))

(declare-fun b!2552919 () Bool)

(assert (=> b!2552919 (= e!1613018 (matchR!3550 (derivativeStep!2174 lt!903603 (head!5812 (_1!17328 lt!903608))) (tail!4087 (_1!17328 lt!903608))))))

(declare-fun b!2552920 () Bool)

(declare-fun e!1613016 () Bool)

(assert (=> b!2552920 (= e!1613016 e!1613017)))

(declare-fun res!1075258 () Bool)

(assert (=> b!2552920 (=> (not res!1075258) (not e!1613017))))

(assert (=> b!2552920 (= res!1075258 (not lt!903678))))

(declare-fun b!2552921 () Bool)

(declare-fun res!1075257 () Bool)

(assert (=> b!2552921 (=> res!1075257 e!1613016)))

(assert (=> b!2552921 (= res!1075257 e!1613020)))

(declare-fun res!1075255 () Bool)

(assert (=> b!2552921 (=> (not res!1075255) (not e!1613020))))

(assert (=> b!2552921 (= res!1075255 lt!903678)))

(declare-fun b!2552922 () Bool)

(assert (=> b!2552922 (= e!1613014 e!1613015)))

(declare-fun c!409434 () Bool)

(assert (=> b!2552922 (= c!409434 ((_ is EmptyLang!7605) lt!903603))))

(declare-fun bm!162657 () Bool)

(assert (=> bm!162657 (= call!162662 (isEmpty!17020 (_1!17328 lt!903608)))))

(declare-fun b!2552923 () Bool)

(declare-fun res!1075260 () Bool)

(assert (=> b!2552923 (=> res!1075260 e!1613016)))

(assert (=> b!2552923 (= res!1075260 (not ((_ is ElementMatch!7605) lt!903603)))))

(assert (=> b!2552923 (= e!1613015 e!1613016)))

(declare-fun b!2552924 () Bool)

(assert (=> b!2552924 (= e!1613019 (not (= (head!5812 (_1!17328 lt!903608)) (c!409317 lt!903603))))))

(declare-fun b!2552925 () Bool)

(declare-fun res!1075259 () Bool)

(assert (=> b!2552925 (=> (not res!1075259) (not e!1613020))))

(assert (=> b!2552925 (= res!1075259 (isEmpty!17020 (tail!4087 (_1!17328 lt!903608))))))

(declare-fun b!2552926 () Bool)

(declare-fun res!1075253 () Bool)

(assert (=> b!2552926 (=> (not res!1075253) (not e!1613020))))

(assert (=> b!2552926 (= res!1075253 (not call!162662))))

(declare-fun d!723614 () Bool)

(assert (=> d!723614 e!1613014))

(declare-fun c!409435 () Bool)

(assert (=> d!723614 (= c!409435 ((_ is EmptyExpr!7605) lt!903603))))

(assert (=> d!723614 (= lt!903678 e!1613018)))

(declare-fun c!409433 () Bool)

(assert (=> d!723614 (= c!409433 (isEmpty!17020 (_1!17328 lt!903608)))))

(assert (=> d!723614 (validRegex!3231 lt!903603)))

(assert (=> d!723614 (= (matchR!3550 lt!903603 (_1!17328 lt!903608)) lt!903678)))

(declare-fun b!2552918 () Bool)

(declare-fun res!1075254 () Bool)

(assert (=> b!2552918 (=> res!1075254 e!1613019)))

(assert (=> b!2552918 (= res!1075254 (not (isEmpty!17020 (tail!4087 (_1!17328 lt!903608)))))))

(assert (= (and d!723614 c!409433) b!2552917))

(assert (= (and d!723614 (not c!409433)) b!2552919))

(assert (= (and d!723614 c!409435) b!2552913))

(assert (= (and d!723614 (not c!409435)) b!2552922))

(assert (= (and b!2552922 c!409434) b!2552916))

(assert (= (and b!2552922 (not c!409434)) b!2552923))

(assert (= (and b!2552923 (not res!1075260)) b!2552921))

(assert (= (and b!2552921 res!1075255) b!2552926))

(assert (= (and b!2552926 res!1075253) b!2552925))

(assert (= (and b!2552925 res!1075259) b!2552914))

(assert (= (and b!2552921 (not res!1075257)) b!2552920))

(assert (= (and b!2552920 res!1075258) b!2552915))

(assert (= (and b!2552915 (not res!1075256)) b!2552918))

(assert (= (and b!2552918 (not res!1075254)) b!2552924))

(assert (= (or b!2552913 b!2552915 b!2552926) bm!162657))

(declare-fun m!2895345 () Bool)

(assert (=> b!2552925 m!2895345))

(assert (=> b!2552925 m!2895345))

(declare-fun m!2895347 () Bool)

(assert (=> b!2552925 m!2895347))

(declare-fun m!2895349 () Bool)

(assert (=> b!2552919 m!2895349))

(assert (=> b!2552919 m!2895349))

(declare-fun m!2895351 () Bool)

(assert (=> b!2552919 m!2895351))

(assert (=> b!2552919 m!2895345))

(assert (=> b!2552919 m!2895351))

(assert (=> b!2552919 m!2895345))

(declare-fun m!2895353 () Bool)

(assert (=> b!2552919 m!2895353))

(declare-fun m!2895355 () Bool)

(assert (=> bm!162657 m!2895355))

(assert (=> b!2552924 m!2895349))

(assert (=> b!2552918 m!2895345))

(assert (=> b!2552918 m!2895345))

(assert (=> b!2552918 m!2895347))

(declare-fun m!2895357 () Bool)

(assert (=> b!2552917 m!2895357))

(assert (=> d!723614 m!2895355))

(assert (=> d!723614 m!2895047))

(assert (=> b!2552914 m!2895349))

(assert (=> b!2552481 d!723614))

(declare-fun b!2552970 () Bool)

(declare-fun e!1613044 () Bool)

(declare-fun call!162670 () Bool)

(assert (=> b!2552970 (= e!1613044 call!162670)))

(declare-fun b!2552971 () Bool)

(declare-fun e!1613047 () Bool)

(declare-fun e!1613046 () Bool)

(assert (=> b!2552971 (= e!1613047 e!1613046)))

(declare-fun c!409441 () Bool)

(assert (=> b!2552971 (= c!409441 ((_ is Star!7605) lt!903603))))

(declare-fun b!2552972 () Bool)

(declare-fun e!1613048 () Bool)

(declare-fun call!162669 () Bool)

(assert (=> b!2552972 (= e!1613048 call!162669)))

(declare-fun b!2552973 () Bool)

(declare-fun res!1075271 () Bool)

(assert (=> b!2552973 (=> (not res!1075271) (not e!1613044))))

(declare-fun call!162671 () Bool)

(assert (=> b!2552973 (= res!1075271 call!162671)))

(declare-fun e!1613049 () Bool)

(assert (=> b!2552973 (= e!1613049 e!1613044)))

(declare-fun bm!162664 () Bool)

(declare-fun c!409440 () Bool)

(assert (=> bm!162664 (= call!162671 (validRegex!3231 (ite c!409440 (regOne!15723 lt!903603) (regTwo!15722 lt!903603))))))

(declare-fun bm!162665 () Bool)

(assert (=> bm!162665 (= call!162670 call!162669)))

(declare-fun b!2552974 () Bool)

(declare-fun res!1075272 () Bool)

(declare-fun e!1613045 () Bool)

(assert (=> b!2552974 (=> res!1075272 e!1613045)))

(assert (=> b!2552974 (= res!1075272 (not ((_ is Concat!12301) lt!903603)))))

(assert (=> b!2552974 (= e!1613049 e!1613045)))

(declare-fun d!723616 () Bool)

(declare-fun res!1075273 () Bool)

(assert (=> d!723616 (=> res!1075273 e!1613047)))

(assert (=> d!723616 (= res!1075273 ((_ is ElementMatch!7605) lt!903603))))

(assert (=> d!723616 (= (validRegex!3231 lt!903603) e!1613047)))

(declare-fun bm!162666 () Bool)

(assert (=> bm!162666 (= call!162669 (validRegex!3231 (ite c!409441 (reg!7934 lt!903603) (ite c!409440 (regTwo!15723 lt!903603) (regOne!15722 lt!903603)))))))

(declare-fun b!2552975 () Bool)

(assert (=> b!2552975 (= e!1613046 e!1613048)))

(declare-fun res!1075275 () Bool)

(assert (=> b!2552975 (= res!1075275 (not (nullable!2522 (reg!7934 lt!903603))))))

(assert (=> b!2552975 (=> (not res!1075275) (not e!1613048))))

(declare-fun b!2552976 () Bool)

(assert (=> b!2552976 (= e!1613046 e!1613049)))

(assert (=> b!2552976 (= c!409440 ((_ is Union!7605) lt!903603))))

(declare-fun b!2552977 () Bool)

(declare-fun e!1613043 () Bool)

(assert (=> b!2552977 (= e!1613045 e!1613043)))

(declare-fun res!1075274 () Bool)

(assert (=> b!2552977 (=> (not res!1075274) (not e!1613043))))

(assert (=> b!2552977 (= res!1075274 call!162670)))

(declare-fun b!2552978 () Bool)

(assert (=> b!2552978 (= e!1613043 call!162671)))

(assert (= (and d!723616 (not res!1075273)) b!2552971))

(assert (= (and b!2552971 c!409441) b!2552975))

(assert (= (and b!2552971 (not c!409441)) b!2552976))

(assert (= (and b!2552975 res!1075275) b!2552972))

(assert (= (and b!2552976 c!409440) b!2552973))

(assert (= (and b!2552976 (not c!409440)) b!2552974))

(assert (= (and b!2552973 res!1075271) b!2552970))

(assert (= (and b!2552974 (not res!1075272)) b!2552977))

(assert (= (and b!2552977 res!1075274) b!2552978))

(assert (= (or b!2552973 b!2552978) bm!162664))

(assert (= (or b!2552970 b!2552977) bm!162665))

(assert (= (or b!2552972 bm!162665) bm!162666))

(declare-fun m!2895359 () Bool)

(assert (=> bm!162664 m!2895359))

(declare-fun m!2895361 () Bool)

(assert (=> bm!162666 m!2895361))

(declare-fun m!2895363 () Bool)

(assert (=> b!2552975 m!2895363))

(assert (=> b!2552488 d!723616))

(declare-fun b!2552979 () Bool)

(declare-fun e!1613050 () Bool)

(declare-fun lt!903679 () Bool)

(declare-fun call!162672 () Bool)

(assert (=> b!2552979 (= e!1613050 (= lt!903679 call!162672))))

(declare-fun b!2552980 () Bool)

(declare-fun e!1613056 () Bool)

(assert (=> b!2552980 (= e!1613056 (= (head!5812 Nil!29570) (c!409317 (derivative!300 lt!903607 tl!4068))))))

(declare-fun b!2552981 () Bool)

(declare-fun e!1613053 () Bool)

(declare-fun e!1613055 () Bool)

(assert (=> b!2552981 (= e!1613053 e!1613055)))

(declare-fun res!1075279 () Bool)

(assert (=> b!2552981 (=> res!1075279 e!1613055)))

(assert (=> b!2552981 (= res!1075279 call!162672)))

(declare-fun b!2552982 () Bool)

(declare-fun e!1613051 () Bool)

(assert (=> b!2552982 (= e!1613051 (not lt!903679))))

(declare-fun b!2552983 () Bool)

(declare-fun e!1613054 () Bool)

(assert (=> b!2552983 (= e!1613054 (nullable!2522 (derivative!300 lt!903607 tl!4068)))))

(declare-fun b!2552985 () Bool)

(assert (=> b!2552985 (= e!1613054 (matchR!3550 (derivativeStep!2174 (derivative!300 lt!903607 tl!4068) (head!5812 Nil!29570)) (tail!4087 Nil!29570)))))

(declare-fun b!2552986 () Bool)

(declare-fun e!1613052 () Bool)

(assert (=> b!2552986 (= e!1613052 e!1613053)))

(declare-fun res!1075281 () Bool)

(assert (=> b!2552986 (=> (not res!1075281) (not e!1613053))))

(assert (=> b!2552986 (= res!1075281 (not lt!903679))))

(declare-fun b!2552987 () Bool)

(declare-fun res!1075280 () Bool)

(assert (=> b!2552987 (=> res!1075280 e!1613052)))

(assert (=> b!2552987 (= res!1075280 e!1613056)))

(declare-fun res!1075278 () Bool)

(assert (=> b!2552987 (=> (not res!1075278) (not e!1613056))))

(assert (=> b!2552987 (= res!1075278 lt!903679)))

(declare-fun b!2552988 () Bool)

(assert (=> b!2552988 (= e!1613050 e!1613051)))

(declare-fun c!409443 () Bool)

(assert (=> b!2552988 (= c!409443 ((_ is EmptyLang!7605) (derivative!300 lt!903607 tl!4068)))))

(declare-fun bm!162667 () Bool)

(assert (=> bm!162667 (= call!162672 (isEmpty!17020 Nil!29570))))

(declare-fun b!2552989 () Bool)

(declare-fun res!1075283 () Bool)

(assert (=> b!2552989 (=> res!1075283 e!1613052)))

(assert (=> b!2552989 (= res!1075283 (not ((_ is ElementMatch!7605) (derivative!300 lt!903607 tl!4068))))))

(assert (=> b!2552989 (= e!1613051 e!1613052)))

(declare-fun b!2552990 () Bool)

(assert (=> b!2552990 (= e!1613055 (not (= (head!5812 Nil!29570) (c!409317 (derivative!300 lt!903607 tl!4068)))))))

(declare-fun b!2552991 () Bool)

(declare-fun res!1075282 () Bool)

(assert (=> b!2552991 (=> (not res!1075282) (not e!1613056))))

(assert (=> b!2552991 (= res!1075282 (isEmpty!17020 (tail!4087 Nil!29570)))))

(declare-fun b!2552992 () Bool)

(declare-fun res!1075276 () Bool)

(assert (=> b!2552992 (=> (not res!1075276) (not e!1613056))))

(assert (=> b!2552992 (= res!1075276 (not call!162672))))

(declare-fun d!723618 () Bool)

(assert (=> d!723618 e!1613050))

(declare-fun c!409444 () Bool)

(assert (=> d!723618 (= c!409444 ((_ is EmptyExpr!7605) (derivative!300 lt!903607 tl!4068)))))

(assert (=> d!723618 (= lt!903679 e!1613054)))

(declare-fun c!409442 () Bool)

(assert (=> d!723618 (= c!409442 (isEmpty!17020 Nil!29570))))

(assert (=> d!723618 (validRegex!3231 (derivative!300 lt!903607 tl!4068))))

(assert (=> d!723618 (= (matchR!3550 (derivative!300 lt!903607 tl!4068) Nil!29570) lt!903679)))

(declare-fun b!2552984 () Bool)

(declare-fun res!1075277 () Bool)

(assert (=> b!2552984 (=> res!1075277 e!1613055)))

(assert (=> b!2552984 (= res!1075277 (not (isEmpty!17020 (tail!4087 Nil!29570))))))

(assert (= (and d!723618 c!409442) b!2552983))

(assert (= (and d!723618 (not c!409442)) b!2552985))

(assert (= (and d!723618 c!409444) b!2552979))

(assert (= (and d!723618 (not c!409444)) b!2552988))

(assert (= (and b!2552988 c!409443) b!2552982))

(assert (= (and b!2552988 (not c!409443)) b!2552989))

(assert (= (and b!2552989 (not res!1075283)) b!2552987))

(assert (= (and b!2552987 res!1075278) b!2552992))

(assert (= (and b!2552992 res!1075276) b!2552991))

(assert (= (and b!2552991 res!1075282) b!2552980))

(assert (= (and b!2552987 (not res!1075280)) b!2552986))

(assert (= (and b!2552986 res!1075281) b!2552981))

(assert (= (and b!2552981 (not res!1075279)) b!2552984))

(assert (= (and b!2552984 (not res!1075277)) b!2552990))

(assert (= (or b!2552979 b!2552981 b!2552992) bm!162667))

(declare-fun m!2895365 () Bool)

(assert (=> b!2552991 m!2895365))

(assert (=> b!2552991 m!2895365))

(declare-fun m!2895367 () Bool)

(assert (=> b!2552991 m!2895367))

(declare-fun m!2895369 () Bool)

(assert (=> b!2552985 m!2895369))

(assert (=> b!2552985 m!2895019))

(assert (=> b!2552985 m!2895369))

(declare-fun m!2895371 () Bool)

(assert (=> b!2552985 m!2895371))

(assert (=> b!2552985 m!2895365))

(assert (=> b!2552985 m!2895371))

(assert (=> b!2552985 m!2895365))

(declare-fun m!2895373 () Bool)

(assert (=> b!2552985 m!2895373))

(declare-fun m!2895375 () Bool)

(assert (=> bm!162667 m!2895375))

(assert (=> b!2552990 m!2895369))

(assert (=> b!2552984 m!2895365))

(assert (=> b!2552984 m!2895365))

(assert (=> b!2552984 m!2895367))

(assert (=> b!2552983 m!2895019))

(declare-fun m!2895377 () Bool)

(assert (=> b!2552983 m!2895377))

(assert (=> d!723618 m!2895375))

(assert (=> d!723618 m!2895019))

(declare-fun m!2895379 () Bool)

(assert (=> d!723618 m!2895379))

(assert (=> b!2552980 m!2895369))

(assert (=> b!2552482 d!723618))

(declare-fun d!723620 () Bool)

(declare-fun lt!903680 () Regex!7605)

(assert (=> d!723620 (validRegex!3231 lt!903680)))

(declare-fun e!1613057 () Regex!7605)

(assert (=> d!723620 (= lt!903680 e!1613057)))

(declare-fun c!409445 () Bool)

(assert (=> d!723620 (= c!409445 ((_ is Cons!29570) tl!4068))))

(assert (=> d!723620 (validRegex!3231 lt!903607)))

(assert (=> d!723620 (= (derivative!300 lt!903607 tl!4068) lt!903680)))

(declare-fun b!2552993 () Bool)

(assert (=> b!2552993 (= e!1613057 (derivative!300 (derivativeStep!2174 lt!903607 (h!34990 tl!4068)) (t!211369 tl!4068)))))

(declare-fun b!2552994 () Bool)

(assert (=> b!2552994 (= e!1613057 lt!903607)))

(assert (= (and d!723620 c!409445) b!2552993))

(assert (= (and d!723620 (not c!409445)) b!2552994))

(declare-fun m!2895381 () Bool)

(assert (=> d!723620 m!2895381))

(declare-fun m!2895383 () Bool)

(assert (=> d!723620 m!2895383))

(declare-fun m!2895385 () Bool)

(assert (=> b!2552993 m!2895385))

(assert (=> b!2552993 m!2895385))

(declare-fun m!2895387 () Bool)

(assert (=> b!2552993 m!2895387))

(assert (=> b!2552482 d!723620))

(declare-fun d!723622 () Bool)

(declare-fun e!1613062 () Bool)

(assert (=> d!723622 e!1613062))

(declare-fun res!1075289 () Bool)

(assert (=> d!723622 (=> res!1075289 e!1613062)))

(assert (=> d!723622 (= res!1075289 (matchR!3550 lt!903611 tl!4068))))

(declare-fun lt!903683 () Unit!43395)

(declare-fun choose!15072 (Regex!7605 Regex!7605 List!29670) Unit!43395)

(assert (=> d!723622 (= lt!903683 (choose!15072 lt!903611 lt!903604 tl!4068))))

(declare-fun e!1613063 () Bool)

(assert (=> d!723622 e!1613063))

(declare-fun res!1075288 () Bool)

(assert (=> d!723622 (=> (not res!1075288) (not e!1613063))))

(assert (=> d!723622 (= res!1075288 (validRegex!3231 lt!903611))))

(assert (=> d!723622 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!200 lt!903611 lt!903604 tl!4068) lt!903683)))

(declare-fun b!2552999 () Bool)

(assert (=> b!2552999 (= e!1613063 (validRegex!3231 lt!903604))))

(declare-fun b!2553000 () Bool)

(assert (=> b!2553000 (= e!1613062 (matchR!3550 lt!903604 tl!4068))))

(assert (= (and d!723622 res!1075288) b!2552999))

(assert (= (and d!723622 (not res!1075289)) b!2553000))

(assert (=> d!723622 m!2895021))

(declare-fun m!2895389 () Bool)

(assert (=> d!723622 m!2895389))

(declare-fun m!2895391 () Bool)

(assert (=> d!723622 m!2895391))

(assert (=> b!2552999 m!2895325))

(assert (=> b!2553000 m!2895007))

(assert (=> b!2552482 d!723622))

(declare-fun b!2553001 () Bool)

(declare-fun e!1613064 () Bool)

(declare-fun lt!903684 () Bool)

(declare-fun call!162673 () Bool)

(assert (=> b!2553001 (= e!1613064 (= lt!903684 call!162673))))

(declare-fun b!2553002 () Bool)

(declare-fun e!1613070 () Bool)

(assert (=> b!2553002 (= e!1613070 (= (head!5812 tl!4068) (c!409317 lt!903611)))))

(declare-fun b!2553003 () Bool)

(declare-fun e!1613067 () Bool)

(declare-fun e!1613069 () Bool)

(assert (=> b!2553003 (= e!1613067 e!1613069)))

(declare-fun res!1075293 () Bool)

(assert (=> b!2553003 (=> res!1075293 e!1613069)))

(assert (=> b!2553003 (= res!1075293 call!162673)))

(declare-fun b!2553004 () Bool)

(declare-fun e!1613065 () Bool)

(assert (=> b!2553004 (= e!1613065 (not lt!903684))))

(declare-fun b!2553005 () Bool)

(declare-fun e!1613068 () Bool)

(assert (=> b!2553005 (= e!1613068 (nullable!2522 lt!903611))))

(declare-fun b!2553007 () Bool)

(assert (=> b!2553007 (= e!1613068 (matchR!3550 (derivativeStep!2174 lt!903611 (head!5812 tl!4068)) (tail!4087 tl!4068)))))

(declare-fun b!2553008 () Bool)

(declare-fun e!1613066 () Bool)

(assert (=> b!2553008 (= e!1613066 e!1613067)))

(declare-fun res!1075295 () Bool)

(assert (=> b!2553008 (=> (not res!1075295) (not e!1613067))))

(assert (=> b!2553008 (= res!1075295 (not lt!903684))))

(declare-fun b!2553009 () Bool)

(declare-fun res!1075294 () Bool)

(assert (=> b!2553009 (=> res!1075294 e!1613066)))

(assert (=> b!2553009 (= res!1075294 e!1613070)))

(declare-fun res!1075292 () Bool)

(assert (=> b!2553009 (=> (not res!1075292) (not e!1613070))))

(assert (=> b!2553009 (= res!1075292 lt!903684)))

(declare-fun b!2553010 () Bool)

(assert (=> b!2553010 (= e!1613064 e!1613065)))

(declare-fun c!409447 () Bool)

(assert (=> b!2553010 (= c!409447 ((_ is EmptyLang!7605) lt!903611))))

(declare-fun bm!162668 () Bool)

(assert (=> bm!162668 (= call!162673 (isEmpty!17020 tl!4068))))

(declare-fun b!2553011 () Bool)

(declare-fun res!1075297 () Bool)

(assert (=> b!2553011 (=> res!1075297 e!1613066)))

(assert (=> b!2553011 (= res!1075297 (not ((_ is ElementMatch!7605) lt!903611)))))

(assert (=> b!2553011 (= e!1613065 e!1613066)))

(declare-fun b!2553012 () Bool)

(assert (=> b!2553012 (= e!1613069 (not (= (head!5812 tl!4068) (c!409317 lt!903611))))))

(declare-fun b!2553013 () Bool)

(declare-fun res!1075296 () Bool)

(assert (=> b!2553013 (=> (not res!1075296) (not e!1613070))))

(assert (=> b!2553013 (= res!1075296 (isEmpty!17020 (tail!4087 tl!4068)))))

(declare-fun b!2553014 () Bool)

(declare-fun res!1075290 () Bool)

(assert (=> b!2553014 (=> (not res!1075290) (not e!1613070))))

(assert (=> b!2553014 (= res!1075290 (not call!162673))))

(declare-fun d!723624 () Bool)

(assert (=> d!723624 e!1613064))

(declare-fun c!409448 () Bool)

(assert (=> d!723624 (= c!409448 ((_ is EmptyExpr!7605) lt!903611))))

(assert (=> d!723624 (= lt!903684 e!1613068)))

(declare-fun c!409446 () Bool)

(assert (=> d!723624 (= c!409446 (isEmpty!17020 tl!4068))))

(assert (=> d!723624 (validRegex!3231 lt!903611)))

(assert (=> d!723624 (= (matchR!3550 lt!903611 tl!4068) lt!903684)))

(declare-fun b!2553006 () Bool)

(declare-fun res!1075291 () Bool)

(assert (=> b!2553006 (=> res!1075291 e!1613069)))

(assert (=> b!2553006 (= res!1075291 (not (isEmpty!17020 (tail!4087 tl!4068))))))

(assert (= (and d!723624 c!409446) b!2553005))

(assert (= (and d!723624 (not c!409446)) b!2553007))

(assert (= (and d!723624 c!409448) b!2553001))

(assert (= (and d!723624 (not c!409448)) b!2553010))

(assert (= (and b!2553010 c!409447) b!2553004))

(assert (= (and b!2553010 (not c!409447)) b!2553011))

(assert (= (and b!2553011 (not res!1075297)) b!2553009))

(assert (= (and b!2553009 res!1075292) b!2553014))

(assert (= (and b!2553014 res!1075290) b!2553013))

(assert (= (and b!2553013 res!1075296) b!2553002))

(assert (= (and b!2553009 (not res!1075294)) b!2553008))

(assert (= (and b!2553008 res!1075295) b!2553003))

(assert (= (and b!2553003 (not res!1075293)) b!2553006))

(assert (= (and b!2553006 (not res!1075291)) b!2553012))

(assert (= (or b!2553001 b!2553003 b!2553014) bm!162668))

(assert (=> b!2553013 m!2895311))

(assert (=> b!2553013 m!2895311))

(assert (=> b!2553013 m!2895313))

(assert (=> b!2553007 m!2895315))

(assert (=> b!2553007 m!2895315))

(declare-fun m!2895393 () Bool)

(assert (=> b!2553007 m!2895393))

(assert (=> b!2553007 m!2895311))

(assert (=> b!2553007 m!2895393))

(assert (=> b!2553007 m!2895311))

(declare-fun m!2895395 () Bool)

(assert (=> b!2553007 m!2895395))

(assert (=> bm!162668 m!2895321))

(assert (=> b!2553012 m!2895315))

(assert (=> b!2553006 m!2895311))

(assert (=> b!2553006 m!2895311))

(assert (=> b!2553006 m!2895313))

(declare-fun m!2895397 () Bool)

(assert (=> b!2553005 m!2895397))

(assert (=> d!723624 m!2895321))

(assert (=> d!723624 m!2895391))

(assert (=> b!2553002 m!2895315))

(assert (=> b!2552482 d!723624))

(declare-fun d!723626 () Bool)

(declare-fun lt!903685 () Regex!7605)

(assert (=> d!723626 (validRegex!3231 lt!903685)))

(declare-fun e!1613073 () Regex!7605)

(assert (=> d!723626 (= lt!903685 e!1613073)))

(declare-fun c!409452 () Bool)

(assert (=> d!723626 (= c!409452 (or ((_ is EmptyExpr!7605) (regTwo!15722 r!27340)) ((_ is EmptyLang!7605) (regTwo!15722 r!27340))))))

(assert (=> d!723626 (validRegex!3231 (regTwo!15722 r!27340))))

(assert (=> d!723626 (= (derivativeStep!2174 (regTwo!15722 r!27340) c!14016) lt!903685)))

(declare-fun b!2553015 () Bool)

(declare-fun e!1613074 () Regex!7605)

(assert (=> b!2553015 (= e!1613074 (ite (= c!14016 (c!409317 (regTwo!15722 r!27340))) EmptyExpr!7605 EmptyLang!7605))))

(declare-fun c!409453 () Bool)

(declare-fun bm!162669 () Bool)

(declare-fun call!162675 () Regex!7605)

(assert (=> bm!162669 (= call!162675 (derivativeStep!2174 (ite c!409453 (regOne!15723 (regTwo!15722 r!27340)) (regTwo!15722 (regTwo!15722 r!27340))) c!14016))))

(declare-fun b!2553016 () Bool)

(declare-fun e!1613072 () Regex!7605)

(declare-fun call!162676 () Regex!7605)

(assert (=> b!2553016 (= e!1613072 (Concat!12301 call!162676 (regTwo!15722 r!27340)))))

(declare-fun b!2553017 () Bool)

(assert (=> b!2553017 (= e!1613073 EmptyLang!7605)))

(declare-fun bm!162670 () Bool)

(declare-fun call!162674 () Regex!7605)

(assert (=> bm!162670 (= call!162676 call!162674)))

(declare-fun b!2553018 () Bool)

(declare-fun c!409451 () Bool)

(assert (=> b!2553018 (= c!409451 (nullable!2522 (regOne!15722 (regTwo!15722 r!27340))))))

(declare-fun e!1613075 () Regex!7605)

(assert (=> b!2553018 (= e!1613072 e!1613075)))

(declare-fun c!409450 () Bool)

(declare-fun bm!162671 () Bool)

(assert (=> bm!162671 (= call!162674 (derivativeStep!2174 (ite c!409453 (regTwo!15723 (regTwo!15722 r!27340)) (ite c!409450 (reg!7934 (regTwo!15722 r!27340)) (regOne!15722 (regTwo!15722 r!27340)))) c!14016))))

(declare-fun b!2553019 () Bool)

(assert (=> b!2553019 (= e!1613073 e!1613074)))

(declare-fun c!409449 () Bool)

(assert (=> b!2553019 (= c!409449 ((_ is ElementMatch!7605) (regTwo!15722 r!27340)))))

(declare-fun b!2553020 () Bool)

(assert (=> b!2553020 (= c!409453 ((_ is Union!7605) (regTwo!15722 r!27340)))))

(declare-fun e!1613071 () Regex!7605)

(assert (=> b!2553020 (= e!1613074 e!1613071)))

(declare-fun b!2553021 () Bool)

(assert (=> b!2553021 (= e!1613071 e!1613072)))

(assert (=> b!2553021 (= c!409450 ((_ is Star!7605) (regTwo!15722 r!27340)))))

(declare-fun call!162677 () Regex!7605)

(declare-fun b!2553022 () Bool)

(assert (=> b!2553022 (= e!1613075 (Union!7605 (Concat!12301 call!162677 (regTwo!15722 (regTwo!15722 r!27340))) call!162675))))

(declare-fun b!2553023 () Bool)

(assert (=> b!2553023 (= e!1613075 (Union!7605 (Concat!12301 call!162677 (regTwo!15722 (regTwo!15722 r!27340))) EmptyLang!7605))))

(declare-fun b!2553024 () Bool)

(assert (=> b!2553024 (= e!1613071 (Union!7605 call!162675 call!162674))))

(declare-fun bm!162672 () Bool)

(assert (=> bm!162672 (= call!162677 call!162676)))

(assert (= (and d!723626 c!409452) b!2553017))

(assert (= (and d!723626 (not c!409452)) b!2553019))

(assert (= (and b!2553019 c!409449) b!2553015))

(assert (= (and b!2553019 (not c!409449)) b!2553020))

(assert (= (and b!2553020 c!409453) b!2553024))

(assert (= (and b!2553020 (not c!409453)) b!2553021))

(assert (= (and b!2553021 c!409450) b!2553016))

(assert (= (and b!2553021 (not c!409450)) b!2553018))

(assert (= (and b!2553018 c!409451) b!2553022))

(assert (= (and b!2553018 (not c!409451)) b!2553023))

(assert (= (or b!2553022 b!2553023) bm!162672))

(assert (= (or b!2553016 bm!162672) bm!162670))

(assert (= (or b!2553024 bm!162670) bm!162671))

(assert (= (or b!2553024 b!2553022) bm!162669))

(declare-fun m!2895399 () Bool)

(assert (=> d!723626 m!2895399))

(assert (=> d!723626 m!2895343))

(declare-fun m!2895401 () Bool)

(assert (=> bm!162669 m!2895401))

(declare-fun m!2895403 () Bool)

(assert (=> b!2553018 m!2895403))

(declare-fun m!2895405 () Bool)

(assert (=> bm!162671 m!2895405))

(assert (=> b!2552482 d!723626))

(declare-fun d!723628 () Bool)

(declare-fun lt!903686 () Regex!7605)

(assert (=> d!723628 (validRegex!3231 lt!903686)))

(declare-fun e!1613078 () Regex!7605)

(assert (=> d!723628 (= lt!903686 e!1613078)))

(declare-fun c!409457 () Bool)

(assert (=> d!723628 (= c!409457 (or ((_ is EmptyExpr!7605) (regOne!15722 r!27340)) ((_ is EmptyLang!7605) (regOne!15722 r!27340))))))

(assert (=> d!723628 (validRegex!3231 (regOne!15722 r!27340))))

(assert (=> d!723628 (= (derivativeStep!2174 (regOne!15722 r!27340) c!14016) lt!903686)))

(declare-fun b!2553025 () Bool)

(declare-fun e!1613079 () Regex!7605)

(assert (=> b!2553025 (= e!1613079 (ite (= c!14016 (c!409317 (regOne!15722 r!27340))) EmptyExpr!7605 EmptyLang!7605))))

(declare-fun call!162679 () Regex!7605)

(declare-fun c!409458 () Bool)

(declare-fun bm!162673 () Bool)

(assert (=> bm!162673 (= call!162679 (derivativeStep!2174 (ite c!409458 (regOne!15723 (regOne!15722 r!27340)) (regTwo!15722 (regOne!15722 r!27340))) c!14016))))

(declare-fun b!2553026 () Bool)

(declare-fun e!1613077 () Regex!7605)

(declare-fun call!162680 () Regex!7605)

(assert (=> b!2553026 (= e!1613077 (Concat!12301 call!162680 (regOne!15722 r!27340)))))

(declare-fun b!2553027 () Bool)

(assert (=> b!2553027 (= e!1613078 EmptyLang!7605)))

(declare-fun bm!162674 () Bool)

(declare-fun call!162678 () Regex!7605)

(assert (=> bm!162674 (= call!162680 call!162678)))

(declare-fun b!2553028 () Bool)

(declare-fun c!409456 () Bool)

(assert (=> b!2553028 (= c!409456 (nullable!2522 (regOne!15722 (regOne!15722 r!27340))))))

(declare-fun e!1613080 () Regex!7605)

(assert (=> b!2553028 (= e!1613077 e!1613080)))

(declare-fun bm!162675 () Bool)

(declare-fun c!409455 () Bool)

(assert (=> bm!162675 (= call!162678 (derivativeStep!2174 (ite c!409458 (regTwo!15723 (regOne!15722 r!27340)) (ite c!409455 (reg!7934 (regOne!15722 r!27340)) (regOne!15722 (regOne!15722 r!27340)))) c!14016))))

(declare-fun b!2553029 () Bool)

(assert (=> b!2553029 (= e!1613078 e!1613079)))

(declare-fun c!409454 () Bool)

(assert (=> b!2553029 (= c!409454 ((_ is ElementMatch!7605) (regOne!15722 r!27340)))))

(declare-fun b!2553030 () Bool)

(assert (=> b!2553030 (= c!409458 ((_ is Union!7605) (regOne!15722 r!27340)))))

(declare-fun e!1613076 () Regex!7605)

(assert (=> b!2553030 (= e!1613079 e!1613076)))

(declare-fun b!2553031 () Bool)

(assert (=> b!2553031 (= e!1613076 e!1613077)))

(assert (=> b!2553031 (= c!409455 ((_ is Star!7605) (regOne!15722 r!27340)))))

(declare-fun b!2553032 () Bool)

(declare-fun call!162681 () Regex!7605)

(assert (=> b!2553032 (= e!1613080 (Union!7605 (Concat!12301 call!162681 (regTwo!15722 (regOne!15722 r!27340))) call!162679))))

(declare-fun b!2553033 () Bool)

(assert (=> b!2553033 (= e!1613080 (Union!7605 (Concat!12301 call!162681 (regTwo!15722 (regOne!15722 r!27340))) EmptyLang!7605))))

(declare-fun b!2553034 () Bool)

(assert (=> b!2553034 (= e!1613076 (Union!7605 call!162679 call!162678))))

(declare-fun bm!162676 () Bool)

(assert (=> bm!162676 (= call!162681 call!162680)))

(assert (= (and d!723628 c!409457) b!2553027))

(assert (= (and d!723628 (not c!409457)) b!2553029))

(assert (= (and b!2553029 c!409454) b!2553025))

(assert (= (and b!2553029 (not c!409454)) b!2553030))

(assert (= (and b!2553030 c!409458) b!2553034))

(assert (= (and b!2553030 (not c!409458)) b!2553031))

(assert (= (and b!2553031 c!409455) b!2553026))

(assert (= (and b!2553031 (not c!409455)) b!2553028))

(assert (= (and b!2553028 c!409456) b!2553032))

(assert (= (and b!2553028 (not c!409456)) b!2553033))

(assert (= (or b!2553032 b!2553033) bm!162676))

(assert (= (or b!2553026 bm!162676) bm!162674))

(assert (= (or b!2553034 bm!162674) bm!162675))

(assert (= (or b!2553034 b!2553032) bm!162673))

(declare-fun m!2895407 () Bool)

(assert (=> d!723628 m!2895407))

(assert (=> d!723628 m!2895165))

(declare-fun m!2895409 () Bool)

(assert (=> bm!162673 m!2895409))

(declare-fun m!2895411 () Bool)

(assert (=> b!2553028 m!2895411))

(declare-fun m!2895413 () Bool)

(assert (=> bm!162675 m!2895413))

(assert (=> b!2552482 d!723628))

(declare-fun d!723630 () Bool)

(assert (=> d!723630 (= (matchR!3550 lt!903607 tl!4068) (matchR!3550 (derivative!300 lt!903607 tl!4068) Nil!29570))))

(declare-fun lt!903689 () Unit!43395)

(declare-fun choose!15073 (Regex!7605 List!29670) Unit!43395)

(assert (=> d!723630 (= lt!903689 (choose!15073 lt!903607 tl!4068))))

(assert (=> d!723630 (validRegex!3231 lt!903607)))

(assert (=> d!723630 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!196 lt!903607 tl!4068) lt!903689)))

(declare-fun bs!469651 () Bool)

(assert (= bs!469651 d!723630))

(assert (=> bs!469651 m!2895383))

(assert (=> bs!469651 m!2895019))

(assert (=> bs!469651 m!2895019))

(assert (=> bs!469651 m!2895023))

(declare-fun m!2895415 () Bool)

(assert (=> bs!469651 m!2895415))

(assert (=> bs!469651 m!2895017))

(assert (=> b!2552482 d!723630))

(declare-fun b!2553035 () Bool)

(declare-fun e!1613081 () Bool)

(declare-fun lt!903690 () Bool)

(declare-fun call!162682 () Bool)

(assert (=> b!2553035 (= e!1613081 (= lt!903690 call!162682))))

(declare-fun b!2553036 () Bool)

(declare-fun e!1613087 () Bool)

(assert (=> b!2553036 (= e!1613087 (= (head!5812 tl!4068) (c!409317 lt!903607)))))

(declare-fun b!2553037 () Bool)

(declare-fun e!1613084 () Bool)

(declare-fun e!1613086 () Bool)

(assert (=> b!2553037 (= e!1613084 e!1613086)))

(declare-fun res!1075301 () Bool)

(assert (=> b!2553037 (=> res!1075301 e!1613086)))

(assert (=> b!2553037 (= res!1075301 call!162682)))

(declare-fun b!2553038 () Bool)

(declare-fun e!1613082 () Bool)

(assert (=> b!2553038 (= e!1613082 (not lt!903690))))

(declare-fun b!2553039 () Bool)

(declare-fun e!1613085 () Bool)

(assert (=> b!2553039 (= e!1613085 (nullable!2522 lt!903607))))

(declare-fun b!2553041 () Bool)

(assert (=> b!2553041 (= e!1613085 (matchR!3550 (derivativeStep!2174 lt!903607 (head!5812 tl!4068)) (tail!4087 tl!4068)))))

(declare-fun b!2553042 () Bool)

(declare-fun e!1613083 () Bool)

(assert (=> b!2553042 (= e!1613083 e!1613084)))

(declare-fun res!1075303 () Bool)

(assert (=> b!2553042 (=> (not res!1075303) (not e!1613084))))

(assert (=> b!2553042 (= res!1075303 (not lt!903690))))

(declare-fun b!2553043 () Bool)

(declare-fun res!1075302 () Bool)

(assert (=> b!2553043 (=> res!1075302 e!1613083)))

(assert (=> b!2553043 (= res!1075302 e!1613087)))

(declare-fun res!1075300 () Bool)

(assert (=> b!2553043 (=> (not res!1075300) (not e!1613087))))

(assert (=> b!2553043 (= res!1075300 lt!903690)))

(declare-fun b!2553044 () Bool)

(assert (=> b!2553044 (= e!1613081 e!1613082)))

(declare-fun c!409460 () Bool)

(assert (=> b!2553044 (= c!409460 ((_ is EmptyLang!7605) lt!903607))))

(declare-fun bm!162677 () Bool)

(assert (=> bm!162677 (= call!162682 (isEmpty!17020 tl!4068))))

(declare-fun b!2553045 () Bool)

(declare-fun res!1075305 () Bool)

(assert (=> b!2553045 (=> res!1075305 e!1613083)))

(assert (=> b!2553045 (= res!1075305 (not ((_ is ElementMatch!7605) lt!903607)))))

(assert (=> b!2553045 (= e!1613082 e!1613083)))

(declare-fun b!2553046 () Bool)

(assert (=> b!2553046 (= e!1613086 (not (= (head!5812 tl!4068) (c!409317 lt!903607))))))

(declare-fun b!2553047 () Bool)

(declare-fun res!1075304 () Bool)

(assert (=> b!2553047 (=> (not res!1075304) (not e!1613087))))

(assert (=> b!2553047 (= res!1075304 (isEmpty!17020 (tail!4087 tl!4068)))))

(declare-fun b!2553048 () Bool)

(declare-fun res!1075298 () Bool)

(assert (=> b!2553048 (=> (not res!1075298) (not e!1613087))))

(assert (=> b!2553048 (= res!1075298 (not call!162682))))

(declare-fun d!723632 () Bool)

(assert (=> d!723632 e!1613081))

(declare-fun c!409461 () Bool)

(assert (=> d!723632 (= c!409461 ((_ is EmptyExpr!7605) lt!903607))))

(assert (=> d!723632 (= lt!903690 e!1613085)))

(declare-fun c!409459 () Bool)

(assert (=> d!723632 (= c!409459 (isEmpty!17020 tl!4068))))

(assert (=> d!723632 (validRegex!3231 lt!903607)))

(assert (=> d!723632 (= (matchR!3550 lt!903607 tl!4068) lt!903690)))

(declare-fun b!2553040 () Bool)

(declare-fun res!1075299 () Bool)

(assert (=> b!2553040 (=> res!1075299 e!1613086)))

(assert (=> b!2553040 (= res!1075299 (not (isEmpty!17020 (tail!4087 tl!4068))))))

(assert (= (and d!723632 c!409459) b!2553039))

(assert (= (and d!723632 (not c!409459)) b!2553041))

(assert (= (and d!723632 c!409461) b!2553035))

(assert (= (and d!723632 (not c!409461)) b!2553044))

(assert (= (and b!2553044 c!409460) b!2553038))

(assert (= (and b!2553044 (not c!409460)) b!2553045))

(assert (= (and b!2553045 (not res!1075305)) b!2553043))

(assert (= (and b!2553043 res!1075300) b!2553048))

(assert (= (and b!2553048 res!1075298) b!2553047))

(assert (= (and b!2553047 res!1075304) b!2553036))

(assert (= (and b!2553043 (not res!1075302)) b!2553042))

(assert (= (and b!2553042 res!1075303) b!2553037))

(assert (= (and b!2553037 (not res!1075301)) b!2553040))

(assert (= (and b!2553040 (not res!1075299)) b!2553046))

(assert (= (or b!2553035 b!2553037 b!2553048) bm!162677))

(assert (=> b!2553047 m!2895311))

(assert (=> b!2553047 m!2895311))

(assert (=> b!2553047 m!2895313))

(assert (=> b!2553041 m!2895315))

(assert (=> b!2553041 m!2895315))

(declare-fun m!2895417 () Bool)

(assert (=> b!2553041 m!2895417))

(assert (=> b!2553041 m!2895311))

(assert (=> b!2553041 m!2895417))

(assert (=> b!2553041 m!2895311))

(declare-fun m!2895419 () Bool)

(assert (=> b!2553041 m!2895419))

(assert (=> bm!162677 m!2895321))

(assert (=> b!2553046 m!2895315))

(assert (=> b!2553040 m!2895311))

(assert (=> b!2553040 m!2895311))

(assert (=> b!2553040 m!2895313))

(declare-fun m!2895421 () Bool)

(assert (=> b!2553039 m!2895421))

(assert (=> d!723632 m!2895321))

(assert (=> d!723632 m!2895383))

(assert (=> b!2553036 m!2895315))

(assert (=> b!2552482 d!723632))

(declare-fun b!2553049 () Bool)

(declare-fun e!1613089 () Bool)

(declare-fun call!162684 () Bool)

(assert (=> b!2553049 (= e!1613089 call!162684)))

(declare-fun b!2553050 () Bool)

(declare-fun e!1613092 () Bool)

(declare-fun e!1613091 () Bool)

(assert (=> b!2553050 (= e!1613092 e!1613091)))

(declare-fun c!409463 () Bool)

(assert (=> b!2553050 (= c!409463 ((_ is Star!7605) r!27340))))

(declare-fun b!2553051 () Bool)

(declare-fun e!1613093 () Bool)

(declare-fun call!162683 () Bool)

(assert (=> b!2553051 (= e!1613093 call!162683)))

(declare-fun b!2553052 () Bool)

(declare-fun res!1075306 () Bool)

(assert (=> b!2553052 (=> (not res!1075306) (not e!1613089))))

(declare-fun call!162685 () Bool)

(assert (=> b!2553052 (= res!1075306 call!162685)))

(declare-fun e!1613094 () Bool)

(assert (=> b!2553052 (= e!1613094 e!1613089)))

(declare-fun bm!162678 () Bool)

(declare-fun c!409462 () Bool)

(assert (=> bm!162678 (= call!162685 (validRegex!3231 (ite c!409462 (regOne!15723 r!27340) (regTwo!15722 r!27340))))))

(declare-fun bm!162679 () Bool)

(assert (=> bm!162679 (= call!162684 call!162683)))

(declare-fun b!2553053 () Bool)

(declare-fun res!1075307 () Bool)

(declare-fun e!1613090 () Bool)

(assert (=> b!2553053 (=> res!1075307 e!1613090)))

(assert (=> b!2553053 (= res!1075307 (not ((_ is Concat!12301) r!27340)))))

(assert (=> b!2553053 (= e!1613094 e!1613090)))

(declare-fun d!723634 () Bool)

(declare-fun res!1075308 () Bool)

(assert (=> d!723634 (=> res!1075308 e!1613092)))

(assert (=> d!723634 (= res!1075308 ((_ is ElementMatch!7605) r!27340))))

(assert (=> d!723634 (= (validRegex!3231 r!27340) e!1613092)))

(declare-fun bm!162680 () Bool)

(assert (=> bm!162680 (= call!162683 (validRegex!3231 (ite c!409463 (reg!7934 r!27340) (ite c!409462 (regTwo!15723 r!27340) (regOne!15722 r!27340)))))))

(declare-fun b!2553054 () Bool)

(assert (=> b!2553054 (= e!1613091 e!1613093)))

(declare-fun res!1075310 () Bool)

(assert (=> b!2553054 (= res!1075310 (not (nullable!2522 (reg!7934 r!27340))))))

(assert (=> b!2553054 (=> (not res!1075310) (not e!1613093))))

(declare-fun b!2553055 () Bool)

(assert (=> b!2553055 (= e!1613091 e!1613094)))

(assert (=> b!2553055 (= c!409462 ((_ is Union!7605) r!27340))))

(declare-fun b!2553056 () Bool)

(declare-fun e!1613088 () Bool)

(assert (=> b!2553056 (= e!1613090 e!1613088)))

(declare-fun res!1075309 () Bool)

(assert (=> b!2553056 (=> (not res!1075309) (not e!1613088))))

(assert (=> b!2553056 (= res!1075309 call!162684)))

(declare-fun b!2553057 () Bool)

(assert (=> b!2553057 (= e!1613088 call!162685)))

(assert (= (and d!723634 (not res!1075308)) b!2553050))

(assert (= (and b!2553050 c!409463) b!2553054))

(assert (= (and b!2553050 (not c!409463)) b!2553055))

(assert (= (and b!2553054 res!1075310) b!2553051))

(assert (= (and b!2553055 c!409462) b!2553052))

(assert (= (and b!2553055 (not c!409462)) b!2553053))

(assert (= (and b!2553052 res!1075306) b!2553049))

(assert (= (and b!2553053 (not res!1075307)) b!2553056))

(assert (= (and b!2553056 res!1075309) b!2553057))

(assert (= (or b!2553052 b!2553057) bm!162678))

(assert (= (or b!2553049 b!2553056) bm!162679))

(assert (= (or b!2553051 bm!162679) bm!162680))

(declare-fun m!2895423 () Bool)

(assert (=> bm!162678 m!2895423))

(declare-fun m!2895425 () Bool)

(assert (=> bm!162680 m!2895425))

(declare-fun m!2895427 () Bool)

(assert (=> b!2553054 m!2895427))

(assert (=> start!247496 d!723634))

(declare-fun b!2553069 () Bool)

(declare-fun e!1613097 () Bool)

(declare-fun tp!814266 () Bool)

(declare-fun tp!814265 () Bool)

(assert (=> b!2553069 (= e!1613097 (and tp!814266 tp!814265))))

(declare-fun b!2553068 () Bool)

(assert (=> b!2553068 (= e!1613097 tp_is_empty!13065)))

(assert (=> b!2552478 (= tp!814210 e!1613097)))

(declare-fun b!2553071 () Bool)

(declare-fun tp!814267 () Bool)

(declare-fun tp!814263 () Bool)

(assert (=> b!2553071 (= e!1613097 (and tp!814267 tp!814263))))

(declare-fun b!2553070 () Bool)

(declare-fun tp!814264 () Bool)

(assert (=> b!2553070 (= e!1613097 tp!814264)))

(assert (= (and b!2552478 ((_ is ElementMatch!7605) (reg!7934 r!27340))) b!2553068))

(assert (= (and b!2552478 ((_ is Concat!12301) (reg!7934 r!27340))) b!2553069))

(assert (= (and b!2552478 ((_ is Star!7605) (reg!7934 r!27340))) b!2553070))

(assert (= (and b!2552478 ((_ is Union!7605) (reg!7934 r!27340))) b!2553071))

(declare-fun b!2553076 () Bool)

(declare-fun e!1613100 () Bool)

(declare-fun tp!814270 () Bool)

(assert (=> b!2553076 (= e!1613100 (and tp_is_empty!13065 tp!814270))))

(assert (=> b!2552490 (= tp!814213 e!1613100)))

(assert (= (and b!2552490 ((_ is Cons!29570) (t!211369 tl!4068))) b!2553076))

(declare-fun b!2553078 () Bool)

(declare-fun e!1613101 () Bool)

(declare-fun tp!814274 () Bool)

(declare-fun tp!814273 () Bool)

(assert (=> b!2553078 (= e!1613101 (and tp!814274 tp!814273))))

(declare-fun b!2553077 () Bool)

(assert (=> b!2553077 (= e!1613101 tp_is_empty!13065)))

(assert (=> b!2552485 (= tp!814209 e!1613101)))

(declare-fun b!2553080 () Bool)

(declare-fun tp!814275 () Bool)

(declare-fun tp!814271 () Bool)

(assert (=> b!2553080 (= e!1613101 (and tp!814275 tp!814271))))

(declare-fun b!2553079 () Bool)

(declare-fun tp!814272 () Bool)

(assert (=> b!2553079 (= e!1613101 tp!814272)))

(assert (= (and b!2552485 ((_ is ElementMatch!7605) (regOne!15723 r!27340))) b!2553077))

(assert (= (and b!2552485 ((_ is Concat!12301) (regOne!15723 r!27340))) b!2553078))

(assert (= (and b!2552485 ((_ is Star!7605) (regOne!15723 r!27340))) b!2553079))

(assert (= (and b!2552485 ((_ is Union!7605) (regOne!15723 r!27340))) b!2553080))

(declare-fun b!2553082 () Bool)

(declare-fun e!1613102 () Bool)

(declare-fun tp!814279 () Bool)

(declare-fun tp!814278 () Bool)

(assert (=> b!2553082 (= e!1613102 (and tp!814279 tp!814278))))

(declare-fun b!2553081 () Bool)

(assert (=> b!2553081 (= e!1613102 tp_is_empty!13065)))

(assert (=> b!2552485 (= tp!814211 e!1613102)))

(declare-fun b!2553084 () Bool)

(declare-fun tp!814280 () Bool)

(declare-fun tp!814276 () Bool)

(assert (=> b!2553084 (= e!1613102 (and tp!814280 tp!814276))))

(declare-fun b!2553083 () Bool)

(declare-fun tp!814277 () Bool)

(assert (=> b!2553083 (= e!1613102 tp!814277)))

(assert (= (and b!2552485 ((_ is ElementMatch!7605) (regTwo!15723 r!27340))) b!2553081))

(assert (= (and b!2552485 ((_ is Concat!12301) (regTwo!15723 r!27340))) b!2553082))

(assert (= (and b!2552485 ((_ is Star!7605) (regTwo!15723 r!27340))) b!2553083))

(assert (= (and b!2552485 ((_ is Union!7605) (regTwo!15723 r!27340))) b!2553084))

(declare-fun b!2553086 () Bool)

(declare-fun e!1613103 () Bool)

(declare-fun tp!814284 () Bool)

(declare-fun tp!814283 () Bool)

(assert (=> b!2553086 (= e!1613103 (and tp!814284 tp!814283))))

(declare-fun b!2553085 () Bool)

(assert (=> b!2553085 (= e!1613103 tp_is_empty!13065)))

(assert (=> b!2552483 (= tp!814214 e!1613103)))

(declare-fun b!2553088 () Bool)

(declare-fun tp!814285 () Bool)

(declare-fun tp!814281 () Bool)

(assert (=> b!2553088 (= e!1613103 (and tp!814285 tp!814281))))

(declare-fun b!2553087 () Bool)

(declare-fun tp!814282 () Bool)

(assert (=> b!2553087 (= e!1613103 tp!814282)))

(assert (= (and b!2552483 ((_ is ElementMatch!7605) (regOne!15722 r!27340))) b!2553085))

(assert (= (and b!2552483 ((_ is Concat!12301) (regOne!15722 r!27340))) b!2553086))

(assert (= (and b!2552483 ((_ is Star!7605) (regOne!15722 r!27340))) b!2553087))

(assert (= (and b!2552483 ((_ is Union!7605) (regOne!15722 r!27340))) b!2553088))

(declare-fun b!2553090 () Bool)

(declare-fun e!1613104 () Bool)

(declare-fun tp!814289 () Bool)

(declare-fun tp!814288 () Bool)

(assert (=> b!2553090 (= e!1613104 (and tp!814289 tp!814288))))

(declare-fun b!2553089 () Bool)

(assert (=> b!2553089 (= e!1613104 tp_is_empty!13065)))

(assert (=> b!2552483 (= tp!814212 e!1613104)))

(declare-fun b!2553092 () Bool)

(declare-fun tp!814290 () Bool)

(declare-fun tp!814286 () Bool)

(assert (=> b!2553092 (= e!1613104 (and tp!814290 tp!814286))))

(declare-fun b!2553091 () Bool)

(declare-fun tp!814287 () Bool)

(assert (=> b!2553091 (= e!1613104 tp!814287)))

(assert (= (and b!2552483 ((_ is ElementMatch!7605) (regTwo!15722 r!27340))) b!2553089))

(assert (= (and b!2552483 ((_ is Concat!12301) (regTwo!15722 r!27340))) b!2553090))

(assert (= (and b!2552483 ((_ is Star!7605) (regTwo!15722 r!27340))) b!2553091))

(assert (= (and b!2552483 ((_ is Union!7605) (regTwo!15722 r!27340))) b!2553092))

(check-sat (not b!2553070) (not b!2553076) (not b!2553028) (not b!2553013) (not b!2552985) (not b!2552861) (not b!2553088) (not b!2553090) (not b!2553005) (not b!2553079) (not b!2552999) (not b!2552863) (not d!723560) (not b!2553086) (not d!723624) (not bm!162671) (not b!2553069) (not d!723628) (not d!723578) (not b!2552527) (not b!2552559) (not b!2553084) (not b!2553071) tp_is_empty!13065 (not d!723546) (not d!723618) (not bm!162673) (not d!723584) (not bm!162680) (not b!2553002) (not b!2552925) (not bm!162669) (not bm!162610) (not bm!162668) (not bm!162664) (not b!2552528) (not d!723630) (not d!723626) (not b!2553039) (not d!723620) (not bm!162678) (not b!2553040) (not b!2552526) (not b!2552524) (not b!2553000) (not b!2553087) (not d!723564) (not b!2552832) (not b!2553092) (not b!2552529) (not b!2552918) (not b!2552663) (not b!2552983) (not b!2552664) (not b!2553007) (not b!2552873) (not b!2552860) (not b!2552990) (not bm!162649) (not b!2553012) (not b!2553083) (not b!2552917) (not b!2552890) (not b!2553036) (not bm!162642) (not bm!162666) (not d!723604) (not d!723556) (not bm!162677) (not b!2552718) (not b!2553006) (not d!723566) (not b!2552660) (not b!2552991) (not b!2552980) (not b!2552975) (not b!2552901) (not b!2553091) (not b!2553078) (not b!2552900) (not bm!162667) (not b!2553041) (not b!2553018) (not bm!162644) (not b!2552856) (not bm!162657) (not b!2553054) (not b!2552671) (not b!2553046) (not b!2552924) (not d!723612) (not b!2552525) (not d!723574) (not b!2553080) (not b!2552665) (not bm!162656) (not b!2553082) (not b!2552984) (not d!723614) (not d!723572) (not b!2552875) (not b!2552894) (not b!2552919) (not b!2552914) (not d!723632) (not b!2552893) (not b!2552895) (not bm!162675) (not b!2552670) (not b!2553047) (not b!2552560) (not d!723622) (not b!2552993))
(check-sat)
