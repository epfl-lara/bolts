; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753808 () Bool)

(assert start!753808)

(declare-fun res!3167525 () Bool)

(declare-fun e!4718795 () Bool)

(assert (=> start!753808 (=> (not res!3167525) (not e!4718795))))

(declare-datatypes ((C!43656 0))(
  ( (C!43657 (val!32376 Int)) )
))
(declare-datatypes ((Regex!21659 0))(
  ( (ElementMatch!21659 (c!1470410 C!43656)) (Concat!30658 (regOne!43830 Regex!21659) (regTwo!43830 Regex!21659)) (EmptyExpr!21659) (Star!21659 (reg!21988 Regex!21659)) (EmptyLang!21659) (Union!21659 (regOne!43831 Regex!21659) (regTwo!43831 Regex!21659)) )
))
(declare-fun r!15422 () Regex!21659)

(declare-fun validRegex!11963 (Regex!21659) Bool)

(assert (=> start!753808 (= res!3167525 (validRegex!11963 r!15422))))

(assert (=> start!753808 e!4718795))

(declare-fun e!4718787 () Bool)

(assert (=> start!753808 e!4718787))

(assert (=> start!753808 true))

(declare-fun e!4718788 () Bool)

(assert (=> start!753808 e!4718788))

(declare-fun e!4718793 () Bool)

(assert (=> start!753808 e!4718793))

(declare-fun e!4718797 () Bool)

(assert (=> start!753808 e!4718797))

(declare-fun b!8010407 () Bool)

(declare-fun tp!2397032 () Bool)

(declare-fun tp!2397034 () Bool)

(assert (=> b!8010407 (= e!4718793 (and tp!2397032 tp!2397034))))

(declare-fun b!8010408 () Bool)

(declare-fun tp!2397028 () Bool)

(assert (=> b!8010408 (= e!4718793 tp!2397028)))

(declare-fun b!8010409 () Bool)

(declare-fun tp_is_empty!53861 () Bool)

(assert (=> b!8010409 (= e!4718793 tp_is_empty!53861)))

(declare-fun b!8010410 () Bool)

(declare-fun e!4718794 () Bool)

(declare-fun e!4718792 () Bool)

(assert (=> b!8010410 (= e!4718794 e!4718792)))

(declare-fun res!3167522 () Bool)

(assert (=> b!8010410 (=> (not res!3167522) (not e!4718792))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2716771 () Int)

(assert (=> b!8010410 (= res!3167522 (= totalInputSize!629 lt!2716771))))

(declare-datatypes ((List!74888 0))(
  ( (Nil!74764) (Cons!74764 (h!81212 C!43656) (t!390631 List!74888)) )
))
(declare-fun totalInput!1349 () List!74888)

(declare-fun size!43561 (List!74888) Int)

(assert (=> b!8010410 (= lt!2716771 (size!43561 totalInput!1349))))

(declare-fun b!8010411 () Bool)

(declare-fun e!4718791 () Bool)

(declare-fun lt!2716776 () Int)

(assert (=> b!8010411 (= e!4718791 (< lt!2716776 lt!2716771))))

(declare-datatypes ((Unit!170786 0))(
  ( (Unit!170787) )
))
(declare-fun lt!2716772 () Unit!170786)

(declare-fun e!4718789 () Unit!170786)

(assert (=> b!8010411 (= lt!2716772 e!4718789)))

(declare-fun c!1470409 () Bool)

(assert (=> b!8010411 (= c!1470409 (= lt!2716776 lt!2716771))))

(assert (=> b!8010411 (<= lt!2716776 lt!2716771)))

(declare-fun lt!2716769 () Unit!170786)

(declare-fun testedP!353 () List!74888)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1210 (List!74888 List!74888) Unit!170786)

(assert (=> b!8010411 (= lt!2716769 (lemmaIsPrefixThenSmallerEqSize!1210 testedP!353 totalInput!1349))))

(declare-fun b!8010412 () Bool)

(declare-fun tp!2397030 () Bool)

