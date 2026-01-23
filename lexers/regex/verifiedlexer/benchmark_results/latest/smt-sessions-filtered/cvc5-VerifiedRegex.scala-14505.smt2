; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754422 () Bool)

(assert start!754422)

(declare-fun b!8016455 () Bool)

(declare-fun e!4722199 () Bool)

(declare-fun tp_is_empty!53923 () Bool)

(declare-fun tp!2399515 () Bool)

(assert (=> b!8016455 (= e!4722199 (and tp_is_empty!53923 tp!2399515))))

(declare-fun b!8016456 () Bool)

(declare-fun e!4722193 () Bool)

(declare-fun e!4722198 () Bool)

(assert (=> b!8016456 (= e!4722193 (not e!4722198))))

(declare-fun res!3169629 () Bool)

(assert (=> b!8016456 (=> res!3169629 e!4722198)))

(declare-datatypes ((C!43718 0))(
  ( (C!43719 (val!32407 Int)) )
))
(declare-datatypes ((List!74919 0))(
  ( (Nil!74795) (Cons!74795 (h!81243 C!43718) (t!390662 List!74919)) )
))
(declare-fun testedP!353 () List!74919)

(declare-fun totalInput!1349 () List!74919)

(declare-fun isPrefix!6742 (List!74919 List!74919) Bool)

(assert (=> b!8016456 (= res!3169629 (not (isPrefix!6742 testedP!353 totalInput!1349)))))

(declare-fun lt!2718616 () List!74919)

(assert (=> b!8016456 (isPrefix!6742 testedP!353 lt!2718616)))

(declare-datatypes ((Unit!170878 0))(
  ( (Unit!170879) )
))
(declare-fun lt!2718622 () Unit!170878)

(declare-fun testedSuffix!271 () List!74919)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3973 (List!74919 List!74919) Unit!170878)

(assert (=> b!8016456 (= lt!2718622 (lemmaConcatTwoListThenFirstIsPrefix!3973 testedP!353 testedSuffix!271))))

(declare-fun b!8016457 () Bool)

(declare-fun e!4722201 () Bool)

(declare-fun tp!2399518 () Bool)

(assert (=> b!8016457 (= e!4722201 (and tp_is_empty!53923 tp!2399518))))

(declare-fun b!8016459 () Bool)

(declare-fun e!4722191 () Bool)

(declare-fun tp!2399517 () Bool)

(assert (=> b!8016459 (= e!4722191 tp!2399517)))

(declare-fun b!8016460 () Bool)

(declare-fun e!4722195 () Bool)

(declare-fun e!4722190 () Bool)

(assert (=> b!8016460 (= e!4722195 e!4722190)))

(declare-fun res!3169621 () Bool)

(assert (=> b!8016460 (=> res!3169621 e!4722190)))

(declare-datatypes ((tuple2!70774 0))(
  ( (tuple2!70775 (_1!38690 List!74919) (_2!38690 List!74919)) )
))
(declare-fun lt!2718623 () tuple2!70774)

(declare-fun isEmpty!42983 (List!74919) Bool)

(assert (=> b!8016460 (= res!3169621 (isEmpty!42983 (_1!38690 lt!2718623)))))

(declare-fun b!8016461 () Bool)

(declare-fun res!3169630 () Bool)

(declare-fun e!4722189 () Bool)

(assert (=> b!8016461 (=> res!3169630 e!4722189)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8016461 (= res!3169630 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8016462 () Bool)

(declare-fun e!4722194 () Bool)

(assert (=> b!8016462 (= e!4722189 e!4722194)))

(declare-fun res!3169625 () Bool)

(assert (=> b!8016462 (=> res!3169625 e!4722194)))

(declare-fun lt!2718618 () Int)

(declare-fun lt!2718620 () Int)

(assert (=> b!8016462 (= res!3169625 (>= lt!2718618 lt!2718620))))

(declare-fun lt!2718625 () Unit!170878)

(declare-fun e!4722200 () Unit!170878)

(assert (=> b!8016462 (= lt!2718625 e!4722200)))

(declare-fun c!1471343 () Bool)

(assert (=> b!8016462 (= c!1471343 (= lt!2718618 lt!2718620))))

(assert (=> b!8016462 (<= lt!2718618 lt!2718620)))

(declare-fun lt!2718613 () Unit!170878)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1225 (List!74919 List!74919) Unit!170878)

(assert (=> b!8016462 (= lt!2718613 (lemmaIsPrefixThenSmallerEqSize!1225 testedP!353 totalInput!1349))))

(declare-fun b!8016463 () Bool)

(declare-fun e!4722197 () Bool)

(declare-fun e!4722192 () Bool)

(assert (=> b!8016463 (= e!4722197 e!4722192)))

(declare-fun res!3169628 () Bool)

(assert (=> b!8016463 (=> (not res!3169628) (not e!4722192))))

(assert (=> b!8016463 (= res!3169628 (= lt!2718616 totalInput!1349))))

(declare-fun ++!18516 (List!74919 List!74919) List!74919)

(assert (=> b!8016463 (= lt!2718616 (++!18516 testedP!353 testedSuffix!271))))

(declare-fun b!8016464 () Bool)

(declare-fun Unit!170880 () Unit!170878)

(assert (=> b!8016464 (= e!4722200 Unit!170880)))

(declare-fun b!8016465 () Bool)

(declare-fun e!4722188 () Bool)

(assert (=> b!8016465 (= e!4722188 e!4722195)))

(declare-fun res!3169623 () Bool)

(assert (=> b!8016465 (=> (not res!3169623) (not e!4722195))))

(assert (=> b!8016465 (= res!3169623 (= (++!18516 (_1!38690 lt!2718623) (_2!38690 lt!2718623)) totalInput!1349))))

(declare-fun lt!2718614 () List!74919)

(declare-fun lt!2718621 () C!43718)

(declare-datatypes ((Regex!21690 0))(
  ( (ElementMatch!21690 (c!1471344 C!43718)) (Concat!30689 (regOne!43892 Regex!21690) (regTwo!43892 Regex!21690)) (EmptyExpr!21690) (Star!21690 (reg!22019 Regex!21690)) (EmptyLang!21690) (Union!21690 (regOne!43893 Regex!21690) (regTwo!43893 Regex!21690)) )
))
(declare-fun r!15422 () Regex!21690)

(declare-fun lt!2718619 () List!74919)

(declare-fun findLongestMatchInner!2337 (Regex!21690 List!74919 Int List!74919 List!74919 Int) tuple2!70774)

(declare-fun derivativeStep!6641 (Regex!21690 C!43718) Regex!21690)

(assert (=> b!8016465 (= lt!2718623 (findLongestMatchInner!2337 (derivativeStep!6641 r!15422 lt!2718621) lt!2718614 (+ 1 testedPSize!271) lt!2718619 totalInput!1349 totalInputSize!629))))

(declare-fun b!8016466 () Bool)

(declare-fun tp!2399516 () Bool)

(declare-fun tp!2399522 () Bool)

(assert (=> b!8016466 (= e!4722191 (and tp!2399516 tp!2399522))))

(declare-fun b!8016467 () Bool)

(declare-fun tp!2399520 () Bool)

(declare-fun tp!2399519 () Bool)

(assert (=> b!8016467 (= e!4722191 (and tp!2399520 tp!2399519))))

(declare-fun b!8016468 () Bool)

(declare-fun e!4722196 () Bool)

(declare-fun tp!2399521 () Bool)

(assert (=> b!8016468 (= e!4722196 (and tp_is_empty!53923 tp!2399521))))

(declare-fun b!8016469 () Bool)

(declare-fun Unit!170881 () Unit!170878)

(assert (=> b!8016469 (= e!4722200 Unit!170881)))

(declare-fun lt!2718615 () Unit!170878)

(declare-fun lemmaIsPrefixRefl!4184 (List!74919 List!74919) Unit!170878)

(assert (=> b!8016469 (= lt!2718615 (lemmaIsPrefixRefl!4184 totalInput!1349 totalInput!1349))))

(assert (=> b!8016469 (isPrefix!6742 totalInput!1349 totalInput!1349)))

(declare-fun lt!2718611 () Unit!170878)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1754 (List!74919 List!74919 List!74919) Unit!170878)

(assert (=> b!8016469 (= lt!2718611 (lemmaIsPrefixSameLengthThenSameList!1754 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8016469 false))

(declare-fun b!8016470 () Bool)

(declare-fun e!4722202 () Bool)

(assert (=> b!8016470 (= e!4722202 e!4722193)))

(declare-fun res!3169622 () Bool)

(assert (=> b!8016470 (=> (not res!3169622) (not e!4722193))))

(assert (=> b!8016470 (= res!3169622 (= totalInputSize!629 lt!2718620))))

(declare-fun size!43592 (List!74919) Int)

(assert (=> b!8016470 (= lt!2718620 (size!43592 totalInput!1349))))

(declare-fun res!3169626 () Bool)

(assert (=> start!754422 (=> (not res!3169626) (not e!4722197))))

(declare-fun validRegex!11994 (Regex!21690) Bool)

(assert (=> start!754422 (= res!3169626 (validRegex!11994 r!15422))))

(assert (=> start!754422 e!4722197))

(assert (=> start!754422 e!4722196))

(assert (=> start!754422 true))

(assert (=> start!754422 e!4722199))

(assert (=> start!754422 e!4722191))

(assert (=> start!754422 e!4722201))

(declare-fun b!8016458 () Bool)

(assert (=> b!8016458 (= e!4722190 (>= (size!43592 (_1!38690 lt!2718623)) lt!2718618))))

(declare-fun b!8016471 () Bool)

(assert (=> b!8016471 (= e!4722194 e!4722188)))

(declare-fun res!3169624 () Bool)

(assert (=> b!8016471 (=> res!3169624 e!4722188)))

(declare-fun nullable!9732 (Regex!21690) Bool)

(assert (=> b!8016471 (= res!3169624 (nullable!9732 r!15422))))

(assert (=> b!8016471 (= (++!18516 lt!2718614 lt!2718619) totalInput!1349)))

(declare-fun lt!2718612 () Unit!170878)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3597 (List!74919 C!43718 List!74919 List!74919) Unit!170878)

(assert (=> b!8016471 (= lt!2718612 (lemmaMoveElementToOtherListKeepsConcatEq!3597 testedP!353 lt!2718621 lt!2718619 totalInput!1349))))

(declare-fun tail!15887 (List!74919) List!74919)

(assert (=> b!8016471 (= lt!2718619 (tail!15887 testedSuffix!271))))

(declare-fun lt!2718617 () List!74919)

(declare-fun head!16364 (List!74919) C!43718)

(assert (=> b!8016471 (isPrefix!6742 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) totalInput!1349)))

(declare-fun lt!2718610 () Unit!170878)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1415 (List!74919 List!74919) Unit!170878)

(assert (=> b!8016471 (= lt!2718610 (lemmaAddHeadSuffixToPrefixStillPrefix!1415 testedP!353 totalInput!1349))))

(assert (=> b!8016471 (= lt!2718614 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)))))

(assert (=> b!8016471 (= lt!2718621 (head!16364 testedSuffix!271))))

(declare-fun b!8016472 () Bool)

(assert (=> b!8016472 (= e!4722191 tp_is_empty!53923)))

(declare-fun b!8016473 () Bool)

(assert (=> b!8016473 (= e!4722198 e!4722189)))

(declare-fun res!3169631 () Bool)

(assert (=> b!8016473 (=> res!3169631 e!4722189)))

(declare-fun lostCause!2077 (Regex!21690) Bool)

(assert (=> b!8016473 (= res!3169631 (lostCause!2077 r!15422))))

(assert (=> b!8016473 (and (= testedSuffix!271 lt!2718617) (= lt!2718617 testedSuffix!271))))

(declare-fun lt!2718624 () Unit!170878)

(declare-fun lemmaSamePrefixThenSameSuffix!3099 (List!74919 List!74919 List!74919 List!74919 List!74919) Unit!170878)

(assert (=> b!8016473 (= lt!2718624 (lemmaSamePrefixThenSameSuffix!3099 testedP!353 testedSuffix!271 testedP!353 lt!2718617 totalInput!1349))))

(declare-fun getSuffix!3937 (List!74919 List!74919) List!74919)

(assert (=> b!8016473 (= lt!2718617 (getSuffix!3937 totalInput!1349 testedP!353))))

(declare-fun b!8016474 () Bool)

(assert (=> b!8016474 (= e!4722192 e!4722202)))

(declare-fun res!3169627 () Bool)

(assert (=> b!8016474 (=> (not res!3169627) (not e!4722202))))

(assert (=> b!8016474 (= res!3169627 (= testedPSize!271 lt!2718618))))

(assert (=> b!8016474 (= lt!2718618 (size!43592 testedP!353))))

(assert (= (and start!754422 res!3169626) b!8016463))

(assert (= (and b!8016463 res!3169628) b!8016474))

(assert (= (and b!8016474 res!3169627) b!8016470))

(assert (= (and b!8016470 res!3169622) b!8016456))

(assert (= (and b!8016456 (not res!3169629)) b!8016473))

(assert (= (and b!8016473 (not res!3169631)) b!8016461))

(assert (= (and b!8016461 (not res!3169630)) b!8016462))

(assert (= (and b!8016462 c!1471343) b!8016469))

(assert (= (and b!8016462 (not c!1471343)) b!8016464))

(assert (= (and b!8016462 (not res!3169625)) b!8016471))

(assert (= (and b!8016471 (not res!3169624)) b!8016465))

(assert (= (and b!8016465 res!3169623) b!8016460))

(assert (= (and b!8016460 (not res!3169621)) b!8016458))

(assert (= (and start!754422 (is-Cons!74795 totalInput!1349)) b!8016468))

(assert (= (and start!754422 (is-Cons!74795 testedSuffix!271)) b!8016455))

(assert (= (and start!754422 (is-ElementMatch!21690 r!15422)) b!8016472))

(assert (= (and start!754422 (is-Concat!30689 r!15422)) b!8016467))

(assert (= (and start!754422 (is-Star!21690 r!15422)) b!8016459))

(assert (= (and start!754422 (is-Union!21690 r!15422)) b!8016466))

(assert (= (and start!754422 (is-Cons!74795 testedP!353)) b!8016457))

(declare-fun m!8379498 () Bool)

(assert (=> b!8016470 m!8379498))

(declare-fun m!8379500 () Bool)

(assert (=> b!8016469 m!8379500))

(declare-fun m!8379502 () Bool)

(assert (=> b!8016469 m!8379502))

(declare-fun m!8379504 () Bool)

(assert (=> b!8016469 m!8379504))

(declare-fun m!8379506 () Bool)

(assert (=> b!8016471 m!8379506))

(declare-fun m!8379508 () Bool)

(assert (=> b!8016471 m!8379508))

(declare-fun m!8379510 () Bool)

(assert (=> b!8016471 m!8379510))

(declare-fun m!8379512 () Bool)

(assert (=> b!8016471 m!8379512))

(declare-fun m!8379514 () Bool)

(assert (=> b!8016471 m!8379514))

(declare-fun m!8379516 () Bool)

(assert (=> b!8016471 m!8379516))

(declare-fun m!8379518 () Bool)

(assert (=> b!8016471 m!8379518))

(declare-fun m!8379520 () Bool)

(assert (=> b!8016471 m!8379520))

(declare-fun m!8379522 () Bool)

(assert (=> b!8016471 m!8379522))

(assert (=> b!8016471 m!8379514))

(declare-fun m!8379524 () Bool)

(assert (=> b!8016471 m!8379524))

(declare-fun m!8379526 () Bool)

(assert (=> b!8016473 m!8379526))

(declare-fun m!8379528 () Bool)

(assert (=> b!8016473 m!8379528))

(declare-fun m!8379530 () Bool)

(assert (=> b!8016473 m!8379530))

(declare-fun m!8379532 () Bool)

(assert (=> b!8016462 m!8379532))

(declare-fun m!8379534 () Bool)

(assert (=> b!8016474 m!8379534))

(declare-fun m!8379536 () Bool)

(assert (=> start!754422 m!8379536))

(declare-fun m!8379538 () Bool)

(assert (=> b!8016456 m!8379538))

(declare-fun m!8379540 () Bool)

(assert (=> b!8016456 m!8379540))

(declare-fun m!8379542 () Bool)

(assert (=> b!8016456 m!8379542))

(declare-fun m!8379544 () Bool)

(assert (=> b!8016460 m!8379544))

(declare-fun m!8379546 () Bool)

(assert (=> b!8016458 m!8379546))

(declare-fun m!8379548 () Bool)

(assert (=> b!8016465 m!8379548))

(declare-fun m!8379550 () Bool)

(assert (=> b!8016465 m!8379550))

(assert (=> b!8016465 m!8379550))

(declare-fun m!8379552 () Bool)

(assert (=> b!8016465 m!8379552))

(declare-fun m!8379554 () Bool)

(assert (=> b!8016463 m!8379554))

(push 1)

(assert (not b!8016467))

(assert (not b!8016471))

(assert (not b!8016459))

(assert (not b!8016466))

(assert (not b!8016456))

(assert (not b!8016460))

(assert (not b!8016473))

(assert (not b!8016455))

(assert (not b!8016469))

(assert (not b!8016470))

(assert tp_is_empty!53923)

(assert (not start!754422))

(assert (not b!8016465))

(assert (not b!8016457))

(assert (not b!8016468))

(assert (not b!8016463))

(assert (not b!8016458))

(assert (not b!8016462))

(assert (not b!8016474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2390112 () Bool)

(declare-fun lostCauseFct!619 (Regex!21690) Bool)

(assert (=> d!2390112 (= (lostCause!2077 r!15422) (lostCauseFct!619 r!15422))))

(declare-fun bs!1971044 () Bool)

(assert (= bs!1971044 d!2390112))

(declare-fun m!8379616 () Bool)

(assert (=> bs!1971044 m!8379616))

(assert (=> b!8016473 d!2390112))

(declare-fun d!2390116 () Bool)

(assert (=> d!2390116 (= testedSuffix!271 lt!2718617)))

(declare-fun lt!2718679 () Unit!170878)

(declare-fun choose!60416 (List!74919 List!74919 List!74919 List!74919 List!74919) Unit!170878)

(assert (=> d!2390116 (= lt!2718679 (choose!60416 testedP!353 testedSuffix!271 testedP!353 lt!2718617 totalInput!1349))))

(assert (=> d!2390116 (isPrefix!6742 testedP!353 totalInput!1349)))

(assert (=> d!2390116 (= (lemmaSamePrefixThenSameSuffix!3099 testedP!353 testedSuffix!271 testedP!353 lt!2718617 totalInput!1349) lt!2718679)))

(declare-fun bs!1971045 () Bool)

(assert (= bs!1971045 d!2390116))

(declare-fun m!8379618 () Bool)

(assert (=> bs!1971045 m!8379618))

(assert (=> bs!1971045 m!8379538))

(assert (=> b!8016473 d!2390116))

(declare-fun d!2390118 () Bool)

(declare-fun lt!2718685 () List!74919)

(assert (=> d!2390118 (= (++!18516 testedP!353 lt!2718685) totalInput!1349)))

(declare-fun e!4722253 () List!74919)

(assert (=> d!2390118 (= lt!2718685 e!4722253)))

(declare-fun c!1471354 () Bool)

(assert (=> d!2390118 (= c!1471354 (is-Cons!74795 testedP!353))))

(assert (=> d!2390118 (>= (size!43592 totalInput!1349) (size!43592 testedP!353))))

(assert (=> d!2390118 (= (getSuffix!3937 totalInput!1349 testedP!353) lt!2718685)))

(declare-fun b!8016545 () Bool)

(assert (=> b!8016545 (= e!4722253 (getSuffix!3937 (tail!15887 totalInput!1349) (t!390662 testedP!353)))))

(declare-fun b!8016546 () Bool)

(assert (=> b!8016546 (= e!4722253 totalInput!1349)))

(assert (= (and d!2390118 c!1471354) b!8016545))

(assert (= (and d!2390118 (not c!1471354)) b!8016546))

(declare-fun m!8379622 () Bool)

(assert (=> d!2390118 m!8379622))

(assert (=> d!2390118 m!8379498))

(assert (=> d!2390118 m!8379534))

(declare-fun m!8379624 () Bool)

(assert (=> b!8016545 m!8379624))

(assert (=> b!8016545 m!8379624))

(declare-fun m!8379626 () Bool)

(assert (=> b!8016545 m!8379626))

(assert (=> b!8016473 d!2390118))

(declare-fun d!2390122 () Bool)

(assert (=> d!2390122 (<= (size!43592 testedP!353) (size!43592 totalInput!1349))))

(declare-fun lt!2718688 () Unit!170878)

(declare-fun choose!60417 (List!74919 List!74919) Unit!170878)

(assert (=> d!2390122 (= lt!2718688 (choose!60417 testedP!353 totalInput!1349))))

(assert (=> d!2390122 (isPrefix!6742 testedP!353 totalInput!1349)))

(assert (=> d!2390122 (= (lemmaIsPrefixThenSmallerEqSize!1225 testedP!353 totalInput!1349) lt!2718688)))

(declare-fun bs!1971046 () Bool)

(assert (= bs!1971046 d!2390122))

(assert (=> bs!1971046 m!8379534))

(assert (=> bs!1971046 m!8379498))

(declare-fun m!8379628 () Bool)

(assert (=> bs!1971046 m!8379628))

(assert (=> bs!1971046 m!8379538))

(assert (=> b!8016462 d!2390122))

(declare-fun e!4722262 () Bool)

(declare-fun b!8016566 () Bool)

(declare-fun lt!2718693 () List!74919)

(assert (=> b!8016566 (= e!4722262 (or (not (= testedSuffix!271 Nil!74795)) (= lt!2718693 testedP!353)))))

(declare-fun b!8016563 () Bool)

(declare-fun e!4722263 () List!74919)

(assert (=> b!8016563 (= e!4722263 testedSuffix!271)))

(declare-fun b!8016564 () Bool)

(assert (=> b!8016564 (= e!4722263 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) testedSuffix!271)))))

(declare-fun b!8016565 () Bool)

(declare-fun res!3169673 () Bool)

(assert (=> b!8016565 (=> (not res!3169673) (not e!4722262))))

(assert (=> b!8016565 (= res!3169673 (= (size!43592 lt!2718693) (+ (size!43592 testedP!353) (size!43592 testedSuffix!271))))))

(declare-fun d!2390124 () Bool)

(assert (=> d!2390124 e!4722262))

(declare-fun res!3169674 () Bool)

(assert (=> d!2390124 (=> (not res!3169674) (not e!4722262))))

(declare-fun content!15921 (List!74919) (Set C!43718))

(assert (=> d!2390124 (= res!3169674 (= (content!15921 lt!2718693) (set.union (content!15921 testedP!353) (content!15921 testedSuffix!271))))))

(assert (=> d!2390124 (= lt!2718693 e!4722263)))

(declare-fun c!1471359 () Bool)

(assert (=> d!2390124 (= c!1471359 (is-Nil!74795 testedP!353))))

(assert (=> d!2390124 (= (++!18516 testedP!353 testedSuffix!271) lt!2718693)))

(assert (= (and d!2390124 c!1471359) b!8016563))

(assert (= (and d!2390124 (not c!1471359)) b!8016564))

(assert (= (and d!2390124 res!3169674) b!8016565))

(assert (= (and b!8016565 res!3169673) b!8016566))

(declare-fun m!8379630 () Bool)

(assert (=> b!8016564 m!8379630))

(declare-fun m!8379632 () Bool)

(assert (=> b!8016565 m!8379632))

(assert (=> b!8016565 m!8379534))

(declare-fun m!8379634 () Bool)

(assert (=> b!8016565 m!8379634))

(declare-fun m!8379636 () Bool)

(assert (=> d!2390124 m!8379636))

(declare-fun m!8379638 () Bool)

(assert (=> d!2390124 m!8379638))

(declare-fun m!8379640 () Bool)

(assert (=> d!2390124 m!8379640))

(assert (=> b!8016463 d!2390124))

(declare-fun b!8016589 () Bool)

(declare-fun e!4722285 () Bool)

(declare-fun call!744653 () Bool)

(assert (=> b!8016589 (= e!4722285 call!744653)))

(declare-fun bm!744646 () Bool)

(declare-fun call!744651 () Bool)

(assert (=> bm!744646 (= call!744653 call!744651)))

(declare-fun b!8016590 () Bool)

(declare-fun res!3169689 () Bool)

(declare-fun e!4722284 () Bool)

(assert (=> b!8016590 (=> res!3169689 e!4722284)))

(assert (=> b!8016590 (= res!3169689 (not (is-Concat!30689 r!15422)))))

(declare-fun e!4722286 () Bool)

(assert (=> b!8016590 (= e!4722286 e!4722284)))

(declare-fun bm!744647 () Bool)

(declare-fun c!1471365 () Bool)

(declare-fun c!1471366 () Bool)

