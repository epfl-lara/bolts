; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738878 () Bool)

(assert start!738878)

(declare-fun b!7749956 () Bool)

(declare-fun e!4594440 () Bool)

(declare-fun tp!2273678 () Bool)

(assert (=> b!7749956 (= e!4594440 tp!2273678)))

(declare-fun b!7749957 () Bool)

(declare-fun e!4594441 () Bool)

(assert (=> b!7749957 (= e!4594441 false)))

(declare-fun lt!2669315 () Bool)

(declare-datatypes ((C!41530 0))(
  ( (C!41531 (val!31205 Int)) )
))
(declare-datatypes ((Regex!20602 0))(
  ( (ElementMatch!20602 (c!1429383 C!41530)) (Concat!29447 (regOne!41716 Regex!20602) (regTwo!41716 Regex!20602)) (EmptyExpr!20602) (Star!20602 (reg!20931 Regex!20602)) (EmptyLang!20602) (Union!20602 (regOne!41717 Regex!20602) (regTwo!41717 Regex!20602)) )
))
(declare-fun r!25892 () Regex!20602)

(declare-datatypes ((List!73447 0))(
  ( (Nil!73323) (Cons!73323 (h!79771 C!41530) (t!388182 List!73447)) )
))
(declare-fun s1!4391 () List!73447)

(declare-fun matchR!10092 (Regex!20602 List!73447) Bool)

(assert (=> b!7749957 (= lt!2669315 (matchR!10092 r!25892 s1!4391))))

(declare-fun res!3090285 () Bool)

(assert (=> start!738878 (=> (not res!3090285) (not e!4594441))))

(declare-fun validRegex!11020 (Regex!20602) Bool)

(assert (=> start!738878 (= res!3090285 (validRegex!11020 (Star!20602 r!25892)))))

(assert (=> start!738878 e!4594441))

(assert (=> start!738878 e!4594440))

(declare-fun e!4594442 () Bool)

(assert (=> start!738878 e!4594442))

(declare-fun b!7749958 () Bool)

(declare-fun tp_is_empty!51559 () Bool)

(declare-fun tp!2273674 () Bool)

(assert (=> b!7749958 (= e!4594442 (and tp_is_empty!51559 tp!2273674))))

(declare-fun b!7749959 () Bool)

(declare-fun tp!2273677 () Bool)

(declare-fun tp!2273679 () Bool)

(assert (=> b!7749959 (= e!4594440 (and tp!2273677 tp!2273679))))

(declare-fun b!7749960 () Bool)

(declare-fun tp!2273676 () Bool)

(declare-fun tp!2273675 () Bool)

(assert (=> b!7749960 (= e!4594440 (and tp!2273676 tp!2273675))))

(declare-fun b!7749961 () Bool)

(assert (=> b!7749961 (= e!4594440 tp_is_empty!51559)))

(assert (= (and start!738878 res!3090285) b!7749957))

(assert (= (and start!738878 (is-ElementMatch!20602 r!25892)) b!7749961))

(assert (= (and start!738878 (is-Concat!29447 r!25892)) b!7749959))

(assert (= (and start!738878 (is-Star!20602 r!25892)) b!7749956))

(assert (= (and start!738878 (is-Union!20602 r!25892)) b!7749960))

(assert (= (and start!738878 (is-Cons!73323 s1!4391)) b!7749958))

(declare-fun m!8216322 () Bool)

(assert (=> b!7749957 m!8216322))

(declare-fun m!8216324 () Bool)

(assert (=> start!738878 m!8216324))

(push 1)

(assert (not b!7749957))

(assert (not b!7749958))

(assert (not start!738878))

(assert (not b!7749959))

(assert (not b!7749956))

(assert (not b!7749960))

(assert tp_is_empty!51559)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

