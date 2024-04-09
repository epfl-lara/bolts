; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134420 () Bool)

(assert start!134420)

(assert (=> start!134420 false))

(assert (=> start!134420 true))

(declare-fun e!874764 () Bool)

(assert (=> start!134420 e!874764))

(declare-fun b!1569155 () Bool)

(declare-fun tp_is_empty!39053 () Bool)

(declare-fun tp!114100 () Bool)

(assert (=> b!1569155 (= e!874764 (and tp_is_empty!39053 tp!114100))))

(declare-datatypes ((B!2502 0))(
  ( (B!2503 (val!19613 Int)) )
))
(declare-datatypes ((tuple2!25492 0))(
  ( (tuple2!25493 (_1!12756 (_ BitVec 64)) (_2!12756 B!2502)) )
))
(declare-datatypes ((List!36894 0))(
  ( (Nil!36891) (Cons!36890 (h!38338 tuple2!25492) (t!51809 List!36894)) )
))
(declare-fun l!750 () List!36894)

(assert (= (and start!134420 (is-Cons!36890 l!750)) b!1569155))

(push 1)

(assert (not b!1569155))

(assert tp_is_empty!39053)

(check-sat)

(pop 1)

(push 1)

(check-sat)

