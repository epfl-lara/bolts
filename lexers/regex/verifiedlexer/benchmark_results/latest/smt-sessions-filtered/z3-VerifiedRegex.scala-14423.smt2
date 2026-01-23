; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751624 () Bool)

(assert start!751624)

(declare-fun b!7969413 () Bool)

(declare-fun e!4699037 () Bool)

(declare-fun tp!2375759 () Bool)

(assert (=> b!7969413 (= e!4699037 tp!2375759)))

(declare-fun b!7969414 () Bool)

(declare-fun e!4699034 () Bool)

(declare-datatypes ((C!43392 0))(
  ( (C!43393 (val!32244 Int)) )
))
(declare-datatypes ((Regex!21527 0))(
  ( (ElementMatch!21527 (c!1463530 C!43392)) (Concat!30526 (regOne!43566 Regex!21527) (regTwo!43566 Regex!21527)) (EmptyExpr!21527) (Star!21527 (reg!21856 Regex!21527)) (EmptyLang!21527) (Union!21527 (regOne!43567 Regex!21527) (regTwo!43567 Regex!21527)) )
))
(declare-fun baseR!116 () Regex!21527)

(declare-datatypes ((List!74756 0))(
  ( (Nil!74632) (Cons!74632 (h!81080 C!43392) (t!390499 List!74756)) )
))
(declare-datatypes ((tuple2!70716 0))(
  ( (tuple2!70717 (_1!38661 List!74756) (_2!38661 List!74756)) )
))
(declare-fun lt!2707237 () tuple2!70716)

(declare-fun matchR!10750 (Regex!21527 List!74756) Bool)

(assert (=> b!7969414 (= e!4699034 (matchR!10750 baseR!116 (_1!38661 lt!2707237)))))

(declare-fun b!7969415 () Bool)

(declare-fun e!4699038 () Bool)

(declare-fun e!4699035 () Bool)

(assert (=> b!7969415 (= e!4699038 (not e!4699035))))

(declare-fun res!3157546 () Bool)

(assert (=> b!7969415 (=> res!3157546 e!4699035)))

(declare-fun lt!2707241 () Int)

(declare-fun lt!2707249 () Int)

(assert (=> b!7969415 (= res!3157546 (>= lt!2707241 lt!2707249))))

(declare-datatypes ((Unit!170264 0))(
  ( (Unit!170265) )
))
(declare-fun lt!2707236 () Unit!170264)

(declare-fun e!4699036 () Unit!170264)

(assert (=> b!7969415 (= lt!2707236 e!4699036)))

(declare-fun c!1463529 () Bool)

(assert (=> b!7969415 (= c!1463529 (= lt!2707241 lt!2707249))))

(assert (=> b!7969415 (<= lt!2707241 lt!2707249)))

(declare-fun lt!2707244 () Unit!170264)

(declare-fun testedP!447 () List!74756)

(declare-fun input!7927 () List!74756)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1144 (List!74756 List!74756) Unit!170264)

(assert (=> b!7969415 (= lt!2707244 (lemmaIsPrefixThenSmallerEqSize!1144 testedP!447 input!7927))))

(declare-fun b!7969416 () Bool)

(declare-fun e!4699032 () Bool)

(declare-fun tp!2375765 () Bool)

(declare-fun tp!2375760 () Bool)

(assert (=> b!7969416 (= e!4699032 (and tp!2375765 tp!2375760))))

(declare-fun b!7969417 () Bool)

(declare-fun e!4699040 () Bool)

(assert (=> b!7969417 (= e!4699035 e!4699040)))

(declare-fun res!3157544 () Bool)

(assert (=> b!7969417 (=> res!3157544 e!4699040)))

(declare-fun r!24602 () Regex!21527)

(declare-fun nullable!9626 (Regex!21527) Bool)

(assert (=> b!7969417 (= res!3157544 (nullable!9626 r!24602))))

(declare-fun lt!2707243 () List!74756)

(declare-fun isPrefix!6627 (List!74756 List!74756) Bool)

(assert (=> b!7969417 (isPrefix!6627 lt!2707243 input!7927)))

(declare-fun lt!2707247 () Unit!170264)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1354 (List!74756 List!74756) Unit!170264)

(assert (=> b!7969417 (= lt!2707247 (lemmaAddHeadSuffixToPrefixStillPrefix!1354 testedP!447 input!7927))))

(declare-fun lt!2707238 () C!43392)

(declare-fun ++!18397 (List!74756 List!74756) List!74756)

(assert (=> b!7969417 (= lt!2707243 (++!18397 testedP!447 (Cons!74632 lt!2707238 Nil!74632)))))

(declare-fun lt!2707245 () List!74756)

(declare-fun head!16279 (List!74756) C!43392)

(assert (=> b!7969417 (= lt!2707238 (head!16279 lt!2707245))))

(declare-fun b!7969419 () Bool)

(declare-fun tp!2375761 () Bool)

(declare-fun tp!2375758 () Bool)

(assert (=> b!7969419 (= e!4699037 (and tp!2375761 tp!2375758))))

(declare-fun b!7969420 () Bool)

(declare-fun tp_is_empty!53597 () Bool)

(assert (=> b!7969420 (= e!4699037 tp_is_empty!53597)))

(declare-fun b!7969421 () Bool)

(declare-fun res!3157542 () Bool)

(assert (=> b!7969421 (=> (not res!3157542) (not e!4699038))))

(assert (=> b!7969421 (= res!3157542 (not (= testedP!447 input!7927)))))

(declare-fun b!7969422 () Bool)

(assert (=> b!7969422 (= e!4699032 tp_is_empty!53597)))

(declare-fun b!7969423 () Bool)

(declare-fun e!4699041 () Bool)

(declare-fun tp!2375763 () Bool)

(assert (=> b!7969423 (= e!4699041 (and tp_is_empty!53597 tp!2375763))))

(declare-fun b!7969424 () Bool)

(declare-fun Unit!170266 () Unit!170264)

(assert (=> b!7969424 (= e!4699036 Unit!170266)))

(declare-fun b!7969425 () Bool)

(declare-fun tp!2375755 () Bool)

(assert (=> b!7969425 (= e!4699032 tp!2375755)))

(declare-fun b!7969426 () Bool)

(declare-fun res!3157543 () Bool)

(declare-fun e!4699039 () Bool)

(assert (=> b!7969426 (=> (not res!3157543) (not e!4699039))))

(assert (=> b!7969426 (= res!3157543 (isPrefix!6627 testedP!447 input!7927))))

(declare-fun b!7969427 () Bool)

(declare-fun e!4699033 () Bool)

(declare-fun tp!2375762 () Bool)

(assert (=> b!7969427 (= e!4699033 (and tp_is_empty!53597 tp!2375762))))

(declare-fun b!7969428 () Bool)

(declare-fun tp!2375766 () Bool)

(declare-fun tp!2375756 () Bool)

(assert (=> b!7969428 (= e!4699037 (and tp!2375766 tp!2375756))))

(declare-fun res!3157548 () Bool)

(assert (=> start!751624 (=> (not res!3157548) (not e!4699039))))

(declare-fun validRegex!11831 (Regex!21527) Bool)

(assert (=> start!751624 (= res!3157548 (validRegex!11831 baseR!116))))

(assert (=> start!751624 e!4699039))

(assert (=> start!751624 e!4699032))

(assert (=> start!751624 e!4699041))

(assert (=> start!751624 e!4699033))

(assert (=> start!751624 e!4699037))

(declare-fun b!7969418 () Bool)

(declare-fun tp!2375764 () Bool)

(declare-fun tp!2375757 () Bool)

(assert (=> b!7969418 (= e!4699032 (and tp!2375764 tp!2375757))))

(declare-fun b!7969429 () Bool)

(declare-fun Unit!170267 () Unit!170264)

(assert (=> b!7969429 (= e!4699036 Unit!170267)))

(declare-fun lt!2707235 () Unit!170264)

(declare-fun lemmaIsPrefixRefl!4095 (List!74756 List!74756) Unit!170264)

(assert (=> b!7969429 (= lt!2707235 (lemmaIsPrefixRefl!4095 input!7927 input!7927))))

(assert (=> b!7969429 (isPrefix!6627 input!7927 input!7927)))

(declare-fun lt!2707242 () Unit!170264)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1675 (List!74756 List!74756 List!74756) Unit!170264)

(assert (=> b!7969429 (= lt!2707242 (lemmaIsPrefixSameLengthThenSameList!1675 input!7927 testedP!447 input!7927))))

(assert (=> b!7969429 false))

(declare-fun b!7969430 () Bool)

(assert (=> b!7969430 (= e!4699039 e!4699038)))

(declare-fun res!3157541 () Bool)

(assert (=> b!7969430 (=> (not res!3157541) (not e!4699038))))

(declare-fun isEmpty!42933 (List!74756) Bool)

(declare-fun findLongestMatchInner!2308 (Regex!21527 List!74756 Int List!74756 List!74756 Int) tuple2!70716)

(assert (=> b!7969430 (= res!3157541 (not (isEmpty!42933 (_1!38661 (findLongestMatchInner!2308 r!24602 testedP!447 lt!2707241 lt!2707245 input!7927 lt!2707249)))))))

(declare-fun size!43463 (List!74756) Int)

(assert (=> b!7969430 (= lt!2707249 (size!43463 input!7927))))

(declare-fun getSuffix!3830 (List!74756 List!74756) List!74756)

(assert (=> b!7969430 (= lt!2707245 (getSuffix!3830 input!7927 testedP!447))))

(assert (=> b!7969430 (= lt!2707241 (size!43463 testedP!447))))

(declare-fun b!7969431 () Bool)

(assert (=> b!7969431 (= e!4699040 (validRegex!11831 r!24602))))

(assert (=> b!7969431 e!4699034))

(declare-fun res!3157545 () Bool)

(assert (=> b!7969431 (=> res!3157545 e!4699034)))

(assert (=> b!7969431 (= res!3157545 (isEmpty!42933 (_1!38661 lt!2707237)))))

(declare-fun lt!2707240 () Regex!21527)

(assert (=> b!7969431 (= lt!2707237 (findLongestMatchInner!2308 lt!2707240 lt!2707243 (size!43463 lt!2707243) (getSuffix!3830 input!7927 lt!2707243) input!7927 lt!2707249))))

(declare-fun lt!2707246 () Unit!170264)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!61 (Regex!21527 Regex!21527 List!74756 List!74756) Unit!170264)

(assert (=> b!7969431 (= lt!2707246 (longestMatchIsAcceptedByMatchOrIsEmptyRec!61 baseR!116 lt!2707240 lt!2707243 input!7927))))

(declare-fun lt!2707239 () Regex!21527)

(assert (=> b!7969431 (= lt!2707239 lt!2707240)))

(declare-fun derivativeStep!6553 (Regex!21527 C!43392) Regex!21527)

(assert (=> b!7969431 (= lt!2707240 (derivativeStep!6553 r!24602 lt!2707238))))

(declare-fun derivative!713 (Regex!21527 List!74756) Regex!21527)

(assert (=> b!7969431 (= lt!2707239 (derivative!713 baseR!116 lt!2707243))))

(declare-fun lt!2707248 () Unit!170264)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!235 (Regex!21527 Regex!21527 List!74756 C!43392) Unit!170264)

(assert (=> b!7969431 (= lt!2707248 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!235 baseR!116 r!24602 testedP!447 lt!2707238))))

(declare-fun b!7969432 () Bool)

(declare-fun res!3157547 () Bool)

(assert (=> b!7969432 (=> (not res!3157547) (not e!4699039))))

(assert (=> b!7969432 (= res!3157547 (= (derivative!713 baseR!116 testedP!447) r!24602))))

(assert (= (and start!751624 res!3157548) b!7969426))

(assert (= (and b!7969426 res!3157543) b!7969432))

(assert (= (and b!7969432 res!3157547) b!7969430))

(assert (= (and b!7969430 res!3157541) b!7969421))

(assert (= (and b!7969421 res!3157542) b!7969415))

(assert (= (and b!7969415 c!1463529) b!7969429))

(assert (= (and b!7969415 (not c!1463529)) b!7969424))

(assert (= (and b!7969415 (not res!3157546)) b!7969417))

(assert (= (and b!7969417 (not res!3157544)) b!7969431))

(assert (= (and b!7969431 (not res!3157545)) b!7969414))

(get-info :version)

(assert (= (and start!751624 ((_ is ElementMatch!21527) baseR!116)) b!7969422))

(assert (= (and start!751624 ((_ is Concat!30526) baseR!116)) b!7969416))

(assert (= (and start!751624 ((_ is Star!21527) baseR!116)) b!7969425))

(assert (= (and start!751624 ((_ is Union!21527) baseR!116)) b!7969418))

(assert (= (and start!751624 ((_ is Cons!74632) testedP!447)) b!7969423))

(assert (= (and start!751624 ((_ is Cons!74632) input!7927)) b!7969427))

(assert (= (and start!751624 ((_ is ElementMatch!21527) r!24602)) b!7969420))

(assert (= (and start!751624 ((_ is Concat!30526) r!24602)) b!7969419))

(assert (= (and start!751624 ((_ is Star!21527) r!24602)) b!7969413))

(assert (= (and start!751624 ((_ is Union!21527) r!24602)) b!7969428))

(declare-fun m!8348000 () Bool)

(assert (=> b!7969417 m!8348000))

(declare-fun m!8348002 () Bool)

(assert (=> b!7969417 m!8348002))

(declare-fun m!8348004 () Bool)

(assert (=> b!7969417 m!8348004))

(declare-fun m!8348006 () Bool)

(assert (=> b!7969417 m!8348006))

(declare-fun m!8348008 () Bool)

(assert (=> b!7969417 m!8348008))

(declare-fun m!8348010 () Bool)

(assert (=> b!7969432 m!8348010))

(declare-fun m!8348012 () Bool)

(assert (=> b!7969431 m!8348012))

(declare-fun m!8348014 () Bool)

(assert (=> b!7969431 m!8348014))

(declare-fun m!8348016 () Bool)

(assert (=> b!7969431 m!8348016))

(declare-fun m!8348018 () Bool)

(assert (=> b!7969431 m!8348018))

(declare-fun m!8348020 () Bool)

(assert (=> b!7969431 m!8348020))

(assert (=> b!7969431 m!8348016))

(declare-fun m!8348022 () Bool)

