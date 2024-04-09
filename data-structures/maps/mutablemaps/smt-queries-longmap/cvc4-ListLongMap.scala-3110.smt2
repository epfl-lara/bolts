; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43766 () Bool)

(assert start!43766)

(assert (=> start!43766 false))

(declare-fun e!284653 () Bool)

(assert (=> start!43766 e!284653))

(assert (=> start!43766 true))

(declare-fun b!483608 () Bool)

(declare-fun tp_is_empty!13895 () Bool)

(declare-fun tp!43432 () Bool)

(assert (=> b!483608 (= e!284653 (and tp_is_empty!13895 tp!43432))))

(declare-datatypes ((B!1086 0))(
  ( (B!1087 (val!6995 Int)) )
))
(declare-datatypes ((tuple2!9188 0))(
  ( (tuple2!9189 (_1!4604 (_ BitVec 64)) (_2!4604 B!1086)) )
))
(declare-datatypes ((List!9294 0))(
  ( (Nil!9291) (Cons!9290 (h!10146 tuple2!9188) (t!15524 List!9294)) )
))
(declare-fun l!956 () List!9294)

(assert (= (and start!43766 (is-Cons!9290 l!956)) b!483608))

(push 1)

(assert (not b!483608))

(assert tp_is_empty!13895)

(check-sat)

(pop 1)

