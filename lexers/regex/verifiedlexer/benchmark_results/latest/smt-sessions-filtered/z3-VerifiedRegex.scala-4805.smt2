; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247040 () Bool)

(assert start!247040)

(declare-fun b!2544976 () Bool)

(declare-fun e!1608886 () Bool)

(declare-fun tp!812586 () Bool)

(assert (=> b!2544976 (= e!1608886 tp!812586)))

(declare-fun b!2544978 () Bool)

(declare-fun res!1072336 () Bool)

(declare-fun e!1608889 () Bool)

(assert (=> b!2544978 (=> (not res!1072336) (not e!1608889))))

(declare-datatypes ((C!15328 0))(
  ( (C!15329 (val!9316 Int)) )
))
(declare-datatypes ((Regex!7585 0))(
  ( (ElementMatch!7585 (c!407611 C!15328)) (Concat!12281 (regOne!15682 Regex!7585) (regTwo!15682 Regex!7585)) (EmptyExpr!7585) (Star!7585 (reg!7914 Regex!7585)) (EmptyLang!7585) (Union!7585 (regOne!15683 Regex!7585) (regTwo!15683 Regex!7585)) )
))
(declare-fun lt!902495 () Regex!7585)

(declare-datatypes ((List!29650 0))(
  ( (Nil!29550) (Cons!29550 (h!34970 C!15328) (t!211349 List!29650)) )
))
(declare-fun tl!4068 () List!29650)

(declare-fun nullable!2502 (Regex!7585) Bool)

(declare-fun derivative!280 (Regex!7585 List!29650) Regex!7585)

(assert (=> b!2544978 (= res!1072336 (not (nullable!2502 (derivative!280 lt!902495 tl!4068))))))

(declare-fun b!2544979 () Bool)

(declare-fun tp!812587 () Bool)

(declare-fun tp!812590 () Bool)

(assert (=> b!2544979 (= e!1608886 (and tp!812587 tp!812590))))

(declare-fun b!2544980 () Bool)

(declare-fun res!1072340 () Bool)

(declare-fun e!1608891 () Bool)

(assert (=> b!2544980 (=> (not res!1072340) (not e!1608891))))

(declare-fun r!27340 () Regex!7585)

(get-info :version)

(assert (=> b!2544980 (= res!1072340 (and (not ((_ is EmptyExpr!7585) r!27340)) (not ((_ is EmptyLang!7585) r!27340)) (not ((_ is ElementMatch!7585) r!27340)) (not ((_ is Union!7585) r!27340)) ((_ is Star!7585) r!27340)))))

(declare-fun b!2544981 () Bool)

(declare-fun res!1072341 () Bool)

(declare-fun e!1608892 () Bool)

(assert (=> b!2544981 (=> res!1072341 e!1608892)))

(declare-fun lt!902498 () Regex!7585)

(declare-datatypes ((tuple2!29552 0))(
  ( (tuple2!29553 (_1!17318 List!29650) (_2!17318 List!29650)) )
))
(declare-fun lt!902496 () tuple2!29552)

(declare-fun matchR!3532 (Regex!7585 List!29650) Bool)

(assert (=> b!2544981 (= res!1072341 (not (matchR!3532 lt!902498 (_2!17318 lt!902496))))))

(declare-fun b!2544982 () Bool)

(declare-fun e!1608888 () Bool)

(assert (=> b!2544982 (= e!1608888 e!1608891)))

(declare-fun res!1072337 () Bool)

(assert (=> b!2544982 (=> (not res!1072337) (not e!1608891))))

(declare-fun lt!902493 () Regex!7585)

(assert (=> b!2544982 (= res!1072337 (nullable!2502 lt!902493))))

(declare-fun lt!902500 () Regex!7585)

(assert (=> b!2544982 (= lt!902493 (derivative!280 lt!902500 tl!4068))))

(declare-fun c!14016 () C!15328)

(declare-fun derivativeStep!2154 (Regex!7585 C!15328) Regex!7585)

(assert (=> b!2544982 (= lt!902500 (derivativeStep!2154 r!27340 c!14016))))

(declare-fun b!2544983 () Bool)

(declare-fun tp!812588 () Bool)

(declare-fun tp!812585 () Bool)

(assert (=> b!2544983 (= e!1608886 (and tp!812588 tp!812585))))

(declare-fun b!2544984 () Bool)

(declare-fun validRegex!3211 (Regex!7585) Bool)

(assert (=> b!2544984 (= e!1608892 (validRegex!3211 lt!902495))))

(declare-fun b!2544985 () Bool)

(assert (=> b!2544985 (= e!1608891 e!1608889)))

(declare-fun res!1072338 () Bool)

(assert (=> b!2544985 (=> (not res!1072338) (not e!1608889))))

(assert (=> b!2544985 (= res!1072338 (= lt!902500 (Concat!12281 lt!902495 lt!902498)))))

(assert (=> b!2544985 (= lt!902498 (Star!7585 (reg!7914 r!27340)))))

(assert (=> b!2544985 (= lt!902495 (derivativeStep!2154 (reg!7914 r!27340) c!14016))))

(declare-fun b!2544986 () Bool)

(declare-fun res!1072339 () Bool)

(assert (=> b!2544986 (=> res!1072339 e!1608892)))

(assert (=> b!2544986 (= res!1072339 (not (matchR!3532 (reg!7914 r!27340) (Cons!29550 c!14016 (_1!17318 lt!902496)))))))

(declare-fun res!1072335 () Bool)

(assert (=> start!247040 (=> (not res!1072335) (not e!1608888))))

(assert (=> start!247040 (= res!1072335 (validRegex!3211 r!27340))))

(assert (=> start!247040 e!1608888))

(assert (=> start!247040 e!1608886))

(declare-fun tp_is_empty!13025 () Bool)

(assert (=> start!247040 tp_is_empty!13025))

(declare-fun e!1608890 () Bool)

(assert (=> start!247040 e!1608890))

(declare-fun b!2544977 () Bool)

(declare-fun tp!812589 () Bool)

(assert (=> b!2544977 (= e!1608890 (and tp_is_empty!13025 tp!812589))))

(declare-fun b!2544987 () Bool)

(declare-fun e!1608887 () Bool)

(assert (=> b!2544987 (= e!1608889 (not e!1608887))))

(declare-fun res!1072342 () Bool)

(assert (=> b!2544987 (=> res!1072342 e!1608887)))

(declare-fun lt!902494 () Bool)

(assert (=> b!2544987 (= res!1072342 (not lt!902494))))

(assert (=> b!2544987 (= lt!902494 (matchR!3532 lt!902493 Nil!29550))))

(assert (=> b!2544987 (= lt!902494 (matchR!3532 lt!902500 tl!4068))))

(declare-datatypes ((Unit!43359 0))(
  ( (Unit!43360) )
))
(declare-fun lt!902499 () Unit!43359)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!178 (Regex!7585 List!29650) Unit!43359)

(assert (=> b!2544987 (= lt!902499 (lemmaMatchRIsSameAsWholeDerivativeAndNil!178 lt!902500 tl!4068))))

(declare-fun b!2544988 () Bool)

(assert (=> b!2544988 (= e!1608887 e!1608892)))

(declare-fun res!1072334 () Bool)

(assert (=> b!2544988 (=> res!1072334 e!1608892)))

(declare-fun ++!7252 (List!29650 List!29650) List!29650)

(assert (=> b!2544988 (= res!1072334 (not (= (++!7252 (_1!17318 lt!902496) (_2!17318 lt!902496)) tl!4068)))))

(declare-datatypes ((Option!5896 0))(
  ( (None!5895) (Some!5895 (v!31834 tuple2!29552)) )
))
(declare-fun lt!902492 () Option!5896)

(declare-fun get!9267 (Option!5896) tuple2!29552)

(assert (=> b!2544988 (= lt!902496 (get!9267 lt!902492))))

(declare-fun isDefined!4718 (Option!5896) Bool)

(assert (=> b!2544988 (isDefined!4718 lt!902492)))

(declare-fun findConcatSeparation!918 (Regex!7585 Regex!7585 List!29650 List!29650 List!29650) Option!5896)

(assert (=> b!2544988 (= lt!902492 (findConcatSeparation!918 lt!902495 lt!902498 Nil!29550 tl!4068 tl!4068))))

(declare-fun lt!902497 () Unit!43359)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!200 (Regex!7585 Regex!7585 List!29650) Unit!43359)

(assert (=> b!2544988 (= lt!902497 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!200 lt!902495 lt!902498 tl!4068))))

(declare-fun b!2544989 () Bool)

(assert (=> b!2544989 (= e!1608886 tp_is_empty!13025)))

(declare-fun b!2544990 () Bool)

(declare-fun res!1072333 () Bool)

(assert (=> b!2544990 (=> res!1072333 e!1608892)))

(assert (=> b!2544990 (= res!1072333 (not (matchR!3532 lt!902495 (_1!17318 lt!902496))))))

(assert (= (and start!247040 res!1072335) b!2544982))

(assert (= (and b!2544982 res!1072337) b!2544980))

(assert (= (and b!2544980 res!1072340) b!2544985))

(assert (= (and b!2544985 res!1072338) b!2544978))

(assert (= (and b!2544978 res!1072336) b!2544987))

(assert (= (and b!2544987 (not res!1072342)) b!2544988))

(assert (= (and b!2544988 (not res!1072334)) b!2544981))

(assert (= (and b!2544981 (not res!1072341)) b!2544986))

(assert (= (and b!2544986 (not res!1072339)) b!2544990))

(assert (= (and b!2544990 (not res!1072333)) b!2544984))

(assert (= (and start!247040 ((_ is ElementMatch!7585) r!27340)) b!2544989))

(assert (= (and start!247040 ((_ is Concat!12281) r!27340)) b!2544979))

(assert (= (and start!247040 ((_ is Star!7585) r!27340)) b!2544976))

(assert (= (and start!247040 ((_ is Union!7585) r!27340)) b!2544983))

(assert (= (and start!247040 ((_ is Cons!29550) tl!4068)) b!2544977))

(declare-fun m!2890171 () Bool)

(assert (=> b!2544982 m!2890171))

(declare-fun m!2890173 () Bool)

(assert (=> b!2544982 m!2890173))

(declare-fun m!2890175 () Bool)

(assert (=> b!2544982 m!2890175))

(declare-fun m!2890177 () Bool)

(assert (=> start!247040 m!2890177))

(declare-fun m!2890179 () Bool)

(assert (=> b!2544984 m!2890179))

(declare-fun m!2890181 () Bool)

(assert (=> b!2544988 m!2890181))

(declare-fun m!2890183 () Bool)

(assert (=> b!2544988 m!2890183))

(declare-fun m!2890185 () Bool)

(assert (=> b!2544988 m!2890185))

(declare-fun m!2890187 () Bool)

(assert (=> b!2544988 m!2890187))

(declare-fun m!2890189 () Bool)

(assert (=> b!2544988 m!2890189))

(declare-fun m!2890191 () Bool)

(assert (=> b!2544985 m!2890191))

(declare-fun m!2890193 () Bool)

(assert (=> b!2544990 m!2890193))

(declare-fun m!2890195 () Bool)

(assert (=> b!2544986 m!2890195))

(declare-fun m!2890197 () Bool)

(assert (=> b!2544987 m!2890197))

(declare-fun m!2890199 () Bool)

(assert (=> b!2544987 m!2890199))

