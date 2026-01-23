; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750480 () Bool)

(assert start!750480)

(declare-fun b!7953041 () Bool)

(declare-datatypes ((Unit!169890 0))(
  ( (Unit!169891) )
))
(declare-fun e!4691251 () Unit!169890)

(declare-fun Unit!169892 () Unit!169890)

(assert (=> b!7953041 (= e!4691251 Unit!169892)))

(declare-fun res!3153488 () Bool)

(declare-fun e!4691247 () Bool)

(assert (=> start!750480 (=> (not res!3153488) (not e!4691247))))

(declare-datatypes ((C!43292 0))(
  ( (C!43293 (val!32194 Int)) )
))
(declare-datatypes ((Regex!21477 0))(
  ( (ElementMatch!21477 (c!1460740 C!43292)) (Concat!30476 (regOne!43466 Regex!21477) (regTwo!43466 Regex!21477)) (EmptyExpr!21477) (Star!21477 (reg!21806 Regex!21477)) (EmptyLang!21477) (Union!21477 (regOne!43467 Regex!21477) (regTwo!43467 Regex!21477)) )
))
(declare-fun baseR!116 () Regex!21477)

(declare-fun validRegex!11781 (Regex!21477) Bool)

(assert (=> start!750480 (= res!3153488 (validRegex!11781 baseR!116))))

(assert (=> start!750480 e!4691247))

(declare-fun e!4691253 () Bool)

(assert (=> start!750480 e!4691253))

(declare-fun e!4691248 () Bool)

(assert (=> start!750480 e!4691248))

(declare-fun e!4691255 () Bool)

(assert (=> start!750480 e!4691255))

(declare-fun e!4691250 () Bool)

(assert (=> start!750480 e!4691250))

(declare-datatypes ((List!74706 0))(
  ( (Nil!74582) (Cons!74582 (h!81030 C!43292) (t!390449 List!74706)) )
))
(declare-fun lt!2700956 () List!74706)

(declare-fun input!7927 () List!74706)

(declare-fun b!7953042 () Bool)

(declare-fun e!4691252 () Bool)

(declare-fun lt!2700961 () List!74706)

(declare-fun ++!18347 (List!74706 List!74706) List!74706)

(declare-fun tail!15766 (List!74706) List!74706)

(assert (=> b!7953042 (= e!4691252 (= (++!18347 lt!2700956 (tail!15766 lt!2700961)) input!7927))))

(declare-fun b!7953043 () Bool)

(declare-fun res!3153486 () Bool)

(declare-fun e!4691254 () Bool)

(assert (=> b!7953043 (=> (not res!3153486) (not e!4691254))))

(declare-fun testedP!447 () List!74706)

(assert (=> b!7953043 (= res!3153486 (not (= testedP!447 input!7927)))))

(declare-fun b!7953044 () Bool)

(declare-fun tp!2367400 () Bool)

(declare-fun tp!2367406 () Bool)

(assert (=> b!7953044 (= e!4691250 (and tp!2367400 tp!2367406))))

(declare-fun b!7953045 () Bool)

(declare-fun res!3153485 () Bool)

(assert (=> b!7953045 (=> (not res!3153485) (not e!4691247))))

(declare-fun r!24602 () Regex!21477)

(declare-fun derivative!663 (Regex!21477 List!74706) Regex!21477)

(assert (=> b!7953045 (= res!3153485 (= (derivative!663 baseR!116 testedP!447) r!24602))))

(declare-fun b!7953046 () Bool)

(declare-fun tp!2367399 () Bool)

(assert (=> b!7953046 (= e!4691250 tp!2367399)))

(declare-fun b!7953047 () Bool)

(assert (=> b!7953047 (= e!4691247 e!4691254)))

(declare-fun res!3153492 () Bool)

(assert (=> b!7953047 (=> (not res!3153492) (not e!4691254))))

(declare-fun lt!2700952 () Int)

(declare-fun lt!2700957 () Int)

(declare-fun isEmpty!42881 (List!74706) Bool)

(declare-datatypes ((tuple2!70616 0))(
  ( (tuple2!70617 (_1!38611 List!74706) (_2!38611 List!74706)) )
))
(declare-fun findLongestMatchInner!2258 (Regex!21477 List!74706 Int List!74706 List!74706 Int) tuple2!70616)

(assert (=> b!7953047 (= res!3153492 (not (isEmpty!42881 (_1!38611 (findLongestMatchInner!2258 r!24602 testedP!447 lt!2700952 lt!2700961 input!7927 lt!2700957)))))))

(declare-fun size!43413 (List!74706) Int)

(assert (=> b!7953047 (= lt!2700957 (size!43413 input!7927))))

(declare-fun getSuffix!3780 (List!74706 List!74706) List!74706)

(assert (=> b!7953047 (= lt!2700961 (getSuffix!3780 input!7927 testedP!447))))

(assert (=> b!7953047 (= lt!2700952 (size!43413 testedP!447))))

(declare-fun b!7953048 () Bool)

(declare-fun tp_is_empty!53497 () Bool)

(declare-fun tp!2367404 () Bool)

(assert (=> b!7953048 (= e!4691255 (and tp_is_empty!53497 tp!2367404))))

(declare-fun b!7953049 () Bool)

(declare-fun tp!2367396 () Bool)

(assert (=> b!7953049 (= e!4691248 (and tp_is_empty!53497 tp!2367396))))

(declare-fun b!7953050 () Bool)

(declare-fun tp!2367403 () Bool)

(declare-fun tp!2367397 () Bool)

(assert (=> b!7953050 (= e!4691250 (and tp!2367403 tp!2367397))))

(declare-fun b!7953051 () Bool)

(declare-fun res!3153491 () Bool)

(assert (=> b!7953051 (=> (not res!3153491) (not e!4691247))))

(declare-fun isPrefix!6577 (List!74706 List!74706) Bool)

(assert (=> b!7953051 (= res!3153491 (isPrefix!6577 testedP!447 input!7927))))

(declare-fun b!7953052 () Bool)

(declare-fun Unit!169893 () Unit!169890)

(assert (=> b!7953052 (= e!4691251 Unit!169893)))

(declare-fun lt!2700959 () Unit!169890)

(declare-fun lemmaIsPrefixRefl!4045 (List!74706 List!74706) Unit!169890)

(assert (=> b!7953052 (= lt!2700959 (lemmaIsPrefixRefl!4045 input!7927 input!7927))))

(assert (=> b!7953052 (isPrefix!6577 input!7927 input!7927)))

(declare-fun lt!2700953 () Unit!169890)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1625 (List!74706 List!74706 List!74706) Unit!169890)

(assert (=> b!7953052 (= lt!2700953 (lemmaIsPrefixSameLengthThenSameList!1625 input!7927 testedP!447 input!7927))))

(assert (=> b!7953052 false))

(declare-fun b!7953053 () Bool)

(declare-fun tp!2367395 () Bool)

(declare-fun tp!2367402 () Bool)

(assert (=> b!7953053 (= e!4691253 (and tp!2367395 tp!2367402))))

(declare-fun b!7953054 () Bool)

(declare-fun res!3153490 () Bool)

(assert (=> b!7953054 (=> res!3153490 e!4691252)))

(declare-fun lt!2700960 () C!43292)

(declare-fun derivativeStep!6505 (Regex!21477 C!43292) Regex!21477)

(assert (=> b!7953054 (= res!3153490 (not (validRegex!11781 (derivativeStep!6505 r!24602 lt!2700960))))))

(declare-fun b!7953055 () Bool)

(declare-fun tp!2367401 () Bool)

(declare-fun tp!2367405 () Bool)

(assert (=> b!7953055 (= e!4691253 (and tp!2367401 tp!2367405))))

(declare-fun b!7953056 () Bool)

(declare-fun e!4691249 () Bool)

(assert (=> b!7953056 (= e!4691249 e!4691252)))

(declare-fun res!3153489 () Bool)

(assert (=> b!7953056 (=> res!3153489 e!4691252)))

(declare-fun nullable!9578 (Regex!21477) Bool)

(assert (=> b!7953056 (= res!3153489 (not (nullable!9578 r!24602)))))

(assert (=> b!7953056 (isPrefix!6577 lt!2700956 input!7927)))

(declare-fun lt!2700954 () Unit!169890)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1304 (List!74706 List!74706) Unit!169890)

(assert (=> b!7953056 (= lt!2700954 (lemmaAddHeadSuffixToPrefixStillPrefix!1304 testedP!447 input!7927))))

(assert (=> b!7953056 (= lt!2700956 (++!18347 testedP!447 (Cons!74582 lt!2700960 Nil!74582)))))

(declare-fun head!16229 (List!74706) C!43292)

(assert (=> b!7953056 (= lt!2700960 (head!16229 lt!2700961))))

(declare-fun b!7953057 () Bool)

(assert (=> b!7953057 (= e!4691250 tp_is_empty!53497)))

(declare-fun b!7953058 () Bool)

(declare-fun tp!2367398 () Bool)

(assert (=> b!7953058 (= e!4691253 tp!2367398)))

(declare-fun b!7953059 () Bool)

(assert (=> b!7953059 (= e!4691254 (not e!4691249))))

(declare-fun res!3153487 () Bool)

(assert (=> b!7953059 (=> res!3153487 e!4691249)))

(assert (=> b!7953059 (= res!3153487 (>= lt!2700952 lt!2700957))))

(declare-fun lt!2700958 () Unit!169890)

(assert (=> b!7953059 (= lt!2700958 e!4691251)))

(declare-fun c!1460739 () Bool)

(assert (=> b!7953059 (= c!1460739 (= lt!2700952 lt!2700957))))

(assert (=> b!7953059 (<= lt!2700952 lt!2700957)))

(declare-fun lt!2700955 () Unit!169890)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1094 (List!74706 List!74706) Unit!169890)

(assert (=> b!7953059 (= lt!2700955 (lemmaIsPrefixThenSmallerEqSize!1094 testedP!447 input!7927))))

(declare-fun b!7953060 () Bool)

(assert (=> b!7953060 (= e!4691253 tp_is_empty!53497)))

(assert (= (and start!750480 res!3153488) b!7953051))

(assert (= (and b!7953051 res!3153491) b!7953045))

(assert (= (and b!7953045 res!3153485) b!7953047))

(assert (= (and b!7953047 res!3153492) b!7953043))

(assert (= (and b!7953043 res!3153486) b!7953059))

(assert (= (and b!7953059 c!1460739) b!7953052))

(assert (= (and b!7953059 (not c!1460739)) b!7953041))

(assert (= (and b!7953059 (not res!3153487)) b!7953056))

