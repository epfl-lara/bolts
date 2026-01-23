; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753464 () Bool)

(assert start!753464)

(declare-fun b!8007634 () Bool)

(declare-datatypes ((Unit!170722 0))(
  ( (Unit!170723) )
))
(declare-fun e!4717154 () Unit!170722)

(declare-fun Unit!170724 () Unit!170722)

(assert (=> b!8007634 (= e!4717154 Unit!170724)))

(declare-fun b!8007635 () Bool)

(declare-fun e!4717160 () Bool)

(declare-fun tp!2396026 () Bool)

(declare-fun tp!2396023 () Bool)

(assert (=> b!8007635 (= e!4717160 (and tp!2396026 tp!2396023))))

(declare-fun b!8007636 () Bool)

(declare-fun e!4717159 () Bool)

(declare-fun e!4717149 () Bool)

(assert (=> b!8007636 (= e!4717159 (not e!4717149))))

(declare-fun res!3166462 () Bool)

(assert (=> b!8007636 (=> res!3166462 e!4717149)))

(declare-datatypes ((C!43620 0))(
  ( (C!43621 (val!32358 Int)) )
))
(declare-datatypes ((List!74870 0))(
  ( (Nil!74746) (Cons!74746 (h!81194 C!43620) (t!390613 List!74870)) )
))
(declare-fun testedP!353 () List!74870)

(declare-fun totalInput!1349 () List!74870)

(declare-fun isPrefix!6695 (List!74870 List!74870) Bool)

(assert (=> b!8007636 (= res!3166462 (not (isPrefix!6695 testedP!353 totalInput!1349)))))

(declare-fun lt!2715701 () List!74870)

(assert (=> b!8007636 (isPrefix!6695 testedP!353 lt!2715701)))

(declare-fun lt!2715704 () Unit!170722)

(declare-fun testedSuffix!271 () List!74870)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3926 (List!74870 List!74870) Unit!170722)

(assert (=> b!8007636 (= lt!2715704 (lemmaConcatTwoListThenFirstIsPrefix!3926 testedP!353 testedSuffix!271))))

(declare-fun b!8007637 () Bool)

(declare-fun e!4717157 () Bool)

(declare-fun e!4717156 () Bool)

(assert (=> b!8007637 (= e!4717157 e!4717156)))

(declare-fun res!3166460 () Bool)

(assert (=> b!8007637 (=> (not res!3166460) (not e!4717156))))

(assert (=> b!8007637 (= res!3166460 (= lt!2715701 totalInput!1349))))

(declare-fun ++!18467 (List!74870 List!74870) List!74870)

(assert (=> b!8007637 (= lt!2715701 (++!18467 testedP!353 testedSuffix!271))))

(declare-fun b!8007638 () Bool)

(declare-fun e!4717150 () Bool)

(assert (=> b!8007638 (= e!4717149 e!4717150)))

(declare-fun res!3166463 () Bool)

(assert (=> b!8007638 (=> res!3166463 e!4717150)))

(declare-datatypes ((Regex!21641 0))(
  ( (ElementMatch!21641 (c!1469978 C!43620)) (Concat!30640 (regOne!43794 Regex!21641) (regTwo!43794 Regex!21641)) (EmptyExpr!21641) (Star!21641 (reg!21970 Regex!21641)) (EmptyLang!21641) (Union!21641 (regOne!43795 Regex!21641) (regTwo!43795 Regex!21641)) )
))
(declare-fun r!15422 () Regex!21641)

(declare-fun lostCause!2038 (Regex!21641) Bool)

(assert (=> b!8007638 (= res!3166463 (lostCause!2038 r!15422))))

(declare-fun lt!2715691 () List!74870)

(assert (=> b!8007638 (and (= testedSuffix!271 lt!2715691) (= lt!2715691 testedSuffix!271))))

(declare-fun lt!2715698 () Unit!170722)

(declare-fun lemmaSamePrefixThenSameSuffix!3058 (List!74870 List!74870 List!74870 List!74870 List!74870) Unit!170722)

