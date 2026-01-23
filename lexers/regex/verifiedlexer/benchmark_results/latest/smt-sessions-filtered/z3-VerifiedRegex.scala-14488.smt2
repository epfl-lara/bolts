; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753804 () Bool)

(assert start!753804)

(declare-fun b!8010313 () Bool)

(declare-fun res!3167482 () Bool)

(declare-fun e!4718725 () Bool)

(assert (=> b!8010313 (=> res!3167482 e!4718725)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8010313 (= res!3167482 (not (= testedPSize!271 totalInputSize!629)))))

(declare-fun b!8010314 () Bool)

(declare-fun e!4718729 () Bool)

(declare-fun e!4718727 () Bool)

(assert (=> b!8010314 (= e!4718729 (not e!4718727))))

(declare-fun res!3167484 () Bool)

(assert (=> b!8010314 (=> res!3167484 e!4718727)))

(declare-datatypes ((C!43652 0))(
  ( (C!43653 (val!32374 Int)) )
))
(declare-datatypes ((List!74886 0))(
  ( (Nil!74762) (Cons!74762 (h!81210 C!43652) (t!390629 List!74886)) )
))
(declare-fun testedP!353 () List!74886)

(declare-fun totalInput!1349 () List!74886)

(declare-fun isPrefix!6711 (List!74886 List!74886) Bool)

(assert (=> b!8010314 (= res!3167484 (not (isPrefix!6711 testedP!353 totalInput!1349)))))

(declare-fun lt!2716716 () List!74886)

(assert (=> b!8010314 (isPrefix!6711 testedP!353 lt!2716716)))

(declare-datatypes ((Unit!170780 0))(
  ( (Unit!170781) )
))
(declare-fun lt!2716712 () Unit!170780)

(declare-fun testedSuffix!271 () List!74886)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3942 (List!74886 List!74886) Unit!170780)

(assert (=> b!8010314 (= lt!2716712 (lemmaConcatTwoListThenFirstIsPrefix!3942 testedP!353 testedSuffix!271))))

(declare-fun b!8010315 () Bool)

(assert (=> b!8010315 (= e!4718727 e!4718725)))

(declare-fun res!3167480 () Bool)

(assert (=> b!8010315 (=> res!3167480 e!4718725)))

(declare-datatypes ((Regex!21657 0))(
  ( (ElementMatch!21657 (c!1470402 C!43652)) (Concat!30656 (regOne!43826 Regex!21657) (regTwo!43826 Regex!21657)) (EmptyExpr!21657) (Star!21657 (reg!21986 Regex!21657)) (EmptyLang!21657) (Union!21657 (regOne!43827 Regex!21657) (regTwo!43827 Regex!21657)) )
))
(declare-fun r!15422 () Regex!21657)

(declare-fun lostCause!2052 (Regex!21657) Bool)

(assert (=> b!8010315 (= res!3167480 (lostCause!2052 r!15422))))

(declare-fun lt!2716715 () List!74886)

(assert (=> b!8010315 (and (= testedSuffix!271 lt!2716715) (= lt!2716715 testedSuffix!271))))

(declare-fun lt!2716713 () Unit!170780)

(declare-fun lemmaSamePrefixThenSameSuffix!3072 (List!74886 List!74886 List!74886 List!74886 List!74886) Unit!170780)

(assert (=> b!8010315 (= lt!2716713 (lemmaSamePrefixThenSameSuffix!3072 testedP!353 testedSuffix!271 testedP!353 lt!2716715 totalInput!1349))))

(declare-fun getSuffix!3906 (List!74886 List!74886) List!74886)

(assert (=> b!8010315 (= lt!2716715 (getSuffix!3906 totalInput!1349 testedP!353))))

(declare-fun b!8010316 () Bool)

(declare-fun e!4718728 () Bool)

(declare-fun tp_is_empty!53857 () Bool)

(declare-fun tp!2396985 () Bool)

(assert (=> b!8010316 (= e!4718728 (and tp_is_empty!53857 tp!2396985))))

(declare-fun b!8010317 () Bool)

(declare-fun e!4718730 () Bool)

(declare-fun tp!2396986 () Bool)

(assert (=> b!8010317 (= e!4718730 (and tp_is_empty!53857 tp!2396986))))

(declare-fun res!3167481 () Bool)

(declare-fun e!4718731 () Bool)

(assert (=> start!753804 (=> (not res!3167481) (not e!4718731))))

(declare-fun validRegex!11961 (Regex!21657) Bool)

(assert (=> start!753804 (= res!3167481 (validRegex!11961 r!15422))))

(assert (=> start!753804 e!4718731))

(assert (=> start!753804 e!4718730))

(assert (=> start!753804 true))

(assert (=> start!753804 e!4718728))

(declare-fun e!4718724 () Bool)

(assert (=> start!753804 e!4718724))

(declare-fun e!4718726 () Bool)

(assert (=> start!753804 e!4718726))

(declare-fun b!8010318 () Bool)

(assert (=> b!8010318 (= e!4718724 tp_is_empty!53857)))

(declare-fun b!8010319 () Bool)

(declare-fun res!3167483 () Bool)

(assert (=> b!8010319 (=> (not res!3167483) (not e!4718729))))

(declare-fun size!43559 (List!74886) Int)