(assert (=> bm!744647 (= call!744651 (validRegex!11994 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))

(declare-fun b!8016591 () Bool)

(assert (=> b!8016591 (= e!4722284 e!4722285)))

(declare-fun res!3169691 () Bool)

(assert (=> b!8016591 (=> (not res!3169691) (not e!4722285))))

(declare-fun call!744652 () Bool)

(assert (=> b!8016591 (= res!3169691 call!744652)))

(declare-fun d!2390126 () Bool)

(declare-fun res!3169690 () Bool)

(declare-fun e!4722281 () Bool)

(assert (=> d!2390126 (=> res!3169690 e!4722281)))

(assert (=> d!2390126 (= res!3169690 (is-ElementMatch!21690 r!15422))))

(assert (=> d!2390126 (= (validRegex!11994 r!15422) e!4722281)))

(declare-fun b!8016592 () Bool)

(declare-fun e!4722282 () Bool)

(assert (=> b!8016592 (= e!4722281 e!4722282)))

(assert (=> b!8016592 (= c!1471365 (is-Star!21690 r!15422))))

(declare-fun b!8016593 () Bool)

(declare-fun res!3169687 () Bool)

(declare-fun e!4722280 () Bool)

(assert (=> b!8016593 (=> (not res!3169687) (not e!4722280))))

(assert (=> b!8016593 (= res!3169687 call!744652)))

(assert (=> b!8016593 (= e!4722286 e!4722280)))

(declare-fun b!8016594 () Bool)

(assert (=> b!8016594 (= e!4722282 e!4722286)))

(assert (=> b!8016594 (= c!1471366 (is-Union!21690 r!15422))))

(declare-fun bm!744648 () Bool)

(assert (=> bm!744648 (= call!744652 (validRegex!11994 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8016595 () Bool)

(declare-fun e!4722283 () Bool)

(assert (=> b!8016595 (= e!4722282 e!4722283)))

(declare-fun res!3169688 () Bool)

(assert (=> b!8016595 (= res!3169688 (not (nullable!9732 (reg!22019 r!15422))))))

(assert (=> b!8016595 (=> (not res!3169688) (not e!4722283))))

(declare-fun b!8016596 () Bool)

(assert (=> b!8016596 (= e!4722283 call!744651)))

(declare-fun b!8016597 () Bool)

(assert (=> b!8016597 (= e!4722280 call!744653)))

(assert (= (and d!2390126 (not res!3169690)) b!8016592))

(assert (= (and b!8016592 c!1471365) b!8016595))

(assert (= (and b!8016592 (not c!1471365)) b!8016594))

(assert (= (and b!8016595 res!3169688) b!8016596))

(assert (= (and b!8016594 c!1471366) b!8016593))

(assert (= (and b!8016594 (not c!1471366)) b!8016590))

(assert (= (and b!8016593 res!3169687) b!8016597))

(assert (= (and b!8016590 (not res!3169689)) b!8016591))

(assert (= (and b!8016591 res!3169691) b!8016589))

(assert (= (or b!8016597 b!8016589) bm!744646))

(assert (= (or b!8016593 b!8016591) bm!744648))

(assert (= (or b!8016596 bm!744646) bm!744647))

(declare-fun m!8379654 () Bool)

(assert (=> bm!744647 m!8379654))

(declare-fun m!8379656 () Bool)

(assert (=> bm!744648 m!8379656))

(declare-fun m!8379658 () Bool)

(assert (=> b!8016595 m!8379658))

(assert (=> start!754422 d!2390126))

(declare-fun d!2390130 () Bool)

(declare-fun lt!2718700 () Int)

(assert (=> d!2390130 (>= lt!2718700 0)))

(declare-fun e!4722289 () Int)

(assert (=> d!2390130 (= lt!2718700 e!4722289)))

(declare-fun c!1471369 () Bool)

(assert (=> d!2390130 (= c!1471369 (is-Nil!74795 totalInput!1349))))

(assert (=> d!2390130 (= (size!43592 totalInput!1349) lt!2718700)))

(declare-fun b!8016602 () Bool)

(assert (=> b!8016602 (= e!4722289 0)))

(declare-fun b!8016603 () Bool)

(assert (=> b!8016603 (= e!4722289 (+ 1 (size!43592 (t!390662 totalInput!1349))))))

(assert (= (and d!2390130 c!1471369) b!8016602))

(assert (= (and d!2390130 (not c!1471369)) b!8016603))

(declare-fun m!8379662 () Bool)

(assert (=> b!8016603 m!8379662))

(assert (=> b!8016470 d!2390130))

(declare-fun d!2390134 () Bool)

(assert (=> d!2390134 (isPrefix!6742 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)) totalInput!1349)))

(declare-fun lt!2718703 () Unit!170878)

(declare-fun choose!60418 (List!74919 List!74919) Unit!170878)

(assert (=> d!2390134 (= lt!2718703 (choose!60418 testedP!353 totalInput!1349))))

(assert (=> d!2390134 (isPrefix!6742 testedP!353 totalInput!1349)))

(assert (=> d!2390134 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1415 testedP!353 totalInput!1349) lt!2718703)))

(declare-fun bs!1971048 () Bool)

(assert (= bs!1971048 d!2390134))

(assert (=> bs!1971048 m!8379530))

(declare-fun m!8379664 () Bool)

(assert (=> bs!1971048 m!8379664))

(declare-fun m!8379666 () Bool)

(assert (=> bs!1971048 m!8379666))

(assert (=> bs!1971048 m!8379530))

(declare-fun m!8379668 () Bool)

(assert (=> bs!1971048 m!8379668))

(declare-fun m!8379670 () Bool)

(assert (=> bs!1971048 m!8379670))

(assert (=> bs!1971048 m!8379668))

(assert (=> bs!1971048 m!8379538))

(assert (=> b!8016471 d!2390134))

(declare-fun e!4722290 () Bool)

(declare-fun lt!2718704 () List!74919)

(declare-fun b!8016607 () Bool)

(assert (=> b!8016607 (= e!4722290 (or (not (= (Cons!74795 (head!16364 lt!2718617) Nil!74795) Nil!74795)) (= lt!2718704 testedP!353)))))

(declare-fun b!8016604 () Bool)

(declare-fun e!4722291 () List!74919)

(assert (=> b!8016604 (= e!4722291 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))

(declare-fun b!8016605 () Bool)

(assert (=> b!8016605 (= e!4722291 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(declare-fun b!8016606 () Bool)

(declare-fun res!3169692 () Bool)

(assert (=> b!8016606 (=> (not res!3169692) (not e!4722290))))

(assert (=> b!8016606 (= res!3169692 (= (size!43592 lt!2718704) (+ (size!43592 testedP!353) (size!43592 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(declare-fun d!2390136 () Bool)

(assert (=> d!2390136 e!4722290))

(declare-fun res!3169693 () Bool)

(assert (=> d!2390136 (=> (not res!3169693) (not e!4722290))))

(assert (=> d!2390136 (= res!3169693 (= (content!15921 lt!2718704) (set.union (content!15921 testedP!353) (content!15921 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(assert (=> d!2390136 (= lt!2718704 e!4722291)))

(declare-fun c!1471370 () Bool)

(assert (=> d!2390136 (= c!1471370 (is-Nil!74795 testedP!353))))

(assert (=> d!2390136 (= (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) lt!2718704)))

(assert (= (and d!2390136 c!1471370) b!8016604))

(assert (= (and d!2390136 (not c!1471370)) b!8016605))

(assert (= (and d!2390136 res!3169693) b!8016606))

(assert (= (and b!8016606 res!3169692) b!8016607))

(declare-fun m!8379672 () Bool)

(assert (=> b!8016605 m!8379672))

(declare-fun m!8379674 () Bool)

(assert (=> b!8016606 m!8379674))

(assert (=> b!8016606 m!8379534))

(declare-fun m!8379676 () Bool)

(assert (=> b!8016606 m!8379676))

(declare-fun m!8379678 () Bool)

(assert (=> d!2390136 m!8379678))

(assert (=> d!2390136 m!8379638))

(declare-fun m!8379680 () Bool)

(assert (=> d!2390136 m!8379680))

(assert (=> b!8016471 d!2390136))

(declare-fun d!2390138 () Bool)

(declare-fun nullableFct!3848 (Regex!21690) Bool)

(assert (=> d!2390138 (= (nullable!9732 r!15422) (nullableFct!3848 r!15422))))

(declare-fun bs!1971049 () Bool)

(assert (= bs!1971049 d!2390138))

(declare-fun m!8379682 () Bool)

(assert (=> bs!1971049 m!8379682))

(assert (=> b!8016471 d!2390138))

(declare-fun d!2390140 () Bool)

(assert (=> d!2390140 (= (head!16364 lt!2718617) (h!81243 lt!2718617))))

(assert (=> b!8016471 d!2390140))

(declare-fun d!2390142 () Bool)

(assert (=> d!2390142 (= (++!18516 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)) lt!2718619) totalInput!1349)))

(declare-fun lt!2718710 () Unit!170878)

(declare-fun choose!60419 (List!74919 C!43718 List!74919 List!74919) Unit!170878)

(assert (=> d!2390142 (= lt!2718710 (choose!60419 testedP!353 lt!2718621 lt!2718619 totalInput!1349))))

(assert (=> d!2390142 (= (++!18516 testedP!353 (Cons!74795 lt!2718621 lt!2718619)) totalInput!1349)))

(assert (=> d!2390142 (= (lemmaMoveElementToOtherListKeepsConcatEq!3597 testedP!353 lt!2718621 lt!2718619 totalInput!1349) lt!2718710)))

(declare-fun bs!1971050 () Bool)

(assert (= bs!1971050 d!2390142))

(assert (=> bs!1971050 m!8379518))

(assert (=> bs!1971050 m!8379518))

(declare-fun m!8379684 () Bool)

(assert (=> bs!1971050 m!8379684))

(declare-fun m!8379686 () Bool)

(assert (=> bs!1971050 m!8379686))

(declare-fun m!8379688 () Bool)

(assert (=> bs!1971050 m!8379688))

(assert (=> b!8016471 d!2390142))

(declare-fun d!2390144 () Bool)

(declare-fun e!4722308 () Bool)

(assert (=> d!2390144 e!4722308))

(declare-fun res!3169716 () Bool)

(assert (=> d!2390144 (=> res!3169716 e!4722308)))

(declare-fun lt!2718715 () Bool)

(assert (=> d!2390144 (= res!3169716 (not lt!2718715))))

(declare-fun e!4722309 () Bool)

(assert (=> d!2390144 (= lt!2718715 e!4722309)))

(declare-fun res!3169714 () Bool)

(assert (=> d!2390144 (=> res!3169714 e!4722309)))

(assert (=> d!2390144 (= res!3169714 (is-Nil!74795 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(assert (=> d!2390144 (= (isPrefix!6742 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) totalInput!1349) lt!2718715)))

(declare-fun b!8016631 () Bool)

(assert (=> b!8016631 (= e!4722308 (>= (size!43592 totalInput!1349) (size!43592 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(declare-fun b!8016628 () Bool)

(declare-fun e!4722307 () Bool)

(assert (=> b!8016628 (= e!4722309 e!4722307)))

(declare-fun res!3169715 () Bool)

(assert (=> b!8016628 (=> (not res!3169715) (not e!4722307))))

(assert (=> b!8016628 (= res!3169715 (not (is-Nil!74795 totalInput!1349)))))

(declare-fun b!8016630 () Bool)

(assert (=> b!8016630 (= e!4722307 (isPrefix!6742 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) (tail!15887 totalInput!1349)))))

(declare-fun b!8016629 () Bool)

(declare-fun res!3169717 () Bool)

(assert (=> b!8016629 (=> (not res!3169717) (not e!4722307))))

(assert (=> b!8016629 (= res!3169717 (= (head!16364 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) (head!16364 totalInput!1349)))))

(assert (= (and d!2390144 (not res!3169714)) b!8016628))

(assert (= (and b!8016628 res!3169715) b!8016629))

(assert (= (and b!8016629 res!3169717) b!8016630))

(assert (= (and d!2390144 (not res!3169716)) b!8016631))

(assert (=> b!8016631 m!8379498))

(assert (=> b!8016631 m!8379514))

(declare-fun m!8379696 () Bool)

(assert (=> b!8016631 m!8379696))

(assert (=> b!8016630 m!8379514))

(declare-fun m!8379698 () Bool)

(assert (=> b!8016630 m!8379698))

(assert (=> b!8016630 m!8379624))

(assert (=> b!8016630 m!8379698))

(assert (=> b!8016630 m!8379624))

(declare-fun m!8379700 () Bool)

(assert (=> b!8016630 m!8379700))

(assert (=> b!8016629 m!8379514))

(declare-fun m!8379702 () Bool)

(assert (=> b!8016629 m!8379702))

(declare-fun m!8379704 () Bool)

(assert (=> b!8016629 m!8379704))

(assert (=> b!8016471 d!2390144))

(declare-fun lt!2718716 () List!74919)

(declare-fun b!8016635 () Bool)

(declare-fun e!4722310 () Bool)

(assert (=> b!8016635 (= e!4722310 (or (not (= lt!2718619 Nil!74795)) (= lt!2718716 lt!2718614)))))

(declare-fun b!8016632 () Bool)

(declare-fun e!4722311 () List!74919)

(assert (=> b!8016632 (= e!4722311 lt!2718619)))

(declare-fun b!8016633 () Bool)

(assert (=> b!8016633 (= e!4722311 (Cons!74795 (h!81243 lt!2718614) (++!18516 (t!390662 lt!2718614) lt!2718619)))))

(declare-fun b!8016634 () Bool)

(declare-fun res!3169718 () Bool)

(assert (=> b!8016634 (=> (not res!3169718) (not e!4722310))))

(assert (=> b!8016634 (= res!3169718 (= (size!43592 lt!2718716) (+ (size!43592 lt!2718614) (size!43592 lt!2718619))))))

(declare-fun d!2390148 () Bool)

(assert (=> d!2390148 e!4722310))

(declare-fun res!3169719 () Bool)

(assert (=> d!2390148 (=> (not res!3169719) (not e!4722310))))

(assert (=> d!2390148 (= res!3169719 (= (content!15921 lt!2718716) (set.union (content!15921 lt!2718614) (content!15921 lt!2718619))))))

(assert (=> d!2390148 (= lt!2718716 e!4722311)))

(declare-fun c!1471371 () Bool)

(assert (=> d!2390148 (= c!1471371 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390148 (= (++!18516 lt!2718614 lt!2718619) lt!2718716)))

(assert (= (and d!2390148 c!1471371) b!8016632))

(assert (= (and d!2390148 (not c!1471371)) b!8016633))

(assert (= (and d!2390148 res!3169719) b!8016634))

(assert (= (and b!8016634 res!3169718) b!8016635))

(declare-fun m!8379706 () Bool)

(assert (=> b!8016633 m!8379706))

(declare-fun m!8379708 () Bool)

(assert (=> b!8016634 m!8379708))

(declare-fun m!8379710 () Bool)

(assert (=> b!8016634 m!8379710))

(declare-fun m!8379712 () Bool)

(assert (=> b!8016634 m!8379712))

(declare-fun m!8379716 () Bool)

(assert (=> d!2390148 m!8379716))

(declare-fun m!8379718 () Bool)

(assert (=> d!2390148 m!8379718))

(declare-fun m!8379720 () Bool)

(assert (=> d!2390148 m!8379720))

(assert (=> b!8016471 d!2390148))

(declare-fun d!2390150 () Bool)

(assert (=> d!2390150 (= (tail!15887 testedSuffix!271) (t!390662 testedSuffix!271))))

(assert (=> b!8016471 d!2390150))

(declare-fun lt!2718719 () List!74919)

(declare-fun b!8016641 () Bool)

(declare-fun e!4722313 () Bool)

(assert (=> b!8016641 (= e!4722313 (or (not (= (Cons!74795 lt!2718621 Nil!74795) Nil!74795)) (= lt!2718719 testedP!353)))))

(declare-fun b!8016638 () Bool)

(declare-fun e!4722314 () List!74919)

(assert (=> b!8016638 (= e!4722314 (Cons!74795 lt!2718621 Nil!74795))))

(declare-fun b!8016639 () Bool)

(assert (=> b!8016639 (= e!4722314 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) (Cons!74795 lt!2718621 Nil!74795))))))

(declare-fun b!8016640 () Bool)

(declare-fun res!3169720 () Bool)

(assert (=> b!8016640 (=> (not res!3169720) (not e!4722313))))

(assert (=> b!8016640 (= res!3169720 (= (size!43592 lt!2718719) (+ (size!43592 testedP!353) (size!43592 (Cons!74795 lt!2718621 Nil!74795)))))))

(declare-fun d!2390154 () Bool)

(assert (=> d!2390154 e!4722313))

(declare-fun res!3169721 () Bool)

(assert (=> d!2390154 (=> (not res!3169721) (not e!4722313))))

(assert (=> d!2390154 (= res!3169721 (= (content!15921 lt!2718719) (set.union (content!15921 testedP!353) (content!15921 (Cons!74795 lt!2718621 Nil!74795)))))))

(assert (=> d!2390154 (= lt!2718719 e!4722314)))

(declare-fun c!1471373 () Bool)

(assert (=> d!2390154 (= c!1471373 (is-Nil!74795 testedP!353))))

(assert (=> d!2390154 (= (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)) lt!2718719)))

(assert (= (and d!2390154 c!1471373) b!8016638))

(assert (= (and d!2390154 (not c!1471373)) b!8016639))

(assert (= (and d!2390154 res!3169721) b!8016640))

(assert (= (and b!8016640 res!3169720) b!8016641))

(declare-fun m!8379724 () Bool)

(assert (=> b!8016639 m!8379724))

(declare-fun m!8379726 () Bool)

(assert (=> b!8016640 m!8379726))

(assert (=> b!8016640 m!8379534))

(declare-fun m!8379728 () Bool)

(assert (=> b!8016640 m!8379728))

(declare-fun m!8379730 () Bool)

(assert (=> d!2390154 m!8379730))

(assert (=> d!2390154 m!8379638))

(declare-fun m!8379732 () Bool)

(assert (=> d!2390154 m!8379732))

(assert (=> b!8016471 d!2390154))

(declare-fun d!2390158 () Bool)

(assert (=> d!2390158 (= (head!16364 testedSuffix!271) (h!81243 testedSuffix!271))))

(assert (=> b!8016471 d!2390158))

(declare-fun d!2390160 () Bool)

(assert (=> d!2390160 (= (isEmpty!42983 (_1!38690 lt!2718623)) (is-Nil!74795 (_1!38690 lt!2718623)))))

(assert (=> b!8016460 d!2390160))

(declare-fun d!2390162 () Bool)

(assert (=> d!2390162 (isPrefix!6742 totalInput!1349 totalInput!1349)))

(declare-fun lt!2718722 () Unit!170878)

(declare-fun choose!60420 (List!74919 List!74919) Unit!170878)

(assert (=> d!2390162 (= lt!2718722 (choose!60420 totalInput!1349 totalInput!1349))))

(assert (=> d!2390162 (= (lemmaIsPrefixRefl!4184 totalInput!1349 totalInput!1349) lt!2718722)))

(declare-fun bs!1971052 () Bool)

(assert (= bs!1971052 d!2390162))

(assert (=> bs!1971052 m!8379502))

(declare-fun m!8379734 () Bool)

(assert (=> bs!1971052 m!8379734))

(assert (=> b!8016469 d!2390162))

(declare-fun d!2390164 () Bool)

(declare-fun e!4722316 () Bool)

(assert (=> d!2390164 e!4722316))

(declare-fun res!3169724 () Bool)

(assert (=> d!2390164 (=> res!3169724 e!4722316)))

(declare-fun lt!2718723 () Bool)

(assert (=> d!2390164 (= res!3169724 (not lt!2718723))))

(declare-fun e!4722317 () Bool)

(assert (=> d!2390164 (= lt!2718723 e!4722317)))

(declare-fun res!3169722 () Bool)

(assert (=> d!2390164 (=> res!3169722 e!4722317)))

(assert (=> d!2390164 (= res!3169722 (is-Nil!74795 totalInput!1349))))

(assert (=> d!2390164 (= (isPrefix!6742 totalInput!1349 totalInput!1349) lt!2718723)))

(declare-fun b!8016645 () Bool)

(assert (=> b!8016645 (= e!4722316 (>= (size!43592 totalInput!1349) (size!43592 totalInput!1349)))))

(declare-fun b!8016642 () Bool)

(declare-fun e!4722315 () Bool)

(assert (=> b!8016642 (= e!4722317 e!4722315)))

(declare-fun res!3169723 () Bool)

(assert (=> b!8016642 (=> (not res!3169723) (not e!4722315))))

(assert (=> b!8016642 (= res!3169723 (not (is-Nil!74795 totalInput!1349)))))

(declare-fun b!8016644 () Bool)

(assert (=> b!8016644 (= e!4722315 (isPrefix!6742 (tail!15887 totalInput!1349) (tail!15887 totalInput!1349)))))

(declare-fun b!8016643 () Bool)

(declare-fun res!3169725 () Bool)

(assert (=> b!8016643 (=> (not res!3169725) (not e!4722315))))

(assert (=> b!8016643 (= res!3169725 (= (head!16364 totalInput!1349) (head!16364 totalInput!1349)))))

(assert (= (and d!2390164 (not res!3169722)) b!8016642))

(assert (= (and b!8016642 res!3169723) b!8016643))

(assert (= (and b!8016643 res!3169725) b!8016644))

(assert (= (and d!2390164 (not res!3169724)) b!8016645))

(assert (=> b!8016645 m!8379498))

(assert (=> b!8016645 m!8379498))

(assert (=> b!8016644 m!8379624))

(assert (=> b!8016644 m!8379624))

(assert (=> b!8016644 m!8379624))

(assert (=> b!8016644 m!8379624))

(declare-fun m!8379736 () Bool)

(assert (=> b!8016644 m!8379736))

(assert (=> b!8016643 m!8379704))

(assert (=> b!8016643 m!8379704))

(assert (=> b!8016469 d!2390164))

(declare-fun d!2390166 () Bool)

(assert (=> d!2390166 (= totalInput!1349 testedP!353)))

(declare-fun lt!2718726 () Unit!170878)

(declare-fun choose!60421 (List!74919 List!74919 List!74919) Unit!170878)

(assert (=> d!2390166 (= lt!2718726 (choose!60421 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2390166 (isPrefix!6742 totalInput!1349 totalInput!1349)))

(assert (=> d!2390166 (= (lemmaIsPrefixSameLengthThenSameList!1754 totalInput!1349 testedP!353 totalInput!1349) lt!2718726)))

(declare-fun bs!1971054 () Bool)

(assert (= bs!1971054 d!2390166))

(declare-fun m!8379740 () Bool)

(assert (=> bs!1971054 m!8379740))

(assert (=> bs!1971054 m!8379502))

(assert (=> b!8016469 d!2390166))

(declare-fun d!2390170 () Bool)

(declare-fun lt!2718727 () Int)

(assert (=> d!2390170 (>= lt!2718727 0)))

(declare-fun e!4722318 () Int)

(assert (=> d!2390170 (= lt!2718727 e!4722318)))

(declare-fun c!1471374 () Bool)

(assert (=> d!2390170 (= c!1471374 (is-Nil!74795 (_1!38690 lt!2718623)))))

(assert (=> d!2390170 (= (size!43592 (_1!38690 lt!2718623)) lt!2718727)))

(declare-fun b!8016646 () Bool)

(assert (=> b!8016646 (= e!4722318 0)))

(declare-fun b!8016647 () Bool)

(assert (=> b!8016647 (= e!4722318 (+ 1 (size!43592 (t!390662 (_1!38690 lt!2718623)))))))

(assert (= (and d!2390170 c!1471374) b!8016646))

(assert (= (and d!2390170 (not c!1471374)) b!8016647))

(declare-fun m!8379742 () Bool)

(assert (=> b!8016647 m!8379742))

(assert (=> b!8016458 d!2390170))

(declare-fun d!2390172 () Bool)

(declare-fun e!4722320 () Bool)

(assert (=> d!2390172 e!4722320))

(declare-fun res!3169728 () Bool)

(assert (=> d!2390172 (=> res!3169728 e!4722320)))

(declare-fun lt!2718728 () Bool)

(assert (=> d!2390172 (= res!3169728 (not lt!2718728))))

(declare-fun e!4722321 () Bool)

(assert (=> d!2390172 (= lt!2718728 e!4722321)))

(declare-fun res!3169726 () Bool)

(assert (=> d!2390172 (=> res!3169726 e!4722321)))

(assert (=> d!2390172 (= res!3169726 (is-Nil!74795 testedP!353))))

(assert (=> d!2390172 (= (isPrefix!6742 testedP!353 totalInput!1349) lt!2718728)))

(declare-fun b!8016651 () Bool)

(assert (=> b!8016651 (= e!4722320 (>= (size!43592 totalInput!1349) (size!43592 testedP!353)))))

(declare-fun b!8016648 () Bool)

(declare-fun e!4722319 () Bool)

(assert (=> b!8016648 (= e!4722321 e!4722319)))

(declare-fun res!3169727 () Bool)

(assert (=> b!8016648 (=> (not res!3169727) (not e!4722319))))

(assert (=> b!8016648 (= res!3169727 (not (is-Nil!74795 totalInput!1349)))))

(declare-fun b!8016650 () Bool)

(assert (=> b!8016650 (= e!4722319 (isPrefix!6742 (tail!15887 testedP!353) (tail!15887 totalInput!1349)))))

(declare-fun b!8016649 () Bool)

(declare-fun res!3169729 () Bool)

(assert (=> b!8016649 (=> (not res!3169729) (not e!4722319))))

(assert (=> b!8016649 (= res!3169729 (= (head!16364 testedP!353) (head!16364 totalInput!1349)))))

(assert (= (and d!2390172 (not res!3169726)) b!8016648))

(assert (= (and b!8016648 res!3169727) b!8016649))

(assert (= (and b!8016649 res!3169729) b!8016650))

(assert (= (and d!2390172 (not res!3169728)) b!8016651))

(assert (=> b!8016651 m!8379498))

(assert (=> b!8016651 m!8379534))

(declare-fun m!8379744 () Bool)

(assert (=> b!8016650 m!8379744))

(assert (=> b!8016650 m!8379624))

(assert (=> b!8016650 m!8379744))

(assert (=> b!8016650 m!8379624))

(declare-fun m!8379746 () Bool)

(assert (=> b!8016650 m!8379746))

(declare-fun m!8379748 () Bool)

(assert (=> b!8016649 m!8379748))

(assert (=> b!8016649 m!8379704))

(assert (=> b!8016456 d!2390172))

(declare-fun d!2390174 () Bool)

(declare-fun e!4722323 () Bool)

(assert (=> d!2390174 e!4722323))

(declare-fun res!3169732 () Bool)

(assert (=> d!2390174 (=> res!3169732 e!4722323)))

(declare-fun lt!2718729 () Bool)

(assert (=> d!2390174 (= res!3169732 (not lt!2718729))))

(declare-fun e!4722324 () Bool)

(assert (=> d!2390174 (= lt!2718729 e!4722324)))

(declare-fun res!3169730 () Bool)

(assert (=> d!2390174 (=> res!3169730 e!4722324)))

(assert (=> d!2390174 (= res!3169730 (is-Nil!74795 testedP!353))))

(assert (=> d!2390174 (= (isPrefix!6742 testedP!353 lt!2718616) lt!2718729)))

(declare-fun b!8016655 () Bool)

(assert (=> b!8016655 (= e!4722323 (>= (size!43592 lt!2718616) (size!43592 testedP!353)))))

(declare-fun b!8016652 () Bool)

(declare-fun e!4722322 () Bool)

(assert (=> b!8016652 (= e!4722324 e!4722322)))

(declare-fun res!3169731 () Bool)

(assert (=> b!8016652 (=> (not res!3169731) (not e!4722322))))

(assert (=> b!8016652 (= res!3169731 (not (is-Nil!74795 lt!2718616)))))

(declare-fun b!8016654 () Bool)

(assert (=> b!8016654 (= e!4722322 (isPrefix!6742 (tail!15887 testedP!353) (tail!15887 lt!2718616)))))

(declare-fun b!8016653 () Bool)

(declare-fun res!3169733 () Bool)

(assert (=> b!8016653 (=> (not res!3169733) (not e!4722322))))

(assert (=> b!8016653 (= res!3169733 (= (head!16364 testedP!353) (head!16364 lt!2718616)))))

(assert (= (and d!2390174 (not res!3169730)) b!8016652))

(assert (= (and b!8016652 res!3169731) b!8016653))

(assert (= (and b!8016653 res!3169733) b!8016654))

(assert (= (and d!2390174 (not res!3169732)) b!8016655))

(declare-fun m!8379750 () Bool)

(assert (=> b!8016655 m!8379750))

(assert (=> b!8016655 m!8379534))

(assert (=> b!8016654 m!8379744))

(declare-fun m!8379752 () Bool)

(assert (=> b!8016654 m!8379752))

(assert (=> b!8016654 m!8379744))

(assert (=> b!8016654 m!8379752))

(declare-fun m!8379754 () Bool)

(assert (=> b!8016654 m!8379754))

(assert (=> b!8016653 m!8379748))

(declare-fun m!8379756 () Bool)

(assert (=> b!8016653 m!8379756))

(assert (=> b!8016456 d!2390174))

(declare-fun d!2390176 () Bool)

(assert (=> d!2390176 (isPrefix!6742 testedP!353 (++!18516 testedP!353 testedSuffix!271))))

(declare-fun lt!2718734 () Unit!170878)

(declare-fun choose!60422 (List!74919 List!74919) Unit!170878)

(assert (=> d!2390176 (= lt!2718734 (choose!60422 testedP!353 testedSuffix!271))))

(assert (=> d!2390176 (= (lemmaConcatTwoListThenFirstIsPrefix!3973 testedP!353 testedSuffix!271) lt!2718734)))

(declare-fun bs!1971055 () Bool)

(assert (= bs!1971055 d!2390176))

(assert (=> bs!1971055 m!8379554))

(assert (=> bs!1971055 m!8379554))

(declare-fun m!8379758 () Bool)

(assert (=> bs!1971055 m!8379758))

(declare-fun m!8379760 () Bool)

(assert (=> bs!1971055 m!8379760))

(assert (=> b!8016456 d!2390176))

(declare-fun b!8016659 () Bool)

(declare-fun e!4722325 () Bool)

(declare-fun lt!2718736 () List!74919)

(assert (=> b!8016659 (= e!4722325 (or (not (= (_2!38690 lt!2718623) Nil!74795)) (= lt!2718736 (_1!38690 lt!2718623))))))

(declare-fun b!8016656 () Bool)

(declare-fun e!4722326 () List!74919)

(assert (=> b!8016656 (= e!4722326 (_2!38690 lt!2718623))))

(declare-fun b!8016657 () Bool)

(assert (=> b!8016657 (= e!4722326 (Cons!74795 (h!81243 (_1!38690 lt!2718623)) (++!18516 (t!390662 (_1!38690 lt!2718623)) (_2!38690 lt!2718623))))))

(declare-fun b!8016658 () Bool)

(declare-fun res!3169734 () Bool)

(assert (=> b!8016658 (=> (not res!3169734) (not e!4722325))))

(assert (=> b!8016658 (= res!3169734 (= (size!43592 lt!2718736) (+ (size!43592 (_1!38690 lt!2718623)) (size!43592 (_2!38690 lt!2718623)))))))

(declare-fun d!2390178 () Bool)

(assert (=> d!2390178 e!4722325))

(declare-fun res!3169735 () Bool)

(assert (=> d!2390178 (=> (not res!3169735) (not e!4722325))))

(assert (=> d!2390178 (= res!3169735 (= (content!15921 lt!2718736) (set.union (content!15921 (_1!38690 lt!2718623)) (content!15921 (_2!38690 lt!2718623)))))))

(assert (=> d!2390178 (= lt!2718736 e!4722326)))

(declare-fun c!1471375 () Bool)

(assert (=> d!2390178 (= c!1471375 (is-Nil!74795 (_1!38690 lt!2718623)))))

(assert (=> d!2390178 (= (++!18516 (_1!38690 lt!2718623) (_2!38690 lt!2718623)) lt!2718736)))

(assert (= (and d!2390178 c!1471375) b!8016656))

(assert (= (and d!2390178 (not c!1471375)) b!8016657))

(assert (= (and d!2390178 res!3169735) b!8016658))

(assert (= (and b!8016658 res!3169734) b!8016659))

(declare-fun m!8379764 () Bool)

(assert (=> b!8016657 m!8379764))

(declare-fun m!8379766 () Bool)

(assert (=> b!8016658 m!8379766))

(assert (=> b!8016658 m!8379546))

(declare-fun m!8379768 () Bool)

(assert (=> b!8016658 m!8379768))

(declare-fun m!8379770 () Bool)

(assert (=> d!2390178 m!8379770))

(declare-fun m!8379772 () Bool)

(assert (=> d!2390178 m!8379772))

(declare-fun m!8379774 () Bool)

(assert (=> d!2390178 m!8379774))

(assert (=> b!8016465 d!2390178))

(declare-fun b!8016698 () Bool)

(declare-fun e!4722353 () tuple2!70774)

(assert (=> b!8016698 (= e!4722353 (tuple2!70775 Nil!74795 totalInput!1349))))

(declare-fun b!8016699 () Bool)

(declare-fun e!4722350 () tuple2!70774)

(declare-fun e!4722349 () tuple2!70774)

(assert (=> b!8016699 (= e!4722350 e!4722349)))

(declare-fun c!1471393 () Bool)

(assert (=> b!8016699 (= c!1471393 (= (+ 1 testedPSize!271) totalInputSize!629))))

(declare-fun b!8016700 () Bool)

(assert (=> b!8016700 (= e!4722350 (tuple2!70775 Nil!74795 totalInput!1349))))

(declare-fun b!8016701 () Bool)

(declare-fun e!4722351 () tuple2!70774)

(declare-fun lt!2718798 () tuple2!70774)

(assert (=> b!8016701 (= e!4722351 lt!2718798)))

(declare-fun d!2390182 () Bool)

(declare-fun e!4722354 () Bool)

(assert (=> d!2390182 e!4722354))

(declare-fun res!3169742 () Bool)

(assert (=> d!2390182 (=> (not res!3169742) (not e!4722354))))

(declare-fun lt!2718810 () tuple2!70774)

(assert (=> d!2390182 (= res!3169742 (= (++!18516 (_1!38690 lt!2718810) (_2!38690 lt!2718810)) totalInput!1349))))

(assert (=> d!2390182 (= lt!2718810 e!4722350)))

(declare-fun c!1471392 () Bool)

(assert (=> d!2390182 (= c!1471392 (lostCause!2077 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun lt!2718802 () Unit!170878)

(declare-fun Unit!170886 () Unit!170878)

(assert (=> d!2390182 (= lt!2718802 Unit!170886)))

(assert (=> d!2390182 (= (getSuffix!3937 totalInput!1349 lt!2718614) lt!2718619)))

(declare-fun lt!2718824 () Unit!170878)

(declare-fun lt!2718818 () Unit!170878)

(assert (=> d!2390182 (= lt!2718824 lt!2718818)))

(declare-fun lt!2718800 () List!74919)

(assert (=> d!2390182 (= lt!2718619 lt!2718800)))

(assert (=> d!2390182 (= lt!2718818 (lemmaSamePrefixThenSameSuffix!3099 lt!2718614 lt!2718619 lt!2718614 lt!2718800 totalInput!1349))))

(assert (=> d!2390182 (= lt!2718800 (getSuffix!3937 totalInput!1349 lt!2718614))))

(declare-fun lt!2718799 () Unit!170878)

(declare-fun lt!2718806 () Unit!170878)

(assert (=> d!2390182 (= lt!2718799 lt!2718806)))

(assert (=> d!2390182 (isPrefix!6742 lt!2718614 (++!18516 lt!2718614 lt!2718619))))

(assert (=> d!2390182 (= lt!2718806 (lemmaConcatTwoListThenFirstIsPrefix!3973 lt!2718614 lt!2718619))))

(assert (=> d!2390182 (validRegex!11994 (derivativeStep!6641 r!15422 lt!2718621))))

(assert (=> d!2390182 (= (findLongestMatchInner!2337 (derivativeStep!6641 r!15422 lt!2718621) lt!2718614 (+ 1 testedPSize!271) lt!2718619 totalInput!1349 totalInputSize!629) lt!2718810)))

(declare-fun bm!744665 () Bool)

(declare-fun call!744675 () Unit!170878)

(assert (=> bm!744665 (= call!744675 (lemmaIsPrefixSameLengthThenSameList!1754 totalInput!1349 lt!2718614 totalInput!1349))))

(declare-fun b!8016702 () Bool)

(declare-fun e!4722355 () Bool)

(assert (=> b!8016702 (= e!4722355 (>= (size!43592 (_1!38690 lt!2718810)) (size!43592 lt!2718614)))))

(declare-fun bm!744666 () Bool)

(declare-fun call!744672 () Bool)

(assert (=> bm!744666 (= call!744672 (nullable!9732 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun bm!744667 () Bool)

(declare-fun call!744673 () Unit!170878)

(assert (=> bm!744667 (= call!744673 (lemmaIsPrefixRefl!4184 totalInput!1349 totalInput!1349))))

(declare-fun b!8016703 () Bool)

(declare-fun c!1471395 () Bool)

(assert (=> b!8016703 (= c!1471395 call!744672)))

(declare-fun lt!2718809 () Unit!170878)

(declare-fun lt!2718813 () Unit!170878)

(assert (=> b!8016703 (= lt!2718809 lt!2718813)))

(assert (=> b!8016703 (= totalInput!1349 lt!2718614)))

(assert (=> b!8016703 (= lt!2718813 call!744675)))

(declare-fun lt!2718815 () Unit!170878)

(declare-fun lt!2718807 () Unit!170878)

(assert (=> b!8016703 (= lt!2718815 lt!2718807)))

(declare-fun call!744674 () Bool)

(assert (=> b!8016703 call!744674))

(assert (=> b!8016703 (= lt!2718807 call!744673)))

(assert (=> b!8016703 (= e!4722349 e!4722353)))

(declare-fun bm!744668 () Bool)

(declare-fun call!744677 () C!43718)

(assert (=> bm!744668 (= call!744677 (head!16364 lt!2718619))))

(declare-fun b!8016704 () Bool)

(assert (=> b!8016704 (= e!4722351 (tuple2!70775 lt!2718614 lt!2718619))))

(declare-fun b!8016705 () Bool)

(declare-fun e!4722352 () Unit!170878)

(declare-fun Unit!170887 () Unit!170878)

(assert (=> b!8016705 (= e!4722352 Unit!170887)))

(declare-fun lt!2718803 () Unit!170878)

(assert (=> b!8016705 (= lt!2718803 call!744673)))

(assert (=> b!8016705 call!744674))

(declare-fun lt!2718816 () Unit!170878)

(assert (=> b!8016705 (= lt!2718816 lt!2718803)))

(declare-fun lt!2718811 () Unit!170878)

(assert (=> b!8016705 (= lt!2718811 call!744675)))

(assert (=> b!8016705 (= totalInput!1349 lt!2718614)))

(declare-fun lt!2718801 () Unit!170878)

(assert (=> b!8016705 (= lt!2718801 lt!2718811)))

(assert (=> b!8016705 false))

(declare-fun b!8016706 () Bool)

(declare-fun e!4722348 () tuple2!70774)

(declare-fun call!744670 () tuple2!70774)

(assert (=> b!8016706 (= e!4722348 call!744670)))

(declare-fun b!8016707 () Bool)

(declare-fun c!1471397 () Bool)

(assert (=> b!8016707 (= c!1471397 call!744672)))

(declare-fun lt!2718808 () Unit!170878)

(declare-fun lt!2718805 () Unit!170878)

(assert (=> b!8016707 (= lt!2718808 lt!2718805)))

(declare-fun lt!2718821 () List!74919)

(declare-fun lt!2718814 () C!43718)

(assert (=> b!8016707 (= (++!18516 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795)) lt!2718821) totalInput!1349)))

(assert (=> b!8016707 (= lt!2718805 (lemmaMoveElementToOtherListKeepsConcatEq!3597 lt!2718614 lt!2718814 lt!2718821 totalInput!1349))))

(assert (=> b!8016707 (= lt!2718821 (tail!15887 lt!2718619))))

(assert (=> b!8016707 (= lt!2718814 (head!16364 lt!2718619))))

(declare-fun lt!2718822 () Unit!170878)

(declare-fun lt!2718797 () Unit!170878)

(assert (=> b!8016707 (= lt!2718822 lt!2718797)))

(assert (=> b!8016707 (isPrefix!6742 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)) totalInput!1349)))

(assert (=> b!8016707 (= lt!2718797 (lemmaAddHeadSuffixToPrefixStillPrefix!1415 lt!2718614 totalInput!1349))))

(declare-fun lt!2718804 () Unit!170878)

(declare-fun lt!2718819 () Unit!170878)

(assert (=> b!8016707 (= lt!2718804 lt!2718819)))

(assert (=> b!8016707 (= lt!2718819 (lemmaAddHeadSuffixToPrefixStillPrefix!1415 lt!2718614 totalInput!1349))))

(declare-fun lt!2718823 () List!74919)

(assert (=> b!8016707 (= lt!2718823 (++!18516 lt!2718614 (Cons!74795 (head!16364 lt!2718619) Nil!74795)))))

(declare-fun lt!2718820 () Unit!170878)

(assert (=> b!8016707 (= lt!2718820 e!4722352)))

(declare-fun c!1471396 () Bool)

(assert (=> b!8016707 (= c!1471396 (= (size!43592 lt!2718614) (size!43592 totalInput!1349)))))

(declare-fun lt!2718812 () Unit!170878)

(declare-fun lt!2718817 () Unit!170878)

(assert (=> b!8016707 (= lt!2718812 lt!2718817)))

(assert (=> b!8016707 (<= (size!43592 lt!2718614) (size!43592 totalInput!1349))))

(assert (=> b!8016707 (= lt!2718817 (lemmaIsPrefixThenSmallerEqSize!1225 lt!2718614 totalInput!1349))))

(assert (=> b!8016707 (= e!4722349 e!4722348)))

(declare-fun b!8016708 () Bool)

(declare-fun Unit!170888 () Unit!170878)

(assert (=> b!8016708 (= e!4722352 Unit!170888)))

(declare-fun bm!744669 () Bool)

(declare-fun call!744671 () List!74919)

(declare-fun call!744676 () Regex!21690)

(assert (=> bm!744669 (= call!744670 (findLongestMatchInner!2337 call!744676 lt!2718823 (+ 1 testedPSize!271 1) call!744671 totalInput!1349 totalInputSize!629))))

(declare-fun bm!744670 () Bool)

(assert (=> bm!744670 (= call!744674 (isPrefix!6742 totalInput!1349 totalInput!1349))))

(declare-fun b!8016709 () Bool)

(assert (=> b!8016709 (= e!4722348 e!4722351)))

(assert (=> b!8016709 (= lt!2718798 call!744670)))

(declare-fun c!1471394 () Bool)

(assert (=> b!8016709 (= c!1471394 (isEmpty!42983 (_1!38690 lt!2718798)))))

(declare-fun bm!744671 () Bool)

(assert (=> bm!744671 (= call!744676 (derivativeStep!6641 (derivativeStep!6641 r!15422 lt!2718621) call!744677))))

(declare-fun bm!744672 () Bool)

(assert (=> bm!744672 (= call!744671 (tail!15887 lt!2718619))))

(declare-fun b!8016710 () Bool)

(assert (=> b!8016710 (= e!4722354 e!4722355)))

(declare-fun res!3169743 () Bool)

(assert (=> b!8016710 (=> res!3169743 e!4722355)))

(assert (=> b!8016710 (= res!3169743 (isEmpty!42983 (_1!38690 lt!2718810)))))

(declare-fun b!8016711 () Bool)

(assert (=> b!8016711 (= e!4722353 (tuple2!70775 lt!2718614 Nil!74795))))

(assert (= (and d!2390182 c!1471392) b!8016700))

(assert (= (and d!2390182 (not c!1471392)) b!8016699))

(assert (= (and b!8016699 c!1471393) b!8016703))

(assert (= (and b!8016699 (not c!1471393)) b!8016707))

(assert (= (and b!8016703 c!1471395) b!8016711))

(assert (= (and b!8016703 (not c!1471395)) b!8016698))

(assert (= (and b!8016707 c!1471396) b!8016705))

(assert (= (and b!8016707 (not c!1471396)) b!8016708))

(assert (= (and b!8016707 c!1471397) b!8016709))

(assert (= (and b!8016707 (not c!1471397)) b!8016706))

(assert (= (and b!8016709 c!1471394) b!8016704))

(assert (= (and b!8016709 (not c!1471394)) b!8016701))

(assert (= (or b!8016709 b!8016706) bm!744668))

(assert (= (or b!8016709 b!8016706) bm!744672))

(assert (= (or b!8016709 b!8016706) bm!744671))

(assert (= (or b!8016709 b!8016706) bm!744669))

(assert (= (or b!8016703 b!8016707) bm!744666))

(assert (= (or b!8016703 b!8016705) bm!744670))

(assert (= (or b!8016703 b!8016705) bm!744665))

(assert (= (or b!8016703 b!8016705) bm!744667))

(assert (= (and d!2390182 res!3169742) b!8016710))

(assert (= (and b!8016710 (not res!3169743)) b!8016702))

(declare-fun m!8379792 () Bool)

(assert (=> d!2390182 m!8379792))

(declare-fun m!8379794 () Bool)

(assert (=> d!2390182 m!8379794))

(assert (=> d!2390182 m!8379550))

(declare-fun m!8379796 () Bool)

(assert (=> d!2390182 m!8379796))

(assert (=> d!2390182 m!8379550))

(declare-fun m!8379798 () Bool)

(assert (=> d!2390182 m!8379798))

(declare-fun m!8379800 () Bool)

(assert (=> d!2390182 m!8379800))

(assert (=> d!2390182 m!8379512))

(declare-fun m!8379802 () Bool)

(assert (=> d!2390182 m!8379802))

(assert (=> d!2390182 m!8379512))

(declare-fun m!8379804 () Bool)

(assert (=> d!2390182 m!8379804))

(declare-fun m!8379806 () Bool)

(assert (=> b!8016702 m!8379806))

(assert (=> b!8016702 m!8379710))

(assert (=> bm!744667 m!8379500))

(declare-fun m!8379808 () Bool)

(assert (=> b!8016707 m!8379808))

(declare-fun m!8379810 () Bool)

(assert (=> b!8016707 m!8379810))

(declare-fun m!8379812 () Bool)

(assert (=> b!8016707 m!8379812))

(declare-fun m!8379814 () Bool)

(assert (=> b!8016707 m!8379814))

(assert (=> b!8016707 m!8379498))

(declare-fun m!8379816 () Bool)

(assert (=> b!8016707 m!8379816))

(assert (=> b!8016707 m!8379804))

(declare-fun m!8379818 () Bool)

(assert (=> b!8016707 m!8379818))

(declare-fun m!8379820 () Bool)

(assert (=> b!8016707 m!8379820))

(declare-fun m!8379822 () Bool)

(assert (=> b!8016707 m!8379822))

(assert (=> b!8016707 m!8379812))

(assert (=> b!8016707 m!8379710))

(assert (=> b!8016707 m!8379816))

(declare-fun m!8379824 () Bool)

(assert (=> b!8016707 m!8379824))

(assert (=> b!8016707 m!8379804))

(declare-fun m!8379826 () Bool)

(assert (=> b!8016707 m!8379826))

(declare-fun m!8379828 () Bool)

(assert (=> b!8016707 m!8379828))

(declare-fun m!8379830 () Bool)

(assert (=> bm!744665 m!8379830))

(declare-fun m!8379832 () Bool)

(assert (=> b!8016709 m!8379832))

(assert (=> bm!744670 m!8379502))

(assert (=> bm!744671 m!8379550))

(declare-fun m!8379834 () Bool)

(assert (=> bm!744671 m!8379834))

(declare-fun m!8379836 () Bool)

(assert (=> b!8016710 m!8379836))

(assert (=> bm!744668 m!8379818))

(assert (=> bm!744672 m!8379828))

(declare-fun m!8379838 () Bool)

(assert (=> bm!744669 m!8379838))

(assert (=> bm!744666 m!8379550))

(declare-fun m!8379840 () Bool)

(assert (=> bm!744666 m!8379840))

(assert (=> b!8016465 d!2390182))

(declare-fun bm!744681 () Bool)

(declare-fun call!744689 () Regex!21690)

(declare-fun call!744686 () Regex!21690)

(assert (=> bm!744681 (= call!744689 call!744686)))

(declare-fun bm!744682 () Bool)

(declare-fun call!744688 () Regex!21690)

(assert (=> bm!744682 (= call!744688 call!744689)))

(declare-fun b!8016732 () Bool)

(declare-fun e!4722366 () Regex!21690)

(declare-fun e!4722370 () Regex!21690)

(assert (=> b!8016732 (= e!4722366 e!4722370)))

(declare-fun c!1471408 () Bool)

(assert (=> b!8016732 (= c!1471408 (is-ElementMatch!21690 r!15422))))

(declare-fun b!8016733 () Bool)

(assert (=> b!8016733 (= e!4722370 (ite (= lt!2718621 (c!1471344 r!15422)) EmptyExpr!21690 EmptyLang!21690))))

(declare-fun b!8016734 () Bool)

(declare-fun e!4722368 () Regex!21690)

(assert (=> b!8016734 (= e!4722368 (Concat!30689 call!744689 r!15422))))

(declare-fun b!8016735 () Bool)

(declare-fun e!4722367 () Regex!21690)

(declare-fun call!744687 () Regex!21690)

(assert (=> b!8016735 (= e!4722367 (Union!21690 call!744687 call!744686))))

(declare-fun b!8016736 () Bool)

(declare-fun c!1471409 () Bool)

(assert (=> b!8016736 (= c!1471409 (nullable!9732 (regOne!43892 r!15422)))))

(declare-fun e!4722369 () Regex!21690)

(assert (=> b!8016736 (= e!4722368 e!4722369)))

(declare-fun b!8016737 () Bool)

(assert (=> b!8016737 (= e!4722369 (Union!21690 (Concat!30689 call!744687 (regTwo!43892 r!15422)) call!744688))))

(declare-fun b!8016738 () Bool)

(assert (=> b!8016738 (= e!4722366 EmptyLang!21690)))

(declare-fun b!8016739 () Bool)

(assert (=> b!8016739 (= e!4722369 (Union!21690 (Concat!30689 call!744688 (regTwo!43892 r!15422)) EmptyLang!21690))))

(declare-fun b!8016740 () Bool)

(declare-fun c!1471412 () Bool)

(assert (=> b!8016740 (= c!1471412 (is-Union!21690 r!15422))))

(assert (=> b!8016740 (= e!4722370 e!4722367)))

(declare-fun bm!744684 () Bool)

(assert (=> bm!744684 (= call!744687 (derivativeStep!6641 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)) lt!2718621))))

(declare-fun b!8016741 () Bool)

(assert (=> b!8016741 (= e!4722367 e!4722368)))

(declare-fun c!1471410 () Bool)

(assert (=> b!8016741 (= c!1471410 (is-Star!21690 r!15422))))

(declare-fun d!2390190 () Bool)

(declare-fun lt!2718827 () Regex!21690)

(assert (=> d!2390190 (validRegex!11994 lt!2718827)))

(assert (=> d!2390190 (= lt!2718827 e!4722366)))

(declare-fun c!1471411 () Bool)

(assert (=> d!2390190 (= c!1471411 (or (is-EmptyExpr!21690 r!15422) (is-EmptyLang!21690 r!15422)))))

(assert (=> d!2390190 (validRegex!11994 r!15422)))

(assert (=> d!2390190 (= (derivativeStep!6641 r!15422 lt!2718621) lt!2718827)))

(declare-fun bm!744683 () Bool)

(assert (=> bm!744683 (= call!744686 (derivativeStep!6641 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))) lt!2718621))))

(assert (= (and d!2390190 c!1471411) b!8016738))

(assert (= (and d!2390190 (not c!1471411)) b!8016732))

(assert (= (and b!8016732 c!1471408) b!8016733))

(assert (= (and b!8016732 (not c!1471408)) b!8016740))

(assert (= (and b!8016740 c!1471412) b!8016735))

(assert (= (and b!8016740 (not c!1471412)) b!8016741))

(assert (= (and b!8016741 c!1471410) b!8016734))

(assert (= (and b!8016741 (not c!1471410)) b!8016736))

(assert (= (and b!8016736 c!1471409) b!8016737))

(assert (= (and b!8016736 (not c!1471409)) b!8016739))

(assert (= (or b!8016737 b!8016739) bm!744682))

(assert (= (or b!8016734 bm!744682) bm!744681))

(assert (= (or b!8016735 bm!744681) bm!744683))

(assert (= (or b!8016735 b!8016737) bm!744684))

(declare-fun m!8379842 () Bool)

(assert (=> b!8016736 m!8379842))

(declare-fun m!8379844 () Bool)

(assert (=> bm!744684 m!8379844))

(declare-fun m!8379846 () Bool)

(assert (=> d!2390190 m!8379846))

(assert (=> d!2390190 m!8379536))

(declare-fun m!8379848 () Bool)

(assert (=> bm!744683 m!8379848))

(assert (=> b!8016465 d!2390190))

(declare-fun d!2390192 () Bool)

(declare-fun lt!2718828 () Int)

(assert (=> d!2390192 (>= lt!2718828 0)))

(declare-fun e!4722371 () Int)

(assert (=> d!2390192 (= lt!2718828 e!4722371)))

(declare-fun c!1471413 () Bool)

(assert (=> d!2390192 (= c!1471413 (is-Nil!74795 testedP!353))))

(assert (=> d!2390192 (= (size!43592 testedP!353) lt!2718828)))

(declare-fun b!8016742 () Bool)

(assert (=> b!8016742 (= e!4722371 0)))

(declare-fun b!8016743 () Bool)

(assert (=> b!8016743 (= e!4722371 (+ 1 (size!43592 (t!390662 testedP!353))))))

(assert (= (and d!2390192 c!1471413) b!8016742))

(assert (= (and d!2390192 (not c!1471413)) b!8016743))

(declare-fun m!8379850 () Bool)

(assert (=> b!8016743 m!8379850))

(assert (=> b!8016474 d!2390192))

(declare-fun b!8016748 () Bool)

(declare-fun e!4722374 () Bool)

(declare-fun tp!2399549 () Bool)

(assert (=> b!8016748 (= e!4722374 (and tp_is_empty!53923 tp!2399549))))

(assert (=> b!8016457 (= tp!2399518 e!4722374)))

(assert (= (and b!8016457 (is-Cons!74795 (t!390662 testedP!353))) b!8016748))

(declare-fun b!8016749 () Bool)

(declare-fun e!4722375 () Bool)

(declare-fun tp!2399550 () Bool)

(assert (=> b!8016749 (= e!4722375 (and tp_is_empty!53923 tp!2399550))))

(assert (=> b!8016468 (= tp!2399521 e!4722375)))

(assert (= (and b!8016468 (is-Cons!74795 (t!390662 totalInput!1349))) b!8016749))

(declare-fun b!8016763 () Bool)

(declare-fun e!4722378 () Bool)

(declare-fun tp!2399565 () Bool)

(declare-fun tp!2399564 () Bool)

(assert (=> b!8016763 (= e!4722378 (and tp!2399565 tp!2399564))))

(declare-fun b!8016761 () Bool)

(declare-fun tp!2399561 () Bool)

(declare-fun tp!2399563 () Bool)

(assert (=> b!8016761 (= e!4722378 (and tp!2399561 tp!2399563))))

(declare-fun b!8016762 () Bool)

(declare-fun tp!2399562 () Bool)

(assert (=> b!8016762 (= e!4722378 tp!2399562)))

(assert (=> b!8016466 (= tp!2399516 e!4722378)))

(declare-fun b!8016760 () Bool)

(assert (=> b!8016760 (= e!4722378 tp_is_empty!53923)))

(assert (= (and b!8016466 (is-ElementMatch!21690 (regOne!43893 r!15422))) b!8016760))

(assert (= (and b!8016466 (is-Concat!30689 (regOne!43893 r!15422))) b!8016761))

(assert (= (and b!8016466 (is-Star!21690 (regOne!43893 r!15422))) b!8016762))

(assert (= (and b!8016466 (is-Union!21690 (regOne!43893 r!15422))) b!8016763))

(declare-fun b!8016767 () Bool)

(declare-fun e!4722379 () Bool)

(declare-fun tp!2399570 () Bool)

(declare-fun tp!2399569 () Bool)

(assert (=> b!8016767 (= e!4722379 (and tp!2399570 tp!2399569))))

(declare-fun b!8016765 () Bool)

(declare-fun tp!2399566 () Bool)

(declare-fun tp!2399568 () Bool)

(assert (=> b!8016765 (= e!4722379 (and tp!2399566 tp!2399568))))

(declare-fun b!8016766 () Bool)

(declare-fun tp!2399567 () Bool)

(assert (=> b!8016766 (= e!4722379 tp!2399567)))

(assert (=> b!8016466 (= tp!2399522 e!4722379)))

(declare-fun b!8016764 () Bool)

(assert (=> b!8016764 (= e!4722379 tp_is_empty!53923)))

(assert (= (and b!8016466 (is-ElementMatch!21690 (regTwo!43893 r!15422))) b!8016764))

(assert (= (and b!8016466 (is-Concat!30689 (regTwo!43893 r!15422))) b!8016765))

(assert (= (and b!8016466 (is-Star!21690 (regTwo!43893 r!15422))) b!8016766))

(assert (= (and b!8016466 (is-Union!21690 (regTwo!43893 r!15422))) b!8016767))

(declare-fun b!8016771 () Bool)

(declare-fun e!4722380 () Bool)

(declare-fun tp!2399575 () Bool)

(declare-fun tp!2399574 () Bool)

(assert (=> b!8016771 (= e!4722380 (and tp!2399575 tp!2399574))))

(declare-fun b!8016769 () Bool)

(declare-fun tp!2399571 () Bool)

(declare-fun tp!2399573 () Bool)

(assert (=> b!8016769 (= e!4722380 (and tp!2399571 tp!2399573))))

(declare-fun b!8016770 () Bool)

(declare-fun tp!2399572 () Bool)

(assert (=> b!8016770 (= e!4722380 tp!2399572)))

(assert (=> b!8016467 (= tp!2399520 e!4722380)))

(declare-fun b!8016768 () Bool)

(assert (=> b!8016768 (= e!4722380 tp_is_empty!53923)))

(assert (= (and b!8016467 (is-ElementMatch!21690 (regOne!43892 r!15422))) b!8016768))

(assert (= (and b!8016467 (is-Concat!30689 (regOne!43892 r!15422))) b!8016769))

(assert (= (and b!8016467 (is-Star!21690 (regOne!43892 r!15422))) b!8016770))

(assert (= (and b!8016467 (is-Union!21690 (regOne!43892 r!15422))) b!8016771))

(declare-fun b!8016775 () Bool)

(declare-fun e!4722381 () Bool)

(declare-fun tp!2399580 () Bool)

(declare-fun tp!2399579 () Bool)

(assert (=> b!8016775 (= e!4722381 (and tp!2399580 tp!2399579))))

(declare-fun b!8016773 () Bool)

(declare-fun tp!2399576 () Bool)

(declare-fun tp!2399578 () Bool)

(assert (=> b!8016773 (= e!4722381 (and tp!2399576 tp!2399578))))

(declare-fun b!8016774 () Bool)

(declare-fun tp!2399577 () Bool)

(assert (=> b!8016774 (= e!4722381 tp!2399577)))

(assert (=> b!8016467 (= tp!2399519 e!4722381)))

(declare-fun b!8016772 () Bool)

(assert (=> b!8016772 (= e!4722381 tp_is_empty!53923)))

(assert (= (and b!8016467 (is-ElementMatch!21690 (regTwo!43892 r!15422))) b!8016772))

(assert (= (and b!8016467 (is-Concat!30689 (regTwo!43892 r!15422))) b!8016773))

(assert (= (and b!8016467 (is-Star!21690 (regTwo!43892 r!15422))) b!8016774))

(assert (= (and b!8016467 (is-Union!21690 (regTwo!43892 r!15422))) b!8016775))

(declare-fun b!8016776 () Bool)

(declare-fun e!4722382 () Bool)

(declare-fun tp!2399581 () Bool)

(assert (=> b!8016776 (= e!4722382 (and tp_is_empty!53923 tp!2399581))))

(assert (=> b!8016455 (= tp!2399515 e!4722382)))

(assert (= (and b!8016455 (is-Cons!74795 (t!390662 testedSuffix!271))) b!8016776))

(declare-fun b!8016780 () Bool)

(declare-fun e!4722383 () Bool)

(declare-fun tp!2399586 () Bool)

(declare-fun tp!2399585 () Bool)

(assert (=> b!8016780 (= e!4722383 (and tp!2399586 tp!2399585))))

(declare-fun b!8016778 () Bool)

(declare-fun tp!2399582 () Bool)

(declare-fun tp!2399584 () Bool)

(assert (=> b!8016778 (= e!4722383 (and tp!2399582 tp!2399584))))

(declare-fun b!8016779 () Bool)

(declare-fun tp!2399583 () Bool)

(assert (=> b!8016779 (= e!4722383 tp!2399583)))

(assert (=> b!8016459 (= tp!2399517 e!4722383)))

(declare-fun b!8016777 () Bool)

(assert (=> b!8016777 (= e!4722383 tp_is_empty!53923)))

(assert (= (and b!8016459 (is-ElementMatch!21690 (reg!22019 r!15422))) b!8016777))

(assert (= (and b!8016459 (is-Concat!30689 (reg!22019 r!15422))) b!8016778))

(assert (= (and b!8016459 (is-Star!21690 (reg!22019 r!15422))) b!8016779))

(assert (= (and b!8016459 (is-Union!21690 (reg!22019 r!15422))) b!8016780))

(push 1)

(assert (not bm!744683))

(assert (not b!8016640))

(assert (not b!8016564))

(assert (not b!8016762))

(assert (not b!8016643))

(assert (not b!8016631))

(assert (not b!8016605))

(assert (not b!8016771))

(assert (not d!2390176))

(assert (not d!2390134))

(assert (not b!8016654))

(assert (not d!2390136))

(assert (not b!8016629))

(assert (not b!8016702))

(assert (not b!8016649))

(assert (not b!8016639))

(assert (not bm!744667))

(assert (not b!8016773))

(assert tp_is_empty!53923)

(assert (not b!8016565))

(assert (not bm!744672))

(assert (not b!8016650))

(assert (not d!2390166))

(assert (not b!8016651))

(assert (not b!8016743))

(assert (not b!8016769))

(assert (not d!2390182))

(assert (not b!8016748))

(assert (not bm!744648))

(assert (not b!8016774))

(assert (not b!8016634))

(assert (not bm!744665))

(assert (not bm!744670))

(assert (not b!8016775))

(assert (not b!8016776))

(assert (not b!8016767))

(assert (not b!8016736))

(assert (not b!8016770))

(assert (not b!8016655))

(assert (not bm!744669))

(assert (not b!8016645))

(assert (not b!8016644))

(assert (not b!8016707))

(assert (not b!8016603))

(assert (not d!2390116))

(assert (not d!2390118))

(assert (not b!8016657))

(assert (not b!8016780))

(assert (not d!2390142))

(assert (not bm!744684))

(assert (not b!8016709))

(assert (not d!2390112))

(assert (not b!8016763))

(assert (not d!2390178))

(assert (not b!8016765))

(assert (not b!8016606))

(assert (not b!8016710))

(assert (not b!8016766))

(assert (not bm!744647))

(assert (not d!2390190))

(assert (not bm!744671))

(assert (not d!2390162))

(assert (not b!8016545))

(assert (not bm!744668))

(assert (not d!2390148))

(assert (not b!8016778))

(assert (not b!8016633))

(assert (not b!8016658))

(assert (not d!2390124))

(assert (not bm!744666))

(assert (not b!8016779))

(assert (not d!2390138))

(assert (not d!2390154))

(assert (not b!8016749))

(assert (not b!8016653))

(assert (not d!2390122))

(assert (not b!8016761))

(assert (not b!8016595))

(assert (not b!8016647))

(assert (not b!8016630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2390226 () Bool)

(declare-fun lt!2718932 () Int)

(assert (=> d!2390226 (>= lt!2718932 0)))

(declare-fun e!4722472 () Int)

(assert (=> d!2390226 (= lt!2718932 e!4722472)))

(declare-fun c!1471457 () Bool)

(assert (=> d!2390226 (= c!1471457 (is-Nil!74795 (t!390662 (_1!38690 lt!2718623))))))

(assert (=> d!2390226 (= (size!43592 (t!390662 (_1!38690 lt!2718623))) lt!2718932)))

(declare-fun b!8016943 () Bool)

(assert (=> b!8016943 (= e!4722472 0)))

(declare-fun b!8016944 () Bool)

(assert (=> b!8016944 (= e!4722472 (+ 1 (size!43592 (t!390662 (t!390662 (_1!38690 lt!2718623))))))))

(assert (= (and d!2390226 c!1471457) b!8016943))

(assert (= (and d!2390226 (not c!1471457)) b!8016944))

(declare-fun m!8379994 () Bool)

(assert (=> b!8016944 m!8379994))

(assert (=> b!8016647 d!2390226))

(declare-fun d!2390228 () Bool)

(declare-fun lt!2718933 () List!74919)

(assert (=> d!2390228 (= (++!18516 (t!390662 testedP!353) lt!2718933) (tail!15887 totalInput!1349))))

(declare-fun e!4722473 () List!74919)

(assert (=> d!2390228 (= lt!2718933 e!4722473)))

(declare-fun c!1471458 () Bool)

(assert (=> d!2390228 (= c!1471458 (is-Cons!74795 (t!390662 testedP!353)))))

(assert (=> d!2390228 (>= (size!43592 (tail!15887 totalInput!1349)) (size!43592 (t!390662 testedP!353)))))

(assert (=> d!2390228 (= (getSuffix!3937 (tail!15887 totalInput!1349) (t!390662 testedP!353)) lt!2718933)))

(declare-fun b!8016945 () Bool)

(assert (=> b!8016945 (= e!4722473 (getSuffix!3937 (tail!15887 (tail!15887 totalInput!1349)) (t!390662 (t!390662 testedP!353))))))

(declare-fun b!8016946 () Bool)

(assert (=> b!8016946 (= e!4722473 (tail!15887 totalInput!1349))))

(assert (= (and d!2390228 c!1471458) b!8016945))

(assert (= (and d!2390228 (not c!1471458)) b!8016946))

(declare-fun m!8379996 () Bool)

(assert (=> d!2390228 m!8379996))

(assert (=> d!2390228 m!8379624))

(declare-fun m!8379998 () Bool)

(assert (=> d!2390228 m!8379998))

(assert (=> d!2390228 m!8379850))

(assert (=> b!8016945 m!8379624))

(declare-fun m!8380000 () Bool)

(assert (=> b!8016945 m!8380000))

(assert (=> b!8016945 m!8380000))

(declare-fun m!8380002 () Bool)

(assert (=> b!8016945 m!8380002))

(assert (=> b!8016545 d!2390228))

(declare-fun d!2390230 () Bool)

(assert (=> d!2390230 (= (tail!15887 totalInput!1349) (t!390662 totalInput!1349))))

(assert (=> b!8016545 d!2390230))

(declare-fun d!2390232 () Bool)

(assert (=> d!2390232 (= (isEmpty!42983 (_1!38690 lt!2718810)) (is-Nil!74795 (_1!38690 lt!2718810)))))

(assert (=> b!8016710 d!2390232))

(declare-fun d!2390234 () Bool)

(assert (=> d!2390234 (= totalInput!1349 testedP!353)))

(assert (=> d!2390234 true))

(declare-fun _$60!1414 () Unit!170878)

(assert (=> d!2390234 (= (choose!60421 totalInput!1349 testedP!353 totalInput!1349) _$60!1414)))

(assert (=> d!2390166 d!2390234))

(assert (=> d!2390166 d!2390164))

(declare-fun d!2390236 () Bool)

(declare-fun c!1471461 () Bool)

(assert (=> d!2390236 (= c!1471461 (is-Nil!74795 lt!2718693))))

(declare-fun e!4722476 () (Set C!43718))

(assert (=> d!2390236 (= (content!15921 lt!2718693) e!4722476)))

(declare-fun b!8016951 () Bool)

(assert (=> b!8016951 (= e!4722476 (as set.empty (Set C!43718)))))

(declare-fun b!8016952 () Bool)

(assert (=> b!8016952 (= e!4722476 (set.union (set.insert (h!81243 lt!2718693) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718693))))))

(assert (= (and d!2390236 c!1471461) b!8016951))

(assert (= (and d!2390236 (not c!1471461)) b!8016952))

(declare-fun m!8380004 () Bool)

(assert (=> b!8016952 m!8380004))

(declare-fun m!8380006 () Bool)

(assert (=> b!8016952 m!8380006))

(assert (=> d!2390124 d!2390236))

(declare-fun d!2390238 () Bool)

(declare-fun c!1471462 () Bool)

(assert (=> d!2390238 (= c!1471462 (is-Nil!74795 testedP!353))))

(declare-fun e!4722477 () (Set C!43718))

(assert (=> d!2390238 (= (content!15921 testedP!353) e!4722477)))

(declare-fun b!8016953 () Bool)

(assert (=> b!8016953 (= e!4722477 (as set.empty (Set C!43718)))))

(declare-fun b!8016954 () Bool)

(assert (=> b!8016954 (= e!4722477 (set.union (set.insert (h!81243 testedP!353) (as set.empty (Set C!43718))) (content!15921 (t!390662 testedP!353))))))

(assert (= (and d!2390238 c!1471462) b!8016953))

(assert (= (and d!2390238 (not c!1471462)) b!8016954))

(declare-fun m!8380008 () Bool)

(assert (=> b!8016954 m!8380008))

(declare-fun m!8380010 () Bool)

(assert (=> b!8016954 m!8380010))

(assert (=> d!2390124 d!2390238))

(declare-fun d!2390240 () Bool)

(declare-fun c!1471463 () Bool)

(assert (=> d!2390240 (= c!1471463 (is-Nil!74795 testedSuffix!271))))

(declare-fun e!4722478 () (Set C!43718))

(assert (=> d!2390240 (= (content!15921 testedSuffix!271) e!4722478)))

(declare-fun b!8016955 () Bool)

(assert (=> b!8016955 (= e!4722478 (as set.empty (Set C!43718)))))

(declare-fun b!8016956 () Bool)

(assert (=> b!8016956 (= e!4722478 (set.union (set.insert (h!81243 testedSuffix!271) (as set.empty (Set C!43718))) (content!15921 (t!390662 testedSuffix!271))))))

(assert (= (and d!2390240 c!1471463) b!8016955))

(assert (= (and d!2390240 (not c!1471463)) b!8016956))

(declare-fun m!8380012 () Bool)

(assert (=> b!8016956 m!8380012))

(declare-fun m!8380014 () Bool)

(assert (=> b!8016956 m!8380014))

(assert (=> d!2390124 d!2390240))

(assert (=> bm!744667 d!2390162))

(declare-fun d!2390242 () Bool)

(declare-fun lt!2718934 () Int)

(assert (=> d!2390242 (>= lt!2718934 0)))

(declare-fun e!4722479 () Int)

(assert (=> d!2390242 (= lt!2718934 e!4722479)))

(declare-fun c!1471464 () Bool)

(assert (=> d!2390242 (= c!1471464 (is-Nil!74795 lt!2718719))))

(assert (=> d!2390242 (= (size!43592 lt!2718719) lt!2718934)))

(declare-fun b!8016957 () Bool)

(assert (=> b!8016957 (= e!4722479 0)))

(declare-fun b!8016958 () Bool)

(assert (=> b!8016958 (= e!4722479 (+ 1 (size!43592 (t!390662 lt!2718719))))))

(assert (= (and d!2390242 c!1471464) b!8016957))

(assert (= (and d!2390242 (not c!1471464)) b!8016958))

(declare-fun m!8380016 () Bool)

(assert (=> b!8016958 m!8380016))

(assert (=> b!8016640 d!2390242))

(assert (=> b!8016640 d!2390192))

(declare-fun d!2390244 () Bool)

(declare-fun lt!2718935 () Int)

(assert (=> d!2390244 (>= lt!2718935 0)))

(declare-fun e!4722480 () Int)

(assert (=> d!2390244 (= lt!2718935 e!4722480)))

(declare-fun c!1471465 () Bool)

(assert (=> d!2390244 (= c!1471465 (is-Nil!74795 (Cons!74795 lt!2718621 Nil!74795)))))

(assert (=> d!2390244 (= (size!43592 (Cons!74795 lt!2718621 Nil!74795)) lt!2718935)))

(declare-fun b!8016959 () Bool)

(assert (=> b!8016959 (= e!4722480 0)))

(declare-fun b!8016960 () Bool)

(assert (=> b!8016960 (= e!4722480 (+ 1 (size!43592 (t!390662 (Cons!74795 lt!2718621 Nil!74795)))))))

(assert (= (and d!2390244 c!1471465) b!8016959))

(assert (= (and d!2390244 (not c!1471465)) b!8016960))

(declare-fun m!8380018 () Bool)

(assert (=> b!8016960 m!8380018))

(assert (=> b!8016640 d!2390244))

(declare-fun d!2390246 () Bool)

(assert (=> d!2390246 (= testedSuffix!271 lt!2718617)))

(assert (=> d!2390246 true))

(declare-fun _$63!1482 () Unit!170878)

(assert (=> d!2390246 (= (choose!60416 testedP!353 testedSuffix!271 testedP!353 lt!2718617 totalInput!1349) _$63!1482)))

(assert (=> d!2390116 d!2390246))

(assert (=> d!2390116 d!2390172))

(declare-fun d!2390248 () Bool)

(declare-fun lt!2718936 () Int)

(assert (=> d!2390248 (>= lt!2718936 0)))

(declare-fun e!4722481 () Int)

(assert (=> d!2390248 (= lt!2718936 e!4722481)))

(declare-fun c!1471466 () Bool)

(assert (=> d!2390248 (= c!1471466 (is-Nil!74795 (t!390662 testedP!353)))))

(assert (=> d!2390248 (= (size!43592 (t!390662 testedP!353)) lt!2718936)))

(declare-fun b!8016961 () Bool)

(assert (=> b!8016961 (= e!4722481 0)))

(declare-fun b!8016962 () Bool)

(assert (=> b!8016962 (= e!4722481 (+ 1 (size!43592 (t!390662 (t!390662 testedP!353)))))))

(assert (= (and d!2390248 c!1471466) b!8016961))

(assert (= (and d!2390248 (not c!1471466)) b!8016962))

(declare-fun m!8380020 () Bool)

(assert (=> b!8016962 m!8380020))

(assert (=> b!8016743 d!2390248))

(declare-fun d!2390250 () Bool)

(assert (=> d!2390250 (= (head!16364 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) (h!81243 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(assert (=> b!8016629 d!2390250))

(declare-fun d!2390252 () Bool)

(assert (=> d!2390252 (= (head!16364 totalInput!1349) (h!81243 totalInput!1349))))

(assert (=> b!8016629 d!2390252))

(declare-fun d!2390254 () Bool)

(declare-fun e!4722483 () Bool)

(assert (=> d!2390254 e!4722483))

(declare-fun res!3169785 () Bool)

(assert (=> d!2390254 (=> res!3169785 e!4722483)))

(declare-fun lt!2718937 () Bool)

(assert (=> d!2390254 (= res!3169785 (not lt!2718937))))

(declare-fun e!4722484 () Bool)

(assert (=> d!2390254 (= lt!2718937 e!4722484)))

(declare-fun res!3169783 () Bool)

(assert (=> d!2390254 (=> res!3169783 e!4722484)))

(assert (=> d!2390254 (= res!3169783 (is-Nil!74795 testedP!353))))

(assert (=> d!2390254 (= (isPrefix!6742 testedP!353 (++!18516 testedP!353 testedSuffix!271)) lt!2718937)))

(declare-fun b!8016966 () Bool)

(assert (=> b!8016966 (= e!4722483 (>= (size!43592 (++!18516 testedP!353 testedSuffix!271)) (size!43592 testedP!353)))))

(declare-fun b!8016963 () Bool)

(declare-fun e!4722482 () Bool)

(assert (=> b!8016963 (= e!4722484 e!4722482)))

(declare-fun res!3169784 () Bool)

(assert (=> b!8016963 (=> (not res!3169784) (not e!4722482))))

(assert (=> b!8016963 (= res!3169784 (not (is-Nil!74795 (++!18516 testedP!353 testedSuffix!271))))))

(declare-fun b!8016965 () Bool)

(assert (=> b!8016965 (= e!4722482 (isPrefix!6742 (tail!15887 testedP!353) (tail!15887 (++!18516 testedP!353 testedSuffix!271))))))

(declare-fun b!8016964 () Bool)

(declare-fun res!3169786 () Bool)

(assert (=> b!8016964 (=> (not res!3169786) (not e!4722482))))

(assert (=> b!8016964 (= res!3169786 (= (head!16364 testedP!353) (head!16364 (++!18516 testedP!353 testedSuffix!271))))))

(assert (= (and d!2390254 (not res!3169783)) b!8016963))

(assert (= (and b!8016963 res!3169784) b!8016964))

(assert (= (and b!8016964 res!3169786) b!8016965))

(assert (= (and d!2390254 (not res!3169785)) b!8016966))

(assert (=> b!8016966 m!8379554))

(declare-fun m!8380022 () Bool)

(assert (=> b!8016966 m!8380022))

(assert (=> b!8016966 m!8379534))

(assert (=> b!8016965 m!8379744))

(assert (=> b!8016965 m!8379554))

(declare-fun m!8380024 () Bool)

(assert (=> b!8016965 m!8380024))

(assert (=> b!8016965 m!8379744))

(assert (=> b!8016965 m!8380024))

(declare-fun m!8380026 () Bool)

(assert (=> b!8016965 m!8380026))

(assert (=> b!8016964 m!8379748))

(assert (=> b!8016964 m!8379554))

(declare-fun m!8380028 () Bool)

(assert (=> b!8016964 m!8380028))

(assert (=> d!2390176 d!2390254))

(assert (=> d!2390176 d!2390124))

(declare-fun d!2390256 () Bool)

(assert (=> d!2390256 (isPrefix!6742 testedP!353 (++!18516 testedP!353 testedSuffix!271))))

(assert (=> d!2390256 true))

(declare-fun _$46!2178 () Unit!170878)

(assert (=> d!2390256 (= (choose!60422 testedP!353 testedSuffix!271) _$46!2178)))

(declare-fun bs!1971061 () Bool)

(assert (= bs!1971061 d!2390256))

(assert (=> bs!1971061 m!8379554))

(assert (=> bs!1971061 m!8379554))

(assert (=> bs!1971061 m!8379758))

(assert (=> d!2390176 d!2390256))

(declare-fun d!2390258 () Bool)

(declare-fun c!1471467 () Bool)

(assert (=> d!2390258 (= c!1471467 (is-Nil!74795 lt!2718736))))

(declare-fun e!4722485 () (Set C!43718))

(assert (=> d!2390258 (= (content!15921 lt!2718736) e!4722485)))

(declare-fun b!8016967 () Bool)

(assert (=> b!8016967 (= e!4722485 (as set.empty (Set C!43718)))))

(declare-fun b!8016968 () Bool)

(assert (=> b!8016968 (= e!4722485 (set.union (set.insert (h!81243 lt!2718736) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718736))))))

(assert (= (and d!2390258 c!1471467) b!8016967))

(assert (= (and d!2390258 (not c!1471467)) b!8016968))

(declare-fun m!8380030 () Bool)

(assert (=> b!8016968 m!8380030))

(declare-fun m!8380032 () Bool)

(assert (=> b!8016968 m!8380032))

(assert (=> d!2390178 d!2390258))

(declare-fun d!2390260 () Bool)

(declare-fun c!1471468 () Bool)

(assert (=> d!2390260 (= c!1471468 (is-Nil!74795 (_1!38690 lt!2718623)))))

(declare-fun e!4722486 () (Set C!43718))

(assert (=> d!2390260 (= (content!15921 (_1!38690 lt!2718623)) e!4722486)))

(declare-fun b!8016969 () Bool)

(assert (=> b!8016969 (= e!4722486 (as set.empty (Set C!43718)))))

(declare-fun b!8016970 () Bool)

(assert (=> b!8016970 (= e!4722486 (set.union (set.insert (h!81243 (_1!38690 lt!2718623)) (as set.empty (Set C!43718))) (content!15921 (t!390662 (_1!38690 lt!2718623)))))))

(assert (= (and d!2390260 c!1471468) b!8016969))

(assert (= (and d!2390260 (not c!1471468)) b!8016970))

(declare-fun m!8380034 () Bool)

(assert (=> b!8016970 m!8380034))

(declare-fun m!8380036 () Bool)

(assert (=> b!8016970 m!8380036))

(assert (=> d!2390178 d!2390260))

(declare-fun d!2390262 () Bool)

(declare-fun c!1471469 () Bool)

(assert (=> d!2390262 (= c!1471469 (is-Nil!74795 (_2!38690 lt!2718623)))))

(declare-fun e!4722487 () (Set C!43718))

(assert (=> d!2390262 (= (content!15921 (_2!38690 lt!2718623)) e!4722487)))

(declare-fun b!8016971 () Bool)

(assert (=> b!8016971 (= e!4722487 (as set.empty (Set C!43718)))))

(declare-fun b!8016972 () Bool)

(assert (=> b!8016972 (= e!4722487 (set.union (set.insert (h!81243 (_2!38690 lt!2718623)) (as set.empty (Set C!43718))) (content!15921 (t!390662 (_2!38690 lt!2718623)))))))

(assert (= (and d!2390262 c!1471469) b!8016971))

(assert (= (and d!2390262 (not c!1471469)) b!8016972))

(declare-fun m!8380038 () Bool)

(assert (=> b!8016972 m!8380038))

(declare-fun m!8380040 () Bool)

(assert (=> b!8016972 m!8380040))

(assert (=> d!2390178 d!2390262))

(declare-fun d!2390264 () Bool)

(declare-fun lt!2718938 () Int)

(assert (=> d!2390264 (>= lt!2718938 0)))

(declare-fun e!4722488 () Int)

(assert (=> d!2390264 (= lt!2718938 e!4722488)))

(declare-fun c!1471470 () Bool)

(assert (=> d!2390264 (= c!1471470 (is-Nil!74795 (_1!38690 lt!2718810)))))

(assert (=> d!2390264 (= (size!43592 (_1!38690 lt!2718810)) lt!2718938)))

(declare-fun b!8016973 () Bool)

(assert (=> b!8016973 (= e!4722488 0)))

(declare-fun b!8016974 () Bool)

(assert (=> b!8016974 (= e!4722488 (+ 1 (size!43592 (t!390662 (_1!38690 lt!2718810)))))))

(assert (= (and d!2390264 c!1471470) b!8016973))

(assert (= (and d!2390264 (not c!1471470)) b!8016974))

(declare-fun m!8380042 () Bool)

(assert (=> b!8016974 m!8380042))

(assert (=> b!8016702 d!2390264))

(declare-fun d!2390266 () Bool)

(declare-fun lt!2718939 () Int)

(assert (=> d!2390266 (>= lt!2718939 0)))

(declare-fun e!4722489 () Int)

(assert (=> d!2390266 (= lt!2718939 e!4722489)))

(declare-fun c!1471471 () Bool)

(assert (=> d!2390266 (= c!1471471 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390266 (= (size!43592 lt!2718614) lt!2718939)))

(declare-fun b!8016975 () Bool)

(assert (=> b!8016975 (= e!4722489 0)))

(declare-fun b!8016976 () Bool)

(assert (=> b!8016976 (= e!4722489 (+ 1 (size!43592 (t!390662 lt!2718614))))))

(assert (= (and d!2390266 c!1471471) b!8016975))

(assert (= (and d!2390266 (not c!1471471)) b!8016976))

(declare-fun m!8380044 () Bool)

(assert (=> b!8016976 m!8380044))

(assert (=> b!8016702 d!2390266))

(declare-fun d!2390268 () Bool)

(declare-fun lt!2718940 () Int)

(assert (=> d!2390268 (>= lt!2718940 0)))

(declare-fun e!4722490 () Int)

(assert (=> d!2390268 (= lt!2718940 e!4722490)))

(declare-fun c!1471472 () Bool)

(assert (=> d!2390268 (= c!1471472 (is-Nil!74795 lt!2718693))))

(assert (=> d!2390268 (= (size!43592 lt!2718693) lt!2718940)))

(declare-fun b!8016977 () Bool)

(assert (=> b!8016977 (= e!4722490 0)))

(declare-fun b!8016978 () Bool)

(assert (=> b!8016978 (= e!4722490 (+ 1 (size!43592 (t!390662 lt!2718693))))))

(assert (= (and d!2390268 c!1471472) b!8016977))

(assert (= (and d!2390268 (not c!1471472)) b!8016978))

(declare-fun m!8380046 () Bool)

(assert (=> b!8016978 m!8380046))

(assert (=> b!8016565 d!2390268))

(assert (=> b!8016565 d!2390192))

(declare-fun d!2390270 () Bool)

(declare-fun lt!2718941 () Int)

(assert (=> d!2390270 (>= lt!2718941 0)))

(declare-fun e!4722491 () Int)

(assert (=> d!2390270 (= lt!2718941 e!4722491)))

(declare-fun c!1471473 () Bool)

(assert (=> d!2390270 (= c!1471473 (is-Nil!74795 testedSuffix!271))))

(assert (=> d!2390270 (= (size!43592 testedSuffix!271) lt!2718941)))

(declare-fun b!8016979 () Bool)

(assert (=> b!8016979 (= e!4722491 0)))

(declare-fun b!8016980 () Bool)

(assert (=> b!8016980 (= e!4722491 (+ 1 (size!43592 (t!390662 testedSuffix!271))))))

(assert (= (and d!2390270 c!1471473) b!8016979))

(assert (= (and d!2390270 (not c!1471473)) b!8016980))

(declare-fun m!8380048 () Bool)

(assert (=> b!8016980 m!8380048))

(assert (=> b!8016565 d!2390270))

(declare-fun bm!744730 () Bool)

(declare-fun call!744738 () Regex!21690)

(declare-fun call!744735 () Regex!21690)

(assert (=> bm!744730 (= call!744738 call!744735)))

(declare-fun bm!744731 () Bool)

(declare-fun call!744737 () Regex!21690)

(assert (=> bm!744731 (= call!744737 call!744738)))

(declare-fun b!8016981 () Bool)

(declare-fun e!4722492 () Regex!21690)

(declare-fun e!4722496 () Regex!21690)

(assert (=> b!8016981 (= e!4722492 e!4722496)))

(declare-fun c!1471474 () Bool)

(assert (=> b!8016981 (= c!1471474 (is-ElementMatch!21690 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8016982 () Bool)

(assert (=> b!8016982 (= e!4722496 (ite (= lt!2718621 (c!1471344 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))) EmptyExpr!21690 EmptyLang!21690))))

(declare-fun e!4722494 () Regex!21690)

(declare-fun b!8016983 () Bool)

(assert (=> b!8016983 (= e!4722494 (Concat!30689 call!744738 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8016984 () Bool)

(declare-fun e!4722493 () Regex!21690)

(declare-fun call!744736 () Regex!21690)

(assert (=> b!8016984 (= e!4722493 (Union!21690 call!744736 call!744735))))

(declare-fun b!8016985 () Bool)

(declare-fun c!1471475 () Bool)

(assert (=> b!8016985 (= c!1471475 (nullable!9732 (regOne!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))))))

(declare-fun e!4722495 () Regex!21690)

(assert (=> b!8016985 (= e!4722494 e!4722495)))

(declare-fun b!8016986 () Bool)

(assert (=> b!8016986 (= e!4722495 (Union!21690 (Concat!30689 call!744736 (regTwo!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))) call!744737))))

(declare-fun b!8016987 () Bool)

(assert (=> b!8016987 (= e!4722492 EmptyLang!21690)))

(declare-fun b!8016988 () Bool)

(assert (=> b!8016988 (= e!4722495 (Union!21690 (Concat!30689 call!744737 (regTwo!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))) EmptyLang!21690))))

(declare-fun b!8016989 () Bool)

(declare-fun c!1471478 () Bool)

(assert (=> b!8016989 (= c!1471478 (is-Union!21690 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(assert (=> b!8016989 (= e!4722496 e!4722493)))

(declare-fun bm!744733 () Bool)

(assert (=> bm!744733 (= call!744736 (derivativeStep!6641 (ite c!1471478 (regOne!43893 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))) (regOne!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))) lt!2718621))))

(declare-fun b!8016990 () Bool)

(assert (=> b!8016990 (= e!4722493 e!4722494)))

(declare-fun c!1471476 () Bool)

(assert (=> b!8016990 (= c!1471476 (is-Star!21690 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun d!2390272 () Bool)

(declare-fun lt!2718942 () Regex!21690)

(assert (=> d!2390272 (validRegex!11994 lt!2718942)))

(assert (=> d!2390272 (= lt!2718942 e!4722492)))

(declare-fun c!1471477 () Bool)

(assert (=> d!2390272 (= c!1471477 (or (is-EmptyExpr!21690 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))) (is-EmptyLang!21690 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))))))

(assert (=> d!2390272 (validRegex!11994 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))))

(assert (=> d!2390272 (= (derivativeStep!6641 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)) lt!2718621) lt!2718942)))

(declare-fun bm!744732 () Bool)

(assert (=> bm!744732 (= call!744735 (derivativeStep!6641 (ite c!1471478 (regTwo!43893 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))) (ite c!1471476 (reg!22019 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))) (ite c!1471475 (regTwo!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422))) (regOne!43892 (ite c!1471412 (regOne!43893 r!15422) (regOne!43892 r!15422)))))) lt!2718621))))

(assert (= (and d!2390272 c!1471477) b!8016987))

(assert (= (and d!2390272 (not c!1471477)) b!8016981))

(assert (= (and b!8016981 c!1471474) b!8016982))

(assert (= (and b!8016981 (not c!1471474)) b!8016989))

(assert (= (and b!8016989 c!1471478) b!8016984))

(assert (= (and b!8016989 (not c!1471478)) b!8016990))

(assert (= (and b!8016990 c!1471476) b!8016983))

(assert (= (and b!8016990 (not c!1471476)) b!8016985))

(assert (= (and b!8016985 c!1471475) b!8016986))

(assert (= (and b!8016985 (not c!1471475)) b!8016988))

(assert (= (or b!8016986 b!8016988) bm!744731))

(assert (= (or b!8016983 bm!744731) bm!744730))

(assert (= (or b!8016984 bm!744730) bm!744732))

(assert (= (or b!8016984 b!8016986) bm!744733))

(declare-fun m!8380050 () Bool)

(assert (=> b!8016985 m!8380050))

(declare-fun m!8380052 () Bool)

(assert (=> bm!744733 m!8380052))

(declare-fun m!8380054 () Bool)

(assert (=> d!2390272 m!8380054))

(declare-fun m!8380056 () Bool)

(assert (=> d!2390272 m!8380056))

(declare-fun m!8380058 () Bool)

(assert (=> bm!744732 m!8380058))

(assert (=> bm!744684 d!2390272))

(declare-fun bm!744738 () Bool)

(declare-fun call!744744 () Bool)

(declare-fun c!1471481 () Bool)

(assert (=> bm!744738 (= call!744744 (nullable!9732 (ite c!1471481 (regOne!43893 r!15422) (regTwo!43892 r!15422))))))

(declare-fun d!2390274 () Bool)

(declare-fun res!3169801 () Bool)

(declare-fun e!4722514 () Bool)

(assert (=> d!2390274 (=> res!3169801 e!4722514)))

(assert (=> d!2390274 (= res!3169801 (is-EmptyExpr!21690 r!15422))))

(assert (=> d!2390274 (= (nullableFct!3848 r!15422) e!4722514)))

(declare-fun b!8017005 () Bool)

(declare-fun e!4722512 () Bool)

(declare-fun call!744743 () Bool)

(assert (=> b!8017005 (= e!4722512 call!744743)))

(declare-fun b!8017006 () Bool)

(declare-fun e!4722511 () Bool)

(declare-fun e!4722509 () Bool)

(assert (=> b!8017006 (= e!4722511 e!4722509)))

(declare-fun res!3169800 () Bool)

(assert (=> b!8017006 (=> res!3169800 e!4722509)))

(assert (=> b!8017006 (= res!3169800 (is-Star!21690 r!15422))))

(declare-fun bm!744739 () Bool)

(assert (=> bm!744739 (= call!744743 (nullable!9732 (ite c!1471481 (regTwo!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8017007 () Bool)

(declare-fun e!4722513 () Bool)

(assert (=> b!8017007 (= e!4722513 e!4722512)))

(declare-fun res!3169798 () Bool)

(assert (=> b!8017007 (= res!3169798 call!744744)))

(assert (=> b!8017007 (=> res!3169798 e!4722512)))

(declare-fun b!8017008 () Bool)

(declare-fun e!4722510 () Bool)

(assert (=> b!8017008 (= e!4722513 e!4722510)))

(declare-fun res!3169799 () Bool)

(assert (=> b!8017008 (= res!3169799 call!744743)))

(assert (=> b!8017008 (=> (not res!3169799) (not e!4722510))))

(declare-fun b!8017009 () Bool)

(assert (=> b!8017009 (= e!4722509 e!4722513)))

(assert (=> b!8017009 (= c!1471481 (is-Union!21690 r!15422))))

(declare-fun b!8017010 () Bool)

(assert (=> b!8017010 (= e!4722510 call!744744)))

(declare-fun b!8017011 () Bool)

(assert (=> b!8017011 (= e!4722514 e!4722511)))

(declare-fun res!3169797 () Bool)

(assert (=> b!8017011 (=> (not res!3169797) (not e!4722511))))

(assert (=> b!8017011 (= res!3169797 (and (not (is-EmptyLang!21690 r!15422)) (not (is-ElementMatch!21690 r!15422))))))

(assert (= (and d!2390274 (not res!3169801)) b!8017011))

(assert (= (and b!8017011 res!3169797) b!8017006))

(assert (= (and b!8017006 (not res!3169800)) b!8017009))

(assert (= (and b!8017009 c!1471481) b!8017007))

(assert (= (and b!8017009 (not c!1471481)) b!8017008))

(assert (= (and b!8017007 (not res!3169798)) b!8017005))

(assert (= (and b!8017008 res!3169799) b!8017010))

(assert (= (or b!8017007 b!8017010) bm!744738))

(assert (= (or b!8017005 b!8017008) bm!744739))

(declare-fun m!8380060 () Bool)

(assert (=> bm!744738 m!8380060))

(declare-fun m!8380062 () Bool)

(assert (=> bm!744739 m!8380062))

(assert (=> d!2390138 d!2390274))

(declare-fun d!2390276 () Bool)

(assert (=> d!2390276 (= (head!16364 testedP!353) (h!81243 testedP!353))))

(assert (=> b!8016653 d!2390276))

(declare-fun d!2390278 () Bool)

(assert (=> d!2390278 (= (head!16364 lt!2718616) (h!81243 lt!2718616))))

(assert (=> b!8016653 d!2390278))

(declare-fun d!2390280 () Bool)

(declare-fun e!4722516 () Bool)

(assert (=> d!2390280 e!4722516))

(declare-fun res!3169804 () Bool)

(assert (=> d!2390280 (=> res!3169804 e!4722516)))

(declare-fun lt!2718943 () Bool)

(assert (=> d!2390280 (= res!3169804 (not lt!2718943))))

(declare-fun e!4722517 () Bool)

(assert (=> d!2390280 (= lt!2718943 e!4722517)))

(declare-fun res!3169802 () Bool)

(assert (=> d!2390280 (=> res!3169802 e!4722517)))

(assert (=> d!2390280 (= res!3169802 (is-Nil!74795 (tail!15887 totalInput!1349)))))

(assert (=> d!2390280 (= (isPrefix!6742 (tail!15887 totalInput!1349) (tail!15887 totalInput!1349)) lt!2718943)))

(declare-fun b!8017015 () Bool)

(assert (=> b!8017015 (= e!4722516 (>= (size!43592 (tail!15887 totalInput!1349)) (size!43592 (tail!15887 totalInput!1349))))))

(declare-fun b!8017012 () Bool)

(declare-fun e!4722515 () Bool)

(assert (=> b!8017012 (= e!4722517 e!4722515)))

(declare-fun res!3169803 () Bool)

(assert (=> b!8017012 (=> (not res!3169803) (not e!4722515))))

(assert (=> b!8017012 (= res!3169803 (not (is-Nil!74795 (tail!15887 totalInput!1349))))))

(declare-fun b!8017014 () Bool)

(assert (=> b!8017014 (= e!4722515 (isPrefix!6742 (tail!15887 (tail!15887 totalInput!1349)) (tail!15887 (tail!15887 totalInput!1349))))))

(declare-fun b!8017013 () Bool)

(declare-fun res!3169805 () Bool)

(assert (=> b!8017013 (=> (not res!3169805) (not e!4722515))))

(assert (=> b!8017013 (= res!3169805 (= (head!16364 (tail!15887 totalInput!1349)) (head!16364 (tail!15887 totalInput!1349))))))

(assert (= (and d!2390280 (not res!3169802)) b!8017012))

(assert (= (and b!8017012 res!3169803) b!8017013))

(assert (= (and b!8017013 res!3169805) b!8017014))

(assert (= (and d!2390280 (not res!3169804)) b!8017015))

(assert (=> b!8017015 m!8379624))

(assert (=> b!8017015 m!8379998))

(assert (=> b!8017015 m!8379624))

(assert (=> b!8017015 m!8379998))

(assert (=> b!8017014 m!8379624))

(assert (=> b!8017014 m!8380000))

(assert (=> b!8017014 m!8379624))

(assert (=> b!8017014 m!8380000))

(assert (=> b!8017014 m!8380000))

(assert (=> b!8017014 m!8380000))

(declare-fun m!8380064 () Bool)

(assert (=> b!8017014 m!8380064))

(assert (=> b!8017013 m!8379624))

(declare-fun m!8380066 () Bool)

(assert (=> b!8017013 m!8380066))

(assert (=> b!8017013 m!8379624))

(assert (=> b!8017013 m!8380066))

(assert (=> b!8016644 d!2390280))

(assert (=> b!8016644 d!2390230))

(declare-fun d!2390282 () Bool)

(declare-fun c!1471482 () Bool)

(assert (=> d!2390282 (= c!1471482 (is-Nil!74795 lt!2718704))))

(declare-fun e!4722518 () (Set C!43718))

(assert (=> d!2390282 (= (content!15921 lt!2718704) e!4722518)))

(declare-fun b!8017016 () Bool)

(assert (=> b!8017016 (= e!4722518 (as set.empty (Set C!43718)))))

(declare-fun b!8017017 () Bool)

(assert (=> b!8017017 (= e!4722518 (set.union (set.insert (h!81243 lt!2718704) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718704))))))

(assert (= (and d!2390282 c!1471482) b!8017016))

(assert (= (and d!2390282 (not c!1471482)) b!8017017))

(declare-fun m!8380068 () Bool)

(assert (=> b!8017017 m!8380068))

(declare-fun m!8380070 () Bool)

(assert (=> b!8017017 m!8380070))

(assert (=> d!2390136 d!2390282))

(assert (=> d!2390136 d!2390238))

(declare-fun d!2390284 () Bool)

(declare-fun c!1471483 () Bool)

(assert (=> d!2390284 (= c!1471483 (is-Nil!74795 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))

(declare-fun e!4722519 () (Set C!43718))

(assert (=> d!2390284 (= (content!15921 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) e!4722519)))

(declare-fun b!8017018 () Bool)

(assert (=> b!8017018 (= e!4722519 (as set.empty (Set C!43718)))))

(declare-fun b!8017019 () Bool)

(assert (=> b!8017019 (= e!4722519 (set.union (set.insert (h!81243 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) (as set.empty (Set C!43718))) (content!15921 (t!390662 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(assert (= (and d!2390284 c!1471483) b!8017018))

(assert (= (and d!2390284 (not c!1471483)) b!8017019))

(declare-fun m!8380072 () Bool)

(assert (=> b!8017019 m!8380072))

(declare-fun m!8380074 () Bool)

(assert (=> b!8017019 m!8380074))

(assert (=> d!2390136 d!2390284))

(assert (=> d!2390162 d!2390164))

(declare-fun d!2390286 () Bool)

(assert (=> d!2390286 (isPrefix!6742 totalInput!1349 totalInput!1349)))

(assert (=> d!2390286 true))

(declare-fun _$45!2548 () Unit!170878)

(assert (=> d!2390286 (= (choose!60420 totalInput!1349 totalInput!1349) _$45!2548)))

(declare-fun bs!1971062 () Bool)

(assert (= bs!1971062 d!2390286))

(assert (=> bs!1971062 m!8379502))

(assert (=> d!2390162 d!2390286))

(declare-fun b!8017020 () Bool)

(declare-fun e!4722525 () Bool)

(declare-fun call!744747 () Bool)

(assert (=> b!8017020 (= e!4722525 call!744747)))

(declare-fun bm!744740 () Bool)

(declare-fun call!744745 () Bool)

(assert (=> bm!744740 (= call!744747 call!744745)))

(declare-fun b!8017021 () Bool)

(declare-fun res!3169808 () Bool)

(declare-fun e!4722524 () Bool)

(assert (=> b!8017021 (=> res!3169808 e!4722524)))

(assert (=> b!8017021 (= res!3169808 (not (is-Concat!30689 lt!2718827)))))

(declare-fun e!4722526 () Bool)

(assert (=> b!8017021 (= e!4722526 e!4722524)))

(declare-fun bm!744741 () Bool)

(declare-fun c!1471484 () Bool)

(declare-fun c!1471485 () Bool)

(assert (=> bm!744741 (= call!744745 (validRegex!11994 (ite c!1471484 (reg!22019 lt!2718827) (ite c!1471485 (regTwo!43893 lt!2718827) (regTwo!43892 lt!2718827)))))))

(declare-fun b!8017022 () Bool)

(assert (=> b!8017022 (= e!4722524 e!4722525)))

(declare-fun res!3169810 () Bool)

(assert (=> b!8017022 (=> (not res!3169810) (not e!4722525))))

(declare-fun call!744746 () Bool)

(assert (=> b!8017022 (= res!3169810 call!744746)))

(declare-fun d!2390288 () Bool)

(declare-fun res!3169809 () Bool)

(declare-fun e!4722521 () Bool)

(assert (=> d!2390288 (=> res!3169809 e!4722521)))

(assert (=> d!2390288 (= res!3169809 (is-ElementMatch!21690 lt!2718827))))

(assert (=> d!2390288 (= (validRegex!11994 lt!2718827) e!4722521)))

(declare-fun b!8017023 () Bool)

(declare-fun e!4722522 () Bool)

(assert (=> b!8017023 (= e!4722521 e!4722522)))

(assert (=> b!8017023 (= c!1471484 (is-Star!21690 lt!2718827))))

(declare-fun b!8017024 () Bool)

(declare-fun res!3169806 () Bool)

(declare-fun e!4722520 () Bool)

(assert (=> b!8017024 (=> (not res!3169806) (not e!4722520))))

(assert (=> b!8017024 (= res!3169806 call!744746)))

(assert (=> b!8017024 (= e!4722526 e!4722520)))

(declare-fun b!8017025 () Bool)

(assert (=> b!8017025 (= e!4722522 e!4722526)))

(assert (=> b!8017025 (= c!1471485 (is-Union!21690 lt!2718827))))

(declare-fun bm!744742 () Bool)

(assert (=> bm!744742 (= call!744746 (validRegex!11994 (ite c!1471485 (regOne!43893 lt!2718827) (regOne!43892 lt!2718827))))))

(declare-fun b!8017026 () Bool)

(declare-fun e!4722523 () Bool)

(assert (=> b!8017026 (= e!4722522 e!4722523)))

(declare-fun res!3169807 () Bool)

(assert (=> b!8017026 (= res!3169807 (not (nullable!9732 (reg!22019 lt!2718827))))))

(assert (=> b!8017026 (=> (not res!3169807) (not e!4722523))))

(declare-fun b!8017027 () Bool)

(assert (=> b!8017027 (= e!4722523 call!744745)))

(declare-fun b!8017028 () Bool)

(assert (=> b!8017028 (= e!4722520 call!744747)))

(assert (= (and d!2390288 (not res!3169809)) b!8017023))

(assert (= (and b!8017023 c!1471484) b!8017026))

(assert (= (and b!8017023 (not c!1471484)) b!8017025))

(assert (= (and b!8017026 res!3169807) b!8017027))

(assert (= (and b!8017025 c!1471485) b!8017024))

(assert (= (and b!8017025 (not c!1471485)) b!8017021))

(assert (= (and b!8017024 res!3169806) b!8017028))

(assert (= (and b!8017021 (not res!3169808)) b!8017022))

(assert (= (and b!8017022 res!3169810) b!8017020))

(assert (= (or b!8017028 b!8017020) bm!744740))

(assert (= (or b!8017024 b!8017022) bm!744742))

(assert (= (or b!8017027 bm!744740) bm!744741))

(declare-fun m!8380076 () Bool)

(assert (=> bm!744741 m!8380076))

(declare-fun m!8380078 () Bool)

(assert (=> bm!744742 m!8380078))

(declare-fun m!8380080 () Bool)

(assert (=> b!8017026 m!8380080))

(assert (=> d!2390190 d!2390288))

(assert (=> d!2390190 d!2390126))

(declare-fun e!4722527 () Bool)

(declare-fun b!8017032 () Bool)

(declare-fun lt!2718944 () List!74919)

(assert (=> b!8017032 (= e!4722527 (or (not (= lt!2718619 Nil!74795)) (= lt!2718944 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)))))))

(declare-fun b!8017029 () Bool)

(declare-fun e!4722528 () List!74919)

(assert (=> b!8017029 (= e!4722528 lt!2718619)))

(declare-fun b!8017030 () Bool)

(assert (=> b!8017030 (= e!4722528 (Cons!74795 (h!81243 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795))) (++!18516 (t!390662 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795))) lt!2718619)))))

(declare-fun b!8017031 () Bool)

(declare-fun res!3169811 () Bool)

(assert (=> b!8017031 (=> (not res!3169811) (not e!4722527))))

(assert (=> b!8017031 (= res!3169811 (= (size!43592 lt!2718944) (+ (size!43592 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795))) (size!43592 lt!2718619))))))

(declare-fun d!2390290 () Bool)

(assert (=> d!2390290 e!4722527))

(declare-fun res!3169812 () Bool)

(assert (=> d!2390290 (=> (not res!3169812) (not e!4722527))))

(assert (=> d!2390290 (= res!3169812 (= (content!15921 lt!2718944) (set.union (content!15921 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795))) (content!15921 lt!2718619))))))

(assert (=> d!2390290 (= lt!2718944 e!4722528)))

(declare-fun c!1471486 () Bool)

(assert (=> d!2390290 (= c!1471486 (is-Nil!74795 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795))))))

(assert (=> d!2390290 (= (++!18516 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)) lt!2718619) lt!2718944)))

(assert (= (and d!2390290 c!1471486) b!8017029))

(assert (= (and d!2390290 (not c!1471486)) b!8017030))

(assert (= (and d!2390290 res!3169812) b!8017031))

(assert (= (and b!8017031 res!3169811) b!8017032))

(declare-fun m!8380082 () Bool)

(assert (=> b!8017030 m!8380082))

(declare-fun m!8380084 () Bool)

(assert (=> b!8017031 m!8380084))

(assert (=> b!8017031 m!8379518))

(declare-fun m!8380086 () Bool)

(assert (=> b!8017031 m!8380086))

(assert (=> b!8017031 m!8379712))

(declare-fun m!8380088 () Bool)

(assert (=> d!2390290 m!8380088))

(assert (=> d!2390290 m!8379518))

(declare-fun m!8380090 () Bool)

(assert (=> d!2390290 m!8380090))

(assert (=> d!2390290 m!8379720))

(assert (=> d!2390142 d!2390290))

(assert (=> d!2390142 d!2390154))

(declare-fun d!2390292 () Bool)

(assert (=> d!2390292 (= (++!18516 (++!18516 testedP!353 (Cons!74795 lt!2718621 Nil!74795)) lt!2718619) totalInput!1349)))

(assert (=> d!2390292 true))

(declare-fun _$68!1566 () Unit!170878)

(assert (=> d!2390292 (= (choose!60419 testedP!353 lt!2718621 lt!2718619 totalInput!1349) _$68!1566)))

(declare-fun bs!1971063 () Bool)

(assert (= bs!1971063 d!2390292))

(assert (=> bs!1971063 m!8379518))

(assert (=> bs!1971063 m!8379518))

(assert (=> bs!1971063 m!8379684))

(assert (=> d!2390142 d!2390292))

(declare-fun lt!2718945 () List!74919)

(declare-fun e!4722529 () Bool)

(declare-fun b!8017036 () Bool)

(assert (=> b!8017036 (= e!4722529 (or (not (= (Cons!74795 lt!2718621 lt!2718619) Nil!74795)) (= lt!2718945 testedP!353)))))

(declare-fun b!8017033 () Bool)

(declare-fun e!4722530 () List!74919)

(assert (=> b!8017033 (= e!4722530 (Cons!74795 lt!2718621 lt!2718619))))

(declare-fun b!8017034 () Bool)

(assert (=> b!8017034 (= e!4722530 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) (Cons!74795 lt!2718621 lt!2718619))))))

(declare-fun b!8017035 () Bool)

(declare-fun res!3169813 () Bool)

(assert (=> b!8017035 (=> (not res!3169813) (not e!4722529))))

(assert (=> b!8017035 (= res!3169813 (= (size!43592 lt!2718945) (+ (size!43592 testedP!353) (size!43592 (Cons!74795 lt!2718621 lt!2718619)))))))

(declare-fun d!2390294 () Bool)

(assert (=> d!2390294 e!4722529))

(declare-fun res!3169814 () Bool)

(assert (=> d!2390294 (=> (not res!3169814) (not e!4722529))))

(assert (=> d!2390294 (= res!3169814 (= (content!15921 lt!2718945) (set.union (content!15921 testedP!353) (content!15921 (Cons!74795 lt!2718621 lt!2718619)))))))

(assert (=> d!2390294 (= lt!2718945 e!4722530)))

(declare-fun c!1471487 () Bool)

(assert (=> d!2390294 (= c!1471487 (is-Nil!74795 testedP!353))))

(assert (=> d!2390294 (= (++!18516 testedP!353 (Cons!74795 lt!2718621 lt!2718619)) lt!2718945)))

(assert (= (and d!2390294 c!1471487) b!8017033))

(assert (= (and d!2390294 (not c!1471487)) b!8017034))

(assert (= (and d!2390294 res!3169814) b!8017035))

(assert (= (and b!8017035 res!3169813) b!8017036))

(declare-fun m!8380092 () Bool)

(assert (=> b!8017034 m!8380092))

(declare-fun m!8380094 () Bool)

(assert (=> b!8017035 m!8380094))

(assert (=> b!8017035 m!8379534))

(declare-fun m!8380096 () Bool)

(assert (=> b!8017035 m!8380096))

(declare-fun m!8380098 () Bool)

(assert (=> d!2390294 m!8380098))

(assert (=> d!2390294 m!8379638))

(declare-fun m!8380100 () Bool)

(assert (=> d!2390294 m!8380100))

(assert (=> d!2390142 d!2390294))

(declare-fun b!8017037 () Bool)

(declare-fun e!4722536 () Bool)

(declare-fun call!744750 () Bool)

(assert (=> b!8017037 (= e!4722536 call!744750)))

(declare-fun bm!744743 () Bool)

(declare-fun call!744748 () Bool)

(assert (=> bm!744743 (= call!744750 call!744748)))

(declare-fun b!8017038 () Bool)

(declare-fun res!3169817 () Bool)

(declare-fun e!4722535 () Bool)

(assert (=> b!8017038 (=> res!3169817 e!4722535)))

(assert (=> b!8017038 (= res!3169817 (not (is-Concat!30689 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422)))))))

(declare-fun e!4722537 () Bool)

(assert (=> b!8017038 (= e!4722537 e!4722535)))

(declare-fun bm!744744 () Bool)

(declare-fun c!1471489 () Bool)

(declare-fun c!1471488 () Bool)

(assert (=> bm!744744 (= call!744748 (validRegex!11994 (ite c!1471488 (reg!22019 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))) (ite c!1471489 (regTwo!43893 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))) (regTwo!43892 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422)))))))))

(declare-fun b!8017039 () Bool)

(assert (=> b!8017039 (= e!4722535 e!4722536)))

(declare-fun res!3169819 () Bool)

(assert (=> b!8017039 (=> (not res!3169819) (not e!4722536))))

(declare-fun call!744749 () Bool)

(assert (=> b!8017039 (= res!3169819 call!744749)))

(declare-fun d!2390296 () Bool)

(declare-fun res!3169818 () Bool)

(declare-fun e!4722532 () Bool)

(assert (=> d!2390296 (=> res!3169818 e!4722532)))

(assert (=> d!2390296 (= res!3169818 (is-ElementMatch!21690 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(assert (=> d!2390296 (= (validRegex!11994 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))) e!4722532)))

(declare-fun b!8017040 () Bool)

(declare-fun e!4722533 () Bool)

(assert (=> b!8017040 (= e!4722532 e!4722533)))

(assert (=> b!8017040 (= c!1471488 (is-Star!21690 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8017041 () Bool)

(declare-fun res!3169815 () Bool)

(declare-fun e!4722531 () Bool)

(assert (=> b!8017041 (=> (not res!3169815) (not e!4722531))))

(assert (=> b!8017041 (= res!3169815 call!744749)))

(assert (=> b!8017041 (= e!4722537 e!4722531)))

(declare-fun b!8017042 () Bool)

(assert (=> b!8017042 (= e!4722533 e!4722537)))

(assert (=> b!8017042 (= c!1471489 (is-Union!21690 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun bm!744745 () Bool)

(assert (=> bm!744745 (= call!744749 (validRegex!11994 (ite c!1471489 (regOne!43893 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))) (regOne!43892 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))))

(declare-fun b!8017043 () Bool)

(declare-fun e!4722534 () Bool)

(assert (=> b!8017043 (= e!4722533 e!4722534)))

(declare-fun res!3169816 () Bool)

(assert (=> b!8017043 (= res!3169816 (not (nullable!9732 (reg!22019 (ite c!1471366 (regOne!43893 r!15422) (regOne!43892 r!15422))))))))

(assert (=> b!8017043 (=> (not res!3169816) (not e!4722534))))

(declare-fun b!8017044 () Bool)

(assert (=> b!8017044 (= e!4722534 call!744748)))

(declare-fun b!8017045 () Bool)

(assert (=> b!8017045 (= e!4722531 call!744750)))

(assert (= (and d!2390296 (not res!3169818)) b!8017040))

(assert (= (and b!8017040 c!1471488) b!8017043))

(assert (= (and b!8017040 (not c!1471488)) b!8017042))

(assert (= (and b!8017043 res!3169816) b!8017044))

(assert (= (and b!8017042 c!1471489) b!8017041))

(assert (= (and b!8017042 (not c!1471489)) b!8017038))

(assert (= (and b!8017041 res!3169815) b!8017045))

(assert (= (and b!8017038 (not res!3169817)) b!8017039))

(assert (= (and b!8017039 res!3169819) b!8017037))

(assert (= (or b!8017045 b!8017037) bm!744743))

(assert (= (or b!8017041 b!8017039) bm!744745))

(assert (= (or b!8017044 bm!744743) bm!744744))

(declare-fun m!8380102 () Bool)

(assert (=> bm!744744 m!8380102))

(declare-fun m!8380104 () Bool)

(assert (=> bm!744745 m!8380104))

(declare-fun m!8380106 () Bool)

(assert (=> b!8017043 m!8380106))

(assert (=> bm!744648 d!2390296))

(declare-fun bm!744746 () Bool)

(declare-fun call!744754 () Regex!21690)

(declare-fun call!744751 () Regex!21690)

(assert (=> bm!744746 (= call!744754 call!744751)))

(declare-fun bm!744747 () Bool)

(declare-fun call!744753 () Regex!21690)

(assert (=> bm!744747 (= call!744753 call!744754)))

(declare-fun b!8017046 () Bool)

(declare-fun e!4722538 () Regex!21690)

(declare-fun e!4722542 () Regex!21690)

(assert (=> b!8017046 (= e!4722538 e!4722542)))

(declare-fun c!1471490 () Bool)

(assert (=> b!8017046 (= c!1471490 (is-ElementMatch!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun b!8017047 () Bool)

(assert (=> b!8017047 (= e!4722542 (ite (= call!744677 (c!1471344 (derivativeStep!6641 r!15422 lt!2718621))) EmptyExpr!21690 EmptyLang!21690))))

(declare-fun e!4722540 () Regex!21690)

(declare-fun b!8017048 () Bool)

(assert (=> b!8017048 (= e!4722540 (Concat!30689 call!744754 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun b!8017049 () Bool)

(declare-fun e!4722539 () Regex!21690)

(declare-fun call!744752 () Regex!21690)

(assert (=> b!8017049 (= e!4722539 (Union!21690 call!744752 call!744751))))

(declare-fun b!8017050 () Bool)

(declare-fun c!1471491 () Bool)

(assert (=> b!8017050 (= c!1471491 (nullable!9732 (regOne!43892 (derivativeStep!6641 r!15422 lt!2718621))))))

(declare-fun e!4722541 () Regex!21690)

(assert (=> b!8017050 (= e!4722540 e!4722541)))

(declare-fun b!8017051 () Bool)

(assert (=> b!8017051 (= e!4722541 (Union!21690 (Concat!30689 call!744752 (regTwo!43892 (derivativeStep!6641 r!15422 lt!2718621))) call!744753))))

(declare-fun b!8017052 () Bool)

(assert (=> b!8017052 (= e!4722538 EmptyLang!21690)))

(declare-fun b!8017053 () Bool)

(assert (=> b!8017053 (= e!4722541 (Union!21690 (Concat!30689 call!744753 (regTwo!43892 (derivativeStep!6641 r!15422 lt!2718621))) EmptyLang!21690))))

(declare-fun b!8017054 () Bool)

(declare-fun c!1471494 () Bool)

(assert (=> b!8017054 (= c!1471494 (is-Union!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(assert (=> b!8017054 (= e!4722542 e!4722539)))

(declare-fun bm!744749 () Bool)

(assert (=> bm!744749 (= call!744752 (derivativeStep!6641 (ite c!1471494 (regOne!43893 (derivativeStep!6641 r!15422 lt!2718621)) (regOne!43892 (derivativeStep!6641 r!15422 lt!2718621))) call!744677))))

(declare-fun b!8017055 () Bool)

(assert (=> b!8017055 (= e!4722539 e!4722540)))

(declare-fun c!1471492 () Bool)

(assert (=> b!8017055 (= c!1471492 (is-Star!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun d!2390298 () Bool)

(declare-fun lt!2718946 () Regex!21690)

(assert (=> d!2390298 (validRegex!11994 lt!2718946)))

(assert (=> d!2390298 (= lt!2718946 e!4722538)))

(declare-fun c!1471493 () Bool)

(assert (=> d!2390298 (= c!1471493 (or (is-EmptyExpr!21690 (derivativeStep!6641 r!15422 lt!2718621)) (is-EmptyLang!21690 (derivativeStep!6641 r!15422 lt!2718621))))))

(assert (=> d!2390298 (validRegex!11994 (derivativeStep!6641 r!15422 lt!2718621))))

(assert (=> d!2390298 (= (derivativeStep!6641 (derivativeStep!6641 r!15422 lt!2718621) call!744677) lt!2718946)))

(declare-fun bm!744748 () Bool)

(assert (=> bm!744748 (= call!744751 (derivativeStep!6641 (ite c!1471494 (regTwo!43893 (derivativeStep!6641 r!15422 lt!2718621)) (ite c!1471492 (reg!22019 (derivativeStep!6641 r!15422 lt!2718621)) (ite c!1471491 (regTwo!43892 (derivativeStep!6641 r!15422 lt!2718621)) (regOne!43892 (derivativeStep!6641 r!15422 lt!2718621))))) call!744677))))

(assert (= (and d!2390298 c!1471493) b!8017052))

(assert (= (and d!2390298 (not c!1471493)) b!8017046))

(assert (= (and b!8017046 c!1471490) b!8017047))

(assert (= (and b!8017046 (not c!1471490)) b!8017054))

(assert (= (and b!8017054 c!1471494) b!8017049))

(assert (= (and b!8017054 (not c!1471494)) b!8017055))

(assert (= (and b!8017055 c!1471492) b!8017048))

(assert (= (and b!8017055 (not c!1471492)) b!8017050))

(assert (= (and b!8017050 c!1471491) b!8017051))

(assert (= (and b!8017050 (not c!1471491)) b!8017053))

(assert (= (or b!8017051 b!8017053) bm!744747))

(assert (= (or b!8017048 bm!744747) bm!744746))

(assert (= (or b!8017049 bm!744746) bm!744748))

(assert (= (or b!8017049 b!8017051) bm!744749))

(declare-fun m!8380108 () Bool)

(assert (=> b!8017050 m!8380108))

(declare-fun m!8380110 () Bool)

(assert (=> bm!744749 m!8380110))

(declare-fun m!8380112 () Bool)

(assert (=> d!2390298 m!8380112))

(assert (=> d!2390298 m!8379550))

(assert (=> d!2390298 m!8379796))

(declare-fun m!8380114 () Bool)

(assert (=> bm!744748 m!8380114))

(assert (=> bm!744671 d!2390298))

(declare-fun d!2390300 () Bool)

(declare-fun e!4722544 () Bool)

(assert (=> d!2390300 e!4722544))

(declare-fun res!3169822 () Bool)

(assert (=> d!2390300 (=> res!3169822 e!4722544)))

(declare-fun lt!2718947 () Bool)

(assert (=> d!2390300 (= res!3169822 (not lt!2718947))))

(declare-fun e!4722545 () Bool)

(assert (=> d!2390300 (= lt!2718947 e!4722545)))

(declare-fun res!3169820 () Bool)

(assert (=> d!2390300 (=> res!3169820 e!4722545)))

(assert (=> d!2390300 (= res!3169820 (is-Nil!74795 (tail!15887 testedP!353)))))

(assert (=> d!2390300 (= (isPrefix!6742 (tail!15887 testedP!353) (tail!15887 totalInput!1349)) lt!2718947)))

(declare-fun b!8017059 () Bool)

(assert (=> b!8017059 (= e!4722544 (>= (size!43592 (tail!15887 totalInput!1349)) (size!43592 (tail!15887 testedP!353))))))

(declare-fun b!8017056 () Bool)

(declare-fun e!4722543 () Bool)

(assert (=> b!8017056 (= e!4722545 e!4722543)))

(declare-fun res!3169821 () Bool)

(assert (=> b!8017056 (=> (not res!3169821) (not e!4722543))))

(assert (=> b!8017056 (= res!3169821 (not (is-Nil!74795 (tail!15887 totalInput!1349))))))

(declare-fun b!8017058 () Bool)

(assert (=> b!8017058 (= e!4722543 (isPrefix!6742 (tail!15887 (tail!15887 testedP!353)) (tail!15887 (tail!15887 totalInput!1349))))))

(declare-fun b!8017057 () Bool)

(declare-fun res!3169823 () Bool)

(assert (=> b!8017057 (=> (not res!3169823) (not e!4722543))))

(assert (=> b!8017057 (= res!3169823 (= (head!16364 (tail!15887 testedP!353)) (head!16364 (tail!15887 totalInput!1349))))))

(assert (= (and d!2390300 (not res!3169820)) b!8017056))

(assert (= (and b!8017056 res!3169821) b!8017057))

(assert (= (and b!8017057 res!3169823) b!8017058))

(assert (= (and d!2390300 (not res!3169822)) b!8017059))

(assert (=> b!8017059 m!8379624))

(assert (=> b!8017059 m!8379998))

(assert (=> b!8017059 m!8379744))

(declare-fun m!8380116 () Bool)

(assert (=> b!8017059 m!8380116))

(assert (=> b!8017058 m!8379744))

(declare-fun m!8380118 () Bool)

(assert (=> b!8017058 m!8380118))

(assert (=> b!8017058 m!8379624))

(assert (=> b!8017058 m!8380000))

(assert (=> b!8017058 m!8380118))

(assert (=> b!8017058 m!8380000))

(declare-fun m!8380120 () Bool)

(assert (=> b!8017058 m!8380120))

(assert (=> b!8017057 m!8379744))

(declare-fun m!8380122 () Bool)

(assert (=> b!8017057 m!8380122))

(assert (=> b!8017057 m!8379624))

(assert (=> b!8017057 m!8380066))

(assert (=> b!8016650 d!2390300))

(declare-fun d!2390302 () Bool)

(assert (=> d!2390302 (= (tail!15887 testedP!353) (t!390662 testedP!353))))

(assert (=> b!8016650 d!2390302))

(assert (=> b!8016650 d!2390230))

(declare-fun b!8017074 () Bool)

(declare-fun e!4722562 () Bool)

(declare-fun e!4722560 () Bool)

(assert (=> b!8017074 (= e!4722562 e!4722560)))

(declare-fun c!1471497 () Bool)

(assert (=> b!8017074 (= c!1471497 (is-Union!21690 r!15422))))

(declare-fun b!8017075 () Bool)

(declare-fun e!4722558 () Bool)

(declare-fun call!744760 () Bool)

(assert (=> b!8017075 (= e!4722558 call!744760)))

(declare-fun d!2390304 () Bool)

(declare-fun lt!2718950 () Bool)

(declare-datatypes ((Option!17972 0))(
  ( (None!17971) (Some!17971 (v!55156 List!74919)) )
))
(declare-fun isEmpty!42985 (Option!17972) Bool)

(declare-fun getLanguageWitness!1163 (Regex!21690) Option!17972)

(assert (=> d!2390304 (= lt!2718950 (isEmpty!42985 (getLanguageWitness!1163 r!15422)))))

(declare-fun e!4722561 () Bool)

(assert (=> d!2390304 (= lt!2718950 e!4722561)))

(declare-fun res!3169836 () Bool)

(assert (=> d!2390304 (=> (not res!3169836) (not e!4722561))))

(assert (=> d!2390304 (= res!3169836 (not (is-EmptyExpr!21690 r!15422)))))

(assert (=> d!2390304 (= (lostCauseFct!619 r!15422) lt!2718950)))

(declare-fun b!8017076 () Bool)

(declare-fun e!4722559 () Bool)

(declare-fun call!744759 () Bool)

(assert (=> b!8017076 (= e!4722559 call!744759)))

(declare-fun b!8017077 () Bool)

(declare-fun e!4722563 () Bool)

(assert (=> b!8017077 (= e!4722561 e!4722563)))

(declare-fun res!3169838 () Bool)

(assert (=> b!8017077 (=> res!3169838 e!4722563)))

(assert (=> b!8017077 (= res!3169838 (is-EmptyLang!21690 r!15422))))

(declare-fun b!8017078 () Bool)

(assert (=> b!8017078 (= e!4722563 e!4722562)))

(declare-fun res!3169834 () Bool)

(assert (=> b!8017078 (=> (not res!3169834) (not e!4722562))))

(assert (=> b!8017078 (= res!3169834 (and (not (is-ElementMatch!21690 r!15422)) (not (is-Star!21690 r!15422))))))

(declare-fun bm!744754 () Bool)

(assert (=> bm!744754 (= call!744760 (lostCause!2077 (ite c!1471497 (regTwo!43893 r!15422) (regOne!43892 r!15422))))))

(declare-fun b!8017079 () Bool)

(assert (=> b!8017079 (= e!4722560 e!4722559)))

(declare-fun res!3169837 () Bool)

(assert (=> b!8017079 (= res!3169837 call!744760)))

(assert (=> b!8017079 (=> res!3169837 e!4722559)))

(declare-fun bm!744755 () Bool)

(assert (=> bm!744755 (= call!744759 (lostCause!2077 (ite c!1471497 (regOne!43893 r!15422) (regTwo!43892 r!15422))))))

(declare-fun b!8017080 () Bool)

(assert (=> b!8017080 (= e!4722560 e!4722558)))

(declare-fun res!3169835 () Bool)

(assert (=> b!8017080 (= res!3169835 call!744759)))

(assert (=> b!8017080 (=> (not res!3169835) (not e!4722558))))

(assert (= (and d!2390304 res!3169836) b!8017077))

(assert (= (and b!8017077 (not res!3169838)) b!8017078))

(assert (= (and b!8017078 res!3169834) b!8017074))

(assert (= (and b!8017074 c!1471497) b!8017080))

(assert (= (and b!8017074 (not c!1471497)) b!8017079))

(assert (= (and b!8017080 res!3169835) b!8017075))

(assert (= (and b!8017079 (not res!3169837)) b!8017076))

(assert (= (or b!8017080 b!8017076) bm!744755))

(assert (= (or b!8017075 b!8017079) bm!744754))

(declare-fun m!8380124 () Bool)

(assert (=> d!2390304 m!8380124))

(assert (=> d!2390304 m!8380124))

(declare-fun m!8380126 () Bool)

(assert (=> d!2390304 m!8380126))

(declare-fun m!8380128 () Bool)

(assert (=> bm!744754 m!8380128))

(declare-fun m!8380130 () Bool)

(assert (=> bm!744755 m!8380130))

(assert (=> d!2390112 d!2390304))

(declare-fun b!8017084 () Bool)

(declare-fun e!4722564 () Bool)

(declare-fun lt!2718951 () List!74919)

(assert (=> b!8017084 (= e!4722564 (or (not (= (_2!38690 lt!2718623) Nil!74795)) (= lt!2718951 (t!390662 (_1!38690 lt!2718623)))))))

(declare-fun b!8017081 () Bool)

(declare-fun e!4722565 () List!74919)

(assert (=> b!8017081 (= e!4722565 (_2!38690 lt!2718623))))

(declare-fun b!8017082 () Bool)

(assert (=> b!8017082 (= e!4722565 (Cons!74795 (h!81243 (t!390662 (_1!38690 lt!2718623))) (++!18516 (t!390662 (t!390662 (_1!38690 lt!2718623))) (_2!38690 lt!2718623))))))

(declare-fun b!8017083 () Bool)

(declare-fun res!3169839 () Bool)

(assert (=> b!8017083 (=> (not res!3169839) (not e!4722564))))

(assert (=> b!8017083 (= res!3169839 (= (size!43592 lt!2718951) (+ (size!43592 (t!390662 (_1!38690 lt!2718623))) (size!43592 (_2!38690 lt!2718623)))))))

(declare-fun d!2390306 () Bool)

(assert (=> d!2390306 e!4722564))

(declare-fun res!3169840 () Bool)

(assert (=> d!2390306 (=> (not res!3169840) (not e!4722564))))

(assert (=> d!2390306 (= res!3169840 (= (content!15921 lt!2718951) (set.union (content!15921 (t!390662 (_1!38690 lt!2718623))) (content!15921 (_2!38690 lt!2718623)))))))

(assert (=> d!2390306 (= lt!2718951 e!4722565)))

(declare-fun c!1471498 () Bool)

(assert (=> d!2390306 (= c!1471498 (is-Nil!74795 (t!390662 (_1!38690 lt!2718623))))))

(assert (=> d!2390306 (= (++!18516 (t!390662 (_1!38690 lt!2718623)) (_2!38690 lt!2718623)) lt!2718951)))

(assert (= (and d!2390306 c!1471498) b!8017081))

(assert (= (and d!2390306 (not c!1471498)) b!8017082))

(assert (= (and d!2390306 res!3169840) b!8017083))

(assert (= (and b!8017083 res!3169839) b!8017084))

(declare-fun m!8380132 () Bool)

(assert (=> b!8017082 m!8380132))

(declare-fun m!8380134 () Bool)

(assert (=> b!8017083 m!8380134))

(assert (=> b!8017083 m!8379742))

(assert (=> b!8017083 m!8379768))

(declare-fun m!8380136 () Bool)

(assert (=> d!2390306 m!8380136))

(assert (=> d!2390306 m!8380036))

(assert (=> d!2390306 m!8379774))

(assert (=> b!8016657 d!2390306))

(declare-fun d!2390308 () Bool)

(declare-fun lt!2718952 () List!74919)

(assert (=> d!2390308 (= (++!18516 lt!2718614 lt!2718952) totalInput!1349)))

(declare-fun e!4722566 () List!74919)

(assert (=> d!2390308 (= lt!2718952 e!4722566)))

(declare-fun c!1471499 () Bool)

(assert (=> d!2390308 (= c!1471499 (is-Cons!74795 lt!2718614))))

(assert (=> d!2390308 (>= (size!43592 totalInput!1349) (size!43592 lt!2718614))))

(assert (=> d!2390308 (= (getSuffix!3937 totalInput!1349 lt!2718614) lt!2718952)))

(declare-fun b!8017085 () Bool)

(assert (=> b!8017085 (= e!4722566 (getSuffix!3937 (tail!15887 totalInput!1349) (t!390662 lt!2718614)))))

(declare-fun b!8017086 () Bool)

(assert (=> b!8017086 (= e!4722566 totalInput!1349)))

(assert (= (and d!2390308 c!1471499) b!8017085))

(assert (= (and d!2390308 (not c!1471499)) b!8017086))

(declare-fun m!8380138 () Bool)

(assert (=> d!2390308 m!8380138))

(assert (=> d!2390308 m!8379498))

(assert (=> d!2390308 m!8379710))

(assert (=> b!8017085 m!8379624))

(assert (=> b!8017085 m!8379624))

(declare-fun m!8380140 () Bool)

(assert (=> b!8017085 m!8380140))

(assert (=> d!2390182 d!2390308))

(declare-fun d!2390310 () Bool)

(declare-fun e!4722568 () Bool)

(assert (=> d!2390310 e!4722568))

(declare-fun res!3169843 () Bool)

(assert (=> d!2390310 (=> res!3169843 e!4722568)))

(declare-fun lt!2718953 () Bool)

(assert (=> d!2390310 (= res!3169843 (not lt!2718953))))

(declare-fun e!4722569 () Bool)

(assert (=> d!2390310 (= lt!2718953 e!4722569)))

(declare-fun res!3169841 () Bool)

(assert (=> d!2390310 (=> res!3169841 e!4722569)))

(assert (=> d!2390310 (= res!3169841 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390310 (= (isPrefix!6742 lt!2718614 (++!18516 lt!2718614 lt!2718619)) lt!2718953)))

(declare-fun b!8017090 () Bool)

(assert (=> b!8017090 (= e!4722568 (>= (size!43592 (++!18516 lt!2718614 lt!2718619)) (size!43592 lt!2718614)))))

(declare-fun b!8017087 () Bool)

(declare-fun e!4722567 () Bool)

(assert (=> b!8017087 (= e!4722569 e!4722567)))

(declare-fun res!3169842 () Bool)

(assert (=> b!8017087 (=> (not res!3169842) (not e!4722567))))

(assert (=> b!8017087 (= res!3169842 (not (is-Nil!74795 (++!18516 lt!2718614 lt!2718619))))))

(declare-fun b!8017089 () Bool)

(assert (=> b!8017089 (= e!4722567 (isPrefix!6742 (tail!15887 lt!2718614) (tail!15887 (++!18516 lt!2718614 lt!2718619))))))

(declare-fun b!8017088 () Bool)

(declare-fun res!3169844 () Bool)

(assert (=> b!8017088 (=> (not res!3169844) (not e!4722567))))

(assert (=> b!8017088 (= res!3169844 (= (head!16364 lt!2718614) (head!16364 (++!18516 lt!2718614 lt!2718619))))))

(assert (= (and d!2390310 (not res!3169841)) b!8017087))

(assert (= (and b!8017087 res!3169842) b!8017088))

(assert (= (and b!8017088 res!3169844) b!8017089))

(assert (= (and d!2390310 (not res!3169843)) b!8017090))

(assert (=> b!8017090 m!8379512))

(declare-fun m!8380142 () Bool)

(assert (=> b!8017090 m!8380142))

(assert (=> b!8017090 m!8379710))

(declare-fun m!8380144 () Bool)

(assert (=> b!8017089 m!8380144))

(assert (=> b!8017089 m!8379512))

(declare-fun m!8380146 () Bool)

(assert (=> b!8017089 m!8380146))

(assert (=> b!8017089 m!8380144))

(assert (=> b!8017089 m!8380146))

(declare-fun m!8380148 () Bool)

(assert (=> b!8017089 m!8380148))

(declare-fun m!8380150 () Bool)

(assert (=> b!8017088 m!8380150))

(assert (=> b!8017088 m!8379512))

(declare-fun m!8380152 () Bool)

(assert (=> b!8017088 m!8380152))

(assert (=> d!2390182 d!2390310))

(declare-fun d!2390312 () Bool)

(assert (=> d!2390312 (= lt!2718619 lt!2718800)))

(declare-fun lt!2718954 () Unit!170878)

(assert (=> d!2390312 (= lt!2718954 (choose!60416 lt!2718614 lt!2718619 lt!2718614 lt!2718800 totalInput!1349))))

(assert (=> d!2390312 (isPrefix!6742 lt!2718614 totalInput!1349)))

(assert (=> d!2390312 (= (lemmaSamePrefixThenSameSuffix!3099 lt!2718614 lt!2718619 lt!2718614 lt!2718800 totalInput!1349) lt!2718954)))

(declare-fun bs!1971064 () Bool)

(assert (= bs!1971064 d!2390312))

(declare-fun m!8380154 () Bool)

(assert (=> bs!1971064 m!8380154))

(declare-fun m!8380156 () Bool)

(assert (=> bs!1971064 m!8380156))

(assert (=> d!2390182 d!2390312))

(declare-fun b!8017094 () Bool)

(declare-fun e!4722570 () Bool)

(declare-fun lt!2718955 () List!74919)

(assert (=> b!8017094 (= e!4722570 (or (not (= (_2!38690 lt!2718810) Nil!74795)) (= lt!2718955 (_1!38690 lt!2718810))))))

(declare-fun b!8017091 () Bool)

(declare-fun e!4722571 () List!74919)

(assert (=> b!8017091 (= e!4722571 (_2!38690 lt!2718810))))

(declare-fun b!8017092 () Bool)

(assert (=> b!8017092 (= e!4722571 (Cons!74795 (h!81243 (_1!38690 lt!2718810)) (++!18516 (t!390662 (_1!38690 lt!2718810)) (_2!38690 lt!2718810))))))

(declare-fun b!8017093 () Bool)

(declare-fun res!3169845 () Bool)

(assert (=> b!8017093 (=> (not res!3169845) (not e!4722570))))

(assert (=> b!8017093 (= res!3169845 (= (size!43592 lt!2718955) (+ (size!43592 (_1!38690 lt!2718810)) (size!43592 (_2!38690 lt!2718810)))))))

(declare-fun d!2390314 () Bool)

(assert (=> d!2390314 e!4722570))

(declare-fun res!3169846 () Bool)

(assert (=> d!2390314 (=> (not res!3169846) (not e!4722570))))

(assert (=> d!2390314 (= res!3169846 (= (content!15921 lt!2718955) (set.union (content!15921 (_1!38690 lt!2718810)) (content!15921 (_2!38690 lt!2718810)))))))

(assert (=> d!2390314 (= lt!2718955 e!4722571)))

(declare-fun c!1471500 () Bool)

(assert (=> d!2390314 (= c!1471500 (is-Nil!74795 (_1!38690 lt!2718810)))))

(assert (=> d!2390314 (= (++!18516 (_1!38690 lt!2718810) (_2!38690 lt!2718810)) lt!2718955)))

(assert (= (and d!2390314 c!1471500) b!8017091))

(assert (= (and d!2390314 (not c!1471500)) b!8017092))

(assert (= (and d!2390314 res!3169846) b!8017093))

(assert (= (and b!8017093 res!3169845) b!8017094))

(declare-fun m!8380158 () Bool)

(assert (=> b!8017092 m!8380158))

(declare-fun m!8380160 () Bool)

(assert (=> b!8017093 m!8380160))

(assert (=> b!8017093 m!8379806))

(declare-fun m!8380162 () Bool)

(assert (=> b!8017093 m!8380162))

(declare-fun m!8380164 () Bool)

(assert (=> d!2390314 m!8380164))

(declare-fun m!8380166 () Bool)

(assert (=> d!2390314 m!8380166))

(declare-fun m!8380168 () Bool)

(assert (=> d!2390314 m!8380168))

(assert (=> d!2390182 d!2390314))

(declare-fun d!2390316 () Bool)

(assert (=> d!2390316 (isPrefix!6742 lt!2718614 (++!18516 lt!2718614 lt!2718619))))

(declare-fun lt!2718956 () Unit!170878)

(assert (=> d!2390316 (= lt!2718956 (choose!60422 lt!2718614 lt!2718619))))

(assert (=> d!2390316 (= (lemmaConcatTwoListThenFirstIsPrefix!3973 lt!2718614 lt!2718619) lt!2718956)))

(declare-fun bs!1971065 () Bool)

(assert (= bs!1971065 d!2390316))

(assert (=> bs!1971065 m!8379512))

(assert (=> bs!1971065 m!8379512))

(assert (=> bs!1971065 m!8379802))

(declare-fun m!8380170 () Bool)

(assert (=> bs!1971065 m!8380170))

(assert (=> d!2390182 d!2390316))

(declare-fun b!8017095 () Bool)

(declare-fun e!4722577 () Bool)

(declare-fun call!744763 () Bool)

(assert (=> b!8017095 (= e!4722577 call!744763)))

(declare-fun bm!744756 () Bool)

(declare-fun call!744761 () Bool)

(assert (=> bm!744756 (= call!744763 call!744761)))

(declare-fun b!8017096 () Bool)

(declare-fun res!3169849 () Bool)

(declare-fun e!4722576 () Bool)

(assert (=> b!8017096 (=> res!3169849 e!4722576)))

(assert (=> b!8017096 (= res!3169849 (not (is-Concat!30689 (derivativeStep!6641 r!15422 lt!2718621))))))

(declare-fun e!4722578 () Bool)

(assert (=> b!8017096 (= e!4722578 e!4722576)))

(declare-fun bm!744757 () Bool)

(declare-fun c!1471501 () Bool)

(declare-fun c!1471502 () Bool)

(assert (=> bm!744757 (= call!744761 (validRegex!11994 (ite c!1471501 (reg!22019 (derivativeStep!6641 r!15422 lt!2718621)) (ite c!1471502 (regTwo!43893 (derivativeStep!6641 r!15422 lt!2718621)) (regTwo!43892 (derivativeStep!6641 r!15422 lt!2718621))))))))

(declare-fun b!8017097 () Bool)

(assert (=> b!8017097 (= e!4722576 e!4722577)))

(declare-fun res!3169851 () Bool)

(assert (=> b!8017097 (=> (not res!3169851) (not e!4722577))))

(declare-fun call!744762 () Bool)

(assert (=> b!8017097 (= res!3169851 call!744762)))

(declare-fun d!2390318 () Bool)

(declare-fun res!3169850 () Bool)

(declare-fun e!4722573 () Bool)

(assert (=> d!2390318 (=> res!3169850 e!4722573)))

(assert (=> d!2390318 (= res!3169850 (is-ElementMatch!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(assert (=> d!2390318 (= (validRegex!11994 (derivativeStep!6641 r!15422 lt!2718621)) e!4722573)))

(declare-fun b!8017098 () Bool)

(declare-fun e!4722574 () Bool)

(assert (=> b!8017098 (= e!4722573 e!4722574)))

(assert (=> b!8017098 (= c!1471501 (is-Star!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun b!8017099 () Bool)

(declare-fun res!3169847 () Bool)

(declare-fun e!4722572 () Bool)

(assert (=> b!8017099 (=> (not res!3169847) (not e!4722572))))

(assert (=> b!8017099 (= res!3169847 call!744762)))

(assert (=> b!8017099 (= e!4722578 e!4722572)))

(declare-fun b!8017100 () Bool)

(assert (=> b!8017100 (= e!4722574 e!4722578)))

(assert (=> b!8017100 (= c!1471502 (is-Union!21690 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun bm!744758 () Bool)

(assert (=> bm!744758 (= call!744762 (validRegex!11994 (ite c!1471502 (regOne!43893 (derivativeStep!6641 r!15422 lt!2718621)) (regOne!43892 (derivativeStep!6641 r!15422 lt!2718621)))))))

(declare-fun b!8017101 () Bool)

(declare-fun e!4722575 () Bool)

(assert (=> b!8017101 (= e!4722574 e!4722575)))

(declare-fun res!3169848 () Bool)

(assert (=> b!8017101 (= res!3169848 (not (nullable!9732 (reg!22019 (derivativeStep!6641 r!15422 lt!2718621)))))))

(assert (=> b!8017101 (=> (not res!3169848) (not e!4722575))))

(declare-fun b!8017102 () Bool)

(assert (=> b!8017102 (= e!4722575 call!744761)))

(declare-fun b!8017103 () Bool)

(assert (=> b!8017103 (= e!4722572 call!744763)))

(assert (= (and d!2390318 (not res!3169850)) b!8017098))

(assert (= (and b!8017098 c!1471501) b!8017101))

(assert (= (and b!8017098 (not c!1471501)) b!8017100))

(assert (= (and b!8017101 res!3169848) b!8017102))

(assert (= (and b!8017100 c!1471502) b!8017099))

(assert (= (and b!8017100 (not c!1471502)) b!8017096))

(assert (= (and b!8017099 res!3169847) b!8017103))

(assert (= (and b!8017096 (not res!3169849)) b!8017097))

(assert (= (and b!8017097 res!3169851) b!8017095))

(assert (= (or b!8017103 b!8017095) bm!744756))

(assert (= (or b!8017099 b!8017097) bm!744758))

(assert (= (or b!8017102 bm!744756) bm!744757))

(declare-fun m!8380172 () Bool)

(assert (=> bm!744757 m!8380172))

(declare-fun m!8380174 () Bool)

(assert (=> bm!744758 m!8380174))

(declare-fun m!8380176 () Bool)

(assert (=> b!8017101 m!8380176))

(assert (=> d!2390182 d!2390318))

(assert (=> d!2390182 d!2390148))

(declare-fun d!2390320 () Bool)

(assert (=> d!2390320 (= (lostCause!2077 (derivativeStep!6641 r!15422 lt!2718621)) (lostCauseFct!619 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun bs!1971066 () Bool)

(assert (= bs!1971066 d!2390320))

(assert (=> bs!1971066 m!8379550))

(declare-fun m!8380178 () Bool)

(assert (=> bs!1971066 m!8380178))

(assert (=> d!2390182 d!2390320))

(assert (=> bm!744670 d!2390164))

(declare-fun b!8017107 () Bool)

(declare-fun lt!2718957 () List!74919)

(declare-fun e!4722579 () Bool)

(assert (=> b!8017107 (= e!4722579 (or (not (= lt!2718685 Nil!74795)) (= lt!2718957 testedP!353)))))

(declare-fun b!8017104 () Bool)

(declare-fun e!4722580 () List!74919)

(assert (=> b!8017104 (= e!4722580 lt!2718685)))

(declare-fun b!8017105 () Bool)

(assert (=> b!8017105 (= e!4722580 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) lt!2718685)))))

(declare-fun b!8017106 () Bool)

(declare-fun res!3169852 () Bool)

(assert (=> b!8017106 (=> (not res!3169852) (not e!4722579))))

(assert (=> b!8017106 (= res!3169852 (= (size!43592 lt!2718957) (+ (size!43592 testedP!353) (size!43592 lt!2718685))))))

(declare-fun d!2390322 () Bool)

(assert (=> d!2390322 e!4722579))

(declare-fun res!3169853 () Bool)

(assert (=> d!2390322 (=> (not res!3169853) (not e!4722579))))

(assert (=> d!2390322 (= res!3169853 (= (content!15921 lt!2718957) (set.union (content!15921 testedP!353) (content!15921 lt!2718685))))))

(assert (=> d!2390322 (= lt!2718957 e!4722580)))

(declare-fun c!1471503 () Bool)

(assert (=> d!2390322 (= c!1471503 (is-Nil!74795 testedP!353))))

(assert (=> d!2390322 (= (++!18516 testedP!353 lt!2718685) lt!2718957)))

(assert (= (and d!2390322 c!1471503) b!8017104))

(assert (= (and d!2390322 (not c!1471503)) b!8017105))

(assert (= (and d!2390322 res!3169853) b!8017106))

(assert (= (and b!8017106 res!3169852) b!8017107))

(declare-fun m!8380180 () Bool)

(assert (=> b!8017105 m!8380180))

(declare-fun m!8380182 () Bool)

(assert (=> b!8017106 m!8380182))

(assert (=> b!8017106 m!8379534))

(declare-fun m!8380184 () Bool)

(assert (=> b!8017106 m!8380184))

(declare-fun m!8380186 () Bool)

(assert (=> d!2390322 m!8380186))

(assert (=> d!2390322 m!8379638))

(declare-fun m!8380188 () Bool)

(assert (=> d!2390322 m!8380188))

(assert (=> d!2390118 d!2390322))

(assert (=> d!2390118 d!2390130))

(assert (=> d!2390118 d!2390192))

(declare-fun d!2390324 () Bool)

(declare-fun lt!2718958 () Int)

(assert (=> d!2390324 (>= lt!2718958 0)))

(declare-fun e!4722581 () Int)

(assert (=> d!2390324 (= lt!2718958 e!4722581)))

(declare-fun c!1471504 () Bool)

(assert (=> d!2390324 (= c!1471504 (is-Nil!74795 lt!2718616))))

(assert (=> d!2390324 (= (size!43592 lt!2718616) lt!2718958)))

(declare-fun b!8017108 () Bool)

(assert (=> b!8017108 (= e!4722581 0)))

(declare-fun b!8017109 () Bool)

(assert (=> b!8017109 (= e!4722581 (+ 1 (size!43592 (t!390662 lt!2718616))))))

(assert (= (and d!2390324 c!1471504) b!8017108))

(assert (= (and d!2390324 (not c!1471504)) b!8017109))

(declare-fun m!8380190 () Bool)

(assert (=> b!8017109 m!8380190))

(assert (=> b!8016655 d!2390324))

(assert (=> b!8016655 d!2390192))

(declare-fun d!2390326 () Bool)

(declare-fun lt!2718959 () Int)

(assert (=> d!2390326 (>= lt!2718959 0)))

(declare-fun e!4722582 () Int)

(assert (=> d!2390326 (= lt!2718959 e!4722582)))

(declare-fun c!1471505 () Bool)

(assert (=> d!2390326 (= c!1471505 (is-Nil!74795 lt!2718704))))

(assert (=> d!2390326 (= (size!43592 lt!2718704) lt!2718959)))

(declare-fun b!8017110 () Bool)

(assert (=> b!8017110 (= e!4722582 0)))

(declare-fun b!8017111 () Bool)

(assert (=> b!8017111 (= e!4722582 (+ 1 (size!43592 (t!390662 lt!2718704))))))

(assert (= (and d!2390326 c!1471505) b!8017110))

(assert (= (and d!2390326 (not c!1471505)) b!8017111))

(declare-fun m!8380192 () Bool)

(assert (=> b!8017111 m!8380192))

(assert (=> b!8016606 d!2390326))

(assert (=> b!8016606 d!2390192))

(declare-fun d!2390328 () Bool)

(declare-fun lt!2718960 () Int)

(assert (=> d!2390328 (>= lt!2718960 0)))

(declare-fun e!4722583 () Int)

(assert (=> d!2390328 (= lt!2718960 e!4722583)))

(declare-fun c!1471506 () Bool)

(assert (=> d!2390328 (= c!1471506 (is-Nil!74795 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))

(assert (=> d!2390328 (= (size!43592 (Cons!74795 (head!16364 lt!2718617) Nil!74795)) lt!2718960)))

(declare-fun b!8017112 () Bool)

(assert (=> b!8017112 (= e!4722583 0)))

(declare-fun b!8017113 () Bool)

(assert (=> b!8017113 (= e!4722583 (+ 1 (size!43592 (t!390662 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(assert (= (and d!2390328 c!1471506) b!8017112))

(assert (= (and d!2390328 (not c!1471506)) b!8017113))

(declare-fun m!8380194 () Bool)

(assert (=> b!8017113 m!8380194))

(assert (=> b!8016606 d!2390328))

(declare-fun d!2390330 () Bool)

(declare-fun c!1471507 () Bool)

(assert (=> d!2390330 (= c!1471507 (is-Nil!74795 lt!2718716))))

(declare-fun e!4722584 () (Set C!43718))

(assert (=> d!2390330 (= (content!15921 lt!2718716) e!4722584)))

(declare-fun b!8017114 () Bool)

(assert (=> b!8017114 (= e!4722584 (as set.empty (Set C!43718)))))

(declare-fun b!8017115 () Bool)

(assert (=> b!8017115 (= e!4722584 (set.union (set.insert (h!81243 lt!2718716) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718716))))))

(assert (= (and d!2390330 c!1471507) b!8017114))

(assert (= (and d!2390330 (not c!1471507)) b!8017115))

(declare-fun m!8380196 () Bool)

(assert (=> b!8017115 m!8380196))

(declare-fun m!8380198 () Bool)

(assert (=> b!8017115 m!8380198))

(assert (=> d!2390148 d!2390330))

(declare-fun d!2390332 () Bool)

(declare-fun c!1471508 () Bool)

(assert (=> d!2390332 (= c!1471508 (is-Nil!74795 lt!2718614))))

(declare-fun e!4722585 () (Set C!43718))

(assert (=> d!2390332 (= (content!15921 lt!2718614) e!4722585)))

(declare-fun b!8017116 () Bool)

(assert (=> b!8017116 (= e!4722585 (as set.empty (Set C!43718)))))

(declare-fun b!8017117 () Bool)

(assert (=> b!8017117 (= e!4722585 (set.union (set.insert (h!81243 lt!2718614) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718614))))))

(assert (= (and d!2390332 c!1471508) b!8017116))

(assert (= (and d!2390332 (not c!1471508)) b!8017117))

(declare-fun m!8380200 () Bool)

(assert (=> b!8017117 m!8380200))

(declare-fun m!8380202 () Bool)

(assert (=> b!8017117 m!8380202))

(assert (=> d!2390148 d!2390332))

(declare-fun d!2390334 () Bool)

(declare-fun c!1471509 () Bool)

(assert (=> d!2390334 (= c!1471509 (is-Nil!74795 lt!2718619))))

(declare-fun e!4722586 () (Set C!43718))

(assert (=> d!2390334 (= (content!15921 lt!2718619) e!4722586)))

(declare-fun b!8017118 () Bool)

(assert (=> b!8017118 (= e!4722586 (as set.empty (Set C!43718)))))

(declare-fun b!8017119 () Bool)

(assert (=> b!8017119 (= e!4722586 (set.union (set.insert (h!81243 lt!2718619) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718619))))))

(assert (= (and d!2390334 c!1471509) b!8017118))

(assert (= (and d!2390334 (not c!1471509)) b!8017119))

(declare-fun m!8380204 () Bool)

(assert (=> b!8017119 m!8380204))

(declare-fun m!8380206 () Bool)

(assert (=> b!8017119 m!8380206))

(assert (=> d!2390148 d!2390334))

(declare-fun e!4722587 () Bool)

(declare-fun lt!2718961 () List!74919)

(declare-fun b!8017123 () Bool)

(assert (=> b!8017123 (= e!4722587 (or (not (= (Cons!74795 (head!16364 lt!2718617) Nil!74795) Nil!74795)) (= lt!2718961 (t!390662 testedP!353))))))

(declare-fun b!8017120 () Bool)

(declare-fun e!4722588 () List!74919)

(assert (=> b!8017120 (= e!4722588 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))

(declare-fun b!8017121 () Bool)

(assert (=> b!8017121 (= e!4722588 (Cons!74795 (h!81243 (t!390662 testedP!353)) (++!18516 (t!390662 (t!390662 testedP!353)) (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(declare-fun b!8017122 () Bool)

(declare-fun res!3169854 () Bool)

(assert (=> b!8017122 (=> (not res!3169854) (not e!4722587))))

(assert (=> b!8017122 (= res!3169854 (= (size!43592 lt!2718961) (+ (size!43592 (t!390662 testedP!353)) (size!43592 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(declare-fun d!2390336 () Bool)

(assert (=> d!2390336 e!4722587))

(declare-fun res!3169855 () Bool)

(assert (=> d!2390336 (=> (not res!3169855) (not e!4722587))))

(assert (=> d!2390336 (= res!3169855 (= (content!15921 lt!2718961) (set.union (content!15921 (t!390662 testedP!353)) (content!15921 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(assert (=> d!2390336 (= lt!2718961 e!4722588)))

(declare-fun c!1471510 () Bool)

(assert (=> d!2390336 (= c!1471510 (is-Nil!74795 (t!390662 testedP!353)))))

(assert (=> d!2390336 (= (++!18516 (t!390662 testedP!353) (Cons!74795 (head!16364 lt!2718617) Nil!74795)) lt!2718961)))

(assert (= (and d!2390336 c!1471510) b!8017120))

(assert (= (and d!2390336 (not c!1471510)) b!8017121))

(assert (= (and d!2390336 res!3169855) b!8017122))

(assert (= (and b!8017122 res!3169854) b!8017123))

(declare-fun m!8380208 () Bool)

(assert (=> b!8017121 m!8380208))

(declare-fun m!8380210 () Bool)

(assert (=> b!8017122 m!8380210))

(assert (=> b!8017122 m!8379850))

(assert (=> b!8017122 m!8379676))

(declare-fun m!8380212 () Bool)

(assert (=> d!2390336 m!8380212))

(assert (=> d!2390336 m!8380010))

(assert (=> d!2390336 m!8379680))

(assert (=> b!8016605 d!2390336))

(declare-fun d!2390338 () Bool)

(declare-fun c!1471511 () Bool)

(assert (=> d!2390338 (= c!1471511 (is-Nil!74795 lt!2718719))))

(declare-fun e!4722589 () (Set C!43718))

(assert (=> d!2390338 (= (content!15921 lt!2718719) e!4722589)))

(declare-fun b!8017124 () Bool)

(assert (=> b!8017124 (= e!4722589 (as set.empty (Set C!43718)))))

(declare-fun b!8017125 () Bool)

(assert (=> b!8017125 (= e!4722589 (set.union (set.insert (h!81243 lt!2718719) (as set.empty (Set C!43718))) (content!15921 (t!390662 lt!2718719))))))

(assert (= (and d!2390338 c!1471511) b!8017124))

(assert (= (and d!2390338 (not c!1471511)) b!8017125))

(declare-fun m!8380214 () Bool)

(assert (=> b!8017125 m!8380214))

(declare-fun m!8380216 () Bool)

(assert (=> b!8017125 m!8380216))

(assert (=> d!2390154 d!2390338))

(assert (=> d!2390154 d!2390238))

(declare-fun d!2390340 () Bool)

(declare-fun c!1471512 () Bool)

(assert (=> d!2390340 (= c!1471512 (is-Nil!74795 (Cons!74795 lt!2718621 Nil!74795)))))

(declare-fun e!4722590 () (Set C!43718))

(assert (=> d!2390340 (= (content!15921 (Cons!74795 lt!2718621 Nil!74795)) e!4722590)))

(declare-fun b!8017126 () Bool)

(assert (=> b!8017126 (= e!4722590 (as set.empty (Set C!43718)))))

(declare-fun b!8017127 () Bool)

(assert (=> b!8017127 (= e!4722590 (set.union (set.insert (h!81243 (Cons!74795 lt!2718621 Nil!74795)) (as set.empty (Set C!43718))) (content!15921 (t!390662 (Cons!74795 lt!2718621 Nil!74795)))))))

(assert (= (and d!2390340 c!1471512) b!8017126))

(assert (= (and d!2390340 (not c!1471512)) b!8017127))

(declare-fun m!8380218 () Bool)

(assert (=> b!8017127 m!8380218))

(declare-fun m!8380220 () Bool)

(assert (=> b!8017127 m!8380220))

(assert (=> d!2390154 d!2390340))

(declare-fun b!8017131 () Bool)

(declare-fun e!4722591 () Bool)

(declare-fun lt!2718962 () List!74919)

(assert (=> b!8017131 (= e!4722591 (or (not (= lt!2718619 Nil!74795)) (= lt!2718962 (t!390662 lt!2718614))))))

(declare-fun b!8017128 () Bool)

(declare-fun e!4722592 () List!74919)

(assert (=> b!8017128 (= e!4722592 lt!2718619)))

(declare-fun b!8017129 () Bool)

(assert (=> b!8017129 (= e!4722592 (Cons!74795 (h!81243 (t!390662 lt!2718614)) (++!18516 (t!390662 (t!390662 lt!2718614)) lt!2718619)))))

(declare-fun b!8017130 () Bool)

(declare-fun res!3169856 () Bool)

(assert (=> b!8017130 (=> (not res!3169856) (not e!4722591))))

(assert (=> b!8017130 (= res!3169856 (= (size!43592 lt!2718962) (+ (size!43592 (t!390662 lt!2718614)) (size!43592 lt!2718619))))))

(declare-fun d!2390342 () Bool)

(assert (=> d!2390342 e!4722591))

(declare-fun res!3169857 () Bool)

(assert (=> d!2390342 (=> (not res!3169857) (not e!4722591))))

(assert (=> d!2390342 (= res!3169857 (= (content!15921 lt!2718962) (set.union (content!15921 (t!390662 lt!2718614)) (content!15921 lt!2718619))))))

(assert (=> d!2390342 (= lt!2718962 e!4722592)))

(declare-fun c!1471513 () Bool)

(assert (=> d!2390342 (= c!1471513 (is-Nil!74795 (t!390662 lt!2718614)))))

(assert (=> d!2390342 (= (++!18516 (t!390662 lt!2718614) lt!2718619) lt!2718962)))

(assert (= (and d!2390342 c!1471513) b!8017128))

(assert (= (and d!2390342 (not c!1471513)) b!8017129))

(assert (= (and d!2390342 res!3169857) b!8017130))

(assert (= (and b!8017130 res!3169856) b!8017131))

(declare-fun m!8380222 () Bool)

(assert (=> b!8017129 m!8380222))

(declare-fun m!8380224 () Bool)

(assert (=> b!8017130 m!8380224))

(assert (=> b!8017130 m!8380044))

(assert (=> b!8017130 m!8379712))

(declare-fun m!8380226 () Bool)

(assert (=> d!2390342 m!8380226))

(assert (=> d!2390342 m!8380202))

(assert (=> d!2390342 m!8379720))

(assert (=> b!8016633 d!2390342))

(declare-fun d!2390344 () Bool)

(declare-fun e!4722594 () Bool)

(assert (=> d!2390344 e!4722594))

(declare-fun res!3169860 () Bool)

(assert (=> d!2390344 (=> res!3169860 e!4722594)))

(declare-fun lt!2718963 () Bool)

(assert (=> d!2390344 (= res!3169860 (not lt!2718963))))

(declare-fun e!4722595 () Bool)

(assert (=> d!2390344 (= lt!2718963 e!4722595)))

(declare-fun res!3169858 () Bool)

(assert (=> d!2390344 (=> res!3169858 e!4722595)))

(assert (=> d!2390344 (= res!3169858 (is-Nil!74795 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))))))

(assert (=> d!2390344 (= (isPrefix!6742 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) (tail!15887 totalInput!1349)) lt!2718963)))

(declare-fun b!8017135 () Bool)

(assert (=> b!8017135 (= e!4722594 (>= (size!43592 (tail!15887 totalInput!1349)) (size!43592 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))))

(declare-fun b!8017132 () Bool)

(declare-fun e!4722593 () Bool)

(assert (=> b!8017132 (= e!4722595 e!4722593)))

(declare-fun res!3169859 () Bool)

(assert (=> b!8017132 (=> (not res!3169859) (not e!4722593))))

(assert (=> b!8017132 (= res!3169859 (not (is-Nil!74795 (tail!15887 totalInput!1349))))))

(declare-fun b!8017134 () Bool)

(assert (=> b!8017134 (= e!4722593 (isPrefix!6742 (tail!15887 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))) (tail!15887 (tail!15887 totalInput!1349))))))

(declare-fun b!8017133 () Bool)

(declare-fun res!3169861 () Bool)

(assert (=> b!8017133 (=> (not res!3169861) (not e!4722593))))

(assert (=> b!8017133 (= res!3169861 (= (head!16364 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795)))) (head!16364 (tail!15887 totalInput!1349))))))

(assert (= (and d!2390344 (not res!3169858)) b!8017132))

(assert (= (and b!8017132 res!3169859) b!8017133))

(assert (= (and b!8017133 res!3169861) b!8017134))

(assert (= (and d!2390344 (not res!3169860)) b!8017135))

(assert (=> b!8017135 m!8379624))

(assert (=> b!8017135 m!8379998))

(assert (=> b!8017135 m!8379698))

(declare-fun m!8380228 () Bool)

(assert (=> b!8017135 m!8380228))

(assert (=> b!8017134 m!8379698))

(declare-fun m!8380230 () Bool)

(assert (=> b!8017134 m!8380230))

(assert (=> b!8017134 m!8379624))

(assert (=> b!8017134 m!8380000))

(assert (=> b!8017134 m!8380230))

(assert (=> b!8017134 m!8380000))

(declare-fun m!8380232 () Bool)

(assert (=> b!8017134 m!8380232))

(assert (=> b!8017133 m!8379698))

(declare-fun m!8380234 () Bool)

(assert (=> b!8017133 m!8380234))

(assert (=> b!8017133 m!8379624))

(assert (=> b!8017133 m!8380066))

(assert (=> b!8016630 d!2390344))

(declare-fun d!2390346 () Bool)

(assert (=> d!2390346 (= (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) (t!390662 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(assert (=> b!8016630 d!2390346))

(assert (=> b!8016630 d!2390230))

(assert (=> d!2390122 d!2390192))

(assert (=> d!2390122 d!2390130))

(declare-fun d!2390348 () Bool)

(assert (=> d!2390348 (<= (size!43592 testedP!353) (size!43592 totalInput!1349))))

(assert (=> d!2390348 true))

(declare-fun _$64!1000 () Unit!170878)

(assert (=> d!2390348 (= (choose!60417 testedP!353 totalInput!1349) _$64!1000)))

(declare-fun bs!1971067 () Bool)

(assert (= bs!1971067 d!2390348))

(assert (=> bs!1971067 m!8379534))

(assert (=> bs!1971067 m!8379498))

(assert (=> d!2390122 d!2390348))

(assert (=> d!2390122 d!2390172))

(declare-fun d!2390350 () Bool)

(assert (=> d!2390350 (= (nullable!9732 (derivativeStep!6641 r!15422 lt!2718621)) (nullableFct!3848 (derivativeStep!6641 r!15422 lt!2718621)))))

(declare-fun bs!1971068 () Bool)

(assert (= bs!1971068 d!2390350))

(assert (=> bs!1971068 m!8379550))

(declare-fun m!8380236 () Bool)

(assert (=> bs!1971068 m!8380236))

(assert (=> bm!744666 d!2390350))

(declare-fun d!2390352 () Bool)

(assert (=> d!2390352 (= (nullable!9732 (regOne!43892 r!15422)) (nullableFct!3848 (regOne!43892 r!15422)))))

(declare-fun bs!1971069 () Bool)

(assert (= bs!1971069 d!2390352))

(declare-fun m!8380238 () Bool)

(assert (=> bs!1971069 m!8380238))

(assert (=> b!8016736 d!2390352))

(declare-fun lt!2718964 () List!74919)

(declare-fun b!8017139 () Bool)

(declare-fun e!4722596 () Bool)

(assert (=> b!8017139 (= e!4722596 (or (not (= (Cons!74795 lt!2718621 Nil!74795) Nil!74795)) (= lt!2718964 (t!390662 testedP!353))))))

(declare-fun b!8017136 () Bool)

(declare-fun e!4722597 () List!74919)

(assert (=> b!8017136 (= e!4722597 (Cons!74795 lt!2718621 Nil!74795))))

(declare-fun b!8017137 () Bool)

(assert (=> b!8017137 (= e!4722597 (Cons!74795 (h!81243 (t!390662 testedP!353)) (++!18516 (t!390662 (t!390662 testedP!353)) (Cons!74795 lt!2718621 Nil!74795))))))

(declare-fun b!8017138 () Bool)

(declare-fun res!3169862 () Bool)

(assert (=> b!8017138 (=> (not res!3169862) (not e!4722596))))

(assert (=> b!8017138 (= res!3169862 (= (size!43592 lt!2718964) (+ (size!43592 (t!390662 testedP!353)) (size!43592 (Cons!74795 lt!2718621 Nil!74795)))))))

(declare-fun d!2390354 () Bool)

(assert (=> d!2390354 e!4722596))

(declare-fun res!3169863 () Bool)

(assert (=> d!2390354 (=> (not res!3169863) (not e!4722596))))

(assert (=> d!2390354 (= res!3169863 (= (content!15921 lt!2718964) (set.union (content!15921 (t!390662 testedP!353)) (content!15921 (Cons!74795 lt!2718621 Nil!74795)))))))

(assert (=> d!2390354 (= lt!2718964 e!4722597)))

(declare-fun c!1471514 () Bool)

(assert (=> d!2390354 (= c!1471514 (is-Nil!74795 (t!390662 testedP!353)))))

(assert (=> d!2390354 (= (++!18516 (t!390662 testedP!353) (Cons!74795 lt!2718621 Nil!74795)) lt!2718964)))

(assert (= (and d!2390354 c!1471514) b!8017136))

(assert (= (and d!2390354 (not c!1471514)) b!8017137))

(assert (= (and d!2390354 res!3169863) b!8017138))

(assert (= (and b!8017138 res!3169862) b!8017139))

(declare-fun m!8380240 () Bool)

(assert (=> b!8017137 m!8380240))

(declare-fun m!8380242 () Bool)

(assert (=> b!8017138 m!8380242))

(assert (=> b!8017138 m!8379850))

(assert (=> b!8017138 m!8379728))

(declare-fun m!8380244 () Bool)

(assert (=> d!2390354 m!8380244))

(assert (=> d!2390354 m!8380010))

(assert (=> d!2390354 m!8379732))

(assert (=> b!8016639 d!2390354))

(declare-fun d!2390356 () Bool)

(assert (=> d!2390356 (= totalInput!1349 lt!2718614)))

(declare-fun lt!2718965 () Unit!170878)

(assert (=> d!2390356 (= lt!2718965 (choose!60421 totalInput!1349 lt!2718614 totalInput!1349))))

(assert (=> d!2390356 (isPrefix!6742 totalInput!1349 totalInput!1349)))

(assert (=> d!2390356 (= (lemmaIsPrefixSameLengthThenSameList!1754 totalInput!1349 lt!2718614 totalInput!1349) lt!2718965)))

(declare-fun bs!1971070 () Bool)

(assert (= bs!1971070 d!2390356))

(declare-fun m!8380246 () Bool)

(assert (=> bs!1971070 m!8380246))

(assert (=> bs!1971070 m!8379502))

(assert (=> bm!744665 d!2390356))

(assert (=> b!8016645 d!2390130))

(declare-fun d!2390358 () Bool)

(assert (=> d!2390358 (isPrefix!6742 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)) totalInput!1349)))

(assert (=> d!2390358 true))

(declare-fun _$65!2027 () Unit!170878)

(assert (=> d!2390358 (= (choose!60418 testedP!353 totalInput!1349) _$65!2027)))

(declare-fun bs!1971071 () Bool)

(assert (= bs!1971071 d!2390358))

(assert (=> bs!1971071 m!8379530))

(assert (=> bs!1971071 m!8379530))

(assert (=> bs!1971071 m!8379664))

(assert (=> bs!1971071 m!8379668))

(assert (=> bs!1971071 m!8379668))

(assert (=> bs!1971071 m!8379670))

(assert (=> d!2390134 d!2390358))

(declare-fun d!2390360 () Bool)

(declare-fun e!4722599 () Bool)

(assert (=> d!2390360 e!4722599))

(declare-fun res!3169866 () Bool)

(assert (=> d!2390360 (=> res!3169866 e!4722599)))

(declare-fun lt!2718966 () Bool)

(assert (=> d!2390360 (= res!3169866 (not lt!2718966))))

(declare-fun e!4722600 () Bool)

(assert (=> d!2390360 (= lt!2718966 e!4722600)))

(declare-fun res!3169864 () Bool)

(assert (=> d!2390360 (=> res!3169864 e!4722600)))

(assert (=> d!2390360 (= res!3169864 (is-Nil!74795 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795))))))

(assert (=> d!2390360 (= (isPrefix!6742 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)) totalInput!1349) lt!2718966)))

(declare-fun b!8017143 () Bool)

(assert (=> b!8017143 (= e!4722599 (>= (size!43592 totalInput!1349) (size!43592 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)))))))

(declare-fun b!8017140 () Bool)

(declare-fun e!4722598 () Bool)

(assert (=> b!8017140 (= e!4722600 e!4722598)))

(declare-fun res!3169865 () Bool)

(assert (=> b!8017140 (=> (not res!3169865) (not e!4722598))))

(assert (=> b!8017140 (= res!3169865 (not (is-Nil!74795 totalInput!1349)))))

(declare-fun b!8017142 () Bool)

(assert (=> b!8017142 (= e!4722598 (isPrefix!6742 (tail!15887 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795))) (tail!15887 totalInput!1349)))))

(declare-fun b!8017141 () Bool)

(declare-fun res!3169867 () Bool)

(assert (=> b!8017141 (=> (not res!3169867) (not e!4722598))))

(assert (=> b!8017141 (= res!3169867 (= (head!16364 (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795))) (head!16364 totalInput!1349)))))

(assert (= (and d!2390360 (not res!3169864)) b!8017140))

(assert (= (and b!8017140 res!3169865) b!8017141))

(assert (= (and b!8017141 res!3169867) b!8017142))

(assert (= (and d!2390360 (not res!3169866)) b!8017143))

(assert (=> b!8017143 m!8379498))

(assert (=> b!8017143 m!8379668))

(declare-fun m!8380248 () Bool)

(assert (=> b!8017143 m!8380248))

(assert (=> b!8017142 m!8379668))

(declare-fun m!8380250 () Bool)

(assert (=> b!8017142 m!8380250))

(assert (=> b!8017142 m!8379624))

(assert (=> b!8017142 m!8380250))

(assert (=> b!8017142 m!8379624))

(declare-fun m!8380252 () Bool)

(assert (=> b!8017142 m!8380252))

(assert (=> b!8017141 m!8379668))

(declare-fun m!8380254 () Bool)

(assert (=> b!8017141 m!8380254))

(assert (=> b!8017141 m!8379704))

(assert (=> d!2390134 d!2390360))

(assert (=> d!2390134 d!2390118))

(declare-fun d!2390362 () Bool)

(assert (=> d!2390362 (= (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) (h!81243 (getSuffix!3937 totalInput!1349 testedP!353)))))

(assert (=> d!2390134 d!2390362))

(assert (=> d!2390134 d!2390172))

(declare-fun lt!2718967 () List!74919)

(declare-fun b!8017147 () Bool)

(declare-fun e!4722601 () Bool)

(assert (=> b!8017147 (= e!4722601 (or (not (= (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795) Nil!74795)) (= lt!2718967 testedP!353)))))

(declare-fun b!8017144 () Bool)

(declare-fun e!4722602 () List!74919)

(assert (=> b!8017144 (= e!4722602 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795))))

(declare-fun b!8017145 () Bool)

(assert (=> b!8017145 (= e!4722602 (Cons!74795 (h!81243 testedP!353) (++!18516 (t!390662 testedP!353) (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795))))))

(declare-fun b!8017146 () Bool)

(declare-fun res!3169868 () Bool)

(assert (=> b!8017146 (=> (not res!3169868) (not e!4722601))))

(assert (=> b!8017146 (= res!3169868 (= (size!43592 lt!2718967) (+ (size!43592 testedP!353) (size!43592 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)))))))

(declare-fun d!2390364 () Bool)

(assert (=> d!2390364 e!4722601))

(declare-fun res!3169869 () Bool)

(assert (=> d!2390364 (=> (not res!3169869) (not e!4722601))))

(assert (=> d!2390364 (= res!3169869 (= (content!15921 lt!2718967) (set.union (content!15921 testedP!353) (content!15921 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)))))))

(assert (=> d!2390364 (= lt!2718967 e!4722602)))

(declare-fun c!1471515 () Bool)

(assert (=> d!2390364 (= c!1471515 (is-Nil!74795 testedP!353))))

(assert (=> d!2390364 (= (++!18516 testedP!353 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 testedP!353)) Nil!74795)) lt!2718967)))

(assert (= (and d!2390364 c!1471515) b!8017144))

(assert (= (and d!2390364 (not c!1471515)) b!8017145))

(assert (= (and d!2390364 res!3169869) b!8017146))

(assert (= (and b!8017146 res!3169868) b!8017147))

(declare-fun m!8380256 () Bool)

(assert (=> b!8017145 m!8380256))

(declare-fun m!8380258 () Bool)

(assert (=> b!8017146 m!8380258))

(assert (=> b!8017146 m!8379534))

(declare-fun m!8380260 () Bool)

(assert (=> b!8017146 m!8380260))

(declare-fun m!8380262 () Bool)

(assert (=> d!2390364 m!8380262))

(assert (=> d!2390364 m!8379638))

(declare-fun m!8380264 () Bool)

(assert (=> d!2390364 m!8380264))

(assert (=> d!2390134 d!2390364))

(assert (=> b!8016643 d!2390252))

(declare-fun e!4722603 () Bool)

(declare-fun lt!2718968 () List!74919)

(declare-fun b!8017151 () Bool)

(assert (=> b!8017151 (= e!4722603 (or (not (= (Cons!74795 lt!2718814 Nil!74795) Nil!74795)) (= lt!2718968 lt!2718614)))))

(declare-fun b!8017148 () Bool)

(declare-fun e!4722604 () List!74919)

(assert (=> b!8017148 (= e!4722604 (Cons!74795 lt!2718814 Nil!74795))))

(declare-fun b!8017149 () Bool)

(assert (=> b!8017149 (= e!4722604 (Cons!74795 (h!81243 lt!2718614) (++!18516 (t!390662 lt!2718614) (Cons!74795 lt!2718814 Nil!74795))))))

(declare-fun b!8017150 () Bool)

(declare-fun res!3169870 () Bool)

(assert (=> b!8017150 (=> (not res!3169870) (not e!4722603))))

(assert (=> b!8017150 (= res!3169870 (= (size!43592 lt!2718968) (+ (size!43592 lt!2718614) (size!43592 (Cons!74795 lt!2718814 Nil!74795)))))))

(declare-fun d!2390366 () Bool)

(assert (=> d!2390366 e!4722603))

(declare-fun res!3169871 () Bool)

(assert (=> d!2390366 (=> (not res!3169871) (not e!4722603))))

(assert (=> d!2390366 (= res!3169871 (= (content!15921 lt!2718968) (set.union (content!15921 lt!2718614) (content!15921 (Cons!74795 lt!2718814 Nil!74795)))))))

(assert (=> d!2390366 (= lt!2718968 e!4722604)))

(declare-fun c!1471516 () Bool)

(assert (=> d!2390366 (= c!1471516 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390366 (= (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795)) lt!2718968)))

(assert (= (and d!2390366 c!1471516) b!8017148))

(assert (= (and d!2390366 (not c!1471516)) b!8017149))

(assert (= (and d!2390366 res!3169871) b!8017150))

(assert (= (and b!8017150 res!3169870) b!8017151))

(declare-fun m!8380266 () Bool)

(assert (=> b!8017149 m!8380266))

(declare-fun m!8380268 () Bool)

(assert (=> b!8017150 m!8380268))

(assert (=> b!8017150 m!8379710))

(declare-fun m!8380270 () Bool)

(assert (=> b!8017150 m!8380270))

(declare-fun m!8380272 () Bool)

(assert (=> d!2390366 m!8380272))

(assert (=> d!2390366 m!8379718))

(declare-fun m!8380274 () Bool)

(assert (=> d!2390366 m!8380274))

(assert (=> b!8016707 d!2390366))

(assert (=> b!8016707 d!2390266))

(declare-fun b!8017155 () Bool)

(declare-fun lt!2718969 () List!74919)

(declare-fun e!4722605 () Bool)

(assert (=> b!8017155 (= e!4722605 (or (not (= lt!2718821 Nil!74795)) (= lt!2718969 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795)))))))

(declare-fun b!8017152 () Bool)

(declare-fun e!4722606 () List!74919)

(assert (=> b!8017152 (= e!4722606 lt!2718821)))

(declare-fun b!8017153 () Bool)

(assert (=> b!8017153 (= e!4722606 (Cons!74795 (h!81243 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795))) (++!18516 (t!390662 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795))) lt!2718821)))))

(declare-fun b!8017154 () Bool)

(declare-fun res!3169872 () Bool)

(assert (=> b!8017154 (=> (not res!3169872) (not e!4722605))))

(assert (=> b!8017154 (= res!3169872 (= (size!43592 lt!2718969) (+ (size!43592 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795))) (size!43592 lt!2718821))))))

(declare-fun d!2390368 () Bool)

(assert (=> d!2390368 e!4722605))

(declare-fun res!3169873 () Bool)

(assert (=> d!2390368 (=> (not res!3169873) (not e!4722605))))

(assert (=> d!2390368 (= res!3169873 (= (content!15921 lt!2718969) (set.union (content!15921 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795))) (content!15921 lt!2718821))))))

(assert (=> d!2390368 (= lt!2718969 e!4722606)))

(declare-fun c!1471517 () Bool)

(assert (=> d!2390368 (= c!1471517 (is-Nil!74795 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795))))))

(assert (=> d!2390368 (= (++!18516 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795)) lt!2718821) lt!2718969)))

(assert (= (and d!2390368 c!1471517) b!8017152))

(assert (= (and d!2390368 (not c!1471517)) b!8017153))

(assert (= (and d!2390368 res!3169873) b!8017154))

(assert (= (and b!8017154 res!3169872) b!8017155))

(declare-fun m!8380276 () Bool)

(assert (=> b!8017153 m!8380276))

(declare-fun m!8380278 () Bool)

(assert (=> b!8017154 m!8380278))

(assert (=> b!8017154 m!8379816))

(declare-fun m!8380280 () Bool)

(assert (=> b!8017154 m!8380280))

(declare-fun m!8380282 () Bool)

(assert (=> b!8017154 m!8380282))

(declare-fun m!8380284 () Bool)

(assert (=> d!2390368 m!8380284))

(assert (=> d!2390368 m!8379816))

(declare-fun m!8380286 () Bool)

(assert (=> d!2390368 m!8380286))

(declare-fun m!8380288 () Bool)

(assert (=> d!2390368 m!8380288))

(assert (=> b!8016707 d!2390368))

(declare-fun d!2390370 () Bool)

(assert (=> d!2390370 (isPrefix!6742 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)) totalInput!1349)))

(declare-fun lt!2718970 () Unit!170878)

(assert (=> d!2390370 (= lt!2718970 (choose!60418 lt!2718614 totalInput!1349))))

(assert (=> d!2390370 (isPrefix!6742 lt!2718614 totalInput!1349)))

(assert (=> d!2390370 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1415 lt!2718614 totalInput!1349) lt!2718970)))

(declare-fun bs!1971072 () Bool)

(assert (= bs!1971072 d!2390370))

(assert (=> bs!1971072 m!8379804))

(assert (=> bs!1971072 m!8379826))

(declare-fun m!8380290 () Bool)

(assert (=> bs!1971072 m!8380290))

(assert (=> bs!1971072 m!8379804))

(assert (=> bs!1971072 m!8379812))

(assert (=> bs!1971072 m!8379814))

(assert (=> bs!1971072 m!8379812))

(assert (=> bs!1971072 m!8380156))

(assert (=> b!8016707 d!2390370))

(declare-fun d!2390372 () Bool)

(assert (=> d!2390372 (= (tail!15887 lt!2718619) (t!390662 lt!2718619))))

(assert (=> b!8016707 d!2390372))

(assert (=> b!8016707 d!2390308))

(declare-fun lt!2718971 () List!74919)

(declare-fun b!8017159 () Bool)

(declare-fun e!4722607 () Bool)

(assert (=> b!8017159 (= e!4722607 (or (not (= (Cons!74795 (head!16364 lt!2718619) Nil!74795) Nil!74795)) (= lt!2718971 lt!2718614)))))

(declare-fun b!8017156 () Bool)

(declare-fun e!4722608 () List!74919)

(assert (=> b!8017156 (= e!4722608 (Cons!74795 (head!16364 lt!2718619) Nil!74795))))

(declare-fun b!8017157 () Bool)

(assert (=> b!8017157 (= e!4722608 (Cons!74795 (h!81243 lt!2718614) (++!18516 (t!390662 lt!2718614) (Cons!74795 (head!16364 lt!2718619) Nil!74795))))))

(declare-fun b!8017158 () Bool)

(declare-fun res!3169874 () Bool)

(assert (=> b!8017158 (=> (not res!3169874) (not e!4722607))))

(assert (=> b!8017158 (= res!3169874 (= (size!43592 lt!2718971) (+ (size!43592 lt!2718614) (size!43592 (Cons!74795 (head!16364 lt!2718619) Nil!74795)))))))

(declare-fun d!2390374 () Bool)

(assert (=> d!2390374 e!4722607))

(declare-fun res!3169875 () Bool)

(assert (=> d!2390374 (=> (not res!3169875) (not e!4722607))))

(assert (=> d!2390374 (= res!3169875 (= (content!15921 lt!2718971) (set.union (content!15921 lt!2718614) (content!15921 (Cons!74795 (head!16364 lt!2718619) Nil!74795)))))))

(assert (=> d!2390374 (= lt!2718971 e!4722608)))

(declare-fun c!1471518 () Bool)

(assert (=> d!2390374 (= c!1471518 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390374 (= (++!18516 lt!2718614 (Cons!74795 (head!16364 lt!2718619) Nil!74795)) lt!2718971)))

(assert (= (and d!2390374 c!1471518) b!8017156))

(assert (= (and d!2390374 (not c!1471518)) b!8017157))

(assert (= (and d!2390374 res!3169875) b!8017158))

(assert (= (and b!8017158 res!3169874) b!8017159))

(declare-fun m!8380292 () Bool)

(assert (=> b!8017157 m!8380292))

(declare-fun m!8380294 () Bool)

(assert (=> b!8017158 m!8380294))

(assert (=> b!8017158 m!8379710))

(declare-fun m!8380296 () Bool)

(assert (=> b!8017158 m!8380296))

(declare-fun m!8380298 () Bool)

(assert (=> d!2390374 m!8380298))

(assert (=> d!2390374 m!8379718))

(declare-fun m!8380300 () Bool)

(assert (=> d!2390374 m!8380300))

(assert (=> b!8016707 d!2390374))

(declare-fun b!8017163 () Bool)

(declare-fun e!4722609 () Bool)

(declare-fun lt!2718972 () List!74919)

(assert (=> b!8017163 (= e!4722609 (or (not (= (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795) Nil!74795)) (= lt!2718972 lt!2718614)))))

(declare-fun b!8017160 () Bool)

(declare-fun e!4722610 () List!74919)

(assert (=> b!8017160 (= e!4722610 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795))))

(declare-fun b!8017161 () Bool)

(assert (=> b!8017161 (= e!4722610 (Cons!74795 (h!81243 lt!2718614) (++!18516 (t!390662 lt!2718614) (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795))))))

(declare-fun b!8017162 () Bool)

(declare-fun res!3169876 () Bool)

(assert (=> b!8017162 (=> (not res!3169876) (not e!4722609))))

(assert (=> b!8017162 (= res!3169876 (= (size!43592 lt!2718972) (+ (size!43592 lt!2718614) (size!43592 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)))))))

(declare-fun d!2390376 () Bool)

(assert (=> d!2390376 e!4722609))

(declare-fun res!3169877 () Bool)

(assert (=> d!2390376 (=> (not res!3169877) (not e!4722609))))

(assert (=> d!2390376 (= res!3169877 (= (content!15921 lt!2718972) (set.union (content!15921 lt!2718614) (content!15921 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)))))))

(assert (=> d!2390376 (= lt!2718972 e!4722610)))

(declare-fun c!1471519 () Bool)

(assert (=> d!2390376 (= c!1471519 (is-Nil!74795 lt!2718614))))

(assert (=> d!2390376 (= (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)) lt!2718972)))

(assert (= (and d!2390376 c!1471519) b!8017160))

(assert (= (and d!2390376 (not c!1471519)) b!8017161))

(assert (= (and d!2390376 res!3169877) b!8017162))

(assert (= (and b!8017162 res!3169876) b!8017163))

(declare-fun m!8380302 () Bool)

(assert (=> b!8017161 m!8380302))

(declare-fun m!8380304 () Bool)

(assert (=> b!8017162 m!8380304))

(assert (=> b!8017162 m!8379710))

(declare-fun m!8380306 () Bool)

(assert (=> b!8017162 m!8380306))

(declare-fun m!8380308 () Bool)

(assert (=> d!2390376 m!8380308))

(assert (=> d!2390376 m!8379718))

(declare-fun m!8380310 () Bool)

(assert (=> d!2390376 m!8380310))

(assert (=> b!8016707 d!2390376))

(declare-fun d!2390378 () Bool)

(declare-fun e!4722612 () Bool)

(assert (=> d!2390378 e!4722612))

(declare-fun res!3169880 () Bool)

(assert (=> d!2390378 (=> res!3169880 e!4722612)))

(declare-fun lt!2718973 () Bool)

(assert (=> d!2390378 (= res!3169880 (not lt!2718973))))

(declare-fun e!4722613 () Bool)

(assert (=> d!2390378 (= lt!2718973 e!4722613)))

(declare-fun res!3169878 () Bool)

(assert (=> d!2390378 (=> res!3169878 e!4722613)))

(assert (=> d!2390378 (= res!3169878 (is-Nil!74795 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795))))))

(assert (=> d!2390378 (= (isPrefix!6742 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)) totalInput!1349) lt!2718973)))

(declare-fun b!8017167 () Bool)

(assert (=> b!8017167 (= e!4722612 (>= (size!43592 totalInput!1349) (size!43592 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795)))))))

(declare-fun b!8017164 () Bool)

(declare-fun e!4722611 () Bool)

(assert (=> b!8017164 (= e!4722613 e!4722611)))

(declare-fun res!3169879 () Bool)

(assert (=> b!8017164 (=> (not res!3169879) (not e!4722611))))

(assert (=> b!8017164 (= res!3169879 (not (is-Nil!74795 totalInput!1349)))))

(declare-fun b!8017166 () Bool)

(assert (=> b!8017166 (= e!4722611 (isPrefix!6742 (tail!15887 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795))) (tail!15887 totalInput!1349)))))

(declare-fun b!8017165 () Bool)

(declare-fun res!3169881 () Bool)

(assert (=> b!8017165 (=> (not res!3169881) (not e!4722611))))

(assert (=> b!8017165 (= res!3169881 (= (head!16364 (++!18516 lt!2718614 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) Nil!74795))) (head!16364 totalInput!1349)))))

(assert (= (and d!2390378 (not res!3169878)) b!8017164))

(assert (= (and b!8017164 res!3169879) b!8017165))

(assert (= (and b!8017165 res!3169881) b!8017166))

(assert (= (and d!2390378 (not res!3169880)) b!8017167))

(assert (=> b!8017167 m!8379498))

(assert (=> b!8017167 m!8379812))

(declare-fun m!8380312 () Bool)

(assert (=> b!8017167 m!8380312))

(assert (=> b!8017166 m!8379812))

(declare-fun m!8380314 () Bool)

(assert (=> b!8017166 m!8380314))

(assert (=> b!8017166 m!8379624))

(assert (=> b!8017166 m!8380314))

(assert (=> b!8017166 m!8379624))

(declare-fun m!8380316 () Bool)

(assert (=> b!8017166 m!8380316))

(assert (=> b!8017165 m!8379812))

(declare-fun m!8380318 () Bool)

(assert (=> b!8017165 m!8380318))

(assert (=> b!8017165 m!8379704))

(assert (=> b!8016707 d!2390378))

(assert (=> b!8016707 d!2390130))

(declare-fun d!2390380 () Bool)

(assert (=> d!2390380 (= (head!16364 (getSuffix!3937 totalInput!1349 lt!2718614)) (h!81243 (getSuffix!3937 totalInput!1349 lt!2718614)))))

(assert (=> b!8016707 d!2390380))

(declare-fun d!2390382 () Bool)

(assert (=> d!2390382 (<= (size!43592 lt!2718614) (size!43592 totalInput!1349))))

(declare-fun lt!2718974 () Unit!170878)

(assert (=> d!2390382 (= lt!2718974 (choose!60417 lt!2718614 totalInput!1349))))

(assert (=> d!2390382 (isPrefix!6742 lt!2718614 totalInput!1349)))

(assert (=> d!2390382 (= (lemmaIsPrefixThenSmallerEqSize!1225 lt!2718614 totalInput!1349) lt!2718974)))

(declare-fun bs!1971073 () Bool)

(assert (= bs!1971073 d!2390382))

(assert (=> bs!1971073 m!8379710))

(assert (=> bs!1971073 m!8379498))

(declare-fun m!8380320 () Bool)

(assert (=> bs!1971073 m!8380320))

(assert (=> bs!1971073 m!8380156))

(assert (=> b!8016707 d!2390382))

(declare-fun d!2390384 () Bool)

(assert (=> d!2390384 (= (++!18516 (++!18516 lt!2718614 (Cons!74795 lt!2718814 Nil!74795)) lt!2718821) totalInput!1349)))

(declare-fun lt!2718975 () Unit!170878)

(assert (=> d!2390384 (= lt!2718975 (choose!60419 lt!2718614 lt!2718814 lt!2718821 totalInput!1349))))

(assert (=> d!2390384 (= (++!18516 lt!2718614 (Cons!74795 lt!2718814 lt!2718821)) totalInput!1349)))

(assert (=> d!2390384 (= (lemmaMoveElementToOtherListKeepsConcatEq!3597 lt!2718614 lt!2718814 lt!2718821 totalInput!1349) lt!2718975)))

(declare-fun bs!1971074 () Bool)

(assert (= bs!1971074 d!2390384))

(assert (=> bs!1971074 m!8379816))

(assert (=> bs!1971074 m!8379816))

(assert (=> bs!1971074 m!8379824))

(declare-fun m!8380322 () Bool)

(assert (=> bs!1971074 m!8380322))

(declare-fun m!8380324 () Bool)

(assert (=> bs!1971074 m!8380324))

(assert (=> b!8016707 d!2390384))

(declare-fun d!2390386 () Bool)

(assert (=> d!2390386 (= (head!16364 lt!2718619) (h!81243 lt!2718619))))

(assert (=> b!8016707 d!2390386))

(declare-fun b!8017171 () Bool)

(declare-fun lt!2718976 () List!74919)

(declare-fun e!4722614 () Bool)

(assert (=> b!8017171 (= e!4722614 (or (not (= testedSuffix!271 Nil!74795)) (= lt!2718976 (t!390662 testedP!353))))))

(declare-fun b!8017168 () Bool)

(declare-fun e!4722615 () List!74919)

(assert (=> b!8017168 (= e!4722615 testedSuffix!271)))

(declare-fun b!8017169 () Bool)

(assert (=> b!8017169 (= e!4722615 (Cons!74795 (h!81243 (t!390662 testedP!353)) (++!18516 (t!390662 (t!390662 testedP!353)) testedSuffix!271)))))

(declare-fun b!8017170 () Bool)

(declare-fun res!3169882 () Bool)

(assert (=> b!8017170 (=> (not res!3169882) (not e!4722614))))

(assert (=> b!8017170 (= res!3169882 (= (size!43592 lt!2718976) (+ (size!43592 (t!390662 testedP!353)) (size!43592 testedSuffix!271))))))

(declare-fun d!2390388 () Bool)

(assert (=> d!2390388 e!4722614))

(declare-fun res!3169883 () Bool)

(assert (=> d!2390388 (=> (not res!3169883) (not e!4722614))))

(assert (=> d!2390388 (= res!3169883 (= (content!15921 lt!2718976) (set.union (content!15921 (t!390662 testedP!353)) (content!15921 testedSuffix!271))))))

(assert (=> d!2390388 (= lt!2718976 e!4722615)))

(declare-fun c!1471520 () Bool)

(assert (=> d!2390388 (= c!1471520 (is-Nil!74795 (t!390662 testedP!353)))))

(assert (=> d!2390388 (= (++!18516 (t!390662 testedP!353) testedSuffix!271) lt!2718976)))

(assert (= (and d!2390388 c!1471520) b!8017168))

(assert (= (and d!2390388 (not c!1471520)) b!8017169))

(assert (= (and d!2390388 res!3169883) b!8017170))

(assert (= (and b!8017170 res!3169882) b!8017171))

(declare-fun m!8380326 () Bool)

(assert (=> b!8017169 m!8380326))

(declare-fun m!8380328 () Bool)

(assert (=> b!8017170 m!8380328))

(assert (=> b!8017170 m!8379850))

(assert (=> b!8017170 m!8379634))

(declare-fun m!8380330 () Bool)

(assert (=> d!2390388 m!8380330))

(assert (=> d!2390388 m!8380010))

(assert (=> d!2390388 m!8379640))

(assert (=> b!8016564 d!2390388))

(declare-fun b!8017172 () Bool)

(declare-fun e!4722621 () Bool)

(declare-fun call!744766 () Bool)

(assert (=> b!8017172 (= e!4722621 call!744766)))

(declare-fun bm!744759 () Bool)

(declare-fun call!744764 () Bool)

(assert (=> bm!744759 (= call!744766 call!744764)))

(declare-fun b!8017173 () Bool)

(declare-fun res!3169886 () Bool)

(declare-fun e!4722620 () Bool)

(assert (=> b!8017173 (=> res!3169886 e!4722620)))

(assert (=> b!8017173 (= res!3169886 (not (is-Concat!30689 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422))))))))

(declare-fun e!4722622 () Bool)

(assert (=> b!8017173 (= e!4722622 e!4722620)))

(declare-fun c!1471522 () Bool)

(declare-fun c!1471521 () Bool)

(declare-fun bm!744760 () Bool)

(assert (=> bm!744760 (= call!744764 (validRegex!11994 (ite c!1471521 (reg!22019 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))) (ite c!1471522 (regTwo!43893 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))) (regTwo!43892 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422))))))))))

