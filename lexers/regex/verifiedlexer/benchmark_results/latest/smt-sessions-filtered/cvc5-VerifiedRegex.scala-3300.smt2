; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188882 () Bool)

(assert start!188882)

(assert (=> start!188882 false))

(declare-fun e!1203519 () Bool)

(assert (=> start!188882 e!1203519))

(declare-fun e!1203521 () Bool)

(assert (=> start!188882 e!1203521))

(declare-fun e!1203520 () Bool)

(assert (=> start!188882 e!1203520))

(declare-fun b!1886167 () Bool)

(declare-fun tp_is_empty!8935 () Bool)

(declare-fun tp!537841 () Bool)

(assert (=> b!1886167 (= e!1203519 (and tp_is_empty!8935 tp!537841))))

(declare-fun b!1886168 () Bool)

(declare-fun tp!537843 () Bool)

(assert (=> b!1886168 (= e!1203521 (and tp_is_empty!8935 tp!537843))))

(declare-fun b!1886169 () Bool)

(declare-fun tp!537842 () Bool)

(assert (=> b!1886169 (= e!1203520 (and tp_is_empty!8935 tp!537842))))

(declare-datatypes ((B!1679 0))(
  ( (B!1680 (val!6125 Int)) )
))
(declare-datatypes ((List!21118 0))(
  ( (Nil!21036) (Cons!21036 (h!26437 B!1679) (t!175117 List!21118)) )
))
(declare-fun l1!1329 () List!21118)

(assert (= (and start!188882 (is-Cons!21036 l1!1329)) b!1886167))

(declare-fun l2!1298 () List!21118)

(assert (= (and start!188882 (is-Cons!21036 l2!1298)) b!1886168))

(declare-fun l3!256 () List!21118)

(assert (= (and start!188882 (is-Cons!21036 l3!256)) b!1886169))

(push 1)

(assert (not b!1886169))

(assert (not b!1886168))

(assert (not b!1886167))

(assert tp_is_empty!8935)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

