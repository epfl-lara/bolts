; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137098 () Bool)

(assert start!137098)

(assert (=> start!137098 false))

(declare-fun e!881295 () Bool)

(assert (=> start!137098 e!881295))

(declare-fun b!1579760 () Bool)

(declare-fun tp_is_empty!39151 () Bool)

(declare-fun tp!114379 () Bool)

(assert (=> b!1579760 (= e!881295 (and tp_is_empty!39151 tp!114379))))

(declare-datatypes ((B!2606 0))(
  ( (B!2607 (val!19665 Int)) )
))
(declare-datatypes ((tuple2!25596 0))(
  ( (tuple2!25597 (_1!12808 (_ BitVec 64)) (_2!12808 B!2606)) )
))
(declare-datatypes ((List!36946 0))(
  ( (Nil!36943) (Cons!36942 (h!38486 tuple2!25596) (t!51867 List!36946)) )
))
(declare-fun l!1390 () List!36946)

(assert (= (and start!137098 (is-Cons!36942 l!1390)) b!1579760))

(push 1)

(assert (not b!1579760))

(assert tp_is_empty!39151)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

