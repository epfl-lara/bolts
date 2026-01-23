; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!729458 () Bool)

(assert start!729458)

(declare-fun b!7542290 () Bool)

(declare-fun e!4493670 () Bool)

(declare-fun tp!2193814 () Bool)

(declare-fun tp!2193808 () Bool)

(assert (=> b!7542290 (= e!4493670 (and tp!2193814 tp!2193808))))

(declare-fun b!7542291 () Bool)

(declare-fun res!3022641 () Bool)

(declare-fun e!4493662 () Bool)

(assert (=> b!7542291 (=> res!3022641 e!4493662)))

(declare-fun lt!2643657 () Int)

(declare-fun lt!2643664 () Int)

(assert (=> b!7542291 (= res!3022641 (= lt!2643657 lt!2643664))))

(declare-fun b!7542292 () Bool)

(declare-fun e!4493671 () Bool)

(declare-fun e!4493660 () Bool)

(assert (=> b!7542292 (= e!4493671 e!4493660)))

(declare-fun res!3022629 () Bool)

(assert (=> b!7542292 (=> (not res!3022629) (not e!4493660))))

(assert (=> b!7542292 (= res!3022629 (>= lt!2643664 lt!2643657))))

(declare-datatypes ((C!40142 0))(
  ( (C!40143 (val!30511 Int)) )
))
(declare-datatypes ((List!72791 0))(
  ( (Nil!72667) (Cons!72667 (h!79115 C!40142) (t!387502 List!72791)) )
))
(declare-fun testedP!423 () List!72791)

(declare-fun size!42404 (List!72791) Int)

(assert (=> b!7542292 (= lt!2643657 (size!42404 testedP!423))))

(declare-fun knownP!30 () List!72791)

(assert (=> b!7542292 (= lt!2643664 (size!42404 knownP!30))))

(declare-fun b!7542293 () Bool)

(assert (=> b!7542293 (= e!4493660 (not e!4493662))))

(declare-fun res!3022630 () Bool)

(assert (=> b!7542293 (=> res!3022630 e!4493662)))

(declare-datatypes ((Regex!19908 0))(
  ( (ElementMatch!19908 (c!1392517 C!40142)) (Concat!28753 (regOne!40328 Regex!19908) (regTwo!40328 Regex!19908)) (EmptyExpr!19908) (Star!19908 (reg!20237 Regex!19908)) (EmptyLang!19908) (Union!19908 (regOne!40329 Regex!19908) (regTwo!40329 Regex!19908)) )
))
(declare-fun r!24333 () Regex!19908)

(declare-fun lt!2643669 () List!72791)

(declare-fun matchR!9510 (Regex!19908 List!72791) Bool)

(assert (=> b!7542293 (= res!3022630 (not (matchR!9510 r!24333 lt!2643669)))))

(declare-fun getSuffix!3594 (List!72791 List!72791) List!72791)

(assert (=> b!7542293 (= lt!2643669 (getSuffix!3594 knownP!30 testedP!423))))

(declare-fun isPrefix!6114 (List!72791 List!72791) Bool)

(assert (=> b!7542293 (isPrefix!6114 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72791)

(declare-datatypes ((Unit!166754 0))(
  ( (Unit!166755) )
))
(declare-fun lt!2643674 () Unit!166754)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!864 (List!72791 List!72791 List!72791) Unit!166754)

(assert (=> b!7542293 (= lt!2643674 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!864 knownP!30 testedP!423 input!7874))))

(declare-fun b!7542294 () Bool)

(declare-fun e!4493664 () Bool)

(declare-fun tp_is_empty!50171 () Bool)

(declare-fun tp!2193804 () Bool)

(assert (=> b!7542294 (= e!4493664 (and tp_is_empty!50171 tp!2193804))))

(declare-fun b!7542295 () Bool)

(declare-fun res!3022645 () Bool)

(assert (=> b!7542295 (=> res!3022645 e!4493662)))

(declare-fun lostCause!1700 (Regex!19908) Bool)

(assert (=> b!7542295 (= res!3022645 (lostCause!1700 r!24333))))

(declare-fun b!7542296 () Bool)

(declare-fun res!3022644 () Bool)

(assert (=> b!7542296 (=> (not res!3022644) (not e!4493671))))

(declare-fun validRegex!10336 (Regex!19908) Bool)

(assert (=> b!7542296 (= res!3022644 (validRegex!10336 r!24333))))

(declare-fun b!7542297 () Bool)

(declare-fun e!4493666 () Bool)

(declare-fun e!4493661 () Bool)

(assert (=> b!7542297 (= e!4493666 e!4493661)))

(declare-fun res!3022632 () Bool)

(assert (=> b!7542297 (=> res!3022632 e!4493661)))

(declare-fun lt!2643667 () C!40142)

(declare-fun head!15498 (List!72791) C!40142)

(assert (=> b!7542297 (= res!3022632 (not (= (head!15498 lt!2643669) lt!2643667)))))

(declare-fun lt!2643663 () List!72791)

(declare-fun lt!2643676 () List!72791)

(assert (=> b!7542297 (= lt!2643663 lt!2643676)))

(declare-fun lt!2643672 () Unit!166754)

(declare-fun lemmaSamePrefixThenSameSuffix!2842 (List!72791 List!72791 List!72791 List!72791 List!72791) Unit!166754)

(assert (=> b!7542297 (= lt!2643672 (lemmaSamePrefixThenSameSuffix!2842 testedP!423 lt!2643663 testedP!423 lt!2643676 input!7874))))

(declare-fun b!7542298 () Bool)

(declare-fun e!4493667 () Bool)

(declare-fun tp!2193811 () Bool)

(assert (=> b!7542298 (= e!4493667 (and tp_is_empty!50171 tp!2193811))))

(declare-fun b!7542299 () Bool)

(declare-fun e!4493668 () Bool)

(assert (=> b!7542299 (= e!4493668 tp_is_empty!50171)))

(declare-fun res!3022637 () Bool)

(assert (=> start!729458 (=> (not res!3022637) (not e!4493671))))

(declare-fun baseR!101 () Regex!19908)

(assert (=> start!729458 (= res!3022637 (validRegex!10336 baseR!101))))

(assert (=> start!729458 e!4493671))

(assert (=> start!729458 e!4493668))

(assert (=> start!729458 e!4493664))

(assert (=> start!729458 e!4493667))

(declare-fun e!4493672 () Bool)

(assert (=> start!729458 e!4493672))

(assert (=> start!729458 e!4493670))

(declare-fun b!7542300 () Bool)

(declare-fun e!4493665 () Bool)

(assert (=> b!7542300 (= e!4493665 e!4493666)))

(declare-fun res!3022634 () Bool)

(assert (=> b!7542300 (=> res!3022634 e!4493666)))

(declare-fun lt!2643658 () List!72791)

(assert (=> b!7542300 (= res!3022634 (not (= lt!2643658 input!7874)))))

(declare-fun lt!2643675 () List!72791)

(assert (=> b!7542300 (= lt!2643675 lt!2643658)))

(declare-fun ++!17425 (List!72791 List!72791) List!72791)

(assert (=> b!7542300 (= lt!2643658 (++!17425 testedP!423 lt!2643663))))

(declare-fun lt!2643668 () List!72791)

(assert (=> b!7542300 (= lt!2643663 (++!17425 lt!2643669 lt!2643668))))

(declare-fun lt!2643671 () Unit!166754)

(declare-fun lemmaConcatAssociativity!3073 (List!72791 List!72791 List!72791) Unit!166754)

(assert (=> b!7542300 (= lt!2643671 (lemmaConcatAssociativity!3073 testedP!423 lt!2643669 lt!2643668))))

(declare-fun b!7542301 () Bool)

(declare-fun tp!2193805 () Bool)

(assert (=> b!7542301 (= e!4493668 tp!2193805)))

(declare-fun b!7542302 () Bool)

(assert (=> b!7542302 (= e!4493670 tp_is_empty!50171)))

(declare-fun b!7542303 () Bool)

(declare-fun e!4493669 () Bool)

(assert (=> b!7542303 (= e!4493669 (not (= lt!2643676 Nil!72667)))))

(declare-fun lt!2643661 () List!72791)

(declare-fun lt!2643660 () List!72791)

(declare-fun lt!2643659 () List!72791)

(assert (=> b!7542303 (= lt!2643659 (++!17425 testedP!423 (++!17425 lt!2643660 lt!2643661)))))

(declare-fun lt!2643662 () Unit!166754)

(assert (=> b!7542303 (= lt!2643662 (lemmaConcatAssociativity!3073 testedP!423 lt!2643660 lt!2643661))))

(declare-fun b!7542304 () Bool)

(declare-fun tp!2193816 () Bool)

(declare-fun tp!2193806 () Bool)

(assert (=> b!7542304 (= e!4493670 (and tp!2193816 tp!2193806))))

(declare-fun b!7542305 () Bool)

(declare-fun tp!2193812 () Bool)

(declare-fun tp!2193810 () Bool)

(assert (=> b!7542305 (= e!4493668 (and tp!2193812 tp!2193810))))

(declare-fun b!7542306 () Bool)

(declare-fun e!4493663 () Bool)

(assert (=> b!7542306 (= e!4493663 e!4493665)))

(declare-fun res!3022628 () Bool)

(assert (=> b!7542306 (=> res!3022628 e!4493665)))

(assert (=> b!7542306 (= res!3022628 (not (= lt!2643675 input!7874)))))

(declare-fun lt!2643666 () List!72791)

(assert (=> b!7542306 (= lt!2643675 (++!17425 lt!2643666 lt!2643668))))

(assert (=> b!7542306 (= lt!2643666 (++!17425 testedP!423 lt!2643669))))

(declare-fun b!7542307 () Bool)

(declare-fun res!3022639 () Bool)

(assert (=> b!7542307 (=> res!3022639 e!4493662)))

(declare-fun derivative!440 (Regex!19908 List!72791) Regex!19908)

