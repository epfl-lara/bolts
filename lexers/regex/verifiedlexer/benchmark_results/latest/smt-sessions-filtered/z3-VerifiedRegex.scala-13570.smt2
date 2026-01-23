; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729840 () Bool)

(assert start!729840)

(declare-fun b!7547627 () Bool)

(declare-fun e!4496289 () Bool)

(declare-fun tp_is_empty!50225 () Bool)

(assert (=> b!7547627 (= e!4496289 tp_is_empty!50225)))

(declare-datatypes ((C!40196 0))(
  ( (C!40197 (val!30538 Int)) )
))
(declare-datatypes ((List!72818 0))(
  ( (Nil!72694) (Cons!72694 (h!79142 C!40196) (t!387535 List!72818)) )
))
(declare-fun lt!2645824 () List!72818)

(declare-fun input!7874 () List!72818)

(declare-fun e!4496286 () Bool)

(declare-fun lt!2645827 () List!72818)

(declare-fun b!7547628 () Bool)

(declare-fun testedP!423 () List!72818)

(declare-fun ++!17451 (List!72818 List!72818) List!72818)

(assert (=> b!7547628 (= e!4496286 (= (++!17451 (++!17451 testedP!423 lt!2645827) lt!2645824) input!7874))))

(declare-fun b!7547629 () Bool)

(declare-fun tp!2195647 () Bool)

(declare-fun tp!2195640 () Bool)

(assert (=> b!7547629 (= e!4496289 (and tp!2195647 tp!2195640))))

(declare-fun b!7547630 () Bool)

(declare-fun e!4496292 () Bool)

(declare-fun tp!2195642 () Bool)

(assert (=> b!7547630 (= e!4496292 tp!2195642)))

(declare-fun b!7547631 () Bool)

(declare-fun res!3025158 () Bool)

(declare-fun e!4496288 () Bool)

(assert (=> b!7547631 (=> res!3025158 e!4496288)))

(declare-datatypes ((Regex!19935 0))(
  ( (ElementMatch!19935 (c!1393172 C!40196)) (Concat!28780 (regOne!40382 Regex!19935) (regTwo!40382 Regex!19935)) (EmptyExpr!19935) (Star!19935 (reg!20264 Regex!19935)) (EmptyLang!19935) (Union!19935 (regOne!40383 Regex!19935) (regTwo!40383 Regex!19935)) )
))
(declare-fun baseR!101 () Regex!19935)

(declare-fun r!24333 () Regex!19935)

(declare-fun derivative!467 (Regex!19935 List!72818) Regex!19935)

(assert (=> b!7547631 (= res!3025158 (not (= (derivative!467 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7547632 () Bool)

(declare-fun tp!2195643 () Bool)

(declare-fun tp!2195639 () Bool)

(assert (=> b!7547632 (= e!4496292 (and tp!2195643 tp!2195639))))

(declare-fun res!3025156 () Bool)

(declare-fun e!4496293 () Bool)

(assert (=> start!729840 (=> (not res!3025156) (not e!4496293))))

(declare-fun validRegex!10363 (Regex!19935) Bool)

(assert (=> start!729840 (= res!3025156 (validRegex!10363 baseR!101))))

(assert (=> start!729840 e!4496293))

(assert (=> start!729840 e!4496289))

(declare-fun e!4496287 () Bool)

(assert (=> start!729840 e!4496287))

(declare-fun e!4496291 () Bool)

(assert (=> start!729840 e!4496291))

(declare-fun e!4496290 () Bool)

(assert (=> start!729840 e!4496290))

(assert (=> start!729840 e!4496292))

(declare-fun b!7547633 () Bool)

(declare-fun res!3025155 () Bool)

(assert (=> b!7547633 (=> (not res!3025155) (not e!4496293))))

(declare-fun isPrefix!6141 (List!72818 List!72818) Bool)

(assert (=> b!7547633 (= res!3025155 (isPrefix!6141 testedP!423 input!7874))))

(declare-fun b!7547634 () Bool)

(declare-fun res!3025153 () Bool)

(assert (=> b!7547634 (=> (not res!3025153) (not e!4496293))))

(declare-fun knownP!30 () List!72818)

(assert (=> b!7547634 (= res!3025153 (isPrefix!6141 knownP!30 input!7874))))

(declare-fun b!7547635 () Bool)

(declare-fun res!3025149 () Bool)

(assert (=> b!7547635 (=> res!3025149 e!4496288)))

(declare-fun lt!2645826 () Int)

(declare-fun lt!2645825 () Int)

(assert (=> b!7547635 (= res!3025149 (= lt!2645826 lt!2645825))))

(declare-fun b!7547636 () Bool)

(declare-fun tp!2195649 () Bool)

(assert (=> b!7547636 (= e!4496290 (and tp_is_empty!50225 tp!2195649))))

(declare-fun b!7547637 () Bool)

(declare-fun tp!2195645 () Bool)

(declare-fun tp!2195648 () Bool)

(assert (=> b!7547637 (= e!4496289 (and tp!2195645 tp!2195648))))

(declare-fun b!7547638 () Bool)

(assert (=> b!7547638 (= e!4496288 e!4496286)))

(declare-fun res!3025159 () Bool)

(assert (=> b!7547638 (=> res!3025159 e!4496286)))

(assert (=> b!7547638 (= res!3025159 (not (= (++!17451 knownP!30 lt!2645824) input!7874)))))

(declare-fun getSuffix!3621 (List!72818 List!72818) List!72818)

(assert (=> b!7547638 (= lt!2645824 (getSuffix!3621 input!7874 knownP!30))))

(declare-fun lt!2645822 () List!72818)

(declare-fun lt!2645823 () List!72818)

(assert (=> b!7547638 (= lt!2645822 (getSuffix!3621 knownP!30 lt!2645823))))

(assert (=> b!7547638 (isPrefix!6141 lt!2645823 knownP!30)))

(declare-datatypes ((Unit!166808 0))(
  ( (Unit!166809) )
))
(declare-fun lt!2645831 () Unit!166808)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!891 (List!72818 List!72818 List!72818) Unit!166808)

(assert (=> b!7547638 (= lt!2645831 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!891 knownP!30 lt!2645823 input!7874))))

(declare-fun lt!2645828 () C!40196)

(declare-fun derivativeStep!5725 (Regex!19935 C!40196) Regex!19935)

(assert (=> b!7547638 (= (derivative!467 baseR!101 lt!2645823) (derivativeStep!5725 r!24333 lt!2645828))))

(declare-fun lt!2645830 () Unit!166808)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!169 (Regex!19935 Regex!19935 List!72818 C!40196) Unit!166808)

(assert (=> b!7547638 (= lt!2645830 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!169 baseR!101 r!24333 testedP!423 lt!2645828))))

(assert (=> b!7547638 (isPrefix!6141 lt!2645823 input!7874)))

(declare-fun lt!2645832 () Unit!166808)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1202 (List!72818 List!72818) Unit!166808)

(assert (=> b!7547638 (= lt!2645832 (lemmaAddHeadSuffixToPrefixStillPrefix!1202 testedP!423 input!7874))))

(assert (=> b!7547638 (= lt!2645823 (++!17451 testedP!423 (Cons!72694 lt!2645828 Nil!72694)))))

(declare-fun head!15525 (List!72818) C!40196)

(assert (=> b!7547638 (= lt!2645828 (head!15525 (getSuffix!3621 input!7874 testedP!423)))))

(declare-fun b!7547639 () Bool)

(assert (=> b!7547639 (= e!4496292 tp_is_empty!50225)))

(declare-fun b!7547640 () Bool)

(declare-fun res!3025157 () Bool)

(declare-fun e!4496285 () Bool)

(assert (=> b!7547640 (=> (not res!3025157) (not e!4496285))))

(declare-fun matchR!9537 (Regex!19935 List!72818) Bool)

(assert (=> b!7547640 (= res!3025157 (matchR!9537 baseR!101 knownP!30))))

(declare-fun b!7547641 () Bool)

(declare-fun tp!2195638 () Bool)

(declare-fun tp!2195646 () Bool)

(assert (=> b!7547641 (= e!4496292 (and tp!2195638 tp!2195646))))

(declare-fun b!7547642 () Bool)

(declare-fun res!3025152 () Bool)

(assert (=> b!7547642 (=> res!3025152 e!4496288)))

(declare-fun size!42431 (List!72818) Int)

(assert (=> b!7547642 (= res!3025152 (>= lt!2645826 (size!42431 input!7874)))))

(declare-fun b!7547643 () Bool)

(declare-fun tp!2195641 () Bool)

(assert (=> b!7547643 (= e!4496289 tp!2195641)))

(declare-fun b!7547644 () Bool)

(declare-fun tp!2195637 () Bool)

(assert (=> b!7547644 (= e!4496291 (and tp_is_empty!50225 tp!2195637))))

(declare-fun b!7547645 () Bool)

(declare-fun res!3025150 () Bool)

(assert (=> b!7547645 (=> (not res!3025150) (not e!4496293))))

(assert (=> b!7547645 (= res!3025150 (validRegex!10363 r!24333))))

(declare-fun b!7547646 () Bool)

(assert (=> b!7547646 (= e!4496293 e!4496285)))

(declare-fun res!3025151 () Bool)

(assert (=> b!7547646 (=> (not res!3025151) (not e!4496285))))

(assert (=> b!7547646 (= res!3025151 (>= lt!2645825 lt!2645826))))

(assert (=> b!7547646 (= lt!2645826 (size!42431 testedP!423))))

(assert (=> b!7547646 (= lt!2645825 (size!42431 knownP!30))))

(declare-fun b!7547647 () Bool)

(declare-fun tp!2195644 () Bool)

(assert (=> b!7547647 (= e!4496287 (and tp_is_empty!50225 tp!2195644))))

(declare-fun b!7547648 () Bool)

(declare-fun res!3025154 () Bool)

(assert (=> b!7547648 (=> res!3025154 e!4496288)))

(declare-fun lostCause!1727 (Regex!19935) Bool)

(assert (=> b!7547648 (= res!3025154 (lostCause!1727 r!24333))))

(declare-fun b!7547649 () Bool)

(assert (=> b!7547649 (= e!4496285 (not e!4496288))))

(declare-fun res!3025160 () Bool)

(assert (=> b!7547649 (=> res!3025160 e!4496288)))

(assert (=> b!7547649 (= res!3025160 (not (matchR!9537 r!24333 lt!2645827)))))

(assert (=> b!7547649 (= lt!2645827 (getSuffix!3621 knownP!30 testedP!423))))

(assert (=> b!7547649 (isPrefix!6141 testedP!423 knownP!30)))

(declare-fun lt!2645829 () Unit!166808)

(assert (=> b!7547649 (= lt!2645829 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!891 knownP!30 testedP!423 input!7874))))

(assert (= (and start!729840 res!3025156) b!7547645))

(assert (= (and b!7547645 res!3025150) b!7547633))

(assert (= (and b!7547633 res!3025155) b!7547634))

(assert (= (and b!7547634 res!3025153) b!7547646))

(assert (= (and b!7547646 res!3025151) b!7547640))

(assert (= (and b!7547640 res!3025157) b!7547649))

(assert (= (and b!7547649 (not res!3025160)) b!7547631))

(assert (= (and b!7547631 (not res!3025158)) b!7547648))

(assert (= (and b!7547648 (not res!3025154)) b!7547635))

(assert (= (and b!7547635 (not res!3025149)) b!7547642))

(assert (= (and b!7547642 (not res!3025152)) b!7547638))

(assert (= (and b!7547638 (not res!3025159)) b!7547628))

(get-info :version)

(assert (= (and start!729840 ((_ is ElementMatch!19935) baseR!101)) b!7547627))

(assert (= (and start!729840 ((_ is Concat!28780) baseR!101)) b!7547629))

(assert (= (and start!729840 ((_ is Star!19935) baseR!101)) b!7547643))

(assert (= (and start!729840 ((_ is Union!19935) baseR!101)) b!7547637))

(assert (= (and start!729840 ((_ is Cons!72694) input!7874)) b!7547647))

(assert (= (and start!729840 ((_ is Cons!72694) knownP!30)) b!7547644))

(assert (= (and start!729840 ((_ is Cons!72694) testedP!423)) b!7547636))

(assert (= (and start!729840 ((_ is ElementMatch!19935) r!24333)) b!7547639))

(assert (= (and start!729840 ((_ is Concat!28780) r!24333)) b!7547641))

(assert (= (and start!729840 ((_ is Star!19935) r!24333)) b!7547630))

(assert (= (and start!729840 ((_ is Union!19935) r!24333)) b!7547632))

(declare-fun m!8115428 () Bool)

(assert (=> b!7547633 m!8115428))

(declare-fun m!8115430 () Bool)

(assert (=> b!7547642 m!8115430))