(declare-fun m!2890201 () Bool)

(assert (=> b!2544987 m!2890201))

(declare-fun m!2890203 () Bool)

(assert (=> b!2544978 m!2890203))

(assert (=> b!2544978 m!2890203))

(declare-fun m!2890205 () Bool)

(assert (=> b!2544978 m!2890205))

(declare-fun m!2890207 () Bool)

(assert (=> b!2544981 m!2890207))

(check-sat (not b!2544979) (not start!247040) (not b!2544985) (not b!2544988) (not b!2544976) (not b!2544987) tp_is_empty!13025 (not b!2544983) (not b!2544986) (not b!2544984) (not b!2544981) (not b!2544982) (not b!2544977) (not b!2544978) (not b!2544990))
(check-sat)
(get-model)

(declare-fun d!722246 () Bool)

(declare-fun nullableFct!726 (Regex!7585) Bool)

(assert (=> d!722246 (= (nullable!2502 (derivative!280 lt!902495 tl!4068)) (nullableFct!726 (derivative!280 lt!902495 tl!4068)))))

(declare-fun bs!469486 () Bool)

(assert (= bs!469486 d!722246))

(assert (=> bs!469486 m!2890203))

(declare-fun m!2890209 () Bool)

(assert (=> bs!469486 m!2890209))

(assert (=> b!2544978 d!722246))

(declare-fun d!722248 () Bool)

(declare-fun lt!902503 () Regex!7585)

(assert (=> d!722248 (validRegex!3211 lt!902503)))

(declare-fun e!1608895 () Regex!7585)

(assert (=> d!722248 (= lt!902503 e!1608895)))

(declare-fun c!407614 () Bool)

(assert (=> d!722248 (= c!407614 ((_ is Cons!29550) tl!4068))))

(assert (=> d!722248 (validRegex!3211 lt!902495)))

(assert (=> d!722248 (= (derivative!280 lt!902495 tl!4068) lt!902503)))

(declare-fun b!2544995 () Bool)

(assert (=> b!2544995 (= e!1608895 (derivative!280 (derivativeStep!2154 lt!902495 (h!34970 tl!4068)) (t!211349 tl!4068)))))

(declare-fun b!2544996 () Bool)

(assert (=> b!2544996 (= e!1608895 lt!902495)))

(assert (= (and d!722248 c!407614) b!2544995))

(assert (= (and d!722248 (not c!407614)) b!2544996))

(declare-fun m!2890211 () Bool)

(assert (=> d!722248 m!2890211))

(assert (=> d!722248 m!2890179))

(declare-fun m!2890213 () Bool)

(assert (=> b!2544995 m!2890213))

(assert (=> b!2544995 m!2890213))

(declare-fun m!2890215 () Bool)

(assert (=> b!2544995 m!2890215))

(assert (=> b!2544978 d!722248))

(declare-fun d!722252 () Bool)

(declare-fun e!1608936 () Bool)

(assert (=> d!722252 e!1608936))

(declare-fun res!1072385 () Bool)

(assert (=> d!722252 (=> res!1072385 e!1608936)))

(declare-fun e!1608937 () Bool)

(assert (=> d!722252 (= res!1072385 e!1608937)))

(declare-fun res!1072386 () Bool)

(assert (=> d!722252 (=> (not res!1072386) (not e!1608937))))

(declare-fun lt!902514 () Option!5896)

(assert (=> d!722252 (= res!1072386 (isDefined!4718 lt!902514))))

(declare-fun e!1608935 () Option!5896)

(assert (=> d!722252 (= lt!902514 e!1608935)))

(declare-fun c!407632 () Bool)

(declare-fun e!1608934 () Bool)

(assert (=> d!722252 (= c!407632 e!1608934)))

(declare-fun res!1072389 () Bool)

(assert (=> d!722252 (=> (not res!1072389) (not e!1608934))))

(assert (=> d!722252 (= res!1072389 (matchR!3532 lt!902495 Nil!29550))))

(assert (=> d!722252 (validRegex!3211 lt!902495)))

(assert (=> d!722252 (= (findConcatSeparation!918 lt!902495 lt!902498 Nil!29550 tl!4068 tl!4068) lt!902514)))

(declare-fun b!2545071 () Bool)

(declare-fun lt!902516 () Unit!43359)

(declare-fun lt!902515 () Unit!43359)

(assert (=> b!2545071 (= lt!902516 lt!902515)))

