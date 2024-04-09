; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134482 () Bool)

(assert start!134482)

(assert (=> start!134482 false))

(assert (=> start!134482 true))

(declare-fun e!875022 () Bool)

(assert (=> start!134482 e!875022))

(declare-fun b!1569575 () Bool)

(declare-fun tp_is_empty!39079 () Bool)

(declare-fun tp!114166 () Bool)

(assert (=> b!1569575 (= e!875022 (and tp_is_empty!39079 tp!114166))))

(declare-datatypes ((B!2528 0))(
  ( (B!2529 (val!19626 Int)) )
))
(declare-datatypes ((tuple2!25518 0))(
  ( (tuple2!25519 (_1!12769 (_ BitVec 64)) (_2!12769 B!2528)) )
))
(declare-datatypes ((List!36907 0))(
  ( (Nil!36904) (Cons!36903 (h!38351 tuple2!25518) (t!51822 List!36907)) )
))
(declare-fun l!750 () List!36907)

(assert (= (and start!134482 (is-Cons!36903 l!750)) b!1569575))

(push 1)

(assert (not b!1569575))

(assert tp_is_empty!39079)

(check-sat)

(pop 1)

