; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7178 () Bool)

(assert start!7178)

(assert (=> start!7178 false))

(declare-fun e!29297 () Bool)

(assert (=> start!7178 e!29297))

(declare-fun b!46012 () Bool)

(declare-fun tp_is_empty!1949 () Bool)

(declare-fun tp!6035 () Bool)

(assert (=> b!46012 (= e!29297 (and tp_is_empty!1949 tp!6035))))

(declare-datatypes ((B!852 0))(
  ( (B!853 (val!1013 Int)) )
))
(declare-datatypes ((tuple2!1678 0))(
  ( (tuple2!1679 (_1!849 (_ BitVec 64)) (_2!849 B!852)) )
))
(declare-datatypes ((List!1247 0))(
  ( (Nil!1244) (Cons!1243 (h!1823 tuple2!1678) (t!4280 List!1247)) )
))
(declare-fun l!812 () List!1247)

(assert (= (and start!7178 (is-Cons!1243 l!812)) b!46012))

(push 1)

(assert (not b!46012))

(assert tp_is_empty!1949)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

