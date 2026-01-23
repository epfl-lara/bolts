; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188858 () Bool)

(assert start!188858)

(assert (=> start!188858 false))

(declare-fun e!1203411 () Bool)

(assert (=> start!188858 e!1203411))

(declare-fun e!1203413 () Bool)

(assert (=> start!188858 e!1203413))

(declare-fun e!1203412 () Bool)

(assert (=> start!188858 e!1203412))

(declare-fun b!1886059 () Bool)

(declare-fun tp_is_empty!8911 () Bool)

(declare-fun tp!537733 () Bool)

(assert (=> b!1886059 (= e!1203411 (and tp_is_empty!8911 tp!537733))))

(declare-fun b!1886060 () Bool)

(declare-fun tp!537734 () Bool)

(assert (=> b!1886060 (= e!1203413 (and tp_is_empty!8911 tp!537734))))

(declare-fun b!1886061 () Bool)

(declare-fun tp!537735 () Bool)

(assert (=> b!1886061 (= e!1203412 (and tp_is_empty!8911 tp!537735))))

(declare-datatypes ((B!1655 0))(
  ( (B!1656 (val!6113 Int)) )
))
(declare-datatypes ((List!21106 0))(
  ( (Nil!21024) (Cons!21024 (h!26425 B!1655) (t!175105 List!21106)) )
))
(declare-fun l1!1329 () List!21106)

(assert (= (and start!188858 (is-Cons!21024 l1!1329)) b!1886059))

(declare-fun l2!1298 () List!21106)

(assert (= (and start!188858 (is-Cons!21024 l2!1298)) b!1886060))

(declare-fun l3!256 () List!21106)

(assert (= (and start!188858 (is-Cons!21024 l3!256)) b!1886061))

(push 1)

(assert (not b!1886059))

(assert (not b!1886060))

(assert (not b!1886061))

(assert tp_is_empty!8911)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

