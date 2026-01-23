; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754076 () Bool)

(assert start!754076)

(declare-fun b!8013059 () Bool)

(declare-fun e!4720320 () Bool)

(declare-fun tp_is_empty!53909 () Bool)

(declare-fun tp!2398344 () Bool)

(assert (=> b!8013059 (= e!4720320 (and tp_is_empty!53909 tp!2398344))))

(declare-fun b!8013060 () Bool)

(declare-fun e!4720314 () Bool)

(declare-fun e!4720309 () Bool)

(assert (=> b!8013060 (= e!4720314 e!4720309)))

(declare-fun res!3168536 () Bool)

(assert (=> b!8013060 (=> res!3168536 e!4720309)))

(declare-datatypes ((C!43704 0))(
  ( (C!43705 (val!32400 Int)) )
))
(declare-datatypes ((Regex!21683 0))(
  ( (ElementMatch!21683 (c!1470678 C!43704)) (Concat!30682 (regOne!43878 Regex!21683) (regTwo!43878 Regex!21683)) (EmptyExpr!21683) (Star!21683 (reg!22012 Regex!21683)) (EmptyLang!21683) (Union!21683 (regOne!43879 Regex!21683) (regTwo!43879 Regex!21683)) )
))
(declare-fun r!15422 () Regex!21683)

(declare-fun lostCause!2070 (Regex!21683) Bool)

(assert (=> b!8013060 (= res!3168536 (lostCause!2070 r!15422))))

(declare-datatypes ((List!74912 0))(
  ( (Nil!74788) (Cons!74788 (h!81236 C!43704) (t!390655 List!74912)) )
))
(declare-fun testedSuffix!271 () List!74912)

(declare-fun lt!2717553 () List!74912)

(assert (=> b!8013060 (and (= testedSuffix!271 lt!2717553) (= lt!2717553 testedSuffix!271))))

(declare-fun totalInput!1349 () List!74912)

(declare-datatypes ((Unit!170838 0))(
  ( (Unit!170839) )
))
(declare-fun lt!2717547 () Unit!170838)

(declare-fun testedP!353 () List!74912)

(declare-fun lemmaSamePrefixThenSameSuffix!3092 (List!74912 List!74912 List!74912 List!74912 List!74912) Unit!170838)

(assert (=> b!8013060 (= lt!2717547 (lemmaSamePrefixThenSameSuffix!3092 testedP!353 testedSuffix!271 testedP!353 lt!2717553 totalInput!1349))))

(declare-fun getSuffix!3930 (List!74912 List!74912) List!74912)

(assert (=> b!8013060 (= lt!2717553 (getSuffix!3930 totalInput!1349 testedP!353))))

(declare-fun b!8013061 () Bool)

(declare-fun e!4720318 () Bool)

(assert (=> b!8013061 (= e!4720318 tp_is_empty!53909)))

(declare-fun b!8013062 () Bool)

(declare-fun e!4720321 () Bool)

(assert (=> b!8013062 (= e!4720321 (not e!4720314))))

(declare-fun res!3168530 () Bool)

(assert (=> b!8013062 (=> res!3168530 e!4720314)))

(declare-fun isPrefix!6735 (List!74912 List!74912) Bool)

(assert (=> b!8013062 (= res!3168530 (not (isPrefix!6735 testedP!353 totalInput!1349)))))

(declare-fun lt!2717558 () List!74912)

(assert (=> b!8013062 (isPrefix!6735 testedP!353 lt!2717558)))

(declare-fun lt!2717551 () Unit!170838)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3966 (List!74912 List!74912) Unit!170838)

(assert (=> b!8013062 (= lt!2717551 (lemmaConcatTwoListThenFirstIsPrefix!3966 testedP!353 testedSuffix!271))))

(declare-fun b!8013063 () Bool)

(declare-fun e!4720313 () Bool)

(assert (=> b!8013063 (= e!4720309 e!4720313)))

(declare-fun res!3168538 () Bool)

(assert (=> b!8013063 (=> res!3168538 e!4720313)))

(declare-fun lt!2717555 () Int)

(declare-fun lt!2717561 () Int)

(assert (=> b!8013063 (= res!3168538 (>= lt!2717555 lt!2717561))))

(declare-fun lt!2717549 () Unit!170838)

(declare-fun e!4720319 () Unit!170838)

(assert (=> b!8013063 (= lt!2717549 e!4720319)))

(declare-fun c!1470677 () Bool)

(assert (=> b!8013063 (= c!1470677 (= lt!2717555 lt!2717561))))

(assert (=> b!8013063 (<= lt!2717555 lt!2717561)))

(declare-fun lt!2717552 () Unit!170838)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1218 (List!74912 List!74912) Unit!170838)

(assert (=> b!8013063 (= lt!2717552 (lemmaIsPrefixThenSmallerEqSize!1218 testedP!353 totalInput!1349))))

(declare-fun b!8013064 () Bool)

(declare-fun e!4720310 () Bool)

(declare-fun e!4720315 () Bool)

(assert (=> b!8013064 (= e!4720310 e!4720315)))

(declare-fun res!3168531 () Bool)

(assert (=> b!8013064 (=> (not res!3168531) (not e!4720315))))

(assert (=> b!8013064 (= res!3168531 (= lt!2717558 totalInput!1349))))

(declare-fun ++!18509 (List!74912 List!74912) List!74912)

(assert (=> b!8013064 (= lt!2717558 (++!18509 testedP!353 testedSuffix!271))))

(declare-fun b!8013065 () Bool)

(declare-fun e!4720316 () Bool)

(assert (=> b!8013065 (= e!4720315 e!4720316)))

(declare-fun res!3168534 () Bool)

(assert (=> b!8013065 (=> (not res!3168534) (not e!4720316))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8013065 (= res!3168534 (= testedPSize!271 lt!2717555))))

(declare-fun size!43585 (List!74912) Int)

(assert (=> b!8013065 (= lt!2717555 (size!43585 testedP!353))))

(declare-fun res!3168537 () Bool)

(assert (=> start!754076 (=> (not res!3168537) (not e!4720310))))

(declare-fun validRegex!11987 (Regex!21683) Bool)

(assert (=> start!754076 (= res!3168537 (validRegex!11987 r!15422))))

(assert (=> start!754076 e!4720310))

(declare-fun e!4720317 () Bool)

(assert (=> start!754076 e!4720317))

(assert (=> start!754076 true))

(declare-fun e!4720311 () Bool)

(assert (=> start!754076 e!4720311))

(assert (=> start!754076 e!4720318))

(assert (=> start!754076 e!4720320))

(declare-fun b!8013066 () Bool)

(declare-fun res!3168533 () Bool)

(assert (=> b!8013066 (=> res!3168533 e!4720309)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8013066 (= res!3168533 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8013067 () Bool)

(declare-fun Unit!170840 () Unit!170838)

(assert (=> b!8013067 (= e!4720319 Unit!170840)))

(declare-fun lt!2717559 () Unit!170838)

(declare-fun lemmaIsPrefixRefl!4177 (List!74912 List!74912) Unit!170838)

(assert (=> b!8013067 (= lt!2717559 (lemmaIsPrefixRefl!4177 totalInput!1349 totalInput!1349))))

(assert (=> b!8013067 (isPrefix!6735 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717556 () Unit!170838)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1747 (List!74912 List!74912 List!74912) Unit!170838)

(assert (=> b!8013067 (= lt!2717556 (lemmaIsPrefixSameLengthThenSameList!1747 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8013067 false))

(declare-fun b!8013068 () Bool)

(declare-fun e!4720312 () Bool)

(declare-fun lt!2717548 () List!74912)

(assert (=> b!8013068 (= e!4720312 (< (- lt!2717561 (size!43585 lt!2717548)) (- lt!2717561 lt!2717555)))))

(declare-fun lt!2717550 () Regex!21683)

(declare-fun lt!2717557 () C!43704)

(declare-fun derivativeStep!6634 (Regex!21683 C!43704) Regex!21683)

(assert (=> b!8013068 (= lt!2717550 (derivativeStep!6634 r!15422 lt!2717557))))

(declare-fun b!8013069 () Bool)

(declare-fun tp!2398339 () Bool)

(assert (=> b!8013069 (= e!4720311 (and tp_is_empty!53909 tp!2398339))))

(declare-fun b!8013070 () Bool)

(declare-fun tp!2398340 () Bool)

(assert (=> b!8013070 (= e!4720318 tp!2398340)))

(declare-fun b!8013071 () Bool)

(declare-fun tp!2398342 () Bool)

(declare-fun tp!2398341 () Bool)

(assert (=> b!8013071 (= e!4720318 (and tp!2398342 tp!2398341))))

(declare-fun b!8013072 () Bool)

(assert (=> b!8013072 (= e!4720316 e!4720321)))

(declare-fun res!3168532 () Bool)

(assert (=> b!8013072 (=> (not res!3168532) (not e!4720321))))

(assert (=> b!8013072 (= res!3168532 (= totalInputSize!629 lt!2717561))))

(assert (=> b!8013072 (= lt!2717561 (size!43585 totalInput!1349))))

(declare-fun b!8013073 () Bool)

(declare-fun tp!2398346 () Bool)

(declare-fun tp!2398345 () Bool)

(assert (=> b!8013073 (= e!4720318 (and tp!2398346 tp!2398345))))

(declare-fun b!8013074 () Bool)

(assert (=> b!8013074 (= e!4720313 e!4720312)))

(declare-fun res!3168535 () Bool)

(assert (=> b!8013074 (=> res!3168535 e!4720312)))

(declare-fun nullable!9725 (Regex!21683) Bool)

(assert (=> b!8013074 (= res!3168535 (not (nullable!9725 r!15422)))))

(declare-fun lt!2717546 () List!74912)

(assert (=> b!8013074 (= (++!18509 lt!2717548 lt!2717546) totalInput!1349)))

(declare-fun lt!2717560 () Unit!170838)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3590 (List!74912 C!43704 List!74912 List!74912) Unit!170838)

(assert (=> b!8013074 (= lt!2717560 (lemmaMoveElementToOtherListKeepsConcatEq!3590 testedP!353 lt!2717557 lt!2717546 totalInput!1349))))

(declare-fun tail!15880 (List!74912) List!74912)

(assert (=> b!8013074 (= lt!2717546 (tail!15880 testedSuffix!271))))

(declare-fun head!16357 (List!74912) C!43704)

(assert (=> b!8013074 (isPrefix!6735 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) totalInput!1349)))

(declare-fun lt!2717554 () Unit!170838)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1408 (List!74912 List!74912) Unit!170838)

(assert (=> b!8013074 (= lt!2717554 (lemmaAddHeadSuffixToPrefixStillPrefix!1408 testedP!353 totalInput!1349))))

(assert (=> b!8013074 (= lt!2717548 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)))))

(assert (=> b!8013074 (= lt!2717557 (head!16357 testedSuffix!271))))

(declare-fun b!8013075 () Bool)

(declare-fun Unit!170841 () Unit!170838)

(assert (=> b!8013075 (= e!4720319 Unit!170841)))

(declare-fun b!8013076 () Bool)

(declare-fun tp!2398343 () Bool)

(assert (=> b!8013076 (= e!4720317 (and tp_is_empty!53909 tp!2398343))))

(assert (= (and start!754076 res!3168537) b!8013064))

(assert (= (and b!8013064 res!3168531) b!8013065))

(assert (= (and b!8013065 res!3168534) b!8013072))

(assert (= (and b!8013072 res!3168532) b!8013062))

(assert (= (and b!8013062 (not res!3168530)) b!8013060))

(assert (= (and b!8013060 (not res!3168536)) b!8013066))

(assert (= (and b!8013066 (not res!3168533)) b!8013063))

(assert (= (and b!8013063 c!1470677) b!8013067))

(assert (= (and b!8013063 (not c!1470677)) b!8013075))

(assert (= (and b!8013063 (not res!3168538)) b!8013074))

(assert (= (and b!8013074 (not res!3168535)) b!8013068))

(get-info :version)

(assert (= (and start!754076 ((_ is Cons!74788) totalInput!1349)) b!8013076))

(assert (= (and start!754076 ((_ is Cons!74788) testedSuffix!271)) b!8013069))

(assert (= (and start!754076 ((_ is ElementMatch!21683) r!15422)) b!8013061))

(assert (= (and start!754076 ((_ is Concat!30682) r!15422)) b!8013071))

(assert (= (and start!754076 ((_ is Star!21683) r!15422)) b!8013070))

(assert (= (and start!754076 ((_ is Union!21683) r!15422)) b!8013073))

(assert (= (and start!754076 ((_ is Cons!74788) testedP!353)) b!8013059))

(declare-fun m!8376434 () Bool)

(assert (=> b!8013074 m!8376434))

(declare-fun m!8376436 () Bool)

(assert (=> b!8013074 m!8376436))

(declare-fun m!8376438 () Bool)

(assert (=> b!8013074 m!8376438))

(declare-fun m!8376440 () Bool)

(assert (=> b!8013074 m!8376440))

(declare-fun m!8376442 () Bool)

(assert (=> b!8013074 m!8376442))

(declare-fun m!8376444 () Bool)

(assert (=> b!8013074 m!8376444))

(declare-fun m!8376446 () Bool)

(assert (=> b!8013074 m!8376446))

(declare-fun m!8376448 () Bool)

(assert (=> b!8013074 m!8376448))

(declare-fun m!8376450 () Bool)

(assert (=> b!8013074 m!8376450))

(assert (=> b!8013074 m!8376434))

(declare-fun m!8376452 () Bool)

(assert (=> b!8013074 m!8376452))

(declare-fun m!8376454 () Bool)

(assert (=> b!8013068 m!8376454))

(declare-fun m!8376456 () Bool)

(assert (=> b!8013068 m!8376456))

(declare-fun m!8376458 () Bool)

(assert (=> b!8013062 m!8376458))

(declare-fun m!8376460 () Bool)

(assert (=> b!8013062 m!8376460))

(declare-fun m!8376462 () Bool)

(assert (=> b!8013062 m!8376462))

(declare-fun m!8376464 () Bool)

(assert (=> start!754076 m!8376464))

(declare-fun m!8376466 () Bool)

(assert (=> b!8013072 m!8376466))

(declare-fun m!8376468 () Bool)

(assert (=> b!8013065 m!8376468))

(declare-fun m!8376470 () Bool)

(assert (=> b!8013064 m!8376470))

(declare-fun m!8376472 () Bool)

(assert (=> b!8013067 m!8376472))

(declare-fun m!8376474 () Bool)

(assert (=> b!8013067 m!8376474))

(declare-fun m!8376476 () Bool)

(assert (=> b!8013067 m!8376476))

(declare-fun m!8376478 () Bool)

(assert (=> b!8013063 m!8376478))

(declare-fun m!8376480 () Bool)

(assert (=> b!8013060 m!8376480))

(declare-fun m!8376482 () Bool)

(assert (=> b!8013060 m!8376482))

(declare-fun m!8376484 () Bool)

(assert (=> b!8013060 m!8376484))

(check-sat (not b!8013065) (not b!8013072) (not b!8013074) (not b!8013069) (not b!8013063) (not b!8013068) (not b!8013060) (not start!754076) (not b!8013071) (not b!8013076) (not b!8013059) (not b!8013067) (not b!8013062) (not b!8013070) (not b!8013064) (not b!8013073) tp_is_empty!53909)
(check-sat)
(get-model)

(declare-fun d!2388898 () Bool)

(declare-fun lostCauseFct!613 (Regex!21683) Bool)

(assert (=> d!2388898 (= (lostCause!2070 r!15422) (lostCauseFct!613 r!15422))))

(declare-fun bs!1970923 () Bool)

(assert (= bs!1970923 d!2388898))

(declare-fun m!8376486 () Bool)

(assert (=> bs!1970923 m!8376486))

(assert (=> b!8013060 d!2388898))

(declare-fun d!2388900 () Bool)

(assert (=> d!2388900 (= testedSuffix!271 lt!2717553)))

(declare-fun lt!2717564 () Unit!170838)

(declare-fun choose!60374 (List!74912 List!74912 List!74912 List!74912 List!74912) Unit!170838)

(assert (=> d!2388900 (= lt!2717564 (choose!60374 testedP!353 testedSuffix!271 testedP!353 lt!2717553 totalInput!1349))))

(assert (=> d!2388900 (isPrefix!6735 testedP!353 totalInput!1349)))

(assert (=> d!2388900 (= (lemmaSamePrefixThenSameSuffix!3092 testedP!353 testedSuffix!271 testedP!353 lt!2717553 totalInput!1349) lt!2717564)))

(declare-fun bs!1970924 () Bool)

(assert (= bs!1970924 d!2388900))

(declare-fun m!8376488 () Bool)

(assert (=> bs!1970924 m!8376488))

(assert (=> bs!1970924 m!8376458))

(assert (=> b!8013060 d!2388900))

(declare-fun d!2388902 () Bool)

(declare-fun lt!2717567 () List!74912)

(assert (=> d!2388902 (= (++!18509 testedP!353 lt!2717567) totalInput!1349)))

(declare-fun e!4720324 () List!74912)

(assert (=> d!2388902 (= lt!2717567 e!4720324)))

(declare-fun c!1470681 () Bool)

(assert (=> d!2388902 (= c!1470681 ((_ is Cons!74788) testedP!353))))

(assert (=> d!2388902 (>= (size!43585 totalInput!1349) (size!43585 testedP!353))))

(assert (=> d!2388902 (= (getSuffix!3930 totalInput!1349 testedP!353) lt!2717567)))

(declare-fun b!8013081 () Bool)

(assert (=> b!8013081 (= e!4720324 (getSuffix!3930 (tail!15880 totalInput!1349) (t!390655 testedP!353)))))

(declare-fun b!8013082 () Bool)

(assert (=> b!8013082 (= e!4720324 totalInput!1349)))

(assert (= (and d!2388902 c!1470681) b!8013081))

(assert (= (and d!2388902 (not c!1470681)) b!8013082))

(declare-fun m!8376490 () Bool)

(assert (=> d!2388902 m!8376490))

(assert (=> d!2388902 m!8376466))

(assert (=> d!2388902 m!8376468))

(declare-fun m!8376492 () Bool)

(assert (=> b!8013081 m!8376492))

(assert (=> b!8013081 m!8376492))

(declare-fun m!8376494 () Bool)

(assert (=> b!8013081 m!8376494))

(assert (=> b!8013060 d!2388902))

(declare-fun d!2388904 () Bool)

(declare-fun lt!2717570 () Int)

(assert (=> d!2388904 (>= lt!2717570 0)))

(declare-fun e!4720327 () Int)

(assert (=> d!2388904 (= lt!2717570 e!4720327)))

(declare-fun c!1470684 () Bool)

