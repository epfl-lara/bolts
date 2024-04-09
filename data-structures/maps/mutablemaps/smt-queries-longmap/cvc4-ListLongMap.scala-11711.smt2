; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137102 () Bool)

(assert start!137102)

(assert (=> start!137102 false))

(declare-fun e!881301 () Bool)

(assert (=> start!137102 e!881301))

(declare-fun b!1579766 () Bool)

(declare-fun tp_is_empty!39155 () Bool)

(declare-fun tp!114385 () Bool)

(assert (=> b!1579766 (= e!881301 (and tp_is_empty!39155 tp!114385))))

(declare-datatypes ((B!2610 0))(
  ( (B!2611 (val!19667 Int)) )
))
(declare-datatypes ((tuple2!25600 0))(
  ( (tuple2!25601 (_1!12810 (_ BitVec 64)) (_2!12810 B!2610)) )
))
(declare-datatypes ((List!36948 0))(
  ( (Nil!36945) (Cons!36944 (h!38488 tuple2!25600) (t!51869 List!36948)) )
))
(declare-fun l!1390 () List!36948)

(assert (= (and start!137102 (is-Cons!36944 l!1390)) b!1579766))

(push 1)

(assert (not b!1579766))

(assert tp_is_empty!39155)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

