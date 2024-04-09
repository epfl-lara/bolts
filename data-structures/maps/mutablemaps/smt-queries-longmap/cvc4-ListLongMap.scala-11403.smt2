; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132818 () Bool)

(assert start!132818)

(assert (=> start!132818 false))

(declare-fun e!866268 () Bool)

(assert (=> start!132818 e!866268))

(declare-fun b!1555471 () Bool)

(declare-fun tp_is_empty!38309 () Bool)

(declare-fun tp!112306 () Bool)

(assert (=> b!1555471 (= e!866268 (and tp_is_empty!38309 tp!112306))))

(declare-datatypes ((B!2298 0))(
  ( (B!2299 (val!19235 Int)) )
))
(declare-datatypes ((tuple2!24986 0))(
  ( (tuple2!24987 (_1!12503 (_ BitVec 64)) (_2!12503 B!2298)) )
))
(declare-datatypes ((List!36415 0))(
  ( (Nil!36412) (Cons!36411 (h!37858 tuple2!24986) (t!51143 List!36415)) )
))
(declare-fun l!1177 () List!36415)

(assert (= (and start!132818 (is-Cons!36411 l!1177)) b!1555471))

(push 1)

(assert (not b!1555471))

(assert tp_is_empty!38309)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

