; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753796 () Bool)

(assert start!753796)

(declare-fun b!8010158 () Bool)

(declare-fun e!4718637 () Bool)

(declare-fun tp_is_empty!53849 () Bool)

(declare-fun tp!2396887 () Bool)

(assert (=> b!8010158 (= e!4718637 (and tp_is_empty!53849 tp!2396887))))

(declare-fun b!8010159 () Bool)

(declare-fun e!4718635 () Bool)

(declare-fun e!4718646 () Bool)

(assert (=> b!8010159 (= e!4718635 e!4718646)))

(declare-fun res!3167413 () Bool)

(assert (=> b!8010159 (=> (not res!3167413) (not e!4718646))))

(declare-datatypes ((C!43644 0))(
  ( (C!43645 (val!32370 Int)) )
))
(declare-datatypes ((List!74882 0))(
  ( (Nil!74758) (Cons!74758 (h!81206 C!43644) (t!390625 List!74882)) )
))
(declare-fun lt!2716658 () List!74882)

(declare-fun totalInput!1349 () List!74882)

(assert (=> b!8010159 (= res!3167413 (= lt!2716658 totalInput!1349))))

(declare-fun testedP!353 () List!74882)

(declare-fun testedSuffix!271 () List!74882)

(declare-fun ++!18479 (List!74882 List!74882) List!74882)

(assert (=> b!8010159 (= lt!2716658 (++!18479 testedP!353 testedSuffix!271))))

(declare-fun b!8010160 () Bool)

(declare-fun e!4718645 () Bool)

(declare-fun e!4718643 () Bool)

(assert (=> b!8010160 (= e!4718645 e!4718643)))

(declare-fun res!3167414 () Bool)

(assert (=> b!8010160 (=> res!3167414 e!4718643)))

(declare-datatypes ((Regex!21653 0))(
  ( (ElementMatch!21653 (c!1470398 C!43644)) (Concat!30652 (regOne!43818 Regex!21653) (regTwo!43818 Regex!21653)) (EmptyExpr!21653) (Star!21653 (reg!21982 Regex!21653)) (EmptyLang!21653) (Union!21653 (regOne!43819 Regex!21653) (regTwo!43819 Regex!21653)) )
))
(declare-fun r!15422 () Regex!21653)

(declare-fun lostCause!2050 (Regex!21653) Bool)

(assert (=> b!8010160 (= res!3167414 (lostCause!2050 r!15422))))

(declare-fun lt!2716657 () List!74882)

(assert (=> b!8010160 (and (= testedSuffix!271 lt!2716657) (= lt!2716657 testedSuffix!271))))

(declare-datatypes ((Unit!170770 0))(
  ( (Unit!170771) )
))
(declare-fun lt!2716655 () Unit!170770)

(declare-fun lemmaSamePrefixThenSameSuffix!3070 (List!74882 List!74882 List!74882 List!74882 List!74882) Unit!170770)

(assert (=> b!8010160 (= lt!2716655 (lemmaSamePrefixThenSameSuffix!3070 testedP!353 testedSuffix!271 testedP!353 lt!2716657 totalInput!1349))))

(declare-fun getSuffix!3904 (List!74882 List!74882) List!74882)

(assert (=> b!8010160 (= lt!2716657 (getSuffix!3904 totalInput!1349 testedP!353))))

(declare-fun b!8010161 () Bool)

(declare-fun e!4718644 () Unit!170770)

(declare-fun Unit!170772 () Unit!170770)

(assert (=> b!8010161 (= e!4718644 Unit!170772)))

(declare-fun b!8010162 () Bool)

(declare-fun e!4718641 () Bool)

(declare-fun tp!2396888 () Bool)

(assert (=> b!8010162 (= e!4718641 (and tp_is_empty!53849 tp!2396888))))

(declare-fun b!8010163 () Bool)

(declare-fun e!4718638 () Bool)

(assert (=> b!8010163 (= e!4718638 (not e!4718645))))

(declare-fun res!3167409 () Bool)

(assert (=> b!8010163 (=> res!3167409 e!4718645)))

(declare-fun isPrefix!6707 (List!74882 List!74882) Bool)

