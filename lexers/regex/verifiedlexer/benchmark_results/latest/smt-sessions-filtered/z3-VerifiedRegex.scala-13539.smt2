; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728768 () Bool)

(assert start!728768)

(declare-fun res!3019099 () Bool)

(declare-fun e!4489321 () Bool)

(assert (=> start!728768 (=> (not res!3019099) (not e!4489321))))

(declare-datatypes ((C!40072 0))(
  ( (C!40073 (val!30476 Int)) )
))
(declare-datatypes ((Regex!19873 0))(
  ( (ElementMatch!19873 (c!1391182 C!40072)) (Concat!28718 (regOne!40258 Regex!19873) (regTwo!40258 Regex!19873)) (EmptyExpr!19873) (Star!19873 (reg!20202 Regex!19873)) (EmptyLang!19873) (Union!19873 (regOne!40259 Regex!19873) (regTwo!40259 Regex!19873)) )
))
(declare-fun baseR!101 () Regex!19873)

(declare-fun validRegex!10301 (Regex!19873) Bool)

(assert (=> start!728768 (= res!3019099 (validRegex!10301 baseR!101))))

(assert (=> start!728768 e!4489321))

(declare-fun e!4489318 () Bool)

(assert (=> start!728768 e!4489318))

(declare-fun e!4489324 () Bool)

(assert (=> start!728768 e!4489324))

(declare-fun e!4489320 () Bool)

(assert (=> start!728768 e!4489320))

(declare-fun e!4489323 () Bool)

(assert (=> start!728768 e!4489323))

(declare-fun e!4489325 () Bool)

(assert (=> start!728768 e!4489325))

(declare-fun b!7533083 () Bool)

(declare-fun res!3019098 () Bool)

(assert (=> b!7533083 (=> (not res!3019098) (not e!4489321))))

(declare-datatypes ((List!72756 0))(
  ( (Nil!72632) (Cons!72632 (h!79080 C!40072) (t!387463 List!72756)) )
))
(declare-fun knownP!30 () List!72756)

(declare-fun input!7874 () List!72756)

(declare-fun isPrefix!6079 (List!72756 List!72756) Bool)

(assert (=> b!7533083 (= res!3019098 (isPrefix!6079 knownP!30 input!7874))))

(declare-fun b!7533084 () Bool)

(declare-fun res!3019100 () Bool)

(assert (=> b!7533084 (=> (not res!3019100) (not e!4489321))))

(declare-fun r!24333 () Regex!19873)

(assert (=> b!7533084 (= res!3019100 (validRegex!10301 r!24333))))

(declare-fun b!7533085 () Bool)

(declare-fun e!4489322 () Bool)

(assert (=> b!7533085 (= e!4489322 true)))

(declare-fun lt!2641463 () Int)

(declare-fun size!42369 (List!72756) Int)

(assert (=> b!7533085 (= lt!2641463 (size!42369 input!7874))))

(declare-fun b!7533086 () Bool)

(declare-fun tp_is_empty!50101 () Bool)

(assert (=> b!7533086 (= e!4489318 tp_is_empty!50101)))

(declare-fun b!7533087 () Bool)

(declare-fun tp!2190133 () Bool)

(assert (=> b!7533087 (= e!4489324 (and tp_is_empty!50101 tp!2190133))))

(declare-fun b!7533088 () Bool)

(declare-fun e!4489319 () Bool)

(assert (=> b!7533088 (= e!4489321 e!4489319)))

(declare-fun res!3019097 () Bool)

(assert (=> b!7533088 (=> (not res!3019097) (not e!4489319))))

(declare-fun lt!2641465 () Int)

(declare-fun lt!2641466 () Int)

(assert (=> b!7533088 (= res!3019097 (>= lt!2641465 lt!2641466))))

(declare-fun testedP!423 () List!72756)

(assert (=> b!7533088 (= lt!2641466 (size!42369 testedP!423))))

