; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730240 () Bool)

(assert start!730240)

(declare-fun b!7552149 () Bool)

(declare-fun res!3027072 () Bool)

(declare-fun e!4498506 () Bool)

(assert (=> b!7552149 (=> res!3027072 e!4498506)))

(declare-datatypes ((C!40228 0))(
  ( (C!40229 (val!30554 Int)) )
))
(declare-datatypes ((List!72834 0))(
  ( (Nil!72710) (Cons!72710 (h!79158 C!40228) (t!387557 List!72834)) )
))
(declare-fun lt!2647232 () List!72834)

(declare-fun lt!2647241 () C!40228)

(declare-fun $colon$colon!3395 (List!72834 C!40228) List!72834)

(declare-fun tail!15083 (List!72834) List!72834)

(assert (=> b!7552149 (= res!3027072 (not (= lt!2647232 ($colon$colon!3395 (tail!15083 lt!2647232) lt!2647241))))))

(declare-fun b!7552150 () Bool)

(declare-fun res!3027074 () Bool)

(declare-fun e!4498509 () Bool)

(assert (=> b!7552150 (=> res!3027074 e!4498509)))

(declare-fun input!7874 () List!72834)

(declare-fun lt!2647245 () List!72834)

(declare-fun testedP!423 () List!72834)

(declare-fun ++!17467 (List!72834 List!72834) List!72834)

(assert (=> b!7552150 (= res!3027074 (not (= (++!17467 testedP!423 lt!2647245) input!7874)))))

(declare-fun b!7552151 () Bool)

(declare-fun res!3027064 () Bool)

(declare-fun e!4498514 () Bool)

(assert (=> b!7552151 (=> (not res!3027064) (not e!4498514))))

(declare-fun knownP!30 () List!72834)

(declare-fun isPrefix!6157 (List!72834 List!72834) Bool)

(assert (=> b!7552151 (= res!3027064 (isPrefix!6157 knownP!30 input!7874))))

(declare-fun b!7552152 () Bool)

(declare-fun e!4498515 () Bool)

(declare-fun tp_is_empty!50257 () Bool)

(assert (=> b!7552152 (= e!4498515 tp_is_empty!50257)))

(declare-fun b!7552154 () Bool)

(declare-fun res!3027076 () Bool)

(declare-fun e!4498512 () Bool)

(assert (=> b!7552154 (=> res!3027076 e!4498512)))

(declare-fun lt!2647237 () Int)

(declare-fun size!42447 (List!72834) Int)

(assert (=> b!7552154 (= res!3027076 (>= lt!2647237 (size!42447 input!7874)))))

(declare-fun b!7552155 () Bool)

(declare-fun e!4498510 () Bool)

(assert (=> b!7552155 (= e!4498510 e!4498509)))

(declare-fun res!3027068 () Bool)

(assert (=> b!7552155 (=> res!3027068 e!4498509)))

(declare-fun lt!2647229 () List!72834)

(assert (=> b!7552155 (= res!3027068 (not (= lt!2647229 input!7874)))))

(declare-fun lt!2647234 () List!72834)

(declare-fun lt!2647238 () List!72834)

(assert (=> b!7552155 (= lt!2647229 (++!17467 lt!2647234 lt!2647238))))

(assert (=> b!7552155 (= lt!2647234 (++!17467 testedP!423 lt!2647232))))

(declare-fun b!7552156 () Bool)

(declare-fun res!3027066 () Bool)

(assert (=> b!7552156 (=> res!3027066 e!4498512)))

(declare-fun lt!2647231 () Int)

(assert (=> b!7552156 (= res!3027066 (= lt!2647237 lt!2647231))))

(declare-fun b!7552157 () Bool)

(declare-fun e!4498513 () Bool)

(assert (=> b!7552157 (= e!4498509 e!4498513)))

(declare-fun res!3027062 () Bool)

(assert (=> b!7552157 (=> res!3027062 e!4498513)))

(declare-fun lt!2647240 () List!72834)

(assert (=> b!7552157 (= res!3027062 (not (= lt!2647240 input!7874)))))

(assert (=> b!7552157 (= lt!2647229 lt!2647240)))

(declare-fun lt!2647228 () List!72834)

