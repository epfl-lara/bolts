; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113808 () Bool)

(assert start!113808)

(declare-fun b!1349971 () Bool)

(declare-fun e!767976 () Bool)

(assert (=> b!1349971 (= e!767976 (not true))))

(assert (=> b!1349971 false))

(declare-datatypes ((V!55253 0))(
  ( (V!55254 (val!18881 Int)) )
))
(declare-fun value!554 () V!55253)

(declare-datatypes ((tuple2!24496 0))(
  ( (tuple2!24497 (_1!12258 (_ BitVec 64)) (_2!12258 V!55253)) )
))
(declare-datatypes ((List!31654 0))(
  ( (Nil!31651) (Cons!31650 (h!32859 tuple2!24496) (t!46319 List!31654)) )
))
(declare-datatypes ((ListLongMap!22165 0))(
  ( (ListLongMap!22166 (toList!11098 List!31654)) )
))
(declare-fun lm!1456 () ListLongMap!22165)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-datatypes ((Unit!44169 0))(
  ( (Unit!44170) )
))
(declare-fun lt!596822 () Unit!44169)

(declare-fun addStillNotContains!517 (ListLongMap!22165 (_ BitVec 64) V!55253 (_ BitVec 64)) Unit!44169)

(assert (=> b!1349971 (= lt!596822 (addStillNotContains!517 lm!1456 otherKey!123 value!554 k!1141))))

(declare-fun b!1349972 () Bool)

(declare-fun e!767977 () Bool)

(declare-fun tp!110636 () Bool)

(assert (=> b!1349972 (= e!767977 tp!110636)))

(declare-fun b!1349973 () Bool)

(declare-fun res!895615 () Bool)

(assert (=> b!1349973 (=> (not res!895615) (not e!767976))))

(declare-fun contains!9219 (ListLongMap!22165 (_ BitVec 64)) Bool)

(assert (=> b!1349973 (= res!895615 (not (contains!9219 lm!1456 k!1141)))))

(declare-fun b!1349974 () Bool)

(declare-fun res!895616 () Bool)

(assert (=> b!1349974 (=> (not res!895616) (not e!767976))))

(assert (=> b!1349974 (= res!895616 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349975 () Bool)

(declare-fun res!895617 () Bool)

(assert (=> b!1349975 (=> (not res!895617) (not e!767976))))

(assert (=> b!1349975 (= res!895617 (not (= otherKey!123 k!1141)))))

(declare-fun res!895614 () Bool)

(assert (=> start!113808 (=> (not res!895614) (not e!767976))))

(declare-fun +!4839 (ListLongMap!22165 tuple2!24496) ListLongMap!22165)

(assert (=> start!113808 (= res!895614 (contains!9219 (+!4839 lm!1456 (tuple2!24497 otherKey!123 value!554)) k!1141))))

(assert (=> start!113808 e!767976))

(declare-fun inv!48428 (ListLongMap!22165) Bool)

(assert (=> start!113808 (and (inv!48428 lm!1456) e!767977)))

(assert (=> start!113808 true))

(declare-fun tp_is_empty!37613 () Bool)

(assert (=> start!113808 tp_is_empty!37613))

(assert (= (and start!113808 res!895614) b!1349974))

(assert (= (and b!1349974 res!895616) b!1349973))

(assert (= (and b!1349973 res!895615) b!1349975))

(assert (= (and b!1349975 res!895617) b!1349971))

(assert (= start!113808 b!1349972))

(declare-fun m!1237305 () Bool)

(assert (=> b!1349971 m!1237305))

(declare-fun m!1237307 () Bool)

(assert (=> b!1349973 m!1237307))

(declare-fun m!1237309 () Bool)

(assert (=> start!113808 m!1237309))

(assert (=> start!113808 m!1237309))

(declare-fun m!1237311 () Bool)

(assert (=> start!113808 m!1237311))

(declare-fun m!1237313 () Bool)

(assert (=> start!113808 m!1237313))

(push 1)

(assert (not start!113808))

(assert tp_is_empty!37613)

(assert (not b!1349971))

(assert (not b!1349972))

(assert (not b!1349973))

(check-sat)

(pop 1)

(push 1)

