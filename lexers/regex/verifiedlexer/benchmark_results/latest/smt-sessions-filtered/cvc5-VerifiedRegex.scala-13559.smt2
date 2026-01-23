; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!729534 () Bool)

(assert start!729534)

(declare-fun b!7543220 () Bool)

(declare-fun e!4494121 () Bool)

(declare-fun tp!2194095 () Bool)

(declare-fun tp!2194096 () Bool)

(assert (=> b!7543220 (= e!4494121 (and tp!2194095 tp!2194096))))

(declare-fun b!7543221 () Bool)

(declare-fun res!3023073 () Bool)

(declare-fun e!4494117 () Bool)

(assert (=> b!7543221 (=> res!3023073 e!4494117)))

(declare-fun lt!2644038 () Int)

(declare-datatypes ((C!40150 0))(
  ( (C!40151 (val!30515 Int)) )
))
(declare-datatypes ((List!72795 0))(
  ( (Nil!72671) (Cons!72671 (h!79119 C!40150) (t!387508 List!72795)) )
))
(declare-fun input!7874 () List!72795)

(declare-fun size!42408 (List!72795) Int)

(assert (=> b!7543221 (= res!3023073 (>= lt!2644038 (size!42408 input!7874)))))

(declare-fun b!7543222 () Bool)

(declare-fun res!3023068 () Bool)

(declare-fun e!4494122 () Bool)

(assert (=> b!7543222 (=> (not res!3023068) (not e!4494122))))

(declare-fun testedP!423 () List!72795)

(declare-fun isPrefix!6118 (List!72795 List!72795) Bool)

(assert (=> b!7543222 (= res!3023068 (isPrefix!6118 testedP!423 input!7874))))

(declare-fun b!7543223 () Bool)

(declare-fun e!4494119 () Bool)

(declare-fun tp_is_empty!50179 () Bool)

(declare-fun tp!2194097 () Bool)

(assert (=> b!7543223 (= e!4494119 (and tp_is_empty!50179 tp!2194097))))

(declare-fun b!7543224 () Bool)

(declare-fun res!3023071 () Bool)

(declare-fun e!4494118 () Bool)

(assert (=> b!7543224 (=> res!3023071 e!4494118)))

(declare-fun lt!2644035 () List!72795)

(declare-fun ++!17429 (List!72795 List!72795) List!72795)

(assert (=> b!7543224 (= res!3023071 (not (= (++!17429 testedP!423 lt!2644035) input!7874)))))

(declare-fun b!7543225 () Bool)

(declare-fun res!3023077 () Bool)

(assert (=> b!7543225 (=> res!3023077 e!4494117)))

(declare-datatypes ((Regex!19912 0))(
  ( (ElementMatch!19912 (c!1392647 C!40150)) (Concat!28757 (regOne!40336 Regex!19912) (regTwo!40336 Regex!19912)) (EmptyExpr!19912) (Star!19912 (reg!20241 Regex!19912)) (EmptyLang!19912) (Union!19912 (regOne!40337 Regex!19912) (regTwo!40337 Regex!19912)) )
))
(declare-fun baseR!101 () Regex!19912)

(declare-fun r!24333 () Regex!19912)

(declare-fun derivative!444 (Regex!19912 List!72795) Regex!19912)

(assert (=> b!7543225 (= res!3023077 (not (= (derivative!444 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7543226 () Bool)

(declare-fun e!4494113 () Bool)

(declare-fun tp!2194094 () Bool)

(assert (=> b!7543226 (= e!4494113 (and tp_is_empty!50179 tp!2194094))))

(declare-fun b!7543227 () Bool)

(assert (=> b!7543227 (= e!4494121 tp_is_empty!50179)))

(declare-fun b!7543228 () Bool)

(declare-fun e!4494120 () Bool)

(assert (=> b!7543228 (= e!4494122 e!4494120)))

(declare-fun res!3023081 () Bool)

(assert (=> b!7543228 (=> (not res!3023081) (not e!4494120))))

(declare-fun lt!2644041 () Int)

(assert (=> b!7543228 (= res!3023081 (>= lt!2644041 lt!2644038))))

(assert (=> b!7543228 (= lt!2644038 (size!42408 testedP!423))))

(declare-fun knownP!30 () List!72795)

(assert (=> b!7543228 (= lt!2644041 (size!42408 knownP!30))))

(declare-fun b!7543229 () Bool)

(declare-fun tp!2194101 () Bool)

(declare-fun tp!2194099 () Bool)

(assert (=> b!7543229 (= e!4494121 (and tp!2194101 tp!2194099))))

(declare-fun b!7543230 () Bool)

(declare-fun res!3023069 () Bool)

(assert (=> b!7543230 (=> (not res!3023069) (not e!4494122))))

(assert (=> b!7543230 (= res!3023069 (isPrefix!6118 knownP!30 input!7874))))

(declare-fun b!7543231 () Bool)

(declare-fun res!3023075 () Bool)

(assert (=> b!7543231 (=> res!3023075 e!4494117)))

(declare-fun lostCause!1704 (Regex!19912) Bool)

(assert (=> b!7543231 (= res!3023075 (lostCause!1704 r!24333))))

(declare-fun b!7543232 () Bool)

(declare-fun e!4494112 () Bool)

(declare-fun tp!2194102 () Bool)

(assert (=> b!7543232 (= e!4494112 tp!2194102)))

(declare-fun res!3023065 () Bool)

(assert (=> start!729534 (=> (not res!3023065) (not e!4494122))))

(declare-fun validRegex!10340 (Regex!19912) Bool)

(assert (=> start!729534 (= res!3023065 (validRegex!10340 baseR!101))))

(assert (=> start!729534 e!4494122))

(assert (=> start!729534 e!4494121))

(declare-fun e!4494124 () Bool)

(assert (=> start!729534 e!4494124))

(assert (=> start!729534 e!4494113))

(assert (=> start!729534 e!4494119))

(assert (=> start!729534 e!4494112))

(declare-fun b!7543233 () Bool)

(declare-fun e!4494123 () Bool)

(assert (=> b!7543233 (= e!4494123 e!4494118)))

(declare-fun res!3023067 () Bool)

(assert (=> b!7543233 (=> res!3023067 e!4494118)))

(declare-fun lt!2644030 () List!72795)

(assert (=> b!7543233 (= res!3023067 (not (= lt!2644030 input!7874)))))

(declare-fun lt!2644032 () List!72795)

(declare-fun lt!2644029 () List!72795)

(assert (=> b!7543233 (= lt!2644030 (++!17429 lt!2644032 lt!2644029))))

(declare-fun lt!2644037 () List!72795)

(assert (=> b!7543233 (= lt!2644032 (++!17429 testedP!423 lt!2644037))))

(declare-fun b!7543234 () Bool)

(declare-fun tp!2194098 () Bool)

(declare-fun tp!2194092 () Bool)

(assert (=> b!7543234 (= e!4494112 (and tp!2194098 tp!2194092))))

(declare-fun b!7543235 () Bool)

(declare-fun e!4494115 () Bool)

(assert (=> b!7543235 (= e!4494115 (not (= lt!2644037 Nil!72671)))))

(declare-fun lt!2644049 () List!72795)

(assert (=> b!7543235 (= lt!2644049 lt!2644037)))

(declare-datatypes ((Unit!166762 0))(
  ( (Unit!166763) )
))
(declare-fun lt!2644033 () Unit!166762)

(declare-fun lemmaSamePrefixThenSameSuffix!2846 (List!72795 List!72795 List!72795 List!72795 List!72795) Unit!166762)

(assert (=> b!7543235 (= lt!2644033 (lemmaSamePrefixThenSameSuffix!2846 testedP!423 lt!2644049 testedP!423 lt!2644037 knownP!30))))

(declare-fun lt!2644044 () List!72795)

(assert (=> b!7543235 (= lt!2644044 (++!17429 testedP!423 lt!2644049))))

(declare-fun lt!2644045 () List!72795)

(declare-fun lt!2644050 () List!72795)

(assert (=> b!7543235 (= lt!2644049 (++!17429 lt!2644045 lt!2644050))))

(declare-fun lt!2644043 () Unit!166762)

(declare-fun lemmaConcatAssociativity!3077 (List!72795 List!72795 List!72795) Unit!166762)

(assert (=> b!7543235 (= lt!2644043 (lemmaConcatAssociativity!3077 testedP!423 lt!2644045 lt!2644050))))

(declare-fun b!7543236 () Bool)

(declare-fun res!3023079 () Bool)

(assert (=> b!7543236 (=> (not res!3023079) (not e!4494122))))

(assert (=> b!7543236 (= res!3023079 (validRegex!10340 r!24333))))

(declare-fun b!7543237 () Bool)

(declare-fun tp!2194090 () Bool)

(assert (=> b!7543237 (= e!4494124 (and tp_is_empty!50179 tp!2194090))))

(declare-fun b!7543238 () Bool)

(declare-fun res!3023063 () Bool)

(assert (=> b!7543238 (=> (not res!3023063) (not e!4494120))))

(declare-fun matchR!9514 (Regex!19912 List!72795) Bool)

(assert (=> b!7543238 (= res!3023063 (matchR!9514 baseR!101 knownP!30))))

(declare-fun b!7543239 () Bool)

(declare-fun res!3023078 () Bool)

(declare-fun e!4494116 () Bool)

(assert (=> b!7543239 (=> res!3023078 e!4494116)))

(assert (=> b!7543239 (= res!3023078 (not (= lt!2644032 knownP!30)))))

(declare-fun b!7543240 () Bool)

(declare-fun res!3023070 () Bool)

(assert (=> b!7543240 (=> res!3023070 e!4494116)))

(declare-fun lt!2644031 () C!40150)

(declare-fun $colon$colon!3372 (List!72795 C!40150) List!72795)

(declare-fun tail!15048 (List!72795) List!72795)

(assert (=> b!7543240 (= res!3023070 (not (= lt!2644037 ($colon$colon!3372 (tail!15048 lt!2644037) lt!2644031))))))

(declare-fun b!7543241 () Bool)

(assert (=> b!7543241 (= e!4494116 e!4494115)))

(declare-fun res!3023080 () Bool)

(assert (=> b!7543241 (=> res!3023080 e!4494115)))

(assert (=> b!7543241 (= res!3023080 (not (= lt!2644044 knownP!30)))))

(declare-fun lt!2644040 () List!72795)

(assert (=> b!7543241 (= lt!2644044 (++!17429 lt!2644040 lt!2644050))))

(declare-fun b!7543242 () Bool)

(assert (=> b!7543242 (= e!4494112 tp_is_empty!50179)))

(declare-fun b!7543243 () Bool)

(assert (=> b!7543243 (= e!4494117 e!4494123)))

(declare-fun res!3023074 () Bool)

(assert (=> b!7543243 (=> res!3023074 e!4494123)))

(assert (=> b!7543243 (= res!3023074 (not (= (++!17429 knownP!30 lt!2644029) input!7874)))))

(declare-fun getSuffix!3598 (List!72795 List!72795) List!72795)

(assert (=> b!7543243 (= lt!2644029 (getSuffix!3598 input!7874 knownP!30))))

(assert (=> b!7543243 (= lt!2644050 (getSuffix!3598 knownP!30 lt!2644040))))

(assert (=> b!7543243 (isPrefix!6118 lt!2644040 knownP!30)))

(declare-fun lt!2644048 () Unit!166762)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!868 (List!72795 List!72795 List!72795) Unit!166762)

(assert (=> b!7543243 (= lt!2644048 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!868 knownP!30 lt!2644040 input!7874))))

(declare-fun derivativeStep!5702 (Regex!19912 C!40150) Regex!19912)

(assert (=> b!7543243 (= (derivative!444 baseR!101 lt!2644040) (derivativeStep!5702 r!24333 lt!2644031))))

(declare-fun lt!2644042 () Unit!166762)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!150 (Regex!19912 Regex!19912 List!72795 C!40150) Unit!166762)

(assert (=> b!7543243 (= lt!2644042 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!150 baseR!101 r!24333 testedP!423 lt!2644031))))

(assert (=> b!7543243 (isPrefix!6118 lt!2644040 input!7874)))

(declare-fun lt!2644034 () Unit!166762)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1183 (List!72795 List!72795) Unit!166762)

(assert (=> b!7543243 (= lt!2644034 (lemmaAddHeadSuffixToPrefixStillPrefix!1183 testedP!423 input!7874))))

(assert (=> b!7543243 (= lt!2644040 (++!17429 testedP!423 lt!2644045))))

(assert (=> b!7543243 (= lt!2644045 (Cons!72671 lt!2644031 Nil!72671))))

(declare-fun head!15502 (List!72795) C!40150)

(assert (=> b!7543243 (= lt!2644031 (head!15502 lt!2644035))))

(assert (=> b!7543243 (= lt!2644035 (getSuffix!3598 input!7874 testedP!423))))

(declare-fun b!7543244 () Bool)

(declare-fun tp!2194091 () Bool)

(declare-fun tp!2194100 () Bool)

(assert (=> b!7543244 (= e!4494112 (and tp!2194091 tp!2194100))))

(declare-fun b!7543245 () Bool)

(assert (=> b!7543245 (= e!4494120 (not e!4494117))))

(declare-fun res!3023072 () Bool)

(assert (=> b!7543245 (=> res!3023072 e!4494117)))

(assert (=> b!7543245 (= res!3023072 (not (matchR!9514 r!24333 lt!2644037)))))

(assert (=> b!7543245 (= lt!2644037 (getSuffix!3598 knownP!30 testedP!423))))

(assert (=> b!7543245 (isPrefix!6118 testedP!423 knownP!30)))

(declare-fun lt!2644039 () Unit!166762)

(assert (=> b!7543245 (= lt!2644039 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!868 knownP!30 testedP!423 input!7874))))

(declare-fun b!7543246 () Bool)

(declare-fun tp!2194093 () Bool)

(assert (=> b!7543246 (= e!4494121 tp!2194093)))

(declare-fun b!7543247 () Bool)

(declare-fun res!3023066 () Bool)

(assert (=> b!7543247 (=> res!3023066 e!4494117)))

(assert (=> b!7543247 (= res!3023066 (= lt!2644038 lt!2644041))))

(declare-fun b!7543248 () Bool)

(declare-fun e!4494114 () Bool)

(assert (=> b!7543248 (= e!4494118 e!4494114)))

(declare-fun res!3023064 () Bool)

(assert (=> b!7543248 (=> res!3023064 e!4494114)))

(declare-fun lt!2644046 () List!72795)

(assert (=> b!7543248 (= res!3023064 (not (= lt!2644046 input!7874)))))

(assert (=> b!7543248 (= lt!2644030 lt!2644046)))

(declare-fun lt!2644047 () List!72795)

(assert (=> b!7543248 (= lt!2644046 (++!17429 testedP!423 lt!2644047))))

(assert (=> b!7543248 (= lt!2644047 (++!17429 lt!2644037 lt!2644029))))

(declare-fun lt!2644036 () Unit!166762)

(assert (=> b!7543248 (= lt!2644036 (lemmaConcatAssociativity!3077 testedP!423 lt!2644037 lt!2644029))))

(declare-fun b!7543249 () Bool)

(assert (=> b!7543249 (= e!4494114 e!4494116)))

(declare-fun res!3023076 () Bool)

(assert (=> b!7543249 (=> res!3023076 e!4494116)))

(assert (=> b!7543249 (= res!3023076 (not (= (head!15502 lt!2644037) lt!2644031)))))

(assert (=> b!7543249 (= lt!2644047 lt!2644035)))

(declare-fun lt!2644051 () Unit!166762)

(assert (=> b!7543249 (= lt!2644051 (lemmaSamePrefixThenSameSuffix!2846 testedP!423 lt!2644047 testedP!423 lt!2644035 input!7874))))

(assert (= (and start!729534 res!3023065) b!7543236))

(assert (= (and b!7543236 res!3023079) b!7543222))

(assert (= (and b!7543222 res!3023068) b!7543230))

(assert (= (and b!7543230 res!3023069) b!7543228))

(assert (= (and b!7543228 res!3023081) b!7543238))

(assert (= (and b!7543238 res!3023063) b!7543245))

(assert (= (and b!7543245 (not res!3023072)) b!7543225))