(assert (=> b!7969431 m!8348022))

(declare-fun m!8348024 () Bool)

(assert (=> b!7969431 m!8348024))

(declare-fun m!8348026 () Bool)

(assert (=> b!7969431 m!8348026))

(assert (=> b!7969431 m!8348018))

(declare-fun m!8348028 () Bool)

(assert (=> b!7969431 m!8348028))

(declare-fun m!8348030 () Bool)

(assert (=> b!7969429 m!8348030))

(declare-fun m!8348032 () Bool)

(assert (=> b!7969429 m!8348032))

(declare-fun m!8348034 () Bool)

(assert (=> b!7969429 m!8348034))

(declare-fun m!8348036 () Bool)

(assert (=> start!751624 m!8348036))

(declare-fun m!8348038 () Bool)

(assert (=> b!7969415 m!8348038))

(declare-fun m!8348040 () Bool)

(assert (=> b!7969430 m!8348040))

(declare-fun m!8348042 () Bool)

(assert (=> b!7969430 m!8348042))

(declare-fun m!8348044 () Bool)

(assert (=> b!7969430 m!8348044))

(declare-fun m!8348046 () Bool)

(assert (=> b!7969430 m!8348046))

(declare-fun m!8348048 () Bool)

(assert (=> b!7969430 m!8348048))

(declare-fun m!8348050 () Bool)

(assert (=> b!7969414 m!8348050))

(declare-fun m!8348052 () Bool)

(assert (=> b!7969426 m!8348052))

(check-sat (not b!7969423) (not b!7969419) (not b!7969425) (not b!7969429) (not b!7969430) (not b!7969415) (not b!7969432) (not b!7969414) (not b!7969418) (not b!7969416) (not b!7969431) (not b!7969413) (not b!7969428) tp_is_empty!53597 (not b!7969417) (not b!7969426) (not start!751624) (not b!7969427))
(check-sat)
(get-model)

(declare-fun d!2379658 () Bool)

(assert (=> d!2379658 (isPrefix!6627 (++!18397 testedP!447 (Cons!74632 (head!16279 (getSuffix!3830 input!7927 testedP!447)) Nil!74632)) input!7927)))

(declare-fun lt!2707258 () Unit!170264)

(declare-fun choose!60086 (List!74756 List!74756) Unit!170264)

(assert (=> d!2379658 (= lt!2707258 (choose!60086 testedP!447 input!7927))))

(assert (=> d!2379658 (isPrefix!6627 testedP!447 input!7927)))

(assert (=> d!2379658 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1354 testedP!447 input!7927) lt!2707258)))

(declare-fun bs!1969944 () Bool)

(assert (= bs!1969944 d!2379658))

(assert (=> bs!1969944 m!8348046))

(declare-fun m!8348066 () Bool)

(assert (=> bs!1969944 m!8348066))

(assert (=> bs!1969944 m!8348046))

(declare-fun m!8348068 () Bool)

(assert (=> bs!1969944 m!8348068))

(assert (=> bs!1969944 m!8348052))

(declare-fun m!8348070 () Bool)

(assert (=> bs!1969944 m!8348070))

(assert (=> bs!1969944 m!8348068))

(declare-fun m!8348072 () Bool)

(assert (=> bs!1969944 m!8348072))

(assert (=> b!7969417 d!2379658))

(declare-fun d!2379664 () Bool)

(declare-fun e!4699059 () Bool)

(assert (=> d!2379664 e!4699059))

(declare-fun res!3157557 () Bool)

(assert (=> d!2379664 (=> (not res!3157557) (not e!4699059))))

(declare-fun lt!2707270 () List!74756)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15858 (List!74756) (InoxSet C!43392))

(assert (=> d!2379664 (= res!3157557 (= (content!15858 lt!2707270) ((_ map or) (content!15858 testedP!447) (content!15858 (Cons!74632 lt!2707238 Nil!74632)))))))

(declare-fun e!4699058 () List!74756)

(assert (=> d!2379664 (= lt!2707270 e!4699058)))

(declare-fun c!1463543 () Bool)

(assert (=> d!2379664 (= c!1463543 ((_ is Nil!74632) testedP!447))))

(assert (=> d!2379664 (= (++!18397 testedP!447 (Cons!74632 lt!2707238 Nil!74632)) lt!2707270)))

(declare-fun b!7969462 () Bool)

(assert (=> b!7969462 (= e!4699058 (Cons!74632 lt!2707238 Nil!74632))))

(declare-fun b!7969463 () Bool)

(assert (=> b!7969463 (= e!4699058 (Cons!74632 (h!81080 testedP!447) (++!18397 (t!390499 testedP!447) (Cons!74632 lt!2707238 Nil!74632))))))

(declare-fun b!7969465 () Bool)

(assert (=> b!7969465 (= e!4699059 (or (not (= (Cons!74632 lt!2707238 Nil!74632) Nil!74632)) (= lt!2707270 testedP!447)))))

(declare-fun b!7969464 () Bool)

(declare-fun res!3157556 () Bool)

(assert (=> b!7969464 (=> (not res!3157556) (not e!4699059))))

(assert (=> b!7969464 (= res!3157556 (= (size!43463 lt!2707270) (+ (size!43463 testedP!447) (size!43463 (Cons!74632 lt!2707238 Nil!74632)))))))

(assert (= (and d!2379664 c!1463543) b!7969462))

(assert (= (and d!2379664 (not c!1463543)) b!7969463))

(assert (= (and d!2379664 res!3157557) b!7969464))

(assert (= (and b!7969464 res!3157556) b!7969465))

(declare-fun m!8348088 () Bool)

(assert (=> d!2379664 m!8348088))

(declare-fun m!8348090 () Bool)

(assert (=> d!2379664 m!8348090))

(declare-fun m!8348092 () Bool)

(assert (=> d!2379664 m!8348092))

(declare-fun m!8348094 () Bool)

(assert (=> b!7969463 m!8348094))

(declare-fun m!8348096 () Bool)

(assert (=> b!7969464 m!8348096))

(assert (=> b!7969464 m!8348042))

(declare-fun m!8348098 () Bool)

(assert (=> b!7969464 m!8348098))

(assert (=> b!7969417 d!2379664))

(declare-fun b!7969497 () Bool)

(declare-fun e!4699078 () Bool)

(assert (=> b!7969497 (= e!4699078 (>= (size!43463 input!7927) (size!43463 lt!2707243)))))

(declare-fun b!7969495 () Bool)

(declare-fun res!3157567 () Bool)

(declare-fun e!4699077 () Bool)

(assert (=> b!7969495 (=> (not res!3157567) (not e!4699077))))

(assert (=> b!7969495 (= res!3157567 (= (head!16279 lt!2707243) (head!16279 input!7927)))))

(declare-fun d!2379674 () Bool)

(assert (=> d!2379674 e!4699078))

(declare-fun res!3157566 () Bool)

(assert (=> d!2379674 (=> res!3157566 e!4699078)))

(declare-fun lt!2707275 () Bool)

(assert (=> d!2379674 (= res!3157566 (not lt!2707275))))

(declare-fun e!4699076 () Bool)

(assert (=> d!2379674 (= lt!2707275 e!4699076)))

(declare-fun res!3157569 () Bool)

(assert (=> d!2379674 (=> res!3157569 e!4699076)))

(assert (=> d!2379674 (= res!3157569 ((_ is Nil!74632) lt!2707243))))

(assert (=> d!2379674 (= (isPrefix!6627 lt!2707243 input!7927) lt!2707275)))

(declare-fun b!7969496 () Bool)

(declare-fun tail!15808 (List!74756) List!74756)

(assert (=> b!7969496 (= e!4699077 (isPrefix!6627 (tail!15808 lt!2707243) (tail!15808 input!7927)))))

(declare-fun b!7969494 () Bool)

(assert (=> b!7969494 (= e!4699076 e!4699077)))

(declare-fun res!3157568 () Bool)

(assert (=> b!7969494 (=> (not res!3157568) (not e!4699077))))

(assert (=> b!7969494 (= res!3157568 (not ((_ is Nil!74632) input!7927)))))

(assert (= (and d!2379674 (not res!3157569)) b!7969494))

(assert (= (and b!7969494 res!3157568) b!7969495))

(assert (= (and b!7969495 res!3157567) b!7969496))

(assert (= (and d!2379674 (not res!3157566)) b!7969497))

(assert (=> b!7969497 m!8348044))

(assert (=> b!7969497 m!8348016))

(declare-fun m!8348100 () Bool)

(assert (=> b!7969495 m!8348100))

(declare-fun m!8348102 () Bool)

(assert (=> b!7969495 m!8348102))

(declare-fun m!8348104 () Bool)

(assert (=> b!7969496 m!8348104))

(declare-fun m!8348106 () Bool)

(assert (=> b!7969496 m!8348106))

(assert (=> b!7969496 m!8348104))

(assert (=> b!7969496 m!8348106))

(declare-fun m!8348110 () Bool)

(assert (=> b!7969496 m!8348110))

(assert (=> b!7969417 d!2379674))

(declare-fun d!2379676 () Bool)

(declare-fun nullableFct!3799 (Regex!21527) Bool)

(assert (=> d!2379676 (= (nullable!9626 r!24602) (nullableFct!3799 r!24602))))

(declare-fun bs!1969945 () Bool)

(assert (= bs!1969945 d!2379676))

(declare-fun m!8348118 () Bool)

(assert (=> bs!1969945 m!8348118))

(assert (=> b!7969417 d!2379676))

(declare-fun d!2379680 () Bool)

(assert (=> d!2379680 (= (head!16279 lt!2707245) (h!81080 lt!2707245))))

(assert (=> b!7969417 d!2379680))

(declare-fun d!2379682 () Bool)

(declare-fun lt!2707279 () Regex!21527)

(assert (=> d!2379682 (validRegex!11831 lt!2707279)))

(declare-fun e!4699086 () Regex!21527)

(assert (=> d!2379682 (= lt!2707279 e!4699086)))

(declare-fun c!1463561 () Bool)

(assert (=> d!2379682 (= c!1463561 ((_ is Cons!74632) testedP!447))))

(assert (=> d!2379682 (validRegex!11831 baseR!116)))

(assert (=> d!2379682 (= (derivative!713 baseR!116 testedP!447) lt!2707279)))

(declare-fun b!7969512 () Bool)

(assert (=> b!7969512 (= e!4699086 (derivative!713 (derivativeStep!6553 baseR!116 (h!81080 testedP!447)) (t!390499 testedP!447)))))

(declare-fun b!7969513 () Bool)

(assert (=> b!7969513 (= e!4699086 baseR!116)))

(assert (= (and d!2379682 c!1463561) b!7969512))

(assert (= (and d!2379682 (not c!1463561)) b!7969513))

(declare-fun m!8348120 () Bool)

(assert (=> d!2379682 m!8348120))

(assert (=> d!2379682 m!8348036))

(declare-fun m!8348122 () Bool)

(assert (=> b!7969512 m!8348122))

(assert (=> b!7969512 m!8348122))

(declare-fun m!8348124 () Bool)

(assert (=> b!7969512 m!8348124))

(assert (=> b!7969432 d!2379682))

(declare-fun d!2379684 () Bool)

(assert (=> d!2379684 (= (derivative!713 baseR!116 (++!18397 testedP!447 (Cons!74632 lt!2707238 Nil!74632))) (derivativeStep!6553 r!24602 lt!2707238))))

(declare-fun lt!2707282 () Unit!170264)

(declare-fun choose!60089 (Regex!21527 Regex!21527 List!74756 C!43392) Unit!170264)

(assert (=> d!2379684 (= lt!2707282 (choose!60089 baseR!116 r!24602 testedP!447 lt!2707238))))

(assert (=> d!2379684 (validRegex!11831 baseR!116)))

(assert (=> d!2379684 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!235 baseR!116 r!24602 testedP!447 lt!2707238) lt!2707282)))

(declare-fun bs!1969946 () Bool)

(assert (= bs!1969946 d!2379684))

(declare-fun m!8348126 () Bool)

(assert (=> bs!1969946 m!8348126))

(assert (=> bs!1969946 m!8348026))

(assert (=> bs!1969946 m!8348036))

(assert (=> bs!1969946 m!8348008))

(declare-fun m!8348128 () Bool)

(assert (=> bs!1969946 m!8348128))

(assert (=> bs!1969946 m!8348008))

(assert (=> b!7969431 d!2379684))

(declare-fun d!2379686 () Bool)

(declare-fun lt!2707285 () List!74756)

(assert (=> d!2379686 (= (++!18397 lt!2707243 lt!2707285) input!7927)))

(declare-fun e!4699089 () List!74756)

(assert (=> d!2379686 (= lt!2707285 e!4699089)))

(declare-fun c!1463565 () Bool)

(assert (=> d!2379686 (= c!1463565 ((_ is Cons!74632) lt!2707243))))

(assert (=> d!2379686 (>= (size!43463 input!7927) (size!43463 lt!2707243))))

(assert (=> d!2379686 (= (getSuffix!3830 input!7927 lt!2707243) lt!2707285)))

(declare-fun b!7969518 () Bool)

(assert (=> b!7969518 (= e!4699089 (getSuffix!3830 (tail!15808 input!7927) (t!390499 lt!2707243)))))

(declare-fun b!7969519 () Bool)

(assert (=> b!7969519 (= e!4699089 input!7927)))

(assert (= (and d!2379686 c!1463565) b!7969518))

(assert (= (and d!2379686 (not c!1463565)) b!7969519))

(declare-fun m!8348130 () Bool)

(assert (=> d!2379686 m!8348130))

(assert (=> d!2379686 m!8348044))

(assert (=> d!2379686 m!8348016))

(assert (=> b!7969518 m!8348106))

(assert (=> b!7969518 m!8348106))

(declare-fun m!8348132 () Bool)

(assert (=> b!7969518 m!8348132))

(assert (=> b!7969431 d!2379686))

(declare-fun b!7969698 () Bool)

(declare-fun e!4699200 () Bool)

(declare-fun lt!2707457 () tuple2!70716)

(assert (=> b!7969698 (= e!4699200 (>= (size!43463 (_1!38661 lt!2707457)) (size!43463 lt!2707243)))))

(declare-fun b!7969699 () Bool)

(declare-fun e!4699202 () tuple2!70716)

