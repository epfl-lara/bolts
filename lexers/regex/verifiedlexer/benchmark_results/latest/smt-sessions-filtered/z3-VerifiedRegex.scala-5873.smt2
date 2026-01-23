; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287984 () Bool)

(assert start!287984)

(declare-fun b!2979326 () Bool)

(assert (=> b!2979326 true))

(assert (=> b!2979326 true))

(assert (=> b!2979326 true))

(declare-fun lambda!111052 () Int)

(declare-fun lambda!111051 () Int)

(assert (=> b!2979326 (not (= lambda!111052 lambda!111051))))

(assert (=> b!2979326 true))

(assert (=> b!2979326 true))

(assert (=> b!2979326 true))

(declare-fun b!2979320 () Bool)

(declare-fun e!1873913 () Bool)

(declare-fun e!1873912 () Bool)

(assert (=> b!2979320 (= e!1873913 e!1873912)))

(declare-fun res!1228541 () Bool)

(assert (=> b!2979320 (=> res!1228541 e!1873912)))

(declare-datatypes ((C!18780 0))(
  ( (C!18781 (val!11426 Int)) )
))
(declare-datatypes ((Regex!9297 0))(
  ( (ElementMatch!9297 (c!489281 C!18780)) (Concat!14618 (regOne!19106 Regex!9297) (regTwo!19106 Regex!9297)) (EmptyExpr!9297) (Star!9297 (reg!9626 Regex!9297)) (EmptyLang!9297) (Union!9297 (regOne!19107 Regex!9297) (regTwo!19107 Regex!9297)) )
))
(declare-fun lt!1037704 () Regex!9297)

(declare-datatypes ((List!35162 0))(
  ( (Nil!35038) (Cons!35038 (h!40458 C!18780) (t!234227 List!35162)) )
))
(declare-fun s!11993 () List!35162)

(declare-fun matchR!4179 (Regex!9297 List!35162) Bool)

(assert (=> b!2979320 (= res!1228541 (not (matchR!4179 lt!1037704 s!11993)))))

(declare-fun lt!1037701 () Regex!9297)

(assert (=> b!2979320 (= lt!1037704 (Star!9297 lt!1037701))))

(declare-fun b!2979321 () Bool)

(declare-fun res!1228542 () Bool)

(declare-fun e!1873909 () Bool)

(assert (=> b!2979321 (=> res!1228542 e!1873909)))

(declare-datatypes ((tuple2!33932 0))(
  ( (tuple2!33933 (_1!20098 List!35162) (_2!20098 List!35162)) )
))
(declare-datatypes ((Option!6698 0))(
  ( (None!6697) (Some!6697 (v!34831 tuple2!33932)) )
))
(declare-fun lt!1037700 () Option!6698)

(declare-fun get!10814 (Option!6698) tuple2!33932)

(assert (=> b!2979321 (= res!1228542 (not (matchR!4179 lt!1037701 (_1!20098 (get!10814 lt!1037700)))))))

(declare-fun b!2979322 () Bool)

(declare-fun e!1873906 () Bool)

(declare-fun tp!948824 () Bool)

(declare-fun tp!948822 () Bool)

(assert (=> b!2979322 (= e!1873906 (and tp!948824 tp!948822))))

(declare-fun b!2979323 () Bool)

(declare-fun e!1873907 () Bool)

(assert (=> b!2979323 (= e!1873912 e!1873907)))

(declare-fun res!1228543 () Bool)

(assert (=> b!2979323 (=> res!1228543 e!1873907)))

(declare-fun isEmpty!19291 (List!35162) Bool)

(assert (=> b!2979323 (= res!1228543 (isEmpty!19291 s!11993))))

(declare-fun matchRSpec!1434 (Regex!9297 List!35162) Bool)

(assert (=> b!2979323 (matchRSpec!1434 lt!1037704 s!11993)))

(declare-datatypes ((Unit!48973 0))(
  ( (Unit!48974) )
))
(declare-fun lt!1037705 () Unit!48973)

(declare-fun mainMatchTheorem!1434 (Regex!9297 List!35162) Unit!48973)

(assert (=> b!2979323 (= lt!1037705 (mainMatchTheorem!1434 lt!1037704 s!11993))))

(declare-fun b!2979324 () Bool)

(declare-fun e!1873910 () Bool)

(declare-fun e!1873908 () Bool)

(assert (=> b!2979324 (= e!1873910 (not e!1873908))))

(declare-fun res!1228544 () Bool)

(assert (=> b!2979324 (=> res!1228544 e!1873908)))

(declare-fun lt!1037707 () Bool)

(declare-fun r!17423 () Regex!9297)

(get-info :version)

(assert (=> b!2979324 (= res!1228544 (or lt!1037707 ((_ is Concat!14618) r!17423) ((_ is Union!9297) r!17423) (not ((_ is Star!9297) r!17423))))))

(assert (=> b!2979324 (= lt!1037707 (matchRSpec!1434 r!17423 s!11993))))

(assert (=> b!2979324 (= lt!1037707 (matchR!4179 r!17423 s!11993))))

(declare-fun lt!1037706 () Unit!48973)

(assert (=> b!2979324 (= lt!1037706 (mainMatchTheorem!1434 r!17423 s!11993))))

(declare-fun res!1228539 () Bool)

(assert (=> start!287984 (=> (not res!1228539) (not e!1873910))))

(declare-fun validRegex!4030 (Regex!9297) Bool)

(assert (=> start!287984 (= res!1228539 (validRegex!4030 r!17423))))

(assert (=> start!287984 e!1873910))

(assert (=> start!287984 e!1873906))

(declare-fun e!1873911 () Bool)

(assert (=> start!287984 e!1873911))

(declare-fun b!2979325 () Bool)

(declare-fun tp!948825 () Bool)

(declare-fun tp!948820 () Bool)

(assert (=> b!2979325 (= e!1873906 (and tp!948825 tp!948820))))

(assert (=> b!2979326 (= e!1873907 e!1873909)))

(declare-fun res!1228538 () Bool)

(assert (=> b!2979326 (=> res!1228538 e!1873909)))

(declare-fun lt!1037703 () Bool)

(assert (=> b!2979326 (= res!1228538 (not lt!1037703))))

(declare-fun Exists!1577 (Int) Bool)

(assert (=> b!2979326 (= (Exists!1577 lambda!111051) (Exists!1577 lambda!111052))))

(declare-fun lt!1037702 () Unit!48973)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!262 (Regex!9297 List!35162) Unit!48973)

(assert (=> b!2979326 (= lt!1037702 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!262 lt!1037701 s!11993))))

(assert (=> b!2979326 (= lt!1037703 (Exists!1577 lambda!111051))))

(declare-fun isDefined!5249 (Option!6698) Bool)

(assert (=> b!2979326 (= lt!1037703 (isDefined!5249 lt!1037700))))

(declare-fun findConcatSeparation!1092 (Regex!9297 Regex!9297 List!35162 List!35162 List!35162) Option!6698)

(assert (=> b!2979326 (= lt!1037700 (findConcatSeparation!1092 lt!1037701 lt!1037704 Nil!35038 s!11993 s!11993))))

(declare-fun lt!1037708 () Unit!48973)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!870 (Regex!9297 Regex!9297 List!35162) Unit!48973)

(assert (=> b!2979326 (= lt!1037708 (lemmaFindConcatSeparationEquivalentToExists!870 lt!1037701 lt!1037704 s!11993))))

(declare-fun b!2979327 () Bool)

(declare-fun tp_is_empty!16157 () Bool)

(assert (=> b!2979327 (= e!1873906 tp_is_empty!16157)))

(declare-fun b!2979328 () Bool)

(declare-fun tp!948821 () Bool)

(assert (=> b!2979328 (= e!1873906 tp!948821)))

(declare-fun b!2979329 () Bool)

(assert (=> b!2979329 (= e!1873908 e!1873913)))

(declare-fun res!1228540 () Bool)

(assert (=> b!2979329 (=> res!1228540 e!1873913)))

(declare-fun isEmptyLang!411 (Regex!9297) Bool)

(assert (=> b!2979329 (= res!1228540 (isEmptyLang!411 lt!1037701))))

(declare-fun simplify!298 (Regex!9297) Regex!9297)

(assert (=> b!2979329 (= lt!1037701 (simplify!298 (reg!9626 r!17423)))))

(declare-fun b!2979330 () Bool)

(declare-fun tp!948823 () Bool)

(assert (=> b!2979330 (= e!1873911 (and tp_is_empty!16157 tp!948823))))

(declare-fun b!2979331 () Bool)

(assert (=> b!2979331 (= e!1873909 (validRegex!4030 (reg!9626 r!17423)))))

(assert (= (and start!287984 res!1228539) b!2979324))

(assert (= (and b!2979324 (not res!1228544)) b!2979329))

(assert (= (and b!2979329 (not res!1228540)) b!2979320))

(assert (= (and b!2979320 (not res!1228541)) b!2979323))

(assert (= (and b!2979323 (not res!1228543)) b!2979326))

(assert (= (and b!2979326 (not res!1228538)) b!2979321))

(assert (= (and b!2979321 (not res!1228542)) b!2979331))

(assert (= (and start!287984 ((_ is ElementMatch!9297) r!17423)) b!2979327))

(assert (= (and start!287984 ((_ is Concat!14618) r!17423)) b!2979325))

(assert (= (and start!287984 ((_ is Star!9297) r!17423)) b!2979328))

(assert (= (and start!287984 ((_ is Union!9297) r!17423)) b!2979322))

(assert (= (and start!287984 ((_ is Cons!35038) s!11993)) b!2979330))

(declare-fun m!3341447 () Bool)

(assert (=> b!2979321 m!3341447))

(declare-fun m!3341449 () Bool)

(assert (=> b!2979321 m!3341449))

(declare-fun m!3341451 () Bool)

(assert (=> start!287984 m!3341451))

(declare-fun m!3341453 () Bool)

(assert (=> b!2979331 m!3341453))

(declare-fun m!3341455 () Bool)

(assert (=> b!2979326 m!3341455))

(declare-fun m!3341457 () Bool)

(assert (=> b!2979326 m!3341457))

(declare-fun m!3341459 () Bool)

(assert (=> b!2979326 m!3341459))

(declare-fun m!3341461 () Bool)

(assert (=> b!2979326 m!3341461))

(declare-fun m!3341463 () Bool)

(assert (=> b!2979326 m!3341463))

(assert (=> b!2979326 m!3341461))

(declare-fun m!3341465 () Bool)

(assert (=> b!2979326 m!3341465))

(declare-fun m!3341467 () Bool)

(assert (=> b!2979324 m!3341467))

(declare-fun m!3341469 () Bool)

(assert (=> b!2979324 m!3341469))

(declare-fun m!3341471 () Bool)

(assert (=> b!2979324 m!3341471))

(declare-fun m!3341473 () Bool)

(assert (=> b!2979329 m!3341473))

(declare-fun m!3341475 () Bool)

(assert (=> b!2979329 m!3341475))

(declare-fun m!3341477 () Bool)

(assert (=> b!2979320 m!3341477))

(declare-fun m!3341479 () Bool)

(assert (=> b!2979323 m!3341479))

(declare-fun m!3341481 () Bool)