(assert (= (and b!7543225 (not res!3023077)) b!7543231))

(assert (= (and b!7543231 (not res!3023075)) b!7543247))

(assert (= (and b!7543247 (not res!3023066)) b!7543221))

(assert (= (and b!7543221 (not res!3023073)) b!7543243))

(assert (= (and b!7543243 (not res!3023074)) b!7543233))

(assert (= (and b!7543233 (not res!3023067)) b!7543224))

(assert (= (and b!7543224 (not res!3023071)) b!7543248))

(assert (= (and b!7543248 (not res!3023064)) b!7543249))

(assert (= (and b!7543249 (not res!3023076)) b!7543240))

(assert (= (and b!7543240 (not res!3023070)) b!7543239))

(assert (= (and b!7543239 (not res!3023078)) b!7543241))

(assert (= (and b!7543241 (not res!3023080)) b!7543235))

(assert (= (and start!729534 (is-ElementMatch!19912 baseR!101)) b!7543227))

(assert (= (and start!729534 (is-Concat!28757 baseR!101)) b!7543220))

(assert (= (and start!729534 (is-Star!19912 baseR!101)) b!7543246))

(assert (= (and start!729534 (is-Union!19912 baseR!101)) b!7543229))

(assert (= (and start!729534 (is-Cons!72671 input!7874)) b!7543237))

(assert (= (and start!729534 (is-Cons!72671 knownP!30)) b!7543226))

(assert (= (and start!729534 (is-Cons!72671 testedP!423)) b!7543223))

(assert (= (and start!729534 (is-ElementMatch!19912 r!24333)) b!7543242))

(assert (= (and start!729534 (is-Concat!28757 r!24333)) b!7543244))

(assert (= (and start!729534 (is-Star!19912 r!24333)) b!7543232))

(assert (= (and start!729534 (is-Union!19912 r!24333)) b!7543234))

(declare-fun m!8112074 () Bool)

(assert (=> b!7543224 m!8112074))

(declare-fun m!8112076 () Bool)

(assert (=> b!7543221 m!8112076))

(declare-fun m!8112078 () Bool)

(assert (=> b!7543230 m!8112078))

(declare-fun m!8112080 () Bool)

(assert (=> b!7543249 m!8112080))

(declare-fun m!8112082 () Bool)

(assert (=> b!7543249 m!8112082))

(declare-fun m!8112084 () Bool)

(assert (=> b!7543235 m!8112084))

(declare-fun m!8112086 () Bool)

(assert (=> b!7543235 m!8112086))

(declare-fun m!8112088 () Bool)

(assert (=> b!7543235 m!8112088))

(declare-fun m!8112090 () Bool)

(assert (=> b!7543235 m!8112090))

(declare-fun m!8112092 () Bool)

(assert (=> b!7543243 m!8112092))

(declare-fun m!8112094 () Bool)

(assert (=> b!7543243 m!8112094))

(declare-fun m!8112096 () Bool)

(assert (=> b!7543243 m!8112096))

(declare-fun m!8112098 () Bool)

(assert (=> b!7543243 m!8112098))

(declare-fun m!8112100 () Bool)

(assert (=> b!7543243 m!8112100))

(declare-fun m!8112102 () Bool)

(assert (=> b!7543243 m!8112102))

(declare-fun m!8112104 () Bool)

(assert (=> b!7543243 m!8112104))

(declare-fun m!8112106 () Bool)

(assert (=> b!7543243 m!8112106))

(declare-fun m!8112108 () Bool)

(assert (=> b!7543243 m!8112108))

(declare-fun m!8112110 () Bool)

(assert (=> b!7543243 m!8112110))

(declare-fun m!8112112 () Bool)

(assert (=> b!7543243 m!8112112))

(declare-fun m!8112114 () Bool)

(assert (=> b!7543243 m!8112114))

(declare-fun m!8112116 () Bool)

(assert (=> b!7543243 m!8112116))

(declare-fun m!8112118 () Bool)

(assert (=> b!7543228 m!8112118))

(declare-fun m!8112120 () Bool)

(assert (=> b!7543228 m!8112120))

(declare-fun m!8112122 () Bool)

(assert (=> b!7543240 m!8112122))

(assert (=> b!7543240 m!8112122))

(declare-fun m!8112124 () Bool)

(assert (=> b!7543240 m!8112124))

(declare-fun m!8112126 () Bool)

(assert (=> b!7543245 m!8112126))

(declare-fun m!8112128 () Bool)

(assert (=> b!7543245 m!8112128))

(declare-fun m!8112130 () Bool)

(assert (=> b!7543245 m!8112130))

(declare-fun m!8112132 () Bool)

(assert (=> b!7543245 m!8112132))

(declare-fun m!8112134 () Bool)

(assert (=> b!7543225 m!8112134))

(declare-fun m!8112136 () Bool)

(assert (=> b!7543238 m!8112136))

(declare-fun m!8112138 () Bool)

(assert (=> b!7543248 m!8112138))

(declare-fun m!8112140 () Bool)

(assert (=> b!7543248 m!8112140))

(declare-fun m!8112142 () Bool)

(assert (=> b!7543248 m!8112142))

(declare-fun m!8112144 () Bool)

(assert (=> b!7543236 m!8112144))

(declare-fun m!8112146 () Bool)

(assert (=> start!729534 m!8112146))

(declare-fun m!8112148 () Bool)

(assert (=> b!7543222 m!8112148))

(declare-fun m!8112150 () Bool)

(assert (=> b!7543241 m!8112150))

(declare-fun m!8112152 () Bool)

(assert (=> b!7543231 m!8112152))

(declare-fun m!8112154 () Bool)

(assert (=> b!7543233 m!8112154))

(declare-fun m!8112156 () Bool)

(assert (=> b!7543233 m!8112156))

(push 1)

(assert (not b!7543232))

(assert (not b!7543225))

(assert (not b!7543236))

(assert (not b!7543224))

(assert (not b!7543230))

(assert (not b!7543231))

(assert (not b!7543233))

(assert (not b!7543237))

(assert (not b!7543244))

(assert (not b!7543245))

(assert (not b!7543243))

(assert (not b!7543220))

(assert (not b!7543241))

(assert (not b!7543222))

(assert (not start!729534))

(assert (not b!7543248))

(assert (not b!7543223))

(assert (not b!7543246))

(assert (not b!7543221))

(assert (not b!7543229))

(assert (not b!7543234))

(assert (not b!7543235))

(assert (not b!7543228))

(assert (not b!7543226))

(assert (not b!7543238))

(assert (not b!7543240))

(assert (not b!7543249))

(assert tp_is_empty!50179)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2311758 () Bool)

(assert (=> d!2311758 (= (head!15502 lt!2644037) (h!79119 lt!2644037))))

(assert (=> b!7543249 d!2311758))

(declare-fun d!2311760 () Bool)

(assert (=> d!2311760 (= lt!2644047 lt!2644035)))

(declare-fun lt!2644129 () Unit!166762)

(declare-fun choose!58374 (List!72795 List!72795 List!72795 List!72795 List!72795) Unit!166762)

(assert (=> d!2311760 (= lt!2644129 (choose!58374 testedP!423 lt!2644047 testedP!423 lt!2644035 input!7874))))

(assert (=> d!2311760 (isPrefix!6118 testedP!423 input!7874)))

(assert (=> d!2311760 (= (lemmaSamePrefixThenSameSuffix!2846 testedP!423 lt!2644047 testedP!423 lt!2644035 input!7874) lt!2644129)))

(declare-fun bs!1940053 () Bool)

(assert (= bs!1940053 d!2311760))

(declare-fun m!8112246 () Bool)

(assert (=> bs!1940053 m!8112246))

(assert (=> bs!1940053 m!8112148))

(assert (=> b!7543249 d!2311760))

(declare-fun b!7543422 () Bool)

(declare-fun e!4494205 () Bool)

(declare-fun e!4494206 () Bool)

(assert (=> b!7543422 (= e!4494205 e!4494206)))

(declare-fun c!1392670 () Bool)

(assert (=> b!7543422 (= c!1392670 (is-EmptyLang!19912 baseR!101))))

(declare-fun b!7543423 () Bool)

(declare-fun e!4494211 () Bool)

(assert (=> b!7543423 (= e!4494211 (= (head!15502 knownP!30) (c!1392647 baseR!101)))))

(declare-fun b!7543424 () Bool)

(declare-fun res!3023184 () Bool)

(assert (=> b!7543424 (=> (not res!3023184) (not e!4494211))))

(declare-fun call!691886 () Bool)

(assert (=> b!7543424 (= res!3023184 (not call!691886))))

(declare-fun b!7543425 () Bool)

(declare-fun e!4494208 () Bool)

(assert (=> b!7543425 (= e!4494208 (matchR!9514 (derivativeStep!5702 baseR!101 (head!15502 knownP!30)) (tail!15048 knownP!30)))))

(declare-fun b!7543426 () Bool)

(declare-fun e!4494209 () Bool)

(declare-fun e!4494207 () Bool)

(assert (=> b!7543426 (= e!4494209 e!4494207)))

(declare-fun res!3023183 () Bool)

(assert (=> b!7543426 (=> res!3023183 e!4494207)))

(assert (=> b!7543426 (= res!3023183 call!691886)))

(declare-fun b!7543427 () Bool)

(declare-fun res!3023180 () Bool)

(assert (=> b!7543427 (=> res!3023180 e!4494207)))

(declare-fun isEmpty!41380 (List!72795) Bool)

(assert (=> b!7543427 (= res!3023180 (not (isEmpty!41380 (tail!15048 knownP!30))))))

(declare-fun b!7543428 () Bool)

(assert (=> b!7543428 (= e!4494207 (not (= (head!15502 knownP!30) (c!1392647 baseR!101))))))

(declare-fun b!7543429 () Bool)

(declare-fun res!3023179 () Bool)

(declare-fun e!4494210 () Bool)

(assert (=> b!7543429 (=> res!3023179 e!4494210)))

(assert (=> b!7543429 (= res!3023179 (not (is-ElementMatch!19912 baseR!101)))))

(assert (=> b!7543429 (= e!4494206 e!4494210)))

(declare-fun d!2311762 () Bool)

(assert (=> d!2311762 e!4494205))

(declare-fun c!1392672 () Bool)

(assert (=> d!2311762 (= c!1392672 (is-EmptyExpr!19912 baseR!101))))

(declare-fun lt!2644135 () Bool)

(assert (=> d!2311762 (= lt!2644135 e!4494208)))

(declare-fun c!1392671 () Bool)

(assert (=> d!2311762 (= c!1392671 (isEmpty!41380 knownP!30))))

(assert (=> d!2311762 (validRegex!10340 baseR!101)))

(assert (=> d!2311762 (= (matchR!9514 baseR!101 knownP!30) lt!2644135)))

(declare-fun bm!691881 () Bool)

(assert (=> bm!691881 (= call!691886 (isEmpty!41380 knownP!30))))

(declare-fun b!7543430 () Bool)

(declare-fun res!3023185 () Bool)

(assert (=> b!7543430 (=> res!3023185 e!4494210)))

(assert (=> b!7543430 (= res!3023185 e!4494211)))

(declare-fun res!3023181 () Bool)

(assert (=> b!7543430 (=> (not res!3023181) (not e!4494211))))

(assert (=> b!7543430 (= res!3023181 lt!2644135)))

(declare-fun b!7543431 () Bool)

(declare-fun res!3023186 () Bool)

(assert (=> b!7543431 (=> (not res!3023186) (not e!4494211))))

(assert (=> b!7543431 (= res!3023186 (isEmpty!41380 (tail!15048 knownP!30)))))

(declare-fun b!7543432 () Bool)

(assert (=> b!7543432 (= e!4494205 (= lt!2644135 call!691886))))

(declare-fun b!7543433 () Bool)

(declare-fun nullable!8684 (Regex!19912) Bool)

(assert (=> b!7543433 (= e!4494208 (nullable!8684 baseR!101))))

(declare-fun b!7543434 () Bool)

(assert (=> b!7543434 (= e!4494206 (not lt!2644135))))

(declare-fun b!7543435 () Bool)

(assert (=> b!7543435 (= e!4494210 e!4494209)))

(declare-fun res!3023182 () Bool)

(assert (=> b!7543435 (=> (not res!3023182) (not e!4494209))))

(assert (=> b!7543435 (= res!3023182 (not lt!2644135))))

(assert (= (and d!2311762 c!1392671) b!7543433))

(assert (= (and d!2311762 (not c!1392671)) b!7543425))

(assert (= (and d!2311762 c!1392672) b!7543432))

(assert (= (and d!2311762 (not c!1392672)) b!7543422))

(assert (= (and b!7543422 c!1392670) b!7543434))

(assert (= (and b!7543422 (not c!1392670)) b!7543429))

(assert (= (and b!7543429 (not res!3023179)) b!7543430))

(assert (= (and b!7543430 res!3023181) b!7543424))

(assert (= (and b!7543424 res!3023184) b!7543431))

(assert (= (and b!7543431 res!3023186) b!7543423))

(assert (= (and b!7543430 (not res!3023185)) b!7543435))

(assert (= (and b!7543435 res!3023182) b!7543426))

(assert (= (and b!7543426 (not res!3023183)) b!7543427))

(assert (= (and b!7543427 (not res!3023180)) b!7543428))

(assert (= (or b!7543432 b!7543424 b!7543426) bm!691881))

(declare-fun m!8112264 () Bool)

(assert (=> b!7543427 m!8112264))

(assert (=> b!7543427 m!8112264))

(declare-fun m!8112266 () Bool)

(assert (=> b!7543427 m!8112266))

(declare-fun m!8112268 () Bool)

(assert (=> bm!691881 m!8112268))

(declare-fun m!8112270 () Bool)

(assert (=> b!7543433 m!8112270))

(declare-fun m!8112272 () Bool)

(assert (=> b!7543428 m!8112272))

(assert (=> b!7543425 m!8112272))

(assert (=> b!7543425 m!8112272))

(declare-fun m!8112274 () Bool)

(assert (=> b!7543425 m!8112274))

(assert (=> b!7543425 m!8112264))

(assert (=> b!7543425 m!8112274))

(assert (=> b!7543425 m!8112264))

(declare-fun m!8112276 () Bool)

(assert (=> b!7543425 m!8112276))

(assert (=> b!7543423 m!8112272))

(assert (=> b!7543431 m!8112264))

(assert (=> b!7543431 m!8112264))

(assert (=> b!7543431 m!8112266))

(assert (=> d!2311762 m!8112268))

(assert (=> d!2311762 m!8112146))

(assert (=> b!7543238 d!2311762))

(declare-fun d!2311768 () Bool)

(declare-fun lt!2644139 () Int)

(assert (=> d!2311768 (>= lt!2644139 0)))

(declare-fun e!4494215 () Int)

(assert (=> d!2311768 (= lt!2644139 e!4494215)))

(declare-fun c!1392676 () Bool)

(assert (=> d!2311768 (= c!1392676 (is-Nil!72671 testedP!423))))

(assert (=> d!2311768 (= (size!42408 testedP!423) lt!2644139)))

(declare-fun b!7543442 () Bool)

(assert (=> b!7543442 (= e!4494215 0)))

(declare-fun b!7543443 () Bool)

(assert (=> b!7543443 (= e!4494215 (+ 1 (size!42408 (t!387508 testedP!423))))))

(assert (= (and d!2311768 c!1392676) b!7543442))

(assert (= (and d!2311768 (not c!1392676)) b!7543443))

(declare-fun m!8112278 () Bool)

(assert (=> b!7543443 m!8112278))

(assert (=> b!7543228 d!2311768))

(declare-fun d!2311770 () Bool)

(declare-fun lt!2644140 () Int)

(assert (=> d!2311770 (>= lt!2644140 0)))

(declare-fun e!4494216 () Int)

(assert (=> d!2311770 (= lt!2644140 e!4494216)))

(declare-fun c!1392677 () Bool)

(assert (=> d!2311770 (= c!1392677 (is-Nil!72671 knownP!30))))

(assert (=> d!2311770 (= (size!42408 knownP!30) lt!2644140)))

(declare-fun b!7543444 () Bool)

(assert (=> b!7543444 (= e!4494216 0)))

