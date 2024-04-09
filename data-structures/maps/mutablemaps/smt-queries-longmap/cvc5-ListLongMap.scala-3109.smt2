; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43756 () Bool)

(assert start!43756)

(assert (=> start!43756 false))

(declare-fun e!284638 () Bool)

(assert (=> start!43756 e!284638))

(declare-fun b!483593 () Bool)

(declare-fun tp_is_empty!13885 () Bool)

(declare-fun tp!43417 () Bool)

(assert (=> b!483593 (= e!284638 (and tp_is_empty!13885 tp!43417))))

(declare-datatypes ((B!1076 0))(
  ( (B!1077 (val!6990 Int)) )
))
(declare-datatypes ((tuple2!9178 0))(
  ( (tuple2!9179 (_1!4599 (_ BitVec 64)) (_2!4599 B!1076)) )
))
(declare-datatypes ((List!9289 0))(
  ( (Nil!9286) (Cons!9285 (h!10141 tuple2!9178) (t!15519 List!9289)) )
))
(declare-fun l!956 () List!9289)

(assert (= (and start!43756 (is-Cons!9285 l!956)) b!483593))

(push 1)

(assert (not b!483593))

(assert tp_is_empty!13885)

(check-sat)

(pop 1)