(assert (=> d!2388904 (= c!1470684 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388904 (= (size!43585 testedP!353) lt!2717570)))

(declare-fun b!8013087 () Bool)

(assert (=> b!8013087 (= e!4720327 0)))

(declare-fun b!8013088 () Bool)

(assert (=> b!8013088 (= e!4720327 (+ 1 (size!43585 (t!390655 testedP!353))))))

(assert (= (and d!2388904 c!1470684) b!8013087))

(assert (= (and d!2388904 (not c!1470684)) b!8013088))

(declare-fun m!8376496 () Bool)

(assert (=> b!8013088 m!8376496))

(assert (=> b!8013065 d!2388904))

(declare-fun b!8013098 () Bool)

(declare-fun res!3168547 () Bool)

(declare-fun e!4720336 () Bool)

(assert (=> b!8013098 (=> (not res!3168547) (not e!4720336))))

(assert (=> b!8013098 (= res!3168547 (= (head!16357 testedP!353) (head!16357 totalInput!1349)))))

(declare-fun b!8013099 () Bool)

(assert (=> b!8013099 (= e!4720336 (isPrefix!6735 (tail!15880 testedP!353) (tail!15880 totalInput!1349)))))

(declare-fun b!8013097 () Bool)

(declare-fun e!4720335 () Bool)

(assert (=> b!8013097 (= e!4720335 e!4720336)))

(declare-fun res!3168548 () Bool)

(assert (=> b!8013097 (=> (not res!3168548) (not e!4720336))))

(assert (=> b!8013097 (= res!3168548 (not ((_ is Nil!74788) totalInput!1349)))))

(declare-fun d!2388906 () Bool)

(declare-fun e!4720334 () Bool)

(assert (=> d!2388906 e!4720334))

(declare-fun res!3168550 () Bool)

(assert (=> d!2388906 (=> res!3168550 e!4720334)))

(declare-fun lt!2717573 () Bool)

(assert (=> d!2388906 (= res!3168550 (not lt!2717573))))

(assert (=> d!2388906 (= lt!2717573 e!4720335)))

(declare-fun res!3168549 () Bool)

(assert (=> d!2388906 (=> res!3168549 e!4720335)))

(assert (=> d!2388906 (= res!3168549 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388906 (= (isPrefix!6735 testedP!353 totalInput!1349) lt!2717573)))

(declare-fun b!8013100 () Bool)

(assert (=> b!8013100 (= e!4720334 (>= (size!43585 totalInput!1349) (size!43585 testedP!353)))))

(assert (= (and d!2388906 (not res!3168549)) b!8013097))

(assert (= (and b!8013097 res!3168548) b!8013098))

(assert (= (and b!8013098 res!3168547) b!8013099))

(assert (= (and d!2388906 (not res!3168550)) b!8013100))

(declare-fun m!8376498 () Bool)

(assert (=> b!8013098 m!8376498))

(declare-fun m!8376500 () Bool)

(assert (=> b!8013098 m!8376500))

(declare-fun m!8376502 () Bool)

(assert (=> b!8013099 m!8376502))

(assert (=> b!8013099 m!8376492))

(assert (=> b!8013099 m!8376502))

(assert (=> b!8013099 m!8376492))

(declare-fun m!8376504 () Bool)

(assert (=> b!8013099 m!8376504))

(assert (=> b!8013100 m!8376466))

(assert (=> b!8013100 m!8376468))

(assert (=> b!8013062 d!2388906))

(declare-fun b!8013102 () Bool)

(declare-fun res!3168551 () Bool)

(declare-fun e!4720339 () Bool)

(assert (=> b!8013102 (=> (not res!3168551) (not e!4720339))))

(assert (=> b!8013102 (= res!3168551 (= (head!16357 testedP!353) (head!16357 lt!2717558)))))

(declare-fun b!8013103 () Bool)

(assert (=> b!8013103 (= e!4720339 (isPrefix!6735 (tail!15880 testedP!353) (tail!15880 lt!2717558)))))

(declare-fun b!8013101 () Bool)

(declare-fun e!4720338 () Bool)

(assert (=> b!8013101 (= e!4720338 e!4720339)))

(declare-fun res!3168552 () Bool)

(assert (=> b!8013101 (=> (not res!3168552) (not e!4720339))))

(assert (=> b!8013101 (= res!3168552 (not ((_ is Nil!74788) lt!2717558)))))

(declare-fun d!2388908 () Bool)

(declare-fun e!4720337 () Bool)

(assert (=> d!2388908 e!4720337))

(declare-fun res!3168554 () Bool)

(assert (=> d!2388908 (=> res!3168554 e!4720337)))

(declare-fun lt!2717574 () Bool)

(assert (=> d!2388908 (= res!3168554 (not lt!2717574))))

(assert (=> d!2388908 (= lt!2717574 e!4720338)))

(declare-fun res!3168553 () Bool)

(assert (=> d!2388908 (=> res!3168553 e!4720338)))

(assert (=> d!2388908 (= res!3168553 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388908 (= (isPrefix!6735 testedP!353 lt!2717558) lt!2717574)))

(declare-fun b!8013104 () Bool)

(assert (=> b!8013104 (= e!4720337 (>= (size!43585 lt!2717558) (size!43585 testedP!353)))))

(assert (= (and d!2388908 (not res!3168553)) b!8013101))

(assert (= (and b!8013101 res!3168552) b!8013102))

(assert (= (and b!8013102 res!3168551) b!8013103))

(assert (= (and d!2388908 (not res!3168554)) b!8013104))

(assert (=> b!8013102 m!8376498))

(declare-fun m!8376506 () Bool)

(assert (=> b!8013102 m!8376506))

(assert (=> b!8013103 m!8376502))

(declare-fun m!8376508 () Bool)

(assert (=> b!8013103 m!8376508))

(assert (=> b!8013103 m!8376502))

(assert (=> b!8013103 m!8376508))

(declare-fun m!8376510 () Bool)

(assert (=> b!8013103 m!8376510))

(declare-fun m!8376512 () Bool)

(assert (=> b!8013104 m!8376512))

(assert (=> b!8013104 m!8376468))

(assert (=> b!8013062 d!2388908))

(declare-fun d!2388910 () Bool)

(assert (=> d!2388910 (isPrefix!6735 testedP!353 (++!18509 testedP!353 testedSuffix!271))))

(declare-fun lt!2717577 () Unit!170838)

(declare-fun choose!60375 (List!74912 List!74912) Unit!170838)

(assert (=> d!2388910 (= lt!2717577 (choose!60375 testedP!353 testedSuffix!271))))

(assert (=> d!2388910 (= (lemmaConcatTwoListThenFirstIsPrefix!3966 testedP!353 testedSuffix!271) lt!2717577)))

(declare-fun bs!1970925 () Bool)

(assert (= bs!1970925 d!2388910))

(assert (=> bs!1970925 m!8376470))

(assert (=> bs!1970925 m!8376470))

(declare-fun m!8376514 () Bool)

(assert (=> bs!1970925 m!8376514))

(declare-fun m!8376516 () Bool)

(assert (=> bs!1970925 m!8376516))

(assert (=> b!8013062 d!2388910))

(declare-fun d!2388912 () Bool)

(assert (=> d!2388912 (isPrefix!6735 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717580 () Unit!170838)

(declare-fun choose!60376 (List!74912 List!74912) Unit!170838)

(assert (=> d!2388912 (= lt!2717580 (choose!60376 totalInput!1349 totalInput!1349))))

(assert (=> d!2388912 (= (lemmaIsPrefixRefl!4177 totalInput!1349 totalInput!1349) lt!2717580)))

(declare-fun bs!1970926 () Bool)

(assert (= bs!1970926 d!2388912))

(assert (=> bs!1970926 m!8376474))

(declare-fun m!8376518 () Bool)

(assert (=> bs!1970926 m!8376518))

(assert (=> b!8013067 d!2388912))

(declare-fun b!8013106 () Bool)

(declare-fun res!3168555 () Bool)

(declare-fun e!4720342 () Bool)

(assert (=> b!8013106 (=> (not res!3168555) (not e!4720342))))

(assert (=> b!8013106 (= res!3168555 (= (head!16357 totalInput!1349) (head!16357 totalInput!1349)))))

(declare-fun b!8013107 () Bool)

(assert (=> b!8013107 (= e!4720342 (isPrefix!6735 (tail!15880 totalInput!1349) (tail!15880 totalInput!1349)))))

(declare-fun b!8013105 () Bool)

(declare-fun e!4720341 () Bool)

(assert (=> b!8013105 (= e!4720341 e!4720342)))

(declare-fun res!3168556 () Bool)

(assert (=> b!8013105 (=> (not res!3168556) (not e!4720342))))

(assert (=> b!8013105 (= res!3168556 (not ((_ is Nil!74788) totalInput!1349)))))

(declare-fun d!2388914 () Bool)

(declare-fun e!4720340 () Bool)

(assert (=> d!2388914 e!4720340))

(declare-fun res!3168558 () Bool)

(assert (=> d!2388914 (=> res!3168558 e!4720340)))

(declare-fun lt!2717581 () Bool)

(assert (=> d!2388914 (= res!3168558 (not lt!2717581))))

(assert (=> d!2388914 (= lt!2717581 e!4720341)))

(declare-fun res!3168557 () Bool)

(assert (=> d!2388914 (=> res!3168557 e!4720341)))

(assert (=> d!2388914 (= res!3168557 ((_ is Nil!74788) totalInput!1349))))

(assert (=> d!2388914 (= (isPrefix!6735 totalInput!1349 totalInput!1349) lt!2717581)))

(declare-fun b!8013108 () Bool)

(assert (=> b!8013108 (= e!4720340 (>= (size!43585 totalInput!1349) (size!43585 totalInput!1349)))))

(assert (= (and d!2388914 (not res!3168557)) b!8013105))

(assert (= (and b!8013105 res!3168556) b!8013106))

(assert (= (and b!8013106 res!3168555) b!8013107))

(assert (= (and d!2388914 (not res!3168558)) b!8013108))

(assert (=> b!8013106 m!8376500))

(assert (=> b!8013106 m!8376500))

(assert (=> b!8013107 m!8376492))

(assert (=> b!8013107 m!8376492))

(assert (=> b!8013107 m!8376492))

(assert (=> b!8013107 m!8376492))

(declare-fun m!8376520 () Bool)

(assert (=> b!8013107 m!8376520))

(assert (=> b!8013108 m!8376466))

(assert (=> b!8013108 m!8376466))

(assert (=> b!8013067 d!2388914))

(declare-fun d!2388916 () Bool)

(assert (=> d!2388916 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717584 () Unit!170838)

(declare-fun choose!60377 (List!74912 List!74912 List!74912) Unit!170838)

(assert (=> d!2388916 (= lt!2717584 (choose!60377 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388916 (isPrefix!6735 totalInput!1349 totalInput!1349)))

(assert (=> d!2388916 (= (lemmaIsPrefixSameLengthThenSameList!1747 totalInput!1349 testedP!353 totalInput!1349) lt!2717584)))

(declare-fun bs!1970927 () Bool)

(assert (= bs!1970927 d!2388916))

(declare-fun m!8376522 () Bool)

(assert (=> bs!1970927 m!8376522))

(assert (=> bs!1970927 m!8376474))

(assert (=> b!8013067 d!2388916))

(declare-fun b!8013143 () Bool)

(declare-fun e!4720371 () Bool)

(declare-fun call!744274 () Bool)

(assert (=> b!8013143 (= e!4720371 call!744274)))

(declare-fun b!8013144 () Bool)

(declare-fun res!3168589 () Bool)

(declare-fun e!4720370 () Bool)

(assert (=> b!8013144 (=> res!3168589 e!4720370)))

(assert (=> b!8013144 (= res!3168589 (not ((_ is Concat!30682) r!15422)))))

(declare-fun e!4720372 () Bool)

(assert (=> b!8013144 (= e!4720372 e!4720370)))

(declare-fun b!8013145 () Bool)

(declare-fun e!4720369 () Bool)

(assert (=> b!8013145 (= e!4720369 e!4720372)))

(declare-fun c!1470689 () Bool)

(assert (=> b!8013145 (= c!1470689 ((_ is Union!21683) r!15422))))

(declare-fun bm!744268 () Bool)

(declare-fun call!744273 () Bool)

(assert (=> bm!744268 (= call!744273 call!744274)))

(declare-fun b!8013146 () Bool)

(declare-fun e!4720373 () Bool)

(assert (=> b!8013146 (= e!4720373 call!744273)))

(declare-fun b!8013147 () Bool)

(declare-fun res!3168587 () Bool)

(declare-fun e!4720375 () Bool)

(assert (=> b!8013147 (=> (not res!3168587) (not e!4720375))))

(declare-fun call!744275 () Bool)

(assert (=> b!8013147 (= res!3168587 call!744275)))

(assert (=> b!8013147 (= e!4720372 e!4720375)))

(declare-fun b!8013148 () Bool)

(assert (=> b!8013148 (= e!4720370 e!4720373)))

(declare-fun res!3168588 () Bool)

(assert (=> b!8013148 (=> (not res!3168588) (not e!4720373))))

(assert (=> b!8013148 (= res!3168588 call!744275)))

(declare-fun bm!744270 () Bool)

(assert (=> bm!744270 (= call!744275 (validRegex!11987 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun b!8013149 () Bool)

(declare-fun e!4720374 () Bool)

(assert (=> b!8013149 (= e!4720374 e!4720369)))

(declare-fun c!1470690 () Bool)

(assert (=> b!8013149 (= c!1470690 ((_ is Star!21683) r!15422))))

(declare-fun bm!744269 () Bool)

(assert (=> bm!744269 (= call!744274 (validRegex!11987 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))

(declare-fun d!2388918 () Bool)

(declare-fun res!3168586 () Bool)

(assert (=> d!2388918 (=> res!3168586 e!4720374)))

(assert (=> d!2388918 (= res!3168586 ((_ is ElementMatch!21683) r!15422))))

(assert (=> d!2388918 (= (validRegex!11987 r!15422) e!4720374)))

(declare-fun b!8013150 () Bool)

(assert (=> b!8013150 (= e!4720369 e!4720371)))

(declare-fun res!3168585 () Bool)

(assert (=> b!8013150 (= res!3168585 (not (nullable!9725 (reg!22012 r!15422))))))

(assert (=> b!8013150 (=> (not res!3168585) (not e!4720371))))

(declare-fun b!8013151 () Bool)

(assert (=> b!8013151 (= e!4720375 call!744273)))

(assert (= (and d!2388918 (not res!3168586)) b!8013149))

(assert (= (and b!8013149 c!1470690) b!8013150))

(assert (= (and b!8013149 (not c!1470690)) b!8013145))

(assert (= (and b!8013150 res!3168585) b!8013143))

(assert (= (and b!8013145 c!1470689) b!8013147))

(assert (= (and b!8013145 (not c!1470689)) b!8013144))

(assert (= (and b!8013147 res!3168587) b!8013151))

(assert (= (and b!8013144 (not res!3168589)) b!8013148))

(assert (= (and b!8013148 res!3168588) b!8013146))

(assert (= (or b!8013151 b!8013146) bm!744268))

(assert (= (or b!8013147 b!8013148) bm!744270))

(assert (= (or b!8013143 bm!744268) bm!744269))

(declare-fun m!8376542 () Bool)

(assert (=> bm!744270 m!8376542))

(declare-fun m!8376544 () Bool)

(assert (=> bm!744269 m!8376544))

(declare-fun m!8376546 () Bool)

(assert (=> b!8013150 m!8376546))

(assert (=> start!754076 d!2388918))

(declare-fun d!2388926 () Bool)

(declare-fun lt!2717589 () Int)

(assert (=> d!2388926 (>= lt!2717589 0)))

(declare-fun e!4720376 () Int)

(assert (=> d!2388926 (= lt!2717589 e!4720376)))

(declare-fun c!1470691 () Bool)

(assert (=> d!2388926 (= c!1470691 ((_ is Nil!74788) totalInput!1349))))

(assert (=> d!2388926 (= (size!43585 totalInput!1349) lt!2717589)))

(declare-fun b!8013152 () Bool)

(assert (=> b!8013152 (= e!4720376 0)))

(declare-fun b!8013153 () Bool)

(assert (=> b!8013153 (= e!4720376 (+ 1 (size!43585 (t!390655 totalInput!1349))))))

(assert (= (and d!2388926 c!1470691) b!8013152))

(assert (= (and d!2388926 (not c!1470691)) b!8013153))

(declare-fun m!8376548 () Bool)

(assert (=> b!8013153 m!8376548))

(assert (=> b!8013072 d!2388926))

(declare-fun d!2388928 () Bool)

(assert (=> d!2388928 (isPrefix!6735 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)) totalInput!1349)))

(declare-fun lt!2717598 () Unit!170838)

(declare-fun choose!60380 (List!74912 List!74912) Unit!170838)

(assert (=> d!2388928 (= lt!2717598 (choose!60380 testedP!353 totalInput!1349))))

(assert (=> d!2388928 (isPrefix!6735 testedP!353 totalInput!1349)))

(assert (=> d!2388928 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1408 testedP!353 totalInput!1349) lt!2717598)))

(declare-fun bs!1970930 () Bool)

(assert (= bs!1970930 d!2388928))

(assert (=> bs!1970930 m!8376484))

(declare-fun m!8376556 () Bool)

(assert (=> bs!1970930 m!8376556))

(declare-fun m!8376558 () Bool)

(assert (=> bs!1970930 m!8376558))

(assert (=> bs!1970930 m!8376458))

(assert (=> bs!1970930 m!8376558))

(declare-fun m!8376560 () Bool)

(assert (=> bs!1970930 m!8376560))

(assert (=> bs!1970930 m!8376484))

(declare-fun m!8376562 () Bool)

(assert (=> bs!1970930 m!8376562))

(assert (=> b!8013074 d!2388928))

(declare-fun b!8013180 () Bool)

(declare-fun e!4720395 () List!74912)

(assert (=> b!8013180 (= e!4720395 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))

(declare-fun d!2388934 () Bool)

(declare-fun e!4720396 () Bool)

(assert (=> d!2388934 e!4720396))

(declare-fun res!3168605 () Bool)

(assert (=> d!2388934 (=> (not res!3168605) (not e!4720396))))

(declare-fun lt!2717601 () List!74912)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15915 (List!74912) (InoxSet C!43704))

(assert (=> d!2388934 (= res!3168605 (= (content!15915 lt!2717601) ((_ map or) (content!15915 testedP!353) (content!15915 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (=> d!2388934 (= lt!2717601 e!4720395)))

(declare-fun c!1470698 () Bool)

(assert (=> d!2388934 (= c!1470698 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388934 (= (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) lt!2717601)))

(declare-fun b!8013182 () Bool)

(declare-fun res!3168604 () Bool)

(assert (=> b!8013182 (=> (not res!3168604) (not e!4720396))))

(assert (=> b!8013182 (= res!3168604 (= (size!43585 lt!2717601) (+ (size!43585 testedP!353) (size!43585 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(declare-fun b!8013181 () Bool)

(assert (=> b!8013181 (= e!4720395 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(declare-fun b!8013183 () Bool)

(assert (=> b!8013183 (= e!4720396 (or (not (= (Cons!74788 (head!16357 lt!2717553) Nil!74788) Nil!74788)) (= lt!2717601 testedP!353)))))

(assert (= (and d!2388934 c!1470698) b!8013180))

(assert (= (and d!2388934 (not c!1470698)) b!8013181))

(assert (= (and d!2388934 res!3168605) b!8013182))

(assert (= (and b!8013182 res!3168604) b!8013183))

(declare-fun m!8376564 () Bool)

(assert (=> d!2388934 m!8376564))

(declare-fun m!8376566 () Bool)

(assert (=> d!2388934 m!8376566))

(declare-fun m!8376568 () Bool)

(assert (=> d!2388934 m!8376568))

(declare-fun m!8376570 () Bool)

(assert (=> b!8013182 m!8376570))

(assert (=> b!8013182 m!8376468))

(declare-fun m!8376572 () Bool)

(assert (=> b!8013182 m!8376572))

(declare-fun m!8376574 () Bool)

(assert (=> b!8013181 m!8376574))

(assert (=> b!8013074 d!2388934))

(declare-fun d!2388936 () Bool)

(assert (=> d!2388936 (= (head!16357 testedSuffix!271) (h!81236 testedSuffix!271))))

(assert (=> b!8013074 d!2388936))

(declare-fun d!2388938 () Bool)

(assert (=> d!2388938 (= (++!18509 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)) lt!2717546) totalInput!1349)))

(declare-fun lt!2717604 () Unit!170838)

(declare-fun choose!60381 (List!74912 C!43704 List!74912 List!74912) Unit!170838)

(assert (=> d!2388938 (= lt!2717604 (choose!60381 testedP!353 lt!2717557 lt!2717546 totalInput!1349))))

(assert (=> d!2388938 (= (++!18509 testedP!353 (Cons!74788 lt!2717557 lt!2717546)) totalInput!1349)))

(assert (=> d!2388938 (= (lemmaMoveElementToOtherListKeepsConcatEq!3590 testedP!353 lt!2717557 lt!2717546 totalInput!1349) lt!2717604)))

(declare-fun bs!1970931 () Bool)

(assert (= bs!1970931 d!2388938))

(assert (=> bs!1970931 m!8376444))

(assert (=> bs!1970931 m!8376444))

(declare-fun m!8376582 () Bool)

(assert (=> bs!1970931 m!8376582))

(declare-fun m!8376584 () Bool)

(assert (=> bs!1970931 m!8376584))

(declare-fun m!8376586 () Bool)

(assert (=> bs!1970931 m!8376586))

(assert (=> b!8013074 d!2388938))

(declare-fun b!8013194 () Bool)

(declare-fun res!3168611 () Bool)

(declare-fun e!4720406 () Bool)

(assert (=> b!8013194 (=> (not res!3168611) (not e!4720406))))

(assert (=> b!8013194 (= res!3168611 (= (head!16357 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) (head!16357 totalInput!1349)))))

(declare-fun b!8013195 () Bool)

(assert (=> b!8013195 (= e!4720406 (isPrefix!6735 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) (tail!15880 totalInput!1349)))))

(declare-fun b!8013193 () Bool)

(declare-fun e!4720405 () Bool)

(assert (=> b!8013193 (= e!4720405 e!4720406)))

(declare-fun res!3168612 () Bool)

(assert (=> b!8013193 (=> (not res!3168612) (not e!4720406))))

(assert (=> b!8013193 (= res!3168612 (not ((_ is Nil!74788) totalInput!1349)))))

(declare-fun d!2388942 () Bool)

(declare-fun e!4720404 () Bool)

(assert (=> d!2388942 e!4720404))

(declare-fun res!3168614 () Bool)

(assert (=> d!2388942 (=> res!3168614 e!4720404)))

(declare-fun lt!2717605 () Bool)

(assert (=> d!2388942 (= res!3168614 (not lt!2717605))))

(assert (=> d!2388942 (= lt!2717605 e!4720405)))

(declare-fun res!3168613 () Bool)

(assert (=> d!2388942 (=> res!3168613 e!4720405)))

(assert (=> d!2388942 (= res!3168613 ((_ is Nil!74788) (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(assert (=> d!2388942 (= (isPrefix!6735 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) totalInput!1349) lt!2717605)))

(declare-fun b!8013196 () Bool)

(assert (=> b!8013196 (= e!4720404 (>= (size!43585 totalInput!1349) (size!43585 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (= (and d!2388942 (not res!3168613)) b!8013193))

(assert (= (and b!8013193 res!3168612) b!8013194))

(assert (= (and b!8013194 res!3168611) b!8013195))

(assert (= (and d!2388942 (not res!3168614)) b!8013196))

(assert (=> b!8013194 m!8376434))

(declare-fun m!8376588 () Bool)

(assert (=> b!8013194 m!8376588))

(assert (=> b!8013194 m!8376500))

(assert (=> b!8013195 m!8376434))

(declare-fun m!8376590 () Bool)

(assert (=> b!8013195 m!8376590))

(assert (=> b!8013195 m!8376492))

(assert (=> b!8013195 m!8376590))

(assert (=> b!8013195 m!8376492))

(declare-fun m!8376592 () Bool)

(assert (=> b!8013195 m!8376592))

(assert (=> b!8013196 m!8376466))

(assert (=> b!8013196 m!8376434))

(declare-fun m!8376594 () Bool)

(assert (=> b!8013196 m!8376594))

(assert (=> b!8013074 d!2388942))

(declare-fun d!2388944 () Bool)

(assert (=> d!2388944 (= (tail!15880 testedSuffix!271) (t!390655 testedSuffix!271))))

(assert (=> b!8013074 d!2388944))

(declare-fun b!8013205 () Bool)

(declare-fun e!4720411 () List!74912)

(assert (=> b!8013205 (= e!4720411 (Cons!74788 lt!2717557 Nil!74788))))

(declare-fun d!2388946 () Bool)

(declare-fun e!4720412 () Bool)

(assert (=> d!2388946 e!4720412))

(declare-fun res!3168620 () Bool)

(assert (=> d!2388946 (=> (not res!3168620) (not e!4720412))))

(declare-fun lt!2717608 () List!74912)

(assert (=> d!2388946 (= res!3168620 (= (content!15915 lt!2717608) ((_ map or) (content!15915 testedP!353) (content!15915 (Cons!74788 lt!2717557 Nil!74788)))))))

(assert (=> d!2388946 (= lt!2717608 e!4720411)))

(declare-fun c!1470703 () Bool)

(assert (=> d!2388946 (= c!1470703 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388946 (= (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)) lt!2717608)))

(declare-fun b!8013207 () Bool)

(declare-fun res!3168619 () Bool)

(assert (=> b!8013207 (=> (not res!3168619) (not e!4720412))))

(assert (=> b!8013207 (= res!3168619 (= (size!43585 lt!2717608) (+ (size!43585 testedP!353) (size!43585 (Cons!74788 lt!2717557 Nil!74788)))))))

(declare-fun b!8013206 () Bool)

(assert (=> b!8013206 (= e!4720411 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) (Cons!74788 lt!2717557 Nil!74788))))))

(declare-fun b!8013208 () Bool)

(assert (=> b!8013208 (= e!4720412 (or (not (= (Cons!74788 lt!2717557 Nil!74788) Nil!74788)) (= lt!2717608 testedP!353)))))

(assert (= (and d!2388946 c!1470703) b!8013205))

(assert (= (and d!2388946 (not c!1470703)) b!8013206))

(assert (= (and d!2388946 res!3168620) b!8013207))

(assert (= (and b!8013207 res!3168619) b!8013208))

(declare-fun m!8376596 () Bool)

(assert (=> d!2388946 m!8376596))

(assert (=> d!2388946 m!8376566))

(declare-fun m!8376598 () Bool)

(assert (=> d!2388946 m!8376598))

(declare-fun m!8376600 () Bool)

(assert (=> b!8013207 m!8376600))

(assert (=> b!8013207 m!8376468))

(declare-fun m!8376602 () Bool)

(assert (=> b!8013207 m!8376602))

(declare-fun m!8376604 () Bool)

(assert (=> b!8013206 m!8376604))

(assert (=> b!8013074 d!2388946))

(declare-fun d!2388948 () Bool)

(assert (=> d!2388948 (= (head!16357 lt!2717553) (h!81236 lt!2717553))))

(assert (=> b!8013074 d!2388948))

(declare-fun d!2388950 () Bool)

(declare-fun nullableFct!3842 (Regex!21683) Bool)

(assert (=> d!2388950 (= (nullable!9725 r!15422) (nullableFct!3842 r!15422))))

(declare-fun bs!1970932 () Bool)

(assert (= bs!1970932 d!2388950))

(declare-fun m!8376606 () Bool)

(assert (=> bs!1970932 m!8376606))

(assert (=> b!8013074 d!2388950))

(declare-fun b!8013209 () Bool)

(declare-fun e!4720413 () List!74912)

(assert (=> b!8013209 (= e!4720413 lt!2717546)))

(declare-fun d!2388952 () Bool)

(declare-fun e!4720414 () Bool)

(assert (=> d!2388952 e!4720414))

(declare-fun res!3168622 () Bool)

(assert (=> d!2388952 (=> (not res!3168622) (not e!4720414))))

(declare-fun lt!2717609 () List!74912)

(assert (=> d!2388952 (= res!3168622 (= (content!15915 lt!2717609) ((_ map or) (content!15915 lt!2717548) (content!15915 lt!2717546))))))

(assert (=> d!2388952 (= lt!2717609 e!4720413)))

(declare-fun c!1470704 () Bool)

(assert (=> d!2388952 (= c!1470704 ((_ is Nil!74788) lt!2717548))))

(assert (=> d!2388952 (= (++!18509 lt!2717548 lt!2717546) lt!2717609)))

(declare-fun b!8013211 () Bool)

(declare-fun res!3168621 () Bool)

(assert (=> b!8013211 (=> (not res!3168621) (not e!4720414))))

(assert (=> b!8013211 (= res!3168621 (= (size!43585 lt!2717609) (+ (size!43585 lt!2717548) (size!43585 lt!2717546))))))

(declare-fun b!8013210 () Bool)

(assert (=> b!8013210 (= e!4720413 (Cons!74788 (h!81236 lt!2717548) (++!18509 (t!390655 lt!2717548) lt!2717546)))))

(declare-fun b!8013212 () Bool)

(assert (=> b!8013212 (= e!4720414 (or (not (= lt!2717546 Nil!74788)) (= lt!2717609 lt!2717548)))))

(assert (= (and d!2388952 c!1470704) b!8013209))

(assert (= (and d!2388952 (not c!1470704)) b!8013210))

(assert (= (and d!2388952 res!3168622) b!8013211))

(assert (= (and b!8013211 res!3168621) b!8013212))

(declare-fun m!8376608 () Bool)

(assert (=> d!2388952 m!8376608))

(declare-fun m!8376610 () Bool)

(assert (=> d!2388952 m!8376610))

(declare-fun m!8376612 () Bool)

(assert (=> d!2388952 m!8376612))

(declare-fun m!8376614 () Bool)

(assert (=> b!8013211 m!8376614))

(assert (=> b!8013211 m!8376454))

(declare-fun m!8376616 () Bool)

(assert (=> b!8013211 m!8376616))

(declare-fun m!8376620 () Bool)

(assert (=> b!8013210 m!8376620))

(assert (=> b!8013074 d!2388952))

(declare-fun d!2388954 () Bool)

(assert (=> d!2388954 (<= (size!43585 testedP!353) (size!43585 totalInput!1349))))

(declare-fun lt!2717615 () Unit!170838)

(declare-fun choose!60385 (List!74912 List!74912) Unit!170838)

(assert (=> d!2388954 (= lt!2717615 (choose!60385 testedP!353 totalInput!1349))))

(assert (=> d!2388954 (isPrefix!6735 testedP!353 totalInput!1349)))

(assert (=> d!2388954 (= (lemmaIsPrefixThenSmallerEqSize!1218 testedP!353 totalInput!1349) lt!2717615)))

(declare-fun bs!1970933 () Bool)

(assert (= bs!1970933 d!2388954))

(assert (=> bs!1970933 m!8376468))

(assert (=> bs!1970933 m!8376466))

(declare-fun m!8376632 () Bool)

(assert (=> bs!1970933 m!8376632))

(assert (=> bs!1970933 m!8376458))

(assert (=> b!8013063 d!2388954))

(declare-fun d!2388958 () Bool)

(declare-fun lt!2717617 () Int)

(assert (=> d!2388958 (>= lt!2717617 0)))

(declare-fun e!4720420 () Int)

(assert (=> d!2388958 (= lt!2717617 e!4720420)))

(declare-fun c!1470709 () Bool)

(assert (=> d!2388958 (= c!1470709 ((_ is Nil!74788) lt!2717548))))

(assert (=> d!2388958 (= (size!43585 lt!2717548) lt!2717617)))

(declare-fun b!8013223 () Bool)

(assert (=> b!8013223 (= e!4720420 0)))

(declare-fun b!8013224 () Bool)

(assert (=> b!8013224 (= e!4720420 (+ 1 (size!43585 (t!390655 lt!2717548))))))

(assert (= (and d!2388958 c!1470709) b!8013223))

(assert (= (and d!2388958 (not c!1470709)) b!8013224))

(declare-fun m!8376636 () Bool)

(assert (=> b!8013224 m!8376636))

(assert (=> b!8013068 d!2388958))

(declare-fun call!744294 () Regex!21683)

(declare-fun bm!744288 () Bool)

(declare-fun c!1470723 () Bool)

(assert (=> bm!744288 (= call!744294 (derivativeStep!6634 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)) lt!2717557))))

(declare-fun b!8013255 () Bool)

(declare-fun call!744296 () Regex!21683)

(declare-fun e!4720437 () Regex!21683)

(assert (=> b!8013255 (= e!4720437 (Union!21683 (Concat!30682 call!744294 (regTwo!43878 r!15422)) call!744296))))

(declare-fun d!2388962 () Bool)

(declare-fun lt!2717633 () Regex!21683)

(assert (=> d!2388962 (validRegex!11987 lt!2717633)))

(declare-fun e!4720439 () Regex!21683)

(assert (=> d!2388962 (= lt!2717633 e!4720439)))

(declare-fun c!1470727 () Bool)

(assert (=> d!2388962 (= c!1470727 (or ((_ is EmptyExpr!21683) r!15422) ((_ is EmptyLang!21683) r!15422)))))

(assert (=> d!2388962 (validRegex!11987 r!15422)))

(assert (=> d!2388962 (= (derivativeStep!6634 r!15422 lt!2717557) lt!2717633)))

(declare-fun c!1470725 () Bool)

(declare-fun call!744293 () Regex!21683)

(declare-fun c!1470726 () Bool)

(declare-fun bm!744289 () Bool)

(assert (=> bm!744289 (= call!744293 (derivativeStep!6634 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))) lt!2717557))))

(declare-fun b!8013256 () Bool)

(assert (=> b!8013256 (= e!4720437 (Union!21683 (Concat!30682 call!744296 (regTwo!43878 r!15422)) EmptyLang!21683))))

(declare-fun b!8013257 () Bool)

(declare-fun e!4720440 () Regex!21683)

(assert (=> b!8013257 (= e!4720440 (Union!21683 call!744294 call!744293))))

(declare-fun bm!744290 () Bool)

(declare-fun call!744295 () Regex!21683)

(assert (=> bm!744290 (= call!744295 call!744293)))

(declare-fun b!8013258 () Bool)

(declare-fun e!4720438 () Regex!21683)

(assert (=> b!8013258 (= e!4720438 (Concat!30682 call!744295 r!15422))))

(declare-fun b!8013259 () Bool)

(declare-fun e!4720441 () Regex!21683)

(assert (=> b!8013259 (= e!4720439 e!4720441)))

(declare-fun c!1470724 () Bool)

(assert (=> b!8013259 (= c!1470724 ((_ is ElementMatch!21683) r!15422))))

(declare-fun b!8013260 () Bool)

(assert (=> b!8013260 (= e!4720441 (ite (= lt!2717557 (c!1470678 r!15422)) EmptyExpr!21683 EmptyLang!21683))))

(declare-fun b!8013261 () Bool)

(assert (=> b!8013261 (= e!4720440 e!4720438)))

(assert (=> b!8013261 (= c!1470725 ((_ is Star!21683) r!15422))))

(declare-fun b!8013262 () Bool)

(assert (=> b!8013262 (= c!1470726 (nullable!9725 (regOne!43878 r!15422)))))

(assert (=> b!8013262 (= e!4720438 e!4720437)))

(declare-fun bm!744291 () Bool)

(assert (=> bm!744291 (= call!744296 call!744295)))

(declare-fun b!8013263 () Bool)

(assert (=> b!8013263 (= e!4720439 EmptyLang!21683)))

(declare-fun b!8013264 () Bool)

(assert (=> b!8013264 (= c!1470723 ((_ is Union!21683) r!15422))))

(assert (=> b!8013264 (= e!4720441 e!4720440)))

(assert (= (and d!2388962 c!1470727) b!8013263))

(assert (= (and d!2388962 (not c!1470727)) b!8013259))

(assert (= (and b!8013259 c!1470724) b!8013260))

(assert (= (and b!8013259 (not c!1470724)) b!8013264))

(assert (= (and b!8013264 c!1470723) b!8013257))

(assert (= (and b!8013264 (not c!1470723)) b!8013261))

(assert (= (and b!8013261 c!1470725) b!8013258))

(assert (= (and b!8013261 (not c!1470725)) b!8013262))

(assert (= (and b!8013262 c!1470726) b!8013255))

(assert (= (and b!8013262 (not c!1470726)) b!8013256))

(assert (= (or b!8013255 b!8013256) bm!744291))

(assert (= (or b!8013258 bm!744291) bm!744290))

(assert (= (or b!8013257 bm!744290) bm!744289))

(assert (= (or b!8013257 b!8013255) bm!744288))

(declare-fun m!8376652 () Bool)

(assert (=> bm!744288 m!8376652))

(declare-fun m!8376654 () Bool)

(assert (=> d!2388962 m!8376654))

(assert (=> d!2388962 m!8376464))

(declare-fun m!8376656 () Bool)

(assert (=> bm!744289 m!8376656))

(declare-fun m!8376658 () Bool)

(assert (=> b!8013262 m!8376658))

(assert (=> b!8013068 d!2388962))

(declare-fun b!8013265 () Bool)

(declare-fun e!4720442 () List!74912)

(assert (=> b!8013265 (= e!4720442 testedSuffix!271)))

(declare-fun d!2388976 () Bool)

(declare-fun e!4720443 () Bool)

(assert (=> d!2388976 e!4720443))

(declare-fun res!3168630 () Bool)

(assert (=> d!2388976 (=> (not res!3168630) (not e!4720443))))

(declare-fun lt!2717634 () List!74912)

(assert (=> d!2388976 (= res!3168630 (= (content!15915 lt!2717634) ((_ map or) (content!15915 testedP!353) (content!15915 testedSuffix!271))))))

(assert (=> d!2388976 (= lt!2717634 e!4720442)))

(declare-fun c!1470728 () Bool)

(assert (=> d!2388976 (= c!1470728 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2388976 (= (++!18509 testedP!353 testedSuffix!271) lt!2717634)))

(declare-fun b!8013267 () Bool)

(declare-fun res!3168629 () Bool)

(assert (=> b!8013267 (=> (not res!3168629) (not e!4720443))))

(assert (=> b!8013267 (= res!3168629 (= (size!43585 lt!2717634) (+ (size!43585 testedP!353) (size!43585 testedSuffix!271))))))

(declare-fun b!8013266 () Bool)

(assert (=> b!8013266 (= e!4720442 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) testedSuffix!271)))))

(declare-fun b!8013268 () Bool)

(assert (=> b!8013268 (= e!4720443 (or (not (= testedSuffix!271 Nil!74788)) (= lt!2717634 testedP!353)))))

(assert (= (and d!2388976 c!1470728) b!8013265))

(assert (= (and d!2388976 (not c!1470728)) b!8013266))

(assert (= (and d!2388976 res!3168630) b!8013267))

(assert (= (and b!8013267 res!3168629) b!8013268))

(declare-fun m!8376660 () Bool)

(assert (=> d!2388976 m!8376660))

(assert (=> d!2388976 m!8376566))

(declare-fun m!8376662 () Bool)

(assert (=> d!2388976 m!8376662))

(declare-fun m!8376664 () Bool)

(assert (=> b!8013267 m!8376664))

(assert (=> b!8013267 m!8376468))

(declare-fun m!8376666 () Bool)

(assert (=> b!8013267 m!8376666))

(declare-fun m!8376668 () Bool)

(assert (=> b!8013266 m!8376668))

(assert (=> b!8013064 d!2388976))

(declare-fun b!8013280 () Bool)

(declare-fun e!4720446 () Bool)

(declare-fun tp!2398358 () Bool)

(declare-fun tp!2398360 () Bool)

(assert (=> b!8013280 (= e!4720446 (and tp!2398358 tp!2398360))))

(declare-fun b!8013279 () Bool)

(assert (=> b!8013279 (= e!4720446 tp_is_empty!53909)))

(assert (=> b!8013071 (= tp!2398342 e!4720446)))

(declare-fun b!8013282 () Bool)

(declare-fun tp!2398361 () Bool)

(declare-fun tp!2398357 () Bool)

(assert (=> b!8013282 (= e!4720446 (and tp!2398361 tp!2398357))))

(declare-fun b!8013281 () Bool)

(declare-fun tp!2398359 () Bool)

(assert (=> b!8013281 (= e!4720446 tp!2398359)))

(assert (= (and b!8013071 ((_ is ElementMatch!21683) (regOne!43878 r!15422))) b!8013279))

(assert (= (and b!8013071 ((_ is Concat!30682) (regOne!43878 r!15422))) b!8013280))

(assert (= (and b!8013071 ((_ is Star!21683) (regOne!43878 r!15422))) b!8013281))

(assert (= (and b!8013071 ((_ is Union!21683) (regOne!43878 r!15422))) b!8013282))

(declare-fun b!8013284 () Bool)

(declare-fun e!4720447 () Bool)

(declare-fun tp!2398363 () Bool)

(declare-fun tp!2398365 () Bool)

(assert (=> b!8013284 (= e!4720447 (and tp!2398363 tp!2398365))))

(declare-fun b!8013283 () Bool)

(assert (=> b!8013283 (= e!4720447 tp_is_empty!53909)))

(assert (=> b!8013071 (= tp!2398341 e!4720447)))

(declare-fun b!8013286 () Bool)

(declare-fun tp!2398366 () Bool)

(declare-fun tp!2398362 () Bool)

(assert (=> b!8013286 (= e!4720447 (and tp!2398366 tp!2398362))))

(declare-fun b!8013285 () Bool)

(declare-fun tp!2398364 () Bool)

(assert (=> b!8013285 (= e!4720447 tp!2398364)))

(assert (= (and b!8013071 ((_ is ElementMatch!21683) (regTwo!43878 r!15422))) b!8013283))

(assert (= (and b!8013071 ((_ is Concat!30682) (regTwo!43878 r!15422))) b!8013284))

(assert (= (and b!8013071 ((_ is Star!21683) (regTwo!43878 r!15422))) b!8013285))

(assert (= (and b!8013071 ((_ is Union!21683) (regTwo!43878 r!15422))) b!8013286))

(declare-fun b!8013291 () Bool)

(declare-fun e!4720450 () Bool)

(declare-fun tp!2398369 () Bool)

(assert (=> b!8013291 (= e!4720450 (and tp_is_empty!53909 tp!2398369))))

(assert (=> b!8013076 (= tp!2398343 e!4720450)))

(assert (= (and b!8013076 ((_ is Cons!74788) (t!390655 totalInput!1349))) b!8013291))

(declare-fun b!8013293 () Bool)

(declare-fun e!4720451 () Bool)

(declare-fun tp!2398371 () Bool)

(declare-fun tp!2398373 () Bool)

(assert (=> b!8013293 (= e!4720451 (and tp!2398371 tp!2398373))))

(declare-fun b!8013292 () Bool)

(assert (=> b!8013292 (= e!4720451 tp_is_empty!53909)))

(assert (=> b!8013073 (= tp!2398346 e!4720451)))

(declare-fun b!8013295 () Bool)

(declare-fun tp!2398374 () Bool)

(declare-fun tp!2398370 () Bool)

(assert (=> b!8013295 (= e!4720451 (and tp!2398374 tp!2398370))))

(declare-fun b!8013294 () Bool)

(declare-fun tp!2398372 () Bool)

(assert (=> b!8013294 (= e!4720451 tp!2398372)))

(assert (= (and b!8013073 ((_ is ElementMatch!21683) (regOne!43879 r!15422))) b!8013292))

(assert (= (and b!8013073 ((_ is Concat!30682) (regOne!43879 r!15422))) b!8013293))

(assert (= (and b!8013073 ((_ is Star!21683) (regOne!43879 r!15422))) b!8013294))

(assert (= (and b!8013073 ((_ is Union!21683) (regOne!43879 r!15422))) b!8013295))

(declare-fun b!8013297 () Bool)

(declare-fun e!4720452 () Bool)

(declare-fun tp!2398376 () Bool)

(declare-fun tp!2398378 () Bool)

(assert (=> b!8013297 (= e!4720452 (and tp!2398376 tp!2398378))))

(declare-fun b!8013296 () Bool)

(assert (=> b!8013296 (= e!4720452 tp_is_empty!53909)))

(assert (=> b!8013073 (= tp!2398345 e!4720452)))

(declare-fun b!8013299 () Bool)

(declare-fun tp!2398379 () Bool)

(declare-fun tp!2398375 () Bool)

(assert (=> b!8013299 (= e!4720452 (and tp!2398379 tp!2398375))))

(declare-fun b!8013298 () Bool)

(declare-fun tp!2398377 () Bool)

(assert (=> b!8013298 (= e!4720452 tp!2398377)))

(assert (= (and b!8013073 ((_ is ElementMatch!21683) (regTwo!43879 r!15422))) b!8013296))

(assert (= (and b!8013073 ((_ is Concat!30682) (regTwo!43879 r!15422))) b!8013297))

(assert (= (and b!8013073 ((_ is Star!21683) (regTwo!43879 r!15422))) b!8013298))

(assert (= (and b!8013073 ((_ is Union!21683) (regTwo!43879 r!15422))) b!8013299))

(declare-fun b!8013301 () Bool)

(declare-fun e!4720453 () Bool)

(declare-fun tp!2398381 () Bool)

(declare-fun tp!2398383 () Bool)

(assert (=> b!8013301 (= e!4720453 (and tp!2398381 tp!2398383))))

(declare-fun b!8013300 () Bool)

(assert (=> b!8013300 (= e!4720453 tp_is_empty!53909)))

(assert (=> b!8013070 (= tp!2398340 e!4720453)))

(declare-fun b!8013303 () Bool)

(declare-fun tp!2398384 () Bool)

(declare-fun tp!2398380 () Bool)

(assert (=> b!8013303 (= e!4720453 (and tp!2398384 tp!2398380))))

(declare-fun b!8013302 () Bool)

(declare-fun tp!2398382 () Bool)

(assert (=> b!8013302 (= e!4720453 tp!2398382)))

(assert (= (and b!8013070 ((_ is ElementMatch!21683) (reg!22012 r!15422))) b!8013300))

(assert (= (and b!8013070 ((_ is Concat!30682) (reg!22012 r!15422))) b!8013301))

(assert (= (and b!8013070 ((_ is Star!21683) (reg!22012 r!15422))) b!8013302))

(assert (= (and b!8013070 ((_ is Union!21683) (reg!22012 r!15422))) b!8013303))

(declare-fun b!8013304 () Bool)

(declare-fun e!4720454 () Bool)

(declare-fun tp!2398385 () Bool)

(assert (=> b!8013304 (= e!4720454 (and tp_is_empty!53909 tp!2398385))))

(assert (=> b!8013059 (= tp!2398344 e!4720454)))

(assert (= (and b!8013059 ((_ is Cons!74788) (t!390655 testedP!353))) b!8013304))

(declare-fun b!8013305 () Bool)

(declare-fun e!4720455 () Bool)

(declare-fun tp!2398386 () Bool)

(assert (=> b!8013305 (= e!4720455 (and tp_is_empty!53909 tp!2398386))))

(assert (=> b!8013069 (= tp!2398339 e!4720455)))

(assert (= (and b!8013069 ((_ is Cons!74788) (t!390655 testedSuffix!271))) b!8013305))

(check-sat (not bm!744269) (not b!8013108) (not b!8013284) (not b!8013224) (not b!8013297) (not b!8013196) (not b!8013104) (not b!8013098) (not d!2388916) (not b!8013303) (not d!2388902) (not b!8013285) (not b!8013211) (not b!8013295) (not b!8013262) (not d!2388946) (not b!8013291) (not b!8013280) (not d!2388898) (not b!8013302) (not d!2388934) (not b!8013267) (not d!2388952) (not b!8013182) (not b!8013102) (not b!8013301) (not d!2388962) (not b!8013305) (not b!8013099) (not b!8013195) tp_is_empty!53909 (not b!8013150) (not b!8013266) (not bm!744270) (not d!2388954) (not bm!744289) (not b!8013281) (not b!8013107) (not b!8013207) (not b!8013298) (not b!8013103) (not b!8013181) (not b!8013210) (not d!2388910) (not b!8013294) (not b!8013206) (not d!2388938) (not b!8013153) (not b!8013100) (not b!8013088) (not b!8013286) (not b!8013106) (not d!2388928) (not d!2388950) (not b!8013304) (not d!2388912) (not b!8013194) (not b!8013293) (not d!2388900) (not b!8013299) (not d!2388976) (not bm!744288) (not b!8013081) (not b!8013282))
(check-sat)
(get-model)

(declare-fun d!2389002 () Bool)

(declare-fun c!1470751 () Bool)

(assert (=> d!2389002 (= c!1470751 ((_ is Nil!74788) lt!2717608))))

(declare-fun e!4720496 () (InoxSet C!43704))

(assert (=> d!2389002 (= (content!15915 lt!2717608) e!4720496)))

(declare-fun b!8013397 () Bool)

(assert (=> b!8013397 (= e!4720496 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013398 () Bool)

(assert (=> b!8013398 (= e!4720496 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717608) true) (content!15915 (t!390655 lt!2717608))))))

(assert (= (and d!2389002 c!1470751) b!8013397))

(assert (= (and d!2389002 (not c!1470751)) b!8013398))

(declare-fun m!8376738 () Bool)

(assert (=> b!8013398 m!8376738))

(declare-fun m!8376740 () Bool)

(assert (=> b!8013398 m!8376740))

(assert (=> d!2388946 d!2389002))

(declare-fun d!2389004 () Bool)

(declare-fun c!1470752 () Bool)

(assert (=> d!2389004 (= c!1470752 ((_ is Nil!74788) testedP!353))))

(declare-fun e!4720497 () (InoxSet C!43704))

(assert (=> d!2389004 (= (content!15915 testedP!353) e!4720497)))

(declare-fun b!8013399 () Bool)

(assert (=> b!8013399 (= e!4720497 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013400 () Bool)

(assert (=> b!8013400 (= e!4720497 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 testedP!353) true) (content!15915 (t!390655 testedP!353))))))

(assert (= (and d!2389004 c!1470752) b!8013399))

(assert (= (and d!2389004 (not c!1470752)) b!8013400))

(declare-fun m!8376742 () Bool)

(assert (=> b!8013400 m!8376742))

(declare-fun m!8376744 () Bool)

(assert (=> b!8013400 m!8376744))

(assert (=> d!2388946 d!2389004))

(declare-fun d!2389006 () Bool)

(declare-fun c!1470753 () Bool)

(assert (=> d!2389006 (= c!1470753 ((_ is Nil!74788) (Cons!74788 lt!2717557 Nil!74788)))))

(declare-fun e!4720498 () (InoxSet C!43704))

(assert (=> d!2389006 (= (content!15915 (Cons!74788 lt!2717557 Nil!74788)) e!4720498)))

(declare-fun b!8013401 () Bool)

(assert (=> b!8013401 (= e!4720498 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013402 () Bool)

(assert (=> b!8013402 (= e!4720498 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 (Cons!74788 lt!2717557 Nil!74788)) true) (content!15915 (t!390655 (Cons!74788 lt!2717557 Nil!74788)))))))

(assert (= (and d!2389006 c!1470753) b!8013401))

(assert (= (and d!2389006 (not c!1470753)) b!8013402))

(declare-fun m!8376746 () Bool)

(assert (=> b!8013402 m!8376746))

(declare-fun m!8376748 () Bool)

(assert (=> b!8013402 m!8376748))

(assert (=> d!2388946 d!2389006))

(declare-fun d!2389008 () Bool)

(declare-fun lt!2717650 () Int)

(assert (=> d!2389008 (>= lt!2717650 0)))

(declare-fun e!4720499 () Int)

(assert (=> d!2389008 (= lt!2717650 e!4720499)))

(declare-fun c!1470754 () Bool)

(assert (=> d!2389008 (= c!1470754 ((_ is Nil!74788) lt!2717558))))

(assert (=> d!2389008 (= (size!43585 lt!2717558) lt!2717650)))

(declare-fun b!8013403 () Bool)

(assert (=> b!8013403 (= e!4720499 0)))

(declare-fun b!8013404 () Bool)

(assert (=> b!8013404 (= e!4720499 (+ 1 (size!43585 (t!390655 lt!2717558))))))

(assert (= (and d!2389008 c!1470754) b!8013403))

(assert (= (and d!2389008 (not c!1470754)) b!8013404))

(declare-fun m!8376750 () Bool)

(assert (=> b!8013404 m!8376750))

(assert (=> b!8013104 d!2389008))

(assert (=> b!8013104 d!2388904))

(assert (=> b!8013100 d!2388926))

(assert (=> b!8013100 d!2388904))

(declare-fun b!8013406 () Bool)

(declare-fun res!3168641 () Bool)

(declare-fun e!4720502 () Bool)

(assert (=> b!8013406 (=> (not res!3168641) (not e!4720502))))

(assert (=> b!8013406 (= res!3168641 (= (head!16357 (tail!15880 testedP!353)) (head!16357 (tail!15880 lt!2717558))))))

(declare-fun b!8013407 () Bool)

(assert (=> b!8013407 (= e!4720502 (isPrefix!6735 (tail!15880 (tail!15880 testedP!353)) (tail!15880 (tail!15880 lt!2717558))))))

(declare-fun b!8013405 () Bool)

(declare-fun e!4720501 () Bool)

(assert (=> b!8013405 (= e!4720501 e!4720502)))

(declare-fun res!3168642 () Bool)

(assert (=> b!8013405 (=> (not res!3168642) (not e!4720502))))

(assert (=> b!8013405 (= res!3168642 (not ((_ is Nil!74788) (tail!15880 lt!2717558))))))

(declare-fun d!2389010 () Bool)

(declare-fun e!4720500 () Bool)

(assert (=> d!2389010 e!4720500))

(declare-fun res!3168644 () Bool)

(assert (=> d!2389010 (=> res!3168644 e!4720500)))

(declare-fun lt!2717651 () Bool)

(assert (=> d!2389010 (= res!3168644 (not lt!2717651))))

(assert (=> d!2389010 (= lt!2717651 e!4720501)))

(declare-fun res!3168643 () Bool)

(assert (=> d!2389010 (=> res!3168643 e!4720501)))

(assert (=> d!2389010 (= res!3168643 ((_ is Nil!74788) (tail!15880 testedP!353)))))

(assert (=> d!2389010 (= (isPrefix!6735 (tail!15880 testedP!353) (tail!15880 lt!2717558)) lt!2717651)))

(declare-fun b!8013408 () Bool)

(assert (=> b!8013408 (= e!4720500 (>= (size!43585 (tail!15880 lt!2717558)) (size!43585 (tail!15880 testedP!353))))))

(assert (= (and d!2389010 (not res!3168643)) b!8013405))

(assert (= (and b!8013405 res!3168642) b!8013406))

(assert (= (and b!8013406 res!3168641) b!8013407))

(assert (= (and d!2389010 (not res!3168644)) b!8013408))

(assert (=> b!8013406 m!8376502))

(declare-fun m!8376752 () Bool)

(assert (=> b!8013406 m!8376752))

(assert (=> b!8013406 m!8376508))

(declare-fun m!8376754 () Bool)

(assert (=> b!8013406 m!8376754))

(assert (=> b!8013407 m!8376502))

(declare-fun m!8376756 () Bool)

(assert (=> b!8013407 m!8376756))

(assert (=> b!8013407 m!8376508))

(declare-fun m!8376758 () Bool)

(assert (=> b!8013407 m!8376758))

(assert (=> b!8013407 m!8376756))

(assert (=> b!8013407 m!8376758))

(declare-fun m!8376760 () Bool)

(assert (=> b!8013407 m!8376760))

(assert (=> b!8013408 m!8376508))

(declare-fun m!8376762 () Bool)

(assert (=> b!8013408 m!8376762))

(assert (=> b!8013408 m!8376502))

(declare-fun m!8376764 () Bool)

(assert (=> b!8013408 m!8376764))

(assert (=> b!8013103 d!2389010))

(declare-fun d!2389012 () Bool)

(assert (=> d!2389012 (= (tail!15880 testedP!353) (t!390655 testedP!353))))

(assert (=> b!8013103 d!2389012))

(declare-fun d!2389014 () Bool)

(assert (=> d!2389014 (= (tail!15880 lt!2717558) (t!390655 lt!2717558))))

(assert (=> b!8013103 d!2389014))

(declare-fun d!2389016 () Bool)

(assert (=> d!2389016 (= (nullable!9725 (regOne!43878 r!15422)) (nullableFct!3842 (regOne!43878 r!15422)))))

(declare-fun bs!1970941 () Bool)

(assert (= bs!1970941 d!2389016))

(declare-fun m!8376766 () Bool)

(assert (=> bs!1970941 m!8376766))

(assert (=> b!8013262 d!2389016))

(declare-fun b!8013409 () Bool)

(declare-fun e!4720503 () List!74912)

(assert (=> b!8013409 (= e!4720503 testedSuffix!271)))

(declare-fun d!2389018 () Bool)

(declare-fun e!4720504 () Bool)

(assert (=> d!2389018 e!4720504))

(declare-fun res!3168646 () Bool)

(assert (=> d!2389018 (=> (not res!3168646) (not e!4720504))))

(declare-fun lt!2717652 () List!74912)

(assert (=> d!2389018 (= res!3168646 (= (content!15915 lt!2717652) ((_ map or) (content!15915 (t!390655 testedP!353)) (content!15915 testedSuffix!271))))))

(assert (=> d!2389018 (= lt!2717652 e!4720503)))

(declare-fun c!1470755 () Bool)

(assert (=> d!2389018 (= c!1470755 ((_ is Nil!74788) (t!390655 testedP!353)))))

(assert (=> d!2389018 (= (++!18509 (t!390655 testedP!353) testedSuffix!271) lt!2717652)))

(declare-fun b!8013411 () Bool)

(declare-fun res!3168645 () Bool)

(assert (=> b!8013411 (=> (not res!3168645) (not e!4720504))))

(assert (=> b!8013411 (= res!3168645 (= (size!43585 lt!2717652) (+ (size!43585 (t!390655 testedP!353)) (size!43585 testedSuffix!271))))))

(declare-fun b!8013410 () Bool)

(assert (=> b!8013410 (= e!4720503 (Cons!74788 (h!81236 (t!390655 testedP!353)) (++!18509 (t!390655 (t!390655 testedP!353)) testedSuffix!271)))))

(declare-fun b!8013412 () Bool)

(assert (=> b!8013412 (= e!4720504 (or (not (= testedSuffix!271 Nil!74788)) (= lt!2717652 (t!390655 testedP!353))))))

(assert (= (and d!2389018 c!1470755) b!8013409))

(assert (= (and d!2389018 (not c!1470755)) b!8013410))

(assert (= (and d!2389018 res!3168646) b!8013411))

(assert (= (and b!8013411 res!3168645) b!8013412))

(declare-fun m!8376768 () Bool)

(assert (=> d!2389018 m!8376768))

(assert (=> d!2389018 m!8376744))

(assert (=> d!2389018 m!8376662))

(declare-fun m!8376770 () Bool)

(assert (=> b!8013411 m!8376770))

(assert (=> b!8013411 m!8376496))

(assert (=> b!8013411 m!8376666))

(declare-fun m!8376772 () Bool)

(assert (=> b!8013410 m!8376772))

(assert (=> b!8013266 d!2389018))

(declare-fun b!8013413 () Bool)

(declare-fun e!4720505 () List!74912)

(assert (=> b!8013413 (= e!4720505 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))

(declare-fun d!2389020 () Bool)

(declare-fun e!4720506 () Bool)

(assert (=> d!2389020 e!4720506))

(declare-fun res!3168648 () Bool)

(assert (=> d!2389020 (=> (not res!3168648) (not e!4720506))))

(declare-fun lt!2717653 () List!74912)

(assert (=> d!2389020 (= res!3168648 (= (content!15915 lt!2717653) ((_ map or) (content!15915 (t!390655 testedP!353)) (content!15915 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (=> d!2389020 (= lt!2717653 e!4720505)))

(declare-fun c!1470756 () Bool)

(assert (=> d!2389020 (= c!1470756 ((_ is Nil!74788) (t!390655 testedP!353)))))

(assert (=> d!2389020 (= (++!18509 (t!390655 testedP!353) (Cons!74788 (head!16357 lt!2717553) Nil!74788)) lt!2717653)))

(declare-fun b!8013415 () Bool)

(declare-fun res!3168647 () Bool)

(assert (=> b!8013415 (=> (not res!3168647) (not e!4720506))))

(assert (=> b!8013415 (= res!3168647 (= (size!43585 lt!2717653) (+ (size!43585 (t!390655 testedP!353)) (size!43585 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(declare-fun b!8013414 () Bool)

(assert (=> b!8013414 (= e!4720505 (Cons!74788 (h!81236 (t!390655 testedP!353)) (++!18509 (t!390655 (t!390655 testedP!353)) (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(declare-fun b!8013416 () Bool)

(assert (=> b!8013416 (= e!4720506 (or (not (= (Cons!74788 (head!16357 lt!2717553) Nil!74788) Nil!74788)) (= lt!2717653 (t!390655 testedP!353))))))

(assert (= (and d!2389020 c!1470756) b!8013413))

(assert (= (and d!2389020 (not c!1470756)) b!8013414))

(assert (= (and d!2389020 res!3168648) b!8013415))

(assert (= (and b!8013415 res!3168647) b!8013416))

(declare-fun m!8376774 () Bool)

(assert (=> d!2389020 m!8376774))

(assert (=> d!2389020 m!8376744))

(assert (=> d!2389020 m!8376568))

(declare-fun m!8376776 () Bool)

(assert (=> b!8013415 m!8376776))

(assert (=> b!8013415 m!8376496))

(assert (=> b!8013415 m!8376572))

(declare-fun m!8376778 () Bool)

(assert (=> b!8013414 m!8376778))

(assert (=> b!8013181 d!2389020))

(declare-fun b!8013417 () Bool)

(declare-fun e!4720507 () List!74912)

(assert (=> b!8013417 (= e!4720507 lt!2717546)))

(declare-fun d!2389022 () Bool)

(declare-fun e!4720508 () Bool)

(assert (=> d!2389022 e!4720508))

(declare-fun res!3168650 () Bool)

(assert (=> d!2389022 (=> (not res!3168650) (not e!4720508))))

(declare-fun lt!2717654 () List!74912)

(assert (=> d!2389022 (= res!3168650 (= (content!15915 lt!2717654) ((_ map or) (content!15915 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788))) (content!15915 lt!2717546))))))

(assert (=> d!2389022 (= lt!2717654 e!4720507)))

(declare-fun c!1470757 () Bool)

(assert (=> d!2389022 (= c!1470757 ((_ is Nil!74788) (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788))))))

(assert (=> d!2389022 (= (++!18509 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)) lt!2717546) lt!2717654)))

(declare-fun b!8013419 () Bool)

(declare-fun res!3168649 () Bool)

(assert (=> b!8013419 (=> (not res!3168649) (not e!4720508))))

(assert (=> b!8013419 (= res!3168649 (= (size!43585 lt!2717654) (+ (size!43585 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788))) (size!43585 lt!2717546))))))

(declare-fun b!8013418 () Bool)

(assert (=> b!8013418 (= e!4720507 (Cons!74788 (h!81236 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788))) (++!18509 (t!390655 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788))) lt!2717546)))))

(declare-fun b!8013420 () Bool)

(assert (=> b!8013420 (= e!4720508 (or (not (= lt!2717546 Nil!74788)) (= lt!2717654 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)))))))

(assert (= (and d!2389022 c!1470757) b!8013417))

(assert (= (and d!2389022 (not c!1470757)) b!8013418))

(assert (= (and d!2389022 res!3168650) b!8013419))

(assert (= (and b!8013419 res!3168649) b!8013420))

(declare-fun m!8376780 () Bool)

(assert (=> d!2389022 m!8376780))

(assert (=> d!2389022 m!8376444))

(declare-fun m!8376782 () Bool)

(assert (=> d!2389022 m!8376782))

(assert (=> d!2389022 m!8376612))

(declare-fun m!8376784 () Bool)

(assert (=> b!8013419 m!8376784))

(assert (=> b!8013419 m!8376444))

(declare-fun m!8376786 () Bool)

(assert (=> b!8013419 m!8376786))

(assert (=> b!8013419 m!8376616))

(declare-fun m!8376788 () Bool)

(assert (=> b!8013418 m!8376788))

(assert (=> d!2388938 d!2389022))

(assert (=> d!2388938 d!2388946))

(declare-fun d!2389024 () Bool)

(assert (=> d!2389024 (= (++!18509 (++!18509 testedP!353 (Cons!74788 lt!2717557 Nil!74788)) lt!2717546) totalInput!1349)))

(assert (=> d!2389024 true))

(declare-fun _$68!1548 () Unit!170838)

(assert (=> d!2389024 (= (choose!60381 testedP!353 lt!2717557 lt!2717546 totalInput!1349) _$68!1548)))

(declare-fun bs!1970942 () Bool)

(assert (= bs!1970942 d!2389024))

(assert (=> bs!1970942 m!8376444))

(assert (=> bs!1970942 m!8376444))

(assert (=> bs!1970942 m!8376582))

(assert (=> d!2388938 d!2389024))

(declare-fun b!8013421 () Bool)

(declare-fun e!4720509 () List!74912)

(assert (=> b!8013421 (= e!4720509 (Cons!74788 lt!2717557 lt!2717546))))

(declare-fun d!2389026 () Bool)

(declare-fun e!4720510 () Bool)

(assert (=> d!2389026 e!4720510))

(declare-fun res!3168652 () Bool)

(assert (=> d!2389026 (=> (not res!3168652) (not e!4720510))))

(declare-fun lt!2717655 () List!74912)

(assert (=> d!2389026 (= res!3168652 (= (content!15915 lt!2717655) ((_ map or) (content!15915 testedP!353) (content!15915 (Cons!74788 lt!2717557 lt!2717546)))))))

(assert (=> d!2389026 (= lt!2717655 e!4720509)))

(declare-fun c!1470758 () Bool)

(assert (=> d!2389026 (= c!1470758 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2389026 (= (++!18509 testedP!353 (Cons!74788 lt!2717557 lt!2717546)) lt!2717655)))

(declare-fun b!8013423 () Bool)

(declare-fun res!3168651 () Bool)

(assert (=> b!8013423 (=> (not res!3168651) (not e!4720510))))

(assert (=> b!8013423 (= res!3168651 (= (size!43585 lt!2717655) (+ (size!43585 testedP!353) (size!43585 (Cons!74788 lt!2717557 lt!2717546)))))))

(declare-fun b!8013422 () Bool)

(assert (=> b!8013422 (= e!4720509 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) (Cons!74788 lt!2717557 lt!2717546))))))

(declare-fun b!8013424 () Bool)

(assert (=> b!8013424 (= e!4720510 (or (not (= (Cons!74788 lt!2717557 lt!2717546) Nil!74788)) (= lt!2717655 testedP!353)))))

(assert (= (and d!2389026 c!1470758) b!8013421))

(assert (= (and d!2389026 (not c!1470758)) b!8013422))

(assert (= (and d!2389026 res!3168652) b!8013423))

(assert (= (and b!8013423 res!3168651) b!8013424))

(declare-fun m!8376790 () Bool)

(assert (=> d!2389026 m!8376790))

(assert (=> d!2389026 m!8376566))

(declare-fun m!8376792 () Bool)

(assert (=> d!2389026 m!8376792))

(declare-fun m!8376794 () Bool)

(assert (=> b!8013423 m!8376794))

(assert (=> b!8013423 m!8376468))

(declare-fun m!8376796 () Bool)

(assert (=> b!8013423 m!8376796))

(declare-fun m!8376798 () Bool)

(assert (=> b!8013422 m!8376798))

(assert (=> d!2388938 d!2389026))

(declare-fun b!8013425 () Bool)

(declare-fun e!4720511 () List!74912)

(assert (=> b!8013425 (= e!4720511 lt!2717546)))

(declare-fun d!2389028 () Bool)

(declare-fun e!4720512 () Bool)

(assert (=> d!2389028 e!4720512))

(declare-fun res!3168654 () Bool)

(assert (=> d!2389028 (=> (not res!3168654) (not e!4720512))))

(declare-fun lt!2717656 () List!74912)

(assert (=> d!2389028 (= res!3168654 (= (content!15915 lt!2717656) ((_ map or) (content!15915 (t!390655 lt!2717548)) (content!15915 lt!2717546))))))

(assert (=> d!2389028 (= lt!2717656 e!4720511)))

(declare-fun c!1470759 () Bool)

(assert (=> d!2389028 (= c!1470759 ((_ is Nil!74788) (t!390655 lt!2717548)))))

(assert (=> d!2389028 (= (++!18509 (t!390655 lt!2717548) lt!2717546) lt!2717656)))

(declare-fun b!8013427 () Bool)

(declare-fun res!3168653 () Bool)

(assert (=> b!8013427 (=> (not res!3168653) (not e!4720512))))

(assert (=> b!8013427 (= res!3168653 (= (size!43585 lt!2717656) (+ (size!43585 (t!390655 lt!2717548)) (size!43585 lt!2717546))))))

(declare-fun b!8013426 () Bool)

(assert (=> b!8013426 (= e!4720511 (Cons!74788 (h!81236 (t!390655 lt!2717548)) (++!18509 (t!390655 (t!390655 lt!2717548)) lt!2717546)))))

(declare-fun b!8013428 () Bool)

(assert (=> b!8013428 (= e!4720512 (or (not (= lt!2717546 Nil!74788)) (= lt!2717656 (t!390655 lt!2717548))))))

(assert (= (and d!2389028 c!1470759) b!8013425))

(assert (= (and d!2389028 (not c!1470759)) b!8013426))

(assert (= (and d!2389028 res!3168654) b!8013427))

(assert (= (and b!8013427 res!3168653) b!8013428))

(declare-fun m!8376800 () Bool)

(assert (=> d!2389028 m!8376800))

(declare-fun m!8376802 () Bool)

(assert (=> d!2389028 m!8376802))

(assert (=> d!2389028 m!8376612))

(declare-fun m!8376804 () Bool)

(assert (=> b!8013427 m!8376804))

(assert (=> b!8013427 m!8376636))

(assert (=> b!8013427 m!8376616))

(declare-fun m!8376806 () Bool)

(assert (=> b!8013426 m!8376806))

(assert (=> b!8013210 d!2389028))

(declare-fun d!2389030 () Bool)

(assert (=> d!2389030 (= (head!16357 testedP!353) (h!81236 testedP!353))))

(assert (=> b!8013098 d!2389030))

(declare-fun d!2389032 () Bool)

(assert (=> d!2389032 (= (head!16357 totalInput!1349) (h!81236 totalInput!1349))))

(assert (=> b!8013098 d!2389032))

(declare-fun d!2389034 () Bool)

(declare-fun lt!2717657 () Int)

(assert (=> d!2389034 (>= lt!2717657 0)))

(declare-fun e!4720513 () Int)

(assert (=> d!2389034 (= lt!2717657 e!4720513)))

(declare-fun c!1470760 () Bool)

(assert (=> d!2389034 (= c!1470760 ((_ is Nil!74788) lt!2717609))))

(assert (=> d!2389034 (= (size!43585 lt!2717609) lt!2717657)))

(declare-fun b!8013429 () Bool)

(assert (=> b!8013429 (= e!4720513 0)))

(declare-fun b!8013430 () Bool)

(assert (=> b!8013430 (= e!4720513 (+ 1 (size!43585 (t!390655 lt!2717609))))))

(assert (= (and d!2389034 c!1470760) b!8013429))

(assert (= (and d!2389034 (not c!1470760)) b!8013430))

(declare-fun m!8376808 () Bool)

(assert (=> b!8013430 m!8376808))

(assert (=> b!8013211 d!2389034))

(assert (=> b!8013211 d!2388958))

(declare-fun d!2389036 () Bool)

(declare-fun lt!2717658 () Int)

(assert (=> d!2389036 (>= lt!2717658 0)))

(declare-fun e!4720514 () Int)

(assert (=> d!2389036 (= lt!2717658 e!4720514)))

(declare-fun c!1470761 () Bool)

(assert (=> d!2389036 (= c!1470761 ((_ is Nil!74788) lt!2717546))))

(assert (=> d!2389036 (= (size!43585 lt!2717546) lt!2717658)))

(declare-fun b!8013431 () Bool)

(assert (=> b!8013431 (= e!4720514 0)))

(declare-fun b!8013432 () Bool)

(assert (=> b!8013432 (= e!4720514 (+ 1 (size!43585 (t!390655 lt!2717546))))))

(assert (= (and d!2389036 c!1470761) b!8013431))

(assert (= (and d!2389036 (not c!1470761)) b!8013432))

(declare-fun m!8376810 () Bool)

(assert (=> b!8013432 m!8376810))

(assert (=> b!8013211 d!2389036))

(declare-fun b!8013434 () Bool)

(declare-fun res!3168655 () Bool)

(declare-fun e!4720517 () Bool)

(assert (=> b!8013434 (=> (not res!3168655) (not e!4720517))))

(assert (=> b!8013434 (= res!3168655 (= (head!16357 (tail!15880 testedP!353)) (head!16357 (tail!15880 totalInput!1349))))))

(declare-fun b!8013435 () Bool)

(assert (=> b!8013435 (= e!4720517 (isPrefix!6735 (tail!15880 (tail!15880 testedP!353)) (tail!15880 (tail!15880 totalInput!1349))))))

(declare-fun b!8013433 () Bool)

(declare-fun e!4720516 () Bool)

(assert (=> b!8013433 (= e!4720516 e!4720517)))

(declare-fun res!3168656 () Bool)

(assert (=> b!8013433 (=> (not res!3168656) (not e!4720517))))

(assert (=> b!8013433 (= res!3168656 (not ((_ is Nil!74788) (tail!15880 totalInput!1349))))))

(declare-fun d!2389038 () Bool)

(declare-fun e!4720515 () Bool)

(assert (=> d!2389038 e!4720515))

(declare-fun res!3168658 () Bool)

(assert (=> d!2389038 (=> res!3168658 e!4720515)))

(declare-fun lt!2717659 () Bool)

(assert (=> d!2389038 (= res!3168658 (not lt!2717659))))

(assert (=> d!2389038 (= lt!2717659 e!4720516)))

(declare-fun res!3168657 () Bool)

(assert (=> d!2389038 (=> res!3168657 e!4720516)))

(assert (=> d!2389038 (= res!3168657 ((_ is Nil!74788) (tail!15880 testedP!353)))))

(assert (=> d!2389038 (= (isPrefix!6735 (tail!15880 testedP!353) (tail!15880 totalInput!1349)) lt!2717659)))

(declare-fun b!8013436 () Bool)

(assert (=> b!8013436 (= e!4720515 (>= (size!43585 (tail!15880 totalInput!1349)) (size!43585 (tail!15880 testedP!353))))))

(assert (= (and d!2389038 (not res!3168657)) b!8013433))

(assert (= (and b!8013433 res!3168656) b!8013434))

(assert (= (and b!8013434 res!3168655) b!8013435))

(assert (= (and d!2389038 (not res!3168658)) b!8013436))

(assert (=> b!8013434 m!8376502))

(assert (=> b!8013434 m!8376752))

(assert (=> b!8013434 m!8376492))

(declare-fun m!8376812 () Bool)

(assert (=> b!8013434 m!8376812))

(assert (=> b!8013435 m!8376502))

(assert (=> b!8013435 m!8376756))

(assert (=> b!8013435 m!8376492))

(declare-fun m!8376814 () Bool)

(assert (=> b!8013435 m!8376814))

(assert (=> b!8013435 m!8376756))

(assert (=> b!8013435 m!8376814))

(declare-fun m!8376816 () Bool)

(assert (=> b!8013435 m!8376816))

(assert (=> b!8013436 m!8376492))

(declare-fun m!8376818 () Bool)

(assert (=> b!8013436 m!8376818))

(assert (=> b!8013436 m!8376502))

(assert (=> b!8013436 m!8376764))

(assert (=> b!8013099 d!2389038))

(assert (=> b!8013099 d!2389012))

(declare-fun d!2389040 () Bool)

(assert (=> d!2389040 (= (tail!15880 totalInput!1349) (t!390655 totalInput!1349))))

(assert (=> b!8013099 d!2389040))

(assert (=> b!8013102 d!2389030))

(declare-fun d!2389042 () Bool)

(assert (=> d!2389042 (= (head!16357 lt!2717558) (h!81236 lt!2717558))))

(assert (=> b!8013102 d!2389042))

(declare-fun d!2389044 () Bool)

(declare-fun lt!2717660 () Int)

(assert (=> d!2389044 (>= lt!2717660 0)))

(declare-fun e!4720518 () Int)

(assert (=> d!2389044 (= lt!2717660 e!4720518)))

(declare-fun c!1470762 () Bool)

(assert (=> d!2389044 (= c!1470762 ((_ is Nil!74788) (t!390655 testedP!353)))))

(assert (=> d!2389044 (= (size!43585 (t!390655 testedP!353)) lt!2717660)))

(declare-fun b!8013437 () Bool)

(assert (=> b!8013437 (= e!4720518 0)))

(declare-fun b!8013438 () Bool)

(assert (=> b!8013438 (= e!4720518 (+ 1 (size!43585 (t!390655 (t!390655 testedP!353)))))))

(assert (= (and d!2389044 c!1470762) b!8013437))

(assert (= (and d!2389044 (not c!1470762)) b!8013438))

(declare-fun m!8376820 () Bool)

(assert (=> b!8013438 m!8376820))

(assert (=> b!8013088 d!2389044))

(declare-fun b!8013453 () Bool)

(declare-fun e!4720533 () Bool)

(declare-fun e!4720532 () Bool)

(assert (=> b!8013453 (= e!4720533 e!4720532)))

(declare-fun res!3168671 () Bool)

(declare-fun call!744314 () Bool)

(assert (=> b!8013453 (= res!3168671 call!744314)))

(assert (=> b!8013453 (=> res!3168671 e!4720532)))

(declare-fun b!8013454 () Bool)

(declare-fun e!4720534 () Bool)

(assert (=> b!8013454 (= e!4720534 call!744314)))

(declare-fun b!8013455 () Bool)

(assert (=> b!8013455 (= e!4720533 e!4720534)))

(declare-fun res!3168672 () Bool)

(declare-fun call!744313 () Bool)

(assert (=> b!8013455 (= res!3168672 call!744313)))

(assert (=> b!8013455 (=> (not res!3168672) (not e!4720534))))

(declare-fun bm!744308 () Bool)

(declare-fun c!1470765 () Bool)

(assert (=> bm!744308 (= call!744314 (lostCause!2070 (ite c!1470765 (regTwo!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun bm!744309 () Bool)

(assert (=> bm!744309 (= call!744313 (lostCause!2070 (ite c!1470765 (regOne!43879 r!15422) (regTwo!43878 r!15422))))))

(declare-fun b!8013457 () Bool)

(declare-fun e!4720531 () Bool)

(assert (=> b!8013457 (= e!4720531 e!4720533)))

(assert (=> b!8013457 (= c!1470765 ((_ is Union!21683) r!15422))))

(declare-fun b!8013458 () Bool)

(declare-fun e!4720535 () Bool)

(declare-fun e!4720536 () Bool)

(assert (=> b!8013458 (= e!4720535 e!4720536)))

(declare-fun res!3168670 () Bool)

(assert (=> b!8013458 (=> res!3168670 e!4720536)))

(assert (=> b!8013458 (= res!3168670 ((_ is EmptyLang!21683) r!15422))))

(declare-fun b!8013459 () Bool)

(assert (=> b!8013459 (= e!4720536 e!4720531)))

(declare-fun res!3168673 () Bool)

(assert (=> b!8013459 (=> (not res!3168673) (not e!4720531))))

(assert (=> b!8013459 (= res!3168673 (and (not ((_ is ElementMatch!21683) r!15422)) (not ((_ is Star!21683) r!15422))))))

(declare-fun b!8013456 () Bool)

(assert (=> b!8013456 (= e!4720532 call!744313)))

(declare-fun d!2389046 () Bool)

(declare-fun lt!2717663 () Bool)

(declare-datatypes ((Option!17966 0))(
  ( (None!17965) (Some!17965 (v!55150 List!74912)) )
))
(declare-fun isEmpty!42975 (Option!17966) Bool)

(declare-fun getLanguageWitness!1157 (Regex!21683) Option!17966)

(assert (=> d!2389046 (= lt!2717663 (isEmpty!42975 (getLanguageWitness!1157 r!15422)))))

(assert (=> d!2389046 (= lt!2717663 e!4720535)))

(declare-fun res!3168669 () Bool)

(assert (=> d!2389046 (=> (not res!3168669) (not e!4720535))))

(assert (=> d!2389046 (= res!3168669 (not ((_ is EmptyExpr!21683) r!15422)))))

(assert (=> d!2389046 (= (lostCauseFct!613 r!15422) lt!2717663)))

(assert (= (and d!2389046 res!3168669) b!8013458))

(assert (= (and b!8013458 (not res!3168670)) b!8013459))

(assert (= (and b!8013459 res!3168673) b!8013457))

(assert (= (and b!8013457 c!1470765) b!8013455))

(assert (= (and b!8013457 (not c!1470765)) b!8013453))

(assert (= (and b!8013455 res!3168672) b!8013454))

(assert (= (and b!8013453 (not res!3168671)) b!8013456))

(assert (= (or b!8013455 b!8013456) bm!744309))

(assert (= (or b!8013454 b!8013453) bm!744308))

(declare-fun m!8376822 () Bool)

(assert (=> bm!744308 m!8376822))

(declare-fun m!8376824 () Bool)

(assert (=> bm!744309 m!8376824))

(declare-fun m!8376826 () Bool)

(assert (=> d!2389046 m!8376826))

(assert (=> d!2389046 m!8376826))

(declare-fun m!8376828 () Bool)

(assert (=> d!2389046 m!8376828))

(assert (=> d!2388898 d!2389046))

(declare-fun b!8013460 () Bool)

(declare-fun e!4720537 () List!74912)

(assert (=> b!8013460 (= e!4720537 lt!2717567)))

(declare-fun d!2389048 () Bool)

(declare-fun e!4720538 () Bool)

(assert (=> d!2389048 e!4720538))

(declare-fun res!3168675 () Bool)

(assert (=> d!2389048 (=> (not res!3168675) (not e!4720538))))

(declare-fun lt!2717664 () List!74912)

(assert (=> d!2389048 (= res!3168675 (= (content!15915 lt!2717664) ((_ map or) (content!15915 testedP!353) (content!15915 lt!2717567))))))

(assert (=> d!2389048 (= lt!2717664 e!4720537)))

(declare-fun c!1470766 () Bool)

(assert (=> d!2389048 (= c!1470766 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2389048 (= (++!18509 testedP!353 lt!2717567) lt!2717664)))

(declare-fun b!8013462 () Bool)

(declare-fun res!3168674 () Bool)

(assert (=> b!8013462 (=> (not res!3168674) (not e!4720538))))

(assert (=> b!8013462 (= res!3168674 (= (size!43585 lt!2717664) (+ (size!43585 testedP!353) (size!43585 lt!2717567))))))

(declare-fun b!8013461 () Bool)

(assert (=> b!8013461 (= e!4720537 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) lt!2717567)))))

(declare-fun b!8013463 () Bool)

(assert (=> b!8013463 (= e!4720538 (or (not (= lt!2717567 Nil!74788)) (= lt!2717664 testedP!353)))))

(assert (= (and d!2389048 c!1470766) b!8013460))

(assert (= (and d!2389048 (not c!1470766)) b!8013461))

(assert (= (and d!2389048 res!3168675) b!8013462))

(assert (= (and b!8013462 res!3168674) b!8013463))

(declare-fun m!8376830 () Bool)

(assert (=> d!2389048 m!8376830))

(assert (=> d!2389048 m!8376566))

(declare-fun m!8376832 () Bool)

(assert (=> d!2389048 m!8376832))

(declare-fun m!8376834 () Bool)

(assert (=> b!8013462 m!8376834))

(assert (=> b!8013462 m!8376468))

(declare-fun m!8376836 () Bool)

(assert (=> b!8013462 m!8376836))

(declare-fun m!8376838 () Bool)

(assert (=> b!8013461 m!8376838))

(assert (=> d!2388902 d!2389048))

(assert (=> d!2388902 d!2388926))

(assert (=> d!2388902 d!2388904))

(declare-fun b!8013464 () Bool)

(declare-fun e!4720541 () Bool)

(declare-fun call!744316 () Bool)

(assert (=> b!8013464 (= e!4720541 call!744316)))

(declare-fun b!8013465 () Bool)

(declare-fun res!3168680 () Bool)

(declare-fun e!4720540 () Bool)

(assert (=> b!8013465 (=> res!3168680 e!4720540)))

(assert (=> b!8013465 (= res!3168680 (not ((_ is Concat!30682) lt!2717633)))))

(declare-fun e!4720542 () Bool)

(assert (=> b!8013465 (= e!4720542 e!4720540)))

(declare-fun b!8013466 () Bool)

(declare-fun e!4720539 () Bool)

(assert (=> b!8013466 (= e!4720539 e!4720542)))

(declare-fun c!1470767 () Bool)

(assert (=> b!8013466 (= c!1470767 ((_ is Union!21683) lt!2717633))))

(declare-fun bm!744310 () Bool)

(declare-fun call!744315 () Bool)

(assert (=> bm!744310 (= call!744315 call!744316)))

(declare-fun b!8013467 () Bool)

(declare-fun e!4720543 () Bool)

(assert (=> b!8013467 (= e!4720543 call!744315)))

(declare-fun b!8013468 () Bool)

(declare-fun res!3168678 () Bool)

(declare-fun e!4720545 () Bool)

(assert (=> b!8013468 (=> (not res!3168678) (not e!4720545))))

(declare-fun call!744317 () Bool)

(assert (=> b!8013468 (= res!3168678 call!744317)))

(assert (=> b!8013468 (= e!4720542 e!4720545)))

(declare-fun b!8013469 () Bool)

(assert (=> b!8013469 (= e!4720540 e!4720543)))

(declare-fun res!3168679 () Bool)

(assert (=> b!8013469 (=> (not res!3168679) (not e!4720543))))

(assert (=> b!8013469 (= res!3168679 call!744317)))

(declare-fun bm!744312 () Bool)

(assert (=> bm!744312 (= call!744317 (validRegex!11987 (ite c!1470767 (regOne!43879 lt!2717633) (regOne!43878 lt!2717633))))))

(declare-fun b!8013470 () Bool)

(declare-fun e!4720544 () Bool)

(assert (=> b!8013470 (= e!4720544 e!4720539)))

(declare-fun c!1470768 () Bool)

(assert (=> b!8013470 (= c!1470768 ((_ is Star!21683) lt!2717633))))

(declare-fun bm!744311 () Bool)

(assert (=> bm!744311 (= call!744316 (validRegex!11987 (ite c!1470768 (reg!22012 lt!2717633) (ite c!1470767 (regTwo!43879 lt!2717633) (regTwo!43878 lt!2717633)))))))

(declare-fun d!2389050 () Bool)

(declare-fun res!3168677 () Bool)

(assert (=> d!2389050 (=> res!3168677 e!4720544)))

(assert (=> d!2389050 (= res!3168677 ((_ is ElementMatch!21683) lt!2717633))))

(assert (=> d!2389050 (= (validRegex!11987 lt!2717633) e!4720544)))

(declare-fun b!8013471 () Bool)

(assert (=> b!8013471 (= e!4720539 e!4720541)))

(declare-fun res!3168676 () Bool)

(assert (=> b!8013471 (= res!3168676 (not (nullable!9725 (reg!22012 lt!2717633))))))

(assert (=> b!8013471 (=> (not res!3168676) (not e!4720541))))

(declare-fun b!8013472 () Bool)

(assert (=> b!8013472 (= e!4720545 call!744315)))

(assert (= (and d!2389050 (not res!3168677)) b!8013470))

(assert (= (and b!8013470 c!1470768) b!8013471))

(assert (= (and b!8013470 (not c!1470768)) b!8013466))

(assert (= (and b!8013471 res!3168676) b!8013464))

(assert (= (and b!8013466 c!1470767) b!8013468))

(assert (= (and b!8013466 (not c!1470767)) b!8013465))

(assert (= (and b!8013468 res!3168678) b!8013472))

(assert (= (and b!8013465 (not res!3168680)) b!8013469))

(assert (= (and b!8013469 res!3168679) b!8013467))

(assert (= (or b!8013472 b!8013467) bm!744310))

(assert (= (or b!8013468 b!8013469) bm!744312))

(assert (= (or b!8013464 bm!744310) bm!744311))

(declare-fun m!8376840 () Bool)

(assert (=> bm!744312 m!8376840))

(declare-fun m!8376842 () Bool)

(assert (=> bm!744311 m!8376842))

(declare-fun m!8376844 () Bool)

(assert (=> b!8013471 m!8376844))

(assert (=> d!2388962 d!2389050))

(assert (=> d!2388962 d!2388918))

(declare-fun d!2389052 () Bool)

(assert (=> d!2389052 (isPrefix!6735 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)) totalInput!1349)))

(assert (=> d!2389052 true))

(declare-fun _$65!2009 () Unit!170838)

(assert (=> d!2389052 (= (choose!60380 testedP!353 totalInput!1349) _$65!2009)))

(declare-fun bs!1970943 () Bool)

(assert (= bs!1970943 d!2389052))

(assert (=> bs!1970943 m!8376484))

(assert (=> bs!1970943 m!8376484))

(assert (=> bs!1970943 m!8376556))

(assert (=> bs!1970943 m!8376558))

(assert (=> bs!1970943 m!8376558))

(assert (=> bs!1970943 m!8376560))

(assert (=> d!2388928 d!2389052))

(declare-fun b!8013474 () Bool)

(declare-fun res!3168681 () Bool)

(declare-fun e!4720548 () Bool)

(assert (=> b!8013474 (=> (not res!3168681) (not e!4720548))))

(assert (=> b!8013474 (= res!3168681 (= (head!16357 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788))) (head!16357 totalInput!1349)))))

(declare-fun b!8013475 () Bool)

(assert (=> b!8013475 (= e!4720548 (isPrefix!6735 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788))) (tail!15880 totalInput!1349)))))

(declare-fun b!8013473 () Bool)

(declare-fun e!4720547 () Bool)

(assert (=> b!8013473 (= e!4720547 e!4720548)))

(declare-fun res!3168682 () Bool)

(assert (=> b!8013473 (=> (not res!3168682) (not e!4720548))))

(assert (=> b!8013473 (= res!3168682 (not ((_ is Nil!74788) totalInput!1349)))))

(declare-fun d!2389054 () Bool)

(declare-fun e!4720546 () Bool)

(assert (=> d!2389054 e!4720546))

(declare-fun res!3168684 () Bool)

(assert (=> d!2389054 (=> res!3168684 e!4720546)))

(declare-fun lt!2717665 () Bool)

(assert (=> d!2389054 (= res!3168684 (not lt!2717665))))

(assert (=> d!2389054 (= lt!2717665 e!4720547)))

(declare-fun res!3168683 () Bool)

(assert (=> d!2389054 (=> res!3168683 e!4720547)))

(assert (=> d!2389054 (= res!3168683 ((_ is Nil!74788) (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788))))))

(assert (=> d!2389054 (= (isPrefix!6735 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)) totalInput!1349) lt!2717665)))

(declare-fun b!8013476 () Bool)

(assert (=> b!8013476 (= e!4720546 (>= (size!43585 totalInput!1349) (size!43585 (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)))))))

(assert (= (and d!2389054 (not res!3168683)) b!8013473))

(assert (= (and b!8013473 res!3168682) b!8013474))

(assert (= (and b!8013474 res!3168681) b!8013475))

(assert (= (and d!2389054 (not res!3168684)) b!8013476))

(assert (=> b!8013474 m!8376558))

(declare-fun m!8376846 () Bool)

(assert (=> b!8013474 m!8376846))

(assert (=> b!8013474 m!8376500))

(assert (=> b!8013475 m!8376558))

(declare-fun m!8376848 () Bool)

(assert (=> b!8013475 m!8376848))

(assert (=> b!8013475 m!8376492))

(assert (=> b!8013475 m!8376848))

(assert (=> b!8013475 m!8376492))

(declare-fun m!8376850 () Bool)

(assert (=> b!8013475 m!8376850))

(assert (=> b!8013476 m!8376466))

(assert (=> b!8013476 m!8376558))

(declare-fun m!8376852 () Bool)

(assert (=> b!8013476 m!8376852))

(assert (=> d!2388928 d!2389054))

(assert (=> d!2388928 d!2388902))

(declare-fun d!2389056 () Bool)

(assert (=> d!2389056 (= (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) (h!81236 (getSuffix!3930 totalInput!1349 testedP!353)))))

(assert (=> d!2388928 d!2389056))

(assert (=> d!2388928 d!2388906))

(declare-fun b!8013477 () Bool)

(declare-fun e!4720549 () List!74912)

(assert (=> b!8013477 (= e!4720549 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788))))

(declare-fun d!2389058 () Bool)

(declare-fun e!4720550 () Bool)

(assert (=> d!2389058 e!4720550))

(declare-fun res!3168686 () Bool)

(assert (=> d!2389058 (=> (not res!3168686) (not e!4720550))))

(declare-fun lt!2717666 () List!74912)

(assert (=> d!2389058 (= res!3168686 (= (content!15915 lt!2717666) ((_ map or) (content!15915 testedP!353) (content!15915 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)))))))

(assert (=> d!2389058 (= lt!2717666 e!4720549)))

(declare-fun c!1470769 () Bool)

(assert (=> d!2389058 (= c!1470769 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2389058 (= (++!18509 testedP!353 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)) lt!2717666)))

(declare-fun b!8013479 () Bool)

(declare-fun res!3168685 () Bool)

(assert (=> b!8013479 (=> (not res!3168685) (not e!4720550))))

(assert (=> b!8013479 (= res!3168685 (= (size!43585 lt!2717666) (+ (size!43585 testedP!353) (size!43585 (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788)))))))

(declare-fun b!8013478 () Bool)

(assert (=> b!8013478 (= e!4720549 (Cons!74788 (h!81236 testedP!353) (++!18509 (t!390655 testedP!353) (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788))))))

(declare-fun b!8013480 () Bool)

(assert (=> b!8013480 (= e!4720550 (or (not (= (Cons!74788 (head!16357 (getSuffix!3930 totalInput!1349 testedP!353)) Nil!74788) Nil!74788)) (= lt!2717666 testedP!353)))))

(assert (= (and d!2389058 c!1470769) b!8013477))

(assert (= (and d!2389058 (not c!1470769)) b!8013478))

(assert (= (and d!2389058 res!3168686) b!8013479))

(assert (= (and b!8013479 res!3168685) b!8013480))

(declare-fun m!8376854 () Bool)

(assert (=> d!2389058 m!8376854))

(assert (=> d!2389058 m!8376566))

(declare-fun m!8376856 () Bool)

(assert (=> d!2389058 m!8376856))

(declare-fun m!8376858 () Bool)

(assert (=> b!8013479 m!8376858))

(assert (=> b!8013479 m!8376468))

(declare-fun m!8376860 () Bool)

(assert (=> b!8013479 m!8376860))

(declare-fun m!8376862 () Bool)

(assert (=> b!8013478 m!8376862))

(assert (=> d!2388928 d!2389058))

(declare-fun c!1470770 () Bool)

(declare-fun call!744319 () Regex!21683)

(declare-fun bm!744313 () Bool)

(assert (=> bm!744313 (= call!744319 (derivativeStep!6634 (ite c!1470770 (regOne!43879 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))) (regOne!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))) lt!2717557))))

(declare-fun call!744321 () Regex!21683)

(declare-fun e!4720551 () Regex!21683)

(declare-fun b!8013481 () Bool)

(assert (=> b!8013481 (= e!4720551 (Union!21683 (Concat!30682 call!744319 (regTwo!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))) call!744321))))

(declare-fun d!2389060 () Bool)

(declare-fun lt!2717667 () Regex!21683)

(assert (=> d!2389060 (validRegex!11987 lt!2717667)))

(declare-fun e!4720553 () Regex!21683)

(assert (=> d!2389060 (= lt!2717667 e!4720553)))

(declare-fun c!1470774 () Bool)

(assert (=> d!2389060 (= c!1470774 (or ((_ is EmptyExpr!21683) (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))) ((_ is EmptyLang!21683) (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))))))

(assert (=> d!2389060 (validRegex!11987 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))))

(assert (=> d!2389060 (= (derivativeStep!6634 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)) lt!2717557) lt!2717667)))

(declare-fun c!1470772 () Bool)

(declare-fun call!744318 () Regex!21683)

(declare-fun bm!744314 () Bool)

(declare-fun c!1470773 () Bool)

(assert (=> bm!744314 (= call!744318 (derivativeStep!6634 (ite c!1470770 (regTwo!43879 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))) (ite c!1470772 (reg!22012 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))) (ite c!1470773 (regTwo!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))) (regOne!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))))) lt!2717557))))