(declare-fun m!8115432 () Bool)

(assert (=> b!7547628 m!8115432))

(assert (=> b!7547628 m!8115432))

(declare-fun m!8115434 () Bool)

(assert (=> b!7547628 m!8115434))

(declare-fun m!8115436 () Bool)

(assert (=> b!7547638 m!8115436))

(declare-fun m!8115438 () Bool)

(assert (=> b!7547638 m!8115438))

(declare-fun m!8115440 () Bool)

(assert (=> b!7547638 m!8115440))

(declare-fun m!8115442 () Bool)

(assert (=> b!7547638 m!8115442))

(declare-fun m!8115444 () Bool)

(assert (=> b!7547638 m!8115444))

(declare-fun m!8115446 () Bool)

(assert (=> b!7547638 m!8115446))

(assert (=> b!7547638 m!8115444))

(declare-fun m!8115448 () Bool)

(assert (=> b!7547638 m!8115448))

(declare-fun m!8115450 () Bool)

(assert (=> b!7547638 m!8115450))

(declare-fun m!8115452 () Bool)

(assert (=> b!7547638 m!8115452))

(declare-fun m!8115454 () Bool)

(assert (=> b!7547638 m!8115454))

(declare-fun m!8115456 () Bool)

(assert (=> b!7547638 m!8115456))

(declare-fun m!8115458 () Bool)

(assert (=> b!7547638 m!8115458))

(declare-fun m!8115460 () Bool)

(assert (=> b!7547638 m!8115460))

(declare-fun m!8115462 () Bool)

(assert (=> b!7547645 m!8115462))

(declare-fun m!8115464 () Bool)

(assert (=> b!7547646 m!8115464))

(declare-fun m!8115466 () Bool)

(assert (=> b!7547646 m!8115466))

(declare-fun m!8115468 () Bool)

(assert (=> b!7547649 m!8115468))

(declare-fun m!8115470 () Bool)

(assert (=> b!7547649 m!8115470))

(declare-fun m!8115472 () Bool)

(assert (=> b!7547649 m!8115472))

(declare-fun m!8115474 () Bool)

(assert (=> b!7547649 m!8115474))

(declare-fun m!8115476 () Bool)

(assert (=> b!7547648 m!8115476))

(declare-fun m!8115478 () Bool)

(assert (=> start!729840 m!8115478))

(declare-fun m!8115480 () Bool)

(assert (=> b!7547640 m!8115480))

(declare-fun m!8115482 () Bool)

(assert (=> b!7547634 m!8115482))

(declare-fun m!8115484 () Bool)

(assert (=> b!7547631 m!8115484))

(check-sat (not b!7547648) (not b!7547637) (not b!7547644) tp_is_empty!50225 (not b!7547647) (not b!7547636) (not b!7547649) (not start!729840) (not b!7547642) (not b!7547641) (not b!7547634) (not b!7547645) (not b!7547643) (not b!7547631) (not b!7547640) (not b!7547629) (not b!7547633) (not b!7547632) (not b!7547638) (not b!7547630) (not b!7547628) (not b!7547646))
(check-sat)
(get-model)

(declare-fun b!7547668 () Bool)

(declare-fun res!3025173 () Bool)

(declare-fun e!4496311 () Bool)

(assert (=> b!7547668 (=> res!3025173 e!4496311)))

(assert (=> b!7547668 (= res!3025173 (not ((_ is Concat!28780) r!24333)))))

(declare-fun e!4496310 () Bool)

(assert (=> b!7547668 (= e!4496310 e!4496311)))

(declare-fun b!7547669 () Bool)

(declare-fun e!4496313 () Bool)

(declare-fun call!692123 () Bool)

(assert (=> b!7547669 (= e!4496313 call!692123)))

(declare-fun b!7547670 () Bool)

(declare-fun e!4496308 () Bool)

(assert (=> b!7547670 (= e!4496308 e!4496313)))

(declare-fun res!3025175 () Bool)

(declare-fun nullable!8695 (Regex!19935) Bool)

(assert (=> b!7547670 (= res!3025175 (not (nullable!8695 (reg!20264 r!24333))))))

(assert (=> b!7547670 (=> (not res!3025175) (not e!4496313))))

(declare-fun b!7547671 () Bool)

(assert (=> b!7547671 (= e!4496308 e!4496310)))

(declare-fun c!1393177 () Bool)

(assert (=> b!7547671 (= c!1393177 ((_ is Union!19935) r!24333))))

(declare-fun b!7547672 () Bool)

(declare-fun e!4496312 () Bool)

(assert (=> b!7547672 (= e!4496312 e!4496308)))

(declare-fun c!1393178 () Bool)

(assert (=> b!7547672 (= c!1393178 ((_ is Star!19935) r!24333))))

(declare-fun b!7547673 () Bool)

(declare-fun e!4496309 () Bool)

(assert (=> b!7547673 (= e!4496311 e!4496309)))

(declare-fun res!3025171 () Bool)

(assert (=> b!7547673 (=> (not res!3025171) (not e!4496309))))

(declare-fun call!692125 () Bool)

(assert (=> b!7547673 (= res!3025171 call!692125)))

(declare-fun bm!692118 () Bool)

(assert (=> bm!692118 (= call!692125 call!692123)))

(declare-fun b!7547675 () Bool)

(declare-fun e!4496314 () Bool)

(declare-fun call!692124 () Bool)

(assert (=> b!7547675 (= e!4496314 call!692124)))

(declare-fun bm!692119 () Bool)

(assert (=> bm!692119 (= call!692123 (validRegex!10363 (ite c!1393178 (reg!20264 r!24333) (ite c!1393177 (regOne!40383 r!24333) (regOne!40382 r!24333)))))))

(declare-fun b!7547676 () Bool)

(declare-fun res!3025174 () Bool)

(assert (=> b!7547676 (=> (not res!3025174) (not e!4496314))))

(assert (=> b!7547676 (= res!3025174 call!692125)))

(assert (=> b!7547676 (= e!4496310 e!4496314)))

(declare-fun bm!692120 () Bool)

(assert (=> bm!692120 (= call!692124 (validRegex!10363 (ite c!1393177 (regTwo!40383 r!24333) (regTwo!40382 r!24333))))))

(declare-fun d!2312331 () Bool)

(declare-fun res!3025172 () Bool)

(assert (=> d!2312331 (=> res!3025172 e!4496312)))

(assert (=> d!2312331 (= res!3025172 ((_ is ElementMatch!19935) r!24333))))

(assert (=> d!2312331 (= (validRegex!10363 r!24333) e!4496312)))

(declare-fun b!7547674 () Bool)

(assert (=> b!7547674 (= e!4496309 call!692124)))

(assert (= (and d!2312331 (not res!3025172)) b!7547672))

(assert (= (and b!7547672 c!1393178) b!7547670))

(assert (= (and b!7547672 (not c!1393178)) b!7547671))

(assert (= (and b!7547670 res!3025175) b!7547669))

(assert (= (and b!7547671 c!1393177) b!7547676))

(assert (= (and b!7547671 (not c!1393177)) b!7547668))

(assert (= (and b!7547676 res!3025174) b!7547675))

(assert (= (and b!7547668 (not res!3025173)) b!7547673))

(assert (= (and b!7547673 res!3025171) b!7547674))

(assert (= (or b!7547676 b!7547673) bm!692118))

(assert (= (or b!7547675 b!7547674) bm!692120))

(assert (= (or b!7547669 bm!692118) bm!692119))

(declare-fun m!8115486 () Bool)

(assert (=> b!7547670 m!8115486))

(declare-fun m!8115488 () Bool)

(assert (=> bm!692119 m!8115488))

(declare-fun m!8115490 () Bool)

(assert (=> bm!692120 m!8115490))

(assert (=> b!7547645 d!2312331))

(declare-fun b!7547695 () Bool)

(declare-fun e!4496326 () Bool)

(declare-fun tail!15071 (List!72818) List!72818)

(assert (=> b!7547695 (= e!4496326 (isPrefix!6141 (tail!15071 knownP!30) (tail!15071 input!7874)))))

(declare-fun b!7547694 () Bool)

(declare-fun res!3025187 () Bool)

(assert (=> b!7547694 (=> (not res!3025187) (not e!4496326))))

(assert (=> b!7547694 (= res!3025187 (= (head!15525 knownP!30) (head!15525 input!7874)))))

(declare-fun b!7547693 () Bool)

(declare-fun e!4496325 () Bool)

(assert (=> b!7547693 (= e!4496325 e!4496326)))

(declare-fun res!3025185 () Bool)

(assert (=> b!7547693 (=> (not res!3025185) (not e!4496326))))

(assert (=> b!7547693 (= res!3025185 (not ((_ is Nil!72694) input!7874)))))

(declare-fun b!7547696 () Bool)

(declare-fun e!4496327 () Bool)

(assert (=> b!7547696 (= e!4496327 (>= (size!42431 input!7874) (size!42431 knownP!30)))))

(declare-fun d!2312335 () Bool)

(assert (=> d!2312335 e!4496327))

(declare-fun res!3025186 () Bool)

(assert (=> d!2312335 (=> res!3025186 e!4496327)))

(declare-fun lt!2645839 () Bool)

(assert (=> d!2312335 (= res!3025186 (not lt!2645839))))

(assert (=> d!2312335 (= lt!2645839 e!4496325)))

(declare-fun res!3025184 () Bool)

(assert (=> d!2312335 (=> res!3025184 e!4496325)))

(assert (=> d!2312335 (= res!3025184 ((_ is Nil!72694) knownP!30))))

(assert (=> d!2312335 (= (isPrefix!6141 knownP!30 input!7874) lt!2645839)))

(assert (= (and d!2312335 (not res!3025184)) b!7547693))

(assert (= (and b!7547693 res!3025185) b!7547694))

(assert (= (and b!7547694 res!3025187) b!7547695))

(assert (= (and d!2312335 (not res!3025186)) b!7547696))

(declare-fun m!8115496 () Bool)

(assert (=> b!7547695 m!8115496))

(declare-fun m!8115498 () Bool)

(assert (=> b!7547695 m!8115498))

(assert (=> b!7547695 m!8115496))

(assert (=> b!7547695 m!8115498))

(declare-fun m!8115500 () Bool)

(assert (=> b!7547695 m!8115500))

(declare-fun m!8115502 () Bool)

(assert (=> b!7547694 m!8115502))

(declare-fun m!8115504 () Bool)

(assert (=> b!7547694 m!8115504))

(assert (=> b!7547696 m!8115430))

(assert (=> b!7547696 m!8115466))

(assert (=> b!7547634 d!2312335))

(declare-fun b!7547707 () Bool)

(declare-fun e!4496335 () Bool)

(assert (=> b!7547707 (= e!4496335 (isPrefix!6141 (tail!15071 testedP!423) (tail!15071 input!7874)))))

(declare-fun b!7547706 () Bool)

(declare-fun res!3025199 () Bool)

(assert (=> b!7547706 (=> (not res!3025199) (not e!4496335))))

(assert (=> b!7547706 (= res!3025199 (= (head!15525 testedP!423) (head!15525 input!7874)))))

(declare-fun b!7547705 () Bool)

(declare-fun e!4496334 () Bool)

(assert (=> b!7547705 (= e!4496334 e!4496335)))

(declare-fun res!3025197 () Bool)

(assert (=> b!7547705 (=> (not res!3025197) (not e!4496335))))

(assert (=> b!7547705 (= res!3025197 (not ((_ is Nil!72694) input!7874)))))

(declare-fun b!7547708 () Bool)

(declare-fun e!4496336 () Bool)

(assert (=> b!7547708 (= e!4496336 (>= (size!42431 input!7874) (size!42431 testedP!423)))))

(declare-fun d!2312341 () Bool)

(assert (=> d!2312341 e!4496336))

(declare-fun res!3025198 () Bool)

(assert (=> d!2312341 (=> res!3025198 e!4496336)))

(declare-fun lt!2645842 () Bool)

(assert (=> d!2312341 (= res!3025198 (not lt!2645842))))

(assert (=> d!2312341 (= lt!2645842 e!4496334)))

(declare-fun res!3025196 () Bool)

(assert (=> d!2312341 (=> res!3025196 e!4496334)))

(assert (=> d!2312341 (= res!3025196 ((_ is Nil!72694) testedP!423))))

(assert (=> d!2312341 (= (isPrefix!6141 testedP!423 input!7874) lt!2645842)))

(assert (= (and d!2312341 (not res!3025196)) b!7547705))

(assert (= (and b!7547705 res!3025197) b!7547706))

(assert (= (and b!7547706 res!3025199) b!7547707))

(assert (= (and d!2312341 (not res!3025198)) b!7547708))

(declare-fun m!8115506 () Bool)

(assert (=> b!7547707 m!8115506))

(assert (=> b!7547707 m!8115498))