(assert (=> b!2979323 m!3341481))

(declare-fun m!3341483 () Bool)

(assert (=> b!2979323 m!3341483))

(check-sat (not b!2979324) (not b!2979322) (not b!2979323) (not b!2979326) (not b!2979328) (not b!2979325) (not b!2979331) (not b!2979321) (not b!2979320) tp_is_empty!16157 (not b!2979330) (not start!287984) (not b!2979329))
(check-sat)
(get-model)

(declare-fun d!843424 () Bool)

(assert (=> d!843424 (= (isEmpty!19291 s!11993) ((_ is Nil!35038) s!11993))))

(assert (=> b!2979323 d!843424))

(declare-fun bs!527038 () Bool)

(declare-fun b!2979446 () Bool)

(assert (= bs!527038 (and b!2979446 b!2979326)))

(declare-fun lambda!111061 () Int)

(assert (=> bs!527038 (not (= lambda!111061 lambda!111051))))

(assert (=> bs!527038 (= (= (reg!9626 lt!1037704) lt!1037701) (= lambda!111061 lambda!111052))))

(assert (=> b!2979446 true))

(assert (=> b!2979446 true))

(declare-fun bs!527039 () Bool)

(declare-fun b!2979444 () Bool)

(assert (= bs!527039 (and b!2979444 b!2979326)))

(declare-fun lambda!111062 () Int)

(assert (=> bs!527039 (not (= lambda!111062 lambda!111051))))

(assert (=> bs!527039 (not (= lambda!111062 lambda!111052))))

(declare-fun bs!527040 () Bool)

(assert (= bs!527040 (and b!2979444 b!2979446)))

(assert (=> bs!527040 (not (= lambda!111062 lambda!111061))))

(assert (=> b!2979444 true))

(assert (=> b!2979444 true))

(declare-fun b!2979442 () Bool)

(declare-fun c!489308 () Bool)

(assert (=> b!2979442 (= c!489308 ((_ is ElementMatch!9297) lt!1037704))))

(declare-fun e!1873974 () Bool)

(declare-fun e!1873972 () Bool)

(assert (=> b!2979442 (= e!1873974 e!1873972)))

(declare-fun b!2979443 () Bool)

(declare-fun e!1873975 () Bool)

(declare-fun e!1873973 () Bool)

(assert (=> b!2979443 (= e!1873975 e!1873973)))

(declare-fun c!489310 () Bool)

(assert (=> b!2979443 (= c!489310 ((_ is Star!9297) lt!1037704))))

(declare-fun call!198886 () Bool)

(assert (=> b!2979444 (= e!1873973 call!198886)))

(declare-fun b!2979445 () Bool)

(declare-fun e!1873976 () Bool)

(declare-fun call!198887 () Bool)

(assert (=> b!2979445 (= e!1873976 call!198887)))

(declare-fun e!1873977 () Bool)

(assert (=> b!2979446 (= e!1873977 call!198886)))

(declare-fun b!2979447 () Bool)

(declare-fun c!489307 () Bool)

(assert (=> b!2979447 (= c!489307 ((_ is Union!9297) lt!1037704))))

(assert (=> b!2979447 (= e!1873972 e!1873975)))

(declare-fun b!2979448 () Bool)

(assert (=> b!2979448 (= e!1873972 (= s!11993 (Cons!35038 (c!489281 lt!1037704) Nil!35038)))))

(declare-fun b!2979449 () Bool)

(assert (=> b!2979449 (= e!1873976 e!1873974)))

(declare-fun res!1228601 () Bool)

(assert (=> b!2979449 (= res!1228601 (not ((_ is EmptyLang!9297) lt!1037704)))))

(assert (=> b!2979449 (=> (not res!1228601) (not e!1873974))))

(declare-fun b!2979450 () Bool)

(declare-fun e!1873971 () Bool)

(assert (=> b!2979450 (= e!1873971 (matchRSpec!1434 (regTwo!19107 lt!1037704) s!11993))))

(declare-fun bm!198882 () Bool)

(assert (=> bm!198882 (= call!198886 (Exists!1577 (ite c!489310 lambda!111061 lambda!111062)))))

(declare-fun b!2979451 () Bool)

(declare-fun res!1228602 () Bool)

(assert (=> b!2979451 (=> res!1228602 e!1873977)))

(assert (=> b!2979451 (= res!1228602 call!198887)))

(assert (=> b!2979451 (= e!1873973 e!1873977)))

(declare-fun b!2979452 () Bool)

(assert (=> b!2979452 (= e!1873975 e!1873971)))

(declare-fun res!1228603 () Bool)

(assert (=> b!2979452 (= res!1228603 (matchRSpec!1434 (regOne!19107 lt!1037704) s!11993))))

(assert (=> b!2979452 (=> res!1228603 e!1873971)))

(declare-fun d!843426 () Bool)

(declare-fun c!489309 () Bool)

(assert (=> d!843426 (= c!489309 ((_ is EmptyExpr!9297) lt!1037704))))

(assert (=> d!843426 (= (matchRSpec!1434 lt!1037704 s!11993) e!1873976)))

(declare-fun bm!198881 () Bool)

(assert (=> bm!198881 (= call!198887 (isEmpty!19291 s!11993))))

(assert (= (and d!843426 c!489309) b!2979445))

(assert (= (and d!843426 (not c!489309)) b!2979449))

(assert (= (and b!2979449 res!1228601) b!2979442))

(assert (= (and b!2979442 c!489308) b!2979448))

(assert (= (and b!2979442 (not c!489308)) b!2979447))

(assert (= (and b!2979447 c!489307) b!2979452))

(assert (= (and b!2979447 (not c!489307)) b!2979443))

(assert (= (and b!2979452 (not res!1228603)) b!2979450))

(assert (= (and b!2979443 c!489310) b!2979451))

(assert (= (and b!2979443 (not c!489310)) b!2979444))

(assert (= (and b!2979451 (not res!1228602)) b!2979446))

(assert (= (or b!2979446 b!2979444) bm!198882))

(assert (= (or b!2979445 b!2979451) bm!198881))

(declare-fun m!3341501 () Bool)

(assert (=> b!2979450 m!3341501))

(declare-fun m!3341503 () Bool)

(assert (=> bm!198882 m!3341503))

(declare-fun m!3341505 () Bool)

(assert (=> b!2979452 m!3341505))

(assert (=> bm!198881 m!3341479))

(assert (=> b!2979323 d!843426))

(declare-fun d!843434 () Bool)

(assert (=> d!843434 (= (matchR!4179 lt!1037704 s!11993) (matchRSpec!1434 lt!1037704 s!11993))))

(declare-fun lt!1037715 () Unit!48973)

(declare-fun choose!17641 (Regex!9297 List!35162) Unit!48973)

(assert (=> d!843434 (= lt!1037715 (choose!17641 lt!1037704 s!11993))))

(assert (=> d!843434 (validRegex!4030 lt!1037704)))

(assert (=> d!843434 (= (mainMatchTheorem!1434 lt!1037704 s!11993) lt!1037715)))

(declare-fun bs!527044 () Bool)

(assert (= bs!527044 d!843434))

(assert (=> bs!527044 m!3341477))

(assert (=> bs!527044 m!3341481))

(declare-fun m!3341525 () Bool)

(assert (=> bs!527044 m!3341525))

(declare-fun m!3341527 () Bool)

(assert (=> bs!527044 m!3341527))

(assert (=> b!2979323 d!843434))

(declare-fun bs!527046 () Bool)

(declare-fun b!2979482 () Bool)

(assert (= bs!527046 (and b!2979482 b!2979326)))

(declare-fun lambda!111065 () Int)

(assert (=> bs!527046 (not (= lambda!111065 lambda!111051))))

(assert (=> bs!527046 (= (and (= (reg!9626 r!17423) lt!1037701) (= r!17423 lt!1037704)) (= lambda!111065 lambda!111052))))

(declare-fun bs!527047 () Bool)

(assert (= bs!527047 (and b!2979482 b!2979446)))

(assert (=> bs!527047 (= (and (= (reg!9626 r!17423) (reg!9626 lt!1037704)) (= r!17423 lt!1037704)) (= lambda!111065 lambda!111061))))

(declare-fun bs!527048 () Bool)

(assert (= bs!527048 (and b!2979482 b!2979444)))

(assert (=> bs!527048 (not (= lambda!111065 lambda!111062))))

(assert (=> b!2979482 true))

(assert (=> b!2979482 true))

(declare-fun bs!527049 () Bool)

(declare-fun b!2979480 () Bool)

(assert (= bs!527049 (and b!2979480 b!2979444)))

(declare-fun lambda!111066 () Int)

(assert (=> bs!527049 (= (and (= (regOne!19106 r!17423) (regOne!19106 lt!1037704)) (= (regTwo!19106 r!17423) (regTwo!19106 lt!1037704))) (= lambda!111066 lambda!111062))))

(declare-fun bs!527050 () Bool)

(assert (= bs!527050 (and b!2979480 b!2979326)))

(assert (=> bs!527050 (not (= lambda!111066 lambda!111051))))

(declare-fun bs!527051 () Bool)

(assert (= bs!527051 (and b!2979480 b!2979446)))

(assert (=> bs!527051 (not (= lambda!111066 lambda!111061))))

(assert (=> bs!527050 (not (= lambda!111066 lambda!111052))))

(declare-fun bs!527052 () Bool)

(assert (= bs!527052 (and b!2979480 b!2979482)))

(assert (=> bs!527052 (not (= lambda!111066 lambda!111065))))

(assert (=> b!2979480 true))

(assert (=> b!2979480 true))

(declare-fun b!2979478 () Bool)

(declare-fun c!489319 () Bool)

(assert (=> b!2979478 (= c!489319 ((_ is ElementMatch!9297) r!17423))))

(declare-fun e!1873995 () Bool)

(declare-fun e!1873993 () Bool)

(assert (=> b!2979478 (= e!1873995 e!1873993)))

(declare-fun b!2979479 () Bool)

(declare-fun e!1873996 () Bool)

(declare-fun e!1873994 () Bool)

(assert (=> b!2979479 (= e!1873996 e!1873994)))

(declare-fun c!489321 () Bool)

(assert (=> b!2979479 (= c!489321 ((_ is Star!9297) r!17423))))

(declare-fun call!198895 () Bool)

(assert (=> b!2979480 (= e!1873994 call!198895)))

(declare-fun b!2979481 () Bool)

(declare-fun e!1873997 () Bool)

(declare-fun call!198896 () Bool)

(assert (=> b!2979481 (= e!1873997 call!198896)))

(declare-fun e!1873998 () Bool)

(assert (=> b!2979482 (= e!1873998 call!198895)))

(declare-fun b!2979483 () Bool)

(declare-fun c!489318 () Bool)

(assert (=> b!2979483 (= c!489318 ((_ is Union!9297) r!17423))))

(assert (=> b!2979483 (= e!1873993 e!1873996)))

(declare-fun b!2979484 () Bool)

(assert (=> b!2979484 (= e!1873993 (= s!11993 (Cons!35038 (c!489281 r!17423) Nil!35038)))))

(declare-fun b!2979485 () Bool)

(assert (=> b!2979485 (= e!1873997 e!1873995)))

(declare-fun res!1228615 () Bool)