(declare-fun b!8013482 () Bool)

(assert (=> b!8013482 (= e!4720551 (Union!21683 (Concat!30682 call!744321 (regTwo!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))) EmptyLang!21683))))

(declare-fun b!8013483 () Bool)

(declare-fun e!4720554 () Regex!21683)

(assert (=> b!8013483 (= e!4720554 (Union!21683 call!744319 call!744318))))

(declare-fun bm!744315 () Bool)

(declare-fun call!744320 () Regex!21683)

(assert (=> bm!744315 (= call!744320 call!744318)))

(declare-fun e!4720552 () Regex!21683)

(declare-fun b!8013484 () Bool)

(assert (=> b!8013484 (= e!4720552 (Concat!30682 call!744320 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun b!8013485 () Bool)

(declare-fun e!4720555 () Regex!21683)

(assert (=> b!8013485 (= e!4720553 e!4720555)))

(declare-fun c!1470771 () Bool)

(assert (=> b!8013485 (= c!1470771 ((_ is ElementMatch!21683) (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun b!8013486 () Bool)

(assert (=> b!8013486 (= e!4720555 (ite (= lt!2717557 (c!1470678 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))) EmptyExpr!21683 EmptyLang!21683))))

(declare-fun b!8013487 () Bool)

(assert (=> b!8013487 (= e!4720554 e!4720552)))

(assert (=> b!8013487 (= c!1470772 ((_ is Star!21683) (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun b!8013488 () Bool)

(assert (=> b!8013488 (= c!1470773 (nullable!9725 (regOne!43878 (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422)))))))

(assert (=> b!8013488 (= e!4720552 e!4720551)))

(declare-fun bm!744316 () Bool)

(assert (=> bm!744316 (= call!744321 call!744320)))

(declare-fun b!8013489 () Bool)

(assert (=> b!8013489 (= e!4720553 EmptyLang!21683)))

(declare-fun b!8013490 () Bool)

(assert (=> b!8013490 (= c!1470770 ((_ is Union!21683) (ite c!1470723 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(assert (=> b!8013490 (= e!4720555 e!4720554)))

(assert (= (and d!2389060 c!1470774) b!8013489))

(assert (= (and d!2389060 (not c!1470774)) b!8013485))

(assert (= (and b!8013485 c!1470771) b!8013486))

(assert (= (and b!8013485 (not c!1470771)) b!8013490))

(assert (= (and b!8013490 c!1470770) b!8013483))

(assert (= (and b!8013490 (not c!1470770)) b!8013487))

(assert (= (and b!8013487 c!1470772) b!8013484))

(assert (= (and b!8013487 (not c!1470772)) b!8013488))

(assert (= (and b!8013488 c!1470773) b!8013481))

(assert (= (and b!8013488 (not c!1470773)) b!8013482))

(assert (= (or b!8013481 b!8013482) bm!744316))

(assert (= (or b!8013484 bm!744316) bm!744315))

(assert (= (or b!8013483 bm!744315) bm!744314))

(assert (= (or b!8013483 b!8013481) bm!744313))

(declare-fun m!8376864 () Bool)

(assert (=> bm!744313 m!8376864))

(declare-fun m!8376866 () Bool)

(assert (=> d!2389060 m!8376866))

(declare-fun m!8376868 () Bool)

(assert (=> d!2389060 m!8376868))

(declare-fun m!8376870 () Bool)

(assert (=> bm!744314 m!8376870))

(declare-fun m!8376872 () Bool)

(assert (=> b!8013488 m!8376872))

(assert (=> bm!744288 d!2389060))

(declare-fun d!2389062 () Bool)

(assert (=> d!2389062 (= (nullable!9725 (reg!22012 r!15422)) (nullableFct!3842 (reg!22012 r!15422)))))

(declare-fun bs!1970944 () Bool)

(assert (= bs!1970944 d!2389062))

(declare-fun m!8376874 () Bool)

(assert (=> bs!1970944 m!8376874))

(assert (=> b!8013150 d!2389062))

(declare-fun d!2389064 () Bool)

(declare-fun c!1470775 () Bool)

(assert (=> d!2389064 (= c!1470775 ((_ is Nil!74788) lt!2717601))))

(declare-fun e!4720556 () (InoxSet C!43704))

(assert (=> d!2389064 (= (content!15915 lt!2717601) e!4720556)))

(declare-fun b!8013491 () Bool)

(assert (=> b!8013491 (= e!4720556 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013492 () Bool)

(assert (=> b!8013492 (= e!4720556 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717601) true) (content!15915 (t!390655 lt!2717601))))))

(assert (= (and d!2389064 c!1470775) b!8013491))

(assert (= (and d!2389064 (not c!1470775)) b!8013492))

(declare-fun m!8376876 () Bool)

(assert (=> b!8013492 m!8376876))

(declare-fun m!8376878 () Bool)

(assert (=> b!8013492 m!8376878))

(assert (=> d!2388934 d!2389064))

(assert (=> d!2388934 d!2389004))

(declare-fun d!2389066 () Bool)

(declare-fun c!1470776 () Bool)

(assert (=> d!2389066 (= c!1470776 ((_ is Nil!74788) (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))

(declare-fun e!4720557 () (InoxSet C!43704))

(assert (=> d!2389066 (= (content!15915 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) e!4720557)))

(declare-fun b!8013493 () Bool)

(assert (=> b!8013493 (= e!4720557 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013494 () Bool)

(assert (=> b!8013494 (= e!4720557 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) true) (content!15915 (t!390655 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (= (and d!2389066 c!1470776) b!8013493))

(assert (= (and d!2389066 (not c!1470776)) b!8013494))

(declare-fun m!8376880 () Bool)

(assert (=> b!8013494 m!8376880))

(declare-fun m!8376882 () Bool)

(assert (=> b!8013494 m!8376882))

(assert (=> d!2388934 d!2389066))

(declare-fun bm!744317 () Bool)

(declare-fun call!744323 () Regex!21683)

(declare-fun c!1470777 () Bool)

(assert (=> bm!744317 (= call!744323 (derivativeStep!6634 (ite c!1470777 (regOne!43879 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))) (regOne!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))) lt!2717557))))

(declare-fun b!8013495 () Bool)

(declare-fun e!4720558 () Regex!21683)

(declare-fun call!744325 () Regex!21683)

(assert (=> b!8013495 (= e!4720558 (Union!21683 (Concat!30682 call!744323 (regTwo!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))) call!744325))))

(declare-fun d!2389068 () Bool)

(declare-fun lt!2717668 () Regex!21683)

(assert (=> d!2389068 (validRegex!11987 lt!2717668)))

(declare-fun e!4720560 () Regex!21683)

(assert (=> d!2389068 (= lt!2717668 e!4720560)))

(declare-fun c!1470781 () Bool)

(assert (=> d!2389068 (= c!1470781 (or ((_ is EmptyExpr!21683) (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))) ((_ is EmptyLang!21683) (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))))))

(assert (=> d!2389068 (validRegex!11987 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))))

(assert (=> d!2389068 (= (derivativeStep!6634 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))) lt!2717557) lt!2717668)))

(declare-fun c!1470780 () Bool)

(declare-fun c!1470779 () Bool)

(declare-fun call!744322 () Regex!21683)

(declare-fun bm!744318 () Bool)

(assert (=> bm!744318 (= call!744322 (derivativeStep!6634 (ite c!1470777 (regTwo!43879 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))) (ite c!1470779 (reg!22012 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))) (ite c!1470780 (regTwo!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))) (regOne!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))))) lt!2717557))))

(declare-fun b!8013496 () Bool)

(assert (=> b!8013496 (= e!4720558 (Union!21683 (Concat!30682 call!744325 (regTwo!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))) EmptyLang!21683))))

(declare-fun b!8013497 () Bool)

(declare-fun e!4720561 () Regex!21683)

(assert (=> b!8013497 (= e!4720561 (Union!21683 call!744323 call!744322))))

(declare-fun bm!744319 () Bool)

(declare-fun call!744324 () Regex!21683)

(assert (=> bm!744319 (= call!744324 call!744322)))

(declare-fun e!4720559 () Regex!21683)

(declare-fun b!8013498 () Bool)

(assert (=> b!8013498 (= e!4720559 (Concat!30682 call!744324 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))))))

(declare-fun b!8013499 () Bool)

(declare-fun e!4720562 () Regex!21683)

(assert (=> b!8013499 (= e!4720560 e!4720562)))

(declare-fun c!1470778 () Bool)

(assert (=> b!8013499 (= c!1470778 ((_ is ElementMatch!21683) (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))))))