(assert (=> b!8007638 (= lt!2715698 (lemmaSamePrefixThenSameSuffix!3058 testedP!353 testedSuffix!271 testedP!353 lt!2715691 totalInput!1349))))

(declare-fun getSuffix!3892 (List!74870 List!74870) List!74870)

(assert (=> b!8007638 (= lt!2715691 (getSuffix!3892 totalInput!1349 testedP!353))))

(declare-fun b!8007639 () Bool)

(declare-fun tp!2396019 () Bool)

(declare-fun tp!2396021 () Bool)

(assert (=> b!8007639 (= e!4717160 (and tp!2396019 tp!2396021))))

(declare-fun res!3166455 () Bool)

(assert (=> start!753464 (=> (not res!3166455) (not e!4717157))))

(declare-fun validRegex!11945 (Regex!21641) Bool)

(assert (=> start!753464 (= res!3166455 (validRegex!11945 r!15422))))

(assert (=> start!753464 e!4717157))

(declare-fun e!4717152 () Bool)

(assert (=> start!753464 e!4717152))

(assert (=> start!753464 true))

(declare-fun e!4717155 () Bool)

(assert (=> start!753464 e!4717155))

(assert (=> start!753464 e!4717160))

(declare-fun e!4717158 () Bool)

(assert (=> start!753464 e!4717158))

(declare-fun b!8007640 () Bool)

(declare-fun res!3166458 () Bool)

(declare-fun e!4717151 () Bool)

(assert (=> b!8007640 (=> res!3166458 e!4717151)))

(declare-fun lt!2715694 () C!43620)

(declare-fun derivativeStep!6622 (Regex!21641 C!43620) Regex!21641)

(assert (=> b!8007640 (= res!3166458 (not (validRegex!11945 (derivativeStep!6622 r!15422 lt!2715694))))))

(declare-fun b!8007641 () Bool)

(declare-fun tp_is_empty!53825 () Bool)

(assert (=> b!8007641 (= e!4717160 tp_is_empty!53825)))

(declare-fun b!8007642 () Bool)

(declare-fun tp!2396025 () Bool)

(assert (=> b!8007642 (= e!4717158 (and tp_is_empty!53825 tp!2396025))))

(declare-fun b!8007643 () Bool)

(declare-fun e!4717153 () Bool)

(assert (=> b!8007643 (= e!4717153 e!4717159)))

(declare-fun res!3166459 () Bool)

(assert (=> b!8007643 (=> (not res!3166459) (not e!4717159))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2715690 () Int)

(assert (=> b!8007643 (= res!3166459 (= totalInputSize!629 lt!2715690))))

(declare-fun size!43543 (List!74870) Int)

(assert (=> b!8007643 (= lt!2715690 (size!43543 totalInput!1349))))

(declare-fun b!8007644 () Bool)

(declare-fun tp!2396020 () Bool)

(assert (=> b!8007644 (= e!4717152 (and tp_is_empty!53825 tp!2396020))))

(declare-fun b!8007645 () Bool)

(declare-fun e!4717161 () Bool)

(assert (=> b!8007645 (= e!4717150 e!4717161)))

(declare-fun res!3166456 () Bool)

(assert (=> b!8007645 (=> res!3166456 e!4717161)))

(declare-fun lt!2715703 () Int)

(assert (=> b!8007645 (= res!3166456 (>= lt!2715703 lt!2715690))))

(declare-fun lt!2715702 () Unit!170722)

(assert (=> b!8007645 (= lt!2715702 e!4717154)))

(declare-fun c!1469977 () Bool)

(assert (=> b!8007645 (= c!1469977 (= lt!2715703 lt!2715690))))

(assert (=> b!8007645 (<= lt!2715703 lt!2715690)))

(declare-fun lt!2715700 () Unit!170722)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1196 (List!74870 List!74870) Unit!170722)

(assert (=> b!8007645 (= lt!2715700 (lemmaIsPrefixThenSmallerEqSize!1196 testedP!353 totalInput!1349))))

(declare-fun b!8007646 () Bool)

(assert (=> b!8007646 (= e!4717151 true)))

(declare-fun lt!2715705 () Int)

(declare-fun lt!2715696 () List!74870)

