; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132720 () Bool)

(assert start!132720)

(declare-fun b!1554687 () Bool)

(declare-fun res!1063984 () Bool)

(declare-fun e!865764 () Bool)

(assert (=> b!1554687 (=> (not res!1063984) (not e!865764))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2260 0))(
  ( (B!2261 (val!19216 Int)) )
))
(declare-datatypes ((tuple2!24948 0))(
  ( (tuple2!24949 (_1!12484 (_ BitVec 64)) (_2!12484 B!2260)) )
))
(declare-datatypes ((List!36396 0))(
  ( (Nil!36393) (Cons!36392 (h!37839 tuple2!24948) (t!51124 List!36396)) )
))
(declare-fun l!1177 () List!36396)

(get-info :version)

(assert (=> b!1554687 (= res!1063984 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36392) l!1177) (not (= (_1!12484 (h!37839 l!1177)) otherKey!50))))))

(declare-fun b!1554688 () Bool)

(declare-fun res!1063986 () Bool)

(assert (=> b!1554688 (=> (not res!1063986) (not e!865764))))

(declare-fun isStrictlySorted!906 (List!36396) Bool)

(assert (=> b!1554688 (= res!1063986 (isStrictlySorted!906 (t!51124 l!1177)))))

(declare-fun res!1063985 () Bool)

(assert (=> start!132720 (=> (not res!1063985) (not e!865764))))

(assert (=> start!132720 (= res!1063985 (isStrictlySorted!906 l!1177))))

(assert (=> start!132720 e!865764))

(declare-fun e!865762 () Bool)

(assert (=> start!132720 e!865762))

(assert (=> start!132720 true))

(declare-fun tp_is_empty!38271 () Bool)

(assert (=> start!132720 tp_is_empty!38271))

(declare-fun e!865763 () Bool)

(declare-fun lt!670082 () List!36396)

(declare-fun b!1554689 () Bool)

(declare-datatypes ((Option!835 0))(
  ( (Some!834 (v!22015 B!2260)) (None!833) )
))
(declare-fun getValueByKey!760 (List!36396 (_ BitVec 64)) Option!835)

(assert (=> b!1554689 (= e!865763 (= (getValueByKey!760 lt!670082 otherKey!50) (getValueByKey!760 (t!51124 l!1177) otherKey!50)))))

(declare-fun b!1554690 () Bool)

(assert (=> b!1554690 (= e!865764 (not true))))

(assert (=> b!1554690 e!865763))

(declare-fun res!1063983 () Bool)

(assert (=> b!1554690 (=> (not res!1063983) (not e!865763))))

(declare-fun containsKey!778 (List!36396 (_ BitVec 64)) Bool)

(assert (=> b!1554690 (= res!1063983 (= (containsKey!778 lt!670082 otherKey!50) (containsKey!778 (t!51124 l!1177) otherKey!50)))))

(declare-fun newValue!105 () B!2260)

(declare-fun insertStrictlySorted!520 (List!36396 (_ BitVec 64) B!2260) List!36396)

(assert (=> b!1554690 (= lt!670082 (insertStrictlySorted!520 (t!51124 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51739 0))(
  ( (Unit!51740) )
))
(declare-fun lt!670081 () Unit!51739)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!17 (List!36396 (_ BitVec 64) B!2260 (_ BitVec 64)) Unit!51739)

(assert (=> b!1554690 (= lt!670081 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!17 (t!51124 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1554691 () Bool)

(declare-fun tp!112231 () Bool)

(assert (=> b!1554691 (= e!865762 (and tp_is_empty!38271 tp!112231))))

(assert (= (and start!132720 res!1063985) b!1554687))

(assert (= (and b!1554687 res!1063984) b!1554688))

(assert (= (and b!1554688 res!1063986) b!1554690))

(assert (= (and b!1554690 res!1063983) b!1554689))

(assert (= (and start!132720 ((_ is Cons!36392) l!1177)) b!1554691))

(declare-fun m!1432939 () Bool)

(assert (=> b!1554688 m!1432939))

(declare-fun m!1432941 () Bool)

(assert (=> start!132720 m!1432941))

(declare-fun m!1432943 () Bool)

(assert (=> b!1554689 m!1432943))

(declare-fun m!1432945 () Bool)

(assert (=> b!1554689 m!1432945))

(declare-fun m!1432947 () Bool)

(assert (=> b!1554690 m!1432947))

(declare-fun m!1432949 () Bool)

(assert (=> b!1554690 m!1432949))

(declare-fun m!1432951 () Bool)

(assert (=> b!1554690 m!1432951))

(declare-fun m!1432953 () Bool)

(assert (=> b!1554690 m!1432953))

(check-sat (not b!1554691) (not start!132720) tp_is_empty!38271 (not b!1554689) (not b!1554688) (not b!1554690))
