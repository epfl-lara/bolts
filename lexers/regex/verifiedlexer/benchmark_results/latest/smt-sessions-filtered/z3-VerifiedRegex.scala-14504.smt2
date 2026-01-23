; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754312 () Bool)

(assert start!754312)

(declare-fun b!8015481 () Bool)

(declare-fun e!4721663 () Bool)

(declare-fun e!4721664 () Bool)

(assert (=> b!8015481 (= e!4721663 e!4721664)))

(declare-fun res!3169318 () Bool)

(assert (=> b!8015481 (=> (not res!3169318) (not e!4721664))))

(declare-datatypes ((C!43716 0))(
  ( (C!43717 (val!32406 Int)) )
))
(declare-datatypes ((List!74918 0))(
  ( (Nil!74794) (Cons!74794 (h!81242 C!43716) (t!390661 List!74918)) )
))
(declare-fun lt!2718410 () List!74918)

(declare-fun totalInput!1349 () List!74918)

(assert (=> b!8015481 (= res!3169318 (= lt!2718410 totalInput!1349))))

(declare-fun testedP!353 () List!74918)

(declare-fun testedSuffix!271 () List!74918)

(declare-fun ++!18515 (List!74918 List!74918) List!74918)

(assert (=> b!8015481 (= lt!2718410 (++!18515 testedP!353 testedSuffix!271))))

(declare-fun b!8015482 () Bool)

(declare-fun e!4721670 () Bool)

(declare-fun tp_is_empty!53921 () Bool)

(declare-fun tp!2399161 () Bool)

(assert (=> b!8015482 (= e!4721670 (and tp_is_empty!53921 tp!2399161))))

(declare-fun b!8015483 () Bool)

(declare-fun e!4721675 () Bool)

(declare-fun e!4721673 () Bool)

(assert (=> b!8015483 (= e!4721675 e!4721673)))

(declare-fun res!3169326 () Bool)

(assert (=> b!8015483 (=> res!3169326 e!4721673)))

(declare-datatypes ((Regex!21689 0))(
  ( (ElementMatch!21689 (c!1471158 C!43716)) (Concat!30688 (regOne!43890 Regex!21689) (regTwo!43890 Regex!21689)) (EmptyExpr!21689) (Star!21689 (reg!22018 Regex!21689)) (EmptyLang!21689) (Union!21689 (regOne!43891 Regex!21689) (regTwo!43891 Regex!21689)) )
))
(declare-fun r!15422 () Regex!21689)

(declare-fun lostCause!2076 (Regex!21689) Bool)

(assert (=> b!8015483 (= res!3169326 (lostCause!2076 r!15422))))

(declare-fun lt!2718417 () List!74918)

(assert (=> b!8015483 (and (= testedSuffix!271 lt!2718417) (= lt!2718417 testedSuffix!271))))

(declare-datatypes ((Unit!170874 0))(
  ( (Unit!170875) )
))
(declare-fun lt!2718418 () Unit!170874)

(declare-fun lemmaSamePrefixThenSameSuffix!3098 (List!74918 List!74918 List!74918 List!74918 List!74918) Unit!170874)

(assert (=> b!8015483 (= lt!2718418 (lemmaSamePrefixThenSameSuffix!3098 testedP!353 testedSuffix!271 testedP!353 lt!2718417 totalInput!1349))))

(declare-fun getSuffix!3936 (List!74918 List!74918) List!74918)

(assert (=> b!8015483 (= lt!2718417 (getSuffix!3936 totalInput!1349 testedP!353))))

(declare-fun b!8015484 () Bool)

(declare-fun e!4721674 () Bool)

(declare-fun tp!2399155 () Bool)

(assert (=> b!8015484 (= e!4721674 (and tp_is_empty!53921 tp!2399155))))

(declare-fun b!8015485 () Bool)

(declare-fun e!4721668 () Unit!170874)

(declare-fun Unit!170876 () Unit!170874)

(assert (=> b!8015485 (= e!4721668 Unit!170876)))

(declare-fun lt!2718408 () Unit!170874)

(declare-fun lemmaIsPrefixRefl!4183 (List!74918 List!74918) Unit!170874)

(assert (=> b!8015485 (= lt!2718408 (lemmaIsPrefixRefl!4183 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6741 (List!74918 List!74918) Bool)

(assert (=> b!8015485 (isPrefix!6741 totalInput!1349 totalInput!1349)))

(declare-fun lt!2718409 () Unit!170874)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1753 (List!74918 List!74918 List!74918) Unit!170874)

(assert (=> b!8015485 (= lt!2718409 (lemmaIsPrefixSameLengthThenSameList!1753 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8015485 false))

(declare-fun b!8015486 () Bool)

(declare-fun e!4721667 () Bool)

(assert (=> b!8015486 (= e!4721664 e!4721667)))

(declare-fun res!3169320 () Bool)

(assert (=> b!8015486 (=> (not res!3169320) (not e!4721667))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2718415 () Int)

(assert (=> b!8015486 (= res!3169320 (= testedPSize!271 lt!2718415))))

(declare-fun size!43591 (List!74918) Int)

(assert (=> b!8015486 (= lt!2718415 (size!43591 testedP!353))))

(declare-fun b!8015488 () Bool)

(declare-fun e!4721665 () Bool)

(declare-fun tp!2399157 () Bool)

(assert (=> b!8015488 (= e!4721665 (and tp_is_empty!53921 tp!2399157))))

(declare-fun b!8015489 () Bool)

(declare-fun e!4721672 () Bool)

(declare-fun tp!2399158 () Bool)

(assert (=> b!8015489 (= e!4721672 tp!2399158)))

(declare-fun b!8015490 () Bool)

(declare-fun e!4721669 () Bool)

(assert (=> b!8015490 (= e!4721673 e!4721669)))

(declare-fun res!3169321 () Bool)

(assert (=> b!8015490 (=> res!3169321 e!4721669)))

(declare-fun lt!2718414 () Int)

(assert (=> b!8015490 (= res!3169321 (>= lt!2718415 lt!2718414))))

(declare-fun lt!2718416 () Unit!170874)

(assert (=> b!8015490 (= lt!2718416 e!4721668)))

(declare-fun c!1471157 () Bool)

(assert (=> b!8015490 (= c!1471157 (= lt!2718415 lt!2718414))))

(assert (=> b!8015490 (<= lt!2718415 lt!2718414)))

(declare-fun lt!2718422 () Unit!170874)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1224 (List!74918 List!74918) Unit!170874)

(assert (=> b!8015490 (= lt!2718422 (lemmaIsPrefixThenSmallerEqSize!1224 testedP!353 totalInput!1349))))

(declare-fun b!8015491 () Bool)

(declare-fun tp!2399159 () Bool)

(declare-fun tp!2399162 () Bool)

(assert (=> b!8015491 (= e!4721672 (and tp!2399159 tp!2399162))))

(declare-fun b!8015492 () Bool)

(declare-fun res!3169322 () Bool)

(assert (=> b!8015492 (=> res!3169322 e!4721673)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8015492 (= res!3169322 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8015493 () Bool)

(declare-fun e!4721666 () Bool)

(assert (=> b!8015493 (= e!4721669 e!4721666)))

(declare-fun res!3169325 () Bool)

(assert (=> b!8015493 (=> res!3169325 e!4721666)))

(declare-fun nullable!9731 (Regex!21689) Bool)

(assert (=> b!8015493 (= res!3169325 (nullable!9731 r!15422))))

(declare-fun lt!2718419 () List!74918)

(declare-fun lt!2718420 () List!74918)

(assert (=> b!8015493 (= (++!18515 lt!2718419 lt!2718420) totalInput!1349)))

(declare-fun lt!2718411 () Unit!170874)

(declare-fun lt!2718413 () C!43716)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3596 (List!74918 C!43716 List!74918 List!74918) Unit!170874)

(assert (=> b!8015493 (= lt!2718411 (lemmaMoveElementToOtherListKeepsConcatEq!3596 testedP!353 lt!2718413 lt!2718420 totalInput!1349))))

(declare-fun tail!15886 (List!74918) List!74918)

(assert (=> b!8015493 (= lt!2718420 (tail!15886 testedSuffix!271))))

(declare-fun head!16363 (List!74918) C!43716)

(assert (=> b!8015493 (isPrefix!6741 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) totalInput!1349)))

(declare-fun lt!2718412 () Unit!170874)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1414 (List!74918 List!74918) Unit!170874)

(assert (=> b!8015493 (= lt!2718412 (lemmaAddHeadSuffixToPrefixStillPrefix!1414 testedP!353 totalInput!1349))))

(assert (=> b!8015493 (= lt!2718419 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)))))

(assert (=> b!8015493 (= lt!2718413 (head!16363 testedSuffix!271))))

(declare-fun b!8015494 () Bool)

(declare-fun Unit!170877 () Unit!170874)

(assert (=> b!8015494 (= e!4721668 Unit!170877)))

(declare-fun b!8015495 () Bool)

(declare-fun tp!2399156 () Bool)

(declare-fun tp!2399160 () Bool)

(assert (=> b!8015495 (= e!4721672 (and tp!2399156 tp!2399160))))

(declare-fun b!8015496 () Bool)

(declare-fun e!4721671 () Bool)

(assert (=> b!8015496 (= e!4721671 (not e!4721675))))

(declare-fun res!3169319 () Bool)

(assert (=> b!8015496 (=> res!3169319 e!4721675)))

(assert (=> b!8015496 (= res!3169319 (not (isPrefix!6741 testedP!353 totalInput!1349)))))

(assert (=> b!8015496 (isPrefix!6741 testedP!353 lt!2718410)))

(declare-fun lt!2718423 () Unit!170874)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3972 (List!74918 List!74918) Unit!170874)

(assert (=> b!8015496 (= lt!2718423 (lemmaConcatTwoListThenFirstIsPrefix!3972 testedP!353 testedSuffix!271))))

(declare-fun res!3169323 () Bool)

(assert (=> start!754312 (=> (not res!3169323) (not e!4721663))))

(declare-fun validRegex!11993 (Regex!21689) Bool)

(assert (=> start!754312 (= res!3169323 (validRegex!11993 r!15422))))

(assert (=> start!754312 e!4721663))

(assert (=> start!754312 e!4721674))

(assert (=> start!754312 true))

(assert (=> start!754312 e!4721670))

(assert (=> start!754312 e!4721672))

(assert (=> start!754312 e!4721665))

(declare-fun b!8015487 () Bool)

(assert (=> b!8015487 (= e!4721666 (< (- lt!2718414 (size!43591 lt!2718419)) (- lt!2718414 lt!2718415)))))

(declare-fun lt!2718421 () Regex!21689)

(declare-fun derivativeStep!6640 (Regex!21689 C!43716) Regex!21689)

(assert (=> b!8015487 (= lt!2718421 (derivativeStep!6640 r!15422 lt!2718413))))

(declare-fun b!8015497 () Bool)

(assert (=> b!8015497 (= e!4721672 tp_is_empty!53921)))

(declare-fun b!8015498 () Bool)

(assert (=> b!8015498 (= e!4721667 e!4721671)))

(declare-fun res!3169324 () Bool)

(assert (=> b!8015498 (=> (not res!3169324) (not e!4721671))))

(assert (=> b!8015498 (= res!3169324 (= totalInputSize!629 lt!2718414))))

(assert (=> b!8015498 (= lt!2718414 (size!43591 totalInput!1349))))

(assert (= (and start!754312 res!3169323) b!8015481))

(assert (= (and b!8015481 res!3169318) b!8015486))

(assert (= (and b!8015486 res!3169320) b!8015498))

(assert (= (and b!8015498 res!3169324) b!8015496))

(assert (= (and b!8015496 (not res!3169319)) b!8015483))

(assert (= (and b!8015483 (not res!3169326)) b!8015492))

(assert (= (and b!8015492 (not res!3169322)) b!8015490))

(assert (= (and b!8015490 c!1471157) b!8015485))

(assert (= (and b!8015490 (not c!1471157)) b!8015494))

(assert (= (and b!8015490 (not res!3169321)) b!8015493))

(assert (= (and b!8015493 (not res!3169325)) b!8015487))

(get-info :version)

(assert (= (and start!754312 ((_ is Cons!74794) totalInput!1349)) b!8015484))

(assert (= (and start!754312 ((_ is Cons!74794) testedSuffix!271)) b!8015482))

(assert (= (and start!754312 ((_ is ElementMatch!21689) r!15422)) b!8015497))

(assert (= (and start!754312 ((_ is Concat!30688) r!15422)) b!8015491))

(assert (= (and start!754312 ((_ is Star!21689) r!15422)) b!8015489))

(assert (= (and start!754312 ((_ is Union!21689) r!15422)) b!8015495))

(assert (= (and start!754312 ((_ is Cons!74794) testedP!353)) b!8015488))

(declare-fun m!8378722 () Bool)

(assert (=> b!8015496 m!8378722))

(declare-fun m!8378724 () Bool)

(assert (=> b!8015496 m!8378724))

(declare-fun m!8378726 () Bool)

(assert (=> b!8015496 m!8378726))

(declare-fun m!8378728 () Bool)

(assert (=> b!8015493 m!8378728))

(declare-fun m!8378730 () Bool)

(assert (=> b!8015493 m!8378730))

(declare-fun m!8378732 () Bool)

(assert (=> b!8015493 m!8378732))

(declare-fun m!8378734 () Bool)

(assert (=> b!8015493 m!8378734))

(declare-fun m!8378736 () Bool)

(assert (=> b!8015493 m!8378736))

(declare-fun m!8378738 () Bool)

(assert (=> b!8015493 m!8378738))

(declare-fun m!8378740 () Bool)

(assert (=> b!8015493 m!8378740))

(declare-fun m!8378742 () Bool)

(assert (=> b!8015493 m!8378742))

(declare-fun m!8378744 () Bool)

(assert (=> b!8015493 m!8378744))

(declare-fun m!8378746 () Bool)

(assert (=> b!8015493 m!8378746))

(assert (=> b!8015493 m!8378728))

(declare-fun m!8378748 () Bool)

(assert (=> b!8015487 m!8378748))

(declare-fun m!8378750 () Bool)

(assert (=> b!8015487 m!8378750))

(declare-fun m!8378752 () Bool)

(assert (=> b!8015481 m!8378752))

(declare-fun m!8378754 () Bool)

(assert (=> b!8015498 m!8378754))

(declare-fun m!8378756 () Bool)

(assert (=> b!8015485 m!8378756))

(declare-fun m!8378758 () Bool)

(assert (=> b!8015485 m!8378758))

(declare-fun m!8378760 () Bool)

(assert (=> b!8015485 m!8378760))

(declare-fun m!8378762 () Bool)

(assert (=> b!8015486 m!8378762))

(declare-fun m!8378764 () Bool)

(assert (=> b!8015490 m!8378764))

(declare-fun m!8378766 () Bool)

(assert (=> start!754312 m!8378766))

(declare-fun m!8378768 () Bool)

(assert (=> b!8015483 m!8378768))

(declare-fun m!8378770 () Bool)

(assert (=> b!8015483 m!8378770))

(declare-fun m!8378772 () Bool)

(assert (=> b!8015483 m!8378772))

(check-sat (not b!8015496) (not start!754312) (not b!8015485) (not b!8015486) (not b!8015482) (not b!8015490) (not b!8015498) (not b!8015489) (not b!8015495) (not b!8015488) tp_is_empty!53921 (not b!8015484) (not b!8015487) (not b!8015481) (not b!8015493) (not b!8015491) (not b!8015483))
(check-sat)
(get-model)

(declare-fun d!2389753 () Bool)

(assert (=> d!2389753 (<= (size!43591 testedP!353) (size!43591 totalInput!1349))))

(declare-fun lt!2718426 () Unit!170874)

(declare-fun choose!60404 (List!74918 List!74918) Unit!170874)

(assert (=> d!2389753 (= lt!2718426 (choose!60404 testedP!353 totalInput!1349))))

(assert (=> d!2389753 (isPrefix!6741 testedP!353 totalInput!1349)))

(assert (=> d!2389753 (= (lemmaIsPrefixThenSmallerEqSize!1224 testedP!353 totalInput!1349) lt!2718426)))

(declare-fun bs!1971009 () Bool)

(assert (= bs!1971009 d!2389753))

(assert (=> bs!1971009 m!8378762))

(assert (=> bs!1971009 m!8378754))

(declare-fun m!8378774 () Bool)

(assert (=> bs!1971009 m!8378774))

(assert (=> bs!1971009 m!8378722))

(assert (=> b!8015490 d!2389753))

(declare-fun d!2389755 () Bool)

(declare-fun e!4721684 () Bool)

(assert (=> d!2389755 e!4721684))

(declare-fun res!3169338 () Bool)

(assert (=> d!2389755 (=> res!3169338 e!4721684)))

(declare-fun lt!2718429 () Bool)

(assert (=> d!2389755 (= res!3169338 (not lt!2718429))))

(declare-fun e!4721683 () Bool)

(assert (=> d!2389755 (= lt!2718429 e!4721683)))

(declare-fun res!3169335 () Bool)

(assert (=> d!2389755 (=> res!3169335 e!4721683)))

(assert (=> d!2389755 (= res!3169335 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389755 (= (isPrefix!6741 testedP!353 totalInput!1349) lt!2718429)))

(declare-fun b!8015508 () Bool)

(declare-fun res!3169337 () Bool)

(declare-fun e!4721682 () Bool)

(assert (=> b!8015508 (=> (not res!3169337) (not e!4721682))))

(assert (=> b!8015508 (= res!3169337 (= (head!16363 testedP!353) (head!16363 totalInput!1349)))))

(declare-fun b!8015507 () Bool)

(assert (=> b!8015507 (= e!4721683 e!4721682)))

(declare-fun res!3169336 () Bool)

(assert (=> b!8015507 (=> (not res!3169336) (not e!4721682))))

(assert (=> b!8015507 (= res!3169336 (not ((_ is Nil!74794) totalInput!1349)))))

(declare-fun b!8015510 () Bool)

(assert (=> b!8015510 (= e!4721684 (>= (size!43591 totalInput!1349) (size!43591 testedP!353)))))

(declare-fun b!8015509 () Bool)

(assert (=> b!8015509 (= e!4721682 (isPrefix!6741 (tail!15886 testedP!353) (tail!15886 totalInput!1349)))))

(assert (= (and d!2389755 (not res!3169335)) b!8015507))

(assert (= (and b!8015507 res!3169336) b!8015508))

(assert (= (and b!8015508 res!3169337) b!8015509))

(assert (= (and d!2389755 (not res!3169338)) b!8015510))

(declare-fun m!8378776 () Bool)

(assert (=> b!8015508 m!8378776))

(declare-fun m!8378778 () Bool)

(assert (=> b!8015508 m!8378778))

(assert (=> b!8015510 m!8378754))

(assert (=> b!8015510 m!8378762))

(declare-fun m!8378780 () Bool)

(assert (=> b!8015509 m!8378780))

(declare-fun m!8378782 () Bool)

(assert (=> b!8015509 m!8378782))

(assert (=> b!8015509 m!8378780))

(assert (=> b!8015509 m!8378782))

(declare-fun m!8378784 () Bool)

(assert (=> b!8015509 m!8378784))

(assert (=> b!8015496 d!2389755))

(declare-fun d!2389759 () Bool)

(declare-fun e!4721687 () Bool)

(assert (=> d!2389759 e!4721687))

(declare-fun res!3169342 () Bool)

(assert (=> d!2389759 (=> res!3169342 e!4721687)))

(declare-fun lt!2718430 () Bool)

(assert (=> d!2389759 (= res!3169342 (not lt!2718430))))

(declare-fun e!4721686 () Bool)

(assert (=> d!2389759 (= lt!2718430 e!4721686)))

(declare-fun res!3169339 () Bool)

(assert (=> d!2389759 (=> res!3169339 e!4721686)))

(assert (=> d!2389759 (= res!3169339 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389759 (= (isPrefix!6741 testedP!353 lt!2718410) lt!2718430)))

(declare-fun b!8015512 () Bool)

(declare-fun res!3169341 () Bool)

(declare-fun e!4721685 () Bool)

(assert (=> b!8015512 (=> (not res!3169341) (not e!4721685))))

(assert (=> b!8015512 (= res!3169341 (= (head!16363 testedP!353) (head!16363 lt!2718410)))))

(declare-fun b!8015511 () Bool)

(assert (=> b!8015511 (= e!4721686 e!4721685)))

(declare-fun res!3169340 () Bool)

(assert (=> b!8015511 (=> (not res!3169340) (not e!4721685))))

(assert (=> b!8015511 (= res!3169340 (not ((_ is Nil!74794) lt!2718410)))))

(declare-fun b!8015514 () Bool)

(assert (=> b!8015514 (= e!4721687 (>= (size!43591 lt!2718410) (size!43591 testedP!353)))))

(declare-fun b!8015513 () Bool)

(assert (=> b!8015513 (= e!4721685 (isPrefix!6741 (tail!15886 testedP!353) (tail!15886 lt!2718410)))))

(assert (= (and d!2389759 (not res!3169339)) b!8015511))

(assert (= (and b!8015511 res!3169340) b!8015512))

(assert (= (and b!8015512 res!3169341) b!8015513))

(assert (= (and d!2389759 (not res!3169342)) b!8015514))

(assert (=> b!8015512 m!8378776))

(declare-fun m!8378786 () Bool)

(assert (=> b!8015512 m!8378786))

(declare-fun m!8378788 () Bool)

(assert (=> b!8015514 m!8378788))

(assert (=> b!8015514 m!8378762))

(assert (=> b!8015513 m!8378780))

(declare-fun m!8378790 () Bool)

(assert (=> b!8015513 m!8378790))

(assert (=> b!8015513 m!8378780))

(assert (=> b!8015513 m!8378790))

(declare-fun m!8378792 () Bool)

(assert (=> b!8015513 m!8378792))

(assert (=> b!8015496 d!2389759))

(declare-fun d!2389761 () Bool)

(assert (=> d!2389761 (isPrefix!6741 testedP!353 (++!18515 testedP!353 testedSuffix!271))))

(declare-fun lt!2718433 () Unit!170874)

(declare-fun choose!60407 (List!74918 List!74918) Unit!170874)

(assert (=> d!2389761 (= lt!2718433 (choose!60407 testedP!353 testedSuffix!271))))

(assert (=> d!2389761 (= (lemmaConcatTwoListThenFirstIsPrefix!3972 testedP!353 testedSuffix!271) lt!2718433)))

(declare-fun bs!1971010 () Bool)

(assert (= bs!1971010 d!2389761))

(assert (=> bs!1971010 m!8378752))

(assert (=> bs!1971010 m!8378752))

(declare-fun m!8378794 () Bool)

(assert (=> bs!1971010 m!8378794))

(declare-fun m!8378796 () Bool)

(assert (=> bs!1971010 m!8378796))

(assert (=> b!8015496 d!2389761))

(declare-fun d!2389763 () Bool)

(assert (=> d!2389763 (isPrefix!6741 totalInput!1349 totalInput!1349)))

(declare-fun lt!2718436 () Unit!170874)

(declare-fun choose!60409 (List!74918 List!74918) Unit!170874)

(assert (=> d!2389763 (= lt!2718436 (choose!60409 totalInput!1349 totalInput!1349))))

(assert (=> d!2389763 (= (lemmaIsPrefixRefl!4183 totalInput!1349 totalInput!1349) lt!2718436)))

(declare-fun bs!1971011 () Bool)

(assert (= bs!1971011 d!2389763))

(assert (=> bs!1971011 m!8378758))

(declare-fun m!8378798 () Bool)

(assert (=> bs!1971011 m!8378798))

(assert (=> b!8015485 d!2389763))

(declare-fun d!2389765 () Bool)

(declare-fun e!4721690 () Bool)

(assert (=> d!2389765 e!4721690))

(declare-fun res!3169346 () Bool)

(assert (=> d!2389765 (=> res!3169346 e!4721690)))

(declare-fun lt!2718437 () Bool)

(assert (=> d!2389765 (= res!3169346 (not lt!2718437))))

(declare-fun e!4721689 () Bool)

(assert (=> d!2389765 (= lt!2718437 e!4721689)))

(declare-fun res!3169343 () Bool)

(assert (=> d!2389765 (=> res!3169343 e!4721689)))

(assert (=> d!2389765 (= res!3169343 ((_ is Nil!74794) totalInput!1349))))

(assert (=> d!2389765 (= (isPrefix!6741 totalInput!1349 totalInput!1349) lt!2718437)))

(declare-fun b!8015516 () Bool)

(declare-fun res!3169345 () Bool)

(declare-fun e!4721688 () Bool)

(assert (=> b!8015516 (=> (not res!3169345) (not e!4721688))))

(assert (=> b!8015516 (= res!3169345 (= (head!16363 totalInput!1349) (head!16363 totalInput!1349)))))

(declare-fun b!8015515 () Bool)

(assert (=> b!8015515 (= e!4721689 e!4721688)))

(declare-fun res!3169344 () Bool)

(assert (=> b!8015515 (=> (not res!3169344) (not e!4721688))))

(assert (=> b!8015515 (= res!3169344 (not ((_ is Nil!74794) totalInput!1349)))))

(declare-fun b!8015518 () Bool)

(assert (=> b!8015518 (= e!4721690 (>= (size!43591 totalInput!1349) (size!43591 totalInput!1349)))))

(declare-fun b!8015517 () Bool)

(assert (=> b!8015517 (= e!4721688 (isPrefix!6741 (tail!15886 totalInput!1349) (tail!15886 totalInput!1349)))))

(assert (= (and d!2389765 (not res!3169343)) b!8015515))

(assert (= (and b!8015515 res!3169344) b!8015516))

(assert (= (and b!8015516 res!3169345) b!8015517))

(assert (= (and d!2389765 (not res!3169346)) b!8015518))

(assert (=> b!8015516 m!8378778))

(assert (=> b!8015516 m!8378778))

(assert (=> b!8015518 m!8378754))

(assert (=> b!8015518 m!8378754))

(assert (=> b!8015517 m!8378782))

(assert (=> b!8015517 m!8378782))

(assert (=> b!8015517 m!8378782))

(assert (=> b!8015517 m!8378782))

(declare-fun m!8378800 () Bool)

(assert (=> b!8015517 m!8378800))

(assert (=> b!8015485 d!2389765))

(declare-fun d!2389767 () Bool)

(assert (=> d!2389767 (= totalInput!1349 testedP!353)))

(declare-fun lt!2718440 () Unit!170874)

(declare-fun choose!60410 (List!74918 List!74918 List!74918) Unit!170874)

(assert (=> d!2389767 (= lt!2718440 (choose!60410 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2389767 (isPrefix!6741 totalInput!1349 totalInput!1349)))

(assert (=> d!2389767 (= (lemmaIsPrefixSameLengthThenSameList!1753 totalInput!1349 testedP!353 totalInput!1349) lt!2718440)))

(declare-fun bs!1971012 () Bool)

(assert (= bs!1971012 d!2389767))

(declare-fun m!8378802 () Bool)

(assert (=> bs!1971012 m!8378802))

(assert (=> bs!1971012 m!8378758))

(assert (=> b!8015485 d!2389767))

(declare-fun d!2389769 () Bool)

(declare-fun lt!2718443 () Int)

(assert (=> d!2389769 (>= lt!2718443 0)))

(declare-fun e!4721693 () Int)

(assert (=> d!2389769 (= lt!2718443 e!4721693)))

(declare-fun c!1471161 () Bool)

(assert (=> d!2389769 (= c!1471161 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389769 (= (size!43591 testedP!353) lt!2718443)))

(declare-fun b!8015523 () Bool)

(assert (=> b!8015523 (= e!4721693 0)))

(declare-fun b!8015524 () Bool)

(assert (=> b!8015524 (= e!4721693 (+ 1 (size!43591 (t!390661 testedP!353))))))

(assert (= (and d!2389769 c!1471161) b!8015523))

(assert (= (and d!2389769 (not c!1471161)) b!8015524))

(declare-fun m!8378804 () Bool)

(assert (=> b!8015524 m!8378804))

(assert (=> b!8015486 d!2389769))

(declare-fun d!2389771 () Bool)

(declare-fun e!4721699 () Bool)

(assert (=> d!2389771 e!4721699))

(declare-fun res!3169351 () Bool)

(assert (=> d!2389771 (=> (not res!3169351) (not e!4721699))))

(declare-fun lt!2718446 () List!74918)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15920 (List!74918) (InoxSet C!43716))

(assert (=> d!2389771 (= res!3169351 (= (content!15920 lt!2718446) ((_ map or) (content!15920 testedP!353) (content!15920 testedSuffix!271))))))

(declare-fun e!4721698 () List!74918)

(assert (=> d!2389771 (= lt!2718446 e!4721698)))

(declare-fun c!1471164 () Bool)

(assert (=> d!2389771 (= c!1471164 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389771 (= (++!18515 testedP!353 testedSuffix!271) lt!2718446)))

(declare-fun b!8015536 () Bool)

(assert (=> b!8015536 (= e!4721699 (or (not (= testedSuffix!271 Nil!74794)) (= lt!2718446 testedP!353)))))

(declare-fun b!8015534 () Bool)

(assert (=> b!8015534 (= e!4721698 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) testedSuffix!271)))))

(declare-fun b!8015533 () Bool)

(assert (=> b!8015533 (= e!4721698 testedSuffix!271)))

(declare-fun b!8015535 () Bool)

(declare-fun res!3169352 () Bool)

(assert (=> b!8015535 (=> (not res!3169352) (not e!4721699))))

(assert (=> b!8015535 (= res!3169352 (= (size!43591 lt!2718446) (+ (size!43591 testedP!353) (size!43591 testedSuffix!271))))))

(assert (= (and d!2389771 c!1471164) b!8015533))

(assert (= (and d!2389771 (not c!1471164)) b!8015534))

(assert (= (and d!2389771 res!3169351) b!8015535))

(assert (= (and b!8015535 res!3169352) b!8015536))

(declare-fun m!8378808 () Bool)

(assert (=> d!2389771 m!8378808))

(declare-fun m!8378810 () Bool)

(assert (=> d!2389771 m!8378810))

(declare-fun m!8378812 () Bool)

(assert (=> d!2389771 m!8378812))

(declare-fun m!8378814 () Bool)

(assert (=> b!8015534 m!8378814))

(declare-fun m!8378816 () Bool)

(assert (=> b!8015535 m!8378816))

(assert (=> b!8015535 m!8378762))

(declare-fun m!8378818 () Bool)

(assert (=> b!8015535 m!8378818))

(assert (=> b!8015481 d!2389771))

(declare-fun d!2389775 () Bool)

(declare-fun lt!2718450 () Int)

(assert (=> d!2389775 (>= lt!2718450 0)))

(declare-fun e!4721700 () Int)

(assert (=> d!2389775 (= lt!2718450 e!4721700)))

(declare-fun c!1471165 () Bool)

(assert (=> d!2389775 (= c!1471165 ((_ is Nil!74794) totalInput!1349))))

(assert (=> d!2389775 (= (size!43591 totalInput!1349) lt!2718450)))

(declare-fun b!8015537 () Bool)

(assert (=> b!8015537 (= e!4721700 0)))

(declare-fun b!8015538 () Bool)

(assert (=> b!8015538 (= e!4721700 (+ 1 (size!43591 (t!390661 totalInput!1349))))))

(assert (= (and d!2389775 c!1471165) b!8015537))

(assert (= (and d!2389775 (not c!1471165)) b!8015538))

(declare-fun m!8378822 () Bool)

(assert (=> b!8015538 m!8378822))

(assert (=> b!8015498 d!2389775))

(declare-fun d!2389779 () Bool)

(declare-fun lt!2718451 () Int)

(assert (=> d!2389779 (>= lt!2718451 0)))

(declare-fun e!4721701 () Int)

(assert (=> d!2389779 (= lt!2718451 e!4721701)))

(declare-fun c!1471166 () Bool)

(assert (=> d!2389779 (= c!1471166 ((_ is Nil!74794) lt!2718419))))

(assert (=> d!2389779 (= (size!43591 lt!2718419) lt!2718451)))

(declare-fun b!8015539 () Bool)

(assert (=> b!8015539 (= e!4721701 0)))

(declare-fun b!8015540 () Bool)

(assert (=> b!8015540 (= e!4721701 (+ 1 (size!43591 (t!390661 lt!2718419))))))

(assert (= (and d!2389779 c!1471166) b!8015539))

(assert (= (and d!2389779 (not c!1471166)) b!8015540))

(declare-fun m!8378824 () Bool)

(assert (=> b!8015540 m!8378824))

(assert (=> b!8015487 d!2389779))

(declare-fun b!8015583 () Bool)

(declare-fun e!4721728 () Regex!21689)

(declare-fun call!744556 () Regex!21689)

(assert (=> b!8015583 (= e!4721728 (Union!21689 (Concat!30688 call!744556 (regTwo!43890 r!15422)) EmptyLang!21689))))

(declare-fun d!2389781 () Bool)

(declare-fun lt!2718470 () Regex!21689)

(assert (=> d!2389781 (validRegex!11993 lt!2718470)))

(declare-fun e!4721727 () Regex!21689)

(assert (=> d!2389781 (= lt!2718470 e!4721727)))

(declare-fun c!1471182 () Bool)

(assert (=> d!2389781 (= c!1471182 (or ((_ is EmptyExpr!21689) r!15422) ((_ is EmptyLang!21689) r!15422)))))

(assert (=> d!2389781 (validRegex!11993 r!15422)))

(assert (=> d!2389781 (= (derivativeStep!6640 r!15422 lt!2718413) lt!2718470)))

(declare-fun c!1471184 () Bool)

(declare-fun call!744555 () Regex!21689)

(declare-fun c!1471183 () Bool)

(declare-fun bm!744548 () Bool)

(declare-fun c!1471181 () Bool)

(assert (=> bm!744548 (= call!744555 (derivativeStep!6640 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))) lt!2718413))))

