; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132716 () Bool)

(assert start!132716)

(assert (=> start!132716 false))

(declare-fun e!865746 () Bool)

(assert (=> start!132716 e!865746))

(assert (=> start!132716 true))

(declare-fun b!1554661 () Bool)

(declare-fun tp_is_empty!38267 () Bool)

(declare-fun tp!112225 () Bool)

(assert (=> b!1554661 (= e!865746 (and tp_is_empty!38267 tp!112225))))

(declare-datatypes ((B!2256 0))(
  ( (B!2257 (val!19214 Int)) )
))
(declare-datatypes ((tuple2!24944 0))(
  ( (tuple2!24945 (_1!12482 (_ BitVec 64)) (_2!12482 B!2256)) )
))
(declare-datatypes ((List!36394 0))(
  ( (Nil!36391) (Cons!36390 (h!37837 tuple2!24944) (t!51122 List!36394)) )
))
(declare-fun l!1177 () List!36394)

(assert (= (and start!132716 (is-Cons!36390 l!1177)) b!1554661))

(push 1)

(assert (not b!1554661))

(assert tp_is_empty!38267)

(check-sat)

(pop 1)

(push 1)

