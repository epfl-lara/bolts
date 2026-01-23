; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749752 () Bool)

(assert start!749752)

(declare-fun b!7944027 () Bool)

(declare-fun e!4687014 () Bool)

(declare-fun tp!2362681 () Bool)

(assert (=> b!7944027 (= e!4687014 tp!2362681)))

(declare-fun b!7944028 () Bool)

(declare-fun tp!2362680 () Bool)

(declare-fun tp!2362686 () Bool)

(assert (=> b!7944028 (= e!4687014 (and tp!2362680 tp!2362686))))

(declare-fun b!7944029 () Bool)

(declare-fun e!4687015 () Bool)

(declare-fun tp!2362676 () Bool)

(assert (=> b!7944029 (= e!4687015 tp!2362676)))

(declare-fun b!7944030 () Bool)

(declare-fun tp!2362684 () Bool)

(declare-fun tp!2362683 () Bool)

(assert (=> b!7944030 (= e!4687014 (and tp!2362684 tp!2362683))))

(declare-fun b!7944031 () Bool)

(declare-fun res!3151066 () Bool)

(declare-fun e!4687013 () Bool)

(assert (=> b!7944031 (=> (not res!3151066) (not e!4687013))))

(declare-datatypes ((C!43192 0))(
  ( (C!43193 (val!32144 Int)) )
))
(declare-datatypes ((List!74656 0))(
  ( (Nil!74532) (Cons!74532 (h!80980 C!43192) (t!390399 List!74656)) )
))
(declare-fun testedP!447 () List!74656)

(declare-fun input!7927 () List!74656)

(declare-fun isPrefix!6527 (List!74656 List!74656) Bool)

(assert (=> b!7944031 (= res!3151066 (isPrefix!6527 testedP!447 input!7927))))

(declare-fun b!7944032 () Bool)

(declare-fun tp_is_empty!53397 () Bool)

(assert (=> b!7944032 (= e!4687014 tp_is_empty!53397)))

(declare-fun b!7944033 () Bool)

(assert (=> b!7944033 (= e!4687015 tp_is_empty!53397)))

(declare-fun b!7944034 () Bool)

(declare-fun tp!2362678 () Bool)

(declare-fun tp!2362682 () Bool)

(assert (=> b!7944034 (= e!4687015 (and tp!2362678 tp!2362682))))

(declare-fun res!3151065 () Bool)

(assert (=> start!749752 (=> (not res!3151065) (not e!4687013))))

(declare-datatypes ((Regex!21427 0))(
  ( (ElementMatch!21427 (c!1459364 C!43192)) (Concat!30426 (regOne!43366 Regex!21427) (regTwo!43366 Regex!21427)) (EmptyExpr!21427) (Star!21427 (reg!21756 Regex!21427)) (EmptyLang!21427) (Union!21427 (regOne!43367 Regex!21427) (regTwo!43367 Regex!21427)) )
))
(declare-fun baseR!116 () Regex!21427)

(declare-fun validRegex!11731 (Regex!21427) Bool)

(assert (=> start!749752 (= res!3151065 (validRegex!11731 baseR!116))))

(assert (=> start!749752 e!4687013))

(assert (=> start!749752 e!4687014))

(declare-fun e!4687017 () Bool)

(assert (=> start!749752 e!4687017))

(declare-fun e!4687016 () Bool)

(assert (=> start!749752 e!4687016))

(assert (=> start!749752 e!4687015))

(declare-fun b!7944035 () Bool)

(declare-fun r!24602 () Regex!21427)

(assert (=> b!7944035 (= e!4687013 (not (validRegex!11731 r!24602)))))

(declare-fun b!7944036 () Bool)

(declare-fun res!3151068 () Bool)

(assert (=> b!7944036 (=> (not res!3151068) (not e!4687013))))

(declare-fun isEmpty!42831 (List!74656) Bool)

(declare-datatypes ((tuple2!70516 0))(
  ( (tuple2!70517 (_1!38561 List!74656) (_2!38561 List!74656)) )
))
(declare-fun findLongestMatchInner!2208 (Regex!21427 List!74656 Int List!74656 List!74656 Int) tuple2!70516)

(declare-fun size!43363 (List!74656) Int)

(declare-fun getSuffix!3730 (List!74656 List!74656) List!74656)

(assert (=> b!7944036 (= res!3151068 (isEmpty!42831 (_1!38561 (findLongestMatchInner!2208 r!24602 testedP!447 (size!43363 testedP!447) (getSuffix!3730 input!7927 testedP!447) input!7927 (size!43363 input!7927)))))))

(declare-fun b!7944037 () Bool)

(declare-fun tp!2362675 () Bool)

(assert (=> b!7944037 (= e!4687016 (and tp_is_empty!53397 tp!2362675))))

(declare-fun b!7944038 () Bool)

(declare-fun res!3151067 () Bool)

(assert (=> b!7944038 (=> (not res!3151067) (not e!4687013))))

(declare-fun derivative!613 (Regex!21427 List!74656) Regex!21427)

(assert (=> b!7944038 (= res!3151067 (= (derivative!613 baseR!116 testedP!447) r!24602))))

(declare-fun b!7944039 () Bool)

(declare-fun tp!2362677 () Bool)

(declare-fun tp!2362685 () Bool)

(assert (=> b!7944039 (= e!4687015 (and tp!2362677 tp!2362685))))

(declare-fun b!7944040 () Bool)

(declare-fun tp!2362679 () Bool)

(assert (=> b!7944040 (= e!4687017 (and tp_is_empty!53397 tp!2362679))))

(assert (= (and start!749752 res!3151065) b!7944031))

(assert (= (and b!7944031 res!3151066) b!7944038))

(assert (= (and b!7944038 res!3151067) b!7944036))

(assert (= (and b!7944036 res!3151068) b!7944035))

(get-info :version)

(assert (= (and start!749752 ((_ is ElementMatch!21427) baseR!116)) b!7944032))

(assert (= (and start!749752 ((_ is Concat!30426) baseR!116)) b!7944028))

(assert (= (and start!749752 ((_ is Star!21427) baseR!116)) b!7944027))

(assert (= (and start!749752 ((_ is Union!21427) baseR!116)) b!7944030))

(assert (= (and start!749752 ((_ is Cons!74532) testedP!447)) b!7944040))

(assert (= (and start!749752 ((_ is Cons!74532) input!7927)) b!7944037))

(assert (= (and start!749752 ((_ is ElementMatch!21427) r!24602)) b!7944033))

(assert (= (and start!749752 ((_ is Concat!30426) r!24602)) b!7944034))

(assert (= (and start!749752 ((_ is Star!21427) r!24602)) b!7944029))

(assert (= (and start!749752 ((_ is Union!21427) r!24602)) b!7944039))

(declare-fun m!8331360 () Bool)

(assert (=> start!749752 m!8331360))

(declare-fun m!8331362 () Bool)

(assert (=> b!7944035 m!8331362))

(declare-fun m!8331364 () Bool)

(assert (=> b!7944036 m!8331364))

(declare-fun m!8331366 () Bool)

(assert (=> b!7944036 m!8331366))

(declare-fun m!8331368 () Bool)

(assert (=> b!7944036 m!8331368))

(assert (=> b!7944036 m!8331364))

(declare-fun m!8331370 () Bool)

(assert (=> b!7944036 m!8331370))