(declare-fun tp!2397027 () Bool)

(assert (=> b!8010412 (= e!4718793 (and tp!2397030 tp!2397027))))

(declare-fun b!8010413 () Bool)

(declare-fun tp!2397031 () Bool)

(assert (=> b!8010413 (= e!4718797 (and tp_is_empty!53861 tp!2397031))))

(declare-fun b!8010414 () Bool)

(declare-fun res!3167526 () Bool)

(assert (=> b!8010414 (=> res!3167526 e!4718791)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8010414 (= res!3167526 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8010415 () Bool)

(declare-fun tp!2397029 () Bool)

(assert (=> b!8010415 (= e!4718788 (and tp_is_empty!53861 tp!2397029))))

(declare-fun b!8010416 () Bool)

(declare-fun e!4718796 () Bool)

(assert (=> b!8010416 (= e!4718792 (not e!4718796))))

(declare-fun res!3167523 () Bool)

(assert (=> b!8010416 (=> res!3167523 e!4718796)))

(declare-fun isPrefix!6713 (List!74888 List!74888) Bool)

(assert (=> b!8010416 (= res!3167523 (not (isPrefix!6713 testedP!353 totalInput!1349)))))

(declare-fun lt!2716777 () List!74888)

(assert (=> b!8010416 (isPrefix!6713 testedP!353 lt!2716777)))

(declare-fun lt!2716773 () Unit!170786)

(declare-fun testedSuffix!271 () List!74888)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3944 (List!74888 List!74888) Unit!170786)

(assert (=> b!8010416 (= lt!2716773 (lemmaConcatTwoListThenFirstIsPrefix!3944 testedP!353 testedSuffix!271))))

(declare-fun b!8010417 () Bool)

(declare-fun Unit!170788 () Unit!170786)

(assert (=> b!8010417 (= e!4718789 Unit!170788)))

(declare-fun b!8010418 () Bool)

(declare-fun Unit!170789 () Unit!170786)

(assert (=> b!8010418 (= e!4718789 Unit!170789)))

(declare-fun lt!2716774 () Unit!170786)

(declare-fun lemmaIsPrefixRefl!4163 (List!74888 List!74888) Unit!170786)

(assert (=> b!8010418 (= lt!2716774 (lemmaIsPrefixRefl!4163 totalInput!1349 totalInput!1349))))

(assert (=> b!8010418 (isPrefix!6713 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716775 () Unit!170786)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1737 (List!74888 List!74888 List!74888) Unit!170786)

(assert (=> b!8010418 (= lt!2716775 (lemmaIsPrefixSameLengthThenSameList!1737 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8010418 false))

(declare-fun b!8010419 () Bool)

(assert (=> b!8010419 (= e!4718796 e!4718791)))

(declare-fun res!3167524 () Bool)

(assert (=> b!8010419 (=> res!3167524 e!4718791)))

(declare-fun lostCause!2054 (Regex!21659) Bool)

(assert (=> b!8010419 (= res!3167524 (lostCause!2054 r!15422))))

(declare-fun lt!2716770 () List!74888)

(assert (=> b!8010419 (and (= testedSuffix!271 lt!2716770) (= lt!2716770 testedSuffix!271))))

(declare-fun lt!2716768 () Unit!170786)

(declare-fun lemmaSamePrefixThenSameSuffix!3074 (List!74888 List!74888 List!74888 List!74888 List!74888) Unit!170786)

(assert (=> b!8010419 (= lt!2716768 (lemmaSamePrefixThenSameSuffix!3074 testedP!353 testedSuffix!271 testedP!353 lt!2716770 totalInput!1349))))

(declare-fun getSuffix!3908 (List!74888 List!74888) List!74888)

(assert (=> b!8010419 (= lt!2716770 (getSuffix!3908 totalInput!1349 testedP!353))))

(declare-fun b!8010420 () Bool)

(declare-fun e!4718790 () Bool)

(assert (=> b!8010420 (= e!4718790 e!4718794)))

(declare-fun res!3167520 () Bool)

(assert (=> b!8010420 (=> (not res!3167520) (not e!4718794))))

(assert (=> b!8010420 (= res!3167520 (= testedPSize!271 lt!2716776))))

(assert (=> b!8010420 (= lt!2716776 (size!43561 testedP!353))))

(declare-fun b!8010421 () Bool)

(declare-fun tp!2397033 () Bool)

(assert (=> b!8010421 (= e!4718787 (and tp_is_empty!53861 tp!2397033))))

(declare-fun b!8010422 () Bool)

(assert (=> b!8010422 (= e!4718795 e!4718790)))

(declare-fun res!3167521 () Bool)

(assert (=> b!8010422 (=> (not res!3167521) (not e!4718790))))

(assert (=> b!8010422 (= res!3167521 (= lt!2716777 totalInput!1349))))

(declare-fun ++!18485 (List!74888 List!74888) List!74888)

(assert (=> b!8010422 (= lt!2716777 (++!18485 testedP!353 testedSuffix!271))))

(assert (= (and start!753808 res!3167525) b!8010422))

(assert (= (and b!8010422 res!3167521) b!8010420))

(assert (= (and b!8010420 res!3167520) b!8010410))

(assert (= (and b!8010410 res!3167522) b!8010416))

(assert (= (and b!8010416 (not res!3167523)) b!8010419))

(assert (= (and b!8010419 (not res!3167524)) b!8010414))

(assert (= (and b!8010414 (not res!3167526)) b!8010411))

(assert (= (and b!8010411 c!1470409) b!8010418))

(assert (= (and b!8010411 (not c!1470409)) b!8010417))

(get-info :version)

(assert (= (and start!753808 ((_ is Cons!74764) totalInput!1349)) b!8010421))

(assert (= (and start!753808 ((_ is Cons!74764) testedSuffix!271)) b!8010415))

(assert (= (and start!753808 ((_ is ElementMatch!21659) r!15422)) b!8010409))

(assert (= (and start!753808 ((_ is Concat!30658) r!15422)) b!8010412))

(assert (= (and start!753808 ((_ is Star!21659) r!15422)) b!8010408))

(assert (= (and start!753808 ((_ is Union!21659) r!15422)) b!8010407))

(assert (= (and start!753808 ((_ is Cons!74764) testedP!353)) b!8010413))

(declare-fun m!8374954 () Bool)

(assert (=> b!8010420 m!8374954))

(declare-fun m!8374956 () Bool)

(assert (=> b!8010422 m!8374956))

(declare-fun m!8374958 () Bool)

(assert (=> b!8010416 m!8374958))

(declare-fun m!8374960 () Bool)

(assert (=> b!8010416 m!8374960))

(declare-fun m!8374962 () Bool)

(assert (=> b!8010416 m!8374962))

(declare-fun m!8374964 () Bool)

(assert (=> b!8010418 m!8374964))

(declare-fun m!8374966 () Bool)

(assert (=> b!8010418 m!8374966))

(declare-fun m!8374968 () Bool)

(assert (=> b!8010418 m!8374968))

(declare-fun m!8374970 () Bool)

(assert (=> b!8010411 m!8374970))

(declare-fun m!8374972 () Bool)

(assert (=> b!8010410 m!8374972))

(declare-fun m!8374974 () Bool)

(assert (=> start!753808 m!8374974))

(declare-fun m!8374976 () Bool)

(assert (=> b!8010419 m!8374976))

(declare-fun m!8374978 () Bool)

(assert (=> b!8010419 m!8374978))

(declare-fun m!8374980 () Bool)

(assert (=> b!8010419 m!8374980))

(check-sat (not b!8010408) (not b!8010421) (not b!8010413) (not b!8010407) (not b!8010420) tp_is_empty!53861 (not b!8010419) (not start!753808) (not b!8010412) (not b!8010410) (not b!8010415) (not b!8010411) (not b!8010422) (not b!8010418) (not b!8010416))
(check-sat)
