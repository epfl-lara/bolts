; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188878 () Bool)

(assert start!188878)

(assert (=> start!188878 false))

(declare-fun e!1203501 () Bool)

(assert (=> start!188878 e!1203501))

(declare-fun e!1203502 () Bool)

(assert (=> start!188878 e!1203502))

(declare-fun e!1203503 () Bool)

(assert (=> start!188878 e!1203503))

(declare-fun b!1886149 () Bool)

(declare-fun tp_is_empty!8931 () Bool)

(declare-fun tp!537825 () Bool)

(assert (=> b!1886149 (= e!1203501 (and tp_is_empty!8931 tp!537825))))

(declare-fun b!1886150 () Bool)

(declare-fun tp!537823 () Bool)

(assert (=> b!1886150 (= e!1203502 (and tp_is_empty!8931 tp!537823))))

(declare-fun b!1886151 () Bool)

(declare-fun tp!537824 () Bool)

(assert (=> b!1886151 (= e!1203503 (and tp_is_empty!8931 tp!537824))))

(declare-datatypes ((B!1675 0))(
  ( (B!1676 (val!6123 Int)) )
))
(declare-datatypes ((List!21116 0))(
  ( (Nil!21034) (Cons!21034 (h!26435 B!1675) (t!175115 List!21116)) )
))
(declare-fun l1!1329 () List!21116)

(assert (= (and start!188878 (is-Cons!21034 l1!1329)) b!1886149))

(declare-fun l2!1298 () List!21116)

(assert (= (and start!188878 (is-Cons!21034 l2!1298)) b!1886150))

(declare-fun l3!256 () List!21116)

(assert (= (and start!188878 (is-Cons!21034 l3!256)) b!1886151))

(push 1)

(assert (not b!1886149))

(assert (not b!1886151))

(assert (not b!1886150))

(assert tp_is_empty!8931)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