(declare-fun b!7543445 () Bool)

(assert (=> b!7543445 (= e!4494216 (+ 1 (size!42408 (t!387508 knownP!30))))))

(assert (= (and d!2311770 c!1392677) b!7543444))

(assert (= (and d!2311770 (not c!1392677)) b!7543445))

(declare-fun m!8112280 () Bool)

(assert (=> b!7543445 m!8112280))

(assert (=> b!7543228 d!2311770))

(declare-fun d!2311772 () Bool)

(assert (=> d!2311772 (= ($colon$colon!3372 (tail!15048 lt!2644037) lt!2644031) (Cons!72671 lt!2644031 (tail!15048 lt!2644037)))))

(assert (=> b!7543240 d!2311772))

(declare-fun d!2311774 () Bool)

(assert (=> d!2311774 (= (tail!15048 lt!2644037) (t!387508 lt!2644037))))

(assert (=> b!7543240 d!2311774))

(declare-fun d!2311776 () Bool)

(declare-fun lt!2644145 () Regex!19912)

(assert (=> d!2311776 (validRegex!10340 lt!2644145)))

(declare-fun e!4494225 () Regex!19912)

(assert (=> d!2311776 (= lt!2644145 e!4494225)))

(declare-fun c!1392680 () Bool)

(assert (=> d!2311776 (= c!1392680 (is-Cons!72671 testedP!423))))

(assert (=> d!2311776 (validRegex!10340 baseR!101)))

(assert (=> d!2311776 (= (derivative!444 baseR!101 testedP!423) lt!2644145)))

(declare-fun b!7543458 () Bool)

(assert (=> b!7543458 (= e!4494225 (derivative!444 (derivativeStep!5702 baseR!101 (h!79119 testedP!423)) (t!387508 testedP!423)))))

(declare-fun b!7543459 () Bool)

(assert (=> b!7543459 (= e!4494225 baseR!101)))

(assert (= (and d!2311776 c!1392680) b!7543458))

(assert (= (and d!2311776 (not c!1392680)) b!7543459))

(declare-fun m!8112282 () Bool)

(assert (=> d!2311776 m!8112282))

(assert (=> d!2311776 m!8112146))

(declare-fun m!8112284 () Bool)

(assert (=> b!7543458 m!8112284))

(assert (=> b!7543458 m!8112284))

(declare-fun m!8112286 () Bool)

(assert (=> b!7543458 m!8112286))

(assert (=> b!7543225 d!2311776))

(declare-fun b!7543482 () Bool)

(declare-fun res!3023213 () Bool)

(declare-fun e!4494249 () Bool)

(assert (=> b!7543482 (=> res!3023213 e!4494249)))

(assert (=> b!7543482 (= res!3023213 (not (is-Concat!28757 r!24333)))))

(declare-fun e!4494246 () Bool)

(assert (=> b!7543482 (= e!4494246 e!4494249)))

(declare-fun b!7543483 () Bool)

(declare-fun e!4494244 () Bool)

(assert (=> b!7543483 (= e!4494244 e!4494246)))

(declare-fun c!1392686 () Bool)

(assert (=> b!7543483 (= c!1392686 (is-Union!19912 r!24333))))

(declare-fun bm!691888 () Bool)

(declare-fun call!691894 () Bool)

(assert (=> bm!691888 (= call!691894 (validRegex!10340 (ite c!1392686 (regOne!40337 r!24333) (regOne!40336 r!24333))))))

(declare-fun b!7543484 () Bool)

(declare-fun res!3023210 () Bool)

(declare-fun e!4494243 () Bool)

(assert (=> b!7543484 (=> (not res!3023210) (not e!4494243))))

(assert (=> b!7543484 (= res!3023210 call!691894)))

(assert (=> b!7543484 (= e!4494246 e!4494243)))

(declare-fun b!7543485 () Bool)

(declare-fun e!4494245 () Bool)

(assert (=> b!7543485 (= e!4494244 e!4494245)))

(declare-fun res!3023211 () Bool)

(assert (=> b!7543485 (= res!3023211 (not (nullable!8684 (reg!20241 r!24333))))))

(assert (=> b!7543485 (=> (not res!3023211) (not e!4494245))))

(declare-fun b!7543486 () Bool)

(declare-fun e!4494247 () Bool)

(declare-fun call!691895 () Bool)

(assert (=> b!7543486 (= e!4494247 call!691895)))

(declare-fun b!7543487 () Bool)

(assert (=> b!7543487 (= e!4494249 e!4494247)))

(declare-fun res!3023212 () Bool)

(assert (=> b!7543487 (=> (not res!3023212) (not e!4494247))))

(assert (=> b!7543487 (= res!3023212 call!691894)))

(declare-fun d!2311778 () Bool)

(declare-fun res!3023209 () Bool)

(declare-fun e!4494248 () Bool)

(assert (=> d!2311778 (=> res!3023209 e!4494248)))

(assert (=> d!2311778 (= res!3023209 (is-ElementMatch!19912 r!24333))))

(assert (=> d!2311778 (= (validRegex!10340 r!24333) e!4494248)))

(declare-fun b!7543488 () Bool)

(assert (=> b!7543488 (= e!4494243 call!691895)))

(declare-fun bm!691889 () Bool)

(declare-fun c!1392685 () Bool)

(declare-fun call!691893 () Bool)

(assert (=> bm!691889 (= call!691893 (validRegex!10340 (ite c!1392685 (reg!20241 r!24333) (ite c!1392686 (regTwo!40337 r!24333) (regTwo!40336 r!24333)))))))

(declare-fun b!7543489 () Bool)

(assert (=> b!7543489 (= e!4494245 call!691893)))

(declare-fun b!7543490 () Bool)

(assert (=> b!7543490 (= e!4494248 e!4494244)))

(assert (=> b!7543490 (= c!1392685 (is-Star!19912 r!24333))))

(declare-fun bm!691890 () Bool)

(assert (=> bm!691890 (= call!691895 call!691893)))

(assert (= (and d!2311778 (not res!3023209)) b!7543490))

(assert (= (and b!7543490 c!1392685) b!7543485))

(assert (= (and b!7543490 (not c!1392685)) b!7543483))

(assert (= (and b!7543485 res!3023211) b!7543489))

(assert (= (and b!7543483 c!1392686) b!7543484))

(assert (= (and b!7543483 (not c!1392686)) b!7543482))

(assert (= (and b!7543484 res!3023210) b!7543488))

(assert (= (and b!7543482 (not res!3023213)) b!7543487))

(assert (= (and b!7543487 res!3023212) b!7543486))

(assert (= (or b!7543484 b!7543487) bm!691888))

(assert (= (or b!7543488 b!7543486) bm!691890))

(assert (= (or b!7543489 bm!691890) bm!691889))

(declare-fun m!8112298 () Bool)

(assert (=> bm!691888 m!8112298))

(declare-fun m!8112300 () Bool)

(assert (=> b!7543485 m!8112300))

(declare-fun m!8112302 () Bool)

(assert (=> bm!691889 m!8112302))

(assert (=> b!7543236 d!2311778))

(declare-fun d!2311784 () Bool)

(declare-fun e!4494254 () Bool)

(assert (=> d!2311784 e!4494254))

(declare-fun res!3023219 () Bool)

(assert (=> d!2311784 (=> (not res!3023219) (not e!4494254))))

(declare-fun lt!2644155 () List!72795)

(declare-fun content!15373 (List!72795) (Set C!40150))

(assert (=> d!2311784 (= res!3023219 (= (content!15373 lt!2644155) (set.union (content!15373 testedP!423) (content!15373 lt!2644047))))))

(declare-fun e!4494255 () List!72795)

(assert (=> d!2311784 (= lt!2644155 e!4494255)))

(declare-fun c!1392689 () Bool)

(assert (=> d!2311784 (= c!1392689 (is-Nil!72671 testedP!423))))

(assert (=> d!2311784 (= (++!17429 testedP!423 lt!2644047) lt!2644155)))

(declare-fun b!7543502 () Bool)

(assert (=> b!7543502 (= e!4494254 (or (not (= lt!2644047 Nil!72671)) (= lt!2644155 testedP!423)))))

(declare-fun b!7543501 () Bool)

(declare-fun res!3023218 () Bool)

(assert (=> b!7543501 (=> (not res!3023218) (not e!4494254))))

(assert (=> b!7543501 (= res!3023218 (= (size!42408 lt!2644155) (+ (size!42408 testedP!423) (size!42408 lt!2644047))))))

(declare-fun b!7543499 () Bool)

(assert (=> b!7543499 (= e!4494255 lt!2644047)))

(declare-fun b!7543500 () Bool)

(assert (=> b!7543500 (= e!4494255 (Cons!72671 (h!79119 testedP!423) (++!17429 (t!387508 testedP!423) lt!2644047)))))

(assert (= (and d!2311784 c!1392689) b!7543499))

(assert (= (and d!2311784 (not c!1392689)) b!7543500))

(assert (= (and d!2311784 res!3023219) b!7543501))

(assert (= (and b!7543501 res!3023218) b!7543502))

(declare-fun m!8112306 () Bool)

(assert (=> d!2311784 m!8112306))

(declare-fun m!8112308 () Bool)

(assert (=> d!2311784 m!8112308))

(declare-fun m!8112310 () Bool)

(assert (=> d!2311784 m!8112310))

(declare-fun m!8112312 () Bool)

(assert (=> b!7543501 m!8112312))

(assert (=> b!7543501 m!8112118))

(declare-fun m!8112314 () Bool)

(assert (=> b!7543501 m!8112314))

(declare-fun m!8112316 () Bool)

(assert (=> b!7543500 m!8112316))

(assert (=> b!7543248 d!2311784))

(declare-fun d!2311788 () Bool)

(declare-fun e!4494256 () Bool)

(assert (=> d!2311788 e!4494256))

(declare-fun res!3023221 () Bool)

(assert (=> d!2311788 (=> (not res!3023221) (not e!4494256))))

(declare-fun lt!2644156 () List!72795)

(assert (=> d!2311788 (= res!3023221 (= (content!15373 lt!2644156) (set.union (content!15373 lt!2644037) (content!15373 lt!2644029))))))

(declare-fun e!4494257 () List!72795)

(assert (=> d!2311788 (= lt!2644156 e!4494257)))

(declare-fun c!1392690 () Bool)

(assert (=> d!2311788 (= c!1392690 (is-Nil!72671 lt!2644037))))

(assert (=> d!2311788 (= (++!17429 lt!2644037 lt!2644029) lt!2644156)))

(declare-fun b!7543506 () Bool)

(assert (=> b!7543506 (= e!4494256 (or (not (= lt!2644029 Nil!72671)) (= lt!2644156 lt!2644037)))))

(declare-fun b!7543505 () Bool)

(declare-fun res!3023220 () Bool)

(assert (=> b!7543505 (=> (not res!3023220) (not e!4494256))))

(assert (=> b!7543505 (= res!3023220 (= (size!42408 lt!2644156) (+ (size!42408 lt!2644037) (size!42408 lt!2644029))))))

(declare-fun b!7543503 () Bool)

(assert (=> b!7543503 (= e!4494257 lt!2644029)))

(declare-fun b!7543504 () Bool)

(assert (=> b!7543504 (= e!4494257 (Cons!72671 (h!79119 lt!2644037) (++!17429 (t!387508 lt!2644037) lt!2644029)))))

(assert (= (and d!2311788 c!1392690) b!7543503))

(assert (= (and d!2311788 (not c!1392690)) b!7543504))

(assert (= (and d!2311788 res!3023221) b!7543505))

(assert (= (and b!7543505 res!3023220) b!7543506))

(declare-fun m!8112318 () Bool)

(assert (=> d!2311788 m!8112318))

(declare-fun m!8112320 () Bool)

(assert (=> d!2311788 m!8112320))

(declare-fun m!8112322 () Bool)

(assert (=> d!2311788 m!8112322))

(declare-fun m!8112324 () Bool)

(assert (=> b!7543505 m!8112324))

(declare-fun m!8112326 () Bool)

(assert (=> b!7543505 m!8112326))

(declare-fun m!8112328 () Bool)

(assert (=> b!7543505 m!8112328))

(declare-fun m!8112330 () Bool)

(assert (=> b!7543504 m!8112330))

(assert (=> b!7543248 d!2311788))

(declare-fun d!2311790 () Bool)

(assert (=> d!2311790 (= (++!17429 (++!17429 testedP!423 lt!2644037) lt!2644029) (++!17429 testedP!423 (++!17429 lt!2644037 lt!2644029)))))

(declare-fun lt!2644159 () Unit!166762)

(declare-fun choose!58375 (List!72795 List!72795 List!72795) Unit!166762)

(assert (=> d!2311790 (= lt!2644159 (choose!58375 testedP!423 lt!2644037 lt!2644029))))

(assert (=> d!2311790 (= (lemmaConcatAssociativity!3077 testedP!423 lt!2644037 lt!2644029) lt!2644159)))

(declare-fun bs!1940056 () Bool)

(assert (= bs!1940056 d!2311790))

(assert (=> bs!1940056 m!8112156))

(declare-fun m!8112332 () Bool)

(assert (=> bs!1940056 m!8112332))

(assert (=> bs!1940056 m!8112156))

(assert (=> bs!1940056 m!8112140))

(declare-fun m!8112334 () Bool)

(assert (=> bs!1940056 m!8112334))

(declare-fun m!8112336 () Bool)

(assert (=> bs!1940056 m!8112336))

(assert (=> bs!1940056 m!8112140))

(assert (=> b!7543248 d!2311790))

(declare-fun d!2311792 () Bool)

(declare-fun e!4494258 () Bool)

(assert (=> d!2311792 e!4494258))

(declare-fun res!3023223 () Bool)

(assert (=> d!2311792 (=> (not res!3023223) (not e!4494258))))

(declare-fun lt!2644160 () List!72795)

(assert (=> d!2311792 (= res!3023223 (= (content!15373 lt!2644160) (set.union (content!15373 lt!2644032) (content!15373 lt!2644029))))))

(declare-fun e!4494259 () List!72795)

(assert (=> d!2311792 (= lt!2644160 e!4494259)))

(declare-fun c!1392691 () Bool)

(assert (=> d!2311792 (= c!1392691 (is-Nil!72671 lt!2644032))))

(assert (=> d!2311792 (= (++!17429 lt!2644032 lt!2644029) lt!2644160)))

(declare-fun b!7543510 () Bool)

(assert (=> b!7543510 (= e!4494258 (or (not (= lt!2644029 Nil!72671)) (= lt!2644160 lt!2644032)))))

(declare-fun b!7543509 () Bool)

(declare-fun res!3023222 () Bool)

(assert (=> b!7543509 (=> (not res!3023222) (not e!4494258))))

(assert (=> b!7543509 (= res!3023222 (= (size!42408 lt!2644160) (+ (size!42408 lt!2644032) (size!42408 lt!2644029))))))

(declare-fun b!7543507 () Bool)

(assert (=> b!7543507 (= e!4494259 lt!2644029)))

(declare-fun b!7543508 () Bool)

(assert (=> b!7543508 (= e!4494259 (Cons!72671 (h!79119 lt!2644032) (++!17429 (t!387508 lt!2644032) lt!2644029)))))

(assert (= (and d!2311792 c!1392691) b!7543507))

(assert (= (and d!2311792 (not c!1392691)) b!7543508))

(assert (= (and d!2311792 res!3023223) b!7543509))

(assert (= (and b!7543509 res!3023222) b!7543510))

(declare-fun m!8112338 () Bool)

(assert (=> d!2311792 m!8112338))

(declare-fun m!8112340 () Bool)

(assert (=> d!2311792 m!8112340))

(assert (=> d!2311792 m!8112322))

(declare-fun m!8112342 () Bool)

(assert (=> b!7543509 m!8112342))

(declare-fun m!8112344 () Bool)

(assert (=> b!7543509 m!8112344))

(assert (=> b!7543509 m!8112328))

(declare-fun m!8112346 () Bool)

(assert (=> b!7543508 m!8112346))

(assert (=> b!7543233 d!2311792))

(declare-fun d!2311794 () Bool)

(declare-fun e!4494260 () Bool)

(assert (=> d!2311794 e!4494260))

