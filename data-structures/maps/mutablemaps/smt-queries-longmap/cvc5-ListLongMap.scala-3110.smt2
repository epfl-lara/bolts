; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43762 () Bool)

(assert start!43762)

(assert (=> start!43762 false))

(declare-fun e!284647 () Bool)

(assert (=> start!43762 e!284647))

(assert (=> start!43762 true))

(declare-fun b!483602 () Bool)

(declare-fun tp_is_empty!13891 () Bool)

(declare-fun tp!43426 () Bool)

(assert (=> b!483602 (= e!284647 (and tp_is_empty!13891 tp!43426))))

(declare-datatypes ((B!1082 0))(
  ( (B!1083 (val!6993 Int)) )
))
(declare-datatypes ((tuple2!9184 0))(
  ( (tuple2!9185 (_1!4602 (_ BitVec 64)) (_2!4602 B!1082)) )
))
(declare-datatypes ((List!9292 0))(
  ( (Nil!9289) (Cons!9288 (h!10144 tuple2!9184) (t!15522 List!9292)) )
))
(declare-fun l!956 () List!9292)

(assert (= (and start!43762 (is-Cons!9288 l!956)) b!483602))

(push 1)

(assert (not b!483602))

(assert tp_is_empty!13891)

(check-sat)

(pop 1)

