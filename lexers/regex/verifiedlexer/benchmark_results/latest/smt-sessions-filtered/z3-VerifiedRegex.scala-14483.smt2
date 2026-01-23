; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753608 () Bool)

(assert start!753608)

(declare-fun b!8008523 () Bool)

(declare-fun e!4717701 () Bool)

(declare-fun e!4717694 () Bool)

(assert (=> b!8008523 (= e!4717701 (not e!4717694))))

(declare-fun res!3166827 () Bool)

(assert (=> b!8008523 (=> res!3166827 e!4717694)))

(declare-datatypes ((C!43632 0))(
  ( (C!43633 (val!32364 Int)) )
))
(declare-datatypes ((List!74876 0))(
  ( (Nil!74752) (Cons!74752 (h!81200 C!43632) (t!390619 List!74876)) )
))
(declare-fun testedP!353 () List!74876)

(declare-fun totalInput!1349 () List!74876)

(declare-fun isPrefix!6701 (List!74876 List!74876) Bool)

(assert (=> b!8008523 (= res!3166827 (not (isPrefix!6701 testedP!353 totalInput!1349)))))

(declare-fun lt!2716143 () List!74876)

(assert (=> b!8008523 (isPrefix!6701 testedP!353 lt!2716143)))

(declare-datatypes ((Unit!170746 0))(
  ( (Unit!170747) )
))
(declare-fun lt!2716146 () Unit!170746)

(declare-fun testedSuffix!271 () List!74876)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3932 (List!74876 List!74876) Unit!170746)

(assert (=> b!8008523 (= lt!2716146 (lemmaConcatTwoListThenFirstIsPrefix!3932 testedP!353 testedSuffix!271))))

(declare-fun b!8008524 () Bool)

(declare-fun e!4717699 () Bool)

(assert (=> b!8008524 (= e!4717694 e!4717699)))

(declare-fun res!3166829 () Bool)

(assert (=> b!8008524 (=> res!3166829 e!4717699)))

(declare-datatypes ((Regex!21647 0))(
  ( (ElementMatch!21647 (c!1470108 C!43632)) (Concat!30646 (regOne!43806 Regex!21647) (regTwo!43806 Regex!21647)) (EmptyExpr!21647) (Star!21647 (reg!21976 Regex!21647)) (EmptyLang!21647) (Union!21647 (regOne!43807 Regex!21647) (regTwo!43807 Regex!21647)) )
))
(declare-fun r!15422 () Regex!21647)

(declare-fun lostCause!2044 (Regex!21647) Bool)

(assert (=> b!8008524 (= res!3166829 (lostCause!2044 r!15422))))

(declare-fun lt!2716134 () List!74876)

(assert (=> b!8008524 (and (= testedSuffix!271 lt!2716134) (= lt!2716134 testedSuffix!271))))

(declare-fun lt!2716139 () Unit!170746)

(declare-fun lemmaSamePrefixThenSameSuffix!3064 (List!74876 List!74876 List!74876 List!74876 List!74876) Unit!170746)

(assert (=> b!8008524 (= lt!2716139 (lemmaSamePrefixThenSameSuffix!3064 testedP!353 testedSuffix!271 testedP!353 lt!2716134 totalInput!1349))))

(declare-fun getSuffix!3898 (List!74876 List!74876) List!74876)

(assert (=> b!8008524 (= lt!2716134 (getSuffix!3898 totalInput!1349 testedP!353))))

(declare-fun b!8008525 () Bool)

(declare-fun e!4717697 () Bool)

(declare-fun tp_is_empty!53837 () Bool)

(assert (=> b!8008525 (= e!4717697 tp_is_empty!53837)))

(declare-fun b!8008526 () Bool)

(declare-fun e!4717703 () Unit!170746)

(declare-fun Unit!170748 () Unit!170746)

(assert (=> b!8008526 (= e!4717703 Unit!170748)))

(declare-fun b!8008527 () Bool)

(declare-fun res!3166830 () Bool)