(declare-fun res!3023225 () Bool)

(assert (=> d!2311794 (=> (not res!3023225) (not e!4494260))))

(declare-fun lt!2644161 () List!72795)

(assert (=> d!2311794 (= res!3023225 (= (content!15373 lt!2644161) (set.union (content!15373 testedP!423) (content!15373 lt!2644037))))))

(declare-fun e!4494261 () List!72795)

(assert (=> d!2311794 (= lt!2644161 e!4494261)))

(declare-fun c!1392692 () Bool)

(assert (=> d!2311794 (= c!1392692 (is-Nil!72671 testedP!423))))

(assert (=> d!2311794 (= (++!17429 testedP!423 lt!2644037) lt!2644161)))

(declare-fun b!7543514 () Bool)

(assert (=> b!7543514 (= e!4494260 (or (not (= lt!2644037 Nil!72671)) (= lt!2644161 testedP!423)))))

(declare-fun b!7543513 () Bool)

(declare-fun res!3023224 () Bool)

(assert (=> b!7543513 (=> (not res!3023224) (not e!4494260))))

(assert (=> b!7543513 (= res!3023224 (= (size!42408 lt!2644161) (+ (size!42408 testedP!423) (size!42408 lt!2644037))))))

(declare-fun b!7543511 () Bool)

(assert (=> b!7543511 (= e!4494261 lt!2644037)))

(declare-fun b!7543512 () Bool)

(assert (=> b!7543512 (= e!4494261 (Cons!72671 (h!79119 testedP!423) (++!17429 (t!387508 testedP!423) lt!2644037)))))

(assert (= (and d!2311794 c!1392692) b!7543511))

(assert (= (and d!2311794 (not c!1392692)) b!7543512))

(assert (= (and d!2311794 res!3023225) b!7543513))

(assert (= (and b!7543513 res!3023224) b!7543514))

(declare-fun m!8112348 () Bool)

(assert (=> d!2311794 m!8112348))

(assert (=> d!2311794 m!8112308))

(assert (=> d!2311794 m!8112320))

(declare-fun m!8112350 () Bool)

(assert (=> b!7543513 m!8112350))

(assert (=> b!7543513 m!8112118))

(assert (=> b!7543513 m!8112326))

(declare-fun m!8112352 () Bool)

(assert (=> b!7543512 m!8112352))

(assert (=> b!7543233 d!2311794))

(declare-fun b!7543535 () Bool)

(declare-fun e!4494274 () Bool)

(declare-fun e!4494276 () Bool)

(assert (=> b!7543535 (= e!4494274 e!4494276)))

(declare-fun res!3023243 () Bool)

(assert (=> b!7543535 (=> (not res!3023243) (not e!4494276))))

(assert (=> b!7543535 (= res!3023243 (not (is-Nil!72671 input!7874)))))

(declare-fun b!7543537 () Bool)

(assert (=> b!7543537 (= e!4494276 (isPrefix!6118 (tail!15048 testedP!423) (tail!15048 input!7874)))))

(declare-fun b!7543536 () Bool)

(declare-fun res!3023242 () Bool)

(assert (=> b!7543536 (=> (not res!3023242) (not e!4494276))))

(assert (=> b!7543536 (= res!3023242 (= (head!15502 testedP!423) (head!15502 input!7874)))))

(declare-fun b!7543538 () Bool)

(declare-fun e!4494275 () Bool)

(assert (=> b!7543538 (= e!4494275 (>= (size!42408 input!7874) (size!42408 testedP!423)))))

(declare-fun d!2311796 () Bool)

(assert (=> d!2311796 e!4494275))

(declare-fun res!3023241 () Bool)

(assert (=> d!2311796 (=> res!3023241 e!4494275)))

(declare-fun lt!2644167 () Bool)

(assert (=> d!2311796 (= res!3023241 (not lt!2644167))))

(assert (=> d!2311796 (= lt!2644167 e!4494274)))

(declare-fun res!3023240 () Bool)

(assert (=> d!2311796 (=> res!3023240 e!4494274)))

(assert (=> d!2311796 (= res!3023240 (is-Nil!72671 testedP!423))))

(assert (=> d!2311796 (= (isPrefix!6118 testedP!423 input!7874) lt!2644167)))

(assert (= (and d!2311796 (not res!3023240)) b!7543535))

(assert (= (and b!7543535 res!3023243) b!7543536))

(assert (= (and b!7543536 res!3023242) b!7543537))

(assert (= (and d!2311796 (not res!3023241)) b!7543538))

(declare-fun m!8112354 () Bool)

(assert (=> b!7543537 m!8112354))

(declare-fun m!8112356 () Bool)

(assert (=> b!7543537 m!8112356))

(assert (=> b!7543537 m!8112354))

(assert (=> b!7543537 m!8112356))

(declare-fun m!8112358 () Bool)

(assert (=> b!7543537 m!8112358))

(declare-fun m!8112360 () Bool)

(assert (=> b!7543536 m!8112360))

(declare-fun m!8112362 () Bool)

(assert (=> b!7543536 m!8112362))

(assert (=> b!7543538 m!8112076))

(assert (=> b!7543538 m!8112118))

(assert (=> b!7543222 d!2311796))

(declare-fun b!7543539 () Bool)

(declare-fun e!4494277 () Bool)

(declare-fun e!4494278 () Bool)

(assert (=> b!7543539 (= e!4494277 e!4494278)))

(declare-fun c!1392696 () Bool)

(assert (=> b!7543539 (= c!1392696 (is-EmptyLang!19912 r!24333))))

(declare-fun b!7543540 () Bool)

(declare-fun e!4494283 () Bool)

(assert (=> b!7543540 (= e!4494283 (= (head!15502 lt!2644037) (c!1392647 r!24333)))))

(declare-fun b!7543541 () Bool)

(declare-fun res!3023249 () Bool)

(assert (=> b!7543541 (=> (not res!3023249) (not e!4494283))))

(declare-fun call!691896 () Bool)

(assert (=> b!7543541 (= res!3023249 (not call!691896))))

(declare-fun b!7543542 () Bool)

(declare-fun e!4494280 () Bool)

(assert (=> b!7543542 (= e!4494280 (matchR!9514 (derivativeStep!5702 r!24333 (head!15502 lt!2644037)) (tail!15048 lt!2644037)))))

(declare-fun b!7543543 () Bool)

(declare-fun e!4494281 () Bool)

(declare-fun e!4494279 () Bool)

(assert (=> b!7543543 (= e!4494281 e!4494279)))

(declare-fun res!3023248 () Bool)

(assert (=> b!7543543 (=> res!3023248 e!4494279)))

(assert (=> b!7543543 (= res!3023248 call!691896)))

(declare-fun b!7543544 () Bool)

(declare-fun res!3023245 () Bool)

(assert (=> b!7543544 (=> res!3023245 e!4494279)))

(assert (=> b!7543544 (= res!3023245 (not (isEmpty!41380 (tail!15048 lt!2644037))))))

(declare-fun b!7543545 () Bool)

(assert (=> b!7543545 (= e!4494279 (not (= (head!15502 lt!2644037) (c!1392647 r!24333))))))

(declare-fun b!7543546 () Bool)

(declare-fun res!3023244 () Bool)

(declare-fun e!4494282 () Bool)

(assert (=> b!7543546 (=> res!3023244 e!4494282)))

(assert (=> b!7543546 (= res!3023244 (not (is-ElementMatch!19912 r!24333)))))

(assert (=> b!7543546 (= e!4494278 e!4494282)))

(declare-fun d!2311798 () Bool)

(assert (=> d!2311798 e!4494277))

(declare-fun c!1392698 () Bool)

(assert (=> d!2311798 (= c!1392698 (is-EmptyExpr!19912 r!24333))))

(declare-fun lt!2644168 () Bool)

(assert (=> d!2311798 (= lt!2644168 e!4494280)))

(declare-fun c!1392697 () Bool)

(assert (=> d!2311798 (= c!1392697 (isEmpty!41380 lt!2644037))))

(assert (=> d!2311798 (validRegex!10340 r!24333)))

(assert (=> d!2311798 (= (matchR!9514 r!24333 lt!2644037) lt!2644168)))

(declare-fun bm!691891 () Bool)

(assert (=> bm!691891 (= call!691896 (isEmpty!41380 lt!2644037))))

(declare-fun b!7543547 () Bool)

(declare-fun res!3023250 () Bool)

(assert (=> b!7543547 (=> res!3023250 e!4494282)))

(assert (=> b!7543547 (= res!3023250 e!4494283)))

(declare-fun res!3023246 () Bool)

(assert (=> b!7543547 (=> (not res!3023246) (not e!4494283))))

(assert (=> b!7543547 (= res!3023246 lt!2644168)))

(declare-fun b!7543548 () Bool)

(declare-fun res!3023251 () Bool)

(assert (=> b!7543548 (=> (not res!3023251) (not e!4494283))))

(assert (=> b!7543548 (= res!3023251 (isEmpty!41380 (tail!15048 lt!2644037)))))

(declare-fun b!7543549 () Bool)

(assert (=> b!7543549 (= e!4494277 (= lt!2644168 call!691896))))

(declare-fun b!7543550 () Bool)

(assert (=> b!7543550 (= e!4494280 (nullable!8684 r!24333))))

(declare-fun b!7543551 () Bool)

(assert (=> b!7543551 (= e!4494278 (not lt!2644168))))

(declare-fun b!7543552 () Bool)

(assert (=> b!7543552 (= e!4494282 e!4494281)))

(declare-fun res!3023247 () Bool)

(assert (=> b!7543552 (=> (not res!3023247) (not e!4494281))))

(assert (=> b!7543552 (= res!3023247 (not lt!2644168))))

(assert (= (and d!2311798 c!1392697) b!7543550))

(assert (= (and d!2311798 (not c!1392697)) b!7543542))

(assert (= (and d!2311798 c!1392698) b!7543549))

(assert (= (and d!2311798 (not c!1392698)) b!7543539))

(assert (= (and b!7543539 c!1392696) b!7543551))

(assert (= (and b!7543539 (not c!1392696)) b!7543546))

(assert (= (and b!7543546 (not res!3023244)) b!7543547))

(assert (= (and b!7543547 res!3023246) b!7543541))

(assert (= (and b!7543541 res!3023249) b!7543548))

(assert (= (and b!7543548 res!3023251) b!7543540))

(assert (= (and b!7543547 (not res!3023250)) b!7543552))

(assert (= (and b!7543552 res!3023247) b!7543543))

(assert (= (and b!7543543 (not res!3023248)) b!7543544))

(assert (= (and b!7543544 (not res!3023245)) b!7543545))

(assert (= (or b!7543549 b!7543541 b!7543543) bm!691891))

(assert (=> b!7543544 m!8112122))

(assert (=> b!7543544 m!8112122))

(declare-fun m!8112376 () Bool)

(assert (=> b!7543544 m!8112376))

(declare-fun m!8112378 () Bool)

(assert (=> bm!691891 m!8112378))

(declare-fun m!8112380 () Bool)

(assert (=> b!7543550 m!8112380))

(assert (=> b!7543545 m!8112080))

(assert (=> b!7543542 m!8112080))

(assert (=> b!7543542 m!8112080))

(declare-fun m!8112382 () Bool)

(assert (=> b!7543542 m!8112382))

(assert (=> b!7543542 m!8112122))

(assert (=> b!7543542 m!8112382))

(assert (=> b!7543542 m!8112122))

(declare-fun m!8112388 () Bool)

(assert (=> b!7543542 m!8112388))

(assert (=> b!7543540 m!8112080))

(assert (=> b!7543548 m!8112122))

(assert (=> b!7543548 m!8112122))

(assert (=> b!7543548 m!8112376))

(assert (=> d!2311798 m!8112378))

(assert (=> d!2311798 m!8112144))

(assert (=> b!7543245 d!2311798))

(declare-fun d!2311802 () Bool)

(declare-fun lt!2644174 () List!72795)

(assert (=> d!2311802 (= (++!17429 testedP!423 lt!2644174) knownP!30)))

(declare-fun e!4494288 () List!72795)

(assert (=> d!2311802 (= lt!2644174 e!4494288)))

(declare-fun c!1392702 () Bool)

(assert (=> d!2311802 (= c!1392702 (is-Cons!72671 testedP!423))))

(assert (=> d!2311802 (>= (size!42408 knownP!30) (size!42408 testedP!423))))

(assert (=> d!2311802 (= (getSuffix!3598 knownP!30 testedP!423) lt!2644174)))

(declare-fun b!7543561 () Bool)

(assert (=> b!7543561 (= e!4494288 (getSuffix!3598 (tail!15048 knownP!30) (t!387508 testedP!423)))))

(declare-fun b!7543562 () Bool)

(assert (=> b!7543562 (= e!4494288 knownP!30)))

(assert (= (and d!2311802 c!1392702) b!7543561))

(assert (= (and d!2311802 (not c!1392702)) b!7543562))

(declare-fun m!8112400 () Bool)

(assert (=> d!2311802 m!8112400))

(assert (=> d!2311802 m!8112120))

(assert (=> d!2311802 m!8112118))

(assert (=> b!7543561 m!8112264))

(assert (=> b!7543561 m!8112264))

(declare-fun m!8112402 () Bool)

(assert (=> b!7543561 m!8112402))

(assert (=> b!7543245 d!2311802))

(declare-fun b!7543563 () Bool)

(declare-fun e!4494289 () Bool)

(declare-fun e!4494291 () Bool)

(assert (=> b!7543563 (= e!4494289 e!4494291)))

(declare-fun res!3023257 () Bool)

(assert (=> b!7543563 (=> (not res!3023257) (not e!4494291))))

(assert (=> b!7543563 (= res!3023257 (not (is-Nil!72671 knownP!30)))))

(declare-fun b!7543565 () Bool)

(assert (=> b!7543565 (= e!4494291 (isPrefix!6118 (tail!15048 testedP!423) (tail!15048 knownP!30)))))

(declare-fun b!7543564 () Bool)

(declare-fun res!3023256 () Bool)

(assert (=> b!7543564 (=> (not res!3023256) (not e!4494291))))

(assert (=> b!7543564 (= res!3023256 (= (head!15502 testedP!423) (head!15502 knownP!30)))))

(declare-fun b!7543566 () Bool)

(declare-fun e!4494290 () Bool)

(assert (=> b!7543566 (= e!4494290 (>= (size!42408 knownP!30) (size!42408 testedP!423)))))

(declare-fun d!2311806 () Bool)

(assert (=> d!2311806 e!4494290))

(declare-fun res!3023255 () Bool)

(assert (=> d!2311806 (=> res!3023255 e!4494290)))

(declare-fun lt!2644175 () Bool)

(assert (=> d!2311806 (= res!3023255 (not lt!2644175))))

(assert (=> d!2311806 (= lt!2644175 e!4494289)))

(declare-fun res!3023254 () Bool)

(assert (=> d!2311806 (=> res!3023254 e!4494289)))

(assert (=> d!2311806 (= res!3023254 (is-Nil!72671 testedP!423))))

(assert (=> d!2311806 (= (isPrefix!6118 testedP!423 knownP!30) lt!2644175)))

(assert (= (and d!2311806 (not res!3023254)) b!7543563))

(assert (= (and b!7543563 res!3023257) b!7543564))

(assert (= (and b!7543564 res!3023256) b!7543565))

(assert (= (and d!2311806 (not res!3023255)) b!7543566))

(assert (=> b!7543565 m!8112354))

(assert (=> b!7543565 m!8112264))

(assert (=> b!7543565 m!8112354))

(assert (=> b!7543565 m!8112264))

(declare-fun m!8112404 () Bool)

(assert (=> b!7543565 m!8112404))

(assert (=> b!7543564 m!8112360))

(assert (=> b!7543564 m!8112272))

(assert (=> b!7543566 m!8112120))

(assert (=> b!7543566 m!8112118))

(assert (=> b!7543245 d!2311806))

(declare-fun d!2311808 () Bool)

(assert (=> d!2311808 (isPrefix!6118 testedP!423 knownP!30)))

(declare-fun lt!2644180 () Unit!166762)

(declare-fun choose!58376 (List!72795 List!72795 List!72795) Unit!166762)