(declare-fun b!8017174 () Bool)

(assert (=> b!8017174 (= e!4722620 e!4722621)))

(declare-fun res!3169888 () Bool)

(assert (=> b!8017174 (=> (not res!3169888) (not e!4722621))))

(declare-fun call!744765 () Bool)

(assert (=> b!8017174 (= res!3169888 call!744765)))

(declare-fun d!2390390 () Bool)

(declare-fun res!3169887 () Bool)

(declare-fun e!4722617 () Bool)

(assert (=> d!2390390 (=> res!3169887 e!4722617)))

(assert (=> d!2390390 (= res!3169887 (is-ElementMatch!21690 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))

(assert (=> d!2390390 (= (validRegex!11994 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))) e!4722617)))

(declare-fun b!8017175 () Bool)

(declare-fun e!4722618 () Bool)

(assert (=> b!8017175 (= e!4722617 e!4722618)))

(assert (=> b!8017175 (= c!1471521 (is-Star!21690 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))

(declare-fun b!8017176 () Bool)

(declare-fun res!3169884 () Bool)

(declare-fun e!4722616 () Bool)

(assert (=> b!8017176 (=> (not res!3169884) (not e!4722616))))

(assert (=> b!8017176 (= res!3169884 call!744765)))

(assert (=> b!8017176 (= e!4722622 e!4722616)))

(declare-fun b!8017177 () Bool)

(assert (=> b!8017177 (= e!4722618 e!4722622)))

(assert (=> b!8017177 (= c!1471522 (is-Union!21690 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))

(declare-fun bm!744761 () Bool)

(assert (=> bm!744761 (= call!744765 (validRegex!11994 (ite c!1471522 (regOne!43893 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))) (regOne!43892 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))))

(declare-fun b!8017178 () Bool)

(declare-fun e!4722619 () Bool)

(assert (=> b!8017178 (= e!4722618 e!4722619)))

(declare-fun res!3169885 () Bool)

(assert (=> b!8017178 (= res!3169885 (not (nullable!9732 (reg!22019 (ite c!1471365 (reg!22019 r!15422) (ite c!1471366 (regTwo!43893 r!15422) (regTwo!43892 r!15422)))))))))

(assert (=> b!8017178 (=> (not res!3169885) (not e!4722619))))

(declare-fun b!8017179 () Bool)

(assert (=> b!8017179 (= e!4722619 call!744764)))

(declare-fun b!8017180 () Bool)

(assert (=> b!8017180 (= e!4722616 call!744766)))

(assert (= (and d!2390390 (not res!3169887)) b!8017175))

(assert (= (and b!8017175 c!1471521) b!8017178))

(assert (= (and b!8017175 (not c!1471521)) b!8017177))

(assert (= (and b!8017178 res!3169885) b!8017179))

(assert (= (and b!8017177 c!1471522) b!8017176))

(assert (= (and b!8017177 (not c!1471522)) b!8017173))

(assert (= (and b!8017176 res!3169884) b!8017180))

(assert (= (and b!8017173 (not res!3169886)) b!8017174))

(assert (= (and b!8017174 res!3169888) b!8017172))

(assert (= (or b!8017180 b!8017172) bm!744759))

(assert (= (or b!8017176 b!8017174) bm!744761))

(assert (= (or b!8017179 bm!744759) bm!744760))

(declare-fun m!8380332 () Bool)

(assert (=> bm!744760 m!8380332))

(declare-fun m!8380334 () Bool)

(assert (=> bm!744761 m!8380334))

(declare-fun m!8380336 () Bool)

(assert (=> b!8017178 m!8380336))

(assert (=> bm!744647 d!2390390))

(assert (=> bm!744668 d!2390386))

(declare-fun d!2390392 () Bool)

(declare-fun lt!2718977 () Int)

(assert (=> d!2390392 (>= lt!2718977 0)))

(declare-fun e!4722623 () Int)

(assert (=> d!2390392 (= lt!2718977 e!4722623)))

(declare-fun c!1471523 () Bool)

(assert (=> d!2390392 (= c!1471523 (is-Nil!74795 lt!2718716))))

(assert (=> d!2390392 (= (size!43592 lt!2718716) lt!2718977)))

(declare-fun b!8017181 () Bool)

(assert (=> b!8017181 (= e!4722623 0)))

(declare-fun b!8017182 () Bool)

(assert (=> b!8017182 (= e!4722623 (+ 1 (size!43592 (t!390662 lt!2718716))))))

(assert (= (and d!2390392 c!1471523) b!8017181))

(assert (= (and d!2390392 (not c!1471523)) b!8017182))

(declare-fun m!8380338 () Bool)

(assert (=> b!8017182 m!8380338))

(assert (=> b!8016634 d!2390392))

(assert (=> b!8016634 d!2390266))

(declare-fun d!2390394 () Bool)

(declare-fun lt!2718978 () Int)

(assert (=> d!2390394 (>= lt!2718978 0)))

(declare-fun e!4722624 () Int)

(assert (=> d!2390394 (= lt!2718978 e!4722624)))

(declare-fun c!1471524 () Bool)

(assert (=> d!2390394 (= c!1471524 (is-Nil!74795 lt!2718619))))

(assert (=> d!2390394 (= (size!43592 lt!2718619) lt!2718978)))

(declare-fun b!8017183 () Bool)

(assert (=> b!8017183 (= e!4722624 0)))

(declare-fun b!8017184 () Bool)

(assert (=> b!8017184 (= e!4722624 (+ 1 (size!43592 (t!390662 lt!2718619))))))

(assert (= (and d!2390394 c!1471524) b!8017183))

(assert (= (and d!2390394 (not c!1471524)) b!8017184))

(declare-fun m!8380340 () Bool)

(assert (=> b!8017184 m!8380340))

(assert (=> b!8016634 d!2390394))

(assert (=> b!8016631 d!2390130))

(declare-fun d!2390396 () Bool)

(declare-fun lt!2718979 () Int)

(assert (=> d!2390396 (>= lt!2718979 0)))

(declare-fun e!4722625 () Int)

(assert (=> d!2390396 (= lt!2718979 e!4722625)))

(declare-fun c!1471525 () Bool)

(assert (=> d!2390396 (= c!1471525 (is-Nil!74795 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))

(assert (=> d!2390396 (= (size!43592 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))) lt!2718979)))

(declare-fun b!8017185 () Bool)

(assert (=> b!8017185 (= e!4722625 0)))

(declare-fun b!8017186 () Bool)

(assert (=> b!8017186 (= e!4722625 (+ 1 (size!43592 (t!390662 (++!18516 testedP!353 (Cons!74795 (head!16364 lt!2718617) Nil!74795))))))))

(assert (= (and d!2390396 c!1471525) b!8017185))

(assert (= (and d!2390396 (not c!1471525)) b!8017186))

(declare-fun m!8380342 () Bool)

(assert (=> b!8017186 m!8380342))

(assert (=> b!8016631 d!2390396))

(declare-fun bm!744762 () Bool)

(declare-fun call!744770 () Regex!21690)

(declare-fun call!744767 () Regex!21690)

(assert (=> bm!744762 (= call!744770 call!744767)))

(declare-fun bm!744763 () Bool)

(declare-fun call!744769 () Regex!21690)

(assert (=> bm!744763 (= call!744769 call!744770)))

(declare-fun b!8017187 () Bool)

(declare-fun e!4722626 () Regex!21690)

(declare-fun e!4722630 () Regex!21690)

(assert (=> b!8017187 (= e!4722626 e!4722630)))

(declare-fun c!1471526 () Bool)

(assert (=> b!8017187 (= c!1471526 (is-ElementMatch!21690 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))))))

(declare-fun b!8017188 () Bool)

(assert (=> b!8017188 (= e!4722630 (ite (= lt!2718621 (c!1471344 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))) EmptyExpr!21690 EmptyLang!21690))))

(declare-fun e!4722628 () Regex!21690)

(declare-fun b!8017189 () Bool)

(assert (=> b!8017189 (= e!4722628 (Concat!30689 call!744770 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))))))