(assert (=> b!8008527 (=> res!3166830 e!4717699)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8008527 (= res!3166830 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8008528 () Bool)

(declare-fun tp!2396325 () Bool)

(declare-fun tp!2396324 () Bool)

(assert (=> b!8008528 (= e!4717697 (and tp!2396325 tp!2396324))))

(declare-fun b!8008529 () Bool)

(declare-fun e!4717700 () Bool)

(declare-fun tp!2396329 () Bool)

(assert (=> b!8008529 (= e!4717700 (and tp_is_empty!53837 tp!2396329))))

(declare-fun b!8008530 () Bool)

(declare-fun e!4717702 () Bool)

(declare-fun e!4717705 () Bool)

(assert (=> b!8008530 (= e!4717702 e!4717705)))

(declare-fun res!3166823 () Bool)

(assert (=> b!8008530 (=> (not res!3166823) (not e!4717705))))

(assert (=> b!8008530 (= res!3166823 (= lt!2716143 totalInput!1349))))

(declare-fun ++!18473 (List!74876 List!74876) List!74876)

(assert (=> b!8008530 (= lt!2716143 (++!18473 testedP!353 testedSuffix!271))))

(declare-fun b!8008531 () Bool)

(declare-fun e!4717704 () Bool)

(assert (=> b!8008531 (= e!4717705 e!4717704)))

(declare-fun res!3166825 () Bool)

(assert (=> b!8008531 (=> (not res!3166825) (not e!4717704))))

(declare-fun lt!2716144 () Int)

(assert (=> b!8008531 (= res!3166825 (= testedPSize!271 lt!2716144))))

(declare-fun size!43549 (List!74876) Int)

(assert (=> b!8008531 (= lt!2716144 (size!43549 testedP!353))))

(declare-fun b!8008532 () Bool)

(declare-fun Unit!170749 () Unit!170746)

(assert (=> b!8008532 (= e!4717703 Unit!170749)))

(declare-fun lt!2716145 () Unit!170746)

(declare-fun lemmaIsPrefixRefl!4153 (List!74876 List!74876) Unit!170746)

(assert (=> b!8008532 (= lt!2716145 (lemmaIsPrefixRefl!4153 totalInput!1349 totalInput!1349))))

(assert (=> b!8008532 (isPrefix!6701 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716138 () Unit!170746)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1727 (List!74876 List!74876 List!74876) Unit!170746)

(assert (=> b!8008532 (= lt!2716138 (lemmaIsPrefixSameLengthThenSameList!1727 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8008532 false))

(declare-fun res!3166822 () Bool)

(assert (=> start!753608 (=> (not res!3166822) (not e!4717702))))

(declare-fun validRegex!11951 (Regex!21647) Bool)

(assert (=> start!753608 (= res!3166822 (validRegex!11951 r!15422))))

(assert (=> start!753608 e!4717702))

(assert (=> start!753608 e!4717700))

(assert (=> start!753608 true))

(declare-fun e!4717698 () Bool)

(assert (=> start!753608 e!4717698))

(assert (=> start!753608 e!4717697))

(declare-fun e!4717695 () Bool)

(assert (=> start!753608 e!4717695))

(declare-fun b!8008533 () Bool)

(declare-fun tp!2396323 () Bool)

(declare-fun tp!2396326 () Bool)

(assert (=> b!8008533 (= e!4717697 (and tp!2396323 tp!2396326))))

(declare-fun b!8008534 () Bool)

(declare-fun tp!2396330 () Bool)

(assert (=> b!8008534 (= e!4717697 tp!2396330)))

(declare-fun b!8008535 () Bool)

(declare-fun e!4717693 () Bool)

(declare-fun e!4717696 () Bool)

(assert (=> b!8008535 (= e!4717693 e!4717696)))

(declare-fun res!3166824 () Bool)

(assert (=> b!8008535 (=> res!3166824 e!4717696)))

(declare-fun nullable!9705 (Regex!21647) Bool)

(assert (=> b!8008535 (= res!3166824 (nullable!9705 r!15422))))

(declare-fun lt!2716141 () List!74876)

(declare-fun lt!2716147 () List!74876)

(assert (=> b!8008535 (= (++!18473 lt!2716141 lt!2716147) totalInput!1349)))

(declare-fun lt!2716137 () C!43632)

(declare-fun lt!2716135 () Unit!170746)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3582 (List!74876 C!43632 List!74876 List!74876) Unit!170746)

(assert (=> b!8008535 (= lt!2716135 (lemmaMoveElementToOtherListKeepsConcatEq!3582 testedP!353 lt!2716137 lt!2716147 totalInput!1349))))

(declare-fun tail!15862 (List!74876) List!74876)

(assert (=> b!8008535 (= lt!2716147 (tail!15862 testedSuffix!271))))

(declare-fun head!16339 (List!74876) C!43632)

(assert (=> b!8008535 (isPrefix!6701 (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752)) totalInput!1349)))

(declare-fun lt!2716140 () Unit!170746)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1398 (List!74876 List!74876) Unit!170746)

(assert (=> b!8008535 (= lt!2716140 (lemmaAddHeadSuffixToPrefixStillPrefix!1398 testedP!353 totalInput!1349))))

(assert (=> b!8008535 (= lt!2716141 (++!18473 testedP!353 (Cons!74752 lt!2716137 Nil!74752)))))

(assert (=> b!8008535 (= lt!2716137 (head!16339 testedSuffix!271))))

(declare-fun b!8008536 () Bool)

(declare-fun tp!2396327 () Bool)

(assert (=> b!8008536 (= e!4717698 (and tp_is_empty!53837 tp!2396327))))

(declare-fun b!8008537 () Bool)

(declare-fun tp!2396328 () Bool)

(assert (=> b!8008537 (= e!4717695 (and tp_is_empty!53837 tp!2396328))))

(declare-fun b!8008538 () Bool)

(declare-fun derivativeStep!6626 (Regex!21647 C!43632) Regex!21647)

(assert (=> b!8008538 (= e!4717696 (validRegex!11951 (derivativeStep!6626 r!15422 lt!2716137)))))

(declare-fun b!8008539 () Bool)

(assert (=> b!8008539 (= e!4717699 e!4717693)))

(declare-fun res!3166828 () Bool)

(assert (=> b!8008539 (=> res!3166828 e!4717693)))

(declare-fun lt!2716136 () Int)

(assert (=> b!8008539 (= res!3166828 (>= lt!2716144 lt!2716136))))

(declare-fun lt!2716142 () Unit!170746)

(assert (=> b!8008539 (= lt!2716142 e!4717703)))

(declare-fun c!1470107 () Bool)

(assert (=> b!8008539 (= c!1470107 (= lt!2716144 lt!2716136))))

(assert (=> b!8008539 (<= lt!2716144 lt!2716136)))

(declare-fun lt!2716133 () Unit!170746)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1202 (List!74876 List!74876) Unit!170746)

(assert (=> b!8008539 (= lt!2716133 (lemmaIsPrefixThenSmallerEqSize!1202 testedP!353 totalInput!1349))))

(declare-fun b!8008540 () Bool)

(assert (=> b!8008540 (= e!4717704 e!4717701)))

(declare-fun res!3166826 () Bool)

(assert (=> b!8008540 (=> (not res!3166826) (not e!4717701))))

(assert (=> b!8008540 (= res!3166826 (= totalInputSize!629 lt!2716136))))

(assert (=> b!8008540 (= lt!2716136 (size!43549 totalInput!1349))))

(assert (= (and start!753608 res!3166822) b!8008530))

(assert (= (and b!8008530 res!3166823) b!8008531))

(assert (= (and b!8008531 res!3166825) b!8008540))

(assert (= (and b!8008540 res!3166826) b!8008523))

(assert (= (and b!8008523 (not res!3166827)) b!8008524))

(assert (= (and b!8008524 (not res!3166829)) b!8008527))

(assert (= (and b!8008527 (not res!3166830)) b!8008539))

(assert (= (and b!8008539 c!1470107) b!8008532))

(assert (= (and b!8008539 (not c!1470107)) b!8008526))

(assert (= (and b!8008539 (not res!3166828)) b!8008535))

(assert (= (and b!8008535 (not res!3166824)) b!8008538))

(get-info :version)

(assert (= (and start!753608 ((_ is Cons!74752) totalInput!1349)) b!8008529))

(assert (= (and start!753608 ((_ is Cons!74752) testedSuffix!271)) b!8008536))

(assert (= (and start!753608 ((_ is ElementMatch!21647) r!15422)) b!8008525))

(assert (= (and start!753608 ((_ is Concat!30646) r!15422)) b!8008528))

(assert (= (and start!753608 ((_ is Star!21647) r!15422)) b!8008534))

(assert (= (and start!753608 ((_ is Union!21647) r!15422)) b!8008533))

(assert (= (and start!753608 ((_ is Cons!74752) testedP!353)) b!8008537))

(declare-fun m!8373446 () Bool)

(assert (=> b!8008538 m!8373446))

(assert (=> b!8008538 m!8373446))

(declare-fun m!8373448 () Bool)

(assert (=> b!8008538 m!8373448))

(declare-fun m!8373450 () Bool)

(assert (=> b!8008532 m!8373450))

(declare-fun m!8373452 () Bool)

(assert (=> b!8008532 m!8373452))

(declare-fun m!8373454 () Bool)

(assert (=> b!8008532 m!8373454))

(declare-fun m!8373456 () Bool)

(assert (=> b!8008530 m!8373456))

(declare-fun m!8373458 () Bool)

(assert (=> b!8008535 m!8373458))

(declare-fun m!8373460 () Bool)

(assert (=> b!8008535 m!8373460))

(declare-fun m!8373462 () Bool)

(assert (=> b!8008535 m!8373462))

(declare-fun m!8373464 () Bool)

(assert (=> b!8008535 m!8373464))

(declare-fun m!8373466 () Bool)

(assert (=> b!8008535 m!8373466))

(declare-fun m!8373468 () Bool)

(assert (=> b!8008535 m!8373468))

(declare-fun m!8373470 () Bool)

(assert (=> b!8008535 m!8373470))

(declare-fun m!8373472 () Bool)

(assert (=> b!8008535 m!8373472))

(declare-fun m!8373474 () Bool)

(assert (=> b!8008535 m!8373474))

(assert (=> b!8008535 m!8373464))

(declare-fun m!8373476 () Bool)

(assert (=> b!8008535 m!8373476))

(declare-fun m!8373478 () Bool)

(assert (=> b!8008539 m!8373478))

(declare-fun m!8373480 () Bool)

(assert (=> b!8008531 m!8373480))

(declare-fun m!8373482 () Bool)

(assert (=> b!8008523 m!8373482))

(declare-fun m!8373484 () Bool)

(assert (=> b!8008523 m!8373484))

(declare-fun m!8373486 () Bool)

(assert (=> b!8008523 m!8373486))

(declare-fun m!8373488 () Bool)

(assert (=> b!8008524 m!8373488))

(declare-fun m!8373490 () Bool)

(assert (=> b!8008524 m!8373490))

(declare-fun m!8373492 () Bool)

(assert (=> b!8008524 m!8373492))

(declare-fun m!8373494 () Bool)

(assert (=> start!753608 m!8373494))

(declare-fun m!8373496 () Bool)

(assert (=> b!8008540 m!8373496))

(check-sat (not b!8008537) (not b!8008530) (not b!8008531) (not b!8008536) (not b!8008532) (not b!8008533) (not b!8008539) (not b!8008538) (not b!8008523) (not b!8008528) (not b!8008524) (not start!753608) (not b!8008529) (not b!8008540) tp_is_empty!53837 (not b!8008534) (not b!8008535))
(check-sat)
(get-model)

(declare-fun d!2388048 () Bool)

(assert (=> d!2388048 (isPrefix!6701 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716150 () Unit!170746)

(declare-fun choose!60312 (List!74876 List!74876) Unit!170746)

(assert (=> d!2388048 (= lt!2716150 (choose!60312 totalInput!1349 totalInput!1349))))

(assert (=> d!2388048 (= (lemmaIsPrefixRefl!4153 totalInput!1349 totalInput!1349) lt!2716150)))

(declare-fun bs!1970787 () Bool)

(assert (= bs!1970787 d!2388048))

(assert (=> bs!1970787 m!8373452))

(declare-fun m!8373498 () Bool)

(assert (=> bs!1970787 m!8373498))

(assert (=> b!8008532 d!2388048))

(declare-fun b!8008550 () Bool)

(declare-fun res!3166839 () Bool)

(declare-fun e!4717712 () Bool)

(assert (=> b!8008550 (=> (not res!3166839) (not e!4717712))))

(assert (=> b!8008550 (= res!3166839 (= (head!16339 totalInput!1349) (head!16339 totalInput!1349)))))

(declare-fun b!8008549 () Bool)

(declare-fun e!4717713 () Bool)

(assert (=> b!8008549 (= e!4717713 e!4717712)))

(declare-fun res!3166841 () Bool)

(assert (=> b!8008549 (=> (not res!3166841) (not e!4717712))))

(assert (=> b!8008549 (= res!3166841 (not ((_ is Nil!74752) totalInput!1349)))))

(declare-fun b!8008552 () Bool)

(declare-fun e!4717714 () Bool)

(assert (=> b!8008552 (= e!4717714 (>= (size!43549 totalInput!1349) (size!43549 totalInput!1349)))))

(declare-fun b!8008551 () Bool)

(assert (=> b!8008551 (= e!4717712 (isPrefix!6701 (tail!15862 totalInput!1349) (tail!15862 totalInput!1349)))))

(declare-fun d!2388050 () Bool)

(assert (=> d!2388050 e!4717714))

(declare-fun res!3166840 () Bool)

(assert (=> d!2388050 (=> res!3166840 e!4717714)))

(declare-fun lt!2716153 () Bool)

(assert (=> d!2388050 (= res!3166840 (not lt!2716153))))

(assert (=> d!2388050 (= lt!2716153 e!4717713)))

(declare-fun res!3166842 () Bool)

(assert (=> d!2388050 (=> res!3166842 e!4717713)))

(assert (=> d!2388050 (= res!3166842 ((_ is Nil!74752) totalInput!1349))))

(assert (=> d!2388050 (= (isPrefix!6701 totalInput!1349 totalInput!1349) lt!2716153)))

(assert (= (and d!2388050 (not res!3166842)) b!8008549))

(assert (= (and b!8008549 res!3166841) b!8008550))

(assert (= (and b!8008550 res!3166839) b!8008551))

(assert (= (and d!2388050 (not res!3166840)) b!8008552))

(declare-fun m!8373500 () Bool)

(assert (=> b!8008550 m!8373500))

(assert (=> b!8008550 m!8373500))

(assert (=> b!8008552 m!8373496))

(assert (=> b!8008552 m!8373496))

(declare-fun m!8373502 () Bool)

(assert (=> b!8008551 m!8373502))

(assert (=> b!8008551 m!8373502))

(assert (=> b!8008551 m!8373502))

(assert (=> b!8008551 m!8373502))

(declare-fun m!8373504 () Bool)

(assert (=> b!8008551 m!8373504))

(assert (=> b!8008532 d!2388050))

(declare-fun d!2388052 () Bool)

(assert (=> d!2388052 (= totalInput!1349 testedP!353)))

(declare-fun lt!2716156 () Unit!170746)

(declare-fun choose!60314 (List!74876 List!74876 List!74876) Unit!170746)

(assert (=> d!2388052 (= lt!2716156 (choose!60314 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388052 (isPrefix!6701 totalInput!1349 totalInput!1349)))

(assert (=> d!2388052 (= (lemmaIsPrefixSameLengthThenSameList!1727 totalInput!1349 testedP!353 totalInput!1349) lt!2716156)))

(declare-fun bs!1970788 () Bool)

(assert (= bs!1970788 d!2388052))

(declare-fun m!8373506 () Bool)

(assert (=> bs!1970788 m!8373506))

(assert (=> bs!1970788 m!8373452))

(assert (=> b!8008532 d!2388052))

(declare-fun d!2388054 () Bool)

(declare-fun lt!2716159 () Int)

(assert (=> d!2388054 (>= lt!2716159 0)))

(declare-fun e!4717717 () Int)

(assert (=> d!2388054 (= lt!2716159 e!4717717)))

(declare-fun c!1470111 () Bool)

(assert (=> d!2388054 (= c!1470111 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388054 (= (size!43549 testedP!353) lt!2716159)))

(declare-fun b!8008557 () Bool)

(assert (=> b!8008557 (= e!4717717 0)))

(declare-fun b!8008558 () Bool)

(assert (=> b!8008558 (= e!4717717 (+ 1 (size!43549 (t!390619 testedP!353))))))

(assert (= (and d!2388054 c!1470111) b!8008557))

(assert (= (and d!2388054 (not c!1470111)) b!8008558))

(declare-fun m!8373508 () Bool)

(assert (=> b!8008558 m!8373508))

(assert (=> b!8008531 d!2388054))

(declare-fun d!2388058 () Bool)

(declare-fun e!4717735 () Bool)

(assert (=> d!2388058 e!4717735))

(declare-fun res!3166863 () Bool)

(assert (=> d!2388058 (=> (not res!3166863) (not e!4717735))))

(declare-fun lt!2716166 () List!74876)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15900 (List!74876) (InoxSet C!43632))

(assert (=> d!2388058 (= res!3166863 (= (content!15900 lt!2716166) ((_ map or) (content!15900 testedP!353) (content!15900 testedSuffix!271))))))

(declare-fun e!4717734 () List!74876)

(assert (=> d!2388058 (= lt!2716166 e!4717734)))

(declare-fun c!1470114 () Bool)

(assert (=> d!2388058 (= c!1470114 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388058 (= (++!18473 testedP!353 testedSuffix!271) lt!2716166)))

(declare-fun b!8008586 () Bool)

(assert (=> b!8008586 (= e!4717735 (or (not (= testedSuffix!271 Nil!74752)) (= lt!2716166 testedP!353)))))

(declare-fun b!8008584 () Bool)

(assert (=> b!8008584 (= e!4717734 (Cons!74752 (h!81200 testedP!353) (++!18473 (t!390619 testedP!353) testedSuffix!271)))))

(declare-fun b!8008583 () Bool)

(assert (=> b!8008583 (= e!4717734 testedSuffix!271)))

(declare-fun b!8008585 () Bool)

(declare-fun res!3166864 () Bool)

(assert (=> b!8008585 (=> (not res!3166864) (not e!4717735))))

(assert (=> b!8008585 (= res!3166864 (= (size!43549 lt!2716166) (+ (size!43549 testedP!353) (size!43549 testedSuffix!271))))))

(assert (= (and d!2388058 c!1470114) b!8008583))

(assert (= (and d!2388058 (not c!1470114)) b!8008584))

(assert (= (and d!2388058 res!3166863) b!8008585))

(assert (= (and b!8008585 res!3166864) b!8008586))

(declare-fun m!8373526 () Bool)

(assert (=> d!2388058 m!8373526))

(declare-fun m!8373530 () Bool)

(assert (=> d!2388058 m!8373530))

(declare-fun m!8373532 () Bool)

(assert (=> d!2388058 m!8373532))

(declare-fun m!8373534 () Bool)

(assert (=> b!8008584 m!8373534))

(declare-fun m!8373536 () Bool)

(assert (=> b!8008585 m!8373536))

(assert (=> b!8008585 m!8373480))

(declare-fun m!8373538 () Bool)

(assert (=> b!8008585 m!8373538))

(assert (=> b!8008530 d!2388058))

(declare-fun d!2388064 () Bool)

(assert (=> d!2388064 (isPrefix!6701 (++!18473 testedP!353 (Cons!74752 (head!16339 (getSuffix!3898 totalInput!1349 testedP!353)) Nil!74752)) totalInput!1349)))

(declare-fun lt!2716172 () Unit!170746)

(declare-fun choose!60316 (List!74876 List!74876) Unit!170746)

(assert (=> d!2388064 (= lt!2716172 (choose!60316 testedP!353 totalInput!1349))))

(assert (=> d!2388064 (isPrefix!6701 testedP!353 totalInput!1349)))

(assert (=> d!2388064 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1398 testedP!353 totalInput!1349) lt!2716172)))

(declare-fun bs!1970790 () Bool)

(assert (= bs!1970790 d!2388064))

(assert (=> bs!1970790 m!8373482))

(assert (=> bs!1970790 m!8373492))

(declare-fun m!8373544 () Bool)

(assert (=> bs!1970790 m!8373544))

(assert (=> bs!1970790 m!8373492))

(declare-fun m!8373546 () Bool)

(assert (=> bs!1970790 m!8373546))

(declare-fun m!8373548 () Bool)

(assert (=> bs!1970790 m!8373548))

(assert (=> bs!1970790 m!8373546))

(declare-fun m!8373550 () Bool)

(assert (=> bs!1970790 m!8373550))

(assert (=> b!8008535 d!2388064))

(declare-fun d!2388068 () Bool)

(assert (=> d!2388068 (= (head!16339 testedSuffix!271) (h!81200 testedSuffix!271))))

(assert (=> b!8008535 d!2388068))

(declare-fun d!2388070 () Bool)

(declare-fun nullableFct!3832 (Regex!21647) Bool)

(assert (=> d!2388070 (= (nullable!9705 r!15422) (nullableFct!3832 r!15422))))

(declare-fun bs!1970791 () Bool)

(assert (= bs!1970791 d!2388070))

(declare-fun m!8373552 () Bool)

(assert (=> bs!1970791 m!8373552))

(assert (=> b!8008535 d!2388070))

(declare-fun d!2388072 () Bool)

(assert (=> d!2388072 (= (head!16339 lt!2716134) (h!81200 lt!2716134))))

(assert (=> b!8008535 d!2388072))

(declare-fun d!2388074 () Bool)

(assert (=> d!2388074 (= (++!18473 (++!18473 testedP!353 (Cons!74752 lt!2716137 Nil!74752)) lt!2716147) totalInput!1349)))

(declare-fun lt!2716178 () Unit!170746)

(declare-fun choose!60317 (List!74876 C!43632 List!74876 List!74876) Unit!170746)

(assert (=> d!2388074 (= lt!2716178 (choose!60317 testedP!353 lt!2716137 lt!2716147 totalInput!1349))))

(assert (=> d!2388074 (= (++!18473 testedP!353 (Cons!74752 lt!2716137 lt!2716147)) totalInput!1349)))

(assert (=> d!2388074 (= (lemmaMoveElementToOtherListKeepsConcatEq!3582 testedP!353 lt!2716137 lt!2716147 totalInput!1349) lt!2716178)))

(declare-fun bs!1970792 () Bool)

(assert (= bs!1970792 d!2388074))

(assert (=> bs!1970792 m!8373462))

(assert (=> bs!1970792 m!8373462))

(declare-fun m!8373566 () Bool)

(assert (=> bs!1970792 m!8373566))

(declare-fun m!8373568 () Bool)

(assert (=> bs!1970792 m!8373568))

(declare-fun m!8373570 () Bool)

(assert (=> bs!1970792 m!8373570))

(assert (=> b!8008535 d!2388074))

(declare-fun b!8008600 () Bool)

(declare-fun res!3166871 () Bool)

(declare-fun e!4717742 () Bool)

(assert (=> b!8008600 (=> (not res!3166871) (not e!4717742))))

(assert (=> b!8008600 (= res!3166871 (= (head!16339 (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752))) (head!16339 totalInput!1349)))))

(declare-fun b!8008599 () Bool)

(declare-fun e!4717743 () Bool)

(assert (=> b!8008599 (= e!4717743 e!4717742)))

(declare-fun res!3166873 () Bool)

(assert (=> b!8008599 (=> (not res!3166873) (not e!4717742))))

(assert (=> b!8008599 (= res!3166873 (not ((_ is Nil!74752) totalInput!1349)))))

(declare-fun b!8008602 () Bool)

(declare-fun e!4717744 () Bool)

(assert (=> b!8008602 (= e!4717744 (>= (size!43549 totalInput!1349) (size!43549 (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752)))))))

(declare-fun b!8008601 () Bool)

(assert (=> b!8008601 (= e!4717742 (isPrefix!6701 (tail!15862 (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752))) (tail!15862 totalInput!1349)))))

(declare-fun d!2388078 () Bool)

(assert (=> d!2388078 e!4717744))

(declare-fun res!3166872 () Bool)

(assert (=> d!2388078 (=> res!3166872 e!4717744)))

(declare-fun lt!2716179 () Bool)

(assert (=> d!2388078 (= res!3166872 (not lt!2716179))))

(assert (=> d!2388078 (= lt!2716179 e!4717743)))

(declare-fun res!3166874 () Bool)

(assert (=> d!2388078 (=> res!3166874 e!4717743)))

(assert (=> d!2388078 (= res!3166874 ((_ is Nil!74752) (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752))))))