(assert (= (and b!7953056 (not res!3153489)) b!7953054))

(assert (= (and b!7953054 (not res!3153490)) b!7953042))

(get-info :version)

(assert (= (and start!750480 ((_ is ElementMatch!21477) baseR!116)) b!7953060))

(assert (= (and start!750480 ((_ is Concat!30476) baseR!116)) b!7953053))

(assert (= (and start!750480 ((_ is Star!21477) baseR!116)) b!7953058))

(assert (= (and start!750480 ((_ is Union!21477) baseR!116)) b!7953055))

(assert (= (and start!750480 ((_ is Cons!74582) testedP!447)) b!7953049))

(assert (= (and start!750480 ((_ is Cons!74582) input!7927)) b!7953048))

(assert (= (and start!750480 ((_ is ElementMatch!21477) r!24602)) b!7953057))

(assert (= (and start!750480 ((_ is Concat!30476) r!24602)) b!7953050))

(assert (= (and start!750480 ((_ is Star!21477) r!24602)) b!7953046))

(assert (= (and start!750480 ((_ is Union!21477) r!24602)) b!7953044))

(declare-fun m!8336488 () Bool)

(assert (=> start!750480 m!8336488))

(declare-fun m!8336490 () Bool)

(assert (=> b!7953045 m!8336490))

(declare-fun m!8336492 () Bool)

(assert (=> b!7953047 m!8336492))

(declare-fun m!8336494 () Bool)

(assert (=> b!7953047 m!8336494))

(declare-fun m!8336496 () Bool)

(assert (=> b!7953047 m!8336496))

(declare-fun m!8336498 () Bool)

(assert (=> b!7953047 m!8336498))

(declare-fun m!8336500 () Bool)

(assert (=> b!7953047 m!8336500))

(declare-fun m!8336502 () Bool)

(assert (=> b!7953042 m!8336502))

(assert (=> b!7953042 m!8336502))

(declare-fun m!8336504 () Bool)

(assert (=> b!7953042 m!8336504))

(declare-fun m!8336506 () Bool)

(assert (=> b!7953054 m!8336506))

(assert (=> b!7953054 m!8336506))

(declare-fun m!8336508 () Bool)

(assert (=> b!7953054 m!8336508))

(declare-fun m!8336510 () Bool)

(assert (=> b!7953056 m!8336510))

(declare-fun m!8336512 () Bool)

(assert (=> b!7953056 m!8336512))

(declare-fun m!8336514 () Bool)

(assert (=> b!7953056 m!8336514))

(declare-fun m!8336516 () Bool)

(assert (=> b!7953056 m!8336516))

(declare-fun m!8336518 () Bool)

(assert (=> b!7953056 m!8336518))

(declare-fun m!8336520 () Bool)

(assert (=> b!7953052 m!8336520))

(declare-fun m!8336522 () Bool)

(assert (=> b!7953052 m!8336522))

(declare-fun m!8336524 () Bool)

(assert (=> b!7953052 m!8336524))

(declare-fun m!8336526 () Bool)

(assert (=> b!7953059 m!8336526))

(declare-fun m!8336528 () Bool)

(assert (=> b!7953051 m!8336528))

(check-sat (not b!7953046) (not b!7953053) (not b!7953056) (not b!7953051) (not b!7953054) (not b!7953058) (not b!7953055) (not b!7953048) (not b!7953045) tp_is_empty!53497 (not b!7953047) (not b!7953052) (not b!7953044) (not b!7953050) (not b!7953059) (not b!7953049) (not b!7953042) (not start!750480))
(check-sat)
(get-model)

(declare-fun d!2376519 () Bool)

(declare-fun res!3153506 () Bool)

(declare-fun e!4691271 () Bool)

(assert (=> d!2376519 (=> res!3153506 e!4691271)))

(assert (=> d!2376519 (= res!3153506 ((_ is ElementMatch!21477) baseR!116))))

(assert (=> d!2376519 (= (validRegex!11781 baseR!116) e!4691271)))

(declare-fun bm!737294 () Bool)

(declare-fun call!737300 () Bool)

(declare-fun c!1460746 () Bool)

(assert (=> bm!737294 (= call!737300 (validRegex!11781 (ite c!1460746 (regOne!43467 baseR!116) (regOne!43466 baseR!116))))))

(declare-fun b!7953079 () Bool)

(declare-fun e!4691275 () Bool)

(declare-fun call!737301 () Bool)

(assert (=> b!7953079 (= e!4691275 call!737301)))

(declare-fun b!7953080 () Bool)

(declare-fun e!4691272 () Bool)

(assert (=> b!7953080 (= e!4691271 e!4691272)))

(declare-fun c!1460745 () Bool)

(assert (=> b!7953080 (= c!1460745 ((_ is Star!21477) baseR!116))))

(declare-fun b!7953081 () Bool)

(declare-fun res!3153504 () Bool)

(declare-fun e!4691274 () Bool)

(assert (=> b!7953081 (=> res!3153504 e!4691274)))

(assert (=> b!7953081 (= res!3153504 (not ((_ is Concat!30476) baseR!116)))))

(declare-fun e!4691273 () Bool)

(assert (=> b!7953081 (= e!4691273 e!4691274)))

(declare-fun b!7953082 () Bool)

(declare-fun e!4691270 () Bool)

(assert (=> b!7953082 (= e!4691270 call!737301)))

(declare-fun b!7953083 () Bool)

(assert (=> b!7953083 (= e!4691274 e!4691275)))

(declare-fun res!3153503 () Bool)

(assert (=> b!7953083 (=> (not res!3153503) (not e!4691275))))

(assert (=> b!7953083 (= res!3153503 call!737300)))

(declare-fun call!737299 () Bool)

(declare-fun bm!737295 () Bool)

(assert (=> bm!737295 (= call!737299 (validRegex!11781 (ite c!1460745 (reg!21806 baseR!116) (ite c!1460746 (regTwo!43467 baseR!116) (regTwo!43466 baseR!116)))))))

(declare-fun bm!737296 () Bool)

(assert (=> bm!737296 (= call!737301 call!737299)))

(declare-fun b!7953084 () Bool)

(assert (=> b!7953084 (= e!4691272 e!4691273)))

(assert (=> b!7953084 (= c!1460746 ((_ is Union!21477) baseR!116))))

(declare-fun b!7953085 () Bool)

(declare-fun e!4691276 () Bool)

(assert (=> b!7953085 (= e!4691276 call!737299)))

(declare-fun b!7953086 () Bool)

(assert (=> b!7953086 (= e!4691272 e!4691276)))

(declare-fun res!3153505 () Bool)

(assert (=> b!7953086 (= res!3153505 (not (nullable!9578 (reg!21806 baseR!116))))))

(assert (=> b!7953086 (=> (not res!3153505) (not e!4691276))))

(declare-fun b!7953087 () Bool)

(declare-fun res!3153507 () Bool)

(assert (=> b!7953087 (=> (not res!3153507) (not e!4691270))))

(assert (=> b!7953087 (= res!3153507 call!737300)))

(assert (=> b!7953087 (= e!4691273 e!4691270)))

(assert (= (and d!2376519 (not res!3153506)) b!7953080))

(assert (= (and b!7953080 c!1460745) b!7953086))

(assert (= (and b!7953080 (not c!1460745)) b!7953084))

(assert (= (and b!7953086 res!3153505) b!7953085))

(assert (= (and b!7953084 c!1460746) b!7953087))

(assert (= (and b!7953084 (not c!1460746)) b!7953081))

(assert (= (and b!7953087 res!3153507) b!7953082))

(assert (= (and b!7953081 (not res!3153504)) b!7953083))

(assert (= (and b!7953083 res!3153503) b!7953079))

(assert (= (or b!7953082 b!7953079) bm!737296))

(assert (= (or b!7953087 b!7953083) bm!737294))

(assert (= (or b!7953085 bm!737296) bm!737295))

(declare-fun m!8336530 () Bool)

(assert (=> bm!737294 m!8336530))

(declare-fun m!8336532 () Bool)

(assert (=> bm!737295 m!8336532))

(declare-fun m!8336534 () Bool)

(assert (=> b!7953086 m!8336534))

(assert (=> start!750480 d!2376519))

(declare-fun d!2376523 () Bool)

(declare-fun res!3153511 () Bool)

(declare-fun e!4691278 () Bool)

(assert (=> d!2376523 (=> res!3153511 e!4691278)))

(assert (=> d!2376523 (= res!3153511 ((_ is ElementMatch!21477) (derivativeStep!6505 r!24602 lt!2700960)))))

(assert (=> d!2376523 (= (validRegex!11781 (derivativeStep!6505 r!24602 lt!2700960)) e!4691278)))

(declare-fun call!737303 () Bool)

(declare-fun bm!737297 () Bool)

(declare-fun c!1460748 () Bool)

(assert (=> bm!737297 (= call!737303 (validRegex!11781 (ite c!1460748 (regOne!43467 (derivativeStep!6505 r!24602 lt!2700960)) (regOne!43466 (derivativeStep!6505 r!24602 lt!2700960)))))))

(declare-fun b!7953088 () Bool)

(declare-fun e!4691282 () Bool)

(declare-fun call!737304 () Bool)

(assert (=> b!7953088 (= e!4691282 call!737304)))

(declare-fun b!7953089 () Bool)

(declare-fun e!4691279 () Bool)

(assert (=> b!7953089 (= e!4691278 e!4691279)))

(declare-fun c!1460747 () Bool)

(assert (=> b!7953089 (= c!1460747 ((_ is Star!21477) (derivativeStep!6505 r!24602 lt!2700960)))))

(declare-fun b!7953090 () Bool)

(declare-fun res!3153509 () Bool)

(declare-fun e!4691281 () Bool)

(assert (=> b!7953090 (=> res!3153509 e!4691281)))

(assert (=> b!7953090 (= res!3153509 (not ((_ is Concat!30476) (derivativeStep!6505 r!24602 lt!2700960))))))

(declare-fun e!4691280 () Bool)

(assert (=> b!7953090 (= e!4691280 e!4691281)))

(declare-fun b!7953091 () Bool)

(declare-fun e!4691277 () Bool)

(assert (=> b!7953091 (= e!4691277 call!737304)))

(declare-fun b!7953092 () Bool)

(assert (=> b!7953092 (= e!4691281 e!4691282)))

(declare-fun res!3153508 () Bool)

(assert (=> b!7953092 (=> (not res!3153508) (not e!4691282))))

(assert (=> b!7953092 (= res!3153508 call!737303)))

(declare-fun bm!737298 () Bool)

(declare-fun call!737302 () Bool)

