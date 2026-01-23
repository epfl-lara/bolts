; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733198 () Bool)

(assert start!733198)

(declare-fun b!7606960 () Bool)

(declare-fun e!4524738 () Bool)

(declare-fun tp_is_empty!50743 () Bool)

(assert (=> b!7606960 (= e!4524738 tp_is_empty!50743)))

(declare-fun b!7606963 () Bool)

(declare-fun tp!2218664 () Bool)

(declare-fun tp!2218660 () Bool)

(assert (=> b!7606963 (= e!4524738 (and tp!2218664 tp!2218660))))

(assert (=> start!733198 false))

(assert (=> start!733198 e!4524738))

(declare-fun b!7606961 () Bool)

(declare-fun tp!2218663 () Bool)

(declare-fun tp!2218661 () Bool)

(assert (=> b!7606961 (= e!4524738 (and tp!2218663 tp!2218661))))

(declare-fun b!7606962 () Bool)

(declare-fun tp!2218662 () Bool)

(assert (=> b!7606962 (= e!4524738 tp!2218662)))

(declare-datatypes ((C!40714 0))(
  ( (C!40715 (val!30797 Int)) )
))
(declare-datatypes ((Regex!20194 0))(
  ( (ElementMatch!20194 (c!1402851 C!40714)) (Concat!29039 (regOne!40900 Regex!20194) (regTwo!40900 Regex!20194)) (EmptyExpr!20194) (Star!20194 (reg!20523 Regex!20194)) (EmptyLang!20194) (Union!20194 (regOne!40901 Regex!20194) (regTwo!40901 Regex!20194)) )
))
(declare-fun r!19218 () Regex!20194)

(assert (= (and start!733198 (is-ElementMatch!20194 r!19218)) b!7606960))

(assert (= (and start!733198 (is-Concat!29039 r!19218)) b!7606961))

(assert (= (and start!733198 (is-Star!20194 r!19218)) b!7606962))

(assert (= (and start!733198 (is-Union!20194 r!19218)) b!7606963))

(push 1)

(assert (not b!7606961))

(assert (not b!7606963))

(assert (not b!7606962))

(assert tp_is_empty!50743)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

