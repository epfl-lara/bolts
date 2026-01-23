; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753128 () Bool)

(assert start!753128)

(declare-fun b!8005010 () Bool)

(declare-fun e!4715598 () Bool)

(declare-fun e!4715597 () Bool)

(assert (=> b!8005010 (= e!4715598 e!4715597)))

(declare-fun res!3165455 () Bool)

(assert (=> b!8005010 (=> (not res!3165455) (not e!4715597))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2714643 () Int)

(assert (=> b!8005010 (= res!3165455 (= totalInputSize!629 lt!2714643))))

(declare-datatypes ((C!43592 0))(
  ( (C!43593 (val!32344 Int)) )
))
(declare-datatypes ((List!74856 0))(
  ( (Nil!74732) (Cons!74732 (h!81180 C!43592) (t!390599 List!74856)) )
))
(declare-fun totalInput!1349 () List!74856)

(declare-fun size!43529 (List!74856) Int)

(assert (=> b!8005010 (= lt!2714643 (size!43529 totalInput!1349))))

(declare-fun b!8005011 () Bool)

(declare-fun e!4715600 () Bool)

(declare-fun e!4715595 () Bool)

(assert (=> b!8005011 (= e!4715600 e!4715595)))

(declare-fun res!3165458 () Bool)

(assert (=> b!8005011 (=> (not res!3165458) (not e!4715595))))

(declare-fun lt!2714647 () List!74856)

(assert (=> b!8005011 (= res!3165458 (= lt!2714647 totalInput!1349))))

(declare-fun testedP!353 () List!74856)

(declare-fun testedSuffix!271 () List!74856)

(declare-fun ++!18453 (List!74856 List!74856) List!74856)

(assert (=> b!8005011 (= lt!2714647 (++!18453 testedP!353 testedSuffix!271))))

(declare-fun b!8005012 () Bool)

(declare-fun e!4715599 () Bool)

(assert (=> b!8005012 (= e!4715597 (not e!4715599))))

(declare-fun res!3165460 () Bool)

(assert (=> b!8005012 (=> res!3165460 e!4715599)))

(declare-fun isPrefix!6681 (List!74856 List!74856) Bool)

(assert (=> b!8005012 (= res!3165460 (not (isPrefix!6681 testedP!353 totalInput!1349)))))

(assert (=> b!8005012 (isPrefix!6681 testedP!353 lt!2714647)))

(declare-datatypes ((Unit!170666 0))(
  ( (Unit!170667) )
))
(declare-fun lt!2714648 () Unit!170666)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3912 (List!74856 List!74856) Unit!170666)

(assert (=> b!8005012 (= lt!2714648 (lemmaConcatTwoListThenFirstIsPrefix!3912 testedP!353 testedSuffix!271))))

(declare-fun b!8005013 () Bool)

(declare-fun e!4715596 () Unit!170666)

(declare-fun Unit!170668 () Unit!170666)

(assert (=> b!8005013 (= e!4715596 Unit!170668)))

(declare-fun lt!2714651 () Unit!170666)

(declare-fun lemmaIsPrefixRefl!4133 (List!74856 List!74856) Unit!170666)

(assert (=> b!8005013 (= lt!2714651 (lemmaIsPrefixRefl!4133 totalInput!1349 totalInput!1349))))

