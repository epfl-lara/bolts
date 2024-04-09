; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132760 () Bool)

(assert start!132760)

(declare-fun b!1555018 () Bool)

(declare-fun res!1064140 () Bool)

(declare-fun e!865974 () Bool)

(assert (=> b!1555018 (=> (not res!1064140) (not e!865974))))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2270 0))(
  ( (B!2271 (val!19221 Int)) )
))
(declare-datatypes ((tuple2!24958 0))(
  ( (tuple2!24959 (_1!12489 (_ BitVec 64)) (_2!12489 B!2270)) )
))
(declare-datatypes ((List!36401 0))(
  ( (Nil!36398) (Cons!36397 (h!37844 tuple2!24958) (t!51129 List!36401)) )
))
(declare-fun l!1177 () List!36401)

(declare-fun newKey!105 () (_ BitVec 64))

(assert (=> b!1555018 (= res!1064140 (and (not (= newKey!105 otherKey!50)) (is-Cons!36397 l!1177) (not (= (_1!12489 (h!37844 l!1177)) otherKey!50))))))

(declare-fun e!865972 () Bool)

(declare-fun b!1555019 () Bool)

(declare-fun lt!670133 () List!36401)

(declare-datatypes ((Option!840 0))(
  ( (Some!839 (v!22020 B!2270)) (None!838) )
))
(declare-fun getValueByKey!765 (List!36401 (_ BitVec 64)) Option!840)

(assert (=> b!1555019 (= e!865972 (= (getValueByKey!765 lt!670133 otherKey!50) (getValueByKey!765 (t!51129 l!1177) otherKey!50)))))

(declare-fun b!1555020 () Bool)

(declare-fun res!1064142 () Bool)

(assert (=> b!1555020 (=> (not res!1064142) (not e!865974))))

(declare-fun isStrictlySorted!911 (List!36401) Bool)

(assert (=> b!1555020 (= res!1064142 (isStrictlySorted!911 (t!51129 l!1177)))))

(declare-fun b!1555021 () Bool)

(assert (=> b!1555021 (= e!865974 (not true))))

(assert (=> b!1555021 e!865972))

(declare-fun res!1064141 () Bool)

(assert (=> b!1555021 (=> (not res!1064141) (not e!865972))))

(declare-fun containsKey!783 (List!36401 (_ BitVec 64)) Bool)

(assert (=> b!1555021 (= res!1064141 (= (containsKey!783 lt!670133 otherKey!50) (containsKey!783 (t!51129 l!1177) otherKey!50)))))

(declare-fun newValue!105 () B!2270)

(declare-fun insertStrictlySorted!525 (List!36401 (_ BitVec 64) B!2270) List!36401)

(assert (=> b!1555021 (= lt!670133 (insertStrictlySorted!525 (t!51129 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51749 0))(
  ( (Unit!51750) )
))
(declare-fun lt!670132 () Unit!51749)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!22 (List!36401 (_ BitVec 64) B!2270 (_ BitVec 64)) Unit!51749)

(assert (=> b!1555021 (= lt!670132 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!22 (t!51129 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun res!1064139 () Bool)

(assert (=> start!132760 (=> (not res!1064139) (not e!865974))))

(assert (=> start!132760 (= res!1064139 (isStrictlySorted!911 l!1177))))

(assert (=> start!132760 e!865974))

(declare-fun e!865973 () Bool)

(assert (=> start!132760 e!865973))

(assert (=> start!132760 true))

(declare-fun tp_is_empty!38281 () Bool)

(assert (=> start!132760 tp_is_empty!38281))

(declare-fun b!1555017 () Bool)

(declare-fun tp!112255 () Bool)

(assert (=> b!1555017 (= e!865973 (and tp_is_empty!38281 tp!112255))))

(assert (= (and start!132760 res!1064139) b!1555018))

(assert (= (and b!1555018 res!1064140) b!1555020))

(assert (= (and b!1555020 res!1064142) b!1555021))

(assert (= (and b!1555021 res!1064141) b!1555019))

(assert (= (and start!132760 (is-Cons!36397 l!1177)) b!1555017))

(declare-fun m!1433139 () Bool)

(assert (=> b!1555019 m!1433139))

(declare-fun m!1433141 () Bool)

(assert (=> b!1555019 m!1433141))

(declare-fun m!1433143 () Bool)

(assert (=> b!1555020 m!1433143))

(declare-fun m!1433145 () Bool)

(assert (=> b!1555021 m!1433145))

(declare-fun m!1433147 () Bool)

(assert (=> b!1555021 m!1433147))

(declare-fun m!1433149 () Bool)

(assert (=> b!1555021 m!1433149))

(declare-fun m!1433151 () Bool)

(assert (=> b!1555021 m!1433151))

(declare-fun m!1433153 () Bool)

(assert (=> start!132760 m!1433153))

(push 1)

(assert (not start!132760))

(assert tp_is_empty!38281)

(assert (not b!1555020))

(assert (not b!1555019))

(assert (not b!1555017))

(assert (not b!1555021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

