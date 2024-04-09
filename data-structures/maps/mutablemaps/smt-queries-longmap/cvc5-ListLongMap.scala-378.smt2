; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7174 () Bool)

(assert start!7174)

(assert (=> start!7174 false))

(declare-fun e!29291 () Bool)

(assert (=> start!7174 e!29291))

(declare-fun b!46006 () Bool)

(declare-fun tp_is_empty!1945 () Bool)

(declare-fun tp!6029 () Bool)

(assert (=> b!46006 (= e!29291 (and tp_is_empty!1945 tp!6029))))

(declare-datatypes ((B!848 0))(
  ( (B!849 (val!1011 Int)) )
))
(declare-datatypes ((tuple2!1674 0))(
  ( (tuple2!1675 (_1!847 (_ BitVec 64)) (_2!847 B!848)) )
))
(declare-datatypes ((List!1245 0))(
  ( (Nil!1242) (Cons!1241 (h!1821 tuple2!1674) (t!4278 List!1245)) )
))
(declare-fun l!812 () List!1245)

(assert (= (and start!7174 (is-Cons!1241 l!812)) b!46006))

(push 1)

(assert (not b!46006))

(assert tp_is_empty!1945)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

