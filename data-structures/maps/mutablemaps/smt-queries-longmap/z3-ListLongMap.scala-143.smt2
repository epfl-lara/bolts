; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2640 () Bool)

(assert start!2640)

(declare-fun b_free!537 () Bool)

(declare-fun b_next!537 () Bool)

(assert (=> start!2640 (= b_free!537 (not b_next!537))))

(declare-fun tp!2738 () Bool)

(declare-fun b_and!1031 () Bool)

(assert (=> start!2640 (= tp!2738 b_and!1031)))

(assert (=> start!2640 false))

(declare-datatypes ((B!658 0))(
  ( (B!659 (val!427 Int)) )
))
(declare-datatypes ((tuple2!636 0))(
  ( (tuple2!637 (_1!318 (_ BitVec 64)) (_2!318 B!658)) )
))
(declare-datatypes ((List!507 0))(
  ( (Nil!504) (Cons!503 (h!1069 tuple2!636) (t!2993 List!507)) )
))
(declare-datatypes ((ListLongMap!467 0))(
  ( (ListLongMap!468 (toList!249 List!507)) )
))
(declare-fun lm!221 () ListLongMap!467)

(declare-fun e!9661 () Bool)

(declare-fun inv!849 (ListLongMap!467) Bool)

(assert (=> start!2640 (and (inv!849 lm!221) e!9661)))

(assert (=> start!2640 tp!2738))

(declare-fun b!15821 () Bool)

(declare-fun tp!2737 () Bool)

(assert (=> b!15821 (= e!9661 tp!2737)))

(assert (= start!2640 b!15821))

(declare-fun m!10851 () Bool)

(assert (=> start!2640 m!10851))

(check-sat (not start!2640) (not b!15821) b_and!1031 (not b_next!537))
(check-sat b_and!1031 (not b_next!537))
