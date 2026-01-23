; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729052 () Bool)

(assert start!729052)

(declare-fun b!7537790 () Bool)

(declare-fun e!4491438 () Bool)

(declare-fun tp!2192448 () Bool)

(assert (=> b!7537790 (= e!4491438 tp!2192448)))

(declare-fun b!7537791 () Bool)

(declare-fun e!4491445 () Bool)

(declare-fun tp!2192439 () Bool)

(assert (=> b!7537791 (= e!4491445 tp!2192439)))

(declare-fun b!7537792 () Bool)

(declare-fun tp!2192446 () Bool)

(declare-fun tp!2192450 () Bool)

(assert (=> b!7537792 (= e!4491438 (and tp!2192446 tp!2192450))))

(declare-fun b!7537793 () Bool)

(declare-fun res!3020726 () Bool)

(declare-fun e!4491440 () Bool)

(assert (=> b!7537793 (=> (not res!3020726) (not e!4491440))))

(declare-datatypes ((C!40112 0))(
  ( (C!40113 (val!30496 Int)) )
))
(declare-datatypes ((Regex!19893 0))(
  ( (ElementMatch!19893 (c!1391780 C!40112)) (Concat!28738 (regOne!40298 Regex!19893) (regTwo!40298 Regex!19893)) (EmptyExpr!19893) (Star!19893 (reg!20222 Regex!19893)) (EmptyLang!19893) (Union!19893 (regOne!40299 Regex!19893) (regTwo!40299 Regex!19893)) )
))
(declare-fun r!24333 () Regex!19893)

(declare-fun validRegex!10321 (Regex!19893) Bool)

(assert (=> b!7537793 (= res!3020726 (validRegex!10321 r!24333))))

(declare-fun b!7537794 () Bool)

(declare-fun res!3020731 () Bool)

(declare-fun e!4491443 () Bool)

(assert (=> b!7537794 (=> res!3020731 e!4491443)))

(declare-fun lt!2642251 () Int)

(declare-datatypes ((List!72776 0))(
  ( (Nil!72652) (Cons!72652 (h!79100 C!40112) (t!387483 List!72776)) )
))
(declare-fun input!7874 () List!72776)

(declare-fun size!42389 (List!72776) Int)

(assert (=> b!7537794 (= res!3020731 (>= lt!2642251 (size!42389 input!7874)))))

(declare-fun b!7537796 () Bool)

(declare-fun e!4491442 () Bool)

(declare-fun tp_is_empty!50141 () Bool)

(declare-fun tp!2192443 () Bool)

(assert (=> b!7537796 (= e!4491442 (and tp_is_empty!50141 tp!2192443))))

(declare-fun b!7537797 () Bool)

(assert (=> b!7537797 (= e!4491438 tp_is_empty!50141)))

(declare-fun b!7537798 () Bool)

(declare-fun res!3020730 () Bool)

(declare-fun e!4491444 () Bool)

(assert (=> b!7537798 (=> (not res!3020730) (not e!4491444))))

(declare-fun baseR!101 () Regex!19893)

(declare-fun knownP!30 () List!72776)

(declare-fun matchR!9495 (Regex!19893 List!72776) Bool)

(assert (=> b!7537798 (= res!3020730 (matchR!9495 baseR!101 knownP!30))))

(declare-fun b!7537799 () Bool)

(declare-fun tp!2192449 () Bool)

(declare-fun tp!2192445 () Bool)

(assert (=> b!7537799 (= e!4491445 (and tp!2192449 tp!2192445))))

(declare-fun b!7537800 () Bool)

(declare-fun e!4491439 () Bool)

(declare-fun tp!2192451 () Bool)

(assert (=> b!7537800 (= e!4491439 (and tp_is_empty!50141 tp!2192451))))

(declare-fun b!7537801 () Bool)

(declare-fun res!3020735 () Bool)

(assert (=> b!7537801 (=> res!3020735 e!4491443)))

(declare-fun lt!2642256 () Int)

(assert (=> b!7537801 (= res!3020735 (= lt!2642251 lt!2642256))))

(declare-fun b!7537802 () Bool)

(assert (=> b!7537802 (= e!4491443 true)))

(declare-fun lt!2642254 () List!72776)

(declare-fun lt!2642255 () List!72776)

(declare-fun getSuffix!3579 (List!72776 List!72776) List!72776)

(assert (=> b!7537802 (= lt!2642254 (getSuffix!3579 knownP!30 lt!2642255))))

(declare-fun isPrefix!6099 (List!72776 List!72776) Bool)

(assert (=> b!7537802 (isPrefix!6099 lt!2642255 knownP!30)))

(declare-datatypes ((Unit!166724 0))(
  ( (Unit!166725) )
))
(declare-fun lt!2642252 () Unit!166724)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!849 (List!72776 List!72776 List!72776) Unit!166724)

(assert (=> b!7537802 (= lt!2642252 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!849 knownP!30 lt!2642255 input!7874))))