(assert (=> b!2979485 (= res!1228615 (not ((_ is EmptyLang!9297) r!17423)))))

(assert (=> b!2979485 (=> (not res!1228615) (not e!1873995))))

(declare-fun b!2979486 () Bool)

(declare-fun e!1873992 () Bool)

(assert (=> b!2979486 (= e!1873992 (matchRSpec!1434 (regTwo!19107 r!17423) s!11993))))

(declare-fun bm!198891 () Bool)

(assert (=> bm!198891 (= call!198895 (Exists!1577 (ite c!489321 lambda!111065 lambda!111066)))))

(declare-fun b!2979487 () Bool)

(declare-fun res!1228616 () Bool)

(assert (=> b!2979487 (=> res!1228616 e!1873998)))

(assert (=> b!2979487 (= res!1228616 call!198896)))

(assert (=> b!2979487 (= e!1873994 e!1873998)))

(declare-fun b!2979488 () Bool)

(assert (=> b!2979488 (= e!1873996 e!1873992)))

(declare-fun res!1228617 () Bool)

(assert (=> b!2979488 (= res!1228617 (matchRSpec!1434 (regOne!19107 r!17423) s!11993))))

(assert (=> b!2979488 (=> res!1228617 e!1873992)))

(declare-fun d!843440 () Bool)

(declare-fun c!489320 () Bool)

(assert (=> d!843440 (= c!489320 ((_ is EmptyExpr!9297) r!17423))))

(assert (=> d!843440 (= (matchRSpec!1434 r!17423 s!11993) e!1873997)))

(declare-fun bm!198890 () Bool)

(assert (=> bm!198890 (= call!198896 (isEmpty!19291 s!11993))))

(assert (= (and d!843440 c!489320) b!2979481))

(assert (= (and d!843440 (not c!489320)) b!2979485))

(assert (= (and b!2979485 res!1228615) b!2979478))

(assert (= (and b!2979478 c!489319) b!2979484))

(assert (= (and b!2979478 (not c!489319)) b!2979483))

(assert (= (and b!2979483 c!489318) b!2979488))

(assert (= (and b!2979483 (not c!489318)) b!2979479))

(assert (= (and b!2979488 (not res!1228617)) b!2979486))

(assert (= (and b!2979479 c!489321) b!2979487))

(assert (= (and b!2979479 (not c!489321)) b!2979480))

(assert (= (and b!2979487 (not res!1228616)) b!2979482))

(assert (= (or b!2979482 b!2979480) bm!198891))

(assert (= (or b!2979481 b!2979487) bm!198890))

(declare-fun m!3341531 () Bool)

(assert (=> b!2979486 m!3341531))

(declare-fun m!3341533 () Bool)

(assert (=> bm!198891 m!3341533))

(declare-fun m!3341535 () Bool)

(assert (=> b!2979488 m!3341535))

(assert (=> bm!198890 m!3341479))

(assert (=> b!2979324 d!843440))

(declare-fun b!2979594 () Bool)

(declare-fun e!1874067 () Bool)

(declare-fun e!1874063 () Bool)

(assert (=> b!2979594 (= e!1874067 e!1874063)))

(declare-fun c!489357 () Bool)

(assert (=> b!2979594 (= c!489357 ((_ is EmptyLang!9297) r!17423))))

(declare-fun b!2979595 () Bool)

(declare-fun e!1874062 () Bool)

(declare-fun derivativeStep!2588 (Regex!9297 C!18780) Regex!9297)

(declare-fun head!6647 (List!35162) C!18780)

(declare-fun tail!4873 (List!35162) List!35162)

(assert (=> b!2979595 (= e!1874062 (matchR!4179 (derivativeStep!2588 r!17423 (head!6647 s!11993)) (tail!4873 s!11993)))))

(declare-fun b!2979596 () Bool)

(declare-fun e!1874068 () Bool)

(assert (=> b!2979596 (= e!1874068 (= (head!6647 s!11993) (c!489281 r!17423)))))

(declare-fun b!2979597 () Bool)

(declare-fun lt!1037733 () Bool)

(assert (=> b!2979597 (= e!1874063 (not lt!1037733))))

(declare-fun b!2979598 () Bool)

(declare-fun call!198922 () Bool)

(assert (=> b!2979598 (= e!1874067 (= lt!1037733 call!198922))))

(declare-fun b!2979599 () Bool)

(declare-fun e!1874064 () Bool)

(declare-fun e!1874066 () Bool)

(assert (=> b!2979599 (= e!1874064 e!1874066)))

(declare-fun res!1228661 () Bool)

(assert (=> b!2979599 (=> res!1228661 e!1874066)))

(assert (=> b!2979599 (= res!1228661 call!198922)))

(declare-fun bm!198917 () Bool)

(assert (=> bm!198917 (= call!198922 (isEmpty!19291 s!11993))))

(declare-fun b!2979600 () Bool)

(declare-fun res!1228658 () Bool)

(declare-fun e!1874065 () Bool)

(assert (=> b!2979600 (=> res!1228658 e!1874065)))

(assert (=> b!2979600 (= res!1228658 e!1874068)))

(declare-fun res!1228659 () Bool)

(assert (=> b!2979600 (=> (not res!1228659) (not e!1874068))))

(assert (=> b!2979600 (= res!1228659 lt!1037733)))

(declare-fun d!843444 () Bool)

(assert (=> d!843444 e!1874067))

(declare-fun c!489358 () Bool)

(assert (=> d!843444 (= c!489358 ((_ is EmptyExpr!9297) r!17423))))

(assert (=> d!843444 (= lt!1037733 e!1874062)))

(declare-fun c!489356 () Bool)

(assert (=> d!843444 (= c!489356 (isEmpty!19291 s!11993))))

(assert (=> d!843444 (validRegex!4030 r!17423)))

(assert (=> d!843444 (= (matchR!4179 r!17423 s!11993) lt!1037733)))

(declare-fun b!2979601 () Bool)

(assert (=> b!2979601 (= e!1874065 e!1874064)))

(declare-fun res!1228657 () Bool)

(assert (=> b!2979601 (=> (not res!1228657) (not e!1874064))))

(assert (=> b!2979601 (= res!1228657 (not lt!1037733))))

(declare-fun b!2979602 () Bool)

(assert (=> b!2979602 (= e!1874066 (not (= (head!6647 s!11993) (c!489281 r!17423))))))

(declare-fun b!2979603 () Bool)

(declare-fun nullable!2988 (Regex!9297) Bool)

(assert (=> b!2979603 (= e!1874062 (nullable!2988 r!17423))))

(declare-fun b!2979604 () Bool)

(declare-fun res!1228655 () Bool)

(assert (=> b!2979604 (=> (not res!1228655) (not e!1874068))))

(assert (=> b!2979604 (= res!1228655 (not call!198922))))

(declare-fun b!2979605 () Bool)

(declare-fun res!1228662 () Bool)

(assert (=> b!2979605 (=> res!1228662 e!1874066)))

(assert (=> b!2979605 (= res!1228662 (not (isEmpty!19291 (tail!4873 s!11993))))))

(declare-fun b!2979606 () Bool)

(declare-fun res!1228656 () Bool)

(assert (=> b!2979606 (=> (not res!1228656) (not e!1874068))))

(assert (=> b!2979606 (= res!1228656 (isEmpty!19291 (tail!4873 s!11993)))))

(declare-fun b!2979607 () Bool)

(declare-fun res!1228660 () Bool)

(assert (=> b!2979607 (=> res!1228660 e!1874065)))

(assert (=> b!2979607 (= res!1228660 (not ((_ is ElementMatch!9297) r!17423)))))

(assert (=> b!2979607 (= e!1874063 e!1874065)))

(assert (= (and d!843444 c!489356) b!2979603))

(assert (= (and d!843444 (not c!489356)) b!2979595))

(assert (= (and d!843444 c!489358) b!2979598))

(assert (= (and d!843444 (not c!489358)) b!2979594))

(assert (= (and b!2979594 c!489357) b!2979597))

(assert (= (and b!2979594 (not c!489357)) b!2979607))

(assert (= (and b!2979607 (not res!1228660)) b!2979600))

(assert (= (and b!2979600 res!1228659) b!2979604))

(assert (= (and b!2979604 res!1228655) b!2979606))

(assert (= (and b!2979606 res!1228656) b!2979596))

(assert (= (and b!2979600 (not res!1228658)) b!2979601))

(assert (= (and b!2979601 res!1228657) b!2979599))

(assert (= (and b!2979599 (not res!1228661)) b!2979605))

(assert (= (and b!2979605 (not res!1228662)) b!2979602))

(assert (= (or b!2979598 b!2979599 b!2979604) bm!198917))

(declare-fun m!3341543 () Bool)

(assert (=> b!2979595 m!3341543))

(assert (=> b!2979595 m!3341543))

(declare-fun m!3341545 () Bool)

(assert (=> b!2979595 m!3341545))

(declare-fun m!3341547 () Bool)

(assert (=> b!2979595 m!3341547))

(assert (=> b!2979595 m!3341545))

(assert (=> b!2979595 m!3341547))

(declare-fun m!3341549 () Bool)

(assert (=> b!2979595 m!3341549))

(assert (=> bm!198917 m!3341479))

(assert (=> d!843444 m!3341479))

(assert (=> d!843444 m!3341451))

(assert (=> b!2979596 m!3341543))

(assert (=> b!2979602 m!3341543))

(declare-fun m!3341551 () Bool)

(assert (=> b!2979603 m!3341551))

(assert (=> b!2979605 m!3341547))

(assert (=> b!2979605 m!3341547))

(declare-fun m!3341553 () Bool)

(assert (=> b!2979605 m!3341553))

(assert (=> b!2979606 m!3341547))

(assert (=> b!2979606 m!3341547))

(assert (=> b!2979606 m!3341553))

(assert (=> b!2979324 d!843444))

(declare-fun d!843450 () Bool)

(assert (=> d!843450 (= (matchR!4179 r!17423 s!11993) (matchRSpec!1434 r!17423 s!11993))))

(declare-fun lt!1037740 () Unit!48973)

(assert (=> d!843450 (= lt!1037740 (choose!17641 r!17423 s!11993))))

(assert (=> d!843450 (validRegex!4030 r!17423)))

(assert (=> d!843450 (= (mainMatchTheorem!1434 r!17423 s!11993) lt!1037740)))

(declare-fun bs!527053 () Bool)

(assert (= bs!527053 d!843450))

(assert (=> bs!527053 m!3341469))

(assert (=> bs!527053 m!3341467))

(declare-fun m!3341555 () Bool)

(assert (=> bs!527053 m!3341555))

(assert (=> bs!527053 m!3341451))

(assert (=> b!2979324 d!843450))

(declare-fun d!843452 () Bool)

(assert (=> d!843452 (= (isEmptyLang!411 lt!1037701) ((_ is EmptyLang!9297) lt!1037701))))

(assert (=> b!2979329 d!843452))

(declare-fun bm!198939 () Bool)

(declare-fun c!489397 () Bool)

(declare-fun lt!1037766 () Regex!9297)

(declare-fun lt!1037770 () Regex!9297)

(declare-fun call!198949 () Bool)

(declare-fun c!489396 () Bool)

