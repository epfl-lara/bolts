; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7114 () Bool)

(assert start!7114)

(declare-fun b!45571 () Bool)

(declare-fun e!29018 () Bool)

(declare-fun tp_is_empty!1921 () Bool)

(declare-fun tp!5975 () Bool)

(assert (=> b!45571 (= e!29018 (and tp_is_empty!1921 tp!5975))))

(declare-fun res!26712 () Bool)

(declare-fun e!29017 () Bool)

(assert (=> start!7114 (=> (not res!26712) (not e!29017))))

(declare-datatypes ((B!824 0))(
  ( (B!825 (val!999 Int)) )
))
(declare-datatypes ((tuple2!1650 0))(
  ( (tuple2!1651 (_1!835 (_ BitVec 64)) (_2!835 B!824)) )
))
(declare-datatypes ((List!1233 0))(
  ( (Nil!1230) (Cons!1229 (h!1809 tuple2!1650) (t!4266 List!1233)) )
))
(declare-fun l!812 () List!1233)

(declare-fun isStrictlySorted!210 (List!1233) Bool)

(assert (=> start!7114 (= res!26712 (isStrictlySorted!210 l!812))))

(assert (=> start!7114 e!29017))

(assert (=> start!7114 e!29018))

(assert (=> start!7114 true))

(declare-fun b!45568 () Bool)

(declare-fun res!26711 () Bool)

(assert (=> b!45568 (=> (not res!26711) (not e!29017))))

(assert (=> b!45568 (= res!26711 (is-Cons!1229 l!812))))

(declare-fun b!45569 () Bool)

(declare-fun res!26713 () Bool)

(assert (=> b!45569 (=> (not res!26713) (not e!29017))))

(assert (=> b!45569 (= res!26713 (isStrictlySorted!210 (t!4266 l!812)))))

(declare-fun b!45570 () Bool)

(assert (=> b!45570 (= e!29017 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!25 (List!1233 (_ BitVec 64)) List!1233)

(assert (=> b!45570 (= (removeStrictlySorted!25 (removeStrictlySorted!25 (t!4266 l!812) key1!43) key2!27) (removeStrictlySorted!25 (removeStrictlySorted!25 (t!4266 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1297 0))(
  ( (Unit!1298) )
))
(declare-fun lt!20177 () Unit!1297)

(declare-fun lemmaRemoveStrictlySortedCommutative!4 (List!1233 (_ BitVec 64) (_ BitVec 64)) Unit!1297)

(assert (=> b!45570 (= lt!20177 (lemmaRemoveStrictlySortedCommutative!4 (t!4266 l!812) key1!43 key2!27))))

(assert (= (and start!7114 res!26712) b!45568))

(assert (= (and b!45568 res!26711) b!45569))

(assert (= (and b!45569 res!26713) b!45570))

(assert (= (and start!7114 (is-Cons!1229 l!812)) b!45571))

(declare-fun m!40113 () Bool)

(assert (=> start!7114 m!40113))

(declare-fun m!40115 () Bool)

(assert (=> b!45569 m!40115))

(declare-fun m!40117 () Bool)

(assert (=> b!45570 m!40117))

(declare-fun m!40119 () Bool)

(assert (=> b!45570 m!40119))

(declare-fun m!40121 () Bool)

(assert (=> b!45570 m!40121))

(assert (=> b!45570 m!40119))

(assert (=> b!45570 m!40117))

(declare-fun m!40123 () Bool)

(assert (=> b!45570 m!40123))

(declare-fun m!40125 () Bool)

(assert (=> b!45570 m!40125))

(push 1)

(assert (not b!45570))

(assert (not start!7114))

(assert (not b!45571))

(assert (not b!45569))

(assert tp_is_empty!1921)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

