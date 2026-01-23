; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728924 () Bool)

(assert start!728924)

(declare-fun b!7536010 () Bool)

(declare-fun e!4490634 () Bool)

(declare-fun tp_is_empty!50117 () Bool)

(assert (=> b!7536010 (= e!4490634 tp_is_empty!50117)))

(declare-fun b!7536011 () Bool)

(declare-fun e!4490633 () Bool)

(assert (=> b!7536011 (= e!4490633 true)))

(declare-datatypes ((C!40088 0))(
  ( (C!40089 (val!30484 Int)) )
))
(declare-datatypes ((List!72764 0))(
  ( (Nil!72640) (Cons!72640 (h!79088 C!40088) (t!387471 List!72764)) )
))
(declare-fun lt!2641782 () List!72764)

(declare-fun input!7874 () List!72764)

(declare-fun isPrefix!6087 (List!72764 List!72764) Bool)

(assert (=> b!7536011 (isPrefix!6087 lt!2641782 input!7874)))

(declare-datatypes ((Unit!166700 0))(
  ( (Unit!166701) )
))
(declare-fun lt!2641783 () Unit!166700)

(declare-fun testedP!423 () List!72764)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1152 (List!72764 List!72764) Unit!166700)

(assert (=> b!7536011 (= lt!2641783 (lemmaAddHeadSuffixToPrefixStillPrefix!1152 testedP!423 input!7874))))

(declare-fun ++!17398 (List!72764 List!72764) List!72764)

(declare-fun head!15471 (List!72764) C!40088)

(declare-fun getSuffix!3567 (List!72764 List!72764) List!72764)

(assert (=> b!7536011 (= lt!2641782 (++!17398 testedP!423 (Cons!72640 (head!15471 (getSuffix!3567 input!7874 testedP!423)) Nil!72640)))))

(declare-fun b!7536012 () Bool)

(declare-fun e!4490632 () Bool)

(declare-fun tp!2191721 () Bool)

(declare-fun tp!2191718 () Bool)

(assert (=> b!7536012 (= e!4490632 (and tp!2191721 tp!2191718))))

(declare-fun b!7536014 () Bool)

(declare-fun tp!2191716 () Bool)

(assert (=> b!7536014 (= e!4490632 tp!2191716)))

(declare-fun b!7536015 () Bool)

(declare-fun e!4490629 () Bool)

(declare-fun tp!2191723 () Bool)

(assert (=> b!7536015 (= e!4490629 (and tp_is_empty!50117 tp!2191723))))

(declare-fun b!7536016 () Bool)

(declare-fun e!4490635 () Bool)

(declare-fun tp!2191715 () Bool)

(assert (=> b!7536016 (= e!4490635 (and tp_is_empty!50117 tp!2191715))))

(declare-fun b!7536017 () Bool)

(declare-fun e!4490628 () Bool)

(declare-fun tp!2191720 () Bool)

(assert (=> b!7536017 (= e!4490628 (and tp_is_empty!50117 tp!2191720))))

(declare-fun b!7536018 () Bool)

(declare-fun res!3019989 () Bool)

(declare-fun e!4490631 () Bool)

(assert (=> b!7536018 (=> (not res!3019989) (not e!4490631))))

(declare-datatypes ((Regex!19881 0))(
  ( (ElementMatch!19881 (c!1391556 C!40088)) (Concat!28726 (regOne!40274 Regex!19881) (regTwo!40274 Regex!19881)) (EmptyExpr!19881) (Star!19881 (reg!20210 Regex!19881)) (EmptyLang!19881) (Union!19881 (regOne!40275 Regex!19881) (regTwo!40275 Regex!19881)) )
))
(declare-fun baseR!101 () Regex!19881)

(declare-fun knownP!30 () List!72764)

(declare-fun matchR!9483 (Regex!19881 List!72764) Bool)

(assert (=> b!7536018 (= res!3019989 (matchR!9483 baseR!101 knownP!30))))

(declare-fun b!7536019 () Bool)

(declare-fun res!3019986 () Bool)

(assert (=> b!7536019 (=> res!3019986 e!4490633)))

(declare-fun lt!2641786 () Int)

(declare-fun size!42377 (List!72764) Int)

(assert (=> b!7536019 (= res!3019986 (>= lt!2641786 (size!42377 input!7874)))))

(declare-fun b!7536020 () Bool)

