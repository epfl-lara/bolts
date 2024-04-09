; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2362 () Bool)

(assert start!2362)

(declare-fun b_free!475 () Bool)

(declare-fun b_next!475 () Bool)

(assert (=> start!2362 (= b_free!475 (not b_next!475))))

(declare-fun tp!2498 () Bool)

(declare-fun b_and!891 () Bool)

(assert (=> start!2362 (= tp!2498 b_and!891)))

(assert (=> start!2362 false))

(declare-datatypes ((B!596 0))(
  ( (B!597 (val!396 Int)) )
))
(declare-datatypes ((tuple2!574 0))(
  ( (tuple2!575 (_1!287 (_ BitVec 64)) (_2!287 B!596)) )
))
(declare-datatypes ((List!452 0))(
  ( (Nil!449) (Cons!448 (h!1014 tuple2!574) (t!2860 List!452)) )
))
(declare-datatypes ((ListLongMap!405 0))(
  ( (ListLongMap!406 (toList!218 List!452)) )
))
(declare-fun lm!238 () ListLongMap!405)

(declare-fun e!9250 () Bool)

(declare-fun inv!768 (ListLongMap!405) Bool)

(assert (=> start!2362 (and (inv!768 lm!238) e!9250)))

(assert (=> start!2362 tp!2498))

(declare-fun b!15269 () Bool)

(declare-fun tp!2497 () Bool)

(assert (=> b!15269 (= e!9250 tp!2497)))

(assert (= start!2362 b!15269))

(declare-fun m!10153 () Bool)

(assert (=> start!2362 m!10153))

(push 1)

(assert (not start!2362))

(assert (not b!15269))

(assert b_and!891)

(assert (not b_next!475))

(check-sat)

(pop 1)

(push 1)

(assert b_and!891)

(assert (not b_next!475))

(check-sat)