(declare-fun b!8015584 () Bool)

(declare-fun e!4721730 () Regex!21689)

(assert (=> b!8015584 (= e!4721730 (ite (= lt!2718413 (c!1471158 r!15422)) EmptyExpr!21689 EmptyLang!21689))))

(declare-fun bm!744549 () Bool)

(declare-fun call!744554 () Regex!21689)

(assert (=> bm!744549 (= call!744554 call!744555)))

(declare-fun b!8015585 () Bool)

(declare-fun e!4721731 () Regex!21689)

(assert (=> b!8015585 (= e!4721731 (Concat!30688 call!744554 r!15422))))

(declare-fun bm!744550 () Bool)

(assert (=> bm!744550 (= call!744556 call!744554)))

(declare-fun b!8015586 () Bool)

(assert (=> b!8015586 (= e!4721727 e!4721730)))

(declare-fun c!1471180 () Bool)

(assert (=> b!8015586 (= c!1471180 ((_ is ElementMatch!21689) r!15422))))

(declare-fun call!744553 () Regex!21689)

(declare-fun bm!744551 () Bool)

(assert (=> bm!744551 (= call!744553 (derivativeStep!6640 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)) lt!2718413))))

(declare-fun b!8015587 () Bool)

(assert (=> b!8015587 (= e!4721727 EmptyLang!21689)))

(declare-fun b!8015588 () Bool)

(assert (=> b!8015588 (= e!4721728 (Union!21689 (Concat!30688 call!744553 (regTwo!43890 r!15422)) call!744556))))

(declare-fun b!8015589 () Bool)

(assert (=> b!8015589 (= c!1471183 ((_ is Union!21689) r!15422))))

(declare-fun e!4721729 () Regex!21689)

(assert (=> b!8015589 (= e!4721730 e!4721729)))

(declare-fun b!8015590 () Bool)

(assert (=> b!8015590 (= e!4721729 (Union!21689 call!744553 call!744555))))

(declare-fun b!8015591 () Bool)

(assert (=> b!8015591 (= e!4721729 e!4721731)))

(assert (=> b!8015591 (= c!1471184 ((_ is Star!21689) r!15422))))

(declare-fun b!8015592 () Bool)

(assert (=> b!8015592 (= c!1471181 (nullable!9731 (regOne!43890 r!15422)))))

(assert (=> b!8015592 (= e!4721731 e!4721728)))

(assert (= (and d!2389781 c!1471182) b!8015587))

(assert (= (and d!2389781 (not c!1471182)) b!8015586))

(assert (= (and b!8015586 c!1471180) b!8015584))

(assert (= (and b!8015586 (not c!1471180)) b!8015589))

(assert (= (and b!8015589 c!1471183) b!8015590))

(assert (= (and b!8015589 (not c!1471183)) b!8015591))

(assert (= (and b!8015591 c!1471184) b!8015585))

(assert (= (and b!8015591 (not c!1471184)) b!8015592))

(assert (= (and b!8015592 c!1471181) b!8015588))

(assert (= (and b!8015592 (not c!1471181)) b!8015583))

(assert (= (or b!8015588 b!8015583) bm!744550))

(assert (= (or b!8015585 bm!744550) bm!744549))

(assert (= (or b!8015590 bm!744549) bm!744548))

(assert (= (or b!8015590 b!8015588) bm!744551))

(declare-fun m!8378858 () Bool)

(assert (=> d!2389781 m!8378858))

(assert (=> d!2389781 m!8378766))

(declare-fun m!8378860 () Bool)

(assert (=> bm!744548 m!8378860))

(declare-fun m!8378862 () Bool)

(assert (=> bm!744551 m!8378862))

(declare-fun m!8378864 () Bool)

(assert (=> b!8015592 m!8378864))

(assert (=> b!8015487 d!2389781))

(declare-fun b!8015627 () Bool)

(declare-fun res!3169390 () Bool)

(declare-fun e!4721759 () Bool)

(assert (=> b!8015627 (=> (not res!3169390) (not e!4721759))))

(declare-fun call!744565 () Bool)

(assert (=> b!8015627 (= res!3169390 call!744565)))

(declare-fun e!4721760 () Bool)

(assert (=> b!8015627 (= e!4721760 e!4721759)))

(declare-fun b!8015628 () Bool)

(declare-fun e!4721755 () Bool)

(declare-fun e!4721756 () Bool)

(assert (=> b!8015628 (= e!4721755 e!4721756)))

(declare-fun c!1471194 () Bool)

(assert (=> b!8015628 (= c!1471194 ((_ is Star!21689) r!15422))))

(declare-fun bm!744558 () Bool)

(declare-fun c!1471193 () Bool)

