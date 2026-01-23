; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729956 () Bool)

(assert start!729956)

(declare-fun b!7549126 () Bool)

(declare-fun e!4497018 () Bool)

(declare-fun tp_is_empty!50237 () Bool)

(assert (=> b!7549126 (= e!4497018 tp_is_empty!50237)))

(declare-fun b!7549127 () Bool)

(declare-fun e!4497012 () Bool)

(declare-fun tp!2196138 () Bool)

(declare-fun tp!2196142 () Bool)

(assert (=> b!7549127 (= e!4497012 (and tp!2196138 tp!2196142))))

(declare-fun b!7549128 () Bool)

(declare-fun res!3025773 () Bool)

(declare-fun e!4497020 () Bool)

(assert (=> b!7549128 (=> res!3025773 e!4497020)))

(declare-datatypes ((C!40208 0))(
  ( (C!40209 (val!30544 Int)) )
))
(declare-datatypes ((Regex!19941 0))(
  ( (ElementMatch!19941 (c!1393408 C!40208)) (Concat!28786 (regOne!40394 Regex!19941) (regTwo!40394 Regex!19941)) (EmptyExpr!19941) (Star!19941 (reg!20270 Regex!19941)) (EmptyLang!19941) (Union!19941 (regOne!40395 Regex!19941) (regTwo!40395 Regex!19941)) )
))
(declare-fun baseR!101 () Regex!19941)

(declare-datatypes ((List!72824 0))(
  ( (Nil!72700) (Cons!72700 (h!79148 C!40208) (t!387541 List!72824)) )
))
(declare-fun testedP!423 () List!72824)

(declare-fun r!24333 () Regex!19941)

(declare-fun derivative!473 (Regex!19941 List!72824) Regex!19941)

