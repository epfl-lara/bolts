; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2482 () Bool)

(assert start!2482)

(declare-fun b_free!505 () Bool)

(declare-fun b_next!505 () Bool)

(assert (=> start!2482 (= b_free!505 (not b_next!505))))

(declare-fun tp!2615 () Bool)

(declare-fun b_and!951 () Bool)

(assert (=> start!2482 (= tp!2615 b_and!951)))

(assert (=> start!2482 false))

(declare-datatypes ((B!626 0))(
  ( (B!627 (val!411 Int)) )
))
(declare-datatypes ((tuple2!604 0))(
  ( (tuple2!605 (_1!302 (_ BitVec 64)) (_2!302 B!626)) )
))
(declare-datatypes ((List!479 0))(
  ( (Nil!476) (Cons!475 (h!1041 tuple2!604) (t!2917 List!479)) )
))
(declare-datatypes ((ListLongMap!435 0))(
  ( (ListLongMap!436 (toList!233 List!479)) )
))
(declare-fun lm!238 () ListLongMap!435)

(declare-fun e!9433 () Bool)

(declare-fun inv!808 (ListLongMap!435) Bool)

(assert (=> start!2482 (and (inv!808 lm!238) e!9433)))

(assert (=> start!2482 tp!2615))

(declare-fun b!15506 () Bool)

(declare-fun tp!2614 () Bool)

(assert (=> b!15506 (= e!9433 tp!2614)))

(assert (= start!2482 b!15506))

(declare-fun m!10423 () Bool)

(assert (=> start!2482 m!10423))

(push 1)

(assert (not start!2482))

(assert (not b!15506))

(assert b_and!951)

(assert (not b_next!505))

(check-sat)

(pop 1)

(push 1)

(assert b_and!951)

(assert (not b_next!505))

(check-sat)

(pop 1)