(assert (=> b!8010163 (= res!3167409 (not (isPrefix!6707 testedP!353 totalInput!1349)))))

(assert (=> b!8010163 (isPrefix!6707 testedP!353 lt!2716658)))

(declare-fun lt!2716669 () Unit!170770)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3938 (List!74882 List!74882) Unit!170770)

(assert (=> b!8010163 (= lt!2716669 (lemmaConcatTwoListThenFirstIsPrefix!3938 testedP!353 testedSuffix!271))))

(declare-fun b!8010164 () Bool)

(declare-fun e!4718640 () Bool)

(declare-fun tp!2396889 () Bool)

(declare-fun tp!2396884 () Bool)

(assert (=> b!8010164 (= e!4718640 (and tp!2396889 tp!2396884))))

(declare-fun b!8010165 () Bool)

(declare-fun res!3167415 () Bool)

(assert (=> b!8010165 (=> res!3167415 e!4718643)))

(declare-fun testedPSize!271 () Int)

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8010165 (= res!3167415 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8010166 () Bool)

(declare-fun res!3167411 () Bool)

(declare-fun e!4718642 () Bool)

(assert (=> b!8010166 (=> res!3167411 e!4718642)))

(declare-fun lt!2716662 () C!43644)

(declare-fun validRegex!11957 (Regex!21653) Bool)

(declare-fun derivativeStep!6632 (Regex!21653 C!43644) Regex!21653)

(assert (=> b!8010166 (= res!3167411 (not (validRegex!11957 (derivativeStep!6632 r!15422 lt!2716662))))))

(declare-fun b!8010167 () Bool)

(assert (=> b!8010167 (= e!4718640 tp_is_empty!53849)))

(declare-fun res!3167418 () Bool)

(assert (=> start!753796 (=> (not res!3167418) (not e!4718635))))

(assert (=> start!753796 (= res!3167418 (validRegex!11957 r!15422))))

(assert (=> start!753796 e!4718635))

(declare-fun e!4718636 () Bool)

(assert (=> start!753796 e!4718636))

(assert (=> start!753796 true))

(assert (=> start!753796 e!4718637))

(assert (=> start!753796 e!4718640))

(assert (=> start!753796 e!4718641))

(declare-fun b!8010168 () Bool)

(declare-fun tp!2396883 () Bool)

(assert (=> b!8010168 (= e!4718636 (and tp_is_empty!53849 tp!2396883))))

(declare-fun b!8010169 () Bool)

(declare-fun e!4718639 () Bool)

(assert (=> b!8010169 (= e!4718643 e!4718639)))

(declare-fun res!3167412 () Bool)

(assert (=> b!8010169 (=> res!3167412 e!4718639)))

(declare-fun lt!2716654 () Int)

(declare-fun lt!2716659 () Int)

(assert (=> b!8010169 (= res!3167412 (>= lt!2716654 lt!2716659))))

(declare-fun lt!2716668 () Unit!170770)

(assert (=> b!8010169 (= lt!2716668 e!4718644)))

(declare-fun c!1470397 () Bool)

(assert (=> b!8010169 (= c!1470397 (= lt!2716654 lt!2716659))))

(assert (=> b!8010169 (<= lt!2716654 lt!2716659)))

(declare-fun lt!2716666 () Unit!170770)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1208 (List!74882 List!74882) Unit!170770)

(assert (=> b!8010169 (= lt!2716666 (lemmaIsPrefixThenSmallerEqSize!1208 testedP!353 totalInput!1349))))

(declare-fun b!8010170 () Bool)

(declare-fun Unit!170773 () Unit!170770)

(assert (=> b!8010170 (= e!4718644 Unit!170773)))

(declare-fun lt!2716656 () Unit!170770)

(declare-fun lemmaIsPrefixRefl!4159 (List!74882 List!74882) Unit!170770)

(assert (=> b!8010170 (= lt!2716656 (lemmaIsPrefixRefl!4159 totalInput!1349 totalInput!1349))))

(assert (=> b!8010170 (isPrefix!6707 totalInput!1349 totalInput!1349)))