(assert (=> b!7542307 (= res!3022639 (not (= (derivative!440 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7542308 () Bool)

(declare-fun res!3022627 () Bool)

(assert (=> b!7542308 (=> (not res!3022627) (not e!4493671))))

(assert (=> b!7542308 (= res!3022627 (isPrefix!6114 testedP!423 input!7874))))

(declare-fun b!7542309 () Bool)

(declare-fun res!3022633 () Bool)

(assert (=> b!7542309 (=> res!3022633 e!4493661)))

(declare-fun $colon$colon!3368 (List!72791 C!40142) List!72791)

(declare-fun tail!15044 (List!72791) List!72791)

(assert (=> b!7542309 (= res!3022633 (not (= lt!2643669 ($colon$colon!3368 (tail!15044 lt!2643669) lt!2643667))))))

(declare-fun b!7542310 () Bool)

(declare-fun tp!2193813 () Bool)

(assert (=> b!7542310 (= e!4493672 (and tp_is_empty!50171 tp!2193813))))

(declare-fun b!7542311 () Bool)

(declare-fun res!3022640 () Bool)

(assert (=> b!7542311 (=> (not res!3022640) (not e!4493671))))

(assert (=> b!7542311 (= res!3022640 (isPrefix!6114 knownP!30 input!7874))))

(declare-fun b!7542312 () Bool)

(declare-fun res!3022635 () Bool)

(assert (=> b!7542312 (=> (not res!3022635) (not e!4493660))))

(assert (=> b!7542312 (= res!3022635 (matchR!9510 baseR!101 knownP!30))))

(declare-fun b!7542313 () Bool)

(declare-fun res!3022642 () Bool)

(assert (=> b!7542313 (=> res!3022642 e!4493661)))

(assert (=> b!7542313 (= res!3022642 (not (= lt!2643666 knownP!30)))))

(declare-fun b!7542314 () Bool)

(declare-fun tp!2193815 () Bool)

(declare-fun tp!2193809 () Bool)

(assert (=> b!7542314 (= e!4493668 (and tp!2193815 tp!2193809))))

(declare-fun b!7542315 () Bool)

(declare-fun res!3022631 () Bool)

(assert (=> b!7542315 (=> res!3022631 e!4493662)))

(assert (=> b!7542315 (= res!3022631 (>= lt!2643657 (size!42404 input!7874)))))

(declare-fun b!7542316 () Bool)

(assert (=> b!7542316 (= e!4493662 e!4493663)))

(declare-fun res!3022638 () Bool)

(assert (=> b!7542316 (=> res!3022638 e!4493663)))

(assert (=> b!7542316 (= res!3022638 (not (= (++!17425 knownP!30 lt!2643668) input!7874)))))

(assert (=> b!7542316 (= lt!2643668 (getSuffix!3594 input!7874 knownP!30))))

(declare-fun lt!2643677 () List!72791)

(assert (=> b!7542316 (= lt!2643661 (getSuffix!3594 knownP!30 lt!2643677))))

(assert (=> b!7542316 (isPrefix!6114 lt!2643677 knownP!30)))

(declare-fun lt!2643665 () Unit!166754)

(assert (=> b!7542316 (= lt!2643665 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!864 knownP!30 lt!2643677 input!7874))))

(declare-fun derivativeStep!5698 (Regex!19908 C!40142) Regex!19908)

(assert (=> b!7542316 (= (derivative!440 baseR!101 lt!2643677) (derivativeStep!5698 r!24333 lt!2643667))))

(declare-fun lt!2643673 () Unit!166754)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!146 (Regex!19908 Regex!19908 List!72791 C!40142) Unit!166754)

(assert (=> b!7542316 (= lt!2643673 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!146 baseR!101 r!24333 testedP!423 lt!2643667))))

(assert (=> b!7542316 (isPrefix!6114 lt!2643677 input!7874)))

(declare-fun lt!2643670 () Unit!166754)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1179 (List!72791 List!72791) Unit!166754)

(assert (=> b!7542316 (= lt!2643670 (lemmaAddHeadSuffixToPrefixStillPrefix!1179 testedP!423 input!7874))))

(assert (=> b!7542316 (= lt!2643677 (++!17425 testedP!423 lt!2643660))))

(assert (=> b!7542316 (= lt!2643660 (Cons!72667 lt!2643667 Nil!72667))))

(assert (=> b!7542316 (= lt!2643667 (head!15498 lt!2643676))))

(assert (=> b!7542316 (= lt!2643676 (getSuffix!3594 input!7874 testedP!423))))

(declare-fun b!7542317 () Bool)

(declare-fun res!3022643 () Bool)

(assert (=> b!7542317 (=> res!3022643 e!4493665)))

(assert (=> b!7542317 (= res!3022643 (not (= (++!17425 testedP!423 lt!2643676) input!7874)))))

(declare-fun b!7542318 () Bool)

(assert (=> b!7542318 (= e!4493661 e!4493669)))

(declare-fun res!3022636 () Bool)

(assert (=> b!7542318 (=> res!3022636 e!4493669)))

(assert (=> b!7542318 (= res!3022636 (not (= lt!2643659 knownP!30)))))

(assert (=> b!7542318 (= lt!2643659 (++!17425 lt!2643677 lt!2643661))))

(declare-fun b!7542319 () Bool)

(declare-fun tp!2193807 () Bool)

(assert (=> b!7542319 (= e!4493670 tp!2193807)))

(assert (= (and start!729458 res!3022637) b!7542296))

(assert (= (and b!7542296 res!3022644) b!7542308))

(assert (= (and b!7542308 res!3022627) b!7542311))

(assert (= (and b!7542311 res!3022640) b!7542292))

(assert (= (and b!7542292 res!3022629) b!7542312))

(assert (= (and b!7542312 res!3022635) b!7542293))

(assert (= (and b!7542293 (not res!3022630)) b!7542307))

(assert (= (and b!7542307 (not res!3022639)) b!7542295))

(assert (= (and b!7542295 (not res!3022645)) b!7542291))

(assert (= (and b!7542291 (not res!3022641)) b!7542315))

(assert (= (and b!7542315 (not res!3022631)) b!7542316))

(assert (= (and b!7542316 (not res!3022638)) b!7542306))

(assert (= (and b!7542306 (not res!3022628)) b!7542317))

(assert (= (and b!7542317 (not res!3022643)) b!7542300))

(assert (= (and b!7542300 (not res!3022634)) b!7542297))

(assert (= (and b!7542297 (not res!3022632)) b!7542309))

(assert (= (and b!7542309 (not res!3022633)) b!7542313))

(assert (= (and b!7542313 (not res!3022642)) b!7542318))

(assert (= (and b!7542318 (not res!3022636)) b!7542303))

(assert (= (and start!729458 (is-ElementMatch!19908 baseR!101)) b!7542299))

(assert (= (and start!729458 (is-Concat!28753 baseR!101)) b!7542314))

(assert (= (and start!729458 (is-Star!19908 baseR!101)) b!7542301))

(assert (= (and start!729458 (is-Union!19908 baseR!101)) b!7542305))

(assert (= (and start!729458 (is-Cons!72667 input!7874)) b!7542294))

(assert (= (and start!729458 (is-Cons!72667 knownP!30)) b!7542298))

(assert (= (and start!729458 (is-Cons!72667 testedP!423)) b!7542310))

(assert (= (and start!729458 (is-ElementMatch!19908 r!24333)) b!7542302))

(assert (= (and start!729458 (is-Concat!28753 r!24333)) b!7542290))

(assert (= (and start!729458 (is-Star!19908 r!24333)) b!7542319))

(assert (= (and start!729458 (is-Union!19908 r!24333)) b!7542304))

(declare-fun m!8111282 () Bool)

(assert (=> b!7542315 m!8111282))

(declare-fun m!8111284 () Bool)

(assert (=> b!7542318 m!8111284))

(declare-fun m!8111286 () Bool)

(assert (=> b!7542296 m!8111286))

(declare-fun m!8111288 () Bool)

(assert (=> b!7542300 m!8111288))

(declare-fun m!8111290 () Bool)

(assert (=> b!7542300 m!8111290))

(declare-fun m!8111292 () Bool)

(assert (=> b!7542300 m!8111292))

(declare-fun m!8111294 () Bool)

(assert (=> b!7542292 m!8111294))

(declare-fun m!8111296 () Bool)

(assert (=> b!7542292 m!8111296))

(declare-fun m!8111298 () Bool)

(assert (=> start!729458 m!8111298))

(declare-fun m!8111300 () Bool)

(assert (=> b!7542295 m!8111300))

(declare-fun m!8111302 () Bool)

(assert (=> b!7542309 m!8111302))

(assert (=> b!7542309 m!8111302))

(declare-fun m!8111304 () Bool)

(assert (=> b!7542309 m!8111304))

(declare-fun m!8111306 () Bool)

(assert (=> b!7542297 m!8111306))

(declare-fun m!8111308 () Bool)

(assert (=> b!7542297 m!8111308))

(declare-fun m!8111310 () Bool)

(assert (=> b!7542317 m!8111310))

(declare-fun m!8111312 () Bool)

(assert (=> b!7542311 m!8111312))

(declare-fun m!8111314 () Bool)

(assert (=> b!7542303 m!8111314))

(assert (=> b!7542303 m!8111314))

(declare-fun m!8111316 () Bool)

(assert (=> b!7542303 m!8111316))

(declare-fun m!8111318 () Bool)

(assert (=> b!7542303 m!8111318))

(declare-fun m!8111320 () Bool)

(assert (=> b!7542293 m!8111320))

(declare-fun m!8111322 () Bool)

(assert (=> b!7542293 m!8111322))

(declare-fun m!8111324 () Bool)

(assert (=> b!7542293 m!8111324))

(declare-fun m!8111326 () Bool)

(assert (=> b!7542293 m!8111326))

(declare-fun m!8111328 () Bool)

(assert (=> b!7542308 m!8111328))

(declare-fun m!8111330 () Bool)

(assert (=> b!7542307 m!8111330))

(declare-fun m!8111332 () Bool)

(assert (=> b!7542306 m!8111332))

(declare-fun m!8111334 () Bool)

(assert (=> b!7542306 m!8111334))

(declare-fun m!8111336 () Bool)

(assert (=> b!7542312 m!8111336))

(declare-fun m!8111338 () Bool)

(assert (=> b!7542316 m!8111338))

(declare-fun m!8111340 () Bool)

(assert (=> b!7542316 m!8111340))

(declare-fun m!8111342 () Bool)

(assert (=> b!7542316 m!8111342))

(declare-fun m!8111344 () Bool)

(assert (=> b!7542316 m!8111344))

(declare-fun m!8111346 () Bool)

(assert (=> b!7542316 m!8111346))

(declare-fun m!8111348 () Bool)

(assert (=> b!7542316 m!8111348))

(declare-fun m!8111350 () Bool)

(assert (=> b!7542316 m!8111350))

(declare-fun m!8111352 () Bool)

(assert (=> b!7542316 m!8111352))

(declare-fun m!8111354 () Bool)

(assert (=> b!7542316 m!8111354))

(declare-fun m!8111356 () Bool)

(assert (=> b!7542316 m!8111356))

(declare-fun m!8111358 () Bool)

(assert (=> b!7542316 m!8111358))

(declare-fun m!8111360 () Bool)

(assert (=> b!7542316 m!8111360))

(declare-fun m!8111362 () Bool)

(assert (=> b!7542316 m!8111362))

(push 1)

(assert (not b!7542303))

(assert (not start!729458))

(assert (not b!7542294))

(assert (not b!7542308))

(assert tp_is_empty!50171)

(assert (not b!7542306))

(assert (not b!7542300))

(assert (not b!7542311))

(assert (not b!7542316))

(assert (not b!7542309))

(assert (not b!7542295))

(assert (not b!7542290))

(assert (not b!7542312))

(assert (not b!7542307))

(assert (not b!7542304))

(assert (not b!7542317))

(assert (not b!7542293))

(assert (not b!7542301))

(assert (not b!7542314))

(assert (not b!7542292))

(assert (not b!7542310))

(assert (not b!7542298))

(assert (not b!7542296))

(assert (not b!7542315))

(assert (not b!7542305))

(assert (not b!7542319))

(assert (not b!7542297))

(assert (not b!7542318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7542428 () Bool)

(declare-fun e!4493729 () Bool)

(declare-fun e!4493731 () Bool)

(assert (=> b!7542428 (= e!4493729 e!4493731)))

(declare-fun res!3022714 () Bool)

(declare-fun nullable!8682 (Regex!19908) Bool)

(assert (=> b!7542428 (= res!3022714 (not (nullable!8682 (reg!20237 baseR!101))))))

(assert (=> b!7542428 (=> (not res!3022714) (not e!4493731))))

(declare-fun b!7542429 () Bool)

(declare-fun call!691832 () Bool)

(assert (=> b!7542429 (= e!4493731 call!691832)))

(declare-fun b!7542430 () Bool)

(declare-fun e!4493726 () Bool)

(declare-fun e!4493728 () Bool)

(assert (=> b!7542430 (= e!4493726 e!4493728)))

(declare-fun res!3022717 () Bool)

(assert (=> b!7542430 (=> (not res!3022717) (not e!4493728))))

(declare-fun call!691831 () Bool)

(assert (=> b!7542430 (= res!3022717 call!691831)))

(declare-fun c!1392523 () Bool)

(declare-fun c!1392524 () Bool)

(declare-fun bm!691826 () Bool)

(assert (=> bm!691826 (= call!691832 (validRegex!10336 (ite c!1392524 (reg!20237 baseR!101) (ite c!1392523 (regOne!40329 baseR!101) (regOne!40328 baseR!101)))))))

(declare-fun b!7542431 () Bool)

(declare-fun call!691833 () Bool)

(assert (=> b!7542431 (= e!4493728 call!691833)))

(declare-fun b!7542432 () Bool)

(declare-fun res!3022715 () Bool)

(declare-fun e!4493732 () Bool)

(assert (=> b!7542432 (=> (not res!3022715) (not e!4493732))))

(assert (=> b!7542432 (= res!3022715 call!691831)))

(declare-fun e!4493730 () Bool)

(assert (=> b!7542432 (= e!4493730 e!4493732)))

(declare-fun bm!691827 () Bool)

(assert (=> bm!691827 (= call!691831 call!691832)))

(declare-fun d!2311586 () Bool)

(declare-fun res!3022713 () Bool)

(declare-fun e!4493727 () Bool)

(assert (=> d!2311586 (=> res!3022713 e!4493727)))

(assert (=> d!2311586 (= res!3022713 (is-ElementMatch!19908 baseR!101))))

(assert (=> d!2311586 (= (validRegex!10336 baseR!101) e!4493727)))

(declare-fun b!7542433 () Bool)

(assert (=> b!7542433 (= e!4493732 call!691833)))

(declare-fun b!7542434 () Bool)

(assert (=> b!7542434 (= e!4493729 e!4493730)))

(assert (=> b!7542434 (= c!1392523 (is-Union!19908 baseR!101))))

(declare-fun b!7542435 () Bool)

(declare-fun res!3022716 () Bool)

(assert (=> b!7542435 (=> res!3022716 e!4493726)))

(assert (=> b!7542435 (= res!3022716 (not (is-Concat!28753 baseR!101)))))

(assert (=> b!7542435 (= e!4493730 e!4493726)))

(declare-fun b!7542436 () Bool)

(assert (=> b!7542436 (= e!4493727 e!4493729)))

(assert (=> b!7542436 (= c!1392524 (is-Star!19908 baseR!101))))

(declare-fun bm!691828 () Bool)

(assert (=> bm!691828 (= call!691833 (validRegex!10336 (ite c!1392523 (regTwo!40329 baseR!101) (regTwo!40328 baseR!101))))))

(assert (= (and d!2311586 (not res!3022713)) b!7542436))

(assert (= (and b!7542436 c!1392524) b!7542428))

(assert (= (and b!7542436 (not c!1392524)) b!7542434))

(assert (= (and b!7542428 res!3022714) b!7542429))

(assert (= (and b!7542434 c!1392523) b!7542432))

(assert (= (and b!7542434 (not c!1392523)) b!7542435))

(assert (= (and b!7542432 res!3022715) b!7542433))

(assert (= (and b!7542435 (not res!3022716)) b!7542430))

(assert (= (and b!7542430 res!3022717) b!7542431))

(assert (= (or b!7542432 b!7542430) bm!691827))

(assert (= (or b!7542433 b!7542431) bm!691828))

(assert (= (or b!7542429 bm!691827) bm!691826))

(declare-fun m!8111446 () Bool)

(assert (=> b!7542428 m!8111446))

(declare-fun m!8111448 () Bool)

(assert (=> bm!691826 m!8111448))

(declare-fun m!8111450 () Bool)

(assert (=> bm!691828 m!8111450))

(assert (=> start!729458 d!2311586))

(declare-fun b!7542451 () Bool)

(declare-fun res!3022722 () Bool)

(declare-fun e!4493740 () Bool)

(assert (=> b!7542451 (=> (not res!3022722) (not e!4493740))))

(declare-fun lt!2643745 () List!72791)

(assert (=> b!7542451 (= res!3022722 (= (size!42404 lt!2643745) (+ (size!42404 testedP!423) (size!42404 lt!2643676))))))

(declare-fun b!7542452 () Bool)

(assert (=> b!7542452 (= e!4493740 (or (not (= lt!2643676 Nil!72667)) (= lt!2643745 testedP!423)))))

(declare-fun b!7542449 () Bool)

(declare-fun e!4493739 () List!72791)

(assert (=> b!7542449 (= e!4493739 lt!2643676)))

(declare-fun b!7542450 () Bool)

(assert (=> b!7542450 (= e!4493739 (Cons!72667 (h!79115 testedP!423) (++!17425 (t!387502 testedP!423) lt!2643676)))))

(declare-fun d!2311590 () Bool)

(assert (=> d!2311590 e!4493740))

(declare-fun res!3022723 () Bool)

(assert (=> d!2311590 (=> (not res!3022723) (not e!4493740))))

(declare-fun content!15371 (List!72791) (Set C!40142))

(assert (=> d!2311590 (= res!3022723 (= (content!15371 lt!2643745) (set.union (content!15371 testedP!423) (content!15371 lt!2643676))))))

(assert (=> d!2311590 (= lt!2643745 e!4493739)))

(declare-fun c!1392529 () Bool)

(assert (=> d!2311590 (= c!1392529 (is-Nil!72667 testedP!423))))

(assert (=> d!2311590 (= (++!17425 testedP!423 lt!2643676) lt!2643745)))

(assert (= (and d!2311590 c!1392529) b!7542449))

(assert (= (and d!2311590 (not c!1392529)) b!7542450))

(assert (= (and d!2311590 res!3022723) b!7542451))

(assert (= (and b!7542451 res!3022722) b!7542452))

(declare-fun m!8111452 () Bool)

(assert (=> b!7542451 m!8111452))

(assert (=> b!7542451 m!8111294))

(declare-fun m!8111454 () Bool)

(assert (=> b!7542451 m!8111454))

(declare-fun m!8111456 () Bool)

(assert (=> b!7542450 m!8111456))

(declare-fun m!8111458 () Bool)

(assert (=> d!2311590 m!8111458))

(declare-fun m!8111460 () Bool)

(assert (=> d!2311590 m!8111460))

(declare-fun m!8111462 () Bool)

(assert (=> d!2311590 m!8111462))

(assert (=> b!7542317 d!2311590))

(declare-fun b!7542459 () Bool)

(declare-fun res!3022728 () Bool)

(declare-fun e!4493744 () Bool)

(assert (=> b!7542459 (=> (not res!3022728) (not e!4493744))))

(declare-fun lt!2643746 () List!72791)

(assert (=> b!7542459 (= res!3022728 (= (size!42404 lt!2643746) (+ (size!42404 lt!2643666) (size!42404 lt!2643668))))))

(declare-fun b!7542460 () Bool)

(assert (=> b!7542460 (= e!4493744 (or (not (= lt!2643668 Nil!72667)) (= lt!2643746 lt!2643666)))))

(declare-fun b!7542457 () Bool)

(declare-fun e!4493743 () List!72791)

(assert (=> b!7542457 (= e!4493743 lt!2643668)))

(declare-fun b!7542458 () Bool)

(assert (=> b!7542458 (= e!4493743 (Cons!72667 (h!79115 lt!2643666) (++!17425 (t!387502 lt!2643666) lt!2643668)))))

(declare-fun d!2311592 () Bool)

(assert (=> d!2311592 e!4493744))

(declare-fun res!3022729 () Bool)

(assert (=> d!2311592 (=> (not res!3022729) (not e!4493744))))

(assert (=> d!2311592 (= res!3022729 (= (content!15371 lt!2643746) (set.union (content!15371 lt!2643666) (content!15371 lt!2643668))))))

(assert (=> d!2311592 (= lt!2643746 e!4493743)))

(declare-fun c!1392530 () Bool)

(assert (=> d!2311592 (= c!1392530 (is-Nil!72667 lt!2643666))))

(assert (=> d!2311592 (= (++!17425 lt!2643666 lt!2643668) lt!2643746)))

(assert (= (and d!2311592 c!1392530) b!7542457))

(assert (= (and d!2311592 (not c!1392530)) b!7542458))

(assert (= (and d!2311592 res!3022729) b!7542459))

(assert (= (and b!7542459 res!3022728) b!7542460))

(declare-fun m!8111464 () Bool)

(assert (=> b!7542459 m!8111464))

(declare-fun m!8111466 () Bool)

(assert (=> b!7542459 m!8111466))

(declare-fun m!8111468 () Bool)

(assert (=> b!7542459 m!8111468))

(declare-fun m!8111470 () Bool)

(assert (=> b!7542458 m!8111470))

(declare-fun m!8111472 () Bool)

(assert (=> d!2311592 m!8111472))

(declare-fun m!8111474 () Bool)

(assert (=> d!2311592 m!8111474))

(declare-fun m!8111476 () Bool)

(assert (=> d!2311592 m!8111476))

(assert (=> b!7542306 d!2311592))

(declare-fun b!7542463 () Bool)

(declare-fun res!3022730 () Bool)

(declare-fun e!4493746 () Bool)

(assert (=> b!7542463 (=> (not res!3022730) (not e!4493746))))

(declare-fun lt!2643747 () List!72791)

(assert (=> b!7542463 (= res!3022730 (= (size!42404 lt!2643747) (+ (size!42404 testedP!423) (size!42404 lt!2643669))))))

(declare-fun b!7542464 () Bool)

(assert (=> b!7542464 (= e!4493746 (or (not (= lt!2643669 Nil!72667)) (= lt!2643747 testedP!423)))))

(declare-fun b!7542461 () Bool)

(declare-fun e!4493745 () List!72791)

(assert (=> b!7542461 (= e!4493745 lt!2643669)))

(declare-fun b!7542462 () Bool)

(assert (=> b!7542462 (= e!4493745 (Cons!72667 (h!79115 testedP!423) (++!17425 (t!387502 testedP!423) lt!2643669)))))

(declare-fun d!2311594 () Bool)

(assert (=> d!2311594 e!4493746))

(declare-fun res!3022731 () Bool)

(assert (=> d!2311594 (=> (not res!3022731) (not e!4493746))))

(assert (=> d!2311594 (= res!3022731 (= (content!15371 lt!2643747) (set.union (content!15371 testedP!423) (content!15371 lt!2643669))))))

(assert (=> d!2311594 (= lt!2643747 e!4493745)))

(declare-fun c!1392531 () Bool)

(assert (=> d!2311594 (= c!1392531 (is-Nil!72667 testedP!423))))

(assert (=> d!2311594 (= (++!17425 testedP!423 lt!2643669) lt!2643747)))

(assert (= (and d!2311594 c!1392531) b!7542461))

(assert (= (and d!2311594 (not c!1392531)) b!7542462))

(assert (= (and d!2311594 res!3022731) b!7542463))

(assert (= (and b!7542463 res!3022730) b!7542464))

(declare-fun m!8111478 () Bool)

(assert (=> b!7542463 m!8111478))

(assert (=> b!7542463 m!8111294))

(declare-fun m!8111480 () Bool)

(assert (=> b!7542463 m!8111480))

(declare-fun m!8111482 () Bool)

(assert (=> b!7542462 m!8111482))

(declare-fun m!8111484 () Bool)

(assert (=> d!2311594 m!8111484))

(assert (=> d!2311594 m!8111460))

(declare-fun m!8111486 () Bool)

(assert (=> d!2311594 m!8111486))

(assert (=> b!7542306 d!2311594))

(declare-fun d!2311596 () Bool)

(declare-fun lt!2643751 () Regex!19908)

(assert (=> d!2311596 (validRegex!10336 lt!2643751)))

(declare-fun e!4493751 () Regex!19908)

(assert (=> d!2311596 (= lt!2643751 e!4493751)))

(declare-fun c!1392535 () Bool)

(assert (=> d!2311596 (= c!1392535 (is-Cons!72667 testedP!423))))

(assert (=> d!2311596 (validRegex!10336 baseR!101)))

(assert (=> d!2311596 (= (derivative!440 baseR!101 testedP!423) lt!2643751)))

(declare-fun b!7542473 () Bool)

(assert (=> b!7542473 (= e!4493751 (derivative!440 (derivativeStep!5698 baseR!101 (h!79115 testedP!423)) (t!387502 testedP!423)))))

(declare-fun b!7542474 () Bool)

(assert (=> b!7542474 (= e!4493751 baseR!101)))

(assert (= (and d!2311596 c!1392535) b!7542473))

(assert (= (and d!2311596 (not c!1392535)) b!7542474))

(declare-fun m!8111498 () Bool)

(assert (=> d!2311596 m!8111498))

(assert (=> d!2311596 m!8111298))

(declare-fun m!8111502 () Bool)

(assert (=> b!7542473 m!8111502))

(assert (=> b!7542473 m!8111502))

(declare-fun m!8111504 () Bool)

(assert (=> b!7542473 m!8111504))

(assert (=> b!7542307 d!2311596))

(declare-fun b!7542479 () Bool)

(declare-fun e!4493757 () Bool)

(declare-fun e!4493759 () Bool)

(assert (=> b!7542479 (= e!4493757 e!4493759)))

(declare-fun res!3022737 () Bool)

(assert (=> b!7542479 (= res!3022737 (not (nullable!8682 (reg!20237 r!24333))))))

(assert (=> b!7542479 (=> (not res!3022737) (not e!4493759))))

(declare-fun b!7542480 () Bool)

(declare-fun call!691835 () Bool)

(assert (=> b!7542480 (= e!4493759 call!691835)))

(declare-fun b!7542481 () Bool)

(declare-fun e!4493754 () Bool)

(declare-fun e!4493756 () Bool)

(assert (=> b!7542481 (= e!4493754 e!4493756)))

(declare-fun res!3022740 () Bool)

(assert (=> b!7542481 (=> (not res!3022740) (not e!4493756))))

(declare-fun call!691834 () Bool)

(assert (=> b!7542481 (= res!3022740 call!691834)))

(declare-fun c!1392538 () Bool)

(declare-fun c!1392537 () Bool)

(declare-fun bm!691829 () Bool)

(assert (=> bm!691829 (= call!691835 (validRegex!10336 (ite c!1392538 (reg!20237 r!24333) (ite c!1392537 (regOne!40329 r!24333) (regOne!40328 r!24333)))))))

(declare-fun b!7542482 () Bool)

(declare-fun call!691836 () Bool)

(assert (=> b!7542482 (= e!4493756 call!691836)))

(declare-fun b!7542483 () Bool)

(declare-fun res!3022738 () Bool)

(declare-fun e!4493760 () Bool)

(assert (=> b!7542483 (=> (not res!3022738) (not e!4493760))))

(assert (=> b!7542483 (= res!3022738 call!691834)))

(declare-fun e!4493758 () Bool)

(assert (=> b!7542483 (= e!4493758 e!4493760)))

(declare-fun bm!691830 () Bool)

(assert (=> bm!691830 (= call!691834 call!691835)))

(declare-fun d!2311600 () Bool)

(declare-fun res!3022736 () Bool)

(declare-fun e!4493755 () Bool)

(assert (=> d!2311600 (=> res!3022736 e!4493755)))

(assert (=> d!2311600 (= res!3022736 (is-ElementMatch!19908 r!24333))))

(assert (=> d!2311600 (= (validRegex!10336 r!24333) e!4493755)))

(declare-fun b!7542484 () Bool)

(assert (=> b!7542484 (= e!4493760 call!691836)))

(declare-fun b!7542485 () Bool)

(assert (=> b!7542485 (= e!4493757 e!4493758)))

(assert (=> b!7542485 (= c!1392537 (is-Union!19908 r!24333))))

(declare-fun b!7542486 () Bool)

(declare-fun res!3022739 () Bool)

(assert (=> b!7542486 (=> res!3022739 e!4493754)))

(assert (=> b!7542486 (= res!3022739 (not (is-Concat!28753 r!24333)))))

(assert (=> b!7542486 (= e!4493758 e!4493754)))

(declare-fun b!7542487 () Bool)

(assert (=> b!7542487 (= e!4493755 e!4493757)))

(assert (=> b!7542487 (= c!1392538 (is-Star!19908 r!24333))))

(declare-fun bm!691831 () Bool)

(assert (=> bm!691831 (= call!691836 (validRegex!10336 (ite c!1392537 (regTwo!40329 r!24333) (regTwo!40328 r!24333))))))

(assert (= (and d!2311600 (not res!3022736)) b!7542487))

(assert (= (and b!7542487 c!1392538) b!7542479))

(assert (= (and b!7542487 (not c!1392538)) b!7542485))

(assert (= (and b!7542479 res!3022737) b!7542480))

(assert (= (and b!7542485 c!1392537) b!7542483))

(assert (= (and b!7542485 (not c!1392537)) b!7542486))

(assert (= (and b!7542483 res!3022738) b!7542484))

(assert (= (and b!7542486 (not res!3022739)) b!7542481))

(assert (= (and b!7542481 res!3022740) b!7542482))

(assert (= (or b!7542483 b!7542481) bm!691830))

(assert (= (or b!7542484 b!7542482) bm!691831))

(assert (= (or b!7542480 bm!691830) bm!691829))

(declare-fun m!8111506 () Bool)

(assert (=> b!7542479 m!8111506))

(declare-fun m!8111510 () Bool)

(assert (=> bm!691829 m!8111510))

(declare-fun m!8111516 () Bool)

(assert (=> bm!691831 m!8111516))

(assert (=> b!7542296 d!2311600))

(declare-fun d!2311602 () Bool)

(declare-fun lostCauseFct!438 (Regex!19908) Bool)

(assert (=> d!2311602 (= (lostCause!1700 r!24333) (lostCauseFct!438 r!24333))))

(declare-fun bs!1940033 () Bool)

(assert (= bs!1940033 d!2311602))

(declare-fun m!8111526 () Bool)

(assert (=> bs!1940033 m!8111526))

(assert (=> b!7542295 d!2311602))

(declare-fun b!7542490 () Bool)

(declare-fun res!3022741 () Bool)

(declare-fun e!4493762 () Bool)

(assert (=> b!7542490 (=> (not res!3022741) (not e!4493762))))

(declare-fun lt!2643753 () List!72791)

(assert (=> b!7542490 (= res!3022741 (= (size!42404 lt!2643753) (+ (size!42404 testedP!423) (size!42404 lt!2643660))))))

(declare-fun b!7542491 () Bool)

(assert (=> b!7542491 (= e!4493762 (or (not (= lt!2643660 Nil!72667)) (= lt!2643753 testedP!423)))))

(declare-fun b!7542488 () Bool)

(declare-fun e!4493761 () List!72791)

(assert (=> b!7542488 (= e!4493761 lt!2643660)))

(declare-fun b!7542489 () Bool)

(assert (=> b!7542489 (= e!4493761 (Cons!72667 (h!79115 testedP!423) (++!17425 (t!387502 testedP!423) lt!2643660)))))

(declare-fun d!2311606 () Bool)

(assert (=> d!2311606 e!4493762))

(declare-fun res!3022742 () Bool)

(assert (=> d!2311606 (=> (not res!3022742) (not e!4493762))))

(assert (=> d!2311606 (= res!3022742 (= (content!15371 lt!2643753) (set.union (content!15371 testedP!423) (content!15371 lt!2643660))))))

(assert (=> d!2311606 (= lt!2643753 e!4493761)))

(declare-fun c!1392539 () Bool)

(assert (=> d!2311606 (= c!1392539 (is-Nil!72667 testedP!423))))

(assert (=> d!2311606 (= (++!17425 testedP!423 lt!2643660) lt!2643753)))

(assert (= (and d!2311606 c!1392539) b!7542488))

(assert (= (and d!2311606 (not c!1392539)) b!7542489))

(assert (= (and d!2311606 res!3022742) b!7542490))

(assert (= (and b!7542490 res!3022741) b!7542491))

(declare-fun m!8111528 () Bool)

(assert (=> b!7542490 m!8111528))

(assert (=> b!7542490 m!8111294))

(declare-fun m!8111530 () Bool)

(assert (=> b!7542490 m!8111530))

(declare-fun m!8111532 () Bool)

(assert (=> b!7542489 m!8111532))

(declare-fun m!8111534 () Bool)

(assert (=> d!2311606 m!8111534))

(assert (=> d!2311606 m!8111460))

(declare-fun m!8111536 () Bool)

(assert (=> d!2311606 m!8111536))

(assert (=> b!7542316 d!2311606))

(declare-fun d!2311608 () Bool)

(declare-fun lt!2643759 () List!72791)

(assert (=> d!2311608 (= (++!17425 lt!2643677 lt!2643759) knownP!30)))

(declare-fun e!4493765 () List!72791)

(assert (=> d!2311608 (= lt!2643759 e!4493765)))

(declare-fun c!1392542 () Bool)

(assert (=> d!2311608 (= c!1392542 (is-Cons!72667 lt!2643677))))

(assert (=> d!2311608 (>= (size!42404 knownP!30) (size!42404 lt!2643677))))

(assert (=> d!2311608 (= (getSuffix!3594 knownP!30 lt!2643677) lt!2643759)))

(declare-fun b!7542496 () Bool)

(assert (=> b!7542496 (= e!4493765 (getSuffix!3594 (tail!15044 knownP!30) (t!387502 lt!2643677)))))

(declare-fun b!7542497 () Bool)

(assert (=> b!7542497 (= e!4493765 knownP!30)))

(assert (= (and d!2311608 c!1392542) b!7542496))

(assert (= (and d!2311608 (not c!1392542)) b!7542497))

(declare-fun m!8111542 () Bool)

(assert (=> d!2311608 m!8111542))

(assert (=> d!2311608 m!8111296))

(declare-fun m!8111544 () Bool)

(assert (=> d!2311608 m!8111544))

(declare-fun m!8111546 () Bool)

(assert (=> b!7542496 m!8111546))

(assert (=> b!7542496 m!8111546))

(declare-fun m!8111548 () Bool)

(assert (=> b!7542496 m!8111548))

(assert (=> b!7542316 d!2311608))

(declare-fun d!2311612 () Bool)

(declare-fun lt!2643760 () List!72791)

(assert (=> d!2311612 (= (++!17425 testedP!423 lt!2643760) input!7874)))

(declare-fun e!4493766 () List!72791)

(assert (=> d!2311612 (= lt!2643760 e!4493766)))

(declare-fun c!1392543 () Bool)

(assert (=> d!2311612 (= c!1392543 (is-Cons!72667 testedP!423))))

(assert (=> d!2311612 (>= (size!42404 input!7874) (size!42404 testedP!423))))

(assert (=> d!2311612 (= (getSuffix!3594 input!7874 testedP!423) lt!2643760)))

(declare-fun b!7542498 () Bool)

(assert (=> b!7542498 (= e!4493766 (getSuffix!3594 (tail!15044 input!7874) (t!387502 testedP!423)))))

(declare-fun b!7542499 () Bool)

(assert (=> b!7542499 (= e!4493766 input!7874)))

(assert (= (and d!2311612 c!1392543) b!7542498))

(assert (= (and d!2311612 (not c!1392543)) b!7542499))

(declare-fun m!8111550 () Bool)

(assert (=> d!2311612 m!8111550))

(assert (=> d!2311612 m!8111282))

(assert (=> d!2311612 m!8111294))

(declare-fun m!8111552 () Bool)

(assert (=> b!7542498 m!8111552))

(assert (=> b!7542498 m!8111552))

(declare-fun m!8111554 () Bool)

(assert (=> b!7542498 m!8111554))

(assert (=> b!7542316 d!2311612))

(declare-fun b!7542509 () Bool)

(declare-fun res!3022753 () Bool)

(declare-fun e!4493773 () Bool)

(assert (=> b!7542509 (=> (not res!3022753) (not e!4493773))))

(assert (=> b!7542509 (= res!3022753 (= (head!15498 lt!2643677) (head!15498 knownP!30)))))

(declare-fun b!7542511 () Bool)

(declare-fun e!4493775 () Bool)

(assert (=> b!7542511 (= e!4493775 (>= (size!42404 knownP!30) (size!42404 lt!2643677)))))

(declare-fun b!7542510 () Bool)

(assert (=> b!7542510 (= e!4493773 (isPrefix!6114 (tail!15044 lt!2643677) (tail!15044 knownP!30)))))

(declare-fun b!7542508 () Bool)

(declare-fun e!4493774 () Bool)

(assert (=> b!7542508 (= e!4493774 e!4493773)))

(declare-fun res!3022754 () Bool)

(assert (=> b!7542508 (=> (not res!3022754) (not e!4493773))))

(assert (=> b!7542508 (= res!3022754 (not (is-Nil!72667 knownP!30)))))

(declare-fun d!2311614 () Bool)

(assert (=> d!2311614 e!4493775))

(declare-fun res!3022752 () Bool)

(assert (=> d!2311614 (=> res!3022752 e!4493775)))

(declare-fun lt!2643763 () Bool)

(assert (=> d!2311614 (= res!3022752 (not lt!2643763))))

(assert (=> d!2311614 (= lt!2643763 e!4493774)))

(declare-fun res!3022751 () Bool)

(assert (=> d!2311614 (=> res!3022751 e!4493774)))

(assert (=> d!2311614 (= res!3022751 (is-Nil!72667 lt!2643677))))

(assert (=> d!2311614 (= (isPrefix!6114 lt!2643677 knownP!30) lt!2643763)))

(assert (= (and d!2311614 (not res!3022751)) b!7542508))

(assert (= (and b!7542508 res!3022754) b!7542509))

(assert (= (and b!7542509 res!3022753) b!7542510))

(assert (= (and d!2311614 (not res!3022752)) b!7542511))

(declare-fun m!8111556 () Bool)

(assert (=> b!7542509 m!8111556))

(declare-fun m!8111558 () Bool)

(assert (=> b!7542509 m!8111558))

(assert (=> b!7542511 m!8111296))

(assert (=> b!7542511 m!8111544))

(declare-fun m!8111560 () Bool)

(assert (=> b!7542510 m!8111560))

(assert (=> b!7542510 m!8111546))

(assert (=> b!7542510 m!8111560))

(assert (=> b!7542510 m!8111546))

(declare-fun m!8111562 () Bool)

(assert (=> b!7542510 m!8111562))

(assert (=> b!7542316 d!2311614))

(declare-fun b!7542513 () Bool)

(declare-fun res!3022757 () Bool)

(declare-fun e!4493776 () Bool)

(assert (=> b!7542513 (=> (not res!3022757) (not e!4493776))))

(assert (=> b!7542513 (= res!3022757 (= (head!15498 lt!2643677) (head!15498 input!7874)))))

(declare-fun b!7542515 () Bool)

(declare-fun e!4493778 () Bool)

(assert (=> b!7542515 (= e!4493778 (>= (size!42404 input!7874) (size!42404 lt!2643677)))))

(declare-fun b!7542514 () Bool)

(assert (=> b!7542514 (= e!4493776 (isPrefix!6114 (tail!15044 lt!2643677) (tail!15044 input!7874)))))

(declare-fun b!7542512 () Bool)

(declare-fun e!4493777 () Bool)

(assert (=> b!7542512 (= e!4493777 e!4493776)))

(declare-fun res!3022758 () Bool)

(assert (=> b!7542512 (=> (not res!3022758) (not e!4493776))))

(assert (=> b!7542512 (= res!3022758 (not (is-Nil!72667 input!7874)))))

(declare-fun d!2311616 () Bool)

(assert (=> d!2311616 e!4493778))

(declare-fun res!3022756 () Bool)

(assert (=> d!2311616 (=> res!3022756 e!4493778)))

(declare-fun lt!2643764 () Bool)

(assert (=> d!2311616 (= res!3022756 (not lt!2643764))))

(assert (=> d!2311616 (= lt!2643764 e!4493777)))

(declare-fun res!3022755 () Bool)

(assert (=> d!2311616 (=> res!3022755 e!4493777)))

(assert (=> d!2311616 (= res!3022755 (is-Nil!72667 lt!2643677))))

(assert (=> d!2311616 (= (isPrefix!6114 lt!2643677 input!7874) lt!2643764)))

(assert (= (and d!2311616 (not res!3022755)) b!7542512))

(assert (= (and b!7542512 res!3022758) b!7542513))

(assert (= (and b!7542513 res!3022757) b!7542514))

(assert (= (and d!2311616 (not res!3022756)) b!7542515))

(assert (=> b!7542513 m!8111556))

(declare-fun m!8111564 () Bool)

(assert (=> b!7542513 m!8111564))

(assert (=> b!7542515 m!8111282))

(assert (=> b!7542515 m!8111544))

(assert (=> b!7542514 m!8111560))

(assert (=> b!7542514 m!8111552))

(assert (=> b!7542514 m!8111560))

(assert (=> b!7542514 m!8111552))

(declare-fun m!8111566 () Bool)

(assert (=> b!7542514 m!8111566))

(assert (=> b!7542316 d!2311616))

(declare-fun d!2311618 () Bool)

(declare-fun lt!2643765 () List!72791)

(assert (=> d!2311618 (= (++!17425 knownP!30 lt!2643765) input!7874)))

(declare-fun e!4493779 () List!72791)

(assert (=> d!2311618 (= lt!2643765 e!4493779)))

(declare-fun c!1392544 () Bool)

(assert (=> d!2311618 (= c!1392544 (is-Cons!72667 knownP!30))))

(assert (=> d!2311618 (>= (size!42404 input!7874) (size!42404 knownP!30))))

(assert (=> d!2311618 (= (getSuffix!3594 input!7874 knownP!30) lt!2643765)))

(declare-fun b!7542516 () Bool)

(assert (=> b!7542516 (= e!4493779 (getSuffix!3594 (tail!15044 input!7874) (t!387502 knownP!30)))))

(declare-fun b!7542517 () Bool)

(assert (=> b!7542517 (= e!4493779 input!7874)))

(assert (= (and d!2311618 c!1392544) b!7542516))

(assert (= (and d!2311618 (not c!1392544)) b!7542517))

(declare-fun m!8111568 () Bool)

(assert (=> d!2311618 m!8111568))

(assert (=> d!2311618 m!8111282))

(assert (=> d!2311618 m!8111296))

(assert (=> b!7542516 m!8111552))

(assert (=> b!7542516 m!8111552))

(declare-fun m!8111570 () Bool)

(assert (=> b!7542516 m!8111570))

(assert (=> b!7542316 d!2311618))

(declare-fun d!2311620 () Bool)

(assert (=> d!2311620 (= (derivative!440 baseR!101 (++!17425 testedP!423 (Cons!72667 lt!2643667 Nil!72667))) (derivativeStep!5698 r!24333 lt!2643667))))

(declare-fun lt!2643768 () Unit!166754)

(declare-fun choose!58365 (Regex!19908 Regex!19908 List!72791 C!40142) Unit!166754)

(assert (=> d!2311620 (= lt!2643768 (choose!58365 baseR!101 r!24333 testedP!423 lt!2643667))))

(assert (=> d!2311620 (validRegex!10336 baseR!101)))

(assert (=> d!2311620 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!146 baseR!101 r!24333 testedP!423 lt!2643667) lt!2643768)))