(assert (=> b!8007646 (= lt!2715705 (size!43543 lt!2715696))))

(declare-fun b!8007647 () Bool)

(declare-fun res!3166461 () Bool)

(assert (=> b!8007647 (=> res!3166461 e!4717150)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8007647 (= res!3166461 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8007648 () Bool)

(declare-fun tp!2396024 () Bool)

(assert (=> b!8007648 (= e!4717155 (and tp_is_empty!53825 tp!2396024))))

(declare-fun b!8007649 () Bool)

(declare-fun Unit!170725 () Unit!170722)

(assert (=> b!8007649 (= e!4717154 Unit!170725)))

(declare-fun lt!2715695 () Unit!170722)

(declare-fun lemmaIsPrefixRefl!4147 (List!74870 List!74870) Unit!170722)

(assert (=> b!8007649 (= lt!2715695 (lemmaIsPrefixRefl!4147 totalInput!1349 totalInput!1349))))

(assert (=> b!8007649 (isPrefix!6695 totalInput!1349 totalInput!1349)))

(declare-fun lt!2715697 () Unit!170722)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1721 (List!74870 List!74870 List!74870) Unit!170722)

(assert (=> b!8007649 (= lt!2715697 (lemmaIsPrefixSameLengthThenSameList!1721 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8007649 false))

(declare-fun b!8007650 () Bool)

(assert (=> b!8007650 (= e!4717156 e!4717153)))

(declare-fun res!3166457 () Bool)

(assert (=> b!8007650 (=> (not res!3166457) (not e!4717153))))

(assert (=> b!8007650 (= res!3166457 (= testedPSize!271 lt!2715703))))

(assert (=> b!8007650 (= lt!2715703 (size!43543 testedP!353))))

(declare-fun b!8007651 () Bool)

(assert (=> b!8007651 (= e!4717161 e!4717151)))

(declare-fun res!3166464 () Bool)

(assert (=> b!8007651 (=> res!3166464 e!4717151)))

(declare-fun nullable!9699 (Regex!21641) Bool)

(assert (=> b!8007651 (= res!3166464 (not (nullable!9699 r!15422)))))

(declare-fun lt!2715692 () List!74870)

(assert (=> b!8007651 (= (++!18467 lt!2715696 lt!2715692) totalInput!1349)))

(declare-fun lt!2715699 () Unit!170722)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3576 (List!74870 C!43620 List!74870 List!74870) Unit!170722)

(assert (=> b!8007651 (= lt!2715699 (lemmaMoveElementToOtherListKeepsConcatEq!3576 testedP!353 lt!2715694 lt!2715692 totalInput!1349))))

(declare-fun tail!15856 (List!74870) List!74870)

(assert (=> b!8007651 (= lt!2715692 (tail!15856 testedSuffix!271))))

(declare-fun head!16333 (List!74870) C!43620)

(assert (=> b!8007651 (isPrefix!6695 (++!18467 testedP!353 (Cons!74746 (head!16333 lt!2715691) Nil!74746)) totalInput!1349)))

(declare-fun lt!2715693 () Unit!170722)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1392 (List!74870 List!74870) Unit!170722)

(assert (=> b!8007651 (= lt!2715693 (lemmaAddHeadSuffixToPrefixStillPrefix!1392 testedP!353 totalInput!1349))))

(assert (=> b!8007651 (= lt!2715696 (++!18467 testedP!353 (Cons!74746 lt!2715694 Nil!74746)))))

(assert (=> b!8007651 (= lt!2715694 (head!16333 testedSuffix!271))))

(declare-fun b!8007652 () Bool)

(declare-fun tp!2396022 () Bool)

(assert (=> b!8007652 (= e!4717160 tp!2396022)))

(assert (= (and start!753464 res!3166455) b!8007637))

(assert (= (and b!8007637 res!3166460) b!8007650))

(assert (= (and b!8007650 res!3166457) b!8007643))

(assert (= (and b!8007643 res!3166459) b!8007636))

(assert (= (and b!8007636 (not res!3166462)) b!8007638))

(assert (= (and b!8007638 (not res!3166463)) b!8007647))

(assert (= (and b!8007647 (not res!3166461)) b!8007645))

(assert (= (and b!8007645 c!1469977) b!8007649))

(assert (= (and b!8007645 (not c!1469977)) b!8007634))

(assert (= (and b!8007645 (not res!3166456)) b!8007651))

(assert (= (and b!8007651 (not res!3166464)) b!8007640))

(assert (= (and b!8007640 (not res!3166458)) b!8007646))

(get-info :version)

(assert (= (and start!753464 ((_ is Cons!74746) totalInput!1349)) b!8007644))

(assert (= (and start!753464 ((_ is Cons!74746) testedSuffix!271)) b!8007648))

(assert (= (and start!753464 ((_ is ElementMatch!21641) r!15422)) b!8007641))

(assert (= (and start!753464 ((_ is Concat!30640) r!15422)) b!8007635))

(assert (= (and start!753464 ((_ is Star!21641) r!15422)) b!8007652))

(assert (= (and start!753464 ((_ is Union!21641) r!15422)) b!8007639))

(assert (= (and start!753464 ((_ is Cons!74746) testedP!353)) b!8007642))

(declare-fun m!8372656 () Bool)

(assert (=> b!8007636 m!8372656))

(declare-fun m!8372658 () Bool)

(assert (=> b!8007636 m!8372658))

(declare-fun m!8372660 () Bool)

(assert (=> b!8007636 m!8372660))

(declare-fun m!8372662 () Bool)

(assert (=> b!8007643 m!8372662))

(declare-fun m!8372664 () Bool)

(assert (=> b!8007650 m!8372664))

(declare-fun m!8372666 () Bool)

(assert (=> b!8007640 m!8372666))

(assert (=> b!8007640 m!8372666))

(declare-fun m!8372668 () Bool)

(assert (=> b!8007640 m!8372668))

(declare-fun m!8372670 () Bool)

(assert (=> start!753464 m!8372670))

(declare-fun m!8372672 () Bool)

(assert (=> b!8007637 m!8372672))

(declare-fun m!8372674 () Bool)

(assert (=> b!8007638 m!8372674))

(declare-fun m!8372676 () Bool)

(assert (=> b!8007638 m!8372676))

(declare-fun m!8372678 () Bool)

(assert (=> b!8007638 m!8372678))

(declare-fun m!8372680 () Bool)

(assert (=> b!8007645 m!8372680))

(declare-fun m!8372682 () Bool)

(assert (=> b!8007649 m!8372682))

(declare-fun m!8372684 () Bool)

(assert (=> b!8007649 m!8372684))

(declare-fun m!8372686 () Bool)

(assert (=> b!8007649 m!8372686))

(declare-fun m!8372688 () Bool)

(assert (=> b!8007651 m!8372688))

(declare-fun m!8372690 () Bool)

(assert (=> b!8007651 m!8372690))

(declare-fun m!8372692 () Bool)

(assert (=> b!8007651 m!8372692))

(declare-fun m!8372694 () Bool)

(assert (=> b!8007651 m!8372694))

(declare-fun m!8372696 () Bool)

(assert (=> b!8007651 m!8372696))

(declare-fun m!8372698 () Bool)

(assert (=> b!8007651 m!8372698))

(declare-fun m!8372700 () Bool)

(assert (=> b!8007651 m!8372700))

(declare-fun m!8372702 () Bool)

(assert (=> b!8007651 m!8372702))

(assert (=> b!8007651 m!8372690))

(declare-fun m!8372704 () Bool)

(assert (=> b!8007651 m!8372704))

(declare-fun m!8372706 () Bool)

(assert (=> b!8007651 m!8372706))

(declare-fun m!8372708 () Bool)

(assert (=> b!8007646 m!8372708))

(check-sat (not b!8007650) (not b!8007645) (not b!8007651) (not b!8007643) (not b!8007635) tp_is_empty!53825 (not b!8007644) (not b!8007639) (not b!8007638) (not b!8007648) (not b!8007646) (not b!8007652) (not b!8007637) (not b!8007642) (not b!8007649) (not b!8007636) (not start!753464) (not b!8007640))
(check-sat)
