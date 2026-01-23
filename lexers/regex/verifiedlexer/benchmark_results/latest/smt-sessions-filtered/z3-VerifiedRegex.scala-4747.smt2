; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245000 () Bool)

(assert start!245000)

(declare-fun b!2512250 () Bool)

(declare-fun e!1592020 () Bool)

(declare-fun e!1592018 () Bool)

(assert (=> b!2512250 (= e!1592020 e!1592018)))

(declare-fun res!1061990 () Bool)

(assert (=> b!2512250 (=> res!1061990 e!1592018)))

(declare-datatypes ((C!15096 0))(
  ( (C!15097 (val!9200 Int)) )
))
(declare-datatypes ((Regex!7469 0))(
  ( (ElementMatch!7469 (c!400259 C!15096)) (Concat!12165 (regOne!15450 Regex!7469) (regTwo!15450 Regex!7469)) (EmptyExpr!7469) (Star!7469 (reg!7798 Regex!7469)) (EmptyLang!7469) (Union!7469 (regOne!15451 Regex!7469) (regTwo!15451 Regex!7469)) )
))
(declare-fun lt!898002 () Regex!7469)

(declare-fun validRegex!3095 (Regex!7469) Bool)

(assert (=> b!2512250 (= res!1061990 (not (validRegex!3095 lt!898002)))))

(declare-fun r!27340 () Regex!7469)

(declare-datatypes ((List!29534 0))(
  ( (Nil!29434) (Cons!29434 (h!34854 C!15096) (t!211233 List!29534)) )
))
(declare-fun tl!4068 () List!29534)

(declare-datatypes ((tuple2!29468 0))(
  ( (tuple2!29469 (_1!17276 List!29534) (_2!17276 List!29534)) )
))
(declare-datatypes ((Option!5854 0))(
  ( (None!5853) (Some!5853 (v!31784 tuple2!29468)) )
))
(declare-fun isDefined!4676 (Option!5854) Bool)

(declare-fun findConcatSeparation!876 (Regex!7469 Regex!7469 List!29534 List!29534 List!29534) Option!5854)

(assert (=> b!2512250 (isDefined!4676 (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) Nil!29434 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43187 0))(
  ( (Unit!43188) )
))
(declare-fun lt!898003 () Unit!43187)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!158 (Regex!7469 Regex!7469 List!29534) Unit!43187)

(assert (=> b!2512250 (= lt!898003 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!158 lt!898002 (regTwo!15450 r!27340) tl!4068))))

(declare-fun b!2512251 () Bool)

(declare-fun e!1592017 () Bool)

(declare-fun tp_is_empty!12793 () Bool)

(assert (=> b!2512251 (= e!1592017 tp_is_empty!12793)))

(declare-fun b!2512252 () Bool)

(declare-fun res!1061993 () Bool)

(declare-fun e!1592021 () Bool)

(assert (=> b!2512252 (=> (not res!1061993) (not e!1592021))))

(declare-fun nullable!2386 (Regex!7469) Bool)

(assert (=> b!2512252 (= res!1061993 (not (nullable!2386 (regOne!15450 r!27340))))))

(declare-fun res!1061988 () Bool)

(assert (=> start!245000 (=> (not res!1061988) (not e!1592021))))

(assert (=> start!245000 (= res!1061988 (validRegex!3095 r!27340))))

(assert (=> start!245000 e!1592021))

(assert (=> start!245000 e!1592017))

(assert (=> start!245000 tp_is_empty!12793))

(declare-fun e!1592019 () Bool)

(assert (=> start!245000 e!1592019))

(declare-fun b!2512253 () Bool)

(declare-fun res!1061989 () Bool)

(assert (=> b!2512253 (=> (not res!1061989) (not e!1592021))))

(get-info :version)

(assert (=> b!2512253 (= res!1061989 (and (not ((_ is EmptyExpr!7469) r!27340)) (not ((_ is EmptyLang!7469) r!27340)) (not ((_ is ElementMatch!7469) r!27340)) (not ((_ is Union!7469) r!27340)) (not ((_ is Star!7469) r!27340))))))

(declare-fun b!2512254 () Bool)

(declare-fun tp!803322 () Bool)

(assert (=> b!2512254 (= e!1592017 tp!803322)))

(declare-fun b!2512255 () Bool)

(declare-fun ++!7205 (List!29534 List!29534) List!29534)

(assert (=> b!2512255 (= e!1592018 (= (++!7205 Nil!29434 tl!4068) tl!4068))))

(declare-fun b!2512256 () Bool)

(declare-fun e!1592022 () Bool)

(declare-fun matchR!3468 (Regex!7469 List!29534) Bool)

(assert (=> b!2512256 (= e!1592022 (matchR!3468 EmptyLang!7469 tl!4068))))

(declare-fun b!2512257 () Bool)

(declare-fun res!1061992 () Bool)

(assert (=> b!2512257 (=> (not res!1061992) (not e!1592021))))

(declare-fun c!14016 () C!15096)

(declare-fun derivative!164 (Regex!7469 List!29534) Regex!7469)

(declare-fun derivativeStep!2038 (Regex!7469 C!15096) Regex!7469)

(assert (=> b!2512257 (= res!1061992 (nullable!2386 (derivative!164 (derivativeStep!2038 r!27340 c!14016) tl!4068)))))

(declare-fun b!2512258 () Bool)

(declare-fun res!1061987 () Bool)

(assert (=> b!2512258 (=> res!1061987 e!1592018)))

(assert (=> b!2512258 (= res!1061987 (not (validRegex!3095 (regTwo!15450 r!27340))))))

(declare-fun b!2512259 () Bool)

(declare-fun tp!803321 () Bool)

(declare-fun tp!803325 () Bool)

(assert (=> b!2512259 (= e!1592017 (and tp!803321 tp!803325))))

(declare-fun b!2512260 () Bool)

(declare-fun tp!803323 () Bool)

(assert (=> b!2512260 (= e!1592019 (and tp_is_empty!12793 tp!803323))))

(declare-fun b!2512261 () Bool)

(declare-fun tp!803326 () Bool)

(declare-fun tp!803324 () Bool)

(assert (=> b!2512261 (= e!1592017 (and tp!803326 tp!803324))))

(declare-fun b!2512262 () Bool)

(assert (=> b!2512262 (= e!1592021 (not e!1592020))))

(declare-fun res!1061991 () Bool)

(assert (=> b!2512262 (=> res!1061991 e!1592020)))

(declare-fun lt!898005 () Bool)

(assert (=> b!2512262 (= res!1061991 (not lt!898005))))

(assert (=> b!2512262 (= (derivative!164 EmptyLang!7469 tl!4068) EmptyLang!7469)))

(declare-fun lt!898004 () Unit!43187)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!16 (Regex!7469 List!29534) Unit!43187)

(assert (=> b!2512262 (= lt!898004 (lemmaEmptyLangDerivativeIsAFixPoint!16 EmptyLang!7469 tl!4068))))

(assert (=> b!2512262 e!1592022))

(declare-fun res!1061994 () Bool)

(assert (=> b!2512262 (=> res!1061994 e!1592022)))

(assert (=> b!2512262 (= res!1061994 lt!898005)))

(declare-fun lt!897999 () Regex!7469)

(assert (=> b!2512262 (= lt!898005 (matchR!3468 lt!897999 tl!4068))))

(declare-fun lt!898006 () Unit!43187)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!156 (Regex!7469 Regex!7469 List!29534) Unit!43187)

(assert (=> b!2512262 (= lt!898006 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!156 lt!897999 EmptyLang!7469 tl!4068))))

(declare-fun lt!898000 () Regex!7469)

(assert (=> b!2512262 (= (matchR!3468 lt!898000 tl!4068) (matchR!3468 (derivative!164 lt!898000 tl!4068) Nil!29434))))

(declare-fun lt!898001 () Unit!43187)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!114 (Regex!7469 List!29534) Unit!43187)

(assert (=> b!2512262 (= lt!898001 (lemmaMatchRIsSameAsWholeDerivativeAndNil!114 lt!898000 tl!4068))))

(assert (=> b!2512262 (= lt!898000 (Union!7469 lt!897999 EmptyLang!7469))))

(assert (=> b!2512262 (= lt!897999 (Concat!12165 lt!898002 (regTwo!15450 r!27340)))))

(assert (=> b!2512262 (= lt!898002 (derivativeStep!2038 (regOne!15450 r!27340) c!14016))))

(assert (= (and start!245000 res!1061988) b!2512257))

(assert (= (and b!2512257 res!1061992) b!2512253))

(assert (= (and b!2512253 res!1061989) b!2512252))

(assert (= (and b!2512252 res!1061993) b!2512262))

(assert (= (and b!2512262 (not res!1061994)) b!2512256))

(assert (= (and b!2512262 (not res!1061991)) b!2512250))

(assert (= (and b!2512250 (not res!1061990)) b!2512258))

(assert (= (and b!2512258 (not res!1061987)) b!2512255))

(assert (= (and start!245000 ((_ is ElementMatch!7469) r!27340)) b!2512251))

(assert (= (and start!245000 ((_ is Concat!12165) r!27340)) b!2512259))

(assert (= (and start!245000 ((_ is Star!7469) r!27340)) b!2512254))

(assert (= (and start!245000 ((_ is Union!7469) r!27340)) b!2512261))

(assert (= (and start!245000 ((_ is Cons!29434) tl!4068)) b!2512260))

(declare-fun m!2870487 () Bool)

(assert (=> b!2512255 m!2870487))

(declare-fun m!2870489 () Bool)

(assert (=> b!2512250 m!2870489))

(declare-fun m!2870491 () Bool)

(assert (=> b!2512250 m!2870491))

(assert (=> b!2512250 m!2870491))

(declare-fun m!2870493 () Bool)

(assert (=> b!2512250 m!2870493))

(declare-fun m!2870495 () Bool)

(assert (=> b!2512250 m!2870495))

(declare-fun m!2870497 () Bool)

(assert (=> b!2512262 m!2870497))

(declare-fun m!2870499 () Bool)

(assert (=> b!2512262 m!2870499))

(declare-fun m!2870501 () Bool)

(assert (=> b!2512262 m!2870501))

(declare-fun m!2870503 () Bool)

(assert (=> b!2512262 m!2870503))

(declare-fun m!2870505 () Bool)

(assert (=> b!2512262 m!2870505))

(declare-fun m!2870507 () Bool)

(assert (=> b!2512262 m!2870507))

(declare-fun m!2870509 () Bool)

(assert (=> b!2512262 m!2870509))

(declare-fun m!2870511 () Bool)

(assert (=> b!2512262 m!2870511))

(declare-fun m!2870513 () Bool)

(assert (=> b!2512262 m!2870513))

(assert (=> b!2512262 m!2870509))

(declare-fun m!2870515 () Bool)

(assert (=> b!2512252 m!2870515))

(declare-fun m!2870517 () Bool)

(assert (=> b!2512257 m!2870517))

(assert (=> b!2512257 m!2870517))

(declare-fun m!2870519 () Bool)

(assert (=> b!2512257 m!2870519))

(assert (=> b!2512257 m!2870519))

(declare-fun m!2870521 () Bool)

(assert (=> b!2512257 m!2870521))

(declare-fun m!2870523 () Bool)

(assert (=> start!245000 m!2870523))

(declare-fun m!2870525 () Bool)

(assert (=> b!2512258 m!2870525))

(declare-fun m!2870527 () Bool)

(assert (=> b!2512256 m!2870527))

