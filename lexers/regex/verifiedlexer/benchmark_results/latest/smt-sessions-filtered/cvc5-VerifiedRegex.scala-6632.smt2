; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349532 () Bool)

(assert start!349532)

(declare-fun b!3705969 () Bool)

(declare-fun e!2295792 () Bool)

(declare-fun tp!1127405 () Bool)

(assert (=> b!3705969 (= e!2295792 tp!1127405)))

(declare-fun b!3705970 () Bool)

(declare-fun res!1507649 () Bool)

(declare-fun e!2295791 () Bool)

(assert (=> b!3705970 (=> (not res!1507649) (not e!2295791))))

(declare-datatypes ((C!21790 0))(
  ( (C!21791 (val!12943 Int)) )
))
(declare-datatypes ((Regex!10802 0))(
  ( (ElementMatch!10802 (c!640054 C!21790)) (Concat!17073 (regOne!22116 Regex!10802) (regTwo!22116 Regex!10802)) (EmptyExpr!10802) (Star!10802 (reg!11131 Regex!10802)) (EmptyLang!10802) (Union!10802 (regOne!22117 Regex!10802) (regTwo!22117 Regex!10802)) )
))
(declare-fun r!25965 () Regex!10802)

(declare-fun c!13398 () C!21790)

(declare-datatypes ((List!39683 0))(
  ( (Nil!39559) (Cons!39559 (h!44979 C!21790) (t!302366 List!39683)) )
))
(declare-fun contains!7895 (List!39683 C!21790) Bool)

(declare-fun usedCharacters!1065 (Regex!10802) List!39683)

(assert (=> b!3705970 (= res!1507649 (not (contains!7895 (usedCharacters!1065 r!25965) c!13398)))))

(declare-fun b!3705971 () Bool)

(declare-fun tp!1127406 () Bool)

(declare-fun tp!1127402 () Bool)

(assert (=> b!3705971 (= e!2295792 (and tp!1127406 tp!1127402))))

(declare-fun res!1507650 () Bool)

(assert (=> start!349532 (=> (not res!1507650) (not e!2295791))))

(declare-fun validRegex!4909 (Regex!10802) Bool)

(assert (=> start!349532 (= res!1507650 (validRegex!4909 r!25965))))

(assert (=> start!349532 e!2295791))

(assert (=> start!349532 e!2295792))

(declare-fun e!2295793 () Bool)

(assert (=> start!349532 e!2295793))

(declare-fun tp_is_empty!18619 () Bool)

(assert (=> start!349532 tp_is_empty!18619))

(declare-fun b!3705972 () Bool)

(assert (=> b!3705972 (= e!2295791 (not true))))

(declare-fun s!14922 () List!39683)

(declare-fun derivativeStep!3285 (Regex!10802 C!21790) Regex!10802)

(assert (=> b!3705972 (not (contains!7895 (usedCharacters!1065 (derivativeStep!3285 r!25965 (h!44979 s!14922))) c!13398))))

(declare-datatypes ((Unit!57442 0))(
  ( (Unit!57443) )
))
(declare-fun lt!1296403 () Unit!57442)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!1 (Regex!10802 C!21790 C!21790) Unit!57442)

(assert (=> b!3705972 (= lt!1296403 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!1 r!25965 (h!44979 s!14922) c!13398))))

(declare-fun b!3705973 () Bool)

(declare-fun tp!1127404 () Bool)

(assert (=> b!3705973 (= e!2295793 (and tp_is_empty!18619 tp!1127404))))

(declare-fun b!3705974 () Bool)

(declare-fun res!1507647 () Bool)

(assert (=> b!3705974 (=> (not res!1507647) (not e!2295791))))

(assert (=> b!3705974 (= res!1507647 (contains!7895 s!14922 c!13398))))

(declare-fun b!3705975 () Bool)

(declare-fun res!1507648 () Bool)

(assert (=> b!3705975 (=> (not res!1507648) (not e!2295791))))

(assert (=> b!3705975 (= res!1507648 (and (or (not (is-Cons!39559 s!14922)) (not (= (h!44979 s!14922) c!13398))) (is-Cons!39559 s!14922) (not (= (h!44979 s!14922) c!13398))))))

(declare-fun b!3705976 () Bool)

(assert (=> b!3705976 (= e!2295792 tp_is_empty!18619)))

(declare-fun b!3705977 () Bool)

(declare-fun tp!1127403 () Bool)

(declare-fun tp!1127401 () Bool)

(assert (=> b!3705977 (= e!2295792 (and tp!1127403 tp!1127401))))

(assert (= (and start!349532 res!1507650) b!3705974))

(assert (= (and b!3705974 res!1507647) b!3705970))

(assert (= (and b!3705970 res!1507649) b!3705975))

(assert (= (and b!3705975 res!1507648) b!3705972))

(assert (= (and start!349532 (is-ElementMatch!10802 r!25965)) b!3705976))

(assert (= (and start!349532 (is-Concat!17073 r!25965)) b!3705971))

(assert (= (and start!349532 (is-Star!10802 r!25965)) b!3705969))

(assert (= (and start!349532 (is-Union!10802 r!25965)) b!3705977))

(assert (= (and start!349532 (is-Cons!39559 s!14922)) b!3705973))

(declare-fun m!4216077 () Bool)

(assert (=> b!3705970 m!4216077))

(assert (=> b!3705970 m!4216077))

(declare-fun m!4216079 () Bool)

(assert (=> b!3705970 m!4216079))

(declare-fun m!4216081 () Bool)

(assert (=> start!349532 m!4216081))

(declare-fun m!4216083 () Bool)

(assert (=> b!3705972 m!4216083))

(assert (=> b!3705972 m!4216083))

(declare-fun m!4216085 () Bool)

(assert (=> b!3705972 m!4216085))

(assert (=> b!3705972 m!4216085))

(declare-fun m!4216087 () Bool)

(assert (=> b!3705972 m!4216087))

(declare-fun m!4216089 () Bool)

(assert (=> b!3705972 m!4216089))

(declare-fun m!4216091 () Bool)

(assert (=> b!3705974 m!4216091))

(push 1)

(assert (not start!349532))

(assert (not b!3705972))

(assert (not b!3705971))

(assert (not b!3705970))

(assert (not b!3705974))

(assert (not b!3705973))

(assert (not b!3705969))

(assert (not b!3705977))

(assert tp_is_empty!18619)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

