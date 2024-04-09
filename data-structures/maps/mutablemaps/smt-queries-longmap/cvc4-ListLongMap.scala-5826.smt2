; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75180 () Bool)

(assert start!75180)

(assert (=> start!75180 false))

(declare-fun e!492929 () Bool)

(assert (=> start!75180 e!492929))

(declare-fun b!885613 () Bool)

(declare-fun tp_is_empty!17789 () Bool)

(declare-fun tp!54309 () Bool)

(assert (=> b!885613 (= e!492929 (and tp_is_empty!17789 tp!54309))))

(declare-datatypes ((B!1278 0))(
  ( (B!1279 (val!8945 Int)) )
))
(declare-datatypes ((tuple2!11910 0))(
  ( (tuple2!11911 (_1!5965 (_ BitVec 64)) (_2!5965 B!1278)) )
))
(declare-datatypes ((List!17745 0))(
  ( (Nil!17742) (Cons!17741 (h!18872 tuple2!11910) (t!25030 List!17745)) )
))
(declare-fun l!906 () List!17745)

(assert (= (and start!75180 (is-Cons!17741 l!906)) b!885613))

(push 1)

(assert (not b!885613))

(assert tp_is_empty!17789)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