(assert (=> bm!744558 (= call!744565 (validRegex!11993 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun bm!744559 () Bool)

(declare-fun call!744563 () Bool)

(assert (=> bm!744559 (= call!744563 (validRegex!11993 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))

(declare-fun b!8015629 () Bool)

(declare-fun e!4721754 () Bool)

(assert (=> b!8015629 (= e!4721756 e!4721754)))

(declare-fun res!3169391 () Bool)

(assert (=> b!8015629 (= res!3169391 (not (nullable!9731 (reg!22018 r!15422))))))

(assert (=> b!8015629 (=> (not res!3169391) (not e!4721754))))

(declare-fun bm!744560 () Bool)

(declare-fun call!744564 () Bool)

(assert (=> bm!744560 (= call!744564 call!744563)))

(declare-fun b!8015630 () Bool)

(assert (=> b!8015630 (= e!4721754 call!744563)))

(declare-fun b!8015631 () Bool)

(declare-fun res!3169388 () Bool)

(declare-fun e!4721757 () Bool)

(assert (=> b!8015631 (=> res!3169388 e!4721757)))

(assert (=> b!8015631 (= res!3169388 (not ((_ is Concat!30688) r!15422)))))

(assert (=> b!8015631 (= e!4721760 e!4721757)))

(declare-fun d!2389799 () Bool)

(declare-fun res!3169389 () Bool)

(assert (=> d!2389799 (=> res!3169389 e!4721755)))

(assert (=> d!2389799 (= res!3169389 ((_ is ElementMatch!21689) r!15422))))

(assert (=> d!2389799 (= (validRegex!11993 r!15422) e!4721755)))

(declare-fun b!8015632 () Bool)

(assert (=> b!8015632 (= e!4721756 e!4721760)))

(assert (=> b!8015632 (= c!1471193 ((_ is Union!21689) r!15422))))

(declare-fun b!8015633 () Bool)

(assert (=> b!8015633 (= e!4721759 call!744564)))

(declare-fun b!8015634 () Bool)

(declare-fun e!4721758 () Bool)

(assert (=> b!8015634 (= e!4721758 call!744564)))

(declare-fun b!8015635 () Bool)

(assert (=> b!8015635 (= e!4721757 e!4721758)))

(declare-fun res!3169387 () Bool)

(assert (=> b!8015635 (=> (not res!3169387) (not e!4721758))))

(assert (=> b!8015635 (= res!3169387 call!744565)))

(assert (= (and d!2389799 (not res!3169389)) b!8015628))

(assert (= (and b!8015628 c!1471194) b!8015629))

(assert (= (and b!8015628 (not c!1471194)) b!8015632))

(assert (= (and b!8015629 res!3169391) b!8015630))

(assert (= (and b!8015632 c!1471193) b!8015627))

(assert (= (and b!8015632 (not c!1471193)) b!8015631))

(assert (= (and b!8015627 res!3169390) b!8015633))

(assert (= (and b!8015631 (not res!3169388)) b!8015635))

(assert (= (and b!8015635 res!3169387) b!8015634))

(assert (= (or b!8015633 b!8015634) bm!744560))

(assert (= (or b!8015627 b!8015635) bm!744558))

(assert (= (or b!8015630 bm!744560) bm!744559))

(declare-fun m!8378906 () Bool)

(assert (=> bm!744558 m!8378906))

(declare-fun m!8378908 () Bool)

(assert (=> bm!744559 m!8378908))

(declare-fun m!8378910 () Bool)

(assert (=> b!8015629 m!8378910))

(assert (=> start!754312 d!2389799))

(declare-fun d!2389813 () Bool)

(assert (=> d!2389813 (isPrefix!6741 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)) totalInput!1349)))

(declare-fun lt!2718490 () Unit!170874)

(declare-fun choose!60413 (List!74918 List!74918) Unit!170874)

(assert (=> d!2389813 (= lt!2718490 (choose!60413 testedP!353 totalInput!1349))))

(assert (=> d!2389813 (isPrefix!6741 testedP!353 totalInput!1349)))

(assert (=> d!2389813 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1414 testedP!353 totalInput!1349) lt!2718490)))

(declare-fun bs!1971021 () Bool)

(assert (= bs!1971021 d!2389813))

(declare-fun m!8378940 () Bool)

(assert (=> bs!1971021 m!8378940))

(declare-fun m!8378942 () Bool)

(assert (=> bs!1971021 m!8378942))

(assert (=> bs!1971021 m!8378772))

(declare-fun m!8378944 () Bool)

(assert (=> bs!1971021 m!8378944))

(assert (=> bs!1971021 m!8378940))

(declare-fun m!8378950 () Bool)

(assert (=> bs!1971021 m!8378950))

(assert (=> bs!1971021 m!8378772))

(assert (=> bs!1971021 m!8378722))

(assert (=> b!8015493 d!2389813))

(declare-fun d!2389827 () Bool)

(declare-fun nullableFct!3847 (Regex!21689) Bool)

(assert (=> d!2389827 (= (nullable!9731 r!15422) (nullableFct!3847 r!15422))))

(declare-fun bs!1971023 () Bool)

(assert (= bs!1971023 d!2389827))

(declare-fun m!8378952 () Bool)

(assert (=> bs!1971023 m!8378952))

(assert (=> b!8015493 d!2389827))

(declare-fun d!2389829 () Bool)

(declare-fun e!4721777 () Bool)

(assert (=> d!2389829 e!4721777))

(declare-fun res!3169406 () Bool)

(assert (=> d!2389829 (=> (not res!3169406) (not e!4721777))))

(declare-fun lt!2718494 () List!74918)

(assert (=> d!2389829 (= res!3169406 (= (content!15920 lt!2718494) ((_ map or) (content!15920 lt!2718419) (content!15920 lt!2718420))))))

(declare-fun e!4721776 () List!74918)

(assert (=> d!2389829 (= lt!2718494 e!4721776)))

(declare-fun c!1471200 () Bool)

(assert (=> d!2389829 (= c!1471200 ((_ is Nil!74794) lt!2718419))))

(assert (=> d!2389829 (= (++!18515 lt!2718419 lt!2718420) lt!2718494)))

(declare-fun b!8015665 () Bool)

(assert (=> b!8015665 (= e!4721777 (or (not (= lt!2718420 Nil!74794)) (= lt!2718494 lt!2718419)))))

(declare-fun b!8015663 () Bool)

(assert (=> b!8015663 (= e!4721776 (Cons!74794 (h!81242 lt!2718419) (++!18515 (t!390661 lt!2718419) lt!2718420)))))

(declare-fun b!8015662 () Bool)

(assert (=> b!8015662 (= e!4721776 lt!2718420)))

(declare-fun b!8015664 () Bool)

(declare-fun res!3169407 () Bool)

(assert (=> b!8015664 (=> (not res!3169407) (not e!4721777))))

(assert (=> b!8015664 (= res!3169407 (= (size!43591 lt!2718494) (+ (size!43591 lt!2718419) (size!43591 lt!2718420))))))

(assert (= (and d!2389829 c!1471200) b!8015662))

(assert (= (and d!2389829 (not c!1471200)) b!8015663))

(assert (= (and d!2389829 res!3169406) b!8015664))

(assert (= (and b!8015664 res!3169407) b!8015665))

(declare-fun m!8378954 () Bool)

(assert (=> d!2389829 m!8378954))

(declare-fun m!8378956 () Bool)

(assert (=> d!2389829 m!8378956))

(declare-fun m!8378958 () Bool)

(assert (=> d!2389829 m!8378958))

(declare-fun m!8378960 () Bool)

(assert (=> b!8015663 m!8378960))

(declare-fun m!8378962 () Bool)

(assert (=> b!8015664 m!8378962))

(assert (=> b!8015664 m!8378748))

(declare-fun m!8378964 () Bool)

(assert (=> b!8015664 m!8378964))

(assert (=> b!8015493 d!2389829))

(declare-fun d!2389831 () Bool)

(declare-fun e!4721792 () Bool)

(assert (=> d!2389831 e!4721792))

(declare-fun res!3169419 () Bool)

(assert (=> d!2389831 (=> res!3169419 e!4721792)))

(declare-fun lt!2718495 () Bool)

(assert (=> d!2389831 (= res!3169419 (not lt!2718495))))

(declare-fun e!4721791 () Bool)

(assert (=> d!2389831 (= lt!2718495 e!4721791)))

(declare-fun res!3169416 () Bool)

(assert (=> d!2389831 (=> res!3169416 e!4721791)))

(assert (=> d!2389831 (= res!3169416 ((_ is Nil!74794) (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(assert (=> d!2389831 (= (isPrefix!6741 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) totalInput!1349) lt!2718495)))

(declare-fun b!8015681 () Bool)

(declare-fun res!3169418 () Bool)

(declare-fun e!4721790 () Bool)

(assert (=> b!8015681 (=> (not res!3169418) (not e!4721790))))

(assert (=> b!8015681 (= res!3169418 (= (head!16363 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) (head!16363 totalInput!1349)))))

(declare-fun b!8015680 () Bool)

(assert (=> b!8015680 (= e!4721791 e!4721790)))

(declare-fun res!3169417 () Bool)

(assert (=> b!8015680 (=> (not res!3169417) (not e!4721790))))

(assert (=> b!8015680 (= res!3169417 (not ((_ is Nil!74794) totalInput!1349)))))

(declare-fun b!8015683 () Bool)

(assert (=> b!8015683 (= e!4721792 (>= (size!43591 totalInput!1349) (size!43591 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(declare-fun b!8015682 () Bool)

(assert (=> b!8015682 (= e!4721790 (isPrefix!6741 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) (tail!15886 totalInput!1349)))))

(assert (= (and d!2389831 (not res!3169416)) b!8015680))

(assert (= (and b!8015680 res!3169417) b!8015681))

(assert (= (and b!8015681 res!3169418) b!8015682))

(assert (= (and d!2389831 (not res!3169419)) b!8015683))

(assert (=> b!8015681 m!8378728))

(declare-fun m!8378966 () Bool)

(assert (=> b!8015681 m!8378966))

(assert (=> b!8015681 m!8378778))

(assert (=> b!8015683 m!8378754))

(assert (=> b!8015683 m!8378728))

(declare-fun m!8378968 () Bool)

(assert (=> b!8015683 m!8378968))

(assert (=> b!8015682 m!8378728))

(declare-fun m!8378970 () Bool)

(assert (=> b!8015682 m!8378970))

(assert (=> b!8015682 m!8378782))

(assert (=> b!8015682 m!8378970))

(assert (=> b!8015682 m!8378782))

(declare-fun m!8378972 () Bool)

(assert (=> b!8015682 m!8378972))

(assert (=> b!8015493 d!2389831))

(declare-fun d!2389833 () Bool)

(assert (=> d!2389833 (= (head!16363 lt!2718417) (h!81242 lt!2718417))))

(assert (=> b!8015493 d!2389833))

(declare-fun d!2389835 () Bool)

(assert (=> d!2389835 (= (++!18515 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)) lt!2718420) totalInput!1349)))

(declare-fun lt!2718502 () Unit!170874)

(declare-fun choose!60414 (List!74918 C!43716 List!74918 List!74918) Unit!170874)

(assert (=> d!2389835 (= lt!2718502 (choose!60414 testedP!353 lt!2718413 lt!2718420 totalInput!1349))))

(assert (=> d!2389835 (= (++!18515 testedP!353 (Cons!74794 lt!2718413 lt!2718420)) totalInput!1349)))

(assert (=> d!2389835 (= (lemmaMoveElementToOtherListKeepsConcatEq!3596 testedP!353 lt!2718413 lt!2718420 totalInput!1349) lt!2718502)))

(declare-fun bs!1971024 () Bool)

(assert (= bs!1971024 d!2389835))

(assert (=> bs!1971024 m!8378742))

(assert (=> bs!1971024 m!8378742))

(declare-fun m!8378984 () Bool)

(assert (=> bs!1971024 m!8378984))

(declare-fun m!8378986 () Bool)

(assert (=> bs!1971024 m!8378986))

(declare-fun m!8378988 () Bool)

(assert (=> bs!1971024 m!8378988))

(assert (=> b!8015493 d!2389835))

(declare-fun d!2389843 () Bool)

(declare-fun e!4721813 () Bool)

(assert (=> d!2389843 e!4721813))

(declare-fun res!3169425 () Bool)

(assert (=> d!2389843 (=> (not res!3169425) (not e!4721813))))

(declare-fun lt!2718503 () List!74918)

(assert (=> d!2389843 (= res!3169425 (= (content!15920 lt!2718503) ((_ map or) (content!15920 testedP!353) (content!15920 (Cons!74794 lt!2718413 Nil!74794)))))))

(declare-fun e!4721812 () List!74918)

(assert (=> d!2389843 (= lt!2718503 e!4721812)))

(declare-fun c!1471219 () Bool)

(assert (=> d!2389843 (= c!1471219 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389843 (= (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)) lt!2718503)))

(declare-fun b!8015720 () Bool)

(assert (=> b!8015720 (= e!4721813 (or (not (= (Cons!74794 lt!2718413 Nil!74794) Nil!74794)) (= lt!2718503 testedP!353)))))

(declare-fun b!8015718 () Bool)

(assert (=> b!8015718 (= e!4721812 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) (Cons!74794 lt!2718413 Nil!74794))))))

(declare-fun b!8015717 () Bool)

(assert (=> b!8015717 (= e!4721812 (Cons!74794 lt!2718413 Nil!74794))))

(declare-fun b!8015719 () Bool)

(declare-fun res!3169426 () Bool)

(assert (=> b!8015719 (=> (not res!3169426) (not e!4721813))))

(assert (=> b!8015719 (= res!3169426 (= (size!43591 lt!2718503) (+ (size!43591 testedP!353) (size!43591 (Cons!74794 lt!2718413 Nil!74794)))))))

(assert (= (and d!2389843 c!1471219) b!8015717))

(assert (= (and d!2389843 (not c!1471219)) b!8015718))

(assert (= (and d!2389843 res!3169425) b!8015719))

(assert (= (and b!8015719 res!3169426) b!8015720))

(declare-fun m!8378990 () Bool)

(assert (=> d!2389843 m!8378990))

(assert (=> d!2389843 m!8378810))

(declare-fun m!8378992 () Bool)

(assert (=> d!2389843 m!8378992))

(declare-fun m!8378994 () Bool)

(assert (=> b!8015718 m!8378994))

(declare-fun m!8378996 () Bool)

(assert (=> b!8015719 m!8378996))

(assert (=> b!8015719 m!8378762))

(declare-fun m!8378998 () Bool)

(assert (=> b!8015719 m!8378998))

(assert (=> b!8015493 d!2389843))

(declare-fun d!2389845 () Bool)

(assert (=> d!2389845 (= (tail!15886 testedSuffix!271) (t!390661 testedSuffix!271))))

(assert (=> b!8015493 d!2389845))

(declare-fun d!2389847 () Bool)

(declare-fun e!4721815 () Bool)

(assert (=> d!2389847 e!4721815))

(declare-fun res!3169427 () Bool)

(assert (=> d!2389847 (=> (not res!3169427) (not e!4721815))))

(declare-fun lt!2718504 () List!74918)

(assert (=> d!2389847 (= res!3169427 (= (content!15920 lt!2718504) ((_ map or) (content!15920 testedP!353) (content!15920 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(declare-fun e!4721814 () List!74918)

(assert (=> d!2389847 (= lt!2718504 e!4721814)))

(declare-fun c!1471220 () Bool)

(assert (=> d!2389847 (= c!1471220 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389847 (= (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) lt!2718504)))

(declare-fun b!8015724 () Bool)

(assert (=> b!8015724 (= e!4721815 (or (not (= (Cons!74794 (head!16363 lt!2718417) Nil!74794) Nil!74794)) (= lt!2718504 testedP!353)))))

(declare-fun b!8015722 () Bool)

(assert (=> b!8015722 (= e!4721814 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(declare-fun b!8015721 () Bool)

(assert (=> b!8015721 (= e!4721814 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))

(declare-fun b!8015723 () Bool)

(declare-fun res!3169428 () Bool)

(assert (=> b!8015723 (=> (not res!3169428) (not e!4721815))))

(assert (=> b!8015723 (= res!3169428 (= (size!43591 lt!2718504) (+ (size!43591 testedP!353) (size!43591 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(assert (= (and d!2389847 c!1471220) b!8015721))

(assert (= (and d!2389847 (not c!1471220)) b!8015722))

(assert (= (and d!2389847 res!3169427) b!8015723))

(assert (= (and b!8015723 res!3169428) b!8015724))

(declare-fun m!8379000 () Bool)

(assert (=> d!2389847 m!8379000))

(assert (=> d!2389847 m!8378810))

(declare-fun m!8379002 () Bool)

(assert (=> d!2389847 m!8379002))

(declare-fun m!8379004 () Bool)

(assert (=> b!8015722 m!8379004))

(declare-fun m!8379006 () Bool)

(assert (=> b!8015723 m!8379006))

(assert (=> b!8015723 m!8378762))

(declare-fun m!8379008 () Bool)

(assert (=> b!8015723 m!8379008))

(assert (=> b!8015493 d!2389847))

(declare-fun d!2389849 () Bool)

(assert (=> d!2389849 (= (head!16363 testedSuffix!271) (h!81242 testedSuffix!271))))

(assert (=> b!8015493 d!2389849))

(declare-fun d!2389851 () Bool)

(declare-fun lostCauseFct!618 (Regex!21689) Bool)

(assert (=> d!2389851 (= (lostCause!2076 r!15422) (lostCauseFct!618 r!15422))))

(declare-fun bs!1971025 () Bool)

(assert (= bs!1971025 d!2389851))

(declare-fun m!8379018 () Bool)

(assert (=> bs!1971025 m!8379018))

(assert (=> b!8015483 d!2389851))

(declare-fun d!2389853 () Bool)

(assert (=> d!2389853 (= testedSuffix!271 lt!2718417)))

(declare-fun lt!2718508 () Unit!170874)

(declare-fun choose!60415 (List!74918 List!74918 List!74918 List!74918 List!74918) Unit!170874)

(assert (=> d!2389853 (= lt!2718508 (choose!60415 testedP!353 testedSuffix!271 testedP!353 lt!2718417 totalInput!1349))))

(assert (=> d!2389853 (isPrefix!6741 testedP!353 totalInput!1349)))

(assert (=> d!2389853 (= (lemmaSamePrefixThenSameSuffix!3098 testedP!353 testedSuffix!271 testedP!353 lt!2718417 totalInput!1349) lt!2718508)))

(declare-fun bs!1971026 () Bool)

(assert (= bs!1971026 d!2389853))

(declare-fun m!8379020 () Bool)

(assert (=> bs!1971026 m!8379020))

(assert (=> bs!1971026 m!8378722))

(assert (=> b!8015483 d!2389853))

(declare-fun d!2389855 () Bool)

(declare-fun lt!2718511 () List!74918)

(assert (=> d!2389855 (= (++!18515 testedP!353 lt!2718511) totalInput!1349)))

(declare-fun e!4721835 () List!74918)

(assert (=> d!2389855 (= lt!2718511 e!4721835)))

(declare-fun c!1471228 () Bool)

(assert (=> d!2389855 (= c!1471228 ((_ is Cons!74794) testedP!353))))

(assert (=> d!2389855 (>= (size!43591 totalInput!1349) (size!43591 testedP!353))))

(assert (=> d!2389855 (= (getSuffix!3936 totalInput!1349 testedP!353) lt!2718511)))

(declare-fun b!8015776 () Bool)

(assert (=> b!8015776 (= e!4721835 (getSuffix!3936 (tail!15886 totalInput!1349) (t!390661 testedP!353)))))

(declare-fun b!8015777 () Bool)

(assert (=> b!8015777 (= e!4721835 totalInput!1349)))

(assert (= (and d!2389855 c!1471228) b!8015776))

(assert (= (and d!2389855 (not c!1471228)) b!8015777))

(declare-fun m!8379022 () Bool)

(assert (=> d!2389855 m!8379022))

(assert (=> d!2389855 m!8378754))

(assert (=> d!2389855 m!8378762))

(assert (=> b!8015776 m!8378782))

(assert (=> b!8015776 m!8378782))

(declare-fun m!8379024 () Bool)

(assert (=> b!8015776 m!8379024))

(assert (=> b!8015483 d!2389855))

(declare-fun b!8015789 () Bool)

(declare-fun e!4721838 () Bool)

(declare-fun tp!2399217 () Bool)

(declare-fun tp!2399214 () Bool)

(assert (=> b!8015789 (= e!4721838 (and tp!2399217 tp!2399214))))

(declare-fun b!8015788 () Bool)

(assert (=> b!8015788 (= e!4721838 tp_is_empty!53921)))

(assert (=> b!8015495 (= tp!2399156 e!4721838)))

(declare-fun b!8015791 () Bool)

(declare-fun tp!2399215 () Bool)

(declare-fun tp!2399213 () Bool)

(assert (=> b!8015791 (= e!4721838 (and tp!2399215 tp!2399213))))

(declare-fun b!8015790 () Bool)

(declare-fun tp!2399216 () Bool)

(assert (=> b!8015790 (= e!4721838 tp!2399216)))

(assert (= (and b!8015495 ((_ is ElementMatch!21689) (regOne!43891 r!15422))) b!8015788))

(assert (= (and b!8015495 ((_ is Concat!30688) (regOne!43891 r!15422))) b!8015789))

(assert (= (and b!8015495 ((_ is Star!21689) (regOne!43891 r!15422))) b!8015790))

(assert (= (and b!8015495 ((_ is Union!21689) (regOne!43891 r!15422))) b!8015791))

(declare-fun b!8015793 () Bool)

(declare-fun e!4721839 () Bool)

(declare-fun tp!2399222 () Bool)

(declare-fun tp!2399219 () Bool)

(assert (=> b!8015793 (= e!4721839 (and tp!2399222 tp!2399219))))

(declare-fun b!8015792 () Bool)

(assert (=> b!8015792 (= e!4721839 tp_is_empty!53921)))

(assert (=> b!8015495 (= tp!2399160 e!4721839)))

(declare-fun b!8015795 () Bool)

(declare-fun tp!2399220 () Bool)

(declare-fun tp!2399218 () Bool)

(assert (=> b!8015795 (= e!4721839 (and tp!2399220 tp!2399218))))

(declare-fun b!8015794 () Bool)

(declare-fun tp!2399221 () Bool)

(assert (=> b!8015794 (= e!4721839 tp!2399221)))

(assert (= (and b!8015495 ((_ is ElementMatch!21689) (regTwo!43891 r!15422))) b!8015792))

(assert (= (and b!8015495 ((_ is Concat!30688) (regTwo!43891 r!15422))) b!8015793))

(assert (= (and b!8015495 ((_ is Star!21689) (regTwo!43891 r!15422))) b!8015794))

(assert (= (and b!8015495 ((_ is Union!21689) (regTwo!43891 r!15422))) b!8015795))

(declare-fun b!8015797 () Bool)

(declare-fun e!4721840 () Bool)

(declare-fun tp!2399227 () Bool)

(declare-fun tp!2399224 () Bool)

(assert (=> b!8015797 (= e!4721840 (and tp!2399227 tp!2399224))))

(declare-fun b!8015796 () Bool)

(assert (=> b!8015796 (= e!4721840 tp_is_empty!53921)))

(assert (=> b!8015491 (= tp!2399159 e!4721840)))

(declare-fun b!8015799 () Bool)

(declare-fun tp!2399225 () Bool)

(declare-fun tp!2399223 () Bool)

(assert (=> b!8015799 (= e!4721840 (and tp!2399225 tp!2399223))))

(declare-fun b!8015798 () Bool)

(declare-fun tp!2399226 () Bool)

(assert (=> b!8015798 (= e!4721840 tp!2399226)))

(assert (= (and b!8015491 ((_ is ElementMatch!21689) (regOne!43890 r!15422))) b!8015796))

(assert (= (and b!8015491 ((_ is Concat!30688) (regOne!43890 r!15422))) b!8015797))

(assert (= (and b!8015491 ((_ is Star!21689) (regOne!43890 r!15422))) b!8015798))

(assert (= (and b!8015491 ((_ is Union!21689) (regOne!43890 r!15422))) b!8015799))

(declare-fun b!8015801 () Bool)

(declare-fun e!4721841 () Bool)

(declare-fun tp!2399232 () Bool)

(declare-fun tp!2399229 () Bool)

(assert (=> b!8015801 (= e!4721841 (and tp!2399232 tp!2399229))))

(declare-fun b!8015800 () Bool)

(assert (=> b!8015800 (= e!4721841 tp_is_empty!53921)))

(assert (=> b!8015491 (= tp!2399162 e!4721841)))

(declare-fun b!8015803 () Bool)

(declare-fun tp!2399230 () Bool)

(declare-fun tp!2399228 () Bool)

(assert (=> b!8015803 (= e!4721841 (and tp!2399230 tp!2399228))))

(declare-fun b!8015802 () Bool)

(declare-fun tp!2399231 () Bool)

(assert (=> b!8015802 (= e!4721841 tp!2399231)))

(assert (= (and b!8015491 ((_ is ElementMatch!21689) (regTwo!43890 r!15422))) b!8015800))

(assert (= (and b!8015491 ((_ is Concat!30688) (regTwo!43890 r!15422))) b!8015801))

(assert (= (and b!8015491 ((_ is Star!21689) (regTwo!43890 r!15422))) b!8015802))

(assert (= (and b!8015491 ((_ is Union!21689) (regTwo!43890 r!15422))) b!8015803))

(declare-fun b!8015808 () Bool)

(declare-fun e!4721844 () Bool)

(declare-fun tp!2399235 () Bool)

(assert (=> b!8015808 (= e!4721844 (and tp_is_empty!53921 tp!2399235))))

(assert (=> b!8015482 (= tp!2399161 e!4721844)))

(assert (= (and b!8015482 ((_ is Cons!74794) (t!390661 testedSuffix!271))) b!8015808))

(declare-fun b!8015809 () Bool)

(declare-fun e!4721845 () Bool)

(declare-fun tp!2399236 () Bool)

(assert (=> b!8015809 (= e!4721845 (and tp_is_empty!53921 tp!2399236))))

(assert (=> b!8015488 (= tp!2399157 e!4721845)))

(assert (= (and b!8015488 ((_ is Cons!74794) (t!390661 testedP!353))) b!8015809))

(declare-fun b!8015810 () Bool)

(declare-fun e!4721846 () Bool)

(declare-fun tp!2399237 () Bool)

(assert (=> b!8015810 (= e!4721846 (and tp_is_empty!53921 tp!2399237))))

(assert (=> b!8015484 (= tp!2399155 e!4721846)))

(assert (= (and b!8015484 ((_ is Cons!74794) (t!390661 totalInput!1349))) b!8015810))

(declare-fun b!8015812 () Bool)

(declare-fun e!4721847 () Bool)

(declare-fun tp!2399242 () Bool)

(declare-fun tp!2399239 () Bool)

(assert (=> b!8015812 (= e!4721847 (and tp!2399242 tp!2399239))))

(declare-fun b!8015811 () Bool)

(assert (=> b!8015811 (= e!4721847 tp_is_empty!53921)))

(assert (=> b!8015489 (= tp!2399158 e!4721847)))

(declare-fun b!8015814 () Bool)

(declare-fun tp!2399240 () Bool)

(declare-fun tp!2399238 () Bool)

(assert (=> b!8015814 (= e!4721847 (and tp!2399240 tp!2399238))))

(declare-fun b!8015813 () Bool)

(declare-fun tp!2399241 () Bool)

(assert (=> b!8015813 (= e!4721847 tp!2399241)))

(assert (= (and b!8015489 ((_ is ElementMatch!21689) (reg!22018 r!15422))) b!8015811))

(assert (= (and b!8015489 ((_ is Concat!30688) (reg!22018 r!15422))) b!8015812))

(assert (= (and b!8015489 ((_ is Star!21689) (reg!22018 r!15422))) b!8015813))

(assert (= (and b!8015489 ((_ is Union!21689) (reg!22018 r!15422))) b!8015814))

(check-sat (not bm!744559) (not d!2389813) (not b!8015663) (not d!2389829) (not d!2389763) tp_is_empty!53921 (not d!2389767) (not d!2389835) (not b!8015808) (not b!8015790) (not b!8015718) (not b!8015513) (not b!8015797) (not b!8015723) (not d!2389847) (not b!8015789) (not b!8015681) (not b!8015810) (not b!8015719) (not b!8015510) (not d!2389781) (not d!2389761) (not b!8015517) (not b!8015508) (not b!8015629) (not b!8015803) (not b!8015794) (not b!8015801) (not b!8015592) (not b!8015809) (not d!2389753) (not d!2389853) (not b!8015813) (not b!8015683) (not b!8015793) (not b!8015722) (not d!2389771) (not d!2389827) (not b!8015540) (not b!8015799) (not b!8015798) (not b!8015538) (not b!8015516) (not bm!744558) (not b!8015814) (not bm!744551) (not bm!744548) (not b!8015682) (not b!8015518) (not b!8015514) (not b!8015791) (not d!2389851) (not b!8015512) (not b!8015776) (not b!8015812) (not b!8015534) (not b!8015802) (not b!8015524) (not b!8015509) (not b!8015664) (not d!2389855) (not d!2389843) (not b!8015795) (not b!8015535))
(check-sat)
(get-model)

(declare-fun d!2389901 () Bool)

(declare-fun lt!2718520 () Int)

(assert (=> d!2389901 (>= lt!2718520 0)))

(declare-fun e!4721887 () Int)

(assert (=> d!2389901 (= lt!2718520 e!4721887)))

(declare-fun c!1471244 () Bool)

(assert (=> d!2389901 (= c!1471244 ((_ is Nil!74794) (t!390661 totalInput!1349)))))

(assert (=> d!2389901 (= (size!43591 (t!390661 totalInput!1349)) lt!2718520)))

(declare-fun b!8015874 () Bool)

(assert (=> b!8015874 (= e!4721887 0)))

(declare-fun b!8015875 () Bool)

(assert (=> b!8015875 (= e!4721887 (+ 1 (size!43591 (t!390661 (t!390661 totalInput!1349)))))))

(assert (= (and d!2389901 c!1471244) b!8015874))

(assert (= (and d!2389901 (not c!1471244)) b!8015875))

(declare-fun m!8379098 () Bool)

(assert (=> b!8015875 m!8379098))

(assert (=> b!8015538 d!2389901))

(declare-fun b!8015883 () Bool)

(declare-fun e!4721895 () Regex!21689)

(declare-fun call!744599 () Regex!21689)

(assert (=> b!8015883 (= e!4721895 (Union!21689 (Concat!30688 call!744599 (regTwo!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))) EmptyLang!21689))))

(declare-fun d!2389903 () Bool)

(declare-fun lt!2718521 () Regex!21689)

(assert (=> d!2389903 (validRegex!11993 lt!2718521)))

(declare-fun e!4721894 () Regex!21689)

(assert (=> d!2389903 (= lt!2718521 e!4721894)))

(declare-fun c!1471248 () Bool)

(assert (=> d!2389903 (= c!1471248 (or ((_ is EmptyExpr!21689) (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))) ((_ is EmptyLang!21689) (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))))))

(assert (=> d!2389903 (validRegex!11993 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))))

(assert (=> d!2389903 (= (derivativeStep!6640 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))) lt!2718413) lt!2718521)))

(declare-fun c!1471249 () Bool)

(declare-fun c!1471250 () Bool)

(declare-fun call!744598 () Regex!21689)

(declare-fun bm!744591 () Bool)

(declare-fun c!1471247 () Bool)

(assert (=> bm!744591 (= call!744598 (derivativeStep!6640 (ite c!1471249 (regTwo!43891 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))) (ite c!1471250 (reg!22018 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))) (ite c!1471247 (regTwo!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))) (regOne!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))))) lt!2718413))))

(declare-fun e!4721897 () Regex!21689)

(declare-fun b!8015884 () Bool)

(assert (=> b!8015884 (= e!4721897 (ite (= lt!2718413 (c!1471158 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))) EmptyExpr!21689 EmptyLang!21689))))

(declare-fun bm!744592 () Bool)

(declare-fun call!744597 () Regex!21689)

(assert (=> bm!744592 (= call!744597 call!744598)))

(declare-fun e!4721898 () Regex!21689)

(declare-fun b!8015885 () Bool)

(assert (=> b!8015885 (= e!4721898 (Concat!30688 call!744597 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))))))

(declare-fun bm!744593 () Bool)

(assert (=> bm!744593 (= call!744599 call!744597)))

(declare-fun b!8015886 () Bool)

(assert (=> b!8015886 (= e!4721894 e!4721897)))

(declare-fun c!1471246 () Bool)

(assert (=> b!8015886 (= c!1471246 ((_ is ElementMatch!21689) (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))))))

(declare-fun bm!744594 () Bool)

(declare-fun call!744596 () Regex!21689)

(assert (=> bm!744594 (= call!744596 (derivativeStep!6640 (ite c!1471249 (regOne!43891 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))) (regOne!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))) lt!2718413))))

(declare-fun b!8015887 () Bool)

(assert (=> b!8015887 (= e!4721894 EmptyLang!21689)))

(declare-fun b!8015888 () Bool)

(assert (=> b!8015888 (= e!4721895 (Union!21689 (Concat!30688 call!744596 (regTwo!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))) call!744599))))

(declare-fun b!8015889 () Bool)

(assert (=> b!8015889 (= c!1471249 ((_ is Union!21689) (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))))))

(declare-fun e!4721896 () Regex!21689)

(assert (=> b!8015889 (= e!4721897 e!4721896)))

(declare-fun b!8015890 () Bool)

(assert (=> b!8015890 (= e!4721896 (Union!21689 call!744596 call!744598))))

(declare-fun b!8015891 () Bool)

(assert (=> b!8015891 (= e!4721896 e!4721898)))

(assert (=> b!8015891 (= c!1471250 ((_ is Star!21689) (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422))))))))

(declare-fun b!8015892 () Bool)

(assert (=> b!8015892 (= c!1471247 (nullable!9731 (regOne!43890 (ite c!1471183 (regTwo!43891 r!15422) (ite c!1471184 (reg!22018 r!15422) (ite c!1471181 (regTwo!43890 r!15422) (regOne!43890 r!15422)))))))))

(assert (=> b!8015892 (= e!4721898 e!4721895)))

(assert (= (and d!2389903 c!1471248) b!8015887))

(assert (= (and d!2389903 (not c!1471248)) b!8015886))

(assert (= (and b!8015886 c!1471246) b!8015884))

(assert (= (and b!8015886 (not c!1471246)) b!8015889))

(assert (= (and b!8015889 c!1471249) b!8015890))

(assert (= (and b!8015889 (not c!1471249)) b!8015891))

(assert (= (and b!8015891 c!1471250) b!8015885))

(assert (= (and b!8015891 (not c!1471250)) b!8015892))

(assert (= (and b!8015892 c!1471247) b!8015888))

(assert (= (and b!8015892 (not c!1471247)) b!8015883))

(assert (= (or b!8015888 b!8015883) bm!744593))

(assert (= (or b!8015885 bm!744593) bm!744592))

(assert (= (or b!8015890 bm!744592) bm!744591))

(assert (= (or b!8015890 b!8015888) bm!744594))

(declare-fun m!8379104 () Bool)

(assert (=> d!2389903 m!8379104))

(declare-fun m!8379106 () Bool)

(assert (=> d!2389903 m!8379106))

(declare-fun m!8379110 () Bool)

(assert (=> bm!744591 m!8379110))

(declare-fun m!8379114 () Bool)

(assert (=> bm!744594 m!8379114))

(declare-fun m!8379118 () Bool)

(assert (=> b!8015892 m!8379118))

(assert (=> bm!744548 d!2389903))

(declare-fun d!2389907 () Bool)

(assert (=> d!2389907 (= totalInput!1349 testedP!353)))

(assert (=> d!2389907 true))

(declare-fun _$60!1408 () Unit!170874)

(assert (=> d!2389907 (= (choose!60410 totalInput!1349 testedP!353 totalInput!1349) _$60!1408)))

(assert (=> d!2389767 d!2389907))

(assert (=> d!2389767 d!2389765))

(declare-fun d!2389917 () Bool)

(declare-fun e!4721912 () Bool)

(assert (=> d!2389917 e!4721912))

(declare-fun res!3169467 () Bool)

(assert (=> d!2389917 (=> (not res!3169467) (not e!4721912))))

(declare-fun lt!2718526 () List!74918)

(assert (=> d!2389917 (= res!3169467 (= (content!15920 lt!2718526) ((_ map or) (content!15920 (t!390661 lt!2718419)) (content!15920 lt!2718420))))))

(declare-fun e!4721911 () List!74918)

(assert (=> d!2389917 (= lt!2718526 e!4721911)))

(declare-fun c!1471260 () Bool)

(assert (=> d!2389917 (= c!1471260 ((_ is Nil!74794) (t!390661 lt!2718419)))))

(assert (=> d!2389917 (= (++!18515 (t!390661 lt!2718419) lt!2718420) lt!2718526)))

(declare-fun b!8015918 () Bool)

(assert (=> b!8015918 (= e!4721912 (or (not (= lt!2718420 Nil!74794)) (= lt!2718526 (t!390661 lt!2718419))))))

(declare-fun b!8015916 () Bool)

(assert (=> b!8015916 (= e!4721911 (Cons!74794 (h!81242 (t!390661 lt!2718419)) (++!18515 (t!390661 (t!390661 lt!2718419)) lt!2718420)))))

(declare-fun b!8015915 () Bool)

(assert (=> b!8015915 (= e!4721911 lt!2718420)))

(declare-fun b!8015917 () Bool)

(declare-fun res!3169468 () Bool)

(assert (=> b!8015917 (=> (not res!3169468) (not e!4721912))))

(assert (=> b!8015917 (= res!3169468 (= (size!43591 lt!2718526) (+ (size!43591 (t!390661 lt!2718419)) (size!43591 lt!2718420))))))

(assert (= (and d!2389917 c!1471260) b!8015915))

(assert (= (and d!2389917 (not c!1471260)) b!8015916))

(assert (= (and d!2389917 res!3169467) b!8015917))

(assert (= (and b!8015917 res!3169468) b!8015918))

(declare-fun m!8379142 () Bool)

(assert (=> d!2389917 m!8379142))

(declare-fun m!8379144 () Bool)

(assert (=> d!2389917 m!8379144))

(assert (=> d!2389917 m!8378958))

(declare-fun m!8379146 () Bool)

(assert (=> b!8015916 m!8379146))

(declare-fun m!8379148 () Bool)

(assert (=> b!8015917 m!8379148))

(assert (=> b!8015917 m!8378824))

(assert (=> b!8015917 m!8378964))

(assert (=> b!8015663 d!2389917))

(declare-fun d!2389927 () Bool)

(declare-fun e!4721916 () Bool)

(assert (=> d!2389927 e!4721916))

(declare-fun res!3169472 () Bool)

(assert (=> d!2389927 (=> res!3169472 e!4721916)))

(declare-fun lt!2718527 () Bool)

(assert (=> d!2389927 (= res!3169472 (not lt!2718527))))

(declare-fun e!4721915 () Bool)

(assert (=> d!2389927 (= lt!2718527 e!4721915)))

(declare-fun res!3169469 () Bool)

(assert (=> d!2389927 (=> res!3169469 e!4721915)))

