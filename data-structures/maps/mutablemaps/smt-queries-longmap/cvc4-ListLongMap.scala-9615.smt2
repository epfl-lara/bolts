; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113802 () Bool)

(assert start!113802)

(declare-fun res!895581 () Bool)

(declare-fun e!767959 () Bool)

(assert (=> start!113802 (=> (not res!895581) (not e!767959))))

(declare-datatypes ((V!55245 0))(
  ( (V!55246 (val!18878 Int)) )
))
(declare-datatypes ((tuple2!24490 0))(
  ( (tuple2!24491 (_1!12255 (_ BitVec 64)) (_2!12255 V!55245)) )
))
(declare-datatypes ((List!31651 0))(
  ( (Nil!31648) (Cons!31647 (h!32856 tuple2!24490) (t!46316 List!31651)) )
))
(declare-datatypes ((ListLongMap!22159 0))(
  ( (ListLongMap!22160 (toList!11095 List!31651)) )
))
(declare-fun lm!1456 () ListLongMap!22159)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun value!554 () V!55245)

(declare-fun contains!9216 (ListLongMap!22159 (_ BitVec 64)) Bool)

(declare-fun +!4836 (ListLongMap!22159 tuple2!24490) ListLongMap!22159)

(assert (=> start!113802 (= res!895581 (contains!9216 (+!4836 lm!1456 (tuple2!24491 otherKey!123 value!554)) k!1141))))

(assert (=> start!113802 e!767959))

(declare-fun e!767958 () Bool)

(declare-fun inv!48420 (ListLongMap!22159) Bool)

(assert (=> start!113802 (and (inv!48420 lm!1456) e!767958)))

(assert (=> start!113802 true))

(declare-fun tp_is_empty!37607 () Bool)

(assert (=> start!113802 tp_is_empty!37607))

(declare-fun b!1349928 () Bool)

(declare-fun res!895579 () Bool)

(assert (=> b!1349928 (=> (not res!895579) (not e!767959))))

(assert (=> b!1349928 (= res!895579 (not (contains!9216 lm!1456 k!1141)))))

(declare-fun b!1349929 () Bool)

(assert (=> b!1349929 (= e!767959 (= otherKey!123 k!1141))))

(declare-fun b!1349927 () Bool)

(declare-fun res!895580 () Bool)

(assert (=> b!1349927 (=> (not res!895580) (not e!767959))))

(assert (=> b!1349927 (= res!895580 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349930 () Bool)

(declare-fun tp!110627 () Bool)

(assert (=> b!1349930 (= e!767958 tp!110627)))

(assert (= (and start!113802 res!895581) b!1349927))

(assert (= (and b!1349927 res!895580) b!1349928))

(assert (= (and b!1349928 res!895579) b!1349929))

(assert (= start!113802 b!1349930))

(declare-fun m!1237277 () Bool)

(assert (=> start!113802 m!1237277))

(assert (=> start!113802 m!1237277))

(declare-fun m!1237279 () Bool)

(assert (=> start!113802 m!1237279))

(declare-fun m!1237281 () Bool)

(assert (=> start!113802 m!1237281))

(declare-fun m!1237283 () Bool)

(assert (=> b!1349928 m!1237283))

(push 1)

(assert (not b!1349928))

(assert (not start!113802))

(assert (not b!1349930))

(assert tp_is_empty!37607)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

