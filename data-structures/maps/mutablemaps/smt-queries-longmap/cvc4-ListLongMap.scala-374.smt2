; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7118 () Bool)

(assert start!7118)

(declare-fun res!26731 () Bool)

(declare-fun e!29029 () Bool)

(assert (=> start!7118 (=> (not res!26731) (not e!29029))))

(declare-datatypes ((B!828 0))(
  ( (B!829 (val!1001 Int)) )
))
(declare-datatypes ((tuple2!1654 0))(
  ( (tuple2!1655 (_1!837 (_ BitVec 64)) (_2!837 B!828)) )
))
(declare-datatypes ((List!1235 0))(
  ( (Nil!1232) (Cons!1231 (h!1811 tuple2!1654) (t!4268 List!1235)) )
))
(declare-fun l!812 () List!1235)

(declare-fun isStrictlySorted!212 (List!1235) Bool)

(assert (=> start!7118 (= res!26731 (isStrictlySorted!212 l!812))))

(assert (=> start!7118 e!29029))

(declare-fun e!29030 () Bool)

(assert (=> start!7118 e!29030))

(assert (=> start!7118 true))

(declare-fun b!45592 () Bool)

(declare-fun res!26730 () Bool)

(assert (=> b!45592 (=> (not res!26730) (not e!29029))))

(assert (=> b!45592 (= res!26730 (is-Cons!1231 l!812))))

(declare-fun b!45595 () Bool)

(declare-fun tp_is_empty!1925 () Bool)

(declare-fun tp!5981 () Bool)

(assert (=> b!45595 (= e!29030 (and tp_is_empty!1925 tp!5981))))

(declare-fun b!45593 () Bool)

(declare-fun res!26729 () Bool)

(assert (=> b!45593 (=> (not res!26729) (not e!29029))))

(assert (=> b!45593 (= res!26729 (isStrictlySorted!212 (t!4268 l!812)))))

(declare-fun b!45594 () Bool)

(assert (=> b!45594 (= e!29029 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!27 (List!1235 (_ BitVec 64)) List!1235)

(assert (=> b!45594 (= (removeStrictlySorted!27 (removeStrictlySorted!27 (t!4268 l!812) key1!43) key2!27) (removeStrictlySorted!27 (removeStrictlySorted!27 (t!4268 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1301 0))(
  ( (Unit!1302) )
))
(declare-fun lt!20183 () Unit!1301)

(declare-fun lemmaRemoveStrictlySortedCommutative!6 (List!1235 (_ BitVec 64) (_ BitVec 64)) Unit!1301)

(assert (=> b!45594 (= lt!20183 (lemmaRemoveStrictlySortedCommutative!6 (t!4268 l!812) key1!43 key2!27))))

(assert (= (and start!7118 res!26731) b!45592))

(assert (= (and b!45592 res!26730) b!45593))

(assert (= (and b!45593 res!26729) b!45594))

(assert (= (and start!7118 (is-Cons!1231 l!812)) b!45595))

(declare-fun m!40141 () Bool)

(assert (=> start!7118 m!40141))

(declare-fun m!40143 () Bool)

(assert (=> b!45593 m!40143))

(declare-fun m!40145 () Bool)

(assert (=> b!45594 m!40145))

(declare-fun m!40147 () Bool)

(assert (=> b!45594 m!40147))

(declare-fun m!40149 () Bool)

(assert (=> b!45594 m!40149))

(assert (=> b!45594 m!40147))

(assert (=> b!45594 m!40145))

(declare-fun m!40151 () Bool)

(assert (=> b!45594 m!40151))

(declare-fun m!40153 () Bool)

(assert (=> b!45594 m!40153))

(push 1)

(assert (not b!45593))

(assert (not start!7118))

(assert tp_is_empty!1925)

(assert (not b!45595))

(assert (not b!45594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