(assert (=> b!7547707 m!8115506))

(assert (=> b!7547707 m!8115498))

(declare-fun m!8115508 () Bool)

(assert (=> b!7547707 m!8115508))

(declare-fun m!8115510 () Bool)

(assert (=> b!7547706 m!8115510))

(assert (=> b!7547706 m!8115504))

(assert (=> b!7547708 m!8115430))

(assert (=> b!7547708 m!8115464))

(assert (=> b!7547633 d!2312341))

(declare-fun d!2312343 () Bool)

(declare-fun lostCauseFct!448 (Regex!19935) Bool)

(assert (=> d!2312343 (= (lostCause!1727 r!24333) (lostCauseFct!448 r!24333))))

(declare-fun bs!1940131 () Bool)

(assert (= bs!1940131 d!2312343))

(declare-fun m!8115516 () Bool)

(assert (=> bs!1940131 m!8115516))

(assert (=> b!7547648 d!2312343))

(declare-fun b!7547713 () Bool)

(declare-fun res!3025206 () Bool)

(declare-fun e!4496343 () Bool)

(assert (=> b!7547713 (=> res!3025206 e!4496343)))

(assert (=> b!7547713 (= res!3025206 (not ((_ is Concat!28780) baseR!101)))))

(declare-fun e!4496342 () Bool)

(assert (=> b!7547713 (= e!4496342 e!4496343)))

(declare-fun b!7547714 () Bool)

(declare-fun e!4496345 () Bool)

(declare-fun call!692126 () Bool)

(assert (=> b!7547714 (= e!4496345 call!692126)))

(declare-fun b!7547715 () Bool)

(declare-fun e!4496340 () Bool)

(assert (=> b!7547715 (= e!4496340 e!4496345)))

(declare-fun res!3025208 () Bool)

(assert (=> b!7547715 (= res!3025208 (not (nullable!8695 (reg!20264 baseR!101))))))

(assert (=> b!7547715 (=> (not res!3025208) (not e!4496345))))

(declare-fun b!7547716 () Bool)

(assert (=> b!7547716 (= e!4496340 e!4496342)))

(declare-fun c!1393183 () Bool)

(assert (=> b!7547716 (= c!1393183 ((_ is Union!19935) baseR!101))))

(declare-fun b!7547717 () Bool)

(declare-fun e!4496344 () Bool)

(assert (=> b!7547717 (= e!4496344 e!4496340)))

(declare-fun c!1393184 () Bool)

(assert (=> b!7547717 (= c!1393184 ((_ is Star!19935) baseR!101))))

(declare-fun b!7547718 () Bool)

(declare-fun e!4496341 () Bool)

(assert (=> b!7547718 (= e!4496343 e!4496341)))

(declare-fun res!3025204 () Bool)

(assert (=> b!7547718 (=> (not res!3025204) (not e!4496341))))

(declare-fun call!692128 () Bool)

(assert (=> b!7547718 (= res!3025204 call!692128)))

(declare-fun bm!692121 () Bool)

(assert (=> bm!692121 (= call!692128 call!692126)))

(declare-fun b!7547720 () Bool)

(declare-fun e!4496346 () Bool)

(declare-fun call!692127 () Bool)

(assert (=> b!7547720 (= e!4496346 call!692127)))

(declare-fun bm!692122 () Bool)

(assert (=> bm!692122 (= call!692126 (validRegex!10363 (ite c!1393184 (reg!20264 baseR!101) (ite c!1393183 (regOne!40383 baseR!101) (regOne!40382 baseR!101)))))))

(declare-fun b!7547721 () Bool)

(declare-fun res!3025207 () Bool)

(assert (=> b!7547721 (=> (not res!3025207) (not e!4496346))))

(assert (=> b!7547721 (= res!3025207 call!692128)))

(assert (=> b!7547721 (= e!4496342 e!4496346)))

(declare-fun bm!692123 () Bool)

(assert (=> bm!692123 (= call!692127 (validRegex!10363 (ite c!1393183 (regTwo!40383 baseR!101) (regTwo!40382 baseR!101))))))

(declare-fun d!2312345 () Bool)

(declare-fun res!3025205 () Bool)

(assert (=> d!2312345 (=> res!3025205 e!4496344)))

(assert (=> d!2312345 (= res!3025205 ((_ is ElementMatch!19935) baseR!101))))

(assert (=> d!2312345 (= (validRegex!10363 baseR!101) e!4496344)))

(declare-fun b!7547719 () Bool)

(assert (=> b!7547719 (= e!4496341 call!692127)))

(assert (= (and d!2312345 (not res!3025205)) b!7547717))

(assert (= (and b!7547717 c!1393184) b!7547715))

(assert (= (and b!7547717 (not c!1393184)) b!7547716))

(assert (= (and b!7547715 res!3025208) b!7547714))

(assert (= (and b!7547716 c!1393183) b!7547721))

(assert (= (and b!7547716 (not c!1393183)) b!7547713))

(assert (= (and b!7547721 res!3025207) b!7547720))

(assert (= (and b!7547713 (not res!3025206)) b!7547718))

(assert (= (and b!7547718 res!3025204) b!7547719))

(assert (= (or b!7547721 b!7547718) bm!692121))

(assert (= (or b!7547720 b!7547719) bm!692123))

(assert (= (or b!7547714 bm!692121) bm!692122))

(declare-fun m!8115524 () Bool)

(assert (=> b!7547715 m!8115524))

(declare-fun m!8115526 () Bool)

(assert (=> bm!692122 m!8115526))

(declare-fun m!8115528 () Bool)

(assert (=> bm!692123 m!8115528))

(assert (=> start!729840 d!2312345))

(declare-fun d!2312349 () Bool)

(declare-fun lt!2645846 () Int)

(assert (=> d!2312349 (>= lt!2645846 0)))

(declare-fun e!4496349 () Int)

(assert (=> d!2312349 (= lt!2645846 e!4496349)))

(declare-fun c!1393187 () Bool)

(assert (=> d!2312349 (= c!1393187 ((_ is Nil!72694) testedP!423))))

(assert (=> d!2312349 (= (size!42431 testedP!423) lt!2645846)))

(declare-fun b!7547726 () Bool)

(assert (=> b!7547726 (= e!4496349 0)))

(declare-fun b!7547727 () Bool)

(assert (=> b!7547727 (= e!4496349 (+ 1 (size!42431 (t!387535 testedP!423))))))

(assert (= (and d!2312349 c!1393187) b!7547726))

(assert (= (and d!2312349 (not c!1393187)) b!7547727))

(declare-fun m!8115530 () Bool)

(assert (=> b!7547727 m!8115530))

(assert (=> b!7547646 d!2312349))

(declare-fun d!2312351 () Bool)

(declare-fun lt!2645847 () Int)

(assert (=> d!2312351 (>= lt!2645847 0)))

(declare-fun e!4496350 () Int)

(assert (=> d!2312351 (= lt!2645847 e!4496350)))

(declare-fun c!1393188 () Bool)

(assert (=> d!2312351 (= c!1393188 ((_ is Nil!72694) knownP!30))))

(assert (=> d!2312351 (= (size!42431 knownP!30) lt!2645847)))

(declare-fun b!7547728 () Bool)

(assert (=> b!7547728 (= e!4496350 0)))

(declare-fun b!7547729 () Bool)

(assert (=> b!7547729 (= e!4496350 (+ 1 (size!42431 (t!387535 knownP!30))))))

(assert (= (and d!2312351 c!1393188) b!7547728))

(assert (= (and d!2312351 (not c!1393188)) b!7547729))

(declare-fun m!8115532 () Bool)

(assert (=> b!7547729 m!8115532))

(assert (=> b!7547646 d!2312351))

(declare-fun b!7547806 () Bool)

(declare-fun e!4496393 () Bool)

(declare-fun lt!2645856 () Bool)

(declare-fun call!692134 () Bool)

(assert (=> b!7547806 (= e!4496393 (= lt!2645856 call!692134))))

(declare-fun b!7547807 () Bool)

(declare-fun e!4496392 () Bool)

(declare-fun e!4496394 () Bool)

(assert (=> b!7547807 (= e!4496392 e!4496394)))

(declare-fun res!3025256 () Bool)

(assert (=> b!7547807 (=> res!3025256 e!4496394)))

(assert (=> b!7547807 (= res!3025256 call!692134)))

(declare-fun b!7547808 () Bool)

(declare-fun res!3025250 () Bool)

(declare-fun e!4496395 () Bool)

(assert (=> b!7547808 (=> res!3025250 e!4496395)))

(declare-fun e!4496389 () Bool)

(assert (=> b!7547808 (= res!3025250 e!4496389)))

(declare-fun res!3025249 () Bool)

(assert (=> b!7547808 (=> (not res!3025249) (not e!4496389))))

(assert (=> b!7547808 (= res!3025249 lt!2645856)))

(declare-fun d!2312353 () Bool)

(assert (=> d!2312353 e!4496393))

(declare-fun c!1393208 () Bool)

(assert (=> d!2312353 (= c!1393208 ((_ is EmptyExpr!19935) baseR!101))))

(declare-fun e!4496391 () Bool)

(assert (=> d!2312353 (= lt!2645856 e!4496391)))

(declare-fun c!1393207 () Bool)

(declare-fun isEmpty!41391 (List!72818) Bool)

(assert (=> d!2312353 (= c!1393207 (isEmpty!41391 knownP!30))))

(assert (=> d!2312353 (validRegex!10363 baseR!101)))

(assert (=> d!2312353 (= (matchR!9537 baseR!101 knownP!30) lt!2645856)))

(declare-fun b!7547809 () Bool)

(assert (=> b!7547809 (= e!4496389 (= (head!15525 knownP!30) (c!1393172 baseR!101)))))

(declare-fun b!7547810 () Bool)

(assert (=> b!7547810 (= e!4496391 (matchR!9537 (derivativeStep!5725 baseR!101 (head!15525 knownP!30)) (tail!15071 knownP!30)))))

(declare-fun b!7547811 () Bool)

(declare-fun res!3025252 () Bool)

(assert (=> b!7547811 (=> (not res!3025252) (not e!4496389))))

(assert (=> b!7547811 (= res!3025252 (isEmpty!41391 (tail!15071 knownP!30)))))

(declare-fun b!7547812 () Bool)

(declare-fun res!3025253 () Bool)

(assert (=> b!7547812 (=> (not res!3025253) (not e!4496389))))

(assert (=> b!7547812 (= res!3025253 (not call!692134))))

(declare-fun b!7547813 () Bool)

(assert (=> b!7547813 (= e!4496391 (nullable!8695 baseR!101))))

(declare-fun b!7547814 () Bool)

(declare-fun e!4496390 () Bool)

(assert (=> b!7547814 (= e!4496390 (not lt!2645856))))

(declare-fun b!7547815 () Bool)

(assert (=> b!7547815 (= e!4496394 (not (= (head!15525 knownP!30) (c!1393172 baseR!101))))))

(declare-fun bm!692129 () Bool)

(assert (=> bm!692129 (= call!692134 (isEmpty!41391 knownP!30))))

(declare-fun b!7547816 () Bool)

(declare-fun res!3025251 () Bool)

(assert (=> b!7547816 (=> res!3025251 e!4496394)))

(assert (=> b!7547816 (= res!3025251 (not (isEmpty!41391 (tail!15071 knownP!30))))))

(declare-fun b!7547817 () Bool)

(assert (=> b!7547817 (= e!4496393 e!4496390)))

(declare-fun c!1393209 () Bool)

(assert (=> b!7547817 (= c!1393209 ((_ is EmptyLang!19935) baseR!101))))

(declare-fun b!7547818 () Bool)

(assert (=> b!7547818 (= e!4496395 e!4496392)))

(declare-fun res!3025255 () Bool)

(assert (=> b!7547818 (=> (not res!3025255) (not e!4496392))))

(assert (=> b!7547818 (= res!3025255 (not lt!2645856))))

(declare-fun b!7547819 () Bool)

(declare-fun res!3025254 () Bool)

(assert (=> b!7547819 (=> res!3025254 e!4496395)))

(assert (=> b!7547819 (= res!3025254 (not ((_ is ElementMatch!19935) baseR!101)))))

(assert (=> b!7547819 (= e!4496390 e!4496395)))

(assert (= (and d!2312353 c!1393207) b!7547813))

(assert (= (and d!2312353 (not c!1393207)) b!7547810))

(assert (= (and d!2312353 c!1393208) b!7547806))

(assert (= (and d!2312353 (not c!1393208)) b!7547817))

(assert (= (and b!7547817 c!1393209) b!7547814))

(assert (= (and b!7547817 (not c!1393209)) b!7547819))

(assert (= (and b!7547819 (not res!3025254)) b!7547808))

(assert (= (and b!7547808 res!3025249) b!7547812))