(assert (=> b!7969699 (= e!4699202 (tuple2!70717 lt!2707243 (getSuffix!3830 input!7927 lt!2707243)))))

(declare-fun b!7969700 () Bool)

(declare-fun e!4699205 () tuple2!70716)

(assert (=> b!7969700 (= e!4699205 (tuple2!70717 Nil!74632 input!7927))))

(declare-fun bm!739433 () Bool)

(declare-fun call!739442 () Regex!21527)

(declare-fun call!739443 () C!43392)

(assert (=> bm!739433 (= call!739442 (derivativeStep!6553 lt!2707240 call!739443))))

(declare-fun b!7969701 () Bool)

(declare-fun c!1463622 () Bool)

(declare-fun call!739438 () Bool)

(assert (=> b!7969701 (= c!1463622 call!739438)))

(declare-fun lt!2707463 () Unit!170264)

(declare-fun lt!2707471 () Unit!170264)

(assert (=> b!7969701 (= lt!2707463 lt!2707471)))

(assert (=> b!7969701 (= input!7927 lt!2707243)))

(declare-fun call!739439 () Unit!170264)

(assert (=> b!7969701 (= lt!2707471 call!739439)))

(declare-fun lt!2707472 () Unit!170264)

(declare-fun lt!2707448 () Unit!170264)

(assert (=> b!7969701 (= lt!2707472 lt!2707448)))

(declare-fun call!739441 () Bool)

(assert (=> b!7969701 call!739441))

(declare-fun call!739444 () Unit!170264)

(assert (=> b!7969701 (= lt!2707448 call!739444)))

(declare-fun e!4699199 () tuple2!70716)

(assert (=> b!7969701 (= e!4699199 e!4699205)))

(declare-fun b!7969702 () Bool)

(declare-fun e!4699198 () tuple2!70716)

(assert (=> b!7969702 (= e!4699198 e!4699202)))

(declare-fun lt!2707460 () tuple2!70716)

(declare-fun call!739445 () tuple2!70716)

(assert (=> b!7969702 (= lt!2707460 call!739445)))

(declare-fun c!1463617 () Bool)

(assert (=> b!7969702 (= c!1463617 (isEmpty!42933 (_1!38661 lt!2707460)))))

(declare-fun bm!739434 () Bool)

(assert (=> bm!739434 (= call!739438 (nullable!9626 lt!2707240))))

(declare-fun b!7969703 () Bool)

(declare-fun e!4699203 () tuple2!70716)

(assert (=> b!7969703 (= e!4699203 (tuple2!70717 Nil!74632 input!7927))))

(declare-fun b!7969704 () Bool)

(declare-fun c!1463618 () Bool)

(assert (=> b!7969704 (= c!1463618 call!739438)))

(declare-fun lt!2707458 () Unit!170264)

(declare-fun lt!2707461 () Unit!170264)

(assert (=> b!7969704 (= lt!2707458 lt!2707461)))

(declare-fun lt!2707473 () List!74756)

(declare-fun lt!2707467 () C!43392)

