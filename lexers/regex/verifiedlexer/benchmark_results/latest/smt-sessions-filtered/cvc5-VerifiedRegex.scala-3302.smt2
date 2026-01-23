; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188898 () Bool)

(assert start!188898)

(assert (=> start!188898 false))

(declare-fun e!1203615 () Bool)

(assert (=> start!188898 e!1203615))

(declare-fun e!1203613 () Bool)

(assert (=> start!188898 e!1203613))

(declare-fun e!1203614 () Bool)

(assert (=> start!188898 e!1203614))

(declare-fun b!1886281 () Bool)

(declare-fun tp_is_empty!8943 () Bool)

(declare-fun tp!537888 () Bool)

(assert (=> b!1886281 (= e!1203615 (and tp_is_empty!8943 tp!537888))))

(declare-fun b!1886282 () Bool)

(declare-fun tp!537887 () Bool)

(assert (=> b!1886282 (= e!1203613 (and tp_is_empty!8943 tp!537887))))

(declare-fun b!1886283 () Bool)

(declare-fun tp!537889 () Bool)

(assert (=> b!1886283 (= e!1203614 (and tp_is_empty!8943 tp!537889))))

(declare-datatypes ((B!1687 0))(
  ( (B!1688 (val!6129 Int)) )
))
(declare-datatypes ((List!21122 0))(
  ( (Nil!21040) (Cons!21040 (h!26441 B!1687) (t!175121 List!21122)) )
))
(declare-fun l1!1329 () List!21122)

(assert (= (and start!188898 (is-Cons!21040 l1!1329)) b!1886281))

(declare-fun l2!1298 () List!21122)

(assert (= (and start!188898 (is-Cons!21040 l2!1298)) b!1886282))

(declare-fun l3!256 () List!21122)

(assert (= (and start!188898 (is-Cons!21040 l3!256)) b!1886283))

(push 1)

(assert (not b!1886281))

(assert (not b!1886283))

(assert (not b!1886282))

(assert tp_is_empty!8943)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