(assert (=> b!7533088 (= lt!2641465 (size!42369 knownP!30))))

(declare-fun b!7533089 () Bool)

(assert (=> b!7533089 (= e!4489319 (not e!4489322))))

(declare-fun res!3019104 () Bool)

(assert (=> b!7533089 (=> res!3019104 e!4489322)))

(declare-fun matchR!9475 (Regex!19873 List!72756) Bool)

(declare-fun getSuffix!3559 (List!72756 List!72756) List!72756)

(assert (=> b!7533089 (= res!3019104 (not (matchR!9475 r!24333 (getSuffix!3559 knownP!30 testedP!423))))))

(assert (=> b!7533089 (isPrefix!6079 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166684 0))(
  ( (Unit!166685) )
))
(declare-fun lt!2641464 () Unit!166684)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!829 (List!72756 List!72756 List!72756) Unit!166684)

(assert (=> b!7533089 (= lt!2641464 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!829 knownP!30 testedP!423 input!7874))))

(declare-fun b!7533090 () Bool)

(declare-fun res!3019101 () Bool)

(assert (=> b!7533090 (=> res!3019101 e!4489322)))

(assert (=> b!7533090 (= res!3019101 (= lt!2641466 lt!2641465))))

(declare-fun b!7533091 () Bool)

(declare-fun tp!2190139 () Bool)

(assert (=> b!7533091 (= e!4489320 (and tp_is_empty!50101 tp!2190139))))

(declare-fun b!7533092 () Bool)

(declare-fun tp!2190127 () Bool)

(declare-fun tp!2190131 () Bool)

(assert (=> b!7533092 (= e!4489318 (and tp!2190127 tp!2190131))))

(declare-fun b!7533093 () Bool)

(declare-fun res!3019096 () Bool)

(assert (=> b!7533093 (=> (not res!3019096) (not e!4489321))))

(assert (=> b!7533093 (= res!3019096 (isPrefix!6079 testedP!423 input!7874))))

(declare-fun b!7533094 () Bool)

(declare-fun tp!2190136 () Bool)

(assert (=> b!7533094 (= e!4489318 tp!2190136)))

(declare-fun b!7533095 () Bool)

(declare-fun tp!2190138 () Bool)

(declare-fun tp!2190135 () Bool)

(assert (=> b!7533095 (= e!4489325 (and tp!2190138 tp!2190135))))

(declare-fun b!7533096 () Bool)

(declare-fun res!3019102 () Bool)

(assert (=> b!7533096 (=> (not res!3019102) (not e!4489319))))

(assert (=> b!7533096 (= res!3019102 (matchR!9475 baseR!101 knownP!30))))

(declare-fun b!7533097 () Bool)

(declare-fun tp!2190132 () Bool)

(assert (=> b!7533097 (= e!4489325 tp!2190132)))

(declare-fun b!7533098 () Bool)

(declare-fun tp!2190129 () Bool)

(declare-fun tp!2190128 () Bool)

(assert (=> b!7533098 (= e!4489318 (and tp!2190129 tp!2190128))))

(declare-fun b!7533099 () Bool)

(assert (=> b!7533099 (= e!4489325 tp_is_empty!50101)))

(declare-fun b!7533100 () Bool)

(declare-fun tp!2190130 () Bool)

(assert (=> b!7533100 (= e!4489323 (and tp_is_empty!50101 tp!2190130))))

(declare-fun b!7533101 () Bool)

(declare-fun tp!2190137 () Bool)

(declare-fun tp!2190134 () Bool)

(assert (=> b!7533101 (= e!4489325 (and tp!2190137 tp!2190134))))

(declare-fun b!7533102 () Bool)

(declare-fun res!3019095 () Bool)

(assert (=> b!7533102 (=> res!3019095 e!4489322)))

(declare-fun lostCause!1665 (Regex!19873) Bool)

(assert (=> b!7533102 (= res!3019095 (lostCause!1665 r!24333))))

