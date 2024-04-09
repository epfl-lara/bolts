; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7112 () Bool)

(assert start!7112)

(assert (=> start!7112 false))

(declare-fun e!29012 () Bool)

(assert (=> start!7112 e!29012))

(declare-fun b!45559 () Bool)

(declare-fun tp_is_empty!1919 () Bool)

(declare-fun tp!5972 () Bool)

(assert (=> b!45559 (= e!29012 (and tp_is_empty!1919 tp!5972))))

(declare-datatypes ((B!822 0))(
  ( (B!823 (val!998 Int)) )
))
(declare-datatypes ((tuple2!1648 0))(
  ( (tuple2!1649 (_1!834 (_ BitVec 64)) (_2!834 B!822)) )
))
(declare-datatypes ((List!1232 0))(
  ( (Nil!1229) (Cons!1228 (h!1808 tuple2!1648) (t!4265 List!1232)) )
))
(declare-fun l!812 () List!1232)

(assert (= (and start!7112 (is-Cons!1228 l!812)) b!45559))

(push 1)

(assert (not b!45559))

(assert tp_is_empty!1919)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