(declare-fun lt!1037768 () Regex!9297)

(assert (=> bm!198939 (= call!198949 (isEmptyLang!411 (ite c!489397 lt!1037768 (ite c!489396 lt!1037770 lt!1037766))))))

(declare-fun b!2979715 () Bool)

(declare-fun e!1874127 () Regex!9297)

(assert (=> b!2979715 (= e!1874127 (Star!9297 lt!1037768))))

(declare-fun b!2979716 () Bool)

(declare-fun e!1874131 () Regex!9297)

(assert (=> b!2979716 (= e!1874131 EmptyLang!9297)))

(declare-fun b!2979717 () Bool)

(declare-fun e!1874140 () Regex!9297)

(assert (=> b!2979717 (= e!1874140 lt!1037766)))

(declare-fun bm!198940 () Bool)

(declare-fun call!198950 () Regex!9297)

(assert (=> bm!198940 (= call!198950 (simplify!298 (ite c!489397 (reg!9626 (reg!9626 r!17423)) (ite c!489396 (regTwo!19107 (reg!9626 r!17423)) (regOne!19106 (reg!9626 r!17423))))))))

(declare-fun b!2979718 () Bool)

(declare-fun e!1874129 () Regex!9297)

(assert (=> b!2979718 (= e!1874129 EmptyExpr!9297)))

(declare-fun bm!198941 () Bool)

(declare-fun call!198947 () Bool)

(assert (=> bm!198941 (= call!198947 call!198949)))

(declare-fun bm!198942 () Bool)

(declare-fun lt!1037767 () Regex!9297)

(declare-fun call!198944 () Bool)

(declare-fun lt!1037765 () Regex!9297)

(assert (=> bm!198942 (= call!198944 (isEmptyLang!411 (ite c!489396 lt!1037765 lt!1037767)))))

(declare-fun bm!198943 () Bool)

(declare-fun call!198946 () Regex!9297)

(assert (=> bm!198943 (= call!198946 call!198950)))

(declare-fun b!2979719 () Bool)

(declare-fun c!489406 () Bool)

(declare-fun e!1874135 () Bool)

(assert (=> b!2979719 (= c!489406 e!1874135)))

(declare-fun res!1228697 () Bool)

(assert (=> b!2979719 (=> res!1228697 e!1874135)))

(assert (=> b!2979719 (= res!1228697 call!198949)))

(assert (=> b!2979719 (= lt!1037768 call!198950)))

(declare-fun e!1874132 () Regex!9297)

(assert (=> b!2979719 (= e!1874132 e!1874127)))

(declare-fun b!2979720 () Bool)

(declare-fun e!1874128 () Regex!9297)

(assert (=> b!2979720 (= e!1874128 e!1874131)))

(assert (=> b!2979720 (= lt!1037767 call!198946)))

(declare-fun call!198945 () Regex!9297)

(assert (=> b!2979720 (= lt!1037766 call!198945)))

(declare-fun res!1228698 () Bool)

(assert (=> b!2979720 (= res!1228698 call!198944)))

(declare-fun e!1874138 () Bool)

(assert (=> b!2979720 (=> res!1228698 e!1874138)))

(declare-fun c!489400 () Bool)

(assert (=> b!2979720 (= c!489400 e!1874138)))

(declare-fun b!2979721 () Bool)

(declare-fun e!1874130 () Regex!9297)

(assert (=> b!2979721 (= e!1874140 e!1874130)))

(declare-fun c!489399 () Bool)

(declare-fun isEmptyExpr!443 (Regex!9297) Bool)

(assert (=> b!2979721 (= c!489399 (isEmptyExpr!443 lt!1037766))))

(declare-fun b!2979722 () Bool)

(declare-fun e!1874139 () Regex!9297)

(assert (=> b!2979722 (= e!1874139 lt!1037765)))

(declare-fun bm!198944 () Bool)

(declare-fun call!198948 () Bool)

(assert (=> bm!198944 (= call!198948 (isEmptyExpr!443 (ite c!489397 lt!1037768 lt!1037767)))))

(declare-fun b!2979723 () Bool)

(assert (=> b!2979723 (= e!1874135 call!198948)))

(declare-fun b!2979724 () Bool)

(declare-fun c!489405 () Bool)

(assert (=> b!2979724 (= c!489405 ((_ is EmptyExpr!9297) (reg!9626 r!17423)))))

(declare-fun e!1874136 () Regex!9297)

(assert (=> b!2979724 (= e!1874136 e!1874129)))

(declare-fun b!2979725 () Bool)

(declare-fun e!1874134 () Regex!9297)

(assert (=> b!2979725 (= e!1874134 EmptyLang!9297)))

(declare-fun b!2979726 () Bool)

(declare-fun e!1874133 () Regex!9297)

(assert (=> b!2979726 (= e!1874128 e!1874133)))

(assert (=> b!2979726 (= lt!1037765 call!198945)))

(assert (=> b!2979726 (= lt!1037770 call!198946)))

(declare-fun c!489398 () Bool)

(assert (=> b!2979726 (= c!489398 call!198944)))

(declare-fun b!2979727 () Bool)

(assert (=> b!2979727 (= e!1874130 (Concat!14618 lt!1037767 lt!1037766))))

(declare-fun b!2979728 () Bool)

(assert (=> b!2979728 (= e!1874138 call!198947)))

(declare-fun bm!198945 () Bool)

(assert (=> bm!198945 (= call!198945 (simplify!298 (ite c!489396 (regOne!19107 (reg!9626 r!17423)) (regTwo!19106 (reg!9626 r!17423)))))))

(declare-fun b!2979729 () Bool)

(assert (=> b!2979729 (= e!1874133 lt!1037770)))

(declare-fun b!2979730 () Bool)

(assert (=> b!2979730 (= e!1874130 lt!1037767)))

(declare-fun b!2979731 () Bool)

(declare-fun c!489401 () Bool)

(assert (=> b!2979731 (= c!489401 call!198947)))

(assert (=> b!2979731 (= e!1874133 e!1874139)))

(declare-fun b!2979732 () Bool)

(assert (=> b!2979732 (= e!1874129 e!1874132)))

(assert (=> b!2979732 (= c!489397 ((_ is Star!9297) (reg!9626 r!17423)))))

(declare-fun b!2979733 () Bool)

(assert (=> b!2979733 (= c!489396 ((_ is Union!9297) (reg!9626 r!17423)))))

(assert (=> b!2979733 (= e!1874132 e!1874128)))

(declare-fun b!2979734 () Bool)

(declare-fun c!489402 () Bool)

(assert (=> b!2979734 (= c!489402 call!198948)))

(assert (=> b!2979734 (= e!1874131 e!1874140)))

(declare-fun b!2979735 () Bool)

(assert (=> b!2979735 (= e!1874139 (Union!9297 lt!1037765 lt!1037770))))

(declare-fun d!843454 () Bool)

(declare-fun e!1874137 () Bool)

(assert (=> d!843454 e!1874137))

(declare-fun res!1228696 () Bool)

(assert (=> d!843454 (=> (not res!1228696) (not e!1874137))))

(declare-fun lt!1037769 () Regex!9297)

(assert (=> d!843454 (= res!1228696 (validRegex!4030 lt!1037769))))

(assert (=> d!843454 (= lt!1037769 e!1874134)))

(declare-fun c!489403 () Bool)

(assert (=> d!843454 (= c!489403 ((_ is EmptyLang!9297) (reg!9626 r!17423)))))

(assert (=> d!843454 (validRegex!4030 (reg!9626 r!17423))))

(assert (=> d!843454 (= (simplify!298 (reg!9626 r!17423)) lt!1037769)))

(declare-fun b!2979736 () Bool)

(assert (=> b!2979736 (= e!1874134 e!1874136)))

(declare-fun c!489404 () Bool)

(assert (=> b!2979736 (= c!489404 ((_ is ElementMatch!9297) (reg!9626 r!17423)))))

(declare-fun b!2979737 () Bool)

(assert (=> b!2979737 (= e!1874127 EmptyExpr!9297)))

(declare-fun b!2979738 () Bool)

(assert (=> b!2979738 (= e!1874136 (reg!9626 r!17423))))

(declare-fun b!2979739 () Bool)

(assert (=> b!2979739 (= e!1874137 (= (nullable!2988 lt!1037769) (nullable!2988 (reg!9626 r!17423))))))

(assert (= (and d!843454 c!489403) b!2979725))

(assert (= (and d!843454 (not c!489403)) b!2979736))

(assert (= (and b!2979736 c!489404) b!2979738))

(assert (= (and b!2979736 (not c!489404)) b!2979724))

(assert (= (and b!2979724 c!489405) b!2979718))

(assert (= (and b!2979724 (not c!489405)) b!2979732))

(assert (= (and b!2979732 c!489397) b!2979719))

(assert (= (and b!2979732 (not c!489397)) b!2979733))

(assert (= (and b!2979719 (not res!1228697)) b!2979723))

(assert (= (and b!2979719 c!489406) b!2979737))

(assert (= (and b!2979719 (not c!489406)) b!2979715))

(assert (= (and b!2979733 c!489396) b!2979726))

(assert (= (and b!2979733 (not c!489396)) b!2979720))

(assert (= (and b!2979726 c!489398) b!2979729))

(assert (= (and b!2979726 (not c!489398)) b!2979731))

(assert (= (and b!2979731 c!489401) b!2979722))

(assert (= (and b!2979731 (not c!489401)) b!2979735))

(assert (= (and b!2979720 (not res!1228698)) b!2979728))

(assert (= (and b!2979720 c!489400) b!2979716))

(assert (= (and b!2979720 (not c!489400)) b!2979734))

(assert (= (and b!2979734 c!489402) b!2979717))

(assert (= (and b!2979734 (not c!489402)) b!2979721))

(assert (= (and b!2979721 c!489399) b!2979730))

(assert (= (and b!2979721 (not c!489399)) b!2979727))

(assert (= (or b!2979726 b!2979720) bm!198945))

(assert (= (or b!2979726 b!2979720) bm!198943))

(assert (= (or b!2979731 b!2979728) bm!198941))

(assert (= (or b!2979726 b!2979720) bm!198942))

(assert (= (or b!2979723 b!2979734) bm!198944))

(assert (= (or b!2979719 bm!198943) bm!198940))

(assert (= (or b!2979719 bm!198941) bm!198939))

(assert (= (and d!843454 res!1228696) b!2979739))

(declare-fun m!3341611 () Bool)

(assert (=> bm!198945 m!3341611))

(declare-fun m!3341613 () Bool)

(assert (=> bm!198940 m!3341613))

(declare-fun m!3341615 () Bool)

(assert (=> bm!198944 m!3341615))

(declare-fun m!3341617 () Bool)

(assert (=> d!843454 m!3341617))

(assert (=> d!843454 m!3341453))

(declare-fun m!3341619 () Bool)

(assert (=> b!2979721 m!3341619))

(declare-fun m!3341621 () Bool)

(assert (=> b!2979739 m!3341621))

(declare-fun m!3341623 () Bool)

(assert (=> b!2979739 m!3341623))

(declare-fun m!3341625 () Bool)

(assert (=> bm!198939 m!3341625))

(declare-fun m!3341627 () Bool)

(assert (=> bm!198942 m!3341627))

