; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137702 () Bool)

(assert start!137702)

(assert (=> start!137702 false))

(declare-fun e!883110 () Bool)

(assert (=> start!137702 e!883110))

(assert (=> start!137702 true))

(declare-fun b!1582334 () Bool)

(declare-fun tp_is_empty!39305 () Bool)

(declare-fun tp!114739 () Bool)

(assert (=> b!1582334 (= e!883110 (and tp_is_empty!39305 tp!114739))))

(declare-datatypes ((B!2760 0))(
  ( (B!2761 (val!19742 Int)) )
))
(declare-datatypes ((tuple2!25816 0))(
  ( (tuple2!25817 (_1!12918 (_ BitVec 64)) (_2!12918 B!2760)) )
))
(declare-datatypes ((List!37023 0))(
  ( (Nil!37020) (Cons!37019 (h!38563 tuple2!25816) (t!51944 List!37023)) )
))
(declare-fun l!1356 () List!37023)

(assert (= (and start!137702 (is-Cons!37019 l!1356)) b!1582334))

(push 1)

(assert (not b!1582334))

(assert tp_is_empty!39305)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