(declare-fun b!8017190 () Bool)

(declare-fun e!4722627 () Regex!21690)

(declare-fun call!744768 () Regex!21690)

(assert (=> b!8017190 (= e!4722627 (Union!21690 call!744768 call!744767))))

(declare-fun b!8017191 () Bool)

(declare-fun c!1471527 () Bool)

(assert (=> b!8017191 (= c!1471527 (nullable!9732 (regOne!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))))))

(declare-fun e!4722629 () Regex!21690)

(assert (=> b!8017191 (= e!4722628 e!4722629)))

(declare-fun b!8017192 () Bool)

(assert (=> b!8017192 (= e!4722629 (Union!21690 (Concat!30689 call!744768 (regTwo!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))) call!744769))))

(declare-fun b!8017193 () Bool)

(assert (=> b!8017193 (= e!4722626 EmptyLang!21690)))

(declare-fun b!8017194 () Bool)

(assert (=> b!8017194 (= e!4722629 (Union!21690 (Concat!30689 call!744769 (regTwo!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))) EmptyLang!21690))))

(declare-fun c!1471530 () Bool)

(declare-fun b!8017195 () Bool)

(assert (=> b!8017195 (= c!1471530 (is-Union!21690 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))))))

(assert (=> b!8017195 (= e!4722630 e!4722627)))

