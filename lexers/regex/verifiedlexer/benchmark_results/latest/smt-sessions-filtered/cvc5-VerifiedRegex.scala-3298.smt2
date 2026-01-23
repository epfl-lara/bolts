; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188874 () Bool)

(assert start!188874)

(assert (=> start!188874 false))

(declare-fun e!1203484 () Bool)

(assert (=> start!188874 e!1203484))

(declare-fun e!1203485 () Bool)

(assert (=> start!188874 e!1203485))

(declare-fun e!1203483 () Bool)

(assert (=> start!188874 e!1203483))

(declare-fun b!1886131 () Bool)

(declare-fun tp_is_empty!8927 () Bool)

(declare-fun tp!537806 () Bool)

(assert (=> b!1886131 (= e!1203484 (and tp_is_empty!8927 tp!537806))))

(declare-fun b!1886132 () Bool)

(declare-fun tp!537807 () Bool)

(assert (=> b!1886132 (= e!1203485 (and tp_is_empty!8927 tp!537807))))

(declare-fun b!1886133 () Bool)

(declare-fun tp!537805 () Bool)

(assert (=> b!1886133 (= e!1203483 (and tp_is_empty!8927 tp!537805))))

(declare-datatypes ((B!1671 0))(
  ( (B!1672 (val!6121 Int)) )
))
(declare-datatypes ((List!21114 0))(
  ( (Nil!21032) (Cons!21032 (h!26433 B!1671) (t!175113 List!21114)) )
))
(declare-fun l1!1329 () List!21114)

(assert (= (and start!188874 (is-Cons!21032 l1!1329)) b!1886131))

(declare-fun l2!1298 () List!21114)

(assert (= (and start!188874 (is-Cons!21032 l2!1298)) b!1886132))

(declare-fun l3!256 () List!21114)

(assert (= (and start!188874 (is-Cons!21032 l3!256)) b!1886133))

(push 1)

(assert (not b!1886131))

(assert (not b!1886132))

(assert (not b!1886133))

(assert tp_is_empty!8927)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

