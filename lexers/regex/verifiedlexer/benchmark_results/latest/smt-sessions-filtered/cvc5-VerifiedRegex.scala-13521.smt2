; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728510 () Bool)

(assert start!728510)

(declare-fun b!7528946 () Bool)

(declare-fun e!4487451 () Bool)

(declare-fun tp!2188175 () Bool)

(assert (=> b!7528946 (= e!4487451 tp!2188175)))

(declare-fun b!7528947 () Bool)

(declare-fun e!4487453 () Bool)

(declare-fun tp!2188172 () Bool)

(assert (=> b!7528947 (= e!4487453 tp!2188172)))

(declare-fun b!7528948 () Bool)

(declare-fun e!4487452 () Bool)

(declare-fun tp_is_empty!50027 () Bool)

(declare-fun tp!2188173 () Bool)

(assert (=> b!7528948 (= e!4487452 (and tp_is_empty!50027 tp!2188173))))

(declare-fun b!7528949 () Bool)

(declare-fun e!4487450 () Bool)

(declare-fun tp!2188167 () Bool)

(assert (=> b!7528949 (= e!4487450 (and tp_is_empty!50027 tp!2188167))))

(declare-fun b!7528950 () Bool)

(declare-fun tp!2188165 () Bool)

(declare-fun tp!2188169 () Bool)

(assert (=> b!7528950 (= e!4487453 (and tp!2188165 tp!2188169))))

(declare-fun res!3017475 () Bool)

(declare-fun e!4487455 () Bool)

(assert (=> start!728510 (=> (not res!3017475) (not e!4487455))))

(declare-datatypes ((C!39998 0))(
  ( (C!39999 (val!30439 Int)) )
))
(declare-datatypes ((Regex!19836 0))(
  ( (ElementMatch!19836 (c!1390725 C!39998)) (Concat!28681 (regOne!40184 Regex!19836) (regTwo!40184 Regex!19836)) (EmptyExpr!19836) (Star!19836 (reg!20165 Regex!19836)) (EmptyLang!19836) (Union!19836 (regOne!40185 Regex!19836) (regTwo!40185 Regex!19836)) )
))
(declare-fun baseR!101 () Regex!19836)

(declare-fun validRegex!10264 (Regex!19836) Bool)

(assert (=> start!728510 (= res!3017475 (validRegex!10264 baseR!101))))

(assert (=> start!728510 e!4487455))

(assert (=> start!728510 e!4487451))

(declare-fun e!4487454 () Bool)

(assert (=> start!728510 e!4487454))

(assert (=> start!728510 e!4487450))

(assert (=> start!728510 e!4487452))

(assert (=> start!728510 e!4487453))

(declare-fun b!7528951 () Bool)

(declare-fun tp!2188170 () Bool)

(declare-fun tp!2188168 () Bool)

(assert (=> b!7528951 (= e!4487451 (and tp!2188170 tp!2188168))))

(declare-fun b!7528952 () Bool)

(declare-fun res!3017476 () Bool)

(assert (=> b!7528952 (=> (not res!3017476) (not e!4487455))))

(declare-datatypes ((List!72719 0))(
  ( (Nil!72595) (Cons!72595 (h!79043 C!39998) (t!387426 List!72719)) )
))
(declare-fun testedP!423 () List!72719)

(declare-fun input!7874 () List!72719)

(declare-fun isPrefix!6042 (List!72719 List!72719) Bool)

(assert (=> b!7528952 (= res!3017476 (isPrefix!6042 testedP!423 input!7874))))

(declare-fun b!7528953 () Bool)

(declare-fun res!3017477 () Bool)

(assert (=> b!7528953 (=> (not res!3017477) (not e!4487455))))

(declare-fun knownP!30 () List!72719)

(assert (=> b!7528953 (= res!3017477 (isPrefix!6042 knownP!30 input!7874))))

(declare-fun b!7528954 () Bool)