(assert (=> b!7552157 (= lt!2647240 (++!17467 testedP!423 lt!2647228))))

(assert (=> b!7552157 (= lt!2647228 (++!17467 lt!2647232 lt!2647238))))

(declare-datatypes ((Unit!166840 0))(
  ( (Unit!166841) )
))
(declare-fun lt!2647236 () Unit!166840)

(declare-fun lemmaConcatAssociativity!3106 (List!72834 List!72834 List!72834) Unit!166840)

(assert (=> b!7552157 (= lt!2647236 (lemmaConcatAssociativity!3106 testedP!423 lt!2647232 lt!2647238))))

(declare-fun b!7552158 () Bool)

(declare-fun e!4498505 () Bool)

(declare-fun tp!2197050 () Bool)

(assert (=> b!7552158 (= e!4498505 tp!2197050)))

(declare-fun b!7552159 () Bool)

(assert (=> b!7552159 (= e!4498505 tp_is_empty!50257)))

(declare-fun b!7552160 () Bool)

(declare-fun tp!2197044 () Bool)

(declare-fun tp!2197053 () Bool)

(assert (=> b!7552160 (= e!4498515 (and tp!2197044 tp!2197053))))

(declare-fun b!7552161 () Bool)

(assert (=> b!7552161 (= e!4498512 e!4498510)))

(declare-fun res!3027065 () Bool)

(assert (=> b!7552161 (=> res!3027065 e!4498510)))

(assert (=> b!7552161 (= res!3027065 (not (= (++!17467 knownP!30 lt!2647238) input!7874)))))

(declare-fun getSuffix!3637 (List!72834 List!72834) List!72834)

(assert (=> b!7552161 (= lt!2647238 (getSuffix!3637 input!7874 knownP!30))))

(declare-fun lt!2647233 () List!72834)

(declare-fun lt!2647244 () List!72834)

(assert (=> b!7552161 (= lt!2647233 (getSuffix!3637 knownP!30 lt!2647244))))

(assert (=> b!7552161 (isPrefix!6157 lt!2647244 knownP!30)))

(declare-fun lt!2647230 () Unit!166840)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!907 (List!72834 List!72834 List!72834) Unit!166840)

(assert (=> b!7552161 (= lt!2647230 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!907 knownP!30 lt!2647244 input!7874))))

(declare-datatypes ((Regex!19951 0))(
  ( (ElementMatch!19951 (c!1393900 C!40228)) (Concat!28796 (regOne!40414 Regex!19951) (regTwo!40414 Regex!19951)) (EmptyExpr!19951) (Star!19951 (reg!20280 Regex!19951)) (EmptyLang!19951) (Union!19951 (regOne!40415 Regex!19951) (regTwo!40415 Regex!19951)) )
))
(declare-fun baseR!101 () Regex!19951)

(declare-fun r!24333 () Regex!19951)

(declare-fun derivative!483 (Regex!19951 List!72834) Regex!19951)

(declare-fun derivativeStep!5741 (Regex!19951 C!40228) Regex!19951)

(assert (=> b!7552161 (= (derivative!483 baseR!101 lt!2647244) (derivativeStep!5741 r!24333 lt!2647241))))

(declare-fun lt!2647239 () Unit!166840)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!185 (Regex!19951 Regex!19951 List!72834 C!40228) Unit!166840)

(assert (=> b!7552161 (= lt!2647239 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!185 baseR!101 r!24333 testedP!423 lt!2647241))))

(assert (=> b!7552161 (isPrefix!6157 lt!2647244 input!7874)))

(declare-fun lt!2647246 () Unit!166840)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1218 (List!72834 List!72834) Unit!166840)

(assert (=> b!7552161 (= lt!2647246 (lemmaAddHeadSuffixToPrefixStillPrefix!1218 testedP!423 input!7874))))

(assert (=> b!7552161 (= lt!2647244 (++!17467 testedP!423 (Cons!72710 lt!2647241 Nil!72710)))))

(declare-fun head!15541 (List!72834) C!40228)

(assert (=> b!7552161 (= lt!2647241 (head!15541 lt!2647245))))

(assert (=> b!7552161 (= lt!2647245 (getSuffix!3637 input!7874 testedP!423))))

(declare-fun b!7552162 () Bool)