(assert (=> bm!737298 (= call!737302 (validRegex!11781 (ite c!1460747 (reg!21806 (derivativeStep!6505 r!24602 lt!2700960)) (ite c!1460748 (regTwo!43467 (derivativeStep!6505 r!24602 lt!2700960)) (regTwo!43466 (derivativeStep!6505 r!24602 lt!2700960))))))))

(declare-fun bm!737299 () Bool)

(assert (=> bm!737299 (= call!737304 call!737302)))

(declare-fun b!7953093 () Bool)

(assert (=> b!7953093 (= e!4691279 e!4691280)))

(assert (=> b!7953093 (= c!1460748 ((_ is Union!21477) (derivativeStep!6505 r!24602 lt!2700960)))))

(declare-fun b!7953094 () Bool)

(declare-fun e!4691283 () Bool)

(assert (=> b!7953094 (= e!4691283 call!737302)))

(declare-fun b!7953095 () Bool)

(assert (=> b!7953095 (= e!4691279 e!4691283)))

(declare-fun res!3153510 () Bool)

(assert (=> b!7953095 (= res!3153510 (not (nullable!9578 (reg!21806 (derivativeStep!6505 r!24602 lt!2700960)))))))

(assert (=> b!7953095 (=> (not res!3153510) (not e!4691283))))

(declare-fun b!7953096 () Bool)

(declare-fun res!3153512 () Bool)

(assert (=> b!7953096 (=> (not res!3153512) (not e!4691277))))

(assert (=> b!7953096 (= res!3153512 call!737303)))

(assert (=> b!7953096 (= e!4691280 e!4691277)))

(assert (= (and d!2376523 (not res!3153511)) b!7953089))

(assert (= (and b!7953089 c!1460747) b!7953095))

(assert (= (and b!7953089 (not c!1460747)) b!7953093))

(assert (= (and b!7953095 res!3153510) b!7953094))

(assert (= (and b!7953093 c!1460748) b!7953096))

(assert (= (and b!7953093 (not c!1460748)) b!7953090))

(assert (= (and b!7953096 res!3153512) b!7953091))

(assert (= (and b!7953090 (not res!3153509)) b!7953092))

(assert (= (and b!7953092 res!3153508) b!7953088))

(assert (= (or b!7953091 b!7953088) bm!737299))

(assert (= (or b!7953096 b!7953092) bm!737297))

(assert (= (or b!7953094 bm!737299) bm!737298))

(declare-fun m!8336544 () Bool)

(assert (=> bm!737297 m!8336544))

(declare-fun m!8336546 () Bool)

(assert (=> bm!737298 m!8336546))

(declare-fun m!8336548 () Bool)

(assert (=> b!7953095 m!8336548))

(assert (=> b!7953054 d!2376523))

(declare-fun b!7953172 () Bool)

(declare-fun e!4691333 () Regex!21477)

(declare-fun call!737324 () Regex!21477)

(assert (=> b!7953172 (= e!4691333 (Concat!30476 call!737324 r!24602))))

(declare-fun b!7953173 () Bool)

(declare-fun e!4691337 () Regex!21477)

(declare-fun e!4691336 () Regex!21477)

(assert (=> b!7953173 (= e!4691337 e!4691336)))

(declare-fun c!1460768 () Bool)

(assert (=> b!7953173 (= c!1460768 ((_ is ElementMatch!21477) r!24602))))

(declare-fun bm!737317 () Bool)

(declare-fun call!737322 () Regex!21477)

(assert (=> bm!737317 (= call!737324 call!737322)))

(declare-fun b!7953175 () Bool)

(declare-fun c!1460771 () Bool)

(assert (=> b!7953175 (= c!1460771 (nullable!9578 (regOne!43466 r!24602)))))

(declare-fun e!4691334 () Regex!21477)

(assert (=> b!7953175 (= e!4691333 e!4691334)))

(declare-fun bm!737318 () Bool)

(declare-fun call!737323 () Regex!21477)

(assert (=> bm!737318 (= call!737323 call!737324)))

(declare-fun b!7953176 () Bool)

(declare-fun e!4691335 () Regex!21477)

(assert (=> b!7953176 (= e!4691335 e!4691333)))

(declare-fun c!1460770 () Bool)

(assert (=> b!7953176 (= c!1460770 ((_ is Star!21477) r!24602))))

(declare-fun bm!737319 () Bool)

(declare-fun c!1460769 () Bool)

(declare-fun call!737325 () Regex!21477)

(assert (=> bm!737319 (= call!737325 (derivativeStep!6505 (ite c!1460769 (regOne!43467 r!24602) (regOne!43466 r!24602)) lt!2700960))))

(declare-fun b!7953177 () Bool)

(assert (=> b!7953177 (= e!4691334 (Union!21477 (Concat!30476 call!737325 (regTwo!43466 r!24602)) call!737323))))

(declare-fun b!7953178 () Bool)

(assert (=> b!7953178 (= e!4691335 (Union!21477 call!737325 call!737322))))

(declare-fun bm!737320 () Bool)

(assert (=> bm!737320 (= call!737322 (derivativeStep!6505 (ite c!1460769 (regTwo!43467 r!24602) (ite c!1460770 (reg!21806 r!24602) (ite c!1460771 (regTwo!43466 r!24602) (regOne!43466 r!24602)))) lt!2700960))))

(declare-fun b!7953179 () Bool)

(assert (=> b!7953179 (= e!4691336 (ite (= lt!2700960 (c!1460740 r!24602)) EmptyExpr!21477 EmptyLang!21477))))

(declare-fun d!2376527 () Bool)

(declare-fun lt!2700977 () Regex!21477)

(assert (=> d!2376527 (validRegex!11781 lt!2700977)))

(assert (=> d!2376527 (= lt!2700977 e!4691337)))

(declare-fun c!1460772 () Bool)

(assert (=> d!2376527 (= c!1460772 (or ((_ is EmptyExpr!21477) r!24602) ((_ is EmptyLang!21477) r!24602)))))

(assert (=> d!2376527 (validRegex!11781 r!24602)))

(assert (=> d!2376527 (= (derivativeStep!6505 r!24602 lt!2700960) lt!2700977)))

(declare-fun b!7953174 () Bool)

(assert (=> b!7953174 (= e!4691334 (Union!21477 (Concat!30476 call!737323 (regTwo!43466 r!24602)) EmptyLang!21477))))

(declare-fun b!7953180 () Bool)

(assert (=> b!7953180 (= c!1460769 ((_ is Union!21477) r!24602))))

(assert (=> b!7953180 (= e!4691336 e!4691335)))

(declare-fun b!7953181 () Bool)

(assert (=> b!7953181 (= e!4691337 EmptyLang!21477)))

(assert (= (and d!2376527 c!1460772) b!7953181))

(assert (= (and d!2376527 (not c!1460772)) b!7953173))

(assert (= (and b!7953173 c!1460768) b!7953179))

(assert (= (and b!7953173 (not c!1460768)) b!7953180))

(assert (= (and b!7953180 c!1460769) b!7953178))

(assert (= (and b!7953180 (not c!1460769)) b!7953176))

(assert (= (and b!7953176 c!1460770) b!7953172))

(assert (= (and b!7953176 (not c!1460770)) b!7953175))

(assert (= (and b!7953175 c!1460771) b!7953177))

(assert (= (and b!7953175 (not c!1460771)) b!7953174))

(assert (= (or b!7953177 b!7953174) bm!737318))

(assert (= (or b!7953172 bm!737318) bm!737317))

(assert (= (or b!7953178 bm!737317) bm!737320))

(assert (= (or b!7953178 b!7953177) bm!737319))

(declare-fun m!8336600 () Bool)

(assert (=> b!7953175 m!8336600))

(declare-fun m!8336602 () Bool)

(assert (=> bm!737319 m!8336602))

(declare-fun m!8336604 () Bool)

(assert (=> bm!737320 m!8336604))

(declare-fun m!8336606 () Bool)

(assert (=> d!2376527 m!8336606))

(declare-fun m!8336608 () Bool)

(assert (=> d!2376527 m!8336608))

(assert (=> b!7953054 d!2376527))

(declare-fun d!2376547 () Bool)

(declare-fun lt!2700990 () Regex!21477)

(assert (=> d!2376547 (validRegex!11781 lt!2700990)))

(declare-fun e!4691345 () Regex!21477)

(assert (=> d!2376547 (= lt!2700990 e!4691345)))

(declare-fun c!1460779 () Bool)

(assert (=> d!2376547 (= c!1460779 ((_ is Cons!74582) testedP!447))))

(assert (=> d!2376547 (validRegex!11781 baseR!116)))

(assert (=> d!2376547 (= (derivative!663 baseR!116 testedP!447) lt!2700990)))

(declare-fun b!7953196 () Bool)

(assert (=> b!7953196 (= e!4691345 (derivative!663 (derivativeStep!6505 baseR!116 (h!81030 testedP!447)) (t!390449 testedP!447)))))

(declare-fun b!7953197 () Bool)

(assert (=> b!7953197 (= e!4691345 baseR!116)))

(assert (= (and d!2376547 c!1460779) b!7953196))

(assert (= (and d!2376547 (not c!1460779)) b!7953197))

(declare-fun m!8336614 () Bool)

(assert (=> d!2376547 m!8336614))

(assert (=> d!2376547 m!8336488))

(declare-fun m!8336616 () Bool)

(assert (=> b!7953196 m!8336616))

(assert (=> b!7953196 m!8336616))

(declare-fun m!8336618 () Bool)

(assert (=> b!7953196 m!8336618))

(assert (=> b!7953045 d!2376547))

(declare-fun b!7953216 () Bool)

(declare-fun e!4691356 () Bool)

(assert (=> b!7953216 (= e!4691356 (isPrefix!6577 (tail!15766 testedP!447) (tail!15766 input!7927)))))

(declare-fun b!7953217 () Bool)

(declare-fun e!4691357 () Bool)

(assert (=> b!7953217 (= e!4691357 (>= (size!43413 input!7927) (size!43413 testedP!447)))))

(declare-fun b!7953214 () Bool)

(declare-fun e!4691358 () Bool)

(assert (=> b!7953214 (= e!4691358 e!4691356)))

(declare-fun res!3153562 () Bool)

(assert (=> b!7953214 (=> (not res!3153562) (not e!4691356))))

(assert (=> b!7953214 (= res!3153562 (not ((_ is Nil!74582) input!7927)))))

(declare-fun b!7953215 () Bool)

(declare-fun res!3153561 () Bool)

(assert (=> b!7953215 (=> (not res!3153561) (not e!4691356))))

