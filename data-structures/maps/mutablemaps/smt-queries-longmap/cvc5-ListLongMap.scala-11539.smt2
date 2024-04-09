; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134350 () Bool)

(assert start!134350)

(assert (=> start!134350 false))

(assert (=> start!134350 true))

(declare-fun e!874389 () Bool)

(assert (=> start!134350 e!874389))

(declare-fun b!1568450 () Bool)

(declare-fun tp_is_empty!39019 () Bool)

(declare-fun tp!114031 () Bool)

(assert (=> b!1568450 (= e!874389 (and tp_is_empty!39019 tp!114031))))

(declare-datatypes ((B!2468 0))(
  ( (B!2469 (val!19596 Int)) )
))
(declare-datatypes ((tuple2!25458 0))(
  ( (tuple2!25459 (_1!12739 (_ BitVec 64)) (_2!12739 B!2468)) )
))
(declare-datatypes ((List!36877 0))(
  ( (Nil!36874) (Cons!36873 (h!38321 tuple2!25458) (t!51792 List!36877)) )
))
(declare-fun l!750 () List!36877)

(assert (= (and start!134350 (is-Cons!36873 l!750)) b!1568450))

(push 1)

(assert (not b!1568450))

(assert tp_is_empty!39019)

(check-sat)

(pop 1)

