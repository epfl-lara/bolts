; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132766 () Bool)

(assert start!132766)

(declare-datatypes ((B!2276 0))(
  ( (B!2277 (val!19224 Int)) )
))
(declare-datatypes ((tuple2!24964 0))(
  ( (tuple2!24965 (_1!12492 (_ BitVec 64)) (_2!12492 B!2276)) )
))
(declare-datatypes ((List!36404 0))(
  ( (Nil!36401) (Cons!36400 (h!37847 tuple2!24964) (t!51132 List!36404)) )
))
(declare-fun lt!670152 () List!36404)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun b!1555062 () Bool)

(declare-fun e!866000 () Bool)

(declare-fun l!1177 () List!36404)

(declare-datatypes ((Option!843 0))(
  ( (Some!842 (v!22023 B!2276)) (None!841) )
))
(declare-fun getValueByKey!768 (List!36404 (_ BitVec 64)) Option!843)

(assert (=> b!1555062 (= e!866000 (= (getValueByKey!768 lt!670152 otherKey!50) (getValueByKey!768 (t!51132 l!1177) otherKey!50)))))

(declare-fun b!1555063 () Bool)

(declare-fun res!1064176 () Bool)

(declare-fun e!865999 () Bool)

(assert (=> b!1555063 (=> (not res!1064176) (not e!865999))))

(declare-fun newKey!105 () (_ BitVec 64))

(assert (=> b!1555063 (= res!1064176 (and (not (= newKey!105 otherKey!50)) (is-Cons!36400 l!1177) (not (= (_1!12492 (h!37847 l!1177)) otherKey!50))))))

(declare-fun b!1555064 () Bool)

(assert (=> b!1555064 (= e!865999 (not true))))

(declare-fun newValue!105 () B!2276)

(declare-fun lt!670153 () Bool)

(declare-fun containsKey!786 (List!36404 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!528 (List!36404 (_ BitVec 64) B!2276) List!36404)

(assert (=> b!1555064 (= lt!670153 (containsKey!786 (insertStrictlySorted!528 l!1177 newKey!105 newValue!105) otherKey!50))))

(assert (=> b!1555064 e!866000))

(declare-fun res!1064175 () Bool)

(assert (=> b!1555064 (=> (not res!1064175) (not e!866000))))

(assert (=> b!1555064 (= res!1064175 (= (containsKey!786 lt!670152 otherKey!50) (containsKey!786 (t!51132 l!1177) otherKey!50)))))

(assert (=> b!1555064 (= lt!670152 (insertStrictlySorted!528 (t!51132 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51755 0))(
  ( (Unit!51756) )
))
(declare-fun lt!670154 () Unit!51755)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!25 (List!36404 (_ BitVec 64) B!2276 (_ BitVec 64)) Unit!51755)

(assert (=> b!1555064 (= lt!670154 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!25 (t!51132 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555065 () Bool)

(declare-fun res!1064177 () Bool)

(assert (=> b!1555065 (=> (not res!1064177) (not e!865999))))

(declare-fun isStrictlySorted!914 (List!36404) Bool)

(assert (=> b!1555065 (= res!1064177 (isStrictlySorted!914 (t!51132 l!1177)))))

(declare-fun res!1064178 () Bool)

(assert (=> start!132766 (=> (not res!1064178) (not e!865999))))

(assert (=> start!132766 (= res!1064178 (isStrictlySorted!914 l!1177))))

(assert (=> start!132766 e!865999))

(declare-fun e!866001 () Bool)

(assert (=> start!132766 e!866001))

(assert (=> start!132766 true))

(declare-fun tp_is_empty!38287 () Bool)

(assert (=> start!132766 tp_is_empty!38287))

(declare-fun b!1555066 () Bool)

(declare-fun tp!112264 () Bool)

(assert (=> b!1555066 (= e!866001 (and tp_is_empty!38287 tp!112264))))

(assert (= (and start!132766 res!1064178) b!1555063))

(assert (= (and b!1555063 res!1064176) b!1555065))

(assert (= (and b!1555065 res!1064177) b!1555064))

(assert (= (and b!1555064 res!1064175) b!1555062))

(assert (= (and start!132766 (is-Cons!36400 l!1177)) b!1555066))

(declare-fun m!1433187 () Bool)

(assert (=> b!1555062 m!1433187))

(declare-fun m!1433189 () Bool)

(assert (=> b!1555062 m!1433189))

(declare-fun m!1433191 () Bool)

(assert (=> b!1555064 m!1433191))

(declare-fun m!1433193 () Bool)

(assert (=> b!1555064 m!1433193))

(declare-fun m!1433195 () Bool)

(assert (=> b!1555064 m!1433195))

(declare-fun m!1433197 () Bool)

(assert (=> b!1555064 m!1433197))

(declare-fun m!1433199 () Bool)

(assert (=> b!1555064 m!1433199))

(assert (=> b!1555064 m!1433195))

(declare-fun m!1433201 () Bool)

(assert (=> b!1555064 m!1433201))

(declare-fun m!1433203 () Bool)

(assert (=> b!1555065 m!1433203))

(declare-fun m!1433205 () Bool)

(assert (=> start!132766 m!1433205))

(push 1)

(assert (not start!132766))

(assert (not b!1555066))

(assert (not b!1555064))

(assert (not b!1555065))

(assert tp_is_empty!38287)

(assert (not b!1555062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