(assert (=> d!2389927 (= res!3169469 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389927 (= (isPrefix!6741 testedP!353 (++!18515 testedP!353 testedSuffix!271)) lt!2718527)))

(declare-fun b!8015922 () Bool)

(declare-fun res!3169471 () Bool)

(declare-fun e!4721914 () Bool)

(assert (=> b!8015922 (=> (not res!3169471) (not e!4721914))))

(assert (=> b!8015922 (= res!3169471 (= (head!16363 testedP!353) (head!16363 (++!18515 testedP!353 testedSuffix!271))))))

(declare-fun b!8015921 () Bool)

(assert (=> b!8015921 (= e!4721915 e!4721914)))

(declare-fun res!3169470 () Bool)

(assert (=> b!8015921 (=> (not res!3169470) (not e!4721914))))

(assert (=> b!8015921 (= res!3169470 (not ((_ is Nil!74794) (++!18515 testedP!353 testedSuffix!271))))))

(declare-fun b!8015924 () Bool)

(assert (=> b!8015924 (= e!4721916 (>= (size!43591 (++!18515 testedP!353 testedSuffix!271)) (size!43591 testedP!353)))))

(declare-fun b!8015923 () Bool)

(assert (=> b!8015923 (= e!4721914 (isPrefix!6741 (tail!15886 testedP!353) (tail!15886 (++!18515 testedP!353 testedSuffix!271))))))

(assert (= (and d!2389927 (not res!3169469)) b!8015921))

(assert (= (and b!8015921 res!3169470) b!8015922))

(assert (= (and b!8015922 res!3169471) b!8015923))

(assert (= (and d!2389927 (not res!3169472)) b!8015924))

(assert (=> b!8015922 m!8378776))

(assert (=> b!8015922 m!8378752))

(declare-fun m!8379150 () Bool)

(assert (=> b!8015922 m!8379150))

(assert (=> b!8015924 m!8378752))

(declare-fun m!8379152 () Bool)

(assert (=> b!8015924 m!8379152))

(assert (=> b!8015924 m!8378762))

(assert (=> b!8015923 m!8378780))

(assert (=> b!8015923 m!8378752))

(declare-fun m!8379154 () Bool)

(assert (=> b!8015923 m!8379154))

(assert (=> b!8015923 m!8378780))

(assert (=> b!8015923 m!8379154))

(declare-fun m!8379156 () Bool)

(assert (=> b!8015923 m!8379156))

(assert (=> d!2389761 d!2389927))

(assert (=> d!2389761 d!2389771))

(declare-fun d!2389931 () Bool)

(assert (=> d!2389931 (isPrefix!6741 testedP!353 (++!18515 testedP!353 testedSuffix!271))))

(assert (=> d!2389931 true))

(declare-fun _$46!2172 () Unit!170874)

(assert (=> d!2389931 (= (choose!60407 testedP!353 testedSuffix!271) _$46!2172)))

(declare-fun bs!1971031 () Bool)

(assert (= bs!1971031 d!2389931))

(assert (=> bs!1971031 m!8378752))

(assert (=> bs!1971031 m!8378752))

(assert (=> bs!1971031 m!8378794))

(assert (=> d!2389761 d!2389931))

(declare-fun d!2389941 () Bool)

(declare-fun c!1471277 () Bool)

(assert (=> d!2389941 (= c!1471277 ((_ is Nil!74794) lt!2718503))))

(declare-fun e!4721938 () (InoxSet C!43716))

(assert (=> d!2389941 (= (content!15920 lt!2718503) e!4721938)))

(declare-fun b!8015962 () Bool)

(assert (=> b!8015962 (= e!4721938 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8015963 () Bool)

(assert (=> b!8015963 (= e!4721938 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718503) true) (content!15920 (t!390661 lt!2718503))))))

(assert (= (and d!2389941 c!1471277) b!8015962))

(assert (= (and d!2389941 (not c!1471277)) b!8015963))

(declare-fun m!8379194 () Bool)

(assert (=> b!8015963 m!8379194))

(declare-fun m!8379196 () Bool)

(assert (=> b!8015963 m!8379196))

(assert (=> d!2389843 d!2389941))

(declare-fun d!2389951 () Bool)

(declare-fun c!1471278 () Bool)

(assert (=> d!2389951 (= c!1471278 ((_ is Nil!74794) testedP!353))))

(declare-fun e!4721939 () (InoxSet C!43716))

(assert (=> d!2389951 (= (content!15920 testedP!353) e!4721939)))

(declare-fun b!8015964 () Bool)

(assert (=> b!8015964 (= e!4721939 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8015965 () Bool)

(assert (=> b!8015965 (= e!4721939 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 testedP!353) true) (content!15920 (t!390661 testedP!353))))))

(assert (= (and d!2389951 c!1471278) b!8015964))

(assert (= (and d!2389951 (not c!1471278)) b!8015965))

(declare-fun m!8379198 () Bool)

(assert (=> b!8015965 m!8379198))

(declare-fun m!8379200 () Bool)

(assert (=> b!8015965 m!8379200))

(assert (=> d!2389843 d!2389951))

(declare-fun d!2389953 () Bool)

(declare-fun c!1471279 () Bool)

(assert (=> d!2389953 (= c!1471279 ((_ is Nil!74794) (Cons!74794 lt!2718413 Nil!74794)))))

(declare-fun e!4721940 () (InoxSet C!43716))

(assert (=> d!2389953 (= (content!15920 (Cons!74794 lt!2718413 Nil!74794)) e!4721940)))

(declare-fun b!8015966 () Bool)

(assert (=> b!8015966 (= e!4721940 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8015967 () Bool)

(assert (=> b!8015967 (= e!4721940 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 (Cons!74794 lt!2718413 Nil!74794)) true) (content!15920 (t!390661 (Cons!74794 lt!2718413 Nil!74794)))))))

(assert (= (and d!2389953 c!1471279) b!8015966))

(assert (= (and d!2389953 (not c!1471279)) b!8015967))

(declare-fun m!8379202 () Bool)

(assert (=> b!8015967 m!8379202))

(declare-fun m!8379204 () Bool)

(assert (=> b!8015967 m!8379204))

(assert (=> d!2389843 d!2389953))

(declare-fun d!2389955 () Bool)

(declare-fun lt!2718533 () Int)

(assert (=> d!2389955 (>= lt!2718533 0)))

(declare-fun e!4721941 () Int)

(assert (=> d!2389955 (= lt!2718533 e!4721941)))

(declare-fun c!1471280 () Bool)

(assert (=> d!2389955 (= c!1471280 ((_ is Nil!74794) lt!2718494))))

(assert (=> d!2389955 (= (size!43591 lt!2718494) lt!2718533)))

(declare-fun b!8015968 () Bool)

(assert (=> b!8015968 (= e!4721941 0)))

(declare-fun b!8015969 () Bool)

(assert (=> b!8015969 (= e!4721941 (+ 1 (size!43591 (t!390661 lt!2718494))))))

(assert (= (and d!2389955 c!1471280) b!8015968))

(assert (= (and d!2389955 (not c!1471280)) b!8015969))

(declare-fun m!8379206 () Bool)

(assert (=> b!8015969 m!8379206))

(assert (=> b!8015664 d!2389955))

(assert (=> b!8015664 d!2389779))

(declare-fun d!2389957 () Bool)

(declare-fun lt!2718534 () Int)

(assert (=> d!2389957 (>= lt!2718534 0)))

(declare-fun e!4721942 () Int)

(assert (=> d!2389957 (= lt!2718534 e!4721942)))

(declare-fun c!1471281 () Bool)

(assert (=> d!2389957 (= c!1471281 ((_ is Nil!74794) lt!2718420))))

(assert (=> d!2389957 (= (size!43591 lt!2718420) lt!2718534)))

(declare-fun b!8015970 () Bool)

(assert (=> b!8015970 (= e!4721942 0)))

(declare-fun b!8015971 () Bool)

(assert (=> b!8015971 (= e!4721942 (+ 1 (size!43591 (t!390661 lt!2718420))))))

(assert (= (and d!2389957 c!1471281) b!8015970))

(assert (= (and d!2389957 (not c!1471281)) b!8015971))

(declare-fun m!8379208 () Bool)

(assert (=> b!8015971 m!8379208))

(assert (=> b!8015664 d!2389957))

(declare-fun d!2389959 () Bool)

(declare-fun e!4721945 () Bool)

(assert (=> d!2389959 e!4721945))

(declare-fun res!3169483 () Bool)

(assert (=> d!2389959 (=> res!3169483 e!4721945)))

(declare-fun lt!2718535 () Bool)

(assert (=> d!2389959 (= res!3169483 (not lt!2718535))))

(declare-fun e!4721944 () Bool)

(assert (=> d!2389959 (= lt!2718535 e!4721944)))

(declare-fun res!3169480 () Bool)

(assert (=> d!2389959 (=> res!3169480 e!4721944)))

(assert (=> d!2389959 (= res!3169480 ((_ is Nil!74794) (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(assert (=> d!2389959 (= (isPrefix!6741 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) (tail!15886 totalInput!1349)) lt!2718535)))

(declare-fun b!8015973 () Bool)

(declare-fun res!3169482 () Bool)

(declare-fun e!4721943 () Bool)

(assert (=> b!8015973 (=> (not res!3169482) (not e!4721943))))

(assert (=> b!8015973 (= res!3169482 (= (head!16363 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))) (head!16363 (tail!15886 totalInput!1349))))))

(declare-fun b!8015972 () Bool)

(assert (=> b!8015972 (= e!4721944 e!4721943)))

(declare-fun res!3169481 () Bool)

(assert (=> b!8015972 (=> (not res!3169481) (not e!4721943))))

(assert (=> b!8015972 (= res!3169481 (not ((_ is Nil!74794) (tail!15886 totalInput!1349))))))

(declare-fun b!8015975 () Bool)

(assert (=> b!8015975 (= e!4721945 (>= (size!43591 (tail!15886 totalInput!1349)) (size!43591 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))))

(declare-fun b!8015974 () Bool)

(assert (=> b!8015974 (= e!4721943 (isPrefix!6741 (tail!15886 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))) (tail!15886 (tail!15886 totalInput!1349))))))

(assert (= (and d!2389959 (not res!3169480)) b!8015972))

(assert (= (and b!8015972 res!3169481) b!8015973))

(assert (= (and b!8015973 res!3169482) b!8015974))

(assert (= (and d!2389959 (not res!3169483)) b!8015975))

(assert (=> b!8015973 m!8378970))

(declare-fun m!8379210 () Bool)

(assert (=> b!8015973 m!8379210))

(assert (=> b!8015973 m!8378782))

(declare-fun m!8379212 () Bool)

(assert (=> b!8015973 m!8379212))

(assert (=> b!8015975 m!8378782))

(declare-fun m!8379214 () Bool)

(assert (=> b!8015975 m!8379214))

(assert (=> b!8015975 m!8378970))

(declare-fun m!8379216 () Bool)

(assert (=> b!8015975 m!8379216))

(assert (=> b!8015974 m!8378970))

(declare-fun m!8379218 () Bool)

(assert (=> b!8015974 m!8379218))

(assert (=> b!8015974 m!8378782))

(declare-fun m!8379220 () Bool)

(assert (=> b!8015974 m!8379220))

(assert (=> b!8015974 m!8379218))

(assert (=> b!8015974 m!8379220))

(declare-fun m!8379222 () Bool)

(assert (=> b!8015974 m!8379222))

(assert (=> b!8015682 d!2389959))

(declare-fun d!2389961 () Bool)

(assert (=> d!2389961 (= (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) (t!390661 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(assert (=> b!8015682 d!2389961))

(declare-fun d!2389963 () Bool)

(assert (=> d!2389963 (= (tail!15886 totalInput!1349) (t!390661 totalInput!1349))))

(assert (=> b!8015682 d!2389963))

(declare-fun d!2389965 () Bool)

(assert (=> d!2389965 (= (nullable!9731 (reg!22018 r!15422)) (nullableFct!3847 (reg!22018 r!15422)))))

(declare-fun bs!1971032 () Bool)

(assert (= bs!1971032 d!2389965))

(declare-fun m!8379224 () Bool)

(assert (=> bs!1971032 m!8379224))

(assert (=> b!8015629 d!2389965))

(declare-fun d!2389967 () Bool)

(declare-fun c!1471284 () Bool)

(assert (=> d!2389967 (= c!1471284 ((_ is Nil!74794) lt!2718446))))

(declare-fun e!4721958 () (InoxSet C!43716))

(assert (=> d!2389967 (= (content!15920 lt!2718446) e!4721958)))

(declare-fun b!8015990 () Bool)

(assert (=> b!8015990 (= e!4721958 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8015991 () Bool)

(assert (=> b!8015991 (= e!4721958 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718446) true) (content!15920 (t!390661 lt!2718446))))))

(assert (= (and d!2389967 c!1471284) b!8015990))

(assert (= (and d!2389967 (not c!1471284)) b!8015991))

(declare-fun m!8379226 () Bool)

(assert (=> b!8015991 m!8379226))

(declare-fun m!8379228 () Bool)

(assert (=> b!8015991 m!8379228))

(assert (=> d!2389771 d!2389967))

(assert (=> d!2389771 d!2389951))

(declare-fun d!2389969 () Bool)

(declare-fun c!1471285 () Bool)

(assert (=> d!2389969 (= c!1471285 ((_ is Nil!74794) testedSuffix!271))))

(declare-fun e!4721959 () (InoxSet C!43716))

(assert (=> d!2389969 (= (content!15920 testedSuffix!271) e!4721959)))

(declare-fun b!8015992 () Bool)

(assert (=> b!8015992 (= e!4721959 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8015993 () Bool)

(assert (=> b!8015993 (= e!4721959 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 testedSuffix!271) true) (content!15920 (t!390661 testedSuffix!271))))))

(assert (= (and d!2389969 c!1471285) b!8015992))

(assert (= (and d!2389969 (not c!1471285)) b!8015993))

(declare-fun m!8379230 () Bool)

(assert (=> b!8015993 m!8379230))

(declare-fun m!8379232 () Bool)

(assert (=> b!8015993 m!8379232))

(assert (=> d!2389771 d!2389969))

(declare-fun d!2389971 () Bool)

(assert (=> d!2389971 (isPrefix!6741 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)) totalInput!1349)))

(assert (=> d!2389971 true))

(declare-fun _$65!2021 () Unit!170874)

(assert (=> d!2389971 (= (choose!60413 testedP!353 totalInput!1349) _$65!2021)))

(declare-fun bs!1971033 () Bool)

(assert (= bs!1971033 d!2389971))

(assert (=> bs!1971033 m!8378772))

(assert (=> bs!1971033 m!8378772))

(assert (=> bs!1971033 m!8378944))

(assert (=> bs!1971033 m!8378940))

(assert (=> bs!1971033 m!8378940))

(assert (=> bs!1971033 m!8378950))

(assert (=> d!2389813 d!2389971))

(declare-fun d!2389977 () Bool)

(declare-fun e!4721970 () Bool)

(assert (=> d!2389977 e!4721970))

(declare-fun res!3169504 () Bool)

(assert (=> d!2389977 (=> res!3169504 e!4721970)))

(declare-fun lt!2718540 () Bool)

(assert (=> d!2389977 (= res!3169504 (not lt!2718540))))

(declare-fun e!4721969 () Bool)

(assert (=> d!2389977 (= lt!2718540 e!4721969)))

(declare-fun res!3169501 () Bool)

(assert (=> d!2389977 (=> res!3169501 e!4721969)))

(assert (=> d!2389977 (= res!3169501 ((_ is Nil!74794) (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794))))))

(assert (=> d!2389977 (= (isPrefix!6741 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)) totalInput!1349) lt!2718540)))

(declare-fun b!8016006 () Bool)

(declare-fun res!3169503 () Bool)

(declare-fun e!4721968 () Bool)

(assert (=> b!8016006 (=> (not res!3169503) (not e!4721968))))

(assert (=> b!8016006 (= res!3169503 (= (head!16363 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794))) (head!16363 totalInput!1349)))))

(declare-fun b!8016005 () Bool)

(assert (=> b!8016005 (= e!4721969 e!4721968)))

(declare-fun res!3169502 () Bool)

(assert (=> b!8016005 (=> (not res!3169502) (not e!4721968))))

(assert (=> b!8016005 (= res!3169502 (not ((_ is Nil!74794) totalInput!1349)))))

(declare-fun b!8016008 () Bool)

(assert (=> b!8016008 (= e!4721970 (>= (size!43591 totalInput!1349) (size!43591 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)))))))

(declare-fun b!8016007 () Bool)

(assert (=> b!8016007 (= e!4721968 (isPrefix!6741 (tail!15886 (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794))) (tail!15886 totalInput!1349)))))

(assert (= (and d!2389977 (not res!3169501)) b!8016005))

(assert (= (and b!8016005 res!3169502) b!8016006))

(assert (= (and b!8016006 res!3169503) b!8016007))

(assert (= (and d!2389977 (not res!3169504)) b!8016008))

(assert (=> b!8016006 m!8378940))

(declare-fun m!8379252 () Bool)

(assert (=> b!8016006 m!8379252))

(assert (=> b!8016006 m!8378778))

(assert (=> b!8016008 m!8378754))

(assert (=> b!8016008 m!8378940))

(declare-fun m!8379254 () Bool)

(assert (=> b!8016008 m!8379254))

(assert (=> b!8016007 m!8378940))

(declare-fun m!8379256 () Bool)

(assert (=> b!8016007 m!8379256))

(assert (=> b!8016007 m!8378782))

(assert (=> b!8016007 m!8379256))

(assert (=> b!8016007 m!8378782))

(declare-fun m!8379258 () Bool)

(assert (=> b!8016007 m!8379258))

(assert (=> d!2389813 d!2389977))

(assert (=> d!2389813 d!2389855))

(declare-fun d!2389981 () Bool)

(assert (=> d!2389981 (= (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) (h!81242 (getSuffix!3936 totalInput!1349 testedP!353)))))

(assert (=> d!2389813 d!2389981))

(assert (=> d!2389813 d!2389755))

(declare-fun d!2389983 () Bool)

(declare-fun e!4721972 () Bool)

(assert (=> d!2389983 e!4721972))

(declare-fun res!3169505 () Bool)

(assert (=> d!2389983 (=> (not res!3169505) (not e!4721972))))

(declare-fun lt!2718541 () List!74918)

(assert (=> d!2389983 (= res!3169505 (= (content!15920 lt!2718541) ((_ map or) (content!15920 testedP!353) (content!15920 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)))))))

(declare-fun e!4721971 () List!74918)

(assert (=> d!2389983 (= lt!2718541 e!4721971)))

(declare-fun c!1471288 () Bool)

(assert (=> d!2389983 (= c!1471288 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2389983 (= (++!18515 testedP!353 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)) lt!2718541)))

(declare-fun b!8016012 () Bool)

(assert (=> b!8016012 (= e!4721972 (or (not (= (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794) Nil!74794)) (= lt!2718541 testedP!353)))))

(declare-fun b!8016010 () Bool)

(assert (=> b!8016010 (= e!4721971 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794))))))

(declare-fun b!8016009 () Bool)

(assert (=> b!8016009 (= e!4721971 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794))))

(declare-fun b!8016011 () Bool)

(declare-fun res!3169506 () Bool)

(assert (=> b!8016011 (=> (not res!3169506) (not e!4721972))))

(assert (=> b!8016011 (= res!3169506 (= (size!43591 lt!2718541) (+ (size!43591 testedP!353) (size!43591 (Cons!74794 (head!16363 (getSuffix!3936 totalInput!1349 testedP!353)) Nil!74794)))))))

(assert (= (and d!2389983 c!1471288) b!8016009))

(assert (= (and d!2389983 (not c!1471288)) b!8016010))

(assert (= (and d!2389983 res!3169505) b!8016011))

(assert (= (and b!8016011 res!3169506) b!8016012))

(declare-fun m!8379260 () Bool)

(assert (=> d!2389983 m!8379260))

(assert (=> d!2389983 m!8378810))

(declare-fun m!8379262 () Bool)

(assert (=> d!2389983 m!8379262))

(declare-fun m!8379264 () Bool)

(assert (=> b!8016010 m!8379264))

(declare-fun m!8379266 () Bool)

(assert (=> b!8016011 m!8379266))

(assert (=> b!8016011 m!8378762))

(declare-fun m!8379268 () Bool)

(assert (=> b!8016011 m!8379268))

(assert (=> d!2389813 d!2389983))

(declare-fun d!2389985 () Bool)

(declare-fun e!4721974 () Bool)

(assert (=> d!2389985 e!4721974))

(declare-fun res!3169507 () Bool)

(assert (=> d!2389985 (=> (not res!3169507) (not e!4721974))))

(declare-fun lt!2718542 () List!74918)

(assert (=> d!2389985 (= res!3169507 (= (content!15920 lt!2718542) ((_ map or) (content!15920 (t!390661 testedP!353)) (content!15920 (Cons!74794 lt!2718413 Nil!74794)))))))

(declare-fun e!4721973 () List!74918)

(assert (=> d!2389985 (= lt!2718542 e!4721973)))

(declare-fun c!1471289 () Bool)

(assert (=> d!2389985 (= c!1471289 ((_ is Nil!74794) (t!390661 testedP!353)))))

(assert (=> d!2389985 (= (++!18515 (t!390661 testedP!353) (Cons!74794 lt!2718413 Nil!74794)) lt!2718542)))

(declare-fun b!8016016 () Bool)

(assert (=> b!8016016 (= e!4721974 (or (not (= (Cons!74794 lt!2718413 Nil!74794) Nil!74794)) (= lt!2718542 (t!390661 testedP!353))))))

(declare-fun b!8016014 () Bool)

(assert (=> b!8016014 (= e!4721973 (Cons!74794 (h!81242 (t!390661 testedP!353)) (++!18515 (t!390661 (t!390661 testedP!353)) (Cons!74794 lt!2718413 Nil!74794))))))

(declare-fun b!8016013 () Bool)

(assert (=> b!8016013 (= e!4721973 (Cons!74794 lt!2718413 Nil!74794))))

(declare-fun b!8016015 () Bool)

(declare-fun res!3169508 () Bool)

(assert (=> b!8016015 (=> (not res!3169508) (not e!4721974))))

(assert (=> b!8016015 (= res!3169508 (= (size!43591 lt!2718542) (+ (size!43591 (t!390661 testedP!353)) (size!43591 (Cons!74794 lt!2718413 Nil!74794)))))))

(assert (= (and d!2389985 c!1471289) b!8016013))

(assert (= (and d!2389985 (not c!1471289)) b!8016014))

(assert (= (and d!2389985 res!3169507) b!8016015))

(assert (= (and b!8016015 res!3169508) b!8016016))

(declare-fun m!8379270 () Bool)

(assert (=> d!2389985 m!8379270))

(assert (=> d!2389985 m!8379200))

(assert (=> d!2389985 m!8378992))

(declare-fun m!8379272 () Bool)

(assert (=> b!8016014 m!8379272))

(declare-fun m!8379274 () Bool)

(assert (=> b!8016015 m!8379274))

(assert (=> b!8016015 m!8378804))

(assert (=> b!8016015 m!8378998))

(assert (=> b!8015718 d!2389985))

(assert (=> b!8015683 d!2389775))

(declare-fun d!2389987 () Bool)

(declare-fun lt!2718543 () Int)

(assert (=> d!2389987 (>= lt!2718543 0)))

(declare-fun e!4721975 () Int)

(assert (=> d!2389987 (= lt!2718543 e!4721975)))

(declare-fun c!1471290 () Bool)

