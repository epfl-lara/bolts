; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132764 () Bool)

(assert start!132764)

(declare-fun b!1555047 () Bool)

(declare-fun res!1064163 () Bool)

(declare-fun e!865990 () Bool)

(assert (=> b!1555047 (=> (not res!1064163) (not e!865990))))

(declare-datatypes ((B!2274 0))(
  ( (B!2275 (val!19223 Int)) )
))
(declare-datatypes ((tuple2!24962 0))(
  ( (tuple2!24963 (_1!12491 (_ BitVec 64)) (_2!12491 B!2274)) )
))
(declare-datatypes ((List!36403 0))(
  ( (Nil!36400) (Cons!36399 (h!37846 tuple2!24962) (t!51131 List!36403)) )
))
(declare-fun l!1177 () List!36403)

(declare-fun isStrictlySorted!913 (List!36403) Bool)

(assert (=> b!1555047 (= res!1064163 (isStrictlySorted!913 (t!51131 l!1177)))))

(declare-fun b!1555048 () Bool)

(assert (=> b!1555048 (= e!865990 (not true))))

(declare-fun e!865991 () Bool)

(assert (=> b!1555048 e!865991))

(declare-fun res!1064164 () Bool)

(assert (=> b!1555048 (=> (not res!1064164) (not e!865991))))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun lt!670145 () List!36403)

(declare-fun containsKey!785 (List!36403 (_ BitVec 64)) Bool)

(assert (=> b!1555048 (= res!1064164 (= (containsKey!785 lt!670145 otherKey!50) (containsKey!785 (t!51131 l!1177) otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2274)

(declare-fun insertStrictlySorted!527 (List!36403 (_ BitVec 64) B!2274) List!36403)

(assert (=> b!1555048 (= lt!670145 (insertStrictlySorted!527 (t!51131 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51753 0))(
  ( (Unit!51754) )
))
(declare-fun lt!670144 () Unit!51753)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!24 (List!36403 (_ BitVec 64) B!2274 (_ BitVec 64)) Unit!51753)

(assert (=> b!1555048 (= lt!670144 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!24 (t!51131 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun res!1064166 () Bool)

(assert (=> start!132764 (=> (not res!1064166) (not e!865990))))

(assert (=> start!132764 (= res!1064166 (isStrictlySorted!913 l!1177))))

(assert (=> start!132764 e!865990))

(declare-fun e!865992 () Bool)

(assert (=> start!132764 e!865992))

(assert (=> start!132764 true))

(declare-fun tp_is_empty!38285 () Bool)

(assert (=> start!132764 tp_is_empty!38285))

(declare-fun b!1555049 () Bool)

(declare-datatypes ((Option!842 0))(
  ( (Some!841 (v!22022 B!2274)) (None!840) )
))
(declare-fun getValueByKey!767 (List!36403 (_ BitVec 64)) Option!842)

(assert (=> b!1555049 (= e!865991 (= (getValueByKey!767 lt!670145 otherKey!50) (getValueByKey!767 (t!51131 l!1177) otherKey!50)))))

(declare-fun b!1555050 () Bool)

(declare-fun res!1064165 () Bool)

(assert (=> b!1555050 (=> (not res!1064165) (not e!865990))))

(assert (=> b!1555050 (= res!1064165 (and (not (= newKey!105 otherKey!50)) (is-Cons!36399 l!1177) (not (= (_1!12491 (h!37846 l!1177)) otherKey!50))))))

(declare-fun b!1555051 () Bool)

(declare-fun tp!112261 () Bool)

(assert (=> b!1555051 (= e!865992 (and tp_is_empty!38285 tp!112261))))

(assert (= (and start!132764 res!1064166) b!1555050))

(assert (= (and b!1555050 res!1064165) b!1555047))

(assert (= (and b!1555047 res!1064163) b!1555048))

(assert (= (and b!1555048 res!1064164) b!1555049))

(assert (= (and start!132764 (is-Cons!36399 l!1177)) b!1555051))

(declare-fun m!1433171 () Bool)

(assert (=> b!1555047 m!1433171))

(declare-fun m!1433173 () Bool)

(assert (=> b!1555048 m!1433173))

(declare-fun m!1433175 () Bool)

(assert (=> b!1555048 m!1433175))

(declare-fun m!1433177 () Bool)

(assert (=> b!1555048 m!1433177))

(declare-fun m!1433179 () Bool)

(assert (=> b!1555048 m!1433179))

(declare-fun m!1433181 () Bool)

(assert (=> start!132764 m!1433181))

(declare-fun m!1433183 () Bool)

(assert (=> b!1555049 m!1433183))

(declare-fun m!1433185 () Bool)

(assert (=> b!1555049 m!1433185))

(push 1)

(assert (not b!1555051))

(assert tp_is_empty!38285)

(assert (not b!1555049))

(assert (not b!1555047))

(assert (not b!1555048))

(assert (not start!132764))

(check-sat)

