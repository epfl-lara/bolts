; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730634 () Bool)

(assert start!730634)

(declare-fun b!7561958 () Bool)

(declare-fun e!4502940 () Bool)

(declare-fun tp!2202214 () Bool)

(assert (=> b!7561958 (= e!4502940 tp!2202214)))

(declare-fun b!7561959 () Bool)

(declare-fun e!4502939 () Bool)

(declare-fun e!4502932 () Bool)

(assert (=> b!7561959 (= e!4502939 e!4502932)))

(declare-fun res!3030005 () Bool)

(assert (=> b!7561959 (=> res!3030005 e!4502932)))

(declare-datatypes ((C!40286 0))(
  ( (C!40287 (val!30583 Int)) )
))
(declare-datatypes ((List!72863 0))(
  ( (Nil!72739) (Cons!72739 (h!79187 C!40286) (t!387592 List!72863)) )
))
(declare-fun lt!2649172 () List!72863)

(declare-fun lt!2649175 () C!40286)

(declare-fun lt!2649173 () List!72863)

(declare-fun $colon$colon!3408 (List!72863 C!40286) List!72863)

(assert (=> b!7561959 (= res!3030005 (not (= lt!2649173 ($colon$colon!3408 lt!2649172 lt!2649175))))))

(declare-fun tail!15098 (List!72863) List!72863)

(assert (=> b!7561959 (= lt!2649172 (tail!15098 lt!2649173))))

(declare-fun b!7561960 () Bool)

(declare-fun tp_is_empty!50315 () Bool)

(assert (=> b!7561960 (= e!4502940 tp_is_empty!50315)))

(declare-fun b!7561961 () Bool)

(declare-fun e!4502929 () Bool)

(declare-fun tp!2202220 () Bool)

(assert (=> b!7561961 (= e!4502929 (and tp_is_empty!50315 tp!2202220))))

(declare-fun b!7561962 () Bool)

(declare-fun e!4502935 () Bool)

(declare-fun e!4502937 () Bool)

(assert (=> b!7561962 (= e!4502935 e!4502937)))

(declare-fun res!3030006 () Bool)

(assert (=> b!7561962 (=> (not res!3030006) (not e!4502937))))

(declare-fun lt!2649179 () Int)

(declare-fun lt!2649190 () Int)

(assert (=> b!7561962 (= res!3030006 (>= lt!2649179 lt!2649190))))

(declare-fun testedP!423 () List!72863)

(declare-fun size!42476 (List!72863) Int)

(assert (=> b!7561962 (= lt!2649190 (size!42476 testedP!423))))

(declare-fun knownP!30 () List!72863)

(assert (=> b!7561962 (= lt!2649179 (size!42476 knownP!30))))

(declare-fun b!7561963 () Bool)

(declare-fun tp!2202218 () Bool)

(declare-fun tp!2202212 () Bool)

(assert (=> b!7561963 (= e!4502940 (and tp!2202218 tp!2202212))))

(declare-fun b!7561965 () Bool)

(declare-fun e!4502926 () Bool)

(declare-fun tp!2202210 () Bool)

(declare-fun tp!2202211 () Bool)

(assert (=> b!7561965 (= e!4502926 (and tp!2202210 tp!2202211))))

(declare-fun b!7561966 () Bool)

(declare-fun res!3030018 () Bool)

(assert (=> b!7561966 (=> (not res!3030018) (not e!4502935))))

(declare-fun input!7874 () List!72863)

(declare-fun isPrefix!6186 (List!72863 List!72863) Bool)

(assert (=> b!7561966 (= res!3030018 (isPrefix!6186 testedP!423 input!7874))))

(declare-fun b!7561967 () Bool)

(declare-fun e!4502933 () Bool)

(assert (=> b!7561967 (= e!4502932 e!4502933)))

(declare-fun res!3030012 () Bool)

(assert (=> b!7561967 (=> res!3030012 e!4502933)))

(declare-fun lt!2649169 () List!72863)

(assert (=> b!7561967 (= res!3030012 (not (= lt!2649169 knownP!30)))))

(declare-fun lt!2649189 () List!72863)

(declare-fun lt!2649181 () List!72863)

(declare-fun ++!17484 (List!72863 List!72863) List!72863)

(assert (=> b!7561967 (= lt!2649169 (++!17484 lt!2649189 lt!2649181))))

(declare-fun b!7561968 () Bool)

(declare-fun res!3030013 () Bool)

(assert (=> b!7561968 (=> (not res!3030013) (not e!4502937))))

(declare-datatypes ((Regex!19980 0))(
  ( (ElementMatch!19980 (c!1395261 C!40286)) (Concat!28825 (regOne!40472 Regex!19980) (regTwo!40472 Regex!19980)) (EmptyExpr!19980) (Star!19980 (reg!20309 Regex!19980)) (EmptyLang!19980) (Union!19980 (regOne!40473 Regex!19980) (regTwo!40473 Regex!19980)) )
))
(declare-fun baseR!101 () Regex!19980)

(declare-fun matchR!9582 (Regex!19980 List!72863) Bool)

(assert (=> b!7561968 (= res!3030013 (matchR!9582 baseR!101 knownP!30))))

(declare-fun b!7561969 () Bool)

(declare-fun e!4502934 () Bool)

(assert (=> b!7561969 (= e!4502937 (not e!4502934))))

(declare-fun res!3030009 () Bool)

(assert (=> b!7561969 (=> res!3030009 e!4502934)))

(declare-fun r!24333 () Regex!19980)

(assert (=> b!7561969 (= res!3030009 (not (matchR!9582 r!24333 lt!2649173)))))

(declare-fun getSuffix!3664 (List!72863 List!72863) List!72863)

(assert (=> b!7561969 (= lt!2649173 (getSuffix!3664 knownP!30 testedP!423))))

(assert (=> b!7561969 (isPrefix!6186 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166894 0))(
  ( (Unit!166895) )
))
(declare-fun lt!2649186 () Unit!166894)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!934 (List!72863 List!72863 List!72863) Unit!166894)

(assert (=> b!7561969 (= lt!2649186 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!934 knownP!30 testedP!423 input!7874))))

(declare-fun b!7561970 () Bool)

(declare-fun res!3030001 () Bool)

(declare-fun e!4502936 () Bool)

(assert (=> b!7561970 (=> res!3030001 e!4502936)))

(declare-fun lt!2649187 () List!72863)

(assert (=> b!7561970 (= res!3030001 (not (= (++!17484 testedP!423 lt!2649187) input!7874)))))

(declare-fun b!7561971 () Bool)

(declare-fun tp!2202215 () Bool)

(declare-fun tp!2202222 () Bool)

(assert (=> b!7561971 (= e!4502940 (and tp!2202215 tp!2202222))))

(declare-fun b!7561972 () Bool)

(declare-fun e!4502927 () Bool)

(assert (=> b!7561972 (= e!4502927 e!4502936)))

(declare-fun res!3030004 () Bool)

(assert (=> b!7561972 (=> res!3030004 e!4502936)))

(declare-fun lt!2649184 () List!72863)

(assert (=> b!7561972 (= res!3030004 (not (= lt!2649184 input!7874)))))

(declare-fun lt!2649174 () List!72863)

(declare-fun lt!2649168 () List!72863)

(assert (=> b!7561972 (= lt!2649184 (++!17484 lt!2649174 lt!2649168))))

(assert (=> b!7561972 (= lt!2649174 (++!17484 testedP!423 lt!2649173))))

(declare-fun b!7561973 () Bool)

(declare-fun tp!2202221 () Bool)

(assert (=> b!7561973 (= e!4502926 tp!2202221)))

(declare-fun b!7561974 () Bool)

(declare-fun e!4502930 () Bool)

(assert (=> b!7561974 (= e!4502930 e!4502939)))

(declare-fun res!3029997 () Bool)

(assert (=> b!7561974 (=> res!3029997 e!4502939)))

(declare-fun head!15558 (List!72863) C!40286)

(assert (=> b!7561974 (= res!3029997 (not (= (head!15558 lt!2649173) lt!2649175)))))

(declare-fun lt!2649192 () List!72863)

(assert (=> b!7561974 (= lt!2649192 lt!2649187)))

(declare-fun lt!2649182 () Unit!166894)

(declare-fun lemmaSamePrefixThenSameSuffix!2886 (List!72863 List!72863 List!72863 List!72863 List!72863) Unit!166894)

(assert (=> b!7561974 (= lt!2649182 (lemmaSamePrefixThenSameSuffix!2886 testedP!423 lt!2649192 testedP!423 lt!2649187 input!7874))))

(declare-fun b!7561975 () Bool)

(assert (=> b!7561975 (= e!4502936 e!4502930)))

(declare-fun res!3030000 () Bool)

(assert (=> b!7561975 (=> res!3030000 e!4502930)))

(declare-fun lt!2649178 () List!72863)

(assert (=> b!7561975 (= res!3030000 (not (= lt!2649178 input!7874)))))

(assert (=> b!7561975 (= lt!2649184 lt!2649178)))

(assert (=> b!7561975 (= lt!2649178 (++!17484 testedP!423 lt!2649192))))

(assert (=> b!7561975 (= lt!2649192 (++!17484 lt!2649173 lt!2649168))))

(declare-fun lt!2649170 () Unit!166894)

(declare-fun lemmaConcatAssociativity!3119 (List!72863 List!72863 List!72863) Unit!166894)

(assert (=> b!7561975 (= lt!2649170 (lemmaConcatAssociativity!3119 testedP!423 lt!2649173 lt!2649168))))

(declare-fun b!7561976 () Bool)

(declare-fun res!3030010 () Bool)

(declare-fun e!4502938 () Bool)

(assert (=> b!7561976 (=> res!3030010 e!4502938)))

(assert (=> b!7561976 (= res!3030010 (< lt!2649179 (size!42476 lt!2649189)))))

(declare-fun b!7561977 () Bool)

(declare-fun res!3030017 () Bool)

(assert (=> b!7561977 (=> (not res!3030017) (not e!4502935))))

(assert (=> b!7561977 (= res!3030017 (isPrefix!6186 knownP!30 input!7874))))

(declare-fun b!7561978 () Bool)

(declare-fun res!3030015 () Bool)

(assert (=> b!7561978 (=> res!3030015 e!4502938)))

(declare-fun lt!2649188 () Regex!19980)

(declare-fun validRegex!10408 (Regex!19980) Bool)

(assert (=> b!7561978 (= res!3030015 (not (validRegex!10408 lt!2649188)))))

(declare-fun b!7561979 () Bool)

(assert (=> b!7561979 (= e!4502926 tp_is_empty!50315)))

(declare-fun b!7561980 () Bool)

(declare-fun res!3029998 () Bool)

(assert (=> b!7561980 (=> res!3029998 e!4502934)))

(assert (=> b!7561980 (= res!3029998 (= lt!2649190 lt!2649179))))

(declare-fun b!7561981 () Bool)

(declare-fun res!3030011 () Bool)

(assert (=> b!7561981 (=> (not res!3030011) (not e!4502935))))

(assert (=> b!7561981 (= res!3030011 (validRegex!10408 r!24333))))

(declare-fun b!7561982 () Bool)

(assert (=> b!7561982 (= e!4502933 e!4502938)))

(declare-fun res!3030002 () Bool)

(assert (=> b!7561982 (=> res!3030002 e!4502938)))

(assert (=> b!7561982 (= res!3030002 (not (= lt!2649172 lt!2649181)))))

(declare-fun lt!2649176 () List!72863)

(assert (=> b!7561982 (= lt!2649176 lt!2649173)))

(declare-fun lt!2649180 () Unit!166894)

(assert (=> b!7561982 (= lt!2649180 (lemmaSamePrefixThenSameSuffix!2886 testedP!423 lt!2649176 testedP!423 lt!2649173 knownP!30))))

(assert (=> b!7561982 (= lt!2649169 (++!17484 testedP!423 lt!2649176))))

(declare-fun lt!2649177 () List!72863)

(assert (=> b!7561982 (= lt!2649176 (++!17484 lt!2649177 lt!2649181))))

(declare-fun lt!2649171 () Unit!166894)

(assert (=> b!7561982 (= lt!2649171 (lemmaConcatAssociativity!3119 testedP!423 lt!2649177 lt!2649181))))

(declare-fun res!3030016 () Bool)

(assert (=> start!730634 (=> (not res!3030016) (not e!4502935))))

(assert (=> start!730634 (= res!3030016 (validRegex!10408 baseR!101))))

(assert (=> start!730634 e!4502935))

(assert (=> start!730634 e!4502940))

(assert (=> start!730634 e!4502929))

(declare-fun e!4502928 () Bool)

(assert (=> start!730634 e!4502928))

(declare-fun e!4502931 () Bool)

(assert (=> start!730634 e!4502931))

(assert (=> start!730634 e!4502926))

(declare-fun b!7561964 () Bool)

(declare-fun tp!2202219 () Bool)

(assert (=> b!7561964 (= e!4502931 (and tp_is_empty!50315 tp!2202219))))

(declare-fun b!7561983 () Bool)

(declare-fun res!3030008 () Bool)

(assert (=> b!7561983 (=> res!3030008 e!4502934)))

(declare-fun lostCause!1768 (Regex!19980) Bool)

(assert (=> b!7561983 (= res!3030008 (lostCause!1768 r!24333))))

(declare-fun b!7561984 () Bool)

(declare-fun res!3030003 () Bool)

(assert (=> b!7561984 (=> res!3030003 e!4502932)))

(assert (=> b!7561984 (= res!3030003 (not (= lt!2649174 knownP!30)))))

(declare-fun b!7561985 () Bool)

(declare-fun res!3030014 () Bool)

(assert (=> b!7561985 (=> res!3030014 e!4502934)))

(assert (=> b!7561985 (= res!3030014 (>= lt!2649190 (size!42476 input!7874)))))

(declare-fun b!7561986 () Bool)

(assert (=> b!7561986 (= e!4502938 (matchR!9582 lt!2649188 lt!2649181))))

(declare-fun b!7561987 () Bool)

(declare-fun tp!2202213 () Bool)

(assert (=> b!7561987 (= e!4502928 (and tp_is_empty!50315 tp!2202213))))

(declare-fun b!7561988 () Bool)

(assert (=> b!7561988 (= e!4502934 e!4502927)))

(declare-fun res!3030007 () Bool)

(assert (=> b!7561988 (=> res!3030007 e!4502927)))

(assert (=> b!7561988 (= res!3030007 (not (= (++!17484 knownP!30 lt!2649168) input!7874)))))

(assert (=> b!7561988 (= lt!2649168 (getSuffix!3664 input!7874 knownP!30))))

(assert (=> b!7561988 (= lt!2649181 (getSuffix!3664 knownP!30 lt!2649189))))

(assert (=> b!7561988 (isPrefix!6186 lt!2649189 knownP!30)))

(declare-fun lt!2649191 () Unit!166894)

(assert (=> b!7561988 (= lt!2649191 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!934 knownP!30 lt!2649189 input!7874))))

(declare-fun lt!2649185 () Regex!19980)

(assert (=> b!7561988 (= lt!2649185 lt!2649188)))

(declare-fun derivativeStep!5758 (Regex!19980 C!40286) Regex!19980)

(assert (=> b!7561988 (= lt!2649188 (derivativeStep!5758 r!24333 lt!2649175))))

(declare-fun derivative!510 (Regex!19980 List!72863) Regex!19980)

(assert (=> b!7561988 (= lt!2649185 (derivative!510 baseR!101 lt!2649189))))

(declare-fun lt!2649183 () Unit!166894)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!202 (Regex!19980 Regex!19980 List!72863 C!40286) Unit!166894)

(assert (=> b!7561988 (= lt!2649183 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!202 baseR!101 r!24333 testedP!423 lt!2649175))))

(assert (=> b!7561988 (isPrefix!6186 lt!2649189 input!7874)))

(declare-fun lt!2649167 () Unit!166894)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1235 (List!72863 List!72863) Unit!166894)

(assert (=> b!7561988 (= lt!2649167 (lemmaAddHeadSuffixToPrefixStillPrefix!1235 testedP!423 input!7874))))

(assert (=> b!7561988 (= lt!2649189 (++!17484 testedP!423 lt!2649177))))

(assert (=> b!7561988 (= lt!2649177 (Cons!72739 lt!2649175 Nil!72739))))

(assert (=> b!7561988 (= lt!2649175 (head!15558 lt!2649187))))

(assert (=> b!7561988 (= lt!2649187 (getSuffix!3664 input!7874 testedP!423))))

(declare-fun b!7561989 () Bool)

(declare-fun res!3029999 () Bool)

(assert (=> b!7561989 (=> res!3029999 e!4502934)))

(assert (=> b!7561989 (= res!3029999 (not (= (derivative!510 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7561990 () Bool)

(declare-fun tp!2202217 () Bool)

(declare-fun tp!2202216 () Bool)

(assert (=> b!7561990 (= e!4502926 (and tp!2202217 tp!2202216))))

(assert (= (and start!730634 res!3030016) b!7561981))

(assert (= (and b!7561981 res!3030011) b!7561966))

(assert (= (and b!7561966 res!3030018) b!7561977))

(assert (= (and b!7561977 res!3030017) b!7561962))

(assert (= (and b!7561962 res!3030006) b!7561968))

(assert (= (and b!7561968 res!3030013) b!7561969))

(assert (= (and b!7561969 (not res!3030009)) b!7561989))

(assert (= (and b!7561989 (not res!3029999)) b!7561983))

(assert (= (and b!7561983 (not res!3030008)) b!7561980))

(assert (= (and b!7561980 (not res!3029998)) b!7561985))

(assert (= (and b!7561985 (not res!3030014)) b!7561988))

(assert (= (and b!7561988 (not res!3030007)) b!7561972))

(assert (= (and b!7561972 (not res!3030004)) b!7561970))

(assert (= (and b!7561970 (not res!3030001)) b!7561975))

(assert (= (and b!7561975 (not res!3030000)) b!7561974))

(assert (= (and b!7561974 (not res!3029997)) b!7561959))

(assert (= (and b!7561959 (not res!3030005)) b!7561984))

(assert (= (and b!7561984 (not res!3030003)) b!7561967))

(assert (= (and b!7561967 (not res!3030012)) b!7561982))

(assert (= (and b!7561982 (not res!3030002)) b!7561978))

(assert (= (and b!7561978 (not res!3030015)) b!7561976))

(assert (= (and b!7561976 (not res!3030010)) b!7561986))

(assert (= (and start!730634 (is-ElementMatch!19980 baseR!101)) b!7561960))

(assert (= (and start!730634 (is-Concat!28825 baseR!101)) b!7561971))

(assert (= (and start!730634 (is-Star!19980 baseR!101)) b!7561958))

(assert (= (and start!730634 (is-Union!19980 baseR!101)) b!7561963))

(assert (= (and start!730634 (is-Cons!72739 input!7874)) b!7561961))

(assert (= (and start!730634 (is-Cons!72739 knownP!30)) b!7561987))

(assert (= (and start!730634 (is-Cons!72739 testedP!423)) b!7561964))

(assert (= (and start!730634 (is-ElementMatch!19980 r!24333)) b!7561979))

(assert (= (and start!730634 (is-Concat!28825 r!24333)) b!7561965))

(assert (= (and start!730634 (is-Star!19980 r!24333)) b!7561973))

(assert (= (and start!730634 (is-Union!19980 r!24333)) b!7561990))

(declare-fun m!8124846 () Bool)

(assert (=> start!730634 m!8124846))

(declare-fun m!8124848 () Bool)

(assert (=> b!7561967 m!8124848))

(declare-fun m!8124850 () Bool)

(assert (=> b!7561975 m!8124850))

(declare-fun m!8124852 () Bool)

(assert (=> b!7561975 m!8124852))

(declare-fun m!8124854 () Bool)

(assert (=> b!7561975 m!8124854))

(declare-fun m!8124856 () Bool)

(assert (=> b!7561978 m!8124856))

(declare-fun m!8124858 () Bool)

(assert (=> b!7561983 m!8124858))

(declare-fun m!8124860 () Bool)

(assert (=> b!7561988 m!8124860))

(declare-fun m!8124862 () Bool)

(assert (=> b!7561988 m!8124862))

(declare-fun m!8124864 () Bool)

(assert (=> b!7561988 m!8124864))

(declare-fun m!8124866 () Bool)

(assert (=> b!7561988 m!8124866))

(declare-fun m!8124868 () Bool)

(assert (=> b!7561988 m!8124868))

(declare-fun m!8124870 () Bool)

(assert (=> b!7561988 m!8124870))

(declare-fun m!8124872 () Bool)

(assert (=> b!7561988 m!8124872))

(declare-fun m!8124874 () Bool)

(assert (=> b!7561988 m!8124874))

(declare-fun m!8124876 () Bool)

(assert (=> b!7561988 m!8124876))

(declare-fun m!8124878 () Bool)

(assert (=> b!7561988 m!8124878))

(declare-fun m!8124880 () Bool)

(assert (=> b!7561988 m!8124880))

(declare-fun m!8124882 () Bool)

(assert (=> b!7561988 m!8124882))

(declare-fun m!8124884 () Bool)

(assert (=> b!7561988 m!8124884))

(declare-fun m!8124886 () Bool)

(assert (=> b!7561968 m!8124886))

(declare-fun m!8124888 () Bool)

(assert (=> b!7561976 m!8124888))

(declare-fun m!8124890 () Bool)

(assert (=> b!7561966 m!8124890))

(declare-fun m!8124892 () Bool)

(assert (=> b!7561982 m!8124892))

(declare-fun m!8124894 () Bool)

(assert (=> b!7561982 m!8124894))

(declare-fun m!8124896 () Bool)

(assert (=> b!7561982 m!8124896))

(declare-fun m!8124898 () Bool)

(assert (=> b!7561982 m!8124898))

(declare-fun m!8124900 () Bool)

(assert (=> b!7561972 m!8124900))

(declare-fun m!8124902 () Bool)

(assert (=> b!7561972 m!8124902))

(declare-fun m!8124904 () Bool)

(assert (=> b!7561981 m!8124904))

(declare-fun m!8124906 () Bool)

(assert (=> b!7561969 m!8124906))

(declare-fun m!8124908 () Bool)

(assert (=> b!7561969 m!8124908))

(declare-fun m!8124910 () Bool)

(assert (=> b!7561969 m!8124910))

(declare-fun m!8124912 () Bool)

(assert (=> b!7561969 m!8124912))

(declare-fun m!8124914 () Bool)

(assert (=> b!7561986 m!8124914))

(declare-fun m!8124916 () Bool)

(assert (=> b!7561977 m!8124916))

(declare-fun m!8124918 () Bool)

(assert (=> b!7561959 m!8124918))

(declare-fun m!8124920 () Bool)

(assert (=> b!7561959 m!8124920))

(declare-fun m!8124922 () Bool)

(assert (=> b!7561974 m!8124922))

(declare-fun m!8124924 () Bool)

(assert (=> b!7561974 m!8124924))

(declare-fun m!8124926 () Bool)

(assert (=> b!7561989 m!8124926))

(declare-fun m!8124928 () Bool)

(assert (=> b!7561962 m!8124928))

(declare-fun m!8124930 () Bool)

(assert (=> b!7561962 m!8124930))

(declare-fun m!8124932 () Bool)

(assert (=> b!7561970 m!8124932))

(declare-fun m!8124934 () Bool)

(assert (=> b!7561985 m!8124934))

(push 1)

(assert (not b!7561974))

(assert (not b!7561975))

(assert (not start!730634))

(assert tp_is_empty!50315)

(assert (not b!7561962))

(assert (not b!7561982))

(assert (not b!7561972))

(assert (not b!7561987))

(assert (not b!7561986))

(assert (not b!7561965))

(assert (not b!7561976))

(assert (not b!7561981))

(assert (not b!7561968))

(assert (not b!7561985))

(assert (not b!7561970))

(assert (not b!7561966))

(assert (not b!7561990))

(assert (not b!7561958))

(assert (not b!7561983))

(assert (not b!7561973))

(assert (not b!7561961))

(assert (not b!7561963))

(assert (not b!7561964))

(assert (not b!7561969))

(assert (not b!7561988))

(assert (not b!7561967))

(assert (not b!7561978))

(assert (not b!7561989))

(assert (not b!7561959))

(assert (not b!7561971))

(assert (not b!7561977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2315010 () Bool)

(declare-fun lt!2649273 () Int)

(assert (=> d!2315010 (>= lt!2649273 0)))

(declare-fun e!4502988 () Int)

(assert (=> d!2315010 (= lt!2649273 e!4502988)))

(declare-fun c!1395265 () Bool)

(assert (=> d!2315010 (= c!1395265 (is-Nil!72739 lt!2649189))))

(assert (=> d!2315010 (= (size!42476 lt!2649189) lt!2649273)))

(declare-fun b!7562094 () Bool)

(assert (=> b!7562094 (= e!4502988 0)))

(declare-fun b!7562095 () Bool)

(assert (=> b!7562095 (= e!4502988 (+ 1 (size!42476 (t!387592 lt!2649189))))))

(assert (= (and d!2315010 c!1395265) b!7562094))

(assert (= (and d!2315010 (not c!1395265)) b!7562095))

(declare-fun m!8125026 () Bool)

(assert (=> b!7562095 m!8125026))

(assert (=> b!7561976 d!2315010))

(declare-fun d!2315012 () Bool)

(declare-fun e!4502996 () Bool)

(assert (=> d!2315012 e!4502996))

(declare-fun res!3030093 () Bool)

(assert (=> d!2315012 (=> res!3030093 e!4502996)))

(declare-fun lt!2649276 () Bool)

(assert (=> d!2315012 (= res!3030093 (not lt!2649276))))

(declare-fun e!4502995 () Bool)

(assert (=> d!2315012 (= lt!2649276 e!4502995)))

(declare-fun res!3030096 () Bool)

(assert (=> d!2315012 (=> res!3030096 e!4502995)))

(assert (=> d!2315012 (= res!3030096 (is-Nil!72739 testedP!423))))

(assert (=> d!2315012 (= (isPrefix!6186 testedP!423 input!7874) lt!2649276)))

(declare-fun b!7562105 () Bool)

(declare-fun res!3030095 () Bool)

(declare-fun e!4502997 () Bool)

(assert (=> b!7562105 (=> (not res!3030095) (not e!4502997))))

(assert (=> b!7562105 (= res!3030095 (= (head!15558 testedP!423) (head!15558 input!7874)))))

(declare-fun b!7562104 () Bool)

(assert (=> b!7562104 (= e!4502995 e!4502997)))

(declare-fun res!3030094 () Bool)

(assert (=> b!7562104 (=> (not res!3030094) (not e!4502997))))

(assert (=> b!7562104 (= res!3030094 (not (is-Nil!72739 input!7874)))))

(declare-fun b!7562107 () Bool)

(assert (=> b!7562107 (= e!4502996 (>= (size!42476 input!7874) (size!42476 testedP!423)))))

(declare-fun b!7562106 () Bool)

(assert (=> b!7562106 (= e!4502997 (isPrefix!6186 (tail!15098 testedP!423) (tail!15098 input!7874)))))

(assert (= (and d!2315012 (not res!3030096)) b!7562104))

(assert (= (and b!7562104 res!3030094) b!7562105))

(assert (= (and b!7562105 res!3030095) b!7562106))

(assert (= (and d!2315012 (not res!3030093)) b!7562107))

(declare-fun m!8125028 () Bool)

(assert (=> b!7562105 m!8125028))

(declare-fun m!8125030 () Bool)

(assert (=> b!7562105 m!8125030))

(assert (=> b!7562107 m!8124934))

(assert (=> b!7562107 m!8124928))

(declare-fun m!8125032 () Bool)

(assert (=> b!7562106 m!8125032))

(declare-fun m!8125034 () Bool)

(assert (=> b!7562106 m!8125034))

(assert (=> b!7562106 m!8125032))

(assert (=> b!7562106 m!8125034))

(declare-fun m!8125036 () Bool)

(assert (=> b!7562106 m!8125036))

(assert (=> b!7561966 d!2315012))

(declare-fun d!2315014 () Bool)

(declare-fun e!4502999 () Bool)

(assert (=> d!2315014 e!4502999))

(declare-fun res!3030097 () Bool)

(assert (=> d!2315014 (=> res!3030097 e!4502999)))

(declare-fun lt!2649277 () Bool)

(assert (=> d!2315014 (= res!3030097 (not lt!2649277))))

(declare-fun e!4502998 () Bool)

(assert (=> d!2315014 (= lt!2649277 e!4502998)))

(declare-fun res!3030100 () Bool)

(assert (=> d!2315014 (=> res!3030100 e!4502998)))

(assert (=> d!2315014 (= res!3030100 (is-Nil!72739 knownP!30))))

(assert (=> d!2315014 (= (isPrefix!6186 knownP!30 input!7874) lt!2649277)))

(declare-fun b!7562109 () Bool)

(declare-fun res!3030099 () Bool)

(declare-fun e!4503000 () Bool)

(assert (=> b!7562109 (=> (not res!3030099) (not e!4503000))))

(assert (=> b!7562109 (= res!3030099 (= (head!15558 knownP!30) (head!15558 input!7874)))))

(declare-fun b!7562108 () Bool)

(assert (=> b!7562108 (= e!4502998 e!4503000)))

(declare-fun res!3030098 () Bool)

(assert (=> b!7562108 (=> (not res!3030098) (not e!4503000))))

(assert (=> b!7562108 (= res!3030098 (not (is-Nil!72739 input!7874)))))

(declare-fun b!7562111 () Bool)

(assert (=> b!7562111 (= e!4502999 (>= (size!42476 input!7874) (size!42476 knownP!30)))))

(declare-fun b!7562110 () Bool)

(assert (=> b!7562110 (= e!4503000 (isPrefix!6186 (tail!15098 knownP!30) (tail!15098 input!7874)))))

(assert (= (and d!2315014 (not res!3030100)) b!7562108))

(assert (= (and b!7562108 res!3030098) b!7562109))

(assert (= (and b!7562109 res!3030099) b!7562110))

(assert (= (and d!2315014 (not res!3030097)) b!7562111))

(declare-fun m!8125038 () Bool)

(assert (=> b!7562109 m!8125038))

(assert (=> b!7562109 m!8125030))

(assert (=> b!7562111 m!8124934))

(assert (=> b!7562111 m!8124930))

(declare-fun m!8125040 () Bool)

(assert (=> b!7562110 m!8125040))

(assert (=> b!7562110 m!8125034))

(assert (=> b!7562110 m!8125040))

(assert (=> b!7562110 m!8125034))

(declare-fun m!8125042 () Bool)

(assert (=> b!7562110 m!8125042))

(assert (=> b!7561977 d!2315014))

(declare-fun d!2315016 () Bool)

(assert (=> d!2315016 (= (head!15558 lt!2649187) (h!79187 lt!2649187))))

(assert (=> b!7561988 d!2315016))

(declare-fun d!2315018 () Bool)

(declare-fun lt!2649280 () List!72863)

(assert (=> d!2315018 (= (++!17484 testedP!423 lt!2649280) input!7874)))

(declare-fun e!4503003 () List!72863)

(assert (=> d!2315018 (= lt!2649280 e!4503003)))

(declare-fun c!1395268 () Bool)

(assert (=> d!2315018 (= c!1395268 (is-Cons!72739 testedP!423))))

(assert (=> d!2315018 (>= (size!42476 input!7874) (size!42476 testedP!423))))

(assert (=> d!2315018 (= (getSuffix!3664 input!7874 testedP!423) lt!2649280)))

(declare-fun b!7562116 () Bool)

(assert (=> b!7562116 (= e!4503003 (getSuffix!3664 (tail!15098 input!7874) (t!387592 testedP!423)))))

(declare-fun b!7562117 () Bool)

(assert (=> b!7562117 (= e!4503003 input!7874)))

(assert (= (and d!2315018 c!1395268) b!7562116))

(assert (= (and d!2315018 (not c!1395268)) b!7562117))

(declare-fun m!8125044 () Bool)

(assert (=> d!2315018 m!8125044))

(assert (=> d!2315018 m!8124934))

(assert (=> d!2315018 m!8124928))

(assert (=> b!7562116 m!8125034))

(assert (=> b!7562116 m!8125034))

(declare-fun m!8125046 () Bool)

(assert (=> b!7562116 m!8125046))

(assert (=> b!7561988 d!2315018))

(declare-fun d!2315022 () Bool)

(declare-fun lt!2649281 () List!72863)

(assert (=> d!2315022 (= (++!17484 lt!2649189 lt!2649281) knownP!30)))

(declare-fun e!4503004 () List!72863)

(assert (=> d!2315022 (= lt!2649281 e!4503004)))

(declare-fun c!1395269 () Bool)

(assert (=> d!2315022 (= c!1395269 (is-Cons!72739 lt!2649189))))

(assert (=> d!2315022 (>= (size!42476 knownP!30) (size!42476 lt!2649189))))

(assert (=> d!2315022 (= (getSuffix!3664 knownP!30 lt!2649189) lt!2649281)))

(declare-fun b!7562118 () Bool)

(assert (=> b!7562118 (= e!4503004 (getSuffix!3664 (tail!15098 knownP!30) (t!387592 lt!2649189)))))

(declare-fun b!7562119 () Bool)

(assert (=> b!7562119 (= e!4503004 knownP!30)))

(assert (= (and d!2315022 c!1395269) b!7562118))

(assert (= (and d!2315022 (not c!1395269)) b!7562119))

(declare-fun m!8125048 () Bool)

(assert (=> d!2315022 m!8125048))

(assert (=> d!2315022 m!8124930))

(assert (=> d!2315022 m!8124888))

(assert (=> b!7562118 m!8125040))

(assert (=> b!7562118 m!8125040))

(declare-fun m!8125050 () Bool)

(assert (=> b!7562118 m!8125050))

(assert (=> b!7561988 d!2315022))

(declare-fun d!2315024 () Bool)

(assert (=> d!2315024 (isPrefix!6186 lt!2649189 knownP!30)))

(declare-fun lt!2649284 () Unit!166894)

(declare-fun choose!58492 (List!72863 List!72863 List!72863) Unit!166894)

(assert (=> d!2315024 (= lt!2649284 (choose!58492 knownP!30 lt!2649189 input!7874))))

(assert (=> d!2315024 (isPrefix!6186 knownP!30 input!7874)))

(assert (=> d!2315024 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!934 knownP!30 lt!2649189 input!7874) lt!2649284)))

(declare-fun bs!1940381 () Bool)

(assert (= bs!1940381 d!2315024))

(assert (=> bs!1940381 m!8124866))

(declare-fun m!8125052 () Bool)

(assert (=> bs!1940381 m!8125052))

(assert (=> bs!1940381 m!8124916))

(assert (=> b!7561988 d!2315024))

(declare-fun lt!2649289 () List!72863)

(declare-fun e!4503012 () Bool)

(declare-fun b!7562135 () Bool)

(assert (=> b!7562135 (= e!4503012 (or (not (= lt!2649177 Nil!72739)) (= lt!2649289 testedP!423)))))

(declare-fun b!7562133 () Bool)

(declare-fun e!4503011 () List!72863)

(assert (=> b!7562133 (= e!4503011 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649177)))))

(declare-fun b!7562132 () Bool)

(assert (=> b!7562132 (= e!4503011 lt!2649177)))

(declare-fun d!2315028 () Bool)

(assert (=> d!2315028 e!4503012))

(declare-fun res!3030106 () Bool)

(assert (=> d!2315028 (=> (not res!3030106) (not e!4503012))))

(declare-fun content!15401 (List!72863) (Set C!40286))

(assert (=> d!2315028 (= res!3030106 (= (content!15401 lt!2649289) (set.union (content!15401 testedP!423) (content!15401 lt!2649177))))))

(assert (=> d!2315028 (= lt!2649289 e!4503011)))

(declare-fun c!1395274 () Bool)

(assert (=> d!2315028 (= c!1395274 (is-Nil!72739 testedP!423))))

(assert (=> d!2315028 (= (++!17484 testedP!423 lt!2649177) lt!2649289)))

(declare-fun b!7562134 () Bool)

(declare-fun res!3030105 () Bool)

(assert (=> b!7562134 (=> (not res!3030105) (not e!4503012))))

(assert (=> b!7562134 (= res!3030105 (= (size!42476 lt!2649289) (+ (size!42476 testedP!423) (size!42476 lt!2649177))))))

(assert (= (and d!2315028 c!1395274) b!7562132))

(assert (= (and d!2315028 (not c!1395274)) b!7562133))

(assert (= (and d!2315028 res!3030106) b!7562134))

(assert (= (and b!7562134 res!3030105) b!7562135))

(declare-fun m!8125054 () Bool)

(assert (=> b!7562133 m!8125054))

(declare-fun m!8125056 () Bool)

(assert (=> d!2315028 m!8125056))

(declare-fun m!8125058 () Bool)

(assert (=> d!2315028 m!8125058))

(declare-fun m!8125060 () Bool)

(assert (=> d!2315028 m!8125060))

(declare-fun m!8125062 () Bool)

(assert (=> b!7562134 m!8125062))

(assert (=> b!7562134 m!8124928))

(declare-fun m!8125064 () Bool)

(assert (=> b!7562134 m!8125064))

(assert (=> b!7561988 d!2315028))

(declare-fun d!2315032 () Bool)

(declare-fun lt!2649294 () Regex!19980)

(assert (=> d!2315032 (validRegex!10408 lt!2649294)))

(declare-fun e!4503017 () Regex!19980)

(assert (=> d!2315032 (= lt!2649294 e!4503017)))

(declare-fun c!1395279 () Bool)

(assert (=> d!2315032 (= c!1395279 (is-Cons!72739 lt!2649189))))

(assert (=> d!2315032 (validRegex!10408 baseR!101)))

(assert (=> d!2315032 (= (derivative!510 baseR!101 lt!2649189) lt!2649294)))

(declare-fun b!7562144 () Bool)

(assert (=> b!7562144 (= e!4503017 (derivative!510 (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)) (t!387592 lt!2649189)))))

(declare-fun b!7562145 () Bool)

(assert (=> b!7562145 (= e!4503017 baseR!101)))

(assert (= (and d!2315032 c!1395279) b!7562144))

(assert (= (and d!2315032 (not c!1395279)) b!7562145))

(declare-fun m!8125070 () Bool)

(assert (=> d!2315032 m!8125070))

(assert (=> d!2315032 m!8124846))

(declare-fun m!8125072 () Bool)

(assert (=> b!7562144 m!8125072))

(assert (=> b!7562144 m!8125072))

(declare-fun m!8125074 () Bool)

(assert (=> b!7562144 m!8125074))

(assert (=> b!7561988 d!2315032))

(declare-fun d!2315038 () Bool)

(declare-fun lt!2649295 () List!72863)

(assert (=> d!2315038 (= (++!17484 knownP!30 lt!2649295) input!7874)))

(declare-fun e!4503018 () List!72863)

(assert (=> d!2315038 (= lt!2649295 e!4503018)))

(declare-fun c!1395280 () Bool)

(assert (=> d!2315038 (= c!1395280 (is-Cons!72739 knownP!30))))

(assert (=> d!2315038 (>= (size!42476 input!7874) (size!42476 knownP!30))))

(assert (=> d!2315038 (= (getSuffix!3664 input!7874 knownP!30) lt!2649295)))

(declare-fun b!7562146 () Bool)

(assert (=> b!7562146 (= e!4503018 (getSuffix!3664 (tail!15098 input!7874) (t!387592 knownP!30)))))

(declare-fun b!7562147 () Bool)

(assert (=> b!7562147 (= e!4503018 input!7874)))

(assert (= (and d!2315038 c!1395280) b!7562146))

(assert (= (and d!2315038 (not c!1395280)) b!7562147))

(declare-fun m!8125076 () Bool)

(assert (=> d!2315038 m!8125076))

(assert (=> d!2315038 m!8124934))

(assert (=> d!2315038 m!8124930))

(assert (=> b!7562146 m!8125034))

(assert (=> b!7562146 m!8125034))

(declare-fun m!8125078 () Bool)

(assert (=> b!7562146 m!8125078))

(assert (=> b!7561988 d!2315038))

(declare-fun lt!2649296 () List!72863)

(declare-fun b!7562151 () Bool)

(declare-fun e!4503020 () Bool)

(assert (=> b!7562151 (= e!4503020 (or (not (= lt!2649168 Nil!72739)) (= lt!2649296 knownP!30)))))

(declare-fun b!7562149 () Bool)

(declare-fun e!4503019 () List!72863)

(assert (=> b!7562149 (= e!4503019 (Cons!72739 (h!79187 knownP!30) (++!17484 (t!387592 knownP!30) lt!2649168)))))

(declare-fun b!7562148 () Bool)

(assert (=> b!7562148 (= e!4503019 lt!2649168)))

(declare-fun d!2315040 () Bool)

(assert (=> d!2315040 e!4503020))

(declare-fun res!3030108 () Bool)

(assert (=> d!2315040 (=> (not res!3030108) (not e!4503020))))

(assert (=> d!2315040 (= res!3030108 (= (content!15401 lt!2649296) (set.union (content!15401 knownP!30) (content!15401 lt!2649168))))))

(assert (=> d!2315040 (= lt!2649296 e!4503019)))

(declare-fun c!1395281 () Bool)

(assert (=> d!2315040 (= c!1395281 (is-Nil!72739 knownP!30))))

(assert (=> d!2315040 (= (++!17484 knownP!30 lt!2649168) lt!2649296)))

(declare-fun b!7562150 () Bool)

(declare-fun res!3030107 () Bool)

(assert (=> b!7562150 (=> (not res!3030107) (not e!4503020))))

(assert (=> b!7562150 (= res!3030107 (= (size!42476 lt!2649296) (+ (size!42476 knownP!30) (size!42476 lt!2649168))))))

(assert (= (and d!2315040 c!1395281) b!7562148))

(assert (= (and d!2315040 (not c!1395281)) b!7562149))

(assert (= (and d!2315040 res!3030108) b!7562150))

(assert (= (and b!7562150 res!3030107) b!7562151))

(declare-fun m!8125080 () Bool)

(assert (=> b!7562149 m!8125080))

(declare-fun m!8125082 () Bool)

(assert (=> d!2315040 m!8125082))

(declare-fun m!8125084 () Bool)

(assert (=> d!2315040 m!8125084))

(declare-fun m!8125086 () Bool)

(assert (=> d!2315040 m!8125086))

(declare-fun m!8125088 () Bool)

(assert (=> b!7562150 m!8125088))

(assert (=> b!7562150 m!8124930))

(declare-fun m!8125090 () Bool)

(assert (=> b!7562150 m!8125090))

(assert (=> b!7561988 d!2315040))

(declare-fun d!2315042 () Bool)

(assert (=> d!2315042 (isPrefix!6186 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)) input!7874)))

(declare-fun lt!2649299 () Unit!166894)

(declare-fun choose!58493 (List!72863 List!72863) Unit!166894)

(assert (=> d!2315042 (= lt!2649299 (choose!58493 testedP!423 input!7874))))

(assert (=> d!2315042 (isPrefix!6186 testedP!423 input!7874)))

(assert (=> d!2315042 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1235 testedP!423 input!7874) lt!2649299)))

(declare-fun bs!1940382 () Bool)

(assert (= bs!1940382 d!2315042))

(declare-fun m!8125092 () Bool)

(assert (=> bs!1940382 m!8125092))

(assert (=> bs!1940382 m!8124868))

(declare-fun m!8125094 () Bool)

(assert (=> bs!1940382 m!8125094))

(declare-fun m!8125096 () Bool)

(assert (=> bs!1940382 m!8125096))

(assert (=> bs!1940382 m!8125092))

(declare-fun m!8125098 () Bool)

(assert (=> bs!1940382 m!8125098))

(assert (=> bs!1940382 m!8124868))

(assert (=> bs!1940382 m!8124890))

(assert (=> b!7561988 d!2315042))

(declare-fun b!7562190 () Bool)

(declare-fun e!4503045 () Regex!19980)

(declare-fun e!4503048 () Regex!19980)

(assert (=> b!7562190 (= e!4503045 e!4503048)))

(declare-fun c!1395299 () Bool)

(assert (=> b!7562190 (= c!1395299 (is-ElementMatch!19980 r!24333))))

(declare-fun bm!693264 () Bool)

(declare-fun call!693271 () Regex!19980)

(declare-fun call!693270 () Regex!19980)

(assert (=> bm!693264 (= call!693271 call!693270)))

(declare-fun b!7562191 () Bool)

(declare-fun e!4503047 () Regex!19980)

(assert (=> b!7562191 (= e!4503047 (Union!19980 (Concat!28825 call!693271 (regTwo!40472 r!24333)) EmptyLang!19980))))

(declare-fun bm!693265 () Bool)

(declare-fun call!693272 () Regex!19980)

(assert (=> bm!693265 (= call!693270 call!693272)))

(declare-fun b!7562192 () Bool)

(declare-fun e!4503046 () Regex!19980)

(declare-fun e!4503049 () Regex!19980)

(assert (=> b!7562192 (= e!4503046 e!4503049)))

(declare-fun c!1395296 () Bool)

(assert (=> b!7562192 (= c!1395296 (is-Star!19980 r!24333))))

(declare-fun b!7562193 () Bool)

(declare-fun c!1395298 () Bool)

(declare-fun nullable!8714 (Regex!19980) Bool)

(assert (=> b!7562193 (= c!1395298 (nullable!8714 (regOne!40472 r!24333)))))

(assert (=> b!7562193 (= e!4503049 e!4503047)))

(declare-fun bm!693266 () Bool)

(declare-fun call!693269 () Regex!19980)

(declare-fun c!1395297 () Bool)

(assert (=> bm!693266 (= call!693269 (derivativeStep!5758 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)) lt!2649175))))

(declare-fun b!7562194 () Bool)

(assert (=> b!7562194 (= e!4503046 (Union!19980 call!693269 call!693272))))

(declare-fun b!7562195 () Bool)

(assert (=> b!7562195 (= e!4503047 (Union!19980 (Concat!28825 call!693271 (regTwo!40472 r!24333)) call!693269))))

(declare-fun d!2315044 () Bool)

(declare-fun lt!2649302 () Regex!19980)

(assert (=> d!2315044 (validRegex!10408 lt!2649302)))

(assert (=> d!2315044 (= lt!2649302 e!4503045)))

(declare-fun c!1395300 () Bool)

(assert (=> d!2315044 (= c!1395300 (or (is-EmptyExpr!19980 r!24333) (is-EmptyLang!19980 r!24333)))))

(assert (=> d!2315044 (validRegex!10408 r!24333)))

(assert (=> d!2315044 (= (derivativeStep!5758 r!24333 lt!2649175) lt!2649302)))

(declare-fun b!7562196 () Bool)

(assert (=> b!7562196 (= c!1395297 (is-Union!19980 r!24333))))

(assert (=> b!7562196 (= e!4503048 e!4503046)))

(declare-fun b!7562197 () Bool)

(assert (=> b!7562197 (= e!4503045 EmptyLang!19980)))

(declare-fun b!7562198 () Bool)

(assert (=> b!7562198 (= e!4503048 (ite (= lt!2649175 (c!1395261 r!24333)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562199 () Bool)

(assert (=> b!7562199 (= e!4503049 (Concat!28825 call!693270 r!24333))))

(declare-fun bm!693267 () Bool)

(assert (=> bm!693267 (= call!693272 (derivativeStep!5758 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))) lt!2649175))))

(assert (= (and d!2315044 c!1395300) b!7562197))

(assert (= (and d!2315044 (not c!1395300)) b!7562190))

(assert (= (and b!7562190 c!1395299) b!7562198))

(assert (= (and b!7562190 (not c!1395299)) b!7562196))

(assert (= (and b!7562196 c!1395297) b!7562194))

(assert (= (and b!7562196 (not c!1395297)) b!7562192))

(assert (= (and b!7562192 c!1395296) b!7562199))

(assert (= (and b!7562192 (not c!1395296)) b!7562193))

(assert (= (and b!7562193 c!1395298) b!7562195))

(assert (= (and b!7562193 (not c!1395298)) b!7562191))

(assert (= (or b!7562195 b!7562191) bm!693264))

(assert (= (or b!7562199 bm!693264) bm!693265))

(assert (= (or b!7562194 bm!693265) bm!693267))

(assert (= (or b!7562194 b!7562195) bm!693266))

(declare-fun m!8125100 () Bool)

(assert (=> b!7562193 m!8125100))

(declare-fun m!8125102 () Bool)

(assert (=> bm!693266 m!8125102))

(declare-fun m!8125104 () Bool)

(assert (=> d!2315044 m!8125104))

(assert (=> d!2315044 m!8124904))

(declare-fun m!8125106 () Bool)

(assert (=> bm!693267 m!8125106))

(assert (=> b!7561988 d!2315044))

(declare-fun d!2315046 () Bool)

(assert (=> d!2315046 (= (derivative!510 baseR!101 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739))) (derivativeStep!5758 r!24333 lt!2649175))))

(declare-fun lt!2649307 () Unit!166894)

(declare-fun choose!58494 (Regex!19980 Regex!19980 List!72863 C!40286) Unit!166894)

(assert (=> d!2315046 (= lt!2649307 (choose!58494 baseR!101 r!24333 testedP!423 lt!2649175))))

(assert (=> d!2315046 (validRegex!10408 baseR!101)))

(assert (=> d!2315046 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!202 baseR!101 r!24333 testedP!423 lt!2649175) lt!2649307)))

(declare-fun bs!1940383 () Bool)

(assert (= bs!1940383 d!2315046))

(assert (=> bs!1940383 m!8124846))

(declare-fun m!8125124 () Bool)

(assert (=> bs!1940383 m!8125124))

(assert (=> bs!1940383 m!8124874))

(assert (=> bs!1940383 m!8125124))

(declare-fun m!8125126 () Bool)

(assert (=> bs!1940383 m!8125126))

(declare-fun m!8125128 () Bool)

(assert (=> bs!1940383 m!8125128))

(assert (=> b!7561988 d!2315046))

(declare-fun d!2315056 () Bool)

(declare-fun e!4503074 () Bool)

(assert (=> d!2315056 e!4503074))

(declare-fun res!3030134 () Bool)

(assert (=> d!2315056 (=> res!3030134 e!4503074)))

(declare-fun lt!2649308 () Bool)

(assert (=> d!2315056 (= res!3030134 (not lt!2649308))))

(declare-fun e!4503073 () Bool)

(assert (=> d!2315056 (= lt!2649308 e!4503073)))

(declare-fun res!3030137 () Bool)

(assert (=> d!2315056 (=> res!3030137 e!4503073)))

(assert (=> d!2315056 (= res!3030137 (is-Nil!72739 lt!2649189))))

(assert (=> d!2315056 (= (isPrefix!6186 lt!2649189 input!7874) lt!2649308)))

(declare-fun b!7562232 () Bool)

(declare-fun res!3030136 () Bool)

(declare-fun e!4503075 () Bool)

(assert (=> b!7562232 (=> (not res!3030136) (not e!4503075))))

(assert (=> b!7562232 (= res!3030136 (= (head!15558 lt!2649189) (head!15558 input!7874)))))

(declare-fun b!7562231 () Bool)

(assert (=> b!7562231 (= e!4503073 e!4503075)))

(declare-fun res!3030135 () Bool)

(assert (=> b!7562231 (=> (not res!3030135) (not e!4503075))))

(assert (=> b!7562231 (= res!3030135 (not (is-Nil!72739 input!7874)))))

(declare-fun b!7562234 () Bool)

(assert (=> b!7562234 (= e!4503074 (>= (size!42476 input!7874) (size!42476 lt!2649189)))))

(declare-fun b!7562233 () Bool)

(assert (=> b!7562233 (= e!4503075 (isPrefix!6186 (tail!15098 lt!2649189) (tail!15098 input!7874)))))

(assert (= (and d!2315056 (not res!3030137)) b!7562231))

(assert (= (and b!7562231 res!3030135) b!7562232))

(assert (= (and b!7562232 res!3030136) b!7562233))

(assert (= (and d!2315056 (not res!3030134)) b!7562234))

(declare-fun m!8125130 () Bool)

(assert (=> b!7562232 m!8125130))

(assert (=> b!7562232 m!8125030))

(assert (=> b!7562234 m!8124934))

(assert (=> b!7562234 m!8124888))

(declare-fun m!8125132 () Bool)

(assert (=> b!7562233 m!8125132))

(assert (=> b!7562233 m!8125034))

(assert (=> b!7562233 m!8125132))

(assert (=> b!7562233 m!8125034))

(declare-fun m!8125134 () Bool)

(assert (=> b!7562233 m!8125134))

(assert (=> b!7561988 d!2315056))

(declare-fun d!2315058 () Bool)

(declare-fun e!4503077 () Bool)

(assert (=> d!2315058 e!4503077))

(declare-fun res!3030138 () Bool)

(assert (=> d!2315058 (=> res!3030138 e!4503077)))

(declare-fun lt!2649309 () Bool)

(assert (=> d!2315058 (= res!3030138 (not lt!2649309))))

(declare-fun e!4503076 () Bool)

(assert (=> d!2315058 (= lt!2649309 e!4503076)))

(declare-fun res!3030141 () Bool)

(assert (=> d!2315058 (=> res!3030141 e!4503076)))

(assert (=> d!2315058 (= res!3030141 (is-Nil!72739 lt!2649189))))

(assert (=> d!2315058 (= (isPrefix!6186 lt!2649189 knownP!30) lt!2649309)))

(declare-fun b!7562236 () Bool)

(declare-fun res!3030140 () Bool)

(declare-fun e!4503078 () Bool)

(assert (=> b!7562236 (=> (not res!3030140) (not e!4503078))))

(assert (=> b!7562236 (= res!3030140 (= (head!15558 lt!2649189) (head!15558 knownP!30)))))

(declare-fun b!7562235 () Bool)

(assert (=> b!7562235 (= e!4503076 e!4503078)))

(declare-fun res!3030139 () Bool)

(assert (=> b!7562235 (=> (not res!3030139) (not e!4503078))))

(assert (=> b!7562235 (= res!3030139 (not (is-Nil!72739 knownP!30)))))

(declare-fun b!7562238 () Bool)

(assert (=> b!7562238 (= e!4503077 (>= (size!42476 knownP!30) (size!42476 lt!2649189)))))

(declare-fun b!7562237 () Bool)

(assert (=> b!7562237 (= e!4503078 (isPrefix!6186 (tail!15098 lt!2649189) (tail!15098 knownP!30)))))

(assert (= (and d!2315058 (not res!3030141)) b!7562235))

(assert (= (and b!7562235 res!3030139) b!7562236))

(assert (= (and b!7562236 res!3030140) b!7562237))

(assert (= (and d!2315058 (not res!3030138)) b!7562238))

(assert (=> b!7562236 m!8125130))

(assert (=> b!7562236 m!8125038))

(assert (=> b!7562238 m!8124930))

(assert (=> b!7562238 m!8124888))

(assert (=> b!7562237 m!8125132))

(assert (=> b!7562237 m!8125040))

(assert (=> b!7562237 m!8125132))

(assert (=> b!7562237 m!8125040))

(declare-fun m!8125138 () Bool)

(assert (=> b!7562237 m!8125138))

(assert (=> b!7561988 d!2315058))

(declare-fun lt!2649310 () List!72863)

(declare-fun e!4503080 () Bool)

(declare-fun b!7562242 () Bool)

(assert (=> b!7562242 (= e!4503080 (or (not (= lt!2649181 Nil!72739)) (= lt!2649310 lt!2649189)))))

(declare-fun b!7562240 () Bool)

(declare-fun e!4503079 () List!72863)

(assert (=> b!7562240 (= e!4503079 (Cons!72739 (h!79187 lt!2649189) (++!17484 (t!387592 lt!2649189) lt!2649181)))))

(declare-fun b!7562239 () Bool)

(assert (=> b!7562239 (= e!4503079 lt!2649181)))

(declare-fun d!2315060 () Bool)

(assert (=> d!2315060 e!4503080))

(declare-fun res!3030143 () Bool)

(assert (=> d!2315060 (=> (not res!3030143) (not e!4503080))))

(assert (=> d!2315060 (= res!3030143 (= (content!15401 lt!2649310) (set.union (content!15401 lt!2649189) (content!15401 lt!2649181))))))

(assert (=> d!2315060 (= lt!2649310 e!4503079)))

(declare-fun c!1395310 () Bool)

(assert (=> d!2315060 (= c!1395310 (is-Nil!72739 lt!2649189))))

(assert (=> d!2315060 (= (++!17484 lt!2649189 lt!2649181) lt!2649310)))

(declare-fun b!7562241 () Bool)

(declare-fun res!3030142 () Bool)

(assert (=> b!7562241 (=> (not res!3030142) (not e!4503080))))

(assert (=> b!7562241 (= res!3030142 (= (size!42476 lt!2649310) (+ (size!42476 lt!2649189) (size!42476 lt!2649181))))))

(assert (= (and d!2315060 c!1395310) b!7562239))

(assert (= (and d!2315060 (not c!1395310)) b!7562240))

(assert (= (and d!2315060 res!3030143) b!7562241))

(assert (= (and b!7562241 res!3030142) b!7562242))

(declare-fun m!8125144 () Bool)

(assert (=> b!7562240 m!8125144))

(declare-fun m!8125146 () Bool)

(assert (=> d!2315060 m!8125146))

(declare-fun m!8125148 () Bool)

(assert (=> d!2315060 m!8125148))

(declare-fun m!8125150 () Bool)

(assert (=> d!2315060 m!8125150))

(declare-fun m!8125152 () Bool)

(assert (=> b!7562241 m!8125152))

(assert (=> b!7562241 m!8124888))

(declare-fun m!8125154 () Bool)

(assert (=> b!7562241 m!8125154))

(assert (=> b!7561967 d!2315060))

(declare-fun b!7562261 () Bool)

(declare-fun e!4503101 () Bool)

(declare-fun call!693288 () Bool)

(assert (=> b!7562261 (= e!4503101 call!693288)))

(declare-fun b!7562262 () Bool)

(declare-fun e!4503095 () Bool)

(declare-fun e!4503097 () Bool)

(assert (=> b!7562262 (= e!4503095 e!4503097)))

(declare-fun c!1395316 () Bool)

(assert (=> b!7562262 (= c!1395316 (is-Union!19980 lt!2649188))))

(declare-fun b!7562263 () Bool)

(declare-fun e!4503098 () Bool)

(assert (=> b!7562263 (= e!4503095 e!4503098)))

(declare-fun res!3030158 () Bool)

(assert (=> b!7562263 (= res!3030158 (not (nullable!8714 (reg!20309 lt!2649188))))))

(assert (=> b!7562263 (=> (not res!3030158) (not e!4503098))))

(declare-fun d!2315064 () Bool)

(declare-fun res!3030156 () Bool)

(declare-fun e!4503096 () Bool)

(assert (=> d!2315064 (=> res!3030156 e!4503096)))

(assert (=> d!2315064 (= res!3030156 (is-ElementMatch!19980 lt!2649188))))

(assert (=> d!2315064 (= (validRegex!10408 lt!2649188) e!4503096)))

(declare-fun b!7562264 () Bool)

(declare-fun res!3030157 () Bool)

(declare-fun e!4503099 () Bool)

(assert (=> b!7562264 (=> (not res!3030157) (not e!4503099))))

(declare-fun call!693290 () Bool)

(assert (=> b!7562264 (= res!3030157 call!693290)))

(assert (=> b!7562264 (= e!4503097 e!4503099)))

(declare-fun b!7562265 () Bool)

(assert (=> b!7562265 (= e!4503099 call!693288)))

(declare-fun b!7562266 () Bool)

(assert (=> b!7562266 (= e!4503096 e!4503095)))

(declare-fun c!1395315 () Bool)

(assert (=> b!7562266 (= c!1395315 (is-Star!19980 lt!2649188))))

(declare-fun bm!693283 () Bool)

(assert (=> bm!693283 (= call!693288 (validRegex!10408 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))

(declare-fun call!693289 () Bool)

(declare-fun bm!693284 () Bool)

(assert (=> bm!693284 (= call!693289 (validRegex!10408 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))

(declare-fun b!7562267 () Bool)

(declare-fun res!3030155 () Bool)

(declare-fun e!4503100 () Bool)

(assert (=> b!7562267 (=> res!3030155 e!4503100)))

(assert (=> b!7562267 (= res!3030155 (not (is-Concat!28825 lt!2649188)))))

(assert (=> b!7562267 (= e!4503097 e!4503100)))

(declare-fun b!7562268 () Bool)

(assert (=> b!7562268 (= e!4503100 e!4503101)))

(declare-fun res!3030154 () Bool)

(assert (=> b!7562268 (=> (not res!3030154) (not e!4503101))))

(assert (=> b!7562268 (= res!3030154 call!693290)))

(declare-fun bm!693285 () Bool)

(assert (=> bm!693285 (= call!693290 call!693289)))

(declare-fun b!7562269 () Bool)

(assert (=> b!7562269 (= e!4503098 call!693289)))

(assert (= (and d!2315064 (not res!3030156)) b!7562266))

(assert (= (and b!7562266 c!1395315) b!7562263))

(assert (= (and b!7562266 (not c!1395315)) b!7562262))

(assert (= (and b!7562263 res!3030158) b!7562269))

(assert (= (and b!7562262 c!1395316) b!7562264))

(assert (= (and b!7562262 (not c!1395316)) b!7562267))

(assert (= (and b!7562264 res!3030157) b!7562265))

(assert (= (and b!7562267 (not res!3030155)) b!7562268))

(assert (= (and b!7562268 res!3030154) b!7562261))

(assert (= (or b!7562264 b!7562268) bm!693285))

(assert (= (or b!7562265 b!7562261) bm!693283))

(assert (= (or b!7562269 bm!693285) bm!693284))

(declare-fun m!8125158 () Bool)

(assert (=> b!7562263 m!8125158))

(declare-fun m!8125160 () Bool)

(assert (=> bm!693283 m!8125160))

(declare-fun m!8125162 () Bool)

(assert (=> bm!693284 m!8125162))

(assert (=> b!7561978 d!2315064))

(declare-fun d!2315068 () Bool)

(declare-fun lt!2649314 () Regex!19980)

(assert (=> d!2315068 (validRegex!10408 lt!2649314)))

(declare-fun e!4503102 () Regex!19980)

(assert (=> d!2315068 (= lt!2649314 e!4503102)))

(declare-fun c!1395317 () Bool)

(assert (=> d!2315068 (= c!1395317 (is-Cons!72739 testedP!423))))

(assert (=> d!2315068 (validRegex!10408 baseR!101)))

(assert (=> d!2315068 (= (derivative!510 baseR!101 testedP!423) lt!2649314)))

(declare-fun b!7562270 () Bool)

(assert (=> b!7562270 (= e!4503102 (derivative!510 (derivativeStep!5758 baseR!101 (h!79187 testedP!423)) (t!387592 testedP!423)))))

(declare-fun b!7562271 () Bool)

(assert (=> b!7562271 (= e!4503102 baseR!101)))

(assert (= (and d!2315068 c!1395317) b!7562270))

(assert (= (and d!2315068 (not c!1395317)) b!7562271))

(declare-fun m!8125164 () Bool)

(assert (=> d!2315068 m!8125164))

(assert (=> d!2315068 m!8124846))

(declare-fun m!8125166 () Bool)

(assert (=> b!7562270 m!8125166))

(assert (=> b!7562270 m!8125166))

(declare-fun m!8125168 () Bool)

(assert (=> b!7562270 m!8125168))

(assert (=> b!7561989 d!2315068))

(declare-fun b!7562312 () Bool)

(declare-fun res!3030183 () Bool)

(declare-fun e!4503129 () Bool)

(assert (=> b!7562312 (=> (not res!3030183) (not e!4503129))))

(declare-fun call!693293 () Bool)

(assert (=> b!7562312 (= res!3030183 (not call!693293))))

(declare-fun b!7562313 () Bool)

(declare-fun e!4503128 () Bool)

(declare-fun e!4503126 () Bool)

(assert (=> b!7562313 (= e!4503128 e!4503126)))

(declare-fun c!1395328 () Bool)

(assert (=> b!7562313 (= c!1395328 (is-EmptyLang!19980 baseR!101))))

(declare-fun b!7562314 () Bool)

(assert (=> b!7562314 (= e!4503129 (= (head!15558 knownP!30) (c!1395261 baseR!101)))))

(declare-fun b!7562315 () Bool)

(declare-fun e!4503124 () Bool)

(assert (=> b!7562315 (= e!4503124 (not (= (head!15558 knownP!30) (c!1395261 baseR!101))))))

(declare-fun b!7562316 () Bool)

(declare-fun e!4503123 () Bool)

(assert (=> b!7562316 (= e!4503123 (matchR!9582 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)) (tail!15098 knownP!30)))))

(declare-fun b!7562317 () Bool)

(declare-fun e!4503127 () Bool)

(assert (=> b!7562317 (= e!4503127 e!4503124)))

(declare-fun res!3030185 () Bool)

(assert (=> b!7562317 (=> res!3030185 e!4503124)))

(assert (=> b!7562317 (= res!3030185 call!693293)))

(declare-fun b!7562318 () Bool)

(declare-fun res!3030187 () Bool)

(assert (=> b!7562318 (=> res!3030187 e!4503124)))

(declare-fun isEmpty!41414 (List!72863) Bool)

(assert (=> b!7562318 (= res!3030187 (not (isEmpty!41414 (tail!15098 knownP!30))))))

(declare-fun b!7562319 () Bool)

(declare-fun res!3030184 () Bool)

(declare-fun e!4503125 () Bool)

(assert (=> b!7562319 (=> res!3030184 e!4503125)))

(assert (=> b!7562319 (= res!3030184 e!4503129)))

(declare-fun res!3030188 () Bool)

(assert (=> b!7562319 (=> (not res!3030188) (not e!4503129))))

(declare-fun lt!2649320 () Bool)

(assert (=> b!7562319 (= res!3030188 lt!2649320)))

(declare-fun b!7562320 () Bool)

(assert (=> b!7562320 (= e!4503123 (nullable!8714 baseR!101))))

(declare-fun bm!693288 () Bool)

(assert (=> bm!693288 (= call!693293 (isEmpty!41414 knownP!30))))

(declare-fun b!7562321 () Bool)

(assert (=> b!7562321 (= e!4503125 e!4503127)))

(declare-fun res!3030186 () Bool)

(assert (=> b!7562321 (=> (not res!3030186) (not e!4503127))))

(assert (=> b!7562321 (= res!3030186 (not lt!2649320))))

(declare-fun b!7562322 () Bool)

(declare-fun res!3030182 () Bool)

(assert (=> b!7562322 (=> (not res!3030182) (not e!4503129))))

(assert (=> b!7562322 (= res!3030182 (isEmpty!41414 (tail!15098 knownP!30)))))

(declare-fun b!7562324 () Bool)

(assert (=> b!7562324 (= e!4503128 (= lt!2649320 call!693293))))

(declare-fun b!7562325 () Bool)

(assert (=> b!7562325 (= e!4503126 (not lt!2649320))))

(declare-fun d!2315070 () Bool)

(assert (=> d!2315070 e!4503128))

(declare-fun c!1395327 () Bool)

(assert (=> d!2315070 (= c!1395327 (is-EmptyExpr!19980 baseR!101))))

(assert (=> d!2315070 (= lt!2649320 e!4503123)))

(declare-fun c!1395329 () Bool)

(assert (=> d!2315070 (= c!1395329 (isEmpty!41414 knownP!30))))

(assert (=> d!2315070 (validRegex!10408 baseR!101)))

(assert (=> d!2315070 (= (matchR!9582 baseR!101 knownP!30) lt!2649320)))

(declare-fun b!7562323 () Bool)

(declare-fun res!3030181 () Bool)

(assert (=> b!7562323 (=> res!3030181 e!4503125)))

(assert (=> b!7562323 (= res!3030181 (not (is-ElementMatch!19980 baseR!101)))))

(assert (=> b!7562323 (= e!4503126 e!4503125)))

(assert (= (and d!2315070 c!1395329) b!7562320))

(assert (= (and d!2315070 (not c!1395329)) b!7562316))

(assert (= (and d!2315070 c!1395327) b!7562324))

(assert (= (and d!2315070 (not c!1395327)) b!7562313))

(assert (= (and b!7562313 c!1395328) b!7562325))

(assert (= (and b!7562313 (not c!1395328)) b!7562323))

(assert (= (and b!7562323 (not res!3030181)) b!7562319))

(assert (= (and b!7562319 res!3030188) b!7562312))

(assert (= (and b!7562312 res!3030183) b!7562322))

(assert (= (and b!7562322 res!3030182) b!7562314))

(assert (= (and b!7562319 (not res!3030184)) b!7562321))

(assert (= (and b!7562321 res!3030186) b!7562317))

(assert (= (and b!7562317 (not res!3030185)) b!7562318))

(assert (= (and b!7562318 (not res!3030187)) b!7562315))

(assert (= (or b!7562324 b!7562312 b!7562317) bm!693288))

(declare-fun m!8125182 () Bool)

(assert (=> d!2315070 m!8125182))

(assert (=> d!2315070 m!8124846))

(declare-fun m!8125184 () Bool)

(assert (=> b!7562320 m!8125184))

(assert (=> b!7562322 m!8125040))

(assert (=> b!7562322 m!8125040))

(declare-fun m!8125186 () Bool)

(assert (=> b!7562322 m!8125186))

(assert (=> b!7562315 m!8125038))

(assert (=> b!7562318 m!8125040))

(assert (=> b!7562318 m!8125040))

(assert (=> b!7562318 m!8125186))

(assert (=> b!7562314 m!8125038))

(assert (=> bm!693288 m!8125182))

(assert (=> b!7562316 m!8125038))

(assert (=> b!7562316 m!8125038))

(declare-fun m!8125188 () Bool)

(assert (=> b!7562316 m!8125188))

(assert (=> b!7562316 m!8125040))

(assert (=> b!7562316 m!8125188))

(assert (=> b!7562316 m!8125040))

(declare-fun m!8125190 () Bool)

(assert (=> b!7562316 m!8125190))

(assert (=> b!7561968 d!2315070))

(declare-fun b!7562330 () Bool)

(declare-fun res!3030193 () Bool)

(declare-fun e!4503138 () Bool)

(assert (=> b!7562330 (=> (not res!3030193) (not e!4503138))))

(declare-fun call!693294 () Bool)

(assert (=> b!7562330 (= res!3030193 (not call!693294))))

(declare-fun b!7562331 () Bool)

(declare-fun e!4503137 () Bool)

(declare-fun e!4503135 () Bool)

(assert (=> b!7562331 (= e!4503137 e!4503135)))

(declare-fun c!1395332 () Bool)

(assert (=> b!7562331 (= c!1395332 (is-EmptyLang!19980 r!24333))))

(declare-fun b!7562332 () Bool)

(assert (=> b!7562332 (= e!4503138 (= (head!15558 lt!2649173) (c!1395261 r!24333)))))

(declare-fun b!7562333 () Bool)

(declare-fun e!4503133 () Bool)

(assert (=> b!7562333 (= e!4503133 (not (= (head!15558 lt!2649173) (c!1395261 r!24333))))))

(declare-fun b!7562334 () Bool)

(declare-fun e!4503132 () Bool)

(assert (=> b!7562334 (= e!4503132 (matchR!9582 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)) (tail!15098 lt!2649173)))))

(declare-fun b!7562335 () Bool)

(declare-fun e!4503136 () Bool)

(assert (=> b!7562335 (= e!4503136 e!4503133)))

(declare-fun res!3030195 () Bool)

(assert (=> b!7562335 (=> res!3030195 e!4503133)))

(assert (=> b!7562335 (= res!3030195 call!693294)))

(declare-fun b!7562336 () Bool)

(declare-fun res!3030197 () Bool)

(assert (=> b!7562336 (=> res!3030197 e!4503133)))

(assert (=> b!7562336 (= res!3030197 (not (isEmpty!41414 (tail!15098 lt!2649173))))))

(declare-fun b!7562337 () Bool)

(declare-fun res!3030194 () Bool)

(declare-fun e!4503134 () Bool)

(assert (=> b!7562337 (=> res!3030194 e!4503134)))

(assert (=> b!7562337 (= res!3030194 e!4503138)))

(declare-fun res!3030198 () Bool)

(assert (=> b!7562337 (=> (not res!3030198) (not e!4503138))))

(declare-fun lt!2649322 () Bool)

(assert (=> b!7562337 (= res!3030198 lt!2649322)))

(declare-fun b!7562338 () Bool)

(assert (=> b!7562338 (= e!4503132 (nullable!8714 r!24333))))

(declare-fun bm!693289 () Bool)

(assert (=> bm!693289 (= call!693294 (isEmpty!41414 lt!2649173))))

(declare-fun b!7562339 () Bool)

(assert (=> b!7562339 (= e!4503134 e!4503136)))

(declare-fun res!3030196 () Bool)

(assert (=> b!7562339 (=> (not res!3030196) (not e!4503136))))

(assert (=> b!7562339 (= res!3030196 (not lt!2649322))))

(declare-fun b!7562340 () Bool)

(declare-fun res!3030192 () Bool)

(assert (=> b!7562340 (=> (not res!3030192) (not e!4503138))))

(assert (=> b!7562340 (= res!3030192 (isEmpty!41414 (tail!15098 lt!2649173)))))

(declare-fun b!7562342 () Bool)

(assert (=> b!7562342 (= e!4503137 (= lt!2649322 call!693294))))

(declare-fun b!7562343 () Bool)

(assert (=> b!7562343 (= e!4503135 (not lt!2649322))))

(declare-fun d!2315074 () Bool)

(assert (=> d!2315074 e!4503137))

(declare-fun c!1395331 () Bool)

(assert (=> d!2315074 (= c!1395331 (is-EmptyExpr!19980 r!24333))))

(assert (=> d!2315074 (= lt!2649322 e!4503132)))

(declare-fun c!1395333 () Bool)

(assert (=> d!2315074 (= c!1395333 (isEmpty!41414 lt!2649173))))

(assert (=> d!2315074 (validRegex!10408 r!24333)))

(assert (=> d!2315074 (= (matchR!9582 r!24333 lt!2649173) lt!2649322)))

(declare-fun b!7562341 () Bool)

(declare-fun res!3030191 () Bool)

(assert (=> b!7562341 (=> res!3030191 e!4503134)))

(assert (=> b!7562341 (= res!3030191 (not (is-ElementMatch!19980 r!24333)))))

(assert (=> b!7562341 (= e!4503135 e!4503134)))

(assert (= (and d!2315074 c!1395333) b!7562338))

(assert (= (and d!2315074 (not c!1395333)) b!7562334))

(assert (= (and d!2315074 c!1395331) b!7562342))

(assert (= (and d!2315074 (not c!1395331)) b!7562331))

(assert (= (and b!7562331 c!1395332) b!7562343))

(assert (= (and b!7562331 (not c!1395332)) b!7562341))

(assert (= (and b!7562341 (not res!3030191)) b!7562337))

(assert (= (and b!7562337 res!3030198) b!7562330))

(assert (= (and b!7562330 res!3030193) b!7562340))

(assert (= (and b!7562340 res!3030192) b!7562332))

(assert (= (and b!7562337 (not res!3030194)) b!7562339))

(assert (= (and b!7562339 res!3030196) b!7562335))

(assert (= (and b!7562335 (not res!3030195)) b!7562336))

(assert (= (and b!7562336 (not res!3030197)) b!7562333))

(assert (= (or b!7562342 b!7562330 b!7562335) bm!693289))

(declare-fun m!8125206 () Bool)

(assert (=> d!2315074 m!8125206))

(assert (=> d!2315074 m!8124904))

(declare-fun m!8125208 () Bool)

(assert (=> b!7562338 m!8125208))

(assert (=> b!7562340 m!8124920))

(assert (=> b!7562340 m!8124920))

(declare-fun m!8125210 () Bool)

(assert (=> b!7562340 m!8125210))

(assert (=> b!7562333 m!8124922))

(assert (=> b!7562336 m!8124920))

(assert (=> b!7562336 m!8124920))

(assert (=> b!7562336 m!8125210))

(assert (=> b!7562332 m!8124922))

(assert (=> bm!693289 m!8125206))

(assert (=> b!7562334 m!8124922))

(assert (=> b!7562334 m!8124922))

(declare-fun m!8125212 () Bool)

(assert (=> b!7562334 m!8125212))

(assert (=> b!7562334 m!8124920))

(assert (=> b!7562334 m!8125212))

(assert (=> b!7562334 m!8124920))

(declare-fun m!8125214 () Bool)

(assert (=> b!7562334 m!8125214))

(assert (=> b!7561969 d!2315074))

(declare-fun d!2315078 () Bool)

(declare-fun lt!2649323 () List!72863)

(assert (=> d!2315078 (= (++!17484 testedP!423 lt!2649323) knownP!30)))

(declare-fun e!4503139 () List!72863)

(assert (=> d!2315078 (= lt!2649323 e!4503139)))

(declare-fun c!1395334 () Bool)

(assert (=> d!2315078 (= c!1395334 (is-Cons!72739 testedP!423))))

(assert (=> d!2315078 (>= (size!42476 knownP!30) (size!42476 testedP!423))))

(assert (=> d!2315078 (= (getSuffix!3664 knownP!30 testedP!423) lt!2649323)))

(declare-fun b!7562344 () Bool)

(assert (=> b!7562344 (= e!4503139 (getSuffix!3664 (tail!15098 knownP!30) (t!387592 testedP!423)))))

(declare-fun b!7562345 () Bool)

(assert (=> b!7562345 (= e!4503139 knownP!30)))

(assert (= (and d!2315078 c!1395334) b!7562344))

(assert (= (and d!2315078 (not c!1395334)) b!7562345))

(declare-fun m!8125216 () Bool)

(assert (=> d!2315078 m!8125216))

(assert (=> d!2315078 m!8124930))

(assert (=> d!2315078 m!8124928))

(assert (=> b!7562344 m!8125040))

(assert (=> b!7562344 m!8125040))

(declare-fun m!8125218 () Bool)

(assert (=> b!7562344 m!8125218))

(assert (=> b!7561969 d!2315078))

(declare-fun d!2315080 () Bool)

(declare-fun e!4503141 () Bool)

(assert (=> d!2315080 e!4503141))

(declare-fun res!3030199 () Bool)

(assert (=> d!2315080 (=> res!3030199 e!4503141)))

(declare-fun lt!2649324 () Bool)

(assert (=> d!2315080 (= res!3030199 (not lt!2649324))))

(declare-fun e!4503140 () Bool)

(assert (=> d!2315080 (= lt!2649324 e!4503140)))

(declare-fun res!3030202 () Bool)

(assert (=> d!2315080 (=> res!3030202 e!4503140)))

(assert (=> d!2315080 (= res!3030202 (is-Nil!72739 testedP!423))))

(assert (=> d!2315080 (= (isPrefix!6186 testedP!423 knownP!30) lt!2649324)))

(declare-fun b!7562347 () Bool)

(declare-fun res!3030201 () Bool)

(declare-fun e!4503142 () Bool)

(assert (=> b!7562347 (=> (not res!3030201) (not e!4503142))))

(assert (=> b!7562347 (= res!3030201 (= (head!15558 testedP!423) (head!15558 knownP!30)))))

(declare-fun b!7562346 () Bool)

(assert (=> b!7562346 (= e!4503140 e!4503142)))

(declare-fun res!3030200 () Bool)

(assert (=> b!7562346 (=> (not res!3030200) (not e!4503142))))

(assert (=> b!7562346 (= res!3030200 (not (is-Nil!72739 knownP!30)))))

(declare-fun b!7562349 () Bool)

(assert (=> b!7562349 (= e!4503141 (>= (size!42476 knownP!30) (size!42476 testedP!423)))))

(declare-fun b!7562348 () Bool)

(assert (=> b!7562348 (= e!4503142 (isPrefix!6186 (tail!15098 testedP!423) (tail!15098 knownP!30)))))

(assert (= (and d!2315080 (not res!3030202)) b!7562346))

(assert (= (and b!7562346 res!3030200) b!7562347))

(assert (= (and b!7562347 res!3030201) b!7562348))

(assert (= (and d!2315080 (not res!3030199)) b!7562349))

(assert (=> b!7562347 m!8125028))

(assert (=> b!7562347 m!8125038))

(assert (=> b!7562349 m!8124930))

(assert (=> b!7562349 m!8124928))

(assert (=> b!7562348 m!8125032))

(assert (=> b!7562348 m!8125040))

(assert (=> b!7562348 m!8125032))

(assert (=> b!7562348 m!8125040))

(declare-fun m!8125220 () Bool)

(assert (=> b!7562348 m!8125220))

(assert (=> b!7561969 d!2315080))

(declare-fun d!2315082 () Bool)

(assert (=> d!2315082 (isPrefix!6186 testedP!423 knownP!30)))

(declare-fun lt!2649325 () Unit!166894)

(assert (=> d!2315082 (= lt!2649325 (choose!58492 knownP!30 testedP!423 input!7874))))

(assert (=> d!2315082 (isPrefix!6186 knownP!30 input!7874)))

(assert (=> d!2315082 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!934 knownP!30 testedP!423 input!7874) lt!2649325)))

(declare-fun bs!1940385 () Bool)

(assert (= bs!1940385 d!2315082))

(assert (=> bs!1940385 m!8124910))

(declare-fun m!8125222 () Bool)

(assert (=> bs!1940385 m!8125222))

(assert (=> bs!1940385 m!8124916))

(assert (=> b!7561969 d!2315082))

(declare-fun d!2315084 () Bool)

(assert (=> d!2315084 (= ($colon$colon!3408 lt!2649172 lt!2649175) (Cons!72739 lt!2649175 lt!2649172))))

(assert (=> b!7561959 d!2315084))

(declare-fun d!2315086 () Bool)

(assert (=> d!2315086 (= (tail!15098 lt!2649173) (t!387592 lt!2649173))))

(assert (=> b!7561959 d!2315086))

(declare-fun lt!2649326 () List!72863)

(declare-fun b!7562353 () Bool)

(declare-fun e!4503144 () Bool)

(assert (=> b!7562353 (= e!4503144 (or (not (= lt!2649187 Nil!72739)) (= lt!2649326 testedP!423)))))

(declare-fun b!7562351 () Bool)

(declare-fun e!4503143 () List!72863)

(assert (=> b!7562351 (= e!4503143 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649187)))))

(declare-fun b!7562350 () Bool)

(assert (=> b!7562350 (= e!4503143 lt!2649187)))

(declare-fun d!2315088 () Bool)

(assert (=> d!2315088 e!4503144))

(declare-fun res!3030204 () Bool)

(assert (=> d!2315088 (=> (not res!3030204) (not e!4503144))))

(assert (=> d!2315088 (= res!3030204 (= (content!15401 lt!2649326) (set.union (content!15401 testedP!423) (content!15401 lt!2649187))))))

(assert (=> d!2315088 (= lt!2649326 e!4503143)))

(declare-fun c!1395335 () Bool)

(assert (=> d!2315088 (= c!1395335 (is-Nil!72739 testedP!423))))

(assert (=> d!2315088 (= (++!17484 testedP!423 lt!2649187) lt!2649326)))

(declare-fun b!7562352 () Bool)

(declare-fun res!3030203 () Bool)

(assert (=> b!7562352 (=> (not res!3030203) (not e!4503144))))

(assert (=> b!7562352 (= res!3030203 (= (size!42476 lt!2649326) (+ (size!42476 testedP!423) (size!42476 lt!2649187))))))

(assert (= (and d!2315088 c!1395335) b!7562350))

(assert (= (and d!2315088 (not c!1395335)) b!7562351))

(assert (= (and d!2315088 res!3030204) b!7562352))

(assert (= (and b!7562352 res!3030203) b!7562353))

(declare-fun m!8125224 () Bool)

(assert (=> b!7562351 m!8125224))

(declare-fun m!8125226 () Bool)

(assert (=> d!2315088 m!8125226))

(assert (=> d!2315088 m!8125058))

(declare-fun m!8125228 () Bool)

(assert (=> d!2315088 m!8125228))

(declare-fun m!8125230 () Bool)

(assert (=> b!7562352 m!8125230))

(assert (=> b!7562352 m!8124928))

(declare-fun m!8125232 () Bool)

(assert (=> b!7562352 m!8125232))

(assert (=> b!7561970 d!2315088))

(declare-fun b!7562354 () Bool)

(declare-fun e!4503151 () Bool)

(declare-fun call!693295 () Bool)

(assert (=> b!7562354 (= e!4503151 call!693295)))

(declare-fun b!7562355 () Bool)

(declare-fun e!4503145 () Bool)

(declare-fun e!4503147 () Bool)

(assert (=> b!7562355 (= e!4503145 e!4503147)))

(declare-fun c!1395337 () Bool)

(assert (=> b!7562355 (= c!1395337 (is-Union!19980 baseR!101))))

(declare-fun b!7562356 () Bool)

(declare-fun e!4503148 () Bool)

(assert (=> b!7562356 (= e!4503145 e!4503148)))

(declare-fun res!3030209 () Bool)

(assert (=> b!7562356 (= res!3030209 (not (nullable!8714 (reg!20309 baseR!101))))))

(assert (=> b!7562356 (=> (not res!3030209) (not e!4503148))))

(declare-fun d!2315090 () Bool)

(declare-fun res!3030207 () Bool)

(declare-fun e!4503146 () Bool)

(assert (=> d!2315090 (=> res!3030207 e!4503146)))

(assert (=> d!2315090 (= res!3030207 (is-ElementMatch!19980 baseR!101))))

(assert (=> d!2315090 (= (validRegex!10408 baseR!101) e!4503146)))

(declare-fun b!7562357 () Bool)

(declare-fun res!3030208 () Bool)

(declare-fun e!4503149 () Bool)

(assert (=> b!7562357 (=> (not res!3030208) (not e!4503149))))

(declare-fun call!693297 () Bool)

(assert (=> b!7562357 (= res!3030208 call!693297)))

(assert (=> b!7562357 (= e!4503147 e!4503149)))

(declare-fun b!7562358 () Bool)

(assert (=> b!7562358 (= e!4503149 call!693295)))

(declare-fun b!7562359 () Bool)

(assert (=> b!7562359 (= e!4503146 e!4503145)))

(declare-fun c!1395336 () Bool)

(assert (=> b!7562359 (= c!1395336 (is-Star!19980 baseR!101))))

(declare-fun bm!693290 () Bool)

(assert (=> bm!693290 (= call!693295 (validRegex!10408 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))

(declare-fun call!693296 () Bool)

(declare-fun bm!693291 () Bool)

(assert (=> bm!693291 (= call!693296 (validRegex!10408 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))

(declare-fun b!7562360 () Bool)

(declare-fun res!3030206 () Bool)

(declare-fun e!4503150 () Bool)

(assert (=> b!7562360 (=> res!3030206 e!4503150)))

(assert (=> b!7562360 (= res!3030206 (not (is-Concat!28825 baseR!101)))))

(assert (=> b!7562360 (= e!4503147 e!4503150)))

(declare-fun b!7562361 () Bool)

(assert (=> b!7562361 (= e!4503150 e!4503151)))

(declare-fun res!3030205 () Bool)

(assert (=> b!7562361 (=> (not res!3030205) (not e!4503151))))

(assert (=> b!7562361 (= res!3030205 call!693297)))

(declare-fun bm!693292 () Bool)

(assert (=> bm!693292 (= call!693297 call!693296)))

(declare-fun b!7562362 () Bool)

(assert (=> b!7562362 (= e!4503148 call!693296)))

(assert (= (and d!2315090 (not res!3030207)) b!7562359))

(assert (= (and b!7562359 c!1395336) b!7562356))

(assert (= (and b!7562359 (not c!1395336)) b!7562355))

(assert (= (and b!7562356 res!3030209) b!7562362))

(assert (= (and b!7562355 c!1395337) b!7562357))

(assert (= (and b!7562355 (not c!1395337)) b!7562360))

(assert (= (and b!7562357 res!3030208) b!7562358))

(assert (= (and b!7562360 (not res!3030206)) b!7562361))

(assert (= (and b!7562361 res!3030205) b!7562354))

(assert (= (or b!7562357 b!7562361) bm!693292))

(assert (= (or b!7562358 b!7562354) bm!693290))

(assert (= (or b!7562362 bm!693292) bm!693291))

(declare-fun m!8125234 () Bool)

(assert (=> b!7562356 m!8125234))

(declare-fun m!8125236 () Bool)

(assert (=> bm!693290 m!8125236))

(declare-fun m!8125238 () Bool)

(assert (=> bm!693291 m!8125238))

(assert (=> start!730634 d!2315090))

(declare-fun b!7562363 () Bool)

(declare-fun e!4503158 () Bool)

(declare-fun call!693298 () Bool)

(assert (=> b!7562363 (= e!4503158 call!693298)))

(declare-fun b!7562364 () Bool)

(declare-fun e!4503152 () Bool)

(declare-fun e!4503154 () Bool)

(assert (=> b!7562364 (= e!4503152 e!4503154)))

(declare-fun c!1395339 () Bool)

(assert (=> b!7562364 (= c!1395339 (is-Union!19980 r!24333))))

(declare-fun b!7562365 () Bool)

(declare-fun e!4503155 () Bool)

(assert (=> b!7562365 (= e!4503152 e!4503155)))

(declare-fun res!3030214 () Bool)

(assert (=> b!7562365 (= res!3030214 (not (nullable!8714 (reg!20309 r!24333))))))

(assert (=> b!7562365 (=> (not res!3030214) (not e!4503155))))

(declare-fun d!2315092 () Bool)

(declare-fun res!3030212 () Bool)

(declare-fun e!4503153 () Bool)

(assert (=> d!2315092 (=> res!3030212 e!4503153)))

(assert (=> d!2315092 (= res!3030212 (is-ElementMatch!19980 r!24333))))

(assert (=> d!2315092 (= (validRegex!10408 r!24333) e!4503153)))

(declare-fun b!7562366 () Bool)

(declare-fun res!3030213 () Bool)

(declare-fun e!4503156 () Bool)

(assert (=> b!7562366 (=> (not res!3030213) (not e!4503156))))

(declare-fun call!693300 () Bool)

(assert (=> b!7562366 (= res!3030213 call!693300)))

(assert (=> b!7562366 (= e!4503154 e!4503156)))

(declare-fun b!7562367 () Bool)

(assert (=> b!7562367 (= e!4503156 call!693298)))

(declare-fun b!7562368 () Bool)

(assert (=> b!7562368 (= e!4503153 e!4503152)))

(declare-fun c!1395338 () Bool)

(assert (=> b!7562368 (= c!1395338 (is-Star!19980 r!24333))))

(declare-fun bm!693293 () Bool)

(assert (=> bm!693293 (= call!693298 (validRegex!10408 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun bm!693294 () Bool)

(declare-fun call!693299 () Bool)

(assert (=> bm!693294 (= call!693299 (validRegex!10408 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))

(declare-fun b!7562369 () Bool)

(declare-fun res!3030211 () Bool)

(declare-fun e!4503157 () Bool)

(assert (=> b!7562369 (=> res!3030211 e!4503157)))

(assert (=> b!7562369 (= res!3030211 (not (is-Concat!28825 r!24333)))))

(assert (=> b!7562369 (= e!4503154 e!4503157)))

(declare-fun b!7562370 () Bool)

(assert (=> b!7562370 (= e!4503157 e!4503158)))

(declare-fun res!3030210 () Bool)

(assert (=> b!7562370 (=> (not res!3030210) (not e!4503158))))

(assert (=> b!7562370 (= res!3030210 call!693300)))

(declare-fun bm!693295 () Bool)

(assert (=> bm!693295 (= call!693300 call!693299)))

(declare-fun b!7562371 () Bool)

(assert (=> b!7562371 (= e!4503155 call!693299)))

(assert (= (and d!2315092 (not res!3030212)) b!7562368))

(assert (= (and b!7562368 c!1395338) b!7562365))

(assert (= (and b!7562368 (not c!1395338)) b!7562364))

(assert (= (and b!7562365 res!3030214) b!7562371))

(assert (= (and b!7562364 c!1395339) b!7562366))

(assert (= (and b!7562364 (not c!1395339)) b!7562369))

(assert (= (and b!7562366 res!3030213) b!7562367))

(assert (= (and b!7562369 (not res!3030211)) b!7562370))

(assert (= (and b!7562370 res!3030210) b!7562363))

(assert (= (or b!7562366 b!7562370) bm!693295))

(assert (= (or b!7562367 b!7562363) bm!693293))

(assert (= (or b!7562371 bm!693295) bm!693294))

(declare-fun m!8125240 () Bool)

(assert (=> b!7562365 m!8125240))

(declare-fun m!8125242 () Bool)

(assert (=> bm!693293 m!8125242))

(declare-fun m!8125244 () Bool)

(assert (=> bm!693294 m!8125244))

(assert (=> b!7561981 d!2315092))

(declare-fun d!2315094 () Bool)

(assert (=> d!2315094 (= lt!2649176 lt!2649173)))

(declare-fun lt!2649332 () Unit!166894)

(declare-fun choose!58495 (List!72863 List!72863 List!72863 List!72863 List!72863) Unit!166894)

(assert (=> d!2315094 (= lt!2649332 (choose!58495 testedP!423 lt!2649176 testedP!423 lt!2649173 knownP!30))))

(assert (=> d!2315094 (isPrefix!6186 testedP!423 knownP!30)))

(assert (=> d!2315094 (= (lemmaSamePrefixThenSameSuffix!2886 testedP!423 lt!2649176 testedP!423 lt!2649173 knownP!30) lt!2649332)))

(declare-fun bs!1940387 () Bool)

(assert (= bs!1940387 d!2315094))

(declare-fun m!8125252 () Bool)

(assert (=> bs!1940387 m!8125252))

(assert (=> bs!1940387 m!8124910))

(assert (=> b!7561982 d!2315094))

(declare-fun e!4503160 () Bool)

(declare-fun lt!2649333 () List!72863)

(declare-fun b!7562375 () Bool)

(assert (=> b!7562375 (= e!4503160 (or (not (= lt!2649176 Nil!72739)) (= lt!2649333 testedP!423)))))

(declare-fun b!7562373 () Bool)

(declare-fun e!4503159 () List!72863)

(assert (=> b!7562373 (= e!4503159 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649176)))))

(declare-fun b!7562372 () Bool)

(assert (=> b!7562372 (= e!4503159 lt!2649176)))

(declare-fun d!2315098 () Bool)

(assert (=> d!2315098 e!4503160))

(declare-fun res!3030216 () Bool)

(assert (=> d!2315098 (=> (not res!3030216) (not e!4503160))))

(assert (=> d!2315098 (= res!3030216 (= (content!15401 lt!2649333) (set.union (content!15401 testedP!423) (content!15401 lt!2649176))))))

(assert (=> d!2315098 (= lt!2649333 e!4503159)))

(declare-fun c!1395340 () Bool)

(assert (=> d!2315098 (= c!1395340 (is-Nil!72739 testedP!423))))

(assert (=> d!2315098 (= (++!17484 testedP!423 lt!2649176) lt!2649333)))

(declare-fun b!7562374 () Bool)

(declare-fun res!3030215 () Bool)

(assert (=> b!7562374 (=> (not res!3030215) (not e!4503160))))

(assert (=> b!7562374 (= res!3030215 (= (size!42476 lt!2649333) (+ (size!42476 testedP!423) (size!42476 lt!2649176))))))

(assert (= (and d!2315098 c!1395340) b!7562372))

(assert (= (and d!2315098 (not c!1395340)) b!7562373))

(assert (= (and d!2315098 res!3030216) b!7562374))

(assert (= (and b!7562374 res!3030215) b!7562375))

(declare-fun m!8125254 () Bool)

(assert (=> b!7562373 m!8125254))

(declare-fun m!8125256 () Bool)

(assert (=> d!2315098 m!8125256))

(assert (=> d!2315098 m!8125058))

(declare-fun m!8125258 () Bool)

(assert (=> d!2315098 m!8125258))

(declare-fun m!8125260 () Bool)

(assert (=> b!7562374 m!8125260))

(assert (=> b!7562374 m!8124928))

(declare-fun m!8125262 () Bool)

(assert (=> b!7562374 m!8125262))

(assert (=> b!7561982 d!2315098))

(declare-fun lt!2649334 () List!72863)

(declare-fun b!7562379 () Bool)

(declare-fun e!4503162 () Bool)

(assert (=> b!7562379 (= e!4503162 (or (not (= lt!2649181 Nil!72739)) (= lt!2649334 lt!2649177)))))

(declare-fun b!7562377 () Bool)

(declare-fun e!4503161 () List!72863)

(assert (=> b!7562377 (= e!4503161 (Cons!72739 (h!79187 lt!2649177) (++!17484 (t!387592 lt!2649177) lt!2649181)))))

(declare-fun b!7562376 () Bool)

(assert (=> b!7562376 (= e!4503161 lt!2649181)))

(declare-fun d!2315100 () Bool)

(assert (=> d!2315100 e!4503162))

(declare-fun res!3030218 () Bool)

(assert (=> d!2315100 (=> (not res!3030218) (not e!4503162))))

(assert (=> d!2315100 (= res!3030218 (= (content!15401 lt!2649334) (set.union (content!15401 lt!2649177) (content!15401 lt!2649181))))))

(assert (=> d!2315100 (= lt!2649334 e!4503161)))

(declare-fun c!1395341 () Bool)

(assert (=> d!2315100 (= c!1395341 (is-Nil!72739 lt!2649177))))

(assert (=> d!2315100 (= (++!17484 lt!2649177 lt!2649181) lt!2649334)))

(declare-fun b!7562378 () Bool)

(declare-fun res!3030217 () Bool)

(assert (=> b!7562378 (=> (not res!3030217) (not e!4503162))))

(assert (=> b!7562378 (= res!3030217 (= (size!42476 lt!2649334) (+ (size!42476 lt!2649177) (size!42476 lt!2649181))))))

(assert (= (and d!2315100 c!1395341) b!7562376))

(assert (= (and d!2315100 (not c!1395341)) b!7562377))

(assert (= (and d!2315100 res!3030218) b!7562378))

(assert (= (and b!7562378 res!3030217) b!7562379))

(declare-fun m!8125264 () Bool)

(assert (=> b!7562377 m!8125264))

(declare-fun m!8125266 () Bool)

(assert (=> d!2315100 m!8125266))

(assert (=> d!2315100 m!8125060))

(assert (=> d!2315100 m!8125150))

(declare-fun m!8125268 () Bool)

(assert (=> b!7562378 m!8125268))

(assert (=> b!7562378 m!8125064))

(assert (=> b!7562378 m!8125154))

(assert (=> b!7561982 d!2315100))

(declare-fun d!2315102 () Bool)

(assert (=> d!2315102 (= (++!17484 (++!17484 testedP!423 lt!2649177) lt!2649181) (++!17484 testedP!423 (++!17484 lt!2649177 lt!2649181)))))

(declare-fun lt!2649337 () Unit!166894)

(declare-fun choose!58496 (List!72863 List!72863 List!72863) Unit!166894)

(assert (=> d!2315102 (= lt!2649337 (choose!58496 testedP!423 lt!2649177 lt!2649181))))

(assert (=> d!2315102 (= (lemmaConcatAssociativity!3119 testedP!423 lt!2649177 lt!2649181) lt!2649337)))

(declare-fun bs!1940389 () Bool)

(assert (= bs!1940389 d!2315102))

(assert (=> bs!1940389 m!8124872))

(declare-fun m!8125272 () Bool)

(assert (=> bs!1940389 m!8125272))

(declare-fun m!8125274 () Bool)

(assert (=> bs!1940389 m!8125274))

(assert (=> bs!1940389 m!8124872))

(assert (=> bs!1940389 m!8124896))

(assert (=> bs!1940389 m!8124896))

(declare-fun m!8125276 () Bool)

(assert (=> bs!1940389 m!8125276))

(assert (=> b!7561982 d!2315102))

(declare-fun b!7562387 () Bool)

(declare-fun lt!2649339 () List!72863)

(declare-fun e!4503166 () Bool)

(assert (=> b!7562387 (= e!4503166 (or (not (= lt!2649168 Nil!72739)) (= lt!2649339 lt!2649174)))))

(declare-fun b!7562385 () Bool)

(declare-fun e!4503165 () List!72863)

(assert (=> b!7562385 (= e!4503165 (Cons!72739 (h!79187 lt!2649174) (++!17484 (t!387592 lt!2649174) lt!2649168)))))

(declare-fun b!7562384 () Bool)

(assert (=> b!7562384 (= e!4503165 lt!2649168)))

(declare-fun d!2315106 () Bool)

(assert (=> d!2315106 e!4503166))

(declare-fun res!3030222 () Bool)

(assert (=> d!2315106 (=> (not res!3030222) (not e!4503166))))

(assert (=> d!2315106 (= res!3030222 (= (content!15401 lt!2649339) (set.union (content!15401 lt!2649174) (content!15401 lt!2649168))))))

(assert (=> d!2315106 (= lt!2649339 e!4503165)))

(declare-fun c!1395343 () Bool)

(assert (=> d!2315106 (= c!1395343 (is-Nil!72739 lt!2649174))))

(assert (=> d!2315106 (= (++!17484 lt!2649174 lt!2649168) lt!2649339)))

(declare-fun b!7562386 () Bool)

(declare-fun res!3030221 () Bool)

(assert (=> b!7562386 (=> (not res!3030221) (not e!4503166))))

(assert (=> b!7562386 (= res!3030221 (= (size!42476 lt!2649339) (+ (size!42476 lt!2649174) (size!42476 lt!2649168))))))

(assert (= (and d!2315106 c!1395343) b!7562384))

(assert (= (and d!2315106 (not c!1395343)) b!7562385))

(assert (= (and d!2315106 res!3030222) b!7562386))

(assert (= (and b!7562386 res!3030221) b!7562387))

(declare-fun m!8125278 () Bool)

(assert (=> b!7562385 m!8125278))

(declare-fun m!8125280 () Bool)

(assert (=> d!2315106 m!8125280))

(declare-fun m!8125282 () Bool)

(assert (=> d!2315106 m!8125282))

(assert (=> d!2315106 m!8125086))

(declare-fun m!8125284 () Bool)

(assert (=> b!7562386 m!8125284))

(declare-fun m!8125286 () Bool)

(assert (=> b!7562386 m!8125286))

(assert (=> b!7562386 m!8125090))

(assert (=> b!7561972 d!2315106))

(declare-fun lt!2649340 () List!72863)

(declare-fun b!7562391 () Bool)

(declare-fun e!4503168 () Bool)

(assert (=> b!7562391 (= e!4503168 (or (not (= lt!2649173 Nil!72739)) (= lt!2649340 testedP!423)))))

(declare-fun b!7562389 () Bool)

(declare-fun e!4503167 () List!72863)

(assert (=> b!7562389 (= e!4503167 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649173)))))

(declare-fun b!7562388 () Bool)

(assert (=> b!7562388 (= e!4503167 lt!2649173)))

(declare-fun d!2315108 () Bool)

(assert (=> d!2315108 e!4503168))

(declare-fun res!3030224 () Bool)

(assert (=> d!2315108 (=> (not res!3030224) (not e!4503168))))

(assert (=> d!2315108 (= res!3030224 (= (content!15401 lt!2649340) (set.union (content!15401 testedP!423) (content!15401 lt!2649173))))))

(assert (=> d!2315108 (= lt!2649340 e!4503167)))

(declare-fun c!1395344 () Bool)

(assert (=> d!2315108 (= c!1395344 (is-Nil!72739 testedP!423))))

(assert (=> d!2315108 (= (++!17484 testedP!423 lt!2649173) lt!2649340)))

(declare-fun b!7562390 () Bool)

(declare-fun res!3030223 () Bool)

(assert (=> b!7562390 (=> (not res!3030223) (not e!4503168))))

(assert (=> b!7562390 (= res!3030223 (= (size!42476 lt!2649340) (+ (size!42476 testedP!423) (size!42476 lt!2649173))))))

(assert (= (and d!2315108 c!1395344) b!7562388))

(assert (= (and d!2315108 (not c!1395344)) b!7562389))

(assert (= (and d!2315108 res!3030224) b!7562390))

(assert (= (and b!7562390 res!3030223) b!7562391))

(declare-fun m!8125296 () Bool)

(assert (=> b!7562389 m!8125296))

(declare-fun m!8125298 () Bool)

(assert (=> d!2315108 m!8125298))

(assert (=> d!2315108 m!8125058))

(declare-fun m!8125302 () Bool)

(assert (=> d!2315108 m!8125302))

(declare-fun m!8125304 () Bool)

(assert (=> b!7562390 m!8125304))

(assert (=> b!7562390 m!8124928))

(declare-fun m!8125306 () Bool)

(assert (=> b!7562390 m!8125306))

(assert (=> b!7561972 d!2315108))

(declare-fun d!2315110 () Bool)

(declare-fun lostCauseFct!467 (Regex!19980) Bool)

(assert (=> d!2315110 (= (lostCause!1768 r!24333) (lostCauseFct!467 r!24333))))

(declare-fun bs!1940390 () Bool)

(assert (= bs!1940390 d!2315110))

(declare-fun m!8125322 () Bool)

(assert (=> bs!1940390 m!8125322))

(assert (=> b!7561983 d!2315110))

(declare-fun d!2315116 () Bool)

(declare-fun lt!2649343 () Int)

(assert (=> d!2315116 (>= lt!2649343 0)))

(declare-fun e!4503171 () Int)

(assert (=> d!2315116 (= lt!2649343 e!4503171)))

(declare-fun c!1395346 () Bool)

(assert (=> d!2315116 (= c!1395346 (is-Nil!72739 testedP!423))))

(assert (=> d!2315116 (= (size!42476 testedP!423) lt!2649343)))

(declare-fun b!7562396 () Bool)

(assert (=> b!7562396 (= e!4503171 0)))

(declare-fun b!7562397 () Bool)

(assert (=> b!7562397 (= e!4503171 (+ 1 (size!42476 (t!387592 testedP!423))))))

(assert (= (and d!2315116 c!1395346) b!7562396))

(assert (= (and d!2315116 (not c!1395346)) b!7562397))

(declare-fun m!8125324 () Bool)

(assert (=> b!7562397 m!8125324))

(assert (=> b!7561962 d!2315116))

(declare-fun d!2315118 () Bool)

(declare-fun lt!2649344 () Int)

(assert (=> d!2315118 (>= lt!2649344 0)))

(declare-fun e!4503172 () Int)

(assert (=> d!2315118 (= lt!2649344 e!4503172)))

(declare-fun c!1395347 () Bool)

(assert (=> d!2315118 (= c!1395347 (is-Nil!72739 knownP!30))))

(assert (=> d!2315118 (= (size!42476 knownP!30) lt!2649344)))

(declare-fun b!7562398 () Bool)

(assert (=> b!7562398 (= e!4503172 0)))

(declare-fun b!7562399 () Bool)

(assert (=> b!7562399 (= e!4503172 (+ 1 (size!42476 (t!387592 knownP!30))))))

(assert (= (and d!2315118 c!1395347) b!7562398))

(assert (= (and d!2315118 (not c!1395347)) b!7562399))

(declare-fun m!8125328 () Bool)

(assert (=> b!7562399 m!8125328))

(assert (=> b!7561962 d!2315118))

(declare-fun d!2315120 () Bool)

(assert (=> d!2315120 (= (head!15558 lt!2649173) (h!79187 lt!2649173))))

(assert (=> b!7561974 d!2315120))

(declare-fun d!2315122 () Bool)

(assert (=> d!2315122 (= lt!2649192 lt!2649187)))

(declare-fun lt!2649345 () Unit!166894)

(assert (=> d!2315122 (= lt!2649345 (choose!58495 testedP!423 lt!2649192 testedP!423 lt!2649187 input!7874))))

(assert (=> d!2315122 (isPrefix!6186 testedP!423 input!7874)))

(assert (=> d!2315122 (= (lemmaSamePrefixThenSameSuffix!2886 testedP!423 lt!2649192 testedP!423 lt!2649187 input!7874) lt!2649345)))

(declare-fun bs!1940392 () Bool)

(assert (= bs!1940392 d!2315122))

(declare-fun m!8125334 () Bool)

(assert (=> bs!1940392 m!8125334))

(assert (=> bs!1940392 m!8124890))

(assert (=> b!7561974 d!2315122))

(declare-fun d!2315126 () Bool)

(declare-fun lt!2649347 () Int)

(assert (=> d!2315126 (>= lt!2649347 0)))

(declare-fun e!4503175 () Int)

(assert (=> d!2315126 (= lt!2649347 e!4503175)))

(declare-fun c!1395349 () Bool)

(assert (=> d!2315126 (= c!1395349 (is-Nil!72739 input!7874))))

(assert (=> d!2315126 (= (size!42476 input!7874) lt!2649347)))

(declare-fun b!7562402 () Bool)

(assert (=> b!7562402 (= e!4503175 0)))

(declare-fun b!7562404 () Bool)

(assert (=> b!7562404 (= e!4503175 (+ 1 (size!42476 (t!387592 input!7874))))))

(assert (= (and d!2315126 c!1395349) b!7562402))

(assert (= (and d!2315126 (not c!1395349)) b!7562404))

(declare-fun m!8125336 () Bool)

(assert (=> b!7562404 m!8125336))

(assert (=> b!7561985 d!2315126))

(declare-fun lt!2649348 () List!72863)

(declare-fun b!7562409 () Bool)

(declare-fun e!4503177 () Bool)

(assert (=> b!7562409 (= e!4503177 (or (not (= lt!2649192 Nil!72739)) (= lt!2649348 testedP!423)))))

(declare-fun b!7562407 () Bool)

(declare-fun e!4503176 () List!72863)

(assert (=> b!7562407 (= e!4503176 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649192)))))

(declare-fun b!7562406 () Bool)

(assert (=> b!7562406 (= e!4503176 lt!2649192)))

(declare-fun d!2315128 () Bool)

(assert (=> d!2315128 e!4503177))

(declare-fun res!3030230 () Bool)

(assert (=> d!2315128 (=> (not res!3030230) (not e!4503177))))

(assert (=> d!2315128 (= res!3030230 (= (content!15401 lt!2649348) (set.union (content!15401 testedP!423) (content!15401 lt!2649192))))))

(assert (=> d!2315128 (= lt!2649348 e!4503176)))

(declare-fun c!1395350 () Bool)

(assert (=> d!2315128 (= c!1395350 (is-Nil!72739 testedP!423))))

(assert (=> d!2315128 (= (++!17484 testedP!423 lt!2649192) lt!2649348)))

(declare-fun b!7562408 () Bool)

(declare-fun res!3030229 () Bool)

(assert (=> b!7562408 (=> (not res!3030229) (not e!4503177))))

(assert (=> b!7562408 (= res!3030229 (= (size!42476 lt!2649348) (+ (size!42476 testedP!423) (size!42476 lt!2649192))))))

(assert (= (and d!2315128 c!1395350) b!7562406))

(assert (= (and d!2315128 (not c!1395350)) b!7562407))

(assert (= (and d!2315128 res!3030230) b!7562408))

(assert (= (and b!7562408 res!3030229) b!7562409))

(declare-fun m!8125338 () Bool)

(assert (=> b!7562407 m!8125338))

(declare-fun m!8125340 () Bool)

(assert (=> d!2315128 m!8125340))

(assert (=> d!2315128 m!8125058))

(declare-fun m!8125342 () Bool)

(assert (=> d!2315128 m!8125342))

(declare-fun m!8125344 () Bool)

(assert (=> b!7562408 m!8125344))

(assert (=> b!7562408 m!8124928))

(declare-fun m!8125346 () Bool)

(assert (=> b!7562408 m!8125346))

(assert (=> b!7561975 d!2315128))

(declare-fun lt!2649349 () List!72863)

(declare-fun e!4503179 () Bool)

(declare-fun b!7562413 () Bool)

(assert (=> b!7562413 (= e!4503179 (or (not (= lt!2649168 Nil!72739)) (= lt!2649349 lt!2649173)))))

(declare-fun b!7562411 () Bool)

(declare-fun e!4503178 () List!72863)

(assert (=> b!7562411 (= e!4503178 (Cons!72739 (h!79187 lt!2649173) (++!17484 (t!387592 lt!2649173) lt!2649168)))))

(declare-fun b!7562410 () Bool)

(assert (=> b!7562410 (= e!4503178 lt!2649168)))

(declare-fun d!2315130 () Bool)

(assert (=> d!2315130 e!4503179))

(declare-fun res!3030232 () Bool)

(assert (=> d!2315130 (=> (not res!3030232) (not e!4503179))))

(assert (=> d!2315130 (= res!3030232 (= (content!15401 lt!2649349) (set.union (content!15401 lt!2649173) (content!15401 lt!2649168))))))

(assert (=> d!2315130 (= lt!2649349 e!4503178)))

(declare-fun c!1395351 () Bool)

(assert (=> d!2315130 (= c!1395351 (is-Nil!72739 lt!2649173))))

(assert (=> d!2315130 (= (++!17484 lt!2649173 lt!2649168) lt!2649349)))

(declare-fun b!7562412 () Bool)

(declare-fun res!3030231 () Bool)

(assert (=> b!7562412 (=> (not res!3030231) (not e!4503179))))

(assert (=> b!7562412 (= res!3030231 (= (size!42476 lt!2649349) (+ (size!42476 lt!2649173) (size!42476 lt!2649168))))))

(assert (= (and d!2315130 c!1395351) b!7562410))

(assert (= (and d!2315130 (not c!1395351)) b!7562411))

(assert (= (and d!2315130 res!3030232) b!7562412))

(assert (= (and b!7562412 res!3030231) b!7562413))

(declare-fun m!8125354 () Bool)

(assert (=> b!7562411 m!8125354))

(declare-fun m!8125356 () Bool)

(assert (=> d!2315130 m!8125356))

(assert (=> d!2315130 m!8125302))

(assert (=> d!2315130 m!8125086))

(declare-fun m!8125358 () Bool)

(assert (=> b!7562412 m!8125358))

(assert (=> b!7562412 m!8125306))

(assert (=> b!7562412 m!8125090))

(assert (=> b!7561975 d!2315130))

(declare-fun d!2315134 () Bool)

(assert (=> d!2315134 (= (++!17484 (++!17484 testedP!423 lt!2649173) lt!2649168) (++!17484 testedP!423 (++!17484 lt!2649173 lt!2649168)))))

(declare-fun lt!2649350 () Unit!166894)

(assert (=> d!2315134 (= lt!2649350 (choose!58496 testedP!423 lt!2649173 lt!2649168))))

(assert (=> d!2315134 (= (lemmaConcatAssociativity!3119 testedP!423 lt!2649173 lt!2649168) lt!2649350)))

(declare-fun bs!1940393 () Bool)

(assert (= bs!1940393 d!2315134))

(assert (=> bs!1940393 m!8124902))

(declare-fun m!8125360 () Bool)

(assert (=> bs!1940393 m!8125360))

(declare-fun m!8125362 () Bool)

(assert (=> bs!1940393 m!8125362))

(assert (=> bs!1940393 m!8124902))

(assert (=> bs!1940393 m!8124852))

(assert (=> bs!1940393 m!8124852))

(declare-fun m!8125364 () Bool)

(assert (=> bs!1940393 m!8125364))

(assert (=> b!7561975 d!2315134))

(declare-fun b!7562414 () Bool)

(declare-fun res!3030235 () Bool)

(declare-fun e!4503186 () Bool)

(assert (=> b!7562414 (=> (not res!3030235) (not e!4503186))))

(declare-fun call!693301 () Bool)

(assert (=> b!7562414 (= res!3030235 (not call!693301))))

(declare-fun b!7562415 () Bool)

(declare-fun e!4503185 () Bool)

(declare-fun e!4503183 () Bool)

(assert (=> b!7562415 (= e!4503185 e!4503183)))

(declare-fun c!1395353 () Bool)

(assert (=> b!7562415 (= c!1395353 (is-EmptyLang!19980 lt!2649188))))

(declare-fun b!7562416 () Bool)

(assert (=> b!7562416 (= e!4503186 (= (head!15558 lt!2649181) (c!1395261 lt!2649188)))))

(declare-fun b!7562417 () Bool)

(declare-fun e!4503181 () Bool)

(assert (=> b!7562417 (= e!4503181 (not (= (head!15558 lt!2649181) (c!1395261 lt!2649188))))))

(declare-fun b!7562418 () Bool)

(declare-fun e!4503180 () Bool)

(assert (=> b!7562418 (= e!4503180 (matchR!9582 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)) (tail!15098 lt!2649181)))))

(declare-fun b!7562419 () Bool)

(declare-fun e!4503184 () Bool)

(assert (=> b!7562419 (= e!4503184 e!4503181)))

(declare-fun res!3030237 () Bool)

(assert (=> b!7562419 (=> res!3030237 e!4503181)))

(assert (=> b!7562419 (= res!3030237 call!693301)))

(declare-fun b!7562420 () Bool)

(declare-fun res!3030239 () Bool)

(assert (=> b!7562420 (=> res!3030239 e!4503181)))

(assert (=> b!7562420 (= res!3030239 (not (isEmpty!41414 (tail!15098 lt!2649181))))))

(declare-fun b!7562421 () Bool)

(declare-fun res!3030236 () Bool)

(declare-fun e!4503182 () Bool)

(assert (=> b!7562421 (=> res!3030236 e!4503182)))

(assert (=> b!7562421 (= res!3030236 e!4503186)))

(declare-fun res!3030240 () Bool)

(assert (=> b!7562421 (=> (not res!3030240) (not e!4503186))))

(declare-fun lt!2649351 () Bool)

(assert (=> b!7562421 (= res!3030240 lt!2649351)))

(declare-fun b!7562422 () Bool)

(assert (=> b!7562422 (= e!4503180 (nullable!8714 lt!2649188))))

(declare-fun bm!693296 () Bool)

(assert (=> bm!693296 (= call!693301 (isEmpty!41414 lt!2649181))))

(declare-fun b!7562423 () Bool)

(assert (=> b!7562423 (= e!4503182 e!4503184)))

(declare-fun res!3030238 () Bool)

(assert (=> b!7562423 (=> (not res!3030238) (not e!4503184))))

(assert (=> b!7562423 (= res!3030238 (not lt!2649351))))

(declare-fun b!7562424 () Bool)

(declare-fun res!3030234 () Bool)

(assert (=> b!7562424 (=> (not res!3030234) (not e!4503186))))

(assert (=> b!7562424 (= res!3030234 (isEmpty!41414 (tail!15098 lt!2649181)))))

(declare-fun b!7562426 () Bool)

(assert (=> b!7562426 (= e!4503185 (= lt!2649351 call!693301))))

(declare-fun b!7562427 () Bool)

(assert (=> b!7562427 (= e!4503183 (not lt!2649351))))

(declare-fun d!2315136 () Bool)

(assert (=> d!2315136 e!4503185))

(declare-fun c!1395352 () Bool)

(assert (=> d!2315136 (= c!1395352 (is-EmptyExpr!19980 lt!2649188))))

(assert (=> d!2315136 (= lt!2649351 e!4503180)))

(declare-fun c!1395354 () Bool)

(assert (=> d!2315136 (= c!1395354 (isEmpty!41414 lt!2649181))))

(assert (=> d!2315136 (validRegex!10408 lt!2649188)))

(assert (=> d!2315136 (= (matchR!9582 lt!2649188 lt!2649181) lt!2649351)))

(declare-fun b!7562425 () Bool)

(declare-fun res!3030233 () Bool)

(assert (=> b!7562425 (=> res!3030233 e!4503182)))

(assert (=> b!7562425 (= res!3030233 (not (is-ElementMatch!19980 lt!2649188)))))

(assert (=> b!7562425 (= e!4503183 e!4503182)))

(assert (= (and d!2315136 c!1395354) b!7562422))

(assert (= (and d!2315136 (not c!1395354)) b!7562418))

(assert (= (and d!2315136 c!1395352) b!7562426))

(assert (= (and d!2315136 (not c!1395352)) b!7562415))

(assert (= (and b!7562415 c!1395353) b!7562427))

(assert (= (and b!7562415 (not c!1395353)) b!7562425))

(assert (= (and b!7562425 (not res!3030233)) b!7562421))

(assert (= (and b!7562421 res!3030240) b!7562414))

(assert (= (and b!7562414 res!3030235) b!7562424))

(assert (= (and b!7562424 res!3030234) b!7562416))

(assert (= (and b!7562421 (not res!3030236)) b!7562423))

(assert (= (and b!7562423 res!3030238) b!7562419))

(assert (= (and b!7562419 (not res!3030237)) b!7562420))

(assert (= (and b!7562420 (not res!3030239)) b!7562417))

(assert (= (or b!7562426 b!7562414 b!7562419) bm!693296))

(declare-fun m!8125366 () Bool)

(assert (=> d!2315136 m!8125366))

(assert (=> d!2315136 m!8124856))

(declare-fun m!8125368 () Bool)

(assert (=> b!7562422 m!8125368))

(declare-fun m!8125370 () Bool)

(assert (=> b!7562424 m!8125370))

(assert (=> b!7562424 m!8125370))

(declare-fun m!8125372 () Bool)

(assert (=> b!7562424 m!8125372))

(declare-fun m!8125374 () Bool)

(assert (=> b!7562417 m!8125374))

(assert (=> b!7562420 m!8125370))

(assert (=> b!7562420 m!8125370))

(assert (=> b!7562420 m!8125372))

(assert (=> b!7562416 m!8125374))

(assert (=> bm!693296 m!8125366))

(assert (=> b!7562418 m!8125374))

(assert (=> b!7562418 m!8125374))

(declare-fun m!8125376 () Bool)

(assert (=> b!7562418 m!8125376))

(assert (=> b!7562418 m!8125370))

(assert (=> b!7562418 m!8125376))

(assert (=> b!7562418 m!8125370))

(declare-fun m!8125378 () Bool)

(assert (=> b!7562418 m!8125378))

(assert (=> b!7561986 d!2315136))

(declare-fun e!4503189 () Bool)

(assert (=> b!7561971 (= tp!2202215 e!4503189)))

(declare-fun b!7562441 () Bool)

(declare-fun tp!2202274 () Bool)

(declare-fun tp!2202276 () Bool)

(assert (=> b!7562441 (= e!4503189 (and tp!2202274 tp!2202276))))

(declare-fun b!7562438 () Bool)

(assert (=> b!7562438 (= e!4503189 tp_is_empty!50315)))

(declare-fun b!7562440 () Bool)

(declare-fun tp!2202275 () Bool)

(assert (=> b!7562440 (= e!4503189 tp!2202275)))

(declare-fun b!7562439 () Bool)

(declare-fun tp!2202272 () Bool)

(declare-fun tp!2202273 () Bool)

(assert (=> b!7562439 (= e!4503189 (and tp!2202272 tp!2202273))))

(assert (= (and b!7561971 (is-ElementMatch!19980 (regOne!40472 baseR!101))) b!7562438))

(assert (= (and b!7561971 (is-Concat!28825 (regOne!40472 baseR!101))) b!7562439))

(assert (= (and b!7561971 (is-Star!19980 (regOne!40472 baseR!101))) b!7562440))

(assert (= (and b!7561971 (is-Union!19980 (regOne!40472 baseR!101))) b!7562441))

(declare-fun e!4503190 () Bool)

(assert (=> b!7561971 (= tp!2202222 e!4503190)))

(declare-fun b!7562445 () Bool)

(declare-fun tp!2202279 () Bool)

(declare-fun tp!2202281 () Bool)

(assert (=> b!7562445 (= e!4503190 (and tp!2202279 tp!2202281))))

(declare-fun b!7562442 () Bool)

(assert (=> b!7562442 (= e!4503190 tp_is_empty!50315)))

(declare-fun b!7562444 () Bool)

(declare-fun tp!2202280 () Bool)

(assert (=> b!7562444 (= e!4503190 tp!2202280)))

(declare-fun b!7562443 () Bool)

(declare-fun tp!2202277 () Bool)

(declare-fun tp!2202278 () Bool)

(assert (=> b!7562443 (= e!4503190 (and tp!2202277 tp!2202278))))

(assert (= (and b!7561971 (is-ElementMatch!19980 (regTwo!40472 baseR!101))) b!7562442))

(assert (= (and b!7561971 (is-Concat!28825 (regTwo!40472 baseR!101))) b!7562443))

(assert (= (and b!7561971 (is-Star!19980 (regTwo!40472 baseR!101))) b!7562444))

(assert (= (and b!7561971 (is-Union!19980 (regTwo!40472 baseR!101))) b!7562445))

(declare-fun b!7562450 () Bool)

(declare-fun e!4503193 () Bool)

(declare-fun tp!2202284 () Bool)

(assert (=> b!7562450 (= e!4503193 (and tp_is_empty!50315 tp!2202284))))

(assert (=> b!7561987 (= tp!2202213 e!4503193)))

(assert (= (and b!7561987 (is-Cons!72739 (t!387592 knownP!30))) b!7562450))

(declare-fun b!7562451 () Bool)

(declare-fun e!4503194 () Bool)

(declare-fun tp!2202285 () Bool)

(assert (=> b!7562451 (= e!4503194 (and tp_is_empty!50315 tp!2202285))))

(assert (=> b!7561961 (= tp!2202220 e!4503194)))

(assert (= (and b!7561961 (is-Cons!72739 (t!387592 input!7874))) b!7562451))

(declare-fun e!4503195 () Bool)

(assert (=> b!7561973 (= tp!2202221 e!4503195)))

(declare-fun b!7562455 () Bool)

(declare-fun tp!2202288 () Bool)

(declare-fun tp!2202290 () Bool)

(assert (=> b!7562455 (= e!4503195 (and tp!2202288 tp!2202290))))

(declare-fun b!7562452 () Bool)

(assert (=> b!7562452 (= e!4503195 tp_is_empty!50315)))

(declare-fun b!7562454 () Bool)

(declare-fun tp!2202289 () Bool)

(assert (=> b!7562454 (= e!4503195 tp!2202289)))

(declare-fun b!7562453 () Bool)

(declare-fun tp!2202286 () Bool)

(declare-fun tp!2202287 () Bool)

(assert (=> b!7562453 (= e!4503195 (and tp!2202286 tp!2202287))))

(assert (= (and b!7561973 (is-ElementMatch!19980 (reg!20309 r!24333))) b!7562452))

(assert (= (and b!7561973 (is-Concat!28825 (reg!20309 r!24333))) b!7562453))

(assert (= (and b!7561973 (is-Star!19980 (reg!20309 r!24333))) b!7562454))

(assert (= (and b!7561973 (is-Union!19980 (reg!20309 r!24333))) b!7562455))

(declare-fun e!4503196 () Bool)

(assert (=> b!7561963 (= tp!2202218 e!4503196)))

(declare-fun b!7562459 () Bool)

(declare-fun tp!2202293 () Bool)

(declare-fun tp!2202295 () Bool)

(assert (=> b!7562459 (= e!4503196 (and tp!2202293 tp!2202295))))

(declare-fun b!7562456 () Bool)

(assert (=> b!7562456 (= e!4503196 tp_is_empty!50315)))

(declare-fun b!7562458 () Bool)

(declare-fun tp!2202294 () Bool)

(assert (=> b!7562458 (= e!4503196 tp!2202294)))

(declare-fun b!7562457 () Bool)

(declare-fun tp!2202291 () Bool)

(declare-fun tp!2202292 () Bool)

(assert (=> b!7562457 (= e!4503196 (and tp!2202291 tp!2202292))))

(assert (= (and b!7561963 (is-ElementMatch!19980 (regOne!40473 baseR!101))) b!7562456))

(assert (= (and b!7561963 (is-Concat!28825 (regOne!40473 baseR!101))) b!7562457))

(assert (= (and b!7561963 (is-Star!19980 (regOne!40473 baseR!101))) b!7562458))

(assert (= (and b!7561963 (is-Union!19980 (regOne!40473 baseR!101))) b!7562459))

(declare-fun e!4503197 () Bool)

(assert (=> b!7561963 (= tp!2202212 e!4503197)))

(declare-fun b!7562463 () Bool)

(declare-fun tp!2202298 () Bool)

(declare-fun tp!2202300 () Bool)

(assert (=> b!7562463 (= e!4503197 (and tp!2202298 tp!2202300))))

(declare-fun b!7562460 () Bool)

(assert (=> b!7562460 (= e!4503197 tp_is_empty!50315)))

(declare-fun b!7562462 () Bool)

(declare-fun tp!2202299 () Bool)

(assert (=> b!7562462 (= e!4503197 tp!2202299)))

(declare-fun b!7562461 () Bool)

(declare-fun tp!2202296 () Bool)

(declare-fun tp!2202297 () Bool)

(assert (=> b!7562461 (= e!4503197 (and tp!2202296 tp!2202297))))

(assert (= (and b!7561963 (is-ElementMatch!19980 (regTwo!40473 baseR!101))) b!7562460))

(assert (= (and b!7561963 (is-Concat!28825 (regTwo!40473 baseR!101))) b!7562461))

(assert (= (and b!7561963 (is-Star!19980 (regTwo!40473 baseR!101))) b!7562462))

(assert (= (and b!7561963 (is-Union!19980 (regTwo!40473 baseR!101))) b!7562463))

(declare-fun e!4503198 () Bool)

(assert (=> b!7561958 (= tp!2202214 e!4503198)))

(declare-fun b!7562467 () Bool)

(declare-fun tp!2202303 () Bool)

(declare-fun tp!2202305 () Bool)

(assert (=> b!7562467 (= e!4503198 (and tp!2202303 tp!2202305))))

(declare-fun b!7562464 () Bool)

(assert (=> b!7562464 (= e!4503198 tp_is_empty!50315)))

(declare-fun b!7562466 () Bool)

(declare-fun tp!2202304 () Bool)

(assert (=> b!7562466 (= e!4503198 tp!2202304)))

(declare-fun b!7562465 () Bool)

(declare-fun tp!2202301 () Bool)

(declare-fun tp!2202302 () Bool)

(assert (=> b!7562465 (= e!4503198 (and tp!2202301 tp!2202302))))

(assert (= (and b!7561958 (is-ElementMatch!19980 (reg!20309 baseR!101))) b!7562464))

(assert (= (and b!7561958 (is-Concat!28825 (reg!20309 baseR!101))) b!7562465))

(assert (= (and b!7561958 (is-Star!19980 (reg!20309 baseR!101))) b!7562466))

(assert (= (and b!7561958 (is-Union!19980 (reg!20309 baseR!101))) b!7562467))

(declare-fun e!4503199 () Bool)

(assert (=> b!7561990 (= tp!2202217 e!4503199)))

(declare-fun b!7562471 () Bool)

(declare-fun tp!2202308 () Bool)

(declare-fun tp!2202310 () Bool)

(assert (=> b!7562471 (= e!4503199 (and tp!2202308 tp!2202310))))

(declare-fun b!7562468 () Bool)

(assert (=> b!7562468 (= e!4503199 tp_is_empty!50315)))

(declare-fun b!7562470 () Bool)

(declare-fun tp!2202309 () Bool)

(assert (=> b!7562470 (= e!4503199 tp!2202309)))

(declare-fun b!7562469 () Bool)

(declare-fun tp!2202306 () Bool)

(declare-fun tp!2202307 () Bool)

(assert (=> b!7562469 (= e!4503199 (and tp!2202306 tp!2202307))))

(assert (= (and b!7561990 (is-ElementMatch!19980 (regOne!40473 r!24333))) b!7562468))

(assert (= (and b!7561990 (is-Concat!28825 (regOne!40473 r!24333))) b!7562469))

(assert (= (and b!7561990 (is-Star!19980 (regOne!40473 r!24333))) b!7562470))

(assert (= (and b!7561990 (is-Union!19980 (regOne!40473 r!24333))) b!7562471))

(declare-fun e!4503200 () Bool)

(assert (=> b!7561990 (= tp!2202216 e!4503200)))

(declare-fun b!7562475 () Bool)

(declare-fun tp!2202313 () Bool)

(declare-fun tp!2202315 () Bool)

(assert (=> b!7562475 (= e!4503200 (and tp!2202313 tp!2202315))))

(declare-fun b!7562472 () Bool)

(assert (=> b!7562472 (= e!4503200 tp_is_empty!50315)))

(declare-fun b!7562474 () Bool)

(declare-fun tp!2202314 () Bool)

(assert (=> b!7562474 (= e!4503200 tp!2202314)))

(declare-fun b!7562473 () Bool)

(declare-fun tp!2202311 () Bool)

(declare-fun tp!2202312 () Bool)

(assert (=> b!7562473 (= e!4503200 (and tp!2202311 tp!2202312))))

(assert (= (and b!7561990 (is-ElementMatch!19980 (regTwo!40473 r!24333))) b!7562472))

(assert (= (and b!7561990 (is-Concat!28825 (regTwo!40473 r!24333))) b!7562473))

(assert (= (and b!7561990 (is-Star!19980 (regTwo!40473 r!24333))) b!7562474))

(assert (= (and b!7561990 (is-Union!19980 (regTwo!40473 r!24333))) b!7562475))

(declare-fun b!7562478 () Bool)

(declare-fun e!4503201 () Bool)

(declare-fun tp!2202316 () Bool)

(assert (=> b!7562478 (= e!4503201 (and tp_is_empty!50315 tp!2202316))))

(assert (=> b!7561964 (= tp!2202219 e!4503201)))

(assert (= (and b!7561964 (is-Cons!72739 (t!387592 testedP!423))) b!7562478))

(declare-fun e!4503204 () Bool)

(assert (=> b!7561965 (= tp!2202210 e!4503204)))

(declare-fun b!7562484 () Bool)

(declare-fun tp!2202319 () Bool)

(declare-fun tp!2202321 () Bool)

(assert (=> b!7562484 (= e!4503204 (and tp!2202319 tp!2202321))))

(declare-fun b!7562481 () Bool)

(assert (=> b!7562481 (= e!4503204 tp_is_empty!50315)))

(declare-fun b!7562483 () Bool)

(declare-fun tp!2202320 () Bool)

(assert (=> b!7562483 (= e!4503204 tp!2202320)))

(declare-fun b!7562482 () Bool)

(declare-fun tp!2202317 () Bool)

(declare-fun tp!2202318 () Bool)

(assert (=> b!7562482 (= e!4503204 (and tp!2202317 tp!2202318))))

(assert (= (and b!7561965 (is-ElementMatch!19980 (regOne!40472 r!24333))) b!7562481))

(assert (= (and b!7561965 (is-Concat!28825 (regOne!40472 r!24333))) b!7562482))

(assert (= (and b!7561965 (is-Star!19980 (regOne!40472 r!24333))) b!7562483))

(assert (= (and b!7561965 (is-Union!19980 (regOne!40472 r!24333))) b!7562484))

(declare-fun e!4503205 () Bool)

(assert (=> b!7561965 (= tp!2202211 e!4503205)))

(declare-fun b!7562488 () Bool)

(declare-fun tp!2202324 () Bool)

(declare-fun tp!2202326 () Bool)

(assert (=> b!7562488 (= e!4503205 (and tp!2202324 tp!2202326))))

(declare-fun b!7562485 () Bool)

(assert (=> b!7562485 (= e!4503205 tp_is_empty!50315)))

(declare-fun b!7562487 () Bool)

(declare-fun tp!2202325 () Bool)

(assert (=> b!7562487 (= e!4503205 tp!2202325)))

(declare-fun b!7562486 () Bool)

(declare-fun tp!2202322 () Bool)

(declare-fun tp!2202323 () Bool)

(assert (=> b!7562486 (= e!4503205 (and tp!2202322 tp!2202323))))

(assert (= (and b!7561965 (is-ElementMatch!19980 (regTwo!40472 r!24333))) b!7562485))

(assert (= (and b!7561965 (is-Concat!28825 (regTwo!40472 r!24333))) b!7562486))

(assert (= (and b!7561965 (is-Star!19980 (regTwo!40472 r!24333))) b!7562487))

(assert (= (and b!7561965 (is-Union!19980 (regTwo!40472 r!24333))) b!7562488))

(push 1)

(assert (not bm!693293))

(assert (not b!7562365))

(assert (not b!7562451))

(assert (not b!7562111))

(assert (not b!7562458))

(assert (not b!7562263))

(assert (not b!7562475))

(assert (not b!7562439))

(assert (not b!7562233))

(assert (not b!7562417))

(assert (not bm!693294))

(assert (not b!7562316))

(assert (not d!2315044))

(assert (not bm!693284))

(assert (not b!7562146))

(assert (not bm!693290))

(assert (not b!7562144))

(assert (not b!7562241))

(assert (not d!2315082))

(assert (not b!7562461))

(assert (not b!7562344))

(assert (not b!7562474))

(assert (not b!7562418))

(assert (not b!7562314))

(assert (not b!7562416))

(assert (not b!7562482))

(assert (not b!7562193))

(assert (not b!7562463))

(assert (not b!7562105))

(assert (not b!7562469))

(assert (not b!7562378))

(assert (not d!2315040))

(assert tp_is_empty!50315)

(assert (not d!2315110))

(assert (not b!7562322))

(assert (not b!7562107))

(assert (not b!7562374))

(assert (not b!7562332))

(assert (not d!2315070))

(assert (not b!7562487))

(assert (not d!2315022))

(assert (not b!7562478))

(assert (not b!7562441))

(assert (not b!7562333))

(assert (not d!2315046))

(assert (not b!7562149))

(assert (not d!2315078))

(assert (not b!7562389))

(assert (not b!7562407))

(assert (not d!2315018))

(assert (not b!7562352))

(assert (not b!7562318))

(assert (not b!7562462))

(assert (not b!7562377))

(assert (not d!2315068))

(assert (not d!2315032))

(assert (not b!7562338))

(assert (not b!7562412))

(assert (not b!7562320))

(assert (not d!2315024))

(assert (not b!7562315))

(assert (not b!7562340))

(assert (not b!7562356))

(assert (not b!7562453))

(assert (not b!7562385))

(assert (not b!7562106))

(assert (not b!7562459))

(assert (not b!7562454))

(assert (not d!2315028))

(assert (not b!7562390))

(assert (not d!2315038))

(assert (not b!7562237))

(assert (not d!2315130))

(assert (not d!2315106))

(assert (not b!7562440))

(assert (not bm!693296))

(assert (not b!7562095))

(assert (not bm!693288))

(assert (not b!7562238))

(assert (not b!7562116))

(assert (not b!7562424))

(assert (not d!2315088))

(assert (not b!7562109))

(assert (not b!7562465))

(assert (not b!7562110))

(assert (not b!7562457))

(assert (not b!7562334))

(assert (not b!7562471))

(assert (not d!2315094))

(assert (not b!7562473))

(assert (not bm!693266))

(assert (not b!7562347))

(assert (not d!2315136))

(assert (not b!7562470))

(assert (not d!2315108))

(assert (not bm!693291))

(assert (not d!2315102))

(assert (not b!7562232))

(assert (not b!7562483))

(assert (not b!7562450))

(assert (not b!7562236))

(assert (not b!7562336))

(assert (not b!7562386))

(assert (not b!7562240))

(assert (not b!7562466))

(assert (not b!7562234))

(assert (not b!7562133))

(assert (not b!7562486))

(assert (not bm!693267))

(assert (not b!7562455))

(assert (not b!7562445))

(assert (not d!2315122))

(assert (not b!7562488))

(assert (not b!7562443))

(assert (not d!2315042))

(assert (not b!7562422))

(assert (not d!2315100))

(assert (not b!7562118))

(assert (not b!7562397))

(assert (not b!7562349))

(assert (not b!7562404))

(assert (not b!7562399))

(assert (not d!2315074))

(assert (not b!7562351))

(assert (not b!7562373))

(assert (not b!7562444))

(assert (not d!2315098))

(assert (not b!7562467))

(assert (not d!2315128))

(assert (not b!7562484))

(assert (not b!7562411))

(assert (not bm!693283))

(assert (not bm!693289))

(assert (not b!7562150))

(assert (not d!2315134))

(assert (not d!2315060))

(assert (not b!7562408))

(assert (not b!7562348))

(assert (not b!7562270))

(assert (not b!7562134))

(assert (not b!7562420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!7562111 d!2315126))

(assert (=> b!7562111 d!2315118))

(declare-fun d!2315190 () Bool)

(declare-fun lt!2649393 () Int)

(assert (=> d!2315190 (>= lt!2649393 0)))

(declare-fun e!4503312 () Int)

(assert (=> d!2315190 (= lt!2649393 e!4503312)))

(declare-fun c!1395401 () Bool)

(assert (=> d!2315190 (= c!1395401 (is-Nil!72739 lt!2649326))))

(assert (=> d!2315190 (= (size!42476 lt!2649326) lt!2649393)))

(declare-fun b!7562710 () Bool)

(assert (=> b!7562710 (= e!4503312 0)))

(declare-fun b!7562711 () Bool)

(assert (=> b!7562711 (= e!4503312 (+ 1 (size!42476 (t!387592 lt!2649326))))))

(assert (= (and d!2315190 c!1395401) b!7562710))

(assert (= (and d!2315190 (not c!1395401)) b!7562711))

(declare-fun m!8125538 () Bool)

(assert (=> b!7562711 m!8125538))

(assert (=> b!7562352 d!2315190))

(assert (=> b!7562352 d!2315116))

(declare-fun d!2315192 () Bool)

(declare-fun lt!2649394 () Int)

(assert (=> d!2315192 (>= lt!2649394 0)))

(declare-fun e!4503313 () Int)

(assert (=> d!2315192 (= lt!2649394 e!4503313)))

(declare-fun c!1395402 () Bool)

(assert (=> d!2315192 (= c!1395402 (is-Nil!72739 lt!2649187))))

(assert (=> d!2315192 (= (size!42476 lt!2649187) lt!2649394)))

(declare-fun b!7562712 () Bool)

(assert (=> b!7562712 (= e!4503313 0)))

(declare-fun b!7562713 () Bool)

(assert (=> b!7562713 (= e!4503313 (+ 1 (size!42476 (t!387592 lt!2649187))))))

(assert (= (and d!2315192 c!1395402) b!7562712))

(assert (= (and d!2315192 (not c!1395402)) b!7562713))

(declare-fun m!8125540 () Bool)

(assert (=> b!7562713 m!8125540))

(assert (=> b!7562352 d!2315192))

(declare-fun d!2315194 () Bool)

(declare-fun c!1395405 () Bool)

(assert (=> d!2315194 (= c!1395405 (is-Nil!72739 lt!2649349))))

(declare-fun e!4503316 () (Set C!40286))

(assert (=> d!2315194 (= (content!15401 lt!2649349) e!4503316)))

(declare-fun b!7562718 () Bool)

(assert (=> b!7562718 (= e!4503316 (as set.empty (Set C!40286)))))

(declare-fun b!7562719 () Bool)

(assert (=> b!7562719 (= e!4503316 (set.union (set.insert (h!79187 lt!2649349) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649349))))))

(assert (= (and d!2315194 c!1395405) b!7562718))

(assert (= (and d!2315194 (not c!1395405)) b!7562719))

(declare-fun m!8125542 () Bool)

(assert (=> b!7562719 m!8125542))

(declare-fun m!8125544 () Bool)

(assert (=> b!7562719 m!8125544))

(assert (=> d!2315130 d!2315194))

(declare-fun d!2315196 () Bool)

(declare-fun c!1395406 () Bool)

(assert (=> d!2315196 (= c!1395406 (is-Nil!72739 lt!2649173))))

(declare-fun e!4503317 () (Set C!40286))

(assert (=> d!2315196 (= (content!15401 lt!2649173) e!4503317)))

(declare-fun b!7562720 () Bool)

(assert (=> b!7562720 (= e!4503317 (as set.empty (Set C!40286)))))

(declare-fun b!7562721 () Bool)

(assert (=> b!7562721 (= e!4503317 (set.union (set.insert (h!79187 lt!2649173) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649173))))))

(assert (= (and d!2315196 c!1395406) b!7562720))

(assert (= (and d!2315196 (not c!1395406)) b!7562721))

(declare-fun m!8125546 () Bool)

(assert (=> b!7562721 m!8125546))

(declare-fun m!8125548 () Bool)

(assert (=> b!7562721 m!8125548))

(assert (=> d!2315130 d!2315196))

(declare-fun d!2315198 () Bool)

(declare-fun c!1395407 () Bool)

(assert (=> d!2315198 (= c!1395407 (is-Nil!72739 lt!2649168))))

(declare-fun e!4503318 () (Set C!40286))

(assert (=> d!2315198 (= (content!15401 lt!2649168) e!4503318)))

(declare-fun b!7562722 () Bool)

(assert (=> b!7562722 (= e!4503318 (as set.empty (Set C!40286)))))

(declare-fun b!7562723 () Bool)

(assert (=> b!7562723 (= e!4503318 (set.union (set.insert (h!79187 lt!2649168) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649168))))))

(assert (= (and d!2315198 c!1395407) b!7562722))

(assert (= (and d!2315198 (not c!1395407)) b!7562723))

(declare-fun m!8125550 () Bool)

(assert (=> b!7562723 m!8125550))

(declare-fun m!8125552 () Bool)

(assert (=> b!7562723 m!8125552))

(assert (=> d!2315130 d!2315198))

(declare-fun d!2315200 () Bool)

(declare-fun nullableFct!3475 (Regex!19980) Bool)

(assert (=> d!2315200 (= (nullable!8714 (regOne!40472 r!24333)) (nullableFct!3475 (regOne!40472 r!24333)))))

(declare-fun bs!1940399 () Bool)

(assert (= bs!1940399 d!2315200))

(declare-fun m!8125554 () Bool)

(assert (=> bs!1940399 m!8125554))

(assert (=> b!7562193 d!2315200))

(declare-fun d!2315202 () Bool)

(assert (=> d!2315202 (= (isEmpty!41414 (tail!15098 lt!2649181)) (is-Nil!72739 (tail!15098 lt!2649181)))))

(assert (=> b!7562420 d!2315202))

(declare-fun d!2315204 () Bool)

(assert (=> d!2315204 (= (tail!15098 lt!2649181) (t!387592 lt!2649181))))

(assert (=> b!7562420 d!2315204))

(declare-fun d!2315206 () Bool)

(declare-fun e!4503320 () Bool)

(assert (=> d!2315206 e!4503320))

(declare-fun res!3030319 () Bool)

(assert (=> d!2315206 (=> res!3030319 e!4503320)))

(declare-fun lt!2649395 () Bool)

(assert (=> d!2315206 (= res!3030319 (not lt!2649395))))

(declare-fun e!4503319 () Bool)

(assert (=> d!2315206 (= lt!2649395 e!4503319)))

(declare-fun res!3030322 () Bool)

(assert (=> d!2315206 (=> res!3030322 e!4503319)))

(assert (=> d!2315206 (= res!3030322 (is-Nil!72739 (tail!15098 testedP!423)))))

(assert (=> d!2315206 (= (isPrefix!6186 (tail!15098 testedP!423) (tail!15098 input!7874)) lt!2649395)))

(declare-fun b!7562725 () Bool)

(declare-fun res!3030321 () Bool)

(declare-fun e!4503321 () Bool)

(assert (=> b!7562725 (=> (not res!3030321) (not e!4503321))))

(assert (=> b!7562725 (= res!3030321 (= (head!15558 (tail!15098 testedP!423)) (head!15558 (tail!15098 input!7874))))))

(declare-fun b!7562724 () Bool)

(assert (=> b!7562724 (= e!4503319 e!4503321)))

(declare-fun res!3030320 () Bool)

(assert (=> b!7562724 (=> (not res!3030320) (not e!4503321))))

(assert (=> b!7562724 (= res!3030320 (not (is-Nil!72739 (tail!15098 input!7874))))))

(declare-fun b!7562727 () Bool)

(assert (=> b!7562727 (= e!4503320 (>= (size!42476 (tail!15098 input!7874)) (size!42476 (tail!15098 testedP!423))))))

(declare-fun b!7562726 () Bool)

(assert (=> b!7562726 (= e!4503321 (isPrefix!6186 (tail!15098 (tail!15098 testedP!423)) (tail!15098 (tail!15098 input!7874))))))

(assert (= (and d!2315206 (not res!3030322)) b!7562724))

(assert (= (and b!7562724 res!3030320) b!7562725))

(assert (= (and b!7562725 res!3030321) b!7562726))

(assert (= (and d!2315206 (not res!3030319)) b!7562727))

(assert (=> b!7562725 m!8125032))

(declare-fun m!8125556 () Bool)

(assert (=> b!7562725 m!8125556))

(assert (=> b!7562725 m!8125034))

(declare-fun m!8125558 () Bool)

(assert (=> b!7562725 m!8125558))

(assert (=> b!7562727 m!8125034))

(declare-fun m!8125560 () Bool)

(assert (=> b!7562727 m!8125560))

(assert (=> b!7562727 m!8125032))

(declare-fun m!8125562 () Bool)

(assert (=> b!7562727 m!8125562))

(assert (=> b!7562726 m!8125032))

(declare-fun m!8125564 () Bool)

(assert (=> b!7562726 m!8125564))

(assert (=> b!7562726 m!8125034))

(declare-fun m!8125566 () Bool)

(assert (=> b!7562726 m!8125566))

(assert (=> b!7562726 m!8125564))

(assert (=> b!7562726 m!8125566))

(declare-fun m!8125568 () Bool)

(assert (=> b!7562726 m!8125568))

(assert (=> b!7562106 d!2315206))

(declare-fun d!2315208 () Bool)

(assert (=> d!2315208 (= (tail!15098 testedP!423) (t!387592 testedP!423))))

(assert (=> b!7562106 d!2315208))

(declare-fun d!2315210 () Bool)

(assert (=> d!2315210 (= (tail!15098 input!7874) (t!387592 input!7874))))

(assert (=> b!7562106 d!2315210))

(declare-fun b!7562728 () Bool)

(declare-fun e!4503328 () Bool)

(declare-fun call!693319 () Bool)

(assert (=> b!7562728 (= e!4503328 call!693319)))

(declare-fun b!7562729 () Bool)

(declare-fun e!4503322 () Bool)

(declare-fun e!4503324 () Bool)

(assert (=> b!7562729 (= e!4503322 e!4503324)))

(declare-fun c!1395409 () Bool)

(assert (=> b!7562729 (= c!1395409 (is-Union!19980 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))

(declare-fun b!7562730 () Bool)

(declare-fun e!4503325 () Bool)

(assert (=> b!7562730 (= e!4503322 e!4503325)))

(declare-fun res!3030327 () Bool)

(assert (=> b!7562730 (= res!3030327 (not (nullable!8714 (reg!20309 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))))

(assert (=> b!7562730 (=> (not res!3030327) (not e!4503325))))

(declare-fun d!2315212 () Bool)

(declare-fun res!3030325 () Bool)

(declare-fun e!4503323 () Bool)

(assert (=> d!2315212 (=> res!3030325 e!4503323)))

(assert (=> d!2315212 (= res!3030325 (is-ElementMatch!19980 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))

(assert (=> d!2315212 (= (validRegex!10408 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))) e!4503323)))

(declare-fun b!7562731 () Bool)

(declare-fun res!3030326 () Bool)

(declare-fun e!4503326 () Bool)

(assert (=> b!7562731 (=> (not res!3030326) (not e!4503326))))

(declare-fun call!693321 () Bool)

(assert (=> b!7562731 (= res!3030326 call!693321)))

(assert (=> b!7562731 (= e!4503324 e!4503326)))

(declare-fun b!7562732 () Bool)

(assert (=> b!7562732 (= e!4503326 call!693319)))

(declare-fun b!7562733 () Bool)

(assert (=> b!7562733 (= e!4503323 e!4503322)))

(declare-fun c!1395408 () Bool)

(assert (=> b!7562733 (= c!1395408 (is-Star!19980 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))

(declare-fun bm!693314 () Bool)

(assert (=> bm!693314 (= call!693319 (validRegex!10408 (ite c!1395409 (regTwo!40473 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))) (regTwo!40472 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))))))))

(declare-fun call!693320 () Bool)

(declare-fun bm!693315 () Bool)

(assert (=> bm!693315 (= call!693320 (validRegex!10408 (ite c!1395408 (reg!20309 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))) (ite c!1395409 (regOne!40473 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101)))) (regOne!40472 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101))))))))))

(declare-fun b!7562734 () Bool)

(declare-fun res!3030324 () Bool)

(declare-fun e!4503327 () Bool)

(assert (=> b!7562734 (=> res!3030324 e!4503327)))

(assert (=> b!7562734 (= res!3030324 (not (is-Concat!28825 (ite c!1395336 (reg!20309 baseR!101) (ite c!1395337 (regOne!40473 baseR!101) (regOne!40472 baseR!101))))))))

(assert (=> b!7562734 (= e!4503324 e!4503327)))

(declare-fun b!7562735 () Bool)

(assert (=> b!7562735 (= e!4503327 e!4503328)))

(declare-fun res!3030323 () Bool)

(assert (=> b!7562735 (=> (not res!3030323) (not e!4503328))))

(assert (=> b!7562735 (= res!3030323 call!693321)))

(declare-fun bm!693316 () Bool)

(assert (=> bm!693316 (= call!693321 call!693320)))

(declare-fun b!7562736 () Bool)

(assert (=> b!7562736 (= e!4503325 call!693320)))

(assert (= (and d!2315212 (not res!3030325)) b!7562733))

(assert (= (and b!7562733 c!1395408) b!7562730))

(assert (= (and b!7562733 (not c!1395408)) b!7562729))

(assert (= (and b!7562730 res!3030327) b!7562736))

(assert (= (and b!7562729 c!1395409) b!7562731))

(assert (= (and b!7562729 (not c!1395409)) b!7562734))

(assert (= (and b!7562731 res!3030326) b!7562732))

(assert (= (and b!7562734 (not res!3030324)) b!7562735))

(assert (= (and b!7562735 res!3030323) b!7562728))

(assert (= (or b!7562731 b!7562735) bm!693316))

(assert (= (or b!7562732 b!7562728) bm!693314))

(assert (= (or b!7562736 bm!693316) bm!693315))

(declare-fun m!8125570 () Bool)

(assert (=> b!7562730 m!8125570))

(declare-fun m!8125572 () Bool)

(assert (=> bm!693314 m!8125572))

(declare-fun m!8125574 () Bool)

(assert (=> bm!693315 m!8125574))

(assert (=> bm!693291 d!2315212))

(declare-fun d!2315214 () Bool)

(assert (=> d!2315214 (= (isEmpty!41414 (tail!15098 knownP!30)) (is-Nil!72739 (tail!15098 knownP!30)))))

(assert (=> b!7562322 d!2315214))

(declare-fun d!2315216 () Bool)

(assert (=> d!2315216 (= (tail!15098 knownP!30) (t!387592 knownP!30))))

(assert (=> b!7562322 d!2315216))

(declare-fun d!2315218 () Bool)

(declare-fun lt!2649396 () List!72863)

(assert (=> d!2315218 (= (++!17484 (t!387592 knownP!30) lt!2649396) (tail!15098 input!7874))))

(declare-fun e!4503329 () List!72863)

(assert (=> d!2315218 (= lt!2649396 e!4503329)))

(declare-fun c!1395410 () Bool)

(assert (=> d!2315218 (= c!1395410 (is-Cons!72739 (t!387592 knownP!30)))))

(assert (=> d!2315218 (>= (size!42476 (tail!15098 input!7874)) (size!42476 (t!387592 knownP!30)))))

(assert (=> d!2315218 (= (getSuffix!3664 (tail!15098 input!7874) (t!387592 knownP!30)) lt!2649396)))

(declare-fun b!7562737 () Bool)

(assert (=> b!7562737 (= e!4503329 (getSuffix!3664 (tail!15098 (tail!15098 input!7874)) (t!387592 (t!387592 knownP!30))))))

(declare-fun b!7562738 () Bool)

(assert (=> b!7562738 (= e!4503329 (tail!15098 input!7874))))

(assert (= (and d!2315218 c!1395410) b!7562737))

(assert (= (and d!2315218 (not c!1395410)) b!7562738))

(declare-fun m!8125576 () Bool)

(assert (=> d!2315218 m!8125576))

(assert (=> d!2315218 m!8125034))

(assert (=> d!2315218 m!8125560))

(assert (=> d!2315218 m!8125328))

(assert (=> b!7562737 m!8125034))

(assert (=> b!7562737 m!8125566))

(assert (=> b!7562737 m!8125566))

(declare-fun m!8125578 () Bool)

(assert (=> b!7562737 m!8125578))

(assert (=> b!7562146 d!2315218))

(assert (=> b!7562146 d!2315210))

(declare-fun d!2315220 () Bool)

(assert (=> d!2315220 (= (head!15558 lt!2649181) (h!79187 lt!2649181))))

(assert (=> b!7562416 d!2315220))

(assert (=> b!7562333 d!2315120))

(declare-fun b!7562742 () Bool)

(declare-fun lt!2649397 () List!72863)

(declare-fun e!4503331 () Bool)

(assert (=> b!7562742 (= e!4503331 (or (not (= lt!2649280 Nil!72739)) (= lt!2649397 testedP!423)))))

(declare-fun b!7562740 () Bool)

(declare-fun e!4503330 () List!72863)

(assert (=> b!7562740 (= e!4503330 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649280)))))

(declare-fun b!7562739 () Bool)

(assert (=> b!7562739 (= e!4503330 lt!2649280)))

(declare-fun d!2315222 () Bool)

(assert (=> d!2315222 e!4503331))

(declare-fun res!3030329 () Bool)

(assert (=> d!2315222 (=> (not res!3030329) (not e!4503331))))

(assert (=> d!2315222 (= res!3030329 (= (content!15401 lt!2649397) (set.union (content!15401 testedP!423) (content!15401 lt!2649280))))))

(assert (=> d!2315222 (= lt!2649397 e!4503330)))

(declare-fun c!1395411 () Bool)

(assert (=> d!2315222 (= c!1395411 (is-Nil!72739 testedP!423))))

(assert (=> d!2315222 (= (++!17484 testedP!423 lt!2649280) lt!2649397)))

(declare-fun b!7562741 () Bool)

(declare-fun res!3030328 () Bool)

(assert (=> b!7562741 (=> (not res!3030328) (not e!4503331))))

(assert (=> b!7562741 (= res!3030328 (= (size!42476 lt!2649397) (+ (size!42476 testedP!423) (size!42476 lt!2649280))))))

(assert (= (and d!2315222 c!1395411) b!7562739))

(assert (= (and d!2315222 (not c!1395411)) b!7562740))

(assert (= (and d!2315222 res!3030329) b!7562741))

(assert (= (and b!7562741 res!3030328) b!7562742))

(declare-fun m!8125580 () Bool)

(assert (=> b!7562740 m!8125580))

(declare-fun m!8125582 () Bool)

(assert (=> d!2315222 m!8125582))

(assert (=> d!2315222 m!8125058))

(declare-fun m!8125584 () Bool)

(assert (=> d!2315222 m!8125584))

(declare-fun m!8125586 () Bool)

(assert (=> b!7562741 m!8125586))

(assert (=> b!7562741 m!8124928))

(declare-fun m!8125588 () Bool)

(assert (=> b!7562741 m!8125588))

(assert (=> d!2315018 d!2315222))

(assert (=> d!2315018 d!2315126))

(assert (=> d!2315018 d!2315116))

(declare-fun b!7562757 () Bool)

(declare-fun e!4503347 () Bool)

(declare-fun e!4503344 () Bool)

(assert (=> b!7562757 (= e!4503347 e!4503344)))

(declare-fun res!3030341 () Bool)

(declare-fun call!693326 () Bool)

(assert (=> b!7562757 (= res!3030341 call!693326)))

(assert (=> b!7562757 (=> res!3030341 e!4503344)))

(declare-fun b!7562758 () Bool)

(declare-fun e!4503346 () Bool)

(declare-fun e!4503349 () Bool)

(assert (=> b!7562758 (= e!4503346 e!4503349)))

(declare-fun res!3030344 () Bool)

(assert (=> b!7562758 (=> (not res!3030344) (not e!4503349))))

(assert (=> b!7562758 (= res!3030344 (and (not (is-ElementMatch!19980 r!24333)) (not (is-Star!19980 r!24333))))))

(declare-fun b!7562759 () Bool)

(declare-fun e!4503345 () Bool)

(assert (=> b!7562759 (= e!4503345 call!693326)))

(declare-fun b!7562760 () Bool)

(declare-fun e!4503348 () Bool)

(assert (=> b!7562760 (= e!4503348 e!4503346)))

(declare-fun res!3030340 () Bool)

(assert (=> b!7562760 (=> res!3030340 e!4503346)))

(assert (=> b!7562760 (= res!3030340 (is-EmptyLang!19980 r!24333))))

(declare-fun b!7562761 () Bool)

(assert (=> b!7562761 (= e!4503347 e!4503345)))

(declare-fun res!3030343 () Bool)

(declare-fun call!693327 () Bool)

(assert (=> b!7562761 (= res!3030343 call!693327)))

(assert (=> b!7562761 (=> (not res!3030343) (not e!4503345))))

(declare-fun b!7562762 () Bool)

(assert (=> b!7562762 (= e!4503349 e!4503347)))

(declare-fun c!1395414 () Bool)

(assert (=> b!7562762 (= c!1395414 (is-Union!19980 r!24333))))

(declare-fun bm!693321 () Bool)

(assert (=> bm!693321 (= call!693326 (lostCause!1768 (ite c!1395414 (regTwo!40473 r!24333) (regOne!40472 r!24333))))))

(declare-fun bm!693322 () Bool)

(assert (=> bm!693322 (= call!693327 (lostCause!1768 (ite c!1395414 (regOne!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun b!7562763 () Bool)

(assert (=> b!7562763 (= e!4503344 call!693327)))

(declare-fun d!2315224 () Bool)

(declare-fun lt!2649400 () Bool)

(declare-datatypes ((Option!17265 0))(
  ( (None!17264) (Some!17264 (v!54399 List!72863)) )
))
(declare-fun isEmpty!41416 (Option!17265) Bool)

(declare-fun getLanguageWitness!1108 (Regex!19980) Option!17265)

(assert (=> d!2315224 (= lt!2649400 (isEmpty!41416 (getLanguageWitness!1108 r!24333)))))

(assert (=> d!2315224 (= lt!2649400 e!4503348)))

(declare-fun res!3030342 () Bool)

(assert (=> d!2315224 (=> (not res!3030342) (not e!4503348))))

(assert (=> d!2315224 (= res!3030342 (not (is-EmptyExpr!19980 r!24333)))))

(assert (=> d!2315224 (= (lostCauseFct!467 r!24333) lt!2649400)))

(assert (= (and d!2315224 res!3030342) b!7562760))

(assert (= (and b!7562760 (not res!3030340)) b!7562758))

(assert (= (and b!7562758 res!3030344) b!7562762))

(assert (= (and b!7562762 c!1395414) b!7562761))

(assert (= (and b!7562762 (not c!1395414)) b!7562757))

(assert (= (and b!7562761 res!3030343) b!7562759))

(assert (= (and b!7562757 (not res!3030341)) b!7562763))

(assert (= (or b!7562761 b!7562763) bm!693322))

(assert (= (or b!7562759 b!7562757) bm!693321))

(declare-fun m!8125590 () Bool)

(assert (=> bm!693321 m!8125590))

(declare-fun m!8125592 () Bool)

(assert (=> bm!693322 m!8125592))

(declare-fun m!8125594 () Bool)

(assert (=> d!2315224 m!8125594))

(assert (=> d!2315224 m!8125594))

(declare-fun m!8125596 () Bool)

(assert (=> d!2315224 m!8125596))

(assert (=> d!2315110 d!2315224))

(assert (=> b!7562238 d!2315118))

(assert (=> b!7562238 d!2315010))

(assert (=> d!2315024 d!2315058))

(declare-fun d!2315226 () Bool)

(assert (=> d!2315226 (isPrefix!6186 lt!2649189 knownP!30)))

(assert (=> d!2315226 true))

(declare-fun _$69!413 () Unit!166894)

(assert (=> d!2315226 (= (choose!58492 knownP!30 lt!2649189 input!7874) _$69!413)))

(declare-fun bs!1940400 () Bool)

(assert (= bs!1940400 d!2315226))

(assert (=> bs!1940400 m!8124866))

(assert (=> d!2315024 d!2315226))

(assert (=> d!2315024 d!2315014))

(declare-fun d!2315228 () Bool)

(declare-fun lt!2649401 () Int)

(assert (=> d!2315228 (>= lt!2649401 0)))

(declare-fun e!4503350 () Int)

(assert (=> d!2315228 (= lt!2649401 e!4503350)))

(declare-fun c!1395415 () Bool)

(assert (=> d!2315228 (= c!1395415 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315228 (= (size!42476 (t!387592 testedP!423)) lt!2649401)))

(declare-fun b!7562764 () Bool)

(assert (=> b!7562764 (= e!4503350 0)))

(declare-fun b!7562765 () Bool)

(assert (=> b!7562765 (= e!4503350 (+ 1 (size!42476 (t!387592 (t!387592 testedP!423)))))))

(assert (= (and d!2315228 c!1395415) b!7562764))

(assert (= (and d!2315228 (not c!1395415)) b!7562765))

(declare-fun m!8125598 () Bool)

(assert (=> b!7562765 m!8125598))

(assert (=> b!7562397 d!2315228))

(declare-fun d!2315230 () Bool)

(declare-fun e!4503352 () Bool)

(assert (=> d!2315230 e!4503352))

(declare-fun res!3030345 () Bool)

(assert (=> d!2315230 (=> res!3030345 e!4503352)))

(declare-fun lt!2649402 () Bool)

(assert (=> d!2315230 (= res!3030345 (not lt!2649402))))

(declare-fun e!4503351 () Bool)

(assert (=> d!2315230 (= lt!2649402 e!4503351)))

(declare-fun res!3030348 () Bool)

(assert (=> d!2315230 (=> res!3030348 e!4503351)))

(assert (=> d!2315230 (= res!3030348 (is-Nil!72739 (tail!15098 lt!2649189)))))

(assert (=> d!2315230 (= (isPrefix!6186 (tail!15098 lt!2649189) (tail!15098 input!7874)) lt!2649402)))

(declare-fun b!7562767 () Bool)

(declare-fun res!3030347 () Bool)

(declare-fun e!4503353 () Bool)

(assert (=> b!7562767 (=> (not res!3030347) (not e!4503353))))

(assert (=> b!7562767 (= res!3030347 (= (head!15558 (tail!15098 lt!2649189)) (head!15558 (tail!15098 input!7874))))))

(declare-fun b!7562766 () Bool)

(assert (=> b!7562766 (= e!4503351 e!4503353)))

(declare-fun res!3030346 () Bool)

(assert (=> b!7562766 (=> (not res!3030346) (not e!4503353))))

(assert (=> b!7562766 (= res!3030346 (not (is-Nil!72739 (tail!15098 input!7874))))))

(declare-fun b!7562769 () Bool)

(assert (=> b!7562769 (= e!4503352 (>= (size!42476 (tail!15098 input!7874)) (size!42476 (tail!15098 lt!2649189))))))

(declare-fun b!7562768 () Bool)

(assert (=> b!7562768 (= e!4503353 (isPrefix!6186 (tail!15098 (tail!15098 lt!2649189)) (tail!15098 (tail!15098 input!7874))))))

(assert (= (and d!2315230 (not res!3030348)) b!7562766))

(assert (= (and b!7562766 res!3030346) b!7562767))

(assert (= (and b!7562767 res!3030347) b!7562768))

(assert (= (and d!2315230 (not res!3030345)) b!7562769))

(assert (=> b!7562767 m!8125132))

(declare-fun m!8125600 () Bool)

(assert (=> b!7562767 m!8125600))

(assert (=> b!7562767 m!8125034))

(assert (=> b!7562767 m!8125558))

(assert (=> b!7562769 m!8125034))

(assert (=> b!7562769 m!8125560))

(assert (=> b!7562769 m!8125132))

(declare-fun m!8125602 () Bool)

(assert (=> b!7562769 m!8125602))

(assert (=> b!7562768 m!8125132))

(declare-fun m!8125604 () Bool)

(assert (=> b!7562768 m!8125604))

(assert (=> b!7562768 m!8125034))

(assert (=> b!7562768 m!8125566))

(assert (=> b!7562768 m!8125604))

(assert (=> b!7562768 m!8125566))

(declare-fun m!8125606 () Bool)

(assert (=> b!7562768 m!8125606))

(assert (=> b!7562233 d!2315230))

(declare-fun d!2315232 () Bool)

(assert (=> d!2315232 (= (tail!15098 lt!2649189) (t!387592 lt!2649189))))

(assert (=> b!7562233 d!2315232))

(assert (=> b!7562233 d!2315210))

(declare-fun e!4503355 () Bool)

(declare-fun b!7562773 () Bool)

(declare-fun lt!2649403 () List!72863)

(assert (=> b!7562773 (= e!4503355 (or (not (= lt!2649295 Nil!72739)) (= lt!2649403 knownP!30)))))

(declare-fun b!7562771 () Bool)

(declare-fun e!4503354 () List!72863)

(assert (=> b!7562771 (= e!4503354 (Cons!72739 (h!79187 knownP!30) (++!17484 (t!387592 knownP!30) lt!2649295)))))

(declare-fun b!7562770 () Bool)

(assert (=> b!7562770 (= e!4503354 lt!2649295)))

(declare-fun d!2315234 () Bool)

(assert (=> d!2315234 e!4503355))

(declare-fun res!3030350 () Bool)

(assert (=> d!2315234 (=> (not res!3030350) (not e!4503355))))

(assert (=> d!2315234 (= res!3030350 (= (content!15401 lt!2649403) (set.union (content!15401 knownP!30) (content!15401 lt!2649295))))))

(assert (=> d!2315234 (= lt!2649403 e!4503354)))

(declare-fun c!1395416 () Bool)

(assert (=> d!2315234 (= c!1395416 (is-Nil!72739 knownP!30))))

(assert (=> d!2315234 (= (++!17484 knownP!30 lt!2649295) lt!2649403)))

(declare-fun b!7562772 () Bool)

(declare-fun res!3030349 () Bool)

(assert (=> b!7562772 (=> (not res!3030349) (not e!4503355))))

(assert (=> b!7562772 (= res!3030349 (= (size!42476 lt!2649403) (+ (size!42476 knownP!30) (size!42476 lt!2649295))))))

(assert (= (and d!2315234 c!1395416) b!7562770))

(assert (= (and d!2315234 (not c!1395416)) b!7562771))

(assert (= (and d!2315234 res!3030350) b!7562772))

(assert (= (and b!7562772 res!3030349) b!7562773))

(declare-fun m!8125608 () Bool)

(assert (=> b!7562771 m!8125608))

(declare-fun m!8125610 () Bool)

(assert (=> d!2315234 m!8125610))

(assert (=> d!2315234 m!8125084))

(declare-fun m!8125612 () Bool)

(assert (=> d!2315234 m!8125612))

(declare-fun m!8125614 () Bool)

(assert (=> b!7562772 m!8125614))

(assert (=> b!7562772 m!8124930))

(declare-fun m!8125616 () Bool)

(assert (=> b!7562772 m!8125616))

(assert (=> d!2315038 d!2315234))

(assert (=> d!2315038 d!2315126))

(assert (=> d!2315038 d!2315118))

(declare-fun e!4503357 () Bool)

(declare-fun b!7562777 () Bool)

(declare-fun lt!2649404 () List!72863)

(assert (=> b!7562777 (= e!4503357 (or (not (= lt!2649168 Nil!72739)) (= lt!2649404 (t!387592 lt!2649174))))))

(declare-fun b!7562775 () Bool)

(declare-fun e!4503356 () List!72863)

(assert (=> b!7562775 (= e!4503356 (Cons!72739 (h!79187 (t!387592 lt!2649174)) (++!17484 (t!387592 (t!387592 lt!2649174)) lt!2649168)))))

(declare-fun b!7562774 () Bool)

(assert (=> b!7562774 (= e!4503356 lt!2649168)))

(declare-fun d!2315236 () Bool)

(assert (=> d!2315236 e!4503357))

(declare-fun res!3030352 () Bool)

(assert (=> d!2315236 (=> (not res!3030352) (not e!4503357))))

(assert (=> d!2315236 (= res!3030352 (= (content!15401 lt!2649404) (set.union (content!15401 (t!387592 lt!2649174)) (content!15401 lt!2649168))))))

(assert (=> d!2315236 (= lt!2649404 e!4503356)))

(declare-fun c!1395417 () Bool)

(assert (=> d!2315236 (= c!1395417 (is-Nil!72739 (t!387592 lt!2649174)))))

(assert (=> d!2315236 (= (++!17484 (t!387592 lt!2649174) lt!2649168) lt!2649404)))

(declare-fun b!7562776 () Bool)

(declare-fun res!3030351 () Bool)

(assert (=> b!7562776 (=> (not res!3030351) (not e!4503357))))

(assert (=> b!7562776 (= res!3030351 (= (size!42476 lt!2649404) (+ (size!42476 (t!387592 lt!2649174)) (size!42476 lt!2649168))))))

(assert (= (and d!2315236 c!1395417) b!7562774))

(assert (= (and d!2315236 (not c!1395417)) b!7562775))

(assert (= (and d!2315236 res!3030352) b!7562776))

(assert (= (and b!7562776 res!3030351) b!7562777))

(declare-fun m!8125618 () Bool)

(assert (=> b!7562775 m!8125618))

(declare-fun m!8125620 () Bool)

(assert (=> d!2315236 m!8125620))

(declare-fun m!8125622 () Bool)

(assert (=> d!2315236 m!8125622))

(assert (=> d!2315236 m!8125086))

(declare-fun m!8125624 () Bool)

(assert (=> b!7562776 m!8125624))

(declare-fun m!8125626 () Bool)

(assert (=> b!7562776 m!8125626))

(assert (=> b!7562776 m!8125090))

(assert (=> b!7562385 d!2315236))

(declare-fun d!2315238 () Bool)

(assert (=> d!2315238 (= (head!15558 knownP!30) (h!79187 knownP!30))))

(assert (=> b!7562315 d!2315238))

(declare-fun d!2315240 () Bool)

(declare-fun lt!2649405 () Int)

(assert (=> d!2315240 (>= lt!2649405 0)))

(declare-fun e!4503358 () Int)

(assert (=> d!2315240 (= lt!2649405 e!4503358)))

(declare-fun c!1395418 () Bool)

(assert (=> d!2315240 (= c!1395418 (is-Nil!72739 lt!2649349))))

(assert (=> d!2315240 (= (size!42476 lt!2649349) lt!2649405)))

(declare-fun b!7562778 () Bool)

(assert (=> b!7562778 (= e!4503358 0)))

(declare-fun b!7562779 () Bool)

(assert (=> b!7562779 (= e!4503358 (+ 1 (size!42476 (t!387592 lt!2649349))))))

(assert (= (and d!2315240 c!1395418) b!7562778))

(assert (= (and d!2315240 (not c!1395418)) b!7562779))

(declare-fun m!8125628 () Bool)

(assert (=> b!7562779 m!8125628))

(assert (=> b!7562412 d!2315240))

(declare-fun d!2315242 () Bool)

(declare-fun lt!2649406 () Int)

(assert (=> d!2315242 (>= lt!2649406 0)))

(declare-fun e!4503359 () Int)

(assert (=> d!2315242 (= lt!2649406 e!4503359)))

(declare-fun c!1395419 () Bool)

(assert (=> d!2315242 (= c!1395419 (is-Nil!72739 lt!2649173))))

(assert (=> d!2315242 (= (size!42476 lt!2649173) lt!2649406)))

(declare-fun b!7562780 () Bool)

(assert (=> b!7562780 (= e!4503359 0)))

(declare-fun b!7562781 () Bool)

(assert (=> b!7562781 (= e!4503359 (+ 1 (size!42476 (t!387592 lt!2649173))))))

(assert (= (and d!2315242 c!1395419) b!7562780))

(assert (= (and d!2315242 (not c!1395419)) b!7562781))

(declare-fun m!8125630 () Bool)

(assert (=> b!7562781 m!8125630))

(assert (=> b!7562412 d!2315242))

(declare-fun d!2315244 () Bool)

(declare-fun lt!2649407 () Int)

(assert (=> d!2315244 (>= lt!2649407 0)))

(declare-fun e!4503360 () Int)

(assert (=> d!2315244 (= lt!2649407 e!4503360)))

(declare-fun c!1395420 () Bool)

(assert (=> d!2315244 (= c!1395420 (is-Nil!72739 lt!2649168))))

(assert (=> d!2315244 (= (size!42476 lt!2649168) lt!2649407)))

(declare-fun b!7562782 () Bool)

(assert (=> b!7562782 (= e!4503360 0)))

(declare-fun b!7562783 () Bool)

(assert (=> b!7562783 (= e!4503360 (+ 1 (size!42476 (t!387592 lt!2649168))))))

(assert (= (and d!2315244 c!1395420) b!7562782))

(assert (= (and d!2315244 (not c!1395420)) b!7562783))

(declare-fun m!8125632 () Bool)

(assert (=> b!7562783 m!8125632))

(assert (=> b!7562412 d!2315244))

(assert (=> d!2315134 d!2315108))

(assert (=> d!2315134 d!2315130))

(declare-fun lt!2649408 () List!72863)

(declare-fun b!7562787 () Bool)

(declare-fun e!4503362 () Bool)

(assert (=> b!7562787 (= e!4503362 (or (not (= (++!17484 lt!2649173 lt!2649168) Nil!72739)) (= lt!2649408 testedP!423)))))

(declare-fun b!7562785 () Bool)

(declare-fun e!4503361 () List!72863)

(assert (=> b!7562785 (= e!4503361 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) (++!17484 lt!2649173 lt!2649168))))))

(declare-fun b!7562784 () Bool)

(assert (=> b!7562784 (= e!4503361 (++!17484 lt!2649173 lt!2649168))))

(declare-fun d!2315246 () Bool)

(assert (=> d!2315246 e!4503362))

(declare-fun res!3030354 () Bool)

(assert (=> d!2315246 (=> (not res!3030354) (not e!4503362))))

(assert (=> d!2315246 (= res!3030354 (= (content!15401 lt!2649408) (set.union (content!15401 testedP!423) (content!15401 (++!17484 lt!2649173 lt!2649168)))))))

(assert (=> d!2315246 (= lt!2649408 e!4503361)))

(declare-fun c!1395421 () Bool)

(assert (=> d!2315246 (= c!1395421 (is-Nil!72739 testedP!423))))

(assert (=> d!2315246 (= (++!17484 testedP!423 (++!17484 lt!2649173 lt!2649168)) lt!2649408)))

(declare-fun b!7562786 () Bool)

(declare-fun res!3030353 () Bool)

(assert (=> b!7562786 (=> (not res!3030353) (not e!4503362))))

(assert (=> b!7562786 (= res!3030353 (= (size!42476 lt!2649408) (+ (size!42476 testedP!423) (size!42476 (++!17484 lt!2649173 lt!2649168)))))))

(assert (= (and d!2315246 c!1395421) b!7562784))

(assert (= (and d!2315246 (not c!1395421)) b!7562785))

(assert (= (and d!2315246 res!3030354) b!7562786))

(assert (= (and b!7562786 res!3030353) b!7562787))

(assert (=> b!7562785 m!8124852))

(declare-fun m!8125634 () Bool)

(assert (=> b!7562785 m!8125634))

(declare-fun m!8125636 () Bool)

(assert (=> d!2315246 m!8125636))

(assert (=> d!2315246 m!8125058))

(assert (=> d!2315246 m!8124852))

(declare-fun m!8125638 () Bool)

(assert (=> d!2315246 m!8125638))

(declare-fun m!8125640 () Bool)

(assert (=> b!7562786 m!8125640))

(assert (=> b!7562786 m!8124928))

(assert (=> b!7562786 m!8124852))

(declare-fun m!8125642 () Bool)

(assert (=> b!7562786 m!8125642))

(assert (=> d!2315134 d!2315246))

(declare-fun d!2315248 () Bool)

(assert (=> d!2315248 (= (++!17484 (++!17484 testedP!423 lt!2649173) lt!2649168) (++!17484 testedP!423 (++!17484 lt!2649173 lt!2649168)))))

(assert (=> d!2315248 true))

(declare-fun _$52!2481 () Unit!166894)

(assert (=> d!2315248 (= (choose!58496 testedP!423 lt!2649173 lt!2649168) _$52!2481)))

(declare-fun bs!1940401 () Bool)

(assert (= bs!1940401 d!2315248))

(assert (=> bs!1940401 m!8124902))

(assert (=> bs!1940401 m!8124902))

(assert (=> bs!1940401 m!8125360))

(assert (=> bs!1940401 m!8124852))

(assert (=> bs!1940401 m!8124852))

(assert (=> bs!1940401 m!8125364))

(assert (=> d!2315134 d!2315248))

(declare-fun e!4503364 () Bool)

(declare-fun lt!2649409 () List!72863)

(declare-fun b!7562791 () Bool)

(assert (=> b!7562791 (= e!4503364 (or (not (= lt!2649168 Nil!72739)) (= lt!2649409 (++!17484 testedP!423 lt!2649173))))))

(declare-fun b!7562789 () Bool)

(declare-fun e!4503363 () List!72863)

(assert (=> b!7562789 (= e!4503363 (Cons!72739 (h!79187 (++!17484 testedP!423 lt!2649173)) (++!17484 (t!387592 (++!17484 testedP!423 lt!2649173)) lt!2649168)))))

(declare-fun b!7562788 () Bool)

(assert (=> b!7562788 (= e!4503363 lt!2649168)))

(declare-fun d!2315250 () Bool)

(assert (=> d!2315250 e!4503364))

(declare-fun res!3030356 () Bool)

(assert (=> d!2315250 (=> (not res!3030356) (not e!4503364))))

(assert (=> d!2315250 (= res!3030356 (= (content!15401 lt!2649409) (set.union (content!15401 (++!17484 testedP!423 lt!2649173)) (content!15401 lt!2649168))))))

(assert (=> d!2315250 (= lt!2649409 e!4503363)))

(declare-fun c!1395422 () Bool)

(assert (=> d!2315250 (= c!1395422 (is-Nil!72739 (++!17484 testedP!423 lt!2649173)))))

(assert (=> d!2315250 (= (++!17484 (++!17484 testedP!423 lt!2649173) lt!2649168) lt!2649409)))

(declare-fun b!7562790 () Bool)

(declare-fun res!3030355 () Bool)

(assert (=> b!7562790 (=> (not res!3030355) (not e!4503364))))

(assert (=> b!7562790 (= res!3030355 (= (size!42476 lt!2649409) (+ (size!42476 (++!17484 testedP!423 lt!2649173)) (size!42476 lt!2649168))))))

(assert (= (and d!2315250 c!1395422) b!7562788))

(assert (= (and d!2315250 (not c!1395422)) b!7562789))

(assert (= (and d!2315250 res!3030356) b!7562790))

(assert (= (and b!7562790 res!3030355) b!7562791))

(declare-fun m!8125644 () Bool)

(assert (=> b!7562789 m!8125644))

(declare-fun m!8125646 () Bool)

(assert (=> d!2315250 m!8125646))

(assert (=> d!2315250 m!8124902))

(declare-fun m!8125648 () Bool)

(assert (=> d!2315250 m!8125648))

(assert (=> d!2315250 m!8125086))

(declare-fun m!8125650 () Bool)

(assert (=> b!7562790 m!8125650))

(assert (=> b!7562790 m!8124902))

(declare-fun m!8125652 () Bool)

(assert (=> b!7562790 m!8125652))

(assert (=> b!7562790 m!8125090))

(assert (=> d!2315134 d!2315250))

(assert (=> b!7562424 d!2315202))

(assert (=> b!7562424 d!2315204))

(declare-fun d!2315252 () Bool)

(declare-fun c!1395423 () Bool)

(assert (=> d!2315252 (= c!1395423 (is-Nil!72739 lt!2649339))))

(declare-fun e!4503365 () (Set C!40286))

(assert (=> d!2315252 (= (content!15401 lt!2649339) e!4503365)))

(declare-fun b!7562792 () Bool)

(assert (=> b!7562792 (= e!4503365 (as set.empty (Set C!40286)))))

(declare-fun b!7562793 () Bool)

(assert (=> b!7562793 (= e!4503365 (set.union (set.insert (h!79187 lt!2649339) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649339))))))

(assert (= (and d!2315252 c!1395423) b!7562792))

(assert (= (and d!2315252 (not c!1395423)) b!7562793))

(declare-fun m!8125654 () Bool)

(assert (=> b!7562793 m!8125654))

(declare-fun m!8125656 () Bool)

(assert (=> b!7562793 m!8125656))

(assert (=> d!2315106 d!2315252))

(declare-fun d!2315254 () Bool)

(declare-fun c!1395424 () Bool)

(assert (=> d!2315254 (= c!1395424 (is-Nil!72739 lt!2649174))))

(declare-fun e!4503366 () (Set C!40286))

(assert (=> d!2315254 (= (content!15401 lt!2649174) e!4503366)))

(declare-fun b!7562794 () Bool)

(assert (=> b!7562794 (= e!4503366 (as set.empty (Set C!40286)))))

(declare-fun b!7562795 () Bool)

(assert (=> b!7562795 (= e!4503366 (set.union (set.insert (h!79187 lt!2649174) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649174))))))

(assert (= (and d!2315254 c!1395424) b!7562794))

(assert (= (and d!2315254 (not c!1395424)) b!7562795))

(declare-fun m!8125658 () Bool)

(assert (=> b!7562795 m!8125658))

(assert (=> b!7562795 m!8125622))

(assert (=> d!2315106 d!2315254))

(assert (=> d!2315106 d!2315198))

(declare-fun d!2315256 () Bool)

(declare-fun lt!2649410 () Int)

(assert (=> d!2315256 (>= lt!2649410 0)))

(declare-fun e!4503367 () Int)

(assert (=> d!2315256 (= lt!2649410 e!4503367)))

(declare-fun c!1395425 () Bool)

(assert (=> d!2315256 (= c!1395425 (is-Nil!72739 (t!387592 knownP!30)))))

(assert (=> d!2315256 (= (size!42476 (t!387592 knownP!30)) lt!2649410)))

(declare-fun b!7562796 () Bool)

(assert (=> b!7562796 (= e!4503367 0)))

(declare-fun b!7562797 () Bool)

(assert (=> b!7562797 (= e!4503367 (+ 1 (size!42476 (t!387592 (t!387592 knownP!30)))))))

(assert (= (and d!2315256 c!1395425) b!7562796))

(assert (= (and d!2315256 (not c!1395425)) b!7562797))

(declare-fun m!8125660 () Bool)

(assert (=> b!7562797 m!8125660))

(assert (=> b!7562399 d!2315256))

(declare-fun d!2315258 () Bool)

(declare-fun c!1395426 () Bool)

(assert (=> d!2315258 (= c!1395426 (is-Nil!72739 lt!2649296))))

(declare-fun e!4503368 () (Set C!40286))

(assert (=> d!2315258 (= (content!15401 lt!2649296) e!4503368)))

(declare-fun b!7562798 () Bool)

(assert (=> b!7562798 (= e!4503368 (as set.empty (Set C!40286)))))

(declare-fun b!7562799 () Bool)

(assert (=> b!7562799 (= e!4503368 (set.union (set.insert (h!79187 lt!2649296) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649296))))))

(assert (= (and d!2315258 c!1395426) b!7562798))

(assert (= (and d!2315258 (not c!1395426)) b!7562799))

(declare-fun m!8125662 () Bool)

(assert (=> b!7562799 m!8125662))

(declare-fun m!8125664 () Bool)

(assert (=> b!7562799 m!8125664))

(assert (=> d!2315040 d!2315258))

(declare-fun d!2315260 () Bool)

(declare-fun c!1395427 () Bool)

(assert (=> d!2315260 (= c!1395427 (is-Nil!72739 knownP!30))))

(declare-fun e!4503369 () (Set C!40286))

(assert (=> d!2315260 (= (content!15401 knownP!30) e!4503369)))

(declare-fun b!7562800 () Bool)

(assert (=> b!7562800 (= e!4503369 (as set.empty (Set C!40286)))))

(declare-fun b!7562801 () Bool)

(assert (=> b!7562801 (= e!4503369 (set.union (set.insert (h!79187 knownP!30) (as set.empty (Set C!40286))) (content!15401 (t!387592 knownP!30))))))

(assert (= (and d!2315260 c!1395427) b!7562800))

(assert (= (and d!2315260 (not c!1395427)) b!7562801))

(declare-fun m!8125666 () Bool)

(assert (=> b!7562801 m!8125666))

(declare-fun m!8125668 () Bool)

(assert (=> b!7562801 m!8125668))

(assert (=> d!2315040 d!2315260))

(assert (=> d!2315040 d!2315198))

(declare-fun b!7562802 () Bool)

(declare-fun e!4503376 () Bool)

(declare-fun call!693328 () Bool)

(assert (=> b!7562802 (= e!4503376 call!693328)))

(declare-fun b!7562803 () Bool)

(declare-fun e!4503370 () Bool)

(declare-fun e!4503372 () Bool)

(assert (=> b!7562803 (= e!4503370 e!4503372)))

(declare-fun c!1395429 () Bool)

(assert (=> b!7562803 (= c!1395429 (is-Union!19980 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))

(declare-fun b!7562804 () Bool)

(declare-fun e!4503373 () Bool)

(assert (=> b!7562804 (= e!4503370 e!4503373)))

(declare-fun res!3030361 () Bool)

(assert (=> b!7562804 (= res!3030361 (not (nullable!8714 (reg!20309 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))))

(assert (=> b!7562804 (=> (not res!3030361) (not e!4503373))))

(declare-fun d!2315262 () Bool)

(declare-fun res!3030359 () Bool)

(declare-fun e!4503371 () Bool)

(assert (=> d!2315262 (=> res!3030359 e!4503371)))

(assert (=> d!2315262 (= res!3030359 (is-ElementMatch!19980 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))

(assert (=> d!2315262 (= (validRegex!10408 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))) e!4503371)))

(declare-fun b!7562805 () Bool)

(declare-fun res!3030360 () Bool)

(declare-fun e!4503374 () Bool)

(assert (=> b!7562805 (=> (not res!3030360) (not e!4503374))))

(declare-fun call!693330 () Bool)

(assert (=> b!7562805 (= res!3030360 call!693330)))

(assert (=> b!7562805 (= e!4503372 e!4503374)))

(declare-fun b!7562806 () Bool)

(assert (=> b!7562806 (= e!4503374 call!693328)))

(declare-fun b!7562807 () Bool)

(assert (=> b!7562807 (= e!4503371 e!4503370)))

(declare-fun c!1395428 () Bool)

(assert (=> b!7562807 (= c!1395428 (is-Star!19980 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))

(declare-fun bm!693323 () Bool)

(assert (=> bm!693323 (= call!693328 (validRegex!10408 (ite c!1395429 (regTwo!40473 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))) (regTwo!40472 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))))))))

(declare-fun call!693329 () Bool)

(declare-fun bm!693324 () Bool)

(assert (=> bm!693324 (= call!693329 (validRegex!10408 (ite c!1395428 (reg!20309 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))) (ite c!1395429 (regOne!40473 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188)))) (regOne!40472 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188))))))))))

(declare-fun b!7562808 () Bool)

(declare-fun res!3030358 () Bool)

(declare-fun e!4503375 () Bool)

(assert (=> b!7562808 (=> res!3030358 e!4503375)))

(assert (=> b!7562808 (= res!3030358 (not (is-Concat!28825 (ite c!1395315 (reg!20309 lt!2649188) (ite c!1395316 (regOne!40473 lt!2649188) (regOne!40472 lt!2649188))))))))

(assert (=> b!7562808 (= e!4503372 e!4503375)))

(declare-fun b!7562809 () Bool)

(assert (=> b!7562809 (= e!4503375 e!4503376)))

(declare-fun res!3030357 () Bool)

(assert (=> b!7562809 (=> (not res!3030357) (not e!4503376))))

(assert (=> b!7562809 (= res!3030357 call!693330)))

(declare-fun bm!693325 () Bool)

(assert (=> bm!693325 (= call!693330 call!693329)))

(declare-fun b!7562810 () Bool)

(assert (=> b!7562810 (= e!4503373 call!693329)))

(assert (= (and d!2315262 (not res!3030359)) b!7562807))

(assert (= (and b!7562807 c!1395428) b!7562804))

(assert (= (and b!7562807 (not c!1395428)) b!7562803))

(assert (= (and b!7562804 res!3030361) b!7562810))

(assert (= (and b!7562803 c!1395429) b!7562805))

(assert (= (and b!7562803 (not c!1395429)) b!7562808))

(assert (= (and b!7562805 res!3030360) b!7562806))

(assert (= (and b!7562808 (not res!3030358)) b!7562809))

(assert (= (and b!7562809 res!3030357) b!7562802))

(assert (= (or b!7562805 b!7562809) bm!693325))

(assert (= (or b!7562806 b!7562802) bm!693323))

(assert (= (or b!7562810 bm!693325) bm!693324))

(declare-fun m!8125670 () Bool)

(assert (=> b!7562804 m!8125670))

(declare-fun m!8125672 () Bool)

(assert (=> bm!693323 m!8125672))

(declare-fun m!8125674 () Bool)

(assert (=> bm!693324 m!8125674))

(assert (=> bm!693284 d!2315262))

(declare-fun b!7562814 () Bool)

(declare-fun e!4503378 () Bool)

(declare-fun lt!2649411 () List!72863)

(assert (=> b!7562814 (= e!4503378 (or (not (= lt!2649187 Nil!72739)) (= lt!2649411 (t!387592 testedP!423))))))

(declare-fun b!7562812 () Bool)

(declare-fun e!4503377 () List!72863)

(assert (=> b!7562812 (= e!4503377 (Cons!72739 (h!79187 (t!387592 testedP!423)) (++!17484 (t!387592 (t!387592 testedP!423)) lt!2649187)))))

(declare-fun b!7562811 () Bool)

(assert (=> b!7562811 (= e!4503377 lt!2649187)))

(declare-fun d!2315264 () Bool)

(assert (=> d!2315264 e!4503378))

(declare-fun res!3030363 () Bool)

(assert (=> d!2315264 (=> (not res!3030363) (not e!4503378))))

(assert (=> d!2315264 (= res!3030363 (= (content!15401 lt!2649411) (set.union (content!15401 (t!387592 testedP!423)) (content!15401 lt!2649187))))))

(assert (=> d!2315264 (= lt!2649411 e!4503377)))

(declare-fun c!1395430 () Bool)

(assert (=> d!2315264 (= c!1395430 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315264 (= (++!17484 (t!387592 testedP!423) lt!2649187) lt!2649411)))

(declare-fun b!7562813 () Bool)

(declare-fun res!3030362 () Bool)

(assert (=> b!7562813 (=> (not res!3030362) (not e!4503378))))

(assert (=> b!7562813 (= res!3030362 (= (size!42476 lt!2649411) (+ (size!42476 (t!387592 testedP!423)) (size!42476 lt!2649187))))))

(assert (= (and d!2315264 c!1395430) b!7562811))

(assert (= (and d!2315264 (not c!1395430)) b!7562812))

(assert (= (and d!2315264 res!3030363) b!7562813))

(assert (= (and b!7562813 res!3030362) b!7562814))

(declare-fun m!8125676 () Bool)

(assert (=> b!7562812 m!8125676))

(declare-fun m!8125678 () Bool)

(assert (=> d!2315264 m!8125678))

(declare-fun m!8125680 () Bool)

(assert (=> d!2315264 m!8125680))

(assert (=> d!2315264 m!8125228))

(declare-fun m!8125682 () Bool)

(assert (=> b!7562813 m!8125682))

(assert (=> b!7562813 m!8125324))

(assert (=> b!7562813 m!8125232))

(assert (=> b!7562351 d!2315264))

(declare-fun d!2315266 () Bool)

(declare-fun e!4503380 () Bool)

(assert (=> d!2315266 e!4503380))

(declare-fun res!3030364 () Bool)

(assert (=> d!2315266 (=> res!3030364 e!4503380)))

(declare-fun lt!2649412 () Bool)

(assert (=> d!2315266 (= res!3030364 (not lt!2649412))))

(declare-fun e!4503379 () Bool)

(assert (=> d!2315266 (= lt!2649412 e!4503379)))

(declare-fun res!3030367 () Bool)

(assert (=> d!2315266 (=> res!3030367 e!4503379)))

(assert (=> d!2315266 (= res!3030367 (is-Nil!72739 (tail!15098 knownP!30)))))

(assert (=> d!2315266 (= (isPrefix!6186 (tail!15098 knownP!30) (tail!15098 input!7874)) lt!2649412)))

(declare-fun b!7562816 () Bool)

(declare-fun res!3030366 () Bool)

(declare-fun e!4503381 () Bool)

(assert (=> b!7562816 (=> (not res!3030366) (not e!4503381))))

(assert (=> b!7562816 (= res!3030366 (= (head!15558 (tail!15098 knownP!30)) (head!15558 (tail!15098 input!7874))))))

(declare-fun b!7562815 () Bool)

(assert (=> b!7562815 (= e!4503379 e!4503381)))

(declare-fun res!3030365 () Bool)

(assert (=> b!7562815 (=> (not res!3030365) (not e!4503381))))

(assert (=> b!7562815 (= res!3030365 (not (is-Nil!72739 (tail!15098 input!7874))))))

(declare-fun b!7562818 () Bool)

(assert (=> b!7562818 (= e!4503380 (>= (size!42476 (tail!15098 input!7874)) (size!42476 (tail!15098 knownP!30))))))

(declare-fun b!7562817 () Bool)

(assert (=> b!7562817 (= e!4503381 (isPrefix!6186 (tail!15098 (tail!15098 knownP!30)) (tail!15098 (tail!15098 input!7874))))))

(assert (= (and d!2315266 (not res!3030367)) b!7562815))

(assert (= (and b!7562815 res!3030365) b!7562816))

(assert (= (and b!7562816 res!3030366) b!7562817))

(assert (= (and d!2315266 (not res!3030364)) b!7562818))

(assert (=> b!7562816 m!8125040))

(declare-fun m!8125684 () Bool)

(assert (=> b!7562816 m!8125684))

(assert (=> b!7562816 m!8125034))

(assert (=> b!7562816 m!8125558))

(assert (=> b!7562818 m!8125034))

(assert (=> b!7562818 m!8125560))

(assert (=> b!7562818 m!8125040))

(declare-fun m!8125686 () Bool)

(assert (=> b!7562818 m!8125686))

(assert (=> b!7562817 m!8125040))

(declare-fun m!8125688 () Bool)

(assert (=> b!7562817 m!8125688))

(assert (=> b!7562817 m!8125034))

(assert (=> b!7562817 m!8125566))

(assert (=> b!7562817 m!8125688))

(assert (=> b!7562817 m!8125566))

(declare-fun m!8125690 () Bool)

(assert (=> b!7562817 m!8125690))

(assert (=> b!7562110 d!2315266))

(assert (=> b!7562110 d!2315216))

(assert (=> b!7562110 d!2315210))

(declare-fun d!2315268 () Bool)

(declare-fun c!1395431 () Bool)

(assert (=> d!2315268 (= c!1395431 (is-Nil!72739 lt!2649348))))

(declare-fun e!4503382 () (Set C!40286))

(assert (=> d!2315268 (= (content!15401 lt!2649348) e!4503382)))

(declare-fun b!7562819 () Bool)

(assert (=> b!7562819 (= e!4503382 (as set.empty (Set C!40286)))))

(declare-fun b!7562820 () Bool)

(assert (=> b!7562820 (= e!4503382 (set.union (set.insert (h!79187 lt!2649348) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649348))))))

(assert (= (and d!2315268 c!1395431) b!7562819))

(assert (= (and d!2315268 (not c!1395431)) b!7562820))

(declare-fun m!8125692 () Bool)

(assert (=> b!7562820 m!8125692))

(declare-fun m!8125694 () Bool)

(assert (=> b!7562820 m!8125694))

(assert (=> d!2315128 d!2315268))

(declare-fun d!2315270 () Bool)

(declare-fun c!1395432 () Bool)

(assert (=> d!2315270 (= c!1395432 (is-Nil!72739 testedP!423))))

(declare-fun e!4503383 () (Set C!40286))

(assert (=> d!2315270 (= (content!15401 testedP!423) e!4503383)))

(declare-fun b!7562821 () Bool)

(assert (=> b!7562821 (= e!4503383 (as set.empty (Set C!40286)))))

(declare-fun b!7562822 () Bool)

(assert (=> b!7562822 (= e!4503383 (set.union (set.insert (h!79187 testedP!423) (as set.empty (Set C!40286))) (content!15401 (t!387592 testedP!423))))))

(assert (= (and d!2315270 c!1395432) b!7562821))

(assert (= (and d!2315270 (not c!1395432)) b!7562822))

(declare-fun m!8125696 () Bool)

(assert (=> b!7562822 m!8125696))

(assert (=> b!7562822 m!8125680))

(assert (=> d!2315128 d!2315270))

(declare-fun d!2315272 () Bool)

(declare-fun c!1395433 () Bool)

(assert (=> d!2315272 (= c!1395433 (is-Nil!72739 lt!2649192))))

(declare-fun e!4503384 () (Set C!40286))

(assert (=> d!2315272 (= (content!15401 lt!2649192) e!4503384)))

(declare-fun b!7562823 () Bool)

(assert (=> b!7562823 (= e!4503384 (as set.empty (Set C!40286)))))

(declare-fun b!7562824 () Bool)

(assert (=> b!7562824 (= e!4503384 (set.union (set.insert (h!79187 lt!2649192) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649192))))))

(assert (= (and d!2315272 c!1395433) b!7562823))

(assert (= (and d!2315272 (not c!1395433)) b!7562824))

(declare-fun m!8125698 () Bool)

(assert (=> b!7562824 m!8125698))

(declare-fun m!8125700 () Bool)

(assert (=> b!7562824 m!8125700))

(assert (=> d!2315128 d!2315272))

(declare-fun d!2315274 () Bool)

(assert (=> d!2315274 (= (isEmpty!41414 (tail!15098 lt!2649173)) (is-Nil!72739 (tail!15098 lt!2649173)))))

(assert (=> b!7562336 d!2315274))

(assert (=> b!7562336 d!2315086))

(declare-fun d!2315276 () Bool)

(declare-fun lt!2649413 () Int)

(assert (=> d!2315276 (>= lt!2649413 0)))

(declare-fun e!4503385 () Int)

(assert (=> d!2315276 (= lt!2649413 e!4503385)))

(declare-fun c!1395434 () Bool)

(assert (=> d!2315276 (= c!1395434 (is-Nil!72739 (t!387592 lt!2649189)))))

(assert (=> d!2315276 (= (size!42476 (t!387592 lt!2649189)) lt!2649413)))

(declare-fun b!7562825 () Bool)

(assert (=> b!7562825 (= e!4503385 0)))

(declare-fun b!7562826 () Bool)

(assert (=> b!7562826 (= e!4503385 (+ 1 (size!42476 (t!387592 (t!387592 lt!2649189)))))))

(assert (= (and d!2315276 c!1395434) b!7562825))

(assert (= (and d!2315276 (not c!1395434)) b!7562826))

(declare-fun m!8125702 () Bool)

(assert (=> b!7562826 m!8125702))

(assert (=> b!7562095 d!2315276))

(declare-fun d!2315278 () Bool)

(assert (=> d!2315278 (= (head!15558 testedP!423) (h!79187 testedP!423))))

(assert (=> b!7562105 d!2315278))

(declare-fun d!2315280 () Bool)

(assert (=> d!2315280 (= (head!15558 input!7874) (h!79187 input!7874))))

(assert (=> b!7562105 d!2315280))

(declare-fun b!7562827 () Bool)

(declare-fun e!4503392 () Bool)

(declare-fun call!693331 () Bool)

(assert (=> b!7562827 (= e!4503392 call!693331)))

(declare-fun b!7562828 () Bool)

(declare-fun e!4503386 () Bool)

(declare-fun e!4503388 () Bool)

(assert (=> b!7562828 (= e!4503386 e!4503388)))

(declare-fun c!1395436 () Bool)

(assert (=> b!7562828 (= c!1395436 (is-Union!19980 lt!2649302))))

(declare-fun b!7562829 () Bool)

(declare-fun e!4503389 () Bool)

(assert (=> b!7562829 (= e!4503386 e!4503389)))

(declare-fun res!3030372 () Bool)

(assert (=> b!7562829 (= res!3030372 (not (nullable!8714 (reg!20309 lt!2649302))))))

(assert (=> b!7562829 (=> (not res!3030372) (not e!4503389))))

(declare-fun d!2315282 () Bool)

(declare-fun res!3030370 () Bool)

(declare-fun e!4503387 () Bool)

(assert (=> d!2315282 (=> res!3030370 e!4503387)))

(assert (=> d!2315282 (= res!3030370 (is-ElementMatch!19980 lt!2649302))))

(assert (=> d!2315282 (= (validRegex!10408 lt!2649302) e!4503387)))

(declare-fun b!7562830 () Bool)

(declare-fun res!3030371 () Bool)

(declare-fun e!4503390 () Bool)

(assert (=> b!7562830 (=> (not res!3030371) (not e!4503390))))

(declare-fun call!693333 () Bool)

(assert (=> b!7562830 (= res!3030371 call!693333)))

(assert (=> b!7562830 (= e!4503388 e!4503390)))

(declare-fun b!7562831 () Bool)

(assert (=> b!7562831 (= e!4503390 call!693331)))

(declare-fun b!7562832 () Bool)

(assert (=> b!7562832 (= e!4503387 e!4503386)))

(declare-fun c!1395435 () Bool)

(assert (=> b!7562832 (= c!1395435 (is-Star!19980 lt!2649302))))

(declare-fun bm!693326 () Bool)

(assert (=> bm!693326 (= call!693331 (validRegex!10408 (ite c!1395436 (regTwo!40473 lt!2649302) (regTwo!40472 lt!2649302))))))

(declare-fun bm!693327 () Bool)

(declare-fun call!693332 () Bool)

(assert (=> bm!693327 (= call!693332 (validRegex!10408 (ite c!1395435 (reg!20309 lt!2649302) (ite c!1395436 (regOne!40473 lt!2649302) (regOne!40472 lt!2649302)))))))

(declare-fun b!7562833 () Bool)

(declare-fun res!3030369 () Bool)

(declare-fun e!4503391 () Bool)

(assert (=> b!7562833 (=> res!3030369 e!4503391)))

(assert (=> b!7562833 (= res!3030369 (not (is-Concat!28825 lt!2649302)))))

(assert (=> b!7562833 (= e!4503388 e!4503391)))

(declare-fun b!7562834 () Bool)

(assert (=> b!7562834 (= e!4503391 e!4503392)))

(declare-fun res!3030368 () Bool)

(assert (=> b!7562834 (=> (not res!3030368) (not e!4503392))))

(assert (=> b!7562834 (= res!3030368 call!693333)))

(declare-fun bm!693328 () Bool)

(assert (=> bm!693328 (= call!693333 call!693332)))

(declare-fun b!7562835 () Bool)

(assert (=> b!7562835 (= e!4503389 call!693332)))

(assert (= (and d!2315282 (not res!3030370)) b!7562832))

(assert (= (and b!7562832 c!1395435) b!7562829))

(assert (= (and b!7562832 (not c!1395435)) b!7562828))

(assert (= (and b!7562829 res!3030372) b!7562835))

(assert (= (and b!7562828 c!1395436) b!7562830))

(assert (= (and b!7562828 (not c!1395436)) b!7562833))

(assert (= (and b!7562830 res!3030371) b!7562831))

(assert (= (and b!7562833 (not res!3030369)) b!7562834))

(assert (= (and b!7562834 res!3030368) b!7562827))

(assert (= (or b!7562830 b!7562834) bm!693328))

(assert (= (or b!7562831 b!7562827) bm!693326))

(assert (= (or b!7562835 bm!693328) bm!693327))

(declare-fun m!8125704 () Bool)

(assert (=> b!7562829 m!8125704))

(declare-fun m!8125706 () Bool)

(assert (=> bm!693326 m!8125706))

(declare-fun m!8125708 () Bool)

(assert (=> bm!693327 m!8125708))

(assert (=> d!2315044 d!2315282))

(assert (=> d!2315044 d!2315092))

(assert (=> d!2315082 d!2315080))

(declare-fun d!2315284 () Bool)

(assert (=> d!2315284 (isPrefix!6186 testedP!423 knownP!30)))

(assert (=> d!2315284 true))

(declare-fun _$69!414 () Unit!166894)

(assert (=> d!2315284 (= (choose!58492 knownP!30 testedP!423 input!7874) _$69!414)))

(declare-fun bs!1940402 () Bool)

(assert (= bs!1940402 d!2315284))

(assert (=> bs!1940402 m!8124910))

(assert (=> d!2315082 d!2315284))

(assert (=> d!2315082 d!2315014))

(declare-fun b!7562836 () Bool)

(declare-fun e!4503399 () Bool)

(declare-fun call!693334 () Bool)

(assert (=> b!7562836 (= e!4503399 call!693334)))

(declare-fun b!7562837 () Bool)

(declare-fun e!4503393 () Bool)

(declare-fun e!4503395 () Bool)

(assert (=> b!7562837 (= e!4503393 e!4503395)))

(declare-fun c!1395438 () Bool)

(assert (=> b!7562837 (= c!1395438 (is-Union!19980 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))

(declare-fun b!7562838 () Bool)

(declare-fun e!4503396 () Bool)

(assert (=> b!7562838 (= e!4503393 e!4503396)))

(declare-fun res!3030377 () Bool)

(assert (=> b!7562838 (= res!3030377 (not (nullable!8714 (reg!20309 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))))

(assert (=> b!7562838 (=> (not res!3030377) (not e!4503396))))

(declare-fun d!2315286 () Bool)

(declare-fun res!3030375 () Bool)

(declare-fun e!4503394 () Bool)

(assert (=> d!2315286 (=> res!3030375 e!4503394)))

(assert (=> d!2315286 (= res!3030375 (is-ElementMatch!19980 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))

(assert (=> d!2315286 (= (validRegex!10408 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))) e!4503394)))

(declare-fun b!7562839 () Bool)

(declare-fun res!3030376 () Bool)

(declare-fun e!4503397 () Bool)

(assert (=> b!7562839 (=> (not res!3030376) (not e!4503397))))

(declare-fun call!693336 () Bool)

(assert (=> b!7562839 (= res!3030376 call!693336)))

(assert (=> b!7562839 (= e!4503395 e!4503397)))

(declare-fun b!7562840 () Bool)

(assert (=> b!7562840 (= e!4503397 call!693334)))

(declare-fun b!7562841 () Bool)

(assert (=> b!7562841 (= e!4503394 e!4503393)))

(declare-fun c!1395437 () Bool)

(assert (=> b!7562841 (= c!1395437 (is-Star!19980 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))

(declare-fun bm!693329 () Bool)

(assert (=> bm!693329 (= call!693334 (validRegex!10408 (ite c!1395438 (regTwo!40473 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))) (regTwo!40472 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))))))))

(declare-fun bm!693330 () Bool)

(declare-fun call!693335 () Bool)

(assert (=> bm!693330 (= call!693335 (validRegex!10408 (ite c!1395437 (reg!20309 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))) (ite c!1395438 (regOne!40473 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101))) (regOne!40472 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101)))))))))

(declare-fun b!7562842 () Bool)

(declare-fun res!3030374 () Bool)

(declare-fun e!4503398 () Bool)

(assert (=> b!7562842 (=> res!3030374 e!4503398)))

(assert (=> b!7562842 (= res!3030374 (not (is-Concat!28825 (ite c!1395337 (regTwo!40473 baseR!101) (regTwo!40472 baseR!101)))))))

(assert (=> b!7562842 (= e!4503395 e!4503398)))

(declare-fun b!7562843 () Bool)

(assert (=> b!7562843 (= e!4503398 e!4503399)))

(declare-fun res!3030373 () Bool)

(assert (=> b!7562843 (=> (not res!3030373) (not e!4503399))))

(assert (=> b!7562843 (= res!3030373 call!693336)))

(declare-fun bm!693331 () Bool)

(assert (=> bm!693331 (= call!693336 call!693335)))

(declare-fun b!7562844 () Bool)

(assert (=> b!7562844 (= e!4503396 call!693335)))

(assert (= (and d!2315286 (not res!3030375)) b!7562841))

(assert (= (and b!7562841 c!1395437) b!7562838))

(assert (= (and b!7562841 (not c!1395437)) b!7562837))

(assert (= (and b!7562838 res!3030377) b!7562844))

(assert (= (and b!7562837 c!1395438) b!7562839))

(assert (= (and b!7562837 (not c!1395438)) b!7562842))

(assert (= (and b!7562839 res!3030376) b!7562840))

(assert (= (and b!7562842 (not res!3030374)) b!7562843))

(assert (= (and b!7562843 res!3030373) b!7562836))

(assert (= (or b!7562839 b!7562843) bm!693331))

(assert (= (or b!7562840 b!7562836) bm!693329))

(assert (= (or b!7562844 bm!693331) bm!693330))

(declare-fun m!8125710 () Bool)

(assert (=> b!7562838 m!8125710))

(declare-fun m!8125712 () Bool)

(assert (=> bm!693329 m!8125712))

(declare-fun m!8125714 () Bool)

(assert (=> bm!693330 m!8125714))

(assert (=> bm!693290 d!2315286))

(declare-fun d!2315288 () Bool)

(declare-fun lt!2649414 () Int)

(assert (=> d!2315288 (>= lt!2649414 0)))

(declare-fun e!4503400 () Int)

(assert (=> d!2315288 (= lt!2649414 e!4503400)))

(declare-fun c!1395439 () Bool)

(assert (=> d!2315288 (= c!1395439 (is-Nil!72739 lt!2649289))))

(assert (=> d!2315288 (= (size!42476 lt!2649289) lt!2649414)))

(declare-fun b!7562845 () Bool)

(assert (=> b!7562845 (= e!4503400 0)))

(declare-fun b!7562846 () Bool)

(assert (=> b!7562846 (= e!4503400 (+ 1 (size!42476 (t!387592 lt!2649289))))))

(assert (= (and d!2315288 c!1395439) b!7562845))

(assert (= (and d!2315288 (not c!1395439)) b!7562846))

(declare-fun m!8125716 () Bool)

(assert (=> b!7562846 m!8125716))

(assert (=> b!7562134 d!2315288))

(assert (=> b!7562134 d!2315116))

(declare-fun d!2315290 () Bool)

(declare-fun lt!2649415 () Int)

(assert (=> d!2315290 (>= lt!2649415 0)))

(declare-fun e!4503401 () Int)

(assert (=> d!2315290 (= lt!2649415 e!4503401)))

(declare-fun c!1395440 () Bool)

(assert (=> d!2315290 (= c!1395440 (is-Nil!72739 lt!2649177))))

(assert (=> d!2315290 (= (size!42476 lt!2649177) lt!2649415)))

(declare-fun b!7562847 () Bool)

(assert (=> b!7562847 (= e!4503401 0)))

(declare-fun b!7562848 () Bool)

(assert (=> b!7562848 (= e!4503401 (+ 1 (size!42476 (t!387592 lt!2649177))))))

(assert (= (and d!2315290 c!1395440) b!7562847))

(assert (= (and d!2315290 (not c!1395440)) b!7562848))

(declare-fun m!8125718 () Bool)

(assert (=> b!7562848 m!8125718))

(assert (=> b!7562134 d!2315290))

(declare-fun b!7562849 () Bool)

(declare-fun e!4503402 () Regex!19980)

(declare-fun e!4503405 () Regex!19980)

(assert (=> b!7562849 (= e!4503402 e!4503405)))

(declare-fun c!1395444 () Bool)

(assert (=> b!7562849 (= c!1395444 (is-ElementMatch!19980 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))))))

(declare-fun bm!693332 () Bool)

(declare-fun call!693339 () Regex!19980)

(declare-fun call!693338 () Regex!19980)

(assert (=> bm!693332 (= call!693339 call!693338)))

(declare-fun b!7562850 () Bool)

(declare-fun e!4503404 () Regex!19980)

(assert (=> b!7562850 (= e!4503404 (Union!19980 (Concat!28825 call!693339 (regTwo!40472 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))) EmptyLang!19980))))

(declare-fun bm!693333 () Bool)

(declare-fun call!693340 () Regex!19980)

(assert (=> bm!693333 (= call!693338 call!693340)))

(declare-fun b!7562851 () Bool)

(declare-fun e!4503403 () Regex!19980)

(declare-fun e!4503406 () Regex!19980)

(assert (=> b!7562851 (= e!4503403 e!4503406)))

(declare-fun c!1395441 () Bool)

(assert (=> b!7562851 (= c!1395441 (is-Star!19980 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))))))

(declare-fun b!7562852 () Bool)

(declare-fun c!1395443 () Bool)

(assert (=> b!7562852 (= c!1395443 (nullable!8714 (regOne!40472 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))))))

(assert (=> b!7562852 (= e!4503406 e!4503404)))

(declare-fun call!693337 () Regex!19980)

(declare-fun c!1395442 () Bool)

(declare-fun bm!693334 () Bool)

(assert (=> bm!693334 (= call!693337 (derivativeStep!5758 (ite c!1395442 (regOne!40473 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))) (regTwo!40472 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))) lt!2649175))))

(declare-fun b!7562853 () Bool)

(assert (=> b!7562853 (= e!4503403 (Union!19980 call!693337 call!693340))))

(declare-fun b!7562854 () Bool)

(assert (=> b!7562854 (= e!4503404 (Union!19980 (Concat!28825 call!693339 (regTwo!40472 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))) call!693337))))

(declare-fun d!2315292 () Bool)

(declare-fun lt!2649416 () Regex!19980)

(assert (=> d!2315292 (validRegex!10408 lt!2649416)))

(assert (=> d!2315292 (= lt!2649416 e!4503402)))

(declare-fun c!1395445 () Bool)

(assert (=> d!2315292 (= c!1395445 (or (is-EmptyExpr!19980 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))) (is-EmptyLang!19980 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))))))

(assert (=> d!2315292 (validRegex!10408 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))))

(assert (=> d!2315292 (= (derivativeStep!5758 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))) lt!2649175) lt!2649416)))

(declare-fun b!7562855 () Bool)

(assert (=> b!7562855 (= c!1395442 (is-Union!19980 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))))))

(assert (=> b!7562855 (= e!4503405 e!4503403)))

(declare-fun b!7562856 () Bool)

(assert (=> b!7562856 (= e!4503402 EmptyLang!19980)))

(declare-fun b!7562857 () Bool)

(assert (=> b!7562857 (= e!4503405 (ite (= lt!2649175 (c!1395261 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333))))) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562858 () Bool)

(assert (=> b!7562858 (= e!4503406 (Concat!28825 call!693338 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))))))

(declare-fun bm!693335 () Bool)

(assert (=> bm!693335 (= call!693340 (derivativeStep!5758 (ite c!1395442 (regTwo!40473 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))) (ite c!1395441 (reg!20309 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))) (regOne!40472 (ite c!1395297 (regTwo!40473 r!24333) (ite c!1395296 (reg!20309 r!24333) (regOne!40472 r!24333)))))) lt!2649175))))

(assert (= (and d!2315292 c!1395445) b!7562856))

(assert (= (and d!2315292 (not c!1395445)) b!7562849))

(assert (= (and b!7562849 c!1395444) b!7562857))

(assert (= (and b!7562849 (not c!1395444)) b!7562855))

(assert (= (and b!7562855 c!1395442) b!7562853))

(assert (= (and b!7562855 (not c!1395442)) b!7562851))

(assert (= (and b!7562851 c!1395441) b!7562858))

(assert (= (and b!7562851 (not c!1395441)) b!7562852))

(assert (= (and b!7562852 c!1395443) b!7562854))

(assert (= (and b!7562852 (not c!1395443)) b!7562850))

(assert (= (or b!7562854 b!7562850) bm!693332))

(assert (= (or b!7562858 bm!693332) bm!693333))

(assert (= (or b!7562853 bm!693333) bm!693335))

(assert (= (or b!7562853 b!7562854) bm!693334))

(declare-fun m!8125720 () Bool)

(assert (=> b!7562852 m!8125720))

(declare-fun m!8125722 () Bool)

(assert (=> bm!693334 m!8125722))

(declare-fun m!8125724 () Bool)

(assert (=> d!2315292 m!8125724))

(declare-fun m!8125726 () Bool)

(assert (=> d!2315292 m!8125726))

(declare-fun m!8125728 () Bool)

(assert (=> bm!693335 m!8125728))

(assert (=> bm!693267 d!2315292))

(assert (=> b!7562332 d!2315120))

(declare-fun d!2315294 () Bool)

(declare-fun c!1395446 () Bool)

(assert (=> d!2315294 (= c!1395446 (is-Nil!72739 lt!2649326))))

(declare-fun e!4503407 () (Set C!40286))

(assert (=> d!2315294 (= (content!15401 lt!2649326) e!4503407)))

(declare-fun b!7562859 () Bool)

(assert (=> b!7562859 (= e!4503407 (as set.empty (Set C!40286)))))

(declare-fun b!7562860 () Bool)

(assert (=> b!7562860 (= e!4503407 (set.union (set.insert (h!79187 lt!2649326) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649326))))))

(assert (= (and d!2315294 c!1395446) b!7562859))

(assert (= (and d!2315294 (not c!1395446)) b!7562860))

(declare-fun m!8125730 () Bool)

(assert (=> b!7562860 m!8125730))

(declare-fun m!8125732 () Bool)

(assert (=> b!7562860 m!8125732))

(assert (=> d!2315088 d!2315294))

(assert (=> d!2315088 d!2315270))

(declare-fun d!2315296 () Bool)

(declare-fun c!1395447 () Bool)

(assert (=> d!2315296 (= c!1395447 (is-Nil!72739 lt!2649187))))

(declare-fun e!4503408 () (Set C!40286))

(assert (=> d!2315296 (= (content!15401 lt!2649187) e!4503408)))

(declare-fun b!7562861 () Bool)

(assert (=> b!7562861 (= e!4503408 (as set.empty (Set C!40286)))))

(declare-fun b!7562862 () Bool)

(assert (=> b!7562862 (= e!4503408 (set.union (set.insert (h!79187 lt!2649187) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649187))))))

(assert (= (and d!2315296 c!1395447) b!7562861))

(assert (= (and d!2315296 (not c!1395447)) b!7562862))

(declare-fun m!8125734 () Bool)

(assert (=> b!7562862 m!8125734))

(declare-fun m!8125736 () Bool)

(assert (=> b!7562862 m!8125736))

(assert (=> d!2315088 d!2315296))

(assert (=> b!7562349 d!2315118))

(assert (=> b!7562349 d!2315116))

(declare-fun d!2315298 () Bool)

(assert (=> d!2315298 (= (head!15558 lt!2649189) (h!79187 lt!2649189))))

(assert (=> b!7562232 d!2315298))

(assert (=> b!7562232 d!2315280))

(declare-fun d!2315300 () Bool)

(assert (=> d!2315300 (= (nullable!8714 (reg!20309 baseR!101)) (nullableFct!3475 (reg!20309 baseR!101)))))

(declare-fun bs!1940403 () Bool)

(assert (= bs!1940403 d!2315300))

(declare-fun m!8125738 () Bool)

(assert (=> bs!1940403 m!8125738))

(assert (=> b!7562356 d!2315300))

(declare-fun d!2315302 () Bool)

(declare-fun lt!2649417 () List!72863)

(assert (=> d!2315302 (= (++!17484 (t!387592 testedP!423) lt!2649417) (tail!15098 input!7874))))

(declare-fun e!4503409 () List!72863)

(assert (=> d!2315302 (= lt!2649417 e!4503409)))

(declare-fun c!1395448 () Bool)

(assert (=> d!2315302 (= c!1395448 (is-Cons!72739 (t!387592 testedP!423)))))

(assert (=> d!2315302 (>= (size!42476 (tail!15098 input!7874)) (size!42476 (t!387592 testedP!423)))))

(assert (=> d!2315302 (= (getSuffix!3664 (tail!15098 input!7874) (t!387592 testedP!423)) lt!2649417)))

(declare-fun b!7562863 () Bool)

(assert (=> b!7562863 (= e!4503409 (getSuffix!3664 (tail!15098 (tail!15098 input!7874)) (t!387592 (t!387592 testedP!423))))))

(declare-fun b!7562864 () Bool)

(assert (=> b!7562864 (= e!4503409 (tail!15098 input!7874))))

(assert (= (and d!2315302 c!1395448) b!7562863))

(assert (= (and d!2315302 (not c!1395448)) b!7562864))

(declare-fun m!8125740 () Bool)

(assert (=> d!2315302 m!8125740))

(assert (=> d!2315302 m!8125034))

(assert (=> d!2315302 m!8125560))

(assert (=> d!2315302 m!8125324))

(assert (=> b!7562863 m!8125034))

(assert (=> b!7562863 m!8125566))

(assert (=> b!7562863 m!8125566))

(declare-fun m!8125742 () Bool)

(assert (=> b!7562863 m!8125742))

(assert (=> b!7562116 d!2315302))

(assert (=> b!7562116 d!2315210))

(declare-fun d!2315304 () Bool)

(declare-fun e!4503411 () Bool)

(assert (=> d!2315304 e!4503411))

(declare-fun res!3030378 () Bool)

(assert (=> d!2315304 (=> res!3030378 e!4503411)))

(declare-fun lt!2649418 () Bool)

(assert (=> d!2315304 (= res!3030378 (not lt!2649418))))

(declare-fun e!4503410 () Bool)

(assert (=> d!2315304 (= lt!2649418 e!4503410)))

(declare-fun res!3030381 () Bool)

(assert (=> d!2315304 (=> res!3030381 e!4503410)))

(assert (=> d!2315304 (= res!3030381 (is-Nil!72739 (tail!15098 lt!2649189)))))

(assert (=> d!2315304 (= (isPrefix!6186 (tail!15098 lt!2649189) (tail!15098 knownP!30)) lt!2649418)))

(declare-fun b!7562866 () Bool)

(declare-fun res!3030380 () Bool)

(declare-fun e!4503412 () Bool)

(assert (=> b!7562866 (=> (not res!3030380) (not e!4503412))))

(assert (=> b!7562866 (= res!3030380 (= (head!15558 (tail!15098 lt!2649189)) (head!15558 (tail!15098 knownP!30))))))

(declare-fun b!7562865 () Bool)

(assert (=> b!7562865 (= e!4503410 e!4503412)))

(declare-fun res!3030379 () Bool)

(assert (=> b!7562865 (=> (not res!3030379) (not e!4503412))))

(assert (=> b!7562865 (= res!3030379 (not (is-Nil!72739 (tail!15098 knownP!30))))))

(declare-fun b!7562868 () Bool)

(assert (=> b!7562868 (= e!4503411 (>= (size!42476 (tail!15098 knownP!30)) (size!42476 (tail!15098 lt!2649189))))))

(declare-fun b!7562867 () Bool)

(assert (=> b!7562867 (= e!4503412 (isPrefix!6186 (tail!15098 (tail!15098 lt!2649189)) (tail!15098 (tail!15098 knownP!30))))))

(assert (= (and d!2315304 (not res!3030381)) b!7562865))

(assert (= (and b!7562865 res!3030379) b!7562866))

(assert (= (and b!7562866 res!3030380) b!7562867))

(assert (= (and d!2315304 (not res!3030378)) b!7562868))

(assert (=> b!7562866 m!8125132))

(assert (=> b!7562866 m!8125600))

(assert (=> b!7562866 m!8125040))

(assert (=> b!7562866 m!8125684))

(assert (=> b!7562868 m!8125040))

(assert (=> b!7562868 m!8125686))

(assert (=> b!7562868 m!8125132))

(assert (=> b!7562868 m!8125602))

(assert (=> b!7562867 m!8125132))

(assert (=> b!7562867 m!8125604))

(assert (=> b!7562867 m!8125040))

(assert (=> b!7562867 m!8125688))

(assert (=> b!7562867 m!8125604))

(assert (=> b!7562867 m!8125688))

(declare-fun m!8125744 () Bool)

(assert (=> b!7562867 m!8125744))

(assert (=> b!7562237 d!2315304))

(assert (=> b!7562237 d!2315232))

(assert (=> b!7562237 d!2315216))

(assert (=> b!7562318 d!2315214))

(assert (=> b!7562318 d!2315216))

(declare-fun lt!2649419 () List!72863)

(declare-fun e!4503414 () Bool)

(declare-fun b!7562872 () Bool)

(assert (=> b!7562872 (= e!4503414 (or (not (= lt!2649181 Nil!72739)) (= lt!2649419 (++!17484 testedP!423 lt!2649177))))))

(declare-fun e!4503413 () List!72863)

(declare-fun b!7562870 () Bool)

(assert (=> b!7562870 (= e!4503413 (Cons!72739 (h!79187 (++!17484 testedP!423 lt!2649177)) (++!17484 (t!387592 (++!17484 testedP!423 lt!2649177)) lt!2649181)))))

(declare-fun b!7562869 () Bool)

(assert (=> b!7562869 (= e!4503413 lt!2649181)))

(declare-fun d!2315306 () Bool)

(assert (=> d!2315306 e!4503414))

(declare-fun res!3030383 () Bool)

(assert (=> d!2315306 (=> (not res!3030383) (not e!4503414))))

(assert (=> d!2315306 (= res!3030383 (= (content!15401 lt!2649419) (set.union (content!15401 (++!17484 testedP!423 lt!2649177)) (content!15401 lt!2649181))))))

(assert (=> d!2315306 (= lt!2649419 e!4503413)))

(declare-fun c!1395449 () Bool)

(assert (=> d!2315306 (= c!1395449 (is-Nil!72739 (++!17484 testedP!423 lt!2649177)))))

(assert (=> d!2315306 (= (++!17484 (++!17484 testedP!423 lt!2649177) lt!2649181) lt!2649419)))

(declare-fun b!7562871 () Bool)

(declare-fun res!3030382 () Bool)

(assert (=> b!7562871 (=> (not res!3030382) (not e!4503414))))

(assert (=> b!7562871 (= res!3030382 (= (size!42476 lt!2649419) (+ (size!42476 (++!17484 testedP!423 lt!2649177)) (size!42476 lt!2649181))))))

(assert (= (and d!2315306 c!1395449) b!7562869))

(assert (= (and d!2315306 (not c!1395449)) b!7562870))

(assert (= (and d!2315306 res!3030383) b!7562871))

(assert (= (and b!7562871 res!3030382) b!7562872))

(declare-fun m!8125746 () Bool)

(assert (=> b!7562870 m!8125746))

(declare-fun m!8125748 () Bool)

(assert (=> d!2315306 m!8125748))

(assert (=> d!2315306 m!8124872))

(declare-fun m!8125750 () Bool)

(assert (=> d!2315306 m!8125750))

(assert (=> d!2315306 m!8125150))

(declare-fun m!8125752 () Bool)

(assert (=> b!7562871 m!8125752))

(assert (=> b!7562871 m!8124872))

(declare-fun m!8125754 () Bool)

(assert (=> b!7562871 m!8125754))

(assert (=> b!7562871 m!8125154))

(assert (=> d!2315102 d!2315306))

(assert (=> d!2315102 d!2315100))

(declare-fun d!2315308 () Bool)

(assert (=> d!2315308 (= (++!17484 (++!17484 testedP!423 lt!2649177) lt!2649181) (++!17484 testedP!423 (++!17484 lt!2649177 lt!2649181)))))

(assert (=> d!2315308 true))

(declare-fun _$52!2482 () Unit!166894)

(assert (=> d!2315308 (= (choose!58496 testedP!423 lt!2649177 lt!2649181) _$52!2482)))

(declare-fun bs!1940404 () Bool)

(assert (= bs!1940404 d!2315308))

(assert (=> bs!1940404 m!8124872))

(assert (=> bs!1940404 m!8124872))

(assert (=> bs!1940404 m!8125272))

(assert (=> bs!1940404 m!8124896))

(assert (=> bs!1940404 m!8124896))

(assert (=> bs!1940404 m!8125276))

(assert (=> d!2315102 d!2315308))

(assert (=> d!2315102 d!2315028))

(declare-fun b!7562876 () Bool)

(declare-fun e!4503416 () Bool)

(declare-fun lt!2649420 () List!72863)

(assert (=> b!7562876 (= e!4503416 (or (not (= (++!17484 lt!2649177 lt!2649181) Nil!72739)) (= lt!2649420 testedP!423)))))

(declare-fun b!7562874 () Bool)

(declare-fun e!4503415 () List!72863)

(assert (=> b!7562874 (= e!4503415 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) (++!17484 lt!2649177 lt!2649181))))))

(declare-fun b!7562873 () Bool)

(assert (=> b!7562873 (= e!4503415 (++!17484 lt!2649177 lt!2649181))))

(declare-fun d!2315310 () Bool)

(assert (=> d!2315310 e!4503416))

(declare-fun res!3030385 () Bool)

(assert (=> d!2315310 (=> (not res!3030385) (not e!4503416))))

(assert (=> d!2315310 (= res!3030385 (= (content!15401 lt!2649420) (set.union (content!15401 testedP!423) (content!15401 (++!17484 lt!2649177 lt!2649181)))))))

(assert (=> d!2315310 (= lt!2649420 e!4503415)))

(declare-fun c!1395450 () Bool)

(assert (=> d!2315310 (= c!1395450 (is-Nil!72739 testedP!423))))

(assert (=> d!2315310 (= (++!17484 testedP!423 (++!17484 lt!2649177 lt!2649181)) lt!2649420)))

(declare-fun b!7562875 () Bool)

(declare-fun res!3030384 () Bool)

(assert (=> b!7562875 (=> (not res!3030384) (not e!4503416))))

(assert (=> b!7562875 (= res!3030384 (= (size!42476 lt!2649420) (+ (size!42476 testedP!423) (size!42476 (++!17484 lt!2649177 lt!2649181)))))))

(assert (= (and d!2315310 c!1395450) b!7562873))

(assert (= (and d!2315310 (not c!1395450)) b!7562874))

(assert (= (and d!2315310 res!3030385) b!7562875))

(assert (= (and b!7562875 res!3030384) b!7562876))

(assert (=> b!7562874 m!8124896))

(declare-fun m!8125756 () Bool)

(assert (=> b!7562874 m!8125756))

(declare-fun m!8125758 () Bool)

(assert (=> d!2315310 m!8125758))

(assert (=> d!2315310 m!8125058))

(assert (=> d!2315310 m!8124896))

(declare-fun m!8125760 () Bool)

(assert (=> d!2315310 m!8125760))

(declare-fun m!8125762 () Bool)

(assert (=> b!7562875 m!8125762))

(assert (=> b!7562875 m!8124928))

(assert (=> b!7562875 m!8124896))

(declare-fun m!8125764 () Bool)

(assert (=> b!7562875 m!8125764))

(assert (=> d!2315102 d!2315310))

(declare-fun d!2315312 () Bool)

(declare-fun lt!2649421 () Int)

(assert (=> d!2315312 (>= lt!2649421 0)))

(declare-fun e!4503417 () Int)

(assert (=> d!2315312 (= lt!2649421 e!4503417)))

(declare-fun c!1395451 () Bool)

(assert (=> d!2315312 (= c!1395451 (is-Nil!72739 lt!2649296))))

(assert (=> d!2315312 (= (size!42476 lt!2649296) lt!2649421)))

(declare-fun b!7562877 () Bool)

(assert (=> b!7562877 (= e!4503417 0)))

(declare-fun b!7562878 () Bool)

(assert (=> b!7562878 (= e!4503417 (+ 1 (size!42476 (t!387592 lt!2649296))))))

(assert (= (and d!2315312 c!1395451) b!7562877))

(assert (= (and d!2315312 (not c!1395451)) b!7562878))

(declare-fun m!8125766 () Bool)

(assert (=> b!7562878 m!8125766))

(assert (=> b!7562150 d!2315312))

(assert (=> b!7562150 d!2315118))

(assert (=> b!7562150 d!2315244))

(declare-fun lt!2649422 () List!72863)

(declare-fun e!4503419 () Bool)

(declare-fun b!7562882 () Bool)

(assert (=> b!7562882 (= e!4503419 (or (not (= lt!2649168 Nil!72739)) (= lt!2649422 (t!387592 lt!2649173))))))

(declare-fun b!7562880 () Bool)

(declare-fun e!4503418 () List!72863)

(assert (=> b!7562880 (= e!4503418 (Cons!72739 (h!79187 (t!387592 lt!2649173)) (++!17484 (t!387592 (t!387592 lt!2649173)) lt!2649168)))))

(declare-fun b!7562879 () Bool)

(assert (=> b!7562879 (= e!4503418 lt!2649168)))

(declare-fun d!2315314 () Bool)

(assert (=> d!2315314 e!4503419))

(declare-fun res!3030387 () Bool)

(assert (=> d!2315314 (=> (not res!3030387) (not e!4503419))))

(assert (=> d!2315314 (= res!3030387 (= (content!15401 lt!2649422) (set.union (content!15401 (t!387592 lt!2649173)) (content!15401 lt!2649168))))))

(assert (=> d!2315314 (= lt!2649422 e!4503418)))

(declare-fun c!1395452 () Bool)

(assert (=> d!2315314 (= c!1395452 (is-Nil!72739 (t!387592 lt!2649173)))))

(assert (=> d!2315314 (= (++!17484 (t!387592 lt!2649173) lt!2649168) lt!2649422)))

(declare-fun b!7562881 () Bool)

(declare-fun res!3030386 () Bool)

(assert (=> b!7562881 (=> (not res!3030386) (not e!4503419))))

(assert (=> b!7562881 (= res!3030386 (= (size!42476 lt!2649422) (+ (size!42476 (t!387592 lt!2649173)) (size!42476 lt!2649168))))))

(assert (= (and d!2315314 c!1395452) b!7562879))

(assert (= (and d!2315314 (not c!1395452)) b!7562880))

(assert (= (and d!2315314 res!3030387) b!7562881))

(assert (= (and b!7562881 res!3030386) b!7562882))

(declare-fun m!8125768 () Bool)

(assert (=> b!7562880 m!8125768))

(declare-fun m!8125770 () Bool)

(assert (=> d!2315314 m!8125770))

(assert (=> d!2315314 m!8125548))

(assert (=> d!2315314 m!8125086))

(declare-fun m!8125772 () Bool)

(assert (=> b!7562881 m!8125772))

(assert (=> b!7562881 m!8125630))

(assert (=> b!7562881 m!8125090))

(assert (=> b!7562411 d!2315314))

(declare-fun d!2315316 () Bool)

(declare-fun lt!2649423 () Int)

(assert (=> d!2315316 (>= lt!2649423 0)))

(declare-fun e!4503420 () Int)

(assert (=> d!2315316 (= lt!2649423 e!4503420)))

(declare-fun c!1395453 () Bool)

(assert (=> d!2315316 (= c!1395453 (is-Nil!72739 lt!2649348))))

(assert (=> d!2315316 (= (size!42476 lt!2649348) lt!2649423)))

(declare-fun b!7562883 () Bool)

(assert (=> b!7562883 (= e!4503420 0)))

(declare-fun b!7562884 () Bool)

(assert (=> b!7562884 (= e!4503420 (+ 1 (size!42476 (t!387592 lt!2649348))))))

(assert (= (and d!2315316 c!1395453) b!7562883))

(assert (= (and d!2315316 (not c!1395453)) b!7562884))

(declare-fun m!8125774 () Bool)

(assert (=> b!7562884 m!8125774))

(assert (=> b!7562408 d!2315316))

(assert (=> b!7562408 d!2315116))

(declare-fun d!2315318 () Bool)

(declare-fun lt!2649424 () Int)

(assert (=> d!2315318 (>= lt!2649424 0)))

(declare-fun e!4503421 () Int)

(assert (=> d!2315318 (= lt!2649424 e!4503421)))

(declare-fun c!1395454 () Bool)

(assert (=> d!2315318 (= c!1395454 (is-Nil!72739 lt!2649192))))

(assert (=> d!2315318 (= (size!42476 lt!2649192) lt!2649424)))

(declare-fun b!7562885 () Bool)

(assert (=> b!7562885 (= e!4503421 0)))

(declare-fun b!7562886 () Bool)

(assert (=> b!7562886 (= e!4503421 (+ 1 (size!42476 (t!387592 lt!2649192))))))

(assert (= (and d!2315318 c!1395454) b!7562885))

(assert (= (and d!2315318 (not c!1395454)) b!7562886))

(declare-fun m!8125776 () Bool)

(assert (=> b!7562886 m!8125776))

(assert (=> b!7562408 d!2315318))

(assert (=> b!7562314 d!2315238))

(declare-fun d!2315320 () Bool)

(declare-fun lt!2649425 () Regex!19980)

(assert (=> d!2315320 (validRegex!10408 lt!2649425)))

(declare-fun e!4503422 () Regex!19980)

(assert (=> d!2315320 (= lt!2649425 e!4503422)))

(declare-fun c!1395455 () Bool)

(assert (=> d!2315320 (= c!1395455 (is-Cons!72739 (t!387592 lt!2649189)))))

(assert (=> d!2315320 (validRegex!10408 (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)))))

(assert (=> d!2315320 (= (derivative!510 (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)) (t!387592 lt!2649189)) lt!2649425)))

(declare-fun b!7562887 () Bool)

(assert (=> b!7562887 (= e!4503422 (derivative!510 (derivativeStep!5758 (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)) (h!79187 (t!387592 lt!2649189))) (t!387592 (t!387592 lt!2649189))))))

(declare-fun b!7562888 () Bool)

(assert (=> b!7562888 (= e!4503422 (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)))))

(assert (= (and d!2315320 c!1395455) b!7562887))

(assert (= (and d!2315320 (not c!1395455)) b!7562888))

(declare-fun m!8125778 () Bool)

(assert (=> d!2315320 m!8125778))

(assert (=> d!2315320 m!8125072))

(declare-fun m!8125780 () Bool)

(assert (=> d!2315320 m!8125780))

(assert (=> b!7562887 m!8125072))

(declare-fun m!8125782 () Bool)

(assert (=> b!7562887 m!8125782))

(assert (=> b!7562887 m!8125782))

(declare-fun m!8125784 () Bool)

(assert (=> b!7562887 m!8125784))

(assert (=> b!7562144 d!2315320))

(declare-fun b!7562889 () Bool)

(declare-fun e!4503423 () Regex!19980)

(declare-fun e!4503426 () Regex!19980)

(assert (=> b!7562889 (= e!4503423 e!4503426)))

(declare-fun c!1395459 () Bool)

(assert (=> b!7562889 (= c!1395459 (is-ElementMatch!19980 baseR!101))))

(declare-fun bm!693336 () Bool)

(declare-fun call!693343 () Regex!19980)

(declare-fun call!693342 () Regex!19980)

(assert (=> bm!693336 (= call!693343 call!693342)))

(declare-fun b!7562890 () Bool)

(declare-fun e!4503425 () Regex!19980)

(assert (=> b!7562890 (= e!4503425 (Union!19980 (Concat!28825 call!693343 (regTwo!40472 baseR!101)) EmptyLang!19980))))

(declare-fun bm!693337 () Bool)

(declare-fun call!693344 () Regex!19980)

(assert (=> bm!693337 (= call!693342 call!693344)))

(declare-fun b!7562891 () Bool)

(declare-fun e!4503424 () Regex!19980)

(declare-fun e!4503427 () Regex!19980)

(assert (=> b!7562891 (= e!4503424 e!4503427)))

(declare-fun c!1395456 () Bool)

(assert (=> b!7562891 (= c!1395456 (is-Star!19980 baseR!101))))

(declare-fun b!7562892 () Bool)

(declare-fun c!1395458 () Bool)

(assert (=> b!7562892 (= c!1395458 (nullable!8714 (regOne!40472 baseR!101)))))

(assert (=> b!7562892 (= e!4503427 e!4503425)))

(declare-fun c!1395457 () Bool)

(declare-fun call!693341 () Regex!19980)

(declare-fun bm!693338 () Bool)

(assert (=> bm!693338 (= call!693341 (derivativeStep!5758 (ite c!1395457 (regOne!40473 baseR!101) (regTwo!40472 baseR!101)) (h!79187 lt!2649189)))))

(declare-fun b!7562893 () Bool)

(assert (=> b!7562893 (= e!4503424 (Union!19980 call!693341 call!693344))))

(declare-fun b!7562894 () Bool)

(assert (=> b!7562894 (= e!4503425 (Union!19980 (Concat!28825 call!693343 (regTwo!40472 baseR!101)) call!693341))))

(declare-fun d!2315322 () Bool)

(declare-fun lt!2649426 () Regex!19980)

(assert (=> d!2315322 (validRegex!10408 lt!2649426)))

(assert (=> d!2315322 (= lt!2649426 e!4503423)))

(declare-fun c!1395460 () Bool)

(assert (=> d!2315322 (= c!1395460 (or (is-EmptyExpr!19980 baseR!101) (is-EmptyLang!19980 baseR!101)))))

(assert (=> d!2315322 (validRegex!10408 baseR!101)))

(assert (=> d!2315322 (= (derivativeStep!5758 baseR!101 (h!79187 lt!2649189)) lt!2649426)))

(declare-fun b!7562895 () Bool)

(assert (=> b!7562895 (= c!1395457 (is-Union!19980 baseR!101))))

(assert (=> b!7562895 (= e!4503426 e!4503424)))

(declare-fun b!7562896 () Bool)

(assert (=> b!7562896 (= e!4503423 EmptyLang!19980)))

(declare-fun b!7562897 () Bool)

(assert (=> b!7562897 (= e!4503426 (ite (= (h!79187 lt!2649189) (c!1395261 baseR!101)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562898 () Bool)

(assert (=> b!7562898 (= e!4503427 (Concat!28825 call!693342 baseR!101))))

(declare-fun bm!693339 () Bool)

(assert (=> bm!693339 (= call!693344 (derivativeStep!5758 (ite c!1395457 (regTwo!40473 baseR!101) (ite c!1395456 (reg!20309 baseR!101) (regOne!40472 baseR!101))) (h!79187 lt!2649189)))))

(assert (= (and d!2315322 c!1395460) b!7562896))

(assert (= (and d!2315322 (not c!1395460)) b!7562889))

(assert (= (and b!7562889 c!1395459) b!7562897))

(assert (= (and b!7562889 (not c!1395459)) b!7562895))

(assert (= (and b!7562895 c!1395457) b!7562893))

(assert (= (and b!7562895 (not c!1395457)) b!7562891))

(assert (= (and b!7562891 c!1395456) b!7562898))

(assert (= (and b!7562891 (not c!1395456)) b!7562892))

(assert (= (and b!7562892 c!1395458) b!7562894))

(assert (= (and b!7562892 (not c!1395458)) b!7562890))

(assert (= (or b!7562894 b!7562890) bm!693336))

(assert (= (or b!7562898 bm!693336) bm!693337))

(assert (= (or b!7562893 bm!693337) bm!693339))

(assert (= (or b!7562893 b!7562894) bm!693338))

(declare-fun m!8125786 () Bool)

(assert (=> b!7562892 m!8125786))

(declare-fun m!8125788 () Bool)

(assert (=> bm!693338 m!8125788))

(declare-fun m!8125790 () Bool)

(assert (=> d!2315322 m!8125790))

(assert (=> d!2315322 m!8124846))

(declare-fun m!8125792 () Bool)

(assert (=> bm!693339 m!8125792))

(assert (=> b!7562144 d!2315322))

(assert (=> b!7562340 d!2315274))

(assert (=> b!7562340 d!2315086))

(declare-fun b!7562899 () Bool)

(declare-fun e!4503428 () Regex!19980)

(declare-fun e!4503431 () Regex!19980)

(assert (=> b!7562899 (= e!4503428 e!4503431)))

(declare-fun c!1395464 () Bool)

(assert (=> b!7562899 (= c!1395464 (is-ElementMatch!19980 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun bm!693340 () Bool)

(declare-fun call!693347 () Regex!19980)

(declare-fun call!693346 () Regex!19980)

(assert (=> bm!693340 (= call!693347 call!693346)))

(declare-fun e!4503430 () Regex!19980)

(declare-fun b!7562900 () Bool)

(assert (=> b!7562900 (= e!4503430 (Union!19980 (Concat!28825 call!693347 (regTwo!40472 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))) EmptyLang!19980))))

(declare-fun bm!693341 () Bool)

(declare-fun call!693348 () Regex!19980)

(assert (=> bm!693341 (= call!693346 call!693348)))

(declare-fun b!7562901 () Bool)

(declare-fun e!4503429 () Regex!19980)

(declare-fun e!4503432 () Regex!19980)

(assert (=> b!7562901 (= e!4503429 e!4503432)))

(declare-fun c!1395461 () Bool)

(assert (=> b!7562901 (= c!1395461 (is-Star!19980 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun b!7562902 () Bool)

(declare-fun c!1395463 () Bool)

(assert (=> b!7562902 (= c!1395463 (nullable!8714 (regOne!40472 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))))))

(assert (=> b!7562902 (= e!4503432 e!4503430)))

(declare-fun bm!693342 () Bool)

(declare-fun c!1395462 () Bool)

(declare-fun call!693345 () Regex!19980)

(assert (=> bm!693342 (= call!693345 (derivativeStep!5758 (ite c!1395462 (regOne!40473 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))) (regTwo!40472 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))) lt!2649175))))

(declare-fun b!7562903 () Bool)

(assert (=> b!7562903 (= e!4503429 (Union!19980 call!693345 call!693348))))

(declare-fun b!7562904 () Bool)

(assert (=> b!7562904 (= e!4503430 (Union!19980 (Concat!28825 call!693347 (regTwo!40472 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))) call!693345))))

(declare-fun d!2315324 () Bool)

(declare-fun lt!2649427 () Regex!19980)

(assert (=> d!2315324 (validRegex!10408 lt!2649427)))

(assert (=> d!2315324 (= lt!2649427 e!4503428)))

(declare-fun c!1395465 () Bool)

(assert (=> d!2315324 (= c!1395465 (or (is-EmptyExpr!19980 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))) (is-EmptyLang!19980 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))))))

(assert (=> d!2315324 (validRegex!10408 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))))

(assert (=> d!2315324 (= (derivativeStep!5758 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)) lt!2649175) lt!2649427)))

(declare-fun b!7562905 () Bool)

(assert (=> b!7562905 (= c!1395462 (is-Union!19980 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))))))

(assert (=> b!7562905 (= e!4503431 e!4503429)))

(declare-fun b!7562906 () Bool)

(assert (=> b!7562906 (= e!4503428 EmptyLang!19980)))

(declare-fun b!7562907 () Bool)

(assert (=> b!7562907 (= e!4503431 (ite (= lt!2649175 (c!1395261 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333)))) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562908 () Bool)

(assert (=> b!7562908 (= e!4503432 (Concat!28825 call!693346 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun bm!693343 () Bool)

(assert (=> bm!693343 (= call!693348 (derivativeStep!5758 (ite c!1395462 (regTwo!40473 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))) (ite c!1395461 (reg!20309 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))) (regOne!40472 (ite c!1395297 (regOne!40473 r!24333) (regTwo!40472 r!24333))))) lt!2649175))))

(assert (= (and d!2315324 c!1395465) b!7562906))

(assert (= (and d!2315324 (not c!1395465)) b!7562899))

(assert (= (and b!7562899 c!1395464) b!7562907))

(assert (= (and b!7562899 (not c!1395464)) b!7562905))

(assert (= (and b!7562905 c!1395462) b!7562903))

(assert (= (and b!7562905 (not c!1395462)) b!7562901))

(assert (= (and b!7562901 c!1395461) b!7562908))

(assert (= (and b!7562901 (not c!1395461)) b!7562902))

(assert (= (and b!7562902 c!1395463) b!7562904))

(assert (= (and b!7562902 (not c!1395463)) b!7562900))

(assert (= (or b!7562904 b!7562900) bm!693340))

(assert (= (or b!7562908 bm!693340) bm!693341))

(assert (= (or b!7562903 bm!693341) bm!693343))

(assert (= (or b!7562903 b!7562904) bm!693342))

(declare-fun m!8125794 () Bool)

(assert (=> b!7562902 m!8125794))

(declare-fun m!8125796 () Bool)

(assert (=> bm!693342 m!8125796))

(declare-fun m!8125798 () Bool)

(assert (=> d!2315324 m!8125798))

(declare-fun m!8125800 () Bool)

(assert (=> d!2315324 m!8125800))

(declare-fun m!8125802 () Bool)

(assert (=> bm!693343 m!8125802))

(assert (=> bm!693266 d!2315324))

(declare-fun b!7562912 () Bool)

(declare-fun e!4503434 () Bool)

(declare-fun lt!2649428 () List!72863)

(assert (=> b!7562912 (= e!4503434 (or (not (= lt!2649181 Nil!72739)) (= lt!2649428 (t!387592 lt!2649177))))))

(declare-fun b!7562910 () Bool)

(declare-fun e!4503433 () List!72863)

(assert (=> b!7562910 (= e!4503433 (Cons!72739 (h!79187 (t!387592 lt!2649177)) (++!17484 (t!387592 (t!387592 lt!2649177)) lt!2649181)))))

(declare-fun b!7562909 () Bool)

(assert (=> b!7562909 (= e!4503433 lt!2649181)))

(declare-fun d!2315326 () Bool)

(assert (=> d!2315326 e!4503434))

(declare-fun res!3030389 () Bool)

(assert (=> d!2315326 (=> (not res!3030389) (not e!4503434))))

(assert (=> d!2315326 (= res!3030389 (= (content!15401 lt!2649428) (set.union (content!15401 (t!387592 lt!2649177)) (content!15401 lt!2649181))))))

(assert (=> d!2315326 (= lt!2649428 e!4503433)))

(declare-fun c!1395466 () Bool)

(assert (=> d!2315326 (= c!1395466 (is-Nil!72739 (t!387592 lt!2649177)))))

(assert (=> d!2315326 (= (++!17484 (t!387592 lt!2649177) lt!2649181) lt!2649428)))

(declare-fun b!7562911 () Bool)

(declare-fun res!3030388 () Bool)

(assert (=> b!7562911 (=> (not res!3030388) (not e!4503434))))

(assert (=> b!7562911 (= res!3030388 (= (size!42476 lt!2649428) (+ (size!42476 (t!387592 lt!2649177)) (size!42476 lt!2649181))))))

(assert (= (and d!2315326 c!1395466) b!7562909))

(assert (= (and d!2315326 (not c!1395466)) b!7562910))

(assert (= (and d!2315326 res!3030389) b!7562911))

(assert (= (and b!7562911 res!3030388) b!7562912))

(declare-fun m!8125804 () Bool)

(assert (=> b!7562910 m!8125804))

(declare-fun m!8125806 () Bool)

(assert (=> d!2315326 m!8125806))

(declare-fun m!8125808 () Bool)

(assert (=> d!2315326 m!8125808))

(assert (=> d!2315326 m!8125150))

(declare-fun m!8125810 () Bool)

(assert (=> b!7562911 m!8125810))

(assert (=> b!7562911 m!8125718))

(assert (=> b!7562911 m!8125154))

(assert (=> b!7562377 d!2315326))

(declare-fun d!2315328 () Bool)

(declare-fun lt!2649429 () Int)

(assert (=> d!2315328 (>= lt!2649429 0)))

(declare-fun e!4503435 () Int)

(assert (=> d!2315328 (= lt!2649429 e!4503435)))

(declare-fun c!1395467 () Bool)

(assert (=> d!2315328 (= c!1395467 (is-Nil!72739 lt!2649333))))

(assert (=> d!2315328 (= (size!42476 lt!2649333) lt!2649429)))

(declare-fun b!7562913 () Bool)

(assert (=> b!7562913 (= e!4503435 0)))

(declare-fun b!7562914 () Bool)

(assert (=> b!7562914 (= e!4503435 (+ 1 (size!42476 (t!387592 lt!2649333))))))

(assert (= (and d!2315328 c!1395467) b!7562913))

(assert (= (and d!2315328 (not c!1395467)) b!7562914))

(declare-fun m!8125812 () Bool)

(assert (=> b!7562914 m!8125812))

(assert (=> b!7562374 d!2315328))

(assert (=> b!7562374 d!2315116))

(declare-fun d!2315330 () Bool)

(declare-fun lt!2649430 () Int)

(assert (=> d!2315330 (>= lt!2649430 0)))

(declare-fun e!4503436 () Int)

(assert (=> d!2315330 (= lt!2649430 e!4503436)))

(declare-fun c!1395468 () Bool)

(assert (=> d!2315330 (= c!1395468 (is-Nil!72739 lt!2649176))))

(assert (=> d!2315330 (= (size!42476 lt!2649176) lt!2649430)))

(declare-fun b!7562915 () Bool)

(assert (=> b!7562915 (= e!4503436 0)))

(declare-fun b!7562916 () Bool)

(assert (=> b!7562916 (= e!4503436 (+ 1 (size!42476 (t!387592 lt!2649176))))))

(assert (= (and d!2315330 c!1395468) b!7562915))

(assert (= (and d!2315330 (not c!1395468)) b!7562916))

(declare-fun m!8125814 () Bool)

(assert (=> b!7562916 m!8125814))

(assert (=> b!7562374 d!2315330))

(declare-fun b!7562917 () Bool)

(declare-fun e!4503443 () Bool)

(declare-fun call!693349 () Bool)

(assert (=> b!7562917 (= e!4503443 call!693349)))

(declare-fun b!7562918 () Bool)

(declare-fun e!4503437 () Bool)

(declare-fun e!4503439 () Bool)

(assert (=> b!7562918 (= e!4503437 e!4503439)))

(declare-fun c!1395470 () Bool)

(assert (=> b!7562918 (= c!1395470 (is-Union!19980 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))

(declare-fun b!7562919 () Bool)

(declare-fun e!4503440 () Bool)

(assert (=> b!7562919 (= e!4503437 e!4503440)))

(declare-fun res!3030394 () Bool)

(assert (=> b!7562919 (= res!3030394 (not (nullable!8714 (reg!20309 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))))

(assert (=> b!7562919 (=> (not res!3030394) (not e!4503440))))

(declare-fun d!2315332 () Bool)

(declare-fun res!3030392 () Bool)

(declare-fun e!4503438 () Bool)

(assert (=> d!2315332 (=> res!3030392 e!4503438)))

(assert (=> d!2315332 (= res!3030392 (is-ElementMatch!19980 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))

(assert (=> d!2315332 (= (validRegex!10408 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))) e!4503438)))

(declare-fun b!7562920 () Bool)

(declare-fun res!3030393 () Bool)

(declare-fun e!4503441 () Bool)

(assert (=> b!7562920 (=> (not res!3030393) (not e!4503441))))

(declare-fun call!693351 () Bool)

(assert (=> b!7562920 (= res!3030393 call!693351)))

(assert (=> b!7562920 (= e!4503439 e!4503441)))

(declare-fun b!7562921 () Bool)

(assert (=> b!7562921 (= e!4503441 call!693349)))

(declare-fun b!7562922 () Bool)

(assert (=> b!7562922 (= e!4503438 e!4503437)))

(declare-fun c!1395469 () Bool)

(assert (=> b!7562922 (= c!1395469 (is-Star!19980 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))

(declare-fun bm!693344 () Bool)

(assert (=> bm!693344 (= call!693349 (validRegex!10408 (ite c!1395470 (regTwo!40473 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))) (regTwo!40472 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))))))))

(declare-fun call!693350 () Bool)

(declare-fun bm!693345 () Bool)

(assert (=> bm!693345 (= call!693350 (validRegex!10408 (ite c!1395469 (reg!20309 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))) (ite c!1395470 (regOne!40473 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188))) (regOne!40472 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188)))))))))

(declare-fun b!7562923 () Bool)

(declare-fun res!3030391 () Bool)

(declare-fun e!4503442 () Bool)

(assert (=> b!7562923 (=> res!3030391 e!4503442)))

(assert (=> b!7562923 (= res!3030391 (not (is-Concat!28825 (ite c!1395316 (regTwo!40473 lt!2649188) (regTwo!40472 lt!2649188)))))))

(assert (=> b!7562923 (= e!4503439 e!4503442)))

(declare-fun b!7562924 () Bool)

(assert (=> b!7562924 (= e!4503442 e!4503443)))

(declare-fun res!3030390 () Bool)

(assert (=> b!7562924 (=> (not res!3030390) (not e!4503443))))

(assert (=> b!7562924 (= res!3030390 call!693351)))

(declare-fun bm!693346 () Bool)

(assert (=> bm!693346 (= call!693351 call!693350)))

(declare-fun b!7562925 () Bool)

(assert (=> b!7562925 (= e!4503440 call!693350)))

(assert (= (and d!2315332 (not res!3030392)) b!7562922))

(assert (= (and b!7562922 c!1395469) b!7562919))

(assert (= (and b!7562922 (not c!1395469)) b!7562918))

(assert (= (and b!7562919 res!3030394) b!7562925))

(assert (= (and b!7562918 c!1395470) b!7562920))

(assert (= (and b!7562918 (not c!1395470)) b!7562923))

(assert (= (and b!7562920 res!3030393) b!7562921))

(assert (= (and b!7562923 (not res!3030391)) b!7562924))

(assert (= (and b!7562924 res!3030390) b!7562917))

(assert (= (or b!7562920 b!7562924) bm!693346))

(assert (= (or b!7562921 b!7562917) bm!693344))

(assert (= (or b!7562925 bm!693346) bm!693345))

(declare-fun m!8125816 () Bool)

(assert (=> b!7562919 m!8125816))

(declare-fun m!8125818 () Bool)

(assert (=> bm!693344 m!8125818))

(declare-fun m!8125820 () Bool)

(assert (=> bm!693345 m!8125820))

(assert (=> bm!693283 d!2315332))

(declare-fun d!2315334 () Bool)

(assert (=> d!2315334 (= (nullable!8714 lt!2649188) (nullableFct!3475 lt!2649188))))

(declare-fun bs!1940405 () Bool)

(assert (= bs!1940405 d!2315334))

(declare-fun m!8125822 () Bool)

(assert (=> bs!1940405 m!8125822))

(assert (=> b!7562422 d!2315334))

(declare-fun d!2315336 () Bool)

(assert (=> d!2315336 (= (isEmpty!41414 lt!2649173) (is-Nil!72739 lt!2649173))))

(assert (=> bm!693289 d!2315336))

(assert (=> b!7562109 d!2315238))

(assert (=> b!7562109 d!2315280))

(declare-fun b!7562929 () Bool)

(declare-fun e!4503445 () Bool)

(declare-fun lt!2649431 () List!72863)

(assert (=> b!7562929 (= e!4503445 (or (not (= lt!2649281 Nil!72739)) (= lt!2649431 lt!2649189)))))

(declare-fun b!7562927 () Bool)

(declare-fun e!4503444 () List!72863)

(assert (=> b!7562927 (= e!4503444 (Cons!72739 (h!79187 lt!2649189) (++!17484 (t!387592 lt!2649189) lt!2649281)))))

(declare-fun b!7562926 () Bool)

(assert (=> b!7562926 (= e!4503444 lt!2649281)))

(declare-fun d!2315338 () Bool)

(assert (=> d!2315338 e!4503445))

(declare-fun res!3030396 () Bool)

(assert (=> d!2315338 (=> (not res!3030396) (not e!4503445))))

(assert (=> d!2315338 (= res!3030396 (= (content!15401 lt!2649431) (set.union (content!15401 lt!2649189) (content!15401 lt!2649281))))))

(assert (=> d!2315338 (= lt!2649431 e!4503444)))

(declare-fun c!1395471 () Bool)

(assert (=> d!2315338 (= c!1395471 (is-Nil!72739 lt!2649189))))

(assert (=> d!2315338 (= (++!17484 lt!2649189 lt!2649281) lt!2649431)))

(declare-fun b!7562928 () Bool)

(declare-fun res!3030395 () Bool)

(assert (=> b!7562928 (=> (not res!3030395) (not e!4503445))))

(assert (=> b!7562928 (= res!3030395 (= (size!42476 lt!2649431) (+ (size!42476 lt!2649189) (size!42476 lt!2649281))))))

(assert (= (and d!2315338 c!1395471) b!7562926))

(assert (= (and d!2315338 (not c!1395471)) b!7562927))

(assert (= (and d!2315338 res!3030396) b!7562928))

(assert (= (and b!7562928 res!3030395) b!7562929))

(declare-fun m!8125824 () Bool)

(assert (=> b!7562927 m!8125824))

(declare-fun m!8125826 () Bool)

(assert (=> d!2315338 m!8125826))

(assert (=> d!2315338 m!8125148))

(declare-fun m!8125828 () Bool)

(assert (=> d!2315338 m!8125828))

(declare-fun m!8125830 () Bool)

(assert (=> b!7562928 m!8125830))

(assert (=> b!7562928 m!8124888))

(declare-fun m!8125832 () Bool)

(assert (=> b!7562928 m!8125832))

(assert (=> d!2315022 d!2315338))

(assert (=> d!2315022 d!2315118))

(assert (=> d!2315022 d!2315010))

(declare-fun d!2315340 () Bool)

(declare-fun c!1395472 () Bool)

(assert (=> d!2315340 (= c!1395472 (is-Nil!72739 lt!2649310))))

(declare-fun e!4503446 () (Set C!40286))

(assert (=> d!2315340 (= (content!15401 lt!2649310) e!4503446)))

(declare-fun b!7562930 () Bool)

(assert (=> b!7562930 (= e!4503446 (as set.empty (Set C!40286)))))

(declare-fun b!7562931 () Bool)

(assert (=> b!7562931 (= e!4503446 (set.union (set.insert (h!79187 lt!2649310) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649310))))))

(assert (= (and d!2315340 c!1395472) b!7562930))

(assert (= (and d!2315340 (not c!1395472)) b!7562931))

(declare-fun m!8125834 () Bool)

(assert (=> b!7562931 m!8125834))

(declare-fun m!8125836 () Bool)

(assert (=> b!7562931 m!8125836))

(assert (=> d!2315060 d!2315340))

(declare-fun d!2315342 () Bool)

(declare-fun c!1395473 () Bool)

(assert (=> d!2315342 (= c!1395473 (is-Nil!72739 lt!2649189))))

(declare-fun e!4503447 () (Set C!40286))

(assert (=> d!2315342 (= (content!15401 lt!2649189) e!4503447)))

(declare-fun b!7562932 () Bool)

(assert (=> b!7562932 (= e!4503447 (as set.empty (Set C!40286)))))

(declare-fun b!7562933 () Bool)

(assert (=> b!7562933 (= e!4503447 (set.union (set.insert (h!79187 lt!2649189) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649189))))))

(assert (= (and d!2315342 c!1395473) b!7562932))

(assert (= (and d!2315342 (not c!1395473)) b!7562933))

(declare-fun m!8125838 () Bool)

(assert (=> b!7562933 m!8125838))

(declare-fun m!8125840 () Bool)

(assert (=> b!7562933 m!8125840))

(assert (=> d!2315060 d!2315342))

(declare-fun d!2315344 () Bool)

(declare-fun c!1395474 () Bool)

(assert (=> d!2315344 (= c!1395474 (is-Nil!72739 lt!2649181))))

(declare-fun e!4503448 () (Set C!40286))

(assert (=> d!2315344 (= (content!15401 lt!2649181) e!4503448)))

(declare-fun b!7562934 () Bool)

(assert (=> b!7562934 (= e!4503448 (as set.empty (Set C!40286)))))

(declare-fun b!7562935 () Bool)

(assert (=> b!7562935 (= e!4503448 (set.union (set.insert (h!79187 lt!2649181) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649181))))))

(assert (= (and d!2315344 c!1395474) b!7562934))

(assert (= (and d!2315344 (not c!1395474)) b!7562935))

(declare-fun m!8125842 () Bool)

(assert (=> b!7562935 m!8125842))

(declare-fun m!8125844 () Bool)

(assert (=> b!7562935 m!8125844))

(assert (=> d!2315060 d!2315344))

(declare-fun b!7562936 () Bool)

(declare-fun e!4503455 () Bool)

(declare-fun call!693352 () Bool)

(assert (=> b!7562936 (= e!4503455 call!693352)))

(declare-fun b!7562937 () Bool)

(declare-fun e!4503449 () Bool)

(declare-fun e!4503451 () Bool)

(assert (=> b!7562937 (= e!4503449 e!4503451)))

(declare-fun c!1395476 () Bool)

(assert (=> b!7562937 (= c!1395476 (is-Union!19980 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))

(declare-fun b!7562938 () Bool)

(declare-fun e!4503452 () Bool)

(assert (=> b!7562938 (= e!4503449 e!4503452)))

(declare-fun res!3030401 () Bool)

(assert (=> b!7562938 (= res!3030401 (not (nullable!8714 (reg!20309 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))))

(assert (=> b!7562938 (=> (not res!3030401) (not e!4503452))))

(declare-fun d!2315346 () Bool)

(declare-fun res!3030399 () Bool)

(declare-fun e!4503450 () Bool)

(assert (=> d!2315346 (=> res!3030399 e!4503450)))

(assert (=> d!2315346 (= res!3030399 (is-ElementMatch!19980 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))

(assert (=> d!2315346 (= (validRegex!10408 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))) e!4503450)))

(declare-fun b!7562939 () Bool)

(declare-fun res!3030400 () Bool)

(declare-fun e!4503453 () Bool)

(assert (=> b!7562939 (=> (not res!3030400) (not e!4503453))))

(declare-fun call!693354 () Bool)

(assert (=> b!7562939 (= res!3030400 call!693354)))

(assert (=> b!7562939 (= e!4503451 e!4503453)))

(declare-fun b!7562940 () Bool)

(assert (=> b!7562940 (= e!4503453 call!693352)))

(declare-fun b!7562941 () Bool)

(assert (=> b!7562941 (= e!4503450 e!4503449)))

(declare-fun c!1395475 () Bool)

(assert (=> b!7562941 (= c!1395475 (is-Star!19980 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))

(declare-fun bm!693347 () Bool)

(assert (=> bm!693347 (= call!693352 (validRegex!10408 (ite c!1395476 (regTwo!40473 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))) (regTwo!40472 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))))))))

(declare-fun call!693353 () Bool)

(declare-fun bm!693348 () Bool)

(assert (=> bm!693348 (= call!693353 (validRegex!10408 (ite c!1395475 (reg!20309 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))) (ite c!1395476 (regOne!40473 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333)))) (regOne!40472 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333))))))))))

(declare-fun b!7562942 () Bool)

(declare-fun res!3030398 () Bool)

(declare-fun e!4503454 () Bool)

(assert (=> b!7562942 (=> res!3030398 e!4503454)))

(assert (=> b!7562942 (= res!3030398 (not (is-Concat!28825 (ite c!1395338 (reg!20309 r!24333) (ite c!1395339 (regOne!40473 r!24333) (regOne!40472 r!24333))))))))

(assert (=> b!7562942 (= e!4503451 e!4503454)))

(declare-fun b!7562943 () Bool)

(assert (=> b!7562943 (= e!4503454 e!4503455)))

(declare-fun res!3030397 () Bool)

(assert (=> b!7562943 (=> (not res!3030397) (not e!4503455))))

(assert (=> b!7562943 (= res!3030397 call!693354)))

(declare-fun bm!693349 () Bool)

(assert (=> bm!693349 (= call!693354 call!693353)))

(declare-fun b!7562944 () Bool)

(assert (=> b!7562944 (= e!4503452 call!693353)))

(assert (= (and d!2315346 (not res!3030399)) b!7562941))

(assert (= (and b!7562941 c!1395475) b!7562938))

(assert (= (and b!7562941 (not c!1395475)) b!7562937))

(assert (= (and b!7562938 res!3030401) b!7562944))

(assert (= (and b!7562937 c!1395476) b!7562939))

(assert (= (and b!7562937 (not c!1395476)) b!7562942))

(assert (= (and b!7562939 res!3030400) b!7562940))

(assert (= (and b!7562942 (not res!3030398)) b!7562943))

(assert (= (and b!7562943 res!3030397) b!7562936))

(assert (= (or b!7562939 b!7562943) bm!693349))

(assert (= (or b!7562940 b!7562936) bm!693347))

(assert (= (or b!7562944 bm!693349) bm!693348))

(declare-fun m!8125846 () Bool)

(assert (=> b!7562938 m!8125846))

(declare-fun m!8125848 () Bool)

(assert (=> bm!693347 m!8125848))

(declare-fun m!8125850 () Bool)

(assert (=> bm!693348 m!8125850))

(assert (=> bm!693294 d!2315346))

(declare-fun d!2315348 () Bool)

(assert (=> d!2315348 (= (nullable!8714 (reg!20309 lt!2649188)) (nullableFct!3475 (reg!20309 lt!2649188)))))

(declare-fun bs!1940406 () Bool)

(assert (= bs!1940406 d!2315348))

(declare-fun m!8125852 () Bool)

(assert (=> bs!1940406 m!8125852))

(assert (=> b!7562263 d!2315348))

(declare-fun b!7562945 () Bool)

(declare-fun res!3030404 () Bool)

(declare-fun e!4503462 () Bool)

(assert (=> b!7562945 (=> (not res!3030404) (not e!4503462))))

(declare-fun call!693355 () Bool)

(assert (=> b!7562945 (= res!3030404 (not call!693355))))

(declare-fun b!7562946 () Bool)

(declare-fun e!4503461 () Bool)

(declare-fun e!4503459 () Bool)

(assert (=> b!7562946 (= e!4503461 e!4503459)))

(declare-fun c!1395478 () Bool)

(assert (=> b!7562946 (= c!1395478 (is-EmptyLang!19980 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181))))))

(declare-fun b!7562947 () Bool)

(assert (=> b!7562947 (= e!4503462 (= (head!15558 (tail!15098 lt!2649181)) (c!1395261 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)))))))

(declare-fun b!7562948 () Bool)

(declare-fun e!4503457 () Bool)

(assert (=> b!7562948 (= e!4503457 (not (= (head!15558 (tail!15098 lt!2649181)) (c!1395261 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181))))))))

(declare-fun b!7562949 () Bool)

(declare-fun e!4503456 () Bool)

(assert (=> b!7562949 (= e!4503456 (matchR!9582 (derivativeStep!5758 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)) (head!15558 (tail!15098 lt!2649181))) (tail!15098 (tail!15098 lt!2649181))))))

(declare-fun b!7562950 () Bool)

(declare-fun e!4503460 () Bool)

(assert (=> b!7562950 (= e!4503460 e!4503457)))

(declare-fun res!3030406 () Bool)

(assert (=> b!7562950 (=> res!3030406 e!4503457)))

(assert (=> b!7562950 (= res!3030406 call!693355)))

(declare-fun b!7562951 () Bool)

(declare-fun res!3030408 () Bool)

(assert (=> b!7562951 (=> res!3030408 e!4503457)))

(assert (=> b!7562951 (= res!3030408 (not (isEmpty!41414 (tail!15098 (tail!15098 lt!2649181)))))))

(declare-fun b!7562952 () Bool)

(declare-fun res!3030405 () Bool)

(declare-fun e!4503458 () Bool)

(assert (=> b!7562952 (=> res!3030405 e!4503458)))

(assert (=> b!7562952 (= res!3030405 e!4503462)))

(declare-fun res!3030409 () Bool)

(assert (=> b!7562952 (=> (not res!3030409) (not e!4503462))))

(declare-fun lt!2649432 () Bool)

(assert (=> b!7562952 (= res!3030409 lt!2649432)))

(declare-fun b!7562953 () Bool)

(assert (=> b!7562953 (= e!4503456 (nullable!8714 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181))))))

(declare-fun bm!693350 () Bool)

(assert (=> bm!693350 (= call!693355 (isEmpty!41414 (tail!15098 lt!2649181)))))

(declare-fun b!7562954 () Bool)

(assert (=> b!7562954 (= e!4503458 e!4503460)))

(declare-fun res!3030407 () Bool)

(assert (=> b!7562954 (=> (not res!3030407) (not e!4503460))))

(assert (=> b!7562954 (= res!3030407 (not lt!2649432))))

(declare-fun b!7562955 () Bool)

(declare-fun res!3030403 () Bool)

(assert (=> b!7562955 (=> (not res!3030403) (not e!4503462))))

(assert (=> b!7562955 (= res!3030403 (isEmpty!41414 (tail!15098 (tail!15098 lt!2649181))))))

(declare-fun b!7562957 () Bool)

(assert (=> b!7562957 (= e!4503461 (= lt!2649432 call!693355))))

(declare-fun b!7562958 () Bool)

(assert (=> b!7562958 (= e!4503459 (not lt!2649432))))

(declare-fun d!2315350 () Bool)

(assert (=> d!2315350 e!4503461))

(declare-fun c!1395477 () Bool)

(assert (=> d!2315350 (= c!1395477 (is-EmptyExpr!19980 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181))))))

(assert (=> d!2315350 (= lt!2649432 e!4503456)))

(declare-fun c!1395479 () Bool)

(assert (=> d!2315350 (= c!1395479 (isEmpty!41414 (tail!15098 lt!2649181)))))

(assert (=> d!2315350 (validRegex!10408 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)))))

(assert (=> d!2315350 (= (matchR!9582 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)) (tail!15098 lt!2649181)) lt!2649432)))

(declare-fun b!7562956 () Bool)

(declare-fun res!3030402 () Bool)

(assert (=> b!7562956 (=> res!3030402 e!4503458)))

(assert (=> b!7562956 (= res!3030402 (not (is-ElementMatch!19980 (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)))))))

(assert (=> b!7562956 (= e!4503459 e!4503458)))

(assert (= (and d!2315350 c!1395479) b!7562953))

(assert (= (and d!2315350 (not c!1395479)) b!7562949))

(assert (= (and d!2315350 c!1395477) b!7562957))

(assert (= (and d!2315350 (not c!1395477)) b!7562946))

(assert (= (and b!7562946 c!1395478) b!7562958))

(assert (= (and b!7562946 (not c!1395478)) b!7562956))

(assert (= (and b!7562956 (not res!3030402)) b!7562952))

(assert (= (and b!7562952 res!3030409) b!7562945))

(assert (= (and b!7562945 res!3030404) b!7562955))

(assert (= (and b!7562955 res!3030403) b!7562947))

(assert (= (and b!7562952 (not res!3030405)) b!7562954))

(assert (= (and b!7562954 res!3030407) b!7562950))

(assert (= (and b!7562950 (not res!3030406)) b!7562951))

(assert (= (and b!7562951 (not res!3030408)) b!7562948))

(assert (= (or b!7562957 b!7562945 b!7562950) bm!693350))

(assert (=> d!2315350 m!8125370))

(assert (=> d!2315350 m!8125372))

(assert (=> d!2315350 m!8125376))

(declare-fun m!8125854 () Bool)

(assert (=> d!2315350 m!8125854))

(assert (=> b!7562953 m!8125376))

(declare-fun m!8125856 () Bool)

(assert (=> b!7562953 m!8125856))

(assert (=> b!7562955 m!8125370))

(declare-fun m!8125858 () Bool)

(assert (=> b!7562955 m!8125858))

(assert (=> b!7562955 m!8125858))

(declare-fun m!8125860 () Bool)

(assert (=> b!7562955 m!8125860))

(assert (=> b!7562948 m!8125370))

(declare-fun m!8125862 () Bool)

(assert (=> b!7562948 m!8125862))

(assert (=> b!7562951 m!8125370))

(assert (=> b!7562951 m!8125858))

(assert (=> b!7562951 m!8125858))

(assert (=> b!7562951 m!8125860))

(assert (=> b!7562947 m!8125370))

(assert (=> b!7562947 m!8125862))

(assert (=> bm!693350 m!8125370))

(assert (=> bm!693350 m!8125372))

(assert (=> b!7562949 m!8125370))

(assert (=> b!7562949 m!8125862))

(assert (=> b!7562949 m!8125376))

(assert (=> b!7562949 m!8125862))

(declare-fun m!8125864 () Bool)

(assert (=> b!7562949 m!8125864))

(assert (=> b!7562949 m!8125370))

(assert (=> b!7562949 m!8125858))

(assert (=> b!7562949 m!8125864))

(assert (=> b!7562949 m!8125858))

(declare-fun m!8125866 () Bool)

(assert (=> b!7562949 m!8125866))

(assert (=> b!7562418 d!2315350))

(declare-fun b!7562959 () Bool)

(declare-fun e!4503463 () Regex!19980)

(declare-fun e!4503466 () Regex!19980)

(assert (=> b!7562959 (= e!4503463 e!4503466)))

(declare-fun c!1395483 () Bool)

(assert (=> b!7562959 (= c!1395483 (is-ElementMatch!19980 lt!2649188))))

(declare-fun bm!693351 () Bool)

(declare-fun call!693358 () Regex!19980)

(declare-fun call!693357 () Regex!19980)

(assert (=> bm!693351 (= call!693358 call!693357)))

(declare-fun b!7562960 () Bool)

(declare-fun e!4503465 () Regex!19980)

(assert (=> b!7562960 (= e!4503465 (Union!19980 (Concat!28825 call!693358 (regTwo!40472 lt!2649188)) EmptyLang!19980))))

(declare-fun bm!693352 () Bool)

(declare-fun call!693359 () Regex!19980)

(assert (=> bm!693352 (= call!693357 call!693359)))

(declare-fun b!7562961 () Bool)

(declare-fun e!4503464 () Regex!19980)

(declare-fun e!4503467 () Regex!19980)

(assert (=> b!7562961 (= e!4503464 e!4503467)))

(declare-fun c!1395480 () Bool)

(assert (=> b!7562961 (= c!1395480 (is-Star!19980 lt!2649188))))

(declare-fun b!7562962 () Bool)

(declare-fun c!1395482 () Bool)

(assert (=> b!7562962 (= c!1395482 (nullable!8714 (regOne!40472 lt!2649188)))))

(assert (=> b!7562962 (= e!4503467 e!4503465)))

(declare-fun call!693356 () Regex!19980)

(declare-fun c!1395481 () Bool)

(declare-fun bm!693353 () Bool)

(assert (=> bm!693353 (= call!693356 (derivativeStep!5758 (ite c!1395481 (regOne!40473 lt!2649188) (regTwo!40472 lt!2649188)) (head!15558 lt!2649181)))))

(declare-fun b!7562963 () Bool)

(assert (=> b!7562963 (= e!4503464 (Union!19980 call!693356 call!693359))))

(declare-fun b!7562964 () Bool)

(assert (=> b!7562964 (= e!4503465 (Union!19980 (Concat!28825 call!693358 (regTwo!40472 lt!2649188)) call!693356))))

(declare-fun d!2315352 () Bool)

(declare-fun lt!2649433 () Regex!19980)

(assert (=> d!2315352 (validRegex!10408 lt!2649433)))

(assert (=> d!2315352 (= lt!2649433 e!4503463)))

(declare-fun c!1395484 () Bool)

(assert (=> d!2315352 (= c!1395484 (or (is-EmptyExpr!19980 lt!2649188) (is-EmptyLang!19980 lt!2649188)))))

(assert (=> d!2315352 (validRegex!10408 lt!2649188)))

(assert (=> d!2315352 (= (derivativeStep!5758 lt!2649188 (head!15558 lt!2649181)) lt!2649433)))

(declare-fun b!7562965 () Bool)

(assert (=> b!7562965 (= c!1395481 (is-Union!19980 lt!2649188))))

(assert (=> b!7562965 (= e!4503466 e!4503464)))

(declare-fun b!7562966 () Bool)

(assert (=> b!7562966 (= e!4503463 EmptyLang!19980)))

(declare-fun b!7562967 () Bool)

(assert (=> b!7562967 (= e!4503466 (ite (= (head!15558 lt!2649181) (c!1395261 lt!2649188)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562968 () Bool)

(assert (=> b!7562968 (= e!4503467 (Concat!28825 call!693357 lt!2649188))))

(declare-fun bm!693354 () Bool)

(assert (=> bm!693354 (= call!693359 (derivativeStep!5758 (ite c!1395481 (regTwo!40473 lt!2649188) (ite c!1395480 (reg!20309 lt!2649188) (regOne!40472 lt!2649188))) (head!15558 lt!2649181)))))

(assert (= (and d!2315352 c!1395484) b!7562966))

(assert (= (and d!2315352 (not c!1395484)) b!7562959))

(assert (= (and b!7562959 c!1395483) b!7562967))

(assert (= (and b!7562959 (not c!1395483)) b!7562965))

(assert (= (and b!7562965 c!1395481) b!7562963))

(assert (= (and b!7562965 (not c!1395481)) b!7562961))

(assert (= (and b!7562961 c!1395480) b!7562968))

(assert (= (and b!7562961 (not c!1395480)) b!7562962))

(assert (= (and b!7562962 c!1395482) b!7562964))

(assert (= (and b!7562962 (not c!1395482)) b!7562960))

(assert (= (or b!7562964 b!7562960) bm!693351))

(assert (= (or b!7562968 bm!693351) bm!693352))

(assert (= (or b!7562963 bm!693352) bm!693354))

(assert (= (or b!7562963 b!7562964) bm!693353))

(declare-fun m!8125868 () Bool)

(assert (=> b!7562962 m!8125868))

(assert (=> bm!693353 m!8125374))

(declare-fun m!8125870 () Bool)

(assert (=> bm!693353 m!8125870))

(declare-fun m!8125872 () Bool)

(assert (=> d!2315352 m!8125872))

(assert (=> d!2315352 m!8124856))

(assert (=> bm!693354 m!8125374))

(declare-fun m!8125874 () Bool)

(assert (=> bm!693354 m!8125874))

(assert (=> b!7562418 d!2315352))

(assert (=> b!7562418 d!2315220))

(assert (=> b!7562418 d!2315204))

(declare-fun d!2315354 () Bool)

(declare-fun lt!2649434 () Regex!19980)

(assert (=> d!2315354 (validRegex!10408 lt!2649434)))

(declare-fun e!4503468 () Regex!19980)

(assert (=> d!2315354 (= lt!2649434 e!4503468)))

(declare-fun c!1395485 () Bool)

(assert (=> d!2315354 (= c!1395485 (is-Cons!72739 (t!387592 testedP!423)))))

(assert (=> d!2315354 (validRegex!10408 (derivativeStep!5758 baseR!101 (h!79187 testedP!423)))))

(assert (=> d!2315354 (= (derivative!510 (derivativeStep!5758 baseR!101 (h!79187 testedP!423)) (t!387592 testedP!423)) lt!2649434)))

(declare-fun b!7562969 () Bool)

(assert (=> b!7562969 (= e!4503468 (derivative!510 (derivativeStep!5758 (derivativeStep!5758 baseR!101 (h!79187 testedP!423)) (h!79187 (t!387592 testedP!423))) (t!387592 (t!387592 testedP!423))))))

(declare-fun b!7562970 () Bool)

(assert (=> b!7562970 (= e!4503468 (derivativeStep!5758 baseR!101 (h!79187 testedP!423)))))

(assert (= (and d!2315354 c!1395485) b!7562969))

(assert (= (and d!2315354 (not c!1395485)) b!7562970))

(declare-fun m!8125876 () Bool)

(assert (=> d!2315354 m!8125876))

(assert (=> d!2315354 m!8125166))

(declare-fun m!8125878 () Bool)

(assert (=> d!2315354 m!8125878))

(assert (=> b!7562969 m!8125166))

(declare-fun m!8125880 () Bool)

(assert (=> b!7562969 m!8125880))

(assert (=> b!7562969 m!8125880))

(declare-fun m!8125882 () Bool)

(assert (=> b!7562969 m!8125882))

(assert (=> b!7562270 d!2315354))

(declare-fun b!7562971 () Bool)

(declare-fun e!4503469 () Regex!19980)

(declare-fun e!4503472 () Regex!19980)

(assert (=> b!7562971 (= e!4503469 e!4503472)))

(declare-fun c!1395489 () Bool)

(assert (=> b!7562971 (= c!1395489 (is-ElementMatch!19980 baseR!101))))

(declare-fun bm!693355 () Bool)

(declare-fun call!693362 () Regex!19980)

(declare-fun call!693361 () Regex!19980)

(assert (=> bm!693355 (= call!693362 call!693361)))

(declare-fun b!7562972 () Bool)

(declare-fun e!4503471 () Regex!19980)

(assert (=> b!7562972 (= e!4503471 (Union!19980 (Concat!28825 call!693362 (regTwo!40472 baseR!101)) EmptyLang!19980))))

(declare-fun bm!693356 () Bool)

(declare-fun call!693363 () Regex!19980)

(assert (=> bm!693356 (= call!693361 call!693363)))

(declare-fun b!7562973 () Bool)

(declare-fun e!4503470 () Regex!19980)

(declare-fun e!4503473 () Regex!19980)

(assert (=> b!7562973 (= e!4503470 e!4503473)))

(declare-fun c!1395486 () Bool)

(assert (=> b!7562973 (= c!1395486 (is-Star!19980 baseR!101))))

(declare-fun b!7562974 () Bool)

(declare-fun c!1395488 () Bool)

(assert (=> b!7562974 (= c!1395488 (nullable!8714 (regOne!40472 baseR!101)))))

(assert (=> b!7562974 (= e!4503473 e!4503471)))

(declare-fun c!1395487 () Bool)

(declare-fun call!693360 () Regex!19980)

(declare-fun bm!693357 () Bool)

(assert (=> bm!693357 (= call!693360 (derivativeStep!5758 (ite c!1395487 (regOne!40473 baseR!101) (regTwo!40472 baseR!101)) (h!79187 testedP!423)))))

(declare-fun b!7562975 () Bool)

(assert (=> b!7562975 (= e!4503470 (Union!19980 call!693360 call!693363))))

(declare-fun b!7562976 () Bool)

(assert (=> b!7562976 (= e!4503471 (Union!19980 (Concat!28825 call!693362 (regTwo!40472 baseR!101)) call!693360))))

(declare-fun d!2315356 () Bool)

(declare-fun lt!2649435 () Regex!19980)

(assert (=> d!2315356 (validRegex!10408 lt!2649435)))

(assert (=> d!2315356 (= lt!2649435 e!4503469)))

(declare-fun c!1395490 () Bool)

(assert (=> d!2315356 (= c!1395490 (or (is-EmptyExpr!19980 baseR!101) (is-EmptyLang!19980 baseR!101)))))

(assert (=> d!2315356 (validRegex!10408 baseR!101)))

(assert (=> d!2315356 (= (derivativeStep!5758 baseR!101 (h!79187 testedP!423)) lt!2649435)))

(declare-fun b!7562977 () Bool)

(assert (=> b!7562977 (= c!1395487 (is-Union!19980 baseR!101))))

(assert (=> b!7562977 (= e!4503472 e!4503470)))

(declare-fun b!7562978 () Bool)

(assert (=> b!7562978 (= e!4503469 EmptyLang!19980)))

(declare-fun b!7562979 () Bool)

(assert (=> b!7562979 (= e!4503472 (ite (= (h!79187 testedP!423) (c!1395261 baseR!101)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7562980 () Bool)

(assert (=> b!7562980 (= e!4503473 (Concat!28825 call!693361 baseR!101))))

(declare-fun bm!693358 () Bool)

(assert (=> bm!693358 (= call!693363 (derivativeStep!5758 (ite c!1395487 (regTwo!40473 baseR!101) (ite c!1395486 (reg!20309 baseR!101) (regOne!40472 baseR!101))) (h!79187 testedP!423)))))

(assert (= (and d!2315356 c!1395490) b!7562978))

(assert (= (and d!2315356 (not c!1395490)) b!7562971))

(assert (= (and b!7562971 c!1395489) b!7562979))

(assert (= (and b!7562971 (not c!1395489)) b!7562977))

(assert (= (and b!7562977 c!1395487) b!7562975))

(assert (= (and b!7562977 (not c!1395487)) b!7562973))

(assert (= (and b!7562973 c!1395486) b!7562980))

(assert (= (and b!7562973 (not c!1395486)) b!7562974))

(assert (= (and b!7562974 c!1395488) b!7562976))

(assert (= (and b!7562974 (not c!1395488)) b!7562972))

(assert (= (or b!7562976 b!7562972) bm!693355))

(assert (= (or b!7562980 bm!693355) bm!693356))

(assert (= (or b!7562975 bm!693356) bm!693358))

(assert (= (or b!7562975 b!7562976) bm!693357))

(assert (=> b!7562974 m!8125786))

(declare-fun m!8125884 () Bool)

(assert (=> bm!693357 m!8125884))

(declare-fun m!8125886 () Bool)

(assert (=> d!2315356 m!8125886))

(assert (=> d!2315356 m!8124846))

(declare-fun m!8125888 () Bool)

(assert (=> bm!693358 m!8125888))

(assert (=> b!7562270 d!2315356))

(declare-fun d!2315358 () Bool)

(assert (=> d!2315358 (= (isEmpty!41414 knownP!30) (is-Nil!72739 knownP!30))))

(assert (=> bm!693288 d!2315358))

(declare-fun d!2315360 () Bool)

(declare-fun lt!2649436 () Int)

(assert (=> d!2315360 (>= lt!2649436 0)))

(declare-fun e!4503474 () Int)

(assert (=> d!2315360 (= lt!2649436 e!4503474)))

(declare-fun c!1395491 () Bool)

(assert (=> d!2315360 (= c!1395491 (is-Nil!72739 (t!387592 input!7874)))))

(assert (=> d!2315360 (= (size!42476 (t!387592 input!7874)) lt!2649436)))

(declare-fun b!7562981 () Bool)

(assert (=> b!7562981 (= e!4503474 0)))

(declare-fun b!7562982 () Bool)

(assert (=> b!7562982 (= e!4503474 (+ 1 (size!42476 (t!387592 (t!387592 input!7874)))))))

(assert (= (and d!2315360 c!1395491) b!7562981))

(assert (= (and d!2315360 (not c!1395491)) b!7562982))

(declare-fun m!8125890 () Bool)

(assert (=> b!7562982 m!8125890))

(assert (=> b!7562404 d!2315360))

(declare-fun e!4503476 () Bool)

(declare-fun lt!2649437 () List!72863)

(declare-fun b!7562986 () Bool)

(assert (=> b!7562986 (= e!4503476 (or (not (= lt!2649177 Nil!72739)) (= lt!2649437 (t!387592 testedP!423))))))

(declare-fun b!7562984 () Bool)

(declare-fun e!4503475 () List!72863)

(assert (=> b!7562984 (= e!4503475 (Cons!72739 (h!79187 (t!387592 testedP!423)) (++!17484 (t!387592 (t!387592 testedP!423)) lt!2649177)))))

(declare-fun b!7562983 () Bool)

(assert (=> b!7562983 (= e!4503475 lt!2649177)))

(declare-fun d!2315362 () Bool)

(assert (=> d!2315362 e!4503476))

(declare-fun res!3030411 () Bool)

(assert (=> d!2315362 (=> (not res!3030411) (not e!4503476))))

(assert (=> d!2315362 (= res!3030411 (= (content!15401 lt!2649437) (set.union (content!15401 (t!387592 testedP!423)) (content!15401 lt!2649177))))))

(assert (=> d!2315362 (= lt!2649437 e!4503475)))

(declare-fun c!1395492 () Bool)

(assert (=> d!2315362 (= c!1395492 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315362 (= (++!17484 (t!387592 testedP!423) lt!2649177) lt!2649437)))

(declare-fun b!7562985 () Bool)

(declare-fun res!3030410 () Bool)

(assert (=> b!7562985 (=> (not res!3030410) (not e!4503476))))

(assert (=> b!7562985 (= res!3030410 (= (size!42476 lt!2649437) (+ (size!42476 (t!387592 testedP!423)) (size!42476 lt!2649177))))))

(assert (= (and d!2315362 c!1395492) b!7562983))

(assert (= (and d!2315362 (not c!1395492)) b!7562984))

(assert (= (and d!2315362 res!3030411) b!7562985))

(assert (= (and b!7562985 res!3030410) b!7562986))

(declare-fun m!8125892 () Bool)

(assert (=> b!7562984 m!8125892))

(declare-fun m!8125894 () Bool)

(assert (=> d!2315362 m!8125894))

(assert (=> d!2315362 m!8125680))

(assert (=> d!2315362 m!8125060))

(declare-fun m!8125896 () Bool)

(assert (=> b!7562985 m!8125896))

(assert (=> b!7562985 m!8125324))

(assert (=> b!7562985 m!8125064))

(assert (=> b!7562133 d!2315362))

(declare-fun d!2315364 () Bool)

(declare-fun c!1395493 () Bool)

(assert (=> d!2315364 (= c!1395493 (is-Nil!72739 lt!2649334))))

(declare-fun e!4503477 () (Set C!40286))

(assert (=> d!2315364 (= (content!15401 lt!2649334) e!4503477)))

(declare-fun b!7562987 () Bool)

(assert (=> b!7562987 (= e!4503477 (as set.empty (Set C!40286)))))

(declare-fun b!7562988 () Bool)

(assert (=> b!7562988 (= e!4503477 (set.union (set.insert (h!79187 lt!2649334) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649334))))))

(assert (= (and d!2315364 c!1395493) b!7562987))

(assert (= (and d!2315364 (not c!1395493)) b!7562988))

(declare-fun m!8125898 () Bool)

(assert (=> b!7562988 m!8125898))

(declare-fun m!8125900 () Bool)

(assert (=> b!7562988 m!8125900))

(assert (=> d!2315100 d!2315364))

(declare-fun d!2315366 () Bool)

(declare-fun c!1395494 () Bool)

(assert (=> d!2315366 (= c!1395494 (is-Nil!72739 lt!2649177))))

(declare-fun e!4503478 () (Set C!40286))

(assert (=> d!2315366 (= (content!15401 lt!2649177) e!4503478)))

(declare-fun b!7562989 () Bool)

(assert (=> b!7562989 (= e!4503478 (as set.empty (Set C!40286)))))

(declare-fun b!7562990 () Bool)

(assert (=> b!7562990 (= e!4503478 (set.union (set.insert (h!79187 lt!2649177) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649177))))))

(assert (= (and d!2315366 c!1395494) b!7562989))

(assert (= (and d!2315366 (not c!1395494)) b!7562990))

(declare-fun m!8125902 () Bool)

(assert (=> b!7562990 m!8125902))

(assert (=> b!7562990 m!8125808))

(assert (=> d!2315100 d!2315366))

(assert (=> d!2315100 d!2315344))

(declare-fun d!2315368 () Bool)

(assert (=> d!2315368 (= (isEmpty!41414 lt!2649181) (is-Nil!72739 lt!2649181))))

(assert (=> d!2315136 d!2315368))

(assert (=> d!2315136 d!2315064))

(declare-fun d!2315370 () Bool)

(declare-fun lt!2649438 () Int)

(assert (=> d!2315370 (>= lt!2649438 0)))

(declare-fun e!4503479 () Int)

(assert (=> d!2315370 (= lt!2649438 e!4503479)))

(declare-fun c!1395495 () Bool)

(assert (=> d!2315370 (= c!1395495 (is-Nil!72739 lt!2649340))))

(assert (=> d!2315370 (= (size!42476 lt!2649340) lt!2649438)))

(declare-fun b!7562991 () Bool)

(assert (=> b!7562991 (= e!4503479 0)))

(declare-fun b!7562992 () Bool)

(assert (=> b!7562992 (= e!4503479 (+ 1 (size!42476 (t!387592 lt!2649340))))))

(assert (= (and d!2315370 c!1395495) b!7562991))

(assert (= (and d!2315370 (not c!1395495)) b!7562992))

(declare-fun m!8125904 () Bool)

(assert (=> b!7562992 m!8125904))

(assert (=> b!7562390 d!2315370))

(assert (=> b!7562390 d!2315116))

(assert (=> b!7562390 d!2315242))

(declare-fun d!2315372 () Bool)

(declare-fun e!4503481 () Bool)

(assert (=> d!2315372 e!4503481))

(declare-fun res!3030412 () Bool)

(assert (=> d!2315372 (=> res!3030412 e!4503481)))

(declare-fun lt!2649439 () Bool)

(assert (=> d!2315372 (= res!3030412 (not lt!2649439))))

(declare-fun e!4503480 () Bool)

(assert (=> d!2315372 (= lt!2649439 e!4503480)))

(declare-fun res!3030415 () Bool)

(assert (=> d!2315372 (=> res!3030415 e!4503480)))

(assert (=> d!2315372 (= res!3030415 (is-Nil!72739 (tail!15098 testedP!423)))))

(assert (=> d!2315372 (= (isPrefix!6186 (tail!15098 testedP!423) (tail!15098 knownP!30)) lt!2649439)))

(declare-fun b!7562994 () Bool)

(declare-fun res!3030414 () Bool)

(declare-fun e!4503482 () Bool)

(assert (=> b!7562994 (=> (not res!3030414) (not e!4503482))))

(assert (=> b!7562994 (= res!3030414 (= (head!15558 (tail!15098 testedP!423)) (head!15558 (tail!15098 knownP!30))))))

(declare-fun b!7562993 () Bool)

(assert (=> b!7562993 (= e!4503480 e!4503482)))

(declare-fun res!3030413 () Bool)

(assert (=> b!7562993 (=> (not res!3030413) (not e!4503482))))

(assert (=> b!7562993 (= res!3030413 (not (is-Nil!72739 (tail!15098 knownP!30))))))

(declare-fun b!7562996 () Bool)

(assert (=> b!7562996 (= e!4503481 (>= (size!42476 (tail!15098 knownP!30)) (size!42476 (tail!15098 testedP!423))))))

(declare-fun b!7562995 () Bool)

(assert (=> b!7562995 (= e!4503482 (isPrefix!6186 (tail!15098 (tail!15098 testedP!423)) (tail!15098 (tail!15098 knownP!30))))))

(assert (= (and d!2315372 (not res!3030415)) b!7562993))

(assert (= (and b!7562993 res!3030413) b!7562994))

(assert (= (and b!7562994 res!3030414) b!7562995))

(assert (= (and d!2315372 (not res!3030412)) b!7562996))

(assert (=> b!7562994 m!8125032))

(assert (=> b!7562994 m!8125556))

(assert (=> b!7562994 m!8125040))

(assert (=> b!7562994 m!8125684))

(assert (=> b!7562996 m!8125040))

(assert (=> b!7562996 m!8125686))

(assert (=> b!7562996 m!8125032))

(assert (=> b!7562996 m!8125562))

(assert (=> b!7562995 m!8125032))

(assert (=> b!7562995 m!8125564))

(assert (=> b!7562995 m!8125040))

(assert (=> b!7562995 m!8125688))

(assert (=> b!7562995 m!8125564))

(assert (=> b!7562995 m!8125688))

(declare-fun m!8125906 () Bool)

(assert (=> b!7562995 m!8125906))

(assert (=> b!7562348 d!2315372))

(assert (=> b!7562348 d!2315208))

(assert (=> b!7562348 d!2315216))

(declare-fun b!7562997 () Bool)

(declare-fun e!4503489 () Bool)

(declare-fun call!693364 () Bool)

(assert (=> b!7562997 (= e!4503489 call!693364)))

(declare-fun b!7562998 () Bool)

(declare-fun e!4503483 () Bool)

(declare-fun e!4503485 () Bool)

(assert (=> b!7562998 (= e!4503483 e!4503485)))

(declare-fun c!1395497 () Bool)

(assert (=> b!7562998 (= c!1395497 (is-Union!19980 lt!2649314))))

(declare-fun b!7562999 () Bool)

(declare-fun e!4503486 () Bool)

(assert (=> b!7562999 (= e!4503483 e!4503486)))

(declare-fun res!3030420 () Bool)

(assert (=> b!7562999 (= res!3030420 (not (nullable!8714 (reg!20309 lt!2649314))))))

(assert (=> b!7562999 (=> (not res!3030420) (not e!4503486))))

(declare-fun d!2315374 () Bool)

(declare-fun res!3030418 () Bool)

(declare-fun e!4503484 () Bool)

(assert (=> d!2315374 (=> res!3030418 e!4503484)))

(assert (=> d!2315374 (= res!3030418 (is-ElementMatch!19980 lt!2649314))))

(assert (=> d!2315374 (= (validRegex!10408 lt!2649314) e!4503484)))

(declare-fun b!7563000 () Bool)

(declare-fun res!3030419 () Bool)

(declare-fun e!4503487 () Bool)

(assert (=> b!7563000 (=> (not res!3030419) (not e!4503487))))

(declare-fun call!693366 () Bool)

(assert (=> b!7563000 (= res!3030419 call!693366)))

(assert (=> b!7563000 (= e!4503485 e!4503487)))

(declare-fun b!7563001 () Bool)

(assert (=> b!7563001 (= e!4503487 call!693364)))

(declare-fun b!7563002 () Bool)

(assert (=> b!7563002 (= e!4503484 e!4503483)))

(declare-fun c!1395496 () Bool)

(assert (=> b!7563002 (= c!1395496 (is-Star!19980 lt!2649314))))

(declare-fun bm!693359 () Bool)

(assert (=> bm!693359 (= call!693364 (validRegex!10408 (ite c!1395497 (regTwo!40473 lt!2649314) (regTwo!40472 lt!2649314))))))

(declare-fun call!693365 () Bool)

(declare-fun bm!693360 () Bool)

(assert (=> bm!693360 (= call!693365 (validRegex!10408 (ite c!1395496 (reg!20309 lt!2649314) (ite c!1395497 (regOne!40473 lt!2649314) (regOne!40472 lt!2649314)))))))

(declare-fun b!7563003 () Bool)

(declare-fun res!3030417 () Bool)

(declare-fun e!4503488 () Bool)

(assert (=> b!7563003 (=> res!3030417 e!4503488)))

(assert (=> b!7563003 (= res!3030417 (not (is-Concat!28825 lt!2649314)))))

(assert (=> b!7563003 (= e!4503485 e!4503488)))

(declare-fun b!7563004 () Bool)

(assert (=> b!7563004 (= e!4503488 e!4503489)))

(declare-fun res!3030416 () Bool)

(assert (=> b!7563004 (=> (not res!3030416) (not e!4503489))))

(assert (=> b!7563004 (= res!3030416 call!693366)))

(declare-fun bm!693361 () Bool)

(assert (=> bm!693361 (= call!693366 call!693365)))

(declare-fun b!7563005 () Bool)

(assert (=> b!7563005 (= e!4503486 call!693365)))

(assert (= (and d!2315374 (not res!3030418)) b!7563002))

(assert (= (and b!7563002 c!1395496) b!7562999))

(assert (= (and b!7563002 (not c!1395496)) b!7562998))

(assert (= (and b!7562999 res!3030420) b!7563005))

(assert (= (and b!7562998 c!1395497) b!7563000))

(assert (= (and b!7562998 (not c!1395497)) b!7563003))

(assert (= (and b!7563000 res!3030419) b!7563001))

(assert (= (and b!7563003 (not res!3030417)) b!7563004))

(assert (= (and b!7563004 res!3030416) b!7562997))

(assert (= (or b!7563000 b!7563004) bm!693361))

(assert (= (or b!7563001 b!7562997) bm!693359))

(assert (= (or b!7563005 bm!693361) bm!693360))

(declare-fun m!8125908 () Bool)

(assert (=> b!7562999 m!8125908))

(declare-fun m!8125910 () Bool)

(assert (=> bm!693359 m!8125910))

(declare-fun m!8125912 () Bool)

(assert (=> bm!693360 m!8125912))

(assert (=> d!2315068 d!2315374))

(assert (=> d!2315068 d!2315090))

(assert (=> b!7562236 d!2315298))

(assert (=> b!7562236 d!2315238))

(declare-fun e!4503491 () Bool)

(declare-fun lt!2649440 () List!72863)

(declare-fun b!7563009 () Bool)

(assert (=> b!7563009 (= e!4503491 (or (not (= lt!2649168 Nil!72739)) (= lt!2649440 (t!387592 knownP!30))))))

(declare-fun b!7563007 () Bool)

(declare-fun e!4503490 () List!72863)

(assert (=> b!7563007 (= e!4503490 (Cons!72739 (h!79187 (t!387592 knownP!30)) (++!17484 (t!387592 (t!387592 knownP!30)) lt!2649168)))))

(declare-fun b!7563006 () Bool)

(assert (=> b!7563006 (= e!4503490 lt!2649168)))

(declare-fun d!2315376 () Bool)

(assert (=> d!2315376 e!4503491))

(declare-fun res!3030422 () Bool)

(assert (=> d!2315376 (=> (not res!3030422) (not e!4503491))))

(assert (=> d!2315376 (= res!3030422 (= (content!15401 lt!2649440) (set.union (content!15401 (t!387592 knownP!30)) (content!15401 lt!2649168))))))

(assert (=> d!2315376 (= lt!2649440 e!4503490)))

(declare-fun c!1395498 () Bool)

(assert (=> d!2315376 (= c!1395498 (is-Nil!72739 (t!387592 knownP!30)))))

(assert (=> d!2315376 (= (++!17484 (t!387592 knownP!30) lt!2649168) lt!2649440)))

(declare-fun b!7563008 () Bool)

(declare-fun res!3030421 () Bool)

(assert (=> b!7563008 (=> (not res!3030421) (not e!4503491))))

(assert (=> b!7563008 (= res!3030421 (= (size!42476 lt!2649440) (+ (size!42476 (t!387592 knownP!30)) (size!42476 lt!2649168))))))

(assert (= (and d!2315376 c!1395498) b!7563006))

(assert (= (and d!2315376 (not c!1395498)) b!7563007))

(assert (= (and d!2315376 res!3030422) b!7563008))

(assert (= (and b!7563008 res!3030421) b!7563009))

(declare-fun m!8125914 () Bool)

(assert (=> b!7563007 m!8125914))

(declare-fun m!8125916 () Bool)

(assert (=> d!2315376 m!8125916))

(assert (=> d!2315376 m!8125668))

(assert (=> d!2315376 m!8125086))

(declare-fun m!8125918 () Bool)

(assert (=> b!7563008 m!8125918))

(assert (=> b!7563008 m!8125328))

(assert (=> b!7563008 m!8125090))

(assert (=> b!7562149 d!2315376))

(declare-fun b!7563013 () Bool)

(declare-fun e!4503493 () Bool)

(declare-fun lt!2649441 () List!72863)

(assert (=> b!7563013 (= e!4503493 (or (not (= lt!2649192 Nil!72739)) (= lt!2649441 (t!387592 testedP!423))))))

(declare-fun b!7563011 () Bool)

(declare-fun e!4503492 () List!72863)

(assert (=> b!7563011 (= e!4503492 (Cons!72739 (h!79187 (t!387592 testedP!423)) (++!17484 (t!387592 (t!387592 testedP!423)) lt!2649192)))))

(declare-fun b!7563010 () Bool)

(assert (=> b!7563010 (= e!4503492 lt!2649192)))

(declare-fun d!2315378 () Bool)

(assert (=> d!2315378 e!4503493))

(declare-fun res!3030424 () Bool)

(assert (=> d!2315378 (=> (not res!3030424) (not e!4503493))))

(assert (=> d!2315378 (= res!3030424 (= (content!15401 lt!2649441) (set.union (content!15401 (t!387592 testedP!423)) (content!15401 lt!2649192))))))

(assert (=> d!2315378 (= lt!2649441 e!4503492)))

(declare-fun c!1395499 () Bool)

(assert (=> d!2315378 (= c!1395499 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315378 (= (++!17484 (t!387592 testedP!423) lt!2649192) lt!2649441)))

(declare-fun b!7563012 () Bool)

(declare-fun res!3030423 () Bool)

(assert (=> b!7563012 (=> (not res!3030423) (not e!4503493))))

(assert (=> b!7563012 (= res!3030423 (= (size!42476 lt!2649441) (+ (size!42476 (t!387592 testedP!423)) (size!42476 lt!2649192))))))

(assert (= (and d!2315378 c!1395499) b!7563010))

(assert (= (and d!2315378 (not c!1395499)) b!7563011))

(assert (= (and d!2315378 res!3030424) b!7563012))

(assert (= (and b!7563012 res!3030423) b!7563013))

(declare-fun m!8125920 () Bool)

(assert (=> b!7563011 m!8125920))

(declare-fun m!8125922 () Bool)

(assert (=> d!2315378 m!8125922))

(assert (=> d!2315378 m!8125680))

(assert (=> d!2315378 m!8125342))

(declare-fun m!8125924 () Bool)

(assert (=> b!7563012 m!8125924))

(assert (=> b!7563012 m!8125324))

(assert (=> b!7563012 m!8125346))

(assert (=> b!7562407 d!2315378))

(declare-fun d!2315380 () Bool)

(declare-fun lt!2649442 () Int)

(assert (=> d!2315380 (>= lt!2649442 0)))

(declare-fun e!4503494 () Int)

(assert (=> d!2315380 (= lt!2649442 e!4503494)))

(declare-fun c!1395500 () Bool)

(assert (=> d!2315380 (= c!1395500 (is-Nil!72739 lt!2649310))))

(assert (=> d!2315380 (= (size!42476 lt!2649310) lt!2649442)))

(declare-fun b!7563014 () Bool)

(assert (=> b!7563014 (= e!4503494 0)))

(declare-fun b!7563015 () Bool)

(assert (=> b!7563015 (= e!4503494 (+ 1 (size!42476 (t!387592 lt!2649310))))))

(assert (= (and d!2315380 c!1395500) b!7563014))

(assert (= (and d!2315380 (not c!1395500)) b!7563015))

(declare-fun m!8125926 () Bool)

(assert (=> b!7563015 m!8125926))

(assert (=> b!7562241 d!2315380))

(assert (=> b!7562241 d!2315010))

(declare-fun d!2315382 () Bool)

(declare-fun lt!2649443 () Int)

(assert (=> d!2315382 (>= lt!2649443 0)))

(declare-fun e!4503495 () Int)

(assert (=> d!2315382 (= lt!2649443 e!4503495)))

(declare-fun c!1395501 () Bool)

(assert (=> d!2315382 (= c!1395501 (is-Nil!72739 lt!2649181))))

(assert (=> d!2315382 (= (size!42476 lt!2649181) lt!2649443)))

(declare-fun b!7563016 () Bool)

(assert (=> b!7563016 (= e!4503495 0)))

(declare-fun b!7563017 () Bool)

(assert (=> b!7563017 (= e!4503495 (+ 1 (size!42476 (t!387592 lt!2649181))))))

(assert (= (and d!2315382 c!1395501) b!7563016))

(assert (= (and d!2315382 (not c!1395501)) b!7563017))

(declare-fun m!8125928 () Bool)

(assert (=> b!7563017 m!8125928))

(assert (=> b!7562241 d!2315382))

(assert (=> d!2315070 d!2315358))

(assert (=> d!2315070 d!2315090))

(assert (=> bm!693296 d!2315368))

(declare-fun d!2315384 () Bool)

(declare-fun lt!2649444 () Int)

(assert (=> d!2315384 (>= lt!2649444 0)))

(declare-fun e!4503496 () Int)

(assert (=> d!2315384 (= lt!2649444 e!4503496)))

(declare-fun c!1395502 () Bool)

(assert (=> d!2315384 (= c!1395502 (is-Nil!72739 lt!2649334))))

(assert (=> d!2315384 (= (size!42476 lt!2649334) lt!2649444)))

(declare-fun b!7563018 () Bool)

(assert (=> b!7563018 (= e!4503496 0)))

(declare-fun b!7563019 () Bool)

(assert (=> b!7563019 (= e!4503496 (+ 1 (size!42476 (t!387592 lt!2649334))))))

(assert (= (and d!2315384 c!1395502) b!7563018))

(assert (= (and d!2315384 (not c!1395502)) b!7563019))

(declare-fun m!8125930 () Bool)

(assert (=> b!7563019 m!8125930))

(assert (=> b!7562378 d!2315384))

(assert (=> b!7562378 d!2315290))

(assert (=> b!7562378 d!2315382))

(declare-fun b!7563023 () Bool)

(declare-fun lt!2649445 () List!72863)

(declare-fun e!4503498 () Bool)

(assert (=> b!7563023 (= e!4503498 (or (not (= lt!2649176 Nil!72739)) (= lt!2649445 (t!387592 testedP!423))))))

(declare-fun b!7563021 () Bool)

(declare-fun e!4503497 () List!72863)

(assert (=> b!7563021 (= e!4503497 (Cons!72739 (h!79187 (t!387592 testedP!423)) (++!17484 (t!387592 (t!387592 testedP!423)) lt!2649176)))))

(declare-fun b!7563020 () Bool)

(assert (=> b!7563020 (= e!4503497 lt!2649176)))

(declare-fun d!2315386 () Bool)

(assert (=> d!2315386 e!4503498))

(declare-fun res!3030426 () Bool)

(assert (=> d!2315386 (=> (not res!3030426) (not e!4503498))))

(assert (=> d!2315386 (= res!3030426 (= (content!15401 lt!2649445) (set.union (content!15401 (t!387592 testedP!423)) (content!15401 lt!2649176))))))

(assert (=> d!2315386 (= lt!2649445 e!4503497)))

(declare-fun c!1395503 () Bool)

(assert (=> d!2315386 (= c!1395503 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315386 (= (++!17484 (t!387592 testedP!423) lt!2649176) lt!2649445)))

(declare-fun b!7563022 () Bool)

(declare-fun res!3030425 () Bool)

(assert (=> b!7563022 (=> (not res!3030425) (not e!4503498))))

(assert (=> b!7563022 (= res!3030425 (= (size!42476 lt!2649445) (+ (size!42476 (t!387592 testedP!423)) (size!42476 lt!2649176))))))

(assert (= (and d!2315386 c!1395503) b!7563020))

(assert (= (and d!2315386 (not c!1395503)) b!7563021))

(assert (= (and d!2315386 res!3030426) b!7563022))

(assert (= (and b!7563022 res!3030425) b!7563023))

(declare-fun m!8125932 () Bool)

(assert (=> b!7563021 m!8125932))

(declare-fun m!8125934 () Bool)

(assert (=> d!2315386 m!8125934))

(assert (=> d!2315386 m!8125680))

(assert (=> d!2315386 m!8125258))

(declare-fun m!8125936 () Bool)

(assert (=> b!7563022 m!8125936))

(assert (=> b!7563022 m!8125324))

(assert (=> b!7563022 m!8125262))

(assert (=> b!7562373 d!2315386))

(declare-fun d!2315388 () Bool)

(assert (=> d!2315388 (= (nullable!8714 r!24333) (nullableFct!3475 r!24333))))

(declare-fun bs!1940407 () Bool)

(assert (= bs!1940407 d!2315388))

(declare-fun m!8125938 () Bool)

(assert (=> bs!1940407 m!8125938))

(assert (=> b!7562338 d!2315388))

(declare-fun d!2315390 () Bool)

(declare-fun lt!2649446 () Regex!19980)

(assert (=> d!2315390 (validRegex!10408 lt!2649446)))

(declare-fun e!4503499 () Regex!19980)

(assert (=> d!2315390 (= lt!2649446 e!4503499)))

(declare-fun c!1395504 () Bool)

(assert (=> d!2315390 (= c!1395504 (is-Cons!72739 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739))))))

(assert (=> d!2315390 (validRegex!10408 baseR!101)))

(assert (=> d!2315390 (= (derivative!510 baseR!101 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739))) lt!2649446)))

(declare-fun b!7563024 () Bool)

(assert (=> b!7563024 (= e!4503499 (derivative!510 (derivativeStep!5758 baseR!101 (h!79187 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739)))) (t!387592 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739)))))))

(declare-fun b!7563025 () Bool)

(assert (=> b!7563025 (= e!4503499 baseR!101)))

(assert (= (and d!2315390 c!1395504) b!7563024))

(assert (= (and d!2315390 (not c!1395504)) b!7563025))

(declare-fun m!8125940 () Bool)

(assert (=> d!2315390 m!8125940))

(assert (=> d!2315390 m!8124846))

(declare-fun m!8125942 () Bool)

(assert (=> b!7563024 m!8125942))

(assert (=> b!7563024 m!8125942))

(declare-fun m!8125944 () Bool)

(assert (=> b!7563024 m!8125944))

(assert (=> d!2315046 d!2315390))

(declare-fun d!2315392 () Bool)

(assert (=> d!2315392 (= (derivative!510 baseR!101 (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739))) (derivativeStep!5758 r!24333 lt!2649175))))

(assert (=> d!2315392 true))

(declare-fun _$109!42 () Unit!166894)

(assert (=> d!2315392 (= (choose!58494 baseR!101 r!24333 testedP!423 lt!2649175) _$109!42)))

(declare-fun bs!1940408 () Bool)

(assert (= bs!1940408 d!2315392))

(assert (=> bs!1940408 m!8125124))

(assert (=> bs!1940408 m!8125124))

(assert (=> bs!1940408 m!8125126))

(assert (=> bs!1940408 m!8124874))

(assert (=> d!2315046 d!2315392))

(declare-fun lt!2649447 () List!72863)

(declare-fun b!7563029 () Bool)

(declare-fun e!4503501 () Bool)

(assert (=> b!7563029 (= e!4503501 (or (not (= (Cons!72739 lt!2649175 Nil!72739) Nil!72739)) (= lt!2649447 testedP!423)))))

(declare-fun b!7563027 () Bool)

(declare-fun e!4503500 () List!72863)

(assert (=> b!7563027 (= e!4503500 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) (Cons!72739 lt!2649175 Nil!72739))))))

(declare-fun b!7563026 () Bool)

(assert (=> b!7563026 (= e!4503500 (Cons!72739 lt!2649175 Nil!72739))))

(declare-fun d!2315394 () Bool)

(assert (=> d!2315394 e!4503501))

(declare-fun res!3030428 () Bool)

(assert (=> d!2315394 (=> (not res!3030428) (not e!4503501))))

(assert (=> d!2315394 (= res!3030428 (= (content!15401 lt!2649447) (set.union (content!15401 testedP!423) (content!15401 (Cons!72739 lt!2649175 Nil!72739)))))))

(assert (=> d!2315394 (= lt!2649447 e!4503500)))

(declare-fun c!1395506 () Bool)

(assert (=> d!2315394 (= c!1395506 (is-Nil!72739 testedP!423))))

(assert (=> d!2315394 (= (++!17484 testedP!423 (Cons!72739 lt!2649175 Nil!72739)) lt!2649447)))

(declare-fun b!7563028 () Bool)

(declare-fun res!3030427 () Bool)

(assert (=> b!7563028 (=> (not res!3030427) (not e!4503501))))

(assert (=> b!7563028 (= res!3030427 (= (size!42476 lt!2649447) (+ (size!42476 testedP!423) (size!42476 (Cons!72739 lt!2649175 Nil!72739)))))))

(assert (= (and d!2315394 c!1395506) b!7563026))

(assert (= (and d!2315394 (not c!1395506)) b!7563027))

(assert (= (and d!2315394 res!3030428) b!7563028))

(assert (= (and b!7563028 res!3030427) b!7563029))

(declare-fun m!8125946 () Bool)

(assert (=> b!7563027 m!8125946))

(declare-fun m!8125948 () Bool)

(assert (=> d!2315394 m!8125948))

(assert (=> d!2315394 m!8125058))

(declare-fun m!8125950 () Bool)

(assert (=> d!2315394 m!8125950))

(declare-fun m!8125952 () Bool)

(assert (=> b!7563028 m!8125952))

(assert (=> b!7563028 m!8124928))

(declare-fun m!8125954 () Bool)

(assert (=> b!7563028 m!8125954))

(assert (=> d!2315046 d!2315394))

(assert (=> d!2315046 d!2315090))

(assert (=> d!2315046 d!2315044))

(assert (=> b!7562107 d!2315126))

(assert (=> b!7562107 d!2315116))

(declare-fun b!7563030 () Bool)

(declare-fun e!4503508 () Bool)

(declare-fun call!693367 () Bool)

(assert (=> b!7563030 (= e!4503508 call!693367)))

(declare-fun b!7563031 () Bool)

(declare-fun e!4503502 () Bool)

(declare-fun e!4503504 () Bool)

(assert (=> b!7563031 (= e!4503502 e!4503504)))

(declare-fun c!1395508 () Bool)

(assert (=> b!7563031 (= c!1395508 (is-Union!19980 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun b!7563032 () Bool)

(declare-fun e!4503505 () Bool)

(assert (=> b!7563032 (= e!4503502 e!4503505)))

(declare-fun res!3030433 () Bool)

(assert (=> b!7563032 (= res!3030433 (not (nullable!8714 (reg!20309 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))))

(assert (=> b!7563032 (=> (not res!3030433) (not e!4503505))))

(declare-fun d!2315396 () Bool)

(declare-fun res!3030431 () Bool)

(declare-fun e!4503503 () Bool)

(assert (=> d!2315396 (=> res!3030431 e!4503503)))

(assert (=> d!2315396 (= res!3030431 (is-ElementMatch!19980 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))

(assert (=> d!2315396 (= (validRegex!10408 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))) e!4503503)))

(declare-fun b!7563033 () Bool)

(declare-fun res!3030432 () Bool)

(declare-fun e!4503506 () Bool)

(assert (=> b!7563033 (=> (not res!3030432) (not e!4503506))))

(declare-fun call!693369 () Bool)

(assert (=> b!7563033 (= res!3030432 call!693369)))

(assert (=> b!7563033 (= e!4503504 e!4503506)))

(declare-fun b!7563034 () Bool)

(assert (=> b!7563034 (= e!4503506 call!693367)))

(declare-fun b!7563035 () Bool)

(assert (=> b!7563035 (= e!4503503 e!4503502)))

(declare-fun c!1395507 () Bool)

(assert (=> b!7563035 (= c!1395507 (is-Star!19980 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))

(declare-fun bm!693362 () Bool)

(assert (=> bm!693362 (= call!693367 (validRegex!10408 (ite c!1395508 (regTwo!40473 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))) (regTwo!40472 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))))))))

(declare-fun bm!693363 () Bool)

(declare-fun call!693368 () Bool)

(assert (=> bm!693363 (= call!693368 (validRegex!10408 (ite c!1395507 (reg!20309 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))) (ite c!1395508 (regOne!40473 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333))) (regOne!40472 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333)))))))))

(declare-fun b!7563036 () Bool)

(declare-fun res!3030430 () Bool)

(declare-fun e!4503507 () Bool)

(assert (=> b!7563036 (=> res!3030430 e!4503507)))

(assert (=> b!7563036 (= res!3030430 (not (is-Concat!28825 (ite c!1395339 (regTwo!40473 r!24333) (regTwo!40472 r!24333)))))))

(assert (=> b!7563036 (= e!4503504 e!4503507)))

(declare-fun b!7563037 () Bool)

(assert (=> b!7563037 (= e!4503507 e!4503508)))

(declare-fun res!3030429 () Bool)

(assert (=> b!7563037 (=> (not res!3030429) (not e!4503508))))

(assert (=> b!7563037 (= res!3030429 call!693369)))

(declare-fun bm!693364 () Bool)

(assert (=> bm!693364 (= call!693369 call!693368)))

(declare-fun b!7563038 () Bool)

(assert (=> b!7563038 (= e!4503505 call!693368)))

(assert (= (and d!2315396 (not res!3030431)) b!7563035))

(assert (= (and b!7563035 c!1395507) b!7563032))

(assert (= (and b!7563035 (not c!1395507)) b!7563031))

(assert (= (and b!7563032 res!3030433) b!7563038))

(assert (= (and b!7563031 c!1395508) b!7563033))

(assert (= (and b!7563031 (not c!1395508)) b!7563036))

(assert (= (and b!7563033 res!3030432) b!7563034))

(assert (= (and b!7563036 (not res!3030430)) b!7563037))

(assert (= (and b!7563037 res!3030429) b!7563030))

(assert (= (or b!7563033 b!7563037) bm!693364))

(assert (= (or b!7563034 b!7563030) bm!693362))

(assert (= (or b!7563038 bm!693364) bm!693363))

(declare-fun m!8125956 () Bool)

(assert (=> b!7563032 m!8125956))

(declare-fun m!8125958 () Bool)

(assert (=> bm!693362 m!8125958))

(declare-fun m!8125960 () Bool)

(assert (=> bm!693363 m!8125960))

(assert (=> bm!693293 d!2315396))

(assert (=> b!7562417 d!2315220))

(declare-fun b!7563039 () Bool)

(declare-fun res!3030436 () Bool)

(declare-fun e!4503515 () Bool)

(assert (=> b!7563039 (=> (not res!3030436) (not e!4503515))))

(declare-fun call!693370 () Bool)

(assert (=> b!7563039 (= res!3030436 (not call!693370))))

(declare-fun b!7563040 () Bool)

(declare-fun e!4503514 () Bool)

(declare-fun e!4503512 () Bool)

(assert (=> b!7563040 (= e!4503514 e!4503512)))

(declare-fun c!1395510 () Bool)

(assert (=> b!7563040 (= c!1395510 (is-EmptyLang!19980 (derivativeStep!5758 r!24333 (head!15558 lt!2649173))))))

(declare-fun b!7563041 () Bool)

(assert (=> b!7563041 (= e!4503515 (= (head!15558 (tail!15098 lt!2649173)) (c!1395261 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)))))))

(declare-fun b!7563042 () Bool)

(declare-fun e!4503510 () Bool)

(assert (=> b!7563042 (= e!4503510 (not (= (head!15558 (tail!15098 lt!2649173)) (c!1395261 (derivativeStep!5758 r!24333 (head!15558 lt!2649173))))))))

(declare-fun b!7563043 () Bool)

(declare-fun e!4503509 () Bool)

(assert (=> b!7563043 (= e!4503509 (matchR!9582 (derivativeStep!5758 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)) (head!15558 (tail!15098 lt!2649173))) (tail!15098 (tail!15098 lt!2649173))))))

(declare-fun b!7563044 () Bool)

(declare-fun e!4503513 () Bool)

(assert (=> b!7563044 (= e!4503513 e!4503510)))

(declare-fun res!3030438 () Bool)

(assert (=> b!7563044 (=> res!3030438 e!4503510)))

(assert (=> b!7563044 (= res!3030438 call!693370)))

(declare-fun b!7563045 () Bool)

(declare-fun res!3030440 () Bool)

(assert (=> b!7563045 (=> res!3030440 e!4503510)))

(assert (=> b!7563045 (= res!3030440 (not (isEmpty!41414 (tail!15098 (tail!15098 lt!2649173)))))))

(declare-fun b!7563046 () Bool)

(declare-fun res!3030437 () Bool)

(declare-fun e!4503511 () Bool)

(assert (=> b!7563046 (=> res!3030437 e!4503511)))

(assert (=> b!7563046 (= res!3030437 e!4503515)))

(declare-fun res!3030441 () Bool)

(assert (=> b!7563046 (=> (not res!3030441) (not e!4503515))))

(declare-fun lt!2649448 () Bool)

(assert (=> b!7563046 (= res!3030441 lt!2649448)))

(declare-fun b!7563047 () Bool)

(assert (=> b!7563047 (= e!4503509 (nullable!8714 (derivativeStep!5758 r!24333 (head!15558 lt!2649173))))))

(declare-fun bm!693365 () Bool)

(assert (=> bm!693365 (= call!693370 (isEmpty!41414 (tail!15098 lt!2649173)))))

(declare-fun b!7563048 () Bool)

(assert (=> b!7563048 (= e!4503511 e!4503513)))

(declare-fun res!3030439 () Bool)

(assert (=> b!7563048 (=> (not res!3030439) (not e!4503513))))

(assert (=> b!7563048 (= res!3030439 (not lt!2649448))))

(declare-fun b!7563049 () Bool)

(declare-fun res!3030435 () Bool)

(assert (=> b!7563049 (=> (not res!3030435) (not e!4503515))))

(assert (=> b!7563049 (= res!3030435 (isEmpty!41414 (tail!15098 (tail!15098 lt!2649173))))))

(declare-fun b!7563051 () Bool)

(assert (=> b!7563051 (= e!4503514 (= lt!2649448 call!693370))))

(declare-fun b!7563052 () Bool)

(assert (=> b!7563052 (= e!4503512 (not lt!2649448))))

(declare-fun d!2315398 () Bool)

(assert (=> d!2315398 e!4503514))

(declare-fun c!1395509 () Bool)

(assert (=> d!2315398 (= c!1395509 (is-EmptyExpr!19980 (derivativeStep!5758 r!24333 (head!15558 lt!2649173))))))

(assert (=> d!2315398 (= lt!2649448 e!4503509)))

(declare-fun c!1395511 () Bool)

(assert (=> d!2315398 (= c!1395511 (isEmpty!41414 (tail!15098 lt!2649173)))))

(assert (=> d!2315398 (validRegex!10408 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)))))

(assert (=> d!2315398 (= (matchR!9582 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)) (tail!15098 lt!2649173)) lt!2649448)))

(declare-fun b!7563050 () Bool)

(declare-fun res!3030434 () Bool)

(assert (=> b!7563050 (=> res!3030434 e!4503511)))

(assert (=> b!7563050 (= res!3030434 (not (is-ElementMatch!19980 (derivativeStep!5758 r!24333 (head!15558 lt!2649173)))))))

(assert (=> b!7563050 (= e!4503512 e!4503511)))

(assert (= (and d!2315398 c!1395511) b!7563047))

(assert (= (and d!2315398 (not c!1395511)) b!7563043))

(assert (= (and d!2315398 c!1395509) b!7563051))

(assert (= (and d!2315398 (not c!1395509)) b!7563040))

(assert (= (and b!7563040 c!1395510) b!7563052))

(assert (= (and b!7563040 (not c!1395510)) b!7563050))

(assert (= (and b!7563050 (not res!3030434)) b!7563046))

(assert (= (and b!7563046 res!3030441) b!7563039))

(assert (= (and b!7563039 res!3030436) b!7563049))

(assert (= (and b!7563049 res!3030435) b!7563041))

(assert (= (and b!7563046 (not res!3030437)) b!7563048))

(assert (= (and b!7563048 res!3030439) b!7563044))

(assert (= (and b!7563044 (not res!3030438)) b!7563045))

(assert (= (and b!7563045 (not res!3030440)) b!7563042))

(assert (= (or b!7563051 b!7563039 b!7563044) bm!693365))

(assert (=> d!2315398 m!8124920))

(assert (=> d!2315398 m!8125210))

(assert (=> d!2315398 m!8125212))

(declare-fun m!8125962 () Bool)

(assert (=> d!2315398 m!8125962))

(assert (=> b!7563047 m!8125212))

(declare-fun m!8125964 () Bool)

(assert (=> b!7563047 m!8125964))

(assert (=> b!7563049 m!8124920))

(declare-fun m!8125966 () Bool)

(assert (=> b!7563049 m!8125966))

(assert (=> b!7563049 m!8125966))

(declare-fun m!8125968 () Bool)

(assert (=> b!7563049 m!8125968))

(assert (=> b!7563042 m!8124920))

(declare-fun m!8125970 () Bool)

(assert (=> b!7563042 m!8125970))

(assert (=> b!7563045 m!8124920))

(assert (=> b!7563045 m!8125966))

(assert (=> b!7563045 m!8125966))

(assert (=> b!7563045 m!8125968))

(assert (=> b!7563041 m!8124920))

(assert (=> b!7563041 m!8125970))

(assert (=> bm!693365 m!8124920))

(assert (=> bm!693365 m!8125210))

(assert (=> b!7563043 m!8124920))

(assert (=> b!7563043 m!8125970))

(assert (=> b!7563043 m!8125212))

(assert (=> b!7563043 m!8125970))

(declare-fun m!8125972 () Bool)

(assert (=> b!7563043 m!8125972))

(assert (=> b!7563043 m!8124920))

(assert (=> b!7563043 m!8125966))

(assert (=> b!7563043 m!8125972))

(assert (=> b!7563043 m!8125966))

(declare-fun m!8125974 () Bool)

(assert (=> b!7563043 m!8125974))

(assert (=> b!7562334 d!2315398))

(declare-fun b!7563053 () Bool)

(declare-fun e!4503516 () Regex!19980)

(declare-fun e!4503519 () Regex!19980)

(assert (=> b!7563053 (= e!4503516 e!4503519)))

(declare-fun c!1395515 () Bool)

(assert (=> b!7563053 (= c!1395515 (is-ElementMatch!19980 r!24333))))

(declare-fun bm!693366 () Bool)

(declare-fun call!693373 () Regex!19980)

(declare-fun call!693372 () Regex!19980)

(assert (=> bm!693366 (= call!693373 call!693372)))

(declare-fun b!7563054 () Bool)

(declare-fun e!4503518 () Regex!19980)

(assert (=> b!7563054 (= e!4503518 (Union!19980 (Concat!28825 call!693373 (regTwo!40472 r!24333)) EmptyLang!19980))))

(declare-fun bm!693367 () Bool)

(declare-fun call!693374 () Regex!19980)

(assert (=> bm!693367 (= call!693372 call!693374)))

(declare-fun b!7563055 () Bool)

(declare-fun e!4503517 () Regex!19980)

(declare-fun e!4503520 () Regex!19980)

(assert (=> b!7563055 (= e!4503517 e!4503520)))

(declare-fun c!1395512 () Bool)

(assert (=> b!7563055 (= c!1395512 (is-Star!19980 r!24333))))

(declare-fun b!7563056 () Bool)

(declare-fun c!1395514 () Bool)

(assert (=> b!7563056 (= c!1395514 (nullable!8714 (regOne!40472 r!24333)))))

(assert (=> b!7563056 (= e!4503520 e!4503518)))

(declare-fun c!1395513 () Bool)

(declare-fun bm!693368 () Bool)

(declare-fun call!693371 () Regex!19980)

(assert (=> bm!693368 (= call!693371 (derivativeStep!5758 (ite c!1395513 (regOne!40473 r!24333) (regTwo!40472 r!24333)) (head!15558 lt!2649173)))))

(declare-fun b!7563057 () Bool)

(assert (=> b!7563057 (= e!4503517 (Union!19980 call!693371 call!693374))))

(declare-fun b!7563058 () Bool)

(assert (=> b!7563058 (= e!4503518 (Union!19980 (Concat!28825 call!693373 (regTwo!40472 r!24333)) call!693371))))

(declare-fun d!2315400 () Bool)

(declare-fun lt!2649449 () Regex!19980)

(assert (=> d!2315400 (validRegex!10408 lt!2649449)))

(assert (=> d!2315400 (= lt!2649449 e!4503516)))

(declare-fun c!1395516 () Bool)

(assert (=> d!2315400 (= c!1395516 (or (is-EmptyExpr!19980 r!24333) (is-EmptyLang!19980 r!24333)))))

(assert (=> d!2315400 (validRegex!10408 r!24333)))

(assert (=> d!2315400 (= (derivativeStep!5758 r!24333 (head!15558 lt!2649173)) lt!2649449)))

(declare-fun b!7563059 () Bool)

(assert (=> b!7563059 (= c!1395513 (is-Union!19980 r!24333))))

(assert (=> b!7563059 (= e!4503519 e!4503517)))

(declare-fun b!7563060 () Bool)

(assert (=> b!7563060 (= e!4503516 EmptyLang!19980)))

(declare-fun b!7563061 () Bool)

(assert (=> b!7563061 (= e!4503519 (ite (= (head!15558 lt!2649173) (c!1395261 r!24333)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7563062 () Bool)

(assert (=> b!7563062 (= e!4503520 (Concat!28825 call!693372 r!24333))))

(declare-fun bm!693369 () Bool)

(assert (=> bm!693369 (= call!693374 (derivativeStep!5758 (ite c!1395513 (regTwo!40473 r!24333) (ite c!1395512 (reg!20309 r!24333) (regOne!40472 r!24333))) (head!15558 lt!2649173)))))

(assert (= (and d!2315400 c!1395516) b!7563060))

(assert (= (and d!2315400 (not c!1395516)) b!7563053))

(assert (= (and b!7563053 c!1395515) b!7563061))

(assert (= (and b!7563053 (not c!1395515)) b!7563059))

(assert (= (and b!7563059 c!1395513) b!7563057))

(assert (= (and b!7563059 (not c!1395513)) b!7563055))

(assert (= (and b!7563055 c!1395512) b!7563062))

(assert (= (and b!7563055 (not c!1395512)) b!7563056))

(assert (= (and b!7563056 c!1395514) b!7563058))

(assert (= (and b!7563056 (not c!1395514)) b!7563054))

(assert (= (or b!7563058 b!7563054) bm!693366))

(assert (= (or b!7563062 bm!693366) bm!693367))

(assert (= (or b!7563057 bm!693367) bm!693369))

(assert (= (or b!7563057 b!7563058) bm!693368))

(assert (=> b!7563056 m!8125100))

(assert (=> bm!693368 m!8124922))

(declare-fun m!8125976 () Bool)

(assert (=> bm!693368 m!8125976))

(declare-fun m!8125978 () Bool)

(assert (=> d!2315400 m!8125978))

(assert (=> d!2315400 m!8124904))

(assert (=> bm!693369 m!8124922))

(declare-fun m!8125980 () Bool)

(assert (=> bm!693369 m!8125980))

(assert (=> b!7562334 d!2315400))

(assert (=> b!7562334 d!2315120))

(assert (=> b!7562334 d!2315086))

(declare-fun d!2315402 () Bool)

(declare-fun lt!2649450 () List!72863)

(assert (=> d!2315402 (= (++!17484 (t!387592 testedP!423) lt!2649450) (tail!15098 knownP!30))))

(declare-fun e!4503521 () List!72863)

(assert (=> d!2315402 (= lt!2649450 e!4503521)))

(declare-fun c!1395517 () Bool)

(assert (=> d!2315402 (= c!1395517 (is-Cons!72739 (t!387592 testedP!423)))))

(assert (=> d!2315402 (>= (size!42476 (tail!15098 knownP!30)) (size!42476 (t!387592 testedP!423)))))

(assert (=> d!2315402 (= (getSuffix!3664 (tail!15098 knownP!30) (t!387592 testedP!423)) lt!2649450)))

(declare-fun b!7563063 () Bool)

(assert (=> b!7563063 (= e!4503521 (getSuffix!3664 (tail!15098 (tail!15098 knownP!30)) (t!387592 (t!387592 testedP!423))))))

(declare-fun b!7563064 () Bool)

(assert (=> b!7563064 (= e!4503521 (tail!15098 knownP!30))))

(assert (= (and d!2315402 c!1395517) b!7563063))

(assert (= (and d!2315402 (not c!1395517)) b!7563064))

(declare-fun m!8125982 () Bool)

(assert (=> d!2315402 m!8125982))

(assert (=> d!2315402 m!8125040))

(assert (=> d!2315402 m!8125686))

(assert (=> d!2315402 m!8125324))

(assert (=> b!7563063 m!8125040))

(assert (=> b!7563063 m!8125688))

(assert (=> b!7563063 m!8125688))

(declare-fun m!8125984 () Bool)

(assert (=> b!7563063 m!8125984))

(assert (=> b!7562344 d!2315402))

(assert (=> b!7562344 d!2315216))

(assert (=> b!7562234 d!2315126))

(assert (=> b!7562234 d!2315010))

(declare-fun d!2315404 () Bool)

(assert (=> d!2315404 (= (nullable!8714 (reg!20309 r!24333)) (nullableFct!3475 (reg!20309 r!24333)))))

(declare-fun bs!1940409 () Bool)

(assert (= bs!1940409 d!2315404))

(declare-fun m!8125986 () Bool)

(assert (=> bs!1940409 m!8125986))

(assert (=> b!7562365 d!2315404))

(declare-fun d!2315406 () Bool)

(declare-fun c!1395518 () Bool)

(assert (=> d!2315406 (= c!1395518 (is-Nil!72739 lt!2649333))))

(declare-fun e!4503522 () (Set C!40286))

(assert (=> d!2315406 (= (content!15401 lt!2649333) e!4503522)))

(declare-fun b!7563065 () Bool)

(assert (=> b!7563065 (= e!4503522 (as set.empty (Set C!40286)))))

(declare-fun b!7563066 () Bool)

(assert (=> b!7563066 (= e!4503522 (set.union (set.insert (h!79187 lt!2649333) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649333))))))

(assert (= (and d!2315406 c!1395518) b!7563065))

(assert (= (and d!2315406 (not c!1395518)) b!7563066))

(declare-fun m!8125988 () Bool)

(assert (=> b!7563066 m!8125988))

(declare-fun m!8125990 () Bool)

(assert (=> b!7563066 m!8125990))

(assert (=> d!2315098 d!2315406))

(assert (=> d!2315098 d!2315270))

(declare-fun d!2315408 () Bool)

(declare-fun c!1395519 () Bool)

(assert (=> d!2315408 (= c!1395519 (is-Nil!72739 lt!2649176))))

(declare-fun e!4503523 () (Set C!40286))

(assert (=> d!2315408 (= (content!15401 lt!2649176) e!4503523)))

(declare-fun b!7563067 () Bool)

(assert (=> b!7563067 (= e!4503523 (as set.empty (Set C!40286)))))

(declare-fun b!7563068 () Bool)

(assert (=> b!7563068 (= e!4503523 (set.union (set.insert (h!79187 lt!2649176) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649176))))))

(assert (= (and d!2315408 c!1395519) b!7563067))

(assert (= (and d!2315408 (not c!1395519)) b!7563068))

(declare-fun m!8125992 () Bool)

(assert (=> b!7563068 m!8125992))

(declare-fun m!8125994 () Bool)

(assert (=> b!7563068 m!8125994))

(assert (=> d!2315098 d!2315408))

(declare-fun d!2315410 () Bool)

(assert (=> d!2315410 (= (nullable!8714 baseR!101) (nullableFct!3475 baseR!101))))

(declare-fun bs!1940410 () Bool)

(assert (= bs!1940410 d!2315410))

(declare-fun m!8125996 () Bool)

(assert (=> bs!1940410 m!8125996))

(assert (=> b!7562320 d!2315410))

(assert (=> d!2315074 d!2315336))

(assert (=> d!2315074 d!2315092))

(declare-fun d!2315412 () Bool)

(declare-fun lt!2649451 () Int)

(assert (=> d!2315412 (>= lt!2649451 0)))

(declare-fun e!4503524 () Int)

(assert (=> d!2315412 (= lt!2649451 e!4503524)))

(declare-fun c!1395520 () Bool)

(assert (=> d!2315412 (= c!1395520 (is-Nil!72739 lt!2649339))))

(assert (=> d!2315412 (= (size!42476 lt!2649339) lt!2649451)))

(declare-fun b!7563069 () Bool)

(assert (=> b!7563069 (= e!4503524 0)))

(declare-fun b!7563070 () Bool)

(assert (=> b!7563070 (= e!4503524 (+ 1 (size!42476 (t!387592 lt!2649339))))))

(assert (= (and d!2315412 c!1395520) b!7563069))

(assert (= (and d!2315412 (not c!1395520)) b!7563070))

(declare-fun m!8125998 () Bool)

(assert (=> b!7563070 m!8125998))

(assert (=> b!7562386 d!2315412))

(declare-fun d!2315414 () Bool)

(declare-fun lt!2649452 () Int)

(assert (=> d!2315414 (>= lt!2649452 0)))

(declare-fun e!4503525 () Int)

(assert (=> d!2315414 (= lt!2649452 e!4503525)))

(declare-fun c!1395521 () Bool)

(assert (=> d!2315414 (= c!1395521 (is-Nil!72739 lt!2649174))))

(assert (=> d!2315414 (= (size!42476 lt!2649174) lt!2649452)))

(declare-fun b!7563071 () Bool)

(assert (=> b!7563071 (= e!4503525 0)))

(declare-fun b!7563072 () Bool)

(assert (=> b!7563072 (= e!4503525 (+ 1 (size!42476 (t!387592 lt!2649174))))))

(assert (= (and d!2315414 c!1395521) b!7563071))

(assert (= (and d!2315414 (not c!1395521)) b!7563072))

(assert (=> b!7563072 m!8125626))

(assert (=> b!7562386 d!2315414))

(assert (=> b!7562386 d!2315244))

(declare-fun b!7563076 () Bool)

(declare-fun e!4503527 () Bool)

(declare-fun lt!2649453 () List!72863)

(assert (=> b!7563076 (= e!4503527 (or (not (= lt!2649323 Nil!72739)) (= lt!2649453 testedP!423)))))

(declare-fun b!7563074 () Bool)

(declare-fun e!4503526 () List!72863)

(assert (=> b!7563074 (= e!4503526 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) lt!2649323)))))

(declare-fun b!7563073 () Bool)

(assert (=> b!7563073 (= e!4503526 lt!2649323)))

(declare-fun d!2315416 () Bool)

(assert (=> d!2315416 e!4503527))

(declare-fun res!3030443 () Bool)

(assert (=> d!2315416 (=> (not res!3030443) (not e!4503527))))

(assert (=> d!2315416 (= res!3030443 (= (content!15401 lt!2649453) (set.union (content!15401 testedP!423) (content!15401 lt!2649323))))))

(assert (=> d!2315416 (= lt!2649453 e!4503526)))

(declare-fun c!1395522 () Bool)

(assert (=> d!2315416 (= c!1395522 (is-Nil!72739 testedP!423))))

(assert (=> d!2315416 (= (++!17484 testedP!423 lt!2649323) lt!2649453)))

(declare-fun b!7563075 () Bool)

(declare-fun res!3030442 () Bool)

(assert (=> b!7563075 (=> (not res!3030442) (not e!4503527))))

(assert (=> b!7563075 (= res!3030442 (= (size!42476 lt!2649453) (+ (size!42476 testedP!423) (size!42476 lt!2649323))))))

(assert (= (and d!2315416 c!1395522) b!7563073))

(assert (= (and d!2315416 (not c!1395522)) b!7563074))

(assert (= (and d!2315416 res!3030443) b!7563075))

(assert (= (and b!7563075 res!3030442) b!7563076))

(declare-fun m!8126000 () Bool)

(assert (=> b!7563074 m!8126000))

(declare-fun m!8126002 () Bool)

(assert (=> d!2315416 m!8126002))

(assert (=> d!2315416 m!8125058))

(declare-fun m!8126004 () Bool)

(assert (=> d!2315416 m!8126004))

(declare-fun m!8126006 () Bool)

(assert (=> b!7563075 m!8126006))

(assert (=> b!7563075 m!8124928))

(declare-fun m!8126008 () Bool)

(assert (=> b!7563075 m!8126008))

(assert (=> d!2315078 d!2315416))

(assert (=> d!2315078 d!2315118))

(assert (=> d!2315078 d!2315116))

(declare-fun b!7563080 () Bool)

(declare-fun lt!2649454 () List!72863)

(declare-fun e!4503529 () Bool)

(assert (=> b!7563080 (= e!4503529 (or (not (= lt!2649173 Nil!72739)) (= lt!2649454 (t!387592 testedP!423))))))

(declare-fun b!7563078 () Bool)

(declare-fun e!4503528 () List!72863)

(assert (=> b!7563078 (= e!4503528 (Cons!72739 (h!79187 (t!387592 testedP!423)) (++!17484 (t!387592 (t!387592 testedP!423)) lt!2649173)))))

(declare-fun b!7563077 () Bool)

(assert (=> b!7563077 (= e!4503528 lt!2649173)))

(declare-fun d!2315418 () Bool)

(assert (=> d!2315418 e!4503529))

(declare-fun res!3030445 () Bool)

(assert (=> d!2315418 (=> (not res!3030445) (not e!4503529))))

(assert (=> d!2315418 (= res!3030445 (= (content!15401 lt!2649454) (set.union (content!15401 (t!387592 testedP!423)) (content!15401 lt!2649173))))))

(assert (=> d!2315418 (= lt!2649454 e!4503528)))

(declare-fun c!1395523 () Bool)

(assert (=> d!2315418 (= c!1395523 (is-Nil!72739 (t!387592 testedP!423)))))

(assert (=> d!2315418 (= (++!17484 (t!387592 testedP!423) lt!2649173) lt!2649454)))

(declare-fun b!7563079 () Bool)

(declare-fun res!3030444 () Bool)

(assert (=> b!7563079 (=> (not res!3030444) (not e!4503529))))

(assert (=> b!7563079 (= res!3030444 (= (size!42476 lt!2649454) (+ (size!42476 (t!387592 testedP!423)) (size!42476 lt!2649173))))))

(assert (= (and d!2315418 c!1395523) b!7563077))

(assert (= (and d!2315418 (not c!1395523)) b!7563078))

(assert (= (and d!2315418 res!3030445) b!7563079))

(assert (= (and b!7563079 res!3030444) b!7563080))

(declare-fun m!8126010 () Bool)

(assert (=> b!7563078 m!8126010))

(declare-fun m!8126012 () Bool)

(assert (=> d!2315418 m!8126012))

(assert (=> d!2315418 m!8125680))

(assert (=> d!2315418 m!8125302))

(declare-fun m!8126014 () Bool)

(assert (=> b!7563079 m!8126014))

(assert (=> b!7563079 m!8125324))

(assert (=> b!7563079 m!8125306))

(assert (=> b!7562389 d!2315418))

(assert (=> b!7562347 d!2315278))

(assert (=> b!7562347 d!2315238))

(declare-fun d!2315420 () Bool)

(declare-fun c!1395524 () Bool)

(assert (=> d!2315420 (= c!1395524 (is-Nil!72739 lt!2649289))))

(declare-fun e!4503530 () (Set C!40286))

(assert (=> d!2315420 (= (content!15401 lt!2649289) e!4503530)))

(declare-fun b!7563081 () Bool)

(assert (=> b!7563081 (= e!4503530 (as set.empty (Set C!40286)))))

(declare-fun b!7563082 () Bool)

(assert (=> b!7563082 (= e!4503530 (set.union (set.insert (h!79187 lt!2649289) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649289))))))

(assert (= (and d!2315420 c!1395524) b!7563081))

(assert (= (and d!2315420 (not c!1395524)) b!7563082))

(declare-fun m!8126016 () Bool)

(assert (=> b!7563082 m!8126016))

(declare-fun m!8126018 () Bool)

(assert (=> b!7563082 m!8126018))

(assert (=> d!2315028 d!2315420))

(assert (=> d!2315028 d!2315270))

(assert (=> d!2315028 d!2315366))

(declare-fun d!2315422 () Bool)

(assert (=> d!2315422 (= lt!2649192 lt!2649187)))

(assert (=> d!2315422 true))

(declare-fun _$63!1384 () Unit!166894)

(assert (=> d!2315422 (= (choose!58495 testedP!423 lt!2649192 testedP!423 lt!2649187 input!7874) _$63!1384)))

(assert (=> d!2315122 d!2315422))

(assert (=> d!2315122 d!2315012))

(declare-fun d!2315424 () Bool)

(assert (=> d!2315424 (= lt!2649176 lt!2649173)))

(assert (=> d!2315424 true))

(declare-fun _$63!1385 () Unit!166894)

(assert (=> d!2315424 (= (choose!58495 testedP!423 lt!2649176 testedP!423 lt!2649173 knownP!30) _$63!1385)))

(assert (=> d!2315094 d!2315424))

(assert (=> d!2315094 d!2315080))

(declare-fun b!7563083 () Bool)

(declare-fun res!3030448 () Bool)

(declare-fun e!4503537 () Bool)

(assert (=> b!7563083 (=> (not res!3030448) (not e!4503537))))

(declare-fun call!693375 () Bool)

(assert (=> b!7563083 (= res!3030448 (not call!693375))))

(declare-fun b!7563084 () Bool)

(declare-fun e!4503536 () Bool)

(declare-fun e!4503534 () Bool)

(assert (=> b!7563084 (= e!4503536 e!4503534)))

(declare-fun c!1395526 () Bool)

(assert (=> b!7563084 (= c!1395526 (is-EmptyLang!19980 (derivativeStep!5758 baseR!101 (head!15558 knownP!30))))))

(declare-fun b!7563085 () Bool)

(assert (=> b!7563085 (= e!4503537 (= (head!15558 (tail!15098 knownP!30)) (c!1395261 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)))))))

(declare-fun b!7563086 () Bool)

(declare-fun e!4503532 () Bool)

(assert (=> b!7563086 (= e!4503532 (not (= (head!15558 (tail!15098 knownP!30)) (c!1395261 (derivativeStep!5758 baseR!101 (head!15558 knownP!30))))))))

(declare-fun b!7563087 () Bool)

(declare-fun e!4503531 () Bool)

(assert (=> b!7563087 (= e!4503531 (matchR!9582 (derivativeStep!5758 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)) (head!15558 (tail!15098 knownP!30))) (tail!15098 (tail!15098 knownP!30))))))

(declare-fun b!7563088 () Bool)

(declare-fun e!4503535 () Bool)

(assert (=> b!7563088 (= e!4503535 e!4503532)))

(declare-fun res!3030450 () Bool)

(assert (=> b!7563088 (=> res!3030450 e!4503532)))

(assert (=> b!7563088 (= res!3030450 call!693375)))

(declare-fun b!7563089 () Bool)

(declare-fun res!3030452 () Bool)

(assert (=> b!7563089 (=> res!3030452 e!4503532)))

(assert (=> b!7563089 (= res!3030452 (not (isEmpty!41414 (tail!15098 (tail!15098 knownP!30)))))))

(declare-fun b!7563090 () Bool)

(declare-fun res!3030449 () Bool)

(declare-fun e!4503533 () Bool)

(assert (=> b!7563090 (=> res!3030449 e!4503533)))

(assert (=> b!7563090 (= res!3030449 e!4503537)))

(declare-fun res!3030453 () Bool)

(assert (=> b!7563090 (=> (not res!3030453) (not e!4503537))))

(declare-fun lt!2649455 () Bool)

(assert (=> b!7563090 (= res!3030453 lt!2649455)))

(declare-fun b!7563091 () Bool)

(assert (=> b!7563091 (= e!4503531 (nullable!8714 (derivativeStep!5758 baseR!101 (head!15558 knownP!30))))))

(declare-fun bm!693370 () Bool)

(assert (=> bm!693370 (= call!693375 (isEmpty!41414 (tail!15098 knownP!30)))))

(declare-fun b!7563092 () Bool)

(assert (=> b!7563092 (= e!4503533 e!4503535)))

(declare-fun res!3030451 () Bool)

(assert (=> b!7563092 (=> (not res!3030451) (not e!4503535))))

(assert (=> b!7563092 (= res!3030451 (not lt!2649455))))

(declare-fun b!7563093 () Bool)

(declare-fun res!3030447 () Bool)

(assert (=> b!7563093 (=> (not res!3030447) (not e!4503537))))

(assert (=> b!7563093 (= res!3030447 (isEmpty!41414 (tail!15098 (tail!15098 knownP!30))))))

(declare-fun b!7563095 () Bool)

(assert (=> b!7563095 (= e!4503536 (= lt!2649455 call!693375))))

(declare-fun b!7563096 () Bool)

(assert (=> b!7563096 (= e!4503534 (not lt!2649455))))

(declare-fun d!2315426 () Bool)

(assert (=> d!2315426 e!4503536))

(declare-fun c!1395525 () Bool)

(assert (=> d!2315426 (= c!1395525 (is-EmptyExpr!19980 (derivativeStep!5758 baseR!101 (head!15558 knownP!30))))))

(assert (=> d!2315426 (= lt!2649455 e!4503531)))

(declare-fun c!1395527 () Bool)

(assert (=> d!2315426 (= c!1395527 (isEmpty!41414 (tail!15098 knownP!30)))))

(assert (=> d!2315426 (validRegex!10408 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)))))

(assert (=> d!2315426 (= (matchR!9582 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)) (tail!15098 knownP!30)) lt!2649455)))

(declare-fun b!7563094 () Bool)

(declare-fun res!3030446 () Bool)

(assert (=> b!7563094 (=> res!3030446 e!4503533)))

(assert (=> b!7563094 (= res!3030446 (not (is-ElementMatch!19980 (derivativeStep!5758 baseR!101 (head!15558 knownP!30)))))))

(assert (=> b!7563094 (= e!4503534 e!4503533)))

(assert (= (and d!2315426 c!1395527) b!7563091))

(assert (= (and d!2315426 (not c!1395527)) b!7563087))

(assert (= (and d!2315426 c!1395525) b!7563095))

(assert (= (and d!2315426 (not c!1395525)) b!7563084))

(assert (= (and b!7563084 c!1395526) b!7563096))

(assert (= (and b!7563084 (not c!1395526)) b!7563094))

(assert (= (and b!7563094 (not res!3030446)) b!7563090))

(assert (= (and b!7563090 res!3030453) b!7563083))

(assert (= (and b!7563083 res!3030448) b!7563093))

(assert (= (and b!7563093 res!3030447) b!7563085))

(assert (= (and b!7563090 (not res!3030449)) b!7563092))

(assert (= (and b!7563092 res!3030451) b!7563088))

(assert (= (and b!7563088 (not res!3030450)) b!7563089))

(assert (= (and b!7563089 (not res!3030452)) b!7563086))

(assert (= (or b!7563095 b!7563083 b!7563088) bm!693370))

(assert (=> d!2315426 m!8125040))

(assert (=> d!2315426 m!8125186))

(assert (=> d!2315426 m!8125188))

(declare-fun m!8126020 () Bool)

(assert (=> d!2315426 m!8126020))

(assert (=> b!7563091 m!8125188))

(declare-fun m!8126022 () Bool)

(assert (=> b!7563091 m!8126022))

(assert (=> b!7563093 m!8125040))

(assert (=> b!7563093 m!8125688))

(assert (=> b!7563093 m!8125688))

(declare-fun m!8126024 () Bool)

(assert (=> b!7563093 m!8126024))

(assert (=> b!7563086 m!8125040))

(assert (=> b!7563086 m!8125684))

(assert (=> b!7563089 m!8125040))

(assert (=> b!7563089 m!8125688))

(assert (=> b!7563089 m!8125688))

(assert (=> b!7563089 m!8126024))

(assert (=> b!7563085 m!8125040))

(assert (=> b!7563085 m!8125684))

(assert (=> bm!693370 m!8125040))

(assert (=> bm!693370 m!8125186))

(assert (=> b!7563087 m!8125040))

(assert (=> b!7563087 m!8125684))

(assert (=> b!7563087 m!8125188))

(assert (=> b!7563087 m!8125684))

(declare-fun m!8126026 () Bool)

(assert (=> b!7563087 m!8126026))

(assert (=> b!7563087 m!8125040))

(assert (=> b!7563087 m!8125688))

(assert (=> b!7563087 m!8126026))

(assert (=> b!7563087 m!8125688))

(declare-fun m!8126028 () Bool)

(assert (=> b!7563087 m!8126028))

(assert (=> b!7562316 d!2315426))

(declare-fun b!7563097 () Bool)

(declare-fun e!4503538 () Regex!19980)

(declare-fun e!4503541 () Regex!19980)

(assert (=> b!7563097 (= e!4503538 e!4503541)))

(declare-fun c!1395531 () Bool)

(assert (=> b!7563097 (= c!1395531 (is-ElementMatch!19980 baseR!101))))

(declare-fun bm!693371 () Bool)

(declare-fun call!693378 () Regex!19980)

(declare-fun call!693377 () Regex!19980)

(assert (=> bm!693371 (= call!693378 call!693377)))

(declare-fun b!7563098 () Bool)

(declare-fun e!4503540 () Regex!19980)

(assert (=> b!7563098 (= e!4503540 (Union!19980 (Concat!28825 call!693378 (regTwo!40472 baseR!101)) EmptyLang!19980))))

(declare-fun bm!693372 () Bool)

(declare-fun call!693379 () Regex!19980)

(assert (=> bm!693372 (= call!693377 call!693379)))

(declare-fun b!7563099 () Bool)

(declare-fun e!4503539 () Regex!19980)

(declare-fun e!4503542 () Regex!19980)

(assert (=> b!7563099 (= e!4503539 e!4503542)))

(declare-fun c!1395528 () Bool)

(assert (=> b!7563099 (= c!1395528 (is-Star!19980 baseR!101))))

(declare-fun b!7563100 () Bool)

(declare-fun c!1395530 () Bool)

(assert (=> b!7563100 (= c!1395530 (nullable!8714 (regOne!40472 baseR!101)))))

(assert (=> b!7563100 (= e!4503542 e!4503540)))

(declare-fun call!693376 () Regex!19980)

(declare-fun c!1395529 () Bool)

(declare-fun bm!693373 () Bool)

(assert (=> bm!693373 (= call!693376 (derivativeStep!5758 (ite c!1395529 (regOne!40473 baseR!101) (regTwo!40472 baseR!101)) (head!15558 knownP!30)))))

(declare-fun b!7563101 () Bool)

(assert (=> b!7563101 (= e!4503539 (Union!19980 call!693376 call!693379))))

(declare-fun b!7563102 () Bool)

(assert (=> b!7563102 (= e!4503540 (Union!19980 (Concat!28825 call!693378 (regTwo!40472 baseR!101)) call!693376))))

(declare-fun d!2315428 () Bool)

(declare-fun lt!2649456 () Regex!19980)

(assert (=> d!2315428 (validRegex!10408 lt!2649456)))

(assert (=> d!2315428 (= lt!2649456 e!4503538)))

(declare-fun c!1395532 () Bool)

(assert (=> d!2315428 (= c!1395532 (or (is-EmptyExpr!19980 baseR!101) (is-EmptyLang!19980 baseR!101)))))

(assert (=> d!2315428 (validRegex!10408 baseR!101)))

(assert (=> d!2315428 (= (derivativeStep!5758 baseR!101 (head!15558 knownP!30)) lt!2649456)))

(declare-fun b!7563103 () Bool)

(assert (=> b!7563103 (= c!1395529 (is-Union!19980 baseR!101))))

(assert (=> b!7563103 (= e!4503541 e!4503539)))

(declare-fun b!7563104 () Bool)

(assert (=> b!7563104 (= e!4503538 EmptyLang!19980)))

(declare-fun b!7563105 () Bool)

(assert (=> b!7563105 (= e!4503541 (ite (= (head!15558 knownP!30) (c!1395261 baseR!101)) EmptyExpr!19980 EmptyLang!19980))))

(declare-fun b!7563106 () Bool)

(assert (=> b!7563106 (= e!4503542 (Concat!28825 call!693377 baseR!101))))

(declare-fun bm!693374 () Bool)

(assert (=> bm!693374 (= call!693379 (derivativeStep!5758 (ite c!1395529 (regTwo!40473 baseR!101) (ite c!1395528 (reg!20309 baseR!101) (regOne!40472 baseR!101))) (head!15558 knownP!30)))))

(assert (= (and d!2315428 c!1395532) b!7563104))

(assert (= (and d!2315428 (not c!1395532)) b!7563097))

(assert (= (and b!7563097 c!1395531) b!7563105))

(assert (= (and b!7563097 (not c!1395531)) b!7563103))

(assert (= (and b!7563103 c!1395529) b!7563101))

(assert (= (and b!7563103 (not c!1395529)) b!7563099))

(assert (= (and b!7563099 c!1395528) b!7563106))

(assert (= (and b!7563099 (not c!1395528)) b!7563100))

(assert (= (and b!7563100 c!1395530) b!7563102))

(assert (= (and b!7563100 (not c!1395530)) b!7563098))

(assert (= (or b!7563102 b!7563098) bm!693371))

(assert (= (or b!7563106 bm!693371) bm!693372))

(assert (= (or b!7563101 bm!693372) bm!693374))

(assert (= (or b!7563101 b!7563102) bm!693373))

(assert (=> b!7563100 m!8125786))

(assert (=> bm!693373 m!8125038))

(declare-fun m!8126030 () Bool)

(assert (=> bm!693373 m!8126030))

(declare-fun m!8126032 () Bool)

(assert (=> d!2315428 m!8126032))

(assert (=> d!2315428 m!8124846))

(assert (=> bm!693374 m!8125038))

(declare-fun m!8126034 () Bool)

(assert (=> bm!693374 m!8126034))

(assert (=> b!7562316 d!2315428))

(assert (=> b!7562316 d!2315238))

(assert (=> b!7562316 d!2315216))

(declare-fun b!7563107 () Bool)

(declare-fun e!4503549 () Bool)

(declare-fun call!693380 () Bool)

(assert (=> b!7563107 (= e!4503549 call!693380)))

(declare-fun b!7563108 () Bool)

(declare-fun e!4503543 () Bool)

(declare-fun e!4503545 () Bool)

(assert (=> b!7563108 (= e!4503543 e!4503545)))

(declare-fun c!1395534 () Bool)

(assert (=> b!7563108 (= c!1395534 (is-Union!19980 lt!2649294))))

(declare-fun b!7563109 () Bool)

(declare-fun e!4503546 () Bool)

(assert (=> b!7563109 (= e!4503543 e!4503546)))

(declare-fun res!3030458 () Bool)

(assert (=> b!7563109 (= res!3030458 (not (nullable!8714 (reg!20309 lt!2649294))))))

(assert (=> b!7563109 (=> (not res!3030458) (not e!4503546))))

(declare-fun d!2315430 () Bool)

(declare-fun res!3030456 () Bool)

(declare-fun e!4503544 () Bool)

(assert (=> d!2315430 (=> res!3030456 e!4503544)))

(assert (=> d!2315430 (= res!3030456 (is-ElementMatch!19980 lt!2649294))))

(assert (=> d!2315430 (= (validRegex!10408 lt!2649294) e!4503544)))

(declare-fun b!7563110 () Bool)

(declare-fun res!3030457 () Bool)

(declare-fun e!4503547 () Bool)

(assert (=> b!7563110 (=> (not res!3030457) (not e!4503547))))

(declare-fun call!693382 () Bool)

(assert (=> b!7563110 (= res!3030457 call!693382)))

(assert (=> b!7563110 (= e!4503545 e!4503547)))

(declare-fun b!7563111 () Bool)

(assert (=> b!7563111 (= e!4503547 call!693380)))

(declare-fun b!7563112 () Bool)

(assert (=> b!7563112 (= e!4503544 e!4503543)))

(declare-fun c!1395533 () Bool)

(assert (=> b!7563112 (= c!1395533 (is-Star!19980 lt!2649294))))

(declare-fun bm!693375 () Bool)

(assert (=> bm!693375 (= call!693380 (validRegex!10408 (ite c!1395534 (regTwo!40473 lt!2649294) (regTwo!40472 lt!2649294))))))

(declare-fun call!693381 () Bool)

(declare-fun bm!693376 () Bool)

(assert (=> bm!693376 (= call!693381 (validRegex!10408 (ite c!1395533 (reg!20309 lt!2649294) (ite c!1395534 (regOne!40473 lt!2649294) (regOne!40472 lt!2649294)))))))

(declare-fun b!7563113 () Bool)

(declare-fun res!3030455 () Bool)

(declare-fun e!4503548 () Bool)

(assert (=> b!7563113 (=> res!3030455 e!4503548)))

(assert (=> b!7563113 (= res!3030455 (not (is-Concat!28825 lt!2649294)))))

(assert (=> b!7563113 (= e!4503545 e!4503548)))

(declare-fun b!7563114 () Bool)

(assert (=> b!7563114 (= e!4503548 e!4503549)))

(declare-fun res!3030454 () Bool)

(assert (=> b!7563114 (=> (not res!3030454) (not e!4503549))))

(assert (=> b!7563114 (= res!3030454 call!693382)))

(declare-fun bm!693377 () Bool)

(assert (=> bm!693377 (= call!693382 call!693381)))

(declare-fun b!7563115 () Bool)

(assert (=> b!7563115 (= e!4503546 call!693381)))

(assert (= (and d!2315430 (not res!3030456)) b!7563112))

(assert (= (and b!7563112 c!1395533) b!7563109))

(assert (= (and b!7563112 (not c!1395533)) b!7563108))

(assert (= (and b!7563109 res!3030458) b!7563115))

(assert (= (and b!7563108 c!1395534) b!7563110))

(assert (= (and b!7563108 (not c!1395534)) b!7563113))

(assert (= (and b!7563110 res!3030457) b!7563111))

(assert (= (and b!7563113 (not res!3030455)) b!7563114))

(assert (= (and b!7563114 res!3030454) b!7563107))

(assert (= (or b!7563110 b!7563114) bm!693377))

(assert (= (or b!7563111 b!7563107) bm!693375))

(assert (= (or b!7563115 bm!693377) bm!693376))

(declare-fun m!8126036 () Bool)

(assert (=> b!7563109 m!8126036))

(declare-fun m!8126038 () Bool)

(assert (=> bm!693375 m!8126038))

(declare-fun m!8126040 () Bool)

(assert (=> bm!693376 m!8126040))

(assert (=> d!2315032 d!2315430))

(assert (=> d!2315032 d!2315090))

(declare-fun b!7563119 () Bool)

(declare-fun lt!2649457 () List!72863)

(declare-fun e!4503551 () Bool)

(assert (=> b!7563119 (= e!4503551 (or (not (= lt!2649181 Nil!72739)) (= lt!2649457 (t!387592 lt!2649189))))))

(declare-fun b!7563117 () Bool)

(declare-fun e!4503550 () List!72863)

(assert (=> b!7563117 (= e!4503550 (Cons!72739 (h!79187 (t!387592 lt!2649189)) (++!17484 (t!387592 (t!387592 lt!2649189)) lt!2649181)))))

(declare-fun b!7563116 () Bool)

(assert (=> b!7563116 (= e!4503550 lt!2649181)))

(declare-fun d!2315432 () Bool)

(assert (=> d!2315432 e!4503551))

(declare-fun res!3030460 () Bool)

(assert (=> d!2315432 (=> (not res!3030460) (not e!4503551))))

(assert (=> d!2315432 (= res!3030460 (= (content!15401 lt!2649457) (set.union (content!15401 (t!387592 lt!2649189)) (content!15401 lt!2649181))))))

(assert (=> d!2315432 (= lt!2649457 e!4503550)))

(declare-fun c!1395535 () Bool)

(assert (=> d!2315432 (= c!1395535 (is-Nil!72739 (t!387592 lt!2649189)))))

(assert (=> d!2315432 (= (++!17484 (t!387592 lt!2649189) lt!2649181) lt!2649457)))

(declare-fun b!7563118 () Bool)

(declare-fun res!3030459 () Bool)

(assert (=> b!7563118 (=> (not res!3030459) (not e!4503551))))

(assert (=> b!7563118 (= res!3030459 (= (size!42476 lt!2649457) (+ (size!42476 (t!387592 lt!2649189)) (size!42476 lt!2649181))))))

(assert (= (and d!2315432 c!1395535) b!7563116))

(assert (= (and d!2315432 (not c!1395535)) b!7563117))

(assert (= (and d!2315432 res!3030460) b!7563118))

(assert (= (and b!7563118 res!3030459) b!7563119))

(declare-fun m!8126042 () Bool)

(assert (=> b!7563117 m!8126042))

(declare-fun m!8126044 () Bool)

(assert (=> d!2315432 m!8126044))

(assert (=> d!2315432 m!8125840))

(assert (=> d!2315432 m!8125150))

(declare-fun m!8126046 () Bool)

(assert (=> b!7563118 m!8126046))

(assert (=> b!7563118 m!8125026))

(assert (=> b!7563118 m!8125154))

(assert (=> b!7562240 d!2315432))

(assert (=> d!2315042 d!2315018))

(declare-fun d!2315434 () Bool)

(declare-fun e!4503553 () Bool)

(assert (=> d!2315434 e!4503553))

(declare-fun res!3030461 () Bool)

(assert (=> d!2315434 (=> res!3030461 e!4503553)))

(declare-fun lt!2649458 () Bool)

(assert (=> d!2315434 (= res!3030461 (not lt!2649458))))

(declare-fun e!4503552 () Bool)

(assert (=> d!2315434 (= lt!2649458 e!4503552)))

(declare-fun res!3030464 () Bool)

(assert (=> d!2315434 (=> res!3030464 e!4503552)))

(assert (=> d!2315434 (= res!3030464 (is-Nil!72739 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739))))))

(assert (=> d!2315434 (= (isPrefix!6186 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)) input!7874) lt!2649458)))

(declare-fun b!7563121 () Bool)

(declare-fun res!3030463 () Bool)

(declare-fun e!4503554 () Bool)

(assert (=> b!7563121 (=> (not res!3030463) (not e!4503554))))

(assert (=> b!7563121 (= res!3030463 (= (head!15558 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739))) (head!15558 input!7874)))))

(declare-fun b!7563120 () Bool)

(assert (=> b!7563120 (= e!4503552 e!4503554)))

(declare-fun res!3030462 () Bool)

(assert (=> b!7563120 (=> (not res!3030462) (not e!4503554))))

(assert (=> b!7563120 (= res!3030462 (not (is-Nil!72739 input!7874)))))

(declare-fun b!7563123 () Bool)

(assert (=> b!7563123 (= e!4503553 (>= (size!42476 input!7874) (size!42476 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)))))))

(declare-fun b!7563122 () Bool)

(assert (=> b!7563122 (= e!4503554 (isPrefix!6186 (tail!15098 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739))) (tail!15098 input!7874)))))

(assert (= (and d!2315434 (not res!3030464)) b!7563120))

(assert (= (and b!7563120 res!3030462) b!7563121))

(assert (= (and b!7563121 res!3030463) b!7563122))

(assert (= (and d!2315434 (not res!3030461)) b!7563123))

(assert (=> b!7563121 m!8125092))

(declare-fun m!8126048 () Bool)

(assert (=> b!7563121 m!8126048))

(assert (=> b!7563121 m!8125030))

(assert (=> b!7563123 m!8124934))

(assert (=> b!7563123 m!8125092))

(declare-fun m!8126050 () Bool)

(assert (=> b!7563123 m!8126050))

(assert (=> b!7563122 m!8125092))

(declare-fun m!8126052 () Bool)

(assert (=> b!7563122 m!8126052))

(assert (=> b!7563122 m!8125034))

(assert (=> b!7563122 m!8126052))

(assert (=> b!7563122 m!8125034))

(declare-fun m!8126054 () Bool)

(assert (=> b!7563122 m!8126054))

(assert (=> d!2315042 d!2315434))

(declare-fun d!2315436 () Bool)

(assert (=> d!2315436 (isPrefix!6186 (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)) input!7874)))

(assert (=> d!2315436 true))

(declare-fun _$65!1907 () Unit!166894)

(assert (=> d!2315436 (= (choose!58493 testedP!423 input!7874) _$65!1907)))

(declare-fun bs!1940411 () Bool)

(assert (= bs!1940411 d!2315436))

(assert (=> bs!1940411 m!8124868))

(assert (=> bs!1940411 m!8124868))

(assert (=> bs!1940411 m!8125094))

(assert (=> bs!1940411 m!8125092))

(assert (=> bs!1940411 m!8125092))

(assert (=> bs!1940411 m!8125098))

(assert (=> d!2315042 d!2315436))

(assert (=> d!2315042 d!2315012))

(declare-fun lt!2649459 () List!72863)

(declare-fun b!7563127 () Bool)

(declare-fun e!4503556 () Bool)

(assert (=> b!7563127 (= e!4503556 (or (not (= (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739) Nil!72739)) (= lt!2649459 testedP!423)))))

(declare-fun b!7563125 () Bool)

(declare-fun e!4503555 () List!72863)

(assert (=> b!7563125 (= e!4503555 (Cons!72739 (h!79187 testedP!423) (++!17484 (t!387592 testedP!423) (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739))))))

(declare-fun b!7563124 () Bool)

(assert (=> b!7563124 (= e!4503555 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739))))

(declare-fun d!2315438 () Bool)

(assert (=> d!2315438 e!4503556))

(declare-fun res!3030466 () Bool)

(assert (=> d!2315438 (=> (not res!3030466) (not e!4503556))))

(assert (=> d!2315438 (= res!3030466 (= (content!15401 lt!2649459) (set.union (content!15401 testedP!423) (content!15401 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)))))))

(assert (=> d!2315438 (= lt!2649459 e!4503555)))

(declare-fun c!1395536 () Bool)

(assert (=> d!2315438 (= c!1395536 (is-Nil!72739 testedP!423))))

(assert (=> d!2315438 (= (++!17484 testedP!423 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)) lt!2649459)))

(declare-fun b!7563126 () Bool)

(declare-fun res!3030465 () Bool)

(assert (=> b!7563126 (=> (not res!3030465) (not e!4503556))))

(assert (=> b!7563126 (= res!3030465 (= (size!42476 lt!2649459) (+ (size!42476 testedP!423) (size!42476 (Cons!72739 (head!15558 (getSuffix!3664 input!7874 testedP!423)) Nil!72739)))))))

(assert (= (and d!2315438 c!1395536) b!7563124))

(assert (= (and d!2315438 (not c!1395536)) b!7563125))

(assert (= (and d!2315438 res!3030466) b!7563126))

(assert (= (and b!7563126 res!3030465) b!7563127))

(declare-fun m!8126056 () Bool)

(assert (=> b!7563125 m!8126056))

(declare-fun m!8126058 () Bool)

(assert (=> d!2315438 m!8126058))

(assert (=> d!2315438 m!8125058))

(declare-fun m!8126060 () Bool)

(assert (=> d!2315438 m!8126060))

(declare-fun m!8126062 () Bool)

(assert (=> b!7563126 m!8126062))

(assert (=> b!7563126 m!8124928))

(declare-fun m!8126064 () Bool)

(assert (=> b!7563126 m!8126064))

(assert (=> d!2315042 d!2315438))

(declare-fun d!2315440 () Bool)

(assert (=> d!2315440 (= (head!15558 (getSuffix!3664 input!7874 testedP!423)) (h!79187 (getSuffix!3664 input!7874 testedP!423)))))

(assert (=> d!2315042 d!2315440))

(declare-fun d!2315442 () Bool)

(declare-fun c!1395537 () Bool)

(assert (=> d!2315442 (= c!1395537 (is-Nil!72739 lt!2649340))))

(declare-fun e!4503557 () (Set C!40286))

(assert (=> d!2315442 (= (content!15401 lt!2649340) e!4503557)))

(declare-fun b!7563128 () Bool)

(assert (=> b!7563128 (= e!4503557 (as set.empty (Set C!40286)))))

(declare-fun b!7563129 () Bool)

(assert (=> b!7563129 (= e!4503557 (set.union (set.insert (h!79187 lt!2649340) (as set.empty (Set C!40286))) (content!15401 (t!387592 lt!2649340))))))

(assert (= (and d!2315442 c!1395537) b!7563128))

(assert (= (and d!2315442 (not c!1395537)) b!7563129))

(declare-fun m!8126066 () Bool)

(assert (=> b!7563129 m!8126066))

(declare-fun m!8126068 () Bool)

(assert (=> b!7563129 m!8126068))

(assert (=> d!2315108 d!2315442))

(assert (=> d!2315108 d!2315270))

(assert (=> d!2315108 d!2315196))

(declare-fun d!2315444 () Bool)

(declare-fun lt!2649460 () List!72863)

(assert (=> d!2315444 (= (++!17484 (t!387592 lt!2649189) lt!2649460) (tail!15098 knownP!30))))

(declare-fun e!4503558 () List!72863)

(assert (=> d!2315444 (= lt!2649460 e!4503558)))

(declare-fun c!1395538 () Bool)

(assert (=> d!2315444 (= c!1395538 (is-Cons!72739 (t!387592 lt!2649189)))))

(assert (=> d!2315444 (>= (size!42476 (tail!15098 knownP!30)) (size!42476 (t!387592 lt!2649189)))))

(assert (=> d!2315444 (= (getSuffix!3664 (tail!15098 knownP!30) (t!387592 lt!2649189)) lt!2649460)))

(declare-fun b!7563130 () Bool)

(assert (=> b!7563130 (= e!4503558 (getSuffix!3664 (tail!15098 (tail!15098 knownP!30)) (t!387592 (t!387592 lt!2649189))))))

(declare-fun b!7563131 () Bool)

(assert (=> b!7563131 (= e!4503558 (tail!15098 knownP!30))))

(assert (= (and d!2315444 c!1395538) b!7563130))

(assert (= (and d!2315444 (not c!1395538)) b!7563131))

(declare-fun m!8126070 () Bool)

(assert (=> d!2315444 m!8126070))

(assert (=> d!2315444 m!8125040))

(assert (=> d!2315444 m!8125686))

(assert (=> d!2315444 m!8125026))

(assert (=> b!7563130 m!8125040))

(assert (=> b!7563130 m!8125688))

(assert (=> b!7563130 m!8125688))

(declare-fun m!8126072 () Bool)

(assert (=> b!7563130 m!8126072))

(assert (=> b!7562118 d!2315444))

(assert (=> b!7562118 d!2315216))

(declare-fun e!4503559 () Bool)

(assert (=> b!7562443 (= tp!2202277 e!4503559)))

(declare-fun b!7563135 () Bool)

(declare-fun tp!2202394 () Bool)

(declare-fun tp!2202396 () Bool)

(assert (=> b!7563135 (= e!4503559 (and tp!2202394 tp!2202396))))

(declare-fun b!7563132 () Bool)

(assert (=> b!7563132 (= e!4503559 tp_is_empty!50315)))

(declare-fun b!7563134 () Bool)

(declare-fun tp!2202395 () Bool)

(assert (=> b!7563134 (= e!4503559 tp!2202395)))

(declare-fun b!7563133 () Bool)

(declare-fun tp!2202392 () Bool)

(declare-fun tp!2202393 () Bool)

(assert (=> b!7563133 (= e!4503559 (and tp!2202392 tp!2202393))))

(assert (= (and b!7562443 (is-ElementMatch!19980 (regOne!40472 (regTwo!40472 baseR!101)))) b!7563132))

(assert (= (and b!7562443 (is-Concat!28825 (regOne!40472 (regTwo!40472 baseR!101)))) b!7563133))

(assert (= (and b!7562443 (is-Star!19980 (regOne!40472 (regTwo!40472 baseR!101)))) b!7563134))

(assert (= (and b!7562443 (is-Union!19980 (regOne!40472 (regTwo!40472 baseR!101)))) b!7563135))

(declare-fun e!4503560 () Bool)

(assert (=> b!7562443 (= tp!2202278 e!4503560)))

(declare-fun b!7563139 () Bool)

(declare-fun tp!2202399 () Bool)

(declare-fun tp!2202401 () Bool)

(assert (=> b!7563139 (= e!4503560 (and tp!2202399 tp!2202401))))

(declare-fun b!7563136 () Bool)

(assert (=> b!7563136 (= e!4503560 tp_is_empty!50315)))

(declare-fun b!7563138 () Bool)

(declare-fun tp!2202400 () Bool)

(assert (=> b!7563138 (= e!4503560 tp!2202400)))

(declare-fun b!7563137 () Bool)

(declare-fun tp!2202397 () Bool)

(declare-fun tp!2202398 () Bool)

(assert (=> b!7563137 (= e!4503560 (and tp!2202397 tp!2202398))))

(assert (= (and b!7562443 (is-ElementMatch!19980 (regTwo!40472 (regTwo!40472 baseR!101)))) b!7563136))

(assert (= (and b!7562443 (is-Concat!28825 (regTwo!40472 (regTwo!40472 baseR!101)))) b!7563137))

(assert (= (and b!7562443 (is-Star!19980 (regTwo!40472 (regTwo!40472 baseR!101)))) b!7563138))

(assert (= (and b!7562443 (is-Union!19980 (regTwo!40472 (regTwo!40472 baseR!101)))) b!7563139))

(declare-fun e!4503561 () Bool)

(assert (=> b!7562484 (= tp!2202319 e!4503561)))

(declare-fun b!7563143 () Bool)

(declare-fun tp!2202404 () Bool)

(declare-fun tp!2202406 () Bool)

(assert (=> b!7563143 (= e!4503561 (and tp!2202404 tp!2202406))))

(declare-fun b!7563140 () Bool)

(assert (=> b!7563140 (= e!4503561 tp_is_empty!50315)))

(declare-fun b!7563142 () Bool)

(declare-fun tp!2202405 () Bool)

(assert (=> b!7563142 (= e!4503561 tp!2202405)))

(declare-fun b!7563141 () Bool)

(declare-fun tp!2202402 () Bool)

(declare-fun tp!2202403 () Bool)

(assert (=> b!7563141 (= e!4503561 (and tp!2202402 tp!2202403))))

(assert (= (and b!7562484 (is-ElementMatch!19980 (regOne!40473 (regOne!40472 r!24333)))) b!7563140))

(assert (= (and b!7562484 (is-Concat!28825 (regOne!40473 (regOne!40472 r!24333)))) b!7563141))

(assert (= (and b!7562484 (is-Star!19980 (regOne!40473 (regOne!40472 r!24333)))) b!7563142))

(assert (= (and b!7562484 (is-Union!19980 (regOne!40473 (regOne!40472 r!24333)))) b!7563143))

(declare-fun e!4503562 () Bool)

(assert (=> b!7562484 (= tp!2202321 e!4503562)))

(declare-fun b!7563147 () Bool)

(declare-fun tp!2202409 () Bool)

(declare-fun tp!2202411 () Bool)

(assert (=> b!7563147 (= e!4503562 (and tp!2202409 tp!2202411))))

(declare-fun b!7563144 () Bool)

(assert (=> b!7563144 (= e!4503562 tp_is_empty!50315)))

(declare-fun b!7563146 () Bool)

(declare-fun tp!2202410 () Bool)

(assert (=> b!7563146 (= e!4503562 tp!2202410)))

(declare-fun b!7563145 () Bool)

(declare-fun tp!2202407 () Bool)

(declare-fun tp!2202408 () Bool)

(assert (=> b!7563145 (= e!4503562 (and tp!2202407 tp!2202408))))

(assert (= (and b!7562484 (is-ElementMatch!19980 (regTwo!40473 (regOne!40472 r!24333)))) b!7563144))

(assert (= (and b!7562484 (is-Concat!28825 (regTwo!40473 (regOne!40472 r!24333)))) b!7563145))

(assert (= (and b!7562484 (is-Star!19980 (regTwo!40473 (regOne!40472 r!24333)))) b!7563146))

(assert (= (and b!7562484 (is-Union!19980 (regTwo!40473 (regOne!40472 r!24333)))) b!7563147))

(declare-fun e!4503563 () Bool)

(assert (=> b!7562482 (= tp!2202317 e!4503563)))

(declare-fun b!7563151 () Bool)

(declare-fun tp!2202414 () Bool)

(declare-fun tp!2202416 () Bool)

(assert (=> b!7563151 (= e!4503563 (and tp!2202414 tp!2202416))))

(declare-fun b!7563148 () Bool)

(assert (=> b!7563148 (= e!4503563 tp_is_empty!50315)))

(declare-fun b!7563150 () Bool)

(declare-fun tp!2202415 () Bool)

(assert (=> b!7563150 (= e!4503563 tp!2202415)))

(declare-fun b!7563149 () Bool)

(declare-fun tp!2202412 () Bool)

(declare-fun tp!2202413 () Bool)

(assert (=> b!7563149 (= e!4503563 (and tp!2202412 tp!2202413))))

(assert (= (and b!7562482 (is-ElementMatch!19980 (regOne!40472 (regOne!40472 r!24333)))) b!7563148))

(assert (= (and b!7562482 (is-Concat!28825 (regOne!40472 (regOne!40472 r!24333)))) b!7563149))

(assert (= (and b!7562482 (is-Star!19980 (regOne!40472 (regOne!40472 r!24333)))) b!7563150))

(assert (= (and b!7562482 (is-Union!19980 (regOne!40472 (regOne!40472 r!24333)))) b!7563151))

(declare-fun e!4503564 () Bool)

(assert (=> b!7562482 (= tp!2202318 e!4503564)))

(declare-fun b!7563155 () Bool)

(declare-fun tp!2202419 () Bool)

(declare-fun tp!2202421 () Bool)

(assert (=> b!7563155 (= e!4503564 (and tp!2202419 tp!2202421))))

(declare-fun b!7563152 () Bool)

(assert (=> b!7563152 (= e!4503564 tp_is_empty!50315)))

(declare-fun b!7563154 () Bool)

(declare-fun tp!2202420 () Bool)

(assert (=> b!7563154 (= e!4503564 tp!2202420)))

(declare-fun b!7563153 () Bool)

(declare-fun tp!2202417 () Bool)

(declare-fun tp!2202418 () Bool)

(assert (=> b!7563153 (= e!4503564 (and tp!2202417 tp!2202418))))

(assert (= (and b!7562482 (is-ElementMatch!19980 (regTwo!40472 (regOne!40472 r!24333)))) b!7563152))

(assert (= (and b!7562482 (is-Concat!28825 (regTwo!40472 (regOne!40472 r!24333)))) b!7563153))

(assert (= (and b!7562482 (is-Star!19980 (regTwo!40472 (regOne!40472 r!24333)))) b!7563154))

(assert (= (and b!7562482 (is-Union!19980 (regTwo!40472 (regOne!40472 r!24333)))) b!7563155))

(declare-fun e!4503565 () Bool)

(assert (=> b!7562483 (= tp!2202320 e!4503565)))

(declare-fun b!7563159 () Bool)

(declare-fun tp!2202424 () Bool)

(declare-fun tp!2202426 () Bool)

(assert (=> b!7563159 (= e!4503565 (and tp!2202424 tp!2202426))))

(declare-fun b!7563156 () Bool)

(assert (=> b!7563156 (= e!4503565 tp_is_empty!50315)))

(declare-fun b!7563158 () Bool)

(declare-fun tp!2202425 () Bool)

(assert (=> b!7563158 (= e!4503565 tp!2202425)))

(declare-fun b!7563157 () Bool)

(declare-fun tp!2202422 () Bool)

(declare-fun tp!2202423 () Bool)

(assert (=> b!7563157 (= e!4503565 (and tp!2202422 tp!2202423))))

(assert (= (and b!7562483 (is-ElementMatch!19980 (reg!20309 (regOne!40472 r!24333)))) b!7563156))

(assert (= (and b!7562483 (is-Concat!28825 (reg!20309 (regOne!40472 r!24333)))) b!7563157))

(assert (= (and b!7562483 (is-Star!19980 (reg!20309 (regOne!40472 r!24333)))) b!7563158))

(assert (= (and b!7562483 (is-Union!19980 (reg!20309 (regOne!40472 r!24333)))) b!7563159))

(declare-fun b!7563160 () Bool)

(declare-fun e!4503566 () Bool)

(declare-fun tp!2202427 () Bool)

(assert (=> b!7563160 (= e!4503566 (and tp_is_empty!50315 tp!2202427))))

(assert (=> b!7562451 (= tp!2202285 e!4503566)))

(assert (= (and b!7562451 (is-Cons!72739 (t!387592 (t!387592 input!7874)))) b!7563160))

(declare-fun e!4503567 () Bool)

(assert (=> b!7562459 (= tp!2202293 e!4503567)))

(declare-fun b!7563164 () Bool)

(declare-fun tp!2202430 () Bool)

(declare-fun tp!2202432 () Bool)

(assert (=> b!7563164 (= e!4503567 (and tp!2202430 tp!2202432))))

(declare-fun b!7563161 () Bool)

(assert (=> b!7563161 (= e!4503567 tp_is_empty!50315)))

(declare-fun b!7563163 () Bool)

(declare-fun tp!2202431 () Bool)

(assert (=> b!7563163 (= e!4503567 tp!2202431)))

(declare-fun b!7563162 () Bool)

(declare-fun tp!2202428 () Bool)

(declare-fun tp!2202429 () Bool)

(assert (=> b!7563162 (= e!4503567 (and tp!2202428 tp!2202429))))

(assert (= (and b!7562459 (is-ElementMatch!19980 (regOne!40473 (regOne!40473 baseR!101)))) b!7563161))

(assert (= (and b!7562459 (is-Concat!28825 (regOne!40473 (regOne!40473 baseR!101)))) b!7563162))

(assert (= (and b!7562459 (is-Star!19980 (regOne!40473 (regOne!40473 baseR!101)))) b!7563163))

(assert (= (and b!7562459 (is-Union!19980 (regOne!40473 (regOne!40473 baseR!101)))) b!7563164))

(declare-fun e!4503568 () Bool)

(assert (=> b!7562459 (= tp!2202295 e!4503568)))

(declare-fun b!7563168 () Bool)

(declare-fun tp!2202435 () Bool)

(declare-fun tp!2202437 () Bool)

(assert (=> b!7563168 (= e!4503568 (and tp!2202435 tp!2202437))))

(declare-fun b!7563165 () Bool)

(assert (=> b!7563165 (= e!4503568 tp_is_empty!50315)))

(declare-fun b!7563167 () Bool)

(declare-fun tp!2202436 () Bool)

(assert (=> b!7563167 (= e!4503568 tp!2202436)))

(declare-fun b!7563166 () Bool)

(declare-fun tp!2202433 () Bool)

(declare-fun tp!2202434 () Bool)

(assert (=> b!7563166 (= e!4503568 (and tp!2202433 tp!2202434))))

(assert (= (and b!7562459 (is-ElementMatch!19980 (regTwo!40473 (regOne!40473 baseR!101)))) b!7563165))

(assert (= (and b!7562459 (is-Concat!28825 (regTwo!40473 (regOne!40473 baseR!101)))) b!7563166))

(assert (= (and b!7562459 (is-Star!19980 (regTwo!40473 (regOne!40473 baseR!101)))) b!7563167))

(assert (= (and b!7562459 (is-Union!19980 (regTwo!40473 (regOne!40473 baseR!101)))) b!7563168))

(declare-fun e!4503569 () Bool)

(assert (=> b!7562458 (= tp!2202294 e!4503569)))

(declare-fun b!7563172 () Bool)

(declare-fun tp!2202440 () Bool)

(declare-fun tp!2202442 () Bool)

(assert (=> b!7563172 (= e!4503569 (and tp!2202440 tp!2202442))))

(declare-fun b!7563169 () Bool)

(assert (=> b!7563169 (= e!4503569 tp_is_empty!50315)))

(declare-fun b!7563171 () Bool)

(declare-fun tp!2202441 () Bool)

(assert (=> b!7563171 (= e!4503569 tp!2202441)))

(declare-fun b!7563170 () Bool)

(declare-fun tp!2202438 () Bool)

(declare-fun tp!2202439 () Bool)

(assert (=> b!7563170 (= e!4503569 (and tp!2202438 tp!2202439))))

(assert (= (and b!7562458 (is-ElementMatch!19980 (reg!20309 (regOne!40473 baseR!101)))) b!7563169))

(assert (= (and b!7562458 (is-Concat!28825 (reg!20309 (regOne!40473 baseR!101)))) b!7563170))

(assert (= (and b!7562458 (is-Star!19980 (reg!20309 (regOne!40473 baseR!101)))) b!7563171))

(assert (= (and b!7562458 (is-Union!19980 (reg!20309 (regOne!40473 baseR!101)))) b!7563172))

(declare-fun b!7563173 () Bool)

(declare-fun e!4503570 () Bool)

(declare-fun tp!2202443 () Bool)

(assert (=> b!7563173 (= e!4503570 (and tp_is_empty!50315 tp!2202443))))

(assert (=> b!7562450 (= tp!2202284 e!4503570)))

(assert (= (and b!7562450 (is-Cons!72739 (t!387592 (t!387592 knownP!30)))) b!7563173))

(declare-fun e!4503571 () Bool)

(assert (=> b!7562467 (= tp!2202303 e!4503571)))

(declare-fun b!7563177 () Bool)

(declare-fun tp!2202446 () Bool)

(declare-fun tp!2202448 () Bool)

(assert (=> b!7563177 (= e!4503571 (and tp!2202446 tp!2202448))))

(declare-fun b!7563174 () Bool)

(assert (=> b!7563174 (= e!4503571 tp_is_empty!50315)))

(declare-fun b!7563176 () Bool)

(declare-fun tp!2202447 () Bool)

(assert (=> b!7563176 (= e!4503571 tp!2202447)))

(declare-fun b!7563175 () Bool)

(declare-fun tp!2202444 () Bool)

(declare-fun tp!2202445 () Bool)

(assert (=> b!7563175 (= e!4503571 (and tp!2202444 tp!2202445))))

(assert (= (and b!7562467 (is-ElementMatch!19980 (regOne!40473 (reg!20309 baseR!101)))) b!7563174))

(assert (= (and b!7562467 (is-Concat!28825 (regOne!40473 (reg!20309 baseR!101)))) b!7563175))

(assert (= (and b!7562467 (is-Star!19980 (regOne!40473 (reg!20309 baseR!101)))) b!7563176))

(assert (= (and b!7562467 (is-Union!19980 (regOne!40473 (reg!20309 baseR!101)))) b!7563177))

(declare-fun e!4503572 () Bool)

(assert (=> b!7562467 (= tp!2202305 e!4503572)))

(declare-fun b!7563181 () Bool)

(declare-fun tp!2202451 () Bool)

(declare-fun tp!2202453 () Bool)

(assert (=> b!7563181 (= e!4503572 (and tp!2202451 tp!2202453))))

(declare-fun b!7563178 () Bool)

(assert (=> b!7563178 (= e!4503572 tp_is_empty!50315)))

(declare-fun b!7563180 () Bool)

(declare-fun tp!2202452 () Bool)

(assert (=> b!7563180 (= e!4503572 tp!2202452)))

(declare-fun b!7563179 () Bool)

(declare-fun tp!2202449 () Bool)

(declare-fun tp!2202450 () Bool)

(assert (=> b!7563179 (= e!4503572 (and tp!2202449 tp!2202450))))

(assert (= (and b!7562467 (is-ElementMatch!19980 (regTwo!40473 (reg!20309 baseR!101)))) b!7563178))

(assert (= (and b!7562467 (is-Concat!28825 (regTwo!40473 (reg!20309 baseR!101)))) b!7563179))

(assert (= (and b!7562467 (is-Star!19980 (regTwo!40473 (reg!20309 baseR!101)))) b!7563180))

(assert (= (and b!7562467 (is-Union!19980 (regTwo!40473 (reg!20309 baseR!101)))) b!7563181))

(declare-fun e!4503573 () Bool)

(assert (=> b!7562466 (= tp!2202304 e!4503573)))

(declare-fun b!7563185 () Bool)

(declare-fun tp!2202456 () Bool)

(declare-fun tp!2202458 () Bool)

(assert (=> b!7563185 (= e!4503573 (and tp!2202456 tp!2202458))))

(declare-fun b!7563182 () Bool)

(assert (=> b!7563182 (= e!4503573 tp_is_empty!50315)))

(declare-fun b!7563184 () Bool)

(declare-fun tp!2202457 () Bool)

(assert (=> b!7563184 (= e!4503573 tp!2202457)))

(declare-fun b!7563183 () Bool)

(declare-fun tp!2202454 () Bool)

(declare-fun tp!2202455 () Bool)

(assert (=> b!7563183 (= e!4503573 (and tp!2202454 tp!2202455))))

(assert (= (and b!7562466 (is-ElementMatch!19980 (reg!20309 (reg!20309 baseR!101)))) b!7563182))

(assert (= (and b!7562466 (is-Concat!28825 (reg!20309 (reg!20309 baseR!101)))) b!7563183))

(assert (= (and b!7562466 (is-Star!19980 (reg!20309 (reg!20309 baseR!101)))) b!7563184))

(assert (= (and b!7562466 (is-Union!19980 (reg!20309 (reg!20309 baseR!101)))) b!7563185))

(declare-fun e!4503574 () Bool)

(assert (=> b!7562457 (= tp!2202291 e!4503574)))

(declare-fun b!7563189 () Bool)

(declare-fun tp!2202461 () Bool)

(declare-fun tp!2202463 () Bool)

(assert (=> b!7563189 (= e!4503574 (and tp!2202461 tp!2202463))))

(declare-fun b!7563186 () Bool)

(assert (=> b!7563186 (= e!4503574 tp_is_empty!50315)))

(declare-fun b!7563188 () Bool)

(declare-fun tp!2202462 () Bool)

(assert (=> b!7563188 (= e!4503574 tp!2202462)))

(declare-fun b!7563187 () Bool)

(declare-fun tp!2202459 () Bool)

(declare-fun tp!2202460 () Bool)

(assert (=> b!7563187 (= e!4503574 (and tp!2202459 tp!2202460))))

(assert (= (and b!7562457 (is-ElementMatch!19980 (regOne!40472 (regOne!40473 baseR!101)))) b!7563186))

(assert (= (and b!7562457 (is-Concat!28825 (regOne!40472 (regOne!40473 baseR!101)))) b!7563187))

(assert (= (and b!7562457 (is-Star!19980 (regOne!40472 (regOne!40473 baseR!101)))) b!7563188))

(assert (= (and b!7562457 (is-Union!19980 (regOne!40472 (regOne!40473 baseR!101)))) b!7563189))

(declare-fun e!4503575 () Bool)

(assert (=> b!7562457 (= tp!2202292 e!4503575)))

(declare-fun b!7563193 () Bool)

(declare-fun tp!2202466 () Bool)

(declare-fun tp!2202468 () Bool)

(assert (=> b!7563193 (= e!4503575 (and tp!2202466 tp!2202468))))

(declare-fun b!7563190 () Bool)

(assert (=> b!7563190 (= e!4503575 tp_is_empty!50315)))

(declare-fun b!7563192 () Bool)

(declare-fun tp!2202467 () Bool)

(assert (=> b!7563192 (= e!4503575 tp!2202467)))

(declare-fun b!7563191 () Bool)

(declare-fun tp!2202464 () Bool)

(declare-fun tp!2202465 () Bool)

(assert (=> b!7563191 (= e!4503575 (and tp!2202464 tp!2202465))))

(assert (= (and b!7562457 (is-ElementMatch!19980 (regTwo!40472 (regOne!40473 baseR!101)))) b!7563190))

(assert (= (and b!7562457 (is-Concat!28825 (regTwo!40472 (regOne!40473 baseR!101)))) b!7563191))

(assert (= (and b!7562457 (is-Star!19980 (regTwo!40472 (regOne!40473 baseR!101)))) b!7563192))

(assert (= (and b!7562457 (is-Union!19980 (regTwo!40472 (regOne!40473 baseR!101)))) b!7563193))

(declare-fun e!4503576 () Bool)

(assert (=> b!7562475 (= tp!2202313 e!4503576)))

(declare-fun b!7563197 () Bool)

(declare-fun tp!2202471 () Bool)

(declare-fun tp!2202473 () Bool)

(assert (=> b!7563197 (= e!4503576 (and tp!2202471 tp!2202473))))

(declare-fun b!7563194 () Bool)

(assert (=> b!7563194 (= e!4503576 tp_is_empty!50315)))

(declare-fun b!7563196 () Bool)

(declare-fun tp!2202472 () Bool)

(assert (=> b!7563196 (= e!4503576 tp!2202472)))

(declare-fun b!7563195 () Bool)

(declare-fun tp!2202469 () Bool)

(declare-fun tp!2202470 () Bool)

(assert (=> b!7563195 (= e!4503576 (and tp!2202469 tp!2202470))))

(assert (= (and b!7562475 (is-ElementMatch!19980 (regOne!40473 (regTwo!40473 r!24333)))) b!7563194))

(assert (= (and b!7562475 (is-Concat!28825 (regOne!40473 (regTwo!40473 r!24333)))) b!7563195))

(assert (= (and b!7562475 (is-Star!19980 (regOne!40473 (regTwo!40473 r!24333)))) b!7563196))

(assert (= (and b!7562475 (is-Union!19980 (regOne!40473 (regTwo!40473 r!24333)))) b!7563197))

(declare-fun e!4503577 () Bool)

(assert (=> b!7562475 (= tp!2202315 e!4503577)))

(declare-fun b!7563201 () Bool)

(declare-fun tp!2202476 () Bool)

(declare-fun tp!2202478 () Bool)

(assert (=> b!7563201 (= e!4503577 (and tp!2202476 tp!2202478))))

(declare-fun b!7563198 () Bool)

(assert (=> b!7563198 (= e!4503577 tp_is_empty!50315)))

(declare-fun b!7563200 () Bool)

(declare-fun tp!2202477 () Bool)

(assert (=> b!7563200 (= e!4503577 tp!2202477)))

(declare-fun b!7563199 () Bool)

(declare-fun tp!2202474 () Bool)

(declare-fun tp!2202475 () Bool)

(assert (=> b!7563199 (= e!4503577 (and tp!2202474 tp!2202475))))

(assert (= (and b!7562475 (is-ElementMatch!19980 (regTwo!40473 (regTwo!40473 r!24333)))) b!7563198))

(assert (= (and b!7562475 (is-Concat!28825 (regTwo!40473 (regTwo!40473 r!24333)))) b!7563199))

(assert (= (and b!7562475 (is-Star!19980 (regTwo!40473 (regTwo!40473 r!24333)))) b!7563200))

(assert (= (and b!7562475 (is-Union!19980 (regTwo!40473 (regTwo!40473 r!24333)))) b!7563201))

(declare-fun e!4503578 () Bool)

(assert (=> b!7562474 (= tp!2202314 e!4503578)))

(declare-fun b!7563205 () Bool)

(declare-fun tp!2202481 () Bool)

(declare-fun tp!2202483 () Bool)

(assert (=> b!7563205 (= e!4503578 (and tp!2202481 tp!2202483))))

(declare-fun b!7563202 () Bool)

(assert (=> b!7563202 (= e!4503578 tp_is_empty!50315)))

(declare-fun b!7563204 () Bool)

(declare-fun tp!2202482 () Bool)

(assert (=> b!7563204 (= e!4503578 tp!2202482)))

(declare-fun b!7563203 () Bool)

(declare-fun tp!2202479 () Bool)

(declare-fun tp!2202480 () Bool)

(assert (=> b!7563203 (= e!4503578 (and tp!2202479 tp!2202480))))

(assert (= (and b!7562474 (is-ElementMatch!19980 (reg!20309 (regTwo!40473 r!24333)))) b!7563202))

(assert (= (and b!7562474 (is-Concat!28825 (reg!20309 (regTwo!40473 r!24333)))) b!7563203))

(assert (= (and b!7562474 (is-Star!19980 (reg!20309 (regTwo!40473 r!24333)))) b!7563204))

(assert (= (and b!7562474 (is-Union!19980 (reg!20309 (regTwo!40473 r!24333)))) b!7563205))

(declare-fun e!4503579 () Bool)

(assert (=> b!7562465 (= tp!2202301 e!4503579)))

(declare-fun b!7563209 () Bool)

(declare-fun tp!2202486 () Bool)

(declare-fun tp!2202488 () Bool)

(assert (=> b!7563209 (= e!4503579 (and tp!2202486 tp!2202488))))

(declare-fun b!7563206 () Bool)

(assert (=> b!7563206 (= e!4503579 tp_is_empty!50315)))

(declare-fun b!7563208 () Bool)

(declare-fun tp!2202487 () Bool)

(assert (=> b!7563208 (= e!4503579 tp!2202487)))

(declare-fun b!7563207 () Bool)

(declare-fun tp!2202484 () Bool)

(declare-fun tp!2202485 () Bool)

(assert (=> b!7563207 (= e!4503579 (and tp!2202484 tp!2202485))))

(assert (= (and b!7562465 (is-ElementMatch!19980 (regOne!40472 (reg!20309 baseR!101)))) b!7563206))

(assert (= (and b!7562465 (is-Concat!28825 (regOne!40472 (reg!20309 baseR!101)))) b!7563207))

(assert (= (and b!7562465 (is-Star!19980 (regOne!40472 (reg!20309 baseR!101)))) b!7563208))

(assert (= (and b!7562465 (is-Union!19980 (regOne!40472 (reg!20309 baseR!101)))) b!7563209))

(declare-fun e!4503580 () Bool)

(assert (=> b!7562465 (= tp!2202302 e!4503580)))

(declare-fun b!7563213 () Bool)

(declare-fun tp!2202491 () Bool)

(declare-fun tp!2202493 () Bool)

(assert (=> b!7563213 (= e!4503580 (and tp!2202491 tp!2202493))))

(declare-fun b!7563210 () Bool)

(assert (=> b!7563210 (= e!4503580 tp_is_empty!50315)))

(declare-fun b!7563212 () Bool)

(declare-fun tp!2202492 () Bool)

(assert (=> b!7563212 (= e!4503580 tp!2202492)))

(declare-fun b!7563211 () Bool)

(declare-fun tp!2202489 () Bool)

(declare-fun tp!2202490 () Bool)

(assert (=> b!7563211 (= e!4503580 (and tp!2202489 tp!2202490))))

(assert (= (and b!7562465 (is-ElementMatch!19980 (regTwo!40472 (reg!20309 baseR!101)))) b!7563210))

(assert (= (and b!7562465 (is-Concat!28825 (regTwo!40472 (reg!20309 baseR!101)))) b!7563211))

(assert (= (and b!7562465 (is-Star!19980 (regTwo!40472 (reg!20309 baseR!101)))) b!7563212))

(assert (= (and b!7562465 (is-Union!19980 (regTwo!40472 (reg!20309 baseR!101)))) b!7563213))

(declare-fun e!4503581 () Bool)

(assert (=> b!7562473 (= tp!2202311 e!4503581)))

(declare-fun b!7563217 () Bool)

(declare-fun tp!2202496 () Bool)

(declare-fun tp!2202498 () Bool)

(assert (=> b!7563217 (= e!4503581 (and tp!2202496 tp!2202498))))

(declare-fun b!7563214 () Bool)

(assert (=> b!7563214 (= e!4503581 tp_is_empty!50315)))

(declare-fun b!7563216 () Bool)

(declare-fun tp!2202497 () Bool)

(assert (=> b!7563216 (= e!4503581 tp!2202497)))

(declare-fun b!7563215 () Bool)

(declare-fun tp!2202494 () Bool)

(declare-fun tp!2202495 () Bool)

(assert (=> b!7563215 (= e!4503581 (and tp!2202494 tp!2202495))))

(assert (= (and b!7562473 (is-ElementMatch!19980 (regOne!40472 (regTwo!40473 r!24333)))) b!7563214))

(assert (= (and b!7562473 (is-Concat!28825 (regOne!40472 (regTwo!40473 r!24333)))) b!7563215))

(assert (= (and b!7562473 (is-Star!19980 (regOne!40472 (regTwo!40473 r!24333)))) b!7563216))

(assert (= (and b!7562473 (is-Union!19980 (regOne!40472 (regTwo!40473 r!24333)))) b!7563217))

(declare-fun e!4503582 () Bool)

(assert (=> b!7562473 (= tp!2202312 e!4503582)))

(declare-fun b!7563221 () Bool)

(declare-fun tp!2202501 () Bool)

(declare-fun tp!2202503 () Bool)

(assert (=> b!7563221 (= e!4503582 (and tp!2202501 tp!2202503))))

(declare-fun b!7563218 () Bool)

(assert (=> b!7563218 (= e!4503582 tp_is_empty!50315)))

(declare-fun b!7563220 () Bool)

(declare-fun tp!2202502 () Bool)

(assert (=> b!7563220 (= e!4503582 tp!2202502)))

(declare-fun b!7563219 () Bool)

(declare-fun tp!2202499 () Bool)

(declare-fun tp!2202500 () Bool)

(assert (=> b!7563219 (= e!4503582 (and tp!2202499 tp!2202500))))

(assert (= (and b!7562473 (is-ElementMatch!19980 (regTwo!40472 (regTwo!40473 r!24333)))) b!7563218))

(assert (= (and b!7562473 (is-Concat!28825 (regTwo!40472 (regTwo!40473 r!24333)))) b!7563219))

(assert (= (and b!7562473 (is-Star!19980 (regTwo!40472 (regTwo!40473 r!24333)))) b!7563220))

(assert (= (and b!7562473 (is-Union!19980 (regTwo!40472 (regTwo!40473 r!24333)))) b!7563221))

(declare-fun e!4503583 () Bool)

(assert (=> b!7562441 (= tp!2202274 e!4503583)))

(declare-fun b!7563225 () Bool)

(declare-fun tp!2202506 () Bool)

(declare-fun tp!2202508 () Bool)

(assert (=> b!7563225 (= e!4503583 (and tp!2202506 tp!2202508))))

(declare-fun b!7563222 () Bool)

(assert (=> b!7563222 (= e!4503583 tp_is_empty!50315)))

(declare-fun b!7563224 () Bool)

(declare-fun tp!2202507 () Bool)

(assert (=> b!7563224 (= e!4503583 tp!2202507)))

(declare-fun b!7563223 () Bool)

(declare-fun tp!2202504 () Bool)

(declare-fun tp!2202505 () Bool)

(assert (=> b!7563223 (= e!4503583 (and tp!2202504 tp!2202505))))

(assert (= (and b!7562441 (is-ElementMatch!19980 (regOne!40473 (regOne!40472 baseR!101)))) b!7563222))

(assert (= (and b!7562441 (is-Concat!28825 (regOne!40473 (regOne!40472 baseR!101)))) b!7563223))

(assert (= (and b!7562441 (is-Star!19980 (regOne!40473 (regOne!40472 baseR!101)))) b!7563224))

(assert (= (and b!7562441 (is-Union!19980 (regOne!40473 (regOne!40472 baseR!101)))) b!7563225))

(declare-fun e!4503584 () Bool)

(assert (=> b!7562441 (= tp!2202276 e!4503584)))

(declare-fun b!7563229 () Bool)

(declare-fun tp!2202511 () Bool)

(declare-fun tp!2202513 () Bool)

(assert (=> b!7563229 (= e!4503584 (and tp!2202511 tp!2202513))))

(declare-fun b!7563226 () Bool)

(assert (=> b!7563226 (= e!4503584 tp_is_empty!50315)))

(declare-fun b!7563228 () Bool)

(declare-fun tp!2202512 () Bool)

(assert (=> b!7563228 (= e!4503584 tp!2202512)))

(declare-fun b!7563227 () Bool)

(declare-fun tp!2202509 () Bool)

(declare-fun tp!2202510 () Bool)

(assert (=> b!7563227 (= e!4503584 (and tp!2202509 tp!2202510))))

(assert (= (and b!7562441 (is-ElementMatch!19980 (regTwo!40473 (regOne!40472 baseR!101)))) b!7563226))

(assert (= (and b!7562441 (is-Concat!28825 (regTwo!40473 (regOne!40472 baseR!101)))) b!7563227))

(assert (= (and b!7562441 (is-Star!19980 (regTwo!40473 (regOne!40472 baseR!101)))) b!7563228))

(assert (= (and b!7562441 (is-Union!19980 (regTwo!40473 (regOne!40472 baseR!101)))) b!7563229))

(declare-fun e!4503585 () Bool)

(assert (=> b!7562440 (= tp!2202275 e!4503585)))

(declare-fun b!7563233 () Bool)

(declare-fun tp!2202516 () Bool)

(declare-fun tp!2202518 () Bool)

(assert (=> b!7563233 (= e!4503585 (and tp!2202516 tp!2202518))))

(declare-fun b!7563230 () Bool)

(assert (=> b!7563230 (= e!4503585 tp_is_empty!50315)))

(declare-fun b!7563232 () Bool)

(declare-fun tp!2202517 () Bool)

(assert (=> b!7563232 (= e!4503585 tp!2202517)))

(declare-fun b!7563231 () Bool)

(declare-fun tp!2202514 () Bool)

(declare-fun tp!2202515 () Bool)

(assert (=> b!7563231 (= e!4503585 (and tp!2202514 tp!2202515))))

(assert (= (and b!7562440 (is-ElementMatch!19980 (reg!20309 (regOne!40472 baseR!101)))) b!7563230))

(assert (= (and b!7562440 (is-Concat!28825 (reg!20309 (regOne!40472 baseR!101)))) b!7563231))

(assert (= (and b!7562440 (is-Star!19980 (reg!20309 (regOne!40472 baseR!101)))) b!7563232))

(assert (= (and b!7562440 (is-Union!19980 (reg!20309 (regOne!40472 baseR!101)))) b!7563233))

(declare-fun e!4503586 () Bool)

(assert (=> b!7562439 (= tp!2202272 e!4503586)))

(declare-fun b!7563237 () Bool)

(declare-fun tp!2202521 () Bool)

(declare-fun tp!2202523 () Bool)

(assert (=> b!7563237 (= e!4503586 (and tp!2202521 tp!2202523))))

(declare-fun b!7563234 () Bool)

(assert (=> b!7563234 (= e!4503586 tp_is_empty!50315)))

(declare-fun b!7563236 () Bool)

(declare-fun tp!2202522 () Bool)

(assert (=> b!7563236 (= e!4503586 tp!2202522)))

(declare-fun b!7563235 () Bool)

(declare-fun tp!2202519 () Bool)

(declare-fun tp!2202520 () Bool)

(assert (=> b!7563235 (= e!4503586 (and tp!2202519 tp!2202520))))

(assert (= (and b!7562439 (is-ElementMatch!19980 (regOne!40472 (regOne!40472 baseR!101)))) b!7563234))

(assert (= (and b!7562439 (is-Concat!28825 (regOne!40472 (regOne!40472 baseR!101)))) b!7563235))

(assert (= (and b!7562439 (is-Star!19980 (regOne!40472 (regOne!40472 baseR!101)))) b!7563236))

(assert (= (and b!7562439 (is-Union!19980 (regOne!40472 (regOne!40472 baseR!101)))) b!7563237))

(declare-fun e!4503587 () Bool)

(assert (=> b!7562439 (= tp!2202273 e!4503587)))

(declare-fun b!7563241 () Bool)

(declare-fun tp!2202526 () Bool)

(declare-fun tp!2202528 () Bool)

(assert (=> b!7563241 (= e!4503587 (and tp!2202526 tp!2202528))))

(declare-fun b!7563238 () Bool)

(assert (=> b!7563238 (= e!4503587 tp_is_empty!50315)))

(declare-fun b!7563240 () Bool)

(declare-fun tp!2202527 () Bool)

(assert (=> b!7563240 (= e!4503587 tp!2202527)))

(declare-fun b!7563239 () Bool)

(declare-fun tp!2202524 () Bool)

(declare-fun tp!2202525 () Bool)

(assert (=> b!7563239 (= e!4503587 (and tp!2202524 tp!2202525))))

(assert (= (and b!7562439 (is-ElementMatch!19980 (regTwo!40472 (regOne!40472 baseR!101)))) b!7563238))

(assert (= (and b!7562439 (is-Concat!28825 (regTwo!40472 (regOne!40472 baseR!101)))) b!7563239))

(assert (= (and b!7562439 (is-Star!19980 (regTwo!40472 (regOne!40472 baseR!101)))) b!7563240))

(assert (= (and b!7562439 (is-Union!19980 (regTwo!40472 (regOne!40472 baseR!101)))) b!7563241))

(declare-fun e!4503588 () Bool)

(assert (=> b!7562488 (= tp!2202324 e!4503588)))

(declare-fun b!7563245 () Bool)

(declare-fun tp!2202531 () Bool)

(declare-fun tp!2202533 () Bool)

(assert (=> b!7563245 (= e!4503588 (and tp!2202531 tp!2202533))))

(declare-fun b!7563242 () Bool)

(assert (=> b!7563242 (= e!4503588 tp_is_empty!50315)))

(declare-fun b!7563244 () Bool)

(declare-fun tp!2202532 () Bool)

(assert (=> b!7563244 (= e!4503588 tp!2202532)))

(declare-fun b!7563243 () Bool)

(declare-fun tp!2202529 () Bool)

(declare-fun tp!2202530 () Bool)

(assert (=> b!7563243 (= e!4503588 (and tp!2202529 tp!2202530))))

(assert (= (and b!7562488 (is-ElementMatch!19980 (regOne!40473 (regTwo!40472 r!24333)))) b!7563242))

(assert (= (and b!7562488 (is-Concat!28825 (regOne!40473 (regTwo!40472 r!24333)))) b!7563243))

(assert (= (and b!7562488 (is-Star!19980 (regOne!40473 (regTwo!40472 r!24333)))) b!7563244))

(assert (= (and b!7562488 (is-Union!19980 (regOne!40473 (regTwo!40472 r!24333)))) b!7563245))

(declare-fun e!4503589 () Bool)

(assert (=> b!7562488 (= tp!2202326 e!4503589)))

(declare-fun b!7563249 () Bool)

(declare-fun tp!2202536 () Bool)

(declare-fun tp!2202538 () Bool)

(assert (=> b!7563249 (= e!4503589 (and tp!2202536 tp!2202538))))

(declare-fun b!7563246 () Bool)

(assert (=> b!7563246 (= e!4503589 tp_is_empty!50315)))

(declare-fun b!7563248 () Bool)

(declare-fun tp!2202537 () Bool)

(assert (=> b!7563248 (= e!4503589 tp!2202537)))

(declare-fun b!7563247 () Bool)

(declare-fun tp!2202534 () Bool)

(declare-fun tp!2202535 () Bool)

(assert (=> b!7563247 (= e!4503589 (and tp!2202534 tp!2202535))))

(assert (= (and b!7562488 (is-ElementMatch!19980 (regTwo!40473 (regTwo!40472 r!24333)))) b!7563246))

(assert (= (and b!7562488 (is-Concat!28825 (regTwo!40473 (regTwo!40472 r!24333)))) b!7563247))

(assert (= (and b!7562488 (is-Star!19980 (regTwo!40473 (regTwo!40472 r!24333)))) b!7563248))

(assert (= (and b!7562488 (is-Union!19980 (regTwo!40473 (regTwo!40472 r!24333)))) b!7563249))

(declare-fun e!4503590 () Bool)

(assert (=> b!7562487 (= tp!2202325 e!4503590)))

(declare-fun b!7563253 () Bool)

(declare-fun tp!2202541 () Bool)

(declare-fun tp!2202543 () Bool)

(assert (=> b!7563253 (= e!4503590 (and tp!2202541 tp!2202543))))

(declare-fun b!7563250 () Bool)

(assert (=> b!7563250 (= e!4503590 tp_is_empty!50315)))

(declare-fun b!7563252 () Bool)

(declare-fun tp!2202542 () Bool)

(assert (=> b!7563252 (= e!4503590 tp!2202542)))

(declare-fun b!7563251 () Bool)

(declare-fun tp!2202539 () Bool)

(declare-fun tp!2202540 () Bool)

(assert (=> b!7563251 (= e!4503590 (and tp!2202539 tp!2202540))))

(assert (= (and b!7562487 (is-ElementMatch!19980 (reg!20309 (regTwo!40472 r!24333)))) b!7563250))

(assert (= (and b!7562487 (is-Concat!28825 (reg!20309 (regTwo!40472 r!24333)))) b!7563251))

(assert (= (and b!7562487 (is-Star!19980 (reg!20309 (regTwo!40472 r!24333)))) b!7563252))

(assert (= (and b!7562487 (is-Union!19980 (reg!20309 (regTwo!40472 r!24333)))) b!7563253))

(declare-fun e!4503591 () Bool)

(assert (=> b!7562455 (= tp!2202288 e!4503591)))

(declare-fun b!7563257 () Bool)

(declare-fun tp!2202546 () Bool)

(declare-fun tp!2202548 () Bool)

(assert (=> b!7563257 (= e!4503591 (and tp!2202546 tp!2202548))))

(declare-fun b!7563254 () Bool)

(assert (=> b!7563254 (= e!4503591 tp_is_empty!50315)))

(declare-fun b!7563256 () Bool)

(declare-fun tp!2202547 () Bool)

(assert (=> b!7563256 (= e!4503591 tp!2202547)))

(declare-fun b!7563255 () Bool)

(declare-fun tp!2202544 () Bool)

(declare-fun tp!2202545 () Bool)

(assert (=> b!7563255 (= e!4503591 (and tp!2202544 tp!2202545))))

(assert (= (and b!7562455 (is-ElementMatch!19980 (regOne!40473 (reg!20309 r!24333)))) b!7563254))

(assert (= (and b!7562455 (is-Concat!28825 (regOne!40473 (reg!20309 r!24333)))) b!7563255))

(assert (= (and b!7562455 (is-Star!19980 (regOne!40473 (reg!20309 r!24333)))) b!7563256))

(assert (= (and b!7562455 (is-Union!19980 (regOne!40473 (reg!20309 r!24333)))) b!7563257))

(declare-fun e!4503592 () Bool)

(assert (=> b!7562455 (= tp!2202290 e!4503592)))

(declare-fun b!7563261 () Bool)

(declare-fun tp!2202551 () Bool)

(declare-fun tp!2202553 () Bool)

(assert (=> b!7563261 (= e!4503592 (and tp!2202551 tp!2202553))))

(declare-fun b!7563258 () Bool)

(assert (=> b!7563258 (= e!4503592 tp_is_empty!50315)))

(declare-fun b!7563260 () Bool)

(declare-fun tp!2202552 () Bool)

(assert (=> b!7563260 (= e!4503592 tp!2202552)))

(declare-fun b!7563259 () Bool)

(declare-fun tp!2202549 () Bool)

(declare-fun tp!2202550 () Bool)

(assert (=> b!7563259 (= e!4503592 (and tp!2202549 tp!2202550))))

(assert (= (and b!7562455 (is-ElementMatch!19980 (regTwo!40473 (reg!20309 r!24333)))) b!7563258))

(assert (= (and b!7562455 (is-Concat!28825 (regTwo!40473 (reg!20309 r!24333)))) b!7563259))

(assert (= (and b!7562455 (is-Star!19980 (regTwo!40473 (reg!20309 r!24333)))) b!7563260))

(assert (= (and b!7562455 (is-Union!19980 (regTwo!40473 (reg!20309 r!24333)))) b!7563261))

(declare-fun e!4503593 () Bool)

(assert (=> b!7562454 (= tp!2202289 e!4503593)))

(declare-fun b!7563265 () Bool)

(declare-fun tp!2202556 () Bool)

(declare-fun tp!2202558 () Bool)

(assert (=> b!7563265 (= e!4503593 (and tp!2202556 tp!2202558))))

(declare-fun b!7563262 () Bool)

(assert (=> b!7563262 (= e!4503593 tp_is_empty!50315)))

(declare-fun b!7563264 () Bool)

(declare-fun tp!2202557 () Bool)

(assert (=> b!7563264 (= e!4503593 tp!2202557)))

(declare-fun b!7563263 () Bool)

(declare-fun tp!2202554 () Bool)

(declare-fun tp!2202555 () Bool)

(assert (=> b!7563263 (= e!4503593 (and tp!2202554 tp!2202555))))

(assert (= (and b!7562454 (is-ElementMatch!19980 (reg!20309 (reg!20309 r!24333)))) b!7563262))

(assert (= (and b!7562454 (is-Concat!28825 (reg!20309 (reg!20309 r!24333)))) b!7563263))

(assert (= (and b!7562454 (is-Star!19980 (reg!20309 (reg!20309 r!24333)))) b!7563264))

(assert (= (and b!7562454 (is-Union!19980 (reg!20309 (reg!20309 r!24333)))) b!7563265))

(declare-fun e!4503594 () Bool)

(assert (=> b!7562486 (= tp!2202322 e!4503594)))

(declare-fun b!7563269 () Bool)

(declare-fun tp!2202561 () Bool)

(declare-fun tp!2202563 () Bool)

(assert (=> b!7563269 (= e!4503594 (and tp!2202561 tp!2202563))))

(declare-fun b!7563266 () Bool)

(assert (=> b!7563266 (= e!4503594 tp_is_empty!50315)))

(declare-fun b!7563268 () Bool)

(declare-fun tp!2202562 () Bool)

(assert (=> b!7563268 (= e!4503594 tp!2202562)))

(declare-fun b!7563267 () Bool)

(declare-fun tp!2202559 () Bool)

(declare-fun tp!2202560 () Bool)

(assert (=> b!7563267 (= e!4503594 (and tp!2202559 tp!2202560))))

(assert (= (and b!7562486 (is-ElementMatch!19980 (regOne!40472 (regTwo!40472 r!24333)))) b!7563266))

(assert (= (and b!7562486 (is-Concat!28825 (regOne!40472 (regTwo!40472 r!24333)))) b!7563267))

(assert (= (and b!7562486 (is-Star!19980 (regOne!40472 (regTwo!40472 r!24333)))) b!7563268))

(assert (= (and b!7562486 (is-Union!19980 (regOne!40472 (regTwo!40472 r!24333)))) b!7563269))

(declare-fun e!4503595 () Bool)

(assert (=> b!7562486 (= tp!2202323 e!4503595)))

(declare-fun b!7563273 () Bool)

(declare-fun tp!2202566 () Bool)

(declare-fun tp!2202568 () Bool)

(assert (=> b!7563273 (= e!4503595 (and tp!2202566 tp!2202568))))

(declare-fun b!7563270 () Bool)

(assert (=> b!7563270 (= e!4503595 tp_is_empty!50315)))

(declare-fun b!7563272 () Bool)

(declare-fun tp!2202567 () Bool)

(assert (=> b!7563272 (= e!4503595 tp!2202567)))

(declare-fun b!7563271 () Bool)

(declare-fun tp!2202564 () Bool)

(declare-fun tp!2202565 () Bool)

(assert (=> b!7563271 (= e!4503595 (and tp!2202564 tp!2202565))))

(assert (= (and b!7562486 (is-ElementMatch!19980 (regTwo!40472 (regTwo!40472 r!24333)))) b!7563270))

(assert (= (and b!7562486 (is-Concat!28825 (regTwo!40472 (regTwo!40472 r!24333)))) b!7563271))

(assert (= (and b!7562486 (is-Star!19980 (regTwo!40472 (regTwo!40472 r!24333)))) b!7563272))

(assert (= (and b!7562486 (is-Union!19980 (regTwo!40472 (regTwo!40472 r!24333)))) b!7563273))

(declare-fun e!4503596 () Bool)

(assert (=> b!7562463 (= tp!2202298 e!4503596)))

(declare-fun b!7563277 () Bool)

(declare-fun tp!2202571 () Bool)

(declare-fun tp!2202573 () Bool)

(assert (=> b!7563277 (= e!4503596 (and tp!2202571 tp!2202573))))

(declare-fun b!7563274 () Bool)

(assert (=> b!7563274 (= e!4503596 tp_is_empty!50315)))

(declare-fun b!7563276 () Bool)

(declare-fun tp!2202572 () Bool)

(assert (=> b!7563276 (= e!4503596 tp!2202572)))

(declare-fun b!7563275 () Bool)

(declare-fun tp!2202569 () Bool)

(declare-fun tp!2202570 () Bool)

(assert (=> b!7563275 (= e!4503596 (and tp!2202569 tp!2202570))))

(assert (= (and b!7562463 (is-ElementMatch!19980 (regOne!40473 (regTwo!40473 baseR!101)))) b!7563274))

(assert (= (and b!7562463 (is-Concat!28825 (regOne!40473 (regTwo!40473 baseR!101)))) b!7563275))

(assert (= (and b!7562463 (is-Star!19980 (regOne!40473 (regTwo!40473 baseR!101)))) b!7563276))

(assert (= (and b!7562463 (is-Union!19980 (regOne!40473 (regTwo!40473 baseR!101)))) b!7563277))

(declare-fun e!4503597 () Bool)

(assert (=> b!7562463 (= tp!2202300 e!4503597)))

(declare-fun b!7563281 () Bool)

(declare-fun tp!2202576 () Bool)

(declare-fun tp!2202578 () Bool)

(assert (=> b!7563281 (= e!4503597 (and tp!2202576 tp!2202578))))

(declare-fun b!7563278 () Bool)

(assert (=> b!7563278 (= e!4503597 tp_is_empty!50315)))

(declare-fun b!7563280 () Bool)

(declare-fun tp!2202577 () Bool)

(assert (=> b!7563280 (= e!4503597 tp!2202577)))

(declare-fun b!7563279 () Bool)

(declare-fun tp!2202574 () Bool)

(declare-fun tp!2202575 () Bool)

(assert (=> b!7563279 (= e!4503597 (and tp!2202574 tp!2202575))))

(assert (= (and b!7562463 (is-ElementMatch!19980 (regTwo!40473 (regTwo!40473 baseR!101)))) b!7563278))

(assert (= (and b!7562463 (is-Concat!28825 (regTwo!40473 (regTwo!40473 baseR!101)))) b!7563279))

(assert (= (and b!7562463 (is-Star!19980 (regTwo!40473 (regTwo!40473 baseR!101)))) b!7563280))

(assert (= (and b!7562463 (is-Union!19980 (regTwo!40473 (regTwo!40473 baseR!101)))) b!7563281))

(declare-fun e!4503598 () Bool)

(assert (=> b!7562462 (= tp!2202299 e!4503598)))

(declare-fun b!7563285 () Bool)

(declare-fun tp!2202581 () Bool)

(declare-fun tp!2202583 () Bool)

(assert (=> b!7563285 (= e!4503598 (and tp!2202581 tp!2202583))))

(declare-fun b!7563282 () Bool)

(assert (=> b!7563282 (= e!4503598 tp_is_empty!50315)))

(declare-fun b!7563284 () Bool)

(declare-fun tp!2202582 () Bool)

(assert (=> b!7563284 (= e!4503598 tp!2202582)))

(declare-fun b!7563283 () Bool)

(declare-fun tp!2202579 () Bool)

(declare-fun tp!2202580 () Bool)

(assert (=> b!7563283 (= e!4503598 (and tp!2202579 tp!2202580))))

(assert (= (and b!7562462 (is-ElementMatch!19980 (reg!20309 (regTwo!40473 baseR!101)))) b!7563282))

(assert (= (and b!7562462 (is-Concat!28825 (reg!20309 (regTwo!40473 baseR!101)))) b!7563283))

(assert (= (and b!7562462 (is-Star!19980 (reg!20309 (regTwo!40473 baseR!101)))) b!7563284))

(assert (= (and b!7562462 (is-Union!19980 (reg!20309 (regTwo!40473 baseR!101)))) b!7563285))

(declare-fun e!4503599 () Bool)

(assert (=> b!7562453 (= tp!2202286 e!4503599)))

(declare-fun b!7563289 () Bool)

(declare-fun tp!2202586 () Bool)

(declare-fun tp!2202588 () Bool)

(assert (=> b!7563289 (= e!4503599 (and tp!2202586 tp!2202588))))

(declare-fun b!7563286 () Bool)

(assert (=> b!7563286 (= e!4503599 tp_is_empty!50315)))

(declare-fun b!7563288 () Bool)

(declare-fun tp!2202587 () Bool)

(assert (=> b!7563288 (= e!4503599 tp!2202587)))

(declare-fun b!7563287 () Bool)

(declare-fun tp!2202584 () Bool)

(declare-fun tp!2202585 () Bool)

(assert (=> b!7563287 (= e!4503599 (and tp!2202584 tp!2202585))))

(assert (= (and b!7562453 (is-ElementMatch!19980 (regOne!40472 (reg!20309 r!24333)))) b!7563286))

(assert (= (and b!7562453 (is-Concat!28825 (regOne!40472 (reg!20309 r!24333)))) b!7563287))

(assert (= (and b!7562453 (is-Star!19980 (regOne!40472 (reg!20309 r!24333)))) b!7563288))

(assert (= (and b!7562453 (is-Union!19980 (regOne!40472 (reg!20309 r!24333)))) b!7563289))

(declare-fun e!4503600 () Bool)

(assert (=> b!7562453 (= tp!2202287 e!4503600)))

(declare-fun b!7563293 () Bool)

(declare-fun tp!2202591 () Bool)

(declare-fun tp!2202593 () Bool)

(assert (=> b!7563293 (= e!4503600 (and tp!2202591 tp!2202593))))

(declare-fun b!7563290 () Bool)

(assert (=> b!7563290 (= e!4503600 tp_is_empty!50315)))

(declare-fun b!7563292 () Bool)

(declare-fun tp!2202592 () Bool)

(assert (=> b!7563292 (= e!4503600 tp!2202592)))

(declare-fun b!7563291 () Bool)

(declare-fun tp!2202589 () Bool)

(declare-fun tp!2202590 () Bool)

(assert (=> b!7563291 (= e!4503600 (and tp!2202589 tp!2202590))))

(assert (= (and b!7562453 (is-ElementMatch!19980 (regTwo!40472 (reg!20309 r!24333)))) b!7563290))

(assert (= (and b!7562453 (is-Concat!28825 (regTwo!40472 (reg!20309 r!24333)))) b!7563291))

(assert (= (and b!7562453 (is-Star!19980 (regTwo!40472 (reg!20309 r!24333)))) b!7563292))

(assert (= (and b!7562453 (is-Union!19980 (regTwo!40472 (reg!20309 r!24333)))) b!7563293))

(declare-fun e!4503601 () Bool)

(assert (=> b!7562471 (= tp!2202308 e!4503601)))

(declare-fun b!7563297 () Bool)

(declare-fun tp!2202596 () Bool)

(declare-fun tp!2202598 () Bool)

(assert (=> b!7563297 (= e!4503601 (and tp!2202596 tp!2202598))))

(declare-fun b!7563294 () Bool)

(assert (=> b!7563294 (= e!4503601 tp_is_empty!50315)))

(declare-fun b!7563296 () Bool)

(declare-fun tp!2202597 () Bool)

(assert (=> b!7563296 (= e!4503601 tp!2202597)))

(declare-fun b!7563295 () Bool)

(declare-fun tp!2202594 () Bool)

(declare-fun tp!2202595 () Bool)

(assert (=> b!7563295 (= e!4503601 (and tp!2202594 tp!2202595))))

(assert (= (and b!7562471 (is-ElementMatch!19980 (regOne!40473 (regOne!40473 r!24333)))) b!7563294))

(assert (= (and b!7562471 (is-Concat!28825 (regOne!40473 (regOne!40473 r!24333)))) b!7563295))

(assert (= (and b!7562471 (is-Star!19980 (regOne!40473 (regOne!40473 r!24333)))) b!7563296))

(assert (= (and b!7562471 (is-Union!19980 (regOne!40473 (regOne!40473 r!24333)))) b!7563297))

(declare-fun e!4503602 () Bool)

(assert (=> b!7562471 (= tp!2202310 e!4503602)))

(declare-fun b!7563301 () Bool)

(declare-fun tp!2202601 () Bool)

(declare-fun tp!2202603 () Bool)

(assert (=> b!7563301 (= e!4503602 (and tp!2202601 tp!2202603))))

(declare-fun b!7563298 () Bool)

(assert (=> b!7563298 (= e!4503602 tp_is_empty!50315)))

(declare-fun b!7563300 () Bool)

(declare-fun tp!2202602 () Bool)

(assert (=> b!7563300 (= e!4503602 tp!2202602)))

(declare-fun b!7563299 () Bool)

(declare-fun tp!2202599 () Bool)

(declare-fun tp!2202600 () Bool)

(assert (=> b!7563299 (= e!4503602 (and tp!2202599 tp!2202600))))

(assert (= (and b!7562471 (is-ElementMatch!19980 (regTwo!40473 (regOne!40473 r!24333)))) b!7563298))

(assert (= (and b!7562471 (is-Concat!28825 (regTwo!40473 (regOne!40473 r!24333)))) b!7563299))

(assert (= (and b!7562471 (is-Star!19980 (regTwo!40473 (regOne!40473 r!24333)))) b!7563300))

(assert (= (and b!7562471 (is-Union!19980 (regTwo!40473 (regOne!40473 r!24333)))) b!7563301))

(declare-fun e!4503603 () Bool)

(assert (=> b!7562470 (= tp!2202309 e!4503603)))

(declare-fun b!7563305 () Bool)

(declare-fun tp!2202606 () Bool)

(declare-fun tp!2202608 () Bool)

(assert (=> b!7563305 (= e!4503603 (and tp!2202606 tp!2202608))))

(declare-fun b!7563302 () Bool)

(assert (=> b!7563302 (= e!4503603 tp_is_empty!50315)))

(declare-fun b!7563304 () Bool)

(declare-fun tp!2202607 () Bool)

(assert (=> b!7563304 (= e!4503603 tp!2202607)))

(declare-fun b!7563303 () Bool)

(declare-fun tp!2202604 () Bool)

(declare-fun tp!2202605 () Bool)

(assert (=> b!7563303 (= e!4503603 (and tp!2202604 tp!2202605))))

(assert (= (and b!7562470 (is-ElementMatch!19980 (reg!20309 (regOne!40473 r!24333)))) b!7563302))

(assert (= (and b!7562470 (is-Concat!28825 (reg!20309 (regOne!40473 r!24333)))) b!7563303))

(assert (= (and b!7562470 (is-Star!19980 (reg!20309 (regOne!40473 r!24333)))) b!7563304))

(assert (= (and b!7562470 (is-Union!19980 (reg!20309 (regOne!40473 r!24333)))) b!7563305))

(declare-fun e!4503604 () Bool)

(assert (=> b!7562461 (= tp!2202296 e!4503604)))

(declare-fun b!7563309 () Bool)

(declare-fun tp!2202611 () Bool)

(declare-fun tp!2202613 () Bool)

(assert (=> b!7563309 (= e!4503604 (and tp!2202611 tp!2202613))))

(declare-fun b!7563306 () Bool)

(assert (=> b!7563306 (= e!4503604 tp_is_empty!50315)))

(declare-fun b!7563308 () Bool)

(declare-fun tp!2202612 () Bool)

(assert (=> b!7563308 (= e!4503604 tp!2202612)))

(declare-fun b!7563307 () Bool)

(declare-fun tp!2202609 () Bool)

(declare-fun tp!2202610 () Bool)

(assert (=> b!7563307 (= e!4503604 (and tp!2202609 tp!2202610))))

(assert (= (and b!7562461 (is-ElementMatch!19980 (regOne!40472 (regTwo!40473 baseR!101)))) b!7563306))

(assert (= (and b!7562461 (is-Concat!28825 (regOne!40472 (regTwo!40473 baseR!101)))) b!7563307))

(assert (= (and b!7562461 (is-Star!19980 (regOne!40472 (regTwo!40473 baseR!101)))) b!7563308))

(assert (= (and b!7562461 (is-Union!19980 (regOne!40472 (regTwo!40473 baseR!101)))) b!7563309))

(declare-fun e!4503605 () Bool)

(assert (=> b!7562461 (= tp!2202297 e!4503605)))

(declare-fun b!7563313 () Bool)

(declare-fun tp!2202616 () Bool)

(declare-fun tp!2202618 () Bool)

(assert (=> b!7563313 (= e!4503605 (and tp!2202616 tp!2202618))))

(declare-fun b!7563310 () Bool)

(assert (=> b!7563310 (= e!4503605 tp_is_empty!50315)))

(declare-fun b!7563312 () Bool)

(declare-fun tp!2202617 () Bool)

(assert (=> b!7563312 (= e!4503605 tp!2202617)))

(declare-fun b!7563311 () Bool)

(declare-fun tp!2202614 () Bool)

(declare-fun tp!2202615 () Bool)

(assert (=> b!7563311 (= e!4503605 (and tp!2202614 tp!2202615))))

(assert (= (and b!7562461 (is-ElementMatch!19980 (regTwo!40472 (regTwo!40473 baseR!101)))) b!7563310))

(assert (= (and b!7562461 (is-Concat!28825 (regTwo!40472 (regTwo!40473 baseR!101)))) b!7563311))

(assert (= (and b!7562461 (is-Star!19980 (regTwo!40472 (regTwo!40473 baseR!101)))) b!7563312))

(assert (= (and b!7562461 (is-Union!19980 (regTwo!40472 (regTwo!40473 baseR!101)))) b!7563313))

(declare-fun b!7563314 () Bool)

(declare-fun e!4503606 () Bool)

(declare-fun tp!2202619 () Bool)

(assert (=> b!7563314 (= e!4503606 (and tp_is_empty!50315 tp!2202619))))

(assert (=> b!7562478 (= tp!2202316 e!4503606)))

(assert (= (and b!7562478 (is-Cons!72739 (t!387592 (t!387592 testedP!423)))) b!7563314))

(declare-fun e!4503607 () Bool)

(assert (=> b!7562469 (= tp!2202306 e!4503607)))

(declare-fun b!7563318 () Bool)

(declare-fun tp!2202622 () Bool)

(declare-fun tp!2202624 () Bool)

(assert (=> b!7563318 (= e!4503607 (and tp!2202622 tp!2202624))))

(declare-fun b!7563315 () Bool)

(assert (=> b!7563315 (= e!4503607 tp_is_empty!50315)))

(declare-fun b!7563317 () Bool)

(declare-fun tp!2202623 () Bool)

(assert (=> b!7563317 (= e!4503607 tp!2202623)))

(declare-fun b!7563316 () Bool)

(declare-fun tp!2202620 () Bool)

(declare-fun tp!2202621 () Bool)

(assert (=> b!7563316 (= e!4503607 (and tp!2202620 tp!2202621))))

(assert (= (and b!7562469 (is-ElementMatch!19980 (regOne!40472 (regOne!40473 r!24333)))) b!7563315))

(assert (= (and b!7562469 (is-Concat!28825 (regOne!40472 (regOne!40473 r!24333)))) b!7563316))

(assert (= (and b!7562469 (is-Star!19980 (regOne!40472 (regOne!40473 r!24333)))) b!7563317))

(assert (= (and b!7562469 (is-Union!19980 (regOne!40472 (regOne!40473 r!24333)))) b!7563318))

(declare-fun e!4503608 () Bool)

(assert (=> b!7562469 (= tp!2202307 e!4503608)))

(declare-fun b!7563322 () Bool)

(declare-fun tp!2202627 () Bool)

(declare-fun tp!2202629 () Bool)

(assert (=> b!7563322 (= e!4503608 (and tp!2202627 tp!2202629))))

(declare-fun b!7563319 () Bool)

(assert (=> b!7563319 (= e!4503608 tp_is_empty!50315)))

(declare-fun b!7563321 () Bool)

(declare-fun tp!2202628 () Bool)

(assert (=> b!7563321 (= e!4503608 tp!2202628)))

(declare-fun b!7563320 () Bool)

(declare-fun tp!2202625 () Bool)

(declare-fun tp!2202626 () Bool)

(assert (=> b!7563320 (= e!4503608 (and tp!2202625 tp!2202626))))

(assert (= (and b!7562469 (is-ElementMatch!19980 (regTwo!40472 (regOne!40473 r!24333)))) b!7563319))

(assert (= (and b!7562469 (is-Concat!28825 (regTwo!40472 (regOne!40473 r!24333)))) b!7563320))

(assert (= (and b!7562469 (is-Star!19980 (regTwo!40472 (regOne!40473 r!24333)))) b!7563321))

(assert (= (and b!7562469 (is-Union!19980 (regTwo!40472 (regOne!40473 r!24333)))) b!7563322))

(declare-fun e!4503609 () Bool)

(assert (=> b!7562445 (= tp!2202279 e!4503609)))

(declare-fun b!7563326 () Bool)

(declare-fun tp!2202632 () Bool)

(declare-fun tp!2202634 () Bool)

(assert (=> b!7563326 (= e!4503609 (and tp!2202632 tp!2202634))))

(declare-fun b!7563323 () Bool)

(assert (=> b!7563323 (= e!4503609 tp_is_empty!50315)))

(declare-fun b!7563325 () Bool)

(declare-fun tp!2202633 () Bool)

(assert (=> b!7563325 (= e!4503609 tp!2202633)))

(declare-fun b!7563324 () Bool)

(declare-fun tp!2202630 () Bool)

(declare-fun tp!2202631 () Bool)

(assert (=> b!7563324 (= e!4503609 (and tp!2202630 tp!2202631))))

(assert (= (and b!7562445 (is-ElementMatch!19980 (regOne!40473 (regTwo!40472 baseR!101)))) b!7563323))

(assert (= (and b!7562445 (is-Concat!28825 (regOne!40473 (regTwo!40472 baseR!101)))) b!7563324))

(assert (= (and b!7562445 (is-Star!19980 (regOne!40473 (regTwo!40472 baseR!101)))) b!7563325))

(assert (= (and b!7562445 (is-Union!19980 (regOne!40473 (regTwo!40472 baseR!101)))) b!7563326))

(declare-fun e!4503610 () Bool)

(assert (=> b!7562445 (= tp!2202281 e!4503610)))

(declare-fun b!7563330 () Bool)

(declare-fun tp!2202637 () Bool)

(declare-fun tp!2202639 () Bool)

(assert (=> b!7563330 (= e!4503610 (and tp!2202637 tp!2202639))))

(declare-fun b!7563327 () Bool)

(assert (=> b!7563327 (= e!4503610 tp_is_empty!50315)))

(declare-fun b!7563329 () Bool)

(declare-fun tp!2202638 () Bool)

(assert (=> b!7563329 (= e!4503610 tp!2202638)))

(declare-fun b!7563328 () Bool)

(declare-fun tp!2202635 () Bool)

(declare-fun tp!2202636 () Bool)

(assert (=> b!7563328 (= e!4503610 (and tp!2202635 tp!2202636))))

(assert (= (and b!7562445 (is-ElementMatch!19980 (regTwo!40473 (regTwo!40472 baseR!101)))) b!7563327))

(assert (= (and b!7562445 (is-Concat!28825 (regTwo!40473 (regTwo!40472 baseR!101)))) b!7563328))

(assert (= (and b!7562445 (is-Star!19980 (regTwo!40473 (regTwo!40472 baseR!101)))) b!7563329))

(assert (= (and b!7562445 (is-Union!19980 (regTwo!40473 (regTwo!40472 baseR!101)))) b!7563330))

(declare-fun e!4503611 () Bool)

(assert (=> b!7562444 (= tp!2202280 e!4503611)))

(declare-fun b!7563334 () Bool)

(declare-fun tp!2202642 () Bool)

(declare-fun tp!2202644 () Bool)

(assert (=> b!7563334 (= e!4503611 (and tp!2202642 tp!2202644))))

(declare-fun b!7563331 () Bool)

(assert (=> b!7563331 (= e!4503611 tp_is_empty!50315)))

(declare-fun b!7563333 () Bool)

(declare-fun tp!2202643 () Bool)

(assert (=> b!7563333 (= e!4503611 tp!2202643)))

(declare-fun b!7563332 () Bool)

(declare-fun tp!2202640 () Bool)

(declare-fun tp!2202641 () Bool)

(assert (=> b!7563332 (= e!4503611 (and tp!2202640 tp!2202641))))

(assert (= (and b!7562444 (is-ElementMatch!19980 (reg!20309 (regTwo!40472 baseR!101)))) b!7563331))

(assert (= (and b!7562444 (is-Concat!28825 (reg!20309 (regTwo!40472 baseR!101)))) b!7563332))

(assert (= (and b!7562444 (is-Star!19980 (reg!20309 (regTwo!40472 baseR!101)))) b!7563333))

(assert (= (and b!7562444 (is-Union!19980 (reg!20309 (regTwo!40472 baseR!101)))) b!7563334))

(push 1)

(assert (not b!7562785))

(assert (not b!7563235))

(assert (not b!7562846))

(assert (not b!7563196))

(assert (not b!7563217))

(assert (not b!7563245))

(assert (not b!7562801))

(assert (not b!7563316))

(assert (not b!7563021))

(assert (not b!7562776))

(assert (not b!7563187))

(assert (not b!7563205))

(assert (not b!7563285))

(assert (not b!7563265))

(assert (not b!7563197))

(assert (not bm!693330))

(assert (not b!7563240))

(assert (not b!7562860))

(assert (not bm!693358))

(assert (not b!7562812))

(assert (not d!2315320))

(assert (not bm!693376))

(assert (not b!7563277))

(assert (not b!7563159))

(assert (not bm!693350))

(assert (not b!7562974))

(assert (not b!7563188))

(assert (not b!7562781))

(assert (not b!7563237))

(assert (not bm!693365))

(assert (not b!7563314))

(assert (not b!7563332))

(assert (not b!7562727))

(assert (not b!7563311))

(assert (not d!2315308))

(assert (not b!7563146))

(assert (not b!7563134))

(assert (not b!7562862))

(assert (not b!7562949))

(assert (not b!7562984))

(assert (not b!7563175))

(assert (not b!7562818))

(assert (not d!2315236))

(assert (not b!7562995))

(assert (not b!7563100))

(assert (not b!7563155))

(assert (not b!7563223))

(assert (not b!7563047))

(assert (not b!7563184))

(assert (not b!7562902))

(assert (not b!7562947))

(assert (not b!7562719))

(assert (not d!2315416))

(assert (not b!7563328))

(assert (not b!7562994))

(assert (not b!7562789))

(assert (not b!7562790))

(assert (not bm!693343))

(assert (not b!7563139))

(assert (not b!7563151))

(assert (not b!7563063))

(assert (not b!7562786))

(assert (not b!7563322))

(assert (not b!7563299))

(assert (not b!7563264))

(assert (not b!7563239))

(assert (not d!2315292))

(assert (not d!2315310))

(assert (not d!2315436))

(assert (not b!7562813))

(assert (not b!7563267))

(assert (not bm!693323))

(assert (not b!7563086))

(assert (not b!7563041))

(assert (not bm!693314))

(assert (not b!7563008))

(assert (not b!7563066))

(assert (not b!7562985))

(assert (not b!7563329))

(assert (not b!7562962))

(assert (not b!7563207))

(assert (not b!7563211))

(assert (not b!7563300))

(assert (not b!7562740))

(assert (not b!7563321))

(assert (not b!7563252))

(assert (not b!7563122))

(assert (not b!7562935))

(assert (not b!7562713))

(assert (not d!2315354))

(assert (not b!7562874))

(assert (not b!7563259))

(assert (not b!7562919))

(assert (not bm!693326))

(assert (not d!2315338))

(assert (not b!7563233))

(assert (not b!7563325))

(assert (not b!7563253))

(assert (not d!2315222))

(assert (not d!2315302))

(assert (not b!7563227))

(assert (not b!7562982))

(assert (not b!7562880))

(assert (not b!7563213))

(assert (not b!7562765))

(assert (not b!7562820))

(assert (not b!7563162))

(assert (not bm!693345))

(assert (not d!2315350))

(assert tp_is_empty!50315)

(assert (not b!7563179))

(assert (not d!2315200))

(assert (not d!2315324))

(assert (not b!7563078))

(assert (not b!7562881))

(assert (not b!7563241))

(assert (not b!7563070))

(assert (not b!7563231))

(assert (not d!2315418))

(assert (not b!7563166))

(assert (not b!7563326))

(assert (not b!7563163))

(assert (not d!2315378))

(assert (not b!7563160))

(assert (not b!7563072))

(assert (not b!7562933))

(assert (not b!7563229))

(assert (not b!7563141))

(assert (not b!7563260))

(assert (not b!7563305))

(assert (not bm!693362))

(assert (not b!7563224))

(assert (not b!7562955))

(assert (not b!7563244))

(assert (not d!2315284))

(assert (not b!7562726))

(assert (not bm!693324))

(assert (not b!7563043))

(assert (not b!7563291))

(assert (not d!2315224))

(assert (not b!7563318))

(assert (not b!7563024))

(assert (not b!7563121))

(assert (not d!2315376))

(assert (not d!2315264))

(assert (not b!7563177))

(assert (not bm!693347))

(assert (not b!7562884))

(assert (not b!7563022))

(assert (not b!7563135))

(assert (not b!7563199))

(assert (not b!7562990))

(assert (not b!7563333))

(assert (not b!7563167))

(assert (not b!7563082))

(assert (not bm!693357))

(assert (not bm!693322))

(assert (not d!2315426))

(assert (not b!7563049))

(assert (not d!2315402))

(assert (not b!7562737))

(assert (not b!7563215))

(assert (not b!7563317))

(assert (not b!7563243))

(assert (not bm!693315))

(assert (not b!7562863))

(assert (not d!2315352))

(assert (not b!7563042))

(assert (not b!7562767))

(assert (not b!7563045))

(assert (not d!2315246))

(assert (not b!7563189))

(assert (not b!7563219))

(assert (not b!7563212))

(assert (not b!7563153))

(assert (not b!7563312))

(assert (not b!7563193))

(assert (not b!7563301))

(assert (not b!7562878))

(assert (not b!7563118))

(assert (not b!7562771))

(assert (not b!7563273))

(assert (not b!7563292))

(assert (not b!7562772))

(assert (not bm!693360))

(assert (not b!7562871))

(assert (not b!7562951))

(assert (not b!7562723))

(assert (not b!7563208))

(assert (not b!7563133))

(assert (not b!7563123))

(assert (not b!7563228))

(assert (not bm!693375))

(assert (not b!7562769))

(assert (not b!7563117))

(assert (not bm!693334))

(assert (not b!7562826))

(assert (not d!2315392))

(assert (not b!7563279))

(assert (not b!7563255))

(assert (not d!2315218))

(assert (not b!7563157))

(assert (not b!7563183))

(assert (not b!7563158))

(assert (not b!7562779))

(assert (not b!7562816))

(assert (not b!7562797))

(assert (not b!7563295))

(assert (not d!2315250))

(assert (not b!7563138))

(assert (not b!7563308))

(assert (not bm!693373))

(assert (not b!7563304))

(assert (not b!7563247))

(assert (not bm!693335))

(assert (not b!7562892))

(assert (not bm!693374))

(assert (not b!7563225))

(assert (not bm!693329))

(assert (not b!7563334))

(assert (not d!2315432))

(assert (not b!7563221))

(assert (not d!2315348))

(assert (not b!7562822))

(assert (not d!2315334))

(assert (not b!7562992))

(assert (not b!7562741))

(assert (not b!7562886))

(assert (not b!7563313))

(assert (not b!7563297))

(assert (not b!7563143))

(assert (not b!7563032))

(assert (not b!7562887))

(assert (not d!2315394))

(assert (not b!7562948))

(assert (not b!7562996))

(assert (not b!7562730))

(assert (not b!7562969))

(assert (not d!2315356))

(assert (not b!7563263))

(assert (not b!7563220))

(assert (not bm!693342))

(assert (not d!2315314))

(assert (not b!7563068))

(assert (not b!7563288))

(assert (not bm!693321))

(assert (not bm!693370))

(assert (not b!7563085))

(assert (not b!7563007))

(assert (not b!7563236))

(assert (not b!7562829))

(assert (not b!7563303))

(assert (not b!7562931))

(assert (not b!7563145))

(assert (not b!7563248))

(assert (not b!7563142))

(assert (not b!7563089))

(assert (not b!7562927))

(assert (not b!7562848))

(assert (not b!7562911))

(assert (not b!7563249))

(assert (not d!2315226))

(assert (not b!7563320))

(assert (not bm!693368))

(assert (not b!7562910))

(assert (not bm!693353))

(assert (not b!7563168))

(assert (not b!7563330))

(assert (not b!7563137))

(assert (not b!7562938))

(assert (not bm!693338))

(assert (not b!7563309))

(assert (not b!7563261))

(assert (not b!7563171))

(assert (not b!7562768))

(assert (not b!7563280))

(assert (not b!7562725))

(assert (not b!7562875))

(assert (not d!2315248))

(assert (not b!7563154))

(assert (not b!7563271))

(assert (not b!7562999))

(assert (not b!7562721))

(assert (not b!7563015))

(assert (not b!7563307))

(assert (not b!7563173))

(assert (not b!7563185))

(assert (not d!2315400))

(assert (not b!7562928))

(assert (not b!7563216))

(assert (not b!7563191))

(assert (not b!7562838))

(assert (not b!7563011))

(assert (not b!7562868))

(assert (not b!7563289))

(assert (not b!7562953))

(assert (not b!7563176))

(assert (not b!7563204))

(assert (not b!7562804))

(assert (not b!7563087))

(assert (not b!7563269))

(assert (not b!7563287))

(assert (not b!7563195))

(assert (not bm!693369))

(assert (not b!7563130))

(assert (not d!2315362))

(assert (not b!7563012))

(assert (not b!7563268))

(assert (not d!2315410))

(assert (not b!7563296))

(assert (not bm!693354))

(assert (not b!7563203))

(assert (not b!7563125))

(assert (not b!7563293))

(assert (not b!7562914))

(assert (not b!7563180))

(assert (not b!7563164))

(assert (not b!7563232))

(assert (not bm!693344))

(assert (not b!7563091))

(assert (not d!2315390))

(assert (not b!7562711))

(assert (not b!7563109))

(assert (not b!7563170))

(assert (not d!2315428))

(assert (not b!7563281))

(assert (not b!7563181))

(assert (not d!2315388))

(assert (not b!7563150))

(assert (not bm!693363))

(assert (not b!7563172))

(assert (not b!7563056))

(assert (not d!2315326))

(assert (not b!7563149))

(assert (not d!2315234))

(assert (not b!7563079))

(assert (not b!7563147))

(assert (not b!7563027))

(assert (not d!2315322))

(assert (not d!2315438))

(assert (not bm!693339))

(assert (not b!7563276))

(assert (not b!7562799))

(assert (not b!7563074))

(assert (not bm!693348))

(assert (not b!7563251))

(assert (not b!7563075))

(assert (not d!2315306))

(assert (not d!2315404))

(assert (not b!7563019))

(assert (not b!7563257))

(assert (not bm!693327))

(assert (not d!2315444))

(assert (not b!7563324))

(assert (not b!7562852))

(assert (not b!7563093))

(assert (not b!7562775))

(assert (not b!7562867))

(assert (not b!7563126))

(assert (not b!7562793))

(assert (not b!7562988))

(assert (not b!7563017))

(assert (not bm!693359))

(assert (not b!7563284))

(assert (not d!2315300))

(assert (not b!7563192))

(assert (not b!7563275))

(assert (not b!7563028))

(assert (not b!7562817))

(assert (not b!7562866))

(assert (not b!7562795))

(assert (not b!7563256))

(assert (not b!7563272))

(assert (not b!7562783))

(assert (not b!7563129))

(assert (not d!2315398))

(assert (not b!7563200))

(assert (not b!7562824))

(assert (not b!7562870))

(assert (not b!7563201))

(assert (not b!7563209))

(assert (not d!2315386))

(assert (not b!7563283))

(assert (not b!7562916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

