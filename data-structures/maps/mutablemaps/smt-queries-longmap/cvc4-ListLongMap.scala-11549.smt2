; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134486 () Bool)

(assert start!134486)

(assert (=> start!134486 false))

(assert (=> start!134486 true))

(declare-fun e!875028 () Bool)

(assert (=> start!134486 e!875028))

(declare-fun b!1569581 () Bool)

(declare-fun tp_is_empty!39083 () Bool)

(declare-fun tp!114172 () Bool)

(assert (=> b!1569581 (= e!875028 (and tp_is_empty!39083 tp!114172))))

(declare-datatypes ((B!2532 0))(
  ( (B!2533 (val!19628 Int)) )
))
(declare-datatypes ((tuple2!25522 0))(
  ( (tuple2!25523 (_1!12771 (_ BitVec 64)) (_2!12771 B!2532)) )
))
(declare-datatypes ((List!36909 0))(
  ( (Nil!36906) (Cons!36905 (h!38353 tuple2!25522) (t!51824 List!36909)) )
))
(declare-fun l!750 () List!36909)

(assert (= (and start!134486 (is-Cons!36905 l!750)) b!1569581))

(push 1)

(assert (not b!1569581))

(assert tp_is_empty!39083)

(check-sat)

(pop 1)