(assert (=> b!7953215 (= res!3153561 (= (head!16229 testedP!447) (head!16229 input!7927)))))

(declare-fun d!2376557 () Bool)

(assert (=> d!2376557 e!4691357))

(declare-fun res!3153560 () Bool)

(assert (=> d!2376557 (=> res!3153560 e!4691357)))

(declare-fun lt!2700997 () Bool)

(assert (=> d!2376557 (= res!3153560 (not lt!2700997))))

(assert (=> d!2376557 (= lt!2700997 e!4691358)))

(declare-fun res!3153563 () Bool)

(assert (=> d!2376557 (=> res!3153563 e!4691358)))

(assert (=> d!2376557 (= res!3153563 ((_ is Nil!74582) testedP!447))))

(assert (=> d!2376557 (= (isPrefix!6577 testedP!447 input!7927) lt!2700997)))

(assert (= (and d!2376557 (not res!3153563)) b!7953214))

(assert (= (and b!7953214 res!3153562) b!7953215))

(assert (= (and b!7953215 res!3153561) b!7953216))

(assert (= (and d!2376557 (not res!3153560)) b!7953217))

(declare-fun m!8336626 () Bool)

(assert (=> b!7953216 m!8336626))

(declare-fun m!8336628 () Bool)

(assert (=> b!7953216 m!8336628))

(assert (=> b!7953216 m!8336626))

(assert (=> b!7953216 m!8336628))

(declare-fun m!8336630 () Bool)

(assert (=> b!7953216 m!8336630))

(assert (=> b!7953217 m!8336498))

(assert (=> b!7953217 m!8336496))

(declare-fun m!8336632 () Bool)

(assert (=> b!7953215 m!8336632))

(declare-fun m!8336634 () Bool)

(assert (=> b!7953215 m!8336634))

(assert (=> b!7953051 d!2376557))

(declare-fun d!2376563 () Bool)

(assert (=> d!2376563 (isPrefix!6577 (++!18347 testedP!447 (Cons!74582 (head!16229 (getSuffix!3780 input!7927 testedP!447)) Nil!74582)) input!7927)))

(declare-fun lt!2701000 () Unit!169890)

(declare-fun choose!59942 (List!74706 List!74706) Unit!169890)

(assert (=> d!2376563 (= lt!2701000 (choose!59942 testedP!447 input!7927))))

(assert (=> d!2376563 (isPrefix!6577 testedP!447 input!7927)))

(assert (=> d!2376563 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1304 testedP!447 input!7927) lt!2701000)))

(declare-fun bs!1969592 () Bool)

(assert (= bs!1969592 d!2376563))

(declare-fun m!8336636 () Bool)

(assert (=> bs!1969592 m!8336636))

(assert (=> bs!1969592 m!8336528))

(assert (=> bs!1969592 m!8336636))

(declare-fun m!8336638 () Bool)

(assert (=> bs!1969592 m!8336638))

(declare-fun m!8336640 () Bool)

(assert (=> bs!1969592 m!8336640))

(assert (=> bs!1969592 m!8336500))

(declare-fun m!8336642 () Bool)

(assert (=> bs!1969592 m!8336642))

(assert (=> bs!1969592 m!8336500))

(assert (=> b!7953056 d!2376563))

(declare-fun d!2376565 () Bool)

(declare-fun e!4691363 () Bool)

(assert (=> d!2376565 e!4691363))

(declare-fun res!3153569 () Bool)

(assert (=> d!2376565 (=> (not res!3153569) (not e!4691363))))

(declare-fun lt!2701003 () List!74706)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15834 (List!74706) (InoxSet C!43292))

(assert (=> d!2376565 (= res!3153569 (= (content!15834 lt!2701003) ((_ map or) (content!15834 testedP!447) (content!15834 (Cons!74582 lt!2700960 Nil!74582)))))))

(declare-fun e!4691364 () List!74706)

(assert (=> d!2376565 (= lt!2701003 e!4691364)))

(declare-fun c!1460786 () Bool)

(assert (=> d!2376565 (= c!1460786 ((_ is Nil!74582) testedP!447))))

(assert (=> d!2376565 (= (++!18347 testedP!447 (Cons!74582 lt!2700960 Nil!74582)) lt!2701003)))

(declare-fun b!7953227 () Bool)

(assert (=> b!7953227 (= e!4691364 (Cons!74582 (h!81030 testedP!447) (++!18347 (t!390449 testedP!447) (Cons!74582 lt!2700960 Nil!74582))))))

(declare-fun b!7953229 () Bool)

(assert (=> b!7953229 (= e!4691363 (or (not (= (Cons!74582 lt!2700960 Nil!74582) Nil!74582)) (= lt!2701003 testedP!447)))))

(declare-fun b!7953226 () Bool)

(assert (=> b!7953226 (= e!4691364 (Cons!74582 lt!2700960 Nil!74582))))

(declare-fun b!7953228 () Bool)

(declare-fun res!3153568 () Bool)

(assert (=> b!7953228 (=> (not res!3153568) (not e!4691363))))

(assert (=> b!7953228 (= res!3153568 (= (size!43413 lt!2701003) (+ (size!43413 testedP!447) (size!43413 (Cons!74582 lt!2700960 Nil!74582)))))))

(assert (= (and d!2376565 c!1460786) b!7953226))

(assert (= (and d!2376565 (not c!1460786)) b!7953227))

(assert (= (and d!2376565 res!3153569) b!7953228))

(assert (= (and b!7953228 res!3153568) b!7953229))

(declare-fun m!8336644 () Bool)

(assert (=> d!2376565 m!8336644))

(declare-fun m!8336646 () Bool)

(assert (=> d!2376565 m!8336646))

(declare-fun m!8336648 () Bool)

(assert (=> d!2376565 m!8336648))

(declare-fun m!8336650 () Bool)

(assert (=> b!7953227 m!8336650))

(declare-fun m!8336652 () Bool)

(assert (=> b!7953228 m!8336652))

(assert (=> b!7953228 m!8336496))

(declare-fun m!8336654 () Bool)

(assert (=> b!7953228 m!8336654))

(assert (=> b!7953056 d!2376565))

(declare-fun d!2376567 () Bool)

(assert (=> d!2376567 (= (head!16229 lt!2700961) (h!81030 lt!2700961))))

(assert (=> b!7953056 d!2376567))

(declare-fun d!2376569 () Bool)

(declare-fun nullableFct!3776 (Regex!21477) Bool)

(assert (=> d!2376569 (= (nullable!9578 r!24602) (nullableFct!3776 r!24602))))

(declare-fun bs!1969593 () Bool)

(assert (= bs!1969593 d!2376569))

(declare-fun m!8336656 () Bool)

(assert (=> bs!1969593 m!8336656))

(assert (=> b!7953056 d!2376569))

(declare-fun b!7953232 () Bool)

(declare-fun e!4691365 () Bool)

(assert (=> b!7953232 (= e!4691365 (isPrefix!6577 (tail!15766 lt!2700956) (tail!15766 input!7927)))))

(declare-fun b!7953233 () Bool)

(declare-fun e!4691366 () Bool)

(assert (=> b!7953233 (= e!4691366 (>= (size!43413 input!7927) (size!43413 lt!2700956)))))

(declare-fun b!7953230 () Bool)

(declare-fun e!4691367 () Bool)

(assert (=> b!7953230 (= e!4691367 e!4691365)))

(declare-fun res!3153572 () Bool)

(assert (=> b!7953230 (=> (not res!3153572) (not e!4691365))))

(assert (=> b!7953230 (= res!3153572 (not ((_ is Nil!74582) input!7927)))))

(declare-fun b!7953231 () Bool)

(declare-fun res!3153571 () Bool)

(assert (=> b!7953231 (=> (not res!3153571) (not e!4691365))))

(assert (=> b!7953231 (= res!3153571 (= (head!16229 lt!2700956) (head!16229 input!7927)))))

(declare-fun d!2376571 () Bool)

(assert (=> d!2376571 e!4691366))

(declare-fun res!3153570 () Bool)

(assert (=> d!2376571 (=> res!3153570 e!4691366)))

(declare-fun lt!2701004 () Bool)

(assert (=> d!2376571 (= res!3153570 (not lt!2701004))))

(assert (=> d!2376571 (= lt!2701004 e!4691367)))

(declare-fun res!3153573 () Bool)

(assert (=> d!2376571 (=> res!3153573 e!4691367)))

(assert (=> d!2376571 (= res!3153573 ((_ is Nil!74582) lt!2700956))))

(assert (=> d!2376571 (= (isPrefix!6577 lt!2700956 input!7927) lt!2701004)))

(assert (= (and d!2376571 (not res!3153573)) b!7953230))

(assert (= (and b!7953230 res!3153572) b!7953231))

(assert (= (and b!7953231 res!3153571) b!7953232))

(assert (= (and d!2376571 (not res!3153570)) b!7953233))

(declare-fun m!8336658 () Bool)

(assert (=> b!7953232 m!8336658))

(assert (=> b!7953232 m!8336628))

(assert (=> b!7953232 m!8336658))

(assert (=> b!7953232 m!8336628))

(declare-fun m!8336660 () Bool)

(assert (=> b!7953232 m!8336660))

(assert (=> b!7953233 m!8336498))

(declare-fun m!8336662 () Bool)

(assert (=> b!7953233 m!8336662))

(declare-fun m!8336664 () Bool)

(assert (=> b!7953231 m!8336664))

(assert (=> b!7953231 m!8336634))

(assert (=> b!7953056 d!2376571))

(declare-fun d!2376573 () Bool)

(declare-fun lt!2701007 () Int)

(assert (=> d!2376573 (>= lt!2701007 0)))

(declare-fun e!4691370 () Int)

(assert (=> d!2376573 (= lt!2701007 e!4691370)))

(declare-fun c!1460789 () Bool)

(assert (=> d!2376573 (= c!1460789 ((_ is Nil!74582) input!7927))))

(assert (=> d!2376573 (= (size!43413 input!7927) lt!2701007)))

(declare-fun b!7953238 () Bool)

(assert (=> b!7953238 (= e!4691370 0)))

(declare-fun b!7953239 () Bool)

(assert (=> b!7953239 (= e!4691370 (+ 1 (size!43413 (t!390449 input!7927))))))

(assert (= (and d!2376573 c!1460789) b!7953238))

(assert (= (and d!2376573 (not c!1460789)) b!7953239))

(declare-fun m!8336666 () Bool)

(assert (=> b!7953239 m!8336666))

(assert (=> b!7953047 d!2376573))

(declare-fun d!2376575 () Bool)