(assert (=> b!7549128 (= res!3025773 (not (= (derivative!473 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7549129 () Bool)

(declare-fun res!3025771 () Bool)

(declare-fun e!4497017 () Bool)

(assert (=> b!7549129 (=> (not res!3025771) (not e!4497017))))

(declare-fun knownP!30 () List!72824)

(declare-fun matchR!9543 (Regex!19941 List!72824) Bool)

(assert (=> b!7549129 (= res!3025771 (matchR!9543 baseR!101 knownP!30))))

(declare-fun b!7549130 () Bool)

(declare-fun e!4497019 () Bool)

(declare-fun e!4497013 () Bool)

(assert (=> b!7549130 (= e!4497019 e!4497013)))

(declare-fun res!3025775 () Bool)

(assert (=> b!7549130 (=> res!3025775 e!4497013)))

(declare-fun lt!2646270 () List!72824)

(declare-fun input!7874 () List!72824)

(assert (=> b!7549130 (= res!3025775 (not (= lt!2646270 input!7874)))))

(declare-fun lt!2646269 () List!72824)

(assert (=> b!7549130 (= lt!2646269 lt!2646270)))

(declare-fun lt!2646274 () List!72824)

(declare-fun ++!17457 (List!72824 List!72824) List!72824)

(assert (=> b!7549130 (= lt!2646270 (++!17457 testedP!423 lt!2646274))))

(declare-fun lt!2646275 () List!72824)

(declare-fun lt!2646272 () List!72824)

(assert (=> b!7549130 (= lt!2646274 (++!17457 lt!2646275 lt!2646272))))

(declare-datatypes ((Unit!166820 0))(
  ( (Unit!166821) )
))
(declare-fun lt!2646264 () Unit!166820)

(declare-fun lemmaConcatAssociativity!3096 (List!72824 List!72824 List!72824) Unit!166820)

(assert (=> b!7549130 (= lt!2646264 (lemmaConcatAssociativity!3096 testedP!423 lt!2646275 lt!2646272))))

(declare-fun b!7549132 () Bool)

(declare-fun res!3025780 () Bool)

(assert (=> b!7549132 (=> res!3025780 e!4497020)))

(declare-fun lostCause!1733 (Regex!19941) Bool)

(assert (=> b!7549132 (= res!3025780 (lostCause!1733 r!24333))))

(declare-fun b!7549133 () Bool)

(declare-fun e!4497014 () Bool)

(declare-fun tp!2196143 () Bool)

(assert (=> b!7549133 (= e!4497014 (and tp_is_empty!50237 tp!2196143))))

(declare-fun b!7549134 () Bool)

(assert (=> b!7549134 (= e!4497012 tp_is_empty!50237)))

(declare-fun b!7549135 () Bool)

(declare-fun res!3025781 () Bool)

(declare-fun e!4497021 () Bool)

(assert (=> b!7549135 (=> (not res!3025781) (not e!4497021))))

(declare-fun validRegex!10369 (Regex!19941) Bool)

(assert (=> b!7549135 (= res!3025781 (validRegex!10369 r!24333))))

(declare-fun b!7549136 () Bool)

(declare-fun res!3025777 () Bool)

(assert (=> b!7549136 (=> (not res!3025777) (not e!4497021))))

(declare-fun isPrefix!6147 (List!72824 List!72824) Bool)

(assert (=> b!7549136 (= res!3025777 (isPrefix!6147 knownP!30 input!7874))))

(declare-fun b!7549137 () Bool)

(assert (=> b!7549137 (= e!4497021 e!4497017)))

(declare-fun res!3025770 () Bool)

(assert (=> b!7549137 (=> (not res!3025770) (not e!4497017))))

(declare-fun lt!2646265 () Int)

(declare-fun lt!2646268 () Int)

(assert (=> b!7549137 (= res!3025770 (>= lt!2646265 lt!2646268))))

(declare-fun size!42437 (List!72824) Int)

(assert (=> b!7549137 (= lt!2646268 (size!42437 testedP!423))))

(assert (=> b!7549137 (= lt!2646265 (size!42437 knownP!30))))

(declare-fun b!7549138 () Bool)

(declare-fun res!3025782 () Bool)

(assert (=> b!7549138 (=> res!3025782 e!4497020)))

(assert (=> b!7549138 (= res!3025782 (= lt!2646268 lt!2646265))))

(declare-fun b!7549139 () Bool)

(declare-fun res!3025774 () Bool)

(assert (=> b!7549139 (=> (not res!3025774) (not e!4497021))))

(assert (=> b!7549139 (= res!3025774 (isPrefix!6147 testedP!423 input!7874))))

(declare-fun b!7549140 () Bool)

(declare-fun e!4497011 () Bool)

(assert (=> b!7549140 (= e!4497011 e!4497019)))

(declare-fun res!3025772 () Bool)

(assert (=> b!7549140 (=> res!3025772 e!4497019)))

(assert (=> b!7549140 (= res!3025772 (not (= lt!2646269 input!7874)))))

(assert (=> b!7549140 (= lt!2646269 (++!17457 (++!17457 testedP!423 lt!2646275) lt!2646272))))

(declare-fun b!7549141 () Bool)

(declare-fun res!3025783 () Bool)

(assert (=> b!7549141 (=> res!3025783 e!4497019)))

(declare-fun lt!2646278 () List!72824)

(assert (=> b!7549141 (= res!3025783 (not (= (++!17457 testedP!423 lt!2646278) input!7874)))))

(declare-fun b!7549142 () Bool)

(declare-fun tp!2196134 () Bool)

(assert (=> b!7549142 (= e!4497018 tp!2196134)))

(declare-fun b!7549143 () Bool)

(declare-fun tp!2196141 () Bool)

(declare-fun tp!2196131 () Bool)

(assert (=> b!7549143 (= e!4497018 (and tp!2196141 tp!2196131))))

(declare-fun b!7549144 () Bool)

(declare-fun e!4497016 () Bool)

(declare-fun tp!2196133 () Bool)

(assert (=> b!7549144 (= e!4497016 (and tp_is_empty!50237 tp!2196133))))

(declare-fun res!3025778 () Bool)

(assert (=> start!729956 (=> (not res!3025778) (not e!4497021))))

(assert (=> start!729956 (= res!3025778 (validRegex!10369 baseR!101))))

(assert (=> start!729956 e!4497021))

(assert (=> start!729956 e!4497012))

(declare-fun e!4497015 () Bool)

(assert (=> start!729956 e!4497015))

(assert (=> start!729956 e!4497014))

(assert (=> start!729956 e!4497016))

(assert (=> start!729956 e!4497018))

(declare-fun b!7549131 () Bool)

(declare-fun tp!2196140 () Bool)

(declare-fun tp!2196136 () Bool)

(assert (=> b!7549131 (= e!4497012 (and tp!2196140 tp!2196136))))

(declare-fun b!7549145 () Bool)

(assert (=> b!7549145 (= e!4497017 (not e!4497020))))

(declare-fun res!3025776 () Bool)

(assert (=> b!7549145 (=> res!3025776 e!4497020)))

(assert (=> b!7549145 (= res!3025776 (not (matchR!9543 r!24333 lt!2646275)))))

(declare-fun getSuffix!3627 (List!72824 List!72824) List!72824)

(assert (=> b!7549145 (= lt!2646275 (getSuffix!3627 knownP!30 testedP!423))))

(assert (=> b!7549145 (isPrefix!6147 testedP!423 knownP!30)))

(declare-fun lt!2646267 () Unit!166820)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!897 (List!72824 List!72824 List!72824) Unit!166820)

(assert (=> b!7549145 (= lt!2646267 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!897 knownP!30 testedP!423 input!7874))))

(declare-fun b!7549146 () Bool)

(declare-fun tp!2196137 () Bool)

(declare-fun tp!2196139 () Bool)

(assert (=> b!7549146 (= e!4497018 (and tp!2196137 tp!2196139))))

(declare-fun b!7549147 () Bool)

(declare-fun tp!2196132 () Bool)

(assert (=> b!7549147 (= e!4497012 tp!2196132)))

(declare-fun b!7549148 () Bool)

(assert (=> b!7549148 (= e!4497013 true)))

(assert (=> b!7549148 (= lt!2646274 lt!2646278)))

(declare-fun lt!2646263 () Unit!166820)

(declare-fun lemmaSamePrefixThenSameSuffix!2863 (List!72824 List!72824 List!72824 List!72824 List!72824) Unit!166820)

(assert (=> b!7549148 (= lt!2646263 (lemmaSamePrefixThenSameSuffix!2863 testedP!423 lt!2646274 testedP!423 lt!2646278 input!7874))))

(declare-fun b!7549149 () Bool)

(assert (=> b!7549149 (= e!4497020 e!4497011)))

(declare-fun res!3025784 () Bool)

(assert (=> b!7549149 (=> res!3025784 e!4497011)))

(assert (=> b!7549149 (= res!3025784 (not (= (++!17457 knownP!30 lt!2646272) input!7874)))))

(assert (=> b!7549149 (= lt!2646272 (getSuffix!3627 input!7874 knownP!30))))

(declare-fun lt!2646277 () List!72824)

(declare-fun lt!2646273 () List!72824)

(assert (=> b!7549149 (= lt!2646277 (getSuffix!3627 knownP!30 lt!2646273))))

(assert (=> b!7549149 (isPrefix!6147 lt!2646273 knownP!30)))

(declare-fun lt!2646262 () Unit!166820)

(assert (=> b!7549149 (= lt!2646262 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!897 knownP!30 lt!2646273 input!7874))))

(declare-fun lt!2646271 () C!40208)

(declare-fun derivativeStep!5731 (Regex!19941 C!40208) Regex!19941)

(assert (=> b!7549149 (= (derivative!473 baseR!101 lt!2646273) (derivativeStep!5731 r!24333 lt!2646271))))

(declare-fun lt!2646266 () Unit!166820)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!175 (Regex!19941 Regex!19941 List!72824 C!40208) Unit!166820)

(assert (=> b!7549149 (= lt!2646266 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!175 baseR!101 r!24333 testedP!423 lt!2646271))))