(declare-fun b!8013500 () Bool)

(assert (=> b!8013500 (= e!4720562 (ite (= lt!2717557 (c!1470678 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))) EmptyExpr!21683 EmptyLang!21683))))

(declare-fun b!8013501 () Bool)

(assert (=> b!8013501 (= e!4720561 e!4720559)))

(assert (=> b!8013501 (= c!1470779 ((_ is Star!21683) (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))))))

(declare-fun b!8013502 () Bool)

(assert (=> b!8013502 (= c!1470780 (nullable!9725 (regOne!43878 (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422)))))))))

(assert (=> b!8013502 (= e!4720559 e!4720558)))

(declare-fun bm!744320 () Bool)

(assert (=> bm!744320 (= call!744325 call!744324)))

(declare-fun b!8013503 () Bool)

(assert (=> b!8013503 (= e!4720560 EmptyLang!21683)))

(declare-fun b!8013504 () Bool)

(assert (=> b!8013504 (= c!1470777 ((_ is Union!21683) (ite c!1470723 (regTwo!43879 r!15422) (ite c!1470725 (reg!22012 r!15422) (ite c!1470726 (regTwo!43878 r!15422) (regOne!43878 r!15422))))))))

(assert (=> b!8013504 (= e!4720562 e!4720561)))