(declare-fun bs!1940035 () Bool)

(assert (= bs!1940035 d!2311620))

(declare-fun m!8111572 () Bool)

(assert (=> bs!1940035 m!8111572))

(declare-fun m!8111574 () Bool)

(assert (=> bs!1940035 m!8111574))

(assert (=> bs!1940035 m!8111298))

(assert (=> bs!1940035 m!8111572))

(assert (=> bs!1940035 m!8111344))

(declare-fun m!8111576 () Bool)

(assert (=> bs!1940035 m!8111576))

(assert (=> b!7542316 d!2311620))

(declare-fun d!2311622 () Bool)

(assert (=> d!2311622 (isPrefix!6114 lt!2643677 knownP!30)))

(declare-fun lt!2643773 () Unit!166754)

(declare-fun choose!58366 (List!72791 List!72791 List!72791) Unit!166754)

(assert (=> d!2311622 (= lt!2643773 (choose!58366 knownP!30 lt!2643677 input!7874))))

(assert (=> d!2311622 (isPrefix!6114 knownP!30 input!7874)))

(assert (=> d!2311622 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!864 knownP!30 lt!2643677 input!7874) lt!2643773)))

(declare-fun bs!1940036 () Bool)

(assert (= bs!1940036 d!2311622))

(assert (=> bs!1940036 m!8111340))

