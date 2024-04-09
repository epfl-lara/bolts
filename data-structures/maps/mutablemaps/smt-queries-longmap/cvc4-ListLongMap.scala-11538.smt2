; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134348 () Bool)

(assert start!134348)

(assert (=> start!134348 false))

(assert (=> start!134348 true))

(declare-fun e!874386 () Bool)

(assert (=> start!134348 e!874386))

(declare-fun b!1568447 () Bool)

(declare-fun tp_is_empty!39017 () Bool)

(declare-fun tp!114028 () Bool)

(assert (=> b!1568447 (= e!874386 (and tp_is_empty!39017 tp!114028))))

(declare-datatypes ((B!2466 0))(
  ( (B!2467 (val!19595 Int)) )
))
(declare-datatypes ((tuple2!25456 0))(
  ( (tuple2!25457 (_1!12738 (_ BitVec 64)) (_2!12738 B!2466)) )
))
(declare-datatypes ((List!36876 0))(
  ( (Nil!36873) (Cons!36872 (h!38320 tuple2!25456) (t!51791 List!36876)) )
))
(declare-fun l!750 () List!36876)

(assert (= (and start!134348 (is-Cons!36872 l!750)) b!1568447))

(push 1)

(assert (not b!1568447))

(assert tp_is_empty!39017)

(check-sat)

(pop 1)