(declare-fun res!3019994 () Bool)

(assert (=> b!7536020 (=> res!3019994 e!4490633)))

(declare-fun lt!2641784 () Int)

(assert (=> b!7536020 (= res!3019994 (= lt!2641786 lt!2641784))))

(declare-fun b!7536021 () Bool)

(declare-fun tp!2191714 () Bool)

(declare-fun tp!2191717 () Bool)

(assert (=> b!7536021 (= e!4490632 (and tp!2191714 tp!2191717))))

(declare-fun b!7536022 () Bool)

(declare-fun res!3019987 () Bool)

(declare-fun e!4490630 () Bool)

(assert (=> b!7536022 (=> (not res!3019987) (not e!4490630))))

(declare-fun r!24333 () Regex!19881)

(declare-fun validRegex!10309 (Regex!19881) Bool)

(assert (=> b!7536022 (= res!3019987 (validRegex!10309 r!24333))))

(declare-fun b!7536023 () Bool)

(assert (=> b!7536023 (= e!4490631 (not e!4490633))))

(declare-fun res!3019988 () Bool)

(assert (=> b!7536023 (=> res!3019988 e!4490633)))

(assert (=> b!7536023 (= res!3019988 (not (matchR!9483 r!24333 (getSuffix!3567 knownP!30 testedP!423))))))

(assert (=> b!7536023 (isPrefix!6087 testedP!423 knownP!30)))

(declare-fun lt!2641785 () Unit!166700)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!837 (List!72764 List!72764 List!72764) Unit!166700)

(assert (=> b!7536023 (= lt!2641785 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!837 knownP!30 testedP!423 input!7874))))

(declare-fun res!3019991 () Bool)

(assert (=> start!728924 (=> (not res!3019991) (not e!4490630))))

(assert (=> start!728924 (= res!3019991 (validRegex!10309 baseR!101))))

(assert (=> start!728924 e!4490630))

(assert (=> start!728924 e!4490632))

(assert (=> start!728924 e!4490628))

(assert (=> start!728924 e!4490635))

(assert (=> start!728924 e!4490629))

(assert (=> start!728924 e!4490634))

(declare-fun b!7536013 () Bool)

(declare-fun res!3019996 () Bool)

(assert (=> b!7536013 (=> res!3019996 e!4490633)))

(declare-fun lostCause!1673 (Regex!19881) Bool)

(assert (=> b!7536013 (= res!3019996 (lostCause!1673 r!24333))))

(declare-fun b!7536024 () Bool)

(declare-fun tp!2191713 () Bool)

(declare-fun tp!2191719 () Bool)

(assert (=> b!7536024 (= e!4490634 (and tp!2191713 tp!2191719))))

(declare-fun b!7536025 () Bool)

(assert (=> b!7536025 (= e!4490632 tp_is_empty!50117)))

(declare-fun b!7536026 () Bool)

(declare-fun tp!2191712 () Bool)

(assert (=> b!7536026 (= e!4490634 tp!2191712)))

(declare-fun b!7536027 () Bool)

(declare-fun res!3019992 () Bool)

(assert (=> b!7536027 (=> (not res!3019992) (not e!4490630))))

(assert (=> b!7536027 (= res!3019992 (isPrefix!6087 knownP!30 input!7874))))

(declare-fun b!7536028 () Bool)

(assert (=> b!7536028 (= e!4490630 e!4490631)))

(declare-fun res!3019995 () Bool)

(assert (=> b!7536028 (=> (not res!3019995) (not e!4490631))))

(assert (=> b!7536028 (= res!3019995 (>= lt!2641784 lt!2641786))))

(assert (=> b!7536028 (= lt!2641786 (size!42377 testedP!423))))

(assert (=> b!7536028 (= lt!2641784 (size!42377 knownP!30))))

(declare-fun b!7536029 () Bool)

(declare-fun tp!2191722 () Bool)

(declare-fun tp!2191711 () Bool)

(assert (=> b!7536029 (= e!4490634 (and tp!2191722 tp!2191711))))

(declare-fun b!7536030 () Bool)

(declare-fun res!3019993 () Bool)

(assert (=> b!7536030 (=> res!3019993 e!4490633)))

(declare-fun derivative!413 (Regex!19881 List!72764) Regex!19881)