(declare-fun m!8111578 () Bool)

(assert (=> bs!1940036 m!8111578))

(assert (=> bs!1940036 m!8111312))

(assert (=> b!7542316 d!2311622))

(declare-fun b!7542558 () Bool)

(declare-fun c!1392568 () Bool)

(assert (=> b!7542558 (= c!1392568 (nullable!8682 (regOne!40328 r!24333)))))

(declare-fun e!4493804 () Regex!19908)

(declare-fun e!4493803 () Regex!19908)

(assert (=> b!7542558 (= e!4493804 e!4493803)))

(declare-fun bm!691848 () Bool)

(declare-fun call!691854 () Regex!19908)

(declare-fun call!691856 () Regex!19908)

(assert (=> bm!691848 (= call!691854 call!691856)))

(declare-fun bm!691849 () Bool)

(declare-fun call!691855 () Regex!19908)

(assert (=> bm!691849 (= call!691856 call!691855)))

(declare-fun b!7542559 () Bool)

(declare-fun e!4493802 () Regex!19908)

(declare-fun e!4493801 () Regex!19908)

(assert (=> b!7542559 (= e!4493802 e!4493801)))

(declare-fun c!1392570 () Bool)

(assert (=> b!7542559 (= c!1392570 (is-ElementMatch!19908 r!24333))))

(declare-fun b!7542560 () Bool)

(declare-fun call!691853 () Regex!19908)

(assert (=> b!7542560 (= e!4493803 (Union!19908 (Concat!28753 call!691854 (regTwo!40328 r!24333)) call!691853))))

(declare-fun b!7542561 () Bool)

(assert (=> b!7542561 (= e!4493801 (ite (= lt!2643667 (c!1392517 r!24333)) EmptyExpr!19908 EmptyLang!19908))))

(declare-fun b!7542562 () Bool)

(declare-fun e!4493800 () Regex!19908)

(assert (=> b!7542562 (= e!4493800 e!4493804)))

(declare-fun c!1392567 () Bool)

(assert (=> b!7542562 (= c!1392567 (is-Star!19908 r!24333))))

(declare-fun d!2311624 () Bool)

(declare-fun lt!2643776 () Regex!19908)

(assert (=> d!2311624 (validRegex!10336 lt!2643776)))

(assert (=> d!2311624 (= lt!2643776 e!4493802)))

(declare-fun c!1392566 () Bool)

(assert (=> d!2311624 (= c!1392566 (or (is-EmptyExpr!19908 r!24333) (is-EmptyLang!19908 r!24333)))))

(assert (=> d!2311624 (validRegex!10336 r!24333)))

(assert (=> d!2311624 (= (derivativeStep!5698 r!24333 lt!2643667) lt!2643776)))

(declare-fun bm!691850 () Bool)

(declare-fun c!1392569 () Bool)

(assert (=> bm!691850 (= call!691855 (derivativeStep!5698 (ite c!1392569 (regTwo!40329 r!24333) (ite c!1392567 (reg!20237 r!24333) (regOne!40328 r!24333))) lt!2643667))))

(declare-fun b!7542563 () Bool)

(assert (=> b!7542563 (= e!4493804 (Concat!28753 call!691856 r!24333))))

(declare-fun bm!691851 () Bool)

(assert (=> bm!691851 (= call!691853 (derivativeStep!5698 (ite c!1392569 (regOne!40329 r!24333) (regTwo!40328 r!24333)) lt!2643667))))

(declare-fun b!7542564 () Bool)

(assert (=> b!7542564 (= e!4493802 EmptyLang!19908)))

(declare-fun b!7542565 () Bool)

(assert (=> b!7542565 (= c!1392569 (is-Union!19908 r!24333))))

(assert (=> b!7542565 (= e!4493801 e!4493800)))

(declare-fun b!7542566 () Bool)

(assert (=> b!7542566 (= e!4493803 (Union!19908 (Concat!28753 call!691854 (regTwo!40328 r!24333)) EmptyLang!19908))))

(declare-fun b!7542567 () Bool)

(assert (=> b!7542567 (= e!4493800 (Union!19908 call!691853 call!691855))))

(assert (= (and d!2311624 c!1392566) b!7542564))

(assert (= (and d!2311624 (not c!1392566)) b!7542559))

(assert (= (and b!7542559 c!1392570) b!7542561))

(assert (= (and b!7542559 (not c!1392570)) b!7542565))

(assert (= (and b!7542565 c!1392569) b!7542567))

(assert (= (and b!7542565 (not c!1392569)) b!7542562))

(assert (= (and b!7542562 c!1392567) b!7542563))

(assert (= (and b!7542562 (not c!1392567)) b!7542558))

(assert (= (and b!7542558 c!1392568) b!7542560))

(assert (= (and b!7542558 (not c!1392568)) b!7542566))

(assert (= (or b!7542560 b!7542566) bm!691848))

(assert (= (or b!7542563 bm!691848) bm!691849))

(assert (= (or b!7542567 bm!691849) bm!691850))

(assert (= (or b!7542567 b!7542560) bm!691851))

(declare-fun m!8111580 () Bool)

(assert (=> b!7542558 m!8111580))

(declare-fun m!8111582 () Bool)

(assert (=> d!2311624 m!8111582))

(assert (=> d!2311624 m!8111286))

(declare-fun m!8111584 () Bool)

(assert (=> bm!691850 m!8111584))

(declare-fun m!8111586 () Bool)

(assert (=> bm!691851 m!8111586))

(assert (=> b!7542316 d!2311624))

(declare-fun b!7542580 () Bool)

(declare-fun res!3022759 () Bool)

(declare-fun e!4493811 () Bool)

(assert (=> b!7542580 (=> (not res!3022759) (not e!4493811))))

(declare-fun lt!2643778 () List!72791)

(assert (=> b!7542580 (= res!3022759 (= (size!42404 lt!2643778) (+ (size!42404 knownP!30) (size!42404 lt!2643668))))))

(declare-fun b!7542581 () Bool)

(assert (=> b!7542581 (= e!4493811 (or (not (= lt!2643668 Nil!72667)) (= lt!2643778 knownP!30)))))

(declare-fun b!7542578 () Bool)

(declare-fun e!4493810 () List!72791)

(assert (=> b!7542578 (= e!4493810 lt!2643668)))

(declare-fun b!7542579 () Bool)

(assert (=> b!7542579 (= e!4493810 (Cons!72667 (h!79115 knownP!30) (++!17425 (t!387502 knownP!30) lt!2643668)))))

(declare-fun d!2311626 () Bool)

(assert (=> d!2311626 e!4493811))

(declare-fun res!3022760 () Bool)

(assert (=> d!2311626 (=> (not res!3022760) (not e!4493811))))

(assert (=> d!2311626 (= res!3022760 (= (content!15371 lt!2643778) (set.union (content!15371 knownP!30) (content!15371 lt!2643668))))))

(assert (=> d!2311626 (= lt!2643778 e!4493810)))

(declare-fun c!1392576 () Bool)

(assert (=> d!2311626 (= c!1392576 (is-Nil!72667 knownP!30))))

(assert (=> d!2311626 (= (++!17425 knownP!30 lt!2643668) lt!2643778)))

(assert (= (and d!2311626 c!1392576) b!7542578))

(assert (= (and d!2311626 (not c!1392576)) b!7542579))

(assert (= (and d!2311626 res!3022760) b!7542580))

(assert (= (and b!7542580 res!3022759) b!7542581))

(declare-fun m!8111588 () Bool)

(assert (=> b!7542580 m!8111588))

(assert (=> b!7542580 m!8111296))

(assert (=> b!7542580 m!8111468))

(declare-fun m!8111590 () Bool)

(assert (=> b!7542579 m!8111590))

(declare-fun m!8111592 () Bool)

(assert (=> d!2311626 m!8111592))

(declare-fun m!8111594 () Bool)

(assert (=> d!2311626 m!8111594))

(assert (=> d!2311626 m!8111476))

(assert (=> b!7542316 d!2311626))

(declare-fun d!2311628 () Bool)

(assert (=> d!2311628 (= (head!15498 lt!2643676) (h!79115 lt!2643676))))

(assert (=> b!7542316 d!2311628))

(declare-fun d!2311630 () Bool)

(assert (=> d!2311630 (isPrefix!6114 (++!17425 testedP!423 (Cons!72667 (head!15498 (getSuffix!3594 input!7874 testedP!423)) Nil!72667)) input!7874)))

(declare-fun lt!2643781 () Unit!166754)

(declare-fun choose!58367 (List!72791 List!72791) Unit!166754)

