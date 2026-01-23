; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727878 () Bool)

(assert start!727878)

(declare-fun b_free!134411 () Bool)

(declare-fun b_next!135201 () Bool)

(assert (=> start!727878 (= b_free!134411 (not b_next!135201))))

(declare-fun tp!2184170 () Bool)

(declare-fun b_and!352151 () Bool)

(assert (=> start!727878 (= tp!2184170 b_and!352151)))

(assert (=> start!727878 false))

(declare-fun e!4482732 () Bool)

(assert (=> start!727878 e!4482732))

(assert (=> start!727878 tp!2184170))

(declare-fun b!7519902 () Bool)

(declare-fun tp_is_empty!49857 () Bool)

(declare-fun tp!2184169 () Bool)

(assert (=> b!7519902 (= e!4482732 (and tp_is_empty!49857 tp!2184169))))

(declare-datatypes ((B!3947 0))(
  ( (B!3948 (val!30349 Int)) )
))
(declare-datatypes ((List!72657 0))(
  ( (Nil!72533) (Cons!72533 (h!78981 B!3947) (t!387310 List!72657)) )
))
(declare-fun l!3837 () List!72657)

(assert (= (and start!727878 (is-Cons!72533 l!3837)) b!7519902))

(push 1)

(assert (not b!7519902))

(assert tp_is_empty!49857)

(assert b_and!352151)

(assert (not b_next!135201))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352151)

(assert (not b_next!135201))

(check-sat)

(pop 1)