(assert (=> b!2545071 (= (++!7252 (++!7252 Nil!29550 (Cons!29550 (h!34970 tl!4068) Nil!29550)) (t!211349 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!784 (List!29650 C!15328 List!29650 List!29650) Unit!43359)

(assert (=> b!2545071 (= lt!902515 (lemmaMoveElementToOtherListKeepsConcatEq!784 Nil!29550 (h!34970 tl!4068) (t!211349 tl!4068) tl!4068))))

(declare-fun e!1608938 () Option!5896)

(assert (=> b!2545071 (= e!1608938 (findConcatSeparation!918 lt!902495 lt!902498 (++!7252 Nil!29550 (Cons!29550 (h!34970 tl!4068) Nil!29550)) (t!211349 tl!4068) tl!4068))))

(declare-fun b!2545072 () Bool)

(declare-fun res!1072388 () Bool)

(assert (=> b!2545072 (=> (not res!1072388) (not e!1608937))))

(assert (=> b!2545072 (= res!1072388 (matchR!3532 lt!902495 (_1!17318 (get!9267 lt!902514))))))

(declare-fun b!2545073 () Bool)

(assert (=> b!2545073 (= e!1608937 (= (++!7252 (_1!17318 (get!9267 lt!902514)) (_2!17318 (get!9267 lt!902514))) tl!4068))))

(declare-fun b!2545074 () Bool)

(assert (=> b!2545074 (= e!1608938 None!5895)))

(declare-fun b!2545075 () Bool)

(declare-fun res!1072387 () Bool)

(assert (=> b!2545075 (=> (not res!1072387) (not e!1608937))))

(assert (=> b!2545075 (= res!1072387 (matchR!3532 lt!902498 (_2!17318 (get!9267 lt!902514))))))

(declare-fun b!2545076 () Bool)

(assert (=> b!2545076 (= e!1608935 e!1608938)))

(declare-fun c!407631 () Bool)

(assert (=> b!2545076 (= c!407631 ((_ is Nil!29550) tl!4068))))

(declare-fun b!2545077 () Bool)

(assert (=> b!2545077 (= e!1608936 (not (isDefined!4718 lt!902514)))))

(declare-fun b!2545078 () Bool)

(assert (=> b!2545078 (= e!1608934 (matchR!3532 lt!902498 tl!4068))))

(declare-fun b!2545079 () Bool)

(assert (=> b!2545079 (= e!1608935 (Some!5895 (tuple2!29553 Nil!29550 tl!4068)))))

(assert (= (and d!722252 res!1072389) b!2545078))

(assert (= (and d!722252 c!407632) b!2545079))

(assert (= (and d!722252 (not c!407632)) b!2545076))

(assert (= (and b!2545076 c!407631) b!2545074))

(assert (= (and b!2545076 (not c!407631)) b!2545071))

(assert (= (and d!722252 res!1072386) b!2545072))

(assert (= (and b!2545072 res!1072388) b!2545075))

(assert (= (and b!2545075 res!1072387) b!2545073))

(assert (= (and d!722252 (not res!1072385)) b!2545077))

(declare-fun m!2890247 () Bool)

(assert (=> b!2545071 m!2890247))

(assert (=> b!2545071 m!2890247))

(declare-fun m!2890249 () Bool)

(assert (=> b!2545071 m!2890249))

(declare-fun m!2890251 () Bool)

(assert (=> b!2545071 m!2890251))

(assert (=> b!2545071 m!2890247))

(declare-fun m!2890253 () Bool)

(assert (=> b!2545071 m!2890253))

(declare-fun m!2890255 () Bool)

(assert (=> d!722252 m!2890255))

(declare-fun m!2890257 () Bool)

(assert (=> d!722252 m!2890257))

(assert (=> d!722252 m!2890179))

(declare-fun m!2890259 () Bool)

(assert (=> b!2545075 m!2890259))

(declare-fun m!2890261 () Bool)

(assert (=> b!2545075 m!2890261))

(declare-fun m!2890263 () Bool)

(assert (=> b!2545078 m!2890263))

(assert (=> b!2545072 m!2890259))

(declare-fun m!2890265 () Bool)

(assert (=> b!2545072 m!2890265))

(assert (=> b!2545073 m!2890259))

(declare-fun m!2890267 () Bool)

(assert (=> b!2545073 m!2890267))

(assert (=> b!2545077 m!2890255))

(assert (=> b!2544988 d!722252))

(declare-fun d!722258 () Bool)

(assert (=> d!722258 (isDefined!4718 (findConcatSeparation!918 lt!902495 lt!902498 Nil!29550 tl!4068 tl!4068))))

(declare-fun lt!902525 () Unit!43359)

(declare-fun choose!15033 (Regex!7585 Regex!7585 List!29650) Unit!43359)

(assert (=> d!722258 (= lt!902525 (choose!15033 lt!902495 lt!902498 tl!4068))))

(assert (=> d!722258 (validRegex!3211 lt!902495)))

(assert (=> d!722258 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!200 lt!902495 lt!902498 tl!4068) lt!902525)))

(declare-fun bs!469489 () Bool)

(assert (= bs!469489 d!722258))

(assert (=> bs!469489 m!2890181))

(assert (=> bs!469489 m!2890181))

(declare-fun m!2890281 () Bool)

(assert (=> bs!469489 m!2890281))

(declare-fun m!2890283 () Bool)

(assert (=> bs!469489 m!2890283))

(assert (=> bs!469489 m!2890179))

(assert (=> b!2544988 d!722258))

(declare-fun b!2545114 () Bool)

(declare-fun e!1608957 () List!29650)

(assert (=> b!2545114 (= e!1608957 (_2!17318 lt!902496))))

(declare-fun b!2545117 () Bool)

(declare-fun e!1608956 () Bool)

(declare-fun lt!902530 () List!29650)

(assert (=> b!2545117 (= e!1608956 (or (not (= (_2!17318 lt!902496) Nil!29550)) (= lt!902530 (_1!17318 lt!902496))))))

(declare-fun d!722266 () Bool)

(assert (=> d!722266 e!1608956))

(declare-fun res!1072394 () Bool)

(assert (=> d!722266 (=> (not res!1072394) (not e!1608956))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4057 (List!29650) (InoxSet C!15328))

(assert (=> d!722266 (= res!1072394 (= (content!4057 lt!902530) ((_ map or) (content!4057 (_1!17318 lt!902496)) (content!4057 (_2!17318 lt!902496)))))))

(assert (=> d!722266 (= lt!902530 e!1608957)))

(declare-fun c!407648 () Bool)

(assert (=> d!722266 (= c!407648 ((_ is Nil!29550) (_1!17318 lt!902496)))))

(assert (=> d!722266 (= (++!7252 (_1!17318 lt!902496) (_2!17318 lt!902496)) lt!902530)))

(declare-fun b!2545115 () Bool)

(assert (=> b!2545115 (= e!1608957 (Cons!29550 (h!34970 (_1!17318 lt!902496)) (++!7252 (t!211349 (_1!17318 lt!902496)) (_2!17318 lt!902496))))))

(declare-fun b!2545116 () Bool)

(declare-fun res!1072395 () Bool)

(assert (=> b!2545116 (=> (not res!1072395) (not e!1608956))))

(declare-fun size!22937 (List!29650) Int)

(assert (=> b!2545116 (= res!1072395 (= (size!22937 lt!902530) (+ (size!22937 (_1!17318 lt!902496)) (size!22937 (_2!17318 lt!902496)))))))

(assert (= (and d!722266 c!407648) b!2545114))

(assert (= (and d!722266 (not c!407648)) b!2545115))

(assert (= (and d!722266 res!1072394) b!2545116))

(assert (= (and b!2545116 res!1072395) b!2545117))

(declare-fun m!2890285 () Bool)

(assert (=> d!722266 m!2890285))

(declare-fun m!2890287 () Bool)

(assert (=> d!722266 m!2890287))

(declare-fun m!2890289 () Bool)

(assert (=> d!722266 m!2890289))

(declare-fun m!2890291 () Bool)

(assert (=> b!2545115 m!2890291))

(declare-fun m!2890293 () Bool)

(assert (=> b!2545116 m!2890293))

(declare-fun m!2890295 () Bool)

(assert (=> b!2545116 m!2890295))

(declare-fun m!2890297 () Bool)

(assert (=> b!2545116 m!2890297))

(assert (=> b!2544988 d!722266))

(declare-fun d!722268 () Bool)

(declare-fun isEmpty!16990 (Option!5896) Bool)

(assert (=> d!722268 (= (isDefined!4718 lt!902492) (not (isEmpty!16990 lt!902492)))))

(declare-fun bs!469490 () Bool)

(assert (= bs!469490 d!722268))

(declare-fun m!2890299 () Bool)

(assert (=> bs!469490 m!2890299))

(assert (=> b!2544988 d!722268))

(declare-fun d!722270 () Bool)

(assert (=> d!722270 (= (get!9267 lt!902492) (v!31834 lt!902492))))

(assert (=> b!2544988 d!722270))

(declare-fun d!722272 () Bool)

(assert (=> d!722272 (= (nullable!2502 lt!902493) (nullableFct!726 lt!902493))))

(declare-fun bs!469491 () Bool)

(assert (= bs!469491 d!722272))

(declare-fun m!2890301 () Bool)

(assert (=> bs!469491 m!2890301))

(assert (=> b!2544982 d!722272))

(declare-fun d!722274 () Bool)

(declare-fun lt!902531 () Regex!7585)

(assert (=> d!722274 (validRegex!3211 lt!902531)))

(declare-fun e!1608958 () Regex!7585)

(assert (=> d!722274 (= lt!902531 e!1608958)))

(declare-fun c!407649 () Bool)

(assert (=> d!722274 (= c!407649 ((_ is Cons!29550) tl!4068))))

(assert (=> d!722274 (validRegex!3211 lt!902500)))

(assert (=> d!722274 (= (derivative!280 lt!902500 tl!4068) lt!902531)))

(declare-fun b!2545118 () Bool)

(assert (=> b!2545118 (= e!1608958 (derivative!280 (derivativeStep!2154 lt!902500 (h!34970 tl!4068)) (t!211349 tl!4068)))))

(declare-fun b!2545119 () Bool)

(assert (=> b!2545119 (= e!1608958 lt!902500)))

(assert (= (and d!722274 c!407649) b!2545118))

(assert (= (and d!722274 (not c!407649)) b!2545119))

(declare-fun m!2890303 () Bool)

(assert (=> d!722274 m!2890303))

(declare-fun m!2890305 () Bool)

(assert (=> d!722274 m!2890305))

(declare-fun m!2890307 () Bool)

(assert (=> b!2545118 m!2890307))

(assert (=> b!2545118 m!2890307))

(declare-fun m!2890309 () Bool)

(assert (=> b!2545118 m!2890309))

(assert (=> b!2544982 d!722274))

(declare-fun b!2545162 () Bool)

(declare-fun e!1608984 () Regex!7585)

(assert (=> b!2545162 (= e!1608984 EmptyLang!7585)))

(declare-fun b!2545163 () Bool)

(declare-fun e!1608981 () Regex!7585)

(assert (=> b!2545163 (= e!1608981 (ite (= c!14016 (c!407611 r!27340)) EmptyExpr!7585 EmptyLang!7585))))

(declare-fun d!722276 () Bool)

(declare-fun lt!902541 () Regex!7585)

(assert (=> d!722276 (validRegex!3211 lt!902541)))

(assert (=> d!722276 (= lt!902541 e!1608984)))

(declare-fun c!407672 () Bool)

(assert (=> d!722276 (= c!407672 (or ((_ is EmptyExpr!7585) r!27340) ((_ is EmptyLang!7585) r!27340)))))

(assert (=> d!722276 (validRegex!3211 r!27340)))

(assert (=> d!722276 (= (derivativeStep!2154 r!27340 c!14016) lt!902541)))

(declare-fun c!407670 () Bool)

(declare-fun c!407668 () Bool)

(declare-fun call!161428 () Regex!7585)

(declare-fun bm!161423 () Bool)

(assert (=> bm!161423 (= call!161428 (derivativeStep!2154 (ite c!407670 (regOne!15683 r!27340) (ite c!407668 (reg!7914 r!27340) (regOne!15682 r!27340))) c!14016))))

(declare-fun b!2545164 () Bool)

(assert (=> b!2545164 (= e!1608984 e!1608981)))

(declare-fun c!407671 () Bool)

(assert (=> b!2545164 (= c!407671 ((_ is ElementMatch!7585) r!27340))))

(declare-fun bm!161424 () Bool)

(declare-fun call!161429 () Regex!7585)

(declare-fun call!161430 () Regex!7585)

(assert (=> bm!161424 (= call!161429 call!161430)))

(declare-fun bm!161425 () Bool)

(assert (=> bm!161425 (= call!161430 call!161428)))

(declare-fun b!2545165 () Bool)

(declare-fun e!1608980 () Regex!7585)

(declare-fun e!1608983 () Regex!7585)

(assert (=> b!2545165 (= e!1608980 e!1608983)))

(assert (=> b!2545165 (= c!407668 ((_ is Star!7585) r!27340))))

(declare-fun b!2545166 () Bool)

(declare-fun call!161431 () Regex!7585)

(assert (=> b!2545166 (= e!1608980 (Union!7585 call!161428 call!161431))))

(declare-fun bm!161426 () Bool)

(assert (=> bm!161426 (= call!161431 (derivativeStep!2154 (ite c!407670 (regTwo!15683 r!27340) (regTwo!15682 r!27340)) c!14016))))

(declare-fun b!2545167 () Bool)

(declare-fun e!1608982 () Regex!7585)

(assert (=> b!2545167 (= e!1608982 (Union!7585 (Concat!12281 call!161429 (regTwo!15682 r!27340)) call!161431))))

(declare-fun b!2545168 () Bool)

(assert (=> b!2545168 (= e!1608983 (Concat!12281 call!161430 r!27340))))

(declare-fun b!2545169 () Bool)

(assert (=> b!2545169 (= c!407670 ((_ is Union!7585) r!27340))))

(assert (=> b!2545169 (= e!1608981 e!1608980)))

(declare-fun b!2545170 () Bool)

(declare-fun c!407669 () Bool)

(assert (=> b!2545170 (= c!407669 (nullable!2502 (regOne!15682 r!27340)))))

(assert (=> b!2545170 (= e!1608983 e!1608982)))

(declare-fun b!2545171 () Bool)

(assert (=> b!2545171 (= e!1608982 (Union!7585 (Concat!12281 call!161429 (regTwo!15682 r!27340)) EmptyLang!7585))))

(assert (= (and d!722276 c!407672) b!2545162))

(assert (= (and d!722276 (not c!407672)) b!2545164))

(assert (= (and b!2545164 c!407671) b!2545163))

(assert (= (and b!2545164 (not c!407671)) b!2545169))

(assert (= (and b!2545169 c!407670) b!2545166))

(assert (= (and b!2545169 (not c!407670)) b!2545165))

(assert (= (and b!2545165 c!407668) b!2545168))

(assert (= (and b!2545165 (not c!407668)) b!2545170))

(assert (= (and b!2545170 c!407669) b!2545167))

(assert (= (and b!2545170 (not c!407669)) b!2545171))

(assert (= (or b!2545167 b!2545171) bm!161424))

(assert (= (or b!2545168 bm!161424) bm!161425))

(assert (= (or b!2545166 b!2545167) bm!161426))

(assert (= (or b!2545166 bm!161425) bm!161423))

(declare-fun m!2890337 () Bool)

(assert (=> d!722276 m!2890337))

(assert (=> d!722276 m!2890177))

(declare-fun m!2890339 () Bool)

(assert (=> bm!161423 m!2890339))

(declare-fun m!2890341 () Bool)

(assert (=> bm!161426 m!2890341))

(declare-fun m!2890343 () Bool)

(assert (=> b!2545170 m!2890343))

(assert (=> b!2544982 d!722276))

(declare-fun b!2545227 () Bool)

(declare-fun e!1609016 () Bool)

(declare-fun e!1609017 () Bool)

(assert (=> b!2545227 (= e!1609016 e!1609017)))

(declare-fun c!407685 () Bool)

(assert (=> b!2545227 (= c!407685 ((_ is EmptyLang!7585) lt!902493))))

(declare-fun b!2545228 () Bool)

(declare-fun e!1609018 () Bool)

(declare-fun head!5794 (List!29650) C!15328)

(assert (=> b!2545228 (= e!1609018 (= (head!5794 Nil!29550) (c!407611 lt!902493)))))

(declare-fun b!2545229 () Bool)

(declare-fun lt!902553 () Bool)

(assert (=> b!2545229 (= e!1609017 (not lt!902553))))

(declare-fun b!2545230 () Bool)

(declare-fun e!1609020 () Bool)

(declare-fun tail!4069 (List!29650) List!29650)

(assert (=> b!2545230 (= e!1609020 (matchR!3532 (derivativeStep!2154 lt!902493 (head!5794 Nil!29550)) (tail!4069 Nil!29550)))))

(declare-fun b!2545231 () Bool)

(declare-fun e!1609014 () Bool)

(declare-fun e!1609019 () Bool)

(assert (=> b!2545231 (= e!1609014 e!1609019)))

(declare-fun res!1072435 () Bool)

(assert (=> b!2545231 (=> res!1072435 e!1609019)))

(declare-fun call!161434 () Bool)

(assert (=> b!2545231 (= res!1072435 call!161434)))

(declare-fun bm!161429 () Bool)

(declare-fun isEmpty!16992 (List!29650) Bool)

(assert (=> bm!161429 (= call!161434 (isEmpty!16992 Nil!29550))))

(declare-fun b!2545233 () Bool)

(assert (=> b!2545233 (= e!1609019 (not (= (head!5794 Nil!29550) (c!407611 lt!902493))))))

(declare-fun b!2545234 () Bool)

(declare-fun res!1072439 () Bool)

(declare-fun e!1609015 () Bool)

(assert (=> b!2545234 (=> res!1072439 e!1609015)))

(assert (=> b!2545234 (= res!1072439 e!1609018)))

(declare-fun res!1072434 () Bool)

(assert (=> b!2545234 (=> (not res!1072434) (not e!1609018))))

(assert (=> b!2545234 (= res!1072434 lt!902553)))

(declare-fun b!2545235 () Bool)

(declare-fun res!1072436 () Bool)

(assert (=> b!2545235 (=> res!1072436 e!1609019)))

(assert (=> b!2545235 (= res!1072436 (not (isEmpty!16992 (tail!4069 Nil!29550))))))

(declare-fun b!2545236 () Bool)

(assert (=> b!2545236 (= e!1609015 e!1609014)))

(declare-fun res!1072437 () Bool)

(assert (=> b!2545236 (=> (not res!1072437) (not e!1609014))))

(assert (=> b!2545236 (= res!1072437 (not lt!902553))))

(declare-fun b!2545237 () Bool)

(declare-fun res!1072433 () Bool)

(assert (=> b!2545237 (=> res!1072433 e!1609015)))

(assert (=> b!2545237 (= res!1072433 (not ((_ is ElementMatch!7585) lt!902493)))))

(assert (=> b!2545237 (= e!1609017 e!1609015)))

(declare-fun b!2545238 () Bool)

(assert (=> b!2545238 (= e!1609020 (nullable!2502 lt!902493))))

(declare-fun b!2545239 () Bool)

(assert (=> b!2545239 (= e!1609016 (= lt!902553 call!161434))))

(declare-fun b!2545240 () Bool)

(declare-fun res!1072438 () Bool)

(assert (=> b!2545240 (=> (not res!1072438) (not e!1609018))))

(assert (=> b!2545240 (= res!1072438 (not call!161434))))

(declare-fun d!722286 () Bool)

(assert (=> d!722286 e!1609016))

(declare-fun c!407686 () Bool)

(assert (=> d!722286 (= c!407686 ((_ is EmptyExpr!7585) lt!902493))))

(assert (=> d!722286 (= lt!902553 e!1609020)))

(declare-fun c!407687 () Bool)

(assert (=> d!722286 (= c!407687 (isEmpty!16992 Nil!29550))))

(assert (=> d!722286 (validRegex!3211 lt!902493)))

(assert (=> d!722286 (= (matchR!3532 lt!902493 Nil!29550) lt!902553)))

(declare-fun b!2545232 () Bool)

(declare-fun res!1072440 () Bool)

(assert (=> b!2545232 (=> (not res!1072440) (not e!1609018))))

(assert (=> b!2545232 (= res!1072440 (isEmpty!16992 (tail!4069 Nil!29550)))))

(assert (= (and d!722286 c!407687) b!2545238))

(assert (= (and d!722286 (not c!407687)) b!2545230))

(assert (= (and d!722286 c!407686) b!2545239))

(assert (= (and d!722286 (not c!407686)) b!2545227))

(assert (= (and b!2545227 c!407685) b!2545229))

(assert (= (and b!2545227 (not c!407685)) b!2545237))

(assert (= (and b!2545237 (not res!1072433)) b!2545234))

(assert (= (and b!2545234 res!1072434) b!2545240))

(assert (= (and b!2545240 res!1072438) b!2545232))

(assert (= (and b!2545232 res!1072440) b!2545228))

(assert (= (and b!2545234 (not res!1072439)) b!2545236))

(assert (= (and b!2545236 res!1072437) b!2545231))

(assert (= (and b!2545231 (not res!1072435)) b!2545235))

(assert (= (and b!2545235 (not res!1072436)) b!2545233))

(assert (= (or b!2545239 b!2545231 b!2545240) bm!161429))

(declare-fun m!2890369 () Bool)

(assert (=> bm!161429 m!2890369))

(declare-fun m!2890371 () Bool)

(assert (=> b!2545232 m!2890371))

(assert (=> b!2545232 m!2890371))

(declare-fun m!2890373 () Bool)

(assert (=> b!2545232 m!2890373))

(declare-fun m!2890375 () Bool)

(assert (=> b!2545228 m!2890375))

(assert (=> b!2545230 m!2890375))

(assert (=> b!2545230 m!2890375))

(declare-fun m!2890377 () Bool)

(assert (=> b!2545230 m!2890377))

(assert (=> b!2545230 m!2890371))

(assert (=> b!2545230 m!2890377))

(assert (=> b!2545230 m!2890371))

(declare-fun m!2890379 () Bool)

(assert (=> b!2545230 m!2890379))

(assert (=> d!722286 m!2890369))

(declare-fun m!2890381 () Bool)

(assert (=> d!722286 m!2890381))

(assert (=> b!2545235 m!2890371))

(assert (=> b!2545235 m!2890371))

(assert (=> b!2545235 m!2890373))

(assert (=> b!2545233 m!2890375))

(assert (=> b!2545238 m!2890171))

(assert (=> b!2544987 d!722286))

(declare-fun b!2545257 () Bool)

(declare-fun e!1609033 () Bool)

(declare-fun e!1609034 () Bool)

(assert (=> b!2545257 (= e!1609033 e!1609034)))

(declare-fun c!407692 () Bool)

(assert (=> b!2545257 (= c!407692 ((_ is EmptyLang!7585) lt!902500))))

(declare-fun b!2545258 () Bool)

(declare-fun e!1609036 () Bool)

(assert (=> b!2545258 (= e!1609036 (= (head!5794 tl!4068) (c!407611 lt!902500)))))

(declare-fun b!2545259 () Bool)

(declare-fun lt!902554 () Bool)

(assert (=> b!2545259 (= e!1609034 (not lt!902554))))

(declare-fun b!2545260 () Bool)

(declare-fun e!1609041 () Bool)

(assert (=> b!2545260 (= e!1609041 (matchR!3532 (derivativeStep!2154 lt!902500 (head!5794 tl!4068)) (tail!4069 tl!4068)))))

(declare-fun b!2545263 () Bool)

(declare-fun e!1609031 () Bool)

(declare-fun e!1609038 () Bool)

(assert (=> b!2545263 (= e!1609031 e!1609038)))

(declare-fun res!1072451 () Bool)

(assert (=> b!2545263 (=> res!1072451 e!1609038)))

(declare-fun call!161435 () Bool)

(assert (=> b!2545263 (= res!1072451 call!161435)))

(declare-fun bm!161430 () Bool)

(assert (=> bm!161430 (= call!161435 (isEmpty!16992 tl!4068))))

(declare-fun b!2545265 () Bool)

(assert (=> b!2545265 (= e!1609038 (not (= (head!5794 tl!4068) (c!407611 lt!902500))))))

(declare-fun b!2545266 () Bool)

(declare-fun res!1072455 () Bool)

(declare-fun e!1609032 () Bool)

(assert (=> b!2545266 (=> res!1072455 e!1609032)))

(assert (=> b!2545266 (= res!1072455 e!1609036)))

(declare-fun res!1072448 () Bool)

(assert (=> b!2545266 (=> (not res!1072448) (not e!1609036))))

(assert (=> b!2545266 (= res!1072448 lt!902554)))

(declare-fun b!2545267 () Bool)

(declare-fun res!1072452 () Bool)

(assert (=> b!2545267 (=> res!1072452 e!1609038)))

(assert (=> b!2545267 (= res!1072452 (not (isEmpty!16992 (tail!4069 tl!4068))))))

(declare-fun b!2545268 () Bool)

(assert (=> b!2545268 (= e!1609032 e!1609031)))

(declare-fun res!1072453 () Bool)

(assert (=> b!2545268 (=> (not res!1072453) (not e!1609031))))

(assert (=> b!2545268 (= res!1072453 (not lt!902554))))

(declare-fun b!2545269 () Bool)

(declare-fun res!1072447 () Bool)

(assert (=> b!2545269 (=> res!1072447 e!1609032)))

(assert (=> b!2545269 (= res!1072447 (not ((_ is ElementMatch!7585) lt!902500)))))

(assert (=> b!2545269 (= e!1609034 e!1609032)))

(declare-fun b!2545270 () Bool)

(assert (=> b!2545270 (= e!1609041 (nullable!2502 lt!902500))))

(declare-fun b!2545271 () Bool)

(assert (=> b!2545271 (= e!1609033 (= lt!902554 call!161435))))

(declare-fun b!2545272 () Bool)

(declare-fun res!1072454 () Bool)

(assert (=> b!2545272 (=> (not res!1072454) (not e!1609036))))

(assert (=> b!2545272 (= res!1072454 (not call!161435))))

(declare-fun d!722292 () Bool)

(assert (=> d!722292 e!1609033))

(declare-fun c!407693 () Bool)

(assert (=> d!722292 (= c!407693 ((_ is EmptyExpr!7585) lt!902500))))

(assert (=> d!722292 (= lt!902554 e!1609041)))

(declare-fun c!407694 () Bool)

(assert (=> d!722292 (= c!407694 (isEmpty!16992 tl!4068))))

(assert (=> d!722292 (validRegex!3211 lt!902500)))

(assert (=> d!722292 (= (matchR!3532 lt!902500 tl!4068) lt!902554)))

(declare-fun b!2545264 () Bool)

(declare-fun res!1072456 () Bool)

(assert (=> b!2545264 (=> (not res!1072456) (not e!1609036))))

(assert (=> b!2545264 (= res!1072456 (isEmpty!16992 (tail!4069 tl!4068)))))

(assert (= (and d!722292 c!407694) b!2545270))

(assert (= (and d!722292 (not c!407694)) b!2545260))

(assert (= (and d!722292 c!407693) b!2545271))

(assert (= (and d!722292 (not c!407693)) b!2545257))

(assert (= (and b!2545257 c!407692) b!2545259))

(assert (= (and b!2545257 (not c!407692)) b!2545269))

(assert (= (and b!2545269 (not res!1072447)) b!2545266))

(assert (= (and b!2545266 res!1072448) b!2545272))

(assert (= (and b!2545272 res!1072454) b!2545264))

(assert (= (and b!2545264 res!1072456) b!2545258))

(assert (= (and b!2545266 (not res!1072455)) b!2545268))

(assert (= (and b!2545268 res!1072453) b!2545263))

(assert (= (and b!2545263 (not res!1072451)) b!2545267))

(assert (= (and b!2545267 (not res!1072452)) b!2545265))

(assert (= (or b!2545271 b!2545263 b!2545272) bm!161430))

(declare-fun m!2890383 () Bool)

(assert (=> bm!161430 m!2890383))

(declare-fun m!2890385 () Bool)

(assert (=> b!2545264 m!2890385))

(assert (=> b!2545264 m!2890385))

(declare-fun m!2890387 () Bool)

(assert (=> b!2545264 m!2890387))

(declare-fun m!2890389 () Bool)

(assert (=> b!2545258 m!2890389))

(assert (=> b!2545260 m!2890389))

(assert (=> b!2545260 m!2890389))

(declare-fun m!2890391 () Bool)

(assert (=> b!2545260 m!2890391))

(assert (=> b!2545260 m!2890385))

(assert (=> b!2545260 m!2890391))

(assert (=> b!2545260 m!2890385))

(declare-fun m!2890393 () Bool)

(assert (=> b!2545260 m!2890393))

(assert (=> d!722292 m!2890383))

(assert (=> d!722292 m!2890305))

(assert (=> b!2545267 m!2890385))

(assert (=> b!2545267 m!2890385))

(assert (=> b!2545267 m!2890387))

(assert (=> b!2545265 m!2890389))

(declare-fun m!2890395 () Bool)

(assert (=> b!2545270 m!2890395))

(assert (=> b!2544987 d!722292))

(declare-fun d!722294 () Bool)

(assert (=> d!722294 (= (matchR!3532 lt!902500 tl!4068) (matchR!3532 (derivative!280 lt!902500 tl!4068) Nil!29550))))

(declare-fun lt!902561 () Unit!43359)

(declare-fun choose!15035 (Regex!7585 List!29650) Unit!43359)

(assert (=> d!722294 (= lt!902561 (choose!15035 lt!902500 tl!4068))))

(assert (=> d!722294 (validRegex!3211 lt!902500)))

(assert (=> d!722294 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!178 lt!902500 tl!4068) lt!902561)))

(declare-fun bs!469495 () Bool)

(assert (= bs!469495 d!722294))

(assert (=> bs!469495 m!2890305))

(assert (=> bs!469495 m!2890199))

(declare-fun m!2890455 () Bool)

(assert (=> bs!469495 m!2890455))

(assert (=> bs!469495 m!2890173))

(assert (=> bs!469495 m!2890173))

(declare-fun m!2890457 () Bool)

(assert (=> bs!469495 m!2890457))

(assert (=> b!2544987 d!722294))

(declare-fun b!2545345 () Bool)

(declare-fun e!1609085 () Bool)

(declare-fun e!1609086 () Bool)

(assert (=> b!2545345 (= e!1609085 e!1609086)))

(declare-fun c!407714 () Bool)

(assert (=> b!2545345 (= c!407714 ((_ is EmptyLang!7585) (reg!7914 r!27340)))))

(declare-fun e!1609087 () Bool)

(declare-fun b!2545346 () Bool)

(assert (=> b!2545346 (= e!1609087 (= (head!5794 (Cons!29550 c!14016 (_1!17318 lt!902496))) (c!407611 (reg!7914 r!27340))))))

(declare-fun b!2545347 () Bool)

(declare-fun lt!902563 () Bool)

(assert (=> b!2545347 (= e!1609086 (not lt!902563))))

(declare-fun e!1609089 () Bool)

(declare-fun b!2545348 () Bool)

(assert (=> b!2545348 (= e!1609089 (matchR!3532 (derivativeStep!2154 (reg!7914 r!27340) (head!5794 (Cons!29550 c!14016 (_1!17318 lt!902496)))) (tail!4069 (Cons!29550 c!14016 (_1!17318 lt!902496)))))))

(declare-fun b!2545349 () Bool)

(declare-fun e!1609083 () Bool)

(declare-fun e!1609088 () Bool)

(assert (=> b!2545349 (= e!1609083 e!1609088)))

(declare-fun res!1072495 () Bool)

(assert (=> b!2545349 (=> res!1072495 e!1609088)))

(declare-fun call!161455 () Bool)

(assert (=> b!2545349 (= res!1072495 call!161455)))

(declare-fun bm!161450 () Bool)

(assert (=> bm!161450 (= call!161455 (isEmpty!16992 (Cons!29550 c!14016 (_1!17318 lt!902496))))))

(declare-fun b!2545351 () Bool)

(assert (=> b!2545351 (= e!1609088 (not (= (head!5794 (Cons!29550 c!14016 (_1!17318 lt!902496))) (c!407611 (reg!7914 r!27340)))))))

(declare-fun b!2545352 () Bool)

(declare-fun res!1072499 () Bool)

(declare-fun e!1609084 () Bool)

(assert (=> b!2545352 (=> res!1072499 e!1609084)))

(assert (=> b!2545352 (= res!1072499 e!1609087)))

(declare-fun res!1072494 () Bool)

(assert (=> b!2545352 (=> (not res!1072494) (not e!1609087))))

(assert (=> b!2545352 (= res!1072494 lt!902563)))

(declare-fun b!2545353 () Bool)

(declare-fun res!1072496 () Bool)

(assert (=> b!2545353 (=> res!1072496 e!1609088)))

(assert (=> b!2545353 (= res!1072496 (not (isEmpty!16992 (tail!4069 (Cons!29550 c!14016 (_1!17318 lt!902496))))))))

(declare-fun b!2545354 () Bool)

(assert (=> b!2545354 (= e!1609084 e!1609083)))

(declare-fun res!1072497 () Bool)

(assert (=> b!2545354 (=> (not res!1072497) (not e!1609083))))

(assert (=> b!2545354 (= res!1072497 (not lt!902563))))

(declare-fun b!2545355 () Bool)

(declare-fun res!1072493 () Bool)

(assert (=> b!2545355 (=> res!1072493 e!1609084)))

(assert (=> b!2545355 (= res!1072493 (not ((_ is ElementMatch!7585) (reg!7914 r!27340))))))

(assert (=> b!2545355 (= e!1609086 e!1609084)))

(declare-fun b!2545356 () Bool)

(assert (=> b!2545356 (= e!1609089 (nullable!2502 (reg!7914 r!27340)))))

(declare-fun b!2545357 () Bool)

(assert (=> b!2545357 (= e!1609085 (= lt!902563 call!161455))))

(declare-fun b!2545358 () Bool)

(declare-fun res!1072498 () Bool)

(assert (=> b!2545358 (=> (not res!1072498) (not e!1609087))))

(assert (=> b!2545358 (= res!1072498 (not call!161455))))

(declare-fun d!722310 () Bool)

(assert (=> d!722310 e!1609085))

(declare-fun c!407715 () Bool)

(assert (=> d!722310 (= c!407715 ((_ is EmptyExpr!7585) (reg!7914 r!27340)))))

(assert (=> d!722310 (= lt!902563 e!1609089)))

(declare-fun c!407716 () Bool)

(assert (=> d!722310 (= c!407716 (isEmpty!16992 (Cons!29550 c!14016 (_1!17318 lt!902496))))))

(assert (=> d!722310 (validRegex!3211 (reg!7914 r!27340))))

(assert (=> d!722310 (= (matchR!3532 (reg!7914 r!27340) (Cons!29550 c!14016 (_1!17318 lt!902496))) lt!902563)))

(declare-fun b!2545350 () Bool)

(declare-fun res!1072500 () Bool)

(assert (=> b!2545350 (=> (not res!1072500) (not e!1609087))))

(assert (=> b!2545350 (= res!1072500 (isEmpty!16992 (tail!4069 (Cons!29550 c!14016 (_1!17318 lt!902496)))))))

(assert (= (and d!722310 c!407716) b!2545356))

(assert (= (and d!722310 (not c!407716)) b!2545348))

(assert (= (and d!722310 c!407715) b!2545357))

(assert (= (and d!722310 (not c!407715)) b!2545345))

(assert (= (and b!2545345 c!407714) b!2545347))

(assert (= (and b!2545345 (not c!407714)) b!2545355))

(assert (= (and b!2545355 (not res!1072493)) b!2545352))

(assert (= (and b!2545352 res!1072494) b!2545358))

(assert (= (and b!2545358 res!1072498) b!2545350))

(assert (= (and b!2545350 res!1072500) b!2545346))

(assert (= (and b!2545352 (not res!1072499)) b!2545354))

(assert (= (and b!2545354 res!1072497) b!2545349))

(assert (= (and b!2545349 (not res!1072495)) b!2545353))

(assert (= (and b!2545353 (not res!1072496)) b!2545351))

(assert (= (or b!2545357 b!2545349 b!2545358) bm!161450))

(declare-fun m!2890473 () Bool)

(assert (=> bm!161450 m!2890473))

(declare-fun m!2890475 () Bool)

(assert (=> b!2545350 m!2890475))

(assert (=> b!2545350 m!2890475))

(declare-fun m!2890477 () Bool)

(assert (=> b!2545350 m!2890477))

(declare-fun m!2890479 () Bool)

(assert (=> b!2545346 m!2890479))

(assert (=> b!2545348 m!2890479))

(assert (=> b!2545348 m!2890479))

(declare-fun m!2890481 () Bool)

(assert (=> b!2545348 m!2890481))

(assert (=> b!2545348 m!2890475))

(assert (=> b!2545348 m!2890481))

(assert (=> b!2545348 m!2890475))

(declare-fun m!2890483 () Bool)

(assert (=> b!2545348 m!2890483))

(assert (=> d!722310 m!2890473))

(declare-fun m!2890485 () Bool)

(assert (=> d!722310 m!2890485))

(assert (=> b!2545353 m!2890475))

(assert (=> b!2545353 m!2890475))

(assert (=> b!2545353 m!2890477))

(assert (=> b!2545351 m!2890479))

(declare-fun m!2890487 () Bool)

(assert (=> b!2545356 m!2890487))

(assert (=> b!2544986 d!722310))

(declare-fun b!2545381 () Bool)

(declare-fun e!1609097 () Bool)

(declare-fun e!1609098 () Bool)

(assert (=> b!2545381 (= e!1609097 e!1609098)))

(declare-fun c!407717 () Bool)

(assert (=> b!2545381 (= c!407717 ((_ is EmptyLang!7585) lt!902498))))

(declare-fun b!2545382 () Bool)

(declare-fun e!1609099 () Bool)

(assert (=> b!2545382 (= e!1609099 (= (head!5794 (_2!17318 lt!902496)) (c!407611 lt!902498)))))

(declare-fun b!2545383 () Bool)

(declare-fun lt!902564 () Bool)

(assert (=> b!2545383 (= e!1609098 (not lt!902564))))

(declare-fun b!2545384 () Bool)

(declare-fun e!1609101 () Bool)

(assert (=> b!2545384 (= e!1609101 (matchR!3532 (derivativeStep!2154 lt!902498 (head!5794 (_2!17318 lt!902496))) (tail!4069 (_2!17318 lt!902496))))))

(declare-fun b!2545385 () Bool)

(declare-fun e!1609095 () Bool)

(declare-fun e!1609100 () Bool)

(assert (=> b!2545385 (= e!1609095 e!1609100)))

(declare-fun res!1072503 () Bool)

(assert (=> b!2545385 (=> res!1072503 e!1609100)))

(declare-fun call!161456 () Bool)

(assert (=> b!2545385 (= res!1072503 call!161456)))

(declare-fun bm!161451 () Bool)

(assert (=> bm!161451 (= call!161456 (isEmpty!16992 (_2!17318 lt!902496)))))

(declare-fun b!2545387 () Bool)

(assert (=> b!2545387 (= e!1609100 (not (= (head!5794 (_2!17318 lt!902496)) (c!407611 lt!902498))))))

(declare-fun b!2545388 () Bool)

(declare-fun res!1072507 () Bool)

(declare-fun e!1609096 () Bool)

(assert (=> b!2545388 (=> res!1072507 e!1609096)))

(assert (=> b!2545388 (= res!1072507 e!1609099)))

(declare-fun res!1072502 () Bool)

(assert (=> b!2545388 (=> (not res!1072502) (not e!1609099))))

(assert (=> b!2545388 (= res!1072502 lt!902564)))

(declare-fun b!2545389 () Bool)

(declare-fun res!1072504 () Bool)

(assert (=> b!2545389 (=> res!1072504 e!1609100)))

(assert (=> b!2545389 (= res!1072504 (not (isEmpty!16992 (tail!4069 (_2!17318 lt!902496)))))))

(declare-fun b!2545390 () Bool)

(assert (=> b!2545390 (= e!1609096 e!1609095)))

(declare-fun res!1072505 () Bool)

(assert (=> b!2545390 (=> (not res!1072505) (not e!1609095))))

(assert (=> b!2545390 (= res!1072505 (not lt!902564))))

(declare-fun b!2545391 () Bool)

(declare-fun res!1072501 () Bool)

(assert (=> b!2545391 (=> res!1072501 e!1609096)))

(assert (=> b!2545391 (= res!1072501 (not ((_ is ElementMatch!7585) lt!902498)))))

(assert (=> b!2545391 (= e!1609098 e!1609096)))

(declare-fun b!2545392 () Bool)

(assert (=> b!2545392 (= e!1609101 (nullable!2502 lt!902498))))

(declare-fun b!2545393 () Bool)

(assert (=> b!2545393 (= e!1609097 (= lt!902564 call!161456))))

(declare-fun b!2545394 () Bool)

(declare-fun res!1072506 () Bool)

(assert (=> b!2545394 (=> (not res!1072506) (not e!1609099))))

(assert (=> b!2545394 (= res!1072506 (not call!161456))))

(declare-fun d!722312 () Bool)

(assert (=> d!722312 e!1609097))

(declare-fun c!407718 () Bool)

(assert (=> d!722312 (= c!407718 ((_ is EmptyExpr!7585) lt!902498))))

(assert (=> d!722312 (= lt!902564 e!1609101)))

(declare-fun c!407719 () Bool)

(assert (=> d!722312 (= c!407719 (isEmpty!16992 (_2!17318 lt!902496)))))

(assert (=> d!722312 (validRegex!3211 lt!902498)))

(assert (=> d!722312 (= (matchR!3532 lt!902498 (_2!17318 lt!902496)) lt!902564)))

(declare-fun b!2545386 () Bool)

(declare-fun res!1072508 () Bool)

(assert (=> b!2545386 (=> (not res!1072508) (not e!1609099))))

(assert (=> b!2545386 (= res!1072508 (isEmpty!16992 (tail!4069 (_2!17318 lt!902496))))))

(assert (= (and d!722312 c!407719) b!2545392))

(assert (= (and d!722312 (not c!407719)) b!2545384))

(assert (= (and d!722312 c!407718) b!2545393))

(assert (= (and d!722312 (not c!407718)) b!2545381))

(assert (= (and b!2545381 c!407717) b!2545383))

(assert (= (and b!2545381 (not c!407717)) b!2545391))

(assert (= (and b!2545391 (not res!1072501)) b!2545388))

(assert (= (and b!2545388 res!1072502) b!2545394))

(assert (= (and b!2545394 res!1072506) b!2545386))

(assert (= (and b!2545386 res!1072508) b!2545382))

(assert (= (and b!2545388 (not res!1072507)) b!2545390))

(assert (= (and b!2545390 res!1072505) b!2545385))

(assert (= (and b!2545385 (not res!1072503)) b!2545389))

(assert (= (and b!2545389 (not res!1072504)) b!2545387))

(assert (= (or b!2545393 b!2545385 b!2545394) bm!161451))

(declare-fun m!2890489 () Bool)

(assert (=> bm!161451 m!2890489))

(declare-fun m!2890491 () Bool)

(assert (=> b!2545386 m!2890491))

(assert (=> b!2545386 m!2890491))

(declare-fun m!2890493 () Bool)

(assert (=> b!2545386 m!2890493))

(declare-fun m!2890495 () Bool)

(assert (=> b!2545382 m!2890495))

(assert (=> b!2545384 m!2890495))

(assert (=> b!2545384 m!2890495))

(declare-fun m!2890497 () Bool)

(assert (=> b!2545384 m!2890497))

(assert (=> b!2545384 m!2890491))

(assert (=> b!2545384 m!2890497))

(assert (=> b!2545384 m!2890491))

(declare-fun m!2890499 () Bool)

(assert (=> b!2545384 m!2890499))

(assert (=> d!722312 m!2890489))

(declare-fun m!2890501 () Bool)

(assert (=> d!722312 m!2890501))

(assert (=> b!2545389 m!2890491))

(assert (=> b!2545389 m!2890491))

(assert (=> b!2545389 m!2890493))

(assert (=> b!2545387 m!2890495))

(declare-fun m!2890503 () Bool)

(assert (=> b!2545392 m!2890503))

(assert (=> b!2544981 d!722312))

(declare-fun b!2545426 () Bool)

(declare-fun e!1609121 () Bool)

(declare-fun e!1609127 () Bool)

(assert (=> b!2545426 (= e!1609121 e!1609127)))

(declare-fun res!1072521 () Bool)

(assert (=> b!2545426 (=> (not res!1072521) (not e!1609127))))

(declare-fun call!161465 () Bool)

(assert (=> b!2545426 (= res!1072521 call!161465)))

(declare-fun b!2545427 () Bool)

(declare-fun res!1072523 () Bool)

(assert (=> b!2545427 (=> res!1072523 e!1609121)))

(assert (=> b!2545427 (= res!1072523 (not ((_ is Concat!12281) r!27340)))))

(declare-fun e!1609123 () Bool)

(assert (=> b!2545427 (= e!1609123 e!1609121)))

(declare-fun b!2545428 () Bool)

(declare-fun e!1609122 () Bool)

(assert (=> b!2545428 (= e!1609122 e!1609123)))

(declare-fun c!407725 () Bool)

(assert (=> b!2545428 (= c!407725 ((_ is Union!7585) r!27340))))

(declare-fun bm!161458 () Bool)

(declare-fun call!161463 () Bool)

(declare-fun call!161464 () Bool)

(assert (=> bm!161458 (= call!161463 call!161464)))

(declare-fun b!2545429 () Bool)

(declare-fun res!1072519 () Bool)

(declare-fun e!1609126 () Bool)

(assert (=> b!2545429 (=> (not res!1072519) (not e!1609126))))

(assert (=> b!2545429 (= res!1072519 call!161463)))

(assert (=> b!2545429 (= e!1609123 e!1609126)))

(declare-fun c!407724 () Bool)

(declare-fun bm!161460 () Bool)

(assert (=> bm!161460 (= call!161464 (validRegex!3211 (ite c!407724 (reg!7914 r!27340) (ite c!407725 (regOne!15683 r!27340) (regTwo!15682 r!27340)))))))

(declare-fun b!2545430 () Bool)

(assert (=> b!2545430 (= e!1609126 call!161465)))

(declare-fun b!2545431 () Bool)

(declare-fun e!1609124 () Bool)

(assert (=> b!2545431 (= e!1609124 call!161464)))

(declare-fun b!2545432 () Bool)

(assert (=> b!2545432 (= e!1609127 call!161463)))

(declare-fun d!722314 () Bool)

(declare-fun res!1072522 () Bool)

(declare-fun e!1609125 () Bool)

(assert (=> d!722314 (=> res!1072522 e!1609125)))

(assert (=> d!722314 (= res!1072522 ((_ is ElementMatch!7585) r!27340))))

(assert (=> d!722314 (= (validRegex!3211 r!27340) e!1609125)))

(declare-fun bm!161459 () Bool)

(assert (=> bm!161459 (= call!161465 (validRegex!3211 (ite c!407725 (regTwo!15683 r!27340) (regOne!15682 r!27340))))))

(declare-fun b!2545433 () Bool)

(assert (=> b!2545433 (= e!1609122 e!1609124)))

(declare-fun res!1072520 () Bool)

(assert (=> b!2545433 (= res!1072520 (not (nullable!2502 (reg!7914 r!27340))))))

(assert (=> b!2545433 (=> (not res!1072520) (not e!1609124))))

(declare-fun b!2545434 () Bool)

(assert (=> b!2545434 (= e!1609125 e!1609122)))

(assert (=> b!2545434 (= c!407724 ((_ is Star!7585) r!27340))))

(assert (= (and d!722314 (not res!1072522)) b!2545434))

(assert (= (and b!2545434 c!407724) b!2545433))

(assert (= (and b!2545434 (not c!407724)) b!2545428))

(assert (= (and b!2545433 res!1072520) b!2545431))

(assert (= (and b!2545428 c!407725) b!2545429))

(assert (= (and b!2545428 (not c!407725)) b!2545427))

(assert (= (and b!2545429 res!1072519) b!2545430))

(assert (= (and b!2545427 (not res!1072523)) b!2545426))

(assert (= (and b!2545426 res!1072521) b!2545432))

(assert (= (or b!2545429 b!2545432) bm!161458))

(assert (= (or b!2545430 b!2545426) bm!161459))

(assert (= (or b!2545431 bm!161458) bm!161460))

(declare-fun m!2890505 () Bool)

(assert (=> bm!161460 m!2890505))

(declare-fun m!2890507 () Bool)

(assert (=> bm!161459 m!2890507))

(assert (=> b!2545433 m!2890487))

(assert (=> start!247040 d!722314))

(declare-fun b!2545435 () Bool)

(declare-fun e!1609130 () Bool)

(declare-fun e!1609131 () Bool)

(assert (=> b!2545435 (= e!1609130 e!1609131)))

(declare-fun c!407726 () Bool)

(assert (=> b!2545435 (= c!407726 ((_ is EmptyLang!7585) lt!902495))))

(declare-fun b!2545436 () Bool)

(declare-fun e!1609132 () Bool)

(assert (=> b!2545436 (= e!1609132 (= (head!5794 (_1!17318 lt!902496)) (c!407611 lt!902495)))))

(declare-fun b!2545437 () Bool)

(declare-fun lt!902565 () Bool)

(assert (=> b!2545437 (= e!1609131 (not lt!902565))))

(declare-fun b!2545438 () Bool)

(declare-fun e!1609134 () Bool)

(assert (=> b!2545438 (= e!1609134 (matchR!3532 (derivativeStep!2154 lt!902495 (head!5794 (_1!17318 lt!902496))) (tail!4069 (_1!17318 lt!902496))))))

(declare-fun b!2545439 () Bool)

(declare-fun e!1609128 () Bool)

(declare-fun e!1609133 () Bool)

(assert (=> b!2545439 (= e!1609128 e!1609133)))

(declare-fun res!1072526 () Bool)

(assert (=> b!2545439 (=> res!1072526 e!1609133)))

(declare-fun call!161466 () Bool)

(assert (=> b!2545439 (= res!1072526 call!161466)))

(declare-fun bm!161461 () Bool)

(assert (=> bm!161461 (= call!161466 (isEmpty!16992 (_1!17318 lt!902496)))))

(declare-fun b!2545441 () Bool)

(assert (=> b!2545441 (= e!1609133 (not (= (head!5794 (_1!17318 lt!902496)) (c!407611 lt!902495))))))

(declare-fun b!2545442 () Bool)

(declare-fun res!1072530 () Bool)

(declare-fun e!1609129 () Bool)

(assert (=> b!2545442 (=> res!1072530 e!1609129)))

(assert (=> b!2545442 (= res!1072530 e!1609132)))

(declare-fun res!1072525 () Bool)

(assert (=> b!2545442 (=> (not res!1072525) (not e!1609132))))

(assert (=> b!2545442 (= res!1072525 lt!902565)))

(declare-fun b!2545443 () Bool)

(declare-fun res!1072527 () Bool)

(assert (=> b!2545443 (=> res!1072527 e!1609133)))

(assert (=> b!2545443 (= res!1072527 (not (isEmpty!16992 (tail!4069 (_1!17318 lt!902496)))))))

(declare-fun b!2545444 () Bool)

(assert (=> b!2545444 (= e!1609129 e!1609128)))

(declare-fun res!1072528 () Bool)

(assert (=> b!2545444 (=> (not res!1072528) (not e!1609128))))

(assert (=> b!2545444 (= res!1072528 (not lt!902565))))

(declare-fun b!2545445 () Bool)

(declare-fun res!1072524 () Bool)

(assert (=> b!2545445 (=> res!1072524 e!1609129)))

(assert (=> b!2545445 (= res!1072524 (not ((_ is ElementMatch!7585) lt!902495)))))

(assert (=> b!2545445 (= e!1609131 e!1609129)))

(declare-fun b!2545446 () Bool)

(assert (=> b!2545446 (= e!1609134 (nullable!2502 lt!902495))))

(declare-fun b!2545447 () Bool)

(assert (=> b!2545447 (= e!1609130 (= lt!902565 call!161466))))

(declare-fun b!2545448 () Bool)

(declare-fun res!1072529 () Bool)

(assert (=> b!2545448 (=> (not res!1072529) (not e!1609132))))

(assert (=> b!2545448 (= res!1072529 (not call!161466))))

(declare-fun d!722316 () Bool)

(assert (=> d!722316 e!1609130))

(declare-fun c!407727 () Bool)

(assert (=> d!722316 (= c!407727 ((_ is EmptyExpr!7585) lt!902495))))

(assert (=> d!722316 (= lt!902565 e!1609134)))

(declare-fun c!407728 () Bool)

(assert (=> d!722316 (= c!407728 (isEmpty!16992 (_1!17318 lt!902496)))))

(assert (=> d!722316 (validRegex!3211 lt!902495)))

(assert (=> d!722316 (= (matchR!3532 lt!902495 (_1!17318 lt!902496)) lt!902565)))

(declare-fun b!2545440 () Bool)

(declare-fun res!1072531 () Bool)

(assert (=> b!2545440 (=> (not res!1072531) (not e!1609132))))

(assert (=> b!2545440 (= res!1072531 (isEmpty!16992 (tail!4069 (_1!17318 lt!902496))))))

(assert (= (and d!722316 c!407728) b!2545446))

(assert (= (and d!722316 (not c!407728)) b!2545438))

(assert (= (and d!722316 c!407727) b!2545447))

(assert (= (and d!722316 (not c!407727)) b!2545435))

(assert (= (and b!2545435 c!407726) b!2545437))

(assert (= (and b!2545435 (not c!407726)) b!2545445))

(assert (= (and b!2545445 (not res!1072524)) b!2545442))

(assert (= (and b!2545442 res!1072525) b!2545448))

(assert (= (and b!2545448 res!1072529) b!2545440))

(assert (= (and b!2545440 res!1072531) b!2545436))

(assert (= (and b!2545442 (not res!1072530)) b!2545444))

(assert (= (and b!2545444 res!1072528) b!2545439))

(assert (= (and b!2545439 (not res!1072526)) b!2545443))

(assert (= (and b!2545443 (not res!1072527)) b!2545441))

(assert (= (or b!2545447 b!2545439 b!2545448) bm!161461))

(declare-fun m!2890509 () Bool)

(assert (=> bm!161461 m!2890509))

(declare-fun m!2890511 () Bool)

(assert (=> b!2545440 m!2890511))

(assert (=> b!2545440 m!2890511))

(declare-fun m!2890513 () Bool)

(assert (=> b!2545440 m!2890513))

(declare-fun m!2890515 () Bool)

(assert (=> b!2545436 m!2890515))

(assert (=> b!2545438 m!2890515))

(assert (=> b!2545438 m!2890515))

(declare-fun m!2890517 () Bool)

(assert (=> b!2545438 m!2890517))

(assert (=> b!2545438 m!2890511))

(assert (=> b!2545438 m!2890517))

(assert (=> b!2545438 m!2890511))

(declare-fun m!2890519 () Bool)

(assert (=> b!2545438 m!2890519))

(assert (=> d!722316 m!2890509))

(assert (=> d!722316 m!2890179))

(assert (=> b!2545443 m!2890511))

(assert (=> b!2545443 m!2890511))

(assert (=> b!2545443 m!2890513))

(assert (=> b!2545441 m!2890515))

(declare-fun m!2890521 () Bool)

(assert (=> b!2545446 m!2890521))

(assert (=> b!2544990 d!722316))

(declare-fun b!2545449 () Bool)

(declare-fun e!1609139 () Regex!7585)

(assert (=> b!2545449 (= e!1609139 EmptyLang!7585)))

(declare-fun b!2545450 () Bool)

(declare-fun e!1609136 () Regex!7585)

(assert (=> b!2545450 (= e!1609136 (ite (= c!14016 (c!407611 (reg!7914 r!27340))) EmptyExpr!7585 EmptyLang!7585))))

(declare-fun d!722318 () Bool)

(declare-fun lt!902566 () Regex!7585)

(assert (=> d!722318 (validRegex!3211 lt!902566)))

(assert (=> d!722318 (= lt!902566 e!1609139)))

(declare-fun c!407733 () Bool)

(assert (=> d!722318 (= c!407733 (or ((_ is EmptyExpr!7585) (reg!7914 r!27340)) ((_ is EmptyLang!7585) (reg!7914 r!27340))))))

(assert (=> d!722318 (validRegex!3211 (reg!7914 r!27340))))

(assert (=> d!722318 (= (derivativeStep!2154 (reg!7914 r!27340) c!14016) lt!902566)))

(declare-fun c!407731 () Bool)

(declare-fun bm!161462 () Bool)

(declare-fun call!161467 () Regex!7585)

(declare-fun c!407729 () Bool)

(assert (=> bm!161462 (= call!161467 (derivativeStep!2154 (ite c!407731 (regOne!15683 (reg!7914 r!27340)) (ite c!407729 (reg!7914 (reg!7914 r!27340)) (regOne!15682 (reg!7914 r!27340)))) c!14016))))

(declare-fun b!2545451 () Bool)

(assert (=> b!2545451 (= e!1609139 e!1609136)))

(declare-fun c!407732 () Bool)

(assert (=> b!2545451 (= c!407732 ((_ is ElementMatch!7585) (reg!7914 r!27340)))))

(declare-fun bm!161463 () Bool)

(declare-fun call!161468 () Regex!7585)

(declare-fun call!161469 () Regex!7585)

(assert (=> bm!161463 (= call!161468 call!161469)))

(declare-fun bm!161464 () Bool)

(assert (=> bm!161464 (= call!161469 call!161467)))

(declare-fun b!2545452 () Bool)

(declare-fun e!1609135 () Regex!7585)

(declare-fun e!1609138 () Regex!7585)

(assert (=> b!2545452 (= e!1609135 e!1609138)))

(assert (=> b!2545452 (= c!407729 ((_ is Star!7585) (reg!7914 r!27340)))))

(declare-fun b!2545453 () Bool)

(declare-fun call!161470 () Regex!7585)

(assert (=> b!2545453 (= e!1609135 (Union!7585 call!161467 call!161470))))

(declare-fun bm!161465 () Bool)

(assert (=> bm!161465 (= call!161470 (derivativeStep!2154 (ite c!407731 (regTwo!15683 (reg!7914 r!27340)) (regTwo!15682 (reg!7914 r!27340))) c!14016))))

(declare-fun b!2545454 () Bool)

(declare-fun e!1609137 () Regex!7585)

(assert (=> b!2545454 (= e!1609137 (Union!7585 (Concat!12281 call!161468 (regTwo!15682 (reg!7914 r!27340))) call!161470))))

(declare-fun b!2545455 () Bool)

(assert (=> b!2545455 (= e!1609138 (Concat!12281 call!161469 (reg!7914 r!27340)))))

(declare-fun b!2545456 () Bool)

(assert (=> b!2545456 (= c!407731 ((_ is Union!7585) (reg!7914 r!27340)))))

(assert (=> b!2545456 (= e!1609136 e!1609135)))

(declare-fun b!2545457 () Bool)

(declare-fun c!407730 () Bool)

(assert (=> b!2545457 (= c!407730 (nullable!2502 (regOne!15682 (reg!7914 r!27340))))))

(assert (=> b!2545457 (= e!1609138 e!1609137)))

(declare-fun b!2545458 () Bool)

(assert (=> b!2545458 (= e!1609137 (Union!7585 (Concat!12281 call!161468 (regTwo!15682 (reg!7914 r!27340))) EmptyLang!7585))))

(assert (= (and d!722318 c!407733) b!2545449))

(assert (= (and d!722318 (not c!407733)) b!2545451))

(assert (= (and b!2545451 c!407732) b!2545450))

(assert (= (and b!2545451 (not c!407732)) b!2545456))

(assert (= (and b!2545456 c!407731) b!2545453))

(assert (= (and b!2545456 (not c!407731)) b!2545452))

(assert (= (and b!2545452 c!407729) b!2545455))

(assert (= (and b!2545452 (not c!407729)) b!2545457))

(assert (= (and b!2545457 c!407730) b!2545454))

(assert (= (and b!2545457 (not c!407730)) b!2545458))

(assert (= (or b!2545454 b!2545458) bm!161463))

(assert (= (or b!2545455 bm!161463) bm!161464))

(assert (= (or b!2545453 b!2545454) bm!161465))

(assert (= (or b!2545453 bm!161464) bm!161462))

(declare-fun m!2890523 () Bool)

(assert (=> d!722318 m!2890523))

(assert (=> d!722318 m!2890485))

(declare-fun m!2890525 () Bool)

(assert (=> bm!161462 m!2890525))

(declare-fun m!2890527 () Bool)

(assert (=> bm!161465 m!2890527))

(declare-fun m!2890529 () Bool)

(assert (=> b!2545457 m!2890529))

(assert (=> b!2544985 d!722318))

(declare-fun b!2545459 () Bool)

(declare-fun e!1609140 () Bool)

(declare-fun e!1609146 () Bool)

(assert (=> b!2545459 (= e!1609140 e!1609146)))

(declare-fun res!1072534 () Bool)

(assert (=> b!2545459 (=> (not res!1072534) (not e!1609146))))

(declare-fun call!161473 () Bool)

(assert (=> b!2545459 (= res!1072534 call!161473)))

(declare-fun b!2545460 () Bool)

(declare-fun res!1072536 () Bool)

(assert (=> b!2545460 (=> res!1072536 e!1609140)))

(assert (=> b!2545460 (= res!1072536 (not ((_ is Concat!12281) lt!902495)))))

(declare-fun e!1609142 () Bool)

(assert (=> b!2545460 (= e!1609142 e!1609140)))

(declare-fun b!2545461 () Bool)

(declare-fun e!1609141 () Bool)

(assert (=> b!2545461 (= e!1609141 e!1609142)))

(declare-fun c!407735 () Bool)

(assert (=> b!2545461 (= c!407735 ((_ is Union!7585) lt!902495))))

(declare-fun bm!161466 () Bool)

(declare-fun call!161471 () Bool)

(declare-fun call!161472 () Bool)

(assert (=> bm!161466 (= call!161471 call!161472)))

(declare-fun b!2545462 () Bool)

(declare-fun res!1072532 () Bool)

(declare-fun e!1609145 () Bool)

(assert (=> b!2545462 (=> (not res!1072532) (not e!1609145))))

(assert (=> b!2545462 (= res!1072532 call!161471)))

(assert (=> b!2545462 (= e!1609142 e!1609145)))

(declare-fun bm!161468 () Bool)

(declare-fun c!407734 () Bool)

(assert (=> bm!161468 (= call!161472 (validRegex!3211 (ite c!407734 (reg!7914 lt!902495) (ite c!407735 (regOne!15683 lt!902495) (regTwo!15682 lt!902495)))))))

(declare-fun b!2545463 () Bool)

(assert (=> b!2545463 (= e!1609145 call!161473)))

(declare-fun b!2545464 () Bool)

(declare-fun e!1609143 () Bool)

(assert (=> b!2545464 (= e!1609143 call!161472)))

(declare-fun b!2545465 () Bool)

(assert (=> b!2545465 (= e!1609146 call!161471)))

(declare-fun d!722320 () Bool)

(declare-fun res!1072535 () Bool)

(declare-fun e!1609144 () Bool)

(assert (=> d!722320 (=> res!1072535 e!1609144)))

(assert (=> d!722320 (= res!1072535 ((_ is ElementMatch!7585) lt!902495))))

(assert (=> d!722320 (= (validRegex!3211 lt!902495) e!1609144)))

(declare-fun bm!161467 () Bool)

(assert (=> bm!161467 (= call!161473 (validRegex!3211 (ite c!407735 (regTwo!15683 lt!902495) (regOne!15682 lt!902495))))))

(declare-fun b!2545466 () Bool)

(assert (=> b!2545466 (= e!1609141 e!1609143)))

(declare-fun res!1072533 () Bool)

(assert (=> b!2545466 (= res!1072533 (not (nullable!2502 (reg!7914 lt!902495))))))

(assert (=> b!2545466 (=> (not res!1072533) (not e!1609143))))

(declare-fun b!2545467 () Bool)

(assert (=> b!2545467 (= e!1609144 e!1609141)))

(assert (=> b!2545467 (= c!407734 ((_ is Star!7585) lt!902495))))

(assert (= (and d!722320 (not res!1072535)) b!2545467))

(assert (= (and b!2545467 c!407734) b!2545466))

(assert (= (and b!2545467 (not c!407734)) b!2545461))

(assert (= (and b!2545466 res!1072533) b!2545464))

(assert (= (and b!2545461 c!407735) b!2545462))

(assert (= (and b!2545461 (not c!407735)) b!2545460))

(assert (= (and b!2545462 res!1072532) b!2545463))

(assert (= (and b!2545460 (not res!1072536)) b!2545459))

(assert (= (and b!2545459 res!1072534) b!2545465))

(assert (= (or b!2545462 b!2545465) bm!161466))

(assert (= (or b!2545463 b!2545459) bm!161467))

(assert (= (or b!2545464 bm!161466) bm!161468))

(declare-fun m!2890531 () Bool)

(assert (=> bm!161468 m!2890531))

(declare-fun m!2890533 () Bool)

(assert (=> bm!161467 m!2890533))

(declare-fun m!2890535 () Bool)

(assert (=> b!2545466 m!2890535))

(assert (=> b!2544984 d!722320))

(declare-fun b!2545478 () Bool)

(declare-fun e!1609149 () Bool)

(assert (=> b!2545478 (= e!1609149 tp_is_empty!13025)))

(declare-fun b!2545479 () Bool)

(declare-fun tp!812643 () Bool)

(declare-fun tp!812639 () Bool)

(assert (=> b!2545479 (= e!1609149 (and tp!812643 tp!812639))))

(declare-fun b!2545480 () Bool)

(declare-fun tp!812640 () Bool)

(assert (=> b!2545480 (= e!1609149 tp!812640)))

(declare-fun b!2545481 () Bool)

(declare-fun tp!812641 () Bool)

(declare-fun tp!812642 () Bool)

(assert (=> b!2545481 (= e!1609149 (and tp!812641 tp!812642))))

(assert (=> b!2544983 (= tp!812588 e!1609149)))

(assert (= (and b!2544983 ((_ is ElementMatch!7585) (regOne!15683 r!27340))) b!2545478))

(assert (= (and b!2544983 ((_ is Concat!12281) (regOne!15683 r!27340))) b!2545479))

(assert (= (and b!2544983 ((_ is Star!7585) (regOne!15683 r!27340))) b!2545480))

(assert (= (and b!2544983 ((_ is Union!7585) (regOne!15683 r!27340))) b!2545481))

(declare-fun b!2545482 () Bool)

(declare-fun e!1609150 () Bool)

(assert (=> b!2545482 (= e!1609150 tp_is_empty!13025)))

(declare-fun b!2545483 () Bool)

(declare-fun tp!812648 () Bool)

(declare-fun tp!812644 () Bool)

(assert (=> b!2545483 (= e!1609150 (and tp!812648 tp!812644))))

(declare-fun b!2545484 () Bool)

(declare-fun tp!812645 () Bool)

(assert (=> b!2545484 (= e!1609150 tp!812645)))

(declare-fun b!2545485 () Bool)

(declare-fun tp!812646 () Bool)

(declare-fun tp!812647 () Bool)

(assert (=> b!2545485 (= e!1609150 (and tp!812646 tp!812647))))

(assert (=> b!2544983 (= tp!812585 e!1609150)))

(assert (= (and b!2544983 ((_ is ElementMatch!7585) (regTwo!15683 r!27340))) b!2545482))

(assert (= (and b!2544983 ((_ is Concat!12281) (regTwo!15683 r!27340))) b!2545483))

(assert (= (and b!2544983 ((_ is Star!7585) (regTwo!15683 r!27340))) b!2545484))

(assert (= (and b!2544983 ((_ is Union!7585) (regTwo!15683 r!27340))) b!2545485))

(declare-fun b!2545490 () Bool)

(declare-fun e!1609153 () Bool)

(declare-fun tp!812651 () Bool)

(assert (=> b!2545490 (= e!1609153 (and tp_is_empty!13025 tp!812651))))

(assert (=> b!2544977 (= tp!812589 e!1609153)))

(assert (= (and b!2544977 ((_ is Cons!29550) (t!211349 tl!4068))) b!2545490))

(declare-fun b!2545491 () Bool)

(declare-fun e!1609154 () Bool)

(assert (=> b!2545491 (= e!1609154 tp_is_empty!13025)))

(declare-fun b!2545492 () Bool)

(declare-fun tp!812656 () Bool)

(declare-fun tp!812652 () Bool)

(assert (=> b!2545492 (= e!1609154 (and tp!812656 tp!812652))))

(declare-fun b!2545493 () Bool)

(declare-fun tp!812653 () Bool)

(assert (=> b!2545493 (= e!1609154 tp!812653)))

(declare-fun b!2545494 () Bool)

(declare-fun tp!812654 () Bool)

(declare-fun tp!812655 () Bool)

(assert (=> b!2545494 (= e!1609154 (and tp!812654 tp!812655))))

(assert (=> b!2544976 (= tp!812586 e!1609154)))

(assert (= (and b!2544976 ((_ is ElementMatch!7585) (reg!7914 r!27340))) b!2545491))

(assert (= (and b!2544976 ((_ is Concat!12281) (reg!7914 r!27340))) b!2545492))

(assert (= (and b!2544976 ((_ is Star!7585) (reg!7914 r!27340))) b!2545493))

(assert (= (and b!2544976 ((_ is Union!7585) (reg!7914 r!27340))) b!2545494))

(declare-fun b!2545495 () Bool)

(declare-fun e!1609155 () Bool)

(assert (=> b!2545495 (= e!1609155 tp_is_empty!13025)))

(declare-fun b!2545496 () Bool)

(declare-fun tp!812661 () Bool)

(declare-fun tp!812657 () Bool)

(assert (=> b!2545496 (= e!1609155 (and tp!812661 tp!812657))))

(declare-fun b!2545497 () Bool)

(declare-fun tp!812658 () Bool)

(assert (=> b!2545497 (= e!1609155 tp!812658)))

(declare-fun b!2545498 () Bool)

(declare-fun tp!812659 () Bool)

(declare-fun tp!812660 () Bool)

(assert (=> b!2545498 (= e!1609155 (and tp!812659 tp!812660))))

(assert (=> b!2544979 (= tp!812587 e!1609155)))

(assert (= (and b!2544979 ((_ is ElementMatch!7585) (regOne!15682 r!27340))) b!2545495))

(assert (= (and b!2544979 ((_ is Concat!12281) (regOne!15682 r!27340))) b!2545496))

(assert (= (and b!2544979 ((_ is Star!7585) (regOne!15682 r!27340))) b!2545497))

(assert (= (and b!2544979 ((_ is Union!7585) (regOne!15682 r!27340))) b!2545498))

(declare-fun b!2545499 () Bool)

(declare-fun e!1609156 () Bool)

(assert (=> b!2545499 (= e!1609156 tp_is_empty!13025)))

(declare-fun b!2545500 () Bool)

(declare-fun tp!812666 () Bool)

(declare-fun tp!812662 () Bool)

(assert (=> b!2545500 (= e!1609156 (and tp!812666 tp!812662))))

(declare-fun b!2545501 () Bool)

(declare-fun tp!812663 () Bool)

(assert (=> b!2545501 (= e!1609156 tp!812663)))

(declare-fun b!2545502 () Bool)

(declare-fun tp!812664 () Bool)

(declare-fun tp!812665 () Bool)

(assert (=> b!2545502 (= e!1609156 (and tp!812664 tp!812665))))

(assert (=> b!2544979 (= tp!812590 e!1609156)))

(assert (= (and b!2544979 ((_ is ElementMatch!7585) (regTwo!15682 r!27340))) b!2545499))

(assert (= (and b!2544979 ((_ is Concat!12281) (regTwo!15682 r!27340))) b!2545500))

(assert (= (and b!2544979 ((_ is Star!7585) (regTwo!15682 r!27340))) b!2545501))

(assert (= (and b!2544979 ((_ is Union!7585) (regTwo!15682 r!27340))) b!2545502))

(check-sat (not bm!161459) (not b!2545118) (not b!2545457) (not b!2545351) (not b!2545484) (not b!2545438) (not b!2545228) (not d!722272) (not bm!161426) (not b!2545392) (not d!722316) (not b!2545073) (not d!722246) (not b!2545497) (not d!722252) (not b!2545500) (not bm!161423) (not b!2545443) (not d!722310) (not d!722292) (not b!2545346) (not b!2545267) (not b!2545232) (not d!722286) (not b!2545498) (not b!2545071) (not d!722268) (not b!2545233) (not b!2545348) (not bm!161462) (not b!2545479) (not b!2545238) (not b!2545353) (not b!2545264) (not b!2545389) (not d!722274) (not d!722266) (not b!2545490) (not b!2545436) (not b!2545115) (not b!2545235) (not d!722276) (not b!2545501) (not b!2545493) (not b!2545078) (not b!2545077) (not b!2545433) (not b!2545483) (not b!2545356) (not bm!161468) (not b!2545466) (not b!2545258) (not d!722312) (not bm!161465) (not bm!161460) (not b!2545492) (not b!2545502) (not b!2545170) (not bm!161451) (not d!722294) (not b!2545485) (not b!2545386) (not b!2545260) (not b!2545481) (not b!2545382) (not b!2545384) (not bm!161467) (not d!722318) (not b!2545116) (not bm!161450) (not b!2545441) (not b!2545387) (not b!2545230) (not b!2545265) (not b!2544995) (not b!2545270) (not b!2545496) (not b!2545480) tp_is_empty!13025 (not b!2545446) (not bm!161430) (not b!2545072) (not b!2545494) (not bm!161429) (not b!2545075) (not b!2545350) (not d!722248) (not d!722258) (not bm!161461) (not b!2545440))
(check-sat)
