; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1696 () Bool)

(assert start!1696)

(assert (=> start!1696 false))

(declare-fun e!7139 () Bool)

(assert (=> start!1696 e!7139))

(assert (=> start!1696 true))

(declare-fun tp_is_empty!605 () Bool)

(assert (=> start!1696 tp_is_empty!605))

(declare-fun b!11978 () Bool)

(declare-fun tp!2021 () Bool)

(assert (=> b!11978 (= e!7139 (and tp_is_empty!605 tp!2021))))

(declare-datatypes ((B!432 0))(
  ( (B!433 (val!311 Int)) )
))
(declare-datatypes ((tuple2!404 0))(
  ( (tuple2!405 (_1!202 (_ BitVec 64)) (_2!202 B!432)) )
))
(declare-datatypes ((List!358 0))(
  ( (Nil!355) (Cons!354 (h!920 tuple2!404) (t!2745 List!358)) )
))
(declare-fun l!1094 () List!358)

(assert (= (and start!1696 (is-Cons!354 l!1094)) b!11978))

(push 1)

(assert (not b!11978))

(assert tp_is_empty!605)

(check-sat)

(pop 1)

