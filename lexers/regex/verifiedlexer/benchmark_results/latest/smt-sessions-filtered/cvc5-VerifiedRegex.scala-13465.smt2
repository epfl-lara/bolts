; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727640 () Bool)

(assert start!727640)

(declare-fun b_free!134399 () Bool)

(declare-fun b_next!135189 () Bool)

(assert (=> start!727640 (= b_free!134399 (not b_next!135189))))

(declare-fun tp!2179962 () Bool)

(declare-fun b_and!352111 () Bool)

(assert (=> start!727640 (= tp!2179962 b_and!352111)))

(assert (=> start!727640 false))

(declare-fun e!4478315 () Bool)

(assert (=> start!727640 e!4478315))

(assert (=> start!727640 tp!2179962))

(declare-fun b!7510184 () Bool)

(declare-fun tp_is_empty!49827 () Bool)

(declare-fun tp!2179961 () Bool)

(assert (=> b!7510184 (= e!4478315 (and tp_is_empty!49827 tp!2179961))))

(declare-datatypes ((B!3935 0))(
  ( (B!3936 (val!30327 Int)) )
))
(declare-datatypes ((List!72621 0))(
  ( (Nil!72497) (Cons!72497 (h!78945 B!3935) (t!387258 List!72621)) )
))
(declare-fun l!2942 () List!72621)

(assert (= (and start!727640 (is-Cons!72497 l!2942)) b!7510184))

(push 1)

(assert (not b!7510184))

(assert tp_is_empty!49827)

(assert b_and!352111)

(assert (not b_next!135189))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352111)

(assert (not b_next!135189))

(check-sat)

(pop 1)

