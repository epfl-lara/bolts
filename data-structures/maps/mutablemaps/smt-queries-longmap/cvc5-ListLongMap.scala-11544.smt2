; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134416 () Bool)

(assert start!134416)

(assert (=> start!134416 false))

(assert (=> start!134416 true))

(declare-fun e!874758 () Bool)

(assert (=> start!134416 e!874758))

(declare-fun b!1569149 () Bool)

(declare-fun tp_is_empty!39049 () Bool)

(declare-fun tp!114094 () Bool)

(assert (=> b!1569149 (= e!874758 (and tp_is_empty!39049 tp!114094))))

(declare-datatypes ((B!2498 0))(
  ( (B!2499 (val!19611 Int)) )
))
(declare-datatypes ((tuple2!25488 0))(
  ( (tuple2!25489 (_1!12754 (_ BitVec 64)) (_2!12754 B!2498)) )
))
(declare-datatypes ((List!36892 0))(
  ( (Nil!36889) (Cons!36888 (h!38336 tuple2!25488) (t!51807 List!36892)) )
))
(declare-fun l!750 () List!36892)

(assert (= (and start!134416 (is-Cons!36888 l!750)) b!1569149))

(push 1)

(assert (not b!1569149))

(assert tp_is_empty!39049)

(check-sat)

(pop 1)