(assert (= (and b!7547812 res!3025253) b!7547811))

(assert (= (and b!7547811 res!3025252) b!7547809))

(assert (= (and b!7547808 (not res!3025250)) b!7547818))

(assert (= (and b!7547818 res!3025255) b!7547807))

(assert (= (and b!7547807 (not res!3025256)) b!7547816))

(assert (= (and b!7547816 (not res!3025251)) b!7547815))

(assert (= (or b!7547806 b!7547812 b!7547807) bm!692129))

(assert (=> b!7547816 m!8115496))

(assert (=> b!7547816 m!8115496))

(declare-fun m!8115558 () Bool)

(assert (=> b!7547816 m!8115558))

(declare-fun m!8115560 () Bool)

(assert (=> bm!692129 m!8115560))

(assert (=> b!7547809 m!8115502))

(declare-fun m!8115562 () Bool)

(assert (=> b!7547813 m!8115562))

(assert (=> b!7547815 m!8115502))

(assert (=> d!2312353 m!8115560))

(assert (=> d!2312353 m!8115478))

(assert (=> b!7547810 m!8115502))

(assert (=> b!7547810 m!8115502))

(declare-fun m!8115564 () Bool)

(assert (=> b!7547810 m!8115564))

(assert (=> b!7547810 m!8115496))

(assert (=> b!7547810 m!8115564))

(assert (=> b!7547810 m!8115496))

(declare-fun m!8115566 () Bool)

(assert (=> b!7547810 m!8115566))

(assert (=> b!7547811 m!8115496))

(assert (=> b!7547811 m!8115496))

(assert (=> b!7547811 m!8115558))

(assert (=> b!7547640 d!2312353))

(declare-fun b!7547824 () Bool)

(declare-fun e!4496403 () Bool)

(declare-fun lt!2645858 () Bool)

(declare-fun call!692135 () Bool)

(assert (=> b!7547824 (= e!4496403 (= lt!2645858 call!692135))))

(declare-fun b!7547825 () Bool)

(declare-fun e!4496402 () Bool)

(declare-fun e!4496404 () Bool)

(assert (=> b!7547825 (= e!4496402 e!4496404)))

(declare-fun res!3025268 () Bool)

(assert (=> b!7547825 (=> res!3025268 e!4496404)))

(assert (=> b!7547825 (= res!3025268 call!692135)))

(declare-fun b!7547826 () Bool)

(declare-fun res!3025262 () Bool)

(declare-fun e!4496405 () Bool)

(assert (=> b!7547826 (=> res!3025262 e!4496405)))

(declare-fun e!4496399 () Bool)

(assert (=> b!7547826 (= res!3025262 e!4496399)))

(declare-fun res!3025261 () Bool)

(assert (=> b!7547826 (=> (not res!3025261) (not e!4496399))))

(assert (=> b!7547826 (= res!3025261 lt!2645858)))

(declare-fun d!2312361 () Bool)

(assert (=> d!2312361 e!4496403))

(declare-fun c!1393211 () Bool)

(assert (=> d!2312361 (= c!1393211 ((_ is EmptyExpr!19935) r!24333))))

(declare-fun e!4496401 () Bool)

(assert (=> d!2312361 (= lt!2645858 e!4496401)))

(declare-fun c!1393210 () Bool)

(assert (=> d!2312361 (= c!1393210 (isEmpty!41391 lt!2645827))))

(assert (=> d!2312361 (validRegex!10363 r!24333)))

(assert (=> d!2312361 (= (matchR!9537 r!24333 lt!2645827) lt!2645858)))

(declare-fun b!7547827 () Bool)

(assert (=> b!7547827 (= e!4496399 (= (head!15525 lt!2645827) (c!1393172 r!24333)))))

(declare-fun b!7547828 () Bool)

(assert (=> b!7547828 (= e!4496401 (matchR!9537 (derivativeStep!5725 r!24333 (head!15525 lt!2645827)) (tail!15071 lt!2645827)))))

(declare-fun b!7547829 () Bool)

(declare-fun res!3025264 () Bool)

(assert (=> b!7547829 (=> (not res!3025264) (not e!4496399))))

(assert (=> b!7547829 (= res!3025264 (isEmpty!41391 (tail!15071 lt!2645827)))))

(declare-fun b!7547830 () Bool)

(declare-fun res!3025265 () Bool)

(assert (=> b!7547830 (=> (not res!3025265) (not e!4496399))))

(assert (=> b!7547830 (= res!3025265 (not call!692135))))

(declare-fun b!7547831 () Bool)

(assert (=> b!7547831 (= e!4496401 (nullable!8695 r!24333))))

(declare-fun b!7547832 () Bool)

(declare-fun e!4496400 () Bool)

(assert (=> b!7547832 (= e!4496400 (not lt!2645858))))

(declare-fun b!7547833 () Bool)

(assert (=> b!7547833 (= e!4496404 (not (= (head!15525 lt!2645827) (c!1393172 r!24333))))))

(declare-fun bm!692130 () Bool)

(assert (=> bm!692130 (= call!692135 (isEmpty!41391 lt!2645827))))

(declare-fun b!7547834 () Bool)

(declare-fun res!3025263 () Bool)

(assert (=> b!7547834 (=> res!3025263 e!4496404)))

(assert (=> b!7547834 (= res!3025263 (not (isEmpty!41391 (tail!15071 lt!2645827))))))

(declare-fun b!7547835 () Bool)

(assert (=> b!7547835 (= e!4496403 e!4496400)))

(declare-fun c!1393212 () Bool)

(assert (=> b!7547835 (= c!1393212 ((_ is EmptyLang!19935) r!24333))))

(declare-fun b!7547836 () Bool)

(assert (=> b!7547836 (= e!4496405 e!4496402)))

(declare-fun res!3025267 () Bool)

(assert (=> b!7547836 (=> (not res!3025267) (not e!4496402))))

(assert (=> b!7547836 (= res!3025267 (not lt!2645858))))

(declare-fun b!7547837 () Bool)

(declare-fun res!3025266 () Bool)

(assert (=> b!7547837 (=> res!3025266 e!4496405)))

(assert (=> b!7547837 (= res!3025266 (not ((_ is ElementMatch!19935) r!24333)))))

(assert (=> b!7547837 (= e!4496400 e!4496405)))

(assert (= (and d!2312361 c!1393210) b!7547831))

(assert (= (and d!2312361 (not c!1393210)) b!7547828))

(assert (= (and d!2312361 c!1393211) b!7547824))

(assert (= (and d!2312361 (not c!1393211)) b!7547835))

(assert (= (and b!7547835 c!1393212) b!7547832))

(assert (= (and b!7547835 (not c!1393212)) b!7547837))

(assert (= (and b!7547837 (not res!3025266)) b!7547826))

(assert (= (and b!7547826 res!3025261) b!7547830))

(assert (= (and b!7547830 res!3025265) b!7547829))

(assert (= (and b!7547829 res!3025264) b!7547827))

(assert (= (and b!7547826 (not res!3025262)) b!7547836))

(assert (= (and b!7547836 res!3025267) b!7547825))

(assert (= (and b!7547825 (not res!3025268)) b!7547834))

(assert (= (and b!7547834 (not res!3025263)) b!7547833))

(assert (= (or b!7547824 b!7547830 b!7547825) bm!692130))

(declare-fun m!8115568 () Bool)

(assert (=> b!7547834 m!8115568))

(assert (=> b!7547834 m!8115568))

(declare-fun m!8115570 () Bool)

(assert (=> b!7547834 m!8115570))

(declare-fun m!8115572 () Bool)

(assert (=> bm!692130 m!8115572))

(declare-fun m!8115574 () Bool)

(assert (=> b!7547827 m!8115574))

(declare-fun m!8115576 () Bool)

(assert (=> b!7547831 m!8115576))

(assert (=> b!7547833 m!8115574))

(assert (=> d!2312361 m!8115572))

(assert (=> d!2312361 m!8115462))

(assert (=> b!7547828 m!8115574))

(assert (=> b!7547828 m!8115574))

(declare-fun m!8115578 () Bool)

(assert (=> b!7547828 m!8115578))

(assert (=> b!7547828 m!8115568))

(assert (=> b!7547828 m!8115578))

(assert (=> b!7547828 m!8115568))

(declare-fun m!8115582 () Bool)

(assert (=> b!7547828 m!8115582))

(assert (=> b!7547829 m!8115568))

(assert (=> b!7547829 m!8115568))

(assert (=> b!7547829 m!8115570))

(assert (=> b!7547649 d!2312361))

(declare-fun d!2312365 () Bool)

(declare-fun lt!2645866 () List!72818)

(assert (=> d!2312365 (= (++!17451 testedP!423 lt!2645866) knownP!30)))

(declare-fun e!4496412 () List!72818)

(assert (=> d!2312365 (= lt!2645866 e!4496412)))

(declare-fun c!1393217 () Bool)

(assert (=> d!2312365 (= c!1393217 ((_ is Cons!72694) testedP!423))))

(assert (=> d!2312365 (>= (size!42431 knownP!30) (size!42431 testedP!423))))

(assert (=> d!2312365 (= (getSuffix!3621 knownP!30 testedP!423) lt!2645866)))

(declare-fun b!7547850 () Bool)

(assert (=> b!7547850 (= e!4496412 (getSuffix!3621 (tail!15071 knownP!30) (t!387535 testedP!423)))))

(declare-fun b!7547851 () Bool)

(assert (=> b!7547851 (= e!4496412 knownP!30)))

(assert (= (and d!2312365 c!1393217) b!7547850))

(assert (= (and d!2312365 (not c!1393217)) b!7547851))

(declare-fun m!8115584 () Bool)

(assert (=> d!2312365 m!8115584))

(assert (=> d!2312365 m!8115466))

(assert (=> d!2312365 m!8115464))

(assert (=> b!7547850 m!8115496))

(assert (=> b!7547850 m!8115496))

(declare-fun m!8115586 () Bool)

(assert (=> b!7547850 m!8115586))

(assert (=> b!7547649 d!2312365))

(declare-fun b!7547858 () Bool)

(declare-fun e!4496416 () Bool)

(assert (=> b!7547858 (= e!4496416 (isPrefix!6141 (tail!15071 testedP!423) (tail!15071 knownP!30)))))

(declare-fun b!7547857 () Bool)

(declare-fun res!3025278 () Bool)

(assert (=> b!7547857 (=> (not res!3025278) (not e!4496416))))

(assert (=> b!7547857 (= res!3025278 (= (head!15525 testedP!423) (head!15525 knownP!30)))))

(declare-fun b!7547856 () Bool)

(declare-fun e!4496415 () Bool)

(assert (=> b!7547856 (= e!4496415 e!4496416)))

(declare-fun res!3025276 () Bool)

(assert (=> b!7547856 (=> (not res!3025276) (not e!4496416))))

(assert (=> b!7547856 (= res!3025276 (not ((_ is Nil!72694) knownP!30)))))

(declare-fun b!7547859 () Bool)

(declare-fun e!4496417 () Bool)

(assert (=> b!7547859 (= e!4496417 (>= (size!42431 knownP!30) (size!42431 testedP!423)))))

(declare-fun d!2312367 () Bool)

(assert (=> d!2312367 e!4496417))

(declare-fun res!3025277 () Bool)

(assert (=> d!2312367 (=> res!3025277 e!4496417)))

(declare-fun lt!2645868 () Bool)

(assert (=> d!2312367 (= res!3025277 (not lt!2645868))))

(assert (=> d!2312367 (= lt!2645868 e!4496415)))

(declare-fun res!3025275 () Bool)

(assert (=> d!2312367 (=> res!3025275 e!4496415)))

(assert (=> d!2312367 (= res!3025275 ((_ is Nil!72694) testedP!423))))

(assert (=> d!2312367 (= (isPrefix!6141 testedP!423 knownP!30) lt!2645868)))

(assert (= (and d!2312367 (not res!3025275)) b!7547856))

(assert (= (and b!7547856 res!3025276) b!7547857))

(assert (= (and b!7547857 res!3025278) b!7547858))

(assert (= (and d!2312367 (not res!3025277)) b!7547859))

(assert (=> b!7547858 m!8115506))

(assert (=> b!7547858 m!8115496))

(assert (=> b!7547858 m!8115506))

(assert (=> b!7547858 m!8115496))

(declare-fun m!8115600 () Bool)

(assert (=> b!7547858 m!8115600))

(assert (=> b!7547857 m!8115510))

(assert (=> b!7547857 m!8115502))

(assert (=> b!7547859 m!8115466))

(assert (=> b!7547859 m!8115464))

(assert (=> b!7547649 d!2312367))

(declare-fun d!2312371 () Bool)

(assert (=> d!2312371 (isPrefix!6141 testedP!423 knownP!30)))

(declare-fun lt!2645876 () Unit!166808)