(assert (=> b!2979329 d!843454))

(declare-fun d!843470 () Bool)

(declare-fun res!1228730 () Bool)

(declare-fun e!1874195 () Bool)

(assert (=> d!843470 (=> res!1228730 e!1874195)))

(assert (=> d!843470 (= res!1228730 ((_ is ElementMatch!9297) r!17423))))

(assert (=> d!843470 (= (validRegex!4030 r!17423) e!1874195)))

(declare-fun b!2979836 () Bool)

(declare-fun res!1228734 () Bool)

(declare-fun e!1874197 () Bool)

(assert (=> b!2979836 (=> (not res!1228734) (not e!1874197))))

(declare-fun call!198965 () Bool)

(assert (=> b!2979836 (= res!1228734 call!198965)))

(declare-fun e!1874194 () Bool)

(assert (=> b!2979836 (= e!1874194 e!1874197)))

(declare-fun b!2979837 () Bool)

(declare-fun e!1874191 () Bool)

(assert (=> b!2979837 (= e!1874195 e!1874191)))

(declare-fun c!489422 () Bool)

(assert (=> b!2979837 (= c!489422 ((_ is Star!9297) r!17423))))

(declare-fun b!2979838 () Bool)

(assert (=> b!2979838 (= e!1874191 e!1874194)))

(declare-fun c!489423 () Bool)

(assert (=> b!2979838 (= c!489423 ((_ is Union!9297) r!17423))))

(declare-fun call!198963 () Bool)

(declare-fun bm!198958 () Bool)

(assert (=> bm!198958 (= call!198963 (validRegex!4030 (ite c!489422 (reg!9626 r!17423) (ite c!489423 (regOne!19107 r!17423) (regTwo!19106 r!17423)))))))

(declare-fun bm!198959 () Bool)

(assert (=> bm!198959 (= call!198965 call!198963)))

(declare-fun b!2979839 () Bool)

(declare-fun e!1874193 () Bool)

(assert (=> b!2979839 (= e!1874193 call!198965)))

(declare-fun b!2979840 () Bool)

(declare-fun e!1874192 () Bool)

(assert (=> b!2979840 (= e!1874192 call!198963)))

(declare-fun b!2979841 () Bool)

(declare-fun res!1228732 () Bool)

(declare-fun e!1874196 () Bool)

(assert (=> b!2979841 (=> res!1228732 e!1874196)))

(assert (=> b!2979841 (= res!1228732 (not ((_ is Concat!14618) r!17423)))))

(assert (=> b!2979841 (= e!1874194 e!1874196)))

(declare-fun bm!198960 () Bool)

(declare-fun call!198964 () Bool)

(assert (=> bm!198960 (= call!198964 (validRegex!4030 (ite c!489423 (regTwo!19107 r!17423) (regOne!19106 r!17423))))))

(declare-fun b!2979842 () Bool)

(assert (=> b!2979842 (= e!1874191 e!1874192)))

(declare-fun res!1228733 () Bool)

(assert (=> b!2979842 (= res!1228733 (not (nullable!2988 (reg!9626 r!17423))))))

(assert (=> b!2979842 (=> (not res!1228733) (not e!1874192))))

(declare-fun b!2979843 () Bool)

(assert (=> b!2979843 (= e!1874197 call!198964)))

(declare-fun b!2979844 () Bool)

(assert (=> b!2979844 (= e!1874196 e!1874193)))

(declare-fun res!1228731 () Bool)

(assert (=> b!2979844 (=> (not res!1228731) (not e!1874193))))

(assert (=> b!2979844 (= res!1228731 call!198964)))

(assert (= (and d!843470 (not res!1228730)) b!2979837))

(assert (= (and b!2979837 c!489422) b!2979842))

(assert (= (and b!2979837 (not c!489422)) b!2979838))

(assert (= (and b!2979842 res!1228733) b!2979840))

(assert (= (and b!2979838 c!489423) b!2979836))

(assert (= (and b!2979838 (not c!489423)) b!2979841))

(assert (= (and b!2979836 res!1228734) b!2979843))

(assert (= (and b!2979841 (not res!1228732)) b!2979844))

(assert (= (and b!2979844 res!1228731) b!2979839))

(assert (= (or b!2979836 b!2979839) bm!198959))

(assert (= (or b!2979843 b!2979844) bm!198960))

(assert (= (or b!2979840 bm!198959) bm!198958))

(declare-fun m!3341651 () Bool)

(assert (=> bm!198958 m!3341651))

(declare-fun m!3341653 () Bool)

(assert (=> bm!198960 m!3341653))

(assert (=> b!2979842 m!3341623))

(assert (=> start!287984 d!843470))

(declare-fun b!2979845 () Bool)

(declare-fun e!1874203 () Bool)

(declare-fun e!1874199 () Bool)

(assert (=> b!2979845 (= e!1874203 e!1874199)))

(declare-fun c!489425 () Bool)

(assert (=> b!2979845 (= c!489425 ((_ is EmptyLang!9297) lt!1037704))))

(declare-fun b!2979846 () Bool)

(declare-fun e!1874198 () Bool)

(assert (=> b!2979846 (= e!1874198 (matchR!4179 (derivativeStep!2588 lt!1037704 (head!6647 s!11993)) (tail!4873 s!11993)))))

(declare-fun b!2979847 () Bool)

(declare-fun e!1874204 () Bool)

(assert (=> b!2979847 (= e!1874204 (= (head!6647 s!11993) (c!489281 lt!1037704)))))

(declare-fun b!2979848 () Bool)

(declare-fun lt!1037776 () Bool)

(assert (=> b!2979848 (= e!1874199 (not lt!1037776))))

(declare-fun b!2979849 () Bool)

(declare-fun call!198966 () Bool)

(assert (=> b!2979849 (= e!1874203 (= lt!1037776 call!198966))))

(declare-fun b!2979850 () Bool)

(declare-fun e!1874200 () Bool)

(declare-fun e!1874202 () Bool)

(assert (=> b!2979850 (= e!1874200 e!1874202)))

(declare-fun res!1228741 () Bool)

(assert (=> b!2979850 (=> res!1228741 e!1874202)))

(assert (=> b!2979850 (= res!1228741 call!198966)))

(declare-fun bm!198961 () Bool)

(assert (=> bm!198961 (= call!198966 (isEmpty!19291 s!11993))))

(declare-fun b!2979851 () Bool)

(declare-fun res!1228738 () Bool)

(declare-fun e!1874201 () Bool)

(assert (=> b!2979851 (=> res!1228738 e!1874201)))

(assert (=> b!2979851 (= res!1228738 e!1874204)))

(declare-fun res!1228739 () Bool)

(assert (=> b!2979851 (=> (not res!1228739) (not e!1874204))))

(assert (=> b!2979851 (= res!1228739 lt!1037776)))

(declare-fun d!843480 () Bool)

(assert (=> d!843480 e!1874203))

(declare-fun c!489426 () Bool)

(assert (=> d!843480 (= c!489426 ((_ is EmptyExpr!9297) lt!1037704))))

(assert (=> d!843480 (= lt!1037776 e!1874198)))

(declare-fun c!489424 () Bool)

(assert (=> d!843480 (= c!489424 (isEmpty!19291 s!11993))))

(assert (=> d!843480 (validRegex!4030 lt!1037704)))

(assert (=> d!843480 (= (matchR!4179 lt!1037704 s!11993) lt!1037776)))

(declare-fun b!2979852 () Bool)

(assert (=> b!2979852 (= e!1874201 e!1874200)))

(declare-fun res!1228737 () Bool)

(assert (=> b!2979852 (=> (not res!1228737) (not e!1874200))))

(assert (=> b!2979852 (= res!1228737 (not lt!1037776))))

(declare-fun b!2979853 () Bool)

(assert (=> b!2979853 (= e!1874202 (not (= (head!6647 s!11993) (c!489281 lt!1037704))))))

(declare-fun b!2979854 () Bool)

(assert (=> b!2979854 (= e!1874198 (nullable!2988 lt!1037704))))

(declare-fun b!2979855 () Bool)

(declare-fun res!1228735 () Bool)

(assert (=> b!2979855 (=> (not res!1228735) (not e!1874204))))

(assert (=> b!2979855 (= res!1228735 (not call!198966))))

(declare-fun b!2979856 () Bool)

(declare-fun res!1228742 () Bool)

(assert (=> b!2979856 (=> res!1228742 e!1874202)))

(assert (=> b!2979856 (= res!1228742 (not (isEmpty!19291 (tail!4873 s!11993))))))

(declare-fun b!2979857 () Bool)

(declare-fun res!1228736 () Bool)

(assert (=> b!2979857 (=> (not res!1228736) (not e!1874204))))

(assert (=> b!2979857 (= res!1228736 (isEmpty!19291 (tail!4873 s!11993)))))

(declare-fun b!2979858 () Bool)

(declare-fun res!1228740 () Bool)

(assert (=> b!2979858 (=> res!1228740 e!1874201)))

(assert (=> b!2979858 (= res!1228740 (not ((_ is ElementMatch!9297) lt!1037704)))))

(assert (=> b!2979858 (= e!1874199 e!1874201)))

(assert (= (and d!843480 c!489424) b!2979854))

(assert (= (and d!843480 (not c!489424)) b!2979846))

(assert (= (and d!843480 c!489426) b!2979849))

(assert (= (and d!843480 (not c!489426)) b!2979845))

(assert (= (and b!2979845 c!489425) b!2979848))

(assert (= (and b!2979845 (not c!489425)) b!2979858))

(assert (= (and b!2979858 (not res!1228740)) b!2979851))

(assert (= (and b!2979851 res!1228739) b!2979855))

(assert (= (and b!2979855 res!1228735) b!2979857))

(assert (= (and b!2979857 res!1228736) b!2979847))

(assert (= (and b!2979851 (not res!1228738)) b!2979852))

(assert (= (and b!2979852 res!1228737) b!2979850))

(assert (= (and b!2979850 (not res!1228741)) b!2979856))

(assert (= (and b!2979856 (not res!1228742)) b!2979853))

(assert (= (or b!2979849 b!2979850 b!2979855) bm!198961))

(assert (=> b!2979846 m!3341543))

(assert (=> b!2979846 m!3341543))

(declare-fun m!3341655 () Bool)

(assert (=> b!2979846 m!3341655))

(assert (=> b!2979846 m!3341547))

(assert (=> b!2979846 m!3341655))

(assert (=> b!2979846 m!3341547))

(declare-fun m!3341657 () Bool)

(assert (=> b!2979846 m!3341657))

(assert (=> bm!198961 m!3341479))

(assert (=> d!843480 m!3341479))

(assert (=> d!843480 m!3341527))

(assert (=> b!2979847 m!3341543))

(assert (=> b!2979853 m!3341543))

(declare-fun m!3341659 () Bool)

(assert (=> b!2979854 m!3341659))

(assert (=> b!2979856 m!3341547))

(assert (=> b!2979856 m!3341547))

(assert (=> b!2979856 m!3341553))

(assert (=> b!2979857 m!3341547))

(assert (=> b!2979857 m!3341547))

(assert (=> b!2979857 m!3341553))

(assert (=> b!2979320 d!843480))

(declare-fun d!843482 () Bool)