(check-sat tp_is_empty!12793 (not b!2512255) (not b!2512254) (not start!245000) (not b!2512259) (not b!2512261) (not b!2512256) (not b!2512262) (not b!2512252) (not b!2512260) (not b!2512257) (not b!2512258) (not b!2512250))
(check-sat)
(get-model)

(declare-fun d!716836 () Bool)

(declare-fun nullableFct!633 (Regex!7469) Bool)

(assert (=> d!716836 (= (nullable!2386 (derivative!164 (derivativeStep!2038 r!27340 c!14016) tl!4068)) (nullableFct!633 (derivative!164 (derivativeStep!2038 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468806 () Bool)

(assert (= bs!468806 d!716836))

(assert (=> bs!468806 m!2870519))

(declare-fun m!2870529 () Bool)

(assert (=> bs!468806 m!2870529))

(assert (=> b!2512257 d!716836))

(declare-fun d!716838 () Bool)

(declare-fun lt!898009 () Regex!7469)

(assert (=> d!716838 (validRegex!3095 lt!898009)))

(declare-fun e!1592025 () Regex!7469)

(assert (=> d!716838 (= lt!898009 e!1592025)))

(declare-fun c!400262 () Bool)

(assert (=> d!716838 (= c!400262 ((_ is Cons!29434) tl!4068))))

(assert (=> d!716838 (validRegex!3095 (derivativeStep!2038 r!27340 c!14016))))

(assert (=> d!716838 (= (derivative!164 (derivativeStep!2038 r!27340 c!14016) tl!4068) lt!898009)))

(declare-fun b!2512267 () Bool)

(assert (=> b!2512267 (= e!1592025 (derivative!164 (derivativeStep!2038 (derivativeStep!2038 r!27340 c!14016) (h!34854 tl!4068)) (t!211233 tl!4068)))))

(declare-fun b!2512268 () Bool)

(assert (=> b!2512268 (= e!1592025 (derivativeStep!2038 r!27340 c!14016))))

(assert (= (and d!716838 c!400262) b!2512267))

(assert (= (and d!716838 (not c!400262)) b!2512268))

(declare-fun m!2870531 () Bool)

(assert (=> d!716838 m!2870531))

(assert (=> d!716838 m!2870517))

(declare-fun m!2870533 () Bool)

(assert (=> d!716838 m!2870533))

(assert (=> b!2512267 m!2870517))

(declare-fun m!2870535 () Bool)

(assert (=> b!2512267 m!2870535))

(assert (=> b!2512267 m!2870535))

(declare-fun m!2870537 () Bool)

(assert (=> b!2512267 m!2870537))

(assert (=> b!2512257 d!716838))

(declare-fun b!2512325 () Bool)

(declare-fun e!1592064 () Regex!7469)

(assert (=> b!2512325 (= e!1592064 EmptyLang!7469)))

(declare-fun b!2512326 () Bool)

(declare-fun e!1592066 () Regex!7469)

(declare-fun call!155937 () Regex!7469)

(declare-fun call!155936 () Regex!7469)

(assert (=> b!2512326 (= e!1592066 (Union!7469 call!155937 call!155936))))

(declare-fun bm!155929 () Bool)

(declare-fun call!155935 () Regex!7469)

(declare-fun call!155934 () Regex!7469)

(assert (=> bm!155929 (= call!155935 call!155934)))

(declare-fun bm!155930 () Bool)

(declare-fun c!400284 () Bool)

(declare-fun c!400281 () Bool)

(assert (=> bm!155930 (= call!155936 (derivativeStep!2038 (ite c!400281 (regTwo!15451 r!27340) (ite c!400284 (reg!7798 r!27340) (regOne!15450 r!27340))) c!14016))))

(declare-fun d!716842 () Bool)

(declare-fun lt!898012 () Regex!7469)

(assert (=> d!716842 (validRegex!3095 lt!898012)))

(assert (=> d!716842 (= lt!898012 e!1592064)))

(declare-fun c!400282 () Bool)

(assert (=> d!716842 (= c!400282 (or ((_ is EmptyExpr!7469) r!27340) ((_ is EmptyLang!7469) r!27340)))))

(assert (=> d!716842 (validRegex!3095 r!27340)))

(assert (=> d!716842 (= (derivativeStep!2038 r!27340 c!14016) lt!898012)))

(declare-fun bm!155931 () Bool)

(assert (=> bm!155931 (= call!155937 (derivativeStep!2038 (ite c!400281 (regOne!15451 r!27340) (regTwo!15450 r!27340)) c!14016))))

(declare-fun b!2512327 () Bool)

(declare-fun e!1592068 () Regex!7469)

(assert (=> b!2512327 (= e!1592068 (Concat!12165 call!155934 r!27340))))

(declare-fun e!1592065 () Regex!7469)

(declare-fun b!2512328 () Bool)

(assert (=> b!2512328 (= e!1592065 (Union!7469 (Concat!12165 call!155935 (regTwo!15450 r!27340)) call!155937))))

(declare-fun b!2512329 () Bool)

(declare-fun e!1592067 () Regex!7469)

(assert (=> b!2512329 (= e!1592064 e!1592067)))

(declare-fun c!400285 () Bool)

(assert (=> b!2512329 (= c!400285 ((_ is ElementMatch!7469) r!27340))))

(declare-fun b!2512330 () Bool)

(assert (=> b!2512330 (= e!1592065 (Union!7469 (Concat!12165 call!155935 (regTwo!15450 r!27340)) EmptyLang!7469))))

(declare-fun b!2512331 () Bool)

(assert (=> b!2512331 (= c!400281 ((_ is Union!7469) r!27340))))

(assert (=> b!2512331 (= e!1592067 e!1592066)))

(declare-fun b!2512332 () Bool)

(assert (=> b!2512332 (= e!1592066 e!1592068)))

(assert (=> b!2512332 (= c!400284 ((_ is Star!7469) r!27340))))

(declare-fun bm!155932 () Bool)

(assert (=> bm!155932 (= call!155934 call!155936)))

(declare-fun b!2512333 () Bool)

(declare-fun c!400283 () Bool)

(assert (=> b!2512333 (= c!400283 (nullable!2386 (regOne!15450 r!27340)))))

(assert (=> b!2512333 (= e!1592068 e!1592065)))

(declare-fun b!2512334 () Bool)

(assert (=> b!2512334 (= e!1592067 (ite (= c!14016 (c!400259 r!27340)) EmptyExpr!7469 EmptyLang!7469))))

(assert (= (and d!716842 c!400282) b!2512325))

(assert (= (and d!716842 (not c!400282)) b!2512329))

(assert (= (and b!2512329 c!400285) b!2512334))

(assert (= (and b!2512329 (not c!400285)) b!2512331))

(assert (= (and b!2512331 c!400281) b!2512326))

(assert (= (and b!2512331 (not c!400281)) b!2512332))

(assert (= (and b!2512332 c!400284) b!2512327))

(assert (= (and b!2512332 (not c!400284)) b!2512333))

(assert (= (and b!2512333 c!400283) b!2512328))

(assert (= (and b!2512333 (not c!400283)) b!2512330))

(assert (= (or b!2512328 b!2512330) bm!155929))

(assert (= (or b!2512327 bm!155929) bm!155932))

(assert (= (or b!2512326 bm!155932) bm!155930))

(assert (= (or b!2512326 b!2512328) bm!155931))

(declare-fun m!2870553 () Bool)

(assert (=> bm!155930 m!2870553))

(declare-fun m!2870555 () Bool)

(assert (=> d!716842 m!2870555))

(assert (=> d!716842 m!2870523))

(declare-fun m!2870557 () Bool)

(assert (=> bm!155931 m!2870557))

(assert (=> b!2512333 m!2870515))

(assert (=> b!2512257 d!716842))

(declare-fun d!716850 () Bool)

(assert (=> d!716850 (= (nullable!2386 (regOne!15450 r!27340)) (nullableFct!633 (regOne!15450 r!27340)))))

(declare-fun bs!468808 () Bool)

(assert (= bs!468808 d!716850))

(declare-fun m!2870559 () Bool)

(assert (=> bs!468808 m!2870559))

(assert (=> b!2512252 d!716850))

(declare-fun b!2512359 () Bool)

(declare-fun res!1062028 () Bool)

(declare-fun e!1592091 () Bool)

(assert (=> b!2512359 (=> res!1062028 e!1592091)))

(assert (=> b!2512359 (= res!1062028 (not ((_ is Concat!12165) (regTwo!15450 r!27340))))))

(declare-fun e!1592093 () Bool)

(assert (=> b!2512359 (= e!1592093 e!1592091)))

(declare-fun b!2512360 () Bool)

(declare-fun e!1592087 () Bool)

(declare-fun call!155945 () Bool)

(assert (=> b!2512360 (= e!1592087 call!155945)))

(declare-fun b!2512361 () Bool)

(declare-fun e!1592088 () Bool)

(declare-fun call!155944 () Bool)

(assert (=> b!2512361 (= e!1592088 call!155944)))

(declare-fun d!716852 () Bool)

(declare-fun res!1062027 () Bool)

(declare-fun e!1592089 () Bool)

(assert (=> d!716852 (=> res!1062027 e!1592089)))

(assert (=> d!716852 (= res!1062027 ((_ is ElementMatch!7469) (regTwo!15450 r!27340)))))

(assert (=> d!716852 (= (validRegex!3095 (regTwo!15450 r!27340)) e!1592089)))

(declare-fun b!2512362 () Bool)

(declare-fun e!1592092 () Bool)

(assert (=> b!2512362 (= e!1592089 e!1592092)))

(declare-fun c!400292 () Bool)

(assert (=> b!2512362 (= c!400292 ((_ is Star!7469) (regTwo!15450 r!27340)))))

(declare-fun b!2512363 () Bool)

(declare-fun res!1062031 () Bool)

(declare-fun e!1592090 () Bool)

(assert (=> b!2512363 (=> (not res!1062031) (not e!1592090))))

(assert (=> b!2512363 (= res!1062031 call!155944)))

(assert (=> b!2512363 (= e!1592093 e!1592090)))

(declare-fun bm!155939 () Bool)

(declare-fun c!400293 () Bool)

(assert (=> bm!155939 (= call!155944 (validRegex!3095 (ite c!400293 (regOne!15451 (regTwo!15450 r!27340)) (regTwo!15450 (regTwo!15450 r!27340)))))))

(declare-fun b!2512364 () Bool)

(assert (=> b!2512364 (= e!1592091 e!1592088)))

(declare-fun res!1062030 () Bool)

(assert (=> b!2512364 (=> (not res!1062030) (not e!1592088))))

(declare-fun call!155946 () Bool)

(assert (=> b!2512364 (= res!1062030 call!155946)))

(declare-fun b!2512365 () Bool)

(assert (=> b!2512365 (= e!1592090 call!155946)))

(declare-fun b!2512366 () Bool)

(assert (=> b!2512366 (= e!1592092 e!1592093)))

(assert (=> b!2512366 (= c!400293 ((_ is Union!7469) (regTwo!15450 r!27340)))))

(declare-fun bm!155940 () Bool)

(assert (=> bm!155940 (= call!155945 (validRegex!3095 (ite c!400292 (reg!7798 (regTwo!15450 r!27340)) (ite c!400293 (regTwo!15451 (regTwo!15450 r!27340)) (regOne!15450 (regTwo!15450 r!27340))))))))

(declare-fun b!2512367 () Bool)

(assert (=> b!2512367 (= e!1592092 e!1592087)))

(declare-fun res!1062029 () Bool)

(assert (=> b!2512367 (= res!1062029 (not (nullable!2386 (reg!7798 (regTwo!15450 r!27340)))))))

(assert (=> b!2512367 (=> (not res!1062029) (not e!1592087))))

(declare-fun bm!155941 () Bool)

(assert (=> bm!155941 (= call!155946 call!155945)))

(assert (= (and d!716852 (not res!1062027)) b!2512362))

(assert (= (and b!2512362 c!400292) b!2512367))

(assert (= (and b!2512362 (not c!400292)) b!2512366))

(assert (= (and b!2512367 res!1062029) b!2512360))

(assert (= (and b!2512366 c!400293) b!2512363))

(assert (= (and b!2512366 (not c!400293)) b!2512359))

(assert (= (and b!2512363 res!1062031) b!2512365))

(assert (= (and b!2512359 (not res!1062028)) b!2512364))

(assert (= (and b!2512364 res!1062030) b!2512361))

(assert (= (or b!2512363 b!2512361) bm!155939))

(assert (= (or b!2512365 b!2512364) bm!155941))

(assert (= (or b!2512360 bm!155941) bm!155940))

(declare-fun m!2870561 () Bool)

(assert (=> bm!155939 m!2870561))

(declare-fun m!2870563 () Bool)

(assert (=> bm!155940 m!2870563))

(declare-fun m!2870565 () Bool)

(assert (=> b!2512367 m!2870565))

(assert (=> b!2512258 d!716852))

(declare-fun b!2512372 () Bool)

(declare-fun res!1062035 () Bool)

(declare-fun e!1592102 () Bool)

(assert (=> b!2512372 (=> res!1062035 e!1592102)))

(assert (=> b!2512372 (= res!1062035 (not ((_ is Concat!12165) r!27340)))))

(declare-fun e!1592104 () Bool)

(assert (=> b!2512372 (= e!1592104 e!1592102)))

(declare-fun b!2512373 () Bool)

(declare-fun e!1592098 () Bool)

(declare-fun call!155948 () Bool)

(assert (=> b!2512373 (= e!1592098 call!155948)))

(declare-fun b!2512374 () Bool)

(declare-fun e!1592099 () Bool)

(declare-fun call!155947 () Bool)

(assert (=> b!2512374 (= e!1592099 call!155947)))

(declare-fun d!716854 () Bool)

(declare-fun res!1062032 () Bool)

(declare-fun e!1592100 () Bool)

(assert (=> d!716854 (=> res!1062032 e!1592100)))

(assert (=> d!716854 (= res!1062032 ((_ is ElementMatch!7469) r!27340))))

(assert (=> d!716854 (= (validRegex!3095 r!27340) e!1592100)))

(declare-fun b!2512375 () Bool)

(declare-fun e!1592103 () Bool)

(assert (=> b!2512375 (= e!1592100 e!1592103)))

(declare-fun c!400296 () Bool)

(assert (=> b!2512375 (= c!400296 ((_ is Star!7469) r!27340))))

(declare-fun b!2512376 () Bool)

(declare-fun res!1062038 () Bool)

(declare-fun e!1592101 () Bool)

(assert (=> b!2512376 (=> (not res!1062038) (not e!1592101))))

(assert (=> b!2512376 (= res!1062038 call!155947)))

(assert (=> b!2512376 (= e!1592104 e!1592101)))

(declare-fun bm!155942 () Bool)

(declare-fun c!400297 () Bool)

(assert (=> bm!155942 (= call!155947 (validRegex!3095 (ite c!400297 (regOne!15451 r!27340) (regTwo!15450 r!27340))))))

(declare-fun b!2512379 () Bool)

(assert (=> b!2512379 (= e!1592102 e!1592099)))

(declare-fun res!1062037 () Bool)

(assert (=> b!2512379 (=> (not res!1062037) (not e!1592099))))

(declare-fun call!155949 () Bool)

(assert (=> b!2512379 (= res!1062037 call!155949)))

(declare-fun b!2512380 () Bool)

(assert (=> b!2512380 (= e!1592101 call!155949)))

(declare-fun b!2512381 () Bool)

(assert (=> b!2512381 (= e!1592103 e!1592104)))

(assert (=> b!2512381 (= c!400297 ((_ is Union!7469) r!27340))))

(declare-fun bm!155943 () Bool)

(assert (=> bm!155943 (= call!155948 (validRegex!3095 (ite c!400296 (reg!7798 r!27340) (ite c!400297 (regTwo!15451 r!27340) (regOne!15450 r!27340)))))))

(declare-fun b!2512382 () Bool)

(assert (=> b!2512382 (= e!1592103 e!1592098)))

(declare-fun res!1062036 () Bool)

(assert (=> b!2512382 (= res!1062036 (not (nullable!2386 (reg!7798 r!27340))))))

(assert (=> b!2512382 (=> (not res!1062036) (not e!1592098))))

(declare-fun bm!155944 () Bool)

(assert (=> bm!155944 (= call!155949 call!155948)))

(assert (= (and d!716854 (not res!1062032)) b!2512375))

(assert (= (and b!2512375 c!400296) b!2512382))

(assert (= (and b!2512375 (not c!400296)) b!2512381))

(assert (= (and b!2512382 res!1062036) b!2512373))

(assert (= (and b!2512381 c!400297) b!2512376))

(assert (= (and b!2512381 (not c!400297)) b!2512372))

(assert (= (and b!2512376 res!1062038) b!2512380))

(assert (= (and b!2512372 (not res!1062035)) b!2512379))

(assert (= (and b!2512379 res!1062037) b!2512374))

(assert (= (or b!2512376 b!2512374) bm!155942))

(assert (= (or b!2512380 b!2512379) bm!155944))

(assert (= (or b!2512373 bm!155944) bm!155943))

(declare-fun m!2870567 () Bool)

(assert (=> bm!155942 m!2870567))

(declare-fun m!2870569 () Bool)

(assert (=> bm!155943 m!2870569))

(declare-fun m!2870571 () Bool)

(assert (=> b!2512382 m!2870571))

(assert (=> start!245000 d!716854))

(declare-fun b!2512407 () Bool)

(declare-fun e!1592116 () List!29534)

(assert (=> b!2512407 (= e!1592116 (Cons!29434 (h!34854 Nil!29434) (++!7205 (t!211233 Nil!29434) tl!4068)))))

(declare-fun b!2512408 () Bool)

(declare-fun res!1062055 () Bool)

(declare-fun e!1592117 () Bool)

(assert (=> b!2512408 (=> (not res!1062055) (not e!1592117))))

(declare-fun lt!898024 () List!29534)

(declare-fun size!22899 (List!29534) Int)

(assert (=> b!2512408 (= res!1062055 (= (size!22899 lt!898024) (+ (size!22899 Nil!29434) (size!22899 tl!4068))))))

(declare-fun b!2512406 () Bool)

(assert (=> b!2512406 (= e!1592116 tl!4068)))

(declare-fun b!2512409 () Bool)

(assert (=> b!2512409 (= e!1592117 (or (not (= tl!4068 Nil!29434)) (= lt!898024 Nil!29434)))))

(declare-fun d!716856 () Bool)

(assert (=> d!716856 e!1592117))

(declare-fun res!1062054 () Bool)

(assert (=> d!716856 (=> (not res!1062054) (not e!1592117))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4015 (List!29534) (InoxSet C!15096))

(assert (=> d!716856 (= res!1062054 (= (content!4015 lt!898024) ((_ map or) (content!4015 Nil!29434) (content!4015 tl!4068))))))

(assert (=> d!716856 (= lt!898024 e!1592116)))

(declare-fun c!400302 () Bool)

(assert (=> d!716856 (= c!400302 ((_ is Nil!29434) Nil!29434))))

(assert (=> d!716856 (= (++!7205 Nil!29434 tl!4068) lt!898024)))

(assert (= (and d!716856 c!400302) b!2512406))

(assert (= (and d!716856 (not c!400302)) b!2512407))

(assert (= (and d!716856 res!1062054) b!2512408))

(assert (= (and b!2512408 res!1062055) b!2512409))

(declare-fun m!2870595 () Bool)

(assert (=> b!2512407 m!2870595))

(declare-fun m!2870597 () Bool)

(assert (=> b!2512408 m!2870597))

(declare-fun m!2870599 () Bool)

(assert (=> b!2512408 m!2870599))

(declare-fun m!2870601 () Bool)

(assert (=> b!2512408 m!2870601))

(declare-fun m!2870603 () Bool)

(assert (=> d!716856 m!2870603))

(declare-fun m!2870605 () Bool)

(assert (=> d!716856 m!2870605))

(declare-fun m!2870607 () Bool)

(assert (=> d!716856 m!2870607))

(assert (=> b!2512255 d!716856))

(declare-fun b!2512410 () Bool)

(declare-fun res!1062057 () Bool)

(declare-fun e!1592122 () Bool)

(assert (=> b!2512410 (=> res!1062057 e!1592122)))

(assert (=> b!2512410 (= res!1062057 (not ((_ is Concat!12165) lt!898002)))))

(declare-fun e!1592124 () Bool)

(assert (=> b!2512410 (= e!1592124 e!1592122)))

(declare-fun b!2512411 () Bool)

(declare-fun e!1592118 () Bool)

(declare-fun call!155951 () Bool)

(assert (=> b!2512411 (= e!1592118 call!155951)))

(declare-fun b!2512412 () Bool)

(declare-fun e!1592119 () Bool)

(declare-fun call!155950 () Bool)

(assert (=> b!2512412 (= e!1592119 call!155950)))

(declare-fun d!716860 () Bool)

(declare-fun res!1062056 () Bool)

(declare-fun e!1592120 () Bool)

(assert (=> d!716860 (=> res!1062056 e!1592120)))

(assert (=> d!716860 (= res!1062056 ((_ is ElementMatch!7469) lt!898002))))

(assert (=> d!716860 (= (validRegex!3095 lt!898002) e!1592120)))

(declare-fun b!2512413 () Bool)

(declare-fun e!1592123 () Bool)

(assert (=> b!2512413 (= e!1592120 e!1592123)))

(declare-fun c!400303 () Bool)

(assert (=> b!2512413 (= c!400303 ((_ is Star!7469) lt!898002))))

(declare-fun b!2512414 () Bool)

(declare-fun res!1062060 () Bool)

(declare-fun e!1592121 () Bool)

(assert (=> b!2512414 (=> (not res!1062060) (not e!1592121))))

(assert (=> b!2512414 (= res!1062060 call!155950)))

(assert (=> b!2512414 (= e!1592124 e!1592121)))

(declare-fun bm!155945 () Bool)

(declare-fun c!400304 () Bool)

(assert (=> bm!155945 (= call!155950 (validRegex!3095 (ite c!400304 (regOne!15451 lt!898002) (regTwo!15450 lt!898002))))))

(declare-fun b!2512415 () Bool)

(assert (=> b!2512415 (= e!1592122 e!1592119)))

(declare-fun res!1062059 () Bool)

(assert (=> b!2512415 (=> (not res!1062059) (not e!1592119))))

(declare-fun call!155952 () Bool)

(assert (=> b!2512415 (= res!1062059 call!155952)))

(declare-fun b!2512416 () Bool)

(assert (=> b!2512416 (= e!1592121 call!155952)))

(declare-fun b!2512417 () Bool)

(assert (=> b!2512417 (= e!1592123 e!1592124)))

(assert (=> b!2512417 (= c!400304 ((_ is Union!7469) lt!898002))))

(declare-fun bm!155946 () Bool)

(assert (=> bm!155946 (= call!155951 (validRegex!3095 (ite c!400303 (reg!7798 lt!898002) (ite c!400304 (regTwo!15451 lt!898002) (regOne!15450 lt!898002)))))))

(declare-fun b!2512418 () Bool)

(assert (=> b!2512418 (= e!1592123 e!1592118)))

(declare-fun res!1062058 () Bool)

(assert (=> b!2512418 (= res!1062058 (not (nullable!2386 (reg!7798 lt!898002))))))

(assert (=> b!2512418 (=> (not res!1062058) (not e!1592118))))

(declare-fun bm!155947 () Bool)

(assert (=> bm!155947 (= call!155952 call!155951)))

(assert (= (and d!716860 (not res!1062056)) b!2512413))

(assert (= (and b!2512413 c!400303) b!2512418))

(assert (= (and b!2512413 (not c!400303)) b!2512417))

(assert (= (and b!2512418 res!1062058) b!2512411))

(assert (= (and b!2512417 c!400304) b!2512414))

(assert (= (and b!2512417 (not c!400304)) b!2512410))

(assert (= (and b!2512414 res!1062060) b!2512416))

(assert (= (and b!2512410 (not res!1062057)) b!2512415))

(assert (= (and b!2512415 res!1062059) b!2512412))

(assert (= (or b!2512414 b!2512412) bm!155945))

(assert (= (or b!2512416 b!2512415) bm!155947))

(assert (= (or b!2512411 bm!155947) bm!155946))

(declare-fun m!2870609 () Bool)

(assert (=> bm!155945 m!2870609))

(declare-fun m!2870611 () Bool)

(assert (=> bm!155946 m!2870611))

(declare-fun m!2870613 () Bool)

(assert (=> b!2512418 m!2870613))

(assert (=> b!2512250 d!716860))

(declare-fun d!716862 () Bool)

(declare-fun isEmpty!16897 (Option!5854) Bool)

(assert (=> d!716862 (= (isDefined!4676 (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) Nil!29434 tl!4068 tl!4068)) (not (isEmpty!16897 (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) Nil!29434 tl!4068 tl!4068))))))

(declare-fun bs!468809 () Bool)

(assert (= bs!468809 d!716862))

(assert (=> bs!468809 m!2870491))

(declare-fun m!2870615 () Bool)

(assert (=> bs!468809 m!2870615))

(assert (=> b!2512250 d!716862))

(declare-fun b!2512451 () Bool)

(declare-fun lt!898049 () Unit!43187)

(declare-fun lt!898048 () Unit!43187)

(assert (=> b!2512451 (= lt!898049 lt!898048)))

(assert (=> b!2512451 (= (++!7205 (++!7205 Nil!29434 (Cons!29434 (h!34854 tl!4068) Nil!29434)) (t!211233 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!751 (List!29534 C!15096 List!29534 List!29534) Unit!43187)

(assert (=> b!2512451 (= lt!898048 (lemmaMoveElementToOtherListKeepsConcatEq!751 Nil!29434 (h!34854 tl!4068) (t!211233 tl!4068) tl!4068))))

(declare-fun e!1592149 () Option!5854)

(assert (=> b!2512451 (= e!1592149 (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) (++!7205 Nil!29434 (Cons!29434 (h!34854 tl!4068) Nil!29434)) (t!211233 tl!4068) tl!4068))))

(declare-fun b!2512452 () Bool)

(declare-fun e!1592146 () Option!5854)

(assert (=> b!2512452 (= e!1592146 (Some!5853 (tuple2!29469 Nil!29434 tl!4068)))))

(declare-fun b!2512453 () Bool)

(declare-fun res!1062080 () Bool)

(declare-fun e!1592145 () Bool)

(assert (=> b!2512453 (=> (not res!1062080) (not e!1592145))))

(declare-fun lt!898047 () Option!5854)

(declare-fun get!9169 (Option!5854) tuple2!29468)

(assert (=> b!2512453 (= res!1062080 (matchR!3468 (regTwo!15450 r!27340) (_2!17276 (get!9169 lt!898047))))))

(declare-fun b!2512454 () Bool)

(assert (=> b!2512454 (= e!1592146 e!1592149)))

(declare-fun c!400313 () Bool)

(assert (=> b!2512454 (= c!400313 ((_ is Nil!29434) tl!4068))))

(declare-fun b!2512455 () Bool)

(assert (=> b!2512455 (= e!1592145 (= (++!7205 (_1!17276 (get!9169 lt!898047)) (_2!17276 (get!9169 lt!898047))) tl!4068))))

(declare-fun d!716864 () Bool)

(declare-fun e!1592148 () Bool)

(assert (=> d!716864 e!1592148))

(declare-fun res!1062081 () Bool)

(assert (=> d!716864 (=> res!1062081 e!1592148)))

(assert (=> d!716864 (= res!1062081 e!1592145)))

(declare-fun res!1062078 () Bool)

(assert (=> d!716864 (=> (not res!1062078) (not e!1592145))))

(assert (=> d!716864 (= res!1062078 (isDefined!4676 lt!898047))))

(assert (=> d!716864 (= lt!898047 e!1592146)))

(declare-fun c!400314 () Bool)

(declare-fun e!1592147 () Bool)

(assert (=> d!716864 (= c!400314 e!1592147)))

(declare-fun res!1062077 () Bool)

(assert (=> d!716864 (=> (not res!1062077) (not e!1592147))))

(assert (=> d!716864 (= res!1062077 (matchR!3468 lt!898002 Nil!29434))))

(assert (=> d!716864 (validRegex!3095 lt!898002)))

(assert (=> d!716864 (= (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) Nil!29434 tl!4068 tl!4068) lt!898047)))

(declare-fun b!2512456 () Bool)

(assert (=> b!2512456 (= e!1592149 None!5853)))

(declare-fun b!2512457 () Bool)

(assert (=> b!2512457 (= e!1592148 (not (isDefined!4676 lt!898047)))))

(declare-fun b!2512458 () Bool)

(declare-fun res!1062079 () Bool)

(assert (=> b!2512458 (=> (not res!1062079) (not e!1592145))))

(assert (=> b!2512458 (= res!1062079 (matchR!3468 lt!898002 (_1!17276 (get!9169 lt!898047))))))

(declare-fun b!2512459 () Bool)

(assert (=> b!2512459 (= e!1592147 (matchR!3468 (regTwo!15450 r!27340) tl!4068))))

(assert (= (and d!716864 res!1062077) b!2512459))

(assert (= (and d!716864 c!400314) b!2512452))

(assert (= (and d!716864 (not c!400314)) b!2512454))

(assert (= (and b!2512454 c!400313) b!2512456))

(assert (= (and b!2512454 (not c!400313)) b!2512451))

(assert (= (and d!716864 res!1062078) b!2512458))

(assert (= (and b!2512458 res!1062079) b!2512453))

(assert (= (and b!2512453 res!1062080) b!2512455))

(assert (= (and d!716864 (not res!1062081)) b!2512457))

(declare-fun m!2870643 () Bool)

(assert (=> b!2512457 m!2870643))

(declare-fun m!2870645 () Bool)

(assert (=> b!2512453 m!2870645))

(declare-fun m!2870647 () Bool)

(assert (=> b!2512453 m!2870647))

(declare-fun m!2870649 () Bool)

(assert (=> b!2512451 m!2870649))

(assert (=> b!2512451 m!2870649))

(declare-fun m!2870651 () Bool)

(assert (=> b!2512451 m!2870651))

(declare-fun m!2870653 () Bool)

(assert (=> b!2512451 m!2870653))

(assert (=> b!2512451 m!2870649))

(declare-fun m!2870655 () Bool)

(assert (=> b!2512451 m!2870655))

(declare-fun m!2870657 () Bool)

(assert (=> b!2512459 m!2870657))

(assert (=> d!716864 m!2870643))

(declare-fun m!2870659 () Bool)

(assert (=> d!716864 m!2870659))

(assert (=> d!716864 m!2870489))

(assert (=> b!2512458 m!2870645))

(declare-fun m!2870661 () Bool)

(assert (=> b!2512458 m!2870661))

(assert (=> b!2512455 m!2870645))

(declare-fun m!2870663 () Bool)

(assert (=> b!2512455 m!2870663))

(assert (=> b!2512250 d!716864))

(declare-fun d!716878 () Bool)

(assert (=> d!716878 (isDefined!4676 (findConcatSeparation!876 lt!898002 (regTwo!15450 r!27340) Nil!29434 tl!4068 tl!4068))))

(declare-fun lt!898055 () Unit!43187)

(declare-fun choose!14879 (Regex!7469 Regex!7469 List!29534) Unit!43187)

(assert (=> d!716878 (= lt!898055 (choose!14879 lt!898002 (regTwo!15450 r!27340) tl!4068))))

(assert (=> d!716878 (validRegex!3095 lt!898002)))

(assert (=> d!716878 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!158 lt!898002 (regTwo!15450 r!27340) tl!4068) lt!898055)))

(declare-fun bs!468813 () Bool)

(assert (= bs!468813 d!716878))

(assert (=> bs!468813 m!2870491))

(assert (=> bs!468813 m!2870491))

(assert (=> bs!468813 m!2870493))

(declare-fun m!2870665 () Bool)

(assert (=> bs!468813 m!2870665))

(assert (=> bs!468813 m!2870489))

(assert (=> b!2512250 d!716878))

(declare-fun b!2512608 () Bool)

(declare-fun res!1062149 () Bool)

(declare-fun e!1592225 () Bool)

(assert (=> b!2512608 (=> res!1062149 e!1592225)))

(declare-fun e!1592230 () Bool)

(assert (=> b!2512608 (= res!1062149 e!1592230)))

(declare-fun res!1062143 () Bool)

(assert (=> b!2512608 (=> (not res!1062143) (not e!1592230))))

(declare-fun lt!898067 () Bool)

(assert (=> b!2512608 (= res!1062143 lt!898067)))

(declare-fun b!2512609 () Bool)

(declare-fun e!1592226 () Bool)

(assert (=> b!2512609 (= e!1592226 (not lt!898067))))

(declare-fun b!2512610 () Bool)

(declare-fun e!1592228 () Bool)

(declare-fun e!1592229 () Bool)

(assert (=> b!2512610 (= e!1592228 e!1592229)))

(declare-fun res!1062147 () Bool)

(assert (=> b!2512610 (=> res!1062147 e!1592229)))

(declare-fun call!155976 () Bool)

(assert (=> b!2512610 (= res!1062147 call!155976)))

(declare-fun bm!155971 () Bool)

(declare-fun isEmpty!16898 (List!29534) Bool)

(assert (=> bm!155971 (= call!155976 (isEmpty!16898 tl!4068))))

(declare-fun b!2512612 () Bool)

(declare-fun e!1592227 () Bool)

(declare-fun head!5736 (List!29534) C!15096)

(declare-fun tail!4013 (List!29534) List!29534)

(assert (=> b!2512612 (= e!1592227 (matchR!3468 (derivativeStep!2038 EmptyLang!7469 (head!5736 tl!4068)) (tail!4013 tl!4068)))))

(declare-fun b!2512613 () Bool)

(assert (=> b!2512613 (= e!1592225 e!1592228)))

(declare-fun res!1062144 () Bool)

(assert (=> b!2512613 (=> (not res!1062144) (not e!1592228))))

(assert (=> b!2512613 (= res!1062144 (not lt!898067))))

(declare-fun b!2512614 () Bool)

(declare-fun e!1592224 () Bool)

(assert (=> b!2512614 (= e!1592224 e!1592226)))

(declare-fun c!400361 () Bool)

(assert (=> b!2512614 (= c!400361 ((_ is EmptyLang!7469) EmptyLang!7469))))

(declare-fun b!2512615 () Bool)

(assert (=> b!2512615 (= e!1592227 (nullable!2386 EmptyLang!7469))))

(declare-fun b!2512616 () Bool)

(declare-fun res!1062145 () Bool)

(assert (=> b!2512616 (=> (not res!1062145) (not e!1592230))))

(assert (=> b!2512616 (= res!1062145 (not call!155976))))

(declare-fun b!2512617 () Bool)

(declare-fun res!1062142 () Bool)

(assert (=> b!2512617 (=> (not res!1062142) (not e!1592230))))

(assert (=> b!2512617 (= res!1062142 (isEmpty!16898 (tail!4013 tl!4068)))))

(declare-fun b!2512618 () Bool)

(assert (=> b!2512618 (= e!1592224 (= lt!898067 call!155976))))

(declare-fun b!2512619 () Bool)

(assert (=> b!2512619 (= e!1592230 (= (head!5736 tl!4068) (c!400259 EmptyLang!7469)))))

(declare-fun d!716880 () Bool)

(assert (=> d!716880 e!1592224))

(declare-fun c!400360 () Bool)

(assert (=> d!716880 (= c!400360 ((_ is EmptyExpr!7469) EmptyLang!7469))))

(assert (=> d!716880 (= lt!898067 e!1592227)))

(declare-fun c!400359 () Bool)

(assert (=> d!716880 (= c!400359 (isEmpty!16898 tl!4068))))

(assert (=> d!716880 (validRegex!3095 EmptyLang!7469)))

(assert (=> d!716880 (= (matchR!3468 EmptyLang!7469 tl!4068) lt!898067)))

(declare-fun b!2512611 () Bool)

(assert (=> b!2512611 (= e!1592229 (not (= (head!5736 tl!4068) (c!400259 EmptyLang!7469))))))

(declare-fun b!2512620 () Bool)

(declare-fun res!1062146 () Bool)

(assert (=> b!2512620 (=> res!1062146 e!1592229)))

(assert (=> b!2512620 (= res!1062146 (not (isEmpty!16898 (tail!4013 tl!4068))))))

(declare-fun b!2512621 () Bool)

(declare-fun res!1062148 () Bool)

(assert (=> b!2512621 (=> res!1062148 e!1592225)))

(assert (=> b!2512621 (= res!1062148 (not ((_ is ElementMatch!7469) EmptyLang!7469)))))

(assert (=> b!2512621 (= e!1592226 e!1592225)))

(assert (= (and d!716880 c!400359) b!2512615))

(assert (= (and d!716880 (not c!400359)) b!2512612))

(assert (= (and d!716880 c!400360) b!2512618))

(assert (= (and d!716880 (not c!400360)) b!2512614))

(assert (= (and b!2512614 c!400361) b!2512609))

(assert (= (and b!2512614 (not c!400361)) b!2512621))

(assert (= (and b!2512621 (not res!1062148)) b!2512608))

(assert (= (and b!2512608 res!1062143) b!2512616))

(assert (= (and b!2512616 res!1062145) b!2512617))

(assert (= (and b!2512617 res!1062142) b!2512619))

(assert (= (and b!2512608 (not res!1062149)) b!2512613))

(assert (= (and b!2512613 res!1062144) b!2512610))

(assert (= (and b!2512610 (not res!1062147)) b!2512620))

(assert (= (and b!2512620 (not res!1062146)) b!2512611))

(assert (= (or b!2512618 b!2512610 b!2512616) bm!155971))

(declare-fun m!2870745 () Bool)

(assert (=> b!2512619 m!2870745))

(declare-fun m!2870747 () Bool)

(assert (=> b!2512620 m!2870747))

(assert (=> b!2512620 m!2870747))

(declare-fun m!2870749 () Bool)

(assert (=> b!2512620 m!2870749))

(declare-fun m!2870751 () Bool)

(assert (=> bm!155971 m!2870751))

(assert (=> d!716880 m!2870751))

(declare-fun m!2870753 () Bool)

(assert (=> d!716880 m!2870753))

(assert (=> b!2512617 m!2870747))

(assert (=> b!2512617 m!2870747))

(assert (=> b!2512617 m!2870749))

(assert (=> b!2512611 m!2870745))

(assert (=> b!2512612 m!2870745))

(assert (=> b!2512612 m!2870745))

(declare-fun m!2870755 () Bool)

(assert (=> b!2512612 m!2870755))

(assert (=> b!2512612 m!2870747))

(assert (=> b!2512612 m!2870755))

(assert (=> b!2512612 m!2870747))

(declare-fun m!2870763 () Bool)

(assert (=> b!2512612 m!2870763))

(declare-fun m!2870765 () Bool)

(assert (=> b!2512615 m!2870765))

(assert (=> b!2512256 d!716880))

(declare-fun b!2512649 () Bool)

(declare-fun res!1062172 () Bool)

(declare-fun e!1592248 () Bool)

(assert (=> b!2512649 (=> res!1062172 e!1592248)))

(declare-fun e!1592253 () Bool)

(assert (=> b!2512649 (= res!1062172 e!1592253)))

(declare-fun res!1062166 () Bool)

(assert (=> b!2512649 (=> (not res!1062166) (not e!1592253))))

(declare-fun lt!898070 () Bool)

(assert (=> b!2512649 (= res!1062166 lt!898070)))

(declare-fun b!2512650 () Bool)

(declare-fun e!1592249 () Bool)

(assert (=> b!2512650 (= e!1592249 (not lt!898070))))

(declare-fun b!2512651 () Bool)

(declare-fun e!1592251 () Bool)

(declare-fun e!1592252 () Bool)

(assert (=> b!2512651 (= e!1592251 e!1592252)))

(declare-fun res!1062170 () Bool)

(assert (=> b!2512651 (=> res!1062170 e!1592252)))

(declare-fun call!155981 () Bool)

(assert (=> b!2512651 (= res!1062170 call!155981)))

(declare-fun bm!155976 () Bool)

(assert (=> bm!155976 (= call!155981 (isEmpty!16898 tl!4068))))

(declare-fun b!2512653 () Bool)

(declare-fun e!1592250 () Bool)

(assert (=> b!2512653 (= e!1592250 (matchR!3468 (derivativeStep!2038 lt!897999 (head!5736 tl!4068)) (tail!4013 tl!4068)))))

(declare-fun b!2512654 () Bool)

(assert (=> b!2512654 (= e!1592248 e!1592251)))

(declare-fun res!1062167 () Bool)

(assert (=> b!2512654 (=> (not res!1062167) (not e!1592251))))

(assert (=> b!2512654 (= res!1062167 (not lt!898070))))

(declare-fun b!2512655 () Bool)

(declare-fun e!1592247 () Bool)

(assert (=> b!2512655 (= e!1592247 e!1592249)))

(declare-fun c!400370 () Bool)

(assert (=> b!2512655 (= c!400370 ((_ is EmptyLang!7469) lt!897999))))

(declare-fun b!2512656 () Bool)

(assert (=> b!2512656 (= e!1592250 (nullable!2386 lt!897999))))

(declare-fun b!2512657 () Bool)

(declare-fun res!1062168 () Bool)

(assert (=> b!2512657 (=> (not res!1062168) (not e!1592253))))

(assert (=> b!2512657 (= res!1062168 (not call!155981))))

(declare-fun b!2512658 () Bool)

(declare-fun res!1062165 () Bool)

(assert (=> b!2512658 (=> (not res!1062165) (not e!1592253))))

(assert (=> b!2512658 (= res!1062165 (isEmpty!16898 (tail!4013 tl!4068)))))

(declare-fun b!2512659 () Bool)

(assert (=> b!2512659 (= e!1592247 (= lt!898070 call!155981))))

(declare-fun b!2512660 () Bool)

(assert (=> b!2512660 (= e!1592253 (= (head!5736 tl!4068) (c!400259 lt!897999)))))

(declare-fun d!716902 () Bool)

(assert (=> d!716902 e!1592247))

(declare-fun c!400369 () Bool)

(assert (=> d!716902 (= c!400369 ((_ is EmptyExpr!7469) lt!897999))))

(assert (=> d!716902 (= lt!898070 e!1592250)))

(declare-fun c!400368 () Bool)

(assert (=> d!716902 (= c!400368 (isEmpty!16898 tl!4068))))

(assert (=> d!716902 (validRegex!3095 lt!897999)))

(assert (=> d!716902 (= (matchR!3468 lt!897999 tl!4068) lt!898070)))

(declare-fun b!2512652 () Bool)

(assert (=> b!2512652 (= e!1592252 (not (= (head!5736 tl!4068) (c!400259 lt!897999))))))

(declare-fun b!2512661 () Bool)

(declare-fun res!1062169 () Bool)

(assert (=> b!2512661 (=> res!1062169 e!1592252)))

(assert (=> b!2512661 (= res!1062169 (not (isEmpty!16898 (tail!4013 tl!4068))))))

(declare-fun b!2512662 () Bool)

(declare-fun res!1062171 () Bool)

(assert (=> b!2512662 (=> res!1062171 e!1592248)))

(assert (=> b!2512662 (= res!1062171 (not ((_ is ElementMatch!7469) lt!897999)))))

(assert (=> b!2512662 (= e!1592249 e!1592248)))

(assert (= (and d!716902 c!400368) b!2512656))

(assert (= (and d!716902 (not c!400368)) b!2512653))

(assert (= (and d!716902 c!400369) b!2512659))

(assert (= (and d!716902 (not c!400369)) b!2512655))

(assert (= (and b!2512655 c!400370) b!2512650))

(assert (= (and b!2512655 (not c!400370)) b!2512662))

(assert (= (and b!2512662 (not res!1062171)) b!2512649))

(assert (= (and b!2512649 res!1062166) b!2512657))

(assert (= (and b!2512657 res!1062168) b!2512658))

(assert (= (and b!2512658 res!1062165) b!2512660))

(assert (= (and b!2512649 (not res!1062172)) b!2512654))

(assert (= (and b!2512654 res!1062167) b!2512651))

(assert (= (and b!2512651 (not res!1062170)) b!2512661))

(assert (= (and b!2512661 (not res!1062169)) b!2512652))

(assert (= (or b!2512659 b!2512651 b!2512657) bm!155976))

(assert (=> b!2512660 m!2870745))

(assert (=> b!2512661 m!2870747))

(assert (=> b!2512661 m!2870747))

(assert (=> b!2512661 m!2870749))

(assert (=> bm!155976 m!2870751))

(assert (=> d!716902 m!2870751))

(declare-fun m!2870773 () Bool)

(assert (=> d!716902 m!2870773))

(assert (=> b!2512658 m!2870747))

(assert (=> b!2512658 m!2870747))

(assert (=> b!2512658 m!2870749))

(assert (=> b!2512652 m!2870745))

(assert (=> b!2512653 m!2870745))

(assert (=> b!2512653 m!2870745))

(declare-fun m!2870775 () Bool)

(assert (=> b!2512653 m!2870775))

(assert (=> b!2512653 m!2870747))

(assert (=> b!2512653 m!2870775))

(assert (=> b!2512653 m!2870747))

(declare-fun m!2870777 () Bool)

(assert (=> b!2512653 m!2870777))

(declare-fun m!2870779 () Bool)

(assert (=> b!2512656 m!2870779))

(assert (=> b!2512262 d!716902))

(declare-fun b!2512677 () Bool)

(declare-fun e!1592256 () Regex!7469)

(assert (=> b!2512677 (= e!1592256 EmptyLang!7469)))

(declare-fun b!2512678 () Bool)

(declare-fun e!1592258 () Regex!7469)

(declare-fun call!155985 () Regex!7469)

(declare-fun call!155984 () Regex!7469)

(assert (=> b!2512678 (= e!1592258 (Union!7469 call!155985 call!155984))))

(declare-fun bm!155977 () Bool)

(declare-fun call!155983 () Regex!7469)

(declare-fun call!155982 () Regex!7469)

(assert (=> bm!155977 (= call!155983 call!155982)))

(declare-fun c!400371 () Bool)

(declare-fun bm!155978 () Bool)

(declare-fun c!400374 () Bool)

(assert (=> bm!155978 (= call!155984 (derivativeStep!2038 (ite c!400371 (regTwo!15451 (regOne!15450 r!27340)) (ite c!400374 (reg!7798 (regOne!15450 r!27340)) (regOne!15450 (regOne!15450 r!27340)))) c!14016))))

(declare-fun d!716904 () Bool)

(declare-fun lt!898071 () Regex!7469)

(assert (=> d!716904 (validRegex!3095 lt!898071)))

(assert (=> d!716904 (= lt!898071 e!1592256)))

(declare-fun c!400372 () Bool)

(assert (=> d!716904 (= c!400372 (or ((_ is EmptyExpr!7469) (regOne!15450 r!27340)) ((_ is EmptyLang!7469) (regOne!15450 r!27340))))))

(assert (=> d!716904 (validRegex!3095 (regOne!15450 r!27340))))

(assert (=> d!716904 (= (derivativeStep!2038 (regOne!15450 r!27340) c!14016) lt!898071)))

(declare-fun bm!155979 () Bool)

(assert (=> bm!155979 (= call!155985 (derivativeStep!2038 (ite c!400371 (regOne!15451 (regOne!15450 r!27340)) (regTwo!15450 (regOne!15450 r!27340))) c!14016))))

(declare-fun b!2512679 () Bool)

(declare-fun e!1592261 () Regex!7469)

(assert (=> b!2512679 (= e!1592261 (Concat!12165 call!155982 (regOne!15450 r!27340)))))

(declare-fun e!1592257 () Regex!7469)

(declare-fun b!2512680 () Bool)

(assert (=> b!2512680 (= e!1592257 (Union!7469 (Concat!12165 call!155983 (regTwo!15450 (regOne!15450 r!27340))) call!155985))))

(declare-fun b!2512681 () Bool)

(declare-fun e!1592260 () Regex!7469)

(assert (=> b!2512681 (= e!1592256 e!1592260)))

(declare-fun c!400375 () Bool)

(assert (=> b!2512681 (= c!400375 ((_ is ElementMatch!7469) (regOne!15450 r!27340)))))

(declare-fun b!2512682 () Bool)

(assert (=> b!2512682 (= e!1592257 (Union!7469 (Concat!12165 call!155983 (regTwo!15450 (regOne!15450 r!27340))) EmptyLang!7469))))

(declare-fun b!2512683 () Bool)

(assert (=> b!2512683 (= c!400371 ((_ is Union!7469) (regOne!15450 r!27340)))))

(assert (=> b!2512683 (= e!1592260 e!1592258)))

(declare-fun b!2512684 () Bool)

(assert (=> b!2512684 (= e!1592258 e!1592261)))

(assert (=> b!2512684 (= c!400374 ((_ is Star!7469) (regOne!15450 r!27340)))))

(declare-fun bm!155980 () Bool)

(assert (=> bm!155980 (= call!155982 call!155984)))

(declare-fun b!2512685 () Bool)

(declare-fun c!400373 () Bool)

(assert (=> b!2512685 (= c!400373 (nullable!2386 (regOne!15450 (regOne!15450 r!27340))))))

(assert (=> b!2512685 (= e!1592261 e!1592257)))

(declare-fun b!2512686 () Bool)

(assert (=> b!2512686 (= e!1592260 (ite (= c!14016 (c!400259 (regOne!15450 r!27340))) EmptyExpr!7469 EmptyLang!7469))))

(assert (= (and d!716904 c!400372) b!2512677))

(assert (= (and d!716904 (not c!400372)) b!2512681))

(assert (= (and b!2512681 c!400375) b!2512686))

(assert (= (and b!2512681 (not c!400375)) b!2512683))

(assert (= (and b!2512683 c!400371) b!2512678))

(assert (= (and b!2512683 (not c!400371)) b!2512684))

(assert (= (and b!2512684 c!400374) b!2512679))

(assert (= (and b!2512684 (not c!400374)) b!2512685))

(assert (= (and b!2512685 c!400373) b!2512680))

(assert (= (and b!2512685 (not c!400373)) b!2512682))

(assert (= (or b!2512680 b!2512682) bm!155977))

(assert (= (or b!2512679 bm!155977) bm!155980))

(assert (= (or b!2512678 bm!155980) bm!155978))

(assert (= (or b!2512678 b!2512680) bm!155979))

(declare-fun m!2870781 () Bool)

(assert (=> bm!155978 m!2870781))

(declare-fun m!2870783 () Bool)

(assert (=> d!716904 m!2870783))

(declare-fun m!2870785 () Bool)

(assert (=> d!716904 m!2870785))

(declare-fun m!2870787 () Bool)

(assert (=> bm!155979 m!2870787))

(declare-fun m!2870789 () Bool)

(assert (=> b!2512685 m!2870789))

(assert (=> b!2512262 d!716904))

(declare-fun d!716906 () Bool)

(declare-fun lt!898072 () Regex!7469)

(assert (=> d!716906 (validRegex!3095 lt!898072)))

(declare-fun e!1592269 () Regex!7469)

(assert (=> d!716906 (= lt!898072 e!1592269)))

(declare-fun c!400376 () Bool)

(assert (=> d!716906 (= c!400376 ((_ is Cons!29434) tl!4068))))

(assert (=> d!716906 (validRegex!3095 EmptyLang!7469)))

(assert (=> d!716906 (= (derivative!164 EmptyLang!7469 tl!4068) lt!898072)))

(declare-fun b!2512708 () Bool)

(assert (=> b!2512708 (= e!1592269 (derivative!164 (derivativeStep!2038 EmptyLang!7469 (h!34854 tl!4068)) (t!211233 tl!4068)))))

(declare-fun b!2512709 () Bool)

(assert (=> b!2512709 (= e!1592269 EmptyLang!7469)))

(assert (= (and d!716906 c!400376) b!2512708))

(assert (= (and d!716906 (not c!400376)) b!2512709))

(declare-fun m!2870791 () Bool)

(assert (=> d!716906 m!2870791))

(assert (=> d!716906 m!2870753))

(declare-fun m!2870793 () Bool)

(assert (=> b!2512708 m!2870793))

(assert (=> b!2512708 m!2870793))

(declare-fun m!2870795 () Bool)

(assert (=> b!2512708 m!2870795))

(assert (=> b!2512262 d!716906))

(declare-fun d!716908 () Bool)

(declare-fun lt!898073 () Regex!7469)

(assert (=> d!716908 (validRegex!3095 lt!898073)))

(declare-fun e!1592270 () Regex!7469)

(assert (=> d!716908 (= lt!898073 e!1592270)))

(declare-fun c!400377 () Bool)

(assert (=> d!716908 (= c!400377 ((_ is Cons!29434) tl!4068))))

(assert (=> d!716908 (validRegex!3095 lt!898000)))

(assert (=> d!716908 (= (derivative!164 lt!898000 tl!4068) lt!898073)))

(declare-fun b!2512710 () Bool)

(assert (=> b!2512710 (= e!1592270 (derivative!164 (derivativeStep!2038 lt!898000 (h!34854 tl!4068)) (t!211233 tl!4068)))))

(declare-fun b!2512711 () Bool)

(assert (=> b!2512711 (= e!1592270 lt!898000)))

(assert (= (and d!716908 c!400377) b!2512710))

(assert (= (and d!716908 (not c!400377)) b!2512711))

(declare-fun m!2870797 () Bool)

(assert (=> d!716908 m!2870797))

(declare-fun m!2870799 () Bool)

(assert (=> d!716908 m!2870799))

(declare-fun m!2870801 () Bool)

(assert (=> b!2512710 m!2870801))

(assert (=> b!2512710 m!2870801))

(declare-fun m!2870803 () Bool)

(assert (=> b!2512710 m!2870803))

(assert (=> b!2512262 d!716908))

(declare-fun b!2512712 () Bool)

(declare-fun res!1062180 () Bool)

(declare-fun e!1592272 () Bool)

(assert (=> b!2512712 (=> res!1062180 e!1592272)))

(declare-fun e!1592277 () Bool)

(assert (=> b!2512712 (= res!1062180 e!1592277)))

(declare-fun res!1062174 () Bool)

(assert (=> b!2512712 (=> (not res!1062174) (not e!1592277))))

(declare-fun lt!898074 () Bool)

(assert (=> b!2512712 (= res!1062174 lt!898074)))

(declare-fun b!2512713 () Bool)

(declare-fun e!1592273 () Bool)

(assert (=> b!2512713 (= e!1592273 (not lt!898074))))

(declare-fun b!2512714 () Bool)

(declare-fun e!1592275 () Bool)

(declare-fun e!1592276 () Bool)

(assert (=> b!2512714 (= e!1592275 e!1592276)))

(declare-fun res!1062178 () Bool)

(assert (=> b!2512714 (=> res!1062178 e!1592276)))

(declare-fun call!155986 () Bool)

(assert (=> b!2512714 (= res!1062178 call!155986)))

(declare-fun bm!155981 () Bool)

(assert (=> bm!155981 (= call!155986 (isEmpty!16898 Nil!29434))))

(declare-fun b!2512716 () Bool)

(declare-fun e!1592274 () Bool)

(assert (=> b!2512716 (= e!1592274 (matchR!3468 (derivativeStep!2038 (derivative!164 lt!898000 tl!4068) (head!5736 Nil!29434)) (tail!4013 Nil!29434)))))

(declare-fun b!2512717 () Bool)

(assert (=> b!2512717 (= e!1592272 e!1592275)))

(declare-fun res!1062175 () Bool)

(assert (=> b!2512717 (=> (not res!1062175) (not e!1592275))))

(assert (=> b!2512717 (= res!1062175 (not lt!898074))))

(declare-fun b!2512718 () Bool)

(declare-fun e!1592271 () Bool)

(assert (=> b!2512718 (= e!1592271 e!1592273)))

(declare-fun c!400380 () Bool)

(assert (=> b!2512718 (= c!400380 ((_ is EmptyLang!7469) (derivative!164 lt!898000 tl!4068)))))

(declare-fun b!2512719 () Bool)

(assert (=> b!2512719 (= e!1592274 (nullable!2386 (derivative!164 lt!898000 tl!4068)))))

(declare-fun b!2512720 () Bool)

(declare-fun res!1062176 () Bool)

(assert (=> b!2512720 (=> (not res!1062176) (not e!1592277))))

(assert (=> b!2512720 (= res!1062176 (not call!155986))))

(declare-fun b!2512721 () Bool)

(declare-fun res!1062173 () Bool)

(assert (=> b!2512721 (=> (not res!1062173) (not e!1592277))))

(assert (=> b!2512721 (= res!1062173 (isEmpty!16898 (tail!4013 Nil!29434)))))

(declare-fun b!2512722 () Bool)

(assert (=> b!2512722 (= e!1592271 (= lt!898074 call!155986))))

(declare-fun b!2512723 () Bool)

(assert (=> b!2512723 (= e!1592277 (= (head!5736 Nil!29434) (c!400259 (derivative!164 lt!898000 tl!4068))))))

(declare-fun d!716910 () Bool)

(assert (=> d!716910 e!1592271))

(declare-fun c!400379 () Bool)

(assert (=> d!716910 (= c!400379 ((_ is EmptyExpr!7469) (derivative!164 lt!898000 tl!4068)))))

(assert (=> d!716910 (= lt!898074 e!1592274)))

(declare-fun c!400378 () Bool)

(assert (=> d!716910 (= c!400378 (isEmpty!16898 Nil!29434))))

(assert (=> d!716910 (validRegex!3095 (derivative!164 lt!898000 tl!4068))))

(assert (=> d!716910 (= (matchR!3468 (derivative!164 lt!898000 tl!4068) Nil!29434) lt!898074)))

(declare-fun b!2512715 () Bool)

(assert (=> b!2512715 (= e!1592276 (not (= (head!5736 Nil!29434) (c!400259 (derivative!164 lt!898000 tl!4068)))))))

(declare-fun b!2512724 () Bool)

(declare-fun res!1062177 () Bool)

(assert (=> b!2512724 (=> res!1062177 e!1592276)))

(assert (=> b!2512724 (= res!1062177 (not (isEmpty!16898 (tail!4013 Nil!29434))))))

(declare-fun b!2512725 () Bool)

(declare-fun res!1062179 () Bool)

(assert (=> b!2512725 (=> res!1062179 e!1592272)))

(assert (=> b!2512725 (= res!1062179 (not ((_ is ElementMatch!7469) (derivative!164 lt!898000 tl!4068))))))

(assert (=> b!2512725 (= e!1592273 e!1592272)))

(assert (= (and d!716910 c!400378) b!2512719))

(assert (= (and d!716910 (not c!400378)) b!2512716))

(assert (= (and d!716910 c!400379) b!2512722))

(assert (= (and d!716910 (not c!400379)) b!2512718))

(assert (= (and b!2512718 c!400380) b!2512713))

(assert (= (and b!2512718 (not c!400380)) b!2512725))

(assert (= (and b!2512725 (not res!1062179)) b!2512712))

(assert (= (and b!2512712 res!1062174) b!2512720))

(assert (= (and b!2512720 res!1062176) b!2512721))

(assert (= (and b!2512721 res!1062173) b!2512723))

(assert (= (and b!2512712 (not res!1062180)) b!2512717))

(assert (= (and b!2512717 res!1062175) b!2512714))

(assert (= (and b!2512714 (not res!1062178)) b!2512724))

(assert (= (and b!2512724 (not res!1062177)) b!2512715))

(assert (= (or b!2512722 b!2512714 b!2512720) bm!155981))

(declare-fun m!2870805 () Bool)

(assert (=> b!2512723 m!2870805))

(declare-fun m!2870807 () Bool)

(assert (=> b!2512724 m!2870807))

(assert (=> b!2512724 m!2870807))

(declare-fun m!2870809 () Bool)

(assert (=> b!2512724 m!2870809))

(declare-fun m!2870811 () Bool)

(assert (=> bm!155981 m!2870811))

(assert (=> d!716910 m!2870811))

(assert (=> d!716910 m!2870509))

(declare-fun m!2870813 () Bool)

(assert (=> d!716910 m!2870813))

(assert (=> b!2512721 m!2870807))

(assert (=> b!2512721 m!2870807))

(assert (=> b!2512721 m!2870809))

(assert (=> b!2512715 m!2870805))

(assert (=> b!2512716 m!2870805))

(assert (=> b!2512716 m!2870509))

(assert (=> b!2512716 m!2870805))

(declare-fun m!2870815 () Bool)

(assert (=> b!2512716 m!2870815))

(assert (=> b!2512716 m!2870807))

(assert (=> b!2512716 m!2870815))

(assert (=> b!2512716 m!2870807))

(declare-fun m!2870817 () Bool)

(assert (=> b!2512716 m!2870817))

(assert (=> b!2512719 m!2870509))

(declare-fun m!2870819 () Bool)

(assert (=> b!2512719 m!2870819))

(assert (=> b!2512262 d!716910))

(declare-fun b!2512726 () Bool)

(declare-fun res!1062188 () Bool)

(declare-fun e!1592279 () Bool)

(assert (=> b!2512726 (=> res!1062188 e!1592279)))

(declare-fun e!1592284 () Bool)

(assert (=> b!2512726 (= res!1062188 e!1592284)))

(declare-fun res!1062182 () Bool)

(assert (=> b!2512726 (=> (not res!1062182) (not e!1592284))))

(declare-fun lt!898075 () Bool)

(assert (=> b!2512726 (= res!1062182 lt!898075)))

(declare-fun b!2512727 () Bool)

(declare-fun e!1592280 () Bool)

(assert (=> b!2512727 (= e!1592280 (not lt!898075))))

(declare-fun b!2512728 () Bool)

(declare-fun e!1592282 () Bool)

(declare-fun e!1592283 () Bool)

(assert (=> b!2512728 (= e!1592282 e!1592283)))

(declare-fun res!1062186 () Bool)

(assert (=> b!2512728 (=> res!1062186 e!1592283)))

(declare-fun call!155987 () Bool)

(assert (=> b!2512728 (= res!1062186 call!155987)))

(declare-fun bm!155982 () Bool)

(assert (=> bm!155982 (= call!155987 (isEmpty!16898 tl!4068))))

(declare-fun b!2512730 () Bool)

(declare-fun e!1592281 () Bool)

(assert (=> b!2512730 (= e!1592281 (matchR!3468 (derivativeStep!2038 lt!898000 (head!5736 tl!4068)) (tail!4013 tl!4068)))))

(declare-fun b!2512731 () Bool)

(assert (=> b!2512731 (= e!1592279 e!1592282)))

(declare-fun res!1062183 () Bool)

(assert (=> b!2512731 (=> (not res!1062183) (not e!1592282))))

(assert (=> b!2512731 (= res!1062183 (not lt!898075))))

(declare-fun b!2512732 () Bool)

(declare-fun e!1592278 () Bool)

(assert (=> b!2512732 (= e!1592278 e!1592280)))

(declare-fun c!400383 () Bool)

(assert (=> b!2512732 (= c!400383 ((_ is EmptyLang!7469) lt!898000))))

(declare-fun b!2512733 () Bool)

(assert (=> b!2512733 (= e!1592281 (nullable!2386 lt!898000))))

(declare-fun b!2512734 () Bool)

(declare-fun res!1062184 () Bool)

(assert (=> b!2512734 (=> (not res!1062184) (not e!1592284))))

(assert (=> b!2512734 (= res!1062184 (not call!155987))))

(declare-fun b!2512735 () Bool)

(declare-fun res!1062181 () Bool)

(assert (=> b!2512735 (=> (not res!1062181) (not e!1592284))))

(assert (=> b!2512735 (= res!1062181 (isEmpty!16898 (tail!4013 tl!4068)))))

(declare-fun b!2512736 () Bool)

(assert (=> b!2512736 (= e!1592278 (= lt!898075 call!155987))))

(declare-fun b!2512737 () Bool)

(assert (=> b!2512737 (= e!1592284 (= (head!5736 tl!4068) (c!400259 lt!898000)))))

(declare-fun d!716912 () Bool)

(assert (=> d!716912 e!1592278))

(declare-fun c!400382 () Bool)

(assert (=> d!716912 (= c!400382 ((_ is EmptyExpr!7469) lt!898000))))

(assert (=> d!716912 (= lt!898075 e!1592281)))

(declare-fun c!400381 () Bool)

(assert (=> d!716912 (= c!400381 (isEmpty!16898 tl!4068))))

(assert (=> d!716912 (validRegex!3095 lt!898000)))

(assert (=> d!716912 (= (matchR!3468 lt!898000 tl!4068) lt!898075)))

(declare-fun b!2512729 () Bool)

(assert (=> b!2512729 (= e!1592283 (not (= (head!5736 tl!4068) (c!400259 lt!898000))))))

(declare-fun b!2512738 () Bool)

(declare-fun res!1062185 () Bool)

(assert (=> b!2512738 (=> res!1062185 e!1592283)))

(assert (=> b!2512738 (= res!1062185 (not (isEmpty!16898 (tail!4013 tl!4068))))))

(declare-fun b!2512739 () Bool)

(declare-fun res!1062187 () Bool)

(assert (=> b!2512739 (=> res!1062187 e!1592279)))

(assert (=> b!2512739 (= res!1062187 (not ((_ is ElementMatch!7469) lt!898000)))))

(assert (=> b!2512739 (= e!1592280 e!1592279)))

(assert (= (and d!716912 c!400381) b!2512733))

(assert (= (and d!716912 (not c!400381)) b!2512730))

(assert (= (and d!716912 c!400382) b!2512736))

(assert (= (and d!716912 (not c!400382)) b!2512732))

(assert (= (and b!2512732 c!400383) b!2512727))

(assert (= (and b!2512732 (not c!400383)) b!2512739))

(assert (= (and b!2512739 (not res!1062187)) b!2512726))

(assert (= (and b!2512726 res!1062182) b!2512734))

(assert (= (and b!2512734 res!1062184) b!2512735))

(assert (= (and b!2512735 res!1062181) b!2512737))

(assert (= (and b!2512726 (not res!1062188)) b!2512731))

(assert (= (and b!2512731 res!1062183) b!2512728))

(assert (= (and b!2512728 (not res!1062186)) b!2512738))

(assert (= (and b!2512738 (not res!1062185)) b!2512729))

(assert (= (or b!2512736 b!2512728 b!2512734) bm!155982))

(assert (=> b!2512737 m!2870745))

(assert (=> b!2512738 m!2870747))

(assert (=> b!2512738 m!2870747))

(assert (=> b!2512738 m!2870749))

(assert (=> bm!155982 m!2870751))

(assert (=> d!716912 m!2870751))

(assert (=> d!716912 m!2870799))

(assert (=> b!2512735 m!2870747))

(assert (=> b!2512735 m!2870747))

(assert (=> b!2512735 m!2870749))

(assert (=> b!2512729 m!2870745))

(assert (=> b!2512730 m!2870745))

(assert (=> b!2512730 m!2870745))

(declare-fun m!2870821 () Bool)

(assert (=> b!2512730 m!2870821))

(assert (=> b!2512730 m!2870747))

(assert (=> b!2512730 m!2870821))

(assert (=> b!2512730 m!2870747))

(declare-fun m!2870823 () Bool)

(assert (=> b!2512730 m!2870823))

(declare-fun m!2870825 () Bool)

(assert (=> b!2512733 m!2870825))

(assert (=> b!2512262 d!716912))

(declare-fun d!716914 () Bool)

(declare-fun e!1592290 () Bool)

(assert (=> d!716914 e!1592290))

(declare-fun res!1062194 () Bool)

(assert (=> d!716914 (=> res!1062194 e!1592290)))

(assert (=> d!716914 (= res!1062194 (matchR!3468 lt!897999 tl!4068))))

(declare-fun lt!898078 () Unit!43187)

(declare-fun choose!14880 (Regex!7469 Regex!7469 List!29534) Unit!43187)

(assert (=> d!716914 (= lt!898078 (choose!14880 lt!897999 EmptyLang!7469 tl!4068))))

(declare-fun e!1592289 () Bool)

(assert (=> d!716914 e!1592289))

(declare-fun res!1062193 () Bool)

(assert (=> d!716914 (=> (not res!1062193) (not e!1592289))))

(assert (=> d!716914 (= res!1062193 (validRegex!3095 lt!897999))))

(assert (=> d!716914 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!156 lt!897999 EmptyLang!7469 tl!4068) lt!898078)))

(declare-fun b!2512744 () Bool)

(assert (=> b!2512744 (= e!1592289 (validRegex!3095 EmptyLang!7469))))

(declare-fun b!2512745 () Bool)

(assert (=> b!2512745 (= e!1592290 (matchR!3468 EmptyLang!7469 tl!4068))))

(assert (= (and d!716914 res!1062193) b!2512744))

(assert (= (and d!716914 (not res!1062194)) b!2512745))

(assert (=> d!716914 m!2870497))

(declare-fun m!2870827 () Bool)

(assert (=> d!716914 m!2870827))

(assert (=> d!716914 m!2870773))

(assert (=> b!2512744 m!2870753))

(assert (=> b!2512745 m!2870527))

(assert (=> b!2512262 d!716914))

(declare-fun d!716916 () Bool)

(assert (=> d!716916 (= (matchR!3468 lt!898000 tl!4068) (matchR!3468 (derivative!164 lt!898000 tl!4068) Nil!29434))))

(declare-fun lt!898081 () Unit!43187)

(declare-fun choose!14881 (Regex!7469 List!29534) Unit!43187)

(assert (=> d!716916 (= lt!898081 (choose!14881 lt!898000 tl!4068))))

(assert (=> d!716916 (validRegex!3095 lt!898000)))

(assert (=> d!716916 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!114 lt!898000 tl!4068) lt!898081)))