(declare-fun choose!58406 (List!72818 List!72818 List!72818) Unit!166808)

(assert (=> d!2312371 (= lt!2645876 (choose!58406 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312371 (isPrefix!6141 knownP!30 input!7874)))

(assert (=> d!2312371 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!891 knownP!30 testedP!423 input!7874) lt!2645876)))

(declare-fun bs!1940134 () Bool)

(assert (= bs!1940134 d!2312371))

(assert (=> bs!1940134 m!8115472))

(declare-fun m!8115622 () Bool)

(assert (=> bs!1940134 m!8115622))

(assert (=> bs!1940134 m!8115482))

(assert (=> b!7547649 d!2312371))

(declare-fun b!7547884 () Bool)

(declare-fun e!4496432 () List!72818)

(assert (=> b!7547884 (= e!4496432 lt!2645824)))

(declare-fun d!2312383 () Bool)

(declare-fun e!4496433 () Bool)

(assert (=> d!2312383 e!4496433))

(declare-fun res!3025291 () Bool)

(assert (=> d!2312383 (=> (not res!3025291) (not e!4496433))))

(declare-fun lt!2645884 () List!72818)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15382 (List!72818) (InoxSet C!40196))

(assert (=> d!2312383 (= res!3025291 (= (content!15382 lt!2645884) ((_ map or) (content!15382 (++!17451 testedP!423 lt!2645827)) (content!15382 lt!2645824))))))

(assert (=> d!2312383 (= lt!2645884 e!4496432)))

(declare-fun c!1393225 () Bool)

(assert (=> d!2312383 (= c!1393225 ((_ is Nil!72694) (++!17451 testedP!423 lt!2645827)))))

(assert (=> d!2312383 (= (++!17451 (++!17451 testedP!423 lt!2645827) lt!2645824) lt!2645884)))

(declare-fun b!7547885 () Bool)

(assert (=> b!7547885 (= e!4496432 (Cons!72694 (h!79142 (++!17451 testedP!423 lt!2645827)) (++!17451 (t!387535 (++!17451 testedP!423 lt!2645827)) lt!2645824)))))

(declare-fun b!7547886 () Bool)

(declare-fun res!3025292 () Bool)

(assert (=> b!7547886 (=> (not res!3025292) (not e!4496433))))

(assert (=> b!7547886 (= res!3025292 (= (size!42431 lt!2645884) (+ (size!42431 (++!17451 testedP!423 lt!2645827)) (size!42431 lt!2645824))))))

(declare-fun b!7547887 () Bool)

(assert (=> b!7547887 (= e!4496433 (or (not (= lt!2645824 Nil!72694)) (= lt!2645884 (++!17451 testedP!423 lt!2645827))))))

(assert (= (and d!2312383 c!1393225) b!7547884))

(assert (= (and d!2312383 (not c!1393225)) b!7547885))

(assert (= (and d!2312383 res!3025291) b!7547886))

(assert (= (and b!7547886 res!3025292) b!7547887))

(declare-fun m!8115636 () Bool)

(assert (=> d!2312383 m!8115636))

(assert (=> d!2312383 m!8115432))

(declare-fun m!8115638 () Bool)

(assert (=> d!2312383 m!8115638))

(declare-fun m!8115640 () Bool)

(assert (=> d!2312383 m!8115640))

(declare-fun m!8115642 () Bool)

(assert (=> b!7547885 m!8115642))

(declare-fun m!8115644 () Bool)

(assert (=> b!7547886 m!8115644))

(assert (=> b!7547886 m!8115432))

(declare-fun m!8115646 () Bool)

(assert (=> b!7547886 m!8115646))

(declare-fun m!8115648 () Bool)

(assert (=> b!7547886 m!8115648))

(assert (=> b!7547628 d!2312383))

(declare-fun b!7547890 () Bool)

(declare-fun e!4496435 () List!72818)

(assert (=> b!7547890 (= e!4496435 lt!2645827)))

(declare-fun d!2312389 () Bool)

(declare-fun e!4496436 () Bool)

(assert (=> d!2312389 e!4496436))

(declare-fun res!3025293 () Bool)

(assert (=> d!2312389 (=> (not res!3025293) (not e!4496436))))

(declare-fun lt!2645886 () List!72818)

(assert (=> d!2312389 (= res!3025293 (= (content!15382 lt!2645886) ((_ map or) (content!15382 testedP!423) (content!15382 lt!2645827))))))

(assert (=> d!2312389 (= lt!2645886 e!4496435)))

(declare-fun c!1393227 () Bool)

(assert (=> d!2312389 (= c!1393227 ((_ is Nil!72694) testedP!423))))

(assert (=> d!2312389 (= (++!17451 testedP!423 lt!2645827) lt!2645886)))

(declare-fun b!7547891 () Bool)

(assert (=> b!7547891 (= e!4496435 (Cons!72694 (h!79142 testedP!423) (++!17451 (t!387535 testedP!423) lt!2645827)))))

(declare-fun b!7547892 () Bool)

(declare-fun res!3025294 () Bool)

(assert (=> b!7547892 (=> (not res!3025294) (not e!4496436))))

(assert (=> b!7547892 (= res!3025294 (= (size!42431 lt!2645886) (+ (size!42431 testedP!423) (size!42431 lt!2645827))))))

(declare-fun b!7547893 () Bool)

(assert (=> b!7547893 (= e!4496436 (or (not (= lt!2645827 Nil!72694)) (= lt!2645886 testedP!423)))))

(assert (= (and d!2312389 c!1393227) b!7547890))

(assert (= (and d!2312389 (not c!1393227)) b!7547891))

(assert (= (and d!2312389 res!3025293) b!7547892))

(assert (= (and b!7547892 res!3025294) b!7547893))

(declare-fun m!8115650 () Bool)

(assert (=> d!2312389 m!8115650))

(declare-fun m!8115652 () Bool)

(assert (=> d!2312389 m!8115652))

(declare-fun m!8115654 () Bool)

(assert (=> d!2312389 m!8115654))

(declare-fun m!8115656 () Bool)

(assert (=> b!7547891 m!8115656))

(declare-fun m!8115658 () Bool)

(assert (=> b!7547892 m!8115658))

(assert (=> b!7547892 m!8115464))

(declare-fun m!8115660 () Bool)

(assert (=> b!7547892 m!8115660))

(assert (=> b!7547628 d!2312389))

(declare-fun d!2312393 () Bool)

(assert (=> d!2312393 (= (derivative!467 baseR!101 (++!17451 testedP!423 (Cons!72694 lt!2645828 Nil!72694))) (derivativeStep!5725 r!24333 lt!2645828))))

(declare-fun lt!2645891 () Unit!166808)

(declare-fun choose!58408 (Regex!19935 Regex!19935 List!72818 C!40196) Unit!166808)

(assert (=> d!2312393 (= lt!2645891 (choose!58408 baseR!101 r!24333 testedP!423 lt!2645828))))

(assert (=> d!2312393 (validRegex!10363 baseR!101)))

(assert (=> d!2312393 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!169 baseR!101 r!24333 testedP!423 lt!2645828) lt!2645891)))

(declare-fun bs!1940136 () Bool)

(assert (= bs!1940136 d!2312393))

(assert (=> bs!1940136 m!8115450))

(declare-fun m!8115662 () Bool)

(assert (=> bs!1940136 m!8115662))

(assert (=> bs!1940136 m!8115450))

(assert (=> bs!1940136 m!8115478))

(assert (=> bs!1940136 m!8115438))

(declare-fun m!8115664 () Bool)

(assert (=> bs!1940136 m!8115664))

(assert (=> b!7547638 d!2312393))

(declare-fun b!7547978 () Bool)

(declare-fun e!4496484 () Regex!19935)

(declare-fun e!4496486 () Regex!19935)

(assert (=> b!7547978 (= e!4496484 e!4496486)))

(declare-fun c!1393265 () Bool)

(assert (=> b!7547978 (= c!1393265 ((_ is ElementMatch!19935) r!24333))))

(declare-fun e!4496485 () Regex!19935)

(declare-fun call!692165 () Regex!19935)

(declare-fun call!692162 () Regex!19935)

(declare-fun b!7547979 () Bool)

(assert (=> b!7547979 (= e!4496485 (Union!19935 (Concat!28780 call!692165 (regTwo!40382 r!24333)) call!692162))))

(declare-fun b!7547980 () Bool)

(declare-fun c!1393267 () Bool)

(assert (=> b!7547980 (= c!1393267 ((_ is Union!19935) r!24333))))

(declare-fun e!4496488 () Regex!19935)

(assert (=> b!7547980 (= e!4496486 e!4496488)))

(declare-fun b!7547981 () Bool)

(assert (=> b!7547981 (= e!4496485 (Union!19935 (Concat!28780 call!692165 (regTwo!40382 r!24333)) EmptyLang!19935))))

(declare-fun b!7547982 () Bool)

(declare-fun call!692163 () Regex!19935)

(assert (=> b!7547982 (= e!4496488 (Union!19935 call!692162 call!692163))))

(declare-fun d!2312395 () Bool)

(declare-fun lt!2645903 () Regex!19935)

(assert (=> d!2312395 (validRegex!10363 lt!2645903)))

(assert (=> d!2312395 (= lt!2645903 e!4496484)))

(declare-fun c!1393268 () Bool)

(assert (=> d!2312395 (= c!1393268 (or ((_ is EmptyExpr!19935) r!24333) ((_ is EmptyLang!19935) r!24333)))))

(assert (=> d!2312395 (validRegex!10363 r!24333)))

(assert (=> d!2312395 (= (derivativeStep!5725 r!24333 lt!2645828) lt!2645903)))

(declare-fun bm!692157 () Bool)

(assert (=> bm!692157 (= call!692162 (derivativeStep!5725 (ite c!1393267 (regOne!40383 r!24333) (regTwo!40382 r!24333)) lt!2645828))))

(declare-fun bm!692158 () Bool)

(declare-fun call!692164 () Regex!19935)

(assert (=> bm!692158 (= call!692165 call!692164)))

(declare-fun b!7547983 () Bool)

(declare-fun e!4496487 () Regex!19935)

(assert (=> b!7547983 (= e!4496488 e!4496487)))

(declare-fun c!1393266 () Bool)

(assert (=> b!7547983 (= c!1393266 ((_ is Star!19935) r!24333))))

(declare-fun bm!692159 () Bool)

(assert (=> bm!692159 (= call!692164 call!692163)))

(declare-fun b!7547984 () Bool)

(assert (=> b!7547984 (= e!4496486 (ite (= lt!2645828 (c!1393172 r!24333)) EmptyExpr!19935 EmptyLang!19935))))

(declare-fun b!7547985 () Bool)

(assert (=> b!7547985 (= e!4496484 EmptyLang!19935)))

(declare-fun b!7547986 () Bool)

(assert (=> b!7547986 (= e!4496487 (Concat!28780 call!692164 r!24333))))

(declare-fun b!7547987 () Bool)

(declare-fun c!1393264 () Bool)

(assert (=> b!7547987 (= c!1393264 (nullable!8695 (regOne!40382 r!24333)))))

(assert (=> b!7547987 (= e!4496487 e!4496485)))

(declare-fun bm!692160 () Bool)

(assert (=> bm!692160 (= call!692163 (derivativeStep!5725 (ite c!1393267 (regTwo!40383 r!24333) (ite c!1393266 (reg!20264 r!24333) (regOne!40382 r!24333))) lt!2645828))))

(assert (= (and d!2312395 c!1393268) b!7547985))

(assert (= (and d!2312395 (not c!1393268)) b!7547978))

(assert (= (and b!7547978 c!1393265) b!7547984))

(assert (= (and b!7547978 (not c!1393265)) b!7547980))

(assert (= (and b!7547980 c!1393267) b!7547982))

(assert (= (and b!7547980 (not c!1393267)) b!7547983))

(assert (= (and b!7547983 c!1393266) b!7547986))

(assert (= (and b!7547983 (not c!1393266)) b!7547987))

(assert (= (and b!7547987 c!1393264) b!7547979))

(assert (= (and b!7547987 (not c!1393264)) b!7547981))

(assert (= (or b!7547979 b!7547981) bm!692158))

(assert (= (or b!7547986 bm!692158) bm!692159))

(assert (= (or b!7547982 bm!692159) bm!692160))

(assert (= (or b!7547982 b!7547979) bm!692157))

(declare-fun m!8115716 () Bool)

(assert (=> d!2312395 m!8115716))

(assert (=> d!2312395 m!8115462))

(declare-fun m!8115718 () Bool)

(assert (=> bm!692157 m!8115718))

(declare-fun m!8115720 () Bool)

(assert (=> b!7547987 m!8115720))

(declare-fun m!8115722 () Bool)

(assert (=> bm!692160 m!8115722))

(assert (=> b!7547638 d!2312395))