(assert (=> d!2311808 (= lt!2644180 (choose!58376 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311808 (isPrefix!6118 knownP!30 input!7874)))

(assert (=> d!2311808 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!868 knownP!30 testedP!423 input!7874) lt!2644180)))

(declare-fun bs!1940058 () Bool)

(assert (= bs!1940058 d!2311808))

(assert (=> bs!1940058 m!8112130))

(declare-fun m!8112412 () Bool)

(assert (=> bs!1940058 m!8112412))

(assert (=> bs!1940058 m!8112078))

(assert (=> b!7543245 d!2311808))

(declare-fun d!2311812 () Bool)

(assert (=> d!2311812 (= lt!2644049 lt!2644037)))

(declare-fun lt!2644181 () Unit!166762)

(assert (=> d!2311812 (= lt!2644181 (choose!58374 testedP!423 lt!2644049 testedP!423 lt!2644037 knownP!30))))

(assert (=> d!2311812 (isPrefix!6118 testedP!423 knownP!30)))

(assert (=> d!2311812 (= (lemmaSamePrefixThenSameSuffix!2846 testedP!423 lt!2644049 testedP!423 lt!2644037 knownP!30) lt!2644181)))

(declare-fun bs!1940059 () Bool)

(assert (= bs!1940059 d!2311812))

(declare-fun m!8112414 () Bool)

(assert (=> bs!1940059 m!8112414))

(assert (=> bs!1940059 m!8112130))

(assert (=> b!7543235 d!2311812))

(declare-fun d!2311814 () Bool)

(declare-fun e!4494299 () Bool)

(assert (=> d!2311814 e!4494299))

(declare-fun res!3023267 () Bool)

(assert (=> d!2311814 (=> (not res!3023267) (not e!4494299))))

(declare-fun lt!2644182 () List!72795)

(assert (=> d!2311814 (= res!3023267 (= (content!15373 lt!2644182) (set.union (content!15373 testedP!423) (content!15373 lt!2644049))))))

(declare-fun e!4494300 () List!72795)

(assert (=> d!2311814 (= lt!2644182 e!4494300)))

(declare-fun c!1392706 () Bool)

(assert (=> d!2311814 (= c!1392706 (is-Nil!72671 testedP!423))))

(assert (=> d!2311814 (= (++!17429 testedP!423 lt!2644049) lt!2644182)))

(declare-fun b!7543584 () Bool)

(assert (=> b!7543584 (= e!4494299 (or (not (= lt!2644049 Nil!72671)) (= lt!2644182 testedP!423)))))

(declare-fun b!7543583 () Bool)

(declare-fun res!3023266 () Bool)

(assert (=> b!7543583 (=> (not res!3023266) (not e!4494299))))

(assert (=> b!7543583 (= res!3023266 (= (size!42408 lt!2644182) (+ (size!42408 testedP!423) (size!42408 lt!2644049))))))

(declare-fun b!7543581 () Bool)

(assert (=> b!7543581 (= e!4494300 lt!2644049)))

(declare-fun b!7543582 () Bool)

(assert (=> b!7543582 (= e!4494300 (Cons!72671 (h!79119 testedP!423) (++!17429 (t!387508 testedP!423) lt!2644049)))))

(assert (= (and d!2311814 c!1392706) b!7543581))

(assert (= (and d!2311814 (not c!1392706)) b!7543582))

(assert (= (and d!2311814 res!3023267) b!7543583))

(assert (= (and b!7543583 res!3023266) b!7543584))

(declare-fun m!8112416 () Bool)

(assert (=> d!2311814 m!8112416))

(assert (=> d!2311814 m!8112308))

(declare-fun m!8112418 () Bool)

(assert (=> d!2311814 m!8112418))

(declare-fun m!8112420 () Bool)

(assert (=> b!7543583 m!8112420))

(assert (=> b!7543583 m!8112118))

(declare-fun m!8112422 () Bool)

(assert (=> b!7543583 m!8112422))

(declare-fun m!8112424 () Bool)

(assert (=> b!7543582 m!8112424))

(assert (=> b!7543235 d!2311814))

(declare-fun d!2311816 () Bool)

(declare-fun e!4494301 () Bool)

(assert (=> d!2311816 e!4494301))

(declare-fun res!3023269 () Bool)

(assert (=> d!2311816 (=> (not res!3023269) (not e!4494301))))

(declare-fun lt!2644183 () List!72795)

(assert (=> d!2311816 (= res!3023269 (= (content!15373 lt!2644183) (set.union (content!15373 lt!2644045) (content!15373 lt!2644050))))))

(declare-fun e!4494302 () List!72795)

(assert (=> d!2311816 (= lt!2644183 e!4494302)))

(declare-fun c!1392707 () Bool)

(assert (=> d!2311816 (= c!1392707 (is-Nil!72671 lt!2644045))))

(assert (=> d!2311816 (= (++!17429 lt!2644045 lt!2644050) lt!2644183)))

(declare-fun b!7543588 () Bool)

(assert (=> b!7543588 (= e!4494301 (or (not (= lt!2644050 Nil!72671)) (= lt!2644183 lt!2644045)))))

(declare-fun b!7543587 () Bool)

(declare-fun res!3023268 () Bool)

(assert (=> b!7543587 (=> (not res!3023268) (not e!4494301))))

(assert (=> b!7543587 (= res!3023268 (= (size!42408 lt!2644183) (+ (size!42408 lt!2644045) (size!42408 lt!2644050))))))

(declare-fun b!7543585 () Bool)

(assert (=> b!7543585 (= e!4494302 lt!2644050)))

(declare-fun b!7543586 () Bool)

(assert (=> b!7543586 (= e!4494302 (Cons!72671 (h!79119 lt!2644045) (++!17429 (t!387508 lt!2644045) lt!2644050)))))

(assert (= (and d!2311816 c!1392707) b!7543585))

(assert (= (and d!2311816 (not c!1392707)) b!7543586))

(assert (= (and d!2311816 res!3023269) b!7543587))

(assert (= (and b!7543587 res!3023268) b!7543588))

(declare-fun m!8112430 () Bool)

(assert (=> d!2311816 m!8112430))

(declare-fun m!8112432 () Bool)

(assert (=> d!2311816 m!8112432))

(declare-fun m!8112434 () Bool)

(assert (=> d!2311816 m!8112434))

(declare-fun m!8112436 () Bool)

(assert (=> b!7543587 m!8112436))

(declare-fun m!8112438 () Bool)

(assert (=> b!7543587 m!8112438))

(declare-fun m!8112440 () Bool)

(assert (=> b!7543587 m!8112440))

(declare-fun m!8112442 () Bool)

(assert (=> b!7543586 m!8112442))

(assert (=> b!7543235 d!2311816))

(declare-fun d!2311818 () Bool)

(assert (=> d!2311818 (= (++!17429 (++!17429 testedP!423 lt!2644045) lt!2644050) (++!17429 testedP!423 (++!17429 lt!2644045 lt!2644050)))))

(declare-fun lt!2644184 () Unit!166762)

(assert (=> d!2311818 (= lt!2644184 (choose!58375 testedP!423 lt!2644045 lt!2644050))))

(assert (=> d!2311818 (= (lemmaConcatAssociativity!3077 testedP!423 lt!2644045 lt!2644050) lt!2644184)))

(declare-fun bs!1940060 () Bool)

(assert (= bs!1940060 d!2311818))

(assert (=> bs!1940060 m!8112098))

(declare-fun m!8112450 () Bool)

(assert (=> bs!1940060 m!8112450))

(assert (=> bs!1940060 m!8112098))

(assert (=> bs!1940060 m!8112088))

(declare-fun m!8112452 () Bool)

(assert (=> bs!1940060 m!8112452))

(declare-fun m!8112454 () Bool)

(assert (=> bs!1940060 m!8112454))

(assert (=> bs!1940060 m!8112088))

(assert (=> b!7543235 d!2311818))

(declare-fun d!2311822 () Bool)

(declare-fun e!4494303 () Bool)

(assert (=> d!2311822 e!4494303))

(declare-fun res!3023271 () Bool)

(assert (=> d!2311822 (=> (not res!3023271) (not e!4494303))))

(declare-fun lt!2644185 () List!72795)

(assert (=> d!2311822 (= res!3023271 (= (content!15373 lt!2644185) (set.union (content!15373 testedP!423) (content!15373 lt!2644035))))))

(declare-fun e!4494304 () List!72795)

(assert (=> d!2311822 (= lt!2644185 e!4494304)))

(declare-fun c!1392708 () Bool)

(assert (=> d!2311822 (= c!1392708 (is-Nil!72671 testedP!423))))

(assert (=> d!2311822 (= (++!17429 testedP!423 lt!2644035) lt!2644185)))

(declare-fun b!7543592 () Bool)

(assert (=> b!7543592 (= e!4494303 (or (not (= lt!2644035 Nil!72671)) (= lt!2644185 testedP!423)))))

(declare-fun b!7543591 () Bool)

(declare-fun res!3023270 () Bool)

(assert (=> b!7543591 (=> (not res!3023270) (not e!4494303))))

(assert (=> b!7543591 (= res!3023270 (= (size!42408 lt!2644185) (+ (size!42408 testedP!423) (size!42408 lt!2644035))))))

(declare-fun b!7543589 () Bool)

(assert (=> b!7543589 (= e!4494304 lt!2644035)))

(declare-fun b!7543590 () Bool)

(assert (=> b!7543590 (= e!4494304 (Cons!72671 (h!79119 testedP!423) (++!17429 (t!387508 testedP!423) lt!2644035)))))

(assert (= (and d!2311822 c!1392708) b!7543589))

(assert (= (and d!2311822 (not c!1392708)) b!7543590))

(assert (= (and d!2311822 res!3023271) b!7543591))

(assert (= (and b!7543591 res!3023270) b!7543592))

(declare-fun m!8112456 () Bool)

(assert (=> d!2311822 m!8112456))

(assert (=> d!2311822 m!8112308))

(declare-fun m!8112458 () Bool)

(assert (=> d!2311822 m!8112458))

(declare-fun m!8112460 () Bool)

(assert (=> b!7543591 m!8112460))

(assert (=> b!7543591 m!8112118))

(declare-fun m!8112462 () Bool)

(assert (=> b!7543591 m!8112462))

(declare-fun m!8112464 () Bool)

(assert (=> b!7543590 m!8112464))

(assert (=> b!7543224 d!2311822))

(declare-fun b!7543593 () Bool)

(declare-fun res!3023276 () Bool)

(declare-fun e!4494311 () Bool)

(assert (=> b!7543593 (=> res!3023276 e!4494311)))

(assert (=> b!7543593 (= res!3023276 (not (is-Concat!28757 baseR!101)))))

(declare-fun e!4494308 () Bool)

(assert (=> b!7543593 (= e!4494308 e!4494311)))

(declare-fun b!7543594 () Bool)

(declare-fun e!4494306 () Bool)

(assert (=> b!7543594 (= e!4494306 e!4494308)))

(declare-fun c!1392710 () Bool)

(assert (=> b!7543594 (= c!1392710 (is-Union!19912 baseR!101))))

(declare-fun bm!691893 () Bool)

(declare-fun call!691899 () Bool)

(assert (=> bm!691893 (= call!691899 (validRegex!10340 (ite c!1392710 (regOne!40337 baseR!101) (regOne!40336 baseR!101))))))

(declare-fun b!7543595 () Bool)

(declare-fun res!3023273 () Bool)

(declare-fun e!4494305 () Bool)

(assert (=> b!7543595 (=> (not res!3023273) (not e!4494305))))

(assert (=> b!7543595 (= res!3023273 call!691899)))

(assert (=> b!7543595 (= e!4494308 e!4494305)))

(declare-fun b!7543596 () Bool)

(declare-fun e!4494307 () Bool)

(assert (=> b!7543596 (= e!4494306 e!4494307)))

(declare-fun res!3023274 () Bool)

(assert (=> b!7543596 (= res!3023274 (not (nullable!8684 (reg!20241 baseR!101))))))

(assert (=> b!7543596 (=> (not res!3023274) (not e!4494307))))

(declare-fun b!7543597 () Bool)

(declare-fun e!4494309 () Bool)

(declare-fun call!691900 () Bool)

(assert (=> b!7543597 (= e!4494309 call!691900)))

(declare-fun b!7543598 () Bool)

(assert (=> b!7543598 (= e!4494311 e!4494309)))

(declare-fun res!3023275 () Bool)

(assert (=> b!7543598 (=> (not res!3023275) (not e!4494309))))

(assert (=> b!7543598 (= res!3023275 call!691899)))

(declare-fun d!2311824 () Bool)

(declare-fun res!3023272 () Bool)

(declare-fun e!4494310 () Bool)

(assert (=> d!2311824 (=> res!3023272 e!4494310)))

(assert (=> d!2311824 (= res!3023272 (is-ElementMatch!19912 baseR!101))))

(assert (=> d!2311824 (= (validRegex!10340 baseR!101) e!4494310)))

(declare-fun b!7543599 () Bool)

(assert (=> b!7543599 (= e!4494305 call!691900)))

(declare-fun c!1392709 () Bool)

(declare-fun call!691898 () Bool)

(declare-fun bm!691894 () Bool)

(assert (=> bm!691894 (= call!691898 (validRegex!10340 (ite c!1392709 (reg!20241 baseR!101) (ite c!1392710 (regTwo!40337 baseR!101) (regTwo!40336 baseR!101)))))))

(declare-fun b!7543600 () Bool)

(assert (=> b!7543600 (= e!4494307 call!691898)))

(declare-fun b!7543601 () Bool)

(assert (=> b!7543601 (= e!4494310 e!4494306)))

(assert (=> b!7543601 (= c!1392709 (is-Star!19912 baseR!101))))

(declare-fun bm!691895 () Bool)

(assert (=> bm!691895 (= call!691900 call!691898)))

(assert (= (and d!2311824 (not res!3023272)) b!7543601))

(assert (= (and b!7543601 c!1392709) b!7543596))

(assert (= (and b!7543601 (not c!1392709)) b!7543594))

(assert (= (and b!7543596 res!3023274) b!7543600))

(assert (= (and b!7543594 c!1392710) b!7543595))

(assert (= (and b!7543594 (not c!1392710)) b!7543593))

(assert (= (and b!7543595 res!3023273) b!7543599))

(assert (= (and b!7543593 (not res!3023276)) b!7543598))

(assert (= (and b!7543598 res!3023275) b!7543597))

(assert (= (or b!7543595 b!7543598) bm!691893))

(assert (= (or b!7543599 b!7543597) bm!691895))

(assert (= (or b!7543600 bm!691895) bm!691894))

(declare-fun m!8112466 () Bool)

(assert (=> bm!691893 m!8112466))

(declare-fun m!8112468 () Bool)

(assert (=> b!7543596 m!8112468))

(declare-fun m!8112470 () Bool)

(assert (=> bm!691894 m!8112470))

(assert (=> start!729534 d!2311824))

(declare-fun d!2311826 () Bool)

(declare-fun e!4494312 () Bool)

(assert (=> d!2311826 e!4494312))

(declare-fun res!3023278 () Bool)

(assert (=> d!2311826 (=> (not res!3023278) (not e!4494312))))

(declare-fun lt!2644186 () List!72795)

(assert (=> d!2311826 (= res!3023278 (= (content!15373 lt!2644186) (set.union (content!15373 lt!2644040) (content!15373 lt!2644050))))))

(declare-fun e!4494313 () List!72795)

(assert (=> d!2311826 (= lt!2644186 e!4494313)))

(declare-fun c!1392711 () Bool)

(assert (=> d!2311826 (= c!1392711 (is-Nil!72671 lt!2644040))))

(assert (=> d!2311826 (= (++!17429 lt!2644040 lt!2644050) lt!2644186)))

(declare-fun b!7543605 () Bool)

(assert (=> b!7543605 (= e!4494312 (or (not (= lt!2644050 Nil!72671)) (= lt!2644186 lt!2644040)))))

(declare-fun b!7543604 () Bool)

(declare-fun res!3023277 () Bool)

(assert (=> b!7543604 (=> (not res!3023277) (not e!4494312))))

