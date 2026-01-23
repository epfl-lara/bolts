; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753908 () Bool)

(assert start!753908)

(declare-fun b!8011757 () Bool)

(declare-fun e!4719512 () Bool)

(declare-fun lt!2717015 () Int)

(declare-fun lt!2717018 () Int)

(assert (=> b!8011757 (= e!4719512 (= lt!2717015 lt!2717018))))

(declare-datatypes ((C!43680 0))(
  ( (C!43681 (val!32388 Int)) )
))
(declare-datatypes ((List!74900 0))(
  ( (Nil!74776) (Cons!74776 (h!81224 C!43680) (t!390643 List!74900)) )
))
(declare-fun totalInput!1349 () List!74900)

(declare-fun isPrefix!6723 (List!74900 List!74900) Bool)

(assert (=> b!8011757 (isPrefix!6723 totalInput!1349 totalInput!1349)))

(declare-datatypes ((Unit!170808 0))(
  ( (Unit!170809) )
))
(declare-fun lt!2717014 () Unit!170808)

(declare-fun lemmaIsPrefixRefl!4165 (List!74900 List!74900) Unit!170808)

(assert (=> b!8011757 (= lt!2717014 (lemmaIsPrefixRefl!4165 totalInput!1349 totalInput!1349))))

(declare-fun b!8011758 () Bool)

(declare-fun e!4719514 () Bool)

(declare-fun tp!2397811 () Bool)

(assert (=> b!8011758 (= e!4719514 tp!2397811)))

(declare-fun b!8011759 () Bool)

(declare-fun e!4719513 () Bool)

(declare-fun tp_is_empty!53885 () Bool)

(declare-fun tp!2397814 () Bool)

(assert (=> b!8011759 (= e!4719513 (and tp_is_empty!53885 tp!2397814))))

(declare-fun b!8011760 () Bool)

(declare-fun e!4719518 () Bool)

(declare-fun e!4719515 () Bool)

(assert (=> b!8011760 (= e!4719518 e!4719515)))

(declare-fun res!3167941 () Bool)

(assert (=> b!8011760 (=> (not res!3167941) (not e!4719515))))

(declare-fun lt!2717019 () List!74900)

(assert (=> b!8011760 (= res!3167941 (= lt!2717019 totalInput!1349))))

(declare-fun testedP!353 () List!74900)

(declare-fun testedSuffix!271 () List!74900)

(declare-fun ++!18497 (List!74900 List!74900) List!74900)

(assert (=> b!8011760 (= lt!2717019 (++!18497 testedP!353 testedSuffix!271))))

(declare-fun b!8011761 () Bool)

(declare-fun e!4719516 () Bool)

(declare-fun e!4719517 () Bool)

(assert (=> b!8011761 (= e!4719516 e!4719517)))

(declare-fun res!3167943 () Bool)

(assert (=> b!8011761 (=> (not res!3167943) (not e!4719517))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8011761 (= res!3167943 (= totalInputSize!629 lt!2717015))))

(declare-fun size!43573 (List!74900) Int)

(assert (=> b!8011761 (= lt!2717015 (size!43573 totalInput!1349))))

(declare-fun b!8011762 () Bool)

(declare-fun tp!2397818 () Bool)

(declare-fun tp!2397817 () Bool)

(assert (=> b!8011762 (= e!4719514 (and tp!2397818 tp!2397817))))

(declare-fun b!8011763 () Bool)

(declare-fun e!4719510 () Bool)

(assert (=> b!8011763 (= e!4719510 e!4719512)))

(declare-fun res!3167942 () Bool)

(assert (=> b!8011763 (=> res!3167942 e!4719512)))

(declare-datatypes ((Regex!21671 0))(
  ( (ElementMatch!21671 (c!1470546 C!43680)) (Concat!30670 (regOne!43854 Regex!21671) (regTwo!43854 Regex!21671)) (EmptyExpr!21671) (Star!21671 (reg!22000 Regex!21671)) (EmptyLang!21671) (Union!21671 (regOne!43855 Regex!21671) (regTwo!43855 Regex!21671)) )
))
(declare-fun r!15422 () Regex!21671)

(declare-fun lostCause!2058 (Regex!21671) Bool)

(assert (=> b!8011763 (= res!3167942 (lostCause!2058 r!15422))))

(declare-fun lt!2717017 () List!74900)

(assert (=> b!8011763 (and (= testedSuffix!271 lt!2717017) (= lt!2717017 testedSuffix!271))))

(declare-fun lt!2717013 () Unit!170808)

(declare-fun lemmaSamePrefixThenSameSuffix!3080 (List!74900 List!74900 List!74900 List!74900 List!74900) Unit!170808)

(assert (=> b!8011763 (= lt!2717013 (lemmaSamePrefixThenSameSuffix!3080 testedP!353 testedSuffix!271 testedP!353 lt!2717017 totalInput!1349))))

(declare-fun getSuffix!3918 (List!74900 List!74900) List!74900)

(assert (=> b!8011763 (= lt!2717017 (getSuffix!3918 totalInput!1349 testedP!353))))

(declare-fun b!8011764 () Bool)

(assert (=> b!8011764 (= e!4719515 e!4719516)))

(declare-fun res!3167946 () Bool)

