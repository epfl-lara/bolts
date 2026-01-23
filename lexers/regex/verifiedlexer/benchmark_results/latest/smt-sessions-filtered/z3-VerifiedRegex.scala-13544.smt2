; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728928 () Bool)

(assert start!728928)

(declare-fun b!7536143 () Bool)

(declare-fun e!4490679 () Bool)

(declare-fun tp_is_empty!50121 () Bool)

(declare-fun tp!2191790 () Bool)

(assert (=> b!7536143 (= e!4490679 (and tp_is_empty!50121 tp!2191790))))

(declare-fun b!7536144 () Bool)

(declare-fun res!3020054 () Bool)

(declare-fun e!4490682 () Bool)

(assert (=> b!7536144 (=> res!3020054 e!4490682)))

(declare-datatypes ((C!40092 0))(
  ( (C!40093 (val!30486 Int)) )
))
(declare-datatypes ((Regex!19883 0))(
  ( (ElementMatch!19883 (c!1391558 C!40092)) (Concat!28728 (regOne!40278 Regex!19883) (regTwo!40278 Regex!19883)) (EmptyExpr!19883) (Star!19883 (reg!20212 Regex!19883)) (EmptyLang!19883) (Union!19883 (regOne!40279 Regex!19883) (regTwo!40279 Regex!19883)) )
))
(declare-fun r!24333 () Regex!19883)

(declare-fun lostCause!1675 (Regex!19883) Bool)

(assert (=> b!7536144 (= res!3020054 (lostCause!1675 r!24333))))

(declare-fun b!7536145 () Bool)

(declare-fun e!4490681 () Bool)

(declare-fun e!4490678 () Bool)

(assert (=> b!7536145 (= e!4490681 e!4490678)))

(declare-fun res!3020056 () Bool)

(assert (=> b!7536145 (=> (not res!3020056) (not e!4490678))))

(declare-fun lt!2641823 () Int)

(declare-fun lt!2641825 () Int)

(assert (=> b!7536145 (= res!3020056 (>= lt!2641823 lt!2641825))))

(declare-datatypes ((List!72766 0))(
  ( (Nil!72642) (Cons!72642 (h!79090 C!40092) (t!387473 List!72766)) )
))
(declare-fun testedP!423 () List!72766)

(declare-fun size!42379 (List!72766) Int)

(assert (=> b!7536145 (= lt!2641825 (size!42379 testedP!423))))

(declare-fun knownP!30 () List!72766)

(assert (=> b!7536145 (= lt!2641823 (size!42379 knownP!30))))

(declare-fun b!7536146 () Bool)

(assert (=> b!7536146 (= e!4490678 (not e!4490682))))

(declare-fun res!3020062 () Bool)

(assert (=> b!7536146 (=> res!3020062 e!4490682)))

(declare-fun matchR!9485 (Regex!19883 List!72766) Bool)

(declare-fun getSuffix!3569 (List!72766 List!72766) List!72766)

(assert (=> b!7536146 (= res!3020062 (not (matchR!9485 r!24333 (getSuffix!3569 knownP!30 testedP!423))))))

(declare-fun isPrefix!6089 (List!72766 List!72766) Bool)

(assert (=> b!7536146 (isPrefix!6089 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72766)

(declare-datatypes ((Unit!166704 0))(
  ( (Unit!166705) )
))
(declare-fun lt!2641826 () Unit!166704)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!839 (List!72766 List!72766 List!72766) Unit!166704)

(assert (=> b!7536146 (= lt!2641826 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!839 knownP!30 testedP!423 input!7874))))

(declare-fun b!7536147 () Bool)

(declare-fun e!4490683 () Bool)

(declare-fun tp!2191801 () Bool)

(declare-fun tp!2191794 () Bool)

(assert (=> b!7536147 (= e!4490683 (and tp!2191801 tp!2191794))))

(declare-fun b!7536148 () Bool)

(assert (=> b!7536148 (= e!4490683 tp_is_empty!50121)))

(declare-fun b!7536149 () Bool)

(declare-fun e!4490676 () Bool)

(declare-fun tp!2191799 () Bool)

(assert (=> b!7536149 (= e!4490676 (and tp_is_empty!50121 tp!2191799))))

(declare-fun b!7536150 () Bool)

(declare-fun e!4490677 () Bool)

(declare-fun tp!2191796 () Bool)

(declare-fun tp!2191791 () Bool)

(assert (=> b!7536150 (= e!4490677 (and tp!2191796 tp!2191791))))

(declare-fun b!7536151 () Bool)

(declare-fun res!3020060 () Bool)

(assert (=> b!7536151 (=> res!3020060 e!4490682)))

(assert (=> b!7536151 (= res!3020060 (= lt!2641825 lt!2641823))))

