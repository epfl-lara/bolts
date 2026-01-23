; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729532 () Bool)

(assert start!729532)

(declare-fun b!7543130 () Bool)

(declare-fun e!4494085 () Bool)

(declare-fun tp_is_empty!50177 () Bool)

(declare-fun tp!2194061 () Bool)

(assert (=> b!7543130 (= e!4494085 (and tp_is_empty!50177 tp!2194061))))

(declare-fun b!7543131 () Bool)

(declare-fun e!4494080 () Bool)

(declare-fun tp!2194057 () Bool)

(assert (=> b!7543131 (= e!4494080 tp!2194057)))

(declare-fun b!7543132 () Bool)

(declare-fun e!4494077 () Bool)

(assert (=> b!7543132 (= e!4494077 tp_is_empty!50177)))

(declare-fun b!7543134 () Bool)

(declare-fun e!4494076 () Bool)

(declare-fun e!4494079 () Bool)

(assert (=> b!7543134 (= e!4494076 (not e!4494079))))

(declare-fun res!3023011 () Bool)

(assert (=> b!7543134 (=> res!3023011 e!4494079)))

(declare-datatypes ((C!40148 0))(
  ( (C!40149 (val!30514 Int)) )
))
(declare-datatypes ((Regex!19911 0))(
  ( (ElementMatch!19911 (c!1392646 C!40148)) (Concat!28756 (regOne!40334 Regex!19911) (regTwo!40334 Regex!19911)) (EmptyExpr!19911) (Star!19911 (reg!20240 Regex!19911)) (EmptyLang!19911) (Union!19911 (regOne!40335 Regex!19911) (regTwo!40335 Regex!19911)) )
))
(declare-fun r!24333 () Regex!19911)

(declare-datatypes ((List!72794 0))(
  ( (Nil!72670) (Cons!72670 (h!79118 C!40148) (t!387507 List!72794)) )
))
(declare-fun lt!2643971 () List!72794)

(declare-fun matchR!9513 (Regex!19911 List!72794) Bool)

(assert (=> b!7543134 (= res!3023011 (not (matchR!9513 r!24333 lt!2643971)))))

(declare-fun knownP!30 () List!72794)

(declare-fun testedP!423 () List!72794)

(declare-fun getSuffix!3597 (List!72794 List!72794) List!72794)

(assert (=> b!7543134 (= lt!2643971 (getSuffix!3597 knownP!30 testedP!423))))

(declare-fun isPrefix!6117 (List!72794 List!72794) Bool)

(assert (=> b!7543134 (isPrefix!6117 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72794)

(declare-datatypes ((Unit!166760 0))(
  ( (Unit!166761) )
))
(declare-fun lt!2643967 () Unit!166760)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!867 (List!72794 List!72794 List!72794) Unit!166760)

(assert (=> b!7543134 (= lt!2643967 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!867 knownP!30 testedP!423 input!7874))))

(declare-fun b!7543135 () Bool)

(declare-fun res!3023007 () Bool)

(assert (=> b!7543135 (=> res!3023007 e!4494079)))

(declare-fun lt!2643977 () Int)

(declare-fun lt!2643973 () Int)

(assert (=> b!7543135 (= res!3023007 (= lt!2643977 lt!2643973))))

(declare-fun b!7543136 () Bool)

(declare-fun tp!2194060 () Bool)

(declare-fun tp!2194054 () Bool)

(assert (=> b!7543136 (= e!4494080 (and tp!2194060 tp!2194054))))

(declare-fun b!7543137 () Bool)

(declare-fun e!4494083 () Bool)

(declare-fun e!4494075 () Bool)

(assert (=> b!7543137 (= e!4494083 e!4494075)))

(declare-fun res!3023019 () Bool)

(assert (=> b!7543137 (=> res!3023019 e!4494075)))

(declare-fun lt!2643982 () List!72794)

(assert (=> b!7543137 (= res!3023019 (not (= lt!2643982 input!7874)))))

(declare-fun lt!2643980 () List!72794)

(declare-fun lt!2643978 () List!72794)

(declare-fun ++!17428 (List!72794 List!72794) List!72794)

(assert (=> b!7543137 (= lt!2643982 (++!17428 lt!2643980 lt!2643978))))

(assert (=> b!7543137 (= lt!2643980 (++!17428 testedP!423 lt!2643971))))

(declare-fun b!7543138 () Bool)

(declare-fun res!3023012 () Bool)

(declare-fun e!4494081 () Bool)