(assert (=> d!2311630 (= lt!2643781 (choose!58367 testedP!423 input!7874))))

(assert (=> d!2311630 (isPrefix!6114 testedP!423 input!7874)))

(assert (=> d!2311630 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1179 testedP!423 input!7874) lt!2643781)))

(declare-fun bs!1940037 () Bool)

(assert (= bs!1940037 d!2311630))

(assert (=> bs!1940037 m!8111350))

(declare-fun m!8111604 () Bool)

(assert (=> bs!1940037 m!8111604))

(assert (=> bs!1940037 m!8111604))

(declare-fun m!8111606 () Bool)

(assert (=> bs!1940037 m!8111606))

(assert (=> bs!1940037 m!8111328))

(declare-fun m!8111608 () Bool)

(assert (=> bs!1940037 m!8111608))

(assert (=> bs!1940037 m!8111350))

(declare-fun m!8111610 () Bool)

(assert (=> bs!1940037 m!8111610))

(assert (=> b!7542316 d!2311630))

(declare-fun d!2311634 () Bool)

(declare-fun lt!2643782 () Regex!19908)

(assert (=> d!2311634 (validRegex!10336 lt!2643782)))

(declare-fun e!4493812 () Regex!19908)

(assert (=> d!2311634 (= lt!2643782 e!4493812)))

(declare-fun c!1392577 () Bool)

(assert (=> d!2311634 (= c!1392577 (is-Cons!72667 lt!2643677))))

(assert (=> d!2311634 (validRegex!10336 baseR!101)))

(assert (=> d!2311634 (= (derivative!440 baseR!101 lt!2643677) lt!2643782)))

(declare-fun b!7542582 () Bool)

(assert (=> b!7542582 (= e!4493812 (derivative!440 (derivativeStep!5698 baseR!101 (h!79115 lt!2643677)) (t!387502 lt!2643677)))))

(declare-fun b!7542583 () Bool)

(assert (=> b!7542583 (= e!4493812 baseR!101)))

(assert (= (and d!2311634 c!1392577) b!7542582))

(assert (= (and d!2311634 (not c!1392577)) b!7542583))

(declare-fun m!8111612 () Bool)

(assert (=> d!2311634 m!8111612))

(assert (=> d!2311634 m!8111298))

(declare-fun m!8111614 () Bool)

(assert (=> b!7542582 m!8111614))

(assert (=> b!7542582 m!8111614))

(declare-fun m!8111616 () Bool)

(assert (=> b!7542582 m!8111616))

(assert (=> b!7542316 d!2311634))

(declare-fun b!7542628 () Bool)

(declare-fun res!3022798 () Bool)

(declare-fun e!4493841 () Bool)

(assert (=> b!7542628 (=> (not res!3022798) (not e!4493841))))

(declare-fun isEmpty!41378 (List!72791) Bool)

(assert (=> b!7542628 (= res!3022798 (isEmpty!41378 (tail!15044 lt!2643669)))))

(declare-fun b!7542629 () Bool)

(declare-fun e!4493843 () Bool)

(declare-fun e!4493840 () Bool)

(assert (=> b!7542629 (= e!4493843 e!4493840)))

(declare-fun res!3022795 () Bool)

(assert (=> b!7542629 (=> res!3022795 e!4493840)))

(declare-fun call!691863 () Bool)

(assert (=> b!7542629 (= res!3022795 call!691863)))

(declare-fun b!7542630 () Bool)

(declare-fun e!4493839 () Bool)

(declare-fun e!4493838 () Bool)

(assert (=> b!7542630 (= e!4493839 e!4493838)))

(declare-fun c!1392587 () Bool)

(assert (=> b!7542630 (= c!1392587 (is-EmptyLang!19908 r!24333))))

(declare-fun b!7542631 () Bool)

(declare-fun lt!2643789 () Bool)

(assert (=> b!7542631 (= e!4493838 (not lt!2643789))))

(declare-fun d!2311636 () Bool)

(assert (=> d!2311636 e!4493839))

(declare-fun c!1392585 () Bool)

(assert (=> d!2311636 (= c!1392585 (is-EmptyExpr!19908 r!24333))))

(declare-fun e!4493844 () Bool)

(assert (=> d!2311636 (= lt!2643789 e!4493844)))

(declare-fun c!1392586 () Bool)

(assert (=> d!2311636 (= c!1392586 (isEmpty!41378 lt!2643669))))

(assert (=> d!2311636 (validRegex!10336 r!24333)))

(assert (=> d!2311636 (= (matchR!9510 r!24333 lt!2643669) lt!2643789)))

(declare-fun b!7542632 () Bool)

(assert (=> b!7542632 (= e!4493840 (not (= (head!15498 lt!2643669) (c!1392517 r!24333))))))

(declare-fun b!7542633 () Bool)

(assert (=> b!7542633 (= e!4493839 (= lt!2643789 call!691863))))

(declare-fun b!7542634 () Bool)

(declare-fun res!3022793 () Bool)

(declare-fun e!4493842 () Bool)

(assert (=> b!7542634 (=> res!3022793 e!4493842)))

(assert (=> b!7542634 (= res!3022793 e!4493841)))

(declare-fun res!3022796 () Bool)

(assert (=> b!7542634 (=> (not res!3022796) (not e!4493841))))

(assert (=> b!7542634 (= res!3022796 lt!2643789)))

(declare-fun b!7542635 () Bool)

(declare-fun res!3022797 () Bool)

(assert (=> b!7542635 (=> res!3022797 e!4493840)))

(assert (=> b!7542635 (= res!3022797 (not (isEmpty!41378 (tail!15044 lt!2643669))))))

(declare-fun b!7542636 () Bool)

(declare-fun res!3022791 () Bool)

(assert (=> b!7542636 (=> res!3022791 e!4493842)))

(assert (=> b!7542636 (= res!3022791 (not (is-ElementMatch!19908 r!24333)))))

(assert (=> b!7542636 (= e!4493838 e!4493842)))

(declare-fun bm!691858 () Bool)

(assert (=> bm!691858 (= call!691863 (isEmpty!41378 lt!2643669))))

(declare-fun b!7542637 () Bool)

(assert (=> b!7542637 (= e!4493842 e!4493843)))

(declare-fun res!3022792 () Bool)

(assert (=> b!7542637 (=> (not res!3022792) (not e!4493843))))

(assert (=> b!7542637 (= res!3022792 (not lt!2643789))))

(declare-fun b!7542638 () Bool)

(assert (=> b!7542638 (= e!4493844 (matchR!9510 (derivativeStep!5698 r!24333 (head!15498 lt!2643669)) (tail!15044 lt!2643669)))))

(declare-fun b!7542639 () Bool)

(assert (=> b!7542639 (= e!4493841 (= (head!15498 lt!2643669) (c!1392517 r!24333)))))

(declare-fun b!7542640 () Bool)

(declare-fun res!3022794 () Bool)

(assert (=> b!7542640 (=> (not res!3022794) (not e!4493841))))

(assert (=> b!7542640 (= res!3022794 (not call!691863))))

(declare-fun b!7542641 () Bool)

(assert (=> b!7542641 (= e!4493844 (nullable!8682 r!24333))))

(assert (= (and d!2311636 c!1392586) b!7542641))

(assert (= (and d!2311636 (not c!1392586)) b!7542638))

(assert (= (and d!2311636 c!1392585) b!7542633))

(assert (= (and d!2311636 (not c!1392585)) b!7542630))

(assert (= (and b!7542630 c!1392587) b!7542631))

(assert (= (and b!7542630 (not c!1392587)) b!7542636))

(assert (= (and b!7542636 (not res!3022791)) b!7542634))

(assert (= (and b!7542634 res!3022796) b!7542640))

(assert (= (and b!7542640 res!3022794) b!7542628))

(assert (= (and b!7542628 res!3022798) b!7542639))

(assert (= (and b!7542634 (not res!3022793)) b!7542637))

(assert (= (and b!7542637 res!3022792) b!7542629))

(assert (= (and b!7542629 (not res!3022795)) b!7542635))

(assert (= (and b!7542635 (not res!3022797)) b!7542632))

(assert (= (or b!7542633 b!7542629 b!7542640) bm!691858))

(assert (=> b!7542638 m!8111306))

(assert (=> b!7542638 m!8111306))

(declare-fun m!8111636 () Bool)

(assert (=> b!7542638 m!8111636))

(assert (=> b!7542638 m!8111302))

(assert (=> b!7542638 m!8111636))

(assert (=> b!7542638 m!8111302))

(declare-fun m!8111638 () Bool)

(assert (=> b!7542638 m!8111638))

(declare-fun m!8111640 () Bool)

(assert (=> d!2311636 m!8111640))

(assert (=> d!2311636 m!8111286))

(assert (=> bm!691858 m!8111640))

(declare-fun m!8111642 () Bool)

(assert (=> b!7542641 m!8111642))

(assert (=> b!7542632 m!8111306))

(assert (=> b!7542639 m!8111306))

(assert (=> b!7542635 m!8111302))

(assert (=> b!7542635 m!8111302))

(declare-fun m!8111644 () Bool)

(assert (=> b!7542635 m!8111644))

(assert (=> b!7542628 m!8111302))

(assert (=> b!7542628 m!8111302))

(assert (=> b!7542628 m!8111644))

(assert (=> b!7542293 d!2311636))

(declare-fun d!2311642 () Bool)

(declare-fun lt!2643792 () List!72791)

(assert (=> d!2311642 (= (++!17425 testedP!423 lt!2643792) knownP!30)))

(declare-fun e!4493847 () List!72791)

(assert (=> d!2311642 (= lt!2643792 e!4493847)))

(declare-fun c!1392590 () Bool)

(assert (=> d!2311642 (= c!1392590 (is-Cons!72667 testedP!423))))

(assert (=> d!2311642 (>= (size!42404 knownP!30) (size!42404 testedP!423))))

(assert (=> d!2311642 (= (getSuffix!3594 knownP!30 testedP!423) lt!2643792)))

(declare-fun b!7542646 () Bool)

(assert (=> b!7542646 (= e!4493847 (getSuffix!3594 (tail!15044 knownP!30) (t!387502 testedP!423)))))

(declare-fun b!7542647 () Bool)

(assert (=> b!7542647 (= e!4493847 knownP!30)))

(assert (= (and d!2311642 c!1392590) b!7542646))

(assert (= (and d!2311642 (not c!1392590)) b!7542647))

(declare-fun m!8111646 () Bool)

(assert (=> d!2311642 m!8111646))

(assert (=> d!2311642 m!8111296))

(assert (=> d!2311642 m!8111294))

(assert (=> b!7542646 m!8111546))

(assert (=> b!7542646 m!8111546))

(declare-fun m!8111648 () Bool)

(assert (=> b!7542646 m!8111648))

(assert (=> b!7542293 d!2311642))

(declare-fun b!7542649 () Bool)

(declare-fun res!3022801 () Bool)

(declare-fun e!4493848 () Bool)

(assert (=> b!7542649 (=> (not res!3022801) (not e!4493848))))

(assert (=> b!7542649 (= res!3022801 (= (head!15498 testedP!423) (head!15498 knownP!30)))))

(declare-fun b!7542651 () Bool)

(declare-fun e!4493850 () Bool)

(assert (=> b!7542651 (= e!4493850 (>= (size!42404 knownP!30) (size!42404 testedP!423)))))

(declare-fun b!7542650 () Bool)

(assert (=> b!7542650 (= e!4493848 (isPrefix!6114 (tail!15044 testedP!423) (tail!15044 knownP!30)))))

(declare-fun b!7542648 () Bool)

(declare-fun e!4493849 () Bool)

(assert (=> b!7542648 (= e!4493849 e!4493848)))

(declare-fun res!3022802 () Bool)

(assert (=> b!7542648 (=> (not res!3022802) (not e!4493848))))

(assert (=> b!7542648 (= res!3022802 (not (is-Nil!72667 knownP!30)))))

(declare-fun d!2311644 () Bool)

(assert (=> d!2311644 e!4493850))

(declare-fun res!3022800 () Bool)

(assert (=> d!2311644 (=> res!3022800 e!4493850)))

(declare-fun lt!2643793 () Bool)

(assert (=> d!2311644 (= res!3022800 (not lt!2643793))))

(assert (=> d!2311644 (= lt!2643793 e!4493849)))

(declare-fun res!3022799 () Bool)

(assert (=> d!2311644 (=> res!3022799 e!4493849)))

(assert (=> d!2311644 (= res!3022799 (is-Nil!72667 testedP!423))))

(assert (=> d!2311644 (= (isPrefix!6114 testedP!423 knownP!30) lt!2643793)))

(assert (= (and d!2311644 (not res!3022799)) b!7542648))

(assert (= (and b!7542648 res!3022802) b!7542649))

(assert (= (and b!7542649 res!3022801) b!7542650))

(assert (= (and d!2311644 (not res!3022800)) b!7542651))

(declare-fun m!8111650 () Bool)

(assert (=> b!7542649 m!8111650))

(assert (=> b!7542649 m!8111558))

(assert (=> b!7542651 m!8111296))

(assert (=> b!7542651 m!8111294))

(declare-fun m!8111652 () Bool)

(assert (=> b!7542650 m!8111652))

(assert (=> b!7542650 m!8111546))

(assert (=> b!7542650 m!8111652))

(assert (=> b!7542650 m!8111546))

(declare-fun m!8111654 () Bool)

(assert (=> b!7542650 m!8111654))

(assert (=> b!7542293 d!2311644))

(declare-fun d!2311646 () Bool)

(assert (=> d!2311646 (isPrefix!6114 testedP!423 knownP!30)))

(declare-fun lt!2643794 () Unit!166754)

(assert (=> d!2311646 (= lt!2643794 (choose!58366 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311646 (isPrefix!6114 knownP!30 input!7874)))

(assert (=> d!2311646 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!864 knownP!30 testedP!423 input!7874) lt!2643794)))

(declare-fun bs!1940038 () Bool)

(assert (= bs!1940038 d!2311646))

(assert (=> bs!1940038 m!8111324))

(declare-fun m!8111656 () Bool)

(assert (=> bs!1940038 m!8111656))

(assert (=> bs!1940038 m!8111312))

(assert (=> b!7542293 d!2311646))

(declare-fun d!2311648 () Bool)

(declare-fun lt!2643799 () Int)

(assert (=> d!2311648 (>= lt!2643799 0)))

(declare-fun e!4493856 () Int)

(assert (=> d!2311648 (= lt!2643799 e!4493856)))

(declare-fun c!1392595 () Bool)

(assert (=> d!2311648 (= c!1392595 (is-Nil!72667 input!7874))))

(assert (=> d!2311648 (= (size!42404 input!7874) lt!2643799)))

(declare-fun b!7542662 () Bool)

(assert (=> b!7542662 (= e!4493856 0)))

(declare-fun b!7542663 () Bool)

(assert (=> b!7542663 (= e!4493856 (+ 1 (size!42404 (t!387502 input!7874))))))

(assert (= (and d!2311648 c!1392595) b!7542662))

(assert (= (and d!2311648 (not c!1392595)) b!7542663))

(declare-fun m!8111676 () Bool)

(assert (=> b!7542663 m!8111676))

(assert (=> b!7542315 d!2311648))

(declare-fun b!7542666 () Bool)

(declare-fun res!3022805 () Bool)

(declare-fun e!4493858 () Bool)

(assert (=> b!7542666 (=> (not res!3022805) (not e!4493858))))

(declare-fun lt!2643800 () List!72791)

(assert (=> b!7542666 (= res!3022805 (= (size!42404 lt!2643800) (+ (size!42404 testedP!423) (size!42404 (++!17425 lt!2643660 lt!2643661)))))))

(declare-fun b!7542667 () Bool)

(assert (=> b!7542667 (= e!4493858 (or (not (= (++!17425 lt!2643660 lt!2643661) Nil!72667)) (= lt!2643800 testedP!423)))))

(declare-fun b!7542664 () Bool)

(declare-fun e!4493857 () List!72791)

(assert (=> b!7542664 (= e!4493857 (++!17425 lt!2643660 lt!2643661))))