(declare-fun b!7533103 () Bool)

(declare-fun res!3019103 () Bool)

(assert (=> b!7533103 (=> res!3019103 e!4489322)))

(declare-fun derivative!405 (Regex!19873 List!72756) Regex!19873)

(assert (=> b!7533103 (= res!3019103 (not (= (derivative!405 baseR!101 testedP!423) r!24333)))))

(assert (= (and start!728768 res!3019099) b!7533084))

(assert (= (and b!7533084 res!3019100) b!7533093))

(assert (= (and b!7533093 res!3019096) b!7533083))

(assert (= (and b!7533083 res!3019098) b!7533088))

(assert (= (and b!7533088 res!3019097) b!7533096))

(assert (= (and b!7533096 res!3019102) b!7533089))

(assert (= (and b!7533089 (not res!3019104)) b!7533103))

(assert (= (and b!7533103 (not res!3019103)) b!7533102))

(assert (= (and b!7533102 (not res!3019095)) b!7533090))

(assert (= (and b!7533090 (not res!3019101)) b!7533085))

(get-info :version)

(assert (= (and start!728768 ((_ is ElementMatch!19873) baseR!101)) b!7533086))

(assert (= (and start!728768 ((_ is Concat!28718) baseR!101)) b!7533098))

(assert (= (and start!728768 ((_ is Star!19873) baseR!101)) b!7533094))

(assert (= (and start!728768 ((_ is Union!19873) baseR!101)) b!7533092))

(assert (= (and start!728768 ((_ is Cons!72632) input!7874)) b!7533087))

(assert (= (and start!728768 ((_ is Cons!72632) knownP!30)) b!7533091))

(assert (= (and start!728768 ((_ is Cons!72632) testedP!423)) b!7533100))

(assert (= (and start!728768 ((_ is ElementMatch!19873) r!24333)) b!7533099))

(assert (= (and start!728768 ((_ is Concat!28718) r!24333)) b!7533101))

(assert (= (and start!728768 ((_ is Star!19873) r!24333)) b!7533097))

(assert (= (and start!728768 ((_ is Union!19873) r!24333)) b!7533095))

(declare-fun m!8105386 () Bool)

(assert (=> b!7533088 m!8105386))

(declare-fun m!8105388 () Bool)

(assert (=> b!7533088 m!8105388))

(declare-fun m!8105390 () Bool)

(assert (=> b!7533085 m!8105390))

(declare-fun m!8105392 () Bool)

(assert (=> b!7533103 m!8105392))

(declare-fun m!8105394 () Bool)

(assert (=> b!7533096 m!8105394))

(declare-fun m!8105396 () Bool)

(assert (=> b!7533102 m!8105396))

(declare-fun m!8105398 () Bool)

(assert (=> b!7533083 m!8105398))

(declare-fun m!8105400 () Bool)

(assert (=> start!728768 m!8105400))

(declare-fun m!8105402 () Bool)

(assert (=> b!7533089 m!8105402))

(assert (=> b!7533089 m!8105402))

(declare-fun m!8105404 () Bool)

(assert (=> b!7533089 m!8105404))

(declare-fun m!8105406 () Bool)

(assert (=> b!7533089 m!8105406))

(declare-fun m!8105408 () Bool)

(assert (=> b!7533089 m!8105408))

(declare-fun m!8105410 () Bool)

(assert (=> b!7533093 m!8105410))

(declare-fun m!8105412 () Bool)

(assert (=> b!7533084 m!8105412))

(check-sat (not b!7533092) (not b!7533102) (not b!7533097) (not b!7533087) (not b!7533100) (not b!7533096) (not b!7533101) (not b!7533084) (not b!7533094) (not b!7533085) (not b!7533083) (not b!7533095) (not b!7533093) tp_is_empty!50101 (not b!7533089) (not b!7533103) (not b!7533098) (not b!7533088) (not b!7533091) (not start!728768))
(check-sat)