(assert (=> b!7549149 (isPrefix!6147 lt!2646273 input!7874)))

(declare-fun lt!2646276 () Unit!166820)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1208 (List!72824 List!72824) Unit!166820)

(assert (=> b!7549149 (= lt!2646276 (lemmaAddHeadSuffixToPrefixStillPrefix!1208 testedP!423 input!7874))))

(assert (=> b!7549149 (= lt!2646273 (++!17457 testedP!423 (Cons!72700 lt!2646271 Nil!72700)))))

(declare-fun head!15531 (List!72824) C!40208)

(assert (=> b!7549149 (= lt!2646271 (head!15531 lt!2646278))))

(assert (=> b!7549149 (= lt!2646278 (getSuffix!3627 input!7874 testedP!423))))

(declare-fun b!7549150 () Bool)

(declare-fun res!3025779 () Bool)

(assert (=> b!7549150 (=> res!3025779 e!4497020)))

(assert (=> b!7549150 (= res!3025779 (>= lt!2646268 (size!42437 input!7874)))))

(declare-fun b!7549151 () Bool)

(declare-fun tp!2196135 () Bool)

(assert (=> b!7549151 (= e!4497015 (and tp_is_empty!50237 tp!2196135))))

(assert (= (and start!729956 res!3025778) b!7549135))

(assert (= (and b!7549135 res!3025781) b!7549139))

(assert (= (and b!7549139 res!3025774) b!7549136))

(assert (= (and b!7549136 res!3025777) b!7549137))

(assert (= (and b!7549137 res!3025770) b!7549129))

(assert (= (and b!7549129 res!3025771) b!7549145))

(assert (= (and b!7549145 (not res!3025776)) b!7549128))

(assert (= (and b!7549128 (not res!3025773)) b!7549132))

(assert (= (and b!7549132 (not res!3025780)) b!7549138))

(assert (= (and b!7549138 (not res!3025782)) b!7549150))

(assert (= (and b!7549150 (not res!3025779)) b!7549149))

(assert (= (and b!7549149 (not res!3025784)) b!7549140))

(assert (= (and b!7549140 (not res!3025772)) b!7549141))

(assert (= (and b!7549141 (not res!3025783)) b!7549130))

(assert (= (and b!7549130 (not res!3025775)) b!7549148))

(get-info :version)