(declare-fun lt!2642249 () C!40112)

(declare-fun derivative!425 (Regex!19893 List!72776) Regex!19893)

(declare-fun derivativeStep!5683 (Regex!19893 C!40112) Regex!19893)

(assert (=> b!7537802 (= (derivative!425 baseR!101 lt!2642255) (derivativeStep!5683 r!24333 lt!2642249))))

(declare-fun lt!2642250 () Unit!166724)

(declare-fun testedP!423 () List!72776)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!131 (Regex!19893 Regex!19893 List!72776 C!40112) Unit!166724)

(assert (=> b!7537802 (= lt!2642250 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!131 baseR!101 r!24333 testedP!423 lt!2642249))))

(assert (=> b!7537802 (isPrefix!6099 lt!2642255 input!7874)))

(declare-fun lt!2642253 () Unit!166724)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1164 (List!72776 List!72776) Unit!166724)

(assert (=> b!7537802 (= lt!2642253 (lemmaAddHeadSuffixToPrefixStillPrefix!1164 testedP!423 input!7874))))

(declare-fun ++!17410 (List!72776 List!72776) List!72776)

(assert (=> b!7537802 (= lt!2642255 (++!17410 testedP!423 (Cons!72652 lt!2642249 Nil!72652)))))

(declare-fun head!15483 (List!72776) C!40112)

(assert (=> b!7537802 (= lt!2642249 (head!15483 (getSuffix!3579 input!7874 testedP!423)))))

(declare-fun b!7537803 () Bool)

(declare-fun tp!2192441 () Bool)

(declare-fun tp!2192440 () Bool)

(assert (=> b!7537803 (= e!4491438 (and tp!2192441 tp!2192440))))

(declare-fun b!7537804 () Bool)

(declare-fun res!3020734 () Bool)

(assert (=> b!7537804 (=> (not res!3020734) (not e!4491440))))

(assert (=> b!7537804 (= res!3020734 (isPrefix!6099 testedP!423 input!7874))))

(declare-fun b!7537805 () Bool)

(assert (=> b!7537805 (= e!4491445 tp_is_empty!50141)))

(declare-fun b!7537806 () Bool)

(declare-fun res!3020728 () Bool)

(assert (=> b!7537806 (=> (not res!3020728) (not e!4491440))))

(assert (=> b!7537806 (= res!3020728 (isPrefix!6099 knownP!30 input!7874))))

(declare-fun b!7537807 () Bool)

(assert (=> b!7537807 (= e!4491444 (not e!4491443))))

(declare-fun res!3020727 () Bool)

(assert (=> b!7537807 (=> res!3020727 e!4491443)))

(assert (=> b!7537807 (= res!3020727 (not (matchR!9495 r!24333 (getSuffix!3579 knownP!30 testedP!423))))))

(assert (=> b!7537807 (isPrefix!6099 testedP!423 knownP!30)))

(declare-fun lt!2642248 () Unit!166724)

(assert (=> b!7537807 (= lt!2642248 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!849 knownP!30 testedP!423 input!7874))))

(declare-fun res!3020729 () Bool)

(assert (=> start!729052 (=> (not res!3020729) (not e!4491440))))

(assert (=> start!729052 (= res!3020729 (validRegex!10321 baseR!101))))

(assert (=> start!729052 e!4491440))

(assert (=> start!729052 e!4491438))

(declare-fun e!4491441 () Bool)

(assert (=> start!729052 e!4491441))

(assert (=> start!729052 e!4491439))

(assert (=> start!729052 e!4491442))

(assert (=> start!729052 e!4491445))

(declare-fun b!7537795 () Bool)

(declare-fun tp!2192442 () Bool)

(assert (=> b!7537795 (= e!4491441 (and tp_is_empty!50141 tp!2192442))))

(declare-fun b!7537808 () Bool)

(declare-fun res!3020732 () Bool)

(assert (=> b!7537808 (=> res!3020732 e!4491443)))