(declare-fun tp!2197049 () Bool)

(declare-fun tp!2197048 () Bool)

(assert (=> b!7552162 (= e!4498505 (and tp!2197049 tp!2197048))))

(declare-fun b!7552163 () Bool)

(declare-fun e!4498511 () Bool)

(declare-fun tp!2197046 () Bool)

(assert (=> b!7552163 (= e!4498511 (and tp_is_empty!50257 tp!2197046))))

(declare-fun b!7552164 () Bool)

(declare-fun tp!2197052 () Bool)

(declare-fun tp!2197042 () Bool)

(assert (=> b!7552164 (= e!4498515 (and tp!2197052 tp!2197042))))

(declare-fun b!7552165 () Bool)

(declare-fun res!3027063 () Bool)

(assert (=> b!7552165 (=> res!3027063 e!4498512)))

(declare-fun lostCause!1743 (Regex!19951) Bool)

(assert (=> b!7552165 (= res!3027063 (lostCause!1743 r!24333))))

(declare-fun b!7552166 () Bool)

(assert (=> b!7552166 (= e!4498513 e!4498506)))

(declare-fun res!3027073 () Bool)

(assert (=> b!7552166 (=> res!3027073 e!4498506)))

(assert (=> b!7552166 (= res!3027073 (not (= (head!15541 lt!2647232) lt!2647241)))))

(assert (=> b!7552166 (= lt!2647228 lt!2647245)))

(declare-fun lt!2647243 () Unit!166840)

(declare-fun lemmaSamePrefixThenSameSuffix!2873 (List!72834 List!72834 List!72834 List!72834 List!72834) Unit!166840)

(assert (=> b!7552166 (= lt!2647243 (lemmaSamePrefixThenSameSuffix!2873 testedP!423 lt!2647228 testedP!423 lt!2647245 input!7874))))

(declare-fun b!7552167 () Bool)

(declare-fun res!3027061 () Bool)

(assert (=> b!7552167 (=> (not res!3027061) (not e!4498514))))

(assert (=> b!7552167 (= res!3027061 (isPrefix!6157 testedP!423 input!7874))))

(declare-fun b!7552168 () Bool)

(declare-fun res!3027071 () Bool)

(declare-fun e!4498504 () Bool)

(assert (=> b!7552168 (=> (not res!3027071) (not e!4498504))))

(declare-fun matchR!9553 (Regex!19951 List!72834) Bool)

(assert (=> b!7552168 (= res!3027071 (matchR!9553 baseR!101 knownP!30))))

(declare-fun b!7552169 () Bool)

(declare-fun res!3027059 () Bool)

(assert (=> b!7552169 (=> (not res!3027059) (not e!4498514))))

(declare-fun validRegex!10379 (Regex!19951) Bool)

(assert (=> b!7552169 (= res!3027059 (validRegex!10379 r!24333))))

(declare-fun b!7552170 () Bool)

(declare-fun tp!2197045 () Bool)

(assert (=> b!7552170 (= e!4498515 tp!2197045)))

(declare-fun b!7552171 () Bool)

(declare-fun res!3027070 () Bool)

(assert (=> b!7552171 (=> res!3027070 e!4498506)))

(assert (=> b!7552171 (= res!3027070 (not (= lt!2647234 knownP!30)))))

(declare-fun b!7552172 () Bool)

(declare-fun tp!2197041 () Bool)

(declare-fun tp!2197047 () Bool)

(assert (=> b!7552172 (= e!4498505 (and tp!2197041 tp!2197047))))

(declare-fun b!7552153 () Bool)

(declare-fun e!4498507 () Bool)

(declare-fun tp!2197043 () Bool)

(assert (=> b!7552153 (= e!4498507 (and tp_is_empty!50257 tp!2197043))))

(declare-fun res!3027067 () Bool)

(assert (=> start!730240 (=> (not res!3027067) (not e!4498514))))

(assert (=> start!730240 (= res!3027067 (validRegex!10379 baseR!101))))

(assert (=> start!730240 e!4498514))

(assert (=> start!730240 e!4498505))

(declare-fun e!4498508 () Bool)

(assert (=> start!730240 e!4498508))

(assert (=> start!730240 e!4498511))

(assert (=> start!730240 e!4498507))