(assert (=> b!7528954 (= e!4487455 false)))

(declare-fun lt!2640035 () Int)

(declare-fun size!42332 (List!72719) Int)

(assert (=> b!7528954 (= lt!2640035 (size!42332 testedP!423))))

(declare-fun lt!2640036 () Int)

(assert (=> b!7528954 (= lt!2640036 (size!42332 knownP!30))))

(declare-fun b!7528955 () Bool)

(assert (=> b!7528955 (= e!4487451 tp_is_empty!50027)))

(declare-fun b!7528956 () Bool)

(declare-fun res!3017478 () Bool)

(assert (=> b!7528956 (=> (not res!3017478) (not e!4487455))))

(declare-fun r!24333 () Regex!19836)

(assert (=> b!7528956 (= res!3017478 (validRegex!10264 r!24333))))

(declare-fun b!7528957 () Bool)

(assert (=> b!7528957 (= e!4487453 tp_is_empty!50027)))

(declare-fun b!7528958 () Bool)

(declare-fun tp!2188176 () Bool)

(declare-fun tp!2188164 () Bool)

(assert (=> b!7528958 (= e!4487453 (and tp!2188176 tp!2188164))))

(declare-fun b!7528959 () Bool)

(declare-fun tp!2188166 () Bool)

(assert (=> b!7528959 (= e!4487454 (and tp_is_empty!50027 tp!2188166))))

(declare-fun b!7528960 () Bool)

(declare-fun tp!2188174 () Bool)

(declare-fun tp!2188171 () Bool)

(assert (=> b!7528960 (= e!4487451 (and tp!2188174 tp!2188171))))

(assert (= (and start!728510 res!3017475) b!7528956))

(assert (= (and b!7528956 res!3017478) b!7528952))

(assert (= (and b!7528952 res!3017476) b!7528953))

(assert (= (and b!7528953 res!3017477) b!7528954))

(assert (= (and start!728510 (is-ElementMatch!19836 baseR!101)) b!7528955))

(assert (= (and start!728510 (is-Concat!28681 baseR!101)) b!7528960))

(assert (= (and start!728510 (is-Star!19836 baseR!101)) b!7528946))

(assert (= (and start!728510 (is-Union!19836 baseR!101)) b!7528951))

(assert (= (and start!728510 (is-Cons!72595 input!7874)) b!7528959))

(assert (= (and start!728510 (is-Cons!72595 knownP!30)) b!7528949))

(assert (= (and start!728510 (is-Cons!72595 testedP!423)) b!7528948))

(assert (= (and start!728510 (is-ElementMatch!19836 r!24333)) b!7528957))

(assert (= (and start!728510 (is-Concat!28681 r!24333)) b!7528958))

(assert (= (and start!728510 (is-Star!19836 r!24333)) b!7528947))

(assert (= (and start!728510 (is-Union!19836 r!24333)) b!7528950))

(declare-fun m!8103138 () Bool)

(assert (=> start!728510 m!8103138))

(declare-fun m!8103140 () Bool)

(assert (=> b!7528956 m!8103140))

(declare-fun m!8103142 () Bool)

(assert (=> b!7528954 m!8103142))

(declare-fun m!8103144 () Bool)

(assert (=> b!7528954 m!8103144))

(declare-fun m!8103146 () Bool)

(assert (=> b!7528952 m!8103146))

(declare-fun m!8103148 () Bool)

(assert (=> b!7528953 m!8103148))

(push 1)

(assert (not b!7528949))

(assert (not b!7528960))

(assert (not start!728510))

(assert (not b!7528946))

(assert (not b!7528959))

(assert (not b!7528958))

(assert (not b!7528954))

(assert (not b!7528947))

(assert (not b!7528952))

(assert (not b!7528953))

(assert tp_is_empty!50027)

(assert (not b!7528950))

(assert (not b!7528948))

(assert (not b!7528951))

(assert (not b!7528956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

