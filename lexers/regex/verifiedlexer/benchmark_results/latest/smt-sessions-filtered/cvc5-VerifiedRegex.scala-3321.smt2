; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189090 () Bool)

(assert start!189090)

(assert (=> start!189090 false))

(declare-fun e!1205270 () Bool)

(assert (=> start!189090 e!1205270))

(declare-fun e!1205269 () Bool)

(assert (=> start!189090 e!1205269))

(declare-fun e!1205271 () Bool)

(assert (=> start!189090 e!1205271))

(declare-fun b!1888585 () Bool)

(declare-fun tp_is_empty!9019 () Bool)

(declare-fun tp!538400 () Bool)

(assert (=> b!1888585 (= e!1205270 (and tp_is_empty!9019 tp!538400))))

(declare-fun b!1888586 () Bool)

(declare-fun tp!538399 () Bool)

(assert (=> b!1888586 (= e!1205269 (and tp_is_empty!9019 tp!538399))))

(declare-fun b!1888587 () Bool)

(declare-fun tp!538401 () Bool)

(assert (=> b!1888587 (= e!1205271 (and tp_is_empty!9019 tp!538401))))

(declare-datatypes ((B!1763 0))(
  ( (B!1764 (val!6167 Int)) )
))
(declare-datatypes ((List!21160 0))(
  ( (Nil!21078) (Cons!21078 (h!26479 B!1763) (t!175159 List!21160)) )
))
(declare-fun l1!1329 () List!21160)

(assert (= (and start!189090 (is-Cons!21078 l1!1329)) b!1888585))

(declare-fun l2!1298 () List!21160)

(assert (= (and start!189090 (is-Cons!21078 l2!1298)) b!1888586))

(declare-fun l3!256 () List!21160)

(assert (= (and start!189090 (is-Cons!21078 l3!256)) b!1888587))

(push 1)

(assert (not b!1888586))

(assert (not b!1888587))

(assert (not b!1888585))

(assert tp_is_empty!9019)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

