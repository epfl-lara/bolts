; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7148 () Bool)

(assert start!7148)

(declare-fun b!45815 () Bool)

(declare-fun res!26834 () Bool)

(declare-fun e!29167 () Bool)

(assert (=> b!45815 (=> (not res!26834) (not e!29167))))

(declare-datatypes ((B!840 0))(
  ( (B!841 (val!1007 Int)) )
))
(declare-datatypes ((tuple2!1666 0))(
  ( (tuple2!1667 (_1!843 (_ BitVec 64)) (_2!843 B!840)) )
))
(declare-datatypes ((List!1241 0))(
  ( (Nil!1238) (Cons!1237 (h!1817 tuple2!1666) (t!4274 List!1241)) )
))
(declare-fun l!812 () List!1241)

(declare-fun isStrictlySorted!218 (List!1241) Bool)

(assert (=> b!45815 (= res!26834 (isStrictlySorted!218 (t!4274 l!812)))))

(declare-fun res!26836 () Bool)

(assert (=> start!7148 (=> (not res!26836) (not e!29167))))

(assert (=> start!7148 (= res!26836 (isStrictlySorted!218 l!812))))

(assert (=> start!7148 e!29167))

(declare-fun e!29168 () Bool)

(assert (=> start!7148 e!29168))

(assert (=> start!7148 true))

(declare-fun b!45817 () Bool)

(declare-fun tp_is_empty!1937 () Bool)

(declare-fun tp!6008 () Bool)

(assert (=> b!45817 (= e!29168 (and tp_is_empty!1937 tp!6008))))

(declare-fun b!45816 () Bool)

(assert (=> b!45816 (= e!29167 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!33 (List!1241 (_ BitVec 64)) List!1241)

(assert (=> b!45816 (= (removeStrictlySorted!33 (removeStrictlySorted!33 (t!4274 l!812) key1!43) key2!27) (removeStrictlySorted!33 (removeStrictlySorted!33 (t!4274 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1313 0))(
  ( (Unit!1314) )
))
(declare-fun lt!20231 () Unit!1313)

(declare-fun lemmaRemoveStrictlySortedCommutative!12 (List!1241 (_ BitVec 64) (_ BitVec 64)) Unit!1313)

(assert (=> b!45816 (= lt!20231 (lemmaRemoveStrictlySortedCommutative!12 (t!4274 l!812) key1!43 key2!27))))

(declare-fun b!45814 () Bool)

(declare-fun res!26835 () Bool)

(assert (=> b!45814 (=> (not res!26835) (not e!29167))))

(assert (=> b!45814 (= res!26835 (is-Cons!1237 l!812))))

(assert (= (and start!7148 res!26836) b!45814))

(assert (= (and b!45814 res!26835) b!45815))

(assert (= (and b!45815 res!26834) b!45816))

(assert (= (and start!7148 (is-Cons!1237 l!812)) b!45817))

(declare-fun m!40381 () Bool)

(assert (=> b!45815 m!40381))

(declare-fun m!40383 () Bool)

(assert (=> start!7148 m!40383))

(declare-fun m!40385 () Bool)

(assert (=> b!45816 m!40385))

(declare-fun m!40387 () Bool)

(assert (=> b!45816 m!40387))

(declare-fun m!40389 () Bool)

(assert (=> b!45816 m!40389))

(assert (=> b!45816 m!40387))

(assert (=> b!45816 m!40385))

(declare-fun m!40391 () Bool)

(assert (=> b!45816 m!40391))

(declare-fun m!40393 () Bool)

(assert (=> b!45816 m!40393))

(push 1)

(assert (not b!45815))

(assert (not start!7148))

(assert (not b!45817))

(assert tp_is_empty!1937)

(assert (not b!45816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