(declare-fun bm!744765 () Bool)

(assert (=> bm!744765 (= call!744768 (derivativeStep!6641 (ite c!1471530 (regOne!43893 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))) (regOne!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))) lt!2718621))))

(declare-fun b!8017196 () Bool)

(assert (=> b!8017196 (= e!4722627 e!4722628)))

(declare-fun c!1471528 () Bool)

(assert (=> b!8017196 (= c!1471528 (is-Star!21690 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))))))

(declare-fun d!2390398 () Bool)

(declare-fun lt!2718980 () Regex!21690)

(assert (=> d!2390398 (validRegex!11994 lt!2718980)))

(assert (=> d!2390398 (= lt!2718980 e!4722626)))

(declare-fun c!1471529 () Bool)

(assert (=> d!2390398 (= c!1471529 (or (is-EmptyExpr!21690 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))) (is-EmptyLang!21690 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))))))

(assert (=> d!2390398 (validRegex!11994 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))))

(assert (=> d!2390398 (= (derivativeStep!6641 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))) lt!2718621) lt!2718980)))

(declare-fun bm!744764 () Bool)

(assert (=> bm!744764 (= call!744767 (derivativeStep!6641 (ite c!1471530 (regTwo!43893 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))) (ite c!1471528 (reg!22019 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))) (ite c!1471527 (regTwo!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422))))) (regOne!43892 (ite c!1471412 (regTwo!43893 r!15422) (ite c!1471410 (reg!22019 r!15422) (ite c!1471409 (regTwo!43892 r!15422) (regOne!43892 r!15422)))))))) lt!2718621))))