(assert (=> b!7537808 (= res!3020732 (not (= (derivative!425 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7537809 () Bool)

(declare-fun tp!2192447 () Bool)

(declare-fun tp!2192444 () Bool)

(assert (=> b!7537809 (= e!4491445 (and tp!2192447 tp!2192444))))

(declare-fun b!7537810 () Bool)

(declare-fun res!3020736 () Bool)

(assert (=> b!7537810 (=> res!3020736 e!4491443)))

(declare-fun lostCause!1685 (Regex!19893) Bool)

(assert (=> b!7537810 (= res!3020736 (lostCause!1685 r!24333))))

(declare-fun b!7537811 () Bool)

(assert (=> b!7537811 (= e!4491440 e!4491444)))

(declare-fun res!3020733 () Bool)

(assert (=> b!7537811 (=> (not res!3020733) (not e!4491444))))

(assert (=> b!7537811 (= res!3020733 (>= lt!2642256 lt!2642251))))

(assert (=> b!7537811 (= lt!2642251 (size!42389 testedP!423))))

(assert (=> b!7537811 (= lt!2642256 (size!42389 knownP!30))))

(assert (= (and start!729052 res!3020729) b!7537793))

(assert (= (and b!7537793 res!3020726) b!7537804))

(assert (= (and b!7537804 res!3020734) b!7537806))

(assert (= (and b!7537806 res!3020728) b!7537811))

(assert (= (and b!7537811 res!3020733) b!7537798))

(assert (= (and b!7537798 res!3020730) b!7537807))

(assert (= (and b!7537807 (not res!3020727)) b!7537808))

(assert (= (and b!7537808 (not res!3020732)) b!7537810))

(assert (= (and b!7537810 (not res!3020736)) b!7537801))

(assert (= (and b!7537801 (not res!3020735)) b!7537794))

(assert (= (and b!7537794 (not res!3020731)) b!7537802))

(get-info :version)

(assert (= (and start!729052 ((_ is ElementMatch!19893) baseR!101)) b!7537797))

(assert (= (and start!729052 ((_ is Concat!28738) baseR!101)) b!7537792))

(assert (= (and start!729052 ((_ is Star!19893) baseR!101)) b!7537790))

(assert (= (and start!729052 ((_ is Union!19893) baseR!101)) b!7537803))

(assert (= (and start!729052 ((_ is Cons!72652) input!7874)) b!7537795))

(assert (= (and start!729052 ((_ is Cons!72652) knownP!30)) b!7537800))

(assert (= (and start!729052 ((_ is Cons!72652) testedP!423)) b!7537796))

(assert (= (and start!729052 ((_ is ElementMatch!19893) r!24333)) b!7537805))

(assert (= (and start!729052 ((_ is Concat!28738) r!24333)) b!7537799))

(assert (= (and start!729052 ((_ is Star!19893) r!24333)) b!7537791))

(assert (= (and start!729052 ((_ is Union!19893) r!24333)) b!7537809))

(declare-fun m!8107840 () Bool)

(assert (=> start!729052 m!8107840))

(declare-fun m!8107842 () Bool)

(assert (=> b!7537793 m!8107842))

(declare-fun m!8107844 () Bool)

(assert (=> b!7537804 m!8107844))

(declare-fun m!8107846 () Bool)

(assert (=> b!7537808 m!8107846))

(declare-fun m!8107848 () Bool)

(assert (=> b!7537806 m!8107848))

(declare-fun m!8107850 () Bool)

(assert (=> b!7537794 m!8107850))

(declare-fun m!8107852 () Bool)

(assert (=> b!7537811 m!8107852))

(declare-fun m!8107854 () Bool)

(assert (=> b!7537811 m!8107854))

(declare-fun m!8107856 () Bool)

(assert (=> b!7537802 m!8107856))

(declare-fun m!8107858 () Bool)

(assert (=> b!7537802 m!8107858))

(declare-fun m!8107860 () Bool)

(assert (=> b!7537802 m!8107860))

(declare-fun m!8107862 () Bool)

(assert (=> b!7537802 m!8107862))

(declare-fun m!8107864 () Bool)

(assert (=> b!7537802 m!8107864))

(declare-fun m!8107866 () Bool)

(assert (=> b!7537802 m!8107866))

(declare-fun m!8107868 () Bool)

(assert (=> b!7537802 m!8107868))

(declare-fun m!8107870 () Bool)

(assert (=> b!7537802 m!8107870))

(assert (=> b!7537802 m!8107866))

(declare-fun m!8107872 () Bool)

(assert (=> b!7537802 m!8107872))

(declare-fun m!8107874 () Bool)

(assert (=> b!7537802 m!8107874))

(declare-fun m!8107876 () Bool)

(assert (=> b!7537802 m!8107876))

(declare-fun m!8107878 () Bool)

(assert (=> b!7537807 m!8107878))

(assert (=> b!7537807 m!8107878))

(declare-fun m!8107880 () Bool)

(assert (=> b!7537807 m!8107880))

(declare-fun m!8107882 () Bool)

(assert (=> b!7537807 m!8107882))

(declare-fun m!8107884 () Bool)

(assert (=> b!7537807 m!8107884))

(declare-fun m!8107886 () Bool)

(assert (=> b!7537798 m!8107886))

(declare-fun m!8107888 () Bool)

(assert (=> b!7537810 m!8107888))

(check-sat (not b!7537796) (not b!7537811) (not b!7537800) (not b!7537809) (not b!7537791) (not b!7537803) (not b!7537810) (not b!7537793) (not b!7537790) (not b!7537795) (not b!7537794) (not b!7537804) tp_is_empty!50141 (not b!7537798) (not b!7537802) (not b!7537799) (not b!7537792) (not b!7537806) (not start!729052) (not b!7537807) (not b!7537808))
(check-sat)