(declare-fun b!7542665 () Bool)

(assert (=> b!7542665 (= e!4493857 (Cons!72667 (h!79115 testedP!423) (++!17425 (t!387502 testedP!423) (++!17425 lt!2643660 lt!2643661))))))

(declare-fun d!2311654 () Bool)

(assert (=> d!2311654 e!4493858))

(declare-fun res!3022806 () Bool)

(assert (=> d!2311654 (=> (not res!3022806) (not e!4493858))))

(assert (=> d!2311654 (= res!3022806 (= (content!15371 lt!2643800) (set.union (content!15371 testedP!423) (content!15371 (++!17425 lt!2643660 lt!2643661)))))))

(assert (=> d!2311654 (= lt!2643800 e!4493857)))

(declare-fun c!1392596 () Bool)

(assert (=> d!2311654 (= c!1392596 (is-Nil!72667 testedP!423))))

(assert (=> d!2311654 (= (++!17425 testedP!423 (++!17425 lt!2643660 lt!2643661)) lt!2643800)))

(assert (= (and d!2311654 c!1392596) b!7542664))

(assert (= (and d!2311654 (not c!1392596)) b!7542665))

(assert (= (and d!2311654 res!3022806) b!7542666))

(assert (= (and b!7542666 res!3022805) b!7542667))

(declare-fun m!8111678 () Bool)

(assert (=> b!7542666 m!8111678))

(assert (=> b!7542666 m!8111294))

(assert (=> b!7542666 m!8111314))

(declare-fun m!8111680 () Bool)

(assert (=> b!7542666 m!8111680))

(assert (=> b!7542665 m!8111314))

(declare-fun m!8111682 () Bool)

(assert (=> b!7542665 m!8111682))

(declare-fun m!8111684 () Bool)

(assert (=> d!2311654 m!8111684))

(assert (=> d!2311654 m!8111460))

(assert (=> d!2311654 m!8111314))

(declare-fun m!8111686 () Bool)

(assert (=> d!2311654 m!8111686))

(assert (=> b!7542303 d!2311654))

(declare-fun b!7542670 () Bool)

(declare-fun res!3022807 () Bool)

(declare-fun e!4493860 () Bool)

(assert (=> b!7542670 (=> (not res!3022807) (not e!4493860))))

(declare-fun lt!2643801 () List!72791)

(assert (=> b!7542670 (= res!3022807 (= (size!42404 lt!2643801) (+ (size!42404 lt!2643660) (size!42404 lt!2643661))))))

(declare-fun b!7542671 () Bool)

(assert (=> b!7542671 (= e!4493860 (or (not (= lt!2643661 Nil!72667)) (= lt!2643801 lt!2643660)))))

(declare-fun b!7542668 () Bool)

(declare-fun e!4493859 () List!72791)

(assert (=> b!7542668 (= e!4493859 lt!2643661)))

(declare-fun b!7542669 () Bool)

(assert (=> b!7542669 (= e!4493859 (Cons!72667 (h!79115 lt!2643660) (++!17425 (t!387502 lt!2643660) lt!2643661)))))

(declare-fun d!2311656 () Bool)

(assert (=> d!2311656 e!4493860))

(declare-fun res!3022808 () Bool)

(assert (=> d!2311656 (=> (not res!3022808) (not e!4493860))))

(assert (=> d!2311656 (= res!3022808 (= (content!15371 lt!2643801) (set.union (content!15371 lt!2643660) (content!15371 lt!2643661))))))

(assert (=> d!2311656 (= lt!2643801 e!4493859)))

(declare-fun c!1392597 () Bool)

(assert (=> d!2311656 (= c!1392597 (is-Nil!72667 lt!2643660))))

(assert (=> d!2311656 (= (++!17425 lt!2643660 lt!2643661) lt!2643801)))

(assert (= (and d!2311656 c!1392597) b!7542668))

(assert (= (and d!2311656 (not c!1392597)) b!7542669))

(assert (= (and d!2311656 res!3022808) b!7542670))

(assert (= (and b!7542670 res!3022807) b!7542671))

(declare-fun m!8111688 () Bool)

(assert (=> b!7542670 m!8111688))

(assert (=> b!7542670 m!8111530))

(declare-fun m!8111690 () Bool)

(assert (=> b!7542670 m!8111690))

(declare-fun m!8111692 () Bool)

(assert (=> b!7542669 m!8111692))

(declare-fun m!8111694 () Bool)

(assert (=> d!2311656 m!8111694))

(assert (=> d!2311656 m!8111536))

(declare-fun m!8111696 () Bool)

(assert (=> d!2311656 m!8111696))

(assert (=> b!7542303 d!2311656))

(declare-fun d!2311658 () Bool)

(assert (=> d!2311658 (= (++!17425 (++!17425 testedP!423 lt!2643660) lt!2643661) (++!17425 testedP!423 (++!17425 lt!2643660 lt!2643661)))))

(declare-fun lt!2643804 () Unit!166754)

(declare-fun choose!58368 (List!72791 List!72791 List!72791) Unit!166754)

(assert (=> d!2311658 (= lt!2643804 (choose!58368 testedP!423 lt!2643660 lt!2643661))))

(assert (=> d!2311658 (= (lemmaConcatAssociativity!3073 testedP!423 lt!2643660 lt!2643661) lt!2643804)))

(declare-fun bs!1940039 () Bool)

(assert (= bs!1940039 d!2311658))

(assert (=> bs!1940039 m!8111314))

(declare-fun m!8111698 () Bool)

(assert (=> bs!1940039 m!8111698))

(assert (=> bs!1940039 m!8111314))

(assert (=> bs!1940039 m!8111316))

(assert (=> bs!1940039 m!8111346))

(declare-fun m!8111700 () Bool)

(assert (=> bs!1940039 m!8111700))

(assert (=> bs!1940039 m!8111346))

(assert (=> b!7542303 d!2311658))

(declare-fun d!2311660 () Bool)

(declare-fun lt!2643805 () Int)

(assert (=> d!2311660 (>= lt!2643805 0)))

(declare-fun e!4493861 () Int)

(assert (=> d!2311660 (= lt!2643805 e!4493861)))

(declare-fun c!1392598 () Bool)

(assert (=> d!2311660 (= c!1392598 (is-Nil!72667 testedP!423))))

(assert (=> d!2311660 (= (size!42404 testedP!423) lt!2643805)))

(declare-fun b!7542672 () Bool)

(assert (=> b!7542672 (= e!4493861 0)))

(declare-fun b!7542673 () Bool)

(assert (=> b!7542673 (= e!4493861 (+ 1 (size!42404 (t!387502 testedP!423))))))

(assert (= (and d!2311660 c!1392598) b!7542672))

(assert (= (and d!2311660 (not c!1392598)) b!7542673))

(declare-fun m!8111702 () Bool)

(assert (=> b!7542673 m!8111702))

(assert (=> b!7542292 d!2311660))

(declare-fun d!2311662 () Bool)

(declare-fun lt!2643806 () Int)

(assert (=> d!2311662 (>= lt!2643806 0)))

(declare-fun e!4493862 () Int)

(assert (=> d!2311662 (= lt!2643806 e!4493862)))

(declare-fun c!1392599 () Bool)

(assert (=> d!2311662 (= c!1392599 (is-Nil!72667 knownP!30))))

(assert (=> d!2311662 (= (size!42404 knownP!30) lt!2643806)))

(declare-fun b!7542674 () Bool)

(assert (=> b!7542674 (= e!4493862 0)))

(declare-fun b!7542675 () Bool)

(assert (=> b!7542675 (= e!4493862 (+ 1 (size!42404 (t!387502 knownP!30))))))

(assert (= (and d!2311662 c!1392599) b!7542674))

(assert (= (and d!2311662 (not c!1392599)) b!7542675))

(declare-fun m!8111704 () Bool)

(assert (=> b!7542675 m!8111704))

(assert (=> b!7542292 d!2311662))

(declare-fun b!7542676 () Bool)

(declare-fun res!3022816 () Bool)

(declare-fun e!4493866 () Bool)

(assert (=> b!7542676 (=> (not res!3022816) (not e!4493866))))

(assert (=> b!7542676 (= res!3022816 (isEmpty!41378 (tail!15044 knownP!30)))))

(declare-fun b!7542677 () Bool)

(declare-fun e!4493868 () Bool)

(declare-fun e!4493865 () Bool)

(assert (=> b!7542677 (= e!4493868 e!4493865)))

(declare-fun res!3022813 () Bool)

(assert (=> b!7542677 (=> res!3022813 e!4493865)))

(declare-fun call!691864 () Bool)

(assert (=> b!7542677 (= res!3022813 call!691864)))

(declare-fun b!7542678 () Bool)

(declare-fun e!4493864 () Bool)

(declare-fun e!4493863 () Bool)

(assert (=> b!7542678 (= e!4493864 e!4493863)))

(declare-fun c!1392602 () Bool)

(assert (=> b!7542678 (= c!1392602 (is-EmptyLang!19908 baseR!101))))

(declare-fun b!7542679 () Bool)

(declare-fun lt!2643807 () Bool)

(assert (=> b!7542679 (= e!4493863 (not lt!2643807))))

(declare-fun d!2311664 () Bool)

(assert (=> d!2311664 e!4493864))

(declare-fun c!1392600 () Bool)

(assert (=> d!2311664 (= c!1392600 (is-EmptyExpr!19908 baseR!101))))

(declare-fun e!4493869 () Bool)

(assert (=> d!2311664 (= lt!2643807 e!4493869)))

(declare-fun c!1392601 () Bool)

(assert (=> d!2311664 (= c!1392601 (isEmpty!41378 knownP!30))))

(assert (=> d!2311664 (validRegex!10336 baseR!101)))

(assert (=> d!2311664 (= (matchR!9510 baseR!101 knownP!30) lt!2643807)))

(declare-fun b!7542680 () Bool)

(assert (=> b!7542680 (= e!4493865 (not (= (head!15498 knownP!30) (c!1392517 baseR!101))))))

(declare-fun b!7542681 () Bool)

(assert (=> b!7542681 (= e!4493864 (= lt!2643807 call!691864))))

(declare-fun b!7542682 () Bool)

(declare-fun res!3022811 () Bool)

(declare-fun e!4493867 () Bool)

(assert (=> b!7542682 (=> res!3022811 e!4493867)))

(assert (=> b!7542682 (= res!3022811 e!4493866)))

(declare-fun res!3022814 () Bool)

(assert (=> b!7542682 (=> (not res!3022814) (not e!4493866))))

(assert (=> b!7542682 (= res!3022814 lt!2643807)))

(declare-fun b!7542683 () Bool)

(declare-fun res!3022815 () Bool)

(assert (=> b!7542683 (=> res!3022815 e!4493865)))

(assert (=> b!7542683 (= res!3022815 (not (isEmpty!41378 (tail!15044 knownP!30))))))

(declare-fun b!7542684 () Bool)

(declare-fun res!3022809 () Bool)

(assert (=> b!7542684 (=> res!3022809 e!4493867)))

(assert (=> b!7542684 (= res!3022809 (not (is-ElementMatch!19908 baseR!101)))))

(assert (=> b!7542684 (= e!4493863 e!4493867)))

(declare-fun bm!691859 () Bool)

(assert (=> bm!691859 (= call!691864 (isEmpty!41378 knownP!30))))

(declare-fun b!7542685 () Bool)

(assert (=> b!7542685 (= e!4493867 e!4493868)))

(declare-fun res!3022810 () Bool)

(assert (=> b!7542685 (=> (not res!3022810) (not e!4493868))))

(assert (=> b!7542685 (= res!3022810 (not lt!2643807))))

(declare-fun b!7542686 () Bool)

(assert (=> b!7542686 (= e!4493869 (matchR!9510 (derivativeStep!5698 baseR!101 (head!15498 knownP!30)) (tail!15044 knownP!30)))))

(declare-fun b!7542687 () Bool)

(assert (=> b!7542687 (= e!4493866 (= (head!15498 knownP!30) (c!1392517 baseR!101)))))

(declare-fun b!7542688 () Bool)

(declare-fun res!3022812 () Bool)

(assert (=> b!7542688 (=> (not res!3022812) (not e!4493866))))

(assert (=> b!7542688 (= res!3022812 (not call!691864))))

(declare-fun b!7542689 () Bool)

(assert (=> b!7542689 (= e!4493869 (nullable!8682 baseR!101))))

(assert (= (and d!2311664 c!1392601) b!7542689))

(assert (= (and d!2311664 (not c!1392601)) b!7542686))

(assert (= (and d!2311664 c!1392600) b!7542681))

(assert (= (and d!2311664 (not c!1392600)) b!7542678))

(assert (= (and b!7542678 c!1392602) b!7542679))

(assert (= (and b!7542678 (not c!1392602)) b!7542684))

(assert (= (and b!7542684 (not res!3022809)) b!7542682))

(assert (= (and b!7542682 res!3022814) b!7542688))

(assert (= (and b!7542688 res!3022812) b!7542676))

(assert (= (and b!7542676 res!3022816) b!7542687))

(assert (= (and b!7542682 (not res!3022811)) b!7542685))

(assert (= (and b!7542685 res!3022810) b!7542677))

(assert (= (and b!7542677 (not res!3022813)) b!7542683))

(assert (= (and b!7542683 (not res!3022815)) b!7542680))

(assert (= (or b!7542681 b!7542677 b!7542688) bm!691859))

(assert (=> b!7542686 m!8111558))

(assert (=> b!7542686 m!8111558))

(declare-fun m!8111706 () Bool)

(assert (=> b!7542686 m!8111706))

(assert (=> b!7542686 m!8111546))

(assert (=> b!7542686 m!8111706))

(assert (=> b!7542686 m!8111546))

(declare-fun m!8111708 () Bool)

(assert (=> b!7542686 m!8111708))

(declare-fun m!8111710 () Bool)

(assert (=> d!2311664 m!8111710))

(assert (=> d!2311664 m!8111298))

(assert (=> bm!691859 m!8111710))

(declare-fun m!8111712 () Bool)

(assert (=> b!7542689 m!8111712))

(assert (=> b!7542680 m!8111558))

(assert (=> b!7542687 m!8111558))

(assert (=> b!7542683 m!8111546))

(assert (=> b!7542683 m!8111546))

(declare-fun m!8111714 () Bool)

(assert (=> b!7542683 m!8111714))

(assert (=> b!7542676 m!8111546))

(assert (=> b!7542676 m!8111546))

(assert (=> b!7542676 m!8111714))

(assert (=> b!7542312 d!2311664))

(declare-fun b!7542691 () Bool)

(declare-fun res!3022819 () Bool)

(declare-fun e!4493870 () Bool)

(assert (=> b!7542691 (=> (not res!3022819) (not e!4493870))))

(assert (=> b!7542691 (= res!3022819 (= (head!15498 knownP!30) (head!15498 input!7874)))))

(declare-fun b!7542693 () Bool)

(declare-fun e!4493872 () Bool)

(assert (=> b!7542693 (= e!4493872 (>= (size!42404 input!7874) (size!42404 knownP!30)))))

(declare-fun b!7542692 () Bool)

(assert (=> b!7542692 (= e!4493870 (isPrefix!6114 (tail!15044 knownP!30) (tail!15044 input!7874)))))

(declare-fun b!7542690 () Bool)

(declare-fun e!4493871 () Bool)

(assert (=> b!7542690 (= e!4493871 e!4493870)))

(declare-fun res!3022820 () Bool)

(assert (=> b!7542690 (=> (not res!3022820) (not e!4493870))))

(assert (=> b!7542690 (= res!3022820 (not (is-Nil!72667 input!7874)))))

(declare-fun d!2311666 () Bool)

(assert (=> d!2311666 e!4493872))

(declare-fun res!3022818 () Bool)

(assert (=> d!2311666 (=> res!3022818 e!4493872)))

(declare-fun lt!2643808 () Bool)

(assert (=> d!2311666 (= res!3022818 (not lt!2643808))))

(assert (=> d!2311666 (= lt!2643808 e!4493871)))