(declare-fun lt!2716663 () Unit!170770)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1733 (List!74882 List!74882 List!74882) Unit!170770)

(assert (=> b!8010170 (= lt!2716663 (lemmaIsPrefixSameLengthThenSameList!1733 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8010170 false))

(declare-fun b!8010171 () Bool)

(declare-fun e!4718647 () Bool)

(assert (=> b!8010171 (= e!4718647 e!4718638)))

(declare-fun res!3167410 () Bool)

(assert (=> b!8010171 (=> (not res!3167410) (not e!4718638))))

(assert (=> b!8010171 (= res!3167410 (= totalInputSize!629 lt!2716659))))

(declare-fun size!43555 (List!74882) Int)

(assert (=> b!8010171 (= lt!2716659 (size!43555 totalInput!1349))))

(declare-fun b!8010172 () Bool)

(assert (=> b!8010172 (= e!4718639 e!4718642)))

(declare-fun res!3167417 () Bool)

(assert (=> b!8010172 (=> res!3167417 e!4718642)))

(declare-fun nullable!9711 (Regex!21653) Bool)

(assert (=> b!8010172 (= res!3167417 (nullable!9711 r!15422))))

(declare-fun lt!2716661 () List!74882)

(declare-fun lt!2716664 () List!74882)

(assert (=> b!8010172 (= (++!18479 lt!2716661 lt!2716664) totalInput!1349)))

(declare-fun lt!2716665 () Unit!170770)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3588 (List!74882 C!43644 List!74882 List!74882) Unit!170770)

(assert (=> b!8010172 (= lt!2716665 (lemmaMoveElementToOtherListKeepsConcatEq!3588 testedP!353 lt!2716662 lt!2716664 totalInput!1349))))

(declare-fun tail!15868 (List!74882) List!74882)

(assert (=> b!8010172 (= lt!2716664 (tail!15868 testedSuffix!271))))

(declare-fun head!16345 (List!74882) C!43644)

(assert (=> b!8010172 (isPrefix!6707 (++!18479 testedP!353 (Cons!74758 (head!16345 lt!2716657) Nil!74758)) totalInput!1349)))

(declare-fun lt!2716660 () Unit!170770)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1404 (List!74882 List!74882) Unit!170770)

(assert (=> b!8010172 (= lt!2716660 (lemmaAddHeadSuffixToPrefixStillPrefix!1404 testedP!353 totalInput!1349))))

(assert (=> b!8010172 (= lt!2716661 (++!18479 testedP!353 (Cons!74758 lt!2716662 Nil!74758)))))

(assert (=> b!8010172 (= lt!2716662 (head!16345 testedSuffix!271))))

(declare-fun b!8010173 () Bool)

(declare-fun tp!2396886 () Bool)

(assert (=> b!8010173 (= e!4718640 tp!2396886)))

(declare-fun b!8010174 () Bool)

(assert (=> b!8010174 (= e!4718646 e!4718647)))

(declare-fun res!3167416 () Bool)

(assert (=> b!8010174 (=> (not res!3167416) (not e!4718647))))

(assert (=> b!8010174 (= res!3167416 (= testedPSize!271 lt!2716654))))

(assert (=> b!8010174 (= lt!2716654 (size!43555 testedP!353))))

(declare-fun b!8010175 () Bool)

(declare-fun tp!2396890 () Bool)

(declare-fun tp!2396885 () Bool)

(assert (=> b!8010175 (= e!4718640 (and tp!2396890 tp!2396885))))

(declare-fun b!8010176 () Bool)

(assert (=> b!8010176 (= e!4718642 true)))

(declare-fun lt!2716667 () Int)

(assert (=> b!8010176 (= lt!2716667 (size!43555 lt!2716661))))

(assert (= (and start!753796 res!3167418) b!8010159))

(assert (= (and b!8010159 res!3167413) b!8010174))

(assert (= (and b!8010174 res!3167416) b!8010171))

(assert (= (and b!8010171 res!3167410) b!8010163))

(assert (= (and b!8010163 (not res!3167409)) b!8010160))

(assert (= (and b!8010160 (not res!3167414)) b!8010165))