(assert (=> b!7944036 m!8331366))

(declare-fun m!8331372 () Bool)

(assert (=> b!7944036 m!8331372))

(assert (=> b!7944036 m!8331368))

(declare-fun m!8331374 () Bool)

(assert (=> b!7944038 m!8331374))

(declare-fun m!8331376 () Bool)

(assert (=> b!7944031 m!8331376))

(check-sat (not b!7944027) (not b!7944038) tp_is_empty!53397 (not b!7944035) (not b!7944030) (not b!7944039) (not b!7944031) (not b!7944040) (not b!7944034) (not start!749752) (not b!7944037) (not b!7944029) (not b!7944036) (not b!7944028))
(check-sat)
(get-model)

(declare-fun d!2375302 () Bool)

(declare-fun lt!2697406 () Regex!21427)

(assert (=> d!2375302 (validRegex!11731 lt!2697406)))

(declare-fun e!4687020 () Regex!21427)

(assert (=> d!2375302 (= lt!2697406 e!4687020)))

(declare-fun c!1459367 () Bool)

(assert (=> d!2375302 (= c!1459367 ((_ is Cons!74532) testedP!447))))

(assert (=> d!2375302 (validRegex!11731 baseR!116)))

(assert (=> d!2375302 (= (derivative!613 baseR!116 testedP!447) lt!2697406)))

(declare-fun b!7944045 () Bool)

(declare-fun derivativeStep!6478 (Regex!21427 C!43192) Regex!21427)

(assert (=> b!7944045 (= e!4687020 (derivative!613 (derivativeStep!6478 baseR!116 (h!80980 testedP!447)) (t!390399 testedP!447)))))

(declare-fun b!7944046 () Bool)

(assert (=> b!7944046 (= e!4687020 baseR!116)))

(assert (= (and d!2375302 c!1459367) b!7944045))

(assert (= (and d!2375302 (not c!1459367)) b!7944046))

(declare-fun m!8331378 () Bool)

(assert (=> d!2375302 m!8331378))

(assert (=> d!2375302 m!8331360))

(declare-fun m!8331380 () Bool)

(assert (=> b!7944045 m!8331380))

(assert (=> b!7944045 m!8331380))

(declare-fun m!8331382 () Bool)

(assert (=> b!7944045 m!8331382))

(assert (=> b!7944038 d!2375302))

(declare-fun d!2375304 () Bool)

(declare-fun lt!2697409 () Int)

(assert (=> d!2375304 (>= lt!2697409 0)))

(declare-fun e!4687023 () Int)

(assert (=> d!2375304 (= lt!2697409 e!4687023)))

(declare-fun c!1459370 () Bool)

(assert (=> d!2375304 (= c!1459370 ((_ is Nil!74532) input!7927))))

(assert (=> d!2375304 (= (size!43363 input!7927) lt!2697409)))

(declare-fun b!7944051 () Bool)

(assert (=> b!7944051 (= e!4687023 0)))

(declare-fun b!7944052 () Bool)

(assert (=> b!7944052 (= e!4687023 (+ 1 (size!43363 (t!390399 input!7927))))))

(assert (= (and d!2375304 c!1459370) b!7944051))

(assert (= (and d!2375304 (not c!1459370)) b!7944052))

(declare-fun m!8331384 () Bool)

(assert (=> b!7944052 m!8331384))

(assert (=> b!7944036 d!2375304))

(declare-fun d!2375306 () Bool)

(declare-fun lt!2697415 () List!74656)

(declare-fun ++!18312 (List!74656 List!74656) List!74656)

(assert (=> d!2375306 (= (++!18312 testedP!447 lt!2697415) input!7927)))

(declare-fun e!4687029 () List!74656)

(assert (=> d!2375306 (= lt!2697415 e!4687029)))

(declare-fun c!1459376 () Bool)

(assert (=> d!2375306 (= c!1459376 ((_ is Cons!74532) testedP!447))))

(assert (=> d!2375306 (>= (size!43363 input!7927) (size!43363 testedP!447))))

(assert (=> d!2375306 (= (getSuffix!3730 input!7927 testedP!447) lt!2697415)))

(declare-fun b!7944063 () Bool)

(declare-fun tail!15743 (List!74656) List!74656)

(assert (=> b!7944063 (= e!4687029 (getSuffix!3730 (tail!15743 input!7927) (t!390399 testedP!447)))))

(declare-fun b!7944064 () Bool)

(assert (=> b!7944064 (= e!4687029 input!7927)))

(assert (= (and d!2375306 c!1459376) b!7944063))

(assert (= (and d!2375306 (not c!1459376)) b!7944064))

(declare-fun m!8331388 () Bool)

(assert (=> d!2375306 m!8331388))

(assert (=> d!2375306 m!8331364))

(assert (=> d!2375306 m!8331366))

(declare-fun m!8331390 () Bool)

(assert (=> b!7944063 m!8331390))

(assert (=> b!7944063 m!8331390))

(declare-fun m!8331392 () Bool)

(assert (=> b!7944063 m!8331392))

(assert (=> b!7944036 d!2375306))

(declare-fun d!2375312 () Bool)

(assert (=> d!2375312 (= (isEmpty!42831 (_1!38561 (findLongestMatchInner!2208 r!24602 testedP!447 (size!43363 testedP!447) (getSuffix!3730 input!7927 testedP!447) input!7927 (size!43363 input!7927)))) ((_ is Nil!74532) (_1!38561 (findLongestMatchInner!2208 r!24602 testedP!447 (size!43363 testedP!447) (getSuffix!3730 input!7927 testedP!447) input!7927 (size!43363 input!7927)))))))

(assert (=> b!7944036 d!2375312))

(declare-fun d!2375314 () Bool)

(declare-fun lt!2697416 () Int)

(assert (=> d!2375314 (>= lt!2697416 0)))

(declare-fun e!4687030 () Int)

(assert (=> d!2375314 (= lt!2697416 e!4687030)))

(declare-fun c!1459377 () Bool)

(assert (=> d!2375314 (= c!1459377 ((_ is Nil!74532) testedP!447))))

(assert (=> d!2375314 (= (size!43363 testedP!447) lt!2697416)))

(declare-fun b!7944065 () Bool)

(assert (=> b!7944065 (= e!4687030 0)))

(declare-fun b!7944066 () Bool)

(assert (=> b!7944066 (= e!4687030 (+ 1 (size!43363 (t!390399 testedP!447))))))

(assert (= (and d!2375314 c!1459377) b!7944065))

(assert (= (and d!2375314 (not c!1459377)) b!7944066))

(declare-fun m!8331394 () Bool)

(assert (=> b!7944066 m!8331394))

(assert (=> b!7944036 d!2375314))

(declare-fun b!7944131 () Bool)

(declare-fun e!4687071 () tuple2!70516)

(assert (=> b!7944131 (= e!4687071 (tuple2!70517 testedP!447 Nil!74532))))

(declare-fun b!7944132 () Bool)

(declare-fun e!4687070 () tuple2!70516)

(declare-fun call!736242 () tuple2!70516)

(assert (=> b!7944132 (= e!4687070 call!736242)))

(declare-fun call!736248 () List!74656)

(declare-fun call!736243 () Regex!21427)

(declare-fun lt!2697547 () List!74656)

(declare-fun bm!736236 () Bool)