(assert (=> b!8010319 (= res!3167483 (= totalInputSize!629 (size!43559 totalInput!1349)))))

(declare-fun b!8010320 () Bool)

(declare-fun tp!2396982 () Bool)

(assert (=> b!8010320 (= e!4718724 tp!2396982)))

(declare-fun b!8010321 () Bool)

(assert (=> b!8010321 (= e!4718731 e!4718729)))

(declare-fun res!3167478 () Bool)

(assert (=> b!8010321 (=> (not res!3167478) (not e!4718729))))

(assert (=> b!8010321 (= res!3167478 (= lt!2716716 totalInput!1349))))

(declare-fun ++!18483 (List!74886 List!74886) List!74886)

(assert (=> b!8010321 (= lt!2716716 (++!18483 testedP!353 testedSuffix!271))))

(declare-fun b!8010322 () Bool)

(declare-fun res!3167479 () Bool)

(assert (=> b!8010322 (=> (not res!3167479) (not e!4718729))))

(assert (=> b!8010322 (= res!3167479 (= testedPSize!271 (size!43559 testedP!353)))))

(declare-fun b!8010323 () Bool)

(assert (=> b!8010323 (= e!4718725 (= testedP!353 totalInput!1349))))

(assert (=> b!8010323 (= totalInput!1349 testedP!353)))

(declare-fun lt!2716717 () Unit!170780)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1735 (List!74886 List!74886 List!74886) Unit!170780)

(assert (=> b!8010323 (= lt!2716717 (lemmaIsPrefixSameLengthThenSameList!1735 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8010323 (isPrefix!6711 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716714 () Unit!170780)

(declare-fun lemmaIsPrefixRefl!4161 (List!74886 List!74886) Unit!170780)

(assert (=> b!8010323 (= lt!2716714 (lemmaIsPrefixRefl!4161 totalInput!1349 totalInput!1349))))

(declare-fun b!8010324 () Bool)

(declare-fun tp!2396981 () Bool)

(declare-fun tp!2396983 () Bool)

(assert (=> b!8010324 (= e!4718724 (and tp!2396981 tp!2396983))))

(declare-fun b!8010325 () Bool)

(declare-fun tp!2396984 () Bool)

(assert (=> b!8010325 (= e!4718726 (and tp_is_empty!53857 tp!2396984))))

(declare-fun b!8010326 () Bool)

(declare-fun tp!2396979 () Bool)

(declare-fun tp!2396980 () Bool)

(assert (=> b!8010326 (= e!4718724 (and tp!2396979 tp!2396980))))

(assert (= (and start!753804 res!3167481) b!8010321))

(assert (= (and b!8010321 res!3167478) b!8010322))

(assert (= (and b!8010322 res!3167479) b!8010319))

(assert (= (and b!8010319 res!3167483) b!8010314))

(assert (= (and b!8010314 (not res!3167484)) b!8010315))

(assert (= (and b!8010315 (not res!3167480)) b!8010313))

(assert (= (and b!8010313 (not res!3167482)) b!8010323))

(get-info :version)

(assert (= (and start!753804 ((_ is Cons!74762) totalInput!1349)) b!8010317))

(assert (= (and start!753804 ((_ is Cons!74762) testedSuffix!271)) b!8010316))

(assert (= (and start!753804 ((_ is ElementMatch!21657) r!15422)) b!8010318))

(assert (= (and start!753804 ((_ is Concat!30656) r!15422)) b!8010326))

(assert (= (and start!753804 ((_ is Star!21657) r!15422)) b!8010320))

(assert (= (and start!753804 ((_ is Union!21657) r!15422)) b!8010324))

(assert (= (and start!753804 ((_ is Cons!74762) testedP!353)) b!8010325))

(declare-fun m!8374900 () Bool)

(assert (=> b!8010319 m!8374900))

(declare-fun m!8374902 () Bool)

(assert (=> start!753804 m!8374902))

(declare-fun m!8374904 () Bool)

(assert (=> b!8010322 m!8374904))

(declare-fun m!8374906 () Bool)

(assert (=> b!8010315 m!8374906))

(declare-fun m!8374908 () Bool)

(assert (=> b!8010315 m!8374908))

(declare-fun m!8374910 () Bool)

(assert (=> b!8010315 m!8374910))

(declare-fun m!8374912 () Bool)

(assert (=> b!8010321 m!8374912))

(declare-fun m!8374914 () Bool)

(assert (=> b!8010314 m!8374914))

(declare-fun m!8374916 () Bool)

(assert (=> b!8010314 m!8374916))

(declare-fun m!8374918 () Bool)

(assert (=> b!8010314 m!8374918))

(declare-fun m!8374920 () Bool)

(assert (=> b!8010323 m!8374920))

(declare-fun m!8374922 () Bool)

(assert (=> b!8010323 m!8374922))

(declare-fun m!8374924 () Bool)

(assert (=> b!8010323 m!8374924))

(check-sat (not b!8010320) (not b!8010315) (not b!8010326) (not b!8010314) (not b!8010325) tp_is_empty!53857 (not start!753804) (not b!8010316) (not b!8010322) (not b!8010317) (not b!8010323) (not b!8010321) (not b!8010319) (not b!8010324))
(check-sat)