(declare-fun bs!468816 () Bool)

(assert (= bs!468816 d!716916))

(assert (=> bs!468816 m!2870509))

(declare-fun m!2870829 () Bool)

(assert (=> bs!468816 m!2870829))

(assert (=> bs!468816 m!2870501))

(assert (=> bs!468816 m!2870799))

(assert (=> bs!468816 m!2870509))

(assert (=> bs!468816 m!2870511))

(assert (=> b!2512262 d!716916))

(declare-fun d!716918 () Bool)

(assert (=> d!716918 (= (derivative!164 EmptyLang!7469 tl!4068) EmptyLang!7469)))

(declare-fun lt!898084 () Unit!43187)

(declare-fun choose!14882 (Regex!7469 List!29534) Unit!43187)

(assert (=> d!716918 (= lt!898084 (choose!14882 EmptyLang!7469 tl!4068))))

(assert (=> d!716918 (= EmptyLang!7469 EmptyLang!7469)))

(assert (=> d!716918 (= (lemmaEmptyLangDerivativeIsAFixPoint!16 EmptyLang!7469 tl!4068) lt!898084)))

(declare-fun bs!468817 () Bool)

(assert (= bs!468817 d!716918))

(assert (=> bs!468817 m!2870503))

(declare-fun m!2870831 () Bool)

