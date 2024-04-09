; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132838 () Bool)

(assert start!132838)

(assert (=> start!132838 false))

(declare-fun e!866367 () Bool)

(assert (=> start!132838 e!866367))

(declare-fun b!1555630 () Bool)

(declare-fun tp_is_empty!38317 () Bool)

(declare-fun tp!112327 () Bool)

(assert (=> b!1555630 (= e!866367 (and tp_is_empty!38317 tp!112327))))

(declare-datatypes ((B!2306 0))(
  ( (B!2307 (val!19239 Int)) )
))
(declare-datatypes ((tuple2!24994 0))(
  ( (tuple2!24995 (_1!12507 (_ BitVec 64)) (_2!12507 B!2306)) )
))
(declare-datatypes ((List!36419 0))(
  ( (Nil!36416) (Cons!36415 (h!37862 tuple2!24994) (t!51147 List!36419)) )
))
(declare-fun l!1177 () List!36419)

(assert (= (and start!132838 (is-Cons!36415 l!1177)) b!1555630))

(push 1)

(assert (not b!1555630))

(assert tp_is_empty!38317)

(check-sat)

(pop 1)

