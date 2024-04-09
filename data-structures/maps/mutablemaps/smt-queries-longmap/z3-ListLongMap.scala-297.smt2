; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5172 () Bool)

(assert start!5172)

(declare-fun res!22834 () Bool)

(declare-fun e!24008 () Bool)

(assert (=> start!5172 (=> (not res!22834) (not e!24008))))

(declare-datatypes ((B!772 0))(
  ( (B!773 (val!886 Int)) )
))
(declare-datatypes ((tuple2!1436 0))(
  ( (tuple2!1437 (_1!728 (_ BitVec 64)) (_2!728 B!772)) )
))
(declare-datatypes ((List!1012 0))(
  ( (Nil!1009) (Cons!1008 (h!1576 tuple2!1436) (t!3853 List!1012)) )
))
(declare-datatypes ((ListLongMap!1017 0))(
  ( (ListLongMap!1018 (toList!524 List!1012)) )
))
(declare-fun lm!264 () ListLongMap!1017)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun b!99 () B!772)

(declare-fun contains!472 (List!1012 tuple2!1436) Bool)

(assert (=> start!5172 (= res!22834 (contains!472 (toList!524 lm!264) (tuple2!1437 a!526 b!99)))))

(assert (=> start!5172 e!24008))

(declare-fun e!24009 () Bool)

(declare-fun inv!1676 (ListLongMap!1017) Bool)

(assert (=> start!5172 (and (inv!1676 lm!264) e!24009)))

(assert (=> start!5172 true))

(declare-fun tp_is_empty!1695 () Bool)

(assert (=> start!5172 tp_is_empty!1695))

(declare-fun b!37862 () Bool)

(assert (=> b!37862 (= e!24008 (not true))))

(declare-fun containsKey!57 (List!1012 (_ BitVec 64)) Bool)

(assert (=> b!37862 (containsKey!57 (toList!524 lm!264) a!526)))

(declare-datatypes ((Unit!866 0))(
  ( (Unit!867) )
))
(declare-fun lt!13933 () Unit!866)

(declare-fun lemmaContainsTupleThenContainsKey!2 (List!1012 (_ BitVec 64) B!772) Unit!866)

(assert (=> b!37862 (= lt!13933 (lemmaContainsTupleThenContainsKey!2 (toList!524 lm!264) a!526 b!99))))

(declare-fun b!37863 () Bool)

(declare-fun tp!5600 () Bool)

(assert (=> b!37863 (= e!24009 tp!5600)))

(assert (= (and start!5172 res!22834) b!37862))

(assert (= start!5172 b!37863))

(declare-fun m!30601 () Bool)

(assert (=> start!5172 m!30601))

(declare-fun m!30603 () Bool)

(assert (=> start!5172 m!30603))

(declare-fun m!30605 () Bool)

(assert (=> b!37862 m!30605))

(declare-fun m!30607 () Bool)

(assert (=> b!37862 m!30607))

(check-sat (not b!37862) (not start!5172) (not b!37863) tp_is_empty!1695)
(check-sat)