(assert (=> b!7543138 (=> (not res!3023012) (not e!4494081))))

(declare-fun validRegex!10339 (Regex!19911) Bool)

(assert (=> b!7543138 (= res!3023012 (validRegex!10339 r!24333))))

(declare-fun b!7543139 () Bool)

(declare-fun res!3023015 () Bool)

(declare-fun e!4494078 () Bool)

(assert (=> b!7543139 (=> res!3023015 e!4494078)))

(declare-fun lt!2643964 () C!40148)

(declare-fun $colon$colon!3371 (List!72794 C!40148) List!72794)

(declare-fun tail!15047 (List!72794) List!72794)

(assert (=> b!7543139 (= res!3023015 (not (= lt!2643971 ($colon$colon!3371 (tail!15047 lt!2643971) lt!2643964))))))

(declare-fun b!7543140 () Bool)

(declare-fun tp!2194059 () Bool)

(declare-fun tp!2194052 () Bool)

(assert (=> b!7543140 (= e!4494077 (and tp!2194059 tp!2194052))))

(declare-fun b!7543141 () Bool)

(declare-fun e!4494074 () Bool)

(assert (=> b!7543141 (= e!4494074 true)))

(declare-fun lt!2643963 () List!72794)

(declare-fun lt!2643965 () List!72794)

(declare-fun lt!2643968 () List!72794)

(assert (=> b!7543141 (= lt!2643968 (++!17428 testedP!423 (++!17428 lt!2643965 lt!2643963)))))

(declare-fun lt!2643969 () Unit!166760)

(declare-fun lemmaConcatAssociativity!3076 (List!72794 List!72794 List!72794) Unit!166760)

(assert (=> b!7543141 (= lt!2643969 (lemmaConcatAssociativity!3076 testedP!423 lt!2643965 lt!2643963))))

(declare-fun b!7543142 () Bool)

(declare-fun e!4494082 () Bool)

(assert (=> b!7543142 (= e!4494075 e!4494082)))

(declare-fun res!3023016 () Bool)

(assert (=> b!7543142 (=> res!3023016 e!4494082)))

(declare-fun lt!2643970 () List!72794)

(assert (=> b!7543142 (= res!3023016 (not (= lt!2643970 input!7874)))))

(assert (=> b!7543142 (= lt!2643982 lt!2643970)))

(declare-fun lt!2643976 () List!72794)

(assert (=> b!7543142 (= lt!2643970 (++!17428 testedP!423 lt!2643976))))

(assert (=> b!7543142 (= lt!2643976 (++!17428 lt!2643971 lt!2643978))))

(declare-fun lt!2643975 () Unit!166760)

(assert (=> b!7543142 (= lt!2643975 (lemmaConcatAssociativity!3076 testedP!423 lt!2643971 lt!2643978))))

(declare-fun b!7543143 () Bool)

(declare-fun res!3023008 () Bool)

(assert (=> b!7543143 (=> res!3023008 e!4494079)))

(declare-fun size!42407 (List!72794) Int)

(assert (=> b!7543143 (= res!3023008 (>= lt!2643977 (size!42407 input!7874)))))

(declare-fun b!7543144 () Bool)

(declare-fun res!3023020 () Bool)

(assert (=> b!7543144 (=> res!3023020 e!4494075)))

(declare-fun lt!2643981 () List!72794)

(assert (=> b!7543144 (= res!3023020 (not (= (++!17428 testedP!423 lt!2643981) input!7874)))))

(declare-fun b!7543145 () Bool)

(declare-fun res!3023022 () Bool)

(assert (=> b!7543145 (=> res!3023022 e!4494078)))

(assert (=> b!7543145 (= res!3023022 (not (= lt!2643980 knownP!30)))))

(declare-fun b!7543146 () Bool)

(declare-fun res!3023018 () Bool)

(assert (=> b!7543146 (=> (not res!3023018) (not e!4494076))))

(declare-fun baseR!101 () Regex!19911)

(assert (=> b!7543146 (= res!3023018 (matchR!9513 baseR!101 knownP!30))))

(declare-fun b!7543133 () Bool)

(declare-fun e!4494073 () Bool)

(declare-fun tp!2194053 () Bool)

(assert (=> b!7543133 (= e!4494073 (and tp_is_empty!50177 tp!2194053))))

(declare-fun res!3023024 () Bool)

(assert (=> start!729532 (=> (not res!3023024) (not e!4494081))))

(assert (=> start!729532 (= res!3023024 (validRegex!10339 baseR!101))))