(assert (=> bm!736236 (= call!736242 (findLongestMatchInner!2208 call!736243 lt!2697547 (+ (size!43363 testedP!447) 1) call!736248 input!7927 (size!43363 input!7927)))))

(declare-fun bm!736237 () Bool)

(declare-fun call!736241 () Bool)

(declare-fun nullable!9541 (Regex!21427) Bool)

(assert (=> bm!736237 (= call!736241 (nullable!9541 r!24602))))

(declare-fun b!7944133 () Bool)

(declare-fun e!4687072 () Bool)

(declare-fun lt!2697535 () tuple2!70516)

(assert (=> b!7944133 (= e!4687072 (>= (size!43363 (_1!38561 lt!2697535)) (size!43363 testedP!447)))))

(declare-fun b!7944134 () Bool)

(declare-fun c!1459408 () Bool)

(assert (=> b!7944134 (= c!1459408 call!736241)))

(declare-datatypes ((Unit!169678 0))(
  ( (Unit!169679) )
))
(declare-fun lt!2697536 () Unit!169678)

(declare-fun lt!2697542 () Unit!169678)

(assert (=> b!7944134 (= lt!2697536 lt!2697542)))

(declare-fun lt!2697554 () List!74656)

(declare-fun lt!2697541 () C!43192)

