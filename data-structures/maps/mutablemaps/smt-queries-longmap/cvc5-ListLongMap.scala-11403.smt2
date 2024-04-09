; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132814 () Bool)

(assert start!132814)

(assert (=> start!132814 false))

(declare-fun e!866262 () Bool)

(assert (=> start!132814 e!866262))

(declare-fun b!1555465 () Bool)

(declare-fun tp_is_empty!38305 () Bool)

(declare-fun tp!112300 () Bool)

(assert (=> b!1555465 (= e!866262 (and tp_is_empty!38305 tp!112300))))

(declare-datatypes ((B!2294 0))(
  ( (B!2295 (val!19233 Int)) )
))
(declare-datatypes ((tuple2!24982 0))(
  ( (tuple2!24983 (_1!12501 (_ BitVec 64)) (_2!12501 B!2294)) )
))
(declare-datatypes ((List!36413 0))(
  ( (Nil!36410) (Cons!36409 (h!37856 tuple2!24982) (t!51141 List!36413)) )
))
(declare-fun l!1177 () List!36413)

(assert (= (and start!132814 (is-Cons!36409 l!1177)) b!1555465))

(push 1)

(assert (not b!1555465))

(assert tp_is_empty!38305)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

