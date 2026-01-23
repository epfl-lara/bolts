; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349536 () Bool)

(assert start!349536)

(declare-fun b!3706025 () Bool)

(declare-fun e!2295812 () Bool)

(declare-fun tp!1127437 () Bool)

(declare-fun tp!1127439 () Bool)

(assert (=> b!3706025 (= e!2295812 (and tp!1127437 tp!1127439))))

(declare-fun b!3706026 () Bool)

(declare-fun res!1507677 () Bool)

(declare-fun e!2295813 () Bool)

(assert (=> b!3706026 (=> (not res!1507677) (not e!2295813))))

(declare-datatypes ((C!21794 0))(
  ( (C!21795 (val!12945 Int)) )
))
(declare-datatypes ((Regex!10804 0))(
  ( (ElementMatch!10804 (c!640056 C!21794)) (Concat!17075 (regOne!22120 Regex!10804) (regTwo!22120 Regex!10804)) (EmptyExpr!10804) (Star!10804 (reg!11133 Regex!10804)) (EmptyLang!10804) (Union!10804 (regOne!22121 Regex!10804) (regTwo!22121 Regex!10804)) )
))
(declare-fun r!25965 () Regex!10804)

(declare-fun c!13398 () C!21794)

(declare-datatypes ((List!39685 0))(
  ( (Nil!39561) (Cons!39561 (h!44981 C!21794) (t!302368 List!39685)) )
))
(declare-fun contains!7897 (List!39685 C!21794) Bool)

(declare-fun usedCharacters!1067 (Regex!10804) List!39685)

(assert (=> b!3706026 (= res!1507677 (not (contains!7897 (usedCharacters!1067 r!25965) c!13398)))))

(declare-fun b!3706027 () Bool)

(declare-fun res!1507675 () Bool)

(assert (=> b!3706027 (=> (not res!1507675) (not e!2295813))))

(declare-fun s!14922 () List!39685)

(assert (=> b!3706027 (= res!1507675 (and (or (not (is-Cons!39561 s!14922)) (not (= (h!44981 s!14922) c!13398))) (is-Cons!39561 s!14922) (not (= (h!44981 s!14922) c!13398))))))

(declare-fun b!3706028 () Bool)

(declare-fun e!2295811 () Bool)

(declare-fun tp_is_empty!18623 () Bool)

(declare-fun tp!1127441 () Bool)

(assert (=> b!3706028 (= e!2295811 (and tp_is_empty!18623 tp!1127441))))

(declare-fun b!3706029 () Bool)

(declare-fun e!2295814 () Bool)

(assert (=> b!3706029 (= e!2295814 true)))

(declare-fun lt!1296413 () Bool)

(assert (=> b!3706029 (= lt!1296413 (contains!7897 (t!302368 s!14922) c!13398))))

(declare-fun res!1507673 () Bool)

(assert (=> start!349536 (=> (not res!1507673) (not e!2295813))))

(declare-fun validRegex!4911 (Regex!10804) Bool)

(assert (=> start!349536 (= res!1507673 (validRegex!4911 r!25965))))

(assert (=> start!349536 e!2295813))

(assert (=> start!349536 e!2295812))

(assert (=> start!349536 e!2295811))

(assert (=> start!349536 tp_is_empty!18623))

(declare-fun b!3706030 () Bool)

(assert (=> b!3706030 (= e!2295813 (not e!2295814))))

(declare-fun res!1507674 () Bool)

(assert (=> b!3706030 (=> res!1507674 e!2295814)))

(declare-fun lt!1296415 () Regex!10804)

(assert (=> b!3706030 (= res!1507674 (not (validRegex!4911 lt!1296415)))))

(assert (=> b!3706030 (not (contains!7897 (usedCharacters!1067 lt!1296415) c!13398))))

(declare-fun derivativeStep!3287 (Regex!10804 C!21794) Regex!10804)

(assert (=> b!3706030 (= lt!1296415 (derivativeStep!3287 r!25965 (h!44981 s!14922)))))

(declare-datatypes ((Unit!57446 0))(
  ( (Unit!57447) )
))
(declare-fun lt!1296414 () Unit!57446)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!3 (Regex!10804 C!21794 C!21794) Unit!57446)

(assert (=> b!3706030 (= lt!1296414 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!3 r!25965 (h!44981 s!14922) c!13398))))

(declare-fun b!3706031 () Bool)

(assert (=> b!3706031 (= e!2295812 tp_is_empty!18623)))

(declare-fun b!3706032 () Bool)

(declare-fun tp!1127442 () Bool)

(assert (=> b!3706032 (= e!2295812 tp!1127442)))

(declare-fun b!3706033 () Bool)

(declare-fun res!1507676 () Bool)

(assert (=> b!3706033 (=> (not res!1507676) (not e!2295813))))

(assert (=> b!3706033 (= res!1507676 (contains!7897 s!14922 c!13398))))

(declare-fun b!3706034 () Bool)

(declare-fun tp!1127438 () Bool)

(declare-fun tp!1127440 () Bool)

(assert (=> b!3706034 (= e!2295812 (and tp!1127438 tp!1127440))))

(assert (= (and start!349536 res!1507673) b!3706033))

(assert (= (and b!3706033 res!1507676) b!3706026))

(assert (= (and b!3706026 res!1507677) b!3706027))

(assert (= (and b!3706027 res!1507675) b!3706030))

(assert (= (and b!3706030 (not res!1507674)) b!3706029))

(assert (= (and start!349536 (is-ElementMatch!10804 r!25965)) b!3706031))

(assert (= (and start!349536 (is-Concat!17075 r!25965)) b!3706025))

(assert (= (and start!349536 (is-Star!10804 r!25965)) b!3706032))

(assert (= (and start!349536 (is-Union!10804 r!25965)) b!3706034))

(assert (= (and start!349536 (is-Cons!39561 s!14922)) b!3706028))

(declare-fun m!4216109 () Bool)

(assert (=> start!349536 m!4216109))

(declare-fun m!4216111 () Bool)

(assert (=> b!3706029 m!4216111))

(declare-fun m!4216113 () Bool)

(assert (=> b!3706026 m!4216113))

(assert (=> b!3706026 m!4216113))

(declare-fun m!4216115 () Bool)

(assert (=> b!3706026 m!4216115))

(declare-fun m!4216117 () Bool)

(assert (=> b!3706030 m!4216117))

(declare-fun m!4216119 () Bool)

(assert (=> b!3706030 m!4216119))

(declare-fun m!4216121 () Bool)

(assert (=> b!3706030 m!4216121))

(declare-fun m!4216123 () Bool)

(assert (=> b!3706030 m!4216123))

(assert (=> b!3706030 m!4216117))

(declare-fun m!4216125 () Bool)

(assert (=> b!3706030 m!4216125))

(declare-fun m!4216127 () Bool)

(assert (=> b!3706033 m!4216127))

(push 1)

(assert (not b!3706034))

(assert (not b!3706029))

(assert tp_is_empty!18623)

(assert (not b!3706032))

(assert (not start!349536))

(assert (not b!3706025))

(assert (not b!3706028))

(assert (not b!3706033))

(assert (not b!3706026))

(assert (not b!3706030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

