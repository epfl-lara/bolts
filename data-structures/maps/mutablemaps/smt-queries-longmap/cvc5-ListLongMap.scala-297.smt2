; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5170 () Bool)

(assert start!5170)

(declare-fun res!22831 () Bool)

(declare-fun e!24002 () Bool)

(assert (=> start!5170 (=> (not res!22831) (not e!24002))))

(declare-datatypes ((B!770 0))(
  ( (B!771 (val!885 Int)) )
))
(declare-fun b!99 () B!770)

(declare-datatypes ((tuple2!1434 0))(
  ( (tuple2!1435 (_1!727 (_ BitVec 64)) (_2!727 B!770)) )
))
(declare-datatypes ((List!1011 0))(
  ( (Nil!1008) (Cons!1007 (h!1575 tuple2!1434) (t!3852 List!1011)) )
))
(declare-datatypes ((ListLongMap!1015 0))(
  ( (ListLongMap!1016 (toList!523 List!1011)) )
))
(declare-fun lm!264 () ListLongMap!1015)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!471 (List!1011 tuple2!1434) Bool)

(assert (=> start!5170 (= res!22831 (contains!471 (toList!523 lm!264) (tuple2!1435 a!526 b!99)))))

(assert (=> start!5170 e!24002))

(declare-fun e!24003 () Bool)

(declare-fun inv!1675 (ListLongMap!1015) Bool)

(assert (=> start!5170 (and (inv!1675 lm!264) e!24003)))

(assert (=> start!5170 true))

(declare-fun tp_is_empty!1693 () Bool)

(assert (=> start!5170 tp_is_empty!1693))

(declare-fun b!37856 () Bool)

(assert (=> b!37856 (= e!24002 (not true))))

(declare-fun containsKey!56 (List!1011 (_ BitVec 64)) Bool)

(assert (=> b!37856 (containsKey!56 (toList!523 lm!264) a!526)))

(declare-datatypes ((Unit!864 0))(
  ( (Unit!865) )
))
(declare-fun lt!13930 () Unit!864)

(declare-fun lemmaContainsTupleThenContainsKey!1 (List!1011 (_ BitVec 64) B!770) Unit!864)

(assert (=> b!37856 (= lt!13930 (lemmaContainsTupleThenContainsKey!1 (toList!523 lm!264) a!526 b!99))))

(declare-fun b!37857 () Bool)

(declare-fun tp!5597 () Bool)

(assert (=> b!37857 (= e!24003 tp!5597)))

(assert (= (and start!5170 res!22831) b!37856))

(assert (= start!5170 b!37857))

(declare-fun m!30593 () Bool)

(assert (=> start!5170 m!30593))

(declare-fun m!30595 () Bool)

(assert (=> start!5170 m!30595))

(declare-fun m!30597 () Bool)

(assert (=> b!37856 m!30597))

(declare-fun m!30599 () Bool)

(assert (=> b!37856 m!30599))

(push 1)

(assert (not start!5170))

(assert (not b!37856))

(assert (not b!37857))

(assert tp_is_empty!1693)

(check-sat)

(pop 1)