(assert (=> d!2388078 (= (isPrefix!6701 (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752)) totalInput!1349) lt!2716179)))

(assert (= (and d!2388078 (not res!3166874)) b!8008599))

(assert (= (and b!8008599 res!3166873) b!8008600))

(assert (= (and b!8008600 res!3166871) b!8008601))

(assert (= (and d!2388078 (not res!3166872)) b!8008602))

(assert (=> b!8008600 m!8373464))

(declare-fun m!8373572 () Bool)

(assert (=> b!8008600 m!8373572))

(assert (=> b!8008600 m!8373500))

(assert (=> b!8008602 m!8373496))

(assert (=> b!8008602 m!8373464))

(declare-fun m!8373574 () Bool)

(assert (=> b!8008602 m!8373574))

(assert (=> b!8008601 m!8373464))

(declare-fun m!8373576 () Bool)

(assert (=> b!8008601 m!8373576))

(assert (=> b!8008601 m!8373502))

(assert (=> b!8008601 m!8373576))

(assert (=> b!8008601 m!8373502))

(declare-fun m!8373578 () Bool)

(assert (=> b!8008601 m!8373578))

(assert (=> b!8008535 d!2388078))

(declare-fun d!2388080 () Bool)

(declare-fun e!4717746 () Bool)

(assert (=> d!2388080 e!4717746))