(assert (=> start!729532 e!4494081))

(assert (=> start!729532 e!4494080))

(assert (=> start!729532 e!4494073))

(assert (=> start!729532 e!4494085))

(declare-fun e!4494084 () Bool)

(assert (=> start!729532 e!4494084))

(assert (=> start!729532 e!4494077))

(declare-fun b!7543147 () Bool)

(declare-fun res!3023023 () Bool)

(assert (=> b!7543147 (=> res!3023023 e!4494079)))

(declare-fun derivative!443 (Regex!19911 List!72794) Regex!19911)

(assert (=> b!7543147 (= res!3023023 (not (= (derivative!443 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7543148 () Bool)

(declare-fun res!3023021 () Bool)

(assert (=> b!7543148 (=> (not res!3023021) (not e!4494081))))

(assert (=> b!7543148 (= res!3023021 (isPrefix!6117 testedP!423 input!7874))))

(declare-fun b!7543149 () Bool)

(declare-fun res!3023006 () Bool)

(assert (=> b!7543149 (=> (not res!3023006) (not e!4494081))))

(assert (=> b!7543149 (= res!3023006 (isPrefix!6117 knownP!30 input!7874))))

(declare-fun b!7543150 () Bool)

(declare-fun tp!2194063 () Bool)

(assert (=> b!7543150 (= e!4494077 tp!2194063)))

(declare-fun b!7543151 () Bool)

(assert (=> b!7543151 (= e!4494079 e!4494083)))

(declare-fun res!3023017 () Bool)

(assert (=> b!7543151 (=> res!3023017 e!4494083)))

(assert (=> b!7543151 (= res!3023017 (not (= (++!17428 knownP!30 lt!2643978) input!7874)))))

(assert (=> b!7543151 (= lt!2643978 (getSuffix!3597 input!7874 knownP!30))))

(declare-fun lt!2643974 () List!72794)

(assert (=> b!7543151 (= lt!2643963 (getSuffix!3597 knownP!30 lt!2643974))))

(assert (=> b!7543151 (isPrefix!6117 lt!2643974 knownP!30)))

(declare-fun lt!2643972 () Unit!166760)

(assert (=> b!7543151 (= lt!2643972 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!867 knownP!30 lt!2643974 input!7874))))

(declare-fun derivativeStep!5701 (Regex!19911 C!40148) Regex!19911)

(assert (=> b!7543151 (= (derivative!443 baseR!101 lt!2643974) (derivativeStep!5701 r!24333 lt!2643964))))

(declare-fun lt!2643962 () Unit!166760)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!149 (Regex!19911 Regex!19911 List!72794 C!40148) Unit!166760)

(assert (=> b!7543151 (= lt!2643962 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!149 baseR!101 r!24333 testedP!423 lt!2643964))))

(assert (=> b!7543151 (isPrefix!6117 lt!2643974 input!7874)))

(declare-fun lt!2643979 () Unit!166760)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1182 (List!72794 List!72794) Unit!166760)

(assert (=> b!7543151 (= lt!2643979 (lemmaAddHeadSuffixToPrefixStillPrefix!1182 testedP!423 input!7874))))

(assert (=> b!7543151 (= lt!2643974 (++!17428 testedP!423 lt!2643965))))

(assert (=> b!7543151 (= lt!2643965 (Cons!72670 lt!2643964 Nil!72670))))

(declare-fun head!15501 (List!72794) C!40148)

(assert (=> b!7543151 (= lt!2643964 (head!15501 lt!2643981))))

(assert (=> b!7543151 (= lt!2643981 (getSuffix!3597 input!7874 testedP!423))))

(declare-fun b!7543152 () Bool)

(declare-fun tp!2194058 () Bool)

(assert (=> b!7543152 (= e!4494084 (and tp_is_empty!50177 tp!2194058))))

(declare-fun b!7543153 () Bool)

(declare-fun tp!2194055 () Bool)

(declare-fun tp!2194051 () Bool)

(assert (=> b!7543153 (= e!4494080 (and tp!2194055 tp!2194051))))

(declare-fun b!7543154 () Bool)

(assert (=> b!7543154 (= e!4494082 e!4494078)))

(declare-fun res!3023009 () Bool)

(assert (=> b!7543154 (=> res!3023009 e!4494078)))

(assert (=> b!7543154 (= res!3023009 (not (= (head!15501 lt!2643971) lt!2643964)))))

(assert (=> b!7543154 (= lt!2643976 lt!2643981)))

(declare-fun lt!2643966 () Unit!166760)

(declare-fun lemmaSamePrefixThenSameSuffix!2845 (List!72794 List!72794 List!72794 List!72794 List!72794) Unit!166760)

(assert (=> b!7543154 (= lt!2643966 (lemmaSamePrefixThenSameSuffix!2845 testedP!423 lt!2643976 testedP!423 lt!2643981 input!7874))))

(declare-fun b!7543155 () Bool)

(declare-fun tp!2194062 () Bool)

(declare-fun tp!2194056 () Bool)

(assert (=> b!7543155 (= e!4494077 (and tp!2194062 tp!2194056))))

(declare-fun b!7543156 () Bool)

(assert (=> b!7543156 (= e!4494081 e!4494076)))

(declare-fun res!3023014 () Bool)

(assert (=> b!7543156 (=> (not res!3023014) (not e!4494076))))

(assert (=> b!7543156 (= res!3023014 (>= lt!2643973 lt!2643977))))

(assert (=> b!7543156 (= lt!2643977 (size!42407 testedP!423))))

(assert (=> b!7543156 (= lt!2643973 (size!42407 knownP!30))))

(declare-fun b!7543157 () Bool)

(assert (=> b!7543157 (= e!4494080 tp_is_empty!50177)))

(declare-fun b!7543158 () Bool)

(assert (=> b!7543158 (= e!4494078 e!4494074)))

(declare-fun res!3023013 () Bool)

(assert (=> b!7543158 (=> res!3023013 e!4494074)))

(assert (=> b!7543158 (= res!3023013 (not (= lt!2643968 knownP!30)))))

(assert (=> b!7543158 (= lt!2643968 (++!17428 lt!2643974 lt!2643963))))

(declare-fun b!7543159 () Bool)

(declare-fun res!3023010 () Bool)

(assert (=> b!7543159 (=> res!3023010 e!4494079)))

(declare-fun lostCause!1703 (Regex!19911) Bool)

(assert (=> b!7543159 (= res!3023010 (lostCause!1703 r!24333))))

(assert (= (and start!729532 res!3023024) b!7543138))

(assert (= (and b!7543138 res!3023012) b!7543148))

(assert (= (and b!7543148 res!3023021) b!7543149))

(assert (= (and b!7543149 res!3023006) b!7543156))

(assert (= (and b!7543156 res!3023014) b!7543146))

(assert (= (and b!7543146 res!3023018) b!7543134))

(assert (= (and b!7543134 (not res!3023011)) b!7543147))

(assert (= (and b!7543147 (not res!3023023)) b!7543159))

(assert (= (and b!7543159 (not res!3023010)) b!7543135))

(assert (= (and b!7543135 (not res!3023007)) b!7543143))

(assert (= (and b!7543143 (not res!3023008)) b!7543151))

(assert (= (and b!7543151 (not res!3023017)) b!7543137))

(assert (= (and b!7543137 (not res!3023019)) b!7543144))

(assert (= (and b!7543144 (not res!3023020)) b!7543142))

(assert (= (and b!7543142 (not res!3023016)) b!7543154))

(assert (= (and b!7543154 (not res!3023009)) b!7543139))

(assert (= (and b!7543139 (not res!3023015)) b!7543145))

(assert (= (and b!7543145 (not res!3023022)) b!7543158))

(assert (= (and b!7543158 (not res!3023013)) b!7543141))

(get-info :version)

(assert (= (and start!729532 ((_ is ElementMatch!19911) baseR!101)) b!7543157))

(assert (= (and start!729532 ((_ is Concat!28756) baseR!101)) b!7543136))

(assert (= (and start!729532 ((_ is Star!19911) baseR!101)) b!7543131))

(assert (= (and start!729532 ((_ is Union!19911) baseR!101)) b!7543153))

(assert (= (and start!729532 ((_ is Cons!72670) input!7874)) b!7543133))

(assert (= (and start!729532 ((_ is Cons!72670) knownP!30)) b!7543130))

(assert (= (and start!729532 ((_ is Cons!72670) testedP!423)) b!7543152))

(assert (= (and start!729532 ((_ is ElementMatch!19911) r!24333)) b!7543132))

(assert (= (and start!729532 ((_ is Concat!28756) r!24333)) b!7543140))

(assert (= (and start!729532 ((_ is Star!19911) r!24333)) b!7543150))

(assert (= (and start!729532 ((_ is Union!19911) r!24333)) b!7543155))

(declare-fun m!8111992 () Bool)

(assert (=> b!7543138 m!8111992))

(declare-fun m!8111994 () Bool)

(assert (=> b!7543151 m!8111994))

(declare-fun m!8111996 () Bool)

(assert (=> b!7543151 m!8111996))

(declare-fun m!8111998 () Bool)

(assert (=> b!7543151 m!8111998))

(declare-fun m!8112000 () Bool)

(assert (=> b!7543151 m!8112000))

(declare-fun m!8112002 () Bool)

(assert (=> b!7543151 m!8112002))

(declare-fun m!8112004 () Bool)

(assert (=> b!7543151 m!8112004))

(declare-fun m!8112006 () Bool)

(assert (=> b!7543151 m!8112006))

(declare-fun m!8112008 () Bool)

(assert (=> b!7543151 m!8112008))

(declare-fun m!8112010 () Bool)

(assert (=> b!7543151 m!8112010))

(declare-fun m!8112012 () Bool)

(assert (=> b!7543151 m!8112012))

(declare-fun m!8112014 () Bool)

(assert (=> b!7543151 m!8112014))

(declare-fun m!8112016 () Bool)

(assert (=> b!7543151 m!8112016))

(declare-fun m!8112018 () Bool)

(assert (=> b!7543151 m!8112018))

(declare-fun m!8112020 () Bool)

(assert (=> b!7543142 m!8112020))

(declare-fun m!8112022 () Bool)

(assert (=> b!7543142 m!8112022))

(declare-fun m!8112024 () Bool)

(assert (=> b!7543142 m!8112024))

(declare-fun m!8112026 () Bool)

(assert (=> b!7543146 m!8112026))

(declare-fun m!8112028 () Bool)

(assert (=> b!7543148 m!8112028))

(declare-fun m!8112030 () Bool)

(assert (=> b!7543154 m!8112030))

(declare-fun m!8112032 () Bool)

(assert (=> b!7543154 m!8112032))

(declare-fun m!8112034 () Bool)

(assert (=> b!7543141 m!8112034))

(assert (=> b!7543141 m!8112034))

(declare-fun m!8112036 () Bool)

(assert (=> b!7543141 m!8112036))

(declare-fun m!8112038 () Bool)

(assert (=> b!7543141 m!8112038))

(declare-fun m!8112040 () Bool)

(assert (=> b!7543147 m!8112040))

(declare-fun m!8112042 () Bool)

(assert (=> b!7543156 m!8112042))

(declare-fun m!8112044 () Bool)

(assert (=> b!7543156 m!8112044))

(declare-fun m!8112046 () Bool)

(assert (=> b!7543159 m!8112046))

(declare-fun m!8112048 () Bool)

(assert (=> b!7543149 m!8112048))

(declare-fun m!8112050 () Bool)

(assert (=> b!7543139 m!8112050))

(assert (=> b!7543139 m!8112050))

(declare-fun m!8112052 () Bool)

(assert (=> b!7543139 m!8112052))

(declare-fun m!8112054 () Bool)

(assert (=> b!7543158 m!8112054))

(declare-fun m!8112056 () Bool)

(assert (=> b!7543137 m!8112056))

(declare-fun m!8112058 () Bool)

(assert (=> b!7543137 m!8112058))

(declare-fun m!8112060 () Bool)

(assert (=> b!7543144 m!8112060))

(declare-fun m!8112062 () Bool)

(assert (=> b!7543143 m!8112062))

(declare-fun m!8112064 () Bool)

(assert (=> start!729532 m!8112064))

(declare-fun m!8112066 () Bool)

(assert (=> b!7543134 m!8112066))

(declare-fun m!8112068 () Bool)

(assert (=> b!7543134 m!8112068))

(declare-fun m!8112070 () Bool)

(assert (=> b!7543134 m!8112070))

(declare-fun m!8112072 () Bool)

(assert (=> b!7543134 m!8112072))

(check-sat (not b!7543138) (not b!7543136) (not b!7543152) (not b!7543142) (not b!7543134) (not b!7543153) (not b!7543151) (not start!729532) (not b!7543159) (not b!7543147) (not b!7543148) (not b!7543154) (not b!7543141) (not b!7543156) (not b!7543158) (not b!7543140) (not b!7543144) (not b!7543139) (not b!7543150) (not b!7543143) (not b!7543137) (not b!7543130) (not b!7543133) tp_is_empty!50177 (not b!7543155) (not b!7543146) (not b!7543131) (not b!7543149))
(check-sat)