(assert (=> b!7543604 (= res!3023277 (= (size!42408 lt!2644186) (+ (size!42408 lt!2644040) (size!42408 lt!2644050))))))

(declare-fun b!7543602 () Bool)

(assert (=> b!7543602 (= e!4494313 lt!2644050)))

(declare-fun b!7543603 () Bool)

(assert (=> b!7543603 (= e!4494313 (Cons!72671 (h!79119 lt!2644040) (++!17429 (t!387508 lt!2644040) lt!2644050)))))

(assert (= (and d!2311826 c!1392711) b!7543602))

(assert (= (and d!2311826 (not c!1392711)) b!7543603))

(assert (= (and d!2311826 res!3023278) b!7543604))

(assert (= (and b!7543604 res!3023277) b!7543605))

(declare-fun m!8112472 () Bool)

(assert (=> d!2311826 m!8112472))

(declare-fun m!8112474 () Bool)

(assert (=> d!2311826 m!8112474))

(assert (=> d!2311826 m!8112434))

(declare-fun m!8112476 () Bool)

(assert (=> b!7543604 m!8112476))

(declare-fun m!8112478 () Bool)

(assert (=> b!7543604 m!8112478))

(assert (=> b!7543604 m!8112440))

(declare-fun m!8112480 () Bool)

(assert (=> b!7543603 m!8112480))

(assert (=> b!7543241 d!2311826))

(declare-fun b!7543606 () Bool)

(declare-fun e!4494314 () Bool)

(declare-fun e!4494316 () Bool)

(assert (=> b!7543606 (= e!4494314 e!4494316)))

(declare-fun res!3023282 () Bool)

(assert (=> b!7543606 (=> (not res!3023282) (not e!4494316))))

(assert (=> b!7543606 (= res!3023282 (not (is-Nil!72671 input!7874)))))

(declare-fun b!7543608 () Bool)

(assert (=> b!7543608 (= e!4494316 (isPrefix!6118 (tail!15048 knownP!30) (tail!15048 input!7874)))))

(declare-fun b!7543607 () Bool)

(declare-fun res!3023281 () Bool)

(assert (=> b!7543607 (=> (not res!3023281) (not e!4494316))))

(assert (=> b!7543607 (= res!3023281 (= (head!15502 knownP!30) (head!15502 input!7874)))))

(declare-fun b!7543609 () Bool)

(declare-fun e!4494315 () Bool)

(assert (=> b!7543609 (= e!4494315 (>= (size!42408 input!7874) (size!42408 knownP!30)))))

(declare-fun d!2311828 () Bool)

(assert (=> d!2311828 e!4494315))

(declare-fun res!3023280 () Bool)

(assert (=> d!2311828 (=> res!3023280 e!4494315)))

(declare-fun lt!2644187 () Bool)

(assert (=> d!2311828 (= res!3023280 (not lt!2644187))))

(assert (=> d!2311828 (= lt!2644187 e!4494314)))

(declare-fun res!3023279 () Bool)

(assert (=> d!2311828 (=> res!3023279 e!4494314)))

(assert (=> d!2311828 (= res!3023279 (is-Nil!72671 knownP!30))))

(assert (=> d!2311828 (= (isPrefix!6118 knownP!30 input!7874) lt!2644187)))

(assert (= (and d!2311828 (not res!3023279)) b!7543606))

(assert (= (and b!7543606 res!3023282) b!7543607))

(assert (= (and b!7543607 res!3023281) b!7543608))

(assert (= (and d!2311828 (not res!3023280)) b!7543609))

(assert (=> b!7543608 m!8112264))

(assert (=> b!7543608 m!8112356))

(assert (=> b!7543608 m!8112264))

(assert (=> b!7543608 m!8112356))

(declare-fun m!8112482 () Bool)

(assert (=> b!7543608 m!8112482))

(assert (=> b!7543607 m!8112272))

(assert (=> b!7543607 m!8112362))

(assert (=> b!7543609 m!8112076))

(assert (=> b!7543609 m!8112120))

(assert (=> b!7543230 d!2311828))

(declare-fun d!2311830 () Bool)

(declare-fun lostCauseFct!439 (Regex!19912) Bool)

(assert (=> d!2311830 (= (lostCause!1704 r!24333) (lostCauseFct!439 r!24333))))

(declare-fun bs!1940061 () Bool)

(assert (= bs!1940061 d!2311830))

(declare-fun m!8112484 () Bool)

(assert (=> bs!1940061 m!8112484))

(assert (=> b!7543231 d!2311830))

(declare-fun d!2311832 () Bool)

(declare-fun lt!2644188 () Int)

(assert (=> d!2311832 (>= lt!2644188 0)))

(declare-fun e!4494317 () Int)

(assert (=> d!2311832 (= lt!2644188 e!4494317)))

(declare-fun c!1392712 () Bool)

(assert (=> d!2311832 (= c!1392712 (is-Nil!72671 input!7874))))

(assert (=> d!2311832 (= (size!42408 input!7874) lt!2644188)))

(declare-fun b!7543610 () Bool)

(assert (=> b!7543610 (= e!4494317 0)))

(declare-fun b!7543611 () Bool)

(assert (=> b!7543611 (= e!4494317 (+ 1 (size!42408 (t!387508 input!7874))))))

(assert (= (and d!2311832 c!1392712) b!7543610))

(assert (= (and d!2311832 (not c!1392712)) b!7543611))

(declare-fun m!8112486 () Bool)

(assert (=> b!7543611 m!8112486))

(assert (=> b!7543221 d!2311832))

(declare-fun b!7543612 () Bool)

(declare-fun e!4494318 () Bool)

(declare-fun e!4494320 () Bool)

(assert (=> b!7543612 (= e!4494318 e!4494320)))

(declare-fun res!3023286 () Bool)

(assert (=> b!7543612 (=> (not res!3023286) (not e!4494320))))

(assert (=> b!7543612 (= res!3023286 (not (is-Nil!72671 knownP!30)))))

(declare-fun b!7543614 () Bool)

(assert (=> b!7543614 (= e!4494320 (isPrefix!6118 (tail!15048 lt!2644040) (tail!15048 knownP!30)))))

(declare-fun b!7543613 () Bool)

(declare-fun res!3023285 () Bool)

(assert (=> b!7543613 (=> (not res!3023285) (not e!4494320))))

(assert (=> b!7543613 (= res!3023285 (= (head!15502 lt!2644040) (head!15502 knownP!30)))))

(declare-fun b!7543615 () Bool)

(declare-fun e!4494319 () Bool)

(assert (=> b!7543615 (= e!4494319 (>= (size!42408 knownP!30) (size!42408 lt!2644040)))))

(declare-fun d!2311834 () Bool)

(assert (=> d!2311834 e!4494319))

(declare-fun res!3023284 () Bool)

(assert (=> d!2311834 (=> res!3023284 e!4494319)))

(declare-fun lt!2644189 () Bool)

(assert (=> d!2311834 (= res!3023284 (not lt!2644189))))

(assert (=> d!2311834 (= lt!2644189 e!4494318)))

(declare-fun res!3023283 () Bool)

(assert (=> d!2311834 (=> res!3023283 e!4494318)))

(assert (=> d!2311834 (= res!3023283 (is-Nil!72671 lt!2644040))))

(assert (=> d!2311834 (= (isPrefix!6118 lt!2644040 knownP!30) lt!2644189)))

(assert (= (and d!2311834 (not res!3023283)) b!7543612))

(assert (= (and b!7543612 res!3023286) b!7543613))

(assert (= (and b!7543613 res!3023285) b!7543614))

(assert (= (and d!2311834 (not res!3023284)) b!7543615))

(declare-fun m!8112488 () Bool)

(assert (=> b!7543614 m!8112488))

(assert (=> b!7543614 m!8112264))

(assert (=> b!7543614 m!8112488))

(assert (=> b!7543614 m!8112264))

(declare-fun m!8112490 () Bool)

(assert (=> b!7543614 m!8112490))

(declare-fun m!8112492 () Bool)

(assert (=> b!7543613 m!8112492))

(assert (=> b!7543613 m!8112272))

(assert (=> b!7543615 m!8112120))

(assert (=> b!7543615 m!8112478))

(assert (=> b!7543243 d!2311834))

(declare-fun d!2311836 () Bool)

(declare-fun lt!2644190 () List!72795)

(assert (=> d!2311836 (= (++!17429 testedP!423 lt!2644190) input!7874)))

(declare-fun e!4494325 () List!72795)

(assert (=> d!2311836 (= lt!2644190 e!4494325)))

(declare-fun c!1392715 () Bool)

(assert (=> d!2311836 (= c!1392715 (is-Cons!72671 testedP!423))))

(assert (=> d!2311836 (>= (size!42408 input!7874) (size!42408 testedP!423))))

(assert (=> d!2311836 (= (getSuffix!3598 input!7874 testedP!423) lt!2644190)))

(declare-fun b!7543622 () Bool)

(assert (=> b!7543622 (= e!4494325 (getSuffix!3598 (tail!15048 input!7874) (t!387508 testedP!423)))))

(declare-fun b!7543623 () Bool)

(assert (=> b!7543623 (= e!4494325 input!7874)))

(assert (= (and d!2311836 c!1392715) b!7543622))

(assert (= (and d!2311836 (not c!1392715)) b!7543623))

(declare-fun m!8112494 () Bool)

(assert (=> d!2311836 m!8112494))

(assert (=> d!2311836 m!8112076))

(assert (=> d!2311836 m!8112118))

(assert (=> b!7543622 m!8112356))

(assert (=> b!7543622 m!8112356))

(declare-fun m!8112496 () Bool)

(assert (=> b!7543622 m!8112496))

(assert (=> b!7543243 d!2311836))

(declare-fun d!2311838 () Bool)

(assert (=> d!2311838 (= (head!15502 lt!2644035) (h!79119 lt!2644035))))

(assert (=> b!7543243 d!2311838))

(declare-fun b!7543634 () Bool)

(declare-fun e!4494334 () Bool)

(declare-fun e!4494336 () Bool)

(assert (=> b!7543634 (= e!4494334 e!4494336)))

(declare-fun res!3023298 () Bool)

(assert (=> b!7543634 (=> (not res!3023298) (not e!4494336))))

(assert (=> b!7543634 (= res!3023298 (not (is-Nil!72671 input!7874)))))

(declare-fun b!7543636 () Bool)

(assert (=> b!7543636 (= e!4494336 (isPrefix!6118 (tail!15048 lt!2644040) (tail!15048 input!7874)))))

(declare-fun b!7543635 () Bool)

(declare-fun res!3023297 () Bool)

(assert (=> b!7543635 (=> (not res!3023297) (not e!4494336))))

(assert (=> b!7543635 (= res!3023297 (= (head!15502 lt!2644040) (head!15502 input!7874)))))

(declare-fun b!7543637 () Bool)

(declare-fun e!4494335 () Bool)

(assert (=> b!7543637 (= e!4494335 (>= (size!42408 input!7874) (size!42408 lt!2644040)))))

(declare-fun d!2311840 () Bool)

(assert (=> d!2311840 e!4494335))

(declare-fun res!3023296 () Bool)

(assert (=> d!2311840 (=> res!3023296 e!4494335)))

(declare-fun lt!2644191 () Bool)

(assert (=> d!2311840 (= res!3023296 (not lt!2644191))))

(assert (=> d!2311840 (= lt!2644191 e!4494334)))

(declare-fun res!3023295 () Bool)

(assert (=> d!2311840 (=> res!3023295 e!4494334)))

(assert (=> d!2311840 (= res!3023295 (is-Nil!72671 lt!2644040))))

(assert (=> d!2311840 (= (isPrefix!6118 lt!2644040 input!7874) lt!2644191)))

(assert (= (and d!2311840 (not res!3023295)) b!7543634))

(assert (= (and b!7543634 res!3023298) b!7543635))

(assert (= (and b!7543635 res!3023297) b!7543636))

(assert (= (and d!2311840 (not res!3023296)) b!7543637))

(assert (=> b!7543636 m!8112488))

(assert (=> b!7543636 m!8112356))

(assert (=> b!7543636 m!8112488))

(assert (=> b!7543636 m!8112356))

(declare-fun m!8112498 () Bool)

(assert (=> b!7543636 m!8112498))

(assert (=> b!7543635 m!8112492))

(assert (=> b!7543635 m!8112362))

(assert (=> b!7543637 m!8112076))

(assert (=> b!7543637 m!8112478))

(assert (=> b!7543243 d!2311840))

(declare-fun d!2311842 () Bool)

(assert (=> d!2311842 (isPrefix!6118 lt!2644040 knownP!30)))

(declare-fun lt!2644192 () Unit!166762)

(assert (=> d!2311842 (= lt!2644192 (choose!58376 knownP!30 lt!2644040 input!7874))))

(assert (=> d!2311842 (isPrefix!6118 knownP!30 input!7874)))

(assert (=> d!2311842 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!868 knownP!30 lt!2644040 input!7874) lt!2644192)))

(declare-fun bs!1940062 () Bool)

(assert (= bs!1940062 d!2311842))

(assert (=> bs!1940062 m!8112100))

(declare-fun m!8112500 () Bool)

(assert (=> bs!1940062 m!8112500))

(assert (=> bs!1940062 m!8112078))

(assert (=> b!7543243 d!2311842))

(declare-fun d!2311844 () Bool)

(declare-fun e!4494339 () Bool)

(assert (=> d!2311844 e!4494339))

(declare-fun res!3023302 () Bool)

(assert (=> d!2311844 (=> (not res!3023302) (not e!4494339))))

(declare-fun lt!2644193 () List!72795)

(assert (=> d!2311844 (= res!3023302 (= (content!15373 lt!2644193) (set.union (content!15373 knownP!30) (content!15373 lt!2644029))))))

(declare-fun e!4494340 () List!72795)

(assert (=> d!2311844 (= lt!2644193 e!4494340)))

(declare-fun c!1392718 () Bool)

(assert (=> d!2311844 (= c!1392718 (is-Nil!72671 knownP!30))))

(assert (=> d!2311844 (= (++!17429 knownP!30 lt!2644029) lt!2644193)))

(declare-fun b!7543643 () Bool)

(assert (=> b!7543643 (= e!4494339 (or (not (= lt!2644029 Nil!72671)) (= lt!2644193 knownP!30)))))

(declare-fun b!7543642 () Bool)

(declare-fun res!3023301 () Bool)

(assert (=> b!7543642 (=> (not res!3023301) (not e!4494339))))

(assert (=> b!7543642 (= res!3023301 (= (size!42408 lt!2644193) (+ (size!42408 knownP!30) (size!42408 lt!2644029))))))

(declare-fun b!7543640 () Bool)

(assert (=> b!7543640 (= e!4494340 lt!2644029)))

(declare-fun b!7543641 () Bool)

(assert (=> b!7543641 (= e!4494340 (Cons!72671 (h!79119 knownP!30) (++!17429 (t!387508 knownP!30) lt!2644029)))))

(assert (= (and d!2311844 c!1392718) b!7543640))

(assert (= (and d!2311844 (not c!1392718)) b!7543641))

(assert (= (and d!2311844 res!3023302) b!7543642))

(assert (= (and b!7543642 res!3023301) b!7543643))

(declare-fun m!8112502 () Bool)

(assert (=> d!2311844 m!8112502))

(declare-fun m!8112504 () Bool)

(assert (=> d!2311844 m!8112504))

(assert (=> d!2311844 m!8112322))

(declare-fun m!8112506 () Bool)

(assert (=> b!7543642 m!8112506))

(assert (=> b!7543642 m!8112120))

(assert (=> b!7543642 m!8112328))

(declare-fun m!8112508 () Bool)

(assert (=> b!7543641 m!8112508))

(assert (=> b!7543243 d!2311844))

(declare-fun d!2311846 () Bool)

(declare-fun lt!2644194 () Regex!19912)

(assert (=> d!2311846 (validRegex!10340 lt!2644194)))

(declare-fun e!4494341 () Regex!19912)

(assert (=> d!2311846 (= lt!2644194 e!4494341)))

(declare-fun c!1392719 () Bool)

(assert (=> d!2311846 (= c!1392719 (is-Cons!72671 lt!2644040))))

(assert (=> d!2311846 (validRegex!10340 baseR!101)))