(assert (=> bs!468817 m!2870831))

(assert (=> b!2512262 d!716918))

(declare-fun e!1592293 () Bool)

(assert (=> b!2512259 (= tp!803321 e!1592293)))

(declare-fun b!2512756 () Bool)

(assert (=> b!2512756 (= e!1592293 tp_is_empty!12793)))

(declare-fun b!2512757 () Bool)

(declare-fun tp!803377 () Bool)

(declare-fun tp!803379 () Bool)

(assert (=> b!2512757 (= e!1592293 (and tp!803377 tp!803379))))

(declare-fun b!2512759 () Bool)

(declare-fun tp!803378 () Bool)

(declare-fun tp!803376 () Bool)

(assert (=> b!2512759 (= e!1592293 (and tp!803378 tp!803376))))

(declare-fun b!2512758 () Bool)

(declare-fun tp!803375 () Bool)

(assert (=> b!2512758 (= e!1592293 tp!803375)))

(assert (= (and b!2512259 ((_ is ElementMatch!7469) (regOne!15450 r!27340))) b!2512756))

(assert (= (and b!2512259 ((_ is Concat!12165) (regOne!15450 r!27340))) b!2512757))

(assert (= (and b!2512259 ((_ is Star!7469) (regOne!15450 r!27340))) b!2512758))