(assert (= (and d!2390398 c!1471529) b!8017193))

(assert (= (and d!2390398 (not c!1471529)) b!8017187))

(assert (= (and b!8017187 c!1471526) b!8017188))

(assert (= (and b!8017187 (not c!1471526)) b!8017195))

(assert (= (and b!8017195 c!1471530) b!8017190))

(assert (= (and b!8017195 (not c!1471530)) b!8017196))

(assert (= (and b!8017196 c!1471528) b!8017189))

(assert (= (and b!8017196 (not c!1471528)) b!8017191))

(assert (= (and b!8017191 c!1471527) b!8017192))

(assert (= (and b!8017191 (not c!1471527)) b!8017194))

(assert (= (or b!8017192 b!8017194) bm!744763))

(assert (= (or b!8017189 bm!744763) bm!744762))

(assert (= (or b!8017190 bm!744762) bm!744764))

(assert (= (or b!8017190 b!8017192) bm!744765))

(declare-fun m!8380344 () Bool)

(assert (=> b!8017191 m!8380344))

(declare-fun m!8380346 () Bool)

(assert (=> bm!744765 m!8380346))

(declare-fun m!8380348 () Bool)

(assert (=> d!2390398 m!8380348))

(declare-fun m!8380350 () Bool)

(assert (=> d!2390398 m!8380350))