(assert (= (and d!2389068 c!1470781) b!8013503))

(assert (= (and d!2389068 (not c!1470781)) b!8013499))

(assert (= (and b!8013499 c!1470778) b!8013500))

(assert (= (and b!8013499 (not c!1470778)) b!8013504))

(assert (= (and b!8013504 c!1470777) b!8013497))

(assert (= (and b!8013504 (not c!1470777)) b!8013501))

(assert (= (and b!8013501 c!1470779) b!8013498))

(assert (= (and b!8013501 (not c!1470779)) b!8013502))

(assert (= (and b!8013502 c!1470780) b!8013495))

(assert (= (and b!8013502 (not c!1470780)) b!8013496))

(assert (= (or b!8013495 b!8013496) bm!744320))

(assert (= (or b!8013498 bm!744320) bm!744319))

(assert (= (or b!8013497 bm!744319) bm!744318))

(assert (= (or b!8013497 b!8013495) bm!744317))

(declare-fun m!8376884 () Bool)

(assert (=> bm!744317 m!8376884))

(declare-fun m!8376886 () Bool)

(assert (=> d!2389068 m!8376886))

(declare-fun m!8376888 () Bool)

(assert (=> d!2389068 m!8376888))

(declare-fun m!8376890 () Bool)

(assert (=> bm!744318 m!8376890))

(declare-fun m!8376892 () Bool)

(assert (=> b!8013502 m!8376892))

(assert (=> bm!744289 d!2389068))

(declare-fun d!2389070 () Bool)

(declare-fun c!1470782 () Bool)

(assert (=> d!2389070 (= c!1470782 ((_ is Nil!74788) lt!2717634))))

(declare-fun e!4720563 () (InoxSet C!43704))

(assert (=> d!2389070 (= (content!15915 lt!2717634) e!4720563)))

(declare-fun b!8013505 () Bool)

(assert (=> b!8013505 (= e!4720563 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013506 () Bool)

(assert (=> b!8013506 (= e!4720563 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717634) true) (content!15915 (t!390655 lt!2717634))))))

(assert (= (and d!2389070 c!1470782) b!8013505))

(assert (= (and d!2389070 (not c!1470782)) b!8013506))

(declare-fun m!8376894 () Bool)

(assert (=> b!8013506 m!8376894))

(declare-fun m!8376896 () Bool)

(assert (=> b!8013506 m!8376896))

(assert (=> d!2388976 d!2389070))

(assert (=> d!2388976 d!2389004))

(declare-fun d!2389072 () Bool)

(declare-fun c!1470783 () Bool)

(assert (=> d!2389072 (= c!1470783 ((_ is Nil!74788) testedSuffix!271))))

(declare-fun e!4720564 () (InoxSet C!43704))

(assert (=> d!2389072 (= (content!15915 testedSuffix!271) e!4720564)))

(declare-fun b!8013507 () Bool)

(assert (=> b!8013507 (= e!4720564 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013508 () Bool)

(assert (=> b!8013508 (= e!4720564 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 testedSuffix!271) true) (content!15915 (t!390655 testedSuffix!271))))))

(assert (= (and d!2389072 c!1470783) b!8013507))

(assert (= (and d!2389072 (not c!1470783)) b!8013508))

(declare-fun m!8376898 () Bool)

(assert (=> b!8013508 m!8376898))

(declare-fun m!8376900 () Bool)

(assert (=> b!8013508 m!8376900))

(assert (=> d!2388976 d!2389072))

(declare-fun d!2389074 () Bool)

(declare-fun lt!2717669 () List!74912)

(assert (=> d!2389074 (= (++!18509 (t!390655 testedP!353) lt!2717669) (tail!15880 totalInput!1349))))

(declare-fun e!4720565 () List!74912)

(assert (=> d!2389074 (= lt!2717669 e!4720565)))

(declare-fun c!1470784 () Bool)

(assert (=> d!2389074 (= c!1470784 ((_ is Cons!74788) (t!390655 testedP!353)))))

(assert (=> d!2389074 (>= (size!43585 (tail!15880 totalInput!1349)) (size!43585 (t!390655 testedP!353)))))

(assert (=> d!2389074 (= (getSuffix!3930 (tail!15880 totalInput!1349) (t!390655 testedP!353)) lt!2717669)))

(declare-fun b!8013509 () Bool)

(assert (=> b!8013509 (= e!4720565 (getSuffix!3930 (tail!15880 (tail!15880 totalInput!1349)) (t!390655 (t!390655 testedP!353))))))

(declare-fun b!8013510 () Bool)

(assert (=> b!8013510 (= e!4720565 (tail!15880 totalInput!1349))))

(assert (= (and d!2389074 c!1470784) b!8013509))

(assert (= (and d!2389074 (not c!1470784)) b!8013510))

(declare-fun m!8376902 () Bool)

(assert (=> d!2389074 m!8376902))

(assert (=> d!2389074 m!8376492))

(assert (=> d!2389074 m!8376818))

(assert (=> d!2389074 m!8376496))

(assert (=> b!8013509 m!8376492))

(assert (=> b!8013509 m!8376814))

(assert (=> b!8013509 m!8376814))

(declare-fun m!8376904 () Bool)

(assert (=> b!8013509 m!8376904))

(assert (=> b!8013081 d!2389074))

(assert (=> b!8013081 d!2389040))

(declare-fun d!2389076 () Bool)

(declare-fun c!1470785 () Bool)

(assert (=> d!2389076 (= c!1470785 ((_ is Nil!74788) lt!2717609))))

(declare-fun e!4720566 () (InoxSet C!43704))

(assert (=> d!2389076 (= (content!15915 lt!2717609) e!4720566)))

(declare-fun b!8013511 () Bool)

(assert (=> b!8013511 (= e!4720566 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013512 () Bool)

(assert (=> b!8013512 (= e!4720566 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717609) true) (content!15915 (t!390655 lt!2717609))))))

(assert (= (and d!2389076 c!1470785) b!8013511))

(assert (= (and d!2389076 (not c!1470785)) b!8013512))

(declare-fun m!8376906 () Bool)

(assert (=> b!8013512 m!8376906))

(declare-fun m!8376908 () Bool)

(assert (=> b!8013512 m!8376908))

(assert (=> d!2388952 d!2389076))

(declare-fun d!2389078 () Bool)

(declare-fun c!1470786 () Bool)

(assert (=> d!2389078 (= c!1470786 ((_ is Nil!74788) lt!2717548))))

(declare-fun e!4720567 () (InoxSet C!43704))

(assert (=> d!2389078 (= (content!15915 lt!2717548) e!4720567)))

