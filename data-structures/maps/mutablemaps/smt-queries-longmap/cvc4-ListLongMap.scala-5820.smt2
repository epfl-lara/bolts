; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75114 () Bool)

(assert start!75114)

(assert (=> start!75114 false))

(declare-fun e!492632 () Bool)

(assert (=> start!75114 e!492632))

(assert (=> start!75114 true))

(declare-fun b!885106 () Bool)

(declare-fun tp_is_empty!17753 () Bool)

(declare-fun tp!54237 () Bool)

(assert (=> b!885106 (= e!492632 (and tp_is_empty!17753 tp!54237))))

(declare-datatypes ((B!1242 0))(
  ( (B!1243 (val!8927 Int)) )
))
(declare-datatypes ((tuple2!11874 0))(
  ( (tuple2!11875 (_1!5947 (_ BitVec 64)) (_2!5947 B!1242)) )
))
(declare-datatypes ((List!17727 0))(
  ( (Nil!17724) (Cons!17723 (h!18854 tuple2!11874) (t!25012 List!17727)) )
))
(declare-fun l!906 () List!17727)

(assert (= (and start!75114 (is-Cons!17723 l!906)) b!885106))

(push 1)

(assert (not b!885106))

(assert tp_is_empty!17753)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