(assert (=> d!2376575 (= (isEmpty!42881 (_1!38611 (findLongestMatchInner!2258 r!24602 testedP!447 lt!2700952 lt!2700961 input!7927 lt!2700957))) ((_ is Nil!74582) (_1!38611 (findLongestMatchInner!2258 r!24602 testedP!447 lt!2700952 lt!2700961 input!7927 lt!2700957))))))

(assert (=> b!7953047 d!2376575))

(declare-fun d!2376577 () Bool)

(declare-fun lt!2701010 () List!74706)

(assert (=> d!2376577 (= (++!18347 testedP!447 lt!2701010) input!7927)))

(declare-fun e!4691373 () List!74706)

(assert (=> d!2376577 (= lt!2701010 e!4691373)))

(declare-fun c!1460792 () Bool)

(assert (=> d!2376577 (= c!1460792 ((_ is Cons!74582) testedP!447))))

(assert (=> d!2376577 (>= (size!43413 input!7927) (size!43413 testedP!447))))

(assert (=> d!2376577 (= (getSuffix!3780 input!7927 testedP!447) lt!2701010)))

(declare-fun b!7953244 () Bool)

(assert (=> b!7953244 (= e!4691373 (getSuffix!3780 (tail!15766 input!7927) (t!390449 testedP!447)))))

(declare-fun b!7953245 () Bool)

(assert (=> b!7953245 (= e!4691373 input!7927)))

(assert (= (and d!2376577 c!1460792) b!7953244))

(assert (= (and d!2376577 (not c!1460792)) b!7953245))

(declare-fun m!8336668 () Bool)

(assert (=> d!2376577 m!8336668))

(assert (=> d!2376577 m!8336498))

(assert (=> d!2376577 m!8336496))

(assert (=> b!7953244 m!8336628))

(assert (=> b!7953244 m!8336628))

(declare-fun m!8336670 () Bool)

(assert (=> b!7953244 m!8336670))

(assert (=> b!7953047 d!2376577))

(declare-fun d!2376579 () Bool)

(declare-fun lt!2701011 () Int)

(assert (=> d!2376579 (>= lt!2701011 0)))

(declare-fun e!4691374 () Int)

(assert (=> d!2376579 (= lt!2701011 e!4691374)))

(declare-fun c!1460793 () Bool)

(assert (=> d!2376579 (= c!1460793 ((_ is Nil!74582) testedP!447))))

(assert (=> d!2376579 (= (size!43413 testedP!447) lt!2701011)))

(declare-fun b!7953246 () Bool)

(assert (=> b!7953246 (= e!4691374 0)))

(declare-fun b!7953247 () Bool)

(assert (=> b!7953247 (= e!4691374 (+ 1 (size!43413 (t!390449 testedP!447))))))

(assert (= (and d!2376579 c!1460793) b!7953246))

(assert (= (and d!2376579 (not c!1460793)) b!7953247))

(declare-fun m!8336672 () Bool)

(assert (=> b!7953247 m!8336672))

(assert (=> b!7953047 d!2376579))

(declare-fun bm!737376 () Bool)

(declare-fun call!737381 () Unit!169890)

(assert (=> bm!737376 (= call!737381 (lemmaIsPrefixSameLengthThenSameList!1625 input!7927 testedP!447 input!7927))))

(declare-fun b!7953423 () Bool)

(declare-fun e!4691463 () Unit!169890)

(declare-fun Unit!169897 () Unit!169890)

(assert (=> b!7953423 (= e!4691463 Unit!169897)))

(declare-fun lt!2701159 () Unit!169890)

(declare-fun call!737383 () Unit!169890)

(assert (=> b!7953423 (= lt!2701159 call!737383)))

(declare-fun call!737386 () Bool)

(assert (=> b!7953423 call!737386))

(declare-fun lt!2701183 () Unit!169890)

(assert (=> b!7953423 (= lt!2701183 lt!2701159)))

(declare-fun lt!2701185 () Unit!169890)

(assert (=> b!7953423 (= lt!2701185 call!737381)))

(assert (=> b!7953423 (= input!7927 testedP!447)))

(declare-fun lt!2701172 () Unit!169890)

(assert (=> b!7953423 (= lt!2701172 lt!2701185)))

(assert (=> b!7953423 false))

(declare-fun bm!737377 () Bool)

(assert (=> bm!737377 (= call!737386 (isPrefix!6577 input!7927 input!7927))))

(declare-fun b!7953424 () Bool)

(declare-fun e!4691460 () tuple2!70616)

(assert (=> b!7953424 (= e!4691460 (tuple2!70617 Nil!74582 input!7927))))

(declare-fun b!7953425 () Bool)

(declare-fun Unit!169898 () Unit!169890)

(assert (=> b!7953425 (= e!4691463 Unit!169898)))

(declare-fun b!7953427 () Bool)

(declare-fun c!1460846 () Bool)

(declare-fun call!737385 () Bool)

(assert (=> b!7953427 (= c!1460846 call!737385)))

(declare-fun lt!2701174 () Unit!169890)

(declare-fun lt!2701170 () Unit!169890)

(assert (=> b!7953427 (= lt!2701174 lt!2701170)))

(declare-fun lt!2701178 () List!74706)

(declare-fun lt!2701181 () C!43292)