(assert (=> start!730240 e!4498515))

(declare-fun b!7552173 () Bool)

(declare-fun res!3027075 () Bool)

(assert (=> b!7552173 (=> res!3027075 e!4498512)))

(assert (=> b!7552173 (= res!3027075 (not (= (derivative!483 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7552174 () Bool)

(assert (=> b!7552174 (= e!4498504 (not e!4498512))))

(declare-fun res!3027060 () Bool)

(assert (=> b!7552174 (=> res!3027060 e!4498512)))

(assert (=> b!7552174 (= res!3027060 (not (matchR!9553 r!24333 lt!2647232)))))

(assert (=> b!7552174 (= lt!2647232 (getSuffix!3637 knownP!30 testedP!423))))

(assert (=> b!7552174 (isPrefix!6157 testedP!423 knownP!30)))

(declare-fun lt!2647242 () Unit!166840)

(assert (=> b!7552174 (= lt!2647242 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!907 knownP!30 testedP!423 input!7874))))

(declare-fun b!7552175 () Bool)

(assert (=> b!7552175 (= e!4498514 e!4498504)))

(declare-fun res!3027069 () Bool)

(assert (=> b!7552175 (=> (not res!3027069) (not e!4498504))))

(assert (=> b!7552175 (= res!3027069 (>= lt!2647231 lt!2647237))))

(assert (=> b!7552175 (= lt!2647237 (size!42447 testedP!423))))

(assert (=> b!7552175 (= lt!2647231 (size!42447 knownP!30))))

(declare-fun b!7552176 () Bool)

(declare-fun tp!2197051 () Bool)

(assert (=> b!7552176 (= e!4498508 (and tp_is_empty!50257 tp!2197051))))

(declare-fun b!7552177 () Bool)

(assert (=> b!7552177 (= e!4498506 true)))

(declare-fun lt!2647235 () List!72834)

(assert (=> b!7552177 (= lt!2647235 (++!17467 lt!2647244 lt!2647233))))

(assert (= (and start!730240 res!3027067) b!7552169))

(assert (= (and b!7552169 res!3027059) b!7552167))

(assert (= (and b!7552167 res!3027061) b!7552151))

(assert (= (and b!7552151 res!3027064) b!7552175))

(assert (= (and b!7552175 res!3027069) b!7552168))

(assert (= (and b!7552168 res!3027071) b!7552174))

(assert (= (and b!7552174 (not res!3027060)) b!7552173))

(assert (= (and b!7552173 (not res!3027075)) b!7552165))

(assert (= (and b!7552165 (not res!3027063)) b!7552156))

(assert (= (and b!7552156 (not res!3027066)) b!7552154))

(assert (= (and b!7552154 (not res!3027076)) b!7552161))

(assert (= (and b!7552161 (not res!3027065)) b!7552155))

(assert (= (and b!7552155 (not res!3027068)) b!7552150))

(assert (= (and b!7552150 (not res!3027074)) b!7552157))

(assert (= (and b!7552157 (not res!3027062)) b!7552166))

(assert (= (and b!7552166 (not res!3027073)) b!7552149))

(assert (= (and b!7552149 (not res!3027072)) b!7552171))

(assert (= (and b!7552171 (not res!3027070)) b!7552177))

(get-info :version)

(assert (= (and start!730240 ((_ is ElementMatch!19951) baseR!101)) b!7552159))

(assert (= (and start!730240 ((_ is Concat!28796) baseR!101)) b!7552172))

(assert (= (and start!730240 ((_ is Star!19951) baseR!101)) b!7552158))

(assert (= (and start!730240 ((_ is Union!19951) baseR!101)) b!7552162))

(assert (= (and start!730240 ((_ is Cons!72710) input!7874)) b!7552176))

(assert (= (and start!730240 ((_ is Cons!72710) knownP!30)) b!7552163))

(assert (= (and start!730240 ((_ is Cons!72710) testedP!423)) b!7552153))

(assert (= (and start!730240 ((_ is ElementMatch!19951) r!24333)) b!7552152))

(assert (= (and start!730240 ((_ is Concat!28796) r!24333)) b!7552164))

(assert (= (and start!730240 ((_ is Star!19951) r!24333)) b!7552170))

(assert (= (and start!730240 ((_ is Union!19951) r!24333)) b!7552160))

(declare-fun m!8118830 () Bool)

(assert (=> b!7552154 m!8118830))

(declare-fun m!8118832 () Bool)

(assert (=> b!7552173 m!8118832))

(declare-fun m!8118834 () Bool)

(assert (=> start!730240 m!8118834))

(declare-fun m!8118836 () Bool)

(assert (=> b!7552151 m!8118836))

(declare-fun m!8118838 () Bool)

(assert (=> b!7552174 m!8118838))

(declare-fun m!8118840 () Bool)

(assert (=> b!7552174 m!8118840))

(declare-fun m!8118842 () Bool)

(assert (=> b!7552174 m!8118842))

(declare-fun m!8118844 () Bool)

(assert (=> b!7552174 m!8118844))

(declare-fun m!8118846 () Bool)

(assert (=> b!7552161 m!8118846))

(declare-fun m!8118848 () Bool)

(assert (=> b!7552161 m!8118848))

(declare-fun m!8118850 () Bool)

(assert (=> b!7552161 m!8118850))

(declare-fun m!8118852 () Bool)

(assert (=> b!7552161 m!8118852))

(declare-fun m!8118854 () Bool)

(assert (=> b!7552161 m!8118854))

(declare-fun m!8118856 () Bool)

(assert (=> b!7552161 m!8118856))

(declare-fun m!8118858 () Bool)

(assert (=> b!7552161 m!8118858))

(declare-fun m!8118860 () Bool)

(assert (=> b!7552161 m!8118860))

(declare-fun m!8118862 () Bool)

(assert (=> b!7552161 m!8118862))

(declare-fun m!8118864 () Bool)

(assert (=> b!7552161 m!8118864))

(declare-fun m!8118866 () Bool)

(assert (=> b!7552161 m!8118866))

(declare-fun m!8118868 () Bool)

(assert (=> b!7552161 m!8118868))

(declare-fun m!8118870 () Bool)

(assert (=> b!7552161 m!8118870))

(declare-fun m!8118872 () Bool)

(assert (=> b!7552167 m!8118872))

(declare-fun m!8118874 () Bool)

(assert (=> b!7552166 m!8118874))

(declare-fun m!8118876 () Bool)

(assert (=> b!7552166 m!8118876))

(declare-fun m!8118878 () Bool)

(assert (=> b!7552155 m!8118878))

(declare-fun m!8118880 () Bool)

(assert (=> b!7552155 m!8118880))

(declare-fun m!8118882 () Bool)

(assert (=> b!7552165 m!8118882))

(declare-fun m!8118884 () Bool)

(assert (=> b!7552157 m!8118884))

(declare-fun m!8118886 () Bool)

(assert (=> b!7552157 m!8118886))

(declare-fun m!8118888 () Bool)

(assert (=> b!7552157 m!8118888))

(declare-fun m!8118890 () Bool)

(assert (=> b!7552177 m!8118890))

(declare-fun m!8118892 () Bool)

(assert (=> b!7552168 m!8118892))

(declare-fun m!8118894 () Bool)

(assert (=> b!7552150 m!8118894))

(declare-fun m!8118896 () Bool)

(assert (=> b!7552175 m!8118896))

(declare-fun m!8118898 () Bool)

(assert (=> b!7552175 m!8118898))

(declare-fun m!8118900 () Bool)

(assert (=> b!7552169 m!8118900))

(declare-fun m!8118902 () Bool)

(assert (=> b!7552149 m!8118902))

(assert (=> b!7552149 m!8118902))

(declare-fun m!8118904 () Bool)

(assert (=> b!7552149 m!8118904))

(check-sat (not b!7552172) (not b!7552170) (not b!7552177) (not b!7552161) (not b!7552167) (not b!7552150) (not b!7552155) (not b!7552166) (not b!7552157) (not b!7552174) (not b!7552158) (not b!7552163) (not start!730240) (not b!7552176) (not b!7552165) (not b!7552160) (not b!7552168) (not b!7552164) (not b!7552153) tp_is_empty!50257 (not b!7552162) (not b!7552151) (not b!7552154) (not b!7552149) (not b!7552173) (not b!7552169) (not b!7552175))
(check-sat)
