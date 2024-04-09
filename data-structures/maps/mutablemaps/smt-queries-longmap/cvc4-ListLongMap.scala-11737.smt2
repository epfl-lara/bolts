; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137708 () Bool)

(assert start!137708)

(assert (=> start!137708 false))

(declare-fun e!883119 () Bool)

(assert (=> start!137708 e!883119))

(assert (=> start!137708 true))

(declare-fun b!1582343 () Bool)

(declare-fun tp_is_empty!39311 () Bool)

(declare-fun tp!114748 () Bool)

(assert (=> b!1582343 (= e!883119 (and tp_is_empty!39311 tp!114748))))

(declare-datatypes ((B!2766 0))(
  ( (B!2767 (val!19745 Int)) )
))
(declare-datatypes ((tuple2!25822 0))(
  ( (tuple2!25823 (_1!12921 (_ BitVec 64)) (_2!12921 B!2766)) )
))
(declare-datatypes ((List!37026 0))(
  ( (Nil!37023) (Cons!37022 (h!38566 tuple2!25822) (t!51947 List!37026)) )
))
(declare-fun l!1356 () List!37026)

(assert (= (and start!137708 (is-Cons!37022 l!1356)) b!1582343))

(push 1)

(assert (not b!1582343))

(assert tp_is_empty!39311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

