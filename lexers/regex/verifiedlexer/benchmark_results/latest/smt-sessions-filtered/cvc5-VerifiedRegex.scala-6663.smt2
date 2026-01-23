; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350440 () Bool)

(assert start!350440)

(declare-fun b!3721045 () Bool)

(declare-fun e!2303597 () Bool)

(declare-fun tp!1131635 () Bool)

(declare-fun tp!1131637 () Bool)

(assert (=> b!3721045 (= e!2303597 (and tp!1131635 tp!1131637))))

(declare-fun b!3721047 () Bool)

(declare-fun e!2303598 () Bool)

(declare-fun e!2303599 () Bool)

(assert (=> b!3721047 (= e!2303598 (not e!2303599))))

(declare-fun res!1512354 () Bool)

(assert (=> b!3721047 (=> res!1512354 e!2303599)))

(declare-datatypes ((C!21914 0))(
  ( (C!21915 (val!13005 Int)) )
))
(declare-datatypes ((Regex!10864 0))(
  ( (ElementMatch!10864 (c!643544 C!21914)) (Concat!17135 (regOne!22240 Regex!10864) (regTwo!22240 Regex!10864)) (EmptyExpr!10864) (Star!10864 (reg!11193 Regex!10864)) (EmptyLang!10864) (Union!10864 (regOne!22241 Regex!10864) (regTwo!22241 Regex!10864)) )
))
(declare-fun r!26968 () Regex!10864)

(declare-fun validRegex!4971 (Regex!10864) Bool)

(assert (=> b!3721047 (= res!1512354 (not (validRegex!4971 (regTwo!22241 r!26968))))))

(declare-fun c!13797 () C!21914)

(declare-fun cNot!42 () C!21914)

(declare-datatypes ((List!39745 0))(
  ( (Nil!39621) (Cons!39621 (h!45041 C!21914) (t!302428 List!39745)) )
))
(declare-fun contains!7957 (List!39745 C!21914) Bool)

(declare-fun usedCharacters!1127 (Regex!10864) List!39745)

(declare-fun derivativeStep!3325 (Regex!10864 C!21914) Regex!10864)

(assert (=> b!3721047 (not (contains!7957 (usedCharacters!1127 (derivativeStep!3325 (regOne!22241 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57518 0))(
  ( (Unit!57519) )
))
(declare-fun lt!1297954 () Unit!57518)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!15 (Regex!10864 C!21914 C!21914) Unit!57518)

(assert (=> b!3721047 (= lt!1297954 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!15 (regOne!22241 r!26968) c!13797 cNot!42))))

(declare-fun b!3721048 () Bool)

(declare-fun tp!1131639 () Bool)

(assert (=> b!3721048 (= e!2303597 tp!1131639)))

(declare-fun b!3721049 () Bool)

(declare-fun res!1512353 () Bool)

(assert (=> b!3721049 (=> (not res!1512353) (not e!2303598))))

(assert (=> b!3721049 (= res!1512353 (not (contains!7957 (usedCharacters!1127 r!26968) cNot!42)))))

(declare-fun b!3721050 () Bool)

(declare-fun tp!1131636 () Bool)

(declare-fun tp!1131638 () Bool)

(assert (=> b!3721050 (= e!2303597 (and tp!1131636 tp!1131638))))

(declare-fun b!3721051 () Bool)

(declare-fun res!1512356 () Bool)

(assert (=> b!3721051 (=> (not res!1512356) (not e!2303598))))

(assert (=> b!3721051 (= res!1512356 (and (not (is-EmptyExpr!10864 r!26968)) (not (is-EmptyLang!10864 r!26968)) (not (is-ElementMatch!10864 r!26968)) (is-Union!10864 r!26968)))))

(declare-fun b!3721052 () Bool)

(declare-fun tp_is_empty!18743 () Bool)

(assert (=> b!3721052 (= e!2303597 tp_is_empty!18743)))

(declare-fun res!1512355 () Bool)

(assert (=> start!350440 (=> (not res!1512355) (not e!2303598))))

(assert (=> start!350440 (= res!1512355 (validRegex!4971 r!26968))))

(assert (=> start!350440 e!2303598))

(assert (=> start!350440 e!2303597))

(assert (=> start!350440 tp_is_empty!18743))

(declare-fun b!3721046 () Bool)

(assert (=> b!3721046 (= e!2303599 true)))

(declare-fun lt!1297953 () Bool)

(assert (=> b!3721046 (= lt!1297953 (contains!7957 (usedCharacters!1127 (regTwo!22241 r!26968)) cNot!42))))

(assert (= (and start!350440 res!1512355) b!3721049))

(assert (= (and b!3721049 res!1512353) b!3721051))

(assert (= (and b!3721051 res!1512356) b!3721047))

(assert (= (and b!3721047 (not res!1512354)) b!3721046))

(assert (= (and start!350440 (is-ElementMatch!10864 r!26968)) b!3721052))

(assert (= (and start!350440 (is-Concat!17135 r!26968)) b!3721050))

(assert (= (and start!350440 (is-Star!10864 r!26968)) b!3721048))

(assert (= (and start!350440 (is-Union!10864 r!26968)) b!3721045))

(declare-fun m!4225401 () Bool)

(assert (=> b!3721047 m!4225401))

(declare-fun m!4225403 () Bool)

(assert (=> b!3721047 m!4225403))

(declare-fun m!4225405 () Bool)

(assert (=> b!3721047 m!4225405))

(assert (=> b!3721047 m!4225401))

(declare-fun m!4225407 () Bool)

(assert (=> b!3721047 m!4225407))

(assert (=> b!3721047 m!4225405))

(declare-fun m!4225409 () Bool)

(assert (=> b!3721047 m!4225409))

(declare-fun m!4225411 () Bool)

(assert (=> b!3721049 m!4225411))

(assert (=> b!3721049 m!4225411))

(declare-fun m!4225413 () Bool)

(assert (=> b!3721049 m!4225413))

(declare-fun m!4225415 () Bool)

(assert (=> start!350440 m!4225415))

(declare-fun m!4225417 () Bool)

(assert (=> b!3721046 m!4225417))

(assert (=> b!3721046 m!4225417))

(declare-fun m!4225419 () Bool)

(assert (=> b!3721046 m!4225419))

(push 1)

(assert (not b!3721050))

(assert (not start!350440))

(assert tp_is_empty!18743)

(assert (not b!3721046))

(assert (not b!3721049))

(assert (not b!3721045))

(assert (not b!3721048))

(assert (not b!3721047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