(declare-fun d!2312411 () Bool)

(declare-fun lt!2645909 () Regex!19935)

(assert (=> d!2312411 (validRegex!10363 lt!2645909)))

(declare-fun e!4496518 () Regex!19935)

(assert (=> d!2312411 (= lt!2645909 e!4496518)))

(declare-fun c!1393279 () Bool)

(assert (=> d!2312411 (= c!1393279 ((_ is Cons!72694) lt!2645823))))

(assert (=> d!2312411 (validRegex!10363 baseR!101)))

(assert (=> d!2312411 (= (derivative!467 baseR!101 lt!2645823) lt!2645909)))

(declare-fun b!7548040 () Bool)

(assert (=> b!7548040 (= e!4496518 (derivative!467 (derivativeStep!5725 baseR!101 (h!79142 lt!2645823)) (t!387535 lt!2645823)))))

(declare-fun b!7548041 () Bool)

(assert (=> b!7548041 (= e!4496518 baseR!101)))

(assert (= (and d!2312411 c!1393279) b!7548040))

(assert (= (and d!2312411 (not c!1393279)) b!7548041))

(declare-fun m!8115756 () Bool)

(assert (=> d!2312411 m!8115756))

(assert (=> d!2312411 m!8115478))

(declare-fun m!8115758 () Bool)

(assert (=> b!7548040 m!8115758))

(assert (=> b!7548040 m!8115758))

(declare-fun m!8115760 () Bool)

(assert (=> b!7548040 m!8115760))

(assert (=> b!7547638 d!2312411))

(declare-fun d!2312423 () Bool)

(declare-fun lt!2645910 () List!72818)

(assert (=> d!2312423 (= (++!17451 testedP!423 lt!2645910) input!7874)))

(declare-fun e!4496521 () List!72818)

(assert (=> d!2312423 (= lt!2645910 e!4496521)))

(declare-fun c!1393280 () Bool)

(assert (=> d!2312423 (= c!1393280 ((_ is Cons!72694) testedP!423))))

(assert (=> d!2312423 (>= (size!42431 input!7874) (size!42431 testedP!423))))

(assert (=> d!2312423 (= (getSuffix!3621 input!7874 testedP!423) lt!2645910)))

(declare-fun b!7548050 () Bool)

(assert (=> b!7548050 (= e!4496521 (getSuffix!3621 (tail!15071 input!7874) (t!387535 testedP!423)))))

(declare-fun b!7548054 () Bool)

(assert (=> b!7548054 (= e!4496521 input!7874)))

(assert (= (and d!2312423 c!1393280) b!7548050))

(assert (= (and d!2312423 (not c!1393280)) b!7548054))

(declare-fun m!8115762 () Bool)

(assert (=> d!2312423 m!8115762))

(assert (=> d!2312423 m!8115430))

(assert (=> d!2312423 m!8115464))

(assert (=> b!7548050 m!8115498))

(assert (=> b!7548050 m!8115498))

(declare-fun m!8115764 () Bool)

(assert (=> b!7548050 m!8115764))

(assert (=> b!7547638 d!2312423))

(declare-fun b!7548063 () Bool)

(declare-fun e!4496527 () List!72818)

(assert (=> b!7548063 (= e!4496527 (Cons!72694 lt!2645828 Nil!72694))))

(declare-fun d!2312425 () Bool)

(declare-fun e!4496528 () Bool)

(assert (=> d!2312425 e!4496528))

(declare-fun res!3025333 () Bool)

(assert (=> d!2312425 (=> (not res!3025333) (not e!4496528))))

(declare-fun lt!2645911 () List!72818)

(assert (=> d!2312425 (= res!3025333 (= (content!15382 lt!2645911) ((_ map or) (content!15382 testedP!423) (content!15382 (Cons!72694 lt!2645828 Nil!72694)))))))

(assert (=> d!2312425 (= lt!2645911 e!4496527)))

(declare-fun c!1393281 () Bool)

(assert (=> d!2312425 (= c!1393281 ((_ is Nil!72694) testedP!423))))

(assert (=> d!2312425 (= (++!17451 testedP!423 (Cons!72694 lt!2645828 Nil!72694)) lt!2645911)))

(declare-fun b!7548064 () Bool)

(assert (=> b!7548064 (= e!4496527 (Cons!72694 (h!79142 testedP!423) (++!17451 (t!387535 testedP!423) (Cons!72694 lt!2645828 Nil!72694))))))

(declare-fun b!7548065 () Bool)

(declare-fun res!3025334 () Bool)

(assert (=> b!7548065 (=> (not res!3025334) (not e!4496528))))

(assert (=> b!7548065 (= res!3025334 (= (size!42431 lt!2645911) (+ (size!42431 testedP!423) (size!42431 (Cons!72694 lt!2645828 Nil!72694)))))))

(declare-fun b!7548066 () Bool)

(assert (=> b!7548066 (= e!4496528 (or (not (= (Cons!72694 lt!2645828 Nil!72694) Nil!72694)) (= lt!2645911 testedP!423)))))

(assert (= (and d!2312425 c!1393281) b!7548063))

(assert (= (and d!2312425 (not c!1393281)) b!7548064))

(assert (= (and d!2312425 res!3025333) b!7548065))

(assert (= (and b!7548065 res!3025334) b!7548066))

(declare-fun m!8115766 () Bool)

(assert (=> d!2312425 m!8115766))

(assert (=> d!2312425 m!8115652))

(declare-fun m!8115768 () Bool)

(assert (=> d!2312425 m!8115768))

(declare-fun m!8115770 () Bool)

(assert (=> b!7548064 m!8115770))

(declare-fun m!8115772 () Bool)

(assert (=> b!7548065 m!8115772))

(assert (=> b!7548065 m!8115464))

(declare-fun m!8115774 () Bool)

(assert (=> b!7548065 m!8115774))

(assert (=> b!7547638 d!2312425))

(declare-fun b!7548087 () Bool)

(declare-fun e!4496535 () List!72818)

(assert (=> b!7548087 (= e!4496535 lt!2645824)))

(declare-fun d!2312427 () Bool)

(declare-fun e!4496536 () Bool)

(assert (=> d!2312427 e!4496536))

(declare-fun res!3025335 () Bool)

(assert (=> d!2312427 (=> (not res!3025335) (not e!4496536))))

(declare-fun lt!2645912 () List!72818)

(assert (=> d!2312427 (= res!3025335 (= (content!15382 lt!2645912) ((_ map or) (content!15382 knownP!30) (content!15382 lt!2645824))))))

(assert (=> d!2312427 (= lt!2645912 e!4496535)))

(declare-fun c!1393282 () Bool)

(assert (=> d!2312427 (= c!1393282 ((_ is Nil!72694) knownP!30))))

(assert (=> d!2312427 (= (++!17451 knownP!30 lt!2645824) lt!2645912)))

(declare-fun b!7548088 () Bool)

(assert (=> b!7548088 (= e!4496535 (Cons!72694 (h!79142 knownP!30) (++!17451 (t!387535 knownP!30) lt!2645824)))))

(declare-fun b!7548089 () Bool)

(declare-fun res!3025336 () Bool)

(assert (=> b!7548089 (=> (not res!3025336) (not e!4496536))))

(assert (=> b!7548089 (= res!3025336 (= (size!42431 lt!2645912) (+ (size!42431 knownP!30) (size!42431 lt!2645824))))))

(declare-fun b!7548090 () Bool)

(assert (=> b!7548090 (= e!4496536 (or (not (= lt!2645824 Nil!72694)) (= lt!2645912 knownP!30)))))

(assert (= (and d!2312427 c!1393282) b!7548087))

(assert (= (and d!2312427 (not c!1393282)) b!7548088))

(assert (= (and d!2312427 res!3025335) b!7548089))

(assert (= (and b!7548089 res!3025336) b!7548090))

(declare-fun m!8115776 () Bool)

(assert (=> d!2312427 m!8115776))

(declare-fun m!8115778 () Bool)

(assert (=> d!2312427 m!8115778))

(assert (=> d!2312427 m!8115640))

(declare-fun m!8115780 () Bool)

(assert (=> b!7548088 m!8115780))

(declare-fun m!8115782 () Bool)

(assert (=> b!7548089 m!8115782))

(assert (=> b!7548089 m!8115466))

(assert (=> b!7548089 m!8115648))

(assert (=> b!7547638 d!2312427))

(declare-fun d!2312429 () Bool)

(declare-fun lt!2645913 () List!72818)

(assert (=> d!2312429 (= (++!17451 lt!2645823 lt!2645913) knownP!30)))

(declare-fun e!4496539 () List!72818)

(assert (=> d!2312429 (= lt!2645913 e!4496539)))

(declare-fun c!1393283 () Bool)

(assert (=> d!2312429 (= c!1393283 ((_ is Cons!72694) lt!2645823))))

(assert (=> d!2312429 (>= (size!42431 knownP!30) (size!42431 lt!2645823))))

(assert (=> d!2312429 (= (getSuffix!3621 knownP!30 lt!2645823) lt!2645913)))

(declare-fun b!7548099 () Bool)

(assert (=> b!7548099 (= e!4496539 (getSuffix!3621 (tail!15071 knownP!30) (t!387535 lt!2645823)))))

(declare-fun b!7548100 () Bool)

(assert (=> b!7548100 (= e!4496539 knownP!30)))

(assert (= (and d!2312429 c!1393283) b!7548099))

(assert (= (and d!2312429 (not c!1393283)) b!7548100))

(declare-fun m!8115784 () Bool)

(assert (=> d!2312429 m!8115784))

(assert (=> d!2312429 m!8115466))

(declare-fun m!8115786 () Bool)

(assert (=> d!2312429 m!8115786))

(assert (=> b!7548099 m!8115496))

(assert (=> b!7548099 m!8115496))

(declare-fun m!8115788 () Bool)

(assert (=> b!7548099 m!8115788))

(assert (=> b!7547638 d!2312429))

(declare-fun b!7548103 () Bool)

(declare-fun e!4496541 () Bool)

(assert (=> b!7548103 (= e!4496541 (isPrefix!6141 (tail!15071 lt!2645823) (tail!15071 knownP!30)))))

(declare-fun b!7548102 () Bool)

(declare-fun res!3025340 () Bool)

(assert (=> b!7548102 (=> (not res!3025340) (not e!4496541))))

(assert (=> b!7548102 (= res!3025340 (= (head!15525 lt!2645823) (head!15525 knownP!30)))))

(declare-fun b!7548101 () Bool)

(declare-fun e!4496540 () Bool)

(assert (=> b!7548101 (= e!4496540 e!4496541)))

(declare-fun res!3025338 () Bool)

(assert (=> b!7548101 (=> (not res!3025338) (not e!4496541))))

(assert (=> b!7548101 (= res!3025338 (not ((_ is Nil!72694) knownP!30)))))

(declare-fun b!7548104 () Bool)

(declare-fun e!4496542 () Bool)

(assert (=> b!7548104 (= e!4496542 (>= (size!42431 knownP!30) (size!42431 lt!2645823)))))

(declare-fun d!2312431 () Bool)

(assert (=> d!2312431 e!4496542))

(declare-fun res!3025339 () Bool)

(assert (=> d!2312431 (=> res!3025339 e!4496542)))

(declare-fun lt!2645914 () Bool)

(assert (=> d!2312431 (= res!3025339 (not lt!2645914))))

(assert (=> d!2312431 (= lt!2645914 e!4496540)))

(declare-fun res!3025337 () Bool)

(assert (=> d!2312431 (=> res!3025337 e!4496540)))

(assert (=> d!2312431 (= res!3025337 ((_ is Nil!72694) lt!2645823))))

(assert (=> d!2312431 (= (isPrefix!6141 lt!2645823 knownP!30) lt!2645914)))

(assert (= (and d!2312431 (not res!3025337)) b!7548101))

(assert (= (and b!7548101 res!3025338) b!7548102))

(assert (= (and b!7548102 res!3025340) b!7548103))

(assert (= (and d!2312431 (not res!3025339)) b!7548104))

(declare-fun m!8115790 () Bool)

(assert (=> b!7548103 m!8115790))

(assert (=> b!7548103 m!8115496))

(assert (=> b!7548103 m!8115790))

(assert (=> b!7548103 m!8115496))

(declare-fun m!8115792 () Bool)

(assert (=> b!7548103 m!8115792))

(declare-fun m!8115794 () Bool)

(assert (=> b!7548102 m!8115794))

(assert (=> b!7548102 m!8115502))

(assert (=> b!7548104 m!8115466))

(assert (=> b!7548104 m!8115786))

(assert (=> b!7547638 d!2312431))

(declare-fun d!2312433 () Bool)

(declare-fun lt!2645915 () List!72818)

(assert (=> d!2312433 (= (++!17451 knownP!30 lt!2645915) input!7874)))