(assert (=> d!2311846 (= (derivative!444 baseR!101 lt!2644040) lt!2644194)))

(declare-fun b!7543644 () Bool)

(assert (=> b!7543644 (= e!4494341 (derivative!444 (derivativeStep!5702 baseR!101 (h!79119 lt!2644040)) (t!387508 lt!2644040)))))

(declare-fun b!7543645 () Bool)

(assert (=> b!7543645 (= e!4494341 baseR!101)))

(assert (= (and d!2311846 c!1392719) b!7543644))

(assert (= (and d!2311846 (not c!1392719)) b!7543645))

(declare-fun m!8112510 () Bool)

(assert (=> d!2311846 m!8112510))

(assert (=> d!2311846 m!8112146))

(declare-fun m!8112512 () Bool)

(assert (=> b!7543644 m!8112512))

(assert (=> b!7543644 m!8112512))

(declare-fun m!8112514 () Bool)

(assert (=> b!7543644 m!8112514))

(assert (=> b!7543243 d!2311846))

(declare-fun d!2311848 () Bool)

(declare-fun lt!2644195 () List!72795)

(assert (=> d!2311848 (= (++!17429 lt!2644040 lt!2644195) knownP!30)))

(declare-fun e!4494342 () List!72795)

(assert (=> d!2311848 (= lt!2644195 e!4494342)))

(declare-fun c!1392720 () Bool)

(assert (=> d!2311848 (= c!1392720 (is-Cons!72671 lt!2644040))))

(assert (=> d!2311848 (>= (size!42408 knownP!30) (size!42408 lt!2644040))))

(assert (=> d!2311848 (= (getSuffix!3598 knownP!30 lt!2644040) lt!2644195)))

(declare-fun b!7543646 () Bool)

(assert (=> b!7543646 (= e!4494342 (getSuffix!3598 (tail!15048 knownP!30) (t!387508 lt!2644040)))))

(declare-fun b!7543647 () Bool)

(assert (=> b!7543647 (= e!4494342 knownP!30)))

(assert (= (and d!2311848 c!1392720) b!7543646))

(assert (= (and d!2311848 (not c!1392720)) b!7543647))

(declare-fun m!8112516 () Bool)

(assert (=> d!2311848 m!8112516))

(assert (=> d!2311848 m!8112120))

(assert (=> d!2311848 m!8112478))

(assert (=> b!7543646 m!8112264))

(assert (=> b!7543646 m!8112264))

(declare-fun m!8112518 () Bool)

(assert (=> b!7543646 m!8112518))

(assert (=> b!7543243 d!2311848))

(declare-fun d!2311850 () Bool)

(declare-fun lt!2644196 () List!72795)

(assert (=> d!2311850 (= (++!17429 knownP!30 lt!2644196) input!7874)))

(declare-fun e!4494343 () List!72795)

(assert (=> d!2311850 (= lt!2644196 e!4494343)))

(declare-fun c!1392721 () Bool)

(assert (=> d!2311850 (= c!1392721 (is-Cons!72671 knownP!30))))

(assert (=> d!2311850 (>= (size!42408 input!7874) (size!42408 knownP!30))))

(assert (=> d!2311850 (= (getSuffix!3598 input!7874 knownP!30) lt!2644196)))

(declare-fun b!7543648 () Bool)

(assert (=> b!7543648 (= e!4494343 (getSuffix!3598 (tail!15048 input!7874) (t!387508 knownP!30)))))

(declare-fun b!7543649 () Bool)

(assert (=> b!7543649 (= e!4494343 input!7874)))

(assert (= (and d!2311850 c!1392721) b!7543648))

(assert (= (and d!2311850 (not c!1392721)) b!7543649))

(declare-fun m!8112520 () Bool)

(assert (=> d!2311850 m!8112520))

(assert (=> d!2311850 m!8112076))

(assert (=> d!2311850 m!8112120))

(assert (=> b!7543648 m!8112356))

(assert (=> b!7543648 m!8112356))

(declare-fun m!8112522 () Bool)

(assert (=> b!7543648 m!8112522))

(assert (=> b!7543243 d!2311850))

(declare-fun d!2311852 () Bool)

(assert (=> d!2311852 (= (derivative!444 baseR!101 (++!17429 testedP!423 (Cons!72671 lt!2644031 Nil!72671))) (derivativeStep!5702 r!24333 lt!2644031))))

(declare-fun lt!2644199 () Unit!166762)

(declare-fun choose!58380 (Regex!19912 Regex!19912 List!72795 C!40150) Unit!166762)

(assert (=> d!2311852 (= lt!2644199 (choose!58380 baseR!101 r!24333 testedP!423 lt!2644031))))

(assert (=> d!2311852 (validRegex!10340 baseR!101)))

(assert (=> d!2311852 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!150 baseR!101 r!24333 testedP!423 lt!2644031) lt!2644199)))

(declare-fun bs!1940063 () Bool)

(assert (= bs!1940063 d!2311852))

(declare-fun m!8112524 () Bool)

(assert (=> bs!1940063 m!8112524))

(assert (=> bs!1940063 m!8112106))

(assert (=> bs!1940063 m!8112146))

(declare-fun m!8112526 () Bool)

(assert (=> bs!1940063 m!8112526))

(assert (=> bs!1940063 m!8112526))

(declare-fun m!8112528 () Bool)

(assert (=> bs!1940063 m!8112528))

(assert (=> b!7543243 d!2311852))

(declare-fun c!1392739 () Bool)

(declare-fun call!691921 () Regex!19912)

(declare-fun bm!691916 () Bool)

(declare-fun c!1392740 () Bool)

(assert (=> bm!691916 (= call!691921 (derivativeStep!5702 (ite c!1392739 (regOne!40337 r!24333) (ite c!1392740 (reg!20241 r!24333) (regOne!40336 r!24333))) lt!2644031))))

(declare-fun bm!691917 () Bool)

(declare-fun call!691922 () Regex!19912)

(declare-fun call!691923 () Regex!19912)

(assert (=> bm!691917 (= call!691922 call!691923)))

(declare-fun b!7543692 () Bool)

(declare-fun e!4494373 () Regex!19912)

(assert (=> b!7543692 (= e!4494373 (ite (= lt!2644031 (c!1392647 r!24333)) EmptyExpr!19912 EmptyLang!19912))))

(declare-fun b!7543693 () Bool)

(declare-fun e!4494371 () Regex!19912)

(declare-fun e!4494375 () Regex!19912)

(assert (=> b!7543693 (= e!4494371 e!4494375)))

(assert (=> b!7543693 (= c!1392740 (is-Star!19912 r!24333))))

(declare-fun b!7543694 () Bool)

(declare-fun call!691924 () Regex!19912)

(assert (=> b!7543694 (= e!4494371 (Union!19912 call!691921 call!691924))))

(declare-fun d!2311854 () Bool)

(declare-fun lt!2644204 () Regex!19912)

(assert (=> d!2311854 (validRegex!10340 lt!2644204)))

(declare-fun e!4494372 () Regex!19912)

(assert (=> d!2311854 (= lt!2644204 e!4494372)))

(declare-fun c!1392741 () Bool)

(assert (=> d!2311854 (= c!1392741 (or (is-EmptyExpr!19912 r!24333) (is-EmptyLang!19912 r!24333)))))

(assert (=> d!2311854 (validRegex!10340 r!24333)))

(assert (=> d!2311854 (= (derivativeStep!5702 r!24333 lt!2644031) lt!2644204)))

(declare-fun b!7543695 () Bool)

(assert (=> b!7543695 (= c!1392739 (is-Union!19912 r!24333))))

(assert (=> b!7543695 (= e!4494373 e!4494371)))

(declare-fun b!7543696 () Bool)

(assert (=> b!7543696 (= e!4494372 e!4494373)))

(declare-fun c!1392737 () Bool)

(assert (=> b!7543696 (= c!1392737 (is-ElementMatch!19912 r!24333))))

(declare-fun bm!691918 () Bool)

(assert (=> bm!691918 (= call!691924 (derivativeStep!5702 (ite c!1392739 (regTwo!40337 r!24333) (regTwo!40336 r!24333)) lt!2644031))))

(declare-fun bm!691919 () Bool)

(assert (=> bm!691919 (= call!691923 call!691921)))

(declare-fun b!7543697 () Bool)

(assert (=> b!7543697 (= e!4494372 EmptyLang!19912)))

(declare-fun b!7543698 () Bool)

(declare-fun e!4494374 () Regex!19912)

(assert (=> b!7543698 (= e!4494374 (Union!19912 (Concat!28757 call!691922 (regTwo!40336 r!24333)) EmptyLang!19912))))

(declare-fun b!7543699 () Bool)

(assert (=> b!7543699 (= e!4494375 (Concat!28757 call!691923 r!24333))))

(declare-fun b!7543700 () Bool)

(declare-fun c!1392738 () Bool)

(assert (=> b!7543700 (= c!1392738 (nullable!8684 (regOne!40336 r!24333)))))

(assert (=> b!7543700 (= e!4494375 e!4494374)))

(declare-fun b!7543701 () Bool)

(assert (=> b!7543701 (= e!4494374 (Union!19912 (Concat!28757 call!691922 (regTwo!40336 r!24333)) call!691924))))

(assert (= (and d!2311854 c!1392741) b!7543697))

(assert (= (and d!2311854 (not c!1392741)) b!7543696))

(assert (= (and b!7543696 c!1392737) b!7543692))

(assert (= (and b!7543696 (not c!1392737)) b!7543695))

(assert (= (and b!7543695 c!1392739) b!7543694))

(assert (= (and b!7543695 (not c!1392739)) b!7543693))

(assert (= (and b!7543693 c!1392740) b!7543699))

(assert (= (and b!7543693 (not c!1392740)) b!7543700))

(assert (= (and b!7543700 c!1392738) b!7543701))

(assert (= (and b!7543700 (not c!1392738)) b!7543698))

(assert (= (or b!7543701 b!7543698) bm!691917))

(assert (= (or b!7543699 bm!691917) bm!691919))

(assert (= (or b!7543694 b!7543701) bm!691918))

(assert (= (or b!7543694 bm!691919) bm!691916))

(declare-fun m!8112550 () Bool)

(assert (=> bm!691916 m!8112550))

(declare-fun m!8112552 () Bool)

(assert (=> d!2311854 m!8112552))

(assert (=> d!2311854 m!8112144))

(declare-fun m!8112554 () Bool)

(assert (=> bm!691918 m!8112554))

(declare-fun m!8112556 () Bool)

(assert (=> b!7543700 m!8112556))

(assert (=> b!7543243 d!2311854))

(declare-fun d!2311864 () Bool)

(assert (=> d!2311864 (isPrefix!6118 (++!17429 testedP!423 (Cons!72671 (head!15502 (getSuffix!3598 input!7874 testedP!423)) Nil!72671)) input!7874)))

(declare-fun lt!2644207 () Unit!166762)

(declare-fun choose!58381 (List!72795 List!72795) Unit!166762)

(assert (=> d!2311864 (= lt!2644207 (choose!58381 testedP!423 input!7874))))

(assert (=> d!2311864 (isPrefix!6118 testedP!423 input!7874)))

(assert (=> d!2311864 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1183 testedP!423 input!7874) lt!2644207)))

(declare-fun bs!1940065 () Bool)

(assert (= bs!1940065 d!2311864))

(declare-fun m!8112558 () Bool)

(assert (=> bs!1940065 m!8112558))

(declare-fun m!8112560 () Bool)

(assert (=> bs!1940065 m!8112560))

(declare-fun m!8112562 () Bool)

(assert (=> bs!1940065 m!8112562))

(assert (=> bs!1940065 m!8112558))

(assert (=> bs!1940065 m!8112148))

(assert (=> bs!1940065 m!8112112))

(declare-fun m!8112564 () Bool)

(assert (=> bs!1940065 m!8112564))

(assert (=> bs!1940065 m!8112112))

(assert (=> b!7543243 d!2311864))

(declare-fun d!2311866 () Bool)

(declare-fun e!4494376 () Bool)

(assert (=> d!2311866 e!4494376))

(declare-fun res!3023318 () Bool)

(assert (=> d!2311866 (=> (not res!3023318) (not e!4494376))))

(declare-fun lt!2644208 () List!72795)

(assert (=> d!2311866 (= res!3023318 (= (content!15373 lt!2644208) (set.union (content!15373 testedP!423) (content!15373 lt!2644045))))))

(declare-fun e!4494377 () List!72795)

(assert (=> d!2311866 (= lt!2644208 e!4494377)))

(declare-fun c!1392742 () Bool)

(assert (=> d!2311866 (= c!1392742 (is-Nil!72671 testedP!423))))

(assert (=> d!2311866 (= (++!17429 testedP!423 lt!2644045) lt!2644208)))

(declare-fun b!7543705 () Bool)

(assert (=> b!7543705 (= e!4494376 (or (not (= lt!2644045 Nil!72671)) (= lt!2644208 testedP!423)))))

(declare-fun b!7543704 () Bool)

(declare-fun res!3023317 () Bool)

(assert (=> b!7543704 (=> (not res!3023317) (not e!4494376))))

(assert (=> b!7543704 (= res!3023317 (= (size!42408 lt!2644208) (+ (size!42408 testedP!423) (size!42408 lt!2644045))))))

(declare-fun b!7543702 () Bool)

(assert (=> b!7543702 (= e!4494377 lt!2644045)))

(declare-fun b!7543703 () Bool)

(assert (=> b!7543703 (= e!4494377 (Cons!72671 (h!79119 testedP!423) (++!17429 (t!387508 testedP!423) lt!2644045)))))

(assert (= (and d!2311866 c!1392742) b!7543702))

(assert (= (and d!2311866 (not c!1392742)) b!7543703))

(assert (= (and d!2311866 res!3023318) b!7543704))

(assert (= (and b!7543704 res!3023317) b!7543705))

(declare-fun m!8112566 () Bool)

(assert (=> d!2311866 m!8112566))

(assert (=> d!2311866 m!8112308))

(assert (=> d!2311866 m!8112432))

(declare-fun m!8112568 () Bool)

(assert (=> b!7543704 m!8112568))

(assert (=> b!7543704 m!8112118))

(assert (=> b!7543704 m!8112438))

(declare-fun m!8112570 () Bool)

(assert (=> b!7543703 m!8112570))

(assert (=> b!7543243 d!2311866))

(declare-fun b!7543710 () Bool)

(declare-fun e!4494380 () Bool)

(declare-fun tp!2194144 () Bool)

(assert (=> b!7543710 (= e!4494380 (and tp_is_empty!50179 tp!2194144))))

(assert (=> b!7543223 (= tp!2194097 e!4494380)))

(assert (= (and b!7543223 (is-Cons!72671 (t!387508 testedP!423))) b!7543710))

(declare-fun b!7543737 () Bool)

(declare-fun e!4494391 () Bool)

(assert (=> b!7543737 (= e!4494391 tp_is_empty!50179)))

(declare-fun b!7543738 () Bool)

(declare-fun tp!2194156 () Bool)

(declare-fun tp!2194157 () Bool)

(assert (=> b!7543738 (= e!4494391 (and tp!2194156 tp!2194157))))

(declare-fun b!7543743 () Bool)

(declare-fun tp!2194158 () Bool)

(assert (=> b!7543743 (= e!4494391 tp!2194158)))

(assert (=> b!7543244 (= tp!2194091 e!4494391)))

(declare-fun b!7543744 () Bool)

(declare-fun tp!2194159 () Bool)

(declare-fun tp!2194155 () Bool)

(assert (=> b!7543744 (= e!4494391 (and tp!2194159 tp!2194155))))

(assert (= (and b!7543244 (is-ElementMatch!19912 (regOne!40336 r!24333))) b!7543737))

(assert (= (and b!7543244 (is-Concat!28757 (regOne!40336 r!24333))) b!7543738))

(assert (= (and b!7543244 (is-Star!19912 (regOne!40336 r!24333))) b!7543743))

(assert (= (and b!7543244 (is-Union!19912 (regOne!40336 r!24333))) b!7543744))

(declare-fun b!7543745 () Bool)

(declare-fun e!4494394 () Bool)

(assert (=> b!7543745 (= e!4494394 tp_is_empty!50179)))