(assert (= (and b!2512259 ((_ is Union!7469) (regOne!15450 r!27340))) b!2512759))

(declare-fun e!1592294 () Bool)

(assert (=> b!2512259 (= tp!803325 e!1592294)))

(declare-fun b!2512760 () Bool)

(assert (=> b!2512760 (= e!1592294 tp_is_empty!12793)))

(declare-fun b!2512761 () Bool)

(declare-fun tp!803382 () Bool)

(declare-fun tp!803384 () Bool)

(assert (=> b!2512761 (= e!1592294 (and tp!803382 tp!803384))))

(declare-fun b!2512763 () Bool)

(declare-fun tp!803383 () Bool)

(declare-fun tp!803381 () Bool)

(assert (=> b!2512763 (= e!1592294 (and tp!803383 tp!803381))))

(declare-fun b!2512762 () Bool)

(declare-fun tp!803380 () Bool)

(assert (=> b!2512762 (= e!1592294 tp!803380)))

(assert (= (and b!2512259 ((_ is ElementMatch!7469) (regTwo!15450 r!27340))) b!2512760))

(assert (= (and b!2512259 ((_ is Concat!12165) (regTwo!15450 r!27340))) b!2512761))

(assert (= (and b!2512259 ((_ is Star!7469) (regTwo!15450 r!27340))) b!2512762))