(declare-fun e!4496543 () List!72818)

(assert (=> d!2312433 (= lt!2645915 e!4496543)))

(declare-fun c!1393284 () Bool)

(assert (=> d!2312433 (= c!1393284 ((_ is Cons!72694) knownP!30))))

(assert (=> d!2312433 (>= (size!42431 input!7874) (size!42431 knownP!30))))

(assert (=> d!2312433 (= (getSuffix!3621 input!7874 knownP!30) lt!2645915)))

(declare-fun b!7548105 () Bool)

(assert (=> b!7548105 (= e!4496543 (getSuffix!3621 (tail!15071 input!7874) (t!387535 knownP!30)))))

(declare-fun b!7548106 () Bool)

(assert (=> b!7548106 (= e!4496543 input!7874)))

(assert (= (and d!2312433 c!1393284) b!7548105))

(assert (= (and d!2312433 (not c!1393284)) b!7548106))

(declare-fun m!8115796 () Bool)

(assert (=> d!2312433 m!8115796))

(assert (=> d!2312433 m!8115430))

(assert (=> d!2312433 m!8115466))

(assert (=> b!7548105 m!8115498))

(assert (=> b!7548105 m!8115498))

(declare-fun m!8115798 () Bool)

(assert (=> b!7548105 m!8115798))

(assert (=> b!7547638 d!2312433))

(declare-fun d!2312435 () Bool)

(assert (=> d!2312435 (isPrefix!6141 (++!17451 testedP!423 (Cons!72694 (head!15525 (getSuffix!3621 input!7874 testedP!423)) Nil!72694)) input!7874)))

(declare-fun lt!2645918 () Unit!166808)

(declare-fun choose!58409 (List!72818 List!72818) Unit!166808)

(assert (=> d!2312435 (= lt!2645918 (choose!58409 testedP!423 input!7874))))

(assert (=> d!2312435 (isPrefix!6141 testedP!423 input!7874)))

(assert (=> d!2312435 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1202 testedP!423 input!7874) lt!2645918)))

(declare-fun bs!1940139 () Bool)

(assert (= bs!1940139 d!2312435))

(declare-fun m!8115800 () Bool)

(assert (=> bs!1940139 m!8115800))

(assert (=> bs!1940139 m!8115444))

(assert (=> bs!1940139 m!8115446))

(declare-fun m!8115802 () Bool)

(assert (=> bs!1940139 m!8115802))

(assert (=> bs!1940139 m!8115428))

(assert (=> bs!1940139 m!8115444))

(assert (=> bs!1940139 m!8115800))

(declare-fun m!8115804 () Bool)

(assert (=> bs!1940139 m!8115804))

(assert (=> b!7547638 d!2312435))

(declare-fun b!7548109 () Bool)

(declare-fun e!4496545 () Bool)

(assert (=> b!7548109 (= e!4496545 (isPrefix!6141 (tail!15071 lt!2645823) (tail!15071 input!7874)))))

(declare-fun b!7548108 () Bool)

(declare-fun res!3025344 () Bool)

(assert (=> b!7548108 (=> (not res!3025344) (not e!4496545))))

(assert (=> b!7548108 (= res!3025344 (= (head!15525 lt!2645823) (head!15525 input!7874)))))

(declare-fun b!7548107 () Bool)

(declare-fun e!4496544 () Bool)

(assert (=> b!7548107 (= e!4496544 e!4496545)))

(declare-fun res!3025342 () Bool)

(assert (=> b!7548107 (=> (not res!3025342) (not e!4496545))))

(assert (=> b!7548107 (= res!3025342 (not ((_ is Nil!72694) input!7874)))))

(declare-fun b!7548110 () Bool)

(declare-fun e!4496546 () Bool)

(assert (=> b!7548110 (= e!4496546 (>= (size!42431 input!7874) (size!42431 lt!2645823)))))

(declare-fun d!2312437 () Bool)

(assert (=> d!2312437 e!4496546))

(declare-fun res!3025343 () Bool)

(assert (=> d!2312437 (=> res!3025343 e!4496546)))

(declare-fun lt!2645919 () Bool)

(assert (=> d!2312437 (= res!3025343 (not lt!2645919))))

(assert (=> d!2312437 (= lt!2645919 e!4496544)))

(declare-fun res!3025341 () Bool)

(assert (=> d!2312437 (=> res!3025341 e!4496544)))

(assert (=> d!2312437 (= res!3025341 ((_ is Nil!72694) lt!2645823))))

(assert (=> d!2312437 (= (isPrefix!6141 lt!2645823 input!7874) lt!2645919)))

(assert (= (and d!2312437 (not res!3025341)) b!7548107))

(assert (= (and b!7548107 res!3025342) b!7548108))

(assert (= (and b!7548108 res!3025344) b!7548109))

(assert (= (and d!2312437 (not res!3025343)) b!7548110))

(assert (=> b!7548109 m!8115790))

(assert (=> b!7548109 m!8115498))

(assert (=> b!7548109 m!8115790))

(assert (=> b!7548109 m!8115498))

(declare-fun m!8115806 () Bool)

(assert (=> b!7548109 m!8115806))

(assert (=> b!7548108 m!8115794))

(assert (=> b!7548108 m!8115504))

(assert (=> b!7548110 m!8115430))

(assert (=> b!7548110 m!8115786))

(assert (=> b!7547638 d!2312437))

(declare-fun d!2312439 () Bool)

(assert (=> d!2312439 (isPrefix!6141 lt!2645823 knownP!30)))

(declare-fun lt!2645920 () Unit!166808)

(assert (=> d!2312439 (= lt!2645920 (choose!58406 knownP!30 lt!2645823 input!7874))))

(assert (=> d!2312439 (isPrefix!6141 knownP!30 input!7874)))

(assert (=> d!2312439 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!891 knownP!30 lt!2645823 input!7874) lt!2645920)))

(declare-fun bs!1940140 () Bool)

(assert (= bs!1940140 d!2312439))

(assert (=> bs!1940140 m!8115456))

(declare-fun m!8115808 () Bool)

(assert (=> bs!1940140 m!8115808))

(assert (=> bs!1940140 m!8115482))

(assert (=> b!7547638 d!2312439))

(declare-fun d!2312441 () Bool)

(assert (=> d!2312441 (= (head!15525 (getSuffix!3621 input!7874 testedP!423)) (h!79142 (getSuffix!3621 input!7874 testedP!423)))))

(assert (=> b!7547638 d!2312441))

(declare-fun d!2312443 () Bool)

(declare-fun lt!2645921 () Regex!19935)

(assert (=> d!2312443 (validRegex!10363 lt!2645921)))

(declare-fun e!4496547 () Regex!19935)

(assert (=> d!2312443 (= lt!2645921 e!4496547)))

(declare-fun c!1393285 () Bool)

(assert (=> d!2312443 (= c!1393285 ((_ is Cons!72694) testedP!423))))

(assert (=> d!2312443 (validRegex!10363 baseR!101)))

(assert (=> d!2312443 (= (derivative!467 baseR!101 testedP!423) lt!2645921)))

(declare-fun b!7548111 () Bool)

(assert (=> b!7548111 (= e!4496547 (derivative!467 (derivativeStep!5725 baseR!101 (h!79142 testedP!423)) (t!387535 testedP!423)))))

(declare-fun b!7548112 () Bool)

(assert (=> b!7548112 (= e!4496547 baseR!101)))

(assert (= (and d!2312443 c!1393285) b!7548111))

(assert (= (and d!2312443 (not c!1393285)) b!7548112))

(declare-fun m!8115810 () Bool)

(assert (=> d!2312443 m!8115810))

(assert (=> d!2312443 m!8115478))

(declare-fun m!8115812 () Bool)

(assert (=> b!7548111 m!8115812))

(assert (=> b!7548111 m!8115812))

(declare-fun m!8115814 () Bool)

(assert (=> b!7548111 m!8115814))

(assert (=> b!7547631 d!2312443))

(declare-fun d!2312445 () Bool)

(declare-fun lt!2645922 () Int)

(assert (=> d!2312445 (>= lt!2645922 0)))

(declare-fun e!4496548 () Int)

(assert (=> d!2312445 (= lt!2645922 e!4496548)))

(declare-fun c!1393286 () Bool)

(assert (=> d!2312445 (= c!1393286 ((_ is Nil!72694) input!7874))))

(assert (=> d!2312445 (= (size!42431 input!7874) lt!2645922)))

(declare-fun b!7548113 () Bool)

(assert (=> b!7548113 (= e!4496548 0)))

(declare-fun b!7548114 () Bool)

(assert (=> b!7548114 (= e!4496548 (+ 1 (size!42431 (t!387535 input!7874))))))

(assert (= (and d!2312445 c!1393286) b!7548113))

(assert (= (and d!2312445 (not c!1393286)) b!7548114))

(declare-fun m!8115816 () Bool)

(assert (=> b!7548114 m!8115816))

(assert (=> b!7547642 d!2312445))

(declare-fun b!7548128 () Bool)

(declare-fun e!4496551 () Bool)

(declare-fun tp!2195728 () Bool)

(declare-fun tp!2195729 () Bool)

(assert (=> b!7548128 (= e!4496551 (and tp!2195728 tp!2195729))))

(declare-fun b!7548125 () Bool)

(assert (=> b!7548125 (= e!4496551 tp_is_empty!50225)))

(declare-fun b!7548127 () Bool)

(declare-fun tp!2195725 () Bool)

(assert (=> b!7548127 (= e!4496551 tp!2195725)))

(declare-fun b!7548126 () Bool)

(declare-fun tp!2195727 () Bool)

(declare-fun tp!2195726 () Bool)

(assert (=> b!7548126 (= e!4496551 (and tp!2195727 tp!2195726))))

(assert (=> b!7547629 (= tp!2195647 e!4496551)))

(assert (= (and b!7547629 ((_ is ElementMatch!19935) (regOne!40382 baseR!101))) b!7548125))

(assert (= (and b!7547629 ((_ is Concat!28780) (regOne!40382 baseR!101))) b!7548126))

(assert (= (and b!7547629 ((_ is Star!19935) (regOne!40382 baseR!101))) b!7548127))

(assert (= (and b!7547629 ((_ is Union!19935) (regOne!40382 baseR!101))) b!7548128))

(declare-fun b!7548132 () Bool)

(declare-fun e!4496552 () Bool)

(declare-fun tp!2195733 () Bool)

(declare-fun tp!2195734 () Bool)

(assert (=> b!7548132 (= e!4496552 (and tp!2195733 tp!2195734))))

(declare-fun b!7548129 () Bool)

(assert (=> b!7548129 (= e!4496552 tp_is_empty!50225)))

(declare-fun b!7548131 () Bool)

(declare-fun tp!2195730 () Bool)

(assert (=> b!7548131 (= e!4496552 tp!2195730)))

(declare-fun b!7548130 () Bool)

(declare-fun tp!2195732 () Bool)

(declare-fun tp!2195731 () Bool)

(assert (=> b!7548130 (= e!4496552 (and tp!2195732 tp!2195731))))

(assert (=> b!7547629 (= tp!2195640 e!4496552)))

(assert (= (and b!7547629 ((_ is ElementMatch!19935) (regTwo!40382 baseR!101))) b!7548129))

(assert (= (and b!7547629 ((_ is Concat!28780) (regTwo!40382 baseR!101))) b!7548130))

(assert (= (and b!7547629 ((_ is Star!19935) (regTwo!40382 baseR!101))) b!7548131))

(assert (= (and b!7547629 ((_ is Union!19935) (regTwo!40382 baseR!101))) b!7548132))

(declare-fun b!7548137 () Bool)

(declare-fun e!4496555 () Bool)

(declare-fun tp!2195737 () Bool)

(assert (=> b!7548137 (= e!4496555 (and tp_is_empty!50225 tp!2195737))))

(assert (=> b!7547644 (= tp!2195637 e!4496555)))

(assert (= (and b!7547644 ((_ is Cons!72694) (t!387535 knownP!30))) b!7548137))

(declare-fun b!7548141 () Bool)

(declare-fun e!4496556 () Bool)

(declare-fun tp!2195741 () Bool)

(declare-fun tp!2195742 () Bool)

(assert (=> b!7548141 (= e!4496556 (and tp!2195741 tp!2195742))))

(declare-fun b!7548138 () Bool)

(assert (=> b!7548138 (= e!4496556 tp_is_empty!50225)))

(declare-fun b!7548140 () Bool)

(declare-fun tp!2195738 () Bool)

(assert (=> b!7548140 (= e!4496556 tp!2195738)))

(declare-fun b!7548139 () Bool)

(declare-fun tp!2195740 () Bool)

(declare-fun tp!2195739 () Bool)

(assert (=> b!7548139 (= e!4496556 (and tp!2195740 tp!2195739))))