(declare-fun b!7536152 () Bool)

(declare-fun tp!2191789 () Bool)

(assert (=> b!7536152 (= e!4490683 tp!2191789)))

(declare-fun b!7536153 () Bool)

(declare-fun res!3020052 () Bool)

(assert (=> b!7536153 (=> res!3020052 e!4490682)))

(assert (=> b!7536153 (= res!3020052 (>= lt!2641825 (size!42379 input!7874)))))

(declare-fun b!7536142 () Bool)

(assert (=> b!7536142 (= e!4490677 tp_is_empty!50121)))

(declare-fun res!3020061 () Bool)

(assert (=> start!728928 (=> (not res!3020061) (not e!4490681))))

(declare-fun baseR!101 () Regex!19883)

(declare-fun validRegex!10311 (Regex!19883) Bool)

(assert (=> start!728928 (= res!3020061 (validRegex!10311 baseR!101))))

(assert (=> start!728928 e!4490681))

(assert (=> start!728928 e!4490677))

(assert (=> start!728928 e!4490679))

(assert (=> start!728928 e!4490676))

(declare-fun e!4490680 () Bool)

(assert (=> start!728928 e!4490680))

(assert (=> start!728928 e!4490683))

(declare-fun b!7536154 () Bool)

(assert (=> b!7536154 (= e!4490682 true)))

(declare-fun lt!2641827 () C!40092)

(declare-fun lt!2641822 () List!72766)

(declare-fun derivative!415 (Regex!19883 List!72766) Regex!19883)

(declare-fun derivativeStep!5673 (Regex!19883 C!40092) Regex!19883)

(assert (=> b!7536154 (= (derivative!415 baseR!101 lt!2641822) (derivativeStep!5673 r!24333 lt!2641827))))

(declare-fun lt!2641824 () Unit!166704)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!121 (Regex!19883 Regex!19883 List!72766 C!40092) Unit!166704)

(assert (=> b!7536154 (= lt!2641824 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!121 baseR!101 r!24333 testedP!423 lt!2641827))))

(assert (=> b!7536154 (isPrefix!6089 lt!2641822 input!7874)))

(declare-fun lt!2641828 () Unit!166704)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1154 (List!72766 List!72766) Unit!166704)

(assert (=> b!7536154 (= lt!2641828 (lemmaAddHeadSuffixToPrefixStillPrefix!1154 testedP!423 input!7874))))

(declare-fun ++!17400 (List!72766 List!72766) List!72766)

(assert (=> b!7536154 (= lt!2641822 (++!17400 testedP!423 (Cons!72642 lt!2641827 Nil!72642)))))

(declare-fun head!15473 (List!72766) C!40092)

(assert (=> b!7536154 (= lt!2641827 (head!15473 (getSuffix!3569 input!7874 testedP!423)))))

(declare-fun b!7536155 () Bool)

(declare-fun res!3020053 () Bool)

(assert (=> b!7536155 (=> (not res!3020053) (not e!4490681))))

(assert (=> b!7536155 (= res!3020053 (isPrefix!6089 knownP!30 input!7874))))

(declare-fun b!7536156 () Bool)

(declare-fun res!3020057 () Bool)

(assert (=> b!7536156 (=> (not res!3020057) (not e!4490681))))

(assert (=> b!7536156 (= res!3020057 (validRegex!10311 r!24333))))

(declare-fun b!7536157 () Bool)

(declare-fun tp!2191798 () Bool)

(assert (=> b!7536157 (= e!4490677 tp!2191798)))

(declare-fun b!7536158 () Bool)

(declare-fun res!3020055 () Bool)

(assert (=> b!7536158 (=> (not res!3020055) (not e!4490678))))

(assert (=> b!7536158 (= res!3020055 (matchR!9485 baseR!101 knownP!30))))

(declare-fun b!7536159 () Bool)

(declare-fun res!3020059 () Bool)

(assert (=> b!7536159 (=> res!3020059 e!4490682)))

