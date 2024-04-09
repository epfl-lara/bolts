; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132770 () Bool)

(assert start!132770)

(declare-fun b!1555092 () Bool)

(declare-fun e!866019 () Bool)

(assert (=> b!1555092 (= e!866019 (not true))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-datatypes ((B!2280 0))(
  ( (B!2281 (val!19226 Int)) )
))
(declare-fun newValue!105 () B!2280)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun lt!670170 () Bool)

(declare-datatypes ((tuple2!24968 0))(
  ( (tuple2!24969 (_1!12494 (_ BitVec 64)) (_2!12494 B!2280)) )
))
(declare-datatypes ((List!36406 0))(
  ( (Nil!36403) (Cons!36402 (h!37849 tuple2!24968) (t!51134 List!36406)) )
))
(declare-fun l!1177 () List!36406)

(declare-fun containsKey!788 (List!36406 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!530 (List!36406 (_ BitVec 64) B!2280) List!36406)

(assert (=> b!1555092 (= lt!670170 (containsKey!788 (insertStrictlySorted!530 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun e!866018 () Bool)

(assert (=> b!1555092 e!866018))

(declare-fun res!1064201 () Bool)

(assert (=> b!1555092 (=> (not res!1064201) (not e!866018))))

(declare-fun lt!670171 () List!36406)

(assert (=> b!1555092 (= res!1064201 (= (containsKey!788 lt!670171 otherKey!50) (containsKey!788 (t!51134 l!1177) otherKey!50)))))

(assert (=> b!1555092 (= lt!670171 (insertStrictlySorted!530 (t!51134 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51759 0))(
  ( (Unit!51760) )
))
(declare-fun lt!670172 () Unit!51759)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!27 (List!36406 (_ BitVec 64) B!2280 (_ BitVec 64)) Unit!51759)

(assert (=> b!1555092 (= lt!670172 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!27 (t!51134 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555093 () Bool)

(declare-fun res!1064202 () Bool)

(assert (=> b!1555093 (=> (not res!1064202) (not e!866019))))

(assert (=> b!1555093 (= res!1064202 (and (not (= newKey!105 otherKey!50)) (is-Cons!36402 l!1177) (not (= (_1!12494 (h!37849 l!1177)) otherKey!50))))))

(declare-fun b!1555094 () Bool)

(declare-fun e!866017 () Bool)

(declare-fun tp_is_empty!38291 () Bool)

(declare-fun tp!112270 () Bool)

(assert (=> b!1555094 (= e!866017 (and tp_is_empty!38291 tp!112270))))

(declare-fun b!1555095 () Bool)

(declare-datatypes ((Option!845 0))(
  ( (Some!844 (v!22025 B!2280)) (None!843) )
))
(declare-fun getValueByKey!770 (List!36406 (_ BitVec 64)) Option!845)

(assert (=> b!1555095 (= e!866018 (= (getValueByKey!770 lt!670171 otherKey!50) (getValueByKey!770 (t!51134 l!1177) otherKey!50)))))

(declare-fun b!1555096 () Bool)

(declare-fun res!1064200 () Bool)

(assert (=> b!1555096 (=> (not res!1064200) (not e!866019))))

(declare-fun isStrictlySorted!916 (List!36406) Bool)

(assert (=> b!1555096 (= res!1064200 (isStrictlySorted!916 (t!51134 l!1177)))))

(declare-fun res!1064199 () Bool)

(assert (=> start!132770 (=> (not res!1064199) (not e!866019))))

(assert (=> start!132770 (= res!1064199 (isStrictlySorted!916 l!1177))))

(assert (=> start!132770 e!866019))

(assert (=> start!132770 e!866017))

(assert (=> start!132770 true))

(assert (=> start!132770 tp_is_empty!38291))

(assert (= (and start!132770 res!1064199) b!1555093))

(assert (= (and b!1555093 res!1064202) b!1555096))

(assert (= (and b!1555096 res!1064200) b!1555092))

(assert (= (and b!1555092 res!1064201) b!1555095))

(assert (= (and start!132770 (is-Cons!36402 l!1177)) b!1555094))

(declare-fun m!1433227 () Bool)

(assert (=> b!1555092 m!1433227))

(declare-fun m!1433229 () Bool)

(assert (=> b!1555092 m!1433229))

(declare-fun m!1433231 () Bool)

(assert (=> b!1555092 m!1433231))

(declare-fun m!1433233 () Bool)

(assert (=> b!1555092 m!1433233))

(declare-fun m!1433235 () Bool)

(assert (=> b!1555092 m!1433235))

(declare-fun m!1433237 () Bool)

(assert (=> b!1555092 m!1433237))

(assert (=> b!1555092 m!1433233))

(declare-fun m!1433239 () Bool)

(assert (=> b!1555095 m!1433239))

(declare-fun m!1433241 () Bool)

(assert (=> b!1555095 m!1433241))

(declare-fun m!1433243 () Bool)

(assert (=> b!1555096 m!1433243))

(declare-fun m!1433245 () Bool)

(assert (=> start!132770 m!1433245))

(push 1)

(assert (not b!1555095))

(assert (not b!1555094))

(assert (not b!1555096))

(assert tp_is_empty!38291)

(assert (not start!132770))

(assert (not b!1555092))

(check-sat)

(pop 1)

