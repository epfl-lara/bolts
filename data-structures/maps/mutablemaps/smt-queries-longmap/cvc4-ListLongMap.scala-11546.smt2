; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134444 () Bool)

(assert start!134444)

(assert (=> start!134444 false))

(assert (=> start!134444 true))

(declare-fun e!874869 () Bool)

(assert (=> start!134444 e!874869))

(declare-fun b!1569329 () Bool)

(declare-fun tp_is_empty!39065 () Bool)

(declare-fun tp!114127 () Bool)

(assert (=> b!1569329 (= e!874869 (and tp_is_empty!39065 tp!114127))))

(declare-datatypes ((B!2514 0))(
  ( (B!2515 (val!19619 Int)) )
))
(declare-datatypes ((tuple2!25504 0))(
  ( (tuple2!25505 (_1!12762 (_ BitVec 64)) (_2!12762 B!2514)) )
))
(declare-datatypes ((List!36900 0))(
  ( (Nil!36897) (Cons!36896 (h!38344 tuple2!25504) (t!51815 List!36900)) )
))
(declare-fun l!750 () List!36900)

(assert (= (and start!134444 (is-Cons!36896 l!750)) b!1569329))

(push 1)

(assert (not b!1569329))

(assert tp_is_empty!39065)

(check-sat)

