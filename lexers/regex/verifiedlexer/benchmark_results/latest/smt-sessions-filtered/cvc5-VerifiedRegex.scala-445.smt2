; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13136 () Bool)

(assert start!13136)

(declare-datatypes ((B!635 0))(
  ( (B!636 (val!781 Int)) )
))
(declare-datatypes ((List!2112 0))(
  ( (Nil!2106) (Cons!2106 (h!7503 B!635) (t!22688 List!2112)) )
))
(declare-fun lt!38302 () List!2112)

(declare-fun p!1997 () List!2112)

(declare-fun s!1511 () List!2112)

(declare-fun ++!403 (List!2112 List!2112) List!2112)

(assert (=> start!13136 (= lt!38302 (++!403 p!1997 s!1511))))

(assert (=> start!13136 false))

(declare-fun e!73450 () Bool)

(assert (=> start!13136 e!73450))

(declare-fun e!73451 () Bool)

(assert (=> start!13136 e!73451))

(declare-fun b!127847 () Bool)

(declare-fun tp_is_empty!1243 () Bool)

(declare-fun tp!69735 () Bool)

(assert (=> b!127847 (= e!73450 (and tp_is_empty!1243 tp!69735))))

(declare-fun b!127848 () Bool)

(declare-fun tp!69734 () Bool)

(assert (=> b!127848 (= e!73451 (and tp_is_empty!1243 tp!69734))))

(assert (= (and start!13136 (is-Cons!2106 p!1997)) b!127847))

(assert (= (and start!13136 (is-Cons!2106 s!1511)) b!127848))

(declare-fun m!112651 () Bool)

(assert (=> start!13136 m!112651))

(push 1)

(assert (not start!13136))

(assert (not b!127847))

(assert (not b!127848))

(assert tp_is_empty!1243)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

