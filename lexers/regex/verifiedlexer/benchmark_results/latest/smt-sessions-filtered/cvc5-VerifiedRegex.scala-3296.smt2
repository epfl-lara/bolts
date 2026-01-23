; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188866 () Bool)

(assert start!188866)

(assert (=> start!188866 false))

(declare-fun e!1203447 () Bool)

(assert (=> start!188866 e!1203447))

(declare-fun e!1203449 () Bool)

(assert (=> start!188866 e!1203449))

(declare-fun e!1203448 () Bool)

(assert (=> start!188866 e!1203448))

(declare-fun b!1886095 () Bool)

(declare-fun tp_is_empty!8919 () Bool)

(declare-fun tp!537771 () Bool)

(assert (=> b!1886095 (= e!1203447 (and tp_is_empty!8919 tp!537771))))

(declare-fun b!1886096 () Bool)

(declare-fun tp!537769 () Bool)

(assert (=> b!1886096 (= e!1203449 (and tp_is_empty!8919 tp!537769))))

(declare-fun b!1886097 () Bool)

(declare-fun tp!537770 () Bool)

(assert (=> b!1886097 (= e!1203448 (and tp_is_empty!8919 tp!537770))))

(declare-datatypes ((B!1663 0))(
  ( (B!1664 (val!6117 Int)) )
))
(declare-datatypes ((List!21110 0))(
  ( (Nil!21028) (Cons!21028 (h!26429 B!1663) (t!175109 List!21110)) )
))
(declare-fun l1!1329 () List!21110)

(assert (= (and start!188866 (is-Cons!21028 l1!1329)) b!1886095))

(declare-fun l2!1298 () List!21110)

(assert (= (and start!188866 (is-Cons!21028 l2!1298)) b!1886096))

(declare-fun l3!256 () List!21110)

(assert (= (and start!188866 (is-Cons!21028 l3!256)) b!1886097))

(push 1)

(assert (not b!1886095))

(assert (not b!1886096))

(assert (not b!1886097))

(assert tp_is_empty!8919)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