(assert (=> b!7536159 (= res!3020059 (not (= (derivative!415 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7536160 () Bool)

(declare-fun res!3020058 () Bool)

(assert (=> b!7536160 (=> (not res!3020058) (not e!4490681))))

(assert (=> b!7536160 (= res!3020058 (isPrefix!6089 testedP!423 input!7874))))

(declare-fun b!7536161 () Bool)

(declare-fun tp!2191797 () Bool)

(assert (=> b!7536161 (= e!4490680 (and tp_is_empty!50121 tp!2191797))))

(declare-fun b!7536162 () Bool)

(declare-fun tp!2191792 () Bool)

(declare-fun tp!2191795 () Bool)

(assert (=> b!7536162 (= e!4490683 (and tp!2191792 tp!2191795))))

(declare-fun b!7536163 () Bool)

(declare-fun tp!2191800 () Bool)

(declare-fun tp!2191793 () Bool)

(assert (=> b!7536163 (= e!4490677 (and tp!2191800 tp!2191793))))

(assert (= (and start!728928 res!3020061) b!7536156))

(assert (= (and b!7536156 res!3020057) b!7536160))

(assert (= (and b!7536160 res!3020058) b!7536155))

(assert (= (and b!7536155 res!3020053) b!7536145))

(assert (= (and b!7536145 res!3020056) b!7536158))

(assert (= (and b!7536158 res!3020055) b!7536146))

(assert (= (and b!7536146 (not res!3020062)) b!7536159))

(assert (= (and b!7536159 (not res!3020059)) b!7536144))

(assert (= (and b!7536144 (not res!3020054)) b!7536151))

(assert (= (and b!7536151 (not res!3020060)) b!7536153))

(assert (= (and b!7536153 (not res!3020052)) b!7536154))

(get-info :version)

(assert (= (and start!728928 ((_ is ElementMatch!19883) baseR!101)) b!7536142))

(assert (= (and start!728928 ((_ is Concat!28728) baseR!101)) b!7536163))

(assert (= (and start!728928 ((_ is Star!19883) baseR!101)) b!7536157))

(assert (= (and start!728928 ((_ is Union!19883) baseR!101)) b!7536150))

(assert (= (and start!728928 ((_ is Cons!72642) input!7874)) b!7536143))

(assert (= (and start!728928 ((_ is Cons!72642) knownP!30)) b!7536149))

(assert (= (and start!728928 ((_ is Cons!72642) testedP!423)) b!7536161))

(assert (= (and start!728928 ((_ is ElementMatch!19883) r!24333)) b!7536148))

(assert (= (and start!728928 ((_ is Concat!28728) r!24333)) b!7536147))

(assert (= (and start!728928 ((_ is Star!19883) r!24333)) b!7536152))

(assert (= (and start!728928 ((_ is Union!19883) r!24333)) b!7536162))

(declare-fun m!8106842 () Bool)

(assert (=> b!7536155 m!8106842))

(declare-fun m!8106844 () Bool)

(assert (=> b!7536146 m!8106844))

(assert (=> b!7536146 m!8106844))

(declare-fun m!8106846 () Bool)

(assert (=> b!7536146 m!8106846))

(declare-fun m!8106848 () Bool)

(assert (=> b!7536146 m!8106848))

(declare-fun m!8106850 () Bool)

(assert (=> b!7536146 m!8106850))

(declare-fun m!8106852 () Bool)

(assert (=> b!7536154 m!8106852))

(declare-fun m!8106854 () Bool)

(assert (=> b!7536154 m!8106854))

(declare-fun m!8106856 () Bool)

(assert (=> b!7536154 m!8106856))

(declare-fun m!8106858 () Bool)

(assert (=> b!7536154 m!8106858))

(assert (=> b!7536154 m!8106856))

(declare-fun m!8106860 () Bool)

(assert (=> b!7536154 m!8106860))

(declare-fun m!8106862 () Bool)

(assert (=> b!7536154 m!8106862))

(declare-fun m!8106864 () Bool)

(assert (=> b!7536154 m!8106864))

(declare-fun m!8106866 () Bool)

(assert (=> b!7536154 m!8106866))

(declare-fun m!8106868 () Bool)

(assert (=> b!7536156 m!8106868))

(declare-fun m!8106870 () Bool)

(assert (=> b!7536159 m!8106870))

(declare-fun m!8106872 () Bool)

(assert (=> b!7536160 m!8106872))

(declare-fun m!8106874 () Bool)

(assert (=> b!7536153 m!8106874))

(declare-fun m!8106876 () Bool)

(assert (=> b!7536144 m!8106876))

(declare-fun m!8106878 () Bool)

(assert (=> b!7536145 m!8106878))

(declare-fun m!8106880 () Bool)

(assert (=> b!7536145 m!8106880))

(declare-fun m!8106882 () Bool)

(assert (=> start!728928 m!8106882))

(declare-fun m!8106884 () Bool)

(assert (=> b!7536158 m!8106884))

(check-sat (not b!7536146) (not b!7536145) tp_is_empty!50121 (not b!7536153) (not start!728928) (not b!7536155) (not b!7536154) (not b!7536152) (not b!7536157) (not b!7536150) (not b!7536161) (not b!7536159) (not b!7536162) (not b!7536144) (not b!7536158) (not b!7536149) (not b!7536143) (not b!7536160) (not b!7536156) (not b!7536147) (not b!7536163))
(check-sat)
