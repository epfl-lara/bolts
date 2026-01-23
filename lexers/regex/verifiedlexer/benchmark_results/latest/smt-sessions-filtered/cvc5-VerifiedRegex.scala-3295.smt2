; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188862 () Bool)

(assert start!188862)

(assert (=> start!188862 false))

(declare-fun e!1203429 () Bool)

(assert (=> start!188862 e!1203429))

(declare-fun e!1203431 () Bool)

(assert (=> start!188862 e!1203431))

(declare-fun e!1203430 () Bool)

(assert (=> start!188862 e!1203430))

(declare-fun b!1886077 () Bool)

(declare-fun tp_is_empty!8915 () Bool)

(declare-fun tp!537752 () Bool)

(assert (=> b!1886077 (= e!1203429 (and tp_is_empty!8915 tp!537752))))

(declare-fun b!1886078 () Bool)

(declare-fun tp!537751 () Bool)

(assert (=> b!1886078 (= e!1203431 (and tp_is_empty!8915 tp!537751))))

(declare-fun b!1886079 () Bool)

(declare-fun tp!537753 () Bool)

(assert (=> b!1886079 (= e!1203430 (and tp_is_empty!8915 tp!537753))))

(declare-datatypes ((B!1659 0))(
  ( (B!1660 (val!6115 Int)) )
))
(declare-datatypes ((List!21108 0))(
  ( (Nil!21026) (Cons!21026 (h!26427 B!1659) (t!175107 List!21108)) )
))
(declare-fun l1!1329 () List!21108)

(assert (= (and start!188862 (is-Cons!21026 l1!1329)) b!1886077))

(declare-fun l2!1298 () List!21108)

(assert (= (and start!188862 (is-Cons!21026 l2!1298)) b!1886078))

(declare-fun l3!256 () List!21108)

(assert (= (and start!188862 (is-Cons!21026 l3!256)) b!1886079))

(push 1)

(assert (not b!1886078))

(assert (not b!1886079))

(assert (not b!1886077))

(assert tp_is_empty!8915)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