(declare-fun m!8380352 () Bool)

(assert (=> bm!744764 m!8380352))

(assert (=> bm!744683 d!2390398))

(declare-fun d!2390400 () Bool)

(declare-fun lt!2718981 () Int)

(assert (=> d!2390400 (>= lt!2718981 0)))

(declare-fun e!4722631 () Int)

(assert (=> d!2390400 (= lt!2718981 e!4722631)))

(declare-fun c!1471531 () Bool)

(assert (=> d!2390400 (= c!1471531 (is-Nil!74795 (t!390662 totalInput!1349)))))

(assert (=> d!2390400 (= (size!43592 (t!390662 totalInput!1349)) lt!2718981)))

(declare-fun b!8017197 () Bool)

(assert (=> b!8017197 (= e!4722631 0)))

(declare-fun b!8017198 () Bool)

(assert (=> b!8017198 (= e!4722631 (+ 1 (size!43592 (t!390662 (t!390662 totalInput!1349)))))))

(assert (= (and d!2390400 c!1471531) b!8017197))

(assert (= (and d!2390400 (not c!1471531)) b!8017198))

(declare-fun m!8380354 () Bool)

(assert (=> b!8017198 m!8380354))

(assert (=> b!8016603 d!2390400))

(declare-fun d!2390402 () Bool)

(assert (=> d!2390402 (= (nullable!9732 (reg!22019 r!15422)) (nullableFct!3848 (reg!22019 r!15422)))))

(declare-fun bs!1971075 () Bool)

(assert (= bs!1971075 d!2390402))

(declare-fun m!8380356 () Bool)

(assert (=> bs!1971075 m!8380356))

(assert (=> b!8016595 d!2390402))

(declare-fun d!2390404 () Bool)

(assert (=> d!2390404 (= (isEmpty!42983 (_1!38690 lt!2718798)) (is-Nil!74795 (_1!38690 lt!2718798)))))

(assert (=> b!8016709 d!2390404))

(assert (=> b!8016651 d!2390130))

(assert (=> b!8016651 d!2390192))

(assert (=> bm!744672 d!2390372))

(declare-fun b!8017199 () Bool)

(declare-fun e!4722637 () tuple2!70774)

(assert (=> b!8017199 (= e!4722637 (tuple2!70775 Nil!74795 totalInput!1349))))

(declare-fun b!8017200 () Bool)

(declare-fun e!4722634 () tuple2!70774)

(declare-fun e!4722633 () tuple2!70774)

(assert (=> b!8017200 (= e!4722634 e!4722633)))

(declare-fun c!1471533 () Bool)

(assert (=> b!8017200 (= c!1471533 (= (+ 1 testedPSize!271 1) totalInputSize!629))))

(declare-fun b!8017201 () Bool)

(assert (=> b!8017201 (= e!4722634 (tuple2!70775 Nil!74795 totalInput!1349))))

(declare-fun b!8017202 () Bool)

(declare-fun e!4722635 () tuple2!70774)

(declare-fun lt!2718983 () tuple2!70774)

(assert (=> b!8017202 (= e!4722635 lt!2718983)))

(declare-fun d!2390406 () Bool)

(declare-fun e!4722638 () Bool)

(assert (=> d!2390406 e!4722638))

(declare-fun res!3169889 () Bool)

(assert (=> d!2390406 (=> (not res!3169889) (not e!4722638))))

(declare-fun lt!2718995 () tuple2!70774)

(assert (=> d!2390406 (= res!3169889 (= (++!18516 (_1!38690 lt!2718995) (_2!38690 lt!2718995)) totalInput!1349))))

(assert (=> d!2390406 (= lt!2718995 e!4722634)))

(declare-fun c!1471532 () Bool)

(assert (=> d!2390406 (= c!1471532 (lostCause!2077 call!744676))))

(declare-fun lt!2718987 () Unit!170878)

(declare-fun Unit!170892 () Unit!170878)

(assert (=> d!2390406 (= lt!2718987 Unit!170892)))

(assert (=> d!2390406 (= (getSuffix!3937 totalInput!1349 lt!2718823) call!744671)))

(declare-fun lt!2719009 () Unit!170878)

(declare-fun lt!2719003 () Unit!170878)

(assert (=> d!2390406 (= lt!2719009 lt!2719003)))

(declare-fun lt!2718985 () List!74919)

(assert (=> d!2390406 (= call!744671 lt!2718985)))

(assert (=> d!2390406 (= lt!2719003 (lemmaSamePrefixThenSameSuffix!3099 lt!2718823 call!744671 lt!2718823 lt!2718985 totalInput!1349))))

(assert (=> d!2390406 (= lt!2718985 (getSuffix!3937 totalInput!1349 lt!2718823))))

(declare-fun lt!2718984 () Unit!170878)

(declare-fun lt!2718991 () Unit!170878)

(assert (=> d!2390406 (= lt!2718984 lt!2718991)))

(assert (=> d!2390406 (isPrefix!6742 lt!2718823 (++!18516 lt!2718823 call!744671))))

(assert (=> d!2390406 (= lt!2718991 (lemmaConcatTwoListThenFirstIsPrefix!3973 lt!2718823 call!744671))))

(assert (=> d!2390406 (validRegex!11994 call!744676)))

(assert (=> d!2390406 (= (findLongestMatchInner!2337 call!744676 lt!2718823 (+ 1 testedPSize!271 1) call!744671 totalInput!1349 totalInputSize!629) lt!2718995)))

(declare-fun bm!744766 () Bool)

(declare-fun call!744776 () Unit!170878)

(assert (=> bm!744766 (= call!744776 (lemmaIsPrefixSameLengthThenSameList!1754 totalInput!1349 lt!2718823 totalInput!1349))))

(declare-fun b!8017203 () Bool)

(declare-fun e!4722639 () Bool)

(assert (=> b!8017203 (= e!4722639 (>= (size!43592 (_1!38690 lt!2718995)) (size!43592 lt!2718823)))))

(declare-fun bm!744767 () Bool)

(declare-fun call!744773 () Bool)

(assert (=> bm!744767 (= call!744773 (nullable!9732 call!744676))))

(declare-fun bm!744768 () Bool)

(declare-fun call!744774 () Unit!170878)

(assert (=> bm!744768 (= call!744774 (lemmaIsPrefixRefl!4184 totalInput!1349 totalInput!1349))))

(declare-fun b!8017204 () Bool)

(declare-fun c!1471535 () Bool)

(assert (=> b!8017204 (= c!1471535 call!744773)))

(declare-fun lt!2718994 () Unit!170878)

(declare-fun lt!2718998 () Unit!170878)

(assert (=> b!8017204 (= lt!2718994 lt!2718998)))

(assert (=> b!8017204 (= totalInput!1349 lt!2718823)))

(assert (=> b!8017204 (= lt!2718998 call!744776)))

(declare-fun lt!2719000 () Unit!170878)

(declare-fun lt!2718992 () Unit!170878)

(assert (=> b!8017204 (= lt!2719000 lt!2718992)))

(declare-fun call!744775 () Bool)

(assert (=> b!8017204 call!744775))

(assert (=> b!8017204 (= lt!2718992 call!744774)))

(assert (=> b!8017204 (= e!4722633 e!4722637)))

(declare-fun bm!744769 () Bool)

(declare-fun call!744778 () C!43718)

(assert (=> bm!744769 (= call!744778 (head!16364 call!744671))))

(declare-fun b!8017205 () Bool)

(assert (=> b!8017205 (= e!4722635 (tuple2!70775 lt!2718823 call!744671))))

(declare-fun b!8017206 () Bool)

(declare-fun e!4722636 () Unit!170878)

(declare-fun Unit!170893 () Unit!170878)

(assert (=> b!8017206 (= e!4722636 Unit!170893)))

(declare-fun lt!2718988 () Unit!170878)

(assert (=> b!8017206 (= lt!2718988 call!744774)))

(assert (=> b!8017206 call!744775))

(declare-fun lt!2719001 () Unit!170878)

(assert (=> b!8017206 (= lt!2719001 lt!2718988)))

(declare-fun lt!2718996 () Unit!170878)

(assert (=> b!8017206 (= lt!2718996 call!744776)))

(assert (=> b!8017206 (= totalInput!1349 lt!2718823)))

(declare-fun lt!2718986 () Unit!170878)

(assert (=> b!8017206 (= lt!2718986 lt!2718996)))

(assert (=> b!8017206 false))

(declare-fun b!8017207 () Bool)

(declare-fun e!4722632 () tuple2!70774)

(declare-fun call!744771 () tuple2!70774)

(assert (=> b!8017207 (= e!4722632 call!744771)))

(declare-fun b!8017208 () Bool)

(declare-fun c!1471537 () Bool)

(assert (=> b!8017208 (= c!1471537 call!744773)))

(declare-fun lt!2718993 () Unit!170878)

(declare-fun lt!2718990 () Unit!170878)

(assert (=> b!8017208 (= lt!2718993 lt!2718990)))

(declare-fun lt!2718999 () C!43718)

(declare-fun lt!2719006 () List!74919)

(assert (=> b!8017208 (= (++!18516 (++!18516 lt!2718823 (Cons!74795 lt!2718999 Nil!74795)) lt!2719006) totalInput!1349)))

(assert (=> b!8017208 (= lt!2718990 (lemmaMoveElementToOtherListKeepsConcatEq!3597 lt!2718823 lt!2718999 lt!2719006 totalInput!1349))))

(assert (=> b!8017208 (= lt!2719006 (tail!15887 call!744671))))

(assert (=> b!8017208 (= lt!2718999 (head!16364 call!744671))))

(declare-fun lt!2719007 () Unit!170878)

(declare-fun lt!2718982 () Unit!170878)

(assert (=> b!8017208 (= lt!2719007 lt!2718982)))

(assert (=> b!8017208 (isPrefix!6742 (++!18516 lt!2718823 (Cons!74795 (head!16364 (getSuffix!3937 totalInput!1349 lt!2718823)) Nil!74795)) totalInput!1349)))

(assert (=> b!8017208 (= lt!2718982 (lemmaAddHeadSuffixToPrefixStillPrefix!1415 lt!2718823 totalInput!1349))))

(declare-fun lt!2718989 () Unit!170878)

(declare-fun lt!2719004 () Unit!170878)

(assert (=> b!8017208 (= lt!2718989 lt!2719004)))

(assert (=> b!8017208 (= lt!2719004 (lemmaAddHeadSuffixToPrefixStillPrefix!1415 lt!2718823 totalInput!1349))))

(declare-fun lt!2719008 () List!74919)

(assert (=> b!8017208 (= lt!2719008 (++!18516 lt!2718823 (Cons!74795 (head!16364 call!744671) Nil!74795)))))

(declare-fun lt!2719005 () Unit!170878)

(assert (=> b!8017208 (= lt!2719005 e!4722636)))

(declare-fun c!1471536 () Bool)

(assert (=> b!8017208 (= c!1471536 (= (size!43592 lt!2718823) (size!43592 totalInput!1349)))))

(declare-fun lt!2718997 () Unit!170878)

(declare-fun lt!2719002 () Unit!170878)

(assert (=> b!8017208 (= lt!2718997 lt!2719002)))

(assert (=> b!8017208 (<= (size!43592 lt!2718823) (size!43592 totalInput!1349))))

(assert (=> b!8017208 (= lt!2719002 (lemmaIsPrefixThenSmallerEqSize!1225 lt!2718823 totalInput!1349))))

(assert (=> b!8017208 (= e!4722633 e!4722632)))

(declare-fun b!8017209 () Bool)

(declare-fun Unit!170894 () Unit!170878)

(assert (=> b!8017209 (= e!4722636 Unit!170894)))

(declare-fun call!744772 () List!74919)

(declare-fun bm!744770 () Bool)

(declare-fun call!744777 () Regex!21690)

(assert (=> bm!744770 (= call!744771 (findLongestMatchInner!2337 call!744777 lt!2719008 (+ 1 testedPSize!271 1 1) call!744772 totalInput!1349 totalInputSize!629))))

(declare-fun bm!744771 () Bool)

(assert (=> bm!744771 (= call!744775 (isPrefix!6742 totalInput!1349 totalInput!1349))))

(declare-fun b!8017210 () Bool)

(assert (=> b!8017210 (= e!4722632 e!4722635)))

(assert (=> b!8017210 (= lt!2718983 call!744771)))

(declare-fun c!1471534 () Bool)

(assert (=> b!8017210 (= c!1471534 (isEmpty!42983 (_1!38690 lt!2718983)))))

(declare-fun bm!744772 () Bool)

(assert (=> bm!744772 (= call!744777 (derivativeStep!6641 call!744676 call!744778))))

(declare-fun bm!744773 () Bool)

(assert (=> bm!744773 (= call!744772 (tail!15887 call!744671))))

(declare-fun b!8017211 () Bool)

(assert (=> b!8017211 (= e!4722638 e!4722639)))

(declare-fun res!3169890 () Bool)

(assert (=> b!8017211 (=> res!3169890 e!4722639)))

(assert (=> b!8017211 (= res!3169890 (isEmpty!42983 (_1!38690 lt!2718995)))))

(declare-fun b!8017212 () Bool)

(assert (=> b!8017212 (= e!4722637 (tuple2!70775 lt!2718823 Nil!74795))))

(assert (= (and d!2390406 c!1471532) b!8017201))

(assert (= (and d!2390406 (not c!1471532)) b!8017200))

(assert (= (and b!8017200 c!1471533) b!8017204))

(assert (= (and b!8017200 (not c!1471533)) b!8017208))

(assert (= (and b!8017204 c!1471535) b!8017212))

(assert (= (and b!8017204 (not c!1471535)) b!8017199))

(assert (= (and b!8017208 c!1471536) b!8017206))

(assert (= (and b!8017208 (not c!1471536)) b!8017209))

(assert (= (and b!8017208 c!1471537) b!8017210))

(assert (= (and b!8017208 (not c!1471537)) b!8017207))

(assert (= (and b!8017210 c!1471534) b!8017205))

(assert (= (and b!8017210 (not c!1471534)) b!8017202))

(assert (= (or b!8017210 b!8017207) bm!744769))

(assert (= (or b!8017210 b!8017207) bm!744773))

(assert (= (or b!8017210 b!8017207) bm!744772))

(assert (= (or b!8017210 b!8017207) bm!744770))

(assert (= (or b!8017204 b!8017208) bm!744767))

(assert (= (or b!8017204 b!8017206) bm!744771))

(assert (= (or b!8017204 b!8017206) bm!744766))

(assert (= (or b!8017204 b!8017206) bm!744768))

(assert (= (and d!2390406 res!3169889) b!8017211))

(assert (= (and b!8017211 (not res!3169890)) b!8017203))

(declare-fun m!8380358 () Bool)

(assert (=> d!2390406 m!8380358))

(declare-fun m!8380360 () Bool)

(assert (=> d!2390406 m!8380360))

(declare-fun m!8380362 () Bool)

(assert (=> d!2390406 m!8380362))

(declare-fun m!8380364 () Bool)

(assert (=> d!2390406 m!8380364))

(declare-fun m!8380366 () Bool)

(assert (=> d!2390406 m!8380366))

(declare-fun m!8380368 () Bool)

(assert (=> d!2390406 m!8380368))

(declare-fun m!8380370 () Bool)

(assert (=> d!2390406 m!8380370))

(assert (=> d!2390406 m!8380368))

(declare-fun m!8380372 () Bool)

(assert (=> d!2390406 m!8380372))

(declare-fun m!8380374 () Bool)

(assert (=> b!8017203 m!8380374))

(declare-fun m!8380376 () Bool)

(assert (=> b!8017203 m!8380376))

(assert (=> bm!744768 m!8379500))

(declare-fun m!8380378 () Bool)

(assert (=> b!8017208 m!8380378))

(declare-fun m!8380380 () Bool)

(assert (=> b!8017208 m!8380380))

(declare-fun m!8380382 () Bool)

(assert (=> b!8017208 m!8380382))

(declare-fun m!8380384 () Bool)

(assert (=> b!8017208 m!8380384))

(assert (=> b!8017208 m!8379498))

(declare-fun m!8380386 () Bool)

(assert (=> b!8017208 m!8380386))

(assert (=> b!8017208 m!8380372))

(declare-fun m!8380388 () Bool)

(assert (=> b!8017208 m!8380388))

(declare-fun m!8380390 () Bool)

(assert (=> b!8017208 m!8380390))

(declare-fun m!8380392 () Bool)

(assert (=> b!8017208 m!8380392))

(assert (=> b!8017208 m!8380382))

(assert (=> b!8017208 m!8380376))

(assert (=> b!8017208 m!8380386))

(declare-fun m!8380394 () Bool)

(assert (=> b!8017208 m!8380394))

(assert (=> b!8017208 m!8380372))

(declare-fun m!8380396 () Bool)

(assert (=> b!8017208 m!8380396))

(declare-fun m!8380398 () Bool)

(assert (=> b!8017208 m!8380398))

(declare-fun m!8380400 () Bool)

(assert (=> bm!744766 m!8380400))

(declare-fun m!8380402 () Bool)

(assert (=> b!8017210 m!8380402))

(assert (=> bm!744771 m!8379502))

(declare-fun m!8380404 () Bool)

(assert (=> bm!744772 m!8380404))

(declare-fun m!8380406 () Bool)

(assert (=> b!8017211 m!8380406))

(assert (=> bm!744769 m!8380388))

(assert (=> bm!744773 m!8380398))

(declare-fun m!8380408 () Bool)

(assert (=> bm!744770 m!8380408))

(declare-fun m!8380410 () Bool)

(assert (=> bm!744767 m!8380410))

(assert (=> bm!744669 d!2390406))

(declare-fun d!2390408 () Bool)

(declare-fun e!4722641 () Bool)

(assert (=> d!2390408 e!4722641))

(declare-fun res!3169893 () Bool)

(assert (=> d!2390408 (=> res!3169893 e!4722641)))

(declare-fun lt!2719010 () Bool)

(assert (=> d!2390408 (= res!3169893 (not lt!2719010))))

(declare-fun e!4722642 () Bool)

(assert (=> d!2390408 (= lt!2719010 e!4722642)))

(declare-fun res!3169891 () Bool)

(assert (=> d!2390408 (=> res!3169891 e!4722642)))

(assert (=> d!2390408 (= res!3169891 (is-Nil!74795 (tail!15887 testedP!353)))))

(assert (=> d!2390408 (= (isPrefix!6742 (tail!15887 testedP!353) (tail!15887 lt!2718616)) lt!2719010)))

(declare-fun b!8017216 () Bool)

(assert (=> b!8017216 (= e!4722641 (>= (size!43592 (tail!15887 lt!2718616)) (size!43592 (tail!15887 testedP!353))))))

(declare-fun b!8017213 () Bool)

(declare-fun e!4722640 () Bool)

(assert (=> b!8017213 (= e!4722642 e!4722640)))

(declare-fun res!3169892 () Bool)

(assert (=> b!8017213 (=> (not res!3169892) (not e!4722640))))

(assert (=> b!8017213 (= res!3169892 (not (is-Nil!74795 (tail!15887 lt!2718616))))))

(declare-fun b!8017215 () Bool)

(assert (=> b!8017215 (= e!4722640 (isPrefix!6742 (tail!15887 (tail!15887 testedP!353)) (tail!15887 (tail!15887 lt!2718616))))))

(declare-fun b!8017214 () Bool)

(declare-fun res!3169894 () Bool)

(assert (=> b!8017214 (=> (not res!3169894) (not e!4722640))))

(assert (=> b!8017214 (= res!3169894 (= (head!16364 (tail!15887 testedP!353)) (head!16364 (tail!15887 lt!2718616))))))

(assert (= (and d!2390408 (not res!3169891)) b!8017213))

(assert (= (and b!8017213 res!3169892) b!8017214))

(assert (= (and b!8017214 res!3169894) b!8017215))

(assert (= (and d!2390408 (not res!3169893)) b!8017216))

(assert (=> b!8017216 m!8379752))

(declare-fun m!8380412 () Bool)

(assert (=> b!8017216 m!8380412))

(assert (=> b!8017216 m!8379744))

(assert (=> b!8017216 m!8380116))

(assert (=> b!8017215 m!8379744))

(assert (=> b!8017215 m!8380118))

(assert (=> b!8017215 m!8379752))

(declare-fun m!8380414 () Bool)

(assert (=> b!8017215 m!8380414))

(assert (=> b!8017215 m!8380118))

(assert (=> b!8017215 m!8380414))

(declare-fun m!8380416 () Bool)

(assert (=> b!8017215 m!8380416))

(assert (=> b!8017214 m!8379744))

(assert (=> b!8017214 m!8380122))

(assert (=> b!8017214 m!8379752))

(declare-fun m!8380418 () Bool)

(assert (=> b!8017214 m!8380418))

(assert (=> b!8016654 d!2390408))

(assert (=> b!8016654 d!2390302))

(declare-fun d!2390410 () Bool)

(assert (=> d!2390410 (= (tail!15887 lt!2718616) (t!390662 lt!2718616))))

(assert (=> b!8016654 d!2390410))

(assert (=> b!8016649 d!2390276))

(assert (=> b!8016649 d!2390252))

(declare-fun d!2390412 () Bool)

(declare-fun lt!2719011 () Int)

(assert (=> d!2390412 (>= lt!2719011 0)))

(declare-fun e!4722643 () Int)

(assert (=> d!2390412 (= lt!2719011 e!4722643)))

(declare-fun c!1471538 () Bool)

(assert (=> d!2390412 (= c!1471538 (is-Nil!74795 lt!2718736))))

(assert (=> d!2390412 (= (size!43592 lt!2718736) lt!2719011)))

(declare-fun b!8017217 () Bool)

(assert (=> b!8017217 (= e!4722643 0)))

(declare-fun b!8017218 () Bool)

(assert (=> b!8017218 (= e!4722643 (+ 1 (size!43592 (t!390662 lt!2718736))))))

(assert (= (and d!2390412 c!1471538) b!8017217))

(assert (= (and d!2390412 (not c!1471538)) b!8017218))

(declare-fun m!8380420 () Bool)

(assert (=> b!8017218 m!8380420))

(assert (=> b!8016658 d!2390412))

(assert (=> b!8016658 d!2390170))

(declare-fun d!2390414 () Bool)

(declare-fun lt!2719012 () Int)

(assert (=> d!2390414 (>= lt!2719012 0)))

(declare-fun e!4722644 () Int)

(assert (=> d!2390414 (= lt!2719012 e!4722644)))

(declare-fun c!1471539 () Bool)

(assert (=> d!2390414 (= c!1471539 (is-Nil!74795 (_2!38690 lt!2718623)))))

(assert (=> d!2390414 (= (size!43592 (_2!38690 lt!2718623)) lt!2719012)))

(declare-fun b!8017219 () Bool)

(assert (=> b!8017219 (= e!4722644 0)))

(declare-fun b!8017220 () Bool)

(assert (=> b!8017220 (= e!4722644 (+ 1 (size!43592 (t!390662 (_2!38690 lt!2718623)))))))

(assert (= (and d!2390414 c!1471539) b!8017219))

(assert (= (and d!2390414 (not c!1471539)) b!8017220))

(declare-fun m!8380422 () Bool)

(assert (=> b!8017220 m!8380422))

(assert (=> b!8016658 d!2390414))

(declare-fun b!8017221 () Bool)

(declare-fun e!4722645 () Bool)

(declare-fun tp!2399627 () Bool)

(assert (=> b!8017221 (= e!4722645 (and tp_is_empty!53923 tp!2399627))))

(assert (=> b!8016776 (= tp!2399581 e!4722645)))

(assert (= (and b!8016776 (is-Cons!74795 (t!390662 (t!390662 testedSuffix!271)))) b!8017221))

(declare-fun b!8017225 () Bool)

(declare-fun e!4722646 () Bool)

(declare-fun tp!2399632 () Bool)

(declare-fun tp!2399631 () Bool)

(assert (=> b!8017225 (= e!4722646 (and tp!2399632 tp!2399631))))

(declare-fun b!8017223 () Bool)

(declare-fun tp!2399628 () Bool)

(declare-fun tp!2399630 () Bool)

(assert (=> b!8017223 (= e!4722646 (and tp!2399628 tp!2399630))))

(declare-fun b!8017224 () Bool)

(declare-fun tp!2399629 () Bool)

(assert (=> b!8017224 (= e!4722646 tp!2399629)))

(assert (=> b!8016780 (= tp!2399586 e!4722646)))

(declare-fun b!8017222 () Bool)

(assert (=> b!8017222 (= e!4722646 tp_is_empty!53923)))

(assert (= (and b!8016780 (is-ElementMatch!21690 (regOne!43893 (reg!22019 r!15422)))) b!8017222))

(assert (= (and b!8016780 (is-Concat!30689 (regOne!43893 (reg!22019 r!15422)))) b!8017223))

(assert (= (and b!8016780 (is-Star!21690 (regOne!43893 (reg!22019 r!15422)))) b!8017224))

(assert (= (and b!8016780 (is-Union!21690 (regOne!43893 (reg!22019 r!15422)))) b!8017225))

(declare-fun b!8017229 () Bool)

(declare-fun e!4722647 () Bool)

(declare-fun tp!2399637 () Bool)

(declare-fun tp!2399636 () Bool)

(assert (=> b!8017229 (= e!4722647 (and tp!2399637 tp!2399636))))

(declare-fun b!8017227 () Bool)

(declare-fun tp!2399633 () Bool)

(declare-fun tp!2399635 () Bool)

(assert (=> b!8017227 (= e!4722647 (and tp!2399633 tp!2399635))))

(declare-fun b!8017228 () Bool)

(declare-fun tp!2399634 () Bool)

(assert (=> b!8017228 (= e!4722647 tp!2399634)))

(assert (=> b!8016780 (= tp!2399585 e!4722647)))

(declare-fun b!8017226 () Bool)

(assert (=> b!8017226 (= e!4722647 tp_is_empty!53923)))

(assert (= (and b!8016780 (is-ElementMatch!21690 (regTwo!43893 (reg!22019 r!15422)))) b!8017226))

(assert (= (and b!8016780 (is-Concat!30689 (regTwo!43893 (reg!22019 r!15422)))) b!8017227))

(assert (= (and b!8016780 (is-Star!21690 (regTwo!43893 (reg!22019 r!15422)))) b!8017228))

(assert (= (and b!8016780 (is-Union!21690 (regTwo!43893 (reg!22019 r!15422)))) b!8017229))

(declare-fun b!8017233 () Bool)

(declare-fun e!4722648 () Bool)

(declare-fun tp!2399642 () Bool)

(declare-fun tp!2399641 () Bool)

(assert (=> b!8017233 (= e!4722648 (and tp!2399642 tp!2399641))))

(declare-fun b!8017231 () Bool)

(declare-fun tp!2399638 () Bool)

(declare-fun tp!2399640 () Bool)

(assert (=> b!8017231 (= e!4722648 (and tp!2399638 tp!2399640))))

(declare-fun b!8017232 () Bool)

(declare-fun tp!2399639 () Bool)

(assert (=> b!8017232 (= e!4722648 tp!2399639)))

(assert (=> b!8016771 (= tp!2399575 e!4722648)))

(declare-fun b!8017230 () Bool)

(assert (=> b!8017230 (= e!4722648 tp_is_empty!53923)))

(assert (= (and b!8016771 (is-ElementMatch!21690 (regOne!43893 (regOne!43892 r!15422)))) b!8017230))

(assert (= (and b!8016771 (is-Concat!30689 (regOne!43893 (regOne!43892 r!15422)))) b!8017231))

(assert (= (and b!8016771 (is-Star!21690 (regOne!43893 (regOne!43892 r!15422)))) b!8017232))

(assert (= (and b!8016771 (is-Union!21690 (regOne!43893 (regOne!43892 r!15422)))) b!8017233))

(declare-fun b!8017237 () Bool)

(declare-fun e!4722649 () Bool)

(declare-fun tp!2399647 () Bool)

(declare-fun tp!2399646 () Bool)

(assert (=> b!8017237 (= e!4722649 (and tp!2399647 tp!2399646))))