(assert (=> b!7953427 (= (++!18347 (++!18347 testedP!447 (Cons!74582 lt!2701181 Nil!74582)) lt!2701178) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3522 (List!74706 C!43292 List!74706 List!74706) Unit!169890)

(assert (=> b!7953427 (= lt!2701170 (lemmaMoveElementToOtherListKeepsConcatEq!3522 testedP!447 lt!2701181 lt!2701178 input!7927))))

(assert (=> b!7953427 (= lt!2701178 (tail!15766 lt!2700961))))

(assert (=> b!7953427 (= lt!2701181 (head!16229 lt!2700961))))

(declare-fun lt!2701177 () Unit!169890)

(declare-fun lt!2701168 () Unit!169890)

(assert (=> b!7953427 (= lt!2701177 lt!2701168)))

(assert (=> b!7953427 (isPrefix!6577 (++!18347 testedP!447 (Cons!74582 (head!16229 (getSuffix!3780 input!7927 testedP!447)) Nil!74582)) input!7927)))

(assert (=> b!7953427 (= lt!2701168 (lemmaAddHeadSuffixToPrefixStillPrefix!1304 testedP!447 input!7927))))

(declare-fun lt!2701165 () Unit!169890)

(declare-fun lt!2701169 () Unit!169890)

(assert (=> b!7953427 (= lt!2701165 lt!2701169)))

(assert (=> b!7953427 (= lt!2701169 (lemmaAddHeadSuffixToPrefixStillPrefix!1304 testedP!447 input!7927))))

(declare-fun lt!2701180 () List!74706)

(assert (=> b!7953427 (= lt!2701180 (++!18347 testedP!447 (Cons!74582 (head!16229 lt!2700961) Nil!74582)))))

(declare-fun lt!2701171 () Unit!169890)

(assert (=> b!7953427 (= lt!2701171 e!4691463)))

(declare-fun c!1460845 () Bool)

(assert (=> b!7953427 (= c!1460845 (= (size!43413 testedP!447) (size!43413 input!7927)))))

(declare-fun lt!2701176 () Unit!169890)

(declare-fun lt!2701167 () Unit!169890)

(assert (=> b!7953427 (= lt!2701176 lt!2701167)))

(assert (=> b!7953427 (<= (size!43413 testedP!447) (size!43413 input!7927))))

(assert (=> b!7953427 (= lt!2701167 (lemmaIsPrefixThenSmallerEqSize!1094 testedP!447 input!7927))))

(declare-fun e!4691462 () tuple2!70616)

(declare-fun e!4691466 () tuple2!70616)

(assert (=> b!7953427 (= e!4691462 e!4691466)))

(declare-fun b!7953428 () Bool)

(declare-fun e!4691465 () Bool)

(declare-fun lt!2701186 () tuple2!70616)

(assert (=> b!7953428 (= e!4691465 (>= (size!43413 (_1!38611 lt!2701186)) (size!43413 testedP!447)))))

(declare-fun b!7953429 () Bool)

(declare-fun e!4691461 () tuple2!70616)

(declare-fun lt!2701161 () tuple2!70616)

(assert (=> b!7953429 (= e!4691461 lt!2701161)))

(declare-fun call!737387 () List!74706)

(declare-fun call!737382 () Regex!21477)

(declare-fun bm!737378 () Bool)

(declare-fun call!737388 () tuple2!70616)

(assert (=> bm!737378 (= call!737388 (findLongestMatchInner!2258 call!737382 lt!2701180 (+ lt!2700952 1) call!737387 input!7927 lt!2700957))))

(declare-fun bm!737379 () Bool)

(declare-fun call!737384 () C!43292)

(assert (=> bm!737379 (= call!737382 (derivativeStep!6505 r!24602 call!737384))))

(declare-fun b!7953430 () Bool)

(assert (=> b!7953430 (= e!4691466 e!4691461)))

(assert (=> b!7953430 (= lt!2701161 call!737388)))

(declare-fun c!1460848 () Bool)

(assert (=> b!7953430 (= c!1460848 (isEmpty!42881 (_1!38611 lt!2701161)))))

(declare-fun b!7953431 () Bool)

(declare-fun c!1460847 () Bool)

(assert (=> b!7953431 (= c!1460847 call!737385)))

(declare-fun lt!2701166 () Unit!169890)

(declare-fun lt!2701179 () Unit!169890)

(assert (=> b!7953431 (= lt!2701166 lt!2701179)))

(assert (=> b!7953431 (= input!7927 testedP!447)))

(assert (=> b!7953431 (= lt!2701179 call!737381)))

(declare-fun lt!2701162 () Unit!169890)

(declare-fun lt!2701182 () Unit!169890)

(assert (=> b!7953431 (= lt!2701162 lt!2701182)))

(assert (=> b!7953431 call!737386))

(assert (=> b!7953431 (= lt!2701182 call!737383)))

(assert (=> b!7953431 (= e!4691462 e!4691460)))

(declare-fun b!7953432 () Bool)

(assert (=> b!7953432 (= e!4691460 (tuple2!70617 testedP!447 Nil!74582))))

(declare-fun d!2376581 () Bool)

(declare-fun e!4691464 () Bool)

(assert (=> d!2376581 e!4691464))

(declare-fun res!3153593 () Bool)

(assert (=> d!2376581 (=> (not res!3153593) (not e!4691464))))

(assert (=> d!2376581 (= res!3153593 (= (++!18347 (_1!38611 lt!2701186) (_2!38611 lt!2701186)) input!7927))))

(declare-fun e!4691459 () tuple2!70616)

(assert (=> d!2376581 (= lt!2701186 e!4691459)))

(declare-fun c!1460844 () Bool)

(declare-fun lostCause!1966 (Regex!21477) Bool)

(assert (=> d!2376581 (= c!1460844 (lostCause!1966 r!24602))))

(declare-fun lt!2701163 () Unit!169890)

(declare-fun Unit!169899 () Unit!169890)

(assert (=> d!2376581 (= lt!2701163 Unit!169899)))

(assert (=> d!2376581 (= (getSuffix!3780 input!7927 testedP!447) lt!2700961)))

(declare-fun lt!2701160 () Unit!169890)

(declare-fun lt!2701164 () Unit!169890)

(assert (=> d!2376581 (= lt!2701160 lt!2701164)))

(declare-fun lt!2701173 () List!74706)

(assert (=> d!2376581 (= lt!2700961 lt!2701173)))

(declare-fun lemmaSamePrefixThenSameSuffix!2982 (List!74706 List!74706 List!74706 List!74706 List!74706) Unit!169890)

(assert (=> d!2376581 (= lt!2701164 (lemmaSamePrefixThenSameSuffix!2982 testedP!447 lt!2700961 testedP!447 lt!2701173 input!7927))))

(assert (=> d!2376581 (= lt!2701173 (getSuffix!3780 input!7927 testedP!447))))

(declare-fun lt!2701175 () Unit!169890)

(declare-fun lt!2701184 () Unit!169890)

(assert (=> d!2376581 (= lt!2701175 lt!2701184)))

(assert (=> d!2376581 (isPrefix!6577 testedP!447 (++!18347 testedP!447 lt!2700961))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3844 (List!74706 List!74706) Unit!169890)

(assert (=> d!2376581 (= lt!2701184 (lemmaConcatTwoListThenFirstIsPrefix!3844 testedP!447 lt!2700961))))

(assert (=> d!2376581 (validRegex!11781 r!24602)))

(assert (=> d!2376581 (= (findLongestMatchInner!2258 r!24602 testedP!447 lt!2700952 lt!2700961 input!7927 lt!2700957) lt!2701186)))

(declare-fun b!7953426 () Bool)

(assert (=> b!7953426 (= e!4691459 (tuple2!70617 Nil!74582 input!7927))))

(declare-fun bm!737380 () Bool)

(assert (=> bm!737380 (= call!737383 (lemmaIsPrefixRefl!4045 input!7927 input!7927))))

(declare-fun bm!737381 () Bool)

(assert (=> bm!737381 (= call!737384 (head!16229 lt!2700961))))

(declare-fun b!7953433 () Bool)

(assert (=> b!7953433 (= e!4691461 (tuple2!70617 testedP!447 lt!2700961))))

(declare-fun bm!737382 () Bool)

(assert (=> bm!737382 (= call!737385 (nullable!9578 r!24602))))

(declare-fun b!7953434 () Bool)

(assert (=> b!7953434 (= e!4691464 e!4691465)))

(declare-fun res!3153594 () Bool)

(assert (=> b!7953434 (=> res!3153594 e!4691465)))

(assert (=> b!7953434 (= res!3153594 (isEmpty!42881 (_1!38611 lt!2701186)))))

(declare-fun b!7953435 () Bool)

(assert (=> b!7953435 (= e!4691466 call!737388)))

(declare-fun bm!737383 () Bool)

(assert (=> bm!737383 (= call!737387 (tail!15766 lt!2700961))))

(declare-fun b!7953436 () Bool)

(assert (=> b!7953436 (= e!4691459 e!4691462)))

(declare-fun c!1460849 () Bool)

(assert (=> b!7953436 (= c!1460849 (= lt!2700952 lt!2700957))))

(assert (= (and d!2376581 c!1460844) b!7953426))

(assert (= (and d!2376581 (not c!1460844)) b!7953436))

(assert (= (and b!7953436 c!1460849) b!7953431))

(assert (= (and b!7953436 (not c!1460849)) b!7953427))

(assert (= (and b!7953431 c!1460847) b!7953432))

(assert (= (and b!7953431 (not c!1460847)) b!7953424))

(assert (= (and b!7953427 c!1460845) b!7953423))

(assert (= (and b!7953427 (not c!1460845)) b!7953425))

(assert (= (and b!7953427 c!1460846) b!7953430))

(assert (= (and b!7953427 (not c!1460846)) b!7953435))

(assert (= (and b!7953430 c!1460848) b!7953433))

(assert (= (and b!7953430 (not c!1460848)) b!7953429))

(assert (= (or b!7953430 b!7953435) bm!737381))

(assert (= (or b!7953430 b!7953435) bm!737383))

(assert (= (or b!7953430 b!7953435) bm!737379))

(assert (= (or b!7953430 b!7953435) bm!737378))

(assert (= (or b!7953431 b!7953427) bm!737382))

(assert (= (or b!7953431 b!7953423) bm!737376))

(assert (= (or b!7953431 b!7953423) bm!737380))

(assert (= (or b!7953431 b!7953423) bm!737377))

(assert (= (and d!2376581 res!3153593) b!7953434))

(assert (= (and b!7953434 (not res!3153594)) b!7953428))

(declare-fun m!8336732 () Bool)

(assert (=> d!2376581 m!8336732))

(declare-fun m!8336734 () Bool)

(assert (=> d!2376581 m!8336734))

(declare-fun m!8336736 () Bool)

(assert (=> d!2376581 m!8336736))

(declare-fun m!8336738 () Bool)

(assert (=> d!2376581 m!8336738))

(assert (=> d!2376581 m!8336500))

(assert (=> d!2376581 m!8336738))

(declare-fun m!8336740 () Bool)

(assert (=> d!2376581 m!8336740))

(assert (=> d!2376581 m!8336608))

(declare-fun m!8336742 () Bool)

(assert (=> d!2376581 m!8336742))

(declare-fun m!8336744 () Bool)

(assert (=> b!7953428 m!8336744))

(assert (=> b!7953428 m!8336496))

(assert (=> bm!737381 m!8336518))

(declare-fun m!8336746 () Bool)

(assert (=> b!7953427 m!8336746))

(declare-fun m!8336748 () Bool)

(assert (=> b!7953427 m!8336748))

(assert (=> b!7953427 m!8336518))

(assert (=> b!7953427 m!8336516))

(assert (=> b!7953427 m!8336746))

(declare-fun m!8336750 () Bool)

(assert (=> b!7953427 m!8336750))

(assert (=> b!7953427 m!8336502))

(assert (=> b!7953427 m!8336500))

(assert (=> b!7953427 m!8336642))

(assert (=> b!7953427 m!8336636))

(assert (=> b!7953427 m!8336526))

(declare-fun m!8336752 () Bool)

(assert (=> b!7953427 m!8336752))

(assert (=> b!7953427 m!8336636))

(assert (=> b!7953427 m!8336638))

(assert (=> b!7953427 m!8336498))

(assert (=> b!7953427 m!8336496))

(assert (=> b!7953427 m!8336500))

(assert (=> bm!737380 m!8336520))

(declare-fun m!8336754 () Bool)

(assert (=> bm!737379 m!8336754))

(assert (=> bm!737382 m!8336510))

(assert (=> bm!737377 m!8336522))

(assert (=> bm!737376 m!8336524))

(declare-fun m!8336756 () Bool)

(assert (=> bm!737378 m!8336756))

(declare-fun m!8336758 () Bool)

(assert (=> b!7953430 m!8336758))

(assert (=> bm!737383 m!8336502))

(declare-fun m!8336760 () Bool)

(assert (=> b!7953434 m!8336760))

(assert (=> b!7953047 d!2376581))

(declare-fun d!2376591 () Bool)

(assert (=> d!2376591 (isPrefix!6577 input!7927 input!7927)))

(declare-fun lt!2701189 () Unit!169890)

(declare-fun choose!59943 (List!74706 List!74706) Unit!169890)

(assert (=> d!2376591 (= lt!2701189 (choose!59943 input!7927 input!7927))))

(assert (=> d!2376591 (= (lemmaIsPrefixRefl!4045 input!7927 input!7927) lt!2701189)))

(declare-fun bs!1969594 () Bool)

(assert (= bs!1969594 d!2376591))

(assert (=> bs!1969594 m!8336522))

(declare-fun m!8336762 () Bool)

(assert (=> bs!1969594 m!8336762))

(assert (=> b!7953052 d!2376591))

(declare-fun b!7953439 () Bool)

(declare-fun e!4691467 () Bool)

(assert (=> b!7953439 (= e!4691467 (isPrefix!6577 (tail!15766 input!7927) (tail!15766 input!7927)))))

(declare-fun b!7953440 () Bool)

(declare-fun e!4691468 () Bool)

(assert (=> b!7953440 (= e!4691468 (>= (size!43413 input!7927) (size!43413 input!7927)))))

(declare-fun b!7953437 () Bool)

(declare-fun e!4691469 () Bool)

(assert (=> b!7953437 (= e!4691469 e!4691467)))

(declare-fun res!3153597 () Bool)

(assert (=> b!7953437 (=> (not res!3153597) (not e!4691467))))

(assert (=> b!7953437 (= res!3153597 (not ((_ is Nil!74582) input!7927)))))

(declare-fun b!7953438 () Bool)

(declare-fun res!3153596 () Bool)

(assert (=> b!7953438 (=> (not res!3153596) (not e!4691467))))

(assert (=> b!7953438 (= res!3153596 (= (head!16229 input!7927) (head!16229 input!7927)))))

(declare-fun d!2376593 () Bool)

(assert (=> d!2376593 e!4691468))

(declare-fun res!3153595 () Bool)

(assert (=> d!2376593 (=> res!3153595 e!4691468)))

(declare-fun lt!2701190 () Bool)

(assert (=> d!2376593 (= res!3153595 (not lt!2701190))))

(assert (=> d!2376593 (= lt!2701190 e!4691469)))

(declare-fun res!3153598 () Bool)

(assert (=> d!2376593 (=> res!3153598 e!4691469)))

(assert (=> d!2376593 (= res!3153598 ((_ is Nil!74582) input!7927))))

(assert (=> d!2376593 (= (isPrefix!6577 input!7927 input!7927) lt!2701190)))

(assert (= (and d!2376593 (not res!3153598)) b!7953437))

(assert (= (and b!7953437 res!3153597) b!7953438))

(assert (= (and b!7953438 res!3153596) b!7953439))

(assert (= (and d!2376593 (not res!3153595)) b!7953440))

(assert (=> b!7953439 m!8336628))

(assert (=> b!7953439 m!8336628))

(assert (=> b!7953439 m!8336628))

(assert (=> b!7953439 m!8336628))

(declare-fun m!8336764 () Bool)

(assert (=> b!7953439 m!8336764))

(assert (=> b!7953440 m!8336498))

(assert (=> b!7953440 m!8336498))

(assert (=> b!7953438 m!8336634))

(assert (=> b!7953438 m!8336634))

(assert (=> b!7953052 d!2376593))

(declare-fun d!2376595 () Bool)

(assert (=> d!2376595 (= input!7927 testedP!447)))

(declare-fun lt!2701193 () Unit!169890)

(declare-fun choose!59944 (List!74706 List!74706 List!74706) Unit!169890)

(assert (=> d!2376595 (= lt!2701193 (choose!59944 input!7927 testedP!447 input!7927))))

(assert (=> d!2376595 (isPrefix!6577 input!7927 input!7927)))

(assert (=> d!2376595 (= (lemmaIsPrefixSameLengthThenSameList!1625 input!7927 testedP!447 input!7927) lt!2701193)))

(declare-fun bs!1969595 () Bool)

(assert (= bs!1969595 d!2376595))

(declare-fun m!8336766 () Bool)

(assert (=> bs!1969595 m!8336766))

(assert (=> bs!1969595 m!8336522))

(assert (=> b!7953052 d!2376595))

(declare-fun d!2376597 () Bool)

(declare-fun e!4691470 () Bool)

(assert (=> d!2376597 e!4691470))

(declare-fun res!3153600 () Bool)

(assert (=> d!2376597 (=> (not res!3153600) (not e!4691470))))

(declare-fun lt!2701194 () List!74706)

(assert (=> d!2376597 (= res!3153600 (= (content!15834 lt!2701194) ((_ map or) (content!15834 lt!2700956) (content!15834 (tail!15766 lt!2700961)))))))

(declare-fun e!4691471 () List!74706)

(assert (=> d!2376597 (= lt!2701194 e!4691471)))

(declare-fun c!1460850 () Bool)

(assert (=> d!2376597 (= c!1460850 ((_ is Nil!74582) lt!2700956))))

(assert (=> d!2376597 (= (++!18347 lt!2700956 (tail!15766 lt!2700961)) lt!2701194)))

(declare-fun b!7953442 () Bool)

(assert (=> b!7953442 (= e!4691471 (Cons!74582 (h!81030 lt!2700956) (++!18347 (t!390449 lt!2700956) (tail!15766 lt!2700961))))))

(declare-fun b!7953444 () Bool)

(assert (=> b!7953444 (= e!4691470 (or (not (= (tail!15766 lt!2700961) Nil!74582)) (= lt!2701194 lt!2700956)))))

(declare-fun b!7953441 () Bool)

(assert (=> b!7953441 (= e!4691471 (tail!15766 lt!2700961))))

(declare-fun b!7953443 () Bool)

(declare-fun res!3153599 () Bool)

(assert (=> b!7953443 (=> (not res!3153599) (not e!4691470))))

(assert (=> b!7953443 (= res!3153599 (= (size!43413 lt!2701194) (+ (size!43413 lt!2700956) (size!43413 (tail!15766 lt!2700961)))))))

(assert (= (and d!2376597 c!1460850) b!7953441))

(assert (= (and d!2376597 (not c!1460850)) b!7953442))

(assert (= (and d!2376597 res!3153600) b!7953443))

(assert (= (and b!7953443 res!3153599) b!7953444))

(declare-fun m!8336768 () Bool)

(assert (=> d!2376597 m!8336768))

(declare-fun m!8336770 () Bool)

(assert (=> d!2376597 m!8336770))

(assert (=> d!2376597 m!8336502))

(declare-fun m!8336772 () Bool)

(assert (=> d!2376597 m!8336772))

(assert (=> b!7953442 m!8336502))

(declare-fun m!8336774 () Bool)

(assert (=> b!7953442 m!8336774))

(declare-fun m!8336776 () Bool)

(assert (=> b!7953443 m!8336776))

(assert (=> b!7953443 m!8336662))

(assert (=> b!7953443 m!8336502))

(declare-fun m!8336778 () Bool)

(assert (=> b!7953443 m!8336778))

(assert (=> b!7953042 d!2376597))

(declare-fun d!2376599 () Bool)

(assert (=> d!2376599 (= (tail!15766 lt!2700961) (t!390449 lt!2700961))))

(assert (=> b!7953042 d!2376599))

(declare-fun d!2376601 () Bool)

(assert (=> d!2376601 (<= (size!43413 testedP!447) (size!43413 input!7927))))

(declare-fun lt!2701197 () Unit!169890)

(declare-fun choose!59945 (List!74706 List!74706) Unit!169890)

(assert (=> d!2376601 (= lt!2701197 (choose!59945 testedP!447 input!7927))))

(assert (=> d!2376601 (isPrefix!6577 testedP!447 input!7927)))

(assert (=> d!2376601 (= (lemmaIsPrefixThenSmallerEqSize!1094 testedP!447 input!7927) lt!2701197)))

(declare-fun bs!1969596 () Bool)

(assert (= bs!1969596 d!2376601))

(assert (=> bs!1969596 m!8336496))

(assert (=> bs!1969596 m!8336498))

(declare-fun m!8336780 () Bool)

(assert (=> bs!1969596 m!8336780))

(assert (=> bs!1969596 m!8336528))

(assert (=> b!7953059 d!2376601))

(declare-fun b!7953449 () Bool)

(declare-fun e!4691474 () Bool)

(declare-fun tp!2367473 () Bool)

(assert (=> b!7953449 (= e!4691474 (and tp_is_empty!53497 tp!2367473))))

(assert (=> b!7953049 (= tp!2367396 e!4691474)))

(assert (= (and b!7953049 ((_ is Cons!74582) (t!390449 testedP!447))) b!7953449))

(declare-fun e!4691477 () Bool)

(assert (=> b!7953055 (= tp!2367401 e!4691477)))

(declare-fun b!7953461 () Bool)

(declare-fun tp!2367484 () Bool)

(declare-fun tp!2367488 () Bool)

(assert (=> b!7953461 (= e!4691477 (and tp!2367484 tp!2367488))))

(declare-fun b!7953460 () Bool)

(assert (=> b!7953460 (= e!4691477 tp_is_empty!53497)))

(declare-fun b!7953462 () Bool)

(declare-fun tp!2367487 () Bool)

(assert (=> b!7953462 (= e!4691477 tp!2367487)))

(declare-fun b!7953463 () Bool)

(declare-fun tp!2367485 () Bool)

(declare-fun tp!2367486 () Bool)

(assert (=> b!7953463 (= e!4691477 (and tp!2367485 tp!2367486))))

(assert (= (and b!7953055 ((_ is ElementMatch!21477) (regOne!43467 baseR!116))) b!7953460))

(assert (= (and b!7953055 ((_ is Concat!30476) (regOne!43467 baseR!116))) b!7953461))

(assert (= (and b!7953055 ((_ is Star!21477) (regOne!43467 baseR!116))) b!7953462))

(assert (= (and b!7953055 ((_ is Union!21477) (regOne!43467 baseR!116))) b!7953463))

(declare-fun e!4691478 () Bool)

(assert (=> b!7953055 (= tp!2367405 e!4691478)))

(declare-fun b!7953465 () Bool)

(declare-fun tp!2367489 () Bool)

(declare-fun tp!2367493 () Bool)

(assert (=> b!7953465 (= e!4691478 (and tp!2367489 tp!2367493))))

(declare-fun b!7953464 () Bool)

(assert (=> b!7953464 (= e!4691478 tp_is_empty!53497)))

(declare-fun b!7953466 () Bool)

(declare-fun tp!2367492 () Bool)

(assert (=> b!7953466 (= e!4691478 tp!2367492)))

(declare-fun b!7953467 () Bool)

(declare-fun tp!2367490 () Bool)

(declare-fun tp!2367491 () Bool)

(assert (=> b!7953467 (= e!4691478 (and tp!2367490 tp!2367491))))

(assert (= (and b!7953055 ((_ is ElementMatch!21477) (regTwo!43467 baseR!116))) b!7953464))

(assert (= (and b!7953055 ((_ is Concat!30476) (regTwo!43467 baseR!116))) b!7953465))

(assert (= (and b!7953055 ((_ is Star!21477) (regTwo!43467 baseR!116))) b!7953466))

(assert (= (and b!7953055 ((_ is Union!21477) (regTwo!43467 baseR!116))) b!7953467))

(declare-fun e!4691479 () Bool)

(assert (=> b!7953044 (= tp!2367400 e!4691479)))

(declare-fun b!7953469 () Bool)

(declare-fun tp!2367494 () Bool)

(declare-fun tp!2367498 () Bool)

(assert (=> b!7953469 (= e!4691479 (and tp!2367494 tp!2367498))))

(declare-fun b!7953468 () Bool)

(assert (=> b!7953468 (= e!4691479 tp_is_empty!53497)))

(declare-fun b!7953470 () Bool)

(declare-fun tp!2367497 () Bool)

(assert (=> b!7953470 (= e!4691479 tp!2367497)))

(declare-fun b!7953471 () Bool)

(declare-fun tp!2367495 () Bool)

(declare-fun tp!2367496 () Bool)

(assert (=> b!7953471 (= e!4691479 (and tp!2367495 tp!2367496))))

(assert (= (and b!7953044 ((_ is ElementMatch!21477) (regOne!43467 r!24602))) b!7953468))

(assert (= (and b!7953044 ((_ is Concat!30476) (regOne!43467 r!24602))) b!7953469))

(assert (= (and b!7953044 ((_ is Star!21477) (regOne!43467 r!24602))) b!7953470))

(assert (= (and b!7953044 ((_ is Union!21477) (regOne!43467 r!24602))) b!7953471))

(declare-fun e!4691480 () Bool)

(assert (=> b!7953044 (= tp!2367406 e!4691480)))

(declare-fun b!7953473 () Bool)

(declare-fun tp!2367499 () Bool)

(declare-fun tp!2367503 () Bool)

(assert (=> b!7953473 (= e!4691480 (and tp!2367499 tp!2367503))))

(declare-fun b!7953472 () Bool)

(assert (=> b!7953472 (= e!4691480 tp_is_empty!53497)))

(declare-fun b!7953474 () Bool)

(declare-fun tp!2367502 () Bool)

(assert (=> b!7953474 (= e!4691480 tp!2367502)))

(declare-fun b!7953475 () Bool)

(declare-fun tp!2367500 () Bool)

(declare-fun tp!2367501 () Bool)

(assert (=> b!7953475 (= e!4691480 (and tp!2367500 tp!2367501))))

(assert (= (and b!7953044 ((_ is ElementMatch!21477) (regTwo!43467 r!24602))) b!7953472))

(assert (= (and b!7953044 ((_ is Concat!30476) (regTwo!43467 r!24602))) b!7953473))

(assert (= (and b!7953044 ((_ is Star!21477) (regTwo!43467 r!24602))) b!7953474))

(assert (= (and b!7953044 ((_ is Union!21477) (regTwo!43467 r!24602))) b!7953475))

(declare-fun e!4691481 () Bool)

(assert (=> b!7953050 (= tp!2367403 e!4691481)))

(declare-fun b!7953477 () Bool)

(declare-fun tp!2367504 () Bool)

(declare-fun tp!2367508 () Bool)

(assert (=> b!7953477 (= e!4691481 (and tp!2367504 tp!2367508))))

(declare-fun b!7953476 () Bool)

(assert (=> b!7953476 (= e!4691481 tp_is_empty!53497)))

(declare-fun b!7953478 () Bool)

(declare-fun tp!2367507 () Bool)

(assert (=> b!7953478 (= e!4691481 tp!2367507)))

(declare-fun b!7953479 () Bool)

(declare-fun tp!2367505 () Bool)

(declare-fun tp!2367506 () Bool)

(assert (=> b!7953479 (= e!4691481 (and tp!2367505 tp!2367506))))

(assert (= (and b!7953050 ((_ is ElementMatch!21477) (regOne!43466 r!24602))) b!7953476))

(assert (= (and b!7953050 ((_ is Concat!30476) (regOne!43466 r!24602))) b!7953477))

(assert (= (and b!7953050 ((_ is Star!21477) (regOne!43466 r!24602))) b!7953478))

(assert (= (and b!7953050 ((_ is Union!21477) (regOne!43466 r!24602))) b!7953479))

(declare-fun e!4691482 () Bool)

(assert (=> b!7953050 (= tp!2367397 e!4691482)))

(declare-fun b!7953481 () Bool)

(declare-fun tp!2367509 () Bool)

(declare-fun tp!2367513 () Bool)

(assert (=> b!7953481 (= e!4691482 (and tp!2367509 tp!2367513))))

(declare-fun b!7953480 () Bool)

(assert (=> b!7953480 (= e!4691482 tp_is_empty!53497)))

(declare-fun b!7953482 () Bool)

(declare-fun tp!2367512 () Bool)

(assert (=> b!7953482 (= e!4691482 tp!2367512)))

(declare-fun b!7953483 () Bool)

(declare-fun tp!2367510 () Bool)

(declare-fun tp!2367511 () Bool)

(assert (=> b!7953483 (= e!4691482 (and tp!2367510 tp!2367511))))

(assert (= (and b!7953050 ((_ is ElementMatch!21477) (regTwo!43466 r!24602))) b!7953480))

(assert (= (and b!7953050 ((_ is Concat!30476) (regTwo!43466 r!24602))) b!7953481))

(assert (= (and b!7953050 ((_ is Star!21477) (regTwo!43466 r!24602))) b!7953482))

(assert (= (and b!7953050 ((_ is Union!21477) (regTwo!43466 r!24602))) b!7953483))

(declare-fun e!4691483 () Bool)

(assert (=> b!7953046 (= tp!2367399 e!4691483)))

(declare-fun b!7953485 () Bool)

(declare-fun tp!2367514 () Bool)

(declare-fun tp!2367518 () Bool)

(assert (=> b!7953485 (= e!4691483 (and tp!2367514 tp!2367518))))

(declare-fun b!7953484 () Bool)

(assert (=> b!7953484 (= e!4691483 tp_is_empty!53497)))

(declare-fun b!7953486 () Bool)

(declare-fun tp!2367517 () Bool)

(assert (=> b!7953486 (= e!4691483 tp!2367517)))

(declare-fun b!7953487 () Bool)

(declare-fun tp!2367515 () Bool)

(declare-fun tp!2367516 () Bool)

(assert (=> b!7953487 (= e!4691483 (and tp!2367515 tp!2367516))))

(assert (= (and b!7953046 ((_ is ElementMatch!21477) (reg!21806 r!24602))) b!7953484))

(assert (= (and b!7953046 ((_ is Concat!30476) (reg!21806 r!24602))) b!7953485))

(assert (= (and b!7953046 ((_ is Star!21477) (reg!21806 r!24602))) b!7953486))

(assert (= (and b!7953046 ((_ is Union!21477) (reg!21806 r!24602))) b!7953487))

(declare-fun e!4691484 () Bool)

(assert (=> b!7953053 (= tp!2367395 e!4691484)))

(declare-fun b!7953489 () Bool)

(declare-fun tp!2367519 () Bool)

(declare-fun tp!2367523 () Bool)

(assert (=> b!7953489 (= e!4691484 (and tp!2367519 tp!2367523))))

(declare-fun b!7953488 () Bool)

(assert (=> b!7953488 (= e!4691484 tp_is_empty!53497)))

(declare-fun b!7953490 () Bool)

(declare-fun tp!2367522 () Bool)

(assert (=> b!7953490 (= e!4691484 tp!2367522)))

(declare-fun b!7953491 () Bool)

(declare-fun tp!2367520 () Bool)

(declare-fun tp!2367521 () Bool)

(assert (=> b!7953491 (= e!4691484 (and tp!2367520 tp!2367521))))

(assert (= (and b!7953053 ((_ is ElementMatch!21477) (regOne!43466 baseR!116))) b!7953488))

(assert (= (and b!7953053 ((_ is Concat!30476) (regOne!43466 baseR!116))) b!7953489))

(assert (= (and b!7953053 ((_ is Star!21477) (regOne!43466 baseR!116))) b!7953490))

(assert (= (and b!7953053 ((_ is Union!21477) (regOne!43466 baseR!116))) b!7953491))

(declare-fun e!4691485 () Bool)

(assert (=> b!7953053 (= tp!2367402 e!4691485)))

(declare-fun b!7953493 () Bool)

(declare-fun tp!2367524 () Bool)

(declare-fun tp!2367528 () Bool)

(assert (=> b!7953493 (= e!4691485 (and tp!2367524 tp!2367528))))

(declare-fun b!7953492 () Bool)

(assert (=> b!7953492 (= e!4691485 tp_is_empty!53497)))

(declare-fun b!7953494 () Bool)

(declare-fun tp!2367527 () Bool)

(assert (=> b!7953494 (= e!4691485 tp!2367527)))

(declare-fun b!7953495 () Bool)

(declare-fun tp!2367525 () Bool)

(declare-fun tp!2367526 () Bool)

(assert (=> b!7953495 (= e!4691485 (and tp!2367525 tp!2367526))))

(assert (= (and b!7953053 ((_ is ElementMatch!21477) (regTwo!43466 baseR!116))) b!7953492))

(assert (= (and b!7953053 ((_ is Concat!30476) (regTwo!43466 baseR!116))) b!7953493))

(assert (= (and b!7953053 ((_ is Star!21477) (regTwo!43466 baseR!116))) b!7953494))

(assert (= (and b!7953053 ((_ is Union!21477) (regTwo!43466 baseR!116))) b!7953495))

(declare-fun e!4691486 () Bool)

(assert (=> b!7953058 (= tp!2367398 e!4691486)))

(declare-fun b!7953497 () Bool)

(declare-fun tp!2367529 () Bool)

(declare-fun tp!2367533 () Bool)

(assert (=> b!7953497 (= e!4691486 (and tp!2367529 tp!2367533))))

(declare-fun b!7953496 () Bool)

(assert (=> b!7953496 (= e!4691486 tp_is_empty!53497)))

(declare-fun b!7953498 () Bool)

(declare-fun tp!2367532 () Bool)

(assert (=> b!7953498 (= e!4691486 tp!2367532)))

(declare-fun b!7953499 () Bool)

(declare-fun tp!2367530 () Bool)

(declare-fun tp!2367531 () Bool)

(assert (=> b!7953499 (= e!4691486 (and tp!2367530 tp!2367531))))

(assert (= (and b!7953058 ((_ is ElementMatch!21477) (reg!21806 baseR!116))) b!7953496))

(assert (= (and b!7953058 ((_ is Concat!30476) (reg!21806 baseR!116))) b!7953497))

(assert (= (and b!7953058 ((_ is Star!21477) (reg!21806 baseR!116))) b!7953498))

(assert (= (and b!7953058 ((_ is Union!21477) (reg!21806 baseR!116))) b!7953499))

(declare-fun b!7953500 () Bool)

(declare-fun e!4691487 () Bool)

(declare-fun tp!2367534 () Bool)

(assert (=> b!7953500 (= e!4691487 (and tp_is_empty!53497 tp!2367534))))

(assert (=> b!7953048 (= tp!2367404 e!4691487)))

(assert (= (and b!7953048 ((_ is Cons!74582) (t!390449 input!7927))) b!7953500))

(check-sat (not b!7953443) (not b!7953216) (not b!7953196) (not b!7953470) (not bm!737381) (not b!7953477) (not b!7953086) (not b!7953095) (not b!7953215) (not b!7953467) (not b!7953428) (not bm!737295) (not d!2376601) (not b!7953483) (not d!2376597) tp_is_empty!53497 (not bm!737380) (not d!2376563) (not bm!737382) (not bm!737294) (not b!7953440) (not b!7953489) (not b!7953227) (not bm!737376) (not d!2376547) (not b!7953497) (not bm!737378) (not b!7953486) (not b!7953233) (not b!7953485) (not bm!737298) (not bm!737320) (not d!2376595) (not bm!737319) (not b!7953487) (not bm!737377) (not b!7953471) (not b!7953442) (not b!7953231) (not b!7953228) (not d!2376569) (not b!7953474) (not b!7953478) (not b!7953490) (not b!7953466) (not b!7953473) (not b!7953479) (not b!7953430) (not d!2376565) (not b!7953499) (not b!7953439) (not b!7953434) (not b!7953494) (not bm!737379) (not bm!737297) (not b!7953469) (not d!2376581) (not b!7953239) (not b!7953244) (not b!7953427) (not d!2376577) (not b!7953175) (not d!2376527) (not bm!737383) (not b!7953449) (not b!7953493) (not b!7953465) (not b!7953461) (not b!7953495) (not d!2376591) (not b!7953247) (not b!7953232) (not b!7953462) (not b!7953217) (not b!7953475) (not b!7953481) (not b!7953491) (not b!7953500) (not b!7953498) (not b!7953438) (not b!7953463) (not b!7953482))
(check-sat)
