; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728054 () Bool)

(assert start!728054)

(assert (=> start!728054 false))

(declare-datatypes ((C!39870 0))(
  ( (C!39871 (val!30375 Int)) )
))
(declare-datatypes ((Regex!19772 0))(
  ( (ElementMatch!19772 (c!1389569 C!39870)) (Concat!28617 (regOne!40056 Regex!19772) (regTwo!40056 Regex!19772)) (EmptyExpr!19772) (Star!19772 (reg!20101 Regex!19772)) (EmptyLang!19772) (Union!19772 (regOne!40057 Regex!19772) (regTwo!40057 Regex!19772)) )
))
(declare-datatypes ((List!72683 0))(
  ( (Nil!72559) (Cons!72559 (h!79007 Regex!19772) (t!387384 List!72683)) )
))
(declare-datatypes ((Context!17048 0))(
  ( (Context!17049 (exprs!9024 List!72683)) )
))
(declare-fun context!41 () Context!17048)

(declare-fun e!4483478 () Bool)

(declare-fun inv!92724 (Context!17048) Bool)

(assert (=> start!728054 (and (inv!92724 context!41) e!4483478)))

(declare-fun b!7520982 () Bool)

(declare-fun tp!2184506 () Bool)

(assert (=> b!7520982 (= e!4483478 tp!2184506)))

(assert (= start!728054 b!7520982))

(declare-fun m!8100274 () Bool)

(assert (=> start!728054 m!8100274))

(push 1)

(assert (not start!728054))

(assert (not b!7520982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