(assert (= (and b!8010165 (not res!3167415)) b!8010169))

(assert (= (and b!8010169 c!1470397) b!8010170))

(assert (= (and b!8010169 (not c!1470397)) b!8010161))

(assert (= (and b!8010169 (not res!3167412)) b!8010172))

(assert (= (and b!8010172 (not res!3167417)) b!8010166))

(assert (= (and b!8010166 (not res!3167411)) b!8010176))

(get-info :version)

(assert (= (and start!753796 ((_ is Cons!74758) totalInput!1349)) b!8010168))

(assert (= (and start!753796 ((_ is Cons!74758) testedSuffix!271)) b!8010158))

(assert (= (and start!753796 ((_ is ElementMatch!21653) r!15422)) b!8010167))

(assert (= (and start!753796 ((_ is Concat!30652) r!15422)) b!8010164))

(assert (= (and start!753796 ((_ is Star!21653) r!15422)) b!8010173))

(assert (= (and start!753796 ((_ is Union!21653) r!15422)) b!8010175))

(assert (= (and start!753796 ((_ is Cons!74758) testedP!353)) b!8010162))

(declare-fun m!8374792 () Bool)

(assert (=> b!8010174 m!8374792))

(declare-fun m!8374794 () Bool)

(assert (=> b!8010176 m!8374794))

(declare-fun m!8374796 () Bool)

(assert (=> b!8010160 m!8374796))

(declare-fun m!8374798 () Bool)

(assert (=> b!8010160 m!8374798))

(declare-fun m!8374800 () Bool)

(assert (=> b!8010160 m!8374800))

(declare-fun m!8374802 () Bool)

(assert (=> b!8010166 m!8374802))

(assert (=> b!8010166 m!8374802))

(declare-fun m!8374804 () Bool)

(assert (=> b!8010166 m!8374804))

(declare-fun m!8374806 () Bool)

(assert (=> b!8010172 m!8374806))

(declare-fun m!8374808 () Bool)

(assert (=> b!8010172 m!8374808))

(declare-fun m!8374810 () Bool)

(assert (=> b!8010172 m!8374810))

(declare-fun m!8374812 () Bool)

(assert (=> b!8010172 m!8374812))

(declare-fun m!8374814 () Bool)

(assert (=> b!8010172 m!8374814))

(declare-fun m!8374816 () Bool)

(assert (=> b!8010172 m!8374816))

(assert (=> b!8010172 m!8374812))

(declare-fun m!8374818 () Bool)

(assert (=> b!8010172 m!8374818))

(declare-fun m!8374820 () Bool)

(assert (=> b!8010172 m!8374820))

(declare-fun m!8374822 () Bool)

(assert (=> b!8010172 m!8374822))

(declare-fun m!8374824 () Bool)

(assert (=> b!8010172 m!8374824))

(declare-fun m!8374826 () Bool)

(assert (=> b!8010170 m!8374826))

(declare-fun m!8374828 () Bool)

(assert (=> b!8010170 m!8374828))

(declare-fun m!8374830 () Bool)

(assert (=> b!8010170 m!8374830))

(declare-fun m!8374832 () Bool)

(assert (=> b!8010163 m!8374832))

(declare-fun m!8374834 () Bool)

(assert (=> b!8010163 m!8374834))

(declare-fun m!8374836 () Bool)

(assert (=> b!8010163 m!8374836))

(declare-fun m!8374838 () Bool)

(assert (=> b!8010171 m!8374838))

(declare-fun m!8374840 () Bool)

(assert (=> start!753796 m!8374840))

(declare-fun m!8374842 () Bool)

(assert (=> b!8010169 m!8374842))

(declare-fun m!8374844 () Bool)

(assert (=> b!8010159 m!8374844))

(check-sat (not b!8010173) (not b!8010162) (not b!8010170) (not b!8010171) (not start!753796) (not b!8010166) (not b!8010164) (not b!8010160) tp_is_empty!53849 (not b!8010168) (not b!8010169) (not b!8010174) (not b!8010175) (not b!8010159) (not b!8010176) (not b!8010172) (not b!8010163) (not b!8010158))
(check-sat)
