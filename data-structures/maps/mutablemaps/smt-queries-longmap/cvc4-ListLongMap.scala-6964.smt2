; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87980 () Bool)

(assert start!87980)

(assert (=> start!87980 false))

(declare-fun e!571391 () Bool)

(assert (=> start!87980 e!571391))

(assert (=> start!87980 true))

(declare-fun tp_is_empty!23561 () Bool)

(assert (=> start!87980 tp_is_empty!23561))

(declare-fun b!1015594 () Bool)

(declare-fun tp!70680 () Bool)

(assert (=> b!1015594 (= e!571391 (and tp_is_empty!23561 tp!70680))))

(declare-datatypes ((B!1494 0))(
  ( (B!1495 (val!11831 Int)) )
))
(declare-datatypes ((tuple2!15298 0))(
  ( (tuple2!15299 (_1!7659 (_ BitVec 64)) (_2!7659 B!1494)) )
))
(declare-datatypes ((List!21600 0))(
  ( (Nil!21597) (Cons!21596 (h!22794 tuple2!15298) (t!30609 List!21600)) )
))
(declare-fun l!1114 () List!21600)

(assert (= (and start!87980 (is-Cons!21596 l!1114)) b!1015594))

(push 1)

(assert (not b!1015594))

(assert tp_is_empty!23561)

(check-sat)

(pop 1)