(assert (=> b!8011764 (=> (not res!3167946) (not e!4719516))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8011764 (= res!3167946 (= testedPSize!271 lt!2717018))))

(assert (=> b!8011764 (= lt!2717018 (size!43573 testedP!353))))

(declare-fun res!3167940 () Bool)

(assert (=> start!753908 (=> (not res!3167940) (not e!4719518))))

(declare-fun validRegex!11975 (Regex!21671) Bool)

(assert (=> start!753908 (= res!3167940 (validRegex!11975 r!15422))))

(assert (=> start!753908 e!4719518))

(declare-fun e!4719519 () Bool)

(assert (=> start!753908 e!4719519))

(assert (=> start!753908 true))

(declare-fun e!4719511 () Bool)

(assert (=> start!753908 e!4719511))

(assert (=> start!753908 e!4719514))

(assert (=> start!753908 e!4719513))

(declare-fun b!8011765 () Bool)

(declare-fun tp!2397813 () Bool)

(assert (=> b!8011765 (= e!4719511 (and tp_is_empty!53885 tp!2397813))))

(declare-fun b!8011766 () Bool)

(declare-fun res!3167945 () Bool)

(assert (=> b!8011766 (=> res!3167945 e!4719512)))

(assert (=> b!8011766 (= res!3167945 (not (= testedPSize!271 totalInputSize!629)))))

(declare-fun b!8011767 () Bool)

(declare-fun tp!2397815 () Bool)

(declare-fun tp!2397816 () Bool)

(assert (=> b!8011767 (= e!4719514 (and tp!2397815 tp!2397816))))

(declare-fun b!8011768 () Bool)

(assert (=> b!8011768 (= e!4719514 tp_is_empty!53885)))

(declare-fun b!8011769 () Bool)

(declare-fun tp!2397812 () Bool)

(assert (=> b!8011769 (= e!4719519 (and tp_is_empty!53885 tp!2397812))))

(declare-fun b!8011770 () Bool)

(assert (=> b!8011770 (= e!4719517 (not e!4719510))))

(declare-fun res!3167944 () Bool)

(assert (=> b!8011770 (=> res!3167944 e!4719510)))

(assert (=> b!8011770 (= res!3167944 (not (isPrefix!6723 testedP!353 totalInput!1349)))))

(assert (=> b!8011770 (isPrefix!6723 testedP!353 lt!2717019)))

(declare-fun lt!2717016 () Unit!170808)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3954 (List!74900 List!74900) Unit!170808)

(assert (=> b!8011770 (= lt!2717016 (lemmaConcatTwoListThenFirstIsPrefix!3954 testedP!353 testedSuffix!271))))

(assert (= (and start!753908 res!3167940) b!8011760))

(assert (= (and b!8011760 res!3167941) b!8011764))

(assert (= (and b!8011764 res!3167946) b!8011761))

(assert (= (and b!8011761 res!3167943) b!8011770))

(assert (= (and b!8011770 (not res!3167944)) b!8011763))

(assert (= (and b!8011763 (not res!3167942)) b!8011766))

(assert (= (and b!8011766 (not res!3167945)) b!8011757))

(get-info :version)

(assert (= (and start!753908 ((_ is Cons!74776) totalInput!1349)) b!8011769))

(assert (= (and start!753908 ((_ is Cons!74776) testedSuffix!271)) b!8011765))

(assert (= (and start!753908 ((_ is ElementMatch!21671) r!15422)) b!8011768))

(assert (= (and start!753908 ((_ is Concat!30670) r!15422)) b!8011767))

(assert (= (and start!753908 ((_ is Star!21671) r!15422)) b!8011758))

(assert (= (and start!753908 ((_ is Union!21671) r!15422)) b!8011762))

(assert (= (and start!753908 ((_ is Cons!74776) testedP!353)) b!8011759))

(declare-fun m!8375542 () Bool)

(assert (=> b!8011760 m!8375542))

(declare-fun m!8375544 () Bool)

(assert (=> b!8011757 m!8375544))

(declare-fun m!8375546 () Bool)

(assert (=> b!8011757 m!8375546))

(declare-fun m!8375548 () Bool)

(assert (=> start!753908 m!8375548))

(declare-fun m!8375550 () Bool)

(assert (=> b!8011763 m!8375550))

(declare-fun m!8375552 () Bool)

(assert (=> b!8011763 m!8375552))

(declare-fun m!8375554 () Bool)

(assert (=> b!8011763 m!8375554))

(declare-fun m!8375556 () Bool)

(assert (=> b!8011770 m!8375556))

(declare-fun m!8375558 () Bool)

(assert (=> b!8011770 m!8375558))

(declare-fun m!8375560 () Bool)

(assert (=> b!8011770 m!8375560))

(declare-fun m!8375562 () Bool)

(assert (=> b!8011761 m!8375562))

(declare-fun m!8375564 () Bool)

(assert (=> b!8011764 m!8375564))

(check-sat (not b!8011763) (not b!8011758) (not b!8011760) (not start!753908) (not b!8011769) (not b!8011770) (not b!8011759) (not b!8011765) (not b!8011762) (not b!8011764) (not b!8011757) tp_is_empty!53885 (not b!8011761) (not b!8011767))
(check-sat)