(assert (=> b!7547643 (= tp!2195641 e!4496556)))

(assert (= (and b!7547643 ((_ is ElementMatch!19935) (reg!20264 baseR!101))) b!7548138))

(assert (= (and b!7547643 ((_ is Concat!28780) (reg!20264 baseR!101))) b!7548139))

(assert (= (and b!7547643 ((_ is Star!19935) (reg!20264 baseR!101))) b!7548140))

(assert (= (and b!7547643 ((_ is Union!19935) (reg!20264 baseR!101))) b!7548141))

(declare-fun b!7548145 () Bool)

(declare-fun e!4496557 () Bool)

(declare-fun tp!2195746 () Bool)

(declare-fun tp!2195747 () Bool)

(assert (=> b!7548145 (= e!4496557 (and tp!2195746 tp!2195747))))

(declare-fun b!7548142 () Bool)

(assert (=> b!7548142 (= e!4496557 tp_is_empty!50225)))

(declare-fun b!7548144 () Bool)

(declare-fun tp!2195743 () Bool)

(assert (=> b!7548144 (= e!4496557 tp!2195743)))

(declare-fun b!7548143 () Bool)

(declare-fun tp!2195745 () Bool)

(declare-fun tp!2195744 () Bool)

(assert (=> b!7548143 (= e!4496557 (and tp!2195745 tp!2195744))))

(assert (=> b!7547637 (= tp!2195645 e!4496557)))

(assert (= (and b!7547637 ((_ is ElementMatch!19935) (regOne!40383 baseR!101))) b!7548142))

(assert (= (and b!7547637 ((_ is Concat!28780) (regOne!40383 baseR!101))) b!7548143))

(assert (= (and b!7547637 ((_ is Star!19935) (regOne!40383 baseR!101))) b!7548144))

(assert (= (and b!7547637 ((_ is Union!19935) (regOne!40383 baseR!101))) b!7548145))

(declare-fun b!7548149 () Bool)

(declare-fun e!4496558 () Bool)

(declare-fun tp!2195751 () Bool)

(declare-fun tp!2195752 () Bool)

(assert (=> b!7548149 (= e!4496558 (and tp!2195751 tp!2195752))))

(declare-fun b!7548146 () Bool)

(assert (=> b!7548146 (= e!4496558 tp_is_empty!50225)))

(declare-fun b!7548148 () Bool)

(declare-fun tp!2195748 () Bool)

(assert (=> b!7548148 (= e!4496558 tp!2195748)))

(declare-fun b!7548147 () Bool)

(declare-fun tp!2195750 () Bool)

(declare-fun tp!2195749 () Bool)

(assert (=> b!7548147 (= e!4496558 (and tp!2195750 tp!2195749))))

(assert (=> b!7547637 (= tp!2195648 e!4496558)))

(assert (= (and b!7547637 ((_ is ElementMatch!19935) (regTwo!40383 baseR!101))) b!7548146))

(assert (= (and b!7547637 ((_ is Concat!28780) (regTwo!40383 baseR!101))) b!7548147))

(assert (= (and b!7547637 ((_ is Star!19935) (regTwo!40383 baseR!101))) b!7548148))

(assert (= (and b!7547637 ((_ is Union!19935) (regTwo!40383 baseR!101))) b!7548149))

(declare-fun b!7548153 () Bool)

(declare-fun e!4496559 () Bool)

(declare-fun tp!2195756 () Bool)

(declare-fun tp!2195757 () Bool)

(assert (=> b!7548153 (= e!4496559 (and tp!2195756 tp!2195757))))

(declare-fun b!7548150 () Bool)

(assert (=> b!7548150 (= e!4496559 tp_is_empty!50225)))

(declare-fun b!7548152 () Bool)

(declare-fun tp!2195753 () Bool)

(assert (=> b!7548152 (= e!4496559 tp!2195753)))

(declare-fun b!7548151 () Bool)

(declare-fun tp!2195755 () Bool)

(declare-fun tp!2195754 () Bool)

(assert (=> b!7548151 (= e!4496559 (and tp!2195755 tp!2195754))))

(assert (=> b!7547632 (= tp!2195643 e!4496559)))

(assert (= (and b!7547632 ((_ is ElementMatch!19935) (regOne!40383 r!24333))) b!7548150))

(assert (= (and b!7547632 ((_ is Concat!28780) (regOne!40383 r!24333))) b!7548151))

(assert (= (and b!7547632 ((_ is Star!19935) (regOne!40383 r!24333))) b!7548152))

(assert (= (and b!7547632 ((_ is Union!19935) (regOne!40383 r!24333))) b!7548153))

(declare-fun b!7548157 () Bool)

(declare-fun e!4496560 () Bool)

(declare-fun tp!2195761 () Bool)

(declare-fun tp!2195762 () Bool)

(assert (=> b!7548157 (= e!4496560 (and tp!2195761 tp!2195762))))

(declare-fun b!7548154 () Bool)

(assert (=> b!7548154 (= e!4496560 tp_is_empty!50225)))

(declare-fun b!7548156 () Bool)

(declare-fun tp!2195758 () Bool)

(assert (=> b!7548156 (= e!4496560 tp!2195758)))

(declare-fun b!7548155 () Bool)

(declare-fun tp!2195760 () Bool)

(declare-fun tp!2195759 () Bool)

(assert (=> b!7548155 (= e!4496560 (and tp!2195760 tp!2195759))))

(assert (=> b!7547632 (= tp!2195639 e!4496560)))

(assert (= (and b!7547632 ((_ is ElementMatch!19935) (regTwo!40383 r!24333))) b!7548154))

(assert (= (and b!7547632 ((_ is Concat!28780) (regTwo!40383 r!24333))) b!7548155))

(assert (= (and b!7547632 ((_ is Star!19935) (regTwo!40383 r!24333))) b!7548156))

(assert (= (and b!7547632 ((_ is Union!19935) (regTwo!40383 r!24333))) b!7548157))

(declare-fun b!7548158 () Bool)

(declare-fun e!4496561 () Bool)

(declare-fun tp!2195763 () Bool)

(assert (=> b!7548158 (= e!4496561 (and tp_is_empty!50225 tp!2195763))))

(assert (=> b!7547647 (= tp!2195644 e!4496561)))

(assert (= (and b!7547647 ((_ is Cons!72694) (t!387535 input!7874))) b!7548158))

(declare-fun b!7548162 () Bool)

(declare-fun e!4496562 () Bool)

(declare-fun tp!2195767 () Bool)

(declare-fun tp!2195768 () Bool)

(assert (=> b!7548162 (= e!4496562 (and tp!2195767 tp!2195768))))

(declare-fun b!7548159 () Bool)

(assert (=> b!7548159 (= e!4496562 tp_is_empty!50225)))

(declare-fun b!7548161 () Bool)

(declare-fun tp!2195764 () Bool)

(assert (=> b!7548161 (= e!4496562 tp!2195764)))

(declare-fun b!7548160 () Bool)

(declare-fun tp!2195766 () Bool)

(declare-fun tp!2195765 () Bool)

(assert (=> b!7548160 (= e!4496562 (and tp!2195766 tp!2195765))))

(assert (=> b!7547641 (= tp!2195638 e!4496562)))

(assert (= (and b!7547641 ((_ is ElementMatch!19935) (regOne!40382 r!24333))) b!7548159))

(assert (= (and b!7547641 ((_ is Concat!28780) (regOne!40382 r!24333))) b!7548160))

(assert (= (and b!7547641 ((_ is Star!19935) (regOne!40382 r!24333))) b!7548161))

(assert (= (and b!7547641 ((_ is Union!19935) (regOne!40382 r!24333))) b!7548162))

(declare-fun b!7548166 () Bool)

(declare-fun e!4496563 () Bool)

(declare-fun tp!2195772 () Bool)

(declare-fun tp!2195773 () Bool)

(assert (=> b!7548166 (= e!4496563 (and tp!2195772 tp!2195773))))

(declare-fun b!7548163 () Bool)

(assert (=> b!7548163 (= e!4496563 tp_is_empty!50225)))

(declare-fun b!7548165 () Bool)

(declare-fun tp!2195769 () Bool)

(assert (=> b!7548165 (= e!4496563 tp!2195769)))

(declare-fun b!7548164 () Bool)

(declare-fun tp!2195771 () Bool)

(declare-fun tp!2195770 () Bool)

(assert (=> b!7548164 (= e!4496563 (and tp!2195771 tp!2195770))))

(assert (=> b!7547641 (= tp!2195646 e!4496563)))

(assert (= (and b!7547641 ((_ is ElementMatch!19935) (regTwo!40382 r!24333))) b!7548163))

(assert (= (and b!7547641 ((_ is Concat!28780) (regTwo!40382 r!24333))) b!7548164))

(assert (= (and b!7547641 ((_ is Star!19935) (regTwo!40382 r!24333))) b!7548165))

(assert (= (and b!7547641 ((_ is Union!19935) (regTwo!40382 r!24333))) b!7548166))

(declare-fun b!7548167 () Bool)

(declare-fun e!4496564 () Bool)

(declare-fun tp!2195774 () Bool)

(assert (=> b!7548167 (= e!4496564 (and tp_is_empty!50225 tp!2195774))))

(assert (=> b!7547636 (= tp!2195649 e!4496564)))

(assert (= (and b!7547636 ((_ is Cons!72694) (t!387535 testedP!423))) b!7548167))

(declare-fun b!7548171 () Bool)

(declare-fun e!4496565 () Bool)

(declare-fun tp!2195778 () Bool)

(declare-fun tp!2195779 () Bool)

(assert (=> b!7548171 (= e!4496565 (and tp!2195778 tp!2195779))))

(declare-fun b!7548168 () Bool)

(assert (=> b!7548168 (= e!4496565 tp_is_empty!50225)))

(declare-fun b!7548170 () Bool)

(declare-fun tp!2195775 () Bool)

(assert (=> b!7548170 (= e!4496565 tp!2195775)))

(declare-fun b!7548169 () Bool)

(declare-fun tp!2195777 () Bool)

(declare-fun tp!2195776 () Bool)

(assert (=> b!7548169 (= e!4496565 (and tp!2195777 tp!2195776))))

(assert (=> b!7547630 (= tp!2195642 e!4496565)))

(assert (= (and b!7547630 ((_ is ElementMatch!19935) (reg!20264 r!24333))) b!7548168))

(assert (= (and b!7547630 ((_ is Concat!28780) (reg!20264 r!24333))) b!7548169))

(assert (= (and b!7547630 ((_ is Star!19935) (reg!20264 r!24333))) b!7548170))

(assert (= (and b!7547630 ((_ is Union!19935) (reg!20264 r!24333))) b!7548171))

(check-sat (not b!7548148) (not b!7548156) (not bm!692130) (not b!7548089) (not b!7548149) (not b!7548152) (not b!7548145) (not d!2312383) (not b!7548155) (not b!7547891) (not b!7548050) (not d!2312427) (not b!7548108) (not b!7547706) (not d!2312389) (not d!2312443) (not b!7548130) (not b!7548099) (not b!7548143) (not b!7548144) (not b!7547694) (not b!7547827) (not b!7548105) (not b!7547857) (not b!7548104) (not b!7548162) (not b!7548128) (not bm!692119) (not b!7547707) (not b!7548151) (not b!7548161) (not d!2312429) (not b!7548153) (not d!2312365) (not b!7547858) (not b!7548088) (not b!7547815) (not b!7548137) (not b!7547833) (not d!2312411) (not b!7547809) (not b!7548167) (not b!7548164) (not b!7548102) (not b!7547828) (not b!7548064) (not d!2312435) (not b!7548126) (not b!7548139) (not d!2312423) (not b!7548131) (not b!7548111) (not b!7547892) (not b!7548132) (not b!7548166) (not b!7548127) (not b!7547816) (not bm!692129) (not d!2312371) (not b!7547886) tp_is_empty!50225 (not b!7548169) (not b!7547727) (not b!7547810) (not b!7547695) (not d!2312425) (not b!7548147) (not bm!692123) (not b!7548109) (not b!7548103) (not b!7547729) (not b!7548165) (not b!7548160) (not b!7548158) (not d!2312433) (not b!7547885) (not b!7548140) (not b!7547696) (not b!7547859) (not b!7547834) (not b!7548141) (not bm!692157) (not b!7547670) (not b!7548170) (not b!7547850) (not bm!692160) (not b!7548171) (not b!7548114) (not d!2312353) (not d!2312343) (not d!2312439) (not b!7547715) (not b!7548157) (not b!7548110) (not bm!692120) (not d!2312361) (not d!2312393) (not bm!692122) (not d!2312395) (not b!7547811) (not b!7547829) (not b!7547708) (not b!7547813) (not b!7547831) (not b!7547987) (not b!7548065) (not b!7548040))
(check-sat)