(declare-fun b!8013513 () Bool)

(assert (=> b!8013513 (= e!4720567 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013514 () Bool)

(assert (=> b!8013514 (= e!4720567 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717548) true) (content!15915 (t!390655 lt!2717548))))))

(assert (= (and d!2389078 c!1470786) b!8013513))

(assert (= (and d!2389078 (not c!1470786)) b!8013514))

(declare-fun m!8376910 () Bool)

(assert (=> b!8013514 m!8376910))

(assert (=> b!8013514 m!8376802))

(assert (=> d!2388952 d!2389078))

(declare-fun d!2389080 () Bool)

(declare-fun c!1470787 () Bool)

(assert (=> d!2389080 (= c!1470787 ((_ is Nil!74788) lt!2717546))))

(declare-fun e!4720568 () (InoxSet C!43704))

(assert (=> d!2389080 (= (content!15915 lt!2717546) e!4720568)))

(declare-fun b!8013515 () Bool)

(assert (=> b!8013515 (= e!4720568 ((as const (Array C!43704 Bool)) false))))

(declare-fun b!8013516 () Bool)

(assert (=> b!8013516 (= e!4720568 ((_ map or) (store ((as const (Array C!43704 Bool)) false) (h!81236 lt!2717546) true) (content!15915 (t!390655 lt!2717546))))))

(assert (= (and d!2389080 c!1470787) b!8013515))

(assert (= (and d!2389080 (not c!1470787)) b!8013516))

(declare-fun m!8376912 () Bool)

(assert (=> b!8013516 m!8376912))

(declare-fun m!8376914 () Bool)

(assert (=> b!8013516 m!8376914))

(assert (=> d!2388952 d!2389080))

(declare-fun b!8013517 () Bool)

(declare-fun e!4720571 () Bool)

(declare-fun call!744327 () Bool)

(assert (=> b!8013517 (= e!4720571 call!744327)))

(declare-fun b!8013518 () Bool)

(declare-fun res!3168691 () Bool)

(declare-fun e!4720570 () Bool)

(assert (=> b!8013518 (=> res!3168691 e!4720570)))

(assert (=> b!8013518 (= res!3168691 (not ((_ is Concat!30682) (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422)))))))

(declare-fun e!4720572 () Bool)

(assert (=> b!8013518 (= e!4720572 e!4720570)))

(declare-fun b!8013519 () Bool)

(declare-fun e!4720569 () Bool)

(assert (=> b!8013519 (= e!4720569 e!4720572)))

(declare-fun c!1470788 () Bool)

(assert (=> b!8013519 (= c!1470788 ((_ is Union!21683) (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun bm!744321 () Bool)

(declare-fun call!744326 () Bool)

(assert (=> bm!744321 (= call!744326 call!744327)))

(declare-fun b!8013520 () Bool)

(declare-fun e!4720573 () Bool)

(assert (=> b!8013520 (= e!4720573 call!744326)))

(declare-fun b!8013521 () Bool)

(declare-fun res!3168689 () Bool)

(declare-fun e!4720575 () Bool)

(assert (=> b!8013521 (=> (not res!3168689) (not e!4720575))))

(declare-fun call!744328 () Bool)

(assert (=> b!8013521 (= res!3168689 call!744328)))

(assert (=> b!8013521 (= e!4720572 e!4720575)))

(declare-fun b!8013522 () Bool)

(assert (=> b!8013522 (= e!4720570 e!4720573)))

(declare-fun res!3168690 () Bool)

(assert (=> b!8013522 (=> (not res!3168690) (not e!4720573))))

(assert (=> b!8013522 (= res!3168690 call!744328)))

(declare-fun bm!744323 () Bool)

(assert (=> bm!744323 (= call!744328 (validRegex!11987 (ite c!1470788 (regOne!43879 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))) (regOne!43878 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))))

(declare-fun b!8013523 () Bool)

(declare-fun e!4720574 () Bool)

(assert (=> b!8013523 (= e!4720574 e!4720569)))

(declare-fun c!1470789 () Bool)

(assert (=> b!8013523 (= c!1470789 ((_ is Star!21683) (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun bm!744322 () Bool)

(assert (=> bm!744322 (= call!744327 (validRegex!11987 (ite c!1470789 (reg!22012 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))) (ite c!1470788 (regTwo!43879 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))) (regTwo!43878 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422)))))))))

(declare-fun d!2389082 () Bool)

(declare-fun res!3168688 () Bool)

(assert (=> d!2389082 (=> res!3168688 e!4720574)))

(assert (=> d!2389082 (= res!3168688 ((_ is ElementMatch!21683) (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))

(assert (=> d!2389082 (= (validRegex!11987 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))) e!4720574)))

(declare-fun b!8013524 () Bool)

(assert (=> b!8013524 (= e!4720569 e!4720571)))

(declare-fun res!3168687 () Bool)

(assert (=> b!8013524 (= res!3168687 (not (nullable!9725 (reg!22012 (ite c!1470689 (regOne!43879 r!15422) (regOne!43878 r!15422))))))))

(assert (=> b!8013524 (=> (not res!3168687) (not e!4720571))))

(declare-fun b!8013525 () Bool)

(assert (=> b!8013525 (= e!4720575 call!744326)))

(assert (= (and d!2389082 (not res!3168688)) b!8013523))

(assert (= (and b!8013523 c!1470789) b!8013524))

(assert (= (and b!8013523 (not c!1470789)) b!8013519))

(assert (= (and b!8013524 res!3168687) b!8013517))

(assert (= (and b!8013519 c!1470788) b!8013521))

(assert (= (and b!8013519 (not c!1470788)) b!8013518))

(assert (= (and b!8013521 res!3168689) b!8013525))

(assert (= (and b!8013518 (not res!3168691)) b!8013522))

(assert (= (and b!8013522 res!3168690) b!8013520))

(assert (= (or b!8013525 b!8013520) bm!744321))

(assert (= (or b!8013521 b!8013522) bm!744323))

(assert (= (or b!8013517 bm!744321) bm!744322))

(declare-fun m!8376916 () Bool)

(assert (=> bm!744323 m!8376916))

(declare-fun m!8376918 () Bool)

(assert (=> bm!744322 m!8376918))

(declare-fun m!8376920 () Bool)

(assert (=> b!8013524 m!8376920))

(assert (=> bm!744270 d!2389082))

(declare-fun d!2389084 () Bool)

(declare-fun lt!2717670 () Int)

(assert (=> d!2389084 (>= lt!2717670 0)))

(declare-fun e!4720576 () Int)

(assert (=> d!2389084 (= lt!2717670 e!4720576)))

(declare-fun c!1470790 () Bool)

(assert (=> d!2389084 (= c!1470790 ((_ is Nil!74788) (t!390655 lt!2717548)))))

(assert (=> d!2389084 (= (size!43585 (t!390655 lt!2717548)) lt!2717670)))

(declare-fun b!8013526 () Bool)

(assert (=> b!8013526 (= e!4720576 0)))

(declare-fun b!8013527 () Bool)

(assert (=> b!8013527 (= e!4720576 (+ 1 (size!43585 (t!390655 (t!390655 lt!2717548)))))))

(assert (= (and d!2389084 c!1470790) b!8013526))

(assert (= (and d!2389084 (not c!1470790)) b!8013527))

(declare-fun m!8376922 () Bool)

(assert (=> b!8013527 m!8376922))

(assert (=> b!8013224 d!2389084))

(declare-fun b!8013529 () Bool)

(declare-fun res!3168692 () Bool)

(declare-fun e!4720579 () Bool)

(assert (=> b!8013529 (=> (not res!3168692) (not e!4720579))))

(assert (=> b!8013529 (= res!3168692 (= (head!16357 testedP!353) (head!16357 (++!18509 testedP!353 testedSuffix!271))))))

(declare-fun b!8013530 () Bool)

(assert (=> b!8013530 (= e!4720579 (isPrefix!6735 (tail!15880 testedP!353) (tail!15880 (++!18509 testedP!353 testedSuffix!271))))))

(declare-fun b!8013528 () Bool)

(declare-fun e!4720578 () Bool)

(assert (=> b!8013528 (= e!4720578 e!4720579)))

(declare-fun res!3168693 () Bool)

(assert (=> b!8013528 (=> (not res!3168693) (not e!4720579))))

(assert (=> b!8013528 (= res!3168693 (not ((_ is Nil!74788) (++!18509 testedP!353 testedSuffix!271))))))

(declare-fun d!2389086 () Bool)

(declare-fun e!4720577 () Bool)

(assert (=> d!2389086 e!4720577))

(declare-fun res!3168695 () Bool)

(assert (=> d!2389086 (=> res!3168695 e!4720577)))

(declare-fun lt!2717671 () Bool)

(assert (=> d!2389086 (= res!3168695 (not lt!2717671))))

(assert (=> d!2389086 (= lt!2717671 e!4720578)))

(declare-fun res!3168694 () Bool)

(assert (=> d!2389086 (=> res!3168694 e!4720578)))

(assert (=> d!2389086 (= res!3168694 ((_ is Nil!74788) testedP!353))))

(assert (=> d!2389086 (= (isPrefix!6735 testedP!353 (++!18509 testedP!353 testedSuffix!271)) lt!2717671)))

(declare-fun b!8013531 () Bool)

(assert (=> b!8013531 (= e!4720577 (>= (size!43585 (++!18509 testedP!353 testedSuffix!271)) (size!43585 testedP!353)))))

(assert (= (and d!2389086 (not res!3168694)) b!8013528))

(assert (= (and b!8013528 res!3168693) b!8013529))

(assert (= (and b!8013529 res!3168692) b!8013530))

(assert (= (and d!2389086 (not res!3168695)) b!8013531))

(assert (=> b!8013529 m!8376498))

(assert (=> b!8013529 m!8376470))

(declare-fun m!8376924 () Bool)

(assert (=> b!8013529 m!8376924))

(assert (=> b!8013530 m!8376502))

(assert (=> b!8013530 m!8376470))

(declare-fun m!8376926 () Bool)

(assert (=> b!8013530 m!8376926))

(assert (=> b!8013530 m!8376502))

(assert (=> b!8013530 m!8376926))

(declare-fun m!8376928 () Bool)

(assert (=> b!8013530 m!8376928))

(assert (=> b!8013531 m!8376470))

(declare-fun m!8376930 () Bool)

(assert (=> b!8013531 m!8376930))

(assert (=> b!8013531 m!8376468))

(assert (=> d!2388910 d!2389086))

(assert (=> d!2388910 d!2388976))

(declare-fun d!2389088 () Bool)

(assert (=> d!2389088 (isPrefix!6735 testedP!353 (++!18509 testedP!353 testedSuffix!271))))

(assert (=> d!2389088 true))

(declare-fun _$46!2160 () Unit!170838)

(assert (=> d!2389088 (= (choose!60375 testedP!353 testedSuffix!271) _$46!2160)))

(declare-fun bs!1970945 () Bool)

(assert (= bs!1970945 d!2389088))

(assert (=> bs!1970945 m!8376470))

(assert (=> bs!1970945 m!8376470))

(assert (=> bs!1970945 m!8376514))

(assert (=> d!2388910 d!2389088))

(declare-fun b!8013532 () Bool)

(declare-fun e!4720580 () List!74912)

(assert (=> b!8013532 (= e!4720580 (Cons!74788 lt!2717557 Nil!74788))))

(declare-fun d!2389090 () Bool)

(declare-fun e!4720581 () Bool)

(assert (=> d!2389090 e!4720581))

(declare-fun res!3168697 () Bool)

(assert (=> d!2389090 (=> (not res!3168697) (not e!4720581))))

(declare-fun lt!2717672 () List!74912)

(assert (=> d!2389090 (= res!3168697 (= (content!15915 lt!2717672) ((_ map or) (content!15915 (t!390655 testedP!353)) (content!15915 (Cons!74788 lt!2717557 Nil!74788)))))))

(assert (=> d!2389090 (= lt!2717672 e!4720580)))

(declare-fun c!1470791 () Bool)

(assert (=> d!2389090 (= c!1470791 ((_ is Nil!74788) (t!390655 testedP!353)))))

(assert (=> d!2389090 (= (++!18509 (t!390655 testedP!353) (Cons!74788 lt!2717557 Nil!74788)) lt!2717672)))

(declare-fun b!8013534 () Bool)

(declare-fun res!3168696 () Bool)

(assert (=> b!8013534 (=> (not res!3168696) (not e!4720581))))

(assert (=> b!8013534 (= res!3168696 (= (size!43585 lt!2717672) (+ (size!43585 (t!390655 testedP!353)) (size!43585 (Cons!74788 lt!2717557 Nil!74788)))))))

(declare-fun b!8013533 () Bool)

(assert (=> b!8013533 (= e!4720580 (Cons!74788 (h!81236 (t!390655 testedP!353)) (++!18509 (t!390655 (t!390655 testedP!353)) (Cons!74788 lt!2717557 Nil!74788))))))

(declare-fun b!8013535 () Bool)

(assert (=> b!8013535 (= e!4720581 (or (not (= (Cons!74788 lt!2717557 Nil!74788) Nil!74788)) (= lt!2717672 (t!390655 testedP!353))))))

(assert (= (and d!2389090 c!1470791) b!8013532))

(assert (= (and d!2389090 (not c!1470791)) b!8013533))

(assert (= (and d!2389090 res!3168697) b!8013534))

(assert (= (and b!8013534 res!3168696) b!8013535))

(declare-fun m!8376932 () Bool)

(assert (=> d!2389090 m!8376932))

(assert (=> d!2389090 m!8376744))

(assert (=> d!2389090 m!8376598))

(declare-fun m!8376934 () Bool)

(assert (=> b!8013534 m!8376934))

(assert (=> b!8013534 m!8376496))

(assert (=> b!8013534 m!8376602))

(declare-fun m!8376936 () Bool)

(assert (=> b!8013533 m!8376936))

(assert (=> b!8013206 d!2389090))

(declare-fun b!8013536 () Bool)

(declare-fun e!4720584 () Bool)

(declare-fun call!744330 () Bool)

(assert (=> b!8013536 (= e!4720584 call!744330)))

(declare-fun b!8013537 () Bool)

(declare-fun res!3168702 () Bool)

(declare-fun e!4720583 () Bool)

(assert (=> b!8013537 (=> res!3168702 e!4720583)))

(assert (=> b!8013537 (= res!3168702 (not ((_ is Concat!30682) (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422))))))))

(declare-fun e!4720585 () Bool)

(assert (=> b!8013537 (= e!4720585 e!4720583)))

(declare-fun b!8013538 () Bool)

(declare-fun e!4720582 () Bool)

(assert (=> b!8013538 (= e!4720582 e!4720585)))

(declare-fun c!1470792 () Bool)

(assert (=> b!8013538 (= c!1470792 ((_ is Union!21683) (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))

(declare-fun bm!744324 () Bool)

(declare-fun call!744329 () Bool)

(assert (=> bm!744324 (= call!744329 call!744330)))

(declare-fun b!8013539 () Bool)

(declare-fun e!4720586 () Bool)

(assert (=> b!8013539 (= e!4720586 call!744329)))

(declare-fun b!8013540 () Bool)

(declare-fun res!3168700 () Bool)

(declare-fun e!4720588 () Bool)

(assert (=> b!8013540 (=> (not res!3168700) (not e!4720588))))

(declare-fun call!744331 () Bool)

(assert (=> b!8013540 (= res!3168700 call!744331)))

(assert (=> b!8013540 (= e!4720585 e!4720588)))

(declare-fun b!8013541 () Bool)

(assert (=> b!8013541 (= e!4720583 e!4720586)))

(declare-fun res!3168701 () Bool)

(assert (=> b!8013541 (=> (not res!3168701) (not e!4720586))))

(assert (=> b!8013541 (= res!3168701 call!744331)))

(declare-fun bm!744326 () Bool)

(assert (=> bm!744326 (= call!744331 (validRegex!11987 (ite c!1470792 (regOne!43879 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))) (regOne!43878 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))))

(declare-fun b!8013542 () Bool)

(declare-fun e!4720587 () Bool)

(assert (=> b!8013542 (= e!4720587 e!4720582)))

(declare-fun c!1470793 () Bool)

(assert (=> b!8013542 (= c!1470793 ((_ is Star!21683) (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))

(declare-fun bm!744325 () Bool)

(assert (=> bm!744325 (= call!744330 (validRegex!11987 (ite c!1470793 (reg!22012 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))) (ite c!1470792 (regTwo!43879 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))) (regTwo!43878 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422))))))))))

(declare-fun d!2389092 () Bool)

(declare-fun res!3168699 () Bool)

(assert (=> d!2389092 (=> res!3168699 e!4720587)))

(assert (=> d!2389092 (= res!3168699 ((_ is ElementMatch!21683) (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))

(assert (=> d!2389092 (= (validRegex!11987 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))) e!4720587)))

(declare-fun b!8013543 () Bool)

(assert (=> b!8013543 (= e!4720582 e!4720584)))

(declare-fun res!3168698 () Bool)

(assert (=> b!8013543 (= res!3168698 (not (nullable!9725 (reg!22012 (ite c!1470690 (reg!22012 r!15422) (ite c!1470689 (regTwo!43879 r!15422) (regTwo!43878 r!15422)))))))))

(assert (=> b!8013543 (=> (not res!3168698) (not e!4720584))))

(declare-fun b!8013544 () Bool)

(assert (=> b!8013544 (= e!4720588 call!744329)))

(assert (= (and d!2389092 (not res!3168699)) b!8013542))

(assert (= (and b!8013542 c!1470793) b!8013543))

(assert (= (and b!8013542 (not c!1470793)) b!8013538))

(assert (= (and b!8013543 res!3168698) b!8013536))

(assert (= (and b!8013538 c!1470792) b!8013540))

(assert (= (and b!8013538 (not c!1470792)) b!8013537))

(assert (= (and b!8013540 res!3168700) b!8013544))

(assert (= (and b!8013537 (not res!3168702)) b!8013541))

(assert (= (and b!8013541 res!3168701) b!8013539))

(assert (= (or b!8013544 b!8013539) bm!744324))

(assert (= (or b!8013540 b!8013541) bm!744326))

(assert (= (or b!8013536 bm!744324) bm!744325))

(declare-fun m!8376938 () Bool)

(assert (=> bm!744326 m!8376938))

(declare-fun m!8376940 () Bool)

(assert (=> bm!744325 m!8376940))

(declare-fun m!8376942 () Bool)

(assert (=> b!8013543 m!8376942))

(assert (=> bm!744269 d!2389092))

(declare-fun d!2389094 () Bool)

(assert (=> d!2389094 (= totalInput!1349 testedP!353)))

(assert (=> d!2389094 true))

(declare-fun _$60!1396 () Unit!170838)

(assert (=> d!2389094 (= (choose!60377 totalInput!1349 testedP!353 totalInput!1349) _$60!1396)))

(assert (=> d!2388916 d!2389094))

(assert (=> d!2388916 d!2388914))

(declare-fun d!2389096 () Bool)

(declare-fun lt!2717673 () Int)

(assert (=> d!2389096 (>= lt!2717673 0)))

(declare-fun e!4720589 () Int)

(assert (=> d!2389096 (= lt!2717673 e!4720589)))

(declare-fun c!1470794 () Bool)

(assert (=> d!2389096 (= c!1470794 ((_ is Nil!74788) (t!390655 totalInput!1349)))))

(assert (=> d!2389096 (= (size!43585 (t!390655 totalInput!1349)) lt!2717673)))

(declare-fun b!8013545 () Bool)

(assert (=> b!8013545 (= e!4720589 0)))

(declare-fun b!8013546 () Bool)

(assert (=> b!8013546 (= e!4720589 (+ 1 (size!43585 (t!390655 (t!390655 totalInput!1349)))))))

(assert (= (and d!2389096 c!1470794) b!8013545))

(assert (= (and d!2389096 (not c!1470794)) b!8013546))

(declare-fun m!8376944 () Bool)

(assert (=> b!8013546 m!8376944))

(assert (=> b!8013153 d!2389096))

(declare-fun d!2389098 () Bool)

(declare-fun lt!2717674 () Int)

(assert (=> d!2389098 (>= lt!2717674 0)))

(declare-fun e!4720590 () Int)

(assert (=> d!2389098 (= lt!2717674 e!4720590)))

(declare-fun c!1470795 () Bool)

(assert (=> d!2389098 (= c!1470795 ((_ is Nil!74788) lt!2717608))))

(assert (=> d!2389098 (= (size!43585 lt!2717608) lt!2717674)))

(declare-fun b!8013547 () Bool)

(assert (=> b!8013547 (= e!4720590 0)))

(declare-fun b!8013548 () Bool)

(assert (=> b!8013548 (= e!4720590 (+ 1 (size!43585 (t!390655 lt!2717608))))))

(assert (= (and d!2389098 c!1470795) b!8013547))

(assert (= (and d!2389098 (not c!1470795)) b!8013548))

(declare-fun m!8376946 () Bool)

(assert (=> b!8013548 m!8376946))

(assert (=> b!8013207 d!2389098))

(assert (=> b!8013207 d!2388904))

(declare-fun d!2389100 () Bool)

(declare-fun lt!2717675 () Int)

(assert (=> d!2389100 (>= lt!2717675 0)))

(declare-fun e!4720591 () Int)

(assert (=> d!2389100 (= lt!2717675 e!4720591)))

(declare-fun c!1470796 () Bool)

(assert (=> d!2389100 (= c!1470796 ((_ is Nil!74788) (Cons!74788 lt!2717557 Nil!74788)))))

(assert (=> d!2389100 (= (size!43585 (Cons!74788 lt!2717557 Nil!74788)) lt!2717675)))

(declare-fun b!8013549 () Bool)

(assert (=> b!8013549 (= e!4720591 0)))

(declare-fun b!8013550 () Bool)

(assert (=> b!8013550 (= e!4720591 (+ 1 (size!43585 (t!390655 (Cons!74788 lt!2717557 Nil!74788)))))))

(assert (= (and d!2389100 c!1470796) b!8013549))

(assert (= (and d!2389100 (not c!1470796)) b!8013550))

(declare-fun m!8376948 () Bool)

(assert (=> b!8013550 m!8376948))

(assert (=> b!8013207 d!2389100))

(assert (=> b!8013108 d!2388926))

(declare-fun b!8013552 () Bool)

(declare-fun res!3168703 () Bool)

(declare-fun e!4720594 () Bool)

(assert (=> b!8013552 (=> (not res!3168703) (not e!4720594))))

(assert (=> b!8013552 (= res!3168703 (= (head!16357 (tail!15880 totalInput!1349)) (head!16357 (tail!15880 totalInput!1349))))))

(declare-fun b!8013553 () Bool)

(assert (=> b!8013553 (= e!4720594 (isPrefix!6735 (tail!15880 (tail!15880 totalInput!1349)) (tail!15880 (tail!15880 totalInput!1349))))))

(declare-fun b!8013551 () Bool)

(declare-fun e!4720593 () Bool)

(assert (=> b!8013551 (= e!4720593 e!4720594)))

(declare-fun res!3168704 () Bool)

(assert (=> b!8013551 (=> (not res!3168704) (not e!4720594))))

(assert (=> b!8013551 (= res!3168704 (not ((_ is Nil!74788) (tail!15880 totalInput!1349))))))

(declare-fun d!2389102 () Bool)

(declare-fun e!4720592 () Bool)

(assert (=> d!2389102 e!4720592))

(declare-fun res!3168706 () Bool)

(assert (=> d!2389102 (=> res!3168706 e!4720592)))

(declare-fun lt!2717676 () Bool)

(assert (=> d!2389102 (= res!3168706 (not lt!2717676))))

(assert (=> d!2389102 (= lt!2717676 e!4720593)))

(declare-fun res!3168705 () Bool)

(assert (=> d!2389102 (=> res!3168705 e!4720593)))

(assert (=> d!2389102 (= res!3168705 ((_ is Nil!74788) (tail!15880 totalInput!1349)))))

(assert (=> d!2389102 (= (isPrefix!6735 (tail!15880 totalInput!1349) (tail!15880 totalInput!1349)) lt!2717676)))

(declare-fun b!8013554 () Bool)

(assert (=> b!8013554 (= e!4720592 (>= (size!43585 (tail!15880 totalInput!1349)) (size!43585 (tail!15880 totalInput!1349))))))

(assert (= (and d!2389102 (not res!3168705)) b!8013551))

(assert (= (and b!8013551 res!3168704) b!8013552))

(assert (= (and b!8013552 res!3168703) b!8013553))

(assert (= (and d!2389102 (not res!3168706)) b!8013554))

(assert (=> b!8013552 m!8376492))

(assert (=> b!8013552 m!8376812))

(assert (=> b!8013552 m!8376492))

(assert (=> b!8013552 m!8376812))

(assert (=> b!8013553 m!8376492))

(assert (=> b!8013553 m!8376814))

(assert (=> b!8013553 m!8376492))

(assert (=> b!8013553 m!8376814))

(assert (=> b!8013553 m!8376814))

(assert (=> b!8013553 m!8376814))

(declare-fun m!8376950 () Bool)

(assert (=> b!8013553 m!8376950))

(assert (=> b!8013554 m!8376492))

(assert (=> b!8013554 m!8376818))

(assert (=> b!8013554 m!8376492))

(assert (=> b!8013554 m!8376818))

(assert (=> b!8013107 d!2389102))

(assert (=> b!8013107 d!2389040))

(declare-fun b!8013569 () Bool)

(declare-fun e!4720608 () Bool)

(declare-fun call!744337 () Bool)

(assert (=> b!8013569 (= e!4720608 call!744337)))

(declare-fun b!8013570 () Bool)

(declare-fun e!4720611 () Bool)

(declare-fun e!4720609 () Bool)

(assert (=> b!8013570 (= e!4720611 e!4720609)))

(declare-fun res!3168719 () Bool)

(assert (=> b!8013570 (=> res!3168719 e!4720609)))

(assert (=> b!8013570 (= res!3168719 ((_ is Star!21683) r!15422))))

(declare-fun b!8013571 () Bool)

(declare-fun e!4720607 () Bool)

(declare-fun e!4720612 () Bool)

(assert (=> b!8013571 (= e!4720607 e!4720612)))

(declare-fun res!3168720 () Bool)

(assert (=> b!8013571 (= res!3168720 call!744337)))

(assert (=> b!8013571 (=> res!3168720 e!4720612)))

(declare-fun bm!744331 () Bool)

(declare-fun c!1470799 () Bool)

(assert (=> bm!744331 (= call!744337 (nullable!9725 (ite c!1470799 (regOne!43879 r!15422) (regTwo!43878 r!15422))))))

(declare-fun b!8013572 () Bool)

(assert (=> b!8013572 (= e!4720607 e!4720608)))

(declare-fun res!3168717 () Bool)

(declare-fun call!744336 () Bool)

(assert (=> b!8013572 (= res!3168717 call!744336)))

(assert (=> b!8013572 (=> (not res!3168717) (not e!4720608))))

(declare-fun bm!744332 () Bool)

(assert (=> bm!744332 (= call!744336 (nullable!9725 (ite c!1470799 (regTwo!43879 r!15422) (regOne!43878 r!15422))))))

(declare-fun b!8013574 () Bool)

(assert (=> b!8013574 (= e!4720612 call!744336)))

(declare-fun b!8013575 () Bool)

(assert (=> b!8013575 (= e!4720609 e!4720607)))

(assert (=> b!8013575 (= c!1470799 ((_ is Union!21683) r!15422))))

(declare-fun d!2389104 () Bool)

(declare-fun res!3168721 () Bool)

(declare-fun e!4720610 () Bool)

(assert (=> d!2389104 (=> res!3168721 e!4720610)))

(assert (=> d!2389104 (= res!3168721 ((_ is EmptyExpr!21683) r!15422))))

(assert (=> d!2389104 (= (nullableFct!3842 r!15422) e!4720610)))

(declare-fun b!8013573 () Bool)

(assert (=> b!8013573 (= e!4720610 e!4720611)))

(declare-fun res!3168718 () Bool)

(assert (=> b!8013573 (=> (not res!3168718) (not e!4720611))))

(assert (=> b!8013573 (= res!3168718 (and (not ((_ is EmptyLang!21683) r!15422)) (not ((_ is ElementMatch!21683) r!15422))))))

(assert (= (and d!2389104 (not res!3168721)) b!8013573))

(assert (= (and b!8013573 res!3168718) b!8013570))

(assert (= (and b!8013570 (not res!3168719)) b!8013575))

(assert (= (and b!8013575 c!1470799) b!8013571))

(assert (= (and b!8013575 (not c!1470799)) b!8013572))

(assert (= (and b!8013571 (not res!3168720)) b!8013574))

(assert (= (and b!8013572 res!3168717) b!8013569))

(assert (= (or b!8013571 b!8013569) bm!744331))

(assert (= (or b!8013574 b!8013572) bm!744332))

(declare-fun m!8376952 () Bool)

(assert (=> bm!744331 m!8376952))

(declare-fun m!8376954 () Bool)

(assert (=> bm!744332 m!8376954))

(assert (=> d!2388950 d!2389104))

(declare-fun b!8013577 () Bool)

(declare-fun res!3168722 () Bool)

(declare-fun e!4720615 () Bool)

(assert (=> b!8013577 (=> (not res!3168722) (not e!4720615))))

(assert (=> b!8013577 (= res!3168722 (= (head!16357 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))) (head!16357 (tail!15880 totalInput!1349))))))

