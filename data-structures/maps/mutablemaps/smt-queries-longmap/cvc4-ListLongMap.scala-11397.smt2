; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132722 () Bool)

(assert start!132722)

(declare-fun b!1554702 () Bool)

(declare-fun res!1063995 () Bool)

(declare-fun e!865771 () Bool)

(assert (=> b!1554702 (=> (not res!1063995) (not e!865771))))

(declare-datatypes ((B!2262 0))(
  ( (B!2263 (val!19217 Int)) )
))
(declare-datatypes ((tuple2!24950 0))(
  ( (tuple2!24951 (_1!12485 (_ BitVec 64)) (_2!12485 B!2262)) )
))
(declare-datatypes ((List!36397 0))(
  ( (Nil!36394) (Cons!36393 (h!37840 tuple2!24950) (t!51125 List!36397)) )
))
(declare-fun l!1177 () List!36397)

(declare-fun isStrictlySorted!907 (List!36397) Bool)

(assert (=> b!1554702 (= res!1063995 (isStrictlySorted!907 (t!51125 l!1177)))))

(declare-fun b!1554703 () Bool)

(assert (=> b!1554703 (= e!865771 (not true))))

(declare-fun e!865773 () Bool)

(assert (=> b!1554703 e!865773))

(declare-fun res!1063997 () Bool)

(assert (=> b!1554703 (=> (not res!1063997) (not e!865773))))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun lt!670088 () List!36397)

(declare-fun containsKey!779 (List!36397 (_ BitVec 64)) Bool)

(assert (=> b!1554703 (= res!1063997 (= (containsKey!779 lt!670088 otherKey!50) (containsKey!779 (t!51125 l!1177) otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2262)

(declare-fun insertStrictlySorted!521 (List!36397 (_ BitVec 64) B!2262) List!36397)

(assert (=> b!1554703 (= lt!670088 (insertStrictlySorted!521 (t!51125 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51741 0))(
  ( (Unit!51742) )
))
(declare-fun lt!670087 () Unit!51741)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!18 (List!36397 (_ BitVec 64) B!2262 (_ BitVec 64)) Unit!51741)

(assert (=> b!1554703 (= lt!670087 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!18 (t!51125 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1554705 () Bool)

(declare-fun e!865772 () Bool)

(declare-fun tp_is_empty!38273 () Bool)

(declare-fun tp!112234 () Bool)

(assert (=> b!1554705 (= e!865772 (and tp_is_empty!38273 tp!112234))))

(declare-fun b!1554706 () Bool)

(declare-fun res!1063996 () Bool)

(assert (=> b!1554706 (=> (not res!1063996) (not e!865771))))

(assert (=> b!1554706 (= res!1063996 (and (not (= newKey!105 otherKey!50)) (is-Cons!36393 l!1177) (not (= (_1!12485 (h!37840 l!1177)) otherKey!50))))))

(declare-fun res!1063998 () Bool)

(assert (=> start!132722 (=> (not res!1063998) (not e!865771))))

(assert (=> start!132722 (= res!1063998 (isStrictlySorted!907 l!1177))))

(assert (=> start!132722 e!865771))

(assert (=> start!132722 e!865772))

(assert (=> start!132722 true))

(assert (=> start!132722 tp_is_empty!38273))

(declare-fun b!1554704 () Bool)

(declare-datatypes ((Option!836 0))(
  ( (Some!835 (v!22016 B!2262)) (None!834) )
))
(declare-fun getValueByKey!761 (List!36397 (_ BitVec 64)) Option!836)

(assert (=> b!1554704 (= e!865773 (= (getValueByKey!761 lt!670088 otherKey!50) (getValueByKey!761 (t!51125 l!1177) otherKey!50)))))

(assert (= (and start!132722 res!1063998) b!1554706))

(assert (= (and b!1554706 res!1063996) b!1554702))

(assert (= (and b!1554702 res!1063995) b!1554703))

(assert (= (and b!1554703 res!1063997) b!1554704))

(assert (= (and start!132722 (is-Cons!36393 l!1177)) b!1554705))

(declare-fun m!1432955 () Bool)

(assert (=> b!1554702 m!1432955))

(declare-fun m!1432957 () Bool)

(assert (=> b!1554703 m!1432957))

(declare-fun m!1432959 () Bool)

(assert (=> b!1554703 m!1432959))

(declare-fun m!1432961 () Bool)

(assert (=> b!1554703 m!1432961))

(declare-fun m!1432963 () Bool)

(assert (=> b!1554703 m!1432963))

(declare-fun m!1432965 () Bool)

(assert (=> start!132722 m!1432965))

(declare-fun m!1432967 () Bool)

(assert (=> b!1554704 m!1432967))

(declare-fun m!1432969 () Bool)

(assert (=> b!1554704 m!1432969))

(push 1)

(assert (not b!1554704))

(assert tp_is_empty!38273)

(assert (not b!1554703))

(assert (not b!1554705))

(assert (not start!132722))

(assert (not b!1554702))