(assert (=> b!8005013 (isPrefix!6681 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714649 () Unit!170666)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1707 (List!74856 List!74856 List!74856) Unit!170666)

(assert (=> b!8005013 (= lt!2714649 (lemmaIsPrefixSameLengthThenSameList!1707 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8005013 false))

(declare-fun b!8005014 () Bool)

(declare-fun res!3165459 () Bool)

(declare-fun e!4715592 () Bool)

(assert (=> b!8005014 (=> res!3165459 e!4715592)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8005014 (= res!3165459 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8005015 () Bool)

(declare-fun e!4715602 () Bool)

(declare-fun tp!2395107 () Bool)

(declare-fun tp!2395114 () Bool)

(assert (=> b!8005015 (= e!4715602 (and tp!2395107 tp!2395114))))

(declare-fun res!3165461 () Bool)

(assert (=> start!753128 (=> (not res!3165461) (not e!4715600))))

(declare-datatypes ((Regex!21627 0))(
  ( (ElementMatch!21627 (c!1469550 C!43592)) (Concat!30626 (regOne!43766 Regex!21627) (regTwo!43766 Regex!21627)) (EmptyExpr!21627) (Star!21627 (reg!21956 Regex!21627)) (EmptyLang!21627) (Union!21627 (regOne!43767 Regex!21627) (regTwo!43767 Regex!21627)) )
))
(declare-fun r!15422 () Regex!21627)

(declare-fun validRegex!11931 (Regex!21627) Bool)

(assert (=> start!753128 (= res!3165461 (validRegex!11931 r!15422))))

(assert (=> start!753128 e!4715600))

(declare-fun e!4715603 () Bool)

(assert (=> start!753128 e!4715603))

(assert (=> start!753128 true))

(declare-fun e!4715593 () Bool)

(assert (=> start!753128 e!4715593))

(assert (=> start!753128 e!4715602))

(declare-fun e!4715601 () Bool)

(assert (=> start!753128 e!4715601))

(declare-fun b!8005016 () Bool)

(declare-fun e!4715594 () Bool)

(assert (=> b!8005016 (= e!4715592 e!4715594)))

(declare-fun res!3165457 () Bool)

(assert (=> b!8005016 (=> res!3165457 e!4715594)))

(declare-fun lt!2714640 () Int)

(assert (=> b!8005016 (= res!3165457 (>= lt!2714640 lt!2714643))))

(declare-fun lt!2714645 () Unit!170666)

(assert (=> b!8005016 (= lt!2714645 e!4715596)))

(declare-fun c!1469549 () Bool)

(assert (=> b!8005016 (= c!1469549 (= lt!2714640 lt!2714643))))

(assert (=> b!8005016 (<= lt!2714640 lt!2714643)))

(declare-fun lt!2714641 () Unit!170666)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1182 (List!74856 List!74856) Unit!170666)

(assert (=> b!8005016 (= lt!2714641 (lemmaIsPrefixThenSmallerEqSize!1182 testedP!353 totalInput!1349))))

(declare-fun b!8005017 () Bool)

(declare-fun tp_is_empty!53797 () Bool)

(declare-fun tp!2395109 () Bool)

(assert (=> b!8005017 (= e!4715603 (and tp_is_empty!53797 tp!2395109))))

(declare-fun b!8005018 () Bool)

(assert (=> b!8005018 (= e!4715595 e!4715598)))

(declare-fun res!3165456 () Bool)

(assert (=> b!8005018 (=> (not res!3165456) (not e!4715598))))

(assert (=> b!8005018 (= res!3165456 (= testedPSize!271 lt!2714640))))

(assert (=> b!8005018 (= lt!2714640 (size!43529 testedP!353))))

(declare-fun b!8005019 () Bool)

(assert (=> b!8005019 (= e!4715594 true)))

(declare-fun lt!2714639 () List!74856)

(declare-fun lt!2714642 () C!43592)

(declare-fun tail!15842 (List!74856) List!74856)

(assert (=> b!8005019 (= lt!2714639 (++!18453 testedP!353 (Cons!74732 lt!2714642 (tail!15842 testedSuffix!271))))))

(declare-fun lt!2714646 () List!74856)

(declare-fun head!16319 (List!74856) C!43592)

(assert (=> b!8005019 (isPrefix!6681 (++!18453 testedP!353 (Cons!74732 (head!16319 lt!2714646) Nil!74732)) totalInput!1349)))

(declare-fun lt!2714638 () Unit!170666)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1378 (List!74856 List!74856) Unit!170666)

(assert (=> b!8005019 (= lt!2714638 (lemmaAddHeadSuffixToPrefixStillPrefix!1378 testedP!353 totalInput!1349))))

(declare-fun lt!2714650 () List!74856)

(assert (=> b!8005019 (= lt!2714650 (++!18453 testedP!353 (Cons!74732 lt!2714642 Nil!74732)))))

(assert (=> b!8005019 (= lt!2714642 (head!16319 testedSuffix!271))))

(declare-fun b!8005020 () Bool)

(assert (=> b!8005020 (= e!4715599 e!4715592)))

(declare-fun res!3165462 () Bool)

(assert (=> b!8005020 (=> res!3165462 e!4715592)))

(declare-fun lostCause!2024 (Regex!21627) Bool)

(assert (=> b!8005020 (= res!3165462 (lostCause!2024 r!15422))))

(assert (=> b!8005020 (and (= testedSuffix!271 lt!2714646) (= lt!2714646 testedSuffix!271))))

(declare-fun lt!2714644 () Unit!170666)

(declare-fun lemmaSamePrefixThenSameSuffix!3044 (List!74856 List!74856 List!74856 List!74856 List!74856) Unit!170666)

(assert (=> b!8005020 (= lt!2714644 (lemmaSamePrefixThenSameSuffix!3044 testedP!353 testedSuffix!271 testedP!353 lt!2714646 totalInput!1349))))

(declare-fun getSuffix!3878 (List!74856 List!74856) List!74856)

(assert (=> b!8005020 (= lt!2714646 (getSuffix!3878 totalInput!1349 testedP!353))))

(declare-fun b!8005021 () Bool)

(assert (=> b!8005021 (= e!4715602 tp_is_empty!53797)))

(declare-fun b!8005022 () Bool)

(declare-fun tp!2395112 () Bool)

(assert (=> b!8005022 (= e!4715602 tp!2395112)))

(declare-fun b!8005023 () Bool)

(declare-fun Unit!170669 () Unit!170666)

(assert (=> b!8005023 (= e!4715596 Unit!170669)))

(declare-fun b!8005024 () Bool)

(declare-fun tp!2395111 () Bool)

(declare-fun tp!2395108 () Bool)

(assert (=> b!8005024 (= e!4715602 (and tp!2395111 tp!2395108))))

(declare-fun b!8005025 () Bool)

(declare-fun tp!2395110 () Bool)

(assert (=> b!8005025 (= e!4715593 (and tp_is_empty!53797 tp!2395110))))

(declare-fun b!8005026 () Bool)

(declare-fun tp!2395113 () Bool)

(assert (=> b!8005026 (= e!4715601 (and tp_is_empty!53797 tp!2395113))))

(assert (= (and start!753128 res!3165461) b!8005011))

(assert (= (and b!8005011 res!3165458) b!8005018))

(assert (= (and b!8005018 res!3165456) b!8005010))

(assert (= (and b!8005010 res!3165455) b!8005012))

(assert (= (and b!8005012 (not res!3165460)) b!8005020))

(assert (= (and b!8005020 (not res!3165462)) b!8005014))

(assert (= (and b!8005014 (not res!3165459)) b!8005016))

(assert (= (and b!8005016 c!1469549) b!8005013))

(assert (= (and b!8005016 (not c!1469549)) b!8005023))

(assert (= (and b!8005016 (not res!3165457)) b!8005019))

(get-info :version)

(assert (= (and start!753128 ((_ is Cons!74732) totalInput!1349)) b!8005017))

(assert (= (and start!753128 ((_ is Cons!74732) testedSuffix!271)) b!8005025))

(assert (= (and start!753128 ((_ is ElementMatch!21627) r!15422)) b!8005021))

(assert (= (and start!753128 ((_ is Concat!30626) r!15422)) b!8005024))

(assert (= (and start!753128 ((_ is Star!21627) r!15422)) b!8005022))

(assert (= (and start!753128 ((_ is Union!21627) r!15422)) b!8005015))

(assert (= (and start!753128 ((_ is Cons!74732) testedP!353)) b!8005026))

(declare-fun m!8370438 () Bool)

(assert (=> b!8005016 m!8370438))

(declare-fun m!8370440 () Bool)

(assert (=> b!8005011 m!8370440))

(declare-fun m!8370442 () Bool)

(assert (=> b!8005018 m!8370442))

(declare-fun m!8370444 () Bool)

(assert (=> b!8005012 m!8370444))

(declare-fun m!8370446 () Bool)

(assert (=> b!8005012 m!8370446))

(declare-fun m!8370448 () Bool)

(assert (=> b!8005012 m!8370448))

(declare-fun m!8370450 () Bool)

(assert (=> b!8005013 m!8370450))

(declare-fun m!8370452 () Bool)

(assert (=> b!8005013 m!8370452))

(declare-fun m!8370454 () Bool)

(assert (=> b!8005013 m!8370454))

(declare-fun m!8370456 () Bool)

(assert (=> b!8005010 m!8370456))

(declare-fun m!8370458 () Bool)

(assert (=> b!8005020 m!8370458))

(declare-fun m!8370460 () Bool)

(assert (=> b!8005020 m!8370460))

(declare-fun m!8370462 () Bool)

(assert (=> b!8005020 m!8370462))

(declare-fun m!8370464 () Bool)

(assert (=> b!8005019 m!8370464))

(declare-fun m!8370466 () Bool)

(assert (=> b!8005019 m!8370466))

(assert (=> b!8005019 m!8370464))

(declare-fun m!8370468 () Bool)

(assert (=> b!8005019 m!8370468))

(declare-fun m!8370470 () Bool)

(assert (=> b!8005019 m!8370470))

(declare-fun m!8370472 () Bool)

(assert (=> b!8005019 m!8370472))

(declare-fun m!8370474 () Bool)

(assert (=> b!8005019 m!8370474))

(declare-fun m!8370476 () Bool)

(assert (=> b!8005019 m!8370476))

(declare-fun m!8370478 () Bool)

(assert (=> b!8005019 m!8370478))

(declare-fun m!8370480 () Bool)

(assert (=> start!753128 m!8370480))

(check-sat (not b!8005019) (not b!8005017) (not b!8005013) (not b!8005012) (not b!8005011) (not b!8005025) (not b!8005010) (not b!8005018) (not b!8005015) tp_is_empty!53797 (not b!8005026) (not b!8005022) (not b!8005020) (not b!8005016) (not b!8005024) (not start!753128))
(check-sat)