(assert (= (and b!2512259 ((_ is Union!7469) (regTwo!15450 r!27340))) b!2512763))

(declare-fun e!1592295 () Bool)

(assert (=> b!2512254 (= tp!803322 e!1592295)))

(declare-fun b!2512764 () Bool)

(assert (=> b!2512764 (= e!1592295 tp_is_empty!12793)))

(declare-fun b!2512765 () Bool)

(declare-fun tp!803387 () Bool)

(declare-fun tp!803389 () Bool)

(assert (=> b!2512765 (= e!1592295 (and tp!803387 tp!803389))))

(declare-fun b!2512767 () Bool)

(declare-fun tp!803388 () Bool)

(declare-fun tp!803386 () Bool)

(assert (=> b!2512767 (= e!1592295 (and tp!803388 tp!803386))))

(declare-fun b!2512766 () Bool)

(declare-fun tp!803385 () Bool)

(assert (=> b!2512766 (= e!1592295 tp!803385)))

(assert (= (and b!2512254 ((_ is ElementMatch!7469) (reg!7798 r!27340))) b!2512764))

(assert (= (and b!2512254 ((_ is Concat!12165) (reg!7798 r!27340))) b!2512765))

(assert (= (and b!2512254 ((_ is Star!7469) (reg!7798 r!27340))) b!2512766))