(declare-fun b!7543746 () Bool)

(declare-fun tp!2194161 () Bool)

(declare-fun tp!2194162 () Bool)

(assert (=> b!7543746 (= e!4494394 (and tp!2194161 tp!2194162))))

(declare-fun b!7543747 () Bool)

(declare-fun tp!2194163 () Bool)

(assert (=> b!7543747 (= e!4494394 tp!2194163)))

(assert (=> b!7543244 (= tp!2194100 e!4494394)))

(declare-fun b!7543748 () Bool)

(declare-fun tp!2194164 () Bool)

(declare-fun tp!2194160 () Bool)

(assert (=> b!7543748 (= e!4494394 (and tp!2194164 tp!2194160))))

(assert (= (and b!7543244 (is-ElementMatch!19912 (regTwo!40336 r!24333))) b!7543745))

(assert (= (and b!7543244 (is-Concat!28757 (regTwo!40336 r!24333))) b!7543746))

(assert (= (and b!7543244 (is-Star!19912 (regTwo!40336 r!24333))) b!7543747))

(assert (= (and b!7543244 (is-Union!19912 (regTwo!40336 r!24333))) b!7543748))

(declare-fun b!7543749 () Bool)

(declare-fun e!4494395 () Bool)

(assert (=> b!7543749 (= e!4494395 tp_is_empty!50179)))

(declare-fun b!7543750 () Bool)

(declare-fun tp!2194166 () Bool)

(declare-fun tp!2194167 () Bool)

(assert (=> b!7543750 (= e!4494395 (and tp!2194166 tp!2194167))))

(declare-fun b!7543751 () Bool)

(declare-fun tp!2194168 () Bool)

(assert (=> b!7543751 (= e!4494395 tp!2194168)))

(assert (=> b!7543229 (= tp!2194101 e!4494395)))

(declare-fun b!7543752 () Bool)

(declare-fun tp!2194169 () Bool)

(declare-fun tp!2194165 () Bool)

(assert (=> b!7543752 (= e!4494395 (and tp!2194169 tp!2194165))))

(assert (= (and b!7543229 (is-ElementMatch!19912 (regOne!40337 baseR!101))) b!7543749))

(assert (= (and b!7543229 (is-Concat!28757 (regOne!40337 baseR!101))) b!7543750))

(assert (= (and b!7543229 (is-Star!19912 (regOne!40337 baseR!101))) b!7543751))

(assert (= (and b!7543229 (is-Union!19912 (regOne!40337 baseR!101))) b!7543752))

(declare-fun b!7543753 () Bool)

(declare-fun e!4494396 () Bool)

(assert (=> b!7543753 (= e!4494396 tp_is_empty!50179)))

(declare-fun b!7543754 () Bool)

(declare-fun tp!2194171 () Bool)

(declare-fun tp!2194172 () Bool)

(assert (=> b!7543754 (= e!4494396 (and tp!2194171 tp!2194172))))

(declare-fun b!7543755 () Bool)

(declare-fun tp!2194173 () Bool)

(assert (=> b!7543755 (= e!4494396 tp!2194173)))

(assert (=> b!7543229 (= tp!2194099 e!4494396)))

(declare-fun b!7543756 () Bool)

(declare-fun tp!2194174 () Bool)

(declare-fun tp!2194170 () Bool)

(assert (=> b!7543756 (= e!4494396 (and tp!2194174 tp!2194170))))

(assert (= (and b!7543229 (is-ElementMatch!19912 (regTwo!40337 baseR!101))) b!7543753))

(assert (= (and b!7543229 (is-Concat!28757 (regTwo!40337 baseR!101))) b!7543754))

(assert (= (and b!7543229 (is-Star!19912 (regTwo!40337 baseR!101))) b!7543755))

(assert (= (and b!7543229 (is-Union!19912 (regTwo!40337 baseR!101))) b!7543756))

(declare-fun b!7543757 () Bool)

(declare-fun e!4494397 () Bool)

(assert (=> b!7543757 (= e!4494397 tp_is_empty!50179)))

(declare-fun b!7543758 () Bool)

(declare-fun tp!2194176 () Bool)

(declare-fun tp!2194177 () Bool)

(assert (=> b!7543758 (= e!4494397 (and tp!2194176 tp!2194177))))

(declare-fun b!7543759 () Bool)

(declare-fun tp!2194178 () Bool)

(assert (=> b!7543759 (= e!4494397 tp!2194178)))

(assert (=> b!7543234 (= tp!2194098 e!4494397)))

(declare-fun b!7543760 () Bool)

(declare-fun tp!2194179 () Bool)

(declare-fun tp!2194175 () Bool)

(assert (=> b!7543760 (= e!4494397 (and tp!2194179 tp!2194175))))

(assert (= (and b!7543234 (is-ElementMatch!19912 (regOne!40337 r!24333))) b!7543757))

(assert (= (and b!7543234 (is-Concat!28757 (regOne!40337 r!24333))) b!7543758))

(assert (= (and b!7543234 (is-Star!19912 (regOne!40337 r!24333))) b!7543759))

(assert (= (and b!7543234 (is-Union!19912 (regOne!40337 r!24333))) b!7543760))

(declare-fun b!7543761 () Bool)

(declare-fun e!4494398 () Bool)

(assert (=> b!7543761 (= e!4494398 tp_is_empty!50179)))

(declare-fun b!7543762 () Bool)

(declare-fun tp!2194181 () Bool)

(declare-fun tp!2194182 () Bool)

(assert (=> b!7543762 (= e!4494398 (and tp!2194181 tp!2194182))))

(declare-fun b!7543763 () Bool)

(declare-fun tp!2194183 () Bool)

(assert (=> b!7543763 (= e!4494398 tp!2194183)))

(assert (=> b!7543234 (= tp!2194092 e!4494398)))

(declare-fun b!7543764 () Bool)

(declare-fun tp!2194184 () Bool)

(declare-fun tp!2194180 () Bool)

(assert (=> b!7543764 (= e!4494398 (and tp!2194184 tp!2194180))))

(assert (= (and b!7543234 (is-ElementMatch!19912 (regTwo!40337 r!24333))) b!7543761))

(assert (= (and b!7543234 (is-Concat!28757 (regTwo!40337 r!24333))) b!7543762))

(assert (= (and b!7543234 (is-Star!19912 (regTwo!40337 r!24333))) b!7543763))

(assert (= (and b!7543234 (is-Union!19912 (regTwo!40337 r!24333))) b!7543764))

(declare-fun b!7543765 () Bool)

(declare-fun e!4494399 () Bool)

(assert (=> b!7543765 (= e!4494399 tp_is_empty!50179)))

(declare-fun b!7543766 () Bool)

(declare-fun tp!2194186 () Bool)

(declare-fun tp!2194187 () Bool)

(assert (=> b!7543766 (= e!4494399 (and tp!2194186 tp!2194187))))

(declare-fun b!7543767 () Bool)

(declare-fun tp!2194188 () Bool)

(assert (=> b!7543767 (= e!4494399 tp!2194188)))

(assert (=> b!7543246 (= tp!2194093 e!4494399)))

(declare-fun b!7543768 () Bool)

(declare-fun tp!2194189 () Bool)

(declare-fun tp!2194185 () Bool)

(assert (=> b!7543768 (= e!4494399 (and tp!2194189 tp!2194185))))

(assert (= (and b!7543246 (is-ElementMatch!19912 (reg!20241 baseR!101))) b!7543765))

(assert (= (and b!7543246 (is-Concat!28757 (reg!20241 baseR!101))) b!7543766))

(assert (= (and b!7543246 (is-Star!19912 (reg!20241 baseR!101))) b!7543767))

(assert (= (and b!7543246 (is-Union!19912 (reg!20241 baseR!101))) b!7543768))

(declare-fun b!7543769 () Bool)

(declare-fun e!4494400 () Bool)

(assert (=> b!7543769 (= e!4494400 tp_is_empty!50179)))

(declare-fun b!7543770 () Bool)

(declare-fun tp!2194191 () Bool)

(declare-fun tp!2194192 () Bool)

(assert (=> b!7543770 (= e!4494400 (and tp!2194191 tp!2194192))))

(declare-fun b!7543771 () Bool)

(declare-fun tp!2194193 () Bool)

(assert (=> b!7543771 (= e!4494400 tp!2194193)))

(assert (=> b!7543220 (= tp!2194095 e!4494400)))

(declare-fun b!7543772 () Bool)

(declare-fun tp!2194194 () Bool)

(declare-fun tp!2194190 () Bool)

(assert (=> b!7543772 (= e!4494400 (and tp!2194194 tp!2194190))))

(assert (= (and b!7543220 (is-ElementMatch!19912 (regOne!40336 baseR!101))) b!7543769))

(assert (= (and b!7543220 (is-Concat!28757 (regOne!40336 baseR!101))) b!7543770))

(assert (= (and b!7543220 (is-Star!19912 (regOne!40336 baseR!101))) b!7543771))

(assert (= (and b!7543220 (is-Union!19912 (regOne!40336 baseR!101))) b!7543772))

(declare-fun b!7543773 () Bool)

(declare-fun e!4494401 () Bool)

(assert (=> b!7543773 (= e!4494401 tp_is_empty!50179)))

(declare-fun b!7543774 () Bool)

(declare-fun tp!2194196 () Bool)

(declare-fun tp!2194197 () Bool)

(assert (=> b!7543774 (= e!4494401 (and tp!2194196 tp!2194197))))

(declare-fun b!7543775 () Bool)

(declare-fun tp!2194198 () Bool)

(assert (=> b!7543775 (= e!4494401 tp!2194198)))

(assert (=> b!7543220 (= tp!2194096 e!4494401)))

(declare-fun b!7543776 () Bool)

(declare-fun tp!2194199 () Bool)

(declare-fun tp!2194195 () Bool)

(assert (=> b!7543776 (= e!4494401 (and tp!2194199 tp!2194195))))

(assert (= (and b!7543220 (is-ElementMatch!19912 (regTwo!40336 baseR!101))) b!7543773))

(assert (= (and b!7543220 (is-Concat!28757 (regTwo!40336 baseR!101))) b!7543774))

(assert (= (and b!7543220 (is-Star!19912 (regTwo!40336 baseR!101))) b!7543775))

(assert (= (and b!7543220 (is-Union!19912 (regTwo!40336 baseR!101))) b!7543776))

(declare-fun b!7543777 () Bool)

(declare-fun e!4494402 () Bool)

(declare-fun tp!2194200 () Bool)

(assert (=> b!7543777 (= e!4494402 (and tp_is_empty!50179 tp!2194200))))

(assert (=> b!7543237 (= tp!2194090 e!4494402)))

(assert (= (and b!7543237 (is-Cons!72671 (t!387508 input!7874))) b!7543777))

(declare-fun b!7543778 () Bool)

(declare-fun e!4494403 () Bool)

(declare-fun tp!2194201 () Bool)

(assert (=> b!7543778 (= e!4494403 (and tp_is_empty!50179 tp!2194201))))

(assert (=> b!7543226 (= tp!2194094 e!4494403)))

(assert (= (and b!7543226 (is-Cons!72671 (t!387508 knownP!30))) b!7543778))

(declare-fun b!7543779 () Bool)

(declare-fun e!4494404 () Bool)

(assert (=> b!7543779 (= e!4494404 tp_is_empty!50179)))

(declare-fun b!7543780 () Bool)

(declare-fun tp!2194203 () Bool)

(declare-fun tp!2194204 () Bool)

(assert (=> b!7543780 (= e!4494404 (and tp!2194203 tp!2194204))))

(declare-fun b!7543781 () Bool)

(declare-fun tp!2194205 () Bool)

(assert (=> b!7543781 (= e!4494404 tp!2194205)))

(assert (=> b!7543232 (= tp!2194102 e!4494404)))

(declare-fun b!7543782 () Bool)

(declare-fun tp!2194206 () Bool)

(declare-fun tp!2194202 () Bool)

(assert (=> b!7543782 (= e!4494404 (and tp!2194206 tp!2194202))))

(assert (= (and b!7543232 (is-ElementMatch!19912 (reg!20241 r!24333))) b!7543779))

(assert (= (and b!7543232 (is-Concat!28757 (reg!20241 r!24333))) b!7543780))

(assert (= (and b!7543232 (is-Star!19912 (reg!20241 r!24333))) b!7543781))

(assert (= (and b!7543232 (is-Union!19912 (reg!20241 r!24333))) b!7543782))

(push 1)

(assert (not b!7543613))

(assert (not b!7543762))

(assert (not b!7543704))

(assert (not b!7543564))

(assert (not bm!691891))

(assert (not d!2311852))

(assert (not b!7543513))

(assert (not b!7543759))

(assert (not b!7543642))

(assert (not bm!691893))

(assert (not b!7543754))

(assert (not b!7543763))

(assert (not d!2311776))

(assert (not b!7543545))

(assert (not b!7543607))

(assert (not d!2311788))

(assert (not b!7543710))

(assert (not d!2311790))

(assert (not b!7543604))

(assert (not b!7543504))

(assert (not b!7543583))

(assert (not bm!691889))

(assert (not b!7543746))

(assert (not b!7543582))

(assert (not b!7543544))

(assert (not b!7543615))

(assert (not b!7543505))

(assert (not d!2311846))

(assert (not b!7543756))

(assert (not d!2311760))

(assert (not b!7543542))

(assert (not b!7543423))

(assert (not b!7543614))

(assert (not d!2311802))

(assert (not b!7543778))

(assert (not d!2311864))

(assert (not d!2311798))

(assert (not b!7543548))

(assert (not b!7543776))

(assert (not d!2311836))

(assert (not d!2311848))

(assert (not bm!691888))

(assert (not b!7543748))

(assert (not d!2311816))

(assert (not b!7543445))

(assert (not b!7543641))

(assert (not b!7543636))

(assert (not b!7543768))

(assert (not b!7543536))

(assert (not b!7543782))

(assert (not b!7543743))

(assert (not b!7543512))

(assert (not b!7543767))

(assert (not d!2311854))

(assert (not b!7543648))

(assert (not b!7543501))

(assert (not b!7543433))

(assert (not b!7543485))

(assert (not d!2311844))

(assert (not b!7543637))

(assert (not bm!691881))

(assert (not b!7543772))

(assert (not b!7543703))

(assert (not b!7543611))

(assert (not b!7543540))

(assert (not b!7543622))

(assert (not d!2311794))

(assert (not b!7543609))

(assert (not b!7543750))

(assert (not b!7543608))

(assert (not d!2311842))

(assert (not b!7543566))

(assert (not d!2311814))

(assert (not b!7543427))

(assert (not b!7543774))

(assert (not b!7543500))

(assert (not b!7543744))

(assert (not d!2311792))

(assert (not b!7543777))

(assert (not bm!691894))

(assert (not b!7543590))

(assert (not bm!691916))

(assert (not b!7543738))

(assert (not b!7543537))

(assert (not b!7543428))

(assert (not b!7543775))

(assert (not b!7543755))

(assert (not b!7543596))

(assert (not b!7543591))

(assert (not bm!691918))

(assert (not b!7543603))

(assert (not d!2311822))

(assert (not b!7543586))

(assert (not b!7543700))

(assert (not d!2311818))

(assert (not b!7543766))

(assert (not d!2311812))

(assert (not b!7543770))

(assert (not b!7543550))

(assert (not b!7543752))

(assert (not b!7543747))

(assert (not b!7543431))

(assert (not d!2311850))

(assert (not b!7543760))

(assert tp_is_empty!50179)

(assert (not b!7543458))

(assert (not d!2311826))

(assert (not b!7543764))

(assert (not b!7543561))

(assert (not b!7543565))

(assert (not d!2311830))

(assert (not b!7543509))

(assert (not b!7543635))

(assert (not d!2311866))

(assert (not b!7543771))

(assert (not b!7543644))

(assert (not b!7543508))

(assert (not b!7543587))

(assert (not b!7543780))

(assert (not d!2311762))

(assert (not b!7543425))

(assert (not b!7543758))

(assert (not b!7543443))

(assert (not b!7543751))

(assert (not d!2311784))

(assert (not b!7543646))

(assert (not b!7543538))

(assert (not d!2311808))

(assert (not b!7543781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