(declare-fun res!3022817 () Bool)

(assert (=> d!2311666 (=> res!3022817 e!4493871)))

(assert (=> d!2311666 (= res!3022817 (is-Nil!72667 knownP!30))))

(assert (=> d!2311666 (= (isPrefix!6114 knownP!30 input!7874) lt!2643808)))

(assert (= (and d!2311666 (not res!3022817)) b!7542690))

(assert (= (and b!7542690 res!3022820) b!7542691))

(assert (= (and b!7542691 res!3022819) b!7542692))

(assert (= (and d!2311666 (not res!3022818)) b!7542693))

(assert (=> b!7542691 m!8111558))

(assert (=> b!7542691 m!8111564))

(assert (=> b!7542693 m!8111282))

(assert (=> b!7542693 m!8111296))

(assert (=> b!7542692 m!8111546))

(assert (=> b!7542692 m!8111552))

(assert (=> b!7542692 m!8111546))

(assert (=> b!7542692 m!8111552))

(declare-fun m!8111716 () Bool)

(assert (=> b!7542692 m!8111716))

(assert (=> b!7542311 d!2311666))

(declare-fun b!7542696 () Bool)

(declare-fun res!3022821 () Bool)

(declare-fun e!4493874 () Bool)

(assert (=> b!7542696 (=> (not res!3022821) (not e!4493874))))

(declare-fun lt!2643811 () List!72791)

(assert (=> b!7542696 (= res!3022821 (= (size!42404 lt!2643811) (+ (size!42404 testedP!423) (size!42404 lt!2643663))))))

(declare-fun b!7542697 () Bool)

(assert (=> b!7542697 (= e!4493874 (or (not (= lt!2643663 Nil!72667)) (= lt!2643811 testedP!423)))))

(declare-fun b!7542694 () Bool)

(declare-fun e!4493873 () List!72791)

(assert (=> b!7542694 (= e!4493873 lt!2643663)))

(declare-fun b!7542695 () Bool)

(assert (=> b!7542695 (= e!4493873 (Cons!72667 (h!79115 testedP!423) (++!17425 (t!387502 testedP!423) lt!2643663)))))

(declare-fun d!2311668 () Bool)

(assert (=> d!2311668 e!4493874))

(declare-fun res!3022822 () Bool)

(assert (=> d!2311668 (=> (not res!3022822) (not e!4493874))))

(assert (=> d!2311668 (= res!3022822 (= (content!15371 lt!2643811) (set.union (content!15371 testedP!423) (content!15371 lt!2643663))))))

(assert (=> d!2311668 (= lt!2643811 e!4493873)))

(declare-fun c!1392604 () Bool)

(assert (=> d!2311668 (= c!1392604 (is-Nil!72667 testedP!423))))

(assert (=> d!2311668 (= (++!17425 testedP!423 lt!2643663) lt!2643811)))

(assert (= (and d!2311668 c!1392604) b!7542694))

(assert (= (and d!2311668 (not c!1392604)) b!7542695))

(assert (= (and d!2311668 res!3022822) b!7542696))

(assert (= (and b!7542696 res!3022821) b!7542697))

(declare-fun m!8111718 () Bool)

(assert (=> b!7542696 m!8111718))

(assert (=> b!7542696 m!8111294))

(declare-fun m!8111720 () Bool)

(assert (=> b!7542696 m!8111720))

(declare-fun m!8111722 () Bool)

(assert (=> b!7542695 m!8111722))

(declare-fun m!8111724 () Bool)

(assert (=> d!2311668 m!8111724))

(assert (=> d!2311668 m!8111460))

(declare-fun m!8111726 () Bool)

(assert (=> d!2311668 m!8111726))

(assert (=> b!7542300 d!2311668))

(declare-fun b!7542700 () Bool)

(declare-fun res!3022823 () Bool)

(declare-fun e!4493876 () Bool)

(assert (=> b!7542700 (=> (not res!3022823) (not e!4493876))))

(declare-fun lt!2643812 () List!72791)

(assert (=> b!7542700 (= res!3022823 (= (size!42404 lt!2643812) (+ (size!42404 lt!2643669) (size!42404 lt!2643668))))))

(declare-fun b!7542701 () Bool)

(assert (=> b!7542701 (= e!4493876 (or (not (= lt!2643668 Nil!72667)) (= lt!2643812 lt!2643669)))))

(declare-fun b!7542698 () Bool)

(declare-fun e!4493875 () List!72791)

(assert (=> b!7542698 (= e!4493875 lt!2643668)))

(declare-fun b!7542699 () Bool)

(assert (=> b!7542699 (= e!4493875 (Cons!72667 (h!79115 lt!2643669) (++!17425 (t!387502 lt!2643669) lt!2643668)))))

(declare-fun d!2311670 () Bool)

(assert (=> d!2311670 e!4493876))

(declare-fun res!3022824 () Bool)

(assert (=> d!2311670 (=> (not res!3022824) (not e!4493876))))

(assert (=> d!2311670 (= res!3022824 (= (content!15371 lt!2643812) (set.union (content!15371 lt!2643669) (content!15371 lt!2643668))))))

(assert (=> d!2311670 (= lt!2643812 e!4493875)))

(declare-fun c!1392605 () Bool)

(assert (=> d!2311670 (= c!1392605 (is-Nil!72667 lt!2643669))))

(assert (=> d!2311670 (= (++!17425 lt!2643669 lt!2643668) lt!2643812)))

(assert (= (and d!2311670 c!1392605) b!7542698))

(assert (= (and d!2311670 (not c!1392605)) b!7542699))

(assert (= (and d!2311670 res!3022824) b!7542700))

(assert (= (and b!7542700 res!3022823) b!7542701))

(declare-fun m!8111728 () Bool)

(assert (=> b!7542700 m!8111728))

(assert (=> b!7542700 m!8111480))

(assert (=> b!7542700 m!8111468))

(declare-fun m!8111730 () Bool)

(assert (=> b!7542699 m!8111730))

(declare-fun m!8111732 () Bool)

(assert (=> d!2311670 m!8111732))

(assert (=> d!2311670 m!8111486))

(assert (=> d!2311670 m!8111476))

(assert (=> b!7542300 d!2311670))

(declare-fun d!2311672 () Bool)

(assert (=> d!2311672 (= (++!17425 (++!17425 testedP!423 lt!2643669) lt!2643668) (++!17425 testedP!423 (++!17425 lt!2643669 lt!2643668)))))

(declare-fun lt!2643813 () Unit!166754)

(assert (=> d!2311672 (= lt!2643813 (choose!58368 testedP!423 lt!2643669 lt!2643668))))

(assert (=> d!2311672 (= (lemmaConcatAssociativity!3073 testedP!423 lt!2643669 lt!2643668) lt!2643813)))

(declare-fun bs!1940040 () Bool)

(assert (= bs!1940040 d!2311672))

(assert (=> bs!1940040 m!8111290))

(declare-fun m!8111734 () Bool)

(assert (=> bs!1940040 m!8111734))

(assert (=> bs!1940040 m!8111290))

(declare-fun m!8111736 () Bool)

(assert (=> bs!1940040 m!8111736))

(assert (=> bs!1940040 m!8111334))

(declare-fun m!8111738 () Bool)

(assert (=> bs!1940040 m!8111738))

(assert (=> bs!1940040 m!8111334))

(assert (=> b!7542300 d!2311672))

(declare-fun d!2311674 () Bool)

(assert (=> d!2311674 (= ($colon$colon!3368 (tail!15044 lt!2643669) lt!2643667) (Cons!72667 lt!2643667 (tail!15044 lt!2643669)))))

(assert (=> b!7542309 d!2311674))

(declare-fun d!2311676 () Bool)

(assert (=> d!2311676 (= (tail!15044 lt!2643669) (t!387502 lt!2643669))))

(assert (=> b!7542309 d!2311676))

(declare-fun d!2311678 () Bool)

(assert (=> d!2311678 (= (head!15498 lt!2643669) (h!79115 lt!2643669))))

(assert (=> b!7542297 d!2311678))

(declare-fun d!2311682 () Bool)

(assert (=> d!2311682 (= lt!2643663 lt!2643676)))

(declare-fun lt!2643819 () Unit!166754)

(declare-fun choose!58370 (List!72791 List!72791 List!72791 List!72791 List!72791) Unit!166754)

(assert (=> d!2311682 (= lt!2643819 (choose!58370 testedP!423 lt!2643663 testedP!423 lt!2643676 input!7874))))

(assert (=> d!2311682 (isPrefix!6114 testedP!423 input!7874)))

(assert (=> d!2311682 (= (lemmaSamePrefixThenSameSuffix!2842 testedP!423 lt!2643663 testedP!423 lt!2643676 input!7874) lt!2643819)))

(declare-fun bs!1940042 () Bool)

(assert (= bs!1940042 d!2311682))

(declare-fun m!8111750 () Bool)

(assert (=> bs!1940042 m!8111750))

(assert (=> bs!1940042 m!8111328))

(assert (=> b!7542297 d!2311682))

(declare-fun b!7542710 () Bool)

(declare-fun res!3022829 () Bool)

(declare-fun e!4493882 () Bool)

(assert (=> b!7542710 (=> (not res!3022829) (not e!4493882))))

(declare-fun lt!2643820 () List!72791)

(assert (=> b!7542710 (= res!3022829 (= (size!42404 lt!2643820) (+ (size!42404 lt!2643677) (size!42404 lt!2643661))))))

(declare-fun b!7542711 () Bool)

(assert (=> b!7542711 (= e!4493882 (or (not (= lt!2643661 Nil!72667)) (= lt!2643820 lt!2643677)))))

(declare-fun b!7542708 () Bool)

(declare-fun e!4493881 () List!72791)

(assert (=> b!7542708 (= e!4493881 lt!2643661)))

(declare-fun b!7542709 () Bool)

(assert (=> b!7542709 (= e!4493881 (Cons!72667 (h!79115 lt!2643677) (++!17425 (t!387502 lt!2643677) lt!2643661)))))

(declare-fun d!2311688 () Bool)

(assert (=> d!2311688 e!4493882))

(declare-fun res!3022830 () Bool)

(assert (=> d!2311688 (=> (not res!3022830) (not e!4493882))))

(assert (=> d!2311688 (= res!3022830 (= (content!15371 lt!2643820) (set.union (content!15371 lt!2643677) (content!15371 lt!2643661))))))

(assert (=> d!2311688 (= lt!2643820 e!4493881)))

(declare-fun c!1392607 () Bool)

(assert (=> d!2311688 (= c!1392607 (is-Nil!72667 lt!2643677))))

(assert (=> d!2311688 (= (++!17425 lt!2643677 lt!2643661) lt!2643820)))

(assert (= (and d!2311688 c!1392607) b!7542708))

(assert (= (and d!2311688 (not c!1392607)) b!7542709))

(assert (= (and d!2311688 res!3022830) b!7542710))

(assert (= (and b!7542710 res!3022829) b!7542711))

(declare-fun m!8111754 () Bool)

(assert (=> b!7542710 m!8111754))

(assert (=> b!7542710 m!8111544))

(assert (=> b!7542710 m!8111690))

(declare-fun m!8111758 () Bool)

(assert (=> b!7542709 m!8111758))

(declare-fun m!8111760 () Bool)

(assert (=> d!2311688 m!8111760))

(declare-fun m!8111762 () Bool)

(assert (=> d!2311688 m!8111762))

(assert (=> d!2311688 m!8111696))

(assert (=> b!7542318 d!2311688))

(declare-fun b!7542713 () Bool)

(declare-fun res!3022833 () Bool)

(declare-fun e!4493883 () Bool)

(assert (=> b!7542713 (=> (not res!3022833) (not e!4493883))))

(assert (=> b!7542713 (= res!3022833 (= (head!15498 testedP!423) (head!15498 input!7874)))))

(declare-fun b!7542715 () Bool)

(declare-fun e!4493885 () Bool)

(assert (=> b!7542715 (= e!4493885 (>= (size!42404 input!7874) (size!42404 testedP!423)))))

(declare-fun b!7542714 () Bool)

(assert (=> b!7542714 (= e!4493883 (isPrefix!6114 (tail!15044 testedP!423) (tail!15044 input!7874)))))

(declare-fun b!7542712 () Bool)

(declare-fun e!4493884 () Bool)

(assert (=> b!7542712 (= e!4493884 e!4493883)))

(declare-fun res!3022834 () Bool)

(assert (=> b!7542712 (=> (not res!3022834) (not e!4493883))))

(assert (=> b!7542712 (= res!3022834 (not (is-Nil!72667 input!7874)))))

(declare-fun d!2311692 () Bool)

(assert (=> d!2311692 e!4493885))

(declare-fun res!3022832 () Bool)

(assert (=> d!2311692 (=> res!3022832 e!4493885)))

(declare-fun lt!2643821 () Bool)

(assert (=> d!2311692 (= res!3022832 (not lt!2643821))))

(assert (=> d!2311692 (= lt!2643821 e!4493884)))

(declare-fun res!3022831 () Bool)

(assert (=> d!2311692 (=> res!3022831 e!4493884)))

(assert (=> d!2311692 (= res!3022831 (is-Nil!72667 testedP!423))))

(assert (=> d!2311692 (= (isPrefix!6114 testedP!423 input!7874) lt!2643821)))

(assert (= (and d!2311692 (not res!3022831)) b!7542712))

(assert (= (and b!7542712 res!3022834) b!7542713))

(assert (= (and b!7542713 res!3022833) b!7542714))

(assert (= (and d!2311692 (not res!3022832)) b!7542715))

(assert (=> b!7542713 m!8111650))

(assert (=> b!7542713 m!8111564))

(assert (=> b!7542715 m!8111282))

(assert (=> b!7542715 m!8111294))

(assert (=> b!7542714 m!8111652))

(assert (=> b!7542714 m!8111552))

(assert (=> b!7542714 m!8111652))

(assert (=> b!7542714 m!8111552))

(declare-fun m!8111764 () Bool)

(assert (=> b!7542714 m!8111764))

(assert (=> b!7542308 d!2311692))

(declare-fun b!7542729 () Bool)

(declare-fun e!4493888 () Bool)

(declare-fun tp!2193870 () Bool)

(declare-fun tp!2193868 () Bool)

(assert (=> b!7542729 (= e!4493888 (and tp!2193870 tp!2193868))))

(declare-fun b!7542726 () Bool)

(assert (=> b!7542726 (= e!4493888 tp_is_empty!50171)))

(declare-fun b!7542727 () Bool)

(declare-fun tp!2193867 () Bool)

(declare-fun tp!2193866 () Bool)

(assert (=> b!7542727 (= e!4493888 (and tp!2193867 tp!2193866))))

(declare-fun b!7542728 () Bool)

(declare-fun tp!2193869 () Bool)

(assert (=> b!7542728 (= e!4493888 tp!2193869)))

(assert (=> b!7542301 (= tp!2193805 e!4493888)))

(assert (= (and b!7542301 (is-ElementMatch!19908 (reg!20237 baseR!101))) b!7542726))

(assert (= (and b!7542301 (is-Concat!28753 (reg!20237 baseR!101))) b!7542727))

(assert (= (and b!7542301 (is-Star!19908 (reg!20237 baseR!101))) b!7542728))

(assert (= (and b!7542301 (is-Union!19908 (reg!20237 baseR!101))) b!7542729))

(declare-fun b!7542733 () Bool)

(declare-fun e!4493889 () Bool)

(declare-fun tp!2193875 () Bool)

(declare-fun tp!2193873 () Bool)

(assert (=> b!7542733 (= e!4493889 (and tp!2193875 tp!2193873))))

(declare-fun b!7542730 () Bool)

(assert (=> b!7542730 (= e!4493889 tp_is_empty!50171)))

(declare-fun b!7542731 () Bool)

(declare-fun tp!2193872 () Bool)

(declare-fun tp!2193871 () Bool)

(assert (=> b!7542731 (= e!4493889 (and tp!2193872 tp!2193871))))

(declare-fun b!7542732 () Bool)

(declare-fun tp!2193874 () Bool)

