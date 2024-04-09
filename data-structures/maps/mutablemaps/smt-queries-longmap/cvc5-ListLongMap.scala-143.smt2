; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2638 () Bool)

(assert start!2638)

(declare-fun b_free!535 () Bool)

(declare-fun b_next!535 () Bool)

(assert (=> start!2638 (= b_free!535 (not b_next!535))))

(declare-fun tp!2732 () Bool)

(declare-fun b_and!1029 () Bool)

(assert (=> start!2638 (= tp!2732 b_and!1029)))

(assert (=> start!2638 false))

(declare-datatypes ((B!656 0))(
  ( (B!657 (val!426 Int)) )
))
(declare-datatypes ((tuple2!634 0))(
  ( (tuple2!635 (_1!317 (_ BitVec 64)) (_2!317 B!656)) )
))
(declare-datatypes ((List!506 0))(
  ( (Nil!503) (Cons!502 (h!1068 tuple2!634) (t!2992 List!506)) )
))
(declare-datatypes ((ListLongMap!465 0))(
  ( (ListLongMap!466 (toList!248 List!506)) )
))
(declare-fun lm!221 () ListLongMap!465)

(declare-fun e!9658 () Bool)

(declare-fun inv!848 (ListLongMap!465) Bool)

(assert (=> start!2638 (and (inv!848 lm!221) e!9658)))

(assert (=> start!2638 tp!2732))

(declare-fun b!15818 () Bool)

(declare-fun tp!2731 () Bool)

(assert (=> b!15818 (= e!9658 tp!2731)))

(assert (= start!2638 b!15818))

(declare-fun m!10849 () Bool)

(assert (=> start!2638 m!10849))

(push 1)

(assert (not start!2638))

(assert (not b!15818))

(assert b_and!1029)

(assert (not b_next!535))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1029)

(assert (not b_next!535))

(check-sat)