(declare-fun res!3166875 () Bool)

(assert (=> d!2388080 (=> (not res!3166875) (not e!4717746))))

(declare-fun lt!2716180 () List!74876)

(assert (=> d!2388080 (= res!3166875 (= (content!15900 lt!2716180) ((_ map or) (content!15900 lt!2716141) (content!15900 lt!2716147))))))

(declare-fun e!4717745 () List!74876)

(assert (=> d!2388080 (= lt!2716180 e!4717745)))

(declare-fun c!1470118 () Bool)

(assert (=> d!2388080 (= c!1470118 ((_ is Nil!74752) lt!2716141))))

(assert (=> d!2388080 (= (++!18473 lt!2716141 lt!2716147) lt!2716180)))

(declare-fun b!8008606 () Bool)

(assert (=> b!8008606 (= e!4717746 (or (not (= lt!2716147 Nil!74752)) (= lt!2716180 lt!2716141)))))

(declare-fun b!8008604 () Bool)

(assert (=> b!8008604 (= e!4717745 (Cons!74752 (h!81200 lt!2716141) (++!18473 (t!390619 lt!2716141) lt!2716147)))))

(declare-fun b!8008603 () Bool)

(assert (=> b!8008603 (= e!4717745 lt!2716147)))

(declare-fun b!8008605 () Bool)

(declare-fun res!3166876 () Bool)

(assert (=> b!8008605 (=> (not res!3166876) (not e!4717746))))

(assert (=> b!8008605 (= res!3166876 (= (size!43549 lt!2716180) (+ (size!43549 lt!2716141) (size!43549 lt!2716147))))))

(assert (= (and d!2388080 c!1470118) b!8008603))

(assert (= (and d!2388080 (not c!1470118)) b!8008604))

(assert (= (and d!2388080 res!3166875) b!8008605))

(assert (= (and b!8008605 res!3166876) b!8008606))

(declare-fun m!8373580 () Bool)

(assert (=> d!2388080 m!8373580))

(declare-fun m!8373582 () Bool)

(assert (=> d!2388080 m!8373582))

(declare-fun m!8373584 () Bool)

(assert (=> d!2388080 m!8373584))

(declare-fun m!8373586 () Bool)

(assert (=> b!8008604 m!8373586))

(declare-fun m!8373588 () Bool)

(assert (=> b!8008605 m!8373588))

(declare-fun m!8373590 () Bool)

(assert (=> b!8008605 m!8373590))

(declare-fun m!8373592 () Bool)

(assert (=> b!8008605 m!8373592))

(assert (=> b!8008535 d!2388080))

(declare-fun d!2388082 () Bool)

(declare-fun e!4717748 () Bool)

(assert (=> d!2388082 e!4717748))

(declare-fun res!3166877 () Bool)

(assert (=> d!2388082 (=> (not res!3166877) (not e!4717748))))

(declare-fun lt!2716183 () List!74876)

(assert (=> d!2388082 (= res!3166877 (= (content!15900 lt!2716183) ((_ map or) (content!15900 testedP!353) (content!15900 (Cons!74752 (head!16339 lt!2716134) Nil!74752)))))))

(declare-fun e!4717747 () List!74876)

(assert (=> d!2388082 (= lt!2716183 e!4717747)))

(declare-fun c!1470119 () Bool)