(assert (=> b!7536030 (= res!3019993 (not (= (derivative!413 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7536031 () Bool)

(declare-fun res!3019990 () Bool)

(assert (=> b!7536031 (=> (not res!3019990) (not e!4490630))))

(assert (=> b!7536031 (= res!3019990 (isPrefix!6087 testedP!423 input!7874))))

(assert (= (and start!728924 res!3019991) b!7536022))

(assert (= (and b!7536022 res!3019987) b!7536031))

(assert (= (and b!7536031 res!3019990) b!7536027))

(assert (= (and b!7536027 res!3019992) b!7536028))

(assert (= (and b!7536028 res!3019995) b!7536018))

(assert (= (and b!7536018 res!3019989) b!7536023))

(assert (= (and b!7536023 (not res!3019988)) b!7536030))

(assert (= (and b!7536030 (not res!3019993)) b!7536013))

(assert (= (and b!7536013 (not res!3019996)) b!7536020))

(assert (= (and b!7536020 (not res!3019994)) b!7536019))

(assert (= (and b!7536019 (not res!3019986)) b!7536011))

(get-info :version)

(assert (= (and start!728924 ((_ is ElementMatch!19881) baseR!101)) b!7536025))

(assert (= (and start!728924 ((_ is Concat!28726) baseR!101)) b!7536012))

(assert (= (and start!728924 ((_ is Star!19881) baseR!101)) b!7536014))

(assert (= (and start!728924 ((_ is Union!19881) baseR!101)) b!7536021))

(assert (= (and start!728924 ((_ is Cons!72640) input!7874)) b!7536017))

(assert (= (and start!728924 ((_ is Cons!72640) knownP!30)) b!7536016))

(assert (= (and start!728924 ((_ is Cons!72640) testedP!423)) b!7536015))

(assert (= (and start!728924 ((_ is ElementMatch!19881) r!24333)) b!7536010))

(assert (= (and start!728924 ((_ is Concat!28726) r!24333)) b!7536024))

(assert (= (and start!728924 ((_ is Star!19881) r!24333)) b!7536026))

(assert (= (and start!728924 ((_ is Union!19881) r!24333)) b!7536029))

(declare-fun m!8106760 () Bool)

(assert (=> start!728924 m!8106760))

(declare-fun m!8106762 () Bool)

(assert (=> b!7536030 m!8106762))

(declare-fun m!8106764 () Bool)

(assert (=> b!7536028 m!8106764))

(declare-fun m!8106766 () Bool)

(assert (=> b!7536028 m!8106766))

(declare-fun m!8106768 () Bool)

(assert (=> b!7536018 m!8106768))

(declare-fun m!8106770 () Bool)

(assert (=> b!7536011 m!8106770))

(declare-fun m!8106772 () Bool)

(assert (=> b!7536011 m!8106772))

(declare-fun m!8106774 () Bool)

(assert (=> b!7536011 m!8106774))

(declare-fun m!8106776 () Bool)

(assert (=> b!7536011 m!8106776))

(declare-fun m!8106778 () Bool)

(assert (=> b!7536011 m!8106778))

(assert (=> b!7536011 m!8106776))

(declare-fun m!8106780 () Bool)

(assert (=> b!7536022 m!8106780))

(declare-fun m!8106782 () Bool)

(assert (=> b!7536019 m!8106782))

(declare-fun m!8106784 () Bool)

(assert (=> b!7536031 m!8106784))

(declare-fun m!8106786 () Bool)

(assert (=> b!7536023 m!8106786))

(assert (=> b!7536023 m!8106786))

(declare-fun m!8106788 () Bool)

(assert (=> b!7536023 m!8106788))

(declare-fun m!8106790 () Bool)

(assert (=> b!7536023 m!8106790))

(declare-fun m!8106792 () Bool)

(assert (=> b!7536023 m!8106792))

(declare-fun m!8106794 () Bool)

(assert (=> b!7536027 m!8106794))

(declare-fun m!8106796 () Bool)

(assert (=> b!7536013 m!8106796))

(check-sat (not b!7536029) (not b!7536013) (not b!7536014) (not b!7536016) (not b!7536024) (not b!7536030) (not b!7536011) (not b!7536015) (not b!7536018) (not b!7536022) (not b!7536023) (not b!7536012) (not b!7536019) (not b!7536017) (not b!7536027) (not b!7536031) (not b!7536028) tp_is_empty!50117 (not start!728924) (not b!7536026) (not b!7536021))
(check-sat)
