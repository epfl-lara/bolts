; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5174 () Bool)

(assert start!5174)

(declare-fun res!22837 () Bool)

(declare-fun e!24014 () Bool)

(assert (=> start!5174 (=> (not res!22837) (not e!24014))))

(declare-datatypes ((B!774 0))(
  ( (B!775 (val!887 Int)) )
))
(declare-fun b!99 () B!774)

(declare-datatypes ((tuple2!1438 0))(
  ( (tuple2!1439 (_1!729 (_ BitVec 64)) (_2!729 B!774)) )
))
(declare-datatypes ((List!1013 0))(
  ( (Nil!1010) (Cons!1009 (h!1577 tuple2!1438) (t!3854 List!1013)) )
))
(declare-datatypes ((ListLongMap!1019 0))(
  ( (ListLongMap!1020 (toList!525 List!1013)) )
))
(declare-fun lm!264 () ListLongMap!1019)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!473 (List!1013 tuple2!1438) Bool)

(assert (=> start!5174 (= res!22837 (contains!473 (toList!525 lm!264) (tuple2!1439 a!526 b!99)))))

(assert (=> start!5174 e!24014))

(declare-fun e!24015 () Bool)

(declare-fun inv!1677 (ListLongMap!1019) Bool)

(assert (=> start!5174 (and (inv!1677 lm!264) e!24015)))

(assert (=> start!5174 true))

(declare-fun tp_is_empty!1697 () Bool)

(assert (=> start!5174 tp_is_empty!1697))

(declare-fun b!37868 () Bool)

(assert (=> b!37868 (= e!24014 (not true))))

(declare-fun containsKey!58 (List!1013 (_ BitVec 64)) Bool)

(assert (=> b!37868 (containsKey!58 (toList!525 lm!264) a!526)))

(declare-datatypes ((Unit!868 0))(
  ( (Unit!869) )
))
(declare-fun lt!13936 () Unit!868)

(declare-fun lemmaContainsTupleThenContainsKey!3 (List!1013 (_ BitVec 64) B!774) Unit!868)

(assert (=> b!37868 (= lt!13936 (lemmaContainsTupleThenContainsKey!3 (toList!525 lm!264) a!526 b!99))))

(declare-fun b!37869 () Bool)

(declare-fun tp!5603 () Bool)

(assert (=> b!37869 (= e!24015 tp!5603)))

(assert (= (and start!5174 res!22837) b!37868))

(assert (= start!5174 b!37869))

(declare-fun m!30609 () Bool)

(assert (=> start!5174 m!30609))

(declare-fun m!30611 () Bool)

(assert (=> start!5174 m!30611))

(declare-fun m!30613 () Bool)

(assert (=> b!37868 m!30613))

(declare-fun m!30615 () Bool)

(assert (=> b!37868 m!30615))

(push 1)

(assert (not b!37868))

(assert (not start!5174))

(assert (not b!37869))

(assert tp_is_empty!1697)

(check-sat)

(pop 1)