(assert (=> d!2388082 (= c!1470119 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388082 (= (++!18473 testedP!353 (Cons!74752 (head!16339 lt!2716134) Nil!74752)) lt!2716183)))

(declare-fun b!8008610 () Bool)

(assert (=> b!8008610 (= e!4717748 (or (not (= (Cons!74752 (head!16339 lt!2716134) Nil!74752) Nil!74752)) (= lt!2716183 testedP!353)))))

(declare-fun b!8008608 () Bool)

(assert (=> b!8008608 (= e!4717747 (Cons!74752 (h!81200 testedP!353) (++!18473 (t!390619 testedP!353) (Cons!74752 (head!16339 lt!2716134) Nil!74752))))))

(declare-fun b!8008607 () Bool)

(assert (=> b!8008607 (= e!4717747 (Cons!74752 (head!16339 lt!2716134) Nil!74752))))

(declare-fun b!8008609 () Bool)

(declare-fun res!3166878 () Bool)

(assert (=> b!8008609 (=> (not res!3166878) (not e!4717748))))

(assert (=> b!8008609 (= res!3166878 (= (size!43549 lt!2716183) (+ (size!43549 testedP!353) (size!43549 (Cons!74752 (head!16339 lt!2716134) Nil!74752)))))))

(assert (= (and d!2388082 c!1470119) b!8008607))

(assert (= (and d!2388082 (not c!1470119)) b!8008608))

(assert (= (and d!2388082 res!3166877) b!8008609))

(assert (= (and b!8008609 res!3166878) b!8008610))

(declare-fun m!8373594 () Bool)

(assert (=> d!2388082 m!8373594))

(assert (=> d!2388082 m!8373530))

(declare-fun m!8373598 () Bool)

(assert (=> d!2388082 m!8373598))

(declare-fun m!8373600 () Bool)

(assert (=> b!8008608 m!8373600))

(declare-fun m!8373604 () Bool)

(assert (=> b!8008609 m!8373604))

(assert (=> b!8008609 m!8373480))

(declare-fun m!8373608 () Bool)

(assert (=> b!8008609 m!8373608))

(assert (=> b!8008535 d!2388082))

(declare-fun d!2388084 () Bool)

(assert (=> d!2388084 (= (tail!15862 testedSuffix!271) (t!390619 testedSuffix!271))))

(assert (=> b!8008535 d!2388084))

(declare-fun d!2388088 () Bool)

(declare-fun e!4717753 () Bool)

(assert (=> d!2388088 e!4717753))

(declare-fun res!3166883 () Bool)

(assert (=> d!2388088 (=> (not res!3166883) (not e!4717753))))

(declare-fun lt!2716186 () List!74876)

(assert (=> d!2388088 (= res!3166883 (= (content!15900 lt!2716186) ((_ map or) (content!15900 testedP!353) (content!15900 (Cons!74752 lt!2716137 Nil!74752)))))))

(declare-fun e!4717752 () List!74876)

(assert (=> d!2388088 (= lt!2716186 e!4717752)))

(declare-fun c!1470120 () Bool)

(assert (=> d!2388088 (= c!1470120 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388088 (= (++!18473 testedP!353 (Cons!74752 lt!2716137 Nil!74752)) lt!2716186)))

(declare-fun b!8008618 () Bool)

(assert (=> b!8008618 (= e!4717753 (or (not (= (Cons!74752 lt!2716137 Nil!74752) Nil!74752)) (= lt!2716186 testedP!353)))))

(declare-fun b!8008616 () Bool)

(assert (=> b!8008616 (= e!4717752 (Cons!74752 (h!81200 testedP!353) (++!18473 (t!390619 testedP!353) (Cons!74752 lt!2716137 Nil!74752))))))

(declare-fun b!8008615 () Bool)

(assert (=> b!8008615 (= e!4717752 (Cons!74752 lt!2716137 Nil!74752))))

(declare-fun b!8008617 () Bool)

(declare-fun res!3166884 () Bool)

(assert (=> b!8008617 (=> (not res!3166884) (not e!4717753))))

(assert (=> b!8008617 (= res!3166884 (= (size!43549 lt!2716186) (+ (size!43549 testedP!353) (size!43549 (Cons!74752 lt!2716137 Nil!74752)))))))

(assert (= (and d!2388088 c!1470120) b!8008615))

(assert (= (and d!2388088 (not c!1470120)) b!8008616))

(assert (= (and d!2388088 res!3166883) b!8008617))

(assert (= (and b!8008617 res!3166884) b!8008618))

(declare-fun m!8373620 () Bool)

(assert (=> d!2388088 m!8373620))

(assert (=> d!2388088 m!8373530))

(declare-fun m!8373622 () Bool)

(assert (=> d!2388088 m!8373622))

(declare-fun m!8373624 () Bool)

(assert (=> b!8008616 m!8373624))

(declare-fun m!8373626 () Bool)

(assert (=> b!8008617 m!8373626))

(assert (=> b!8008617 m!8373480))

(declare-fun m!8373628 () Bool)

(assert (=> b!8008617 m!8373628))

(assert (=> b!8008535 d!2388088))

(declare-fun d!2388092 () Bool)

(declare-fun lostCauseFct!601 (Regex!21647) Bool)

(assert (=> d!2388092 (= (lostCause!2044 r!15422) (lostCauseFct!601 r!15422))))

(declare-fun bs!1970795 () Bool)

(assert (= bs!1970795 d!2388092))

(declare-fun m!8373646 () Bool)

(assert (=> bs!1970795 m!8373646))

(assert (=> b!8008524 d!2388092))

(declare-fun d!2388100 () Bool)

(assert (=> d!2388100 (= testedSuffix!271 lt!2716134)))

(declare-fun lt!2716192 () Unit!170746)

(declare-fun choose!60319 (List!74876 List!74876 List!74876 List!74876 List!74876) Unit!170746)

(assert (=> d!2388100 (= lt!2716192 (choose!60319 testedP!353 testedSuffix!271 testedP!353 lt!2716134 totalInput!1349))))

(assert (=> d!2388100 (isPrefix!6701 testedP!353 totalInput!1349)))

(assert (=> d!2388100 (= (lemmaSamePrefixThenSameSuffix!3064 testedP!353 testedSuffix!271 testedP!353 lt!2716134 totalInput!1349) lt!2716192)))

(declare-fun bs!1970796 () Bool)

(assert (= bs!1970796 d!2388100))

(declare-fun m!8373668 () Bool)

(assert (=> bs!1970796 m!8373668))

(assert (=> bs!1970796 m!8373482))

(assert (=> b!8008524 d!2388100))

(declare-fun d!2388110 () Bool)

(declare-fun lt!2716198 () List!74876)

(assert (=> d!2388110 (= (++!18473 testedP!353 lt!2716198) totalInput!1349)))

(declare-fun e!4717766 () List!74876)

(assert (=> d!2388110 (= lt!2716198 e!4717766)))

(declare-fun c!1470128 () Bool)

(assert (=> d!2388110 (= c!1470128 ((_ is Cons!74752) testedP!353))))

(assert (=> d!2388110 (>= (size!43549 totalInput!1349) (size!43549 testedP!353))))

(assert (=> d!2388110 (= (getSuffix!3898 totalInput!1349 testedP!353) lt!2716198)))

(declare-fun b!8008641 () Bool)

(assert (=> b!8008641 (= e!4717766 (getSuffix!3898 (tail!15862 totalInput!1349) (t!390619 testedP!353)))))

(declare-fun b!8008642 () Bool)

(assert (=> b!8008642 (= e!4717766 totalInput!1349)))

(assert (= (and d!2388110 c!1470128) b!8008641))

(assert (= (and d!2388110 (not c!1470128)) b!8008642))

(declare-fun m!8373676 () Bool)

(assert (=> d!2388110 m!8373676))

(assert (=> d!2388110 m!8373496))

(assert (=> d!2388110 m!8373480))

(assert (=> b!8008641 m!8373502))

(assert (=> b!8008641 m!8373502))

(declare-fun m!8373678 () Bool)

(assert (=> b!8008641 m!8373678))

(assert (=> b!8008524 d!2388110))

(declare-fun d!2388114 () Bool)

(declare-fun lt!2716199 () Int)

(assert (=> d!2388114 (>= lt!2716199 0)))

(declare-fun e!4717777 () Int)

(assert (=> d!2388114 (= lt!2716199 e!4717777)))

(declare-fun c!1470131 () Bool)

(assert (=> d!2388114 (= c!1470131 ((_ is Nil!74752) totalInput!1349))))

(assert (=> d!2388114 (= (size!43549 totalInput!1349) lt!2716199)))

(declare-fun b!8008655 () Bool)

(assert (=> b!8008655 (= e!4717777 0)))

(declare-fun b!8008656 () Bool)

(assert (=> b!8008656 (= e!4717777 (+ 1 (size!43549 (t!390619 totalInput!1349))))))

(assert (= (and d!2388114 c!1470131) b!8008655))

(assert (= (and d!2388114 (not c!1470131)) b!8008656))

(declare-fun m!8373680 () Bool)

(assert (=> b!8008656 m!8373680))

(assert (=> b!8008540 d!2388114))

(declare-fun b!8008658 () Bool)

(declare-fun res!3166901 () Bool)

(declare-fun e!4717778 () Bool)

(assert (=> b!8008658 (=> (not res!3166901) (not e!4717778))))

(assert (=> b!8008658 (= res!3166901 (= (head!16339 testedP!353) (head!16339 totalInput!1349)))))

(declare-fun b!8008657 () Bool)

(declare-fun e!4717779 () Bool)

(assert (=> b!8008657 (= e!4717779 e!4717778)))

(declare-fun res!3166903 () Bool)

(assert (=> b!8008657 (=> (not res!3166903) (not e!4717778))))

(assert (=> b!8008657 (= res!3166903 (not ((_ is Nil!74752) totalInput!1349)))))

(declare-fun b!8008660 () Bool)

(declare-fun e!4717780 () Bool)

(assert (=> b!8008660 (= e!4717780 (>= (size!43549 totalInput!1349) (size!43549 testedP!353)))))

(declare-fun b!8008659 () Bool)

(assert (=> b!8008659 (= e!4717778 (isPrefix!6701 (tail!15862 testedP!353) (tail!15862 totalInput!1349)))))

(declare-fun d!2388116 () Bool)

(assert (=> d!2388116 e!4717780))

(declare-fun res!3166902 () Bool)

(assert (=> d!2388116 (=> res!3166902 e!4717780)))

(declare-fun lt!2716200 () Bool)

(assert (=> d!2388116 (= res!3166902 (not lt!2716200))))

(assert (=> d!2388116 (= lt!2716200 e!4717779)))

(declare-fun res!3166904 () Bool)

(assert (=> d!2388116 (=> res!3166904 e!4717779)))

(assert (=> d!2388116 (= res!3166904 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388116 (= (isPrefix!6701 testedP!353 totalInput!1349) lt!2716200)))

(assert (= (and d!2388116 (not res!3166904)) b!8008657))

(assert (= (and b!8008657 res!3166903) b!8008658))

(assert (= (and b!8008658 res!3166901) b!8008659))

(assert (= (and d!2388116 (not res!3166902)) b!8008660))

(declare-fun m!8373682 () Bool)

(assert (=> b!8008658 m!8373682))

(assert (=> b!8008658 m!8373500))

(assert (=> b!8008660 m!8373496))

(assert (=> b!8008660 m!8373480))

(declare-fun m!8373684 () Bool)

(assert (=> b!8008659 m!8373684))

(assert (=> b!8008659 m!8373502))

(assert (=> b!8008659 m!8373684))

(assert (=> b!8008659 m!8373502))

(declare-fun m!8373686 () Bool)

(assert (=> b!8008659 m!8373686))

(assert (=> b!8008523 d!2388116))

(declare-fun b!8008662 () Bool)

(declare-fun res!3166905 () Bool)

(declare-fun e!4717781 () Bool)

(assert (=> b!8008662 (=> (not res!3166905) (not e!4717781))))

(assert (=> b!8008662 (= res!3166905 (= (head!16339 testedP!353) (head!16339 lt!2716143)))))

(declare-fun b!8008661 () Bool)

(declare-fun e!4717782 () Bool)

(assert (=> b!8008661 (= e!4717782 e!4717781)))

(declare-fun res!3166907 () Bool)

(assert (=> b!8008661 (=> (not res!3166907) (not e!4717781))))

(assert (=> b!8008661 (= res!3166907 (not ((_ is Nil!74752) lt!2716143)))))

(declare-fun b!8008664 () Bool)

(declare-fun e!4717783 () Bool)

(assert (=> b!8008664 (= e!4717783 (>= (size!43549 lt!2716143) (size!43549 testedP!353)))))

(declare-fun b!8008663 () Bool)

(assert (=> b!8008663 (= e!4717781 (isPrefix!6701 (tail!15862 testedP!353) (tail!15862 lt!2716143)))))

(declare-fun d!2388118 () Bool)

(assert (=> d!2388118 e!4717783))

(declare-fun res!3166906 () Bool)

(assert (=> d!2388118 (=> res!3166906 e!4717783)))

(declare-fun lt!2716201 () Bool)

(assert (=> d!2388118 (= res!3166906 (not lt!2716201))))

(assert (=> d!2388118 (= lt!2716201 e!4717782)))

(declare-fun res!3166908 () Bool)

(assert (=> d!2388118 (=> res!3166908 e!4717782)))

(assert (=> d!2388118 (= res!3166908 ((_ is Nil!74752) testedP!353))))

(assert (=> d!2388118 (= (isPrefix!6701 testedP!353 lt!2716143) lt!2716201)))

(assert (= (and d!2388118 (not res!3166908)) b!8008661))

(assert (= (and b!8008661 res!3166907) b!8008662))

(assert (= (and b!8008662 res!3166905) b!8008663))

(assert (= (and d!2388118 (not res!3166906)) b!8008664))

(assert (=> b!8008662 m!8373682))

(declare-fun m!8373688 () Bool)

(assert (=> b!8008662 m!8373688))

(declare-fun m!8373690 () Bool)

(assert (=> b!8008664 m!8373690))

(assert (=> b!8008664 m!8373480))

(assert (=> b!8008663 m!8373684))

(declare-fun m!8373692 () Bool)

(assert (=> b!8008663 m!8373692))

(assert (=> b!8008663 m!8373684))

(assert (=> b!8008663 m!8373692))

(declare-fun m!8373694 () Bool)

(assert (=> b!8008663 m!8373694))

(assert (=> b!8008523 d!2388118))

(declare-fun d!2388120 () Bool)

(assert (=> d!2388120 (isPrefix!6701 testedP!353 (++!18473 testedP!353 testedSuffix!271))))

(declare-fun lt!2716204 () Unit!170746)

(declare-fun choose!60321 (List!74876 List!74876) Unit!170746)

(assert (=> d!2388120 (= lt!2716204 (choose!60321 testedP!353 testedSuffix!271))))

(assert (=> d!2388120 (= (lemmaConcatTwoListThenFirstIsPrefix!3932 testedP!353 testedSuffix!271) lt!2716204)))

(declare-fun bs!1970798 () Bool)

(assert (= bs!1970798 d!2388120))

(assert (=> bs!1970798 m!8373456))

(assert (=> bs!1970798 m!8373456))

(declare-fun m!8373696 () Bool)

(assert (=> bs!1970798 m!8373696))

(declare-fun m!8373698 () Bool)

(assert (=> bs!1970798 m!8373698))

(assert (=> b!8008523 d!2388120))

(declare-fun d!2388122 () Bool)

(assert (=> d!2388122 (<= (size!43549 testedP!353) (size!43549 totalInput!1349))))

(declare-fun lt!2716207 () Unit!170746)

(declare-fun choose!60322 (List!74876 List!74876) Unit!170746)

(assert (=> d!2388122 (= lt!2716207 (choose!60322 testedP!353 totalInput!1349))))

(assert (=> d!2388122 (isPrefix!6701 testedP!353 totalInput!1349)))

(assert (=> d!2388122 (= (lemmaIsPrefixThenSmallerEqSize!1202 testedP!353 totalInput!1349) lt!2716207)))

(declare-fun bs!1970799 () Bool)

(assert (= bs!1970799 d!2388122))

(assert (=> bs!1970799 m!8373480))

(assert (=> bs!1970799 m!8373496))

(declare-fun m!8373706 () Bool)

(assert (=> bs!1970799 m!8373706))

(assert (=> bs!1970799 m!8373482))

(assert (=> b!8008539 d!2388122))

(declare-fun bm!743999 () Bool)

(declare-fun call!744006 () Bool)

(declare-fun call!744004 () Bool)

(assert (=> bm!743999 (= call!744006 call!744004)))

(declare-fun c!1470149 () Bool)

(declare-fun bm!744000 () Bool)

(declare-fun c!1470148 () Bool)

(assert (=> bm!744000 (= call!744004 (validRegex!11951 (ite c!1470148 (reg!21976 r!15422) (ite c!1470149 (regTwo!43807 r!15422) (regTwo!43806 r!15422)))))))

(declare-fun b!8008712 () Bool)

(declare-fun e!4717818 () Bool)

(assert (=> b!8008712 (= e!4717818 call!744006)))

(declare-fun b!8008713 () Bool)

(declare-fun e!4717820 () Bool)

(declare-fun e!4717815 () Bool)

(assert (=> b!8008713 (= e!4717820 e!4717815)))

(assert (=> b!8008713 (= c!1470148 ((_ is Star!21647) r!15422))))

(declare-fun b!8008715 () Bool)

(declare-fun e!4717816 () Bool)

(assert (=> b!8008715 (= e!4717815 e!4717816)))

(declare-fun res!3166927 () Bool)

(assert (=> b!8008715 (= res!3166927 (not (nullable!9705 (reg!21976 r!15422))))))

(assert (=> b!8008715 (=> (not res!3166927) (not e!4717816))))

(declare-fun b!8008716 () Bool)

(declare-fun e!4717817 () Bool)

(assert (=> b!8008716 (= e!4717817 call!744006)))

(declare-fun b!8008717 () Bool)

(declare-fun res!3166924 () Bool)

(assert (=> b!8008717 (=> (not res!3166924) (not e!4717817))))

(declare-fun call!744005 () Bool)

(assert (=> b!8008717 (= res!3166924 call!744005)))

(declare-fun e!4717819 () Bool)

(assert (=> b!8008717 (= e!4717819 e!4717817)))

(declare-fun bm!744001 () Bool)

(assert (=> bm!744001 (= call!744005 (validRegex!11951 (ite c!1470149 (regOne!43807 r!15422) (regOne!43806 r!15422))))))

(declare-fun b!8008718 () Bool)

(declare-fun res!3166925 () Bool)

(declare-fun e!4717821 () Bool)

(assert (=> b!8008718 (=> res!3166925 e!4717821)))

(assert (=> b!8008718 (= res!3166925 (not ((_ is Concat!30646) r!15422)))))

(assert (=> b!8008718 (= e!4717819 e!4717821)))

(declare-fun b!8008719 () Bool)

(assert (=> b!8008719 (= e!4717821 e!4717818)))

(declare-fun res!3166926 () Bool)

(assert (=> b!8008719 (=> (not res!3166926) (not e!4717818))))

(assert (=> b!8008719 (= res!3166926 call!744005)))

(declare-fun b!8008720 () Bool)

(assert (=> b!8008720 (= e!4717816 call!744004)))

(declare-fun b!8008714 () Bool)

(assert (=> b!8008714 (= e!4717815 e!4717819)))

(assert (=> b!8008714 (= c!1470149 ((_ is Union!21647) r!15422))))

(declare-fun d!2388126 () Bool)

(declare-fun res!3166928 () Bool)

(assert (=> d!2388126 (=> res!3166928 e!4717820)))

(assert (=> d!2388126 (= res!3166928 ((_ is ElementMatch!21647) r!15422))))

(assert (=> d!2388126 (= (validRegex!11951 r!15422) e!4717820)))

(assert (= (and d!2388126 (not res!3166928)) b!8008713))

(assert (= (and b!8008713 c!1470148) b!8008715))

(assert (= (and b!8008713 (not c!1470148)) b!8008714))

(assert (= (and b!8008715 res!3166927) b!8008720))

(assert (= (and b!8008714 c!1470149) b!8008717))

(assert (= (and b!8008714 (not c!1470149)) b!8008718))

(assert (= (and b!8008717 res!3166924) b!8008716))

(assert (= (and b!8008718 (not res!3166925)) b!8008719))

(assert (= (and b!8008719 res!3166926) b!8008712))

(assert (= (or b!8008716 b!8008712) bm!743999))

(assert (= (or b!8008717 b!8008719) bm!744001))

(assert (= (or b!8008720 bm!743999) bm!744000))

(declare-fun m!8373708 () Bool)

(assert (=> bm!744000 m!8373708))

(declare-fun m!8373710 () Bool)

(assert (=> b!8008715 m!8373710))

(declare-fun m!8373712 () Bool)

(assert (=> bm!744001 m!8373712))

(assert (=> start!753608 d!2388126))

(declare-fun bm!744002 () Bool)

(declare-fun call!744009 () Bool)

(declare-fun call!744007 () Bool)

(assert (=> bm!744002 (= call!744009 call!744007)))

(declare-fun c!1470151 () Bool)

(declare-fun bm!744003 () Bool)

(declare-fun c!1470150 () Bool)

(assert (=> bm!744003 (= call!744007 (validRegex!11951 (ite c!1470150 (reg!21976 (derivativeStep!6626 r!15422 lt!2716137)) (ite c!1470151 (regTwo!43807 (derivativeStep!6626 r!15422 lt!2716137)) (regTwo!43806 (derivativeStep!6626 r!15422 lt!2716137))))))))

(declare-fun b!8008721 () Bool)

(declare-fun e!4717825 () Bool)

(assert (=> b!8008721 (= e!4717825 call!744009)))

(declare-fun b!8008722 () Bool)

(declare-fun e!4717827 () Bool)

(declare-fun e!4717822 () Bool)

(assert (=> b!8008722 (= e!4717827 e!4717822)))

(assert (=> b!8008722 (= c!1470150 ((_ is Star!21647) (derivativeStep!6626 r!15422 lt!2716137)))))

(declare-fun b!8008724 () Bool)

(declare-fun e!4717823 () Bool)

(assert (=> b!8008724 (= e!4717822 e!4717823)))

(declare-fun res!3166932 () Bool)

(assert (=> b!8008724 (= res!3166932 (not (nullable!9705 (reg!21976 (derivativeStep!6626 r!15422 lt!2716137)))))))

(assert (=> b!8008724 (=> (not res!3166932) (not e!4717823))))

(declare-fun b!8008725 () Bool)

(declare-fun e!4717824 () Bool)

(assert (=> b!8008725 (= e!4717824 call!744009)))

(declare-fun b!8008726 () Bool)

(declare-fun res!3166929 () Bool)

(assert (=> b!8008726 (=> (not res!3166929) (not e!4717824))))

(declare-fun call!744008 () Bool)

(assert (=> b!8008726 (= res!3166929 call!744008)))

(declare-fun e!4717826 () Bool)

(assert (=> b!8008726 (= e!4717826 e!4717824)))

(declare-fun bm!744004 () Bool)

(assert (=> bm!744004 (= call!744008 (validRegex!11951 (ite c!1470151 (regOne!43807 (derivativeStep!6626 r!15422 lt!2716137)) (regOne!43806 (derivativeStep!6626 r!15422 lt!2716137)))))))

(declare-fun b!8008727 () Bool)

(declare-fun res!3166930 () Bool)

(declare-fun e!4717828 () Bool)

(assert (=> b!8008727 (=> res!3166930 e!4717828)))

(assert (=> b!8008727 (= res!3166930 (not ((_ is Concat!30646) (derivativeStep!6626 r!15422 lt!2716137))))))

(assert (=> b!8008727 (= e!4717826 e!4717828)))

(declare-fun b!8008728 () Bool)

(assert (=> b!8008728 (= e!4717828 e!4717825)))

(declare-fun res!3166931 () Bool)

(assert (=> b!8008728 (=> (not res!3166931) (not e!4717825))))

(assert (=> b!8008728 (= res!3166931 call!744008)))

(declare-fun b!8008729 () Bool)

(assert (=> b!8008729 (= e!4717823 call!744007)))

(declare-fun b!8008723 () Bool)

(assert (=> b!8008723 (= e!4717822 e!4717826)))

(assert (=> b!8008723 (= c!1470151 ((_ is Union!21647) (derivativeStep!6626 r!15422 lt!2716137)))))

(declare-fun d!2388128 () Bool)

(declare-fun res!3166933 () Bool)

(assert (=> d!2388128 (=> res!3166933 e!4717827)))

(assert (=> d!2388128 (= res!3166933 ((_ is ElementMatch!21647) (derivativeStep!6626 r!15422 lt!2716137)))))

(assert (=> d!2388128 (= (validRegex!11951 (derivativeStep!6626 r!15422 lt!2716137)) e!4717827)))

(assert (= (and d!2388128 (not res!3166933)) b!8008722))

(assert (= (and b!8008722 c!1470150) b!8008724))

(assert (= (and b!8008722 (not c!1470150)) b!8008723))

(assert (= (and b!8008724 res!3166932) b!8008729))

(assert (= (and b!8008723 c!1470151) b!8008726))

(assert (= (and b!8008723 (not c!1470151)) b!8008727))

(assert (= (and b!8008726 res!3166929) b!8008725))

(assert (= (and b!8008727 (not res!3166930)) b!8008728))

(assert (= (and b!8008728 res!3166931) b!8008721))

(assert (= (or b!8008725 b!8008721) bm!744002))

(assert (= (or b!8008726 b!8008728) bm!744004))

(assert (= (or b!8008729 bm!744002) bm!744003))

(declare-fun m!8373714 () Bool)

(assert (=> bm!744003 m!8373714))

(declare-fun m!8373716 () Bool)

(assert (=> b!8008724 m!8373716))

(declare-fun m!8373718 () Bool)

(assert (=> bm!744004 m!8373718))

(assert (=> b!8008538 d!2388128))

(declare-fun b!8008798 () Bool)

(declare-fun e!4717866 () Regex!21647)

(declare-fun e!4717870 () Regex!21647)

(assert (=> b!8008798 (= e!4717866 e!4717870)))

(declare-fun c!1470177 () Bool)

(assert (=> b!8008798 (= c!1470177 ((_ is Star!21647) r!15422))))

(declare-fun bm!744020 () Bool)

(declare-fun call!744026 () Regex!21647)

(declare-fun call!744027 () Regex!21647)

(assert (=> bm!744020 (= call!744026 call!744027)))

(declare-fun b!8008799 () Bool)

(declare-fun c!1470180 () Bool)

(assert (=> b!8008799 (= c!1470180 (nullable!9705 (regOne!43806 r!15422)))))

(declare-fun e!4717869 () Regex!21647)

(assert (=> b!8008799 (= e!4717870 e!4717869)))

(declare-fun c!1470179 () Bool)

(declare-fun call!744028 () Regex!21647)

(declare-fun bm!744021 () Bool)

(assert (=> bm!744021 (= call!744028 (derivativeStep!6626 (ite c!1470179 (regOne!43807 r!15422) (regOne!43806 r!15422)) lt!2716137))))

(declare-fun b!8008800 () Bool)

(assert (=> b!8008800 (= e!4717869 (Union!21647 (Concat!30646 call!744028 (regTwo!43806 r!15422)) call!744026))))

(declare-fun bm!744022 () Bool)

(declare-fun call!744025 () Regex!21647)

(assert (=> bm!744022 (= call!744027 call!744025)))

(declare-fun b!8008801 () Bool)

(declare-fun e!4717868 () Regex!21647)

(assert (=> b!8008801 (= e!4717868 EmptyLang!21647)))

(declare-fun b!8008804 () Bool)

(assert (=> b!8008804 (= c!1470179 ((_ is Union!21647) r!15422))))

(declare-fun e!4717867 () Regex!21647)

(assert (=> b!8008804 (= e!4717867 e!4717866)))

(declare-fun b!8008805 () Bool)

(assert (=> b!8008805 (= e!4717866 (Union!21647 call!744028 call!744025))))

(declare-fun bm!744023 () Bool)

(assert (=> bm!744023 (= call!744025 (derivativeStep!6626 (ite c!1470179 (regTwo!43807 r!15422) (ite c!1470177 (reg!21976 r!15422) (ite c!1470180 (regTwo!43806 r!15422) (regOne!43806 r!15422)))) lt!2716137))))

(declare-fun b!8008806 () Bool)

(assert (=> b!8008806 (= e!4717867 (ite (= lt!2716137 (c!1470108 r!15422)) EmptyExpr!21647 EmptyLang!21647))))

(declare-fun d!2388130 () Bool)

(declare-fun lt!2716233 () Regex!21647)

(assert (=> d!2388130 (validRegex!11951 lt!2716233)))

(assert (=> d!2388130 (= lt!2716233 e!4717868)))

(declare-fun c!1470178 () Bool)

(assert (=> d!2388130 (= c!1470178 (or ((_ is EmptyExpr!21647) r!15422) ((_ is EmptyLang!21647) r!15422)))))

(assert (=> d!2388130 (validRegex!11951 r!15422)))

(assert (=> d!2388130 (= (derivativeStep!6626 r!15422 lt!2716137) lt!2716233)))

(declare-fun b!8008807 () Bool)

(assert (=> b!8008807 (= e!4717870 (Concat!30646 call!744027 r!15422))))

(declare-fun b!8008808 () Bool)

(assert (=> b!8008808 (= e!4717869 (Union!21647 (Concat!30646 call!744026 (regTwo!43806 r!15422)) EmptyLang!21647))))

(declare-fun b!8008809 () Bool)

(assert (=> b!8008809 (= e!4717868 e!4717867)))

(declare-fun c!1470176 () Bool)

(assert (=> b!8008809 (= c!1470176 ((_ is ElementMatch!21647) r!15422))))

(assert (= (and d!2388130 c!1470178) b!8008801))

(assert (= (and d!2388130 (not c!1470178)) b!8008809))

(assert (= (and b!8008809 c!1470176) b!8008806))

(assert (= (and b!8008809 (not c!1470176)) b!8008804))

(assert (= (and b!8008804 c!1470179) b!8008805))

(assert (= (and b!8008804 (not c!1470179)) b!8008798))

(assert (= (and b!8008798 c!1470177) b!8008807))

(assert (= (and b!8008798 (not c!1470177)) b!8008799))

(assert (= (and b!8008799 c!1470180) b!8008800))

(assert (= (and b!8008799 (not c!1470180)) b!8008808))

(assert (= (or b!8008800 b!8008808) bm!744020))

(assert (= (or b!8008807 bm!744020) bm!744022))

(assert (= (or b!8008805 bm!744022) bm!744023))

(assert (= (or b!8008805 b!8008800) bm!744021))

(declare-fun m!8373754 () Bool)

(assert (=> b!8008799 m!8373754))

(declare-fun m!8373756 () Bool)

(assert (=> bm!744021 m!8373756))

(declare-fun m!8373758 () Bool)

(assert (=> bm!744023 m!8373758))

(declare-fun m!8373760 () Bool)

(assert (=> d!2388130 m!8373760))

(assert (=> d!2388130 m!8373494))

(assert (=> b!8008538 d!2388130))

(declare-fun b!8008838 () Bool)

(declare-fun e!4717880 () Bool)

(declare-fun tp!2396373 () Bool)

(assert (=> b!8008838 (= e!4717880 (and tp_is_empty!53837 tp!2396373))))

(assert (=> b!8008537 (= tp!2396328 e!4717880)))

(assert (= (and b!8008537 ((_ is Cons!74752) (t!390619 testedP!353))) b!8008838))

(declare-fun b!8008839 () Bool)

(declare-fun e!4717881 () Bool)

(declare-fun tp!2396374 () Bool)

(assert (=> b!8008839 (= e!4717881 (and tp_is_empty!53837 tp!2396374))))

(assert (=> b!8008536 (= tp!2396327 e!4717881)))

(assert (= (and b!8008536 ((_ is Cons!74752) (t!390619 testedSuffix!271))) b!8008839))

(declare-fun b!8008840 () Bool)

(declare-fun e!4717882 () Bool)

(declare-fun tp!2396375 () Bool)

(assert (=> b!8008840 (= e!4717882 (and tp_is_empty!53837 tp!2396375))))

(assert (=> b!8008529 (= tp!2396329 e!4717882)))

(assert (= (and b!8008529 ((_ is Cons!74752) (t!390619 totalInput!1349))) b!8008840))

(declare-fun b!8008852 () Bool)

(declare-fun e!4717885 () Bool)

(declare-fun tp!2396386 () Bool)

(declare-fun tp!2396388 () Bool)

(assert (=> b!8008852 (= e!4717885 (and tp!2396386 tp!2396388))))

(declare-fun b!8008854 () Bool)

(declare-fun tp!2396389 () Bool)

(declare-fun tp!2396387 () Bool)

(assert (=> b!8008854 (= e!4717885 (and tp!2396389 tp!2396387))))

(assert (=> b!8008534 (= tp!2396330 e!4717885)))

(declare-fun b!8008853 () Bool)

(declare-fun tp!2396390 () Bool)

(assert (=> b!8008853 (= e!4717885 tp!2396390)))

(declare-fun b!8008851 () Bool)

(assert (=> b!8008851 (= e!4717885 tp_is_empty!53837)))

(assert (= (and b!8008534 ((_ is ElementMatch!21647) (reg!21976 r!15422))) b!8008851))

(assert (= (and b!8008534 ((_ is Concat!30646) (reg!21976 r!15422))) b!8008852))

(assert (= (and b!8008534 ((_ is Star!21647) (reg!21976 r!15422))) b!8008853))

(assert (= (and b!8008534 ((_ is Union!21647) (reg!21976 r!15422))) b!8008854))

(declare-fun b!8008856 () Bool)

(declare-fun e!4717886 () Bool)

(declare-fun tp!2396391 () Bool)

(declare-fun tp!2396393 () Bool)

(assert (=> b!8008856 (= e!4717886 (and tp!2396391 tp!2396393))))

(declare-fun b!8008858 () Bool)

(declare-fun tp!2396394 () Bool)

(declare-fun tp!2396392 () Bool)

(assert (=> b!8008858 (= e!4717886 (and tp!2396394 tp!2396392))))

(assert (=> b!8008528 (= tp!2396325 e!4717886)))

(declare-fun b!8008857 () Bool)

(declare-fun tp!2396395 () Bool)

(assert (=> b!8008857 (= e!4717886 tp!2396395)))

(declare-fun b!8008855 () Bool)

(assert (=> b!8008855 (= e!4717886 tp_is_empty!53837)))

(assert (= (and b!8008528 ((_ is ElementMatch!21647) (regOne!43806 r!15422))) b!8008855))

(assert (= (and b!8008528 ((_ is Concat!30646) (regOne!43806 r!15422))) b!8008856))

(assert (= (and b!8008528 ((_ is Star!21647) (regOne!43806 r!15422))) b!8008857))

(assert (= (and b!8008528 ((_ is Union!21647) (regOne!43806 r!15422))) b!8008858))

(declare-fun b!8008860 () Bool)

(declare-fun e!4717887 () Bool)

(declare-fun tp!2396396 () Bool)

(declare-fun tp!2396398 () Bool)

(assert (=> b!8008860 (= e!4717887 (and tp!2396396 tp!2396398))))

(declare-fun b!8008862 () Bool)

(declare-fun tp!2396399 () Bool)

(declare-fun tp!2396397 () Bool)

(assert (=> b!8008862 (= e!4717887 (and tp!2396399 tp!2396397))))

(assert (=> b!8008528 (= tp!2396324 e!4717887)))

(declare-fun b!8008861 () Bool)

(declare-fun tp!2396400 () Bool)

(assert (=> b!8008861 (= e!4717887 tp!2396400)))

(declare-fun b!8008859 () Bool)

(assert (=> b!8008859 (= e!4717887 tp_is_empty!53837)))

(assert (= (and b!8008528 ((_ is ElementMatch!21647) (regTwo!43806 r!15422))) b!8008859))

(assert (= (and b!8008528 ((_ is Concat!30646) (regTwo!43806 r!15422))) b!8008860))

(assert (= (and b!8008528 ((_ is Star!21647) (regTwo!43806 r!15422))) b!8008861))

(assert (= (and b!8008528 ((_ is Union!21647) (regTwo!43806 r!15422))) b!8008862))

(declare-fun b!8008864 () Bool)

(declare-fun e!4717888 () Bool)

(declare-fun tp!2396401 () Bool)

(declare-fun tp!2396403 () Bool)

(assert (=> b!8008864 (= e!4717888 (and tp!2396401 tp!2396403))))

(declare-fun b!8008866 () Bool)

(declare-fun tp!2396404 () Bool)

(declare-fun tp!2396402 () Bool)

(assert (=> b!8008866 (= e!4717888 (and tp!2396404 tp!2396402))))

(assert (=> b!8008533 (= tp!2396323 e!4717888)))

(declare-fun b!8008865 () Bool)

(declare-fun tp!2396405 () Bool)

(assert (=> b!8008865 (= e!4717888 tp!2396405)))

(declare-fun b!8008863 () Bool)

(assert (=> b!8008863 (= e!4717888 tp_is_empty!53837)))

(assert (= (and b!8008533 ((_ is ElementMatch!21647) (regOne!43807 r!15422))) b!8008863))

(assert (= (and b!8008533 ((_ is Concat!30646) (regOne!43807 r!15422))) b!8008864))

(assert (= (and b!8008533 ((_ is Star!21647) (regOne!43807 r!15422))) b!8008865))

(assert (= (and b!8008533 ((_ is Union!21647) (regOne!43807 r!15422))) b!8008866))

(declare-fun b!8008868 () Bool)

(declare-fun e!4717889 () Bool)

(declare-fun tp!2396406 () Bool)

(declare-fun tp!2396408 () Bool)

(assert (=> b!8008868 (= e!4717889 (and tp!2396406 tp!2396408))))

(declare-fun b!8008870 () Bool)

(declare-fun tp!2396409 () Bool)

(declare-fun tp!2396407 () Bool)

(assert (=> b!8008870 (= e!4717889 (and tp!2396409 tp!2396407))))

(assert (=> b!8008533 (= tp!2396326 e!4717889)))

(declare-fun b!8008869 () Bool)

(declare-fun tp!2396410 () Bool)

(assert (=> b!8008869 (= e!4717889 tp!2396410)))

(declare-fun b!8008867 () Bool)

(assert (=> b!8008867 (= e!4717889 tp_is_empty!53837)))

(assert (= (and b!8008533 ((_ is ElementMatch!21647) (regTwo!43807 r!15422))) b!8008867))

(assert (= (and b!8008533 ((_ is Concat!30646) (regTwo!43807 r!15422))) b!8008868))

(assert (= (and b!8008533 ((_ is Star!21647) (regTwo!43807 r!15422))) b!8008869))

(assert (= (and b!8008533 ((_ is Union!21647) (regTwo!43807 r!15422))) b!8008870))

(check-sat (not d!2388048) (not bm!744000) (not b!8008663) (not b!8008656) (not b!8008601) (not b!8008840) (not b!8008585) (not b!8008617) (not b!8008868) (not bm!744001) (not bm!744003) (not b!8008854) (not b!8008864) (not b!8008608) (not b!8008858) (not d!2388070) (not bm!744004) (not b!8008558) (not b!8008799) (not b!8008857) (not b!8008865) (not d!2388088) (not b!8008641) (not b!8008602) (not b!8008862) (not d!2388100) (not d!2388120) (not b!8008660) (not d!2388080) (not b!8008605) (not b!8008658) (not b!8008853) (not d!2388092) (not b!8008866) (not b!8008659) (not b!8008856) (not bm!744021) (not b!8008861) (not b!8008860) (not b!8008852) (not d!2388074) (not b!8008870) (not b!8008724) (not d!2388130) (not b!8008551) (not b!8008550) (not b!8008584) (not b!8008600) (not b!8008838) (not b!8008616) (not d!2388052) (not b!8008552) (not b!8008609) (not d!2388110) (not b!8008662) (not b!8008715) tp_is_empty!53837 (not bm!744023) (not b!8008604) (not b!8008664) (not b!8008839) (not b!8008869) (not d!2388082) (not d!2388064) (not d!2388058) (not d!2388122))
(check-sat)