(assert (=> b!7542732 (= e!4493889 tp!2193874)))

(assert (=> b!7542290 (= tp!2193814 e!4493889)))

(assert (= (and b!7542290 (is-ElementMatch!19908 (regOne!40328 r!24333))) b!7542730))

(assert (= (and b!7542290 (is-Concat!28753 (regOne!40328 r!24333))) b!7542731))

(assert (= (and b!7542290 (is-Star!19908 (regOne!40328 r!24333))) b!7542732))

(assert (= (and b!7542290 (is-Union!19908 (regOne!40328 r!24333))) b!7542733))

(declare-fun b!7542737 () Bool)

(declare-fun e!4493890 () Bool)

(declare-fun tp!2193880 () Bool)

(declare-fun tp!2193878 () Bool)

(assert (=> b!7542737 (= e!4493890 (and tp!2193880 tp!2193878))))

(declare-fun b!7542734 () Bool)

(assert (=> b!7542734 (= e!4493890 tp_is_empty!50171)))

(declare-fun b!7542735 () Bool)

(declare-fun tp!2193877 () Bool)

(declare-fun tp!2193876 () Bool)

(assert (=> b!7542735 (= e!4493890 (and tp!2193877 tp!2193876))))

(declare-fun b!7542736 () Bool)

(declare-fun tp!2193879 () Bool)

(assert (=> b!7542736 (= e!4493890 tp!2193879)))

(assert (=> b!7542290 (= tp!2193808 e!4493890)))

(assert (= (and b!7542290 (is-ElementMatch!19908 (regTwo!40328 r!24333))) b!7542734))

(assert (= (and b!7542290 (is-Concat!28753 (regTwo!40328 r!24333))) b!7542735))

(assert (= (and b!7542290 (is-Star!19908 (regTwo!40328 r!24333))) b!7542736))

(assert (= (and b!7542290 (is-Union!19908 (regTwo!40328 r!24333))) b!7542737))

(declare-fun b!7542741 () Bool)

(declare-fun e!4493891 () Bool)

(declare-fun tp!2193885 () Bool)

(declare-fun tp!2193883 () Bool)

(assert (=> b!7542741 (= e!4493891 (and tp!2193885 tp!2193883))))

(declare-fun b!7542738 () Bool)

(assert (=> b!7542738 (= e!4493891 tp_is_empty!50171)))

(declare-fun b!7542739 () Bool)

(declare-fun tp!2193882 () Bool)

(declare-fun tp!2193881 () Bool)

(assert (=> b!7542739 (= e!4493891 (and tp!2193882 tp!2193881))))

(declare-fun b!7542740 () Bool)

(declare-fun tp!2193884 () Bool)

(assert (=> b!7542740 (= e!4493891 tp!2193884)))

(assert (=> b!7542305 (= tp!2193812 e!4493891)))

(assert (= (and b!7542305 (is-ElementMatch!19908 (regOne!40329 baseR!101))) b!7542738))

(assert (= (and b!7542305 (is-Concat!28753 (regOne!40329 baseR!101))) b!7542739))

(assert (= (and b!7542305 (is-Star!19908 (regOne!40329 baseR!101))) b!7542740))

(assert (= (and b!7542305 (is-Union!19908 (regOne!40329 baseR!101))) b!7542741))

(declare-fun b!7542745 () Bool)

(declare-fun e!4493892 () Bool)

(declare-fun tp!2193890 () Bool)

(declare-fun tp!2193888 () Bool)

(assert (=> b!7542745 (= e!4493892 (and tp!2193890 tp!2193888))))

(declare-fun b!7542742 () Bool)

(assert (=> b!7542742 (= e!4493892 tp_is_empty!50171)))

(declare-fun b!7542743 () Bool)

(declare-fun tp!2193887 () Bool)

(declare-fun tp!2193886 () Bool)

(assert (=> b!7542743 (= e!4493892 (and tp!2193887 tp!2193886))))

(declare-fun b!7542744 () Bool)

(declare-fun tp!2193889 () Bool)

(assert (=> b!7542744 (= e!4493892 tp!2193889)))

(assert (=> b!7542305 (= tp!2193810 e!4493892)))

(assert (= (and b!7542305 (is-ElementMatch!19908 (regTwo!40329 baseR!101))) b!7542742))

(assert (= (and b!7542305 (is-Concat!28753 (regTwo!40329 baseR!101))) b!7542743))

(assert (= (and b!7542305 (is-Star!19908 (regTwo!40329 baseR!101))) b!7542744))

(assert (= (and b!7542305 (is-Union!19908 (regTwo!40329 baseR!101))) b!7542745))

(declare-fun b!7542750 () Bool)

(declare-fun e!4493895 () Bool)

(declare-fun tp!2193893 () Bool)

(assert (=> b!7542750 (= e!4493895 (and tp_is_empty!50171 tp!2193893))))

(assert (=> b!7542294 (= tp!2193804 e!4493895)))

(assert (= (and b!7542294 (is-Cons!72667 (t!387502 input!7874))) b!7542750))

(declare-fun b!7542751 () Bool)

(declare-fun e!4493896 () Bool)

(declare-fun tp!2193894 () Bool)

(assert (=> b!7542751 (= e!4493896 (and tp_is_empty!50171 tp!2193894))))

(assert (=> b!7542310 (= tp!2193813 e!4493896)))

(assert (= (and b!7542310 (is-Cons!72667 (t!387502 testedP!423))) b!7542751))

(declare-fun b!7542752 () Bool)

(declare-fun e!4493897 () Bool)

(declare-fun tp!2193895 () Bool)

(assert (=> b!7542752 (= e!4493897 (and tp_is_empty!50171 tp!2193895))))

(assert (=> b!7542298 (= tp!2193811 e!4493897)))

(assert (= (and b!7542298 (is-Cons!72667 (t!387502 knownP!30))) b!7542752))

(declare-fun b!7542756 () Bool)

(declare-fun e!4493898 () Bool)

(declare-fun tp!2193900 () Bool)

(declare-fun tp!2193898 () Bool)

(assert (=> b!7542756 (= e!4493898 (and tp!2193900 tp!2193898))))

(declare-fun b!7542753 () Bool)

(assert (=> b!7542753 (= e!4493898 tp_is_empty!50171)))

(declare-fun b!7542754 () Bool)

(declare-fun tp!2193897 () Bool)

(declare-fun tp!2193896 () Bool)

(assert (=> b!7542754 (= e!4493898 (and tp!2193897 tp!2193896))))

(declare-fun b!7542755 () Bool)

(declare-fun tp!2193899 () Bool)

(assert (=> b!7542755 (= e!4493898 tp!2193899)))

(assert (=> b!7542314 (= tp!2193815 e!4493898)))

(assert (= (and b!7542314 (is-ElementMatch!19908 (regOne!40328 baseR!101))) b!7542753))

(assert (= (and b!7542314 (is-Concat!28753 (regOne!40328 baseR!101))) b!7542754))

(assert (= (and b!7542314 (is-Star!19908 (regOne!40328 baseR!101))) b!7542755))

(assert (= (and b!7542314 (is-Union!19908 (regOne!40328 baseR!101))) b!7542756))

(declare-fun b!7542760 () Bool)

(declare-fun e!4493899 () Bool)

(declare-fun tp!2193905 () Bool)

(declare-fun tp!2193903 () Bool)

(assert (=> b!7542760 (= e!4493899 (and tp!2193905 tp!2193903))))

(declare-fun b!7542757 () Bool)

(assert (=> b!7542757 (= e!4493899 tp_is_empty!50171)))

(declare-fun b!7542758 () Bool)

(declare-fun tp!2193902 () Bool)

(declare-fun tp!2193901 () Bool)

(assert (=> b!7542758 (= e!4493899 (and tp!2193902 tp!2193901))))

(declare-fun b!7542759 () Bool)

(declare-fun tp!2193904 () Bool)

(assert (=> b!7542759 (= e!4493899 tp!2193904)))

(assert (=> b!7542314 (= tp!2193809 e!4493899)))

(assert (= (and b!7542314 (is-ElementMatch!19908 (regTwo!40328 baseR!101))) b!7542757))

(assert (= (and b!7542314 (is-Concat!28753 (regTwo!40328 baseR!101))) b!7542758))

(assert (= (and b!7542314 (is-Star!19908 (regTwo!40328 baseR!101))) b!7542759))

(assert (= (and b!7542314 (is-Union!19908 (regTwo!40328 baseR!101))) b!7542760))

(declare-fun b!7542764 () Bool)

(declare-fun e!4493900 () Bool)

(declare-fun tp!2193910 () Bool)

(declare-fun tp!2193908 () Bool)

(assert (=> b!7542764 (= e!4493900 (and tp!2193910 tp!2193908))))

(declare-fun b!7542761 () Bool)

(assert (=> b!7542761 (= e!4493900 tp_is_empty!50171)))

(declare-fun b!7542762 () Bool)

(declare-fun tp!2193907 () Bool)

(declare-fun tp!2193906 () Bool)

(assert (=> b!7542762 (= e!4493900 (and tp!2193907 tp!2193906))))

(declare-fun b!7542763 () Bool)

(declare-fun tp!2193909 () Bool)

(assert (=> b!7542763 (= e!4493900 tp!2193909)))

(assert (=> b!7542304 (= tp!2193816 e!4493900)))

(assert (= (and b!7542304 (is-ElementMatch!19908 (regOne!40329 r!24333))) b!7542761))

(assert (= (and b!7542304 (is-Concat!28753 (regOne!40329 r!24333))) b!7542762))

(assert (= (and b!7542304 (is-Star!19908 (regOne!40329 r!24333))) b!7542763))

(assert (= (and b!7542304 (is-Union!19908 (regOne!40329 r!24333))) b!7542764))

(declare-fun b!7542768 () Bool)

(declare-fun e!4493901 () Bool)

(declare-fun tp!2193915 () Bool)

(declare-fun tp!2193913 () Bool)

(assert (=> b!7542768 (= e!4493901 (and tp!2193915 tp!2193913))))

(declare-fun b!7542765 () Bool)

(assert (=> b!7542765 (= e!4493901 tp_is_empty!50171)))

(declare-fun b!7542766 () Bool)

(declare-fun tp!2193912 () Bool)

(declare-fun tp!2193911 () Bool)

(assert (=> b!7542766 (= e!4493901 (and tp!2193912 tp!2193911))))

(declare-fun b!7542767 () Bool)

(declare-fun tp!2193914 () Bool)

(assert (=> b!7542767 (= e!4493901 tp!2193914)))

(assert (=> b!7542304 (= tp!2193806 e!4493901)))

(assert (= (and b!7542304 (is-ElementMatch!19908 (regTwo!40329 r!24333))) b!7542765))

(assert (= (and b!7542304 (is-Concat!28753 (regTwo!40329 r!24333))) b!7542766))

(assert (= (and b!7542304 (is-Star!19908 (regTwo!40329 r!24333))) b!7542767))

(assert (= (and b!7542304 (is-Union!19908 (regTwo!40329 r!24333))) b!7542768))

(declare-fun b!7542772 () Bool)

(declare-fun e!4493902 () Bool)

(declare-fun tp!2193920 () Bool)

(declare-fun tp!2193918 () Bool)

(assert (=> b!7542772 (= e!4493902 (and tp!2193920 tp!2193918))))

(declare-fun b!7542769 () Bool)

(assert (=> b!7542769 (= e!4493902 tp_is_empty!50171)))

(declare-fun b!7542770 () Bool)

(declare-fun tp!2193917 () Bool)

(declare-fun tp!2193916 () Bool)

(assert (=> b!7542770 (= e!4493902 (and tp!2193917 tp!2193916))))

(declare-fun b!7542771 () Bool)

(declare-fun tp!2193919 () Bool)

(assert (=> b!7542771 (= e!4493902 tp!2193919)))

(assert (=> b!7542319 (= tp!2193807 e!4493902)))

(assert (= (and b!7542319 (is-ElementMatch!19908 (reg!20237 r!24333))) b!7542769))

(assert (= (and b!7542319 (is-Concat!28753 (reg!20237 r!24333))) b!7542770))

(assert (= (and b!7542319 (is-Star!19908 (reg!20237 r!24333))) b!7542771))

(assert (= (and b!7542319 (is-Union!19908 (reg!20237 r!24333))) b!7542772))

(push 1)

(assert (not d!2311630))

(assert (not b!7542665))

(assert (not b!7542463))

(assert (not b!7542635))

(assert (not b!7542670))

(assert (not b!7542514))

(assert (not d!2311668))

(assert (not b!7542699))

(assert (not d!2311656))

(assert (not b!7542515))

(assert (not b!7542760))

(assert (not d!2311672))

(assert (not d!2311654))

(assert (not b!7542692))

(assert (not d!2311642))

(assert (not b!7542582))

(assert (not b!7542473))

(assert (not bm!691829))

(assert (not d!2311618))

(assert (not b!7542689))

(assert (not b!7542714))

(assert (not d!2311606))

(assert (not b!7542732))

(assert (not d!2311622))

(assert (not b!7542751))

(assert (not b!7542680))

(assert (not b!7542632))

(assert (not b!7542763))

(assert (not b!7542758))

(assert (not d!2311658))

(assert (not b!7542687))

(assert (not b!7542675))

(assert (not b!7542770))

(assert (not d!2311682))

(assert (not d!2311596))

(assert (not b!7542772))

(assert (not b!7542752))

(assert (not b!7542509))

(assert (not b!7542745))

(assert (not b!7542489))

(assert (not b!7542727))

(assert (not b!7542676))

(assert (not bm!691859))

(assert (not b!7542739))

(assert tp_is_empty!50171)

(assert (not b!7542731))

(assert (not b!7542744))

(assert (not b!7542580))

(assert (not b!7542663))

(assert (not bm!691831))

(assert (not b!7542728))

(assert (not b!7542669))

(assert (not b!7542511))

(assert (not b!7542428))

(assert (not b!7542450))

(assert (not b!7542691))

(assert (not b!7542729))

(assert (not b!7542764))

(assert (not b!7542740))

(assert (not bm!691850))

(assert (not b!7542743))

(assert (not d!2311608))

(assert (not b!7542673))

(assert (not b!7542641))

(assert (not b!7542741))

(assert (not bm!691828))

(assert (not b!7542759))

(assert (not b!7542693))

(assert (not b!7542737))

(assert (not b!7542695))

(assert (not bm!691858))

(assert (not b!7542638))

(assert (not b!7542496))

(assert (not b!7542490))

(assert (not d!2311592))

(assert (not d!2311646))

(assert (not bm!691851))

(assert (not b!7542771))

(assert (not b!7542462))

(assert (not d!2311636))

(assert (not d!2311634))

(assert (not b!7542686))

(assert (not b!7542762))

(assert (not d!2311670))

(assert (not b!7542516))

(assert (not d!2311620))

(assert (not b!7542510))

(assert (not b!7542579))

(assert (not b!7542646))

(assert (not b!7542766))

(assert (not d!2311664))

(assert (not d!2311626))

(assert (not b!7542710))

(assert (not b!7542696))

(assert (not b!7542639))

(assert (not b!7542767))

(assert (not b!7542756))

(assert (not b!7542651))

(assert (not bm!691826))

(assert (not b!7542666))

(assert (not b!7542513))

(assert (not b!7542458))

(assert (not d!2311594))

(assert (not b!7542713))

(assert (not d!2311590))

(assert (not b!7542650))

(assert (not b!7542558))

(assert (not d!2311624))

(assert (not b!7542736))

(assert (not b!7542479))

(assert (not b!7542755))

(assert (not b!7542700))

(assert (not b!7542715))

(assert (not b!7542459))

(assert (not b!7542451))

(assert (not d!2311612))

(assert (not b!7542750))

(assert (not b!7542628))

(assert (not b!7542768))

(assert (not b!7542733))

(assert (not d!2311602))

(assert (not b!7542754))

(assert (not b!7542683))

(assert (not b!7542498))

(assert (not b!7542649))

(assert (not b!7542735))

(assert (not d!2311688))

(assert (not b!7542709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