(assert (= (and start!729956 ((_ is ElementMatch!19941) baseR!101)) b!7549134))

(assert (= (and start!729956 ((_ is Concat!28786) baseR!101)) b!7549127))

(assert (= (and start!729956 ((_ is Star!19941) baseR!101)) b!7549147))

(assert (= (and start!729956 ((_ is Union!19941) baseR!101)) b!7549131))

(assert (= (and start!729956 ((_ is Cons!72700) input!7874)) b!7549151))

(assert (= (and start!729956 ((_ is Cons!72700) knownP!30)) b!7549133))

(assert (= (and start!729956 ((_ is Cons!72700) testedP!423)) b!7549144))

(assert (= (and start!729956 ((_ is ElementMatch!19941) r!24333)) b!7549126))

(assert (= (and start!729956 ((_ is Concat!28786) r!24333)) b!7549146))

(assert (= (and start!729956 ((_ is Star!19941) r!24333)) b!7549142))

(assert (= (and start!729956 ((_ is Union!19941) r!24333)) b!7549143))

(declare-fun m!8116494 () Bool)

(assert (=> b!7549149 m!8116494))

(declare-fun m!8116496 () Bool)

(assert (=> b!7549149 m!8116496))

(declare-fun m!8116498 () Bool)

(assert (=> b!7549149 m!8116498))

(declare-fun m!8116500 () Bool)

(assert (=> b!7549149 m!8116500))

(declare-fun m!8116502 () Bool)

(assert (=> b!7549149 m!8116502))

(declare-fun m!8116504 () Bool)

(assert (=> b!7549149 m!8116504))

(declare-fun m!8116506 () Bool)

(assert (=> b!7549149 m!8116506))

(declare-fun m!8116508 () Bool)

(assert (=> b!7549149 m!8116508))

(declare-fun m!8116510 () Bool)

(assert (=> b!7549149 m!8116510))

(declare-fun m!8116512 () Bool)

(assert (=> b!7549149 m!8116512))

(declare-fun m!8116514 () Bool)

(assert (=> b!7549149 m!8116514))

(declare-fun m!8116516 () Bool)

(assert (=> b!7549149 m!8116516))

(declare-fun m!8116518 () Bool)

(assert (=> b!7549149 m!8116518))

(declare-fun m!8116520 () Bool)

(assert (=> b!7549148 m!8116520))

(declare-fun m!8116522 () Bool)

(assert (=> b!7549150 m!8116522))

(declare-fun m!8116524 () Bool)

(assert (=> b!7549145 m!8116524))

(declare-fun m!8116526 () Bool)

(assert (=> b!7549145 m!8116526))

(declare-fun m!8116528 () Bool)

(assert (=> b!7549145 m!8116528))

(declare-fun m!8116530 () Bool)

(assert (=> b!7549145 m!8116530))

(declare-fun m!8116532 () Bool)

(assert (=> b!7549128 m!8116532))

(declare-fun m!8116534 () Bool)

(assert (=> b!7549139 m!8116534))

(declare-fun m!8116536 () Bool)

(assert (=> b!7549141 m!8116536))

(declare-fun m!8116538 () Bool)

(assert (=> b!7549140 m!8116538))

(assert (=> b!7549140 m!8116538))

(declare-fun m!8116540 () Bool)

(assert (=> b!7549140 m!8116540))

(declare-fun m!8116542 () Bool)

(assert (=> start!729956 m!8116542))

(declare-fun m!8116544 () Bool)

(assert (=> b!7549135 m!8116544))

(declare-fun m!8116546 () Bool)

(assert (=> b!7549129 m!8116546))

(declare-fun m!8116548 () Bool)

(assert (=> b!7549136 m!8116548))

(declare-fun m!8116550 () Bool)

(assert (=> b!7549137 m!8116550))

(declare-fun m!8116552 () Bool)

(assert (=> b!7549137 m!8116552))

(declare-fun m!8116554 () Bool)

(assert (=> b!7549132 m!8116554))

(declare-fun m!8116556 () Bool)

(assert (=> b!7549130 m!8116556))

(declare-fun m!8116558 () Bool)

(assert (=> b!7549130 m!8116558))

(declare-fun m!8116560 () Bool)

(assert (=> b!7549130 m!8116560))

(check-sat (not b!7549147) (not b!7549130) (not b!7549142) (not b!7549136) (not b!7549151) (not b!7549143) (not b!7549145) (not b!7549132) (not b!7549137) tp_is_empty!50237 (not start!729956) (not b!7549141) (not b!7549133) (not b!7549149) (not b!7549146) (not b!7549140) (not b!7549150) (not b!7549144) (not b!7549135) (not b!7549131) (not b!7549128) (not b!7549129) (not b!7549139) (not b!7549148) (not b!7549127))
(check-sat)
