; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132842 () Bool)

(assert start!132842)

(assert (=> start!132842 false))

(declare-fun e!866373 () Bool)

(assert (=> start!132842 e!866373))

(declare-fun b!1555636 () Bool)

(declare-fun tp_is_empty!38321 () Bool)

(declare-fun tp!112333 () Bool)

(assert (=> b!1555636 (= e!866373 (and tp_is_empty!38321 tp!112333))))

(declare-datatypes ((B!2310 0))(
  ( (B!2311 (val!19241 Int)) )
))
(declare-datatypes ((tuple2!24998 0))(
  ( (tuple2!24999 (_1!12509 (_ BitVec 64)) (_2!12509 B!2310)) )
))
(declare-datatypes ((List!36421 0))(
  ( (Nil!36418) (Cons!36417 (h!37864 tuple2!24998) (t!51149 List!36421)) )
))
(declare-fun l!1177 () List!36421)

(assert (= (and start!132842 (is-Cons!36417 l!1177)) b!1555636))

(push 1)

(assert (not b!1555636))

(assert tp_is_empty!38321)

(check-sat)

(pop 1)

(push 1)

(check-sat)