(declare-fun res!1228743 () Bool)

(declare-fun e!1874209 () Bool)

(assert (=> d!843482 (=> res!1228743 e!1874209)))

(assert (=> d!843482 (= res!1228743 ((_ is ElementMatch!9297) (reg!9626 r!17423)))))

(assert (=> d!843482 (= (validRegex!4030 (reg!9626 r!17423)) e!1874209)))

(declare-fun b!2979859 () Bool)

(declare-fun res!1228747 () Bool)

(declare-fun e!1874211 () Bool)

(assert (=> b!2979859 (=> (not res!1228747) (not e!1874211))))

(declare-fun call!198969 () Bool)

(assert (=> b!2979859 (= res!1228747 call!198969)))

(declare-fun e!1874208 () Bool)

(assert (=> b!2979859 (= e!1874208 e!1874211)))

(declare-fun b!2979860 () Bool)

(declare-fun e!1874205 () Bool)

(assert (=> b!2979860 (= e!1874209 e!1874205)))

(declare-fun c!489427 () Bool)

(assert (=> b!2979860 (= c!489427 ((_ is Star!9297) (reg!9626 r!17423)))))

(declare-fun b!2979861 () Bool)

(assert (=> b!2979861 (= e!1874205 e!1874208)))

(declare-fun c!489428 () Bool)

(assert (=> b!2979861 (= c!489428 ((_ is Union!9297) (reg!9626 r!17423)))))

(declare-fun call!198967 () Bool)

(declare-fun bm!198962 () Bool)

(assert (=> bm!198962 (= call!198967 (validRegex!4030 (ite c!489427 (reg!9626 (reg!9626 r!17423)) (ite c!489428 (regOne!19107 (reg!9626 r!17423)) (regTwo!19106 (reg!9626 r!17423))))))))

(declare-fun bm!198963 () Bool)

(assert (=> bm!198963 (= call!198969 call!198967)))

(declare-fun b!2979862 () Bool)

(declare-fun e!1874207 () Bool)

(assert (=> b!2979862 (= e!1874207 call!198969)))

(declare-fun b!2979863 () Bool)

(declare-fun e!1874206 () Bool)

(assert (=> b!2979863 (= e!1874206 call!198967)))

(declare-fun b!2979864 () Bool)

(declare-fun res!1228745 () Bool)

(declare-fun e!1874210 () Bool)

(assert (=> b!2979864 (=> res!1228745 e!1874210)))

(assert (=> b!2979864 (= res!1228745 (not ((_ is Concat!14618) (reg!9626 r!17423))))))

(assert (=> b!2979864 (= e!1874208 e!1874210)))

(declare-fun bm!198964 () Bool)

(declare-fun call!198968 () Bool)

(assert (=> bm!198964 (= call!198968 (validRegex!4030 (ite c!489428 (regTwo!19107 (reg!9626 r!17423)) (regOne!19106 (reg!9626 r!17423)))))))

(declare-fun b!2979865 () Bool)

(assert (=> b!2979865 (= e!1874205 e!1874206)))

(declare-fun res!1228746 () Bool)

(assert (=> b!2979865 (= res!1228746 (not (nullable!2988 (reg!9626 (reg!9626 r!17423)))))))

(assert (=> b!2979865 (=> (not res!1228746) (not e!1874206))))

(declare-fun b!2979866 () Bool)

(assert (=> b!2979866 (= e!1874211 call!198968)))

(declare-fun b!2979867 () Bool)

(assert (=> b!2979867 (= e!1874210 e!1874207)))

(declare-fun res!1228744 () Bool)

(assert (=> b!2979867 (=> (not res!1228744) (not e!1874207))))

(assert (=> b!2979867 (= res!1228744 call!198968)))

(assert (= (and d!843482 (not res!1228743)) b!2979860))

(assert (= (and b!2979860 c!489427) b!2979865))

(assert (= (and b!2979860 (not c!489427)) b!2979861))

(assert (= (and b!2979865 res!1228746) b!2979863))

(assert (= (and b!2979861 c!489428) b!2979859))

(assert (= (and b!2979861 (not c!489428)) b!2979864))

(assert (= (and b!2979859 res!1228747) b!2979866))

(assert (= (and b!2979864 (not res!1228745)) b!2979867))

(assert (= (and b!2979867 res!1228744) b!2979862))

(assert (= (or b!2979859 b!2979862) bm!198963))

(assert (= (or b!2979866 b!2979867) bm!198964))

(assert (= (or b!2979863 bm!198963) bm!198962))

(declare-fun m!3341661 () Bool)

(assert (=> bm!198962 m!3341661))

(declare-fun m!3341663 () Bool)

(assert (=> bm!198964 m!3341663))

(declare-fun m!3341665 () Bool)

(assert (=> b!2979865 m!3341665))

(assert (=> b!2979331 d!843482))

(declare-fun d!843484 () Bool)

(declare-fun choose!17645 (Int) Bool)

(assert (=> d!843484 (= (Exists!1577 lambda!111052) (choose!17645 lambda!111052))))

(declare-fun bs!527078 () Bool)

(assert (= bs!527078 d!843484))

(declare-fun m!3341667 () Bool)

(assert (=> bs!527078 m!3341667))

(assert (=> b!2979326 d!843484))

(declare-fun d!843486 () Bool)

(declare-fun isEmpty!19293 (Option!6698) Bool)

(assert (=> d!843486 (= (isDefined!5249 lt!1037700) (not (isEmpty!19293 lt!1037700)))))

(declare-fun bs!527079 () Bool)

(assert (= bs!527079 d!843486))

(declare-fun m!3341669 () Bool)

(assert (=> bs!527079 m!3341669))

(assert (=> b!2979326 d!843486))

(declare-fun bs!527080 () Bool)

(declare-fun d!843488 () Bool)

(assert (= bs!527080 (and d!843488 b!2979444)))

(declare-fun lambda!111080 () Int)

(assert (=> bs!527080 (not (= lambda!111080 lambda!111062))))

(declare-fun bs!527081 () Bool)

(assert (= bs!527081 (and d!843488 b!2979326)))

(assert (=> bs!527081 (= lambda!111080 lambda!111051)))

(declare-fun bs!527082 () Bool)

(assert (= bs!527082 (and d!843488 b!2979446)))

(assert (=> bs!527082 (not (= lambda!111080 lambda!111061))))

(declare-fun bs!527083 () Bool)

(assert (= bs!527083 (and d!843488 b!2979480)))

(assert (=> bs!527083 (not (= lambda!111080 lambda!111066))))

(assert (=> bs!527081 (not (= lambda!111080 lambda!111052))))

(declare-fun bs!527084 () Bool)

(assert (= bs!527084 (and d!843488 b!2979482)))

(assert (=> bs!527084 (not (= lambda!111080 lambda!111065))))

(assert (=> d!843488 true))

(assert (=> d!843488 true))

(assert (=> d!843488 true))

(assert (=> d!843488 (= (isDefined!5249 (findConcatSeparation!1092 lt!1037701 lt!1037704 Nil!35038 s!11993 s!11993)) (Exists!1577 lambda!111080))))

(declare-fun lt!1037779 () Unit!48973)

(declare-fun choose!17646 (Regex!9297 Regex!9297 List!35162) Unit!48973)

(assert (=> d!843488 (= lt!1037779 (choose!17646 lt!1037701 lt!1037704 s!11993))))

(assert (=> d!843488 (validRegex!4030 lt!1037701)))

(assert (=> d!843488 (= (lemmaFindConcatSeparationEquivalentToExists!870 lt!1037701 lt!1037704 s!11993) lt!1037779)))

(declare-fun bs!527085 () Bool)

(assert (= bs!527085 d!843488))

(declare-fun m!3341671 () Bool)

(assert (=> bs!527085 m!3341671))

(declare-fun m!3341673 () Bool)

(assert (=> bs!527085 m!3341673))

(assert (=> bs!527085 m!3341463))

(declare-fun m!3341675 () Bool)

(assert (=> bs!527085 m!3341675))

(declare-fun m!3341677 () Bool)

(assert (=> bs!527085 m!3341677))

(assert (=> bs!527085 m!3341463))

(assert (=> b!2979326 d!843488))

(declare-fun bs!527086 () Bool)

(declare-fun d!843490 () Bool)

(assert (= bs!527086 (and d!843490 b!2979444)))

(declare-fun lambda!111085 () Int)

(assert (=> bs!527086 (not (= lambda!111085 lambda!111062))))

(declare-fun bs!527087 () Bool)

(assert (= bs!527087 (and d!843490 b!2979326)))

(assert (=> bs!527087 (= (= (Star!9297 lt!1037701) lt!1037704) (= lambda!111085 lambda!111051))))

(declare-fun bs!527088 () Bool)

(assert (= bs!527088 (and d!843490 d!843488)))

(assert (=> bs!527088 (= (= (Star!9297 lt!1037701) lt!1037704) (= lambda!111085 lambda!111080))))

(declare-fun bs!527089 () Bool)

(assert (= bs!527089 (and d!843490 b!2979446)))

(assert (=> bs!527089 (not (= lambda!111085 lambda!111061))))

(declare-fun bs!527090 () Bool)

(assert (= bs!527090 (and d!843490 b!2979480)))

(assert (=> bs!527090 (not (= lambda!111085 lambda!111066))))

(assert (=> bs!527087 (not (= lambda!111085 lambda!111052))))

(declare-fun bs!527091 () Bool)

(assert (= bs!527091 (and d!843490 b!2979482)))

(assert (=> bs!527091 (not (= lambda!111085 lambda!111065))))

(assert (=> d!843490 true))

(assert (=> d!843490 true))

(declare-fun lambda!111086 () Int)

(assert (=> bs!527086 (not (= lambda!111086 lambda!111062))))

(assert (=> bs!527087 (not (= lambda!111086 lambda!111051))))

(assert (=> bs!527088 (not (= lambda!111086 lambda!111080))))

(assert (=> bs!527089 (= (and (= lt!1037701 (reg!9626 lt!1037704)) (= (Star!9297 lt!1037701) lt!1037704)) (= lambda!111086 lambda!111061))))

(declare-fun bs!527092 () Bool)

(assert (= bs!527092 d!843490))

(assert (=> bs!527092 (not (= lambda!111086 lambda!111085))))

(assert (=> bs!527090 (not (= lambda!111086 lambda!111066))))

(assert (=> bs!527087 (= (= (Star!9297 lt!1037701) lt!1037704) (= lambda!111086 lambda!111052))))

(assert (=> bs!527091 (= (and (= lt!1037701 (reg!9626 r!17423)) (= (Star!9297 lt!1037701) r!17423)) (= lambda!111086 lambda!111065))))

(assert (=> d!843490 true))

(assert (=> d!843490 true))

(assert (=> d!843490 (= (Exists!1577 lambda!111085) (Exists!1577 lambda!111086))))

(declare-fun lt!1037782 () Unit!48973)

(declare-fun choose!17647 (Regex!9297 List!35162) Unit!48973)

(assert (=> d!843490 (= lt!1037782 (choose!17647 lt!1037701 s!11993))))

(assert (=> d!843490 (validRegex!4030 lt!1037701)))

(assert (=> d!843490 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!262 lt!1037701 s!11993) lt!1037782)))