(assert (=> d!2389987 (= c!1471290 ((_ is Nil!74794) (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(assert (=> d!2389987 (= (size!43591 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) lt!2718543)))

(declare-fun b!8016017 () Bool)

(assert (=> b!8016017 (= e!4721975 0)))

(declare-fun b!8016018 () Bool)

(assert (=> b!8016018 (= e!4721975 (+ 1 (size!43591 (t!390661 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))))

(assert (= (and d!2389987 c!1471290) b!8016017))

(assert (= (and d!2389987 (not c!1471290)) b!8016018))

(declare-fun m!8379276 () Bool)

(assert (=> b!8016018 m!8379276))

(assert (=> b!8015683 d!2389987))

(declare-fun b!8016019 () Bool)

(declare-fun res!3169512 () Bool)

(declare-fun e!4721981 () Bool)

(assert (=> b!8016019 (=> (not res!3169512) (not e!4721981))))

(declare-fun call!744619 () Bool)

(assert (=> b!8016019 (= res!3169512 call!744619)))

(declare-fun e!4721982 () Bool)

(assert (=> b!8016019 (= e!4721982 e!4721981)))

(declare-fun b!8016020 () Bool)

(declare-fun e!4721977 () Bool)

(declare-fun e!4721978 () Bool)

(assert (=> b!8016020 (= e!4721977 e!4721978)))

(declare-fun c!1471292 () Bool)

(assert (=> b!8016020 (= c!1471292 ((_ is Star!21689) lt!2718470))))

(declare-fun bm!744612 () Bool)

(declare-fun c!1471291 () Bool)

(assert (=> bm!744612 (= call!744619 (validRegex!11993 (ite c!1471291 (regOne!43891 lt!2718470) (regOne!43890 lt!2718470))))))

(declare-fun bm!744613 () Bool)

(declare-fun call!744617 () Bool)

(assert (=> bm!744613 (= call!744617 (validRegex!11993 (ite c!1471292 (reg!22018 lt!2718470) (ite c!1471291 (regTwo!43891 lt!2718470) (regTwo!43890 lt!2718470)))))))

(declare-fun b!8016021 () Bool)

(declare-fun e!4721976 () Bool)

(assert (=> b!8016021 (= e!4721978 e!4721976)))

(declare-fun res!3169513 () Bool)

(assert (=> b!8016021 (= res!3169513 (not (nullable!9731 (reg!22018 lt!2718470))))))

(assert (=> b!8016021 (=> (not res!3169513) (not e!4721976))))

(declare-fun bm!744614 () Bool)

(declare-fun call!744618 () Bool)

(assert (=> bm!744614 (= call!744618 call!744617)))

(declare-fun b!8016022 () Bool)

(assert (=> b!8016022 (= e!4721976 call!744617)))

(declare-fun b!8016023 () Bool)

(declare-fun res!3169510 () Bool)

(declare-fun e!4721979 () Bool)

(assert (=> b!8016023 (=> res!3169510 e!4721979)))

(assert (=> b!8016023 (= res!3169510 (not ((_ is Concat!30688) lt!2718470)))))

(assert (=> b!8016023 (= e!4721982 e!4721979)))

(declare-fun d!2389989 () Bool)

(declare-fun res!3169511 () Bool)

(assert (=> d!2389989 (=> res!3169511 e!4721977)))

(assert (=> d!2389989 (= res!3169511 ((_ is ElementMatch!21689) lt!2718470))))

(assert (=> d!2389989 (= (validRegex!11993 lt!2718470) e!4721977)))

(declare-fun b!8016024 () Bool)

(assert (=> b!8016024 (= e!4721978 e!4721982)))

(assert (=> b!8016024 (= c!1471291 ((_ is Union!21689) lt!2718470))))

(declare-fun b!8016025 () Bool)

(assert (=> b!8016025 (= e!4721981 call!744618)))

(declare-fun b!8016026 () Bool)

(declare-fun e!4721980 () Bool)

(assert (=> b!8016026 (= e!4721980 call!744618)))

(declare-fun b!8016027 () Bool)

(assert (=> b!8016027 (= e!4721979 e!4721980)))

(declare-fun res!3169509 () Bool)

(assert (=> b!8016027 (=> (not res!3169509) (not e!4721980))))

(assert (=> b!8016027 (= res!3169509 call!744619)))

(assert (= (and d!2389989 (not res!3169511)) b!8016020))

(assert (= (and b!8016020 c!1471292) b!8016021))

(assert (= (and b!8016020 (not c!1471292)) b!8016024))

(assert (= (and b!8016021 res!3169513) b!8016022))

(assert (= (and b!8016024 c!1471291) b!8016019))

(assert (= (and b!8016024 (not c!1471291)) b!8016023))

(assert (= (and b!8016019 res!3169512) b!8016025))

(assert (= (and b!8016023 (not res!3169510)) b!8016027))

(assert (= (and b!8016027 res!3169509) b!8016026))

(assert (= (or b!8016025 b!8016026) bm!744614))

(assert (= (or b!8016019 b!8016027) bm!744612))

(assert (= (or b!8016022 bm!744614) bm!744613))

(declare-fun m!8379288 () Bool)

(assert (=> bm!744612 m!8379288))

(declare-fun m!8379290 () Bool)

(assert (=> bm!744613 m!8379290))

(declare-fun m!8379292 () Bool)

(assert (=> b!8016021 m!8379292))

(assert (=> d!2389781 d!2389989))

(assert (=> d!2389781 d!2389799))

(assert (=> d!2389763 d!2389765))

(declare-fun d!2389995 () Bool)

(assert (=> d!2389995 (isPrefix!6741 totalInput!1349 totalInput!1349)))

(assert (=> d!2389995 true))

(declare-fun _$45!2545 () Unit!170874)

(assert (=> d!2389995 (= (choose!60409 totalInput!1349 totalInput!1349) _$45!2545)))

(declare-fun bs!1971035 () Bool)

(assert (= bs!1971035 d!2389995))

(assert (=> bs!1971035 m!8378758))

(assert (=> d!2389763 d!2389995))

(declare-fun d!2390001 () Bool)

(declare-fun e!4721991 () Bool)

(assert (=> d!2390001 e!4721991))

(declare-fun res!3169520 () Bool)

(assert (=> d!2390001 (=> (not res!3169520) (not e!4721991))))

(declare-fun lt!2718548 () List!74918)

(assert (=> d!2390001 (= res!3169520 (= (content!15920 lt!2718548) ((_ map or) (content!15920 (t!390661 testedP!353)) (content!15920 testedSuffix!271))))))

(declare-fun e!4721990 () List!74918)

(assert (=> d!2390001 (= lt!2718548 e!4721990)))

(declare-fun c!1471296 () Bool)

(assert (=> d!2390001 (= c!1471296 ((_ is Nil!74794) (t!390661 testedP!353)))))

(assert (=> d!2390001 (= (++!18515 (t!390661 testedP!353) testedSuffix!271) lt!2718548)))

(declare-fun b!8016043 () Bool)

(assert (=> b!8016043 (= e!4721991 (or (not (= testedSuffix!271 Nil!74794)) (= lt!2718548 (t!390661 testedP!353))))))

(declare-fun b!8016041 () Bool)

(assert (=> b!8016041 (= e!4721990 (Cons!74794 (h!81242 (t!390661 testedP!353)) (++!18515 (t!390661 (t!390661 testedP!353)) testedSuffix!271)))))

(declare-fun b!8016040 () Bool)

(assert (=> b!8016040 (= e!4721990 testedSuffix!271)))

(declare-fun b!8016042 () Bool)

(declare-fun res!3169521 () Bool)

(assert (=> b!8016042 (=> (not res!3169521) (not e!4721991))))

(assert (=> b!8016042 (= res!3169521 (= (size!43591 lt!2718548) (+ (size!43591 (t!390661 testedP!353)) (size!43591 testedSuffix!271))))))

(assert (= (and d!2390001 c!1471296) b!8016040))

(assert (= (and d!2390001 (not c!1471296)) b!8016041))

(assert (= (and d!2390001 res!3169520) b!8016042))

(assert (= (and b!8016042 res!3169521) b!8016043))

(declare-fun m!8379308 () Bool)

(assert (=> d!2390001 m!8379308))

(assert (=> d!2390001 m!8379200))

(assert (=> d!2390001 m!8378812))

(declare-fun m!8379310 () Bool)

(assert (=> b!8016041 m!8379310))

(declare-fun m!8379312 () Bool)

(assert (=> b!8016042 m!8379312))

(assert (=> b!8016042 m!8378804))

(assert (=> b!8016042 m!8378818))

(assert (=> b!8015534 d!2390001))

(declare-fun d!2390005 () Bool)

(assert (=> d!2390005 (= (head!16363 totalInput!1349) (h!81242 totalInput!1349))))

(assert (=> b!8015516 d!2390005))

(declare-fun b!8016068 () Bool)

(declare-fun e!4722014 () Bool)

(declare-fun e!4722013 () Bool)

(assert (=> b!8016068 (= e!4722014 e!4722013)))

(declare-fun res!3169538 () Bool)

(assert (=> b!8016068 (=> (not res!3169538) (not e!4722013))))

(assert (=> b!8016068 (= res!3169538 (and (not ((_ is EmptyLang!21689) r!15422)) (not ((_ is ElementMatch!21689) r!15422))))))

(declare-fun b!8016069 () Bool)

(declare-fun e!4722011 () Bool)

(declare-fun call!744624 () Bool)

(assert (=> b!8016069 (= e!4722011 call!744624)))

(declare-fun b!8016070 () Bool)

(declare-fun e!4722015 () Bool)

(declare-fun call!744625 () Bool)

(assert (=> b!8016070 (= e!4722015 call!744625)))

(declare-fun b!8016072 () Bool)

(declare-fun e!4722012 () Bool)

(assert (=> b!8016072 (= e!4722012 e!4722011)))

(declare-fun res!3169540 () Bool)

(assert (=> b!8016072 (= res!3169540 call!744625)))

(assert (=> b!8016072 (=> res!3169540 e!4722011)))

(declare-fun bm!744619 () Bool)

(declare-fun c!1471301 () Bool)

(assert (=> bm!744619 (= call!744624 (nullable!9731 (ite c!1471301 (regTwo!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun b!8016073 () Bool)

(declare-fun e!4722010 () Bool)

(assert (=> b!8016073 (= e!4722010 e!4722012)))

(assert (=> b!8016073 (= c!1471301 ((_ is Union!21689) r!15422))))

(declare-fun bm!744620 () Bool)

(assert (=> bm!744620 (= call!744625 (nullable!9731 (ite c!1471301 (regOne!43891 r!15422) (regTwo!43890 r!15422))))))

(declare-fun b!8016074 () Bool)

(assert (=> b!8016074 (= e!4722013 e!4722010)))

(declare-fun res!3169542 () Bool)

(assert (=> b!8016074 (=> res!3169542 e!4722010)))

(assert (=> b!8016074 (= res!3169542 ((_ is Star!21689) r!15422))))

(declare-fun b!8016071 () Bool)

(assert (=> b!8016071 (= e!4722012 e!4722015)))

(declare-fun res!3169541 () Bool)

(assert (=> b!8016071 (= res!3169541 call!744624)))

(assert (=> b!8016071 (=> (not res!3169541) (not e!4722015))))

(declare-fun d!2390007 () Bool)

(declare-fun res!3169539 () Bool)

(assert (=> d!2390007 (=> res!3169539 e!4722014)))

(assert (=> d!2390007 (= res!3169539 ((_ is EmptyExpr!21689) r!15422))))

(assert (=> d!2390007 (= (nullableFct!3847 r!15422) e!4722014)))

(assert (= (and d!2390007 (not res!3169539)) b!8016068))

(assert (= (and b!8016068 res!3169538) b!8016074))

(assert (= (and b!8016074 (not res!3169542)) b!8016073))

(assert (= (and b!8016073 c!1471301) b!8016072))

(assert (= (and b!8016073 (not c!1471301)) b!8016071))

(assert (= (and b!8016072 (not res!3169540)) b!8016069))

(assert (= (and b!8016071 res!3169541) b!8016070))

(assert (= (or b!8016072 b!8016070) bm!744620))

(assert (= (or b!8016069 b!8016071) bm!744619))

(declare-fun m!8379330 () Bool)

(assert (=> bm!744619 m!8379330))

(declare-fun m!8379334 () Bool)

(assert (=> bm!744620 m!8379334))

(assert (=> d!2389827 d!2390007))

(declare-fun d!2390021 () Bool)

(declare-fun lt!2718553 () Int)

(assert (=> d!2390021 (>= lt!2718553 0)))

(declare-fun e!4722019 () Int)

(assert (=> d!2390021 (= lt!2718553 e!4722019)))

(declare-fun c!1471302 () Bool)

(assert (=> d!2390021 (= c!1471302 ((_ is Nil!74794) lt!2718446))))

(assert (=> d!2390021 (= (size!43591 lt!2718446) lt!2718553)))

(declare-fun b!8016079 () Bool)

(assert (=> b!8016079 (= e!4722019 0)))

(declare-fun b!8016080 () Bool)

(assert (=> b!8016080 (= e!4722019 (+ 1 (size!43591 (t!390661 lt!2718446))))))

(assert (= (and d!2390021 c!1471302) b!8016079))

(assert (= (and d!2390021 (not c!1471302)) b!8016080))

(declare-fun m!8379342 () Bool)

(assert (=> b!8016080 m!8379342))

(assert (=> b!8015535 d!2390021))

(assert (=> b!8015535 d!2389769))

(declare-fun d!2390025 () Bool)

(declare-fun lt!2718554 () Int)

(assert (=> d!2390025 (>= lt!2718554 0)))

(declare-fun e!4722020 () Int)

(assert (=> d!2390025 (= lt!2718554 e!4722020)))

(declare-fun c!1471303 () Bool)

(assert (=> d!2390025 (= c!1471303 ((_ is Nil!74794) testedSuffix!271))))

(assert (=> d!2390025 (= (size!43591 testedSuffix!271) lt!2718554)))

(declare-fun b!8016081 () Bool)

(assert (=> b!8016081 (= e!4722020 0)))

(declare-fun b!8016082 () Bool)

(assert (=> b!8016082 (= e!4722020 (+ 1 (size!43591 (t!390661 testedSuffix!271))))))

(assert (= (and d!2390025 c!1471303) b!8016081))

(assert (= (and d!2390025 (not c!1471303)) b!8016082))

(declare-fun m!8379344 () Bool)

(assert (=> b!8016082 m!8379344))

(assert (=> b!8015535 d!2390025))

(assert (=> d!2389753 d!2389769))

(assert (=> d!2389753 d!2389775))

(declare-fun d!2390029 () Bool)

(assert (=> d!2390029 (<= (size!43591 testedP!353) (size!43591 totalInput!1349))))

(assert (=> d!2390029 true))

(declare-fun _$64!997 () Unit!170874)

(assert (=> d!2390029 (= (choose!60404 testedP!353 totalInput!1349) _$64!997)))

(declare-fun bs!1971038 () Bool)

(assert (= bs!1971038 d!2390029))

(assert (=> bs!1971038 m!8378762))

(assert (=> bs!1971038 m!8378754))

(assert (=> d!2389753 d!2390029))

(assert (=> d!2389753 d!2389755))

(declare-fun d!2390037 () Bool)

(declare-fun e!4722027 () Bool)

(assert (=> d!2390037 e!4722027))

(declare-fun res!3169552 () Bool)

(assert (=> d!2390037 (=> res!3169552 e!4722027)))

(declare-fun lt!2718558 () Bool)

(assert (=> d!2390037 (= res!3169552 (not lt!2718558))))

(declare-fun e!4722026 () Bool)

(assert (=> d!2390037 (= lt!2718558 e!4722026)))

(declare-fun res!3169549 () Bool)

(assert (=> d!2390037 (=> res!3169549 e!4722026)))

(assert (=> d!2390037 (= res!3169549 ((_ is Nil!74794) (tail!15886 totalInput!1349)))))

(assert (=> d!2390037 (= (isPrefix!6741 (tail!15886 totalInput!1349) (tail!15886 totalInput!1349)) lt!2718558)))

(declare-fun b!8016092 () Bool)

(declare-fun res!3169551 () Bool)

(declare-fun e!4722025 () Bool)

(assert (=> b!8016092 (=> (not res!3169551) (not e!4722025))))

(assert (=> b!8016092 (= res!3169551 (= (head!16363 (tail!15886 totalInput!1349)) (head!16363 (tail!15886 totalInput!1349))))))

(declare-fun b!8016091 () Bool)

(assert (=> b!8016091 (= e!4722026 e!4722025)))

(declare-fun res!3169550 () Bool)

(assert (=> b!8016091 (=> (not res!3169550) (not e!4722025))))

(assert (=> b!8016091 (= res!3169550 (not ((_ is Nil!74794) (tail!15886 totalInput!1349))))))

(declare-fun b!8016094 () Bool)

(assert (=> b!8016094 (= e!4722027 (>= (size!43591 (tail!15886 totalInput!1349)) (size!43591 (tail!15886 totalInput!1349))))))

(declare-fun b!8016093 () Bool)

(assert (=> b!8016093 (= e!4722025 (isPrefix!6741 (tail!15886 (tail!15886 totalInput!1349)) (tail!15886 (tail!15886 totalInput!1349))))))

(assert (= (and d!2390037 (not res!3169549)) b!8016091))

(assert (= (and b!8016091 res!3169550) b!8016092))

(assert (= (and b!8016092 res!3169551) b!8016093))

(assert (= (and d!2390037 (not res!3169552)) b!8016094))

(assert (=> b!8016092 m!8378782))

(assert (=> b!8016092 m!8379212))

(assert (=> b!8016092 m!8378782))

(assert (=> b!8016092 m!8379212))

(assert (=> b!8016094 m!8378782))

(assert (=> b!8016094 m!8379214))

(assert (=> b!8016094 m!8378782))

(assert (=> b!8016094 m!8379214))

(assert (=> b!8016093 m!8378782))

(assert (=> b!8016093 m!8379220))

(assert (=> b!8016093 m!8378782))

(assert (=> b!8016093 m!8379220))

(assert (=> b!8016093 m!8379220))

(assert (=> b!8016093 m!8379220))

(declare-fun m!8379360 () Bool)

(assert (=> b!8016093 m!8379360))

(assert (=> b!8015517 d!2390037))

(assert (=> b!8015517 d!2389963))

(declare-fun d!2390041 () Bool)

(declare-fun c!1471308 () Bool)

(assert (=> d!2390041 (= c!1471308 ((_ is Nil!74794) lt!2718504))))

(declare-fun e!4722029 () (InoxSet C!43716))

(assert (=> d!2390041 (= (content!15920 lt!2718504) e!4722029)))

(declare-fun b!8016097 () Bool)

(assert (=> b!8016097 (= e!4722029 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8016098 () Bool)

(assert (=> b!8016098 (= e!4722029 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718504) true) (content!15920 (t!390661 lt!2718504))))))

(assert (= (and d!2390041 c!1471308) b!8016097))

(assert (= (and d!2390041 (not c!1471308)) b!8016098))

(declare-fun m!8379366 () Bool)

(assert (=> b!8016098 m!8379366))

(declare-fun m!8379368 () Bool)

(assert (=> b!8016098 m!8379368))

(assert (=> d!2389847 d!2390041))

(assert (=> d!2389847 d!2389951))

(declare-fun d!2390045 () Bool)

(declare-fun c!1471310 () Bool)

(assert (=> d!2390045 (= c!1471310 ((_ is Nil!74794) (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))

(declare-fun e!4722031 () (InoxSet C!43716))

(assert (=> d!2390045 (= (content!15920 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) e!4722031)))

(declare-fun b!8016101 () Bool)

(assert (=> b!8016101 (= e!4722031 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8016102 () Bool)

(assert (=> b!8016102 (= e!4722031 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) true) (content!15920 (t!390661 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(assert (= (and d!2390045 c!1471310) b!8016101))

(assert (= (and d!2390045 (not c!1471310)) b!8016102))

(declare-fun m!8379374 () Bool)

(assert (=> b!8016102 m!8379374))

(declare-fun m!8379376 () Bool)

(assert (=> b!8016102 m!8379376))

(assert (=> d!2389847 d!2390045))

(assert (=> b!8015518 d!2389775))

(declare-fun d!2390049 () Bool)

(declare-fun e!4722040 () Bool)

(assert (=> d!2390049 e!4722040))

(declare-fun res!3169558 () Bool)

(assert (=> d!2390049 (=> (not res!3169558) (not e!4722040))))

(declare-fun lt!2718559 () List!74918)

(assert (=> d!2390049 (= res!3169558 (= (content!15920 lt!2718559) ((_ map or) (content!15920 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794))) (content!15920 lt!2718420))))))

(declare-fun e!4722039 () List!74918)

(assert (=> d!2390049 (= lt!2718559 e!4722039)))

(declare-fun c!1471313 () Bool)

(assert (=> d!2390049 (= c!1471313 ((_ is Nil!74794) (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794))))))

(assert (=> d!2390049 (= (++!18515 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)) lt!2718420) lt!2718559)))

(declare-fun b!8016115 () Bool)

(assert (=> b!8016115 (= e!4722040 (or (not (= lt!2718420 Nil!74794)) (= lt!2718559 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)))))))

(declare-fun b!8016113 () Bool)

(assert (=> b!8016113 (= e!4722039 (Cons!74794 (h!81242 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794))) (++!18515 (t!390661 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794))) lt!2718420)))))

(declare-fun b!8016112 () Bool)

(assert (=> b!8016112 (= e!4722039 lt!2718420)))

(declare-fun b!8016114 () Bool)

(declare-fun res!3169559 () Bool)

(assert (=> b!8016114 (=> (not res!3169559) (not e!4722040))))

(assert (=> b!8016114 (= res!3169559 (= (size!43591 lt!2718559) (+ (size!43591 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794))) (size!43591 lt!2718420))))))

(assert (= (and d!2390049 c!1471313) b!8016112))

(assert (= (and d!2390049 (not c!1471313)) b!8016113))

(assert (= (and d!2390049 res!3169558) b!8016114))

(assert (= (and b!8016114 res!3169559) b!8016115))

(declare-fun m!8379378 () Bool)

(assert (=> d!2390049 m!8379378))

(assert (=> d!2390049 m!8378742))

(declare-fun m!8379380 () Bool)

(assert (=> d!2390049 m!8379380))

(assert (=> d!2390049 m!8378958))

(declare-fun m!8379382 () Bool)

(assert (=> b!8016113 m!8379382))

(declare-fun m!8379384 () Bool)

(assert (=> b!8016114 m!8379384))

(assert (=> b!8016114 m!8378742))

(declare-fun m!8379386 () Bool)

(assert (=> b!8016114 m!8379386))

(assert (=> b!8016114 m!8378964))

(assert (=> d!2389835 d!2390049))

(assert (=> d!2389835 d!2389843))

(declare-fun d!2390051 () Bool)

(assert (=> d!2390051 (= (++!18515 (++!18515 testedP!353 (Cons!74794 lt!2718413 Nil!74794)) lt!2718420) totalInput!1349)))

(assert (=> d!2390051 true))

(declare-fun _$68!1563 () Unit!170874)

(assert (=> d!2390051 (= (choose!60414 testedP!353 lt!2718413 lt!2718420 totalInput!1349) _$68!1563)))

(declare-fun bs!1971039 () Bool)

(assert (= bs!1971039 d!2390051))

(assert (=> bs!1971039 m!8378742))

(assert (=> bs!1971039 m!8378742))

(assert (=> bs!1971039 m!8378984))

(assert (=> d!2389835 d!2390051))

(declare-fun d!2390055 () Bool)

(declare-fun e!4722052 () Bool)

(assert (=> d!2390055 e!4722052))

(declare-fun res!3169560 () Bool)

(assert (=> d!2390055 (=> (not res!3169560) (not e!4722052))))

(declare-fun lt!2718561 () List!74918)

(assert (=> d!2390055 (= res!3169560 (= (content!15920 lt!2718561) ((_ map or) (content!15920 testedP!353) (content!15920 (Cons!74794 lt!2718413 lt!2718420)))))))

(declare-fun e!4722051 () List!74918)

(assert (=> d!2390055 (= lt!2718561 e!4722051)))

(declare-fun c!1471315 () Bool)

(assert (=> d!2390055 (= c!1471315 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2390055 (= (++!18515 testedP!353 (Cons!74794 lt!2718413 lt!2718420)) lt!2718561)))

(declare-fun b!8016154 () Bool)

(assert (=> b!8016154 (= e!4722052 (or (not (= (Cons!74794 lt!2718413 lt!2718420) Nil!74794)) (= lt!2718561 testedP!353)))))

(declare-fun b!8016150 () Bool)

(assert (=> b!8016150 (= e!4722051 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) (Cons!74794 lt!2718413 lt!2718420))))))

(declare-fun b!8016148 () Bool)

(assert (=> b!8016148 (= e!4722051 (Cons!74794 lt!2718413 lt!2718420))))

(declare-fun b!8016152 () Bool)

(declare-fun res!3169561 () Bool)

(assert (=> b!8016152 (=> (not res!3169561) (not e!4722052))))

(assert (=> b!8016152 (= res!3169561 (= (size!43591 lt!2718561) (+ (size!43591 testedP!353) (size!43591 (Cons!74794 lt!2718413 lt!2718420)))))))

(assert (= (and d!2390055 c!1471315) b!8016148))

(assert (= (and d!2390055 (not c!1471315)) b!8016150))

(assert (= (and d!2390055 res!3169560) b!8016152))

(assert (= (and b!8016152 res!3169561) b!8016154))

(declare-fun m!8379396 () Bool)

(assert (=> d!2390055 m!8379396))

(assert (=> d!2390055 m!8378810))

(declare-fun m!8379398 () Bool)

(assert (=> d!2390055 m!8379398))

(declare-fun m!8379400 () Bool)

(assert (=> b!8016150 m!8379400))

(declare-fun m!8379402 () Bool)

(assert (=> b!8016152 m!8379402))

(assert (=> b!8016152 m!8378762))

(declare-fun m!8379404 () Bool)

(assert (=> b!8016152 m!8379404))

(assert (=> d!2389835 d!2390055))

(declare-fun d!2390057 () Bool)

(declare-fun e!4722060 () Bool)

(assert (=> d!2390057 e!4722060))

(declare-fun res!3169565 () Bool)

(assert (=> d!2390057 (=> res!3169565 e!4722060)))

(declare-fun lt!2718562 () Bool)

(assert (=> d!2390057 (= res!3169565 (not lt!2718562))))

(declare-fun e!4722059 () Bool)

(assert (=> d!2390057 (= lt!2718562 e!4722059)))

(declare-fun res!3169562 () Bool)

(assert (=> d!2390057 (=> res!3169562 e!4722059)))

(assert (=> d!2390057 (= res!3169562 ((_ is Nil!74794) (tail!15886 testedP!353)))))

(assert (=> d!2390057 (= (isPrefix!6741 (tail!15886 testedP!353) (tail!15886 totalInput!1349)) lt!2718562)))

(declare-fun b!8016173 () Bool)

(declare-fun res!3169564 () Bool)

(declare-fun e!4722058 () Bool)

(assert (=> b!8016173 (=> (not res!3169564) (not e!4722058))))

(assert (=> b!8016173 (= res!3169564 (= (head!16363 (tail!15886 testedP!353)) (head!16363 (tail!15886 totalInput!1349))))))

(declare-fun b!8016172 () Bool)

(assert (=> b!8016172 (= e!4722059 e!4722058)))

(declare-fun res!3169563 () Bool)

(assert (=> b!8016172 (=> (not res!3169563) (not e!4722058))))

(assert (=> b!8016172 (= res!3169563 (not ((_ is Nil!74794) (tail!15886 totalInput!1349))))))

(declare-fun b!8016175 () Bool)

(assert (=> b!8016175 (= e!4722060 (>= (size!43591 (tail!15886 totalInput!1349)) (size!43591 (tail!15886 testedP!353))))))

(declare-fun b!8016174 () Bool)

(assert (=> b!8016174 (= e!4722058 (isPrefix!6741 (tail!15886 (tail!15886 testedP!353)) (tail!15886 (tail!15886 totalInput!1349))))))

(assert (= (and d!2390057 (not res!3169562)) b!8016172))

(assert (= (and b!8016172 res!3169563) b!8016173))

(assert (= (and b!8016173 res!3169564) b!8016174))

(assert (= (and d!2390057 (not res!3169565)) b!8016175))

(assert (=> b!8016173 m!8378780))

(declare-fun m!8379406 () Bool)

(assert (=> b!8016173 m!8379406))

(assert (=> b!8016173 m!8378782))

(assert (=> b!8016173 m!8379212))

(assert (=> b!8016175 m!8378782))

(assert (=> b!8016175 m!8379214))

(assert (=> b!8016175 m!8378780))

(declare-fun m!8379408 () Bool)

(assert (=> b!8016175 m!8379408))

(assert (=> b!8016174 m!8378780))

(declare-fun m!8379410 () Bool)

(assert (=> b!8016174 m!8379410))

(assert (=> b!8016174 m!8378782))

(assert (=> b!8016174 m!8379220))

(assert (=> b!8016174 m!8379410))

(assert (=> b!8016174 m!8379220))

(declare-fun m!8379412 () Bool)

(assert (=> b!8016174 m!8379412))

(assert (=> b!8015509 d!2390057))

(declare-fun d!2390059 () Bool)

(assert (=> d!2390059 (= (tail!15886 testedP!353) (t!390661 testedP!353))))

(assert (=> b!8015509 d!2390059))

(assert (=> b!8015509 d!2389963))

(declare-fun d!2390061 () Bool)

(declare-fun e!4722068 () Bool)

(assert (=> d!2390061 e!4722068))

(declare-fun res!3169566 () Bool)

(assert (=> d!2390061 (=> (not res!3169566) (not e!4722068))))

(declare-fun lt!2718563 () List!74918)

(assert (=> d!2390061 (= res!3169566 (= (content!15920 lt!2718563) ((_ map or) (content!15920 (t!390661 testedP!353)) (content!15920 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(declare-fun e!4722067 () List!74918)

(assert (=> d!2390061 (= lt!2718563 e!4722067)))

(declare-fun c!1471316 () Bool)

(assert (=> d!2390061 (= c!1471316 ((_ is Nil!74794) (t!390661 testedP!353)))))

(assert (=> d!2390061 (= (++!18515 (t!390661 testedP!353) (Cons!74794 (head!16363 lt!2718417) Nil!74794)) lt!2718563)))

(declare-fun b!8016200 () Bool)

(assert (=> b!8016200 (= e!4722068 (or (not (= (Cons!74794 (head!16363 lt!2718417) Nil!74794) Nil!74794)) (= lt!2718563 (t!390661 testedP!353))))))

(declare-fun b!8016198 () Bool)

(assert (=> b!8016198 (= e!4722067 (Cons!74794 (h!81242 (t!390661 testedP!353)) (++!18515 (t!390661 (t!390661 testedP!353)) (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(declare-fun b!8016197 () Bool)

(assert (=> b!8016197 (= e!4722067 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))

(declare-fun b!8016199 () Bool)

(declare-fun res!3169567 () Bool)

(assert (=> b!8016199 (=> (not res!3169567) (not e!4722068))))

(assert (=> b!8016199 (= res!3169567 (= (size!43591 lt!2718563) (+ (size!43591 (t!390661 testedP!353)) (size!43591 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(assert (= (and d!2390061 c!1471316) b!8016197))

(assert (= (and d!2390061 (not c!1471316)) b!8016198))

(assert (= (and d!2390061 res!3169566) b!8016199))

(assert (= (and b!8016199 res!3169567) b!8016200))

(declare-fun m!8379414 () Bool)

(assert (=> d!2390061 m!8379414))

(assert (=> d!2390061 m!8379200))

(assert (=> d!2390061 m!8379002))

(declare-fun m!8379416 () Bool)

(assert (=> b!8016198 m!8379416))

(declare-fun m!8379418 () Bool)

(assert (=> b!8016199 m!8379418))

(assert (=> b!8016199 m!8378804))

(assert (=> b!8016199 m!8379008))

(assert (=> b!8015722 d!2390061))

(assert (=> b!8015510 d!2389775))

(assert (=> b!8015510 d!2389769))

(declare-fun b!8016221 () Bool)

(declare-fun res!3169571 () Bool)

(declare-fun e!4722079 () Bool)

(assert (=> b!8016221 (=> (not res!3169571) (not e!4722079))))

(declare-fun call!744631 () Bool)

(assert (=> b!8016221 (= res!3169571 call!744631)))

(declare-fun e!4722080 () Bool)

(assert (=> b!8016221 (= e!4722080 e!4722079)))

(declare-fun b!8016222 () Bool)

(declare-fun e!4722075 () Bool)

(declare-fun e!4722076 () Bool)

(assert (=> b!8016222 (= e!4722075 e!4722076)))

(declare-fun c!1471318 () Bool)

(assert (=> b!8016222 (= c!1471318 ((_ is Star!21689) (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun c!1471317 () Bool)

(declare-fun bm!744624 () Bool)

(assert (=> bm!744624 (= call!744631 (validRegex!11993 (ite c!1471317 (regOne!43891 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))) (regOne!43890 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))))

(declare-fun call!744629 () Bool)

(declare-fun bm!744625 () Bool)

(assert (=> bm!744625 (= call!744629 (validRegex!11993 (ite c!1471318 (reg!22018 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))) (ite c!1471317 (regTwo!43891 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))) (regTwo!43890 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422)))))))))

(declare-fun b!8016223 () Bool)

(declare-fun e!4722074 () Bool)

(assert (=> b!8016223 (= e!4722076 e!4722074)))

(declare-fun res!3169572 () Bool)

(assert (=> b!8016223 (= res!3169572 (not (nullable!9731 (reg!22018 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))))

(assert (=> b!8016223 (=> (not res!3169572) (not e!4722074))))

(declare-fun bm!744626 () Bool)

(declare-fun call!744630 () Bool)

(assert (=> bm!744626 (= call!744630 call!744629)))

(declare-fun b!8016224 () Bool)

(assert (=> b!8016224 (= e!4722074 call!744629)))

(declare-fun b!8016225 () Bool)

(declare-fun res!3169569 () Bool)

(declare-fun e!4722077 () Bool)

(assert (=> b!8016225 (=> res!3169569 e!4722077)))

(assert (=> b!8016225 (= res!3169569 (not ((_ is Concat!30688) (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422)))))))

(assert (=> b!8016225 (= e!4722080 e!4722077)))

(declare-fun d!2390063 () Bool)

(declare-fun res!3169570 () Bool)

(assert (=> d!2390063 (=> res!3169570 e!4722075)))

(assert (=> d!2390063 (= res!3169570 ((_ is ElementMatch!21689) (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(assert (=> d!2390063 (= (validRegex!11993 (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))) e!4722075)))

(declare-fun b!8016226 () Bool)

(assert (=> b!8016226 (= e!4722076 e!4722080)))

(assert (=> b!8016226 (= c!1471317 ((_ is Union!21689) (ite c!1471193 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun b!8016227 () Bool)

(assert (=> b!8016227 (= e!4722079 call!744630)))

(declare-fun b!8016228 () Bool)

(declare-fun e!4722078 () Bool)

(assert (=> b!8016228 (= e!4722078 call!744630)))

(declare-fun b!8016229 () Bool)

(assert (=> b!8016229 (= e!4722077 e!4722078)))

(declare-fun res!3169568 () Bool)

(assert (=> b!8016229 (=> (not res!3169568) (not e!4722078))))

(assert (=> b!8016229 (= res!3169568 call!744631)))

(assert (= (and d!2390063 (not res!3169570)) b!8016222))

(assert (= (and b!8016222 c!1471318) b!8016223))

(assert (= (and b!8016222 (not c!1471318)) b!8016226))

(assert (= (and b!8016223 res!3169572) b!8016224))

(assert (= (and b!8016226 c!1471317) b!8016221))

(assert (= (and b!8016226 (not c!1471317)) b!8016225))

(assert (= (and b!8016221 res!3169571) b!8016227))

(assert (= (and b!8016225 (not res!3169569)) b!8016229))

(assert (= (and b!8016229 res!3169568) b!8016228))

(assert (= (or b!8016227 b!8016228) bm!744626))

(assert (= (or b!8016221 b!8016229) bm!744624))

(assert (= (or b!8016224 bm!744626) bm!744625))

(declare-fun m!8379420 () Bool)

(assert (=> bm!744624 m!8379420))

(declare-fun m!8379422 () Bool)

(assert (=> bm!744625 m!8379422))

(declare-fun m!8379424 () Bool)

(assert (=> b!8016223 m!8379424))

(assert (=> bm!744558 d!2390063))

(declare-fun d!2390065 () Bool)

(declare-fun lt!2718564 () Int)

(assert (=> d!2390065 (>= lt!2718564 0)))

(declare-fun e!4722084 () Int)

(assert (=> d!2390065 (= lt!2718564 e!4722084)))

(declare-fun c!1471319 () Bool)

(assert (=> d!2390065 (= c!1471319 ((_ is Nil!74794) (t!390661 testedP!353)))))

(assert (=> d!2390065 (= (size!43591 (t!390661 testedP!353)) lt!2718564)))

(declare-fun b!8016242 () Bool)

(assert (=> b!8016242 (= e!4722084 0)))

(declare-fun b!8016243 () Bool)

(assert (=> b!8016243 (= e!4722084 (+ 1 (size!43591 (t!390661 (t!390661 testedP!353)))))))

(assert (= (and d!2390065 c!1471319) b!8016242))

(assert (= (and d!2390065 (not c!1471319)) b!8016243))

(declare-fun m!8379426 () Bool)

(assert (=> b!8016243 m!8379426))

(assert (=> b!8015524 d!2390065))

(declare-fun d!2390067 () Bool)

(assert (=> d!2390067 (= (head!16363 testedP!353) (h!81242 testedP!353))))

(assert (=> b!8015512 d!2390067))

(declare-fun d!2390069 () Bool)

(assert (=> d!2390069 (= (head!16363 lt!2718410) (h!81242 lt!2718410))))

(assert (=> b!8015512 d!2390069))

(declare-fun d!2390071 () Bool)

(declare-fun lt!2718565 () Int)

(assert (=> d!2390071 (>= lt!2718565 0)))

(declare-fun e!4722085 () Int)

(assert (=> d!2390071 (= lt!2718565 e!4722085)))

(declare-fun c!1471320 () Bool)

(assert (=> d!2390071 (= c!1471320 ((_ is Nil!74794) (t!390661 lt!2718419)))))

(assert (=> d!2390071 (= (size!43591 (t!390661 lt!2718419)) lt!2718565)))

(declare-fun b!8016244 () Bool)

(assert (=> b!8016244 (= e!4722085 0)))

(declare-fun b!8016245 () Bool)

(assert (=> b!8016245 (= e!4722085 (+ 1 (size!43591 (t!390661 (t!390661 lt!2718419)))))))

(assert (= (and d!2390071 c!1471320) b!8016244))

(assert (= (and d!2390071 (not c!1471320)) b!8016245))

(declare-fun m!8379428 () Bool)

(assert (=> b!8016245 m!8379428))

(assert (=> b!8015540 d!2390071))

(declare-fun b!8016246 () Bool)

(declare-fun res!3169576 () Bool)

(declare-fun e!4722091 () Bool)

(assert (=> b!8016246 (=> (not res!3169576) (not e!4722091))))

(declare-fun call!744634 () Bool)

(assert (=> b!8016246 (= res!3169576 call!744634)))

(declare-fun e!4722092 () Bool)

(assert (=> b!8016246 (= e!4722092 e!4722091)))

(declare-fun b!8016247 () Bool)

(declare-fun e!4722087 () Bool)

(declare-fun e!4722088 () Bool)

(assert (=> b!8016247 (= e!4722087 e!4722088)))

(declare-fun c!1471322 () Bool)

(assert (=> b!8016247 (= c!1471322 ((_ is Star!21689) (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))

(declare-fun bm!744627 () Bool)

(declare-fun c!1471321 () Bool)

(assert (=> bm!744627 (= call!744634 (validRegex!11993 (ite c!1471321 (regOne!43891 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))) (regOne!43890 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))))

(declare-fun bm!744628 () Bool)

(declare-fun call!744632 () Bool)

(assert (=> bm!744628 (= call!744632 (validRegex!11993 (ite c!1471322 (reg!22018 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))) (ite c!1471321 (regTwo!43891 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))) (regTwo!43890 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422))))))))))

(declare-fun b!8016248 () Bool)

(declare-fun e!4722086 () Bool)

(assert (=> b!8016248 (= e!4722088 e!4722086)))

(declare-fun res!3169577 () Bool)

(assert (=> b!8016248 (= res!3169577 (not (nullable!9731 (reg!22018 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))))

(assert (=> b!8016248 (=> (not res!3169577) (not e!4722086))))

(declare-fun bm!744629 () Bool)

(declare-fun call!744633 () Bool)

(assert (=> bm!744629 (= call!744633 call!744632)))

(declare-fun b!8016249 () Bool)

(assert (=> b!8016249 (= e!4722086 call!744632)))

(declare-fun b!8016250 () Bool)

(declare-fun res!3169574 () Bool)

(declare-fun e!4722089 () Bool)

(assert (=> b!8016250 (=> res!3169574 e!4722089)))

(assert (=> b!8016250 (= res!3169574 (not ((_ is Concat!30688) (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422))))))))

(assert (=> b!8016250 (= e!4722092 e!4722089)))

(declare-fun d!2390073 () Bool)

(declare-fun res!3169575 () Bool)

(assert (=> d!2390073 (=> res!3169575 e!4722087)))

(assert (=> d!2390073 (= res!3169575 ((_ is ElementMatch!21689) (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))

(assert (=> d!2390073 (= (validRegex!11993 (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))) e!4722087)))

(declare-fun b!8016251 () Bool)

(assert (=> b!8016251 (= e!4722088 e!4722092)))

(assert (=> b!8016251 (= c!1471321 ((_ is Union!21689) (ite c!1471194 (reg!22018 r!15422) (ite c!1471193 (regTwo!43891 r!15422) (regTwo!43890 r!15422)))))))

(declare-fun b!8016252 () Bool)

(assert (=> b!8016252 (= e!4722091 call!744633)))

(declare-fun b!8016253 () Bool)

(declare-fun e!4722090 () Bool)

(assert (=> b!8016253 (= e!4722090 call!744633)))

(declare-fun b!8016254 () Bool)

(assert (=> b!8016254 (= e!4722089 e!4722090)))

(declare-fun res!3169573 () Bool)

(assert (=> b!8016254 (=> (not res!3169573) (not e!4722090))))

(assert (=> b!8016254 (= res!3169573 call!744634)))

(assert (= (and d!2390073 (not res!3169575)) b!8016247))

(assert (= (and b!8016247 c!1471322) b!8016248))

(assert (= (and b!8016247 (not c!1471322)) b!8016251))

(assert (= (and b!8016248 res!3169577) b!8016249))

(assert (= (and b!8016251 c!1471321) b!8016246))

(assert (= (and b!8016251 (not c!1471321)) b!8016250))

(assert (= (and b!8016246 res!3169576) b!8016252))

(assert (= (and b!8016250 (not res!3169574)) b!8016254))

(assert (= (and b!8016254 res!3169573) b!8016253))

(assert (= (or b!8016252 b!8016253) bm!744629))

(assert (= (or b!8016246 b!8016254) bm!744627))

(assert (= (or b!8016249 bm!744629) bm!744628))

(declare-fun m!8379430 () Bool)

(assert (=> bm!744627 m!8379430))

(declare-fun m!8379432 () Bool)

(assert (=> bm!744628 m!8379432))

(declare-fun m!8379434 () Bool)

(assert (=> b!8016248 m!8379434))

(assert (=> bm!744559 d!2390073))

(declare-fun d!2390075 () Bool)

(declare-fun e!4722095 () Bool)

(assert (=> d!2390075 e!4722095))

(declare-fun res!3169581 () Bool)

(assert (=> d!2390075 (=> res!3169581 e!4722095)))

(declare-fun lt!2718566 () Bool)

(assert (=> d!2390075 (= res!3169581 (not lt!2718566))))

(declare-fun e!4722094 () Bool)

(assert (=> d!2390075 (= lt!2718566 e!4722094)))

(declare-fun res!3169578 () Bool)

(assert (=> d!2390075 (=> res!3169578 e!4722094)))

(assert (=> d!2390075 (= res!3169578 ((_ is Nil!74794) (tail!15886 testedP!353)))))

(assert (=> d!2390075 (= (isPrefix!6741 (tail!15886 testedP!353) (tail!15886 lt!2718410)) lt!2718566)))

(declare-fun b!8016256 () Bool)

(declare-fun res!3169580 () Bool)

(declare-fun e!4722093 () Bool)

(assert (=> b!8016256 (=> (not res!3169580) (not e!4722093))))

(assert (=> b!8016256 (= res!3169580 (= (head!16363 (tail!15886 testedP!353)) (head!16363 (tail!15886 lt!2718410))))))

(declare-fun b!8016255 () Bool)

(assert (=> b!8016255 (= e!4722094 e!4722093)))

(declare-fun res!3169579 () Bool)

(assert (=> b!8016255 (=> (not res!3169579) (not e!4722093))))

(assert (=> b!8016255 (= res!3169579 (not ((_ is Nil!74794) (tail!15886 lt!2718410))))))

(declare-fun b!8016258 () Bool)

(assert (=> b!8016258 (= e!4722095 (>= (size!43591 (tail!15886 lt!2718410)) (size!43591 (tail!15886 testedP!353))))))

(declare-fun b!8016257 () Bool)

(assert (=> b!8016257 (= e!4722093 (isPrefix!6741 (tail!15886 (tail!15886 testedP!353)) (tail!15886 (tail!15886 lt!2718410))))))

(assert (= (and d!2390075 (not res!3169578)) b!8016255))

(assert (= (and b!8016255 res!3169579) b!8016256))

(assert (= (and b!8016256 res!3169580) b!8016257))

(assert (= (and d!2390075 (not res!3169581)) b!8016258))

(assert (=> b!8016256 m!8378780))

(assert (=> b!8016256 m!8379406))

(assert (=> b!8016256 m!8378790))

(declare-fun m!8379436 () Bool)

(assert (=> b!8016256 m!8379436))

(assert (=> b!8016258 m!8378790))

(declare-fun m!8379438 () Bool)

(assert (=> b!8016258 m!8379438))

(assert (=> b!8016258 m!8378780))

(assert (=> b!8016258 m!8379408))

(assert (=> b!8016257 m!8378780))

(assert (=> b!8016257 m!8379410))

(assert (=> b!8016257 m!8378790))

(declare-fun m!8379440 () Bool)

(assert (=> b!8016257 m!8379440))

(assert (=> b!8016257 m!8379410))

(assert (=> b!8016257 m!8379440))

(declare-fun m!8379442 () Bool)

(assert (=> b!8016257 m!8379442))

(assert (=> b!8015513 d!2390075))

(assert (=> b!8015513 d!2390059))

(declare-fun d!2390077 () Bool)

(assert (=> d!2390077 (= (tail!15886 lt!2718410) (t!390661 lt!2718410))))

(assert (=> b!8015513 d!2390077))

(declare-fun d!2390079 () Bool)

(assert (=> d!2390079 (= (nullable!9731 (regOne!43890 r!15422)) (nullableFct!3847 (regOne!43890 r!15422)))))

(declare-fun bs!1971040 () Bool)

(assert (= bs!1971040 d!2390079))

(declare-fun m!8379444 () Bool)

(assert (=> bs!1971040 m!8379444))

(assert (=> b!8015592 d!2390079))

(declare-fun d!2390081 () Bool)

(declare-fun lt!2718567 () Int)

(assert (=> d!2390081 (>= lt!2718567 0)))

(declare-fun e!4722096 () Int)

(assert (=> d!2390081 (= lt!2718567 e!4722096)))

(declare-fun c!1471323 () Bool)

(assert (=> d!2390081 (= c!1471323 ((_ is Nil!74794) lt!2718410))))

(assert (=> d!2390081 (= (size!43591 lt!2718410) lt!2718567)))

(declare-fun b!8016259 () Bool)

(assert (=> b!8016259 (= e!4722096 0)))

(declare-fun b!8016260 () Bool)

(assert (=> b!8016260 (= e!4722096 (+ 1 (size!43591 (t!390661 lt!2718410))))))

(assert (= (and d!2390081 c!1471323) b!8016259))

(assert (= (and d!2390081 (not c!1471323)) b!8016260))

(declare-fun m!8379446 () Bool)

(assert (=> b!8016260 m!8379446))

(assert (=> b!8015514 d!2390081))

(assert (=> b!8015514 d!2389769))

(declare-fun d!2390083 () Bool)

(assert (=> d!2390083 (= (head!16363 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))) (h!81242 (++!18515 testedP!353 (Cons!74794 (head!16363 lt!2718417) Nil!74794))))))

(assert (=> b!8015681 d!2390083))

(assert (=> b!8015681 d!2390005))

(declare-fun d!2390085 () Bool)

(assert (=> d!2390085 (= testedSuffix!271 lt!2718417)))

(assert (=> d!2390085 true))

(declare-fun _$63!1479 () Unit!170874)

(assert (=> d!2390085 (= (choose!60415 testedP!353 testedSuffix!271 testedP!353 lt!2718417 totalInput!1349) _$63!1479)))

(assert (=> d!2389853 d!2390085))

(assert (=> d!2389853 d!2389755))

(declare-fun d!2390087 () Bool)

(declare-fun lt!2718568 () Int)

(assert (=> d!2390087 (>= lt!2718568 0)))

(declare-fun e!4722097 () Int)

(assert (=> d!2390087 (= lt!2718568 e!4722097)))

(declare-fun c!1471324 () Bool)

(assert (=> d!2390087 (= c!1471324 ((_ is Nil!74794) lt!2718503))))

(assert (=> d!2390087 (= (size!43591 lt!2718503) lt!2718568)))

(declare-fun b!8016261 () Bool)

(assert (=> b!8016261 (= e!4722097 0)))

(declare-fun b!8016262 () Bool)

(assert (=> b!8016262 (= e!4722097 (+ 1 (size!43591 (t!390661 lt!2718503))))))

(assert (= (and d!2390087 c!1471324) b!8016261))

(assert (= (and d!2390087 (not c!1471324)) b!8016262))

(declare-fun m!8379448 () Bool)

(assert (=> b!8016262 m!8379448))

(assert (=> b!8015719 d!2390087))

(assert (=> b!8015719 d!2389769))

(declare-fun d!2390089 () Bool)

(declare-fun lt!2718569 () Int)

(assert (=> d!2390089 (>= lt!2718569 0)))

(declare-fun e!4722098 () Int)

(assert (=> d!2390089 (= lt!2718569 e!4722098)))

(declare-fun c!1471325 () Bool)

(assert (=> d!2390089 (= c!1471325 ((_ is Nil!74794) (Cons!74794 lt!2718413 Nil!74794)))))

(assert (=> d!2390089 (= (size!43591 (Cons!74794 lt!2718413 Nil!74794)) lt!2718569)))

(declare-fun b!8016263 () Bool)

(assert (=> b!8016263 (= e!4722098 0)))

(declare-fun b!8016264 () Bool)

(assert (=> b!8016264 (= e!4722098 (+ 1 (size!43591 (t!390661 (Cons!74794 lt!2718413 Nil!74794)))))))

(assert (= (and d!2390089 c!1471325) b!8016263))

(assert (= (and d!2390089 (not c!1471325)) b!8016264))

(declare-fun m!8379450 () Bool)

(assert (=> b!8016264 m!8379450))

(assert (=> b!8015719 d!2390089))

(declare-fun d!2390091 () Bool)

(declare-fun e!4722100 () Bool)

(assert (=> d!2390091 e!4722100))

(declare-fun res!3169582 () Bool)

(assert (=> d!2390091 (=> (not res!3169582) (not e!4722100))))

(declare-fun lt!2718570 () List!74918)

(assert (=> d!2390091 (= res!3169582 (= (content!15920 lt!2718570) ((_ map or) (content!15920 testedP!353) (content!15920 lt!2718511))))))

(declare-fun e!4722099 () List!74918)

(assert (=> d!2390091 (= lt!2718570 e!4722099)))

(declare-fun c!1471326 () Bool)

(assert (=> d!2390091 (= c!1471326 ((_ is Nil!74794) testedP!353))))

(assert (=> d!2390091 (= (++!18515 testedP!353 lt!2718511) lt!2718570)))

(declare-fun b!8016268 () Bool)

(assert (=> b!8016268 (= e!4722100 (or (not (= lt!2718511 Nil!74794)) (= lt!2718570 testedP!353)))))

(declare-fun b!8016266 () Bool)

(assert (=> b!8016266 (= e!4722099 (Cons!74794 (h!81242 testedP!353) (++!18515 (t!390661 testedP!353) lt!2718511)))))

(declare-fun b!8016265 () Bool)

(assert (=> b!8016265 (= e!4722099 lt!2718511)))

(declare-fun b!8016267 () Bool)

(declare-fun res!3169583 () Bool)

(assert (=> b!8016267 (=> (not res!3169583) (not e!4722100))))

(assert (=> b!8016267 (= res!3169583 (= (size!43591 lt!2718570) (+ (size!43591 testedP!353) (size!43591 lt!2718511))))))

(assert (= (and d!2390091 c!1471326) b!8016265))

(assert (= (and d!2390091 (not c!1471326)) b!8016266))

(assert (= (and d!2390091 res!3169582) b!8016267))

(assert (= (and b!8016267 res!3169583) b!8016268))

(declare-fun m!8379452 () Bool)

(assert (=> d!2390091 m!8379452))

(assert (=> d!2390091 m!8378810))

(declare-fun m!8379454 () Bool)

(assert (=> d!2390091 m!8379454))

(declare-fun m!8379456 () Bool)

(assert (=> b!8016266 m!8379456))

(declare-fun m!8379458 () Bool)

(assert (=> b!8016267 m!8379458))

(assert (=> b!8016267 m!8378762))

(declare-fun m!8379460 () Bool)

(assert (=> b!8016267 m!8379460))

(assert (=> d!2389855 d!2390091))

(assert (=> d!2389855 d!2389775))

(assert (=> d!2389855 d!2389769))

(declare-fun call!744638 () Regex!21689)

(declare-fun e!4722102 () Regex!21689)

(declare-fun b!8016269 () Bool)

(assert (=> b!8016269 (= e!4722102 (Union!21689 (Concat!30688 call!744638 (regTwo!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))) EmptyLang!21689))))

(declare-fun d!2390093 () Bool)

(declare-fun lt!2718571 () Regex!21689)

(assert (=> d!2390093 (validRegex!11993 lt!2718571)))

(declare-fun e!4722101 () Regex!21689)

(assert (=> d!2390093 (= lt!2718571 e!4722101)))

(declare-fun c!1471329 () Bool)

(assert (=> d!2390093 (= c!1471329 (or ((_ is EmptyExpr!21689) (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))) ((_ is EmptyLang!21689) (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))))))

(assert (=> d!2390093 (validRegex!11993 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))))

(assert (=> d!2390093 (= (derivativeStep!6640 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)) lt!2718413) lt!2718571)))

(declare-fun c!1471330 () Bool)

(declare-fun c!1471328 () Bool)

(declare-fun c!1471331 () Bool)

(declare-fun call!744637 () Regex!21689)

(declare-fun bm!744630 () Bool)

(assert (=> bm!744630 (= call!744637 (derivativeStep!6640 (ite c!1471330 (regTwo!43891 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))) (ite c!1471331 (reg!22018 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))) (ite c!1471328 (regTwo!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))) (regOne!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))))) lt!2718413))))

(declare-fun e!4722104 () Regex!21689)

(declare-fun b!8016270 () Bool)

(assert (=> b!8016270 (= e!4722104 (ite (= lt!2718413 (c!1471158 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))) EmptyExpr!21689 EmptyLang!21689))))

(declare-fun bm!744631 () Bool)

(declare-fun call!744636 () Regex!21689)

(assert (=> bm!744631 (= call!744636 call!744637)))

(declare-fun b!8016271 () Bool)

(declare-fun e!4722105 () Regex!21689)

(assert (=> b!8016271 (= e!4722105 (Concat!30688 call!744636 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun bm!744632 () Bool)

(assert (=> bm!744632 (= call!744638 call!744636)))

(declare-fun b!8016272 () Bool)

(assert (=> b!8016272 (= e!4722101 e!4722104)))

(declare-fun c!1471327 () Bool)

(assert (=> b!8016272 (= c!1471327 ((_ is ElementMatch!21689) (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun bm!744633 () Bool)

(declare-fun call!744635 () Regex!21689)

(assert (=> bm!744633 (= call!744635 (derivativeStep!6640 (ite c!1471330 (regOne!43891 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))) (regOne!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))) lt!2718413))))

(declare-fun b!8016273 () Bool)

(assert (=> b!8016273 (= e!4722101 EmptyLang!21689)))

(declare-fun b!8016274 () Bool)

(assert (=> b!8016274 (= e!4722102 (Union!21689 (Concat!30688 call!744635 (regTwo!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))) call!744638))))

(declare-fun b!8016275 () Bool)

(assert (=> b!8016275 (= c!1471330 ((_ is Union!21689) (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun e!4722103 () Regex!21689)

(assert (=> b!8016275 (= e!4722104 e!4722103)))

(declare-fun b!8016276 () Bool)

(assert (=> b!8016276 (= e!4722103 (Union!21689 call!744635 call!744637))))

(declare-fun b!8016277 () Bool)

(assert (=> b!8016277 (= e!4722103 e!4722105)))

(assert (=> b!8016277 (= c!1471331 ((_ is Star!21689) (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun b!8016278 () Bool)

(assert (=> b!8016278 (= c!1471328 (nullable!9731 (regOne!43890 (ite c!1471183 (regOne!43891 r!15422) (regOne!43890 r!15422)))))))

(assert (=> b!8016278 (= e!4722105 e!4722102)))

(assert (= (and d!2390093 c!1471329) b!8016273))

(assert (= (and d!2390093 (not c!1471329)) b!8016272))

(assert (= (and b!8016272 c!1471327) b!8016270))

(assert (= (and b!8016272 (not c!1471327)) b!8016275))

(assert (= (and b!8016275 c!1471330) b!8016276))

(assert (= (and b!8016275 (not c!1471330)) b!8016277))

(assert (= (and b!8016277 c!1471331) b!8016271))

(assert (= (and b!8016277 (not c!1471331)) b!8016278))

(assert (= (and b!8016278 c!1471328) b!8016274))

(assert (= (and b!8016278 (not c!1471328)) b!8016269))

(assert (= (or b!8016274 b!8016269) bm!744632))

(assert (= (or b!8016271 bm!744632) bm!744631))

(assert (= (or b!8016276 bm!744631) bm!744630))

(assert (= (or b!8016276 b!8016274) bm!744633))

(declare-fun m!8379462 () Bool)

(assert (=> d!2390093 m!8379462))

(declare-fun m!8379464 () Bool)

(assert (=> d!2390093 m!8379464))

(declare-fun m!8379466 () Bool)

(assert (=> bm!744630 m!8379466))

(declare-fun m!8379468 () Bool)

(assert (=> bm!744633 m!8379468))

(declare-fun m!8379470 () Bool)

(assert (=> b!8016278 m!8379470))

(assert (=> bm!744551 d!2390093))

(declare-fun bm!744638 () Bool)

(declare-fun call!744643 () Bool)

(declare-fun c!1471334 () Bool)

(assert (=> bm!744638 (= call!744643 (lostCause!2076 (ite c!1471334 (regOne!43891 r!15422) (regTwo!43890 r!15422))))))

(declare-fun b!8016293 () Bool)

(declare-fun e!4722123 () Bool)

(declare-fun call!744644 () Bool)

(assert (=> b!8016293 (= e!4722123 call!744644)))

(declare-fun b!8016294 () Bool)

(declare-fun e!4722119 () Bool)

(declare-fun e!4722118 () Bool)

(assert (=> b!8016294 (= e!4722119 e!4722118)))

(assert (=> b!8016294 (= c!1471334 ((_ is Union!21689) r!15422))))

(declare-fun b!8016295 () Bool)

(declare-fun e!4722121 () Bool)

(assert (=> b!8016295 (= e!4722121 call!744643)))

(declare-fun d!2390095 () Bool)

(declare-fun lt!2718574 () Bool)

(declare-datatypes ((Option!17971 0))(
  ( (None!17970) (Some!17970 (v!55155 List!74918)) )
))
(declare-fun isEmpty!42982 (Option!17971) Bool)

(declare-fun getLanguageWitness!1162 (Regex!21689) Option!17971)

(assert (=> d!2390095 (= lt!2718574 (isEmpty!42982 (getLanguageWitness!1162 r!15422)))))

(declare-fun e!4722120 () Bool)

(assert (=> d!2390095 (= lt!2718574 e!4722120)))

(declare-fun res!3169597 () Bool)

(assert (=> d!2390095 (=> (not res!3169597) (not e!4722120))))

(assert (=> d!2390095 (= res!3169597 (not ((_ is EmptyExpr!21689) r!15422)))))

(assert (=> d!2390095 (= (lostCauseFct!618 r!15422) lt!2718574)))

(declare-fun b!8016296 () Bool)

(declare-fun e!4722122 () Bool)

(assert (=> b!8016296 (= e!4722120 e!4722122)))

(declare-fun res!3169595 () Bool)

(assert (=> b!8016296 (=> res!3169595 e!4722122)))

(assert (=> b!8016296 (= res!3169595 ((_ is EmptyLang!21689) r!15422))))

(declare-fun bm!744639 () Bool)

(assert (=> bm!744639 (= call!744644 (lostCause!2076 (ite c!1471334 (regTwo!43891 r!15422) (regOne!43890 r!15422))))))

(declare-fun b!8016297 () Bool)

(assert (=> b!8016297 (= e!4722122 e!4722119)))

(declare-fun res!3169596 () Bool)

(assert (=> b!8016297 (=> (not res!3169596) (not e!4722119))))

(assert (=> b!8016297 (= res!3169596 (and (not ((_ is ElementMatch!21689) r!15422)) (not ((_ is Star!21689) r!15422))))))

(declare-fun b!8016298 () Bool)

(assert (=> b!8016298 (= e!4722118 e!4722121)))

(declare-fun res!3169594 () Bool)

(assert (=> b!8016298 (= res!3169594 call!744644)))

(assert (=> b!8016298 (=> res!3169594 e!4722121)))

(declare-fun b!8016299 () Bool)

(assert (=> b!8016299 (= e!4722118 e!4722123)))

(declare-fun res!3169598 () Bool)

(assert (=> b!8016299 (= res!3169598 call!744643)))

(assert (=> b!8016299 (=> (not res!3169598) (not e!4722123))))

(assert (= (and d!2390095 res!3169597) b!8016296))

(assert (= (and b!8016296 (not res!3169595)) b!8016297))

(assert (= (and b!8016297 res!3169596) b!8016294))

(assert (= (and b!8016294 c!1471334) b!8016299))

(assert (= (and b!8016294 (not c!1471334)) b!8016298))

(assert (= (and b!8016299 res!3169598) b!8016293))

(assert (= (and b!8016298 (not res!3169594)) b!8016295))

(assert (= (or b!8016299 b!8016295) bm!744638))

(assert (= (or b!8016293 b!8016298) bm!744639))

(declare-fun m!8379472 () Bool)

(assert (=> bm!744638 m!8379472))

(declare-fun m!8379474 () Bool)

(assert (=> d!2390095 m!8379474))

(assert (=> d!2390095 m!8379474))

(declare-fun m!8379476 () Bool)

(assert (=> d!2390095 m!8379476))

(declare-fun m!8379478 () Bool)

(assert (=> bm!744639 m!8379478))

(assert (=> d!2389851 d!2390095))

(declare-fun d!2390097 () Bool)

(declare-fun lt!2718575 () List!74918)

(assert (=> d!2390097 (= (++!18515 (t!390661 testedP!353) lt!2718575) (tail!15886 totalInput!1349))))

(declare-fun e!4722124 () List!74918)

(assert (=> d!2390097 (= lt!2718575 e!4722124)))

(declare-fun c!1471335 () Bool)

(assert (=> d!2390097 (= c!1471335 ((_ is Cons!74794) (t!390661 testedP!353)))))

(assert (=> d!2390097 (>= (size!43591 (tail!15886 totalInput!1349)) (size!43591 (t!390661 testedP!353)))))

(assert (=> d!2390097 (= (getSuffix!3936 (tail!15886 totalInput!1349) (t!390661 testedP!353)) lt!2718575)))

(declare-fun b!8016300 () Bool)

(assert (=> b!8016300 (= e!4722124 (getSuffix!3936 (tail!15886 (tail!15886 totalInput!1349)) (t!390661 (t!390661 testedP!353))))))

(declare-fun b!8016301 () Bool)

(assert (=> b!8016301 (= e!4722124 (tail!15886 totalInput!1349))))

(assert (= (and d!2390097 c!1471335) b!8016300))

(assert (= (and d!2390097 (not c!1471335)) b!8016301))

(declare-fun m!8379480 () Bool)

(assert (=> d!2390097 m!8379480))

(assert (=> d!2390097 m!8378782))

(assert (=> d!2390097 m!8379214))

(assert (=> d!2390097 m!8378804))

(assert (=> b!8016300 m!8378782))

(assert (=> b!8016300 m!8379220))

(assert (=> b!8016300 m!8379220))

(declare-fun m!8379482 () Bool)

(assert (=> b!8016300 m!8379482))

(assert (=> b!8015776 d!2390097))

(assert (=> b!8015776 d!2389963))

(assert (=> b!8015508 d!2390067))

(assert (=> b!8015508 d!2390005))

(declare-fun d!2390099 () Bool)

(declare-fun lt!2718576 () Int)

(assert (=> d!2390099 (>= lt!2718576 0)))

(declare-fun e!4722125 () Int)

(assert (=> d!2390099 (= lt!2718576 e!4722125)))

(declare-fun c!1471336 () Bool)

(assert (=> d!2390099 (= c!1471336 ((_ is Nil!74794) lt!2718504))))

(assert (=> d!2390099 (= (size!43591 lt!2718504) lt!2718576)))

(declare-fun b!8016302 () Bool)

(assert (=> b!8016302 (= e!4722125 0)))

(declare-fun b!8016303 () Bool)

(assert (=> b!8016303 (= e!4722125 (+ 1 (size!43591 (t!390661 lt!2718504))))))

(assert (= (and d!2390099 c!1471336) b!8016302))

(assert (= (and d!2390099 (not c!1471336)) b!8016303))

(declare-fun m!8379484 () Bool)

(assert (=> b!8016303 m!8379484))

(assert (=> b!8015723 d!2390099))

(assert (=> b!8015723 d!2389769))

(declare-fun d!2390101 () Bool)

(declare-fun lt!2718577 () Int)

(assert (=> d!2390101 (>= lt!2718577 0)))

(declare-fun e!4722126 () Int)

(assert (=> d!2390101 (= lt!2718577 e!4722126)))

(declare-fun c!1471337 () Bool)

(assert (=> d!2390101 (= c!1471337 ((_ is Nil!74794) (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))

(assert (=> d!2390101 (= (size!43591 (Cons!74794 (head!16363 lt!2718417) Nil!74794)) lt!2718577)))

(declare-fun b!8016304 () Bool)

(assert (=> b!8016304 (= e!4722126 0)))

(declare-fun b!8016305 () Bool)

(assert (=> b!8016305 (= e!4722126 (+ 1 (size!43591 (t!390661 (Cons!74794 (head!16363 lt!2718417) Nil!74794)))))))

(assert (= (and d!2390101 c!1471337) b!8016304))

(assert (= (and d!2390101 (not c!1471337)) b!8016305))

(declare-fun m!8379486 () Bool)

(assert (=> b!8016305 m!8379486))

(assert (=> b!8015723 d!2390101))

(declare-fun d!2390103 () Bool)

(declare-fun c!1471338 () Bool)

(assert (=> d!2390103 (= c!1471338 ((_ is Nil!74794) lt!2718494))))

(declare-fun e!4722127 () (InoxSet C!43716))

(assert (=> d!2390103 (= (content!15920 lt!2718494) e!4722127)))

(declare-fun b!8016306 () Bool)

(assert (=> b!8016306 (= e!4722127 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8016307 () Bool)

(assert (=> b!8016307 (= e!4722127 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718494) true) (content!15920 (t!390661 lt!2718494))))))

(assert (= (and d!2390103 c!1471338) b!8016306))

(assert (= (and d!2390103 (not c!1471338)) b!8016307))

(declare-fun m!8379488 () Bool)

(assert (=> b!8016307 m!8379488))

(declare-fun m!8379490 () Bool)

(assert (=> b!8016307 m!8379490))

(assert (=> d!2389829 d!2390103))

(declare-fun d!2390105 () Bool)

(declare-fun c!1471339 () Bool)

(assert (=> d!2390105 (= c!1471339 ((_ is Nil!74794) lt!2718419))))

(declare-fun e!4722128 () (InoxSet C!43716))

(assert (=> d!2390105 (= (content!15920 lt!2718419) e!4722128)))

(declare-fun b!8016308 () Bool)

(assert (=> b!8016308 (= e!4722128 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8016309 () Bool)

(assert (=> b!8016309 (= e!4722128 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718419) true) (content!15920 (t!390661 lt!2718419))))))

(assert (= (and d!2390105 c!1471339) b!8016308))

(assert (= (and d!2390105 (not c!1471339)) b!8016309))

(declare-fun m!8379492 () Bool)

(assert (=> b!8016309 m!8379492))

(assert (=> b!8016309 m!8379144))

(assert (=> d!2389829 d!2390105))

(declare-fun d!2390107 () Bool)

(declare-fun c!1471340 () Bool)

(assert (=> d!2390107 (= c!1471340 ((_ is Nil!74794) lt!2718420))))

(declare-fun e!4722129 () (InoxSet C!43716))

(assert (=> d!2390107 (= (content!15920 lt!2718420) e!4722129)))

(declare-fun b!8016310 () Bool)

(assert (=> b!8016310 (= e!4722129 ((as const (Array C!43716 Bool)) false))))

(declare-fun b!8016311 () Bool)

(assert (=> b!8016311 (= e!4722129 ((_ map or) (store ((as const (Array C!43716 Bool)) false) (h!81242 lt!2718420) true) (content!15920 (t!390661 lt!2718420))))))

(assert (= (and d!2390107 c!1471340) b!8016310))

(assert (= (and d!2390107 (not c!1471340)) b!8016311))

(declare-fun m!8379494 () Bool)

(assert (=> b!8016311 m!8379494))

(declare-fun m!8379496 () Bool)

(assert (=> b!8016311 m!8379496))

(assert (=> d!2389829 d!2390107))

(declare-fun b!8016313 () Bool)

(declare-fun e!4722130 () Bool)

(declare-fun tp!2399375 () Bool)

(declare-fun tp!2399372 () Bool)

(assert (=> b!8016313 (= e!4722130 (and tp!2399375 tp!2399372))))

(declare-fun b!8016312 () Bool)

(assert (=> b!8016312 (= e!4722130 tp_is_empty!53921)))

(assert (=> b!8015791 (= tp!2399215 e!4722130)))

(declare-fun b!8016315 () Bool)

(declare-fun tp!2399373 () Bool)

(declare-fun tp!2399371 () Bool)

(assert (=> b!8016315 (= e!4722130 (and tp!2399373 tp!2399371))))

(declare-fun b!8016314 () Bool)

(declare-fun tp!2399374 () Bool)

(assert (=> b!8016314 (= e!4722130 tp!2399374)))

(assert (= (and b!8015791 ((_ is ElementMatch!21689) (regOne!43891 (regOne!43891 r!15422)))) b!8016312))

(assert (= (and b!8015791 ((_ is Concat!30688) (regOne!43891 (regOne!43891 r!15422)))) b!8016313))

(assert (= (and b!8015791 ((_ is Star!21689) (regOne!43891 (regOne!43891 r!15422)))) b!8016314))

(assert (= (and b!8015791 ((_ is Union!21689) (regOne!43891 (regOne!43891 r!15422)))) b!8016315))

(declare-fun b!8016317 () Bool)

(declare-fun e!4722131 () Bool)

(declare-fun tp!2399380 () Bool)

(declare-fun tp!2399377 () Bool)

(assert (=> b!8016317 (= e!4722131 (and tp!2399380 tp!2399377))))

(declare-fun b!8016316 () Bool)

(assert (=> b!8016316 (= e!4722131 tp_is_empty!53921)))

(assert (=> b!8015791 (= tp!2399213 e!4722131)))

(declare-fun b!8016319 () Bool)

(declare-fun tp!2399378 () Bool)

(declare-fun tp!2399376 () Bool)

(assert (=> b!8016319 (= e!4722131 (and tp!2399378 tp!2399376))))

(declare-fun b!8016318 () Bool)

(declare-fun tp!2399379 () Bool)

(assert (=> b!8016318 (= e!4722131 tp!2399379)))

(assert (= (and b!8015791 ((_ is ElementMatch!21689) (regTwo!43891 (regOne!43891 r!15422)))) b!8016316))

(assert (= (and b!8015791 ((_ is Concat!30688) (regTwo!43891 (regOne!43891 r!15422)))) b!8016317))

(assert (= (and b!8015791 ((_ is Star!21689) (regTwo!43891 (regOne!43891 r!15422)))) b!8016318))

(assert (= (and b!8015791 ((_ is Union!21689) (regTwo!43891 (regOne!43891 r!15422)))) b!8016319))

(declare-fun b!8016321 () Bool)

(declare-fun e!4722132 () Bool)

(declare-fun tp!2399385 () Bool)

(declare-fun tp!2399382 () Bool)

(assert (=> b!8016321 (= e!4722132 (and tp!2399385 tp!2399382))))

(declare-fun b!8016320 () Bool)

(assert (=> b!8016320 (= e!4722132 tp_is_empty!53921)))

(assert (=> b!8015795 (= tp!2399220 e!4722132)))

(declare-fun b!8016323 () Bool)

(declare-fun tp!2399383 () Bool)

(declare-fun tp!2399381 () Bool)

(assert (=> b!8016323 (= e!4722132 (and tp!2399383 tp!2399381))))

(declare-fun b!8016322 () Bool)

(declare-fun tp!2399384 () Bool)

(assert (=> b!8016322 (= e!4722132 tp!2399384)))

(assert (= (and b!8015795 ((_ is ElementMatch!21689) (regOne!43891 (regTwo!43891 r!15422)))) b!8016320))

(assert (= (and b!8015795 ((_ is Concat!30688) (regOne!43891 (regTwo!43891 r!15422)))) b!8016321))

(assert (= (and b!8015795 ((_ is Star!21689) (regOne!43891 (regTwo!43891 r!15422)))) b!8016322))

(assert (= (and b!8015795 ((_ is Union!21689) (regOne!43891 (regTwo!43891 r!15422)))) b!8016323))

(declare-fun b!8016325 () Bool)

(declare-fun e!4722133 () Bool)

(declare-fun tp!2399390 () Bool)

(declare-fun tp!2399387 () Bool)

(assert (=> b!8016325 (= e!4722133 (and tp!2399390 tp!2399387))))

(declare-fun b!8016324 () Bool)

(assert (=> b!8016324 (= e!4722133 tp_is_empty!53921)))

(assert (=> b!8015795 (= tp!2399218 e!4722133)))

(declare-fun b!8016327 () Bool)

(declare-fun tp!2399388 () Bool)

(declare-fun tp!2399386 () Bool)

(assert (=> b!8016327 (= e!4722133 (and tp!2399388 tp!2399386))))

(declare-fun b!8016326 () Bool)

(declare-fun tp!2399389 () Bool)

(assert (=> b!8016326 (= e!4722133 tp!2399389)))

(assert (= (and b!8015795 ((_ is ElementMatch!21689) (regTwo!43891 (regTwo!43891 r!15422)))) b!8016324))

(assert (= (and b!8015795 ((_ is Concat!30688) (regTwo!43891 (regTwo!43891 r!15422)))) b!8016325))

(assert (= (and b!8015795 ((_ is Star!21689) (regTwo!43891 (regTwo!43891 r!15422)))) b!8016326))

(assert (= (and b!8015795 ((_ is Union!21689) (regTwo!43891 (regTwo!43891 r!15422)))) b!8016327))

(declare-fun b!8016329 () Bool)

(declare-fun e!4722134 () Bool)

(declare-fun tp!2399395 () Bool)

(declare-fun tp!2399392 () Bool)

(assert (=> b!8016329 (= e!4722134 (and tp!2399395 tp!2399392))))

(declare-fun b!8016328 () Bool)

(assert (=> b!8016328 (= e!4722134 tp_is_empty!53921)))

(assert (=> b!8015790 (= tp!2399216 e!4722134)))

(declare-fun b!8016331 () Bool)

(declare-fun tp!2399393 () Bool)

(declare-fun tp!2399391 () Bool)

(assert (=> b!8016331 (= e!4722134 (and tp!2399393 tp!2399391))))

(declare-fun b!8016330 () Bool)

(declare-fun tp!2399394 () Bool)

(assert (=> b!8016330 (= e!4722134 tp!2399394)))

(assert (= (and b!8015790 ((_ is ElementMatch!21689) (reg!22018 (regOne!43891 r!15422)))) b!8016328))

(assert (= (and b!8015790 ((_ is Concat!30688) (reg!22018 (regOne!43891 r!15422)))) b!8016329))

(assert (= (and b!8015790 ((_ is Star!21689) (reg!22018 (regOne!43891 r!15422)))) b!8016330))

(assert (= (and b!8015790 ((_ is Union!21689) (reg!22018 (regOne!43891 r!15422)))) b!8016331))

(declare-fun b!8016333 () Bool)

(declare-fun e!4722135 () Bool)

(declare-fun tp!2399400 () Bool)

(declare-fun tp!2399397 () Bool)

(assert (=> b!8016333 (= e!4722135 (and tp!2399400 tp!2399397))))

(declare-fun b!8016332 () Bool)

(assert (=> b!8016332 (= e!4722135 tp_is_empty!53921)))

(assert (=> b!8015799 (= tp!2399225 e!4722135)))

(declare-fun b!8016335 () Bool)

(declare-fun tp!2399398 () Bool)

(declare-fun tp!2399396 () Bool)

(assert (=> b!8016335 (= e!4722135 (and tp!2399398 tp!2399396))))

(declare-fun b!8016334 () Bool)

(declare-fun tp!2399399 () Bool)

(assert (=> b!8016334 (= e!4722135 tp!2399399)))

(assert (= (and b!8015799 ((_ is ElementMatch!21689) (regOne!43891 (regOne!43890 r!15422)))) b!8016332))

(assert (= (and b!8015799 ((_ is Concat!30688) (regOne!43891 (regOne!43890 r!15422)))) b!8016333))

(assert (= (and b!8015799 ((_ is Star!21689) (regOne!43891 (regOne!43890 r!15422)))) b!8016334))

(assert (= (and b!8015799 ((_ is Union!21689) (regOne!43891 (regOne!43890 r!15422)))) b!8016335))

(declare-fun b!8016337 () Bool)

(declare-fun e!4722136 () Bool)

(declare-fun tp!2399405 () Bool)

(declare-fun tp!2399402 () Bool)

(assert (=> b!8016337 (= e!4722136 (and tp!2399405 tp!2399402))))

(declare-fun b!8016336 () Bool)

(assert (=> b!8016336 (= e!4722136 tp_is_empty!53921)))

(assert (=> b!8015799 (= tp!2399223 e!4722136)))

(declare-fun b!8016339 () Bool)

(declare-fun tp!2399403 () Bool)

(declare-fun tp!2399401 () Bool)

(assert (=> b!8016339 (= e!4722136 (and tp!2399403 tp!2399401))))

(declare-fun b!8016338 () Bool)

(declare-fun tp!2399404 () Bool)

(assert (=> b!8016338 (= e!4722136 tp!2399404)))

(assert (= (and b!8015799 ((_ is ElementMatch!21689) (regTwo!43891 (regOne!43890 r!15422)))) b!8016336))

(assert (= (and b!8015799 ((_ is Concat!30688) (regTwo!43891 (regOne!43890 r!15422)))) b!8016337))

(assert (= (and b!8015799 ((_ is Star!21689) (regTwo!43891 (regOne!43890 r!15422)))) b!8016338))

(assert (= (and b!8015799 ((_ is Union!21689) (regTwo!43891 (regOne!43890 r!15422)))) b!8016339))

(declare-fun b!8016341 () Bool)

(declare-fun e!4722137 () Bool)

(declare-fun tp!2399410 () Bool)

(declare-fun tp!2399407 () Bool)

(assert (=> b!8016341 (= e!4722137 (and tp!2399410 tp!2399407))))

(declare-fun b!8016340 () Bool)

(assert (=> b!8016340 (= e!4722137 tp_is_empty!53921)))

(assert (=> b!8015794 (= tp!2399221 e!4722137)))

(declare-fun b!8016343 () Bool)

(declare-fun tp!2399408 () Bool)

(declare-fun tp!2399406 () Bool)

(assert (=> b!8016343 (= e!4722137 (and tp!2399408 tp!2399406))))

(declare-fun b!8016342 () Bool)

(declare-fun tp!2399409 () Bool)

(assert (=> b!8016342 (= e!4722137 tp!2399409)))

(assert (= (and b!8015794 ((_ is ElementMatch!21689) (reg!22018 (regTwo!43891 r!15422)))) b!8016340))

(assert (= (and b!8015794 ((_ is Concat!30688) (reg!22018 (regTwo!43891 r!15422)))) b!8016341))

(assert (= (and b!8015794 ((_ is Star!21689) (reg!22018 (regTwo!43891 r!15422)))) b!8016342))

(assert (= (and b!8015794 ((_ is Union!21689) (reg!22018 (regTwo!43891 r!15422)))) b!8016343))

(declare-fun b!8016345 () Bool)

(declare-fun e!4722138 () Bool)

(declare-fun tp!2399415 () Bool)

(declare-fun tp!2399412 () Bool)

(assert (=> b!8016345 (= e!4722138 (and tp!2399415 tp!2399412))))

(declare-fun b!8016344 () Bool)

(assert (=> b!8016344 (= e!4722138 tp_is_empty!53921)))

(assert (=> b!8015803 (= tp!2399230 e!4722138)))

(declare-fun b!8016347 () Bool)

(declare-fun tp!2399413 () Bool)

(declare-fun tp!2399411 () Bool)

(assert (=> b!8016347 (= e!4722138 (and tp!2399413 tp!2399411))))

(declare-fun b!8016346 () Bool)

(declare-fun tp!2399414 () Bool)

(assert (=> b!8016346 (= e!4722138 tp!2399414)))

(assert (= (and b!8015803 ((_ is ElementMatch!21689) (regOne!43891 (regTwo!43890 r!15422)))) b!8016344))

(assert (= (and b!8015803 ((_ is Concat!30688) (regOne!43891 (regTwo!43890 r!15422)))) b!8016345))

(assert (= (and b!8015803 ((_ is Star!21689) (regOne!43891 (regTwo!43890 r!15422)))) b!8016346))

(assert (= (and b!8015803 ((_ is Union!21689) (regOne!43891 (regTwo!43890 r!15422)))) b!8016347))

(declare-fun b!8016349 () Bool)

(declare-fun e!4722139 () Bool)

(declare-fun tp!2399420 () Bool)

(declare-fun tp!2399417 () Bool)

(assert (=> b!8016349 (= e!4722139 (and tp!2399420 tp!2399417))))

(declare-fun b!8016348 () Bool)

(assert (=> b!8016348 (= e!4722139 tp_is_empty!53921)))

(assert (=> b!8015803 (= tp!2399228 e!4722139)))

(declare-fun b!8016351 () Bool)

(declare-fun tp!2399418 () Bool)

(declare-fun tp!2399416 () Bool)

(assert (=> b!8016351 (= e!4722139 (and tp!2399418 tp!2399416))))

(declare-fun b!8016350 () Bool)

(declare-fun tp!2399419 () Bool)

(assert (=> b!8016350 (= e!4722139 tp!2399419)))

(assert (= (and b!8015803 ((_ is ElementMatch!21689) (regTwo!43891 (regTwo!43890 r!15422)))) b!8016348))

(assert (= (and b!8015803 ((_ is Concat!30688) (regTwo!43891 (regTwo!43890 r!15422)))) b!8016349))

(assert (= (and b!8015803 ((_ is Star!21689) (regTwo!43891 (regTwo!43890 r!15422)))) b!8016350))

(assert (= (and b!8015803 ((_ is Union!21689) (regTwo!43891 (regTwo!43890 r!15422)))) b!8016351))

(declare-fun b!8016353 () Bool)

(declare-fun e!4722140 () Bool)

(declare-fun tp!2399425 () Bool)

(declare-fun tp!2399422 () Bool)

(assert (=> b!8016353 (= e!4722140 (and tp!2399425 tp!2399422))))

(declare-fun b!8016352 () Bool)

(assert (=> b!8016352 (= e!4722140 tp_is_empty!53921)))

(assert (=> b!8015789 (= tp!2399217 e!4722140)))

(declare-fun b!8016355 () Bool)

(declare-fun tp!2399423 () Bool)

(declare-fun tp!2399421 () Bool)

(assert (=> b!8016355 (= e!4722140 (and tp!2399423 tp!2399421))))

(declare-fun b!8016354 () Bool)

(declare-fun tp!2399424 () Bool)

(assert (=> b!8016354 (= e!4722140 tp!2399424)))

(assert (= (and b!8015789 ((_ is ElementMatch!21689) (regOne!43890 (regOne!43891 r!15422)))) b!8016352))

(assert (= (and b!8015789 ((_ is Concat!30688) (regOne!43890 (regOne!43891 r!15422)))) b!8016353))

(assert (= (and b!8015789 ((_ is Star!21689) (regOne!43890 (regOne!43891 r!15422)))) b!8016354))

(assert (= (and b!8015789 ((_ is Union!21689) (regOne!43890 (regOne!43891 r!15422)))) b!8016355))

(declare-fun b!8016357 () Bool)

(declare-fun e!4722141 () Bool)

(declare-fun tp!2399430 () Bool)

(declare-fun tp!2399427 () Bool)

(assert (=> b!8016357 (= e!4722141 (and tp!2399430 tp!2399427))))

(declare-fun b!8016356 () Bool)

(assert (=> b!8016356 (= e!4722141 tp_is_empty!53921)))

(assert (=> b!8015789 (= tp!2399214 e!4722141)))

(declare-fun b!8016359 () Bool)

(declare-fun tp!2399428 () Bool)

(declare-fun tp!2399426 () Bool)

(assert (=> b!8016359 (= e!4722141 (and tp!2399428 tp!2399426))))

(declare-fun b!8016358 () Bool)

(declare-fun tp!2399429 () Bool)

(assert (=> b!8016358 (= e!4722141 tp!2399429)))

(assert (= (and b!8015789 ((_ is ElementMatch!21689) (regTwo!43890 (regOne!43891 r!15422)))) b!8016356))

(assert (= (and b!8015789 ((_ is Concat!30688) (regTwo!43890 (regOne!43891 r!15422)))) b!8016357))

(assert (= (and b!8015789 ((_ is Star!21689) (regTwo!43890 (regOne!43891 r!15422)))) b!8016358))

(assert (= (and b!8015789 ((_ is Union!21689) (regTwo!43890 (regOne!43891 r!15422)))) b!8016359))

(declare-fun b!8016360 () Bool)

(declare-fun e!4722142 () Bool)

(declare-fun tp!2399431 () Bool)

(assert (=> b!8016360 (= e!4722142 (and tp_is_empty!53921 tp!2399431))))

(assert (=> b!8015810 (= tp!2399237 e!4722142)))

(assert (= (and b!8015810 ((_ is Cons!74794) (t!390661 (t!390661 totalInput!1349)))) b!8016360))

(declare-fun b!8016362 () Bool)

(declare-fun e!4722143 () Bool)

(declare-fun tp!2399436 () Bool)

(declare-fun tp!2399433 () Bool)

(assert (=> b!8016362 (= e!4722143 (and tp!2399436 tp!2399433))))

(declare-fun b!8016361 () Bool)

(assert (=> b!8016361 (= e!4722143 tp_is_empty!53921)))

(assert (=> b!8015798 (= tp!2399226 e!4722143)))

(declare-fun b!8016364 () Bool)

(declare-fun tp!2399434 () Bool)

(declare-fun tp!2399432 () Bool)

(assert (=> b!8016364 (= e!4722143 (and tp!2399434 tp!2399432))))

(declare-fun b!8016363 () Bool)

(declare-fun tp!2399435 () Bool)

(assert (=> b!8016363 (= e!4722143 tp!2399435)))

(assert (= (and b!8015798 ((_ is ElementMatch!21689) (reg!22018 (regOne!43890 r!15422)))) b!8016361))

(assert (= (and b!8015798 ((_ is Concat!30688) (reg!22018 (regOne!43890 r!15422)))) b!8016362))

(assert (= (and b!8015798 ((_ is Star!21689) (reg!22018 (regOne!43890 r!15422)))) b!8016363))

(assert (= (and b!8015798 ((_ is Union!21689) (reg!22018 (regOne!43890 r!15422)))) b!8016364))

(declare-fun b!8016366 () Bool)

(declare-fun e!4722144 () Bool)

(declare-fun tp!2399441 () Bool)

(declare-fun tp!2399438 () Bool)

(assert (=> b!8016366 (= e!4722144 (and tp!2399441 tp!2399438))))

(declare-fun b!8016365 () Bool)

(assert (=> b!8016365 (= e!4722144 tp_is_empty!53921)))

(assert (=> b!8015793 (= tp!2399222 e!4722144)))

(declare-fun b!8016368 () Bool)

(declare-fun tp!2399439 () Bool)

(declare-fun tp!2399437 () Bool)

(assert (=> b!8016368 (= e!4722144 (and tp!2399439 tp!2399437))))

(declare-fun b!8016367 () Bool)

(declare-fun tp!2399440 () Bool)

(assert (=> b!8016367 (= e!4722144 tp!2399440)))

(assert (= (and b!8015793 ((_ is ElementMatch!21689) (regOne!43890 (regTwo!43891 r!15422)))) b!8016365))

(assert (= (and b!8015793 ((_ is Concat!30688) (regOne!43890 (regTwo!43891 r!15422)))) b!8016366))

(assert (= (and b!8015793 ((_ is Star!21689) (regOne!43890 (regTwo!43891 r!15422)))) b!8016367))

(assert (= (and b!8015793 ((_ is Union!21689) (regOne!43890 (regTwo!43891 r!15422)))) b!8016368))

(declare-fun b!8016370 () Bool)

(declare-fun e!4722145 () Bool)

(declare-fun tp!2399446 () Bool)

(declare-fun tp!2399443 () Bool)

(assert (=> b!8016370 (= e!4722145 (and tp!2399446 tp!2399443))))

(declare-fun b!8016369 () Bool)

(assert (=> b!8016369 (= e!4722145 tp_is_empty!53921)))

(assert (=> b!8015793 (= tp!2399219 e!4722145)))

(declare-fun b!8016372 () Bool)

(declare-fun tp!2399444 () Bool)

(declare-fun tp!2399442 () Bool)

(assert (=> b!8016372 (= e!4722145 (and tp!2399444 tp!2399442))))

(declare-fun b!8016371 () Bool)

(declare-fun tp!2399445 () Bool)

(assert (=> b!8016371 (= e!4722145 tp!2399445)))

(assert (= (and b!8015793 ((_ is ElementMatch!21689) (regTwo!43890 (regTwo!43891 r!15422)))) b!8016369))

(assert (= (and b!8015793 ((_ is Concat!30688) (regTwo!43890 (regTwo!43891 r!15422)))) b!8016370))

(assert (= (and b!8015793 ((_ is Star!21689) (regTwo!43890 (regTwo!43891 r!15422)))) b!8016371))

(assert (= (and b!8015793 ((_ is Union!21689) (regTwo!43890 (regTwo!43891 r!15422)))) b!8016372))

(declare-fun b!8016374 () Bool)

(declare-fun e!4722146 () Bool)

(declare-fun tp!2399451 () Bool)

(declare-fun tp!2399448 () Bool)

(assert (=> b!8016374 (= e!4722146 (and tp!2399451 tp!2399448))))

(declare-fun b!8016373 () Bool)

(assert (=> b!8016373 (= e!4722146 tp_is_empty!53921)))

(assert (=> b!8015814 (= tp!2399240 e!4722146)))

(declare-fun b!8016376 () Bool)

(declare-fun tp!2399449 () Bool)

(declare-fun tp!2399447 () Bool)

(assert (=> b!8016376 (= e!4722146 (and tp!2399449 tp!2399447))))

(declare-fun b!8016375 () Bool)

(declare-fun tp!2399450 () Bool)

(assert (=> b!8016375 (= e!4722146 tp!2399450)))

(assert (= (and b!8015814 ((_ is ElementMatch!21689) (regOne!43891 (reg!22018 r!15422)))) b!8016373))

(assert (= (and b!8015814 ((_ is Concat!30688) (regOne!43891 (reg!22018 r!15422)))) b!8016374))

(assert (= (and b!8015814 ((_ is Star!21689) (regOne!43891 (reg!22018 r!15422)))) b!8016375))

(assert (= (and b!8015814 ((_ is Union!21689) (regOne!43891 (reg!22018 r!15422)))) b!8016376))

(declare-fun b!8016378 () Bool)

(declare-fun e!4722147 () Bool)

(declare-fun tp!2399456 () Bool)

(declare-fun tp!2399453 () Bool)

(assert (=> b!8016378 (= e!4722147 (and tp!2399456 tp!2399453))))

(declare-fun b!8016377 () Bool)

(assert (=> b!8016377 (= e!4722147 tp_is_empty!53921)))

(assert (=> b!8015814 (= tp!2399238 e!4722147)))

(declare-fun b!8016380 () Bool)

(declare-fun tp!2399454 () Bool)

(declare-fun tp!2399452 () Bool)

(assert (=> b!8016380 (= e!4722147 (and tp!2399454 tp!2399452))))

(declare-fun b!8016379 () Bool)

(declare-fun tp!2399455 () Bool)

(assert (=> b!8016379 (= e!4722147 tp!2399455)))

(assert (= (and b!8015814 ((_ is ElementMatch!21689) (regTwo!43891 (reg!22018 r!15422)))) b!8016377))

(assert (= (and b!8015814 ((_ is Concat!30688) (regTwo!43891 (reg!22018 r!15422)))) b!8016378))

(assert (= (and b!8015814 ((_ is Star!21689) (regTwo!43891 (reg!22018 r!15422)))) b!8016379))

(assert (= (and b!8015814 ((_ is Union!21689) (regTwo!43891 (reg!22018 r!15422)))) b!8016380))

(declare-fun b!8016382 () Bool)

(declare-fun e!4722148 () Bool)

(declare-fun tp!2399461 () Bool)

(declare-fun tp!2399458 () Bool)

(assert (=> b!8016382 (= e!4722148 (and tp!2399461 tp!2399458))))

(declare-fun b!8016381 () Bool)

(assert (=> b!8016381 (= e!4722148 tp_is_empty!53921)))

(assert (=> b!8015802 (= tp!2399231 e!4722148)))

(declare-fun b!8016384 () Bool)

(declare-fun tp!2399459 () Bool)

(declare-fun tp!2399457 () Bool)

(assert (=> b!8016384 (= e!4722148 (and tp!2399459 tp!2399457))))

(declare-fun b!8016383 () Bool)

(declare-fun tp!2399460 () Bool)

(assert (=> b!8016383 (= e!4722148 tp!2399460)))

(assert (= (and b!8015802 ((_ is ElementMatch!21689) (reg!22018 (regTwo!43890 r!15422)))) b!8016381))

(assert (= (and b!8015802 ((_ is Concat!30688) (reg!22018 (regTwo!43890 r!15422)))) b!8016382))

(assert (= (and b!8015802 ((_ is Star!21689) (reg!22018 (regTwo!43890 r!15422)))) b!8016383))

(assert (= (and b!8015802 ((_ is Union!21689) (reg!22018 (regTwo!43890 r!15422)))) b!8016384))

(declare-fun b!8016386 () Bool)

(declare-fun e!4722149 () Bool)

(declare-fun tp!2399466 () Bool)

(declare-fun tp!2399463 () Bool)

(assert (=> b!8016386 (= e!4722149 (and tp!2399466 tp!2399463))))

(declare-fun b!8016385 () Bool)

(assert (=> b!8016385 (= e!4722149 tp_is_empty!53921)))

(assert (=> b!8015797 (= tp!2399227 e!4722149)))

(declare-fun b!8016388 () Bool)

(declare-fun tp!2399464 () Bool)

(declare-fun tp!2399462 () Bool)

(assert (=> b!8016388 (= e!4722149 (and tp!2399464 tp!2399462))))

(declare-fun b!8016387 () Bool)

(declare-fun tp!2399465 () Bool)

(assert (=> b!8016387 (= e!4722149 tp!2399465)))

(assert (= (and b!8015797 ((_ is ElementMatch!21689) (regOne!43890 (regOne!43890 r!15422)))) b!8016385))

(assert (= (and b!8015797 ((_ is Concat!30688) (regOne!43890 (regOne!43890 r!15422)))) b!8016386))

(assert (= (and b!8015797 ((_ is Star!21689) (regOne!43890 (regOne!43890 r!15422)))) b!8016387))

(assert (= (and b!8015797 ((_ is Union!21689) (regOne!43890 (regOne!43890 r!15422)))) b!8016388))

(declare-fun b!8016390 () Bool)

(declare-fun e!4722150 () Bool)

(declare-fun tp!2399471 () Bool)

(declare-fun tp!2399468 () Bool)

(assert (=> b!8016390 (= e!4722150 (and tp!2399471 tp!2399468))))

(declare-fun b!8016389 () Bool)

(assert (=> b!8016389 (= e!4722150 tp_is_empty!53921)))

(assert (=> b!8015797 (= tp!2399224 e!4722150)))

(declare-fun b!8016392 () Bool)

(declare-fun tp!2399469 () Bool)

(declare-fun tp!2399467 () Bool)

(assert (=> b!8016392 (= e!4722150 (and tp!2399469 tp!2399467))))

(declare-fun b!8016391 () Bool)

(declare-fun tp!2399470 () Bool)

(assert (=> b!8016391 (= e!4722150 tp!2399470)))

(assert (= (and b!8015797 ((_ is ElementMatch!21689) (regTwo!43890 (regOne!43890 r!15422)))) b!8016389))

(assert (= (and b!8015797 ((_ is Concat!30688) (regTwo!43890 (regOne!43890 r!15422)))) b!8016390))

(assert (= (and b!8015797 ((_ is Star!21689) (regTwo!43890 (regOne!43890 r!15422)))) b!8016391))

(assert (= (and b!8015797 ((_ is Union!21689) (regTwo!43890 (regOne!43890 r!15422)))) b!8016392))

(declare-fun b!8016394 () Bool)

(declare-fun e!4722151 () Bool)

(declare-fun tp!2399476 () Bool)

(declare-fun tp!2399473 () Bool)

(assert (=> b!8016394 (= e!4722151 (and tp!2399476 tp!2399473))))

(declare-fun b!8016393 () Bool)

(assert (=> b!8016393 (= e!4722151 tp_is_empty!53921)))

(assert (=> b!8015813 (= tp!2399241 e!4722151)))

(declare-fun b!8016396 () Bool)

(declare-fun tp!2399474 () Bool)

(declare-fun tp!2399472 () Bool)

(assert (=> b!8016396 (= e!4722151 (and tp!2399474 tp!2399472))))

(declare-fun b!8016395 () Bool)

(declare-fun tp!2399475 () Bool)

(assert (=> b!8016395 (= e!4722151 tp!2399475)))

(assert (= (and b!8015813 ((_ is ElementMatch!21689) (reg!22018 (reg!22018 r!15422)))) b!8016393))

(assert (= (and b!8015813 ((_ is Concat!30688) (reg!22018 (reg!22018 r!15422)))) b!8016394))

(assert (= (and b!8015813 ((_ is Star!21689) (reg!22018 (reg!22018 r!15422)))) b!8016395))

(assert (= (and b!8015813 ((_ is Union!21689) (reg!22018 (reg!22018 r!15422)))) b!8016396))

(declare-fun b!8016398 () Bool)

(declare-fun e!4722152 () Bool)

(declare-fun tp!2399481 () Bool)

(declare-fun tp!2399478 () Bool)

(assert (=> b!8016398 (= e!4722152 (and tp!2399481 tp!2399478))))

(declare-fun b!8016397 () Bool)

(assert (=> b!8016397 (= e!4722152 tp_is_empty!53921)))

(assert (=> b!8015801 (= tp!2399232 e!4722152)))

(declare-fun b!8016400 () Bool)

(declare-fun tp!2399479 () Bool)

(declare-fun tp!2399477 () Bool)

(assert (=> b!8016400 (= e!4722152 (and tp!2399479 tp!2399477))))

(declare-fun b!8016399 () Bool)

(declare-fun tp!2399480 () Bool)

(assert (=> b!8016399 (= e!4722152 tp!2399480)))

(assert (= (and b!8015801 ((_ is ElementMatch!21689) (regOne!43890 (regTwo!43890 r!15422)))) b!8016397))

(assert (= (and b!8015801 ((_ is Concat!30688) (regOne!43890 (regTwo!43890 r!15422)))) b!8016398))

(assert (= (and b!8015801 ((_ is Star!21689) (regOne!43890 (regTwo!43890 r!15422)))) b!8016399))

(assert (= (and b!8015801 ((_ is Union!21689) (regOne!43890 (regTwo!43890 r!15422)))) b!8016400))

(declare-fun b!8016402 () Bool)

(declare-fun e!4722153 () Bool)

(declare-fun tp!2399486 () Bool)

(declare-fun tp!2399483 () Bool)

(assert (=> b!8016402 (= e!4722153 (and tp!2399486 tp!2399483))))

(declare-fun b!8016401 () Bool)

(assert (=> b!8016401 (= e!4722153 tp_is_empty!53921)))

(assert (=> b!8015801 (= tp!2399229 e!4722153)))

(declare-fun b!8016404 () Bool)

(declare-fun tp!2399484 () Bool)

(declare-fun tp!2399482 () Bool)

(assert (=> b!8016404 (= e!4722153 (and tp!2399484 tp!2399482))))

(declare-fun b!8016403 () Bool)

(declare-fun tp!2399485 () Bool)

(assert (=> b!8016403 (= e!4722153 tp!2399485)))

(assert (= (and b!8015801 ((_ is ElementMatch!21689) (regTwo!43890 (regTwo!43890 r!15422)))) b!8016401))

(assert (= (and b!8015801 ((_ is Concat!30688) (regTwo!43890 (regTwo!43890 r!15422)))) b!8016402))

(assert (= (and b!8015801 ((_ is Star!21689) (regTwo!43890 (regTwo!43890 r!15422)))) b!8016403))

(assert (= (and b!8015801 ((_ is Union!21689) (regTwo!43890 (regTwo!43890 r!15422)))) b!8016404))

(declare-fun b!8016406 () Bool)

(declare-fun e!4722154 () Bool)

(declare-fun tp!2399491 () Bool)

(declare-fun tp!2399488 () Bool)

(assert (=> b!8016406 (= e!4722154 (and tp!2399491 tp!2399488))))

(declare-fun b!8016405 () Bool)

(assert (=> b!8016405 (= e!4722154 tp_is_empty!53921)))

(assert (=> b!8015812 (= tp!2399242 e!4722154)))

(declare-fun b!8016408 () Bool)

(declare-fun tp!2399489 () Bool)

(declare-fun tp!2399487 () Bool)

(assert (=> b!8016408 (= e!4722154 (and tp!2399489 tp!2399487))))

(declare-fun b!8016407 () Bool)

(declare-fun tp!2399490 () Bool)

(assert (=> b!8016407 (= e!4722154 tp!2399490)))

(assert (= (and b!8015812 ((_ is ElementMatch!21689) (regOne!43890 (reg!22018 r!15422)))) b!8016405))

(assert (= (and b!8015812 ((_ is Concat!30688) (regOne!43890 (reg!22018 r!15422)))) b!8016406))

(assert (= (and b!8015812 ((_ is Star!21689) (regOne!43890 (reg!22018 r!15422)))) b!8016407))

(assert (= (and b!8015812 ((_ is Union!21689) (regOne!43890 (reg!22018 r!15422)))) b!8016408))

(declare-fun b!8016410 () Bool)

(declare-fun e!4722155 () Bool)

(declare-fun tp!2399496 () Bool)

(declare-fun tp!2399493 () Bool)

(assert (=> b!8016410 (= e!4722155 (and tp!2399496 tp!2399493))))

(declare-fun b!8016409 () Bool)

(assert (=> b!8016409 (= e!4722155 tp_is_empty!53921)))

(assert (=> b!8015812 (= tp!2399239 e!4722155)))

(declare-fun b!8016412 () Bool)

(declare-fun tp!2399494 () Bool)

(declare-fun tp!2399492 () Bool)

(assert (=> b!8016412 (= e!4722155 (and tp!2399494 tp!2399492))))

(declare-fun b!8016411 () Bool)

(declare-fun tp!2399495 () Bool)

(assert (=> b!8016411 (= e!4722155 tp!2399495)))

(assert (= (and b!8015812 ((_ is ElementMatch!21689) (regTwo!43890 (reg!22018 r!15422)))) b!8016409))

(assert (= (and b!8015812 ((_ is Concat!30688) (regTwo!43890 (reg!22018 r!15422)))) b!8016410))

(assert (= (and b!8015812 ((_ is Star!21689) (regTwo!43890 (reg!22018 r!15422)))) b!8016411))

(assert (= (and b!8015812 ((_ is Union!21689) (regTwo!43890 (reg!22018 r!15422)))) b!8016412))

(declare-fun b!8016413 () Bool)

(declare-fun e!4722156 () Bool)

(declare-fun tp!2399497 () Bool)

(assert (=> b!8016413 (= e!4722156 (and tp_is_empty!53921 tp!2399497))))

(assert (=> b!8015809 (= tp!2399236 e!4722156)))

(assert (= (and b!8015809 ((_ is Cons!74794) (t!390661 (t!390661 testedP!353)))) b!8016413))

(declare-fun b!8016414 () Bool)

(declare-fun e!4722157 () Bool)

(declare-fun tp!2399498 () Bool)

(assert (=> b!8016414 (= e!4722157 (and tp_is_empty!53921 tp!2399498))))

(assert (=> b!8015808 (= tp!2399235 e!4722157)))

(assert (= (and b!8015808 ((_ is Cons!74794) (t!390661 (t!390661 testedSuffix!271)))) b!8016414))

(check-sat (not b!8015963) (not b!8016248) (not b!8016407) (not b!8016408) (not b!8016173) (not b!8015973) (not d!2390091) (not b!8016394) (not d!2389983) (not b!8016384) (not bm!744633) (not b!8016331) (not b!8016018) (not b!8016382) (not d!2390055) (not bm!744624) (not b!8016314) (not b!8016347) (not b!8016395) (not b!8016370) (not b!8016330) (not b!8016315) (not b!8016379) (not b!8016175) (not b!8015965) (not b!8016399) (not d!2390093) (not b!8016413) (not b!8016313) (not b!8016321) (not b!8016042) (not b!8016366) (not b!8016011) (not b!8016345) (not b!8016113) (not b!8016391) (not b!8016305) (not b!8016094) (not b!8015923) (not b!8016317) (not b!8016354) (not b!8016245) (not b!8015974) (not b!8016082) (not b!8016174) (not b!8016386) (not d!2389917) (not b!8016372) (not b!8016199) (not b!8016325) (not b!8016353) (not b!8016335) (not b!8016152) (not b!8016329) (not b!8016266) (not bm!744612) (not d!2389903) (not d!2389971) (not b!8016318) (not b!8016262) (not b!8016278) (not b!8016080) (not b!8015875) (not b!8016360) (not b!8016150) (not b!8016198) (not d!2390029) (not b!8016256) (not b!8016260) (not d!2389931) (not b!8016404) (not b!8016380) (not d!2390061) (not b!8016338) (not b!8015971) (not b!8016093) tp_is_empty!53921 (not b!8016343) (not b!8016358) (not bm!744619) (not b!8016007) (not b!8016357) (not b!8016367) (not d!2390097) (not b!8016334) (not b!8016307) (not b!8016388) (not b!8015924) (not b!8016414) (not b!8016014) (not b!8016400) (not b!8015969) (not b!8016339) (not b!8016406) (not b!8016010) (not b!8016411) (not d!2389995) (not bm!744591) (not b!8016257) (not b!8016346) (not b!8016403) (not b!8015917) (not b!8016359) (not d!2389985) (not b!8016300) (not b!8016363) (not b!8016006) (not b!8016375) (not b!8016243) (not b!8016396) (not b!8016264) (not b!8015991) (not b!8016402) (not b!8016390) (not b!8016258) (not bm!744627) (not b!8016326) (not d!2390049) (not b!8016341) (not b!8016371) (not b!8016342) (not b!8016412) (not bm!744613) (not b!8016015) (not b!8016322) (not b!8016337) (not d!2390001) (not b!8016374) (not bm!744620) (not b!8015892) (not b!8015916) (not b!8016351) (not b!8016311) (not b!8016323) (not b!8016387) (not b!8016223) (not b!8016041) (not b!8015922) (not bm!744594) (not b!8016383) (not d!2389965) (not b!8016398) (not b!8016350) (not bm!744639) (not b!8016362) (not d!2390051) (not b!8015993) (not bm!744638) (not b!8016349) (not b!8016021) (not b!8016355) (not b!8015967) (not b!8016410) (not b!8015975) (not b!8016303) (not b!8016333) (not b!8016309) (not b!8016092) (not b!8016327) (not d!2390079) (not bm!744625) (not b!8016319) (not b!8016267) (not b!8016114) (not b!8016376) (not b!8016368) (not b!8016392) (not bm!744628) (not bm!744630) (not d!2390095) (not b!8016378) (not b!8016098) (not b!8016364) (not b!8016008) (not b!8016102))
(check-sat)