(assert (=> b!7944134 (= (++!18312 (++!18312 testedP!447 (Cons!74532 lt!2697541 Nil!74532)) lt!2697554) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3499 (List!74656 C!43192 List!74656 List!74656) Unit!169678)

(assert (=> b!7944134 (= lt!2697542 (lemmaMoveElementToOtherListKeepsConcatEq!3499 testedP!447 lt!2697541 lt!2697554 input!7927))))

(assert (=> b!7944134 (= lt!2697554 (tail!15743 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun head!16200 (List!74656) C!43192)

(assert (=> b!7944134 (= lt!2697541 (head!16200 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun lt!2697555 () Unit!169678)

(declare-fun lt!2697538 () Unit!169678)

(assert (=> b!7944134 (= lt!2697555 lt!2697538)))

(assert (=> b!7944134 (isPrefix!6527 (++!18312 testedP!447 (Cons!74532 (head!16200 (getSuffix!3730 input!7927 testedP!447)) Nil!74532)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1277 (List!74656 List!74656) Unit!169678)

(assert (=> b!7944134 (= lt!2697538 (lemmaAddHeadSuffixToPrefixStillPrefix!1277 testedP!447 input!7927))))

(declare-fun lt!2697548 () Unit!169678)

(declare-fun lt!2697550 () Unit!169678)

(assert (=> b!7944134 (= lt!2697548 lt!2697550)))

(assert (=> b!7944134 (= lt!2697550 (lemmaAddHeadSuffixToPrefixStillPrefix!1277 testedP!447 input!7927))))

(assert (=> b!7944134 (= lt!2697547 (++!18312 testedP!447 (Cons!74532 (head!16200 (getSuffix!3730 input!7927 testedP!447)) Nil!74532)))))

(declare-fun lt!2697549 () Unit!169678)

(declare-fun e!4687073 () Unit!169678)

(assert (=> b!7944134 (= lt!2697549 e!4687073)))

(declare-fun c!1459411 () Bool)

(assert (=> b!7944134 (= c!1459411 (= (size!43363 testedP!447) (size!43363 input!7927)))))

(declare-fun lt!2697557 () Unit!169678)

(declare-fun lt!2697545 () Unit!169678)

(assert (=> b!7944134 (= lt!2697557 lt!2697545)))

(assert (=> b!7944134 (<= (size!43363 testedP!447) (size!43363 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1057 (List!74656 List!74656) Unit!169678)

(assert (=> b!7944134 (= lt!2697545 (lemmaIsPrefixThenSmallerEqSize!1057 testedP!447 input!7927))))

(declare-fun e!4687074 () tuple2!70516)

(assert (=> b!7944134 (= e!4687074 e!4687070)))

(declare-fun bm!736239 () Bool)

(declare-fun call!736246 () Unit!169678)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1592 (List!74656 List!74656 List!74656) Unit!169678)

(assert (=> bm!736239 (= call!736246 (lemmaIsPrefixSameLengthThenSameList!1592 input!7927 testedP!447 input!7927))))

(declare-fun b!7944135 () Bool)

(declare-fun e!4687067 () tuple2!70516)

(assert (=> b!7944135 (= e!4687067 (tuple2!70517 testedP!447 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun b!7944136 () Bool)

(assert (=> b!7944136 (= e!4687070 e!4687067)))

(declare-fun lt!2697546 () tuple2!70516)

(assert (=> b!7944136 (= lt!2697546 call!736242)))

(declare-fun c!1459406 () Bool)

(assert (=> b!7944136 (= c!1459406 (isEmpty!42831 (_1!38561 lt!2697546)))))

(declare-fun bm!736240 () Bool)

(declare-fun call!736245 () C!43192)

(assert (=> bm!736240 (= call!736243 (derivativeStep!6478 r!24602 call!736245))))

(declare-fun b!7944137 () Bool)

(declare-fun Unit!169683 () Unit!169678)

(assert (=> b!7944137 (= e!4687073 Unit!169683)))

(declare-fun lt!2697537 () Unit!169678)

(declare-fun call!736247 () Unit!169678)

(assert (=> b!7944137 (= lt!2697537 call!736247)))

(declare-fun call!736244 () Bool)

(assert (=> b!7944137 call!736244))

(declare-fun lt!2697540 () Unit!169678)

(assert (=> b!7944137 (= lt!2697540 lt!2697537)))

(declare-fun lt!2697539 () Unit!169678)

(assert (=> b!7944137 (= lt!2697539 call!736246)))

(assert (=> b!7944137 (= input!7927 testedP!447)))

(declare-fun lt!2697534 () Unit!169678)

(assert (=> b!7944137 (= lt!2697534 lt!2697539)))

(assert (=> b!7944137 false))

(declare-fun b!7944138 () Bool)

(assert (=> b!7944138 (= e!4687071 (tuple2!70517 Nil!74532 input!7927))))

(declare-fun b!7944139 () Bool)

(declare-fun e!4687069 () Bool)

(assert (=> b!7944139 (= e!4687069 e!4687072)))

(declare-fun res!3151077 () Bool)

(assert (=> b!7944139 (=> res!3151077 e!4687072)))

(assert (=> b!7944139 (= res!3151077 (isEmpty!42831 (_1!38561 lt!2697535)))))

(declare-fun b!7944140 () Bool)

(declare-fun e!4687068 () tuple2!70516)

(assert (=> b!7944140 (= e!4687068 e!4687074)))

(declare-fun c!1459410 () Bool)

(assert (=> b!7944140 (= c!1459410 (= (size!43363 testedP!447) (size!43363 input!7927)))))

(declare-fun bm!736238 () Bool)

(assert (=> bm!736238 (= call!736245 (head!16200 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun d!2375316 () Bool)

(assert (=> d!2375316 e!4687069))

(declare-fun res!3151078 () Bool)

(assert (=> d!2375316 (=> (not res!3151078) (not e!4687069))))

(assert (=> d!2375316 (= res!3151078 (= (++!18312 (_1!38561 lt!2697535) (_2!38561 lt!2697535)) input!7927))))

(assert (=> d!2375316 (= lt!2697535 e!4687068)))

(declare-fun c!1459407 () Bool)

(declare-fun lostCause!1944 (Regex!21427) Bool)

(assert (=> d!2375316 (= c!1459407 (lostCause!1944 r!24602))))

(declare-fun lt!2697560 () Unit!169678)

(declare-fun Unit!169686 () Unit!169678)

(assert (=> d!2375316 (= lt!2697560 Unit!169686)))

(assert (=> d!2375316 (= (getSuffix!3730 input!7927 testedP!447) (getSuffix!3730 input!7927 testedP!447))))

(declare-fun lt!2697559 () Unit!169678)

(declare-fun lt!2697533 () Unit!169678)

(assert (=> d!2375316 (= lt!2697559 lt!2697533)))

(declare-fun lt!2697556 () List!74656)

(assert (=> d!2375316 (= (getSuffix!3730 input!7927 testedP!447) lt!2697556)))

(declare-fun lemmaSamePrefixThenSameSuffix!2960 (List!74656 List!74656 List!74656 List!74656 List!74656) Unit!169678)

(assert (=> d!2375316 (= lt!2697533 (lemmaSamePrefixThenSameSuffix!2960 testedP!447 (getSuffix!3730 input!7927 testedP!447) testedP!447 lt!2697556 input!7927))))

(assert (=> d!2375316 (= lt!2697556 (getSuffix!3730 input!7927 testedP!447))))

(declare-fun lt!2697558 () Unit!169678)

(declare-fun lt!2697543 () Unit!169678)

(assert (=> d!2375316 (= lt!2697558 lt!2697543)))

(assert (=> d!2375316 (isPrefix!6527 testedP!447 (++!18312 testedP!447 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3822 (List!74656 List!74656) Unit!169678)

(assert (=> d!2375316 (= lt!2697543 (lemmaConcatTwoListThenFirstIsPrefix!3822 testedP!447 (getSuffix!3730 input!7927 testedP!447)))))

(assert (=> d!2375316 (validRegex!11731 r!24602)))

(assert (=> d!2375316 (= (findLongestMatchInner!2208 r!24602 testedP!447 (size!43363 testedP!447) (getSuffix!3730 input!7927 testedP!447) input!7927 (size!43363 input!7927)) lt!2697535)))

(declare-fun bm!736241 () Bool)

(assert (=> bm!736241 (= call!736248 (tail!15743 (getSuffix!3730 input!7927 testedP!447)))))

(declare-fun b!7944141 () Bool)

(declare-fun c!1459409 () Bool)

(assert (=> b!7944141 (= c!1459409 call!736241)))

(declare-fun lt!2697551 () Unit!169678)

(declare-fun lt!2697552 () Unit!169678)

(assert (=> b!7944141 (= lt!2697551 lt!2697552)))

(assert (=> b!7944141 (= input!7927 testedP!447)))

(assert (=> b!7944141 (= lt!2697552 call!736246)))

(declare-fun lt!2697544 () Unit!169678)

(declare-fun lt!2697553 () Unit!169678)

(assert (=> b!7944141 (= lt!2697544 lt!2697553)))

(assert (=> b!7944141 call!736244))

(assert (=> b!7944141 (= lt!2697553 call!736247)))

(assert (=> b!7944141 (= e!4687074 e!4687071)))

(declare-fun b!7944142 () Bool)

(declare-fun Unit!169687 () Unit!169678)

(assert (=> b!7944142 (= e!4687073 Unit!169687)))

(declare-fun bm!736242 () Bool)

(declare-fun lemmaIsPrefixRefl!4010 (List!74656 List!74656) Unit!169678)

(assert (=> bm!736242 (= call!736247 (lemmaIsPrefixRefl!4010 input!7927 input!7927))))

(declare-fun b!7944143 () Bool)

(assert (=> b!7944143 (= e!4687067 lt!2697546)))

(declare-fun bm!736243 () Bool)

(assert (=> bm!736243 (= call!736244 (isPrefix!6527 input!7927 input!7927))))

(declare-fun b!7944144 () Bool)

(assert (=> b!7944144 (= e!4687068 (tuple2!70517 Nil!74532 input!7927))))

(assert (= (and d!2375316 c!1459407) b!7944144))

(assert (= (and d!2375316 (not c!1459407)) b!7944140))

(assert (= (and b!7944140 c!1459410) b!7944141))

(assert (= (and b!7944140 (not c!1459410)) b!7944134))

(assert (= (and b!7944141 c!1459409) b!7944131))

(assert (= (and b!7944141 (not c!1459409)) b!7944138))

(assert (= (and b!7944134 c!1459411) b!7944137))

(assert (= (and b!7944134 (not c!1459411)) b!7944142))

(assert (= (and b!7944134 c!1459408) b!7944136))

(assert (= (and b!7944134 (not c!1459408)) b!7944132))

(assert (= (and b!7944136 c!1459406) b!7944135))

(assert (= (and b!7944136 (not c!1459406)) b!7944143))

(assert (= (or b!7944136 b!7944132) bm!736238))

(assert (= (or b!7944136 b!7944132) bm!736241))

(assert (= (or b!7944136 b!7944132) bm!736240))

(assert (= (or b!7944136 b!7944132) bm!736236))

(assert (= (or b!7944141 b!7944134) bm!736237))

(assert (= (or b!7944141 b!7944137) bm!736239))

(assert (= (or b!7944141 b!7944137) bm!736242))

(assert (= (or b!7944141 b!7944137) bm!736243))

(assert (= (and d!2375316 res!3151078) b!7944139))

(assert (= (and b!7944139 (not res!3151077)) b!7944133))

(declare-fun m!8331404 () Bool)

(assert (=> bm!736243 m!8331404))

(declare-fun m!8331406 () Bool)

(assert (=> bm!736240 m!8331406))

(declare-fun m!8331408 () Bool)

(assert (=> bm!736237 m!8331408))

(declare-fun m!8331410 () Bool)

(assert (=> bm!736239 m!8331410))

(declare-fun m!8331412 () Bool)

(assert (=> b!7944136 m!8331412))

(assert (=> bm!736241 m!8331368))

(declare-fun m!8331414 () Bool)

(assert (=> bm!736241 m!8331414))

(assert (=> b!7944134 m!8331368))

(declare-fun m!8331416 () Bool)

(assert (=> b!7944134 m!8331416))

(declare-fun m!8331418 () Bool)

(assert (=> b!7944134 m!8331418))

(assert (=> b!7944134 m!8331368))

(declare-fun m!8331420 () Bool)

(assert (=> b!7944134 m!8331420))

(assert (=> b!7944134 m!8331364))

(declare-fun m!8331422 () Bool)

(assert (=> b!7944134 m!8331422))

(assert (=> b!7944134 m!8331366))

(assert (=> b!7944134 m!8331368))

(assert (=> b!7944134 m!8331416))

(declare-fun m!8331424 () Bool)

(assert (=> b!7944134 m!8331424))

(declare-fun m!8331426 () Bool)

(assert (=> b!7944134 m!8331426))

(assert (=> b!7944134 m!8331420))

(declare-fun m!8331428 () Bool)

(assert (=> b!7944134 m!8331428))

(assert (=> b!7944134 m!8331426))

(declare-fun m!8331430 () Bool)

(assert (=> b!7944134 m!8331430))

(assert (=> b!7944134 m!8331368))

(assert (=> b!7944134 m!8331414))

(assert (=> b!7944134 m!8331426))

(assert (=> bm!736238 m!8331368))

(assert (=> bm!736238 m!8331416))

(assert (=> bm!736236 m!8331364))

(declare-fun m!8331432 () Bool)

(assert (=> bm!736236 m!8331432))

(assert (=> d!2375316 m!8331368))

(assert (=> d!2375316 m!8331368))

(declare-fun m!8331434 () Bool)

(assert (=> d!2375316 m!8331434))

(assert (=> d!2375316 m!8331368))

(declare-fun m!8331436 () Bool)

(assert (=> d!2375316 m!8331436))

(assert (=> d!2375316 m!8331434))

(declare-fun m!8331438 () Bool)

(assert (=> d!2375316 m!8331438))

(declare-fun m!8331440 () Bool)

(assert (=> d!2375316 m!8331440))

(assert (=> d!2375316 m!8331362))

(assert (=> d!2375316 m!8331368))

(declare-fun m!8331442 () Bool)

(assert (=> d!2375316 m!8331442))

(declare-fun m!8331444 () Bool)

(assert (=> d!2375316 m!8331444))

(declare-fun m!8331446 () Bool)

(assert (=> bm!736242 m!8331446))

(declare-fun m!8331448 () Bool)

(assert (=> b!7944133 m!8331448))

(assert (=> b!7944133 m!8331366))

(declare-fun m!8331450 () Bool)

(assert (=> b!7944139 m!8331450))

(assert (=> b!7944036 d!2375316))

(declare-fun b!7944173 () Bool)

(declare-fun e!4687093 () Bool)

(assert (=> b!7944173 (= e!4687093 (isPrefix!6527 (tail!15743 testedP!447) (tail!15743 input!7927)))))

(declare-fun b!7944172 () Bool)

(declare-fun res!3151090 () Bool)

(assert (=> b!7944172 (=> (not res!3151090) (not e!4687093))))

(assert (=> b!7944172 (= res!3151090 (= (head!16200 testedP!447) (head!16200 input!7927)))))

(declare-fun b!7944174 () Bool)

(declare-fun e!4687091 () Bool)

(assert (=> b!7944174 (= e!4687091 (>= (size!43363 input!7927) (size!43363 testedP!447)))))

(declare-fun d!2375324 () Bool)

(assert (=> d!2375324 e!4687091))

(declare-fun res!3151091 () Bool)

(assert (=> d!2375324 (=> res!3151091 e!4687091)))

(declare-fun lt!2697593 () Bool)

(assert (=> d!2375324 (= res!3151091 (not lt!2697593))))

(declare-fun e!4687092 () Bool)

(assert (=> d!2375324 (= lt!2697593 e!4687092)))

(declare-fun res!3151092 () Bool)

(assert (=> d!2375324 (=> res!3151092 e!4687092)))

(assert (=> d!2375324 (= res!3151092 ((_ is Nil!74532) testedP!447))))

(assert (=> d!2375324 (= (isPrefix!6527 testedP!447 input!7927) lt!2697593)))

(declare-fun b!7944171 () Bool)

(assert (=> b!7944171 (= e!4687092 e!4687093)))

(declare-fun res!3151089 () Bool)

(assert (=> b!7944171 (=> (not res!3151089) (not e!4687093))))

(assert (=> b!7944171 (= res!3151089 (not ((_ is Nil!74532) input!7927)))))

(assert (= (and d!2375324 (not res!3151092)) b!7944171))

(assert (= (and b!7944171 res!3151089) b!7944172))

(assert (= (and b!7944172 res!3151090) b!7944173))

(assert (= (and d!2375324 (not res!3151091)) b!7944174))

(declare-fun m!8331500 () Bool)

(assert (=> b!7944173 m!8331500))

(assert (=> b!7944173 m!8331390))

(assert (=> b!7944173 m!8331500))

(assert (=> b!7944173 m!8331390))

(declare-fun m!8331502 () Bool)

(assert (=> b!7944173 m!8331502))

(declare-fun m!8331504 () Bool)

(assert (=> b!7944172 m!8331504))

(declare-fun m!8331506 () Bool)

(assert (=> b!7944172 m!8331506))

(assert (=> b!7944174 m!8331364))

(assert (=> b!7944174 m!8331366))

(assert (=> b!7944031 d!2375324))

(declare-fun b!7944213 () Bool)

(declare-fun e!4687123 () Bool)

(declare-fun e!4687126 () Bool)

(assert (=> b!7944213 (= e!4687123 e!4687126)))

(declare-fun res!3151117 () Bool)

(assert (=> b!7944213 (=> (not res!3151117) (not e!4687126))))

(declare-fun call!736270 () Bool)

(assert (=> b!7944213 (= res!3151117 call!736270)))

(declare-fun b!7944214 () Bool)

(declare-fun e!4687127 () Bool)

(declare-fun call!736269 () Bool)

(assert (=> b!7944214 (= e!4687127 call!736269)))

(declare-fun b!7944215 () Bool)

(assert (=> b!7944215 (= e!4687126 call!736269)))

(declare-fun b!7944216 () Bool)

(declare-fun e!4687124 () Bool)

(declare-fun e!4687129 () Bool)

(assert (=> b!7944216 (= e!4687124 e!4687129)))

(declare-fun c!1459429 () Bool)

(assert (=> b!7944216 (= c!1459429 ((_ is Star!21427) r!24602))))

(declare-fun b!7944217 () Bool)

(declare-fun res!3151113 () Bool)

(assert (=> b!7944217 (=> res!3151113 e!4687123)))

(assert (=> b!7944217 (= res!3151113 (not ((_ is Concat!30426) r!24602)))))

(declare-fun e!4687128 () Bool)

(assert (=> b!7944217 (= e!4687128 e!4687123)))

(declare-fun bm!736264 () Bool)

(declare-fun c!1459430 () Bool)

(assert (=> bm!736264 (= call!736269 (validRegex!11731 (ite c!1459430 (regTwo!43367 r!24602) (regTwo!43366 r!24602))))))

(declare-fun d!2375328 () Bool)

(declare-fun res!3151116 () Bool)

(assert (=> d!2375328 (=> res!3151116 e!4687124)))

(assert (=> d!2375328 (= res!3151116 ((_ is ElementMatch!21427) r!24602))))

(assert (=> d!2375328 (= (validRegex!11731 r!24602) e!4687124)))

(declare-fun call!736271 () Bool)

(declare-fun bm!736265 () Bool)

(assert (=> bm!736265 (= call!736271 (validRegex!11731 (ite c!1459429 (reg!21756 r!24602) (ite c!1459430 (regOne!43367 r!24602) (regOne!43366 r!24602)))))))

(declare-fun b!7944218 () Bool)

(declare-fun res!3151115 () Bool)

(assert (=> b!7944218 (=> (not res!3151115) (not e!4687127))))

(assert (=> b!7944218 (= res!3151115 call!736270)))

(assert (=> b!7944218 (= e!4687128 e!4687127)))

(declare-fun bm!736266 () Bool)

(assert (=> bm!736266 (= call!736270 call!736271)))

(declare-fun b!7944219 () Bool)

(assert (=> b!7944219 (= e!4687129 e!4687128)))

(assert (=> b!7944219 (= c!1459430 ((_ is Union!21427) r!24602))))

(declare-fun b!7944220 () Bool)

(declare-fun e!4687125 () Bool)

(assert (=> b!7944220 (= e!4687129 e!4687125)))

(declare-fun res!3151114 () Bool)

(assert (=> b!7944220 (= res!3151114 (not (nullable!9541 (reg!21756 r!24602))))))

(assert (=> b!7944220 (=> (not res!3151114) (not e!4687125))))

(declare-fun b!7944221 () Bool)

(assert (=> b!7944221 (= e!4687125 call!736271)))

(assert (= (and d!2375328 (not res!3151116)) b!7944216))

(assert (= (and b!7944216 c!1459429) b!7944220))

(assert (= (and b!7944216 (not c!1459429)) b!7944219))

(assert (= (and b!7944220 res!3151114) b!7944221))

(assert (= (and b!7944219 c!1459430) b!7944218))

(assert (= (and b!7944219 (not c!1459430)) b!7944217))

(assert (= (and b!7944218 res!3151115) b!7944214))

(assert (= (and b!7944217 (not res!3151113)) b!7944213))

(assert (= (and b!7944213 res!3151117) b!7944215))

(assert (= (or b!7944214 b!7944215) bm!736264))

(assert (= (or b!7944218 b!7944213) bm!736266))

(assert (= (or b!7944221 bm!736266) bm!736265))

(declare-fun m!8331514 () Bool)

(assert (=> bm!736264 m!8331514))

(declare-fun m!8331516 () Bool)

(assert (=> bm!736265 m!8331516))

(declare-fun m!8331518 () Bool)

(assert (=> b!7944220 m!8331518))

(assert (=> b!7944035 d!2375328))

(declare-fun b!7944231 () Bool)

(declare-fun e!4687137 () Bool)

(declare-fun e!4687140 () Bool)

(assert (=> b!7944231 (= e!4687137 e!4687140)))

(declare-fun res!3151127 () Bool)

(assert (=> b!7944231 (=> (not res!3151127) (not e!4687140))))

(declare-fun call!736276 () Bool)

(assert (=> b!7944231 (= res!3151127 call!736276)))

(declare-fun b!7944232 () Bool)

(declare-fun e!4687141 () Bool)

(declare-fun call!736275 () Bool)

(assert (=> b!7944232 (= e!4687141 call!736275)))

(declare-fun b!7944233 () Bool)

(assert (=> b!7944233 (= e!4687140 call!736275)))

(declare-fun b!7944234 () Bool)

(declare-fun e!4687138 () Bool)

(declare-fun e!4687143 () Bool)

(assert (=> b!7944234 (= e!4687138 e!4687143)))

(declare-fun c!1459433 () Bool)

(assert (=> b!7944234 (= c!1459433 ((_ is Star!21427) baseR!116))))

(declare-fun b!7944235 () Bool)

(declare-fun res!3151123 () Bool)

(assert (=> b!7944235 (=> res!3151123 e!4687137)))

(assert (=> b!7944235 (= res!3151123 (not ((_ is Concat!30426) baseR!116)))))

(declare-fun e!4687142 () Bool)

(assert (=> b!7944235 (= e!4687142 e!4687137)))

(declare-fun bm!736270 () Bool)

(declare-fun c!1459434 () Bool)

(assert (=> bm!736270 (= call!736275 (validRegex!11731 (ite c!1459434 (regTwo!43367 baseR!116) (regTwo!43366 baseR!116))))))

(declare-fun d!2375332 () Bool)

(declare-fun res!3151126 () Bool)

(assert (=> d!2375332 (=> res!3151126 e!4687138)))

(assert (=> d!2375332 (= res!3151126 ((_ is ElementMatch!21427) baseR!116))))

(assert (=> d!2375332 (= (validRegex!11731 baseR!116) e!4687138)))

(declare-fun bm!736271 () Bool)

(declare-fun call!736277 () Bool)

(assert (=> bm!736271 (= call!736277 (validRegex!11731 (ite c!1459433 (reg!21756 baseR!116) (ite c!1459434 (regOne!43367 baseR!116) (regOne!43366 baseR!116)))))))

(declare-fun b!7944236 () Bool)

(declare-fun res!3151125 () Bool)

(assert (=> b!7944236 (=> (not res!3151125) (not e!4687141))))

(assert (=> b!7944236 (= res!3151125 call!736276)))

(assert (=> b!7944236 (= e!4687142 e!4687141)))

(declare-fun bm!736272 () Bool)

(assert (=> bm!736272 (= call!736276 call!736277)))

(declare-fun b!7944237 () Bool)

(assert (=> b!7944237 (= e!4687143 e!4687142)))

(assert (=> b!7944237 (= c!1459434 ((_ is Union!21427) baseR!116))))

(declare-fun b!7944238 () Bool)

(declare-fun e!4687139 () Bool)

(assert (=> b!7944238 (= e!4687143 e!4687139)))

(declare-fun res!3151124 () Bool)

(assert (=> b!7944238 (= res!3151124 (not (nullable!9541 (reg!21756 baseR!116))))))

(assert (=> b!7944238 (=> (not res!3151124) (not e!4687139))))

(declare-fun b!7944239 () Bool)

(assert (=> b!7944239 (= e!4687139 call!736277)))

(assert (= (and d!2375332 (not res!3151126)) b!7944234))

(assert (= (and b!7944234 c!1459433) b!7944238))

(assert (= (and b!7944234 (not c!1459433)) b!7944237))

(assert (= (and b!7944238 res!3151124) b!7944239))

(assert (= (and b!7944237 c!1459434) b!7944236))

(assert (= (and b!7944237 (not c!1459434)) b!7944235))

(assert (= (and b!7944236 res!3151125) b!7944232))

(assert (= (and b!7944235 (not res!3151123)) b!7944231))

(assert (= (and b!7944231 res!3151127) b!7944233))

(assert (= (or b!7944232 b!7944233) bm!736270))

(assert (= (or b!7944236 b!7944231) bm!736272))

(assert (= (or b!7944239 bm!736272) bm!736271))

(declare-fun m!8331526 () Bool)

(assert (=> bm!736270 m!8331526))

(declare-fun m!8331528 () Bool)

(assert (=> bm!736271 m!8331528))

(declare-fun m!8331530 () Bool)

(assert (=> b!7944238 m!8331530))

(assert (=> start!749752 d!2375332))

(declare-fun e!4687153 () Bool)

(assert (=> b!7944027 (= tp!2362681 e!4687153)))

(declare-fun b!7944259 () Bool)

(assert (=> b!7944259 (= e!4687153 tp_is_empty!53397)))

(declare-fun b!7944261 () Bool)

(declare-fun tp!2362700 () Bool)

(assert (=> b!7944261 (= e!4687153 tp!2362700)))

(declare-fun b!7944260 () Bool)

(declare-fun tp!2362698 () Bool)

(declare-fun tp!2362699 () Bool)

(assert (=> b!7944260 (= e!4687153 (and tp!2362698 tp!2362699))))

(declare-fun b!7944262 () Bool)

(declare-fun tp!2362697 () Bool)

(declare-fun tp!2362701 () Bool)

(assert (=> b!7944262 (= e!4687153 (and tp!2362697 tp!2362701))))

(assert (= (and b!7944027 ((_ is ElementMatch!21427) (reg!21756 baseR!116))) b!7944259))

(assert (= (and b!7944027 ((_ is Concat!30426) (reg!21756 baseR!116))) b!7944260))

(assert (= (and b!7944027 ((_ is Star!21427) (reg!21756 baseR!116))) b!7944261))

(assert (= (and b!7944027 ((_ is Union!21427) (reg!21756 baseR!116))) b!7944262))

(declare-fun b!7944267 () Bool)

(declare-fun e!4687156 () Bool)

(declare-fun tp!2362704 () Bool)

(assert (=> b!7944267 (= e!4687156 (and tp_is_empty!53397 tp!2362704))))

(assert (=> b!7944037 (= tp!2362675 e!4687156)))

(assert (= (and b!7944037 ((_ is Cons!74532) (t!390399 input!7927))) b!7944267))

(declare-fun e!4687157 () Bool)

(assert (=> b!7944030 (= tp!2362684 e!4687157)))

(declare-fun b!7944268 () Bool)

(assert (=> b!7944268 (= e!4687157 tp_is_empty!53397)))

(declare-fun b!7944270 () Bool)

(declare-fun tp!2362708 () Bool)

(assert (=> b!7944270 (= e!4687157 tp!2362708)))

(declare-fun b!7944269 () Bool)

(declare-fun tp!2362706 () Bool)

(declare-fun tp!2362707 () Bool)

(assert (=> b!7944269 (= e!4687157 (and tp!2362706 tp!2362707))))

(declare-fun b!7944271 () Bool)

(declare-fun tp!2362705 () Bool)

(declare-fun tp!2362709 () Bool)

(assert (=> b!7944271 (= e!4687157 (and tp!2362705 tp!2362709))))

(assert (= (and b!7944030 ((_ is ElementMatch!21427) (regOne!43367 baseR!116))) b!7944268))

(assert (= (and b!7944030 ((_ is Concat!30426) (regOne!43367 baseR!116))) b!7944269))

(assert (= (and b!7944030 ((_ is Star!21427) (regOne!43367 baseR!116))) b!7944270))

(assert (= (and b!7944030 ((_ is Union!21427) (regOne!43367 baseR!116))) b!7944271))

(declare-fun e!4687158 () Bool)

(assert (=> b!7944030 (= tp!2362683 e!4687158)))

(declare-fun b!7944272 () Bool)

(assert (=> b!7944272 (= e!4687158 tp_is_empty!53397)))

(declare-fun b!7944274 () Bool)

(declare-fun tp!2362713 () Bool)

(assert (=> b!7944274 (= e!4687158 tp!2362713)))

(declare-fun b!7944273 () Bool)

(declare-fun tp!2362711 () Bool)

(declare-fun tp!2362712 () Bool)

(assert (=> b!7944273 (= e!4687158 (and tp!2362711 tp!2362712))))

(declare-fun b!7944275 () Bool)

(declare-fun tp!2362710 () Bool)

(declare-fun tp!2362714 () Bool)

(assert (=> b!7944275 (= e!4687158 (and tp!2362710 tp!2362714))))

(assert (= (and b!7944030 ((_ is ElementMatch!21427) (regTwo!43367 baseR!116))) b!7944272))

(assert (= (and b!7944030 ((_ is Concat!30426) (regTwo!43367 baseR!116))) b!7944273))

(assert (= (and b!7944030 ((_ is Star!21427) (regTwo!43367 baseR!116))) b!7944274))

(assert (= (and b!7944030 ((_ is Union!21427) (regTwo!43367 baseR!116))) b!7944275))

(declare-fun b!7944276 () Bool)

(declare-fun e!4687159 () Bool)

(declare-fun tp!2362715 () Bool)

(assert (=> b!7944276 (= e!4687159 (and tp_is_empty!53397 tp!2362715))))

(assert (=> b!7944040 (= tp!2362679 e!4687159)))

(assert (= (and b!7944040 ((_ is Cons!74532) (t!390399 testedP!447))) b!7944276))

(declare-fun e!4687160 () Bool)

(assert (=> b!7944034 (= tp!2362678 e!4687160)))

(declare-fun b!7944277 () Bool)

(assert (=> b!7944277 (= e!4687160 tp_is_empty!53397)))

(declare-fun b!7944279 () Bool)

(declare-fun tp!2362719 () Bool)

(assert (=> b!7944279 (= e!4687160 tp!2362719)))

(declare-fun b!7944278 () Bool)

(declare-fun tp!2362717 () Bool)

(declare-fun tp!2362718 () Bool)

(assert (=> b!7944278 (= e!4687160 (and tp!2362717 tp!2362718))))

(declare-fun b!7944280 () Bool)

(declare-fun tp!2362716 () Bool)

(declare-fun tp!2362720 () Bool)

(assert (=> b!7944280 (= e!4687160 (and tp!2362716 tp!2362720))))

(assert (= (and b!7944034 ((_ is ElementMatch!21427) (regOne!43366 r!24602))) b!7944277))

(assert (= (and b!7944034 ((_ is Concat!30426) (regOne!43366 r!24602))) b!7944278))

(assert (= (and b!7944034 ((_ is Star!21427) (regOne!43366 r!24602))) b!7944279))

(assert (= (and b!7944034 ((_ is Union!21427) (regOne!43366 r!24602))) b!7944280))

(declare-fun e!4687161 () Bool)

(assert (=> b!7944034 (= tp!2362682 e!4687161)))

(declare-fun b!7944281 () Bool)

(assert (=> b!7944281 (= e!4687161 tp_is_empty!53397)))

(declare-fun b!7944283 () Bool)

(declare-fun tp!2362724 () Bool)

(assert (=> b!7944283 (= e!4687161 tp!2362724)))

(declare-fun b!7944282 () Bool)

(declare-fun tp!2362722 () Bool)

(declare-fun tp!2362723 () Bool)

(assert (=> b!7944282 (= e!4687161 (and tp!2362722 tp!2362723))))

(declare-fun b!7944284 () Bool)

(declare-fun tp!2362721 () Bool)

(declare-fun tp!2362725 () Bool)

(assert (=> b!7944284 (= e!4687161 (and tp!2362721 tp!2362725))))

(assert (= (and b!7944034 ((_ is ElementMatch!21427) (regTwo!43366 r!24602))) b!7944281))

(assert (= (and b!7944034 ((_ is Concat!30426) (regTwo!43366 r!24602))) b!7944282))

(assert (= (and b!7944034 ((_ is Star!21427) (regTwo!43366 r!24602))) b!7944283))

(assert (= (and b!7944034 ((_ is Union!21427) (regTwo!43366 r!24602))) b!7944284))

(declare-fun e!4687162 () Bool)

(assert (=> b!7944029 (= tp!2362676 e!4687162)))

(declare-fun b!7944285 () Bool)

(assert (=> b!7944285 (= e!4687162 tp_is_empty!53397)))

(declare-fun b!7944287 () Bool)

(declare-fun tp!2362729 () Bool)

(assert (=> b!7944287 (= e!4687162 tp!2362729)))

(declare-fun b!7944286 () Bool)

(declare-fun tp!2362727 () Bool)

(declare-fun tp!2362728 () Bool)

(assert (=> b!7944286 (= e!4687162 (and tp!2362727 tp!2362728))))

(declare-fun b!7944288 () Bool)

(declare-fun tp!2362726 () Bool)

(declare-fun tp!2362730 () Bool)

(assert (=> b!7944288 (= e!4687162 (and tp!2362726 tp!2362730))))

(assert (= (and b!7944029 ((_ is ElementMatch!21427) (reg!21756 r!24602))) b!7944285))

(assert (= (and b!7944029 ((_ is Concat!30426) (reg!21756 r!24602))) b!7944286))

(assert (= (and b!7944029 ((_ is Star!21427) (reg!21756 r!24602))) b!7944287))

(assert (= (and b!7944029 ((_ is Union!21427) (reg!21756 r!24602))) b!7944288))

(declare-fun e!4687167 () Bool)

(assert (=> b!7944028 (= tp!2362680 e!4687167)))

(declare-fun b!7944293 () Bool)

(assert (=> b!7944293 (= e!4687167 tp_is_empty!53397)))

(declare-fun b!7944295 () Bool)

(declare-fun tp!2362734 () Bool)

(assert (=> b!7944295 (= e!4687167 tp!2362734)))

(declare-fun b!7944294 () Bool)

(declare-fun tp!2362732 () Bool)

(declare-fun tp!2362733 () Bool)

(assert (=> b!7944294 (= e!4687167 (and tp!2362732 tp!2362733))))

(declare-fun b!7944296 () Bool)

(declare-fun tp!2362731 () Bool)

(declare-fun tp!2362735 () Bool)

(assert (=> b!7944296 (= e!4687167 (and tp!2362731 tp!2362735))))

(assert (= (and b!7944028 ((_ is ElementMatch!21427) (regOne!43366 baseR!116))) b!7944293))

(assert (= (and b!7944028 ((_ is Concat!30426) (regOne!43366 baseR!116))) b!7944294))

(assert (= (and b!7944028 ((_ is Star!21427) (regOne!43366 baseR!116))) b!7944295))

(assert (= (and b!7944028 ((_ is Union!21427) (regOne!43366 baseR!116))) b!7944296))

(declare-fun e!4687170 () Bool)

(assert (=> b!7944028 (= tp!2362686 e!4687170)))

(declare-fun b!7944301 () Bool)

(assert (=> b!7944301 (= e!4687170 tp_is_empty!53397)))

(declare-fun b!7944303 () Bool)

(declare-fun tp!2362739 () Bool)

(assert (=> b!7944303 (= e!4687170 tp!2362739)))

(declare-fun b!7944302 () Bool)

(declare-fun tp!2362737 () Bool)

(declare-fun tp!2362738 () Bool)

(assert (=> b!7944302 (= e!4687170 (and tp!2362737 tp!2362738))))

(declare-fun b!7944304 () Bool)

(declare-fun tp!2362736 () Bool)

(declare-fun tp!2362740 () Bool)

(assert (=> b!7944304 (= e!4687170 (and tp!2362736 tp!2362740))))

(assert (= (and b!7944028 ((_ is ElementMatch!21427) (regTwo!43366 baseR!116))) b!7944301))

(assert (= (and b!7944028 ((_ is Concat!30426) (regTwo!43366 baseR!116))) b!7944302))

(assert (= (and b!7944028 ((_ is Star!21427) (regTwo!43366 baseR!116))) b!7944303))

(assert (= (and b!7944028 ((_ is Union!21427) (regTwo!43366 baseR!116))) b!7944304))

(declare-fun e!4687171 () Bool)

(assert (=> b!7944039 (= tp!2362677 e!4687171)))

(declare-fun b!7944305 () Bool)

(assert (=> b!7944305 (= e!4687171 tp_is_empty!53397)))

(declare-fun b!7944307 () Bool)

(declare-fun tp!2362744 () Bool)

(assert (=> b!7944307 (= e!4687171 tp!2362744)))

(declare-fun b!7944306 () Bool)

(declare-fun tp!2362742 () Bool)

(declare-fun tp!2362743 () Bool)

(assert (=> b!7944306 (= e!4687171 (and tp!2362742 tp!2362743))))

(declare-fun b!7944308 () Bool)

(declare-fun tp!2362741 () Bool)

(declare-fun tp!2362745 () Bool)

(assert (=> b!7944308 (= e!4687171 (and tp!2362741 tp!2362745))))

(assert (= (and b!7944039 ((_ is ElementMatch!21427) (regOne!43367 r!24602))) b!7944305))

(assert (= (and b!7944039 ((_ is Concat!30426) (regOne!43367 r!24602))) b!7944306))

(assert (= (and b!7944039 ((_ is Star!21427) (regOne!43367 r!24602))) b!7944307))

(assert (= (and b!7944039 ((_ is Union!21427) (regOne!43367 r!24602))) b!7944308))

(declare-fun e!4687172 () Bool)

(assert (=> b!7944039 (= tp!2362685 e!4687172)))

(declare-fun b!7944309 () Bool)

(assert (=> b!7944309 (= e!4687172 tp_is_empty!53397)))

(declare-fun b!7944311 () Bool)

(declare-fun tp!2362749 () Bool)

(assert (=> b!7944311 (= e!4687172 tp!2362749)))

(declare-fun b!7944310 () Bool)

(declare-fun tp!2362747 () Bool)

(declare-fun tp!2362748 () Bool)

(assert (=> b!7944310 (= e!4687172 (and tp!2362747 tp!2362748))))

(declare-fun b!7944312 () Bool)

(declare-fun tp!2362746 () Bool)

(declare-fun tp!2362750 () Bool)

(assert (=> b!7944312 (= e!4687172 (and tp!2362746 tp!2362750))))

(assert (= (and b!7944039 ((_ is ElementMatch!21427) (regTwo!43367 r!24602))) b!7944309))

(assert (= (and b!7944039 ((_ is Concat!30426) (regTwo!43367 r!24602))) b!7944310))

(assert (= (and b!7944039 ((_ is Star!21427) (regTwo!43367 r!24602))) b!7944311))

(assert (= (and b!7944039 ((_ is Union!21427) (regTwo!43367 r!24602))) b!7944312))

(check-sat (not bm!736270) (not b!7944302) (not b!7944308) (not b!7944267) (not b!7944274) (not bm!736239) (not b!7944261) (not b!7944134) (not b!7944271) (not b!7944280) (not b!7944133) (not b!7944312) (not b!7944296) (not b!7944173) (not bm!736236) (not b!7944220) (not bm!736241) (not b!7944288) (not b!7944273) (not b!7944283) (not b!7944303) (not bm!736240) (not b!7944306) (not bm!736265) (not b!7944270) (not d!2375302) (not b!7944287) (not b!7944279) (not bm!736271) (not d!2375316) (not b!7944275) (not bm!736243) (not b!7944066) (not d!2375306) (not b!7944276) tp_is_empty!53397 (not b!7944282) (not b!7944294) (not b!7944238) (not b!7944269) (not bm!736264) (not b!7944278) (not b!7944063) (not b!7944174) (not b!7944139) (not b!7944311) (not b!7944045) (not bm!736237) (not bm!736242) (not b!7944295) (not b!7944310) (not b!7944307) (not b!7944052) (not b!7944260) (not b!7944172) (not b!7944262) (not b!7944286) (not b!7944136) (not b!7944284) (not bm!736238) (not b!7944304))
(check-sat)