(declare-fun m!3341679 () Bool)

(assert (=> bs!527092 m!3341679))

(declare-fun m!3341681 () Bool)

(assert (=> bs!527092 m!3341681))

(declare-fun m!3341683 () Bool)

(assert (=> bs!527092 m!3341683))

(assert (=> bs!527092 m!3341673))

(assert (=> b!2979326 d!843490))

(declare-fun b!2979900 () Bool)

(declare-fun e!1874229 () Option!6698)

(assert (=> b!2979900 (= e!1874229 None!6697)))

(declare-fun b!2979902 () Bool)

(declare-fun res!1228776 () Bool)

(declare-fun e!1874231 () Bool)

(assert (=> b!2979902 (=> (not res!1228776) (not e!1874231))))

(declare-fun lt!1037789 () Option!6698)

(assert (=> b!2979902 (= res!1228776 (matchR!4179 lt!1037704 (_2!20098 (get!10814 lt!1037789))))))

(declare-fun b!2979903 () Bool)

(declare-fun e!1874228 () Bool)

(assert (=> b!2979903 (= e!1874228 (matchR!4179 lt!1037704 s!11993))))

(declare-fun b!2979904 () Bool)

(declare-fun res!1228772 () Bool)

(assert (=> b!2979904 (=> (not res!1228772) (not e!1874231))))

(assert (=> b!2979904 (= res!1228772 (matchR!4179 lt!1037701 (_1!20098 (get!10814 lt!1037789))))))

(declare-fun b!2979905 () Bool)

(declare-fun e!1874232 () Bool)

(assert (=> b!2979905 (= e!1874232 (not (isDefined!5249 lt!1037789)))))

(declare-fun b!2979906 () Bool)

(declare-fun ++!8363 (List!35162 List!35162) List!35162)

(assert (=> b!2979906 (= e!1874231 (= (++!8363 (_1!20098 (get!10814 lt!1037789)) (_2!20098 (get!10814 lt!1037789))) s!11993))))

(declare-fun b!2979907 () Bool)

(declare-fun e!1874230 () Option!6698)

(assert (=> b!2979907 (= e!1874230 (Some!6697 (tuple2!33933 Nil!35038 s!11993)))))

(declare-fun b!2979908 () Bool)

(assert (=> b!2979908 (= e!1874230 e!1874229)))

(declare-fun c!489433 () Bool)

(assert (=> b!2979908 (= c!489433 ((_ is Nil!35038) s!11993))))

(declare-fun d!843492 () Bool)

(assert (=> d!843492 e!1874232))

(declare-fun res!1228774 () Bool)

(assert (=> d!843492 (=> res!1228774 e!1874232)))

(assert (=> d!843492 (= res!1228774 e!1874231)))

(declare-fun res!1228775 () Bool)

(assert (=> d!843492 (=> (not res!1228775) (not e!1874231))))

(assert (=> d!843492 (= res!1228775 (isDefined!5249 lt!1037789))))

(assert (=> d!843492 (= lt!1037789 e!1874230)))

(declare-fun c!489434 () Bool)

(assert (=> d!843492 (= c!489434 e!1874228)))

(declare-fun res!1228773 () Bool)

(assert (=> d!843492 (=> (not res!1228773) (not e!1874228))))

(assert (=> d!843492 (= res!1228773 (matchR!4179 lt!1037701 Nil!35038))))

(assert (=> d!843492 (validRegex!4030 lt!1037701)))

(assert (=> d!843492 (= (findConcatSeparation!1092 lt!1037701 lt!1037704 Nil!35038 s!11993 s!11993) lt!1037789)))

(declare-fun b!2979901 () Bool)

(declare-fun lt!1037790 () Unit!48973)

(declare-fun lt!1037791 () Unit!48973)

(assert (=> b!2979901 (= lt!1037790 lt!1037791)))