(assert (= (and b!2512254 ((_ is Union!7469) (reg!7798 r!27340))) b!2512767))

(declare-fun b!2512772 () Bool)

(declare-fun e!1592298 () Bool)

(declare-fun tp!803392 () Bool)

(assert (=> b!2512772 (= e!1592298 (and tp_is_empty!12793 tp!803392))))

(assert (=> b!2512260 (= tp!803323 e!1592298)))

(assert (= (and b!2512260 ((_ is Cons!29434) (t!211233 tl!4068))) b!2512772))

(declare-fun e!1592299 () Bool)

(assert (=> b!2512261 (= tp!803326 e!1592299)))

(declare-fun b!2512773 () Bool)

(assert (=> b!2512773 (= e!1592299 tp_is_empty!12793)))

(declare-fun b!2512774 () Bool)

(declare-fun tp!803395 () Bool)

(declare-fun tp!803397 () Bool)

(assert (=> b!2512774 (= e!1592299 (and tp!803395 tp!803397))))

(declare-fun b!2512776 () Bool)

(declare-fun tp!803396 () Bool)

(declare-fun tp!803394 () Bool)

(assert (=> b!2512776 (= e!1592299 (and tp!803396 tp!803394))))

(declare-fun b!2512775 () Bool)

(declare-fun tp!803393 () Bool)