(declare-fun b!8017235 () Bool)

(declare-fun tp!2399643 () Bool)

(declare-fun tp!2399645 () Bool)

(assert (=> b!8017235 (= e!4722649 (and tp!2399643 tp!2399645))))

(declare-fun b!8017236 () Bool)

(declare-fun tp!2399644 () Bool)

(assert (=> b!8017236 (= e!4722649 tp!2399644)))

(assert (=> b!8016771 (= tp!2399574 e!4722649)))

(declare-fun b!8017234 () Bool)

(assert (=> b!8017234 (= e!4722649 tp_is_empty!53923)))

(assert (= (and b!8016771 (is-ElementMatch!21690 (regTwo!43893 (regOne!43892 r!15422)))) b!8017234))

(assert (= (and b!8016771 (is-Concat!30689 (regTwo!43893 (regOne!43892 r!15422)))) b!8017235))

(assert (= (and b!8016771 (is-Star!21690 (regTwo!43893 (regOne!43892 r!15422)))) b!8017236))

(assert (= (and b!8016771 (is-Union!21690 (regTwo!43893 (regOne!43892 r!15422)))) b!8017237))

(declare-fun b!8017241 () Bool)

(declare-fun e!4722650 () Bool)

(declare-fun tp!2399652 () Bool)

(declare-fun tp!2399651 () Bool)

(assert (=> b!8017241 (= e!4722650 (and tp!2399652 tp!2399651))))

(declare-fun b!8017239 () Bool)

(declare-fun tp!2399648 () Bool)

(declare-fun tp!2399650 () Bool)

(assert (=> b!8017239 (= e!4722650 (and tp!2399648 tp!2399650))))

(declare-fun b!8017240 () Bool)

(declare-fun tp!2399649 () Bool)

(assert (=> b!8017240 (= e!4722650 tp!2399649)))

(assert (=> b!8016778 (= tp!2399582 e!4722650)))

(declare-fun b!8017238 () Bool)

(assert (=> b!8017238 (= e!4722650 tp_is_empty!53923)))

(assert (= (and b!8016778 (is-ElementMatch!21690 (regOne!43892 (reg!22019 r!15422)))) b!8017238))

(assert (= (and b!8016778 (is-Concat!30689 (regOne!43892 (reg!22019 r!15422)))) b!8017239))

(assert (= (and b!8016778 (is-Star!21690 (regOne!43892 (reg!22019 r!15422)))) b!8017240))

(assert (= (and b!8016778 (is-Union!21690 (regOne!43892 (reg!22019 r!15422)))) b!8017241))

(declare-fun b!8017245 () Bool)

(declare-fun e!4722651 () Bool)

(declare-fun tp!2399657 () Bool)

(declare-fun tp!2399656 () Bool)

(assert (=> b!8017245 (= e!4722651 (and tp!2399657 tp!2399656))))

(declare-fun b!8017243 () Bool)

(declare-fun tp!2399653 () Bool)

(declare-fun tp!2399655 () Bool)

(assert (=> b!8017243 (= e!4722651 (and tp!2399653 tp!2399655))))

(declare-fun b!8017244 () Bool)

(declare-fun tp!2399654 () Bool)

(assert (=> b!8017244 (= e!4722651 tp!2399654)))

(assert (=> b!8016778 (= tp!2399584 e!4722651)))

(declare-fun b!8017242 () Bool)

(assert (=> b!8017242 (= e!4722651 tp_is_empty!53923)))

(assert (= (and b!8016778 (is-ElementMatch!21690 (regTwo!43892 (reg!22019 r!15422)))) b!8017242))

(assert (= (and b!8016778 (is-Concat!30689 (regTwo!43892 (reg!22019 r!15422)))) b!8017243))

(assert (= (and b!8016778 (is-Star!21690 (regTwo!43892 (reg!22019 r!15422)))) b!8017244))

(assert (= (and b!8016778 (is-Union!21690 (regTwo!43892 (reg!22019 r!15422)))) b!8017245))

(declare-fun b!8017249 () Bool)

(declare-fun e!4722652 () Bool)

(declare-fun tp!2399662 () Bool)

(declare-fun tp!2399661 () Bool)

(assert (=> b!8017249 (= e!4722652 (and tp!2399662 tp!2399661))))

(declare-fun b!8017247 () Bool)

(declare-fun tp!2399658 () Bool)

(declare-fun tp!2399660 () Bool)

(assert (=> b!8017247 (= e!4722652 (and tp!2399658 tp!2399660))))

(declare-fun b!8017248 () Bool)

(declare-fun tp!2399659 () Bool)

(assert (=> b!8017248 (= e!4722652 tp!2399659)))

(assert (=> b!8016766 (= tp!2399567 e!4722652)))

(declare-fun b!8017246 () Bool)

(assert (=> b!8017246 (= e!4722652 tp_is_empty!53923)))

(assert (= (and b!8016766 (is-ElementMatch!21690 (reg!22019 (regTwo!43893 r!15422)))) b!8017246))

(assert (= (and b!8016766 (is-Concat!30689 (reg!22019 (regTwo!43893 r!15422)))) b!8017247))

(assert (= (and b!8016766 (is-Star!21690 (reg!22019 (regTwo!43893 r!15422)))) b!8017248))

(assert (= (and b!8016766 (is-Union!21690 (reg!22019 (regTwo!43893 r!15422)))) b!8017249))

(declare-fun b!8017253 () Bool)

(declare-fun e!4722653 () Bool)

(declare-fun tp!2399667 () Bool)

(declare-fun tp!2399666 () Bool)

(assert (=> b!8017253 (= e!4722653 (and tp!2399667 tp!2399666))))

(declare-fun b!8017251 () Bool)

(declare-fun tp!2399663 () Bool)

(declare-fun tp!2399665 () Bool)

(assert (=> b!8017251 (= e!4722653 (and tp!2399663 tp!2399665))))

(declare-fun b!8017252 () Bool)

(declare-fun tp!2399664 () Bool)

(assert (=> b!8017252 (= e!4722653 tp!2399664)))

(assert (=> b!8016761 (= tp!2399561 e!4722653)))

(declare-fun b!8017250 () Bool)

(assert (=> b!8017250 (= e!4722653 tp_is_empty!53923)))

(assert (= (and b!8016761 (is-ElementMatch!21690 (regOne!43892 (regOne!43893 r!15422)))) b!8017250))

(assert (= (and b!8016761 (is-Concat!30689 (regOne!43892 (regOne!43893 r!15422)))) b!8017251))

(assert (= (and b!8016761 (is-Star!21690 (regOne!43892 (regOne!43893 r!15422)))) b!8017252))

(assert (= (and b!8016761 (is-Union!21690 (regOne!43892 (regOne!43893 r!15422)))) b!8017253))

(declare-fun b!8017257 () Bool)

(declare-fun e!4722654 () Bool)

(declare-fun tp!2399672 () Bool)

(declare-fun tp!2399671 () Bool)

(assert (=> b!8017257 (= e!4722654 (and tp!2399672 tp!2399671))))

(declare-fun b!8017255 () Bool)

(declare-fun tp!2399668 () Bool)

(declare-fun tp!2399670 () Bool)

(assert (=> b!8017255 (= e!4722654 (and tp!2399668 tp!2399670))))

(declare-fun b!8017256 () Bool)

(declare-fun tp!2399669 () Bool)

(assert (=> b!8017256 (= e!4722654 tp!2399669)))

(assert (=> b!8016761 (= tp!2399563 e!4722654)))

(declare-fun b!8017254 () Bool)

(assert (=> b!8017254 (= e!4722654 tp_is_empty!53923)))

(assert (= (and b!8016761 (is-ElementMatch!21690 (regTwo!43892 (regOne!43893 r!15422)))) b!8017254))

(assert (= (and b!8016761 (is-Concat!30689 (regTwo!43892 (regOne!43893 r!15422)))) b!8017255))

(assert (= (and b!8016761 (is-Star!21690 (regTwo!43892 (regOne!43893 r!15422)))) b!8017256))

(assert (= (and b!8016761 (is-Union!21690 (regTwo!43892 (regOne!43893 r!15422)))) b!8017257))

(declare-fun b!8017261 () Bool)

(declare-fun e!4722655 () Bool)

(declare-fun tp!2399677 () Bool)

(declare-fun tp!2399676 () Bool)

(assert (=> b!8017261 (= e!4722655 (and tp!2399677 tp!2399676))))

(declare-fun b!8017259 () Bool)

(declare-fun tp!2399673 () Bool)

(declare-fun tp!2399675 () Bool)

(assert (=> b!8017259 (= e!4722655 (and tp!2399673 tp!2399675))))

(declare-fun b!8017260 () Bool)

(declare-fun tp!2399674 () Bool)

(assert (=> b!8017260 (= e!4722655 tp!2399674)))

(assert (=> b!8016775 (= tp!2399580 e!4722655)))

(declare-fun b!8017258 () Bool)

(assert (=> b!8017258 (= e!4722655 tp_is_empty!53923)))

(assert (= (and b!8016775 (is-ElementMatch!21690 (regOne!43893 (regTwo!43892 r!15422)))) b!8017258))

(assert (= (and b!8016775 (is-Concat!30689 (regOne!43893 (regTwo!43892 r!15422)))) b!8017259))

(assert (= (and b!8016775 (is-Star!21690 (regOne!43893 (regTwo!43892 r!15422)))) b!8017260))

(assert (= (and b!8016775 (is-Union!21690 (regOne!43893 (regTwo!43892 r!15422)))) b!8017261))

(declare-fun b!8017265 () Bool)

(declare-fun e!4722656 () Bool)

(declare-fun tp!2399682 () Bool)

(declare-fun tp!2399681 () Bool)

(assert (=> b!8017265 (= e!4722656 (and tp!2399682 tp!2399681))))

(declare-fun b!8017263 () Bool)

(declare-fun tp!2399678 () Bool)

(declare-fun tp!2399680 () Bool)

(assert (=> b!8017263 (= e!4722656 (and tp!2399678 tp!2399680))))

(declare-fun b!8017264 () Bool)

(declare-fun tp!2399679 () Bool)

(assert (=> b!8017264 (= e!4722656 tp!2399679)))

(assert (=> b!8016775 (= tp!2399579 e!4722656)))

(declare-fun b!8017262 () Bool)

(assert (=> b!8017262 (= e!4722656 tp_is_empty!53923)))

(assert (= (and b!8016775 (is-ElementMatch!21690 (regTwo!43893 (regTwo!43892 r!15422)))) b!8017262))

(assert (= (and b!8016775 (is-Concat!30689 (regTwo!43893 (regTwo!43892 r!15422)))) b!8017263))

(assert (= (and b!8016775 (is-Star!21690 (regTwo!43893 (regTwo!43892 r!15422)))) b!8017264))

(assert (= (and b!8016775 (is-Union!21690 (regTwo!43893 (regTwo!43892 r!15422)))) b!8017265))

(declare-fun b!8017269 () Bool)

(declare-fun e!4722657 () Bool)

(declare-fun tp!2399687 () Bool)

(declare-fun tp!2399686 () Bool)

(assert (=> b!8017269 (= e!4722657 (and tp!2399687 tp!2399686))))

(declare-fun b!8017267 () Bool)

(declare-fun tp!2399683 () Bool)

(declare-fun tp!2399685 () Bool)

(assert (=> b!8017267 (= e!4722657 (and tp!2399683 tp!2399685))))

(declare-fun b!8017268 () Bool)

(declare-fun tp!2399684 () Bool)

(assert (=> b!8017268 (= e!4722657 tp!2399684)))

(assert (=> b!8016770 (= tp!2399572 e!4722657)))

(declare-fun b!8017266 () Bool)

(assert (=> b!8017266 (= e!4722657 tp_is_empty!53923)))

(assert (= (and b!8016770 (is-ElementMatch!21690 (reg!22019 (regOne!43892 r!15422)))) b!8017266))

(assert (= (and b!8016770 (is-Concat!30689 (reg!22019 (regOne!43892 r!15422)))) b!8017267))

(assert (= (and b!8016770 (is-Star!21690 (reg!22019 (regOne!43892 r!15422)))) b!8017268))

(assert (= (and b!8016770 (is-Union!21690 (reg!22019 (regOne!43892 r!15422)))) b!8017269))

(declare-fun b!8017273 () Bool)

(declare-fun e!4722658 () Bool)

(declare-fun tp!2399692 () Bool)

(declare-fun tp!2399691 () Bool)

(assert (=> b!8017273 (= e!4722658 (and tp!2399692 tp!2399691))))

(declare-fun b!8017271 () Bool)

(declare-fun tp!2399688 () Bool)

(declare-fun tp!2399690 () Bool)

(assert (=> b!8017271 (= e!4722658 (and tp!2399688 tp!2399690))))

(declare-fun b!8017272 () Bool)

(declare-fun tp!2399689 () Bool)

(assert (=> b!8017272 (= e!4722658 tp!2399689)))

(assert (=> b!8016763 (= tp!2399565 e!4722658)))

(declare-fun b!8017270 () Bool)

(assert (=> b!8017270 (= e!4722658 tp_is_empty!53923)))

(assert (= (and b!8016763 (is-ElementMatch!21690 (regOne!43893 (regOne!43893 r!15422)))) b!8017270))

(assert (= (and b!8016763 (is-Concat!30689 (regOne!43893 (regOne!43893 r!15422)))) b!8017271))

(assert (= (and b!8016763 (is-Star!21690 (regOne!43893 (regOne!43893 r!15422)))) b!8017272))

(assert (= (and b!8016763 (is-Union!21690 (regOne!43893 (regOne!43893 r!15422)))) b!8017273))

(declare-fun b!8017277 () Bool)

(declare-fun e!4722659 () Bool)

(declare-fun tp!2399697 () Bool)

(declare-fun tp!2399696 () Bool)

(assert (=> b!8017277 (= e!4722659 (and tp!2399697 tp!2399696))))

(declare-fun b!8017275 () Bool)

(declare-fun tp!2399693 () Bool)

(declare-fun tp!2399695 () Bool)

(assert (=> b!8017275 (= e!4722659 (and tp!2399693 tp!2399695))))

(declare-fun b!8017276 () Bool)

(declare-fun tp!2399694 () Bool)

(assert (=> b!8017276 (= e!4722659 tp!2399694)))

(assert (=> b!8016763 (= tp!2399564 e!4722659)))

(declare-fun b!8017274 () Bool)

(assert (=> b!8017274 (= e!4722659 tp_is_empty!53923)))

(assert (= (and b!8016763 (is-ElementMatch!21690 (regTwo!43893 (regOne!43893 r!15422)))) b!8017274))

(assert (= (and b!8016763 (is-Concat!30689 (regTwo!43893 (regOne!43893 r!15422)))) b!8017275))

(assert (= (and b!8016763 (is-Star!21690 (regTwo!43893 (regOne!43893 r!15422)))) b!8017276))

(assert (= (and b!8016763 (is-Union!21690 (regTwo!43893 (regOne!43893 r!15422)))) b!8017277))

(declare-fun b!8017281 () Bool)

(declare-fun e!4722660 () Bool)

(declare-fun tp!2399702 () Bool)

(declare-fun tp!2399701 () Bool)

(assert (=> b!8017281 (= e!4722660 (and tp!2399702 tp!2399701))))

(declare-fun b!8017279 () Bool)

(declare-fun tp!2399698 () Bool)

(declare-fun tp!2399700 () Bool)

(assert (=> b!8017279 (= e!4722660 (and tp!2399698 tp!2399700))))

(declare-fun b!8017280 () Bool)

(declare-fun tp!2399699 () Bool)

(assert (=> b!8017280 (= e!4722660 tp!2399699)))

(assert (=> b!8016779 (= tp!2399583 e!4722660)))

(declare-fun b!8017278 () Bool)

(assert (=> b!8017278 (= e!4722660 tp_is_empty!53923)))

(assert (= (and b!8016779 (is-ElementMatch!21690 (reg!22019 (reg!22019 r!15422)))) b!8017278))

(assert (= (and b!8016779 (is-Concat!30689 (reg!22019 (reg!22019 r!15422)))) b!8017279))

(assert (= (and b!8016779 (is-Star!21690 (reg!22019 (reg!22019 r!15422)))) b!8017280))

(assert (= (and b!8016779 (is-Union!21690 (reg!22019 (reg!22019 r!15422)))) b!8017281))

(declare-fun b!8017285 () Bool)

(declare-fun e!4722661 () Bool)

(declare-fun tp!2399707 () Bool)

(declare-fun tp!2399706 () Bool)

(assert (=> b!8017285 (= e!4722661 (and tp!2399707 tp!2399706))))

(declare-fun b!8017283 () Bool)

(declare-fun tp!2399703 () Bool)

(declare-fun tp!2399705 () Bool)

(assert (=> b!8017283 (= e!4722661 (and tp!2399703 tp!2399705))))

(declare-fun b!8017284 () Bool)

(declare-fun tp!2399704 () Bool)

(assert (=> b!8017284 (= e!4722661 tp!2399704)))

(assert (=> b!8016767 (= tp!2399570 e!4722661)))

(declare-fun b!8017282 () Bool)

(assert (=> b!8017282 (= e!4722661 tp_is_empty!53923)))

(assert (= (and b!8016767 (is-ElementMatch!21690 (regOne!43893 (regTwo!43893 r!15422)))) b!8017282))

(assert (= (and b!8016767 (is-Concat!30689 (regOne!43893 (regTwo!43893 r!15422)))) b!8017283))

(assert (= (and b!8016767 (is-Star!21690 (regOne!43893 (regTwo!43893 r!15422)))) b!8017284))

(assert (= (and b!8016767 (is-Union!21690 (regOne!43893 (regTwo!43893 r!15422)))) b!8017285))

(declare-fun b!8017289 () Bool)

(declare-fun e!4722662 () Bool)

(declare-fun tp!2399712 () Bool)

(declare-fun tp!2399711 () Bool)

(assert (=> b!8017289 (= e!4722662 (and tp!2399712 tp!2399711))))

(declare-fun b!8017287 () Bool)

(declare-fun tp!2399708 () Bool)

(declare-fun tp!2399710 () Bool)

(assert (=> b!8017287 (= e!4722662 (and tp!2399708 tp!2399710))))

(declare-fun b!8017288 () Bool)

(declare-fun tp!2399709 () Bool)

(assert (=> b!8017288 (= e!4722662 tp!2399709)))

(assert (=> b!8016767 (= tp!2399569 e!4722662)))

(declare-fun b!8017286 () Bool)

(assert (=> b!8017286 (= e!4722662 tp_is_empty!53923)))

(assert (= (and b!8016767 (is-ElementMatch!21690 (regTwo!43893 (regTwo!43893 r!15422)))) b!8017286))

(assert (= (and b!8016767 (is-Concat!30689 (regTwo!43893 (regTwo!43893 r!15422)))) b!8017287))

(assert (= (and b!8016767 (is-Star!21690 (regTwo!43893 (regTwo!43893 r!15422)))) b!8017288))

(assert (= (and b!8016767 (is-Union!21690 (regTwo!43893 (regTwo!43893 r!15422)))) b!8017289))

(declare-fun b!8017293 () Bool)

(declare-fun e!4722663 () Bool)

(declare-fun tp!2399717 () Bool)

(declare-fun tp!2399716 () Bool)

(assert (=> b!8017293 (= e!4722663 (and tp!2399717 tp!2399716))))

(declare-fun b!8017291 () Bool)

(declare-fun tp!2399713 () Bool)

(declare-fun tp!2399715 () Bool)

(assert (=> b!8017291 (= e!4722663 (and tp!2399713 tp!2399715))))

(declare-fun b!8017292 () Bool)

(declare-fun tp!2399714 () Bool)

(assert (=> b!8017292 (= e!4722663 tp!2399714)))

(assert (=> b!8016762 (= tp!2399562 e!4722663)))

(declare-fun b!8017290 () Bool)

(assert (=> b!8017290 (= e!4722663 tp_is_empty!53923)))

(assert (= (and b!8016762 (is-ElementMatch!21690 (reg!22019 (regOne!43893 r!15422)))) b!8017290))

(assert (= (and b!8016762 (is-Concat!30689 (reg!22019 (regOne!43893 r!15422)))) b!8017291))

(assert (= (and b!8016762 (is-Star!21690 (reg!22019 (regOne!43893 r!15422)))) b!8017292))

(assert (= (and b!8016762 (is-Union!21690 (reg!22019 (regOne!43893 r!15422)))) b!8017293))

(declare-fun b!8017297 () Bool)

(declare-fun e!4722664 () Bool)

(declare-fun tp!2399722 () Bool)

(declare-fun tp!2399721 () Bool)

(assert (=> b!8017297 (= e!4722664 (and tp!2399722 tp!2399721))))

(declare-fun b!8017295 () Bool)

(declare-fun tp!2399718 () Bool)

(declare-fun tp!2399720 () Bool)

(assert (=> b!8017295 (= e!4722664 (and tp!2399718 tp!2399720))))

(declare-fun b!8017296 () Bool)

(declare-fun tp!2399719 () Bool)

(assert (=> b!8017296 (= e!4722664 tp!2399719)))

(assert (=> b!8016773 (= tp!2399576 e!4722664)))

(declare-fun b!8017294 () Bool)

(assert (=> b!8017294 (= e!4722664 tp_is_empty!53923)))

(assert (= (and b!8016773 (is-ElementMatch!21690 (regOne!43892 (regTwo!43892 r!15422)))) b!8017294))

(assert (= (and b!8016773 (is-Concat!30689 (regOne!43892 (regTwo!43892 r!15422)))) b!8017295))

(assert (= (and b!8016773 (is-Star!21690 (regOne!43892 (regTwo!43892 r!15422)))) b!8017296))

(assert (= (and b!8016773 (is-Union!21690 (regOne!43892 (regTwo!43892 r!15422)))) b!8017297))

(declare-fun b!8017301 () Bool)

(declare-fun e!4722665 () Bool)

(declare-fun tp!2399727 () Bool)

(declare-fun tp!2399726 () Bool)

(assert (=> b!8017301 (= e!4722665 (and tp!2399727 tp!2399726))))

(declare-fun b!8017299 () Bool)

(declare-fun tp!2399723 () Bool)

(declare-fun tp!2399725 () Bool)

(assert (=> b!8017299 (= e!4722665 (and tp!2399723 tp!2399725))))

(declare-fun b!8017300 () Bool)

(declare-fun tp!2399724 () Bool)

(assert (=> b!8017300 (= e!4722665 tp!2399724)))

(assert (=> b!8016773 (= tp!2399578 e!4722665)))

(declare-fun b!8017298 () Bool)

(assert (=> b!8017298 (= e!4722665 tp_is_empty!53923)))

(assert (= (and b!8016773 (is-ElementMatch!21690 (regTwo!43892 (regTwo!43892 r!15422)))) b!8017298))

(assert (= (and b!8016773 (is-Concat!30689 (regTwo!43892 (regTwo!43892 r!15422)))) b!8017299))

(assert (= (and b!8016773 (is-Star!21690 (regTwo!43892 (regTwo!43892 r!15422)))) b!8017300))

(assert (= (and b!8016773 (is-Union!21690 (regTwo!43892 (regTwo!43892 r!15422)))) b!8017301))

(declare-fun b!8017302 () Bool)

(declare-fun e!4722666 () Bool)

(declare-fun tp!2399728 () Bool)

(assert (=> b!8017302 (= e!4722666 (and tp_is_empty!53923 tp!2399728))))

(assert (=> b!8016749 (= tp!2399550 e!4722666)))

(assert (= (and b!8016749 (is-Cons!74795 (t!390662 (t!390662 totalInput!1349)))) b!8017302))

(declare-fun b!8017306 () Bool)

(declare-fun e!4722667 () Bool)

(declare-fun tp!2399733 () Bool)

(declare-fun tp!2399732 () Bool)

(assert (=> b!8017306 (= e!4722667 (and tp!2399733 tp!2399732))))

(declare-fun b!8017304 () Bool)

(declare-fun tp!2399729 () Bool)

(declare-fun tp!2399731 () Bool)

(assert (=> b!8017304 (= e!4722667 (and tp!2399729 tp!2399731))))

(declare-fun b!8017305 () Bool)

(declare-fun tp!2399730 () Bool)

(assert (=> b!8017305 (= e!4722667 tp!2399730)))

(assert (=> b!8016765 (= tp!2399566 e!4722667)))

(declare-fun b!8017303 () Bool)

(assert (=> b!8017303 (= e!4722667 tp_is_empty!53923)))

(assert (= (and b!8016765 (is-ElementMatch!21690 (regOne!43892 (regTwo!43893 r!15422)))) b!8017303))

(assert (= (and b!8016765 (is-Concat!30689 (regOne!43892 (regTwo!43893 r!15422)))) b!8017304))

(assert (= (and b!8016765 (is-Star!21690 (regOne!43892 (regTwo!43893 r!15422)))) b!8017305))

(assert (= (and b!8016765 (is-Union!21690 (regOne!43892 (regTwo!43893 r!15422)))) b!8017306))

(declare-fun b!8017310 () Bool)

(declare-fun e!4722668 () Bool)

(declare-fun tp!2399738 () Bool)

(declare-fun tp!2399737 () Bool)

(assert (=> b!8017310 (= e!4722668 (and tp!2399738 tp!2399737))))

(declare-fun b!8017308 () Bool)

(declare-fun tp!2399734 () Bool)

(declare-fun tp!2399736 () Bool)

(assert (=> b!8017308 (= e!4722668 (and tp!2399734 tp!2399736))))

(declare-fun b!8017309 () Bool)

(declare-fun tp!2399735 () Bool)

(assert (=> b!8017309 (= e!4722668 tp!2399735)))

(assert (=> b!8016765 (= tp!2399568 e!4722668)))

(declare-fun b!8017307 () Bool)

(assert (=> b!8017307 (= e!4722668 tp_is_empty!53923)))

(assert (= (and b!8016765 (is-ElementMatch!21690 (regTwo!43892 (regTwo!43893 r!15422)))) b!8017307))

(assert (= (and b!8016765 (is-Concat!30689 (regTwo!43892 (regTwo!43893 r!15422)))) b!8017308))

(assert (= (and b!8016765 (is-Star!21690 (regTwo!43892 (regTwo!43893 r!15422)))) b!8017309))

(assert (= (and b!8016765 (is-Union!21690 (regTwo!43892 (regTwo!43893 r!15422)))) b!8017310))

(declare-fun b!8017314 () Bool)

(declare-fun e!4722669 () Bool)

(declare-fun tp!2399743 () Bool)

(declare-fun tp!2399742 () Bool)

(assert (=> b!8017314 (= e!4722669 (and tp!2399743 tp!2399742))))

(declare-fun b!8017312 () Bool)

(declare-fun tp!2399739 () Bool)

(declare-fun tp!2399741 () Bool)

(assert (=> b!8017312 (= e!4722669 (and tp!2399739 tp!2399741))))

(declare-fun b!8017313 () Bool)

(declare-fun tp!2399740 () Bool)

(assert (=> b!8017313 (= e!4722669 tp!2399740)))

(assert (=> b!8016774 (= tp!2399577 e!4722669)))

(declare-fun b!8017311 () Bool)

(assert (=> b!8017311 (= e!4722669 tp_is_empty!53923)))

(assert (= (and b!8016774 (is-ElementMatch!21690 (reg!22019 (regTwo!43892 r!15422)))) b!8017311))

(assert (= (and b!8016774 (is-Concat!30689 (reg!22019 (regTwo!43892 r!15422)))) b!8017312))

(assert (= (and b!8016774 (is-Star!21690 (reg!22019 (regTwo!43892 r!15422)))) b!8017313))

(assert (= (and b!8016774 (is-Union!21690 (reg!22019 (regTwo!43892 r!15422)))) b!8017314))

(declare-fun b!8017318 () Bool)

(declare-fun e!4722670 () Bool)

(declare-fun tp!2399748 () Bool)

(declare-fun tp!2399747 () Bool)

(assert (=> b!8017318 (= e!4722670 (and tp!2399748 tp!2399747))))

(declare-fun b!8017316 () Bool)

(declare-fun tp!2399744 () Bool)

(declare-fun tp!2399746 () Bool)

(assert (=> b!8017316 (= e!4722670 (and tp!2399744 tp!2399746))))

(declare-fun b!8017317 () Bool)

(declare-fun tp!2399745 () Bool)

(assert (=> b!8017317 (= e!4722670 tp!2399745)))

(assert (=> b!8016769 (= tp!2399571 e!4722670)))

(declare-fun b!8017315 () Bool)

(assert (=> b!8017315 (= e!4722670 tp_is_empty!53923)))

(assert (= (and b!8016769 (is-ElementMatch!21690 (regOne!43892 (regOne!43892 r!15422)))) b!8017315))

(assert (= (and b!8016769 (is-Concat!30689 (regOne!43892 (regOne!43892 r!15422)))) b!8017316))

(assert (= (and b!8016769 (is-Star!21690 (regOne!43892 (regOne!43892 r!15422)))) b!8017317))

(assert (= (and b!8016769 (is-Union!21690 (regOne!43892 (regOne!43892 r!15422)))) b!8017318))

(declare-fun b!8017322 () Bool)

(declare-fun e!4722671 () Bool)

(declare-fun tp!2399753 () Bool)

(declare-fun tp!2399752 () Bool)

(assert (=> b!8017322 (= e!4722671 (and tp!2399753 tp!2399752))))

(declare-fun b!8017320 () Bool)

(declare-fun tp!2399749 () Bool)

(declare-fun tp!2399751 () Bool)

(assert (=> b!8017320 (= e!4722671 (and tp!2399749 tp!2399751))))

(declare-fun b!8017321 () Bool)

(declare-fun tp!2399750 () Bool)

(assert (=> b!8017321 (= e!4722671 tp!2399750)))

(assert (=> b!8016769 (= tp!2399573 e!4722671)))

(declare-fun b!8017319 () Bool)

(assert (=> b!8017319 (= e!4722671 tp_is_empty!53923)))

(assert (= (and b!8016769 (is-ElementMatch!21690 (regTwo!43892 (regOne!43892 r!15422)))) b!8017319))

(assert (= (and b!8016769 (is-Concat!30689 (regTwo!43892 (regOne!43892 r!15422)))) b!8017320))

(assert (= (and b!8016769 (is-Star!21690 (regTwo!43892 (regOne!43892 r!15422)))) b!8017321))

(assert (= (and b!8016769 (is-Union!21690 (regTwo!43892 (regOne!43892 r!15422)))) b!8017322))

(declare-fun b!8017323 () Bool)

(declare-fun e!4722672 () Bool)

(declare-fun tp!2399754 () Bool)

(assert (=> b!8017323 (= e!4722672 (and tp_is_empty!53923 tp!2399754))))

(assert (=> b!8016748 (= tp!2399549 e!4722672)))

(assert (= (and b!8016748 (is-Cons!74795 (t!390662 (t!390662 testedP!353)))) b!8017323))

(push 1)

(assert (not d!2390272))

(assert (not b!8017184))

(assert (not b!8016965))

(assert (not d!2390256))

(assert (not d!2390322))

(assert (not d!2390304))

(assert (not b!8017198))

(assert (not b!8016964))

(assert (not d!2390384))

(assert (not b!8017043))

(assert (not b!8017218))

(assert (not d!2390356))

(assert (not b!8017083))

(assert (not b!8017170))

(assert (not b!8017260))

(assert (not b!8017285))

(assert (not bm!744769))

(assert (not b!8017111))

(assert (not b!8017231))

(assert (not b!8016966))

(assert (not bm!744733))

(assert (not bm!744755))

(assert (not b!8017322))

(assert (not b!8016978))

(assert (not b!8017293))

(assert (not b!8017125))

(assert (not b!8017129))

(assert (not b!8017215))

(assert (not b!8017106))

(assert (not b!8017134))

(assert (not b!8017013))

(assert (not b!8017288))

(assert (not b!8017302))

(assert (not bm!744741))

(assert (not b!8017229))

(assert (not b!8017203))

(assert (not b!8017130))

(assert (not b!8017138))

(assert (not b!8017216))

(assert (not b!8017115))

(assert (not b!8017308))

(assert (not b!8017269))

(assert (not b!8017267))

(assert (not d!2390294))

(assert (not b!8017305))

(assert (not b!8017275))

(assert (not b!8017237))

(assert (not b!8017154))

(assert tp_is_empty!53923)

(assert (not b!8017050))

(assert (not b!8017228))

(assert (not b!8017251))

(assert (not b!8017233))

(assert (not b!8016952))

(assert (not b!8017299))

(assert (not b!8016958))

(assert (not b!8017247))

(assert (not b!8017276))

(assert (not b!8017121))

(assert (not b!8017122))

(assert (not b!8017252))

(assert (not bm!744758))

(assert (not b!8017224))

(assert (not b!8017221))

(assert (not b!8017057))

(assert (not bm!744754))

(assert (not b!8017088))

(assert (not d!2390382))

(assert (not b!8017273))

(assert (not bm!744771))

(assert (not b!8017191))

(assert (not b!8017281))

(assert (not bm!744738))

(assert (not d!2390298))

(assert (not b!8017214))

(assert (not d!2390402))

(assert (not b!8017017))

(assert (not b!8017271))

(assert (not b!8017127))

(assert (not b!8017279))

(assert (not b!8017248))

(assert (not b!8017225))

(assert (not bm!744749))

(assert (not bm!744766))

(assert (not d!2390388))

(assert (not b!8017082))

(assert (not b!8017019))

(assert (not b!8017058))

(assert (not b!8017265))

(assert (not bm!744760))

(assert (not d!2390366))

(assert (not b!8017317))

(assert (not d!2390374))

(assert (not b!8017306))

(assert (not b!8017316))

(assert (not d!2390350))

(assert (not bm!744772))

(assert (not d!2390292))

(assert (not b!8017296))

(assert (not b!8016960))

(assert (not b!8017249))

(assert (not b!8017300))

(assert (not bm!744770))

(assert (not b!8017255))

(assert (not b!8017030))

(assert (not b!8017014))

(assert (not b!8017291))

(assert (not b!8016976))

(assert (not bm!744761))

(assert (not b!8017119))

(assert (not b!8017227))

(assert (not bm!744742))

(assert (not b!8017239))

(assert (not b!8017211))

(assert (not b!8016962))

(assert (not b!8017158))

(assert (not b!8017186))

(assert (not b!8017031))

(assert (not b!8017210))

(assert (not b!8017182))

(assert (not b!8017142))

(assert (not b!8017137))

(assert (not b!8017232))

(assert (not b!8017223))

(assert (not b!8016980))

(assert (not b!8016956))

(assert (not bm!744732))

(assert (not b!8017220))

(assert (not b!8017178))

(assert (not b!8017261))

(assert (not bm!744757))

(assert (not b!8017143))

(assert (not b!8017059))

(assert (not bm!744768))

(assert (not d!2390290))

(assert (not bm!744767))

(assert (not b!8017034))

(assert (not b!8017167))

(assert (not b!8017101))

(assert (not b!8017113))

(assert (not d!2390316))

(assert (not d!2390306))

(assert (not b!8017253))

(assert (not b!8017035))

(assert (not b!8017092))

(assert (not b!8017235))

(assert (not b!8017093))

(assert (not b!8017090))

(assert (not b!8017313))

(assert (not b!8017309))

(assert (not b!8017321))

(assert (not b!8017318))

(assert (not b!8017089))

(assert (not bm!744773))

(assert (not d!2390358))

(assert (not bm!744745))

(assert (not d!2390336))

(assert (not b!8017277))

(assert (not b!8016968))

(assert (not b!8017135))

(assert (not b!8017161))

(assert (not b!8017289))

(assert (not b!8016974))

(assert (not b!8017295))

(assert (not d!2390352))

(assert (not d!2390368))

(assert (not b!8017257))

(assert (not d!2390286))

(assert (not b!8017268))

(assert (not b!8017284))

(assert (not b!8017263))

(assert (not b!8017157))

(assert (not b!8017169))

(assert (not b!8017015))

(assert (not b!8017297))

(assert (not b!8017109))

(assert (not d!2390364))

(assert (not b!8017287))

(assert (not d!2390406))

(assert (not b!8017304))

(assert (not d!2390354))

(assert (not b!8017264))

(assert (not b!8017166))

(assert (not bm!744748))

(assert (not d!2390314))

(assert (not d!2390398))

(assert (not b!8017256))

(assert (not b!8016954))

(assert (not b!8016972))

(assert (not b!8017208))

(assert (not bm!744739))

(assert (not d!2390312))

(assert (not b!8017259))

(assert (not bm!744765))

(assert (not b!8017280))

(assert (not b!8017117))

(assert (not b!8017301))

(assert (not b!8017149))

(assert (not bm!744764))

(assert (not b!8017320))

(assert (not d!2390370))

(assert (not b!8017141))

(assert (not b!8017283))

(assert (not b!8017312))

(assert (not b!8017245))

(assert (not d!2390308))

(assert (not d!2390376))

(assert (not b!8017244))

(assert (not b!8016985))

(assert (not b!8017314))

(assert (not b!8017026))

(assert (not b!8017145))

(assert (not b!8017133))

(assert (not b!8017236))

(assert (not b!8016945))

(assert (not b!8017162))

(assert (not b!8017243))

(assert (not b!8017323))

(assert (not b!8017085))

(assert (not d!2390228))

(assert (not b!8016944))

(assert (not d!2390320))

(assert (not b!8017272))

(assert (not b!8017240))

(assert (not b!8017153))

(assert (not b!8017310))

(assert (not b!8017292))

(assert (not d!2390348))

(assert (not bm!744744))

(assert (not b!8017105))

(assert (not b!8017150))

(assert (not b!8016970))

(assert (not b!8017241))

(assert (not b!8017146))

(assert (not b!8017165))

(assert (not d!2390342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