(assert (=> b!7969704 (= (++!18397 (++!18397 lt!2707243 (Cons!74632 lt!2707467 Nil!74632)) lt!2707473) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3546 (List!74756 C!43392 List!74756 List!74756) Unit!170264)

(assert (=> b!7969704 (= lt!2707461 (lemmaMoveElementToOtherListKeepsConcatEq!3546 lt!2707243 lt!2707467 lt!2707473 input!7927))))

(assert (=> b!7969704 (= lt!2707473 (tail!15808 (getSuffix!3830 input!7927 lt!2707243)))))

(assert (=> b!7969704 (= lt!2707467 (head!16279 (getSuffix!3830 input!7927 lt!2707243)))))

(declare-fun lt!2707454 () Unit!170264)

(declare-fun lt!2707470 () Unit!170264)

(assert (=> b!7969704 (= lt!2707454 lt!2707470)))

(assert (=> b!7969704 (isPrefix!6627 (++!18397 lt!2707243 (Cons!74632 (head!16279 (getSuffix!3830 input!7927 lt!2707243)) Nil!74632)) input!7927)))

(assert (=> b!7969704 (= lt!2707470 (lemmaAddHeadSuffixToPrefixStillPrefix!1354 lt!2707243 input!7927))))

(declare-fun lt!2707456 () Unit!170264)

(declare-fun lt!2707469 () Unit!170264)

(assert (=> b!7969704 (= lt!2707456 lt!2707469)))

(assert (=> b!7969704 (= lt!2707469 (lemmaAddHeadSuffixToPrefixStillPrefix!1354 lt!2707243 input!7927))))

(declare-fun lt!2707452 () List!74756)

(assert (=> b!7969704 (= lt!2707452 (++!18397 lt!2707243 (Cons!74632 (head!16279 (getSuffix!3830 input!7927 lt!2707243)) Nil!74632)))))

(declare-fun lt!2707451 () Unit!170264)

(declare-fun e!4699201 () Unit!170264)

(assert (=> b!7969704 (= lt!2707451 e!4699201)))

(declare-fun c!1463619 () Bool)

(assert (=> b!7969704 (= c!1463619 (= (size!43463 lt!2707243) (size!43463 input!7927)))))

(declare-fun lt!2707446 () Unit!170264)

(declare-fun lt!2707468 () Unit!170264)

(assert (=> b!7969704 (= lt!2707446 lt!2707468)))

(assert (=> b!7969704 (<= (size!43463 lt!2707243) (size!43463 input!7927))))

(assert (=> b!7969704 (= lt!2707468 (lemmaIsPrefixThenSmallerEqSize!1144 lt!2707243 input!7927))))

(assert (=> b!7969704 (= e!4699199 e!4699198)))

(declare-fun d!2379688 () Bool)

(declare-fun e!4699204 () Bool)

(assert (=> d!2379688 e!4699204))

(declare-fun res!3157646 () Bool)

(assert (=> d!2379688 (=> (not res!3157646) (not e!4699204))))

(assert (=> d!2379688 (= res!3157646 (= (++!18397 (_1!38661 lt!2707457) (_2!38661 lt!2707457)) input!7927))))

(assert (=> d!2379688 (= lt!2707457 e!4699203)))

(declare-fun c!1463620 () Bool)

(declare-fun lostCause!1990 (Regex!21527) Bool)

(assert (=> d!2379688 (= c!1463620 (lostCause!1990 lt!2707240))))

(declare-fun lt!2707453 () Unit!170264)

(declare-fun Unit!170271 () Unit!170264)

(assert (=> d!2379688 (= lt!2707453 Unit!170271)))

(assert (=> d!2379688 (= (getSuffix!3830 input!7927 lt!2707243) (getSuffix!3830 input!7927 lt!2707243))))

(declare-fun lt!2707464 () Unit!170264)

(declare-fun lt!2707450 () Unit!170264)

(assert (=> d!2379688 (= lt!2707464 lt!2707450)))

(declare-fun lt!2707466 () List!74756)

(assert (=> d!2379688 (= (getSuffix!3830 input!7927 lt!2707243) lt!2707466)))

(declare-fun lemmaSamePrefixThenSameSuffix!3006 (List!74756 List!74756 List!74756 List!74756 List!74756) Unit!170264)

(assert (=> d!2379688 (= lt!2707450 (lemmaSamePrefixThenSameSuffix!3006 lt!2707243 (getSuffix!3830 input!7927 lt!2707243) lt!2707243 lt!2707466 input!7927))))

(assert (=> d!2379688 (= lt!2707466 (getSuffix!3830 input!7927 lt!2707243))))

(declare-fun lt!2707447 () Unit!170264)

(declare-fun lt!2707455 () Unit!170264)

(assert (=> d!2379688 (= lt!2707447 lt!2707455)))

(assert (=> d!2379688 (isPrefix!6627 lt!2707243 (++!18397 lt!2707243 (getSuffix!3830 input!7927 lt!2707243)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3868 (List!74756 List!74756) Unit!170264)

(assert (=> d!2379688 (= lt!2707455 (lemmaConcatTwoListThenFirstIsPrefix!3868 lt!2707243 (getSuffix!3830 input!7927 lt!2707243)))))

(assert (=> d!2379688 (validRegex!11831 lt!2707240)))

(assert (=> d!2379688 (= (findLongestMatchInner!2308 lt!2707240 lt!2707243 (size!43463 lt!2707243) (getSuffix!3830 input!7927 lt!2707243) input!7927 lt!2707249) lt!2707457)))

(declare-fun bm!739435 () Bool)

(assert (=> bm!739435 (= call!739441 (isPrefix!6627 input!7927 input!7927))))

(declare-fun bm!739436 () Bool)

(assert (=> bm!739436 (= call!739439 (lemmaIsPrefixSameLengthThenSameList!1675 input!7927 lt!2707243 input!7927))))

(declare-fun b!7969705 () Bool)

(assert (=> b!7969705 (= e!4699202 lt!2707460)))

(declare-fun b!7969706 () Bool)

(declare-fun Unit!170272 () Unit!170264)

(assert (=> b!7969706 (= e!4699201 Unit!170272)))

(declare-fun bm!739437 () Bool)

(assert (=> bm!739437 (= call!739443 (head!16279 (getSuffix!3830 input!7927 lt!2707243)))))

(declare-fun bm!739438 () Bool)

(declare-fun call!739440 () List!74756)

(assert (=> bm!739438 (= call!739440 (tail!15808 (getSuffix!3830 input!7927 lt!2707243)))))

(declare-fun b!7969707 () Bool)

(assert (=> b!7969707 (= e!4699198 call!739445)))

(declare-fun b!7969708 () Bool)

(assert (=> b!7969708 (= e!4699204 e!4699200)))

(declare-fun res!3157647 () Bool)

(assert (=> b!7969708 (=> res!3157647 e!4699200)))

(assert (=> b!7969708 (= res!3157647 (isEmpty!42933 (_1!38661 lt!2707457)))))

(declare-fun b!7969709 () Bool)

(assert (=> b!7969709 (= e!4699203 e!4699199)))

(declare-fun c!1463621 () Bool)

(assert (=> b!7969709 (= c!1463621 (= (size!43463 lt!2707243) lt!2707249))))

(declare-fun bm!739439 () Bool)

(assert (=> bm!739439 (= call!739445 (findLongestMatchInner!2308 call!739442 lt!2707452 (+ (size!43463 lt!2707243) 1) call!739440 input!7927 lt!2707249))))

(declare-fun bm!739440 () Bool)

(assert (=> bm!739440 (= call!739444 (lemmaIsPrefixRefl!4095 input!7927 input!7927))))

(declare-fun b!7969710 () Bool)

(declare-fun Unit!170273 () Unit!170264)

(assert (=> b!7969710 (= e!4699201 Unit!170273)))

(declare-fun lt!2707459 () Unit!170264)

(assert (=> b!7969710 (= lt!2707459 call!739444)))

(assert (=> b!7969710 call!739441))

(declare-fun lt!2707465 () Unit!170264)

(assert (=> b!7969710 (= lt!2707465 lt!2707459)))

(declare-fun lt!2707449 () Unit!170264)

(assert (=> b!7969710 (= lt!2707449 call!739439)))

(assert (=> b!7969710 (= input!7927 lt!2707243)))

(declare-fun lt!2707462 () Unit!170264)

(assert (=> b!7969710 (= lt!2707462 lt!2707449)))

(assert (=> b!7969710 false))

(declare-fun b!7969711 () Bool)

(assert (=> b!7969711 (= e!4699205 (tuple2!70717 lt!2707243 Nil!74632))))

(assert (= (and d!2379688 c!1463620) b!7969703))

(assert (= (and d!2379688 (not c!1463620)) b!7969709))

(assert (= (and b!7969709 c!1463621) b!7969701))

(assert (= (and b!7969709 (not c!1463621)) b!7969704))

(assert (= (and b!7969701 c!1463622) b!7969711))

(assert (= (and b!7969701 (not c!1463622)) b!7969700))

(assert (= (and b!7969704 c!1463619) b!7969710))

(assert (= (and b!7969704 (not c!1463619)) b!7969706))

(assert (= (and b!7969704 c!1463618) b!7969702))

(assert (= (and b!7969704 (not c!1463618)) b!7969707))

(assert (= (and b!7969702 c!1463617) b!7969699))

(assert (= (and b!7969702 (not c!1463617)) b!7969705))

(assert (= (or b!7969702 b!7969707) bm!739437))

(assert (= (or b!7969702 b!7969707) bm!739438))

(assert (= (or b!7969702 b!7969707) bm!739433))

(assert (= (or b!7969702 b!7969707) bm!739439))

(assert (= (or b!7969701 b!7969704) bm!739434))

(assert (= (or b!7969701 b!7969710) bm!739436))

(assert (= (or b!7969701 b!7969710) bm!739440))

(assert (= (or b!7969701 b!7969710) bm!739435))

(assert (= (and d!2379688 res!3157646) b!7969708))

(assert (= (and b!7969708 (not res!3157647)) b!7969698))

(declare-fun m!8348254 () Bool)

(assert (=> b!7969698 m!8348254))

(assert (=> b!7969698 m!8348016))

(assert (=> bm!739438 m!8348018))

(declare-fun m!8348256 () Bool)

(assert (=> bm!739438 m!8348256))

(declare-fun m!8348258 () Bool)

(assert (=> bm!739436 m!8348258))

(declare-fun m!8348260 () Bool)

(assert (=> b!7969708 m!8348260))

(assert (=> bm!739437 m!8348018))

(declare-fun m!8348262 () Bool)

(assert (=> bm!739437 m!8348262))

(declare-fun m!8348266 () Bool)

(assert (=> bm!739433 m!8348266))

(declare-fun m!8348268 () Bool)

(assert (=> bm!739434 m!8348268))

(declare-fun m!8348270 () Bool)

(assert (=> b!7969702 m!8348270))

(assert (=> bm!739440 m!8348030))

(assert (=> d!2379688 m!8348018))

(declare-fun m!8348272 () Bool)

(assert (=> d!2379688 m!8348272))

(assert (=> d!2379688 m!8348018))

(declare-fun m!8348274 () Bool)

(assert (=> d!2379688 m!8348274))

(declare-fun m!8348276 () Bool)

(assert (=> d!2379688 m!8348276))

(declare-fun m!8348278 () Bool)

(assert (=> d!2379688 m!8348278))

(declare-fun m!8348280 () Bool)

(assert (=> d!2379688 m!8348280))

(declare-fun m!8348282 () Bool)

(assert (=> d!2379688 m!8348282))

(assert (=> d!2379688 m!8348018))

(assert (=> d!2379688 m!8348280))

(assert (=> d!2379688 m!8348018))

(declare-fun m!8348284 () Bool)

(assert (=> d!2379688 m!8348284))

(assert (=> b!7969704 m!8348018))

(assert (=> b!7969704 m!8348262))

(assert (=> b!7969704 m!8348044))

(declare-fun m!8348286 () Bool)

(assert (=> b!7969704 m!8348286))

(declare-fun m!8348288 () Bool)

(assert (=> b!7969704 m!8348288))

(declare-fun m!8348290 () Bool)

(assert (=> b!7969704 m!8348290))

(declare-fun m!8348292 () Bool)

(assert (=> b!7969704 m!8348292))

(declare-fun m!8348294 () Bool)

(assert (=> b!7969704 m!8348294))

(assert (=> b!7969704 m!8348018))

(assert (=> b!7969704 m!8348262))

(assert (=> b!7969704 m!8348286))

(declare-fun m!8348296 () Bool)

(assert (=> b!7969704 m!8348296))

(assert (=> b!7969704 m!8348018))

(assert (=> b!7969704 m!8348016))

(assert (=> b!7969704 m!8348292))

(declare-fun m!8348298 () Bool)

(assert (=> b!7969704 m!8348298))

(assert (=> b!7969704 m!8348018))

(assert (=> b!7969704 m!8348256))

(assert (=> b!7969704 m!8348286))

(assert (=> bm!739435 m!8348032))

(declare-fun m!8348300 () Bool)

(assert (=> bm!739439 m!8348300))

(assert (=> b!7969431 d!2379688))

(declare-fun d!2379726 () Bool)

(declare-fun lt!2707508 () Regex!21527)

(assert (=> d!2379726 (validRegex!11831 lt!2707508)))

(declare-fun e!4699217 () Regex!21527)

(assert (=> d!2379726 (= lt!2707508 e!4699217)))

(declare-fun c!1463632 () Bool)

(assert (=> d!2379726 (= c!1463632 ((_ is Cons!74632) lt!2707243))))

(assert (=> d!2379726 (validRegex!11831 baseR!116)))

(assert (=> d!2379726 (= (derivative!713 baseR!116 lt!2707243) lt!2707508)))

(declare-fun b!7969732 () Bool)

(assert (=> b!7969732 (= e!4699217 (derivative!713 (derivativeStep!6553 baseR!116 (h!81080 lt!2707243)) (t!390499 lt!2707243)))))

(declare-fun b!7969733 () Bool)

(assert (=> b!7969733 (= e!4699217 baseR!116)))

(assert (= (and d!2379726 c!1463632) b!7969732))

(assert (= (and d!2379726 (not c!1463632)) b!7969733))

(declare-fun m!8348302 () Bool)

(assert (=> d!2379726 m!8348302))

(assert (=> d!2379726 m!8348036))

(declare-fun m!8348304 () Bool)

(assert (=> b!7969732 m!8348304))

(assert (=> b!7969732 m!8348304))

(declare-fun m!8348306 () Bool)

(assert (=> b!7969732 m!8348306))

(assert (=> b!7969431 d!2379726))

(declare-fun c!1463643 () Bool)

(declare-fun call!739463 () Regex!21527)

(declare-fun bm!739457 () Bool)

(assert (=> bm!739457 (= call!739463 (derivativeStep!6553 (ite c!1463643 (regOne!43567 r!24602) (regOne!43566 r!24602)) lt!2707238))))

(declare-fun b!7969814 () Bool)

(declare-fun e!4699250 () Regex!21527)

(assert (=> b!7969814 (= e!4699250 EmptyLang!21527)))

(declare-fun b!7969815 () Bool)

(declare-fun call!739462 () Regex!21527)

(declare-fun e!4699248 () Regex!21527)

(assert (=> b!7969815 (= e!4699248 (Union!21527 (Concat!30526 call!739463 (regTwo!43566 r!24602)) call!739462))))

(declare-fun b!7969816 () Bool)

(declare-fun e!4699247 () Regex!21527)

(declare-fun call!739464 () Regex!21527)

(assert (=> b!7969816 (= e!4699247 (Concat!30526 call!739464 r!24602))))

(declare-fun bm!739458 () Bool)

(assert (=> bm!739458 (= call!739462 call!739464)))

(declare-fun b!7969817 () Bool)

(declare-fun e!4699249 () Regex!21527)

(declare-fun call!739465 () Regex!21527)

(assert (=> b!7969817 (= e!4699249 (Union!21527 call!739463 call!739465))))

(declare-fun d!2379728 () Bool)

(declare-fun lt!2707512 () Regex!21527)

(assert (=> d!2379728 (validRegex!11831 lt!2707512)))

(assert (=> d!2379728 (= lt!2707512 e!4699250)))

(declare-fun c!1463645 () Bool)

(assert (=> d!2379728 (= c!1463645 (or ((_ is EmptyExpr!21527) r!24602) ((_ is EmptyLang!21527) r!24602)))))

(assert (=> d!2379728 (validRegex!11831 r!24602)))

(assert (=> d!2379728 (= (derivativeStep!6553 r!24602 lt!2707238) lt!2707512)))

(declare-fun b!7969818 () Bool)

(assert (=> b!7969818 (= c!1463643 ((_ is Union!21527) r!24602))))

(declare-fun e!4699251 () Regex!21527)

(assert (=> b!7969818 (= e!4699251 e!4699249)))

(declare-fun b!7969819 () Bool)

(assert (=> b!7969819 (= e!4699251 (ite (= lt!2707238 (c!1463530 r!24602)) EmptyExpr!21527 EmptyLang!21527))))

(declare-fun b!7969820 () Bool)

(declare-fun c!1463647 () Bool)

(assert (=> b!7969820 (= c!1463647 (nullable!9626 (regOne!43566 r!24602)))))

(assert (=> b!7969820 (= e!4699247 e!4699248)))

(declare-fun b!7969821 () Bool)

(assert (=> b!7969821 (= e!4699250 e!4699251)))

(declare-fun c!1463644 () Bool)

(assert (=> b!7969821 (= c!1463644 ((_ is ElementMatch!21527) r!24602))))

(declare-fun bm!739459 () Bool)

(assert (=> bm!739459 (= call!739464 call!739465)))

(declare-fun c!1463646 () Bool)

(declare-fun bm!739460 () Bool)

(assert (=> bm!739460 (= call!739465 (derivativeStep!6553 (ite c!1463643 (regTwo!43567 r!24602) (ite c!1463646 (reg!21856 r!24602) (ite c!1463647 (regTwo!43566 r!24602) (regOne!43566 r!24602)))) lt!2707238))))

(declare-fun b!7969822 () Bool)

(assert (=> b!7969822 (= e!4699248 (Union!21527 (Concat!30526 call!739462 (regTwo!43566 r!24602)) EmptyLang!21527))))

(declare-fun b!7969823 () Bool)

(assert (=> b!7969823 (= e!4699249 e!4699247)))

(assert (=> b!7969823 (= c!1463646 ((_ is Star!21527) r!24602))))

(assert (= (and d!2379728 c!1463645) b!7969814))

(assert (= (and d!2379728 (not c!1463645)) b!7969821))

(assert (= (and b!7969821 c!1463644) b!7969819))

(assert (= (and b!7969821 (not c!1463644)) b!7969818))

(assert (= (and b!7969818 c!1463643) b!7969817))

(assert (= (and b!7969818 (not c!1463643)) b!7969823))

(assert (= (and b!7969823 c!1463646) b!7969816))

(assert (= (and b!7969823 (not c!1463646)) b!7969820))

(assert (= (and b!7969820 c!1463647) b!7969815))

(assert (= (and b!7969820 (not c!1463647)) b!7969822))

(assert (= (or b!7969815 b!7969822) bm!739458))

(assert (= (or b!7969816 bm!739458) bm!739459))

(assert (= (or b!7969817 bm!739459) bm!739460))

(assert (= (or b!7969817 b!7969815) bm!739457))

(declare-fun m!8348346 () Bool)

(assert (=> bm!739457 m!8348346))

(declare-fun m!8348348 () Bool)

(assert (=> d!2379728 m!8348348))

(assert (=> d!2379728 m!8348028))

(declare-fun m!8348350 () Bool)

(assert (=> b!7969820 m!8348350))

(declare-fun m!8348352 () Bool)

(assert (=> bm!739460 m!8348352))

(assert (=> b!7969431 d!2379728))

(declare-fun d!2379732 () Bool)

(declare-fun e!4699254 () Bool)

(assert (=> d!2379732 e!4699254))

(declare-fun res!3157656 () Bool)

(assert (=> d!2379732 (=> res!3157656 e!4699254)))

(assert (=> d!2379732 (= res!3157656 (isEmpty!42933 (_1!38661 (findLongestMatchInner!2308 lt!2707240 lt!2707243 (size!43463 lt!2707243) (getSuffix!3830 input!7927 lt!2707243) input!7927 (size!43463 input!7927)))))))

(declare-fun lt!2707515 () Unit!170264)

(declare-fun choose!60092 (Regex!21527 Regex!21527 List!74756 List!74756) Unit!170264)

(assert (=> d!2379732 (= lt!2707515 (choose!60092 baseR!116 lt!2707240 lt!2707243 input!7927))))

(assert (=> d!2379732 (validRegex!11831 baseR!116)))

(assert (=> d!2379732 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!61 baseR!116 lt!2707240 lt!2707243 input!7927) lt!2707515)))

(declare-fun b!7969826 () Bool)

(assert (=> b!7969826 (= e!4699254 (matchR!10750 baseR!116 (_1!38661 (findLongestMatchInner!2308 lt!2707240 lt!2707243 (size!43463 lt!2707243) (getSuffix!3830 input!7927 lt!2707243) input!7927 (size!43463 input!7927)))))))

(assert (= (and d!2379732 (not res!3157656)) b!7969826))

(assert (=> d!2379732 m!8348016))

(assert (=> d!2379732 m!8348044))

(assert (=> d!2379732 m!8348016))

(assert (=> d!2379732 m!8348018))

(assert (=> d!2379732 m!8348044))

(declare-fun m!8348354 () Bool)

(assert (=> d!2379732 m!8348354))

(assert (=> d!2379732 m!8348036))

(assert (=> d!2379732 m!8348018))

(declare-fun m!8348356 () Bool)

(assert (=> d!2379732 m!8348356))

(declare-fun m!8348358 () Bool)

(assert (=> d!2379732 m!8348358))

(declare-fun m!8348360 () Bool)

(assert (=> b!7969826 m!8348360))

(assert (=> b!7969826 m!8348016))

(assert (=> b!7969826 m!8348044))

(assert (=> b!7969826 m!8348016))

(assert (=> b!7969826 m!8348018))

(assert (=> b!7969826 m!8348044))

(assert (=> b!7969826 m!8348354))

(assert (=> b!7969826 m!8348018))

(assert (=> b!7969431 d!2379732))

(declare-fun bm!739467 () Bool)

(declare-fun call!739472 () Bool)

(declare-fun call!739473 () Bool)

(assert (=> bm!739467 (= call!739472 call!739473)))

(declare-fun b!7969845 () Bool)

(declare-fun e!4699273 () Bool)

(declare-fun e!4699271 () Bool)

(assert (=> b!7969845 (= e!4699273 e!4699271)))

(declare-fun c!1463653 () Bool)

(assert (=> b!7969845 (= c!1463653 ((_ is Union!21527) r!24602))))

(declare-fun bm!739468 () Bool)

(declare-fun call!739474 () Bool)

(assert (=> bm!739468 (= call!739474 (validRegex!11831 (ite c!1463653 (regOne!43567 r!24602) (regOne!43566 r!24602))))))

(declare-fun b!7969846 () Bool)

(declare-fun res!3157671 () Bool)

(declare-fun e!4699270 () Bool)

(assert (=> b!7969846 (=> res!3157671 e!4699270)))

(assert (=> b!7969846 (= res!3157671 (not ((_ is Concat!30526) r!24602)))))

(assert (=> b!7969846 (= e!4699271 e!4699270)))

(declare-fun b!7969847 () Bool)

(declare-fun e!4699275 () Bool)

(assert (=> b!7969847 (= e!4699275 call!739472)))

(declare-fun b!7969848 () Bool)

(declare-fun e!4699274 () Bool)

(assert (=> b!7969848 (= e!4699274 call!739473)))

(declare-fun d!2379734 () Bool)

(declare-fun res!3157668 () Bool)

(declare-fun e!4699269 () Bool)

(assert (=> d!2379734 (=> res!3157668 e!4699269)))

(assert (=> d!2379734 (= res!3157668 ((_ is ElementMatch!21527) r!24602))))

(assert (=> d!2379734 (= (validRegex!11831 r!24602) e!4699269)))

(declare-fun b!7969849 () Bool)

(assert (=> b!7969849 (= e!4699269 e!4699273)))

(declare-fun c!1463652 () Bool)

(assert (=> b!7969849 (= c!1463652 ((_ is Star!21527) r!24602))))

(declare-fun b!7969850 () Bool)

(assert (=> b!7969850 (= e!4699273 e!4699274)))

(declare-fun res!3157667 () Bool)

(assert (=> b!7969850 (= res!3157667 (not (nullable!9626 (reg!21856 r!24602))))))

(assert (=> b!7969850 (=> (not res!3157667) (not e!4699274))))

(declare-fun b!7969851 () Bool)

(declare-fun res!3157669 () Bool)

(declare-fun e!4699272 () Bool)

(assert (=> b!7969851 (=> (not res!3157669) (not e!4699272))))

(assert (=> b!7969851 (= res!3157669 call!739474)))

(assert (=> b!7969851 (= e!4699271 e!4699272)))

(declare-fun bm!739469 () Bool)

(assert (=> bm!739469 (= call!739473 (validRegex!11831 (ite c!1463652 (reg!21856 r!24602) (ite c!1463653 (regTwo!43567 r!24602) (regTwo!43566 r!24602)))))))

(declare-fun b!7969852 () Bool)

(assert (=> b!7969852 (= e!4699270 e!4699275)))

(declare-fun res!3157670 () Bool)

(assert (=> b!7969852 (=> (not res!3157670) (not e!4699275))))

(assert (=> b!7969852 (= res!3157670 call!739474)))

(declare-fun b!7969853 () Bool)

(assert (=> b!7969853 (= e!4699272 call!739472)))

(assert (= (and d!2379734 (not res!3157668)) b!7969849))

(assert (= (and b!7969849 c!1463652) b!7969850))

(assert (= (and b!7969849 (not c!1463652)) b!7969845))

(assert (= (and b!7969850 res!3157667) b!7969848))

(assert (= (and b!7969845 c!1463653) b!7969851))

(assert (= (and b!7969845 (not c!1463653)) b!7969846))

(assert (= (and b!7969851 res!3157669) b!7969853))

(assert (= (and b!7969846 (not res!3157671)) b!7969852))

(assert (= (and b!7969852 res!3157670) b!7969847))

(assert (= (or b!7969853 b!7969847) bm!739467))

(assert (= (or b!7969851 b!7969852) bm!739468))

(assert (= (or b!7969848 bm!739467) bm!739469))

(declare-fun m!8348362 () Bool)

(assert (=> bm!739468 m!8348362))

(declare-fun m!8348364 () Bool)

(assert (=> b!7969850 m!8348364))

(declare-fun m!8348366 () Bool)

(assert (=> bm!739469 m!8348366))

(assert (=> b!7969431 d!2379734))

(declare-fun d!2379736 () Bool)

(declare-fun lt!2707518 () Int)

(assert (=> d!2379736 (>= lt!2707518 0)))

(declare-fun e!4699278 () Int)

(assert (=> d!2379736 (= lt!2707518 e!4699278)))

(declare-fun c!1463656 () Bool)

(assert (=> d!2379736 (= c!1463656 ((_ is Nil!74632) lt!2707243))))

(assert (=> d!2379736 (= (size!43463 lt!2707243) lt!2707518)))

(declare-fun b!7969858 () Bool)

(assert (=> b!7969858 (= e!4699278 0)))

(declare-fun b!7969859 () Bool)

(assert (=> b!7969859 (= e!4699278 (+ 1 (size!43463 (t!390499 lt!2707243))))))

(assert (= (and d!2379736 c!1463656) b!7969858))

(assert (= (and d!2379736 (not c!1463656)) b!7969859))

(declare-fun m!8348368 () Bool)

(assert (=> b!7969859 m!8348368))

(assert (=> b!7969431 d!2379736))

(declare-fun d!2379738 () Bool)

(assert (=> d!2379738 (= (isEmpty!42933 (_1!38661 lt!2707237)) ((_ is Nil!74632) (_1!38661 lt!2707237)))))

(assert (=> b!7969431 d!2379738))

(declare-fun d!2379740 () Bool)

(assert (=> d!2379740 (<= (size!43463 testedP!447) (size!43463 input!7927))))

(declare-fun lt!2707521 () Unit!170264)

(declare-fun choose!60093 (List!74756 List!74756) Unit!170264)

(assert (=> d!2379740 (= lt!2707521 (choose!60093 testedP!447 input!7927))))

(assert (=> d!2379740 (isPrefix!6627 testedP!447 input!7927)))

(assert (=> d!2379740 (= (lemmaIsPrefixThenSmallerEqSize!1144 testedP!447 input!7927) lt!2707521)))

(declare-fun bs!1969952 () Bool)

(assert (= bs!1969952 d!2379740))

(assert (=> bs!1969952 m!8348042))

(assert (=> bs!1969952 m!8348044))

(declare-fun m!8348370 () Bool)

(assert (=> bs!1969952 m!8348370))

(assert (=> bs!1969952 m!8348052))

(assert (=> b!7969415 d!2379740))

(declare-fun b!7969863 () Bool)

(declare-fun e!4699281 () Bool)

(assert (=> b!7969863 (= e!4699281 (>= (size!43463 input!7927) (size!43463 testedP!447)))))

(declare-fun b!7969861 () Bool)

(declare-fun res!3157673 () Bool)

(declare-fun e!4699280 () Bool)

(assert (=> b!7969861 (=> (not res!3157673) (not e!4699280))))

(assert (=> b!7969861 (= res!3157673 (= (head!16279 testedP!447) (head!16279 input!7927)))))

(declare-fun d!2379742 () Bool)

(assert (=> d!2379742 e!4699281))

(declare-fun res!3157672 () Bool)

(assert (=> d!2379742 (=> res!3157672 e!4699281)))

(declare-fun lt!2707522 () Bool)

(assert (=> d!2379742 (= res!3157672 (not lt!2707522))))

(declare-fun e!4699279 () Bool)

(assert (=> d!2379742 (= lt!2707522 e!4699279)))

(declare-fun res!3157675 () Bool)

(assert (=> d!2379742 (=> res!3157675 e!4699279)))

(assert (=> d!2379742 (= res!3157675 ((_ is Nil!74632) testedP!447))))

(assert (=> d!2379742 (= (isPrefix!6627 testedP!447 input!7927) lt!2707522)))

(declare-fun b!7969862 () Bool)

(assert (=> b!7969862 (= e!4699280 (isPrefix!6627 (tail!15808 testedP!447) (tail!15808 input!7927)))))

(declare-fun b!7969860 () Bool)

(assert (=> b!7969860 (= e!4699279 e!4699280)))

(declare-fun res!3157674 () Bool)

(assert (=> b!7969860 (=> (not res!3157674) (not e!4699280))))

(assert (=> b!7969860 (= res!3157674 (not ((_ is Nil!74632) input!7927)))))

(assert (= (and d!2379742 (not res!3157675)) b!7969860))

(assert (= (and b!7969860 res!3157674) b!7969861))

(assert (= (and b!7969861 res!3157673) b!7969862))

(assert (= (and d!2379742 (not res!3157672)) b!7969863))

(assert (=> b!7969863 m!8348044))

(assert (=> b!7969863 m!8348042))

(declare-fun m!8348372 () Bool)

(assert (=> b!7969861 m!8348372))

(assert (=> b!7969861 m!8348102))

(declare-fun m!8348374 () Bool)

(assert (=> b!7969862 m!8348374))

(assert (=> b!7969862 m!8348106))

(assert (=> b!7969862 m!8348374))

(assert (=> b!7969862 m!8348106))

(declare-fun m!8348376 () Bool)

(assert (=> b!7969862 m!8348376))

(assert (=> b!7969426 d!2379742))

(declare-fun d!2379744 () Bool)

(declare-fun lt!2707523 () Int)

(assert (=> d!2379744 (>= lt!2707523 0)))

(declare-fun e!4699282 () Int)

(assert (=> d!2379744 (= lt!2707523 e!4699282)))

(declare-fun c!1463657 () Bool)

(assert (=> d!2379744 (= c!1463657 ((_ is Nil!74632) input!7927))))

(assert (=> d!2379744 (= (size!43463 input!7927) lt!2707523)))

(declare-fun b!7969864 () Bool)

(assert (=> b!7969864 (= e!4699282 0)))

(declare-fun b!7969865 () Bool)

(assert (=> b!7969865 (= e!4699282 (+ 1 (size!43463 (t!390499 input!7927))))))

(assert (= (and d!2379744 c!1463657) b!7969864))

(assert (= (and d!2379744 (not c!1463657)) b!7969865))

(declare-fun m!8348378 () Bool)

(assert (=> b!7969865 m!8348378))

(assert (=> b!7969430 d!2379744))

(declare-fun d!2379746 () Bool)

(declare-fun lt!2707524 () Int)

(assert (=> d!2379746 (>= lt!2707524 0)))

(declare-fun e!4699283 () Int)

(assert (=> d!2379746 (= lt!2707524 e!4699283)))

(declare-fun c!1463658 () Bool)

(assert (=> d!2379746 (= c!1463658 ((_ is Nil!74632) testedP!447))))

(assert (=> d!2379746 (= (size!43463 testedP!447) lt!2707524)))

(declare-fun b!7969866 () Bool)

(assert (=> b!7969866 (= e!4699283 0)))

(declare-fun b!7969867 () Bool)

(assert (=> b!7969867 (= e!4699283 (+ 1 (size!43463 (t!390499 testedP!447))))))

(assert (= (and d!2379746 c!1463658) b!7969866))

(assert (= (and d!2379746 (not c!1463658)) b!7969867))

(declare-fun m!8348380 () Bool)

(assert (=> b!7969867 m!8348380))

(assert (=> b!7969430 d!2379746))

(declare-fun b!7969868 () Bool)

(declare-fun e!4699286 () Bool)

(declare-fun lt!2707536 () tuple2!70716)

(assert (=> b!7969868 (= e!4699286 (>= (size!43463 (_1!38661 lt!2707536)) (size!43463 testedP!447)))))

(declare-fun b!7969869 () Bool)

(declare-fun e!4699288 () tuple2!70716)

(assert (=> b!7969869 (= e!4699288 (tuple2!70717 testedP!447 lt!2707245))))

(declare-fun b!7969870 () Bool)

(declare-fun e!4699291 () tuple2!70716)

(assert (=> b!7969870 (= e!4699291 (tuple2!70717 Nil!74632 input!7927))))

(declare-fun bm!739470 () Bool)

(declare-fun call!739479 () Regex!21527)

(declare-fun call!739480 () C!43392)

(assert (=> bm!739470 (= call!739479 (derivativeStep!6553 r!24602 call!739480))))

(declare-fun b!7969871 () Bool)

(declare-fun c!1463664 () Bool)

(declare-fun call!739475 () Bool)

(assert (=> b!7969871 (= c!1463664 call!739475)))

(declare-fun lt!2707542 () Unit!170264)

(declare-fun lt!2707550 () Unit!170264)

(assert (=> b!7969871 (= lt!2707542 lt!2707550)))

(assert (=> b!7969871 (= input!7927 testedP!447)))

(declare-fun call!739476 () Unit!170264)

(assert (=> b!7969871 (= lt!2707550 call!739476)))

(declare-fun lt!2707551 () Unit!170264)

(declare-fun lt!2707527 () Unit!170264)

(assert (=> b!7969871 (= lt!2707551 lt!2707527)))

(declare-fun call!739478 () Bool)

(assert (=> b!7969871 call!739478))

(declare-fun call!739481 () Unit!170264)

(assert (=> b!7969871 (= lt!2707527 call!739481)))

(declare-fun e!4699285 () tuple2!70716)

(assert (=> b!7969871 (= e!4699285 e!4699291)))

(declare-fun b!7969872 () Bool)

(declare-fun e!4699284 () tuple2!70716)

(assert (=> b!7969872 (= e!4699284 e!4699288)))

(declare-fun lt!2707539 () tuple2!70716)

(declare-fun call!739482 () tuple2!70716)

(assert (=> b!7969872 (= lt!2707539 call!739482)))

(declare-fun c!1463659 () Bool)

(assert (=> b!7969872 (= c!1463659 (isEmpty!42933 (_1!38661 lt!2707539)))))

(declare-fun bm!739471 () Bool)

(assert (=> bm!739471 (= call!739475 (nullable!9626 r!24602))))

(declare-fun b!7969873 () Bool)

(declare-fun e!4699289 () tuple2!70716)

(assert (=> b!7969873 (= e!4699289 (tuple2!70717 Nil!74632 input!7927))))

(declare-fun b!7969874 () Bool)

(declare-fun c!1463660 () Bool)

(assert (=> b!7969874 (= c!1463660 call!739475)))

(declare-fun lt!2707537 () Unit!170264)

(declare-fun lt!2707540 () Unit!170264)

(assert (=> b!7969874 (= lt!2707537 lt!2707540)))

(declare-fun lt!2707546 () C!43392)

(declare-fun lt!2707552 () List!74756)

(assert (=> b!7969874 (= (++!18397 (++!18397 testedP!447 (Cons!74632 lt!2707546 Nil!74632)) lt!2707552) input!7927)))

(assert (=> b!7969874 (= lt!2707540 (lemmaMoveElementToOtherListKeepsConcatEq!3546 testedP!447 lt!2707546 lt!2707552 input!7927))))

(assert (=> b!7969874 (= lt!2707552 (tail!15808 lt!2707245))))

(assert (=> b!7969874 (= lt!2707546 (head!16279 lt!2707245))))

(declare-fun lt!2707533 () Unit!170264)

(declare-fun lt!2707549 () Unit!170264)

(assert (=> b!7969874 (= lt!2707533 lt!2707549)))

(assert (=> b!7969874 (isPrefix!6627 (++!18397 testedP!447 (Cons!74632 (head!16279 (getSuffix!3830 input!7927 testedP!447)) Nil!74632)) input!7927)))

(assert (=> b!7969874 (= lt!2707549 (lemmaAddHeadSuffixToPrefixStillPrefix!1354 testedP!447 input!7927))))

(declare-fun lt!2707535 () Unit!170264)

(declare-fun lt!2707548 () Unit!170264)

(assert (=> b!7969874 (= lt!2707535 lt!2707548)))

(assert (=> b!7969874 (= lt!2707548 (lemmaAddHeadSuffixToPrefixStillPrefix!1354 testedP!447 input!7927))))

(declare-fun lt!2707531 () List!74756)

(assert (=> b!7969874 (= lt!2707531 (++!18397 testedP!447 (Cons!74632 (head!16279 lt!2707245) Nil!74632)))))

(declare-fun lt!2707530 () Unit!170264)

(declare-fun e!4699287 () Unit!170264)

(assert (=> b!7969874 (= lt!2707530 e!4699287)))

(declare-fun c!1463661 () Bool)

(assert (=> b!7969874 (= c!1463661 (= (size!43463 testedP!447) (size!43463 input!7927)))))

(declare-fun lt!2707525 () Unit!170264)

(declare-fun lt!2707547 () Unit!170264)

(assert (=> b!7969874 (= lt!2707525 lt!2707547)))

(assert (=> b!7969874 (<= (size!43463 testedP!447) (size!43463 input!7927))))

(assert (=> b!7969874 (= lt!2707547 (lemmaIsPrefixThenSmallerEqSize!1144 testedP!447 input!7927))))

(assert (=> b!7969874 (= e!4699285 e!4699284)))

(declare-fun d!2379748 () Bool)

(declare-fun e!4699290 () Bool)

(assert (=> d!2379748 e!4699290))

(declare-fun res!3157676 () Bool)

(assert (=> d!2379748 (=> (not res!3157676) (not e!4699290))))

(assert (=> d!2379748 (= res!3157676 (= (++!18397 (_1!38661 lt!2707536) (_2!38661 lt!2707536)) input!7927))))

(assert (=> d!2379748 (= lt!2707536 e!4699289)))

(declare-fun c!1463662 () Bool)

(assert (=> d!2379748 (= c!1463662 (lostCause!1990 r!24602))))

(declare-fun lt!2707532 () Unit!170264)

(declare-fun Unit!170277 () Unit!170264)

(assert (=> d!2379748 (= lt!2707532 Unit!170277)))

(assert (=> d!2379748 (= (getSuffix!3830 input!7927 testedP!447) lt!2707245)))

(declare-fun lt!2707543 () Unit!170264)

(declare-fun lt!2707529 () Unit!170264)

(assert (=> d!2379748 (= lt!2707543 lt!2707529)))

(declare-fun lt!2707545 () List!74756)

(assert (=> d!2379748 (= lt!2707245 lt!2707545)))

(assert (=> d!2379748 (= lt!2707529 (lemmaSamePrefixThenSameSuffix!3006 testedP!447 lt!2707245 testedP!447 lt!2707545 input!7927))))

(assert (=> d!2379748 (= lt!2707545 (getSuffix!3830 input!7927 testedP!447))))

(declare-fun lt!2707526 () Unit!170264)

(declare-fun lt!2707534 () Unit!170264)

(assert (=> d!2379748 (= lt!2707526 lt!2707534)))

(assert (=> d!2379748 (isPrefix!6627 testedP!447 (++!18397 testedP!447 lt!2707245))))

(assert (=> d!2379748 (= lt!2707534 (lemmaConcatTwoListThenFirstIsPrefix!3868 testedP!447 lt!2707245))))

(assert (=> d!2379748 (validRegex!11831 r!24602)))

(assert (=> d!2379748 (= (findLongestMatchInner!2308 r!24602 testedP!447 lt!2707241 lt!2707245 input!7927 lt!2707249) lt!2707536)))

(declare-fun bm!739472 () Bool)

(assert (=> bm!739472 (= call!739478 (isPrefix!6627 input!7927 input!7927))))

(declare-fun bm!739473 () Bool)

(assert (=> bm!739473 (= call!739476 (lemmaIsPrefixSameLengthThenSameList!1675 input!7927 testedP!447 input!7927))))

(declare-fun b!7969875 () Bool)

(assert (=> b!7969875 (= e!4699288 lt!2707539)))

(declare-fun b!7969876 () Bool)

(declare-fun Unit!170278 () Unit!170264)

(assert (=> b!7969876 (= e!4699287 Unit!170278)))

(declare-fun bm!739474 () Bool)

(assert (=> bm!739474 (= call!739480 (head!16279 lt!2707245))))

(declare-fun bm!739475 () Bool)

(declare-fun call!739477 () List!74756)

(assert (=> bm!739475 (= call!739477 (tail!15808 lt!2707245))))

(declare-fun b!7969877 () Bool)

(assert (=> b!7969877 (= e!4699284 call!739482)))

(declare-fun b!7969878 () Bool)

(assert (=> b!7969878 (= e!4699290 e!4699286)))

(declare-fun res!3157677 () Bool)

(assert (=> b!7969878 (=> res!3157677 e!4699286)))

(assert (=> b!7969878 (= res!3157677 (isEmpty!42933 (_1!38661 lt!2707536)))))

(declare-fun b!7969879 () Bool)

(assert (=> b!7969879 (= e!4699289 e!4699285)))

(declare-fun c!1463663 () Bool)

(assert (=> b!7969879 (= c!1463663 (= lt!2707241 lt!2707249))))

(declare-fun bm!739476 () Bool)

(assert (=> bm!739476 (= call!739482 (findLongestMatchInner!2308 call!739479 lt!2707531 (+ lt!2707241 1) call!739477 input!7927 lt!2707249))))

(declare-fun bm!739477 () Bool)

(assert (=> bm!739477 (= call!739481 (lemmaIsPrefixRefl!4095 input!7927 input!7927))))

(declare-fun b!7969880 () Bool)

(declare-fun Unit!170279 () Unit!170264)

(assert (=> b!7969880 (= e!4699287 Unit!170279)))

(declare-fun lt!2707538 () Unit!170264)

(assert (=> b!7969880 (= lt!2707538 call!739481)))

(assert (=> b!7969880 call!739478))

(declare-fun lt!2707544 () Unit!170264)

(assert (=> b!7969880 (= lt!2707544 lt!2707538)))

(declare-fun lt!2707528 () Unit!170264)

(assert (=> b!7969880 (= lt!2707528 call!739476)))

(assert (=> b!7969880 (= input!7927 testedP!447)))

(declare-fun lt!2707541 () Unit!170264)

(assert (=> b!7969880 (= lt!2707541 lt!2707528)))

(assert (=> b!7969880 false))

(declare-fun b!7969881 () Bool)

(assert (=> b!7969881 (= e!4699291 (tuple2!70717 testedP!447 Nil!74632))))

(assert (= (and d!2379748 c!1463662) b!7969873))

(assert (= (and d!2379748 (not c!1463662)) b!7969879))

(assert (= (and b!7969879 c!1463663) b!7969871))

(assert (= (and b!7969879 (not c!1463663)) b!7969874))

(assert (= (and b!7969871 c!1463664) b!7969881))

(assert (= (and b!7969871 (not c!1463664)) b!7969870))

(assert (= (and b!7969874 c!1463661) b!7969880))

(assert (= (and b!7969874 (not c!1463661)) b!7969876))

(assert (= (and b!7969874 c!1463660) b!7969872))

(assert (= (and b!7969874 (not c!1463660)) b!7969877))

(assert (= (and b!7969872 c!1463659) b!7969869))

(assert (= (and b!7969872 (not c!1463659)) b!7969875))

(assert (= (or b!7969872 b!7969877) bm!739474))

(assert (= (or b!7969872 b!7969877) bm!739475))

(assert (= (or b!7969872 b!7969877) bm!739470))

(assert (= (or b!7969872 b!7969877) bm!739476))

(assert (= (or b!7969871 b!7969874) bm!739471))

(assert (= (or b!7969871 b!7969880) bm!739473))

(assert (= (or b!7969871 b!7969880) bm!739477))

(assert (= (or b!7969871 b!7969880) bm!739472))

(assert (= (and d!2379748 res!3157676) b!7969878))

(assert (= (and b!7969878 (not res!3157677)) b!7969868))

(declare-fun m!8348382 () Bool)

(assert (=> b!7969868 m!8348382))

(assert (=> b!7969868 m!8348042))

(declare-fun m!8348384 () Bool)

(assert (=> bm!739475 m!8348384))

(assert (=> bm!739473 m!8348034))

(declare-fun m!8348386 () Bool)

(assert (=> b!7969878 m!8348386))

(assert (=> bm!739474 m!8348006))

(declare-fun m!8348388 () Bool)

(assert (=> bm!739470 m!8348388))

(assert (=> bm!739471 m!8348002))

(declare-fun m!8348390 () Bool)

(assert (=> b!7969872 m!8348390))

(assert (=> bm!739477 m!8348030))

(declare-fun m!8348392 () Bool)

(assert (=> d!2379748 m!8348392))

(assert (=> d!2379748 m!8348046))

(assert (=> d!2379748 m!8348028))

(declare-fun m!8348394 () Bool)

(assert (=> d!2379748 m!8348394))

(declare-fun m!8348396 () Bool)

(assert (=> d!2379748 m!8348396))

(declare-fun m!8348398 () Bool)

(assert (=> d!2379748 m!8348398))

(declare-fun m!8348400 () Bool)

(assert (=> d!2379748 m!8348400))

(assert (=> d!2379748 m!8348398))

(declare-fun m!8348402 () Bool)

(assert (=> d!2379748 m!8348402))

(assert (=> b!7969874 m!8348006))

(assert (=> b!7969874 m!8348044))

(assert (=> b!7969874 m!8348068))

(assert (=> b!7969874 m!8348072))

(assert (=> b!7969874 m!8348038))

(declare-fun m!8348404 () Bool)

(assert (=> b!7969874 m!8348404))

(declare-fun m!8348406 () Bool)

(assert (=> b!7969874 m!8348406))

(assert (=> b!7969874 m!8348046))

(assert (=> b!7969874 m!8348066))

(assert (=> b!7969874 m!8348068))

(assert (=> b!7969874 m!8348000))

(assert (=> b!7969874 m!8348046))

(assert (=> b!7969874 m!8348042))

(assert (=> b!7969874 m!8348404))

(declare-fun m!8348408 () Bool)

(assert (=> b!7969874 m!8348408))

(assert (=> b!7969874 m!8348384))

(declare-fun m!8348410 () Bool)

(assert (=> b!7969874 m!8348410))

(assert (=> bm!739472 m!8348032))

(declare-fun m!8348412 () Bool)

(assert (=> bm!739476 m!8348412))

(assert (=> b!7969430 d!2379748))

(declare-fun d!2379750 () Bool)

(declare-fun lt!2707553 () List!74756)

(assert (=> d!2379750 (= (++!18397 testedP!447 lt!2707553) input!7927)))

(declare-fun e!4699292 () List!74756)

(assert (=> d!2379750 (= lt!2707553 e!4699292)))

(declare-fun c!1463665 () Bool)

(assert (=> d!2379750 (= c!1463665 ((_ is Cons!74632) testedP!447))))

(assert (=> d!2379750 (>= (size!43463 input!7927) (size!43463 testedP!447))))

(assert (=> d!2379750 (= (getSuffix!3830 input!7927 testedP!447) lt!2707553)))

(declare-fun b!7969882 () Bool)

(assert (=> b!7969882 (= e!4699292 (getSuffix!3830 (tail!15808 input!7927) (t!390499 testedP!447)))))

(declare-fun b!7969883 () Bool)

(assert (=> b!7969883 (= e!4699292 input!7927)))

(assert (= (and d!2379750 c!1463665) b!7969882))

(assert (= (and d!2379750 (not c!1463665)) b!7969883))

(declare-fun m!8348414 () Bool)

(assert (=> d!2379750 m!8348414))

(assert (=> d!2379750 m!8348044))

(assert (=> d!2379750 m!8348042))

(assert (=> b!7969882 m!8348106))

(assert (=> b!7969882 m!8348106))

(declare-fun m!8348416 () Bool)

(assert (=> b!7969882 m!8348416))

(assert (=> b!7969430 d!2379750))

(declare-fun d!2379752 () Bool)

(assert (=> d!2379752 (= (isEmpty!42933 (_1!38661 (findLongestMatchInner!2308 r!24602 testedP!447 lt!2707241 lt!2707245 input!7927 lt!2707249))) ((_ is Nil!74632) (_1!38661 (findLongestMatchInner!2308 r!24602 testedP!447 lt!2707241 lt!2707245 input!7927 lt!2707249))))))

(assert (=> b!7969430 d!2379752))

(declare-fun d!2379754 () Bool)

(declare-fun e!4699310 () Bool)

(assert (=> d!2379754 e!4699310))

(declare-fun c!1463672 () Bool)

(assert (=> d!2379754 (= c!1463672 ((_ is EmptyExpr!21527) baseR!116))))

(declare-fun lt!2707556 () Bool)

(declare-fun e!4699307 () Bool)

(assert (=> d!2379754 (= lt!2707556 e!4699307)))

(declare-fun c!1463674 () Bool)

(assert (=> d!2379754 (= c!1463674 (isEmpty!42933 (_1!38661 lt!2707237)))))

(assert (=> d!2379754 (validRegex!11831 baseR!116)))

(assert (=> d!2379754 (= (matchR!10750 baseR!116 (_1!38661 lt!2707237)) lt!2707556)))

(declare-fun b!7969912 () Bool)

(declare-fun e!4699311 () Bool)

(assert (=> b!7969912 (= e!4699310 e!4699311)))

(declare-fun c!1463673 () Bool)

(assert (=> b!7969912 (= c!1463673 ((_ is EmptyLang!21527) baseR!116))))

(declare-fun b!7969913 () Bool)

(declare-fun res!3157697 () Bool)

(declare-fun e!4699308 () Bool)

(assert (=> b!7969913 (=> (not res!3157697) (not e!4699308))))

(assert (=> b!7969913 (= res!3157697 (isEmpty!42933 (tail!15808 (_1!38661 lt!2707237))))))

(declare-fun b!7969914 () Bool)

(declare-fun res!3157701 () Bool)

(declare-fun e!4699312 () Bool)

(assert (=> b!7969914 (=> res!3157701 e!4699312)))

(assert (=> b!7969914 (= res!3157701 (not ((_ is ElementMatch!21527) baseR!116)))))

(assert (=> b!7969914 (= e!4699311 e!4699312)))

(declare-fun b!7969915 () Bool)

(assert (=> b!7969915 (= e!4699308 (= (head!16279 (_1!38661 lt!2707237)) (c!1463530 baseR!116)))))

(declare-fun b!7969916 () Bool)

(assert (=> b!7969916 (= e!4699311 (not lt!2707556))))

(declare-fun b!7969917 () Bool)

(declare-fun res!3157700 () Bool)

(declare-fun e!4699313 () Bool)

(assert (=> b!7969917 (=> res!3157700 e!4699313)))

(assert (=> b!7969917 (= res!3157700 (not (isEmpty!42933 (tail!15808 (_1!38661 lt!2707237)))))))

(declare-fun b!7969918 () Bool)

(declare-fun e!4699309 () Bool)

(assert (=> b!7969918 (= e!4699309 e!4699313)))

(declare-fun res!3157696 () Bool)

(assert (=> b!7969918 (=> res!3157696 e!4699313)))

(declare-fun call!739485 () Bool)

(assert (=> b!7969918 (= res!3157696 call!739485)))

(declare-fun b!7969919 () Bool)

(assert (=> b!7969919 (= e!4699312 e!4699309)))

(declare-fun res!3157699 () Bool)

(assert (=> b!7969919 (=> (not res!3157699) (not e!4699309))))

(assert (=> b!7969919 (= res!3157699 (not lt!2707556))))

(declare-fun b!7969920 () Bool)

(assert (=> b!7969920 (= e!4699310 (= lt!2707556 call!739485))))

(declare-fun b!7969921 () Bool)

(assert (=> b!7969921 (= e!4699307 (matchR!10750 (derivativeStep!6553 baseR!116 (head!16279 (_1!38661 lt!2707237))) (tail!15808 (_1!38661 lt!2707237))))))

(declare-fun b!7969922 () Bool)

(assert (=> b!7969922 (= e!4699307 (nullable!9626 baseR!116))))

(declare-fun b!7969923 () Bool)

(declare-fun res!3157698 () Bool)

(assert (=> b!7969923 (=> (not res!3157698) (not e!4699308))))

(assert (=> b!7969923 (= res!3157698 (not call!739485))))

(declare-fun b!7969924 () Bool)

(assert (=> b!7969924 (= e!4699313 (not (= (head!16279 (_1!38661 lt!2707237)) (c!1463530 baseR!116))))))

(declare-fun bm!739480 () Bool)

(assert (=> bm!739480 (= call!739485 (isEmpty!42933 (_1!38661 lt!2707237)))))

(declare-fun b!7969925 () Bool)

(declare-fun res!3157695 () Bool)

(assert (=> b!7969925 (=> res!3157695 e!4699312)))

(assert (=> b!7969925 (= res!3157695 e!4699308)))

(declare-fun res!3157694 () Bool)

(assert (=> b!7969925 (=> (not res!3157694) (not e!4699308))))

(assert (=> b!7969925 (= res!3157694 lt!2707556)))

(assert (= (and d!2379754 c!1463674) b!7969922))

(assert (= (and d!2379754 (not c!1463674)) b!7969921))

(assert (= (and d!2379754 c!1463672) b!7969920))

(assert (= (and d!2379754 (not c!1463672)) b!7969912))

(assert (= (and b!7969912 c!1463673) b!7969916))

(assert (= (and b!7969912 (not c!1463673)) b!7969914))

(assert (= (and b!7969914 (not res!3157701)) b!7969925))

(assert (= (and b!7969925 res!3157694) b!7969923))

(assert (= (and b!7969923 res!3157698) b!7969913))

(assert (= (and b!7969913 res!3157697) b!7969915))

(assert (= (and b!7969925 (not res!3157695)) b!7969919))

(assert (= (and b!7969919 res!3157699) b!7969918))

(assert (= (and b!7969918 (not res!3157696)) b!7969917))

(assert (= (and b!7969917 (not res!3157700)) b!7969924))

(assert (= (or b!7969920 b!7969918 b!7969923) bm!739480))

(declare-fun m!8348418 () Bool)

(assert (=> b!7969924 m!8348418))

(assert (=> d!2379754 m!8348014))

(assert (=> d!2379754 m!8348036))

(declare-fun m!8348420 () Bool)

(assert (=> b!7969922 m!8348420))

(assert (=> b!7969915 m!8348418))

(declare-fun m!8348422 () Bool)

(assert (=> b!7969917 m!8348422))

(assert (=> b!7969917 m!8348422))

(declare-fun m!8348424 () Bool)

(assert (=> b!7969917 m!8348424))

(assert (=> b!7969913 m!8348422))

(assert (=> b!7969913 m!8348422))

(assert (=> b!7969913 m!8348424))

(assert (=> b!7969921 m!8348418))

(assert (=> b!7969921 m!8348418))

(declare-fun m!8348426 () Bool)

(assert (=> b!7969921 m!8348426))

(assert (=> b!7969921 m!8348422))

(assert (=> b!7969921 m!8348426))

(assert (=> b!7969921 m!8348422))

(declare-fun m!8348428 () Bool)

(assert (=> b!7969921 m!8348428))

(assert (=> bm!739480 m!8348014))

(assert (=> b!7969414 d!2379754))

(declare-fun d!2379756 () Bool)

(assert (=> d!2379756 (isPrefix!6627 input!7927 input!7927)))

(declare-fun lt!2707559 () Unit!170264)

(declare-fun choose!60094 (List!74756 List!74756) Unit!170264)

(assert (=> d!2379756 (= lt!2707559 (choose!60094 input!7927 input!7927))))

(assert (=> d!2379756 (= (lemmaIsPrefixRefl!4095 input!7927 input!7927) lt!2707559)))

(declare-fun bs!1969953 () Bool)

(assert (= bs!1969953 d!2379756))

(assert (=> bs!1969953 m!8348032))

(declare-fun m!8348430 () Bool)

(assert (=> bs!1969953 m!8348430))

(assert (=> b!7969429 d!2379756))

(declare-fun b!7969929 () Bool)

(declare-fun e!4699316 () Bool)

(assert (=> b!7969929 (= e!4699316 (>= (size!43463 input!7927) (size!43463 input!7927)))))

(declare-fun b!7969927 () Bool)

(declare-fun res!3157703 () Bool)

(declare-fun e!4699315 () Bool)

(assert (=> b!7969927 (=> (not res!3157703) (not e!4699315))))

(assert (=> b!7969927 (= res!3157703 (= (head!16279 input!7927) (head!16279 input!7927)))))

(declare-fun d!2379758 () Bool)

(assert (=> d!2379758 e!4699316))

(declare-fun res!3157702 () Bool)

(assert (=> d!2379758 (=> res!3157702 e!4699316)))

(declare-fun lt!2707560 () Bool)

(assert (=> d!2379758 (= res!3157702 (not lt!2707560))))

(declare-fun e!4699314 () Bool)

(assert (=> d!2379758 (= lt!2707560 e!4699314)))

(declare-fun res!3157705 () Bool)

(assert (=> d!2379758 (=> res!3157705 e!4699314)))

(assert (=> d!2379758 (= res!3157705 ((_ is Nil!74632) input!7927))))

(assert (=> d!2379758 (= (isPrefix!6627 input!7927 input!7927) lt!2707560)))

(declare-fun b!7969928 () Bool)

(assert (=> b!7969928 (= e!4699315 (isPrefix!6627 (tail!15808 input!7927) (tail!15808 input!7927)))))

(declare-fun b!7969926 () Bool)

(assert (=> b!7969926 (= e!4699314 e!4699315)))

(declare-fun res!3157704 () Bool)

(assert (=> b!7969926 (=> (not res!3157704) (not e!4699315))))

(assert (=> b!7969926 (= res!3157704 (not ((_ is Nil!74632) input!7927)))))

(assert (= (and d!2379758 (not res!3157705)) b!7969926))

(assert (= (and b!7969926 res!3157704) b!7969927))

(assert (= (and b!7969927 res!3157703) b!7969928))

(assert (= (and d!2379758 (not res!3157702)) b!7969929))

(assert (=> b!7969929 m!8348044))

(assert (=> b!7969929 m!8348044))

(assert (=> b!7969927 m!8348102))

(assert (=> b!7969927 m!8348102))

(assert (=> b!7969928 m!8348106))

(assert (=> b!7969928 m!8348106))

(assert (=> b!7969928 m!8348106))

(assert (=> b!7969928 m!8348106))

(declare-fun m!8348432 () Bool)

(assert (=> b!7969928 m!8348432))

(assert (=> b!7969429 d!2379758))

(declare-fun d!2379760 () Bool)

(assert (=> d!2379760 (= input!7927 testedP!447)))

(declare-fun lt!2707563 () Unit!170264)

(declare-fun choose!60095 (List!74756 List!74756 List!74756) Unit!170264)

(assert (=> d!2379760 (= lt!2707563 (choose!60095 input!7927 testedP!447 input!7927))))

(assert (=> d!2379760 (isPrefix!6627 input!7927 input!7927)))

(assert (=> d!2379760 (= (lemmaIsPrefixSameLengthThenSameList!1675 input!7927 testedP!447 input!7927) lt!2707563)))

(declare-fun bs!1969954 () Bool)

(assert (= bs!1969954 d!2379760))

(declare-fun m!8348434 () Bool)

(assert (=> bs!1969954 m!8348434))

(assert (=> bs!1969954 m!8348032))

(assert (=> b!7969429 d!2379760))

(declare-fun bm!739481 () Bool)

(declare-fun call!739486 () Bool)

(declare-fun call!739487 () Bool)

(assert (=> bm!739481 (= call!739486 call!739487)))

(declare-fun b!7969930 () Bool)

(declare-fun e!4699321 () Bool)

(declare-fun e!4699319 () Bool)

(assert (=> b!7969930 (= e!4699321 e!4699319)))

(declare-fun c!1463676 () Bool)

(assert (=> b!7969930 (= c!1463676 ((_ is Union!21527) baseR!116))))

(declare-fun bm!739482 () Bool)

(declare-fun call!739488 () Bool)

(assert (=> bm!739482 (= call!739488 (validRegex!11831 (ite c!1463676 (regOne!43567 baseR!116) (regOne!43566 baseR!116))))))

(declare-fun b!7969931 () Bool)

(declare-fun res!3157710 () Bool)

(declare-fun e!4699318 () Bool)

(assert (=> b!7969931 (=> res!3157710 e!4699318)))

(assert (=> b!7969931 (= res!3157710 (not ((_ is Concat!30526) baseR!116)))))

(assert (=> b!7969931 (= e!4699319 e!4699318)))

(declare-fun b!7969932 () Bool)

(declare-fun e!4699323 () Bool)

(assert (=> b!7969932 (= e!4699323 call!739486)))

(declare-fun b!7969933 () Bool)

(declare-fun e!4699322 () Bool)

(assert (=> b!7969933 (= e!4699322 call!739487)))

(declare-fun d!2379762 () Bool)

(declare-fun res!3157707 () Bool)

(declare-fun e!4699317 () Bool)

(assert (=> d!2379762 (=> res!3157707 e!4699317)))

(assert (=> d!2379762 (= res!3157707 ((_ is ElementMatch!21527) baseR!116))))

(assert (=> d!2379762 (= (validRegex!11831 baseR!116) e!4699317)))

(declare-fun b!7969934 () Bool)

(assert (=> b!7969934 (= e!4699317 e!4699321)))

(declare-fun c!1463675 () Bool)

(assert (=> b!7969934 (= c!1463675 ((_ is Star!21527) baseR!116))))

(declare-fun b!7969935 () Bool)

(assert (=> b!7969935 (= e!4699321 e!4699322)))

(declare-fun res!3157706 () Bool)

(assert (=> b!7969935 (= res!3157706 (not (nullable!9626 (reg!21856 baseR!116))))))

(assert (=> b!7969935 (=> (not res!3157706) (not e!4699322))))

(declare-fun b!7969936 () Bool)

(declare-fun res!3157708 () Bool)

(declare-fun e!4699320 () Bool)

(assert (=> b!7969936 (=> (not res!3157708) (not e!4699320))))

(assert (=> b!7969936 (= res!3157708 call!739488)))

(assert (=> b!7969936 (= e!4699319 e!4699320)))

(declare-fun bm!739483 () Bool)

(assert (=> bm!739483 (= call!739487 (validRegex!11831 (ite c!1463675 (reg!21856 baseR!116) (ite c!1463676 (regTwo!43567 baseR!116) (regTwo!43566 baseR!116)))))))

(declare-fun b!7969937 () Bool)

(assert (=> b!7969937 (= e!4699318 e!4699323)))

(declare-fun res!3157709 () Bool)

(assert (=> b!7969937 (=> (not res!3157709) (not e!4699323))))

(assert (=> b!7969937 (= res!3157709 call!739488)))

(declare-fun b!7969938 () Bool)

(assert (=> b!7969938 (= e!4699320 call!739486)))

(assert (= (and d!2379762 (not res!3157707)) b!7969934))

(assert (= (and b!7969934 c!1463675) b!7969935))

(assert (= (and b!7969934 (not c!1463675)) b!7969930))

(assert (= (and b!7969935 res!3157706) b!7969933))

(assert (= (and b!7969930 c!1463676) b!7969936))

(assert (= (and b!7969930 (not c!1463676)) b!7969931))

(assert (= (and b!7969936 res!3157708) b!7969938))

(assert (= (and b!7969931 (not res!3157710)) b!7969937))

(assert (= (and b!7969937 res!3157709) b!7969932))

(assert (= (or b!7969938 b!7969932) bm!739481))

(assert (= (or b!7969936 b!7969937) bm!739482))

(assert (= (or b!7969933 bm!739481) bm!739483))

(declare-fun m!8348436 () Bool)

(assert (=> bm!739482 m!8348436))

(declare-fun m!8348438 () Bool)

(assert (=> b!7969935 m!8348438))

(declare-fun m!8348440 () Bool)

(assert (=> bm!739483 m!8348440))

(assert (=> start!751624 d!2379762))

(declare-fun b!7969943 () Bool)

(declare-fun e!4699326 () Bool)

(declare-fun tp!2375833 () Bool)

(assert (=> b!7969943 (= e!4699326 (and tp_is_empty!53597 tp!2375833))))

(assert (=> b!7969423 (= tp!2375763 e!4699326)))

(assert (= (and b!7969423 ((_ is Cons!74632) (t!390499 testedP!447))) b!7969943))

(declare-fun b!7969957 () Bool)

(declare-fun e!4699329 () Bool)

(declare-fun tp!2375848 () Bool)

(declare-fun tp!2375845 () Bool)

(assert (=> b!7969957 (= e!4699329 (and tp!2375848 tp!2375845))))

(declare-fun b!7969955 () Bool)

(declare-fun tp!2375846 () Bool)

(declare-fun tp!2375847 () Bool)

(assert (=> b!7969955 (= e!4699329 (and tp!2375846 tp!2375847))))

(declare-fun b!7969954 () Bool)

(assert (=> b!7969954 (= e!4699329 tp_is_empty!53597)))

(assert (=> b!7969418 (= tp!2375764 e!4699329)))

(declare-fun b!7969956 () Bool)

(declare-fun tp!2375844 () Bool)

(assert (=> b!7969956 (= e!4699329 tp!2375844)))

(assert (= (and b!7969418 ((_ is ElementMatch!21527) (regOne!43567 baseR!116))) b!7969954))

(assert (= (and b!7969418 ((_ is Concat!30526) (regOne!43567 baseR!116))) b!7969955))

(assert (= (and b!7969418 ((_ is Star!21527) (regOne!43567 baseR!116))) b!7969956))

(assert (= (and b!7969418 ((_ is Union!21527) (regOne!43567 baseR!116))) b!7969957))

(declare-fun b!7969961 () Bool)

(declare-fun e!4699330 () Bool)

(declare-fun tp!2375853 () Bool)

(declare-fun tp!2375850 () Bool)

(assert (=> b!7969961 (= e!4699330 (and tp!2375853 tp!2375850))))

(declare-fun b!7969959 () Bool)

(declare-fun tp!2375851 () Bool)

(declare-fun tp!2375852 () Bool)

(assert (=> b!7969959 (= e!4699330 (and tp!2375851 tp!2375852))))

(declare-fun b!7969958 () Bool)

(assert (=> b!7969958 (= e!4699330 tp_is_empty!53597)))

(assert (=> b!7969418 (= tp!2375757 e!4699330)))

(declare-fun b!7969960 () Bool)

(declare-fun tp!2375849 () Bool)

(assert (=> b!7969960 (= e!4699330 tp!2375849)))

(assert (= (and b!7969418 ((_ is ElementMatch!21527) (regTwo!43567 baseR!116))) b!7969958))

(assert (= (and b!7969418 ((_ is Concat!30526) (regTwo!43567 baseR!116))) b!7969959))

(assert (= (and b!7969418 ((_ is Star!21527) (regTwo!43567 baseR!116))) b!7969960))

(assert (= (and b!7969418 ((_ is Union!21527) (regTwo!43567 baseR!116))) b!7969961))

(declare-fun b!7969965 () Bool)

(declare-fun e!4699331 () Bool)

(declare-fun tp!2375858 () Bool)

(declare-fun tp!2375855 () Bool)

(assert (=> b!7969965 (= e!4699331 (and tp!2375858 tp!2375855))))

(declare-fun b!7969963 () Bool)

(declare-fun tp!2375856 () Bool)

(declare-fun tp!2375857 () Bool)

(assert (=> b!7969963 (= e!4699331 (and tp!2375856 tp!2375857))))

(declare-fun b!7969962 () Bool)

(assert (=> b!7969962 (= e!4699331 tp_is_empty!53597)))

(assert (=> b!7969428 (= tp!2375766 e!4699331)))

(declare-fun b!7969964 () Bool)

(declare-fun tp!2375854 () Bool)

(assert (=> b!7969964 (= e!4699331 tp!2375854)))

(assert (= (and b!7969428 ((_ is ElementMatch!21527) (regOne!43567 r!24602))) b!7969962))

(assert (= (and b!7969428 ((_ is Concat!30526) (regOne!43567 r!24602))) b!7969963))

(assert (= (and b!7969428 ((_ is Star!21527) (regOne!43567 r!24602))) b!7969964))

(assert (= (and b!7969428 ((_ is Union!21527) (regOne!43567 r!24602))) b!7969965))

(declare-fun b!7969969 () Bool)

(declare-fun e!4699332 () Bool)

(declare-fun tp!2375863 () Bool)

(declare-fun tp!2375860 () Bool)

(assert (=> b!7969969 (= e!4699332 (and tp!2375863 tp!2375860))))

(declare-fun b!7969967 () Bool)

(declare-fun tp!2375861 () Bool)

(declare-fun tp!2375862 () Bool)

(assert (=> b!7969967 (= e!4699332 (and tp!2375861 tp!2375862))))

(declare-fun b!7969966 () Bool)

(assert (=> b!7969966 (= e!4699332 tp_is_empty!53597)))

(assert (=> b!7969428 (= tp!2375756 e!4699332)))

(declare-fun b!7969968 () Bool)

(declare-fun tp!2375859 () Bool)

(assert (=> b!7969968 (= e!4699332 tp!2375859)))

(assert (= (and b!7969428 ((_ is ElementMatch!21527) (regTwo!43567 r!24602))) b!7969966))

(assert (= (and b!7969428 ((_ is Concat!30526) (regTwo!43567 r!24602))) b!7969967))

(assert (= (and b!7969428 ((_ is Star!21527) (regTwo!43567 r!24602))) b!7969968))

(assert (= (and b!7969428 ((_ is Union!21527) (regTwo!43567 r!24602))) b!7969969))

(declare-fun b!7969970 () Bool)

(declare-fun e!4699333 () Bool)

(declare-fun tp!2375864 () Bool)

(assert (=> b!7969970 (= e!4699333 (and tp_is_empty!53597 tp!2375864))))

(assert (=> b!7969427 (= tp!2375762 e!4699333)))

(assert (= (and b!7969427 ((_ is Cons!74632) (t!390499 input!7927))) b!7969970))

(declare-fun b!7969974 () Bool)

(declare-fun e!4699334 () Bool)

(declare-fun tp!2375869 () Bool)

(declare-fun tp!2375866 () Bool)

(assert (=> b!7969974 (= e!4699334 (and tp!2375869 tp!2375866))))

(declare-fun b!7969972 () Bool)

(declare-fun tp!2375867 () Bool)

(declare-fun tp!2375868 () Bool)

(assert (=> b!7969972 (= e!4699334 (and tp!2375867 tp!2375868))))

(declare-fun b!7969971 () Bool)

(assert (=> b!7969971 (= e!4699334 tp_is_empty!53597)))

(assert (=> b!7969416 (= tp!2375765 e!4699334)))

(declare-fun b!7969973 () Bool)

(declare-fun tp!2375865 () Bool)

(assert (=> b!7969973 (= e!4699334 tp!2375865)))

(assert (= (and b!7969416 ((_ is ElementMatch!21527) (regOne!43566 baseR!116))) b!7969971))

(assert (= (and b!7969416 ((_ is Concat!30526) (regOne!43566 baseR!116))) b!7969972))

(assert (= (and b!7969416 ((_ is Star!21527) (regOne!43566 baseR!116))) b!7969973))

(assert (= (and b!7969416 ((_ is Union!21527) (regOne!43566 baseR!116))) b!7969974))

(declare-fun b!7969978 () Bool)

(declare-fun e!4699335 () Bool)

(declare-fun tp!2375874 () Bool)

(declare-fun tp!2375871 () Bool)

(assert (=> b!7969978 (= e!4699335 (and tp!2375874 tp!2375871))))

(declare-fun b!7969976 () Bool)

(declare-fun tp!2375872 () Bool)

(declare-fun tp!2375873 () Bool)

(assert (=> b!7969976 (= e!4699335 (and tp!2375872 tp!2375873))))

(declare-fun b!7969975 () Bool)

(assert (=> b!7969975 (= e!4699335 tp_is_empty!53597)))

(assert (=> b!7969416 (= tp!2375760 e!4699335)))

(declare-fun b!7969977 () Bool)

(declare-fun tp!2375870 () Bool)

(assert (=> b!7969977 (= e!4699335 tp!2375870)))

(assert (= (and b!7969416 ((_ is ElementMatch!21527) (regTwo!43566 baseR!116))) b!7969975))

(assert (= (and b!7969416 ((_ is Concat!30526) (regTwo!43566 baseR!116))) b!7969976))

(assert (= (and b!7969416 ((_ is Star!21527) (regTwo!43566 baseR!116))) b!7969977))

(assert (= (and b!7969416 ((_ is Union!21527) (regTwo!43566 baseR!116))) b!7969978))

(declare-fun b!7969982 () Bool)

(declare-fun e!4699336 () Bool)

(declare-fun tp!2375879 () Bool)

(declare-fun tp!2375876 () Bool)

(assert (=> b!7969982 (= e!4699336 (and tp!2375879 tp!2375876))))

(declare-fun b!7969980 () Bool)

(declare-fun tp!2375877 () Bool)

(declare-fun tp!2375878 () Bool)

(assert (=> b!7969980 (= e!4699336 (and tp!2375877 tp!2375878))))

(declare-fun b!7969979 () Bool)

(assert (=> b!7969979 (= e!4699336 tp_is_empty!53597)))

(assert (=> b!7969425 (= tp!2375755 e!4699336)))

(declare-fun b!7969981 () Bool)

(declare-fun tp!2375875 () Bool)

(assert (=> b!7969981 (= e!4699336 tp!2375875)))

(assert (= (and b!7969425 ((_ is ElementMatch!21527) (reg!21856 baseR!116))) b!7969979))

(assert (= (and b!7969425 ((_ is Concat!30526) (reg!21856 baseR!116))) b!7969980))

(assert (= (and b!7969425 ((_ is Star!21527) (reg!21856 baseR!116))) b!7969981))

(assert (= (and b!7969425 ((_ is Union!21527) (reg!21856 baseR!116))) b!7969982))

(declare-fun b!7969986 () Bool)

(declare-fun e!4699337 () Bool)

(declare-fun tp!2375884 () Bool)

(declare-fun tp!2375881 () Bool)

(assert (=> b!7969986 (= e!4699337 (and tp!2375884 tp!2375881))))

(declare-fun b!7969984 () Bool)

(declare-fun tp!2375882 () Bool)

(declare-fun tp!2375883 () Bool)

(assert (=> b!7969984 (= e!4699337 (and tp!2375882 tp!2375883))))

(declare-fun b!7969983 () Bool)

(assert (=> b!7969983 (= e!4699337 tp_is_empty!53597)))

(assert (=> b!7969419 (= tp!2375761 e!4699337)))

(declare-fun b!7969985 () Bool)

(declare-fun tp!2375880 () Bool)

(assert (=> b!7969985 (= e!4699337 tp!2375880)))

(assert (= (and b!7969419 ((_ is ElementMatch!21527) (regOne!43566 r!24602))) b!7969983))

(assert (= (and b!7969419 ((_ is Concat!30526) (regOne!43566 r!24602))) b!7969984))

(assert (= (and b!7969419 ((_ is Star!21527) (regOne!43566 r!24602))) b!7969985))

(assert (= (and b!7969419 ((_ is Union!21527) (regOne!43566 r!24602))) b!7969986))

(declare-fun b!7969990 () Bool)

(declare-fun e!4699338 () Bool)

(declare-fun tp!2375889 () Bool)

(declare-fun tp!2375886 () Bool)

(assert (=> b!7969990 (= e!4699338 (and tp!2375889 tp!2375886))))

(declare-fun b!7969988 () Bool)

(declare-fun tp!2375887 () Bool)

(declare-fun tp!2375888 () Bool)

(assert (=> b!7969988 (= e!4699338 (and tp!2375887 tp!2375888))))

(declare-fun b!7969987 () Bool)

(assert (=> b!7969987 (= e!4699338 tp_is_empty!53597)))

(assert (=> b!7969419 (= tp!2375758 e!4699338)))

(declare-fun b!7969989 () Bool)

(declare-fun tp!2375885 () Bool)

(assert (=> b!7969989 (= e!4699338 tp!2375885)))

(assert (= (and b!7969419 ((_ is ElementMatch!21527) (regTwo!43566 r!24602))) b!7969987))

(assert (= (and b!7969419 ((_ is Concat!30526) (regTwo!43566 r!24602))) b!7969988))

(assert (= (and b!7969419 ((_ is Star!21527) (regTwo!43566 r!24602))) b!7969989))

(assert (= (and b!7969419 ((_ is Union!21527) (regTwo!43566 r!24602))) b!7969990))

(declare-fun b!7969994 () Bool)

(declare-fun e!4699339 () Bool)

(declare-fun tp!2375894 () Bool)

(declare-fun tp!2375891 () Bool)

(assert (=> b!7969994 (= e!4699339 (and tp!2375894 tp!2375891))))

(declare-fun b!7969992 () Bool)

(declare-fun tp!2375892 () Bool)

(declare-fun tp!2375893 () Bool)

(assert (=> b!7969992 (= e!4699339 (and tp!2375892 tp!2375893))))

(declare-fun b!7969991 () Bool)

(assert (=> b!7969991 (= e!4699339 tp_is_empty!53597)))

(assert (=> b!7969413 (= tp!2375759 e!4699339)))

(declare-fun b!7969993 () Bool)

(declare-fun tp!2375890 () Bool)

(assert (=> b!7969993 (= e!4699339 tp!2375890)))

(assert (= (and b!7969413 ((_ is ElementMatch!21527) (reg!21856 r!24602))) b!7969991))

(assert (= (and b!7969413 ((_ is Concat!30526) (reg!21856 r!24602))) b!7969992))

(assert (= (and b!7969413 ((_ is Star!21527) (reg!21856 r!24602))) b!7969993))

(assert (= (and b!7969413 ((_ is Union!21527) (reg!21856 r!24602))) b!7969994))

(check-sat (not bm!739476) (not b!7969463) (not b!7969990) (not d!2379732) (not b!7969496) (not bm!739437) (not b!7969935) (not d!2379756) (not bm!739460) (not b!7969978) (not d!2379754) (not b!7969960) (not bm!739475) (not bm!739439) (not d!2379760) (not b!7969992) (not bm!739457) (not d!2379726) (not b!7969917) (not b!7969704) (not bm!739433) (not b!7969518) (not b!7969929) (not b!7969976) (not b!7969969) (not b!7969922) (not b!7969984) (not b!7969986) (not b!7969874) (not bm!739468) (not b!7969859) (not bm!739470) (not b!7969957) (not d!2379658) (not bm!739440) (not d!2379748) (not b!7969963) (not bm!739477) (not b!7969956) (not b!7969928) (not b!7969708) (not b!7969964) (not bm!739473) (not d!2379750) (not b!7969988) (not b!7969980) (not b!7969495) (not bm!739469) (not b!7969982) (not b!7969967) (not b!7969965) tp_is_empty!53597 (not b!7969977) (not b!7969512) (not b!7969863) (not b!7969861) (not b!7969968) (not b!7969985) (not b!7969989) (not b!7969497) (not b!7969878) (not b!7969994) (not b!7969981) (not bm!739480) (not b!7969862) (not bm!739472) (not d!2379664) (not b!7969702) (not b!7969872) (not bm!739435) (not d!2379682) (not b!7969915) (not b!7969924) (not b!7969868) (not bm!739471) (not b!7969464) (not b!7969826) (not b!7969959) (not bm!739482) (not d!2379728) (not b!7969865) (not d!2379686) (not b!7969698) (not d!2379688) (not d!2379684) (not b!7969974) (not bm!739438) (not b!7969943) (not b!7969961) (not b!7969972) (not b!7969850) (not b!7969973) (not b!7969913) (not bm!739434) (not bm!739436) (not b!7969955) (not b!7969732) (not bm!739483) (not b!7969867) (not b!7969882) (not b!7969927) (not b!7969921) (not bm!739474) (not b!7969820) (not d!2379740) (not b!7969970) (not d!2379676) (not b!7969993))
(check-sat)