(assert (=> b!2512775 (= e!1592299 tp!803393)))

(assert (= (and b!2512261 ((_ is ElementMatch!7469) (regOne!15451 r!27340))) b!2512773))

(assert (= (and b!2512261 ((_ is Concat!12165) (regOne!15451 r!27340))) b!2512774))

(assert (= (and b!2512261 ((_ is Star!7469) (regOne!15451 r!27340))) b!2512775))

(assert (= (and b!2512261 ((_ is Union!7469) (regOne!15451 r!27340))) b!2512776))

(declare-fun e!1592300 () Bool)

(assert (=> b!2512261 (= tp!803324 e!1592300)))

(declare-fun b!2512777 () Bool)

(assert (=> b!2512777 (= e!1592300 tp_is_empty!12793)))

(declare-fun b!2512778 () Bool)

(declare-fun tp!803400 () Bool)

(declare-fun tp!803402 () Bool)

(assert (=> b!2512778 (= e!1592300 (and tp!803400 tp!803402))))

(declare-fun b!2512780 () Bool)

(declare-fun tp!803401 () Bool)

(declare-fun tp!803399 () Bool)

(assert (=> b!2512780 (= e!1592300 (and tp!803401 tp!803399))))

(declare-fun b!2512779 () Bool)

(declare-fun tp!803398 () Bool)

(assert (=> b!2512779 (= e!1592300 tp!803398)))

(assert (= (and b!2512261 ((_ is ElementMatch!7469) (regTwo!15451 r!27340))) b!2512777))

(assert (= (and b!2512261 ((_ is Concat!12165) (regTwo!15451 r!27340))) b!2512778))

(assert (= (and b!2512261 ((_ is Star!7469) (regTwo!15451 r!27340))) b!2512779))

(assert (= (and b!2512261 ((_ is Union!7469) (regTwo!15451 r!27340))) b!2512780))

(check-sat (not bm!155979) (not bm!155942) (not d!716904) (not b!2512619) (not b!2512780) (not bm!155939) tp_is_empty!12793 (not d!716906) (not b!2512745) (not b!2512617) (not d!716910) (not bm!155930) (not b!2512776) (not b!2512729) (not d!716880) (not bm!155945) (not d!716850) (not b!2512611) (not b!2512759) (not b!2512723) (not b!2512735) (not bm!155940) (not b!2512757) (not b!2512408) (not d!716842) (not bm!155946) (not bm!155982) (not b!2512612) (not b!2512721) (not b!2512761) (not bm!155976) (not b!2512716) (not bm!155931) (not b!2512653) (not b!2512455) (not d!716908) (not b!2512660) (not d!716918) (not d!716864) (not b!2512652) (not b!2512615) (not b!2512738) (not b!2512775) (not d!716916) (not bm!155981) (not b!2512765) (not b!2512733) (not b!2512719) (not b!2512710) (not d!716838) (not b!2512724) (not bm!155978) (not b!2512620) (not b!2512763) (not b!2512367) (not b!2512453) (not b!2512744) (not b!2512778) (not b!2512767) (not b!2512708) (not b!2512418) (not b!2512656) (not b!2512772) (not b!2512774) (not d!716914) (not b!2512457) (not b!2512685) (not b!2512451) (not b!2512715) (not d!716836) (not d!716878) (not b!2512459) (not d!716856) (not bm!155943) (not b!2512661) (not d!716902) (not b!2512333) (not b!2512758) (not b!2512779) (not b!2512762) (not b!2512407) (not b!2512658) (not d!716912) (not b!2512458) (not b!2512382) (not b!2512737) (not b!2512730) (not d!716862) (not bm!155971) (not b!2512267) (not b!2512766))
(check-sat)