(declare-fun b!8013578 () Bool)

(assert (=> b!8013578 (= e!4720615 (isPrefix!6735 (tail!15880 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))) (tail!15880 (tail!15880 totalInput!1349))))))

(declare-fun b!8013576 () Bool)

(declare-fun e!4720614 () Bool)

(assert (=> b!8013576 (= e!4720614 e!4720615)))

(declare-fun res!3168723 () Bool)

(assert (=> b!8013576 (=> (not res!3168723) (not e!4720615))))

(assert (=> b!8013576 (= res!3168723 (not ((_ is Nil!74788) (tail!15880 totalInput!1349))))))

(declare-fun d!2389106 () Bool)

(declare-fun e!4720613 () Bool)

(assert (=> d!2389106 e!4720613))

(declare-fun res!3168725 () Bool)

(assert (=> d!2389106 (=> res!3168725 e!4720613)))

(declare-fun lt!2717677 () Bool)

(assert (=> d!2389106 (= res!3168725 (not lt!2717677))))

(assert (=> d!2389106 (= lt!2717677 e!4720614)))

(declare-fun res!3168724 () Bool)

(assert (=> d!2389106 (=> res!3168724 e!4720614)))

(assert (=> d!2389106 (= res!3168724 ((_ is Nil!74788) (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (=> d!2389106 (= (isPrefix!6735 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) (tail!15880 totalInput!1349)) lt!2717677)))

(declare-fun b!8013579 () Bool)

(assert (=> b!8013579 (= e!4720613 (>= (size!43585 (tail!15880 totalInput!1349)) (size!43585 (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))))

(assert (= (and d!2389106 (not res!3168724)) b!8013576))

(assert (= (and b!8013576 res!3168723) b!8013577))

(assert (= (and b!8013577 res!3168722) b!8013578))

(assert (= (and d!2389106 (not res!3168725)) b!8013579))

(assert (=> b!8013577 m!8376590))

(declare-fun m!8376956 () Bool)

(assert (=> b!8013577 m!8376956))

(assert (=> b!8013577 m!8376492))

(assert (=> b!8013577 m!8376812))

(assert (=> b!8013578 m!8376590))

(declare-fun m!8376958 () Bool)

(assert (=> b!8013578 m!8376958))

(assert (=> b!8013578 m!8376492))

(assert (=> b!8013578 m!8376814))

(assert (=> b!8013578 m!8376958))

(assert (=> b!8013578 m!8376814))

(declare-fun m!8376960 () Bool)

(assert (=> b!8013578 m!8376960))

(assert (=> b!8013579 m!8376492))

(assert (=> b!8013579 m!8376818))

(assert (=> b!8013579 m!8376590))

(declare-fun m!8376962 () Bool)

(assert (=> b!8013579 m!8376962))

(assert (=> b!8013195 d!2389106))

(declare-fun d!2389108 () Bool)

(assert (=> d!2389108 (= (tail!15880 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) (t!390655 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(assert (=> b!8013195 d!2389108))

(assert (=> b!8013195 d!2389040))

(assert (=> d!2388912 d!2388914))

(declare-fun d!2389110 () Bool)

(assert (=> d!2389110 (isPrefix!6735 totalInput!1349 totalInput!1349)))

(assert (=> d!2389110 true))

(declare-fun _$45!2530 () Unit!170838)

(assert (=> d!2389110 (= (choose!60376 totalInput!1349 totalInput!1349) _$45!2530)))

(declare-fun bs!1970946 () Bool)

(assert (= bs!1970946 d!2389110))

(assert (=> bs!1970946 m!8376474))

(assert (=> d!2388912 d!2389110))

(declare-fun d!2389112 () Bool)

(declare-fun lt!2717678 () Int)

(assert (=> d!2389112 (>= lt!2717678 0)))

(declare-fun e!4720616 () Int)

(assert (=> d!2389112 (= lt!2717678 e!4720616)))

(declare-fun c!1470800 () Bool)

(assert (=> d!2389112 (= c!1470800 ((_ is Nil!74788) lt!2717601))))

(assert (=> d!2389112 (= (size!43585 lt!2717601) lt!2717678)))

(declare-fun b!8013580 () Bool)

(assert (=> b!8013580 (= e!4720616 0)))

(declare-fun b!8013581 () Bool)

(assert (=> b!8013581 (= e!4720616 (+ 1 (size!43585 (t!390655 lt!2717601))))))

(assert (= (and d!2389112 c!1470800) b!8013580))

(assert (= (and d!2389112 (not c!1470800)) b!8013581))

(declare-fun m!8376964 () Bool)

(assert (=> b!8013581 m!8376964))

(assert (=> b!8013182 d!2389112))

(assert (=> b!8013182 d!2388904))

(declare-fun d!2389114 () Bool)

(declare-fun lt!2717679 () Int)

(assert (=> d!2389114 (>= lt!2717679 0)))

(declare-fun e!4720617 () Int)

(assert (=> d!2389114 (= lt!2717679 e!4720617)))

(declare-fun c!1470801 () Bool)

(assert (=> d!2389114 (= c!1470801 ((_ is Nil!74788) (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))

(assert (=> d!2389114 (= (size!43585 (Cons!74788 (head!16357 lt!2717553) Nil!74788)) lt!2717679)))

(declare-fun b!8013582 () Bool)

(assert (=> b!8013582 (= e!4720617 0)))

(declare-fun b!8013583 () Bool)

(assert (=> b!8013583 (= e!4720617 (+ 1 (size!43585 (t!390655 (Cons!74788 (head!16357 lt!2717553) Nil!74788)))))))

(assert (= (and d!2389114 c!1470801) b!8013582))

(assert (= (and d!2389114 (not c!1470801)) b!8013583))

(declare-fun m!8376966 () Bool)

(assert (=> b!8013583 m!8376966))

(assert (=> b!8013182 d!2389114))

(declare-fun d!2389116 () Bool)

(assert (=> d!2389116 (= testedSuffix!271 lt!2717553)))

(assert (=> d!2389116 true))

(declare-fun _$63!1464 () Unit!170838)

(assert (=> d!2389116 (= (choose!60374 testedP!353 testedSuffix!271 testedP!353 lt!2717553 totalInput!1349) _$63!1464)))

(assert (=> d!2388900 d!2389116))

(assert (=> d!2388900 d!2388906))

(declare-fun d!2389118 () Bool)

(assert (=> d!2389118 (= (head!16357 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) (h!81236 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(assert (=> b!8013194 d!2389118))

(assert (=> b!8013194 d!2389032))

(declare-fun d!2389120 () Bool)

(declare-fun lt!2717680 () Int)

(assert (=> d!2389120 (>= lt!2717680 0)))

(declare-fun e!4720618 () Int)

(assert (=> d!2389120 (= lt!2717680 e!4720618)))

(declare-fun c!1470802 () Bool)

(assert (=> d!2389120 (= c!1470802 ((_ is Nil!74788) lt!2717634))))

(assert (=> d!2389120 (= (size!43585 lt!2717634) lt!2717680)))

(declare-fun b!8013584 () Bool)

(assert (=> b!8013584 (= e!4720618 0)))

(declare-fun b!8013585 () Bool)

(assert (=> b!8013585 (= e!4720618 (+ 1 (size!43585 (t!390655 lt!2717634))))))

(assert (= (and d!2389120 c!1470802) b!8013584))

(assert (= (and d!2389120 (not c!1470802)) b!8013585))

(declare-fun m!8376968 () Bool)

(assert (=> b!8013585 m!8376968))

(assert (=> b!8013267 d!2389120))

(assert (=> b!8013267 d!2388904))

(declare-fun d!2389122 () Bool)

(declare-fun lt!2717681 () Int)

(assert (=> d!2389122 (>= lt!2717681 0)))

(declare-fun e!4720619 () Int)

(assert (=> d!2389122 (= lt!2717681 e!4720619)))

(declare-fun c!1470803 () Bool)

(assert (=> d!2389122 (= c!1470803 ((_ is Nil!74788) testedSuffix!271))))

(assert (=> d!2389122 (= (size!43585 testedSuffix!271) lt!2717681)))

(declare-fun b!8013586 () Bool)

(assert (=> b!8013586 (= e!4720619 0)))

(declare-fun b!8013587 () Bool)

(assert (=> b!8013587 (= e!4720619 (+ 1 (size!43585 (t!390655 testedSuffix!271))))))

(assert (= (and d!2389122 c!1470803) b!8013586))

(assert (= (and d!2389122 (not c!1470803)) b!8013587))

(declare-fun m!8376970 () Bool)

(assert (=> b!8013587 m!8376970))

(assert (=> b!8013267 d!2389122))

(assert (=> d!2388954 d!2388904))

(assert (=> d!2388954 d!2388926))

(declare-fun d!2389124 () Bool)

(assert (=> d!2389124 (<= (size!43585 testedP!353) (size!43585 totalInput!1349))))

(assert (=> d!2389124 true))

(declare-fun _$64!982 () Unit!170838)

(assert (=> d!2389124 (= (choose!60385 testedP!353 totalInput!1349) _$64!982)))

(declare-fun bs!1970947 () Bool)

(assert (= bs!1970947 d!2389124))

(assert (=> bs!1970947 m!8376468))

(assert (=> bs!1970947 m!8376466))

(assert (=> d!2388954 d!2389124))

(assert (=> d!2388954 d!2388906))

(assert (=> b!8013196 d!2388926))

(declare-fun d!2389126 () Bool)

(declare-fun lt!2717682 () Int)

(assert (=> d!2389126 (>= lt!2717682 0)))

(declare-fun e!4720620 () Int)

(assert (=> d!2389126 (= lt!2717682 e!4720620)))

(declare-fun c!1470804 () Bool)

(assert (=> d!2389126 (= c!1470804 ((_ is Nil!74788) (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))

(assert (=> d!2389126 (= (size!43585 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))) lt!2717682)))

(declare-fun b!8013588 () Bool)

(assert (=> b!8013588 (= e!4720620 0)))

(declare-fun b!8013589 () Bool)

(assert (=> b!8013589 (= e!4720620 (+ 1 (size!43585 (t!390655 (++!18509 testedP!353 (Cons!74788 (head!16357 lt!2717553) Nil!74788))))))))

(assert (= (and d!2389126 c!1470804) b!8013588))

(assert (= (and d!2389126 (not c!1470804)) b!8013589))

(declare-fun m!8376972 () Bool)

(assert (=> b!8013589 m!8376972))

(assert (=> b!8013196 d!2389126))

(assert (=> b!8013106 d!2389032))

(declare-fun b!8013590 () Bool)

(declare-fun e!4720621 () Bool)

(declare-fun tp!2398427 () Bool)

(assert (=> b!8013590 (= e!4720621 (and tp_is_empty!53909 tp!2398427))))

(assert (=> b!8013305 (= tp!2398386 e!4720621)))

(assert (= (and b!8013305 ((_ is Cons!74788) (t!390655 (t!390655 testedSuffix!271)))) b!8013590))

(declare-fun b!8013592 () Bool)

(declare-fun e!4720622 () Bool)

(declare-fun tp!2398429 () Bool)

(declare-fun tp!2398431 () Bool)

(assert (=> b!8013592 (= e!4720622 (and tp!2398429 tp!2398431))))

(declare-fun b!8013591 () Bool)

(assert (=> b!8013591 (= e!4720622 tp_is_empty!53909)))

(assert (=> b!8013280 (= tp!2398358 e!4720622)))

(declare-fun b!8013594 () Bool)

(declare-fun tp!2398432 () Bool)

(declare-fun tp!2398428 () Bool)

(assert (=> b!8013594 (= e!4720622 (and tp!2398432 tp!2398428))))

(declare-fun b!8013593 () Bool)

(declare-fun tp!2398430 () Bool)

(assert (=> b!8013593 (= e!4720622 tp!2398430)))

(assert (= (and b!8013280 ((_ is ElementMatch!21683) (regOne!43878 (regOne!43878 r!15422)))) b!8013591))

(assert (= (and b!8013280 ((_ is Concat!30682) (regOne!43878 (regOne!43878 r!15422)))) b!8013592))

(assert (= (and b!8013280 ((_ is Star!21683) (regOne!43878 (regOne!43878 r!15422)))) b!8013593))

(assert (= (and b!8013280 ((_ is Union!21683) (regOne!43878 (regOne!43878 r!15422)))) b!8013594))

(declare-fun b!8013596 () Bool)

(declare-fun e!4720623 () Bool)

(declare-fun tp!2398434 () Bool)

(declare-fun tp!2398436 () Bool)

(assert (=> b!8013596 (= e!4720623 (and tp!2398434 tp!2398436))))

(declare-fun b!8013595 () Bool)

(assert (=> b!8013595 (= e!4720623 tp_is_empty!53909)))

(assert (=> b!8013280 (= tp!2398360 e!4720623)))

(declare-fun b!8013598 () Bool)

(declare-fun tp!2398437 () Bool)

(declare-fun tp!2398433 () Bool)

(assert (=> b!8013598 (= e!4720623 (and tp!2398437 tp!2398433))))

(declare-fun b!8013597 () Bool)

(declare-fun tp!2398435 () Bool)

(assert (=> b!8013597 (= e!4720623 tp!2398435)))

(assert (= (and b!8013280 ((_ is ElementMatch!21683) (regTwo!43878 (regOne!43878 r!15422)))) b!8013595))

(assert (= (and b!8013280 ((_ is Concat!30682) (regTwo!43878 (regOne!43878 r!15422)))) b!8013596))

(assert (= (and b!8013280 ((_ is Star!21683) (regTwo!43878 (regOne!43878 r!15422)))) b!8013597))

(assert (= (and b!8013280 ((_ is Union!21683) (regTwo!43878 (regOne!43878 r!15422)))) b!8013598))

(declare-fun b!8013599 () Bool)

(declare-fun e!4720624 () Bool)

(declare-fun tp!2398438 () Bool)

(assert (=> b!8013599 (= e!4720624 (and tp_is_empty!53909 tp!2398438))))

(assert (=> b!8013304 (= tp!2398385 e!4720624)))

(assert (= (and b!8013304 ((_ is Cons!74788) (t!390655 (t!390655 testedP!353)))) b!8013599))

(declare-fun b!8013601 () Bool)

(declare-fun e!4720625 () Bool)

(declare-fun tp!2398440 () Bool)

(declare-fun tp!2398442 () Bool)

(assert (=> b!8013601 (= e!4720625 (and tp!2398440 tp!2398442))))

(declare-fun b!8013600 () Bool)

(assert (=> b!8013600 (= e!4720625 tp_is_empty!53909)))

(assert (=> b!8013294 (= tp!2398372 e!4720625)))

(declare-fun b!8013603 () Bool)

(declare-fun tp!2398443 () Bool)

(declare-fun tp!2398439 () Bool)

(assert (=> b!8013603 (= e!4720625 (and tp!2398443 tp!2398439))))

(declare-fun b!8013602 () Bool)

(declare-fun tp!2398441 () Bool)

(assert (=> b!8013602 (= e!4720625 tp!2398441)))

(assert (= (and b!8013294 ((_ is ElementMatch!21683) (reg!22012 (regOne!43879 r!15422)))) b!8013600))

(assert (= (and b!8013294 ((_ is Concat!30682) (reg!22012 (regOne!43879 r!15422)))) b!8013601))

(assert (= (and b!8013294 ((_ is Star!21683) (reg!22012 (regOne!43879 r!15422)))) b!8013602))

(assert (= (and b!8013294 ((_ is Union!21683) (reg!22012 (regOne!43879 r!15422)))) b!8013603))

(declare-fun b!8013605 () Bool)

(declare-fun e!4720626 () Bool)

(declare-fun tp!2398445 () Bool)

(declare-fun tp!2398447 () Bool)

(assert (=> b!8013605 (= e!4720626 (and tp!2398445 tp!2398447))))

(declare-fun b!8013604 () Bool)

(assert (=> b!8013604 (= e!4720626 tp_is_empty!53909)))

(assert (=> b!8013286 (= tp!2398366 e!4720626)))

(declare-fun b!8013607 () Bool)

(declare-fun tp!2398448 () Bool)

(declare-fun tp!2398444 () Bool)

(assert (=> b!8013607 (= e!4720626 (and tp!2398448 tp!2398444))))

(declare-fun b!8013606 () Bool)

(declare-fun tp!2398446 () Bool)

(assert (=> b!8013606 (= e!4720626 tp!2398446)))

(assert (= (and b!8013286 ((_ is ElementMatch!21683) (regOne!43879 (regTwo!43878 r!15422)))) b!8013604))

(assert (= (and b!8013286 ((_ is Concat!30682) (regOne!43879 (regTwo!43878 r!15422)))) b!8013605))

(assert (= (and b!8013286 ((_ is Star!21683) (regOne!43879 (regTwo!43878 r!15422)))) b!8013606))

(assert (= (and b!8013286 ((_ is Union!21683) (regOne!43879 (regTwo!43878 r!15422)))) b!8013607))

(declare-fun b!8013609 () Bool)

(declare-fun e!4720627 () Bool)

(declare-fun tp!2398450 () Bool)

(declare-fun tp!2398452 () Bool)

(assert (=> b!8013609 (= e!4720627 (and tp!2398450 tp!2398452))))

(declare-fun b!8013608 () Bool)

(assert (=> b!8013608 (= e!4720627 tp_is_empty!53909)))

(assert (=> b!8013286 (= tp!2398362 e!4720627)))

(declare-fun b!8013611 () Bool)

(declare-fun tp!2398453 () Bool)

(declare-fun tp!2398449 () Bool)

(assert (=> b!8013611 (= e!4720627 (and tp!2398453 tp!2398449))))

(declare-fun b!8013610 () Bool)

(declare-fun tp!2398451 () Bool)

(assert (=> b!8013610 (= e!4720627 tp!2398451)))

(assert (= (and b!8013286 ((_ is ElementMatch!21683) (regTwo!43879 (regTwo!43878 r!15422)))) b!8013608))

(assert (= (and b!8013286 ((_ is Concat!30682) (regTwo!43879 (regTwo!43878 r!15422)))) b!8013609))

(assert (= (and b!8013286 ((_ is Star!21683) (regTwo!43879 (regTwo!43878 r!15422)))) b!8013610))

(assert (= (and b!8013286 ((_ is Union!21683) (regTwo!43879 (regTwo!43878 r!15422)))) b!8013611))

(declare-fun b!8013613 () Bool)

(declare-fun e!4720628 () Bool)

(declare-fun tp!2398455 () Bool)

(declare-fun tp!2398457 () Bool)

(assert (=> b!8013613 (= e!4720628 (and tp!2398455 tp!2398457))))

(declare-fun b!8013612 () Bool)

(assert (=> b!8013612 (= e!4720628 tp_is_empty!53909)))

(assert (=> b!8013299 (= tp!2398379 e!4720628)))

(declare-fun b!8013615 () Bool)

(declare-fun tp!2398458 () Bool)

(declare-fun tp!2398454 () Bool)

(assert (=> b!8013615 (= e!4720628 (and tp!2398458 tp!2398454))))

(declare-fun b!8013614 () Bool)

(declare-fun tp!2398456 () Bool)

(assert (=> b!8013614 (= e!4720628 tp!2398456)))

(assert (= (and b!8013299 ((_ is ElementMatch!21683) (regOne!43879 (regTwo!43879 r!15422)))) b!8013612))

(assert (= (and b!8013299 ((_ is Concat!30682) (regOne!43879 (regTwo!43879 r!15422)))) b!8013613))

(assert (= (and b!8013299 ((_ is Star!21683) (regOne!43879 (regTwo!43879 r!15422)))) b!8013614))

(assert (= (and b!8013299 ((_ is Union!21683) (regOne!43879 (regTwo!43879 r!15422)))) b!8013615))

(declare-fun b!8013617 () Bool)

(declare-fun e!4720629 () Bool)

(declare-fun tp!2398460 () Bool)

(declare-fun tp!2398462 () Bool)

(assert (=> b!8013617 (= e!4720629 (and tp!2398460 tp!2398462))))

(declare-fun b!8013616 () Bool)

(assert (=> b!8013616 (= e!4720629 tp_is_empty!53909)))

(assert (=> b!8013299 (= tp!2398375 e!4720629)))

(declare-fun b!8013619 () Bool)

(declare-fun tp!2398463 () Bool)

(declare-fun tp!2398459 () Bool)

(assert (=> b!8013619 (= e!4720629 (and tp!2398463 tp!2398459))))

(declare-fun b!8013618 () Bool)

(declare-fun tp!2398461 () Bool)

(assert (=> b!8013618 (= e!4720629 tp!2398461)))

(assert (= (and b!8013299 ((_ is ElementMatch!21683) (regTwo!43879 (regTwo!43879 r!15422)))) b!8013616))

(assert (= (and b!8013299 ((_ is Concat!30682) (regTwo!43879 (regTwo!43879 r!15422)))) b!8013617))

(assert (= (and b!8013299 ((_ is Star!21683) (regTwo!43879 (regTwo!43879 r!15422)))) b!8013618))

(assert (= (and b!8013299 ((_ is Union!21683) (regTwo!43879 (regTwo!43879 r!15422)))) b!8013619))

(declare-fun b!8013621 () Bool)

(declare-fun e!4720630 () Bool)

(declare-fun tp!2398465 () Bool)

(declare-fun tp!2398467 () Bool)

(assert (=> b!8013621 (= e!4720630 (and tp!2398465 tp!2398467))))

(declare-fun b!8013620 () Bool)

(assert (=> b!8013620 (= e!4720630 tp_is_empty!53909)))

(assert (=> b!8013298 (= tp!2398377 e!4720630)))

(declare-fun b!8013623 () Bool)

(declare-fun tp!2398468 () Bool)

(declare-fun tp!2398464 () Bool)

(assert (=> b!8013623 (= e!4720630 (and tp!2398468 tp!2398464))))

(declare-fun b!8013622 () Bool)

(declare-fun tp!2398466 () Bool)

(assert (=> b!8013622 (= e!4720630 tp!2398466)))

(assert (= (and b!8013298 ((_ is ElementMatch!21683) (reg!22012 (regTwo!43879 r!15422)))) b!8013620))

(assert (= (and b!8013298 ((_ is Concat!30682) (reg!22012 (regTwo!43879 r!15422)))) b!8013621))

(assert (= (and b!8013298 ((_ is Star!21683) (reg!22012 (regTwo!43879 r!15422)))) b!8013622))

(assert (= (and b!8013298 ((_ is Union!21683) (reg!22012 (regTwo!43879 r!15422)))) b!8013623))

(declare-fun b!8013625 () Bool)

(declare-fun e!4720631 () Bool)

(declare-fun tp!2398470 () Bool)

(declare-fun tp!2398472 () Bool)

(assert (=> b!8013625 (= e!4720631 (and tp!2398470 tp!2398472))))

(declare-fun b!8013624 () Bool)

(assert (=> b!8013624 (= e!4720631 tp_is_empty!53909)))

(assert (=> b!8013303 (= tp!2398384 e!4720631)))

(declare-fun b!8013627 () Bool)

(declare-fun tp!2398473 () Bool)

(declare-fun tp!2398469 () Bool)

(assert (=> b!8013627 (= e!4720631 (and tp!2398473 tp!2398469))))

(declare-fun b!8013626 () Bool)

(declare-fun tp!2398471 () Bool)

(assert (=> b!8013626 (= e!4720631 tp!2398471)))

(assert (= (and b!8013303 ((_ is ElementMatch!21683) (regOne!43879 (reg!22012 r!15422)))) b!8013624))

(assert (= (and b!8013303 ((_ is Concat!30682) (regOne!43879 (reg!22012 r!15422)))) b!8013625))

(assert (= (and b!8013303 ((_ is Star!21683) (regOne!43879 (reg!22012 r!15422)))) b!8013626))

(assert (= (and b!8013303 ((_ is Union!21683) (regOne!43879 (reg!22012 r!15422)))) b!8013627))

(declare-fun b!8013629 () Bool)

(declare-fun e!4720632 () Bool)

(declare-fun tp!2398475 () Bool)

(declare-fun tp!2398477 () Bool)

(assert (=> b!8013629 (= e!4720632 (and tp!2398475 tp!2398477))))

(declare-fun b!8013628 () Bool)

(assert (=> b!8013628 (= e!4720632 tp_is_empty!53909)))

(assert (=> b!8013303 (= tp!2398380 e!4720632)))

(declare-fun b!8013631 () Bool)

(declare-fun tp!2398478 () Bool)

(declare-fun tp!2398474 () Bool)

(assert (=> b!8013631 (= e!4720632 (and tp!2398478 tp!2398474))))

(declare-fun b!8013630 () Bool)

(declare-fun tp!2398476 () Bool)

(assert (=> b!8013630 (= e!4720632 tp!2398476)))

(assert (= (and b!8013303 ((_ is ElementMatch!21683) (regTwo!43879 (reg!22012 r!15422)))) b!8013628))

(assert (= (and b!8013303 ((_ is Concat!30682) (regTwo!43879 (reg!22012 r!15422)))) b!8013629))

(assert (= (and b!8013303 ((_ is Star!21683) (regTwo!43879 (reg!22012 r!15422)))) b!8013630))

(assert (= (and b!8013303 ((_ is Union!21683) (regTwo!43879 (reg!22012 r!15422)))) b!8013631))

(declare-fun b!8013632 () Bool)

(declare-fun e!4720633 () Bool)

(declare-fun tp!2398479 () Bool)

(assert (=> b!8013632 (= e!4720633 (and tp_is_empty!53909 tp!2398479))))

(assert (=> b!8013291 (= tp!2398369 e!4720633)))

(assert (= (and b!8013291 ((_ is Cons!74788) (t!390655 (t!390655 totalInput!1349)))) b!8013632))

(declare-fun b!8013634 () Bool)

(declare-fun e!4720634 () Bool)

(declare-fun tp!2398481 () Bool)

(declare-fun tp!2398483 () Bool)

(assert (=> b!8013634 (= e!4720634 (and tp!2398481 tp!2398483))))

(declare-fun b!8013633 () Bool)

(assert (=> b!8013633 (= e!4720634 tp_is_empty!53909)))

(assert (=> b!8013295 (= tp!2398374 e!4720634)))

(declare-fun b!8013636 () Bool)

(declare-fun tp!2398484 () Bool)

(declare-fun tp!2398480 () Bool)

(assert (=> b!8013636 (= e!4720634 (and tp!2398484 tp!2398480))))

(declare-fun b!8013635 () Bool)

(declare-fun tp!2398482 () Bool)

(assert (=> b!8013635 (= e!4720634 tp!2398482)))

(assert (= (and b!8013295 ((_ is ElementMatch!21683) (regOne!43879 (regOne!43879 r!15422)))) b!8013633))

(assert (= (and b!8013295 ((_ is Concat!30682) (regOne!43879 (regOne!43879 r!15422)))) b!8013634))

(assert (= (and b!8013295 ((_ is Star!21683) (regOne!43879 (regOne!43879 r!15422)))) b!8013635))

(assert (= (and b!8013295 ((_ is Union!21683) (regOne!43879 (regOne!43879 r!15422)))) b!8013636))

(declare-fun b!8013638 () Bool)

(declare-fun e!4720635 () Bool)

(declare-fun tp!2398486 () Bool)

(declare-fun tp!2398488 () Bool)

(assert (=> b!8013638 (= e!4720635 (and tp!2398486 tp!2398488))))

(declare-fun b!8013637 () Bool)

(assert (=> b!8013637 (= e!4720635 tp_is_empty!53909)))

(assert (=> b!8013295 (= tp!2398370 e!4720635)))

(declare-fun b!8013640 () Bool)

(declare-fun tp!2398489 () Bool)

(declare-fun tp!2398485 () Bool)

(assert (=> b!8013640 (= e!4720635 (and tp!2398489 tp!2398485))))

(declare-fun b!8013639 () Bool)

(declare-fun tp!2398487 () Bool)

(assert (=> b!8013639 (= e!4720635 tp!2398487)))

(assert (= (and b!8013295 ((_ is ElementMatch!21683) (regTwo!43879 (regOne!43879 r!15422)))) b!8013637))

(assert (= (and b!8013295 ((_ is Concat!30682) (regTwo!43879 (regOne!43879 r!15422)))) b!8013638))

(assert (= (and b!8013295 ((_ is Star!21683) (regTwo!43879 (regOne!43879 r!15422)))) b!8013639))

(assert (= (and b!8013295 ((_ is Union!21683) (regTwo!43879 (regOne!43879 r!15422)))) b!8013640))

(declare-fun b!8013642 () Bool)

(declare-fun e!4720636 () Bool)

(declare-fun tp!2398491 () Bool)

(declare-fun tp!2398493 () Bool)

(assert (=> b!8013642 (= e!4720636 (and tp!2398491 tp!2398493))))

(declare-fun b!8013641 () Bool)

(assert (=> b!8013641 (= e!4720636 tp_is_empty!53909)))

(assert (=> b!8013301 (= tp!2398381 e!4720636)))

(declare-fun b!8013644 () Bool)

(declare-fun tp!2398494 () Bool)

(declare-fun tp!2398490 () Bool)

(assert (=> b!8013644 (= e!4720636 (and tp!2398494 tp!2398490))))

(declare-fun b!8013643 () Bool)

(declare-fun tp!2398492 () Bool)

(assert (=> b!8013643 (= e!4720636 tp!2398492)))

(assert (= (and b!8013301 ((_ is ElementMatch!21683) (regOne!43878 (reg!22012 r!15422)))) b!8013641))

(assert (= (and b!8013301 ((_ is Concat!30682) (regOne!43878 (reg!22012 r!15422)))) b!8013642))

(assert (= (and b!8013301 ((_ is Star!21683) (regOne!43878 (reg!22012 r!15422)))) b!8013643))

(assert (= (and b!8013301 ((_ is Union!21683) (regOne!43878 (reg!22012 r!15422)))) b!8013644))

(declare-fun b!8013646 () Bool)

(declare-fun e!4720637 () Bool)

(declare-fun tp!2398496 () Bool)

(declare-fun tp!2398498 () Bool)

(assert (=> b!8013646 (= e!4720637 (and tp!2398496 tp!2398498))))

(declare-fun b!8013645 () Bool)

(assert (=> b!8013645 (= e!4720637 tp_is_empty!53909)))

(assert (=> b!8013301 (= tp!2398383 e!4720637)))

(declare-fun b!8013648 () Bool)

(declare-fun tp!2398499 () Bool)

(declare-fun tp!2398495 () Bool)

(assert (=> b!8013648 (= e!4720637 (and tp!2398499 tp!2398495))))

(declare-fun b!8013647 () Bool)

(declare-fun tp!2398497 () Bool)

(assert (=> b!8013647 (= e!4720637 tp!2398497)))

(assert (= (and b!8013301 ((_ is ElementMatch!21683) (regTwo!43878 (reg!22012 r!15422)))) b!8013645))

(assert (= (and b!8013301 ((_ is Concat!30682) (regTwo!43878 (reg!22012 r!15422)))) b!8013646))

(assert (= (and b!8013301 ((_ is Star!21683) (regTwo!43878 (reg!22012 r!15422)))) b!8013647))

(assert (= (and b!8013301 ((_ is Union!21683) (regTwo!43878 (reg!22012 r!15422)))) b!8013648))

(declare-fun b!8013650 () Bool)

(declare-fun e!4720638 () Bool)

(declare-fun tp!2398501 () Bool)

(declare-fun tp!2398503 () Bool)

(assert (=> b!8013650 (= e!4720638 (and tp!2398501 tp!2398503))))

(declare-fun b!8013649 () Bool)

(assert (=> b!8013649 (= e!4720638 tp_is_empty!53909)))

(assert (=> b!8013282 (= tp!2398361 e!4720638)))

(declare-fun b!8013652 () Bool)

(declare-fun tp!2398504 () Bool)

(declare-fun tp!2398500 () Bool)

(assert (=> b!8013652 (= e!4720638 (and tp!2398504 tp!2398500))))

(declare-fun b!8013651 () Bool)

(declare-fun tp!2398502 () Bool)

(assert (=> b!8013651 (= e!4720638 tp!2398502)))

(assert (= (and b!8013282 ((_ is ElementMatch!21683) (regOne!43879 (regOne!43878 r!15422)))) b!8013649))

(assert (= (and b!8013282 ((_ is Concat!30682) (regOne!43879 (regOne!43878 r!15422)))) b!8013650))

(assert (= (and b!8013282 ((_ is Star!21683) (regOne!43879 (regOne!43878 r!15422)))) b!8013651))

(assert (= (and b!8013282 ((_ is Union!21683) (regOne!43879 (regOne!43878 r!15422)))) b!8013652))

(declare-fun b!8013654 () Bool)

(declare-fun e!4720639 () Bool)

(declare-fun tp!2398506 () Bool)

(declare-fun tp!2398508 () Bool)

(assert (=> b!8013654 (= e!4720639 (and tp!2398506 tp!2398508))))

(declare-fun b!8013653 () Bool)

(assert (=> b!8013653 (= e!4720639 tp_is_empty!53909)))

(assert (=> b!8013282 (= tp!2398357 e!4720639)))

(declare-fun b!8013656 () Bool)

(declare-fun tp!2398509 () Bool)

(declare-fun tp!2398505 () Bool)

(assert (=> b!8013656 (= e!4720639 (and tp!2398509 tp!2398505))))

(declare-fun b!8013655 () Bool)

(declare-fun tp!2398507 () Bool)

(assert (=> b!8013655 (= e!4720639 tp!2398507)))

(assert (= (and b!8013282 ((_ is ElementMatch!21683) (regTwo!43879 (regOne!43878 r!15422)))) b!8013653))

(assert (= (and b!8013282 ((_ is Concat!30682) (regTwo!43879 (regOne!43878 r!15422)))) b!8013654))

(assert (= (and b!8013282 ((_ is Star!21683) (regTwo!43879 (regOne!43878 r!15422)))) b!8013655))

(assert (= (and b!8013282 ((_ is Union!21683) (regTwo!43879 (regOne!43878 r!15422)))) b!8013656))

(declare-fun b!8013658 () Bool)

(declare-fun e!4720640 () Bool)

(declare-fun tp!2398511 () Bool)

(declare-fun tp!2398513 () Bool)

(assert (=> b!8013658 (= e!4720640 (and tp!2398511 tp!2398513))))

(declare-fun b!8013657 () Bool)

(assert (=> b!8013657 (= e!4720640 tp_is_empty!53909)))

(assert (=> b!8013281 (= tp!2398359 e!4720640)))

(declare-fun b!8013660 () Bool)

(declare-fun tp!2398514 () Bool)

(declare-fun tp!2398510 () Bool)

(assert (=> b!8013660 (= e!4720640 (and tp!2398514 tp!2398510))))

(declare-fun b!8013659 () Bool)

(declare-fun tp!2398512 () Bool)

(assert (=> b!8013659 (= e!4720640 tp!2398512)))

(assert (= (and b!8013281 ((_ is ElementMatch!21683) (reg!22012 (regOne!43878 r!15422)))) b!8013657))

(assert (= (and b!8013281 ((_ is Concat!30682) (reg!22012 (regOne!43878 r!15422)))) b!8013658))

(assert (= (and b!8013281 ((_ is Star!21683) (reg!22012 (regOne!43878 r!15422)))) b!8013659))

(assert (= (and b!8013281 ((_ is Union!21683) (reg!22012 (regOne!43878 r!15422)))) b!8013660))

(declare-fun b!8013662 () Bool)

(declare-fun e!4720641 () Bool)

(declare-fun tp!2398516 () Bool)

(declare-fun tp!2398518 () Bool)

(assert (=> b!8013662 (= e!4720641 (and tp!2398516 tp!2398518))))

(declare-fun b!8013661 () Bool)

(assert (=> b!8013661 (= e!4720641 tp_is_empty!53909)))

(assert (=> b!8013302 (= tp!2398382 e!4720641)))

(declare-fun b!8013664 () Bool)

(declare-fun tp!2398519 () Bool)

(declare-fun tp!2398515 () Bool)

(assert (=> b!8013664 (= e!4720641 (and tp!2398519 tp!2398515))))

(declare-fun b!8013663 () Bool)

(declare-fun tp!2398517 () Bool)

(assert (=> b!8013663 (= e!4720641 tp!2398517)))

(assert (= (and b!8013302 ((_ is ElementMatch!21683) (reg!22012 (reg!22012 r!15422)))) b!8013661))

(assert (= (and b!8013302 ((_ is Concat!30682) (reg!22012 (reg!22012 r!15422)))) b!8013662))

(assert (= (and b!8013302 ((_ is Star!21683) (reg!22012 (reg!22012 r!15422)))) b!8013663))

(assert (= (and b!8013302 ((_ is Union!21683) (reg!22012 (reg!22012 r!15422)))) b!8013664))

(declare-fun b!8013666 () Bool)

(declare-fun e!4720642 () Bool)

(declare-fun tp!2398521 () Bool)

(declare-fun tp!2398523 () Bool)

(assert (=> b!8013666 (= e!4720642 (and tp!2398521 tp!2398523))))

(declare-fun b!8013665 () Bool)

(assert (=> b!8013665 (= e!4720642 tp_is_empty!53909)))

(assert (=> b!8013293 (= tp!2398371 e!4720642)))

(declare-fun b!8013668 () Bool)

(declare-fun tp!2398524 () Bool)

(declare-fun tp!2398520 () Bool)

(assert (=> b!8013668 (= e!4720642 (and tp!2398524 tp!2398520))))

(declare-fun b!8013667 () Bool)

(declare-fun tp!2398522 () Bool)

(assert (=> b!8013667 (= e!4720642 tp!2398522)))

(assert (= (and b!8013293 ((_ is ElementMatch!21683) (regOne!43878 (regOne!43879 r!15422)))) b!8013665))

(assert (= (and b!8013293 ((_ is Concat!30682) (regOne!43878 (regOne!43879 r!15422)))) b!8013666))

(assert (= (and b!8013293 ((_ is Star!21683) (regOne!43878 (regOne!43879 r!15422)))) b!8013667))

(assert (= (and b!8013293 ((_ is Union!21683) (regOne!43878 (regOne!43879 r!15422)))) b!8013668))

(declare-fun b!8013670 () Bool)

(declare-fun e!4720643 () Bool)

(declare-fun tp!2398526 () Bool)

(declare-fun tp!2398528 () Bool)

(assert (=> b!8013670 (= e!4720643 (and tp!2398526 tp!2398528))))

(declare-fun b!8013669 () Bool)

(assert (=> b!8013669 (= e!4720643 tp_is_empty!53909)))

(assert (=> b!8013293 (= tp!2398373 e!4720643)))

(declare-fun b!8013672 () Bool)

(declare-fun tp!2398529 () Bool)

(declare-fun tp!2398525 () Bool)

(assert (=> b!8013672 (= e!4720643 (and tp!2398529 tp!2398525))))

(declare-fun b!8013671 () Bool)

(declare-fun tp!2398527 () Bool)

(assert (=> b!8013671 (= e!4720643 tp!2398527)))

(assert (= (and b!8013293 ((_ is ElementMatch!21683) (regTwo!43878 (regOne!43879 r!15422)))) b!8013669))

(assert (= (and b!8013293 ((_ is Concat!30682) (regTwo!43878 (regOne!43879 r!15422)))) b!8013670))

(assert (= (and b!8013293 ((_ is Star!21683) (regTwo!43878 (regOne!43879 r!15422)))) b!8013671))

(assert (= (and b!8013293 ((_ is Union!21683) (regTwo!43878 (regOne!43879 r!15422)))) b!8013672))

(declare-fun b!8013674 () Bool)

(declare-fun e!4720644 () Bool)

(declare-fun tp!2398531 () Bool)

(declare-fun tp!2398533 () Bool)

(assert (=> b!8013674 (= e!4720644 (and tp!2398531 tp!2398533))))

(declare-fun b!8013673 () Bool)

(assert (=> b!8013673 (= e!4720644 tp_is_empty!53909)))

(assert (=> b!8013285 (= tp!2398364 e!4720644)))

(declare-fun b!8013676 () Bool)

(declare-fun tp!2398534 () Bool)

(declare-fun tp!2398530 () Bool)

(assert (=> b!8013676 (= e!4720644 (and tp!2398534 tp!2398530))))

(declare-fun b!8013675 () Bool)

(declare-fun tp!2398532 () Bool)

(assert (=> b!8013675 (= e!4720644 tp!2398532)))

(assert (= (and b!8013285 ((_ is ElementMatch!21683) (reg!22012 (regTwo!43878 r!15422)))) b!8013673))

(assert (= (and b!8013285 ((_ is Concat!30682) (reg!22012 (regTwo!43878 r!15422)))) b!8013674))

(assert (= (and b!8013285 ((_ is Star!21683) (reg!22012 (regTwo!43878 r!15422)))) b!8013675))

(assert (= (and b!8013285 ((_ is Union!21683) (reg!22012 (regTwo!43878 r!15422)))) b!8013676))

(declare-fun b!8013678 () Bool)

(declare-fun e!4720645 () Bool)

(declare-fun tp!2398536 () Bool)

(declare-fun tp!2398538 () Bool)

(assert (=> b!8013678 (= e!4720645 (and tp!2398536 tp!2398538))))

(declare-fun b!8013677 () Bool)

(assert (=> b!8013677 (= e!4720645 tp_is_empty!53909)))

(assert (=> b!8013284 (= tp!2398363 e!4720645)))

(declare-fun b!8013680 () Bool)

(declare-fun tp!2398539 () Bool)

(declare-fun tp!2398535 () Bool)

(assert (=> b!8013680 (= e!4720645 (and tp!2398539 tp!2398535))))

(declare-fun b!8013679 () Bool)

(declare-fun tp!2398537 () Bool)

(assert (=> b!8013679 (= e!4720645 tp!2398537)))

(assert (= (and b!8013284 ((_ is ElementMatch!21683) (regOne!43878 (regTwo!43878 r!15422)))) b!8013677))

(assert (= (and b!8013284 ((_ is Concat!30682) (regOne!43878 (regTwo!43878 r!15422)))) b!8013678))

(assert (= (and b!8013284 ((_ is Star!21683) (regOne!43878 (regTwo!43878 r!15422)))) b!8013679))

(assert (= (and b!8013284 ((_ is Union!21683) (regOne!43878 (regTwo!43878 r!15422)))) b!8013680))

(declare-fun b!8013682 () Bool)

(declare-fun e!4720646 () Bool)

(declare-fun tp!2398541 () Bool)

(declare-fun tp!2398543 () Bool)

(assert (=> b!8013682 (= e!4720646 (and tp!2398541 tp!2398543))))

(declare-fun b!8013681 () Bool)

(assert (=> b!8013681 (= e!4720646 tp_is_empty!53909)))

(assert (=> b!8013284 (= tp!2398365 e!4720646)))

(declare-fun b!8013684 () Bool)

(declare-fun tp!2398544 () Bool)

(declare-fun tp!2398540 () Bool)

(assert (=> b!8013684 (= e!4720646 (and tp!2398544 tp!2398540))))

(declare-fun b!8013683 () Bool)

(declare-fun tp!2398542 () Bool)

(assert (=> b!8013683 (= e!4720646 tp!2398542)))

(assert (= (and b!8013284 ((_ is ElementMatch!21683) (regTwo!43878 (regTwo!43878 r!15422)))) b!8013681))

(assert (= (and b!8013284 ((_ is Concat!30682) (regTwo!43878 (regTwo!43878 r!15422)))) b!8013682))

(assert (= (and b!8013284 ((_ is Star!21683) (regTwo!43878 (regTwo!43878 r!15422)))) b!8013683))

(assert (= (and b!8013284 ((_ is Union!21683) (regTwo!43878 (regTwo!43878 r!15422)))) b!8013684))

(declare-fun b!8013686 () Bool)

(declare-fun e!4720647 () Bool)

(declare-fun tp!2398546 () Bool)

(declare-fun tp!2398548 () Bool)

(assert (=> b!8013686 (= e!4720647 (and tp!2398546 tp!2398548))))

(declare-fun b!8013685 () Bool)

(assert (=> b!8013685 (= e!4720647 tp_is_empty!53909)))

(assert (=> b!8013297 (= tp!2398376 e!4720647)))

(declare-fun b!8013688 () Bool)

(declare-fun tp!2398549 () Bool)

(declare-fun tp!2398545 () Bool)

(assert (=> b!8013688 (= e!4720647 (and tp!2398549 tp!2398545))))

(declare-fun b!8013687 () Bool)

(declare-fun tp!2398547 () Bool)

(assert (=> b!8013687 (= e!4720647 tp!2398547)))

(assert (= (and b!8013297 ((_ is ElementMatch!21683) (regOne!43878 (regTwo!43879 r!15422)))) b!8013685))

(assert (= (and b!8013297 ((_ is Concat!30682) (regOne!43878 (regTwo!43879 r!15422)))) b!8013686))

(assert (= (and b!8013297 ((_ is Star!21683) (regOne!43878 (regTwo!43879 r!15422)))) b!8013687))

(assert (= (and b!8013297 ((_ is Union!21683) (regOne!43878 (regTwo!43879 r!15422)))) b!8013688))

(declare-fun b!8013690 () Bool)

(declare-fun e!4720648 () Bool)

(declare-fun tp!2398551 () Bool)

(declare-fun tp!2398553 () Bool)

(assert (=> b!8013690 (= e!4720648 (and tp!2398551 tp!2398553))))

(declare-fun b!8013689 () Bool)

(assert (=> b!8013689 (= e!4720648 tp_is_empty!53909)))

(assert (=> b!8013297 (= tp!2398378 e!4720648)))

(declare-fun b!8013692 () Bool)

(declare-fun tp!2398554 () Bool)

(declare-fun tp!2398550 () Bool)

(assert (=> b!8013692 (= e!4720648 (and tp!2398554 tp!2398550))))

(declare-fun b!8013691 () Bool)

(declare-fun tp!2398552 () Bool)

(assert (=> b!8013691 (= e!4720648 tp!2398552)))

(assert (= (and b!8013297 ((_ is ElementMatch!21683) (regTwo!43878 (regTwo!43879 r!15422)))) b!8013689))

(assert (= (and b!8013297 ((_ is Concat!30682) (regTwo!43878 (regTwo!43879 r!15422)))) b!8013690))

(assert (= (and b!8013297 ((_ is Star!21683) (regTwo!43878 (regTwo!43879 r!15422)))) b!8013691))

(assert (= (and b!8013297 ((_ is Union!21683) (regTwo!43878 (regTwo!43879 r!15422)))) b!8013692))

(check-sat (not b!8013534) (not bm!744312) (not b!8013607) (not b!8013618) (not b!8013621) (not bm!744314) (not b!8013603) (not b!8013423) (not b!8013529) (not b!8013623) (not b!8013632) (not b!8013672) (not b!8013550) (not b!8013476) (not b!8013432) (not b!8013688) (not b!8013634) (not b!8013543) (not b!8013587) (not b!8013524) (not b!8013593) (not b!8013502) (not b!8013664) (not b!8013613) (not b!8013548) (not b!8013606) (not b!8013406) (not b!8013578) (not b!8013605) (not bm!744311) (not b!8013471) (not d!2389110) (not b!8013663) (not b!8013647) (not b!8013552) (not b!8013589) (not b!8013514) (not b!8013554) (not b!8013666) (not d!2389124) (not b!8013474) (not d!2389048) (not b!8013692) (not b!8013597) (not d!2389068) (not b!8013660) (not bm!744326) (not b!8013488) (not b!8013492) (not b!8013546) (not b!8013611) (not d!2389024) (not b!8013658) (not b!8013531) (not b!8013626) (not b!8013577) (not b!8013625) (not b!8013622) (not b!8013656) (not b!8013654) (not b!8013418) (not b!8013691) (not b!8013407) (not b!8013644) (not b!8013494) (not b!8013435) (not b!8013682) (not b!8013630) (not b!8013631) (not b!8013674) (not b!8013434) (not b!8013610) (not b!8013648) (not b!8013553) (not b!8013679) (not b!8013614) (not bm!744313) (not b!8013404) (not b!8013629) (not b!8013627) (not b!8013512) (not b!8013602) (not b!8013414) (not b!8013652) (not b!8013596) (not d!2389060) (not d!2389026) (not d!2389018) (not d!2389058) (not b!8013438) (not b!8013509) (not d!2389074) (not d!2389046) (not b!8013646) (not d!2389020) tp_is_empty!53909 (not b!8013675) (not b!8013462) (not b!8013671) (not b!8013411) (not b!8013479) (not b!8013415) (not bm!744331) (not b!8013650) (not b!8013427) (not b!8013592) (not b!8013686) (not b!8013400) (not d!2389052) (not b!8013636) (not b!8013638) (not b!8013410) (not b!8013527) (not b!8013599) (not b!8013676) (not b!8013609) (not b!8013533) (not d!2389062) (not b!8013516) (not b!8013475) (not b!8013601) (not b!8013617) (not b!8013402) (not b!8013635) (not b!8013683) (not bm!744309) (not b!8013640) (not bm!744308) (not b!8013655) (not b!8013643) (not b!8013419) (not b!8013430) (not b!8013667) (not b!8013642) (not bm!744332) (not b!8013579) (not b!8013668) (not b!8013508) (not b!8013639) (not b!8013680) (not b!8013583) (not b!8013426) (not bm!744317) (not b!8013422) (not b!8013408) (not b!8013678) (not d!2389016) (not b!8013684) (not bm!744318) (not b!8013598) (not b!8013615) (not b!8013436) (not bm!744322) (not b!8013687) (not b!8013659) (not b!8013590) (not bm!744325) (not b!8013670) (not d!2389028) (not b!8013461) (not b!8013662) (not d!2389090) (not b!8013506) (not b!8013398) (not b!8013585) (not b!8013530) (not d!2389022) (not b!8013619) (not b!8013581) (not b!8013690) (not d!2389088) (not b!8013594) (not b!8013651) (not bm!744323) (not b!8013478))
(check-sat)
