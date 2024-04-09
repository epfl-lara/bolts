; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134344 () Bool)

(assert start!134344)

(assert (=> start!134344 false))

(assert (=> start!134344 true))

(declare-fun e!874380 () Bool)

(assert (=> start!134344 e!874380))

(declare-fun b!1568441 () Bool)

(declare-fun tp_is_empty!39013 () Bool)

(declare-fun tp!114022 () Bool)

(assert (=> b!1568441 (= e!874380 (and tp_is_empty!39013 tp!114022))))

(declare-datatypes ((B!2462 0))(
  ( (B!2463 (val!19593 Int)) )
))
(declare-datatypes ((tuple2!25452 0))(
  ( (tuple2!25453 (_1!12736 (_ BitVec 64)) (_2!12736 B!2462)) )
))
(declare-datatypes ((List!36874 0))(
  ( (Nil!36871) (Cons!36870 (h!38318 tuple2!25452) (t!51789 List!36874)) )
))
(declare-fun l!750 () List!36874)

(assert (= (and start!134344 (is-Cons!36870 l!750)) b!1568441))

(push 1)

(assert (not b!1568441))

(assert tp_is_empty!39013)

(check-sat)

(pop 1)