(assert (=> b!2979901 (= (++!8363 (++!8363 Nil!35038 (Cons!35038 (h!40458 s!11993) Nil!35038)) (t!234227 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!982 (List!35162 C!18780 List!35162 List!35162) Unit!48973)

(assert (=> b!2979901 (= lt!1037791 (lemmaMoveElementToOtherListKeepsConcatEq!982 Nil!35038 (h!40458 s!11993) (t!234227 s!11993) s!11993))))

(assert (=> b!2979901 (= e!1874229 (findConcatSeparation!1092 lt!1037701 lt!1037704 (++!8363 Nil!35038 (Cons!35038 (h!40458 s!11993) Nil!35038)) (t!234227 s!11993) s!11993))))

(assert (= (and d!843492 res!1228773) b!2979903))

(assert (= (and d!843492 c!489434) b!2979907))

(assert (= (and d!843492 (not c!489434)) b!2979908))

(assert (= (and b!2979908 c!489433) b!2979900))

(assert (= (and b!2979908 (not c!489433)) b!2979901))

(assert (= (and d!843492 res!1228775) b!2979904))

(assert (= (and b!2979904 res!1228772) b!2979902))

(assert (= (and b!2979902 res!1228776) b!2979906))

(assert (= (and d!843492 (not res!1228774)) b!2979905))

(declare-fun m!3341685 () Bool)

(assert (=> b!2979905 m!3341685))

(declare-fun m!3341687 () Bool)

(assert (=> b!2979906 m!3341687))

(declare-fun m!3341689 () Bool)

(assert (=> b!2979906 m!3341689))

(declare-fun m!3341691 () Bool)

(assert (=> b!2979901 m!3341691))

(assert (=> b!2979901 m!3341691))

(declare-fun m!3341693 () Bool)

(assert (=> b!2979901 m!3341693))

(declare-fun m!3341695 () Bool)

(assert (=> b!2979901 m!3341695))

(assert (=> b!2979901 m!3341691))

(declare-fun m!3341697 () Bool)

(assert (=> b!2979901 m!3341697))

(assert (=> d!843492 m!3341685))

(declare-fun m!3341699 () Bool)

(assert (=> d!843492 m!3341699))

(assert (=> d!843492 m!3341673))

(assert (=> b!2979904 m!3341687))

(declare-fun m!3341701 () Bool)

(assert (=> b!2979904 m!3341701))

(assert (=> b!2979902 m!3341687))

(declare-fun m!3341703 () Bool)

(assert (=> b!2979902 m!3341703))

(assert (=> b!2979903 m!3341477))

(assert (=> b!2979326 d!843492))

(declare-fun d!843494 () Bool)

(assert (=> d!843494 (= (Exists!1577 lambda!111051) (choose!17645 lambda!111051))))

(declare-fun bs!527093 () Bool)

(assert (= bs!527093 d!843494))

(declare-fun m!3341705 () Bool)

(assert (=> bs!527093 m!3341705))

(assert (=> b!2979326 d!843494))

(declare-fun b!2979909 () Bool)

(declare-fun e!1874238 () Bool)

(declare-fun e!1874234 () Bool)

(assert (=> b!2979909 (= e!1874238 e!1874234)))

(declare-fun c!489436 () Bool)

(assert (=> b!2979909 (= c!489436 ((_ is EmptyLang!9297) lt!1037701))))

(declare-fun b!2979910 () Bool)

(declare-fun e!1874233 () Bool)

(assert (=> b!2979910 (= e!1874233 (matchR!4179 (derivativeStep!2588 lt!1037701 (head!6647 (_1!20098 (get!10814 lt!1037700)))) (tail!4873 (_1!20098 (get!10814 lt!1037700)))))))

(declare-fun b!2979911 () Bool)

(declare-fun e!1874239 () Bool)

(assert (=> b!2979911 (= e!1874239 (= (head!6647 (_1!20098 (get!10814 lt!1037700))) (c!489281 lt!1037701)))))

(declare-fun b!2979912 () Bool)

(declare-fun lt!1037792 () Bool)

(assert (=> b!2979912 (= e!1874234 (not lt!1037792))))

(declare-fun b!2979913 () Bool)

(declare-fun call!198970 () Bool)

(assert (=> b!2979913 (= e!1874238 (= lt!1037792 call!198970))))

(declare-fun b!2979914 () Bool)

(declare-fun e!1874235 () Bool)

(declare-fun e!1874237 () Bool)

(assert (=> b!2979914 (= e!1874235 e!1874237)))

(declare-fun res!1228783 () Bool)

(assert (=> b!2979914 (=> res!1228783 e!1874237)))

(assert (=> b!2979914 (= res!1228783 call!198970)))

(declare-fun bm!198965 () Bool)

(assert (=> bm!198965 (= call!198970 (isEmpty!19291 (_1!20098 (get!10814 lt!1037700))))))

(declare-fun b!2979915 () Bool)

(declare-fun res!1228780 () Bool)

(declare-fun e!1874236 () Bool)

(assert (=> b!2979915 (=> res!1228780 e!1874236)))

(assert (=> b!2979915 (= res!1228780 e!1874239)))

(declare-fun res!1228781 () Bool)

(assert (=> b!2979915 (=> (not res!1228781) (not e!1874239))))

(assert (=> b!2979915 (= res!1228781 lt!1037792)))

(declare-fun d!843496 () Bool)

(assert (=> d!843496 e!1874238))

(declare-fun c!489437 () Bool)

(assert (=> d!843496 (= c!489437 ((_ is EmptyExpr!9297) lt!1037701))))

(assert (=> d!843496 (= lt!1037792 e!1874233)))

(declare-fun c!489435 () Bool)

(assert (=> d!843496 (= c!489435 (isEmpty!19291 (_1!20098 (get!10814 lt!1037700))))))

(assert (=> d!843496 (validRegex!4030 lt!1037701)))

(assert (=> d!843496 (= (matchR!4179 lt!1037701 (_1!20098 (get!10814 lt!1037700))) lt!1037792)))

(declare-fun b!2979916 () Bool)

(assert (=> b!2979916 (= e!1874236 e!1874235)))

(declare-fun res!1228779 () Bool)

(assert (=> b!2979916 (=> (not res!1228779) (not e!1874235))))

(assert (=> b!2979916 (= res!1228779 (not lt!1037792))))

(declare-fun b!2979917 () Bool)

(assert (=> b!2979917 (= e!1874237 (not (= (head!6647 (_1!20098 (get!10814 lt!1037700))) (c!489281 lt!1037701))))))

(declare-fun b!2979918 () Bool)

(assert (=> b!2979918 (= e!1874233 (nullable!2988 lt!1037701))))

(declare-fun b!2979919 () Bool)

(declare-fun res!1228777 () Bool)

(assert (=> b!2979919 (=> (not res!1228777) (not e!1874239))))

(assert (=> b!2979919 (= res!1228777 (not call!198970))))

(declare-fun b!2979920 () Bool)

(declare-fun res!1228784 () Bool)

(assert (=> b!2979920 (=> res!1228784 e!1874237)))

(assert (=> b!2979920 (= res!1228784 (not (isEmpty!19291 (tail!4873 (_1!20098 (get!10814 lt!1037700))))))))

(declare-fun b!2979921 () Bool)

(declare-fun res!1228778 () Bool)

(assert (=> b!2979921 (=> (not res!1228778) (not e!1874239))))

(assert (=> b!2979921 (= res!1228778 (isEmpty!19291 (tail!4873 (_1!20098 (get!10814 lt!1037700)))))))

(declare-fun b!2979922 () Bool)

(declare-fun res!1228782 () Bool)

(assert (=> b!2979922 (=> res!1228782 e!1874236)))

(assert (=> b!2979922 (= res!1228782 (not ((_ is ElementMatch!9297) lt!1037701)))))

(assert (=> b!2979922 (= e!1874234 e!1874236)))

(assert (= (and d!843496 c!489435) b!2979918))

(assert (= (and d!843496 (not c!489435)) b!2979910))

(assert (= (and d!843496 c!489437) b!2979913))

(assert (= (and d!843496 (not c!489437)) b!2979909))

(assert (= (and b!2979909 c!489436) b!2979912))

(assert (= (and b!2979909 (not c!489436)) b!2979922))

(assert (= (and b!2979922 (not res!1228782)) b!2979915))

(assert (= (and b!2979915 res!1228781) b!2979919))

(assert (= (and b!2979919 res!1228777) b!2979921))

(assert (= (and b!2979921 res!1228778) b!2979911))

(assert (= (and b!2979915 (not res!1228780)) b!2979916))

(assert (= (and b!2979916 res!1228779) b!2979914))

(assert (= (and b!2979914 (not res!1228783)) b!2979920))

(assert (= (and b!2979920 (not res!1228784)) b!2979917))

(assert (= (or b!2979913 b!2979914 b!2979919) bm!198965))

(declare-fun m!3341707 () Bool)

(assert (=> b!2979910 m!3341707))

(assert (=> b!2979910 m!3341707))

(declare-fun m!3341709 () Bool)

(assert (=> b!2979910 m!3341709))

(declare-fun m!3341711 () Bool)

(assert (=> b!2979910 m!3341711))

(assert (=> b!2979910 m!3341709))

(assert (=> b!2979910 m!3341711))

(declare-fun m!3341713 () Bool)

(assert (=> b!2979910 m!3341713))

(declare-fun m!3341715 () Bool)

(assert (=> bm!198965 m!3341715))

(assert (=> d!843496 m!3341715))

(assert (=> d!843496 m!3341673))

(assert (=> b!2979911 m!3341707))

(assert (=> b!2979917 m!3341707))

(declare-fun m!3341717 () Bool)

(assert (=> b!2979918 m!3341717))

(assert (=> b!2979920 m!3341711))

(assert (=> b!2979920 m!3341711))

(declare-fun m!3341719 () Bool)

(assert (=> b!2979920 m!3341719))

(assert (=> b!2979921 m!3341711))

(assert (=> b!2979921 m!3341711))

(assert (=> b!2979921 m!3341719))

(assert (=> b!2979321 d!843496))

(declare-fun d!843498 () Bool)

(assert (=> d!843498 (= (get!10814 lt!1037700) (v!34831 lt!1037700))))

(assert (=> b!2979321 d!843498))

(declare-fun b!2979936 () Bool)

(declare-fun e!1874242 () Bool)

(declare-fun tp!948877 () Bool)

(declare-fun tp!948875 () Bool)

(assert (=> b!2979936 (= e!1874242 (and tp!948877 tp!948875))))

(declare-fun b!2979935 () Bool)

(declare-fun tp!948876 () Bool)

(assert (=> b!2979935 (= e!1874242 tp!948876)))

(declare-fun b!2979934 () Bool)

(declare-fun tp!948878 () Bool)

(declare-fun tp!948874 () Bool)

(assert (=> b!2979934 (= e!1874242 (and tp!948878 tp!948874))))

(declare-fun b!2979933 () Bool)

(assert (=> b!2979933 (= e!1874242 tp_is_empty!16157)))

(assert (=> b!2979328 (= tp!948821 e!1874242)))

(assert (= (and b!2979328 ((_ is ElementMatch!9297) (reg!9626 r!17423))) b!2979933))

(assert (= (and b!2979328 ((_ is Concat!14618) (reg!9626 r!17423))) b!2979934))

(assert (= (and b!2979328 ((_ is Star!9297) (reg!9626 r!17423))) b!2979935))

(assert (= (and b!2979328 ((_ is Union!9297) (reg!9626 r!17423))) b!2979936))

(declare-fun b!2979940 () Bool)

(declare-fun e!1874243 () Bool)

(declare-fun tp!948882 () Bool)

(declare-fun tp!948880 () Bool)

(assert (=> b!2979940 (= e!1874243 (and tp!948882 tp!948880))))

(declare-fun b!2979939 () Bool)

(declare-fun tp!948881 () Bool)

(assert (=> b!2979939 (= e!1874243 tp!948881)))

(declare-fun b!2979938 () Bool)

(declare-fun tp!948883 () Bool)

(declare-fun tp!948879 () Bool)

(assert (=> b!2979938 (= e!1874243 (and tp!948883 tp!948879))))

(declare-fun b!2979937 () Bool)

(assert (=> b!2979937 (= e!1874243 tp_is_empty!16157)))

(assert (=> b!2979322 (= tp!948824 e!1874243)))

(assert (= (and b!2979322 ((_ is ElementMatch!9297) (regOne!19107 r!17423))) b!2979937))

(assert (= (and b!2979322 ((_ is Concat!14618) (regOne!19107 r!17423))) b!2979938))

(assert (= (and b!2979322 ((_ is Star!9297) (regOne!19107 r!17423))) b!2979939))

(assert (= (and b!2979322 ((_ is Union!9297) (regOne!19107 r!17423))) b!2979940))

(declare-fun b!2979944 () Bool)

(declare-fun e!1874244 () Bool)

(declare-fun tp!948887 () Bool)

(declare-fun tp!948885 () Bool)

(assert (=> b!2979944 (= e!1874244 (and tp!948887 tp!948885))))

(declare-fun b!2979943 () Bool)

(declare-fun tp!948886 () Bool)

(assert (=> b!2979943 (= e!1874244 tp!948886)))

(declare-fun b!2979942 () Bool)

(declare-fun tp!948888 () Bool)

(declare-fun tp!948884 () Bool)

(assert (=> b!2979942 (= e!1874244 (and tp!948888 tp!948884))))

(declare-fun b!2979941 () Bool)

(assert (=> b!2979941 (= e!1874244 tp_is_empty!16157)))

(assert (=> b!2979322 (= tp!948822 e!1874244)))

(assert (= (and b!2979322 ((_ is ElementMatch!9297) (regTwo!19107 r!17423))) b!2979941))

(assert (= (and b!2979322 ((_ is Concat!14618) (regTwo!19107 r!17423))) b!2979942))

(assert (= (and b!2979322 ((_ is Star!9297) (regTwo!19107 r!17423))) b!2979943))

(assert (= (and b!2979322 ((_ is Union!9297) (regTwo!19107 r!17423))) b!2979944))

(declare-fun b!2979949 () Bool)

(declare-fun e!1874247 () Bool)

(declare-fun tp!948891 () Bool)

(assert (=> b!2979949 (= e!1874247 (and tp_is_empty!16157 tp!948891))))

(assert (=> b!2979330 (= tp!948823 e!1874247)))

(assert (= (and b!2979330 ((_ is Cons!35038) (t!234227 s!11993))) b!2979949))

(declare-fun b!2979953 () Bool)

(declare-fun e!1874248 () Bool)

(declare-fun tp!948895 () Bool)

(declare-fun tp!948893 () Bool)

(assert (=> b!2979953 (= e!1874248 (and tp!948895 tp!948893))))

(declare-fun b!2979952 () Bool)

(declare-fun tp!948894 () Bool)

(assert (=> b!2979952 (= e!1874248 tp!948894)))

(declare-fun b!2979951 () Bool)

(declare-fun tp!948896 () Bool)

(declare-fun tp!948892 () Bool)

(assert (=> b!2979951 (= e!1874248 (and tp!948896 tp!948892))))

(declare-fun b!2979950 () Bool)

(assert (=> b!2979950 (= e!1874248 tp_is_empty!16157)))

(assert (=> b!2979325 (= tp!948825 e!1874248)))

(assert (= (and b!2979325 ((_ is ElementMatch!9297) (regOne!19106 r!17423))) b!2979950))

(assert (= (and b!2979325 ((_ is Concat!14618) (regOne!19106 r!17423))) b!2979951))

(assert (= (and b!2979325 ((_ is Star!9297) (regOne!19106 r!17423))) b!2979952))

(assert (= (and b!2979325 ((_ is Union!9297) (regOne!19106 r!17423))) b!2979953))

(declare-fun b!2979957 () Bool)

(declare-fun e!1874249 () Bool)

(declare-fun tp!948900 () Bool)

(declare-fun tp!948898 () Bool)

(assert (=> b!2979957 (= e!1874249 (and tp!948900 tp!948898))))

(declare-fun b!2979956 () Bool)

(declare-fun tp!948899 () Bool)

(assert (=> b!2979956 (= e!1874249 tp!948899)))

(declare-fun b!2979955 () Bool)

(declare-fun tp!948901 () Bool)

(declare-fun tp!948897 () Bool)

(assert (=> b!2979955 (= e!1874249 (and tp!948901 tp!948897))))

(declare-fun b!2979954 () Bool)

(assert (=> b!2979954 (= e!1874249 tp_is_empty!16157)))

(assert (=> b!2979325 (= tp!948820 e!1874249)))

(assert (= (and b!2979325 ((_ is ElementMatch!9297) (regTwo!19106 r!17423))) b!2979954))

(assert (= (and b!2979325 ((_ is Concat!14618) (regTwo!19106 r!17423))) b!2979955))

(assert (= (and b!2979325 ((_ is Star!9297) (regTwo!19106 r!17423))) b!2979956))

(assert (= (and b!2979325 ((_ is Union!9297) (regTwo!19106 r!17423))) b!2979957))

(check-sat (not b!2979955) (not d!843486) (not b!2979940) (not b!2979903) (not b!2979904) (not bm!198882) (not bm!198939) (not b!2979953) (not bm!198961) (not b!2979952) (not b!2979902) (not b!2979905) (not b!2979865) (not b!2979853) (not b!2979596) (not bm!198890) (not bm!198940) (not b!2979935) (not b!2979944) (not d!843488) (not d!843490) (not d!843492) (not bm!198881) (not b!2979936) (not b!2979938) (not b!2979910) (not b!2979606) (not d!843496) (not b!2979911) (not b!2979857) (not b!2979486) (not b!2979934) (not b!2979917) (not bm!198942) (not b!2979721) (not bm!198944) (not b!2979856) (not b!2979846) (not b!2979918) (not b!2979901) (not b!2979450) (not b!2979921) tp_is_empty!16157 (not b!2979842) (not b!2979956) (not b!2979605) (not bm!198965) (not d!843480) (not b!2979906) (not b!2979488) (not bm!198945) (not d!843450) (not d!843454) (not d!843484) (not d!843444) (not b!2979452) (not b!2979943) (not bm!198917) (not b!2979847) (not bm!198891) (not bm!198962) (not bm!198958) (not b!2979739) (not b!2979602) (not b!2979951) (not b!2979595) (not d!843434) (not b!2979920) (not b!2979939) (not b!2979942) (not b!2979603) (not d!843494) (not b!2979854) (not b!2979957) (not bm!198964) (not b!2979949) (not bm!198960))
(check-sat)
