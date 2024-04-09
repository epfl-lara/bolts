; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132810 () Bool)

(assert start!132810)

(declare-fun b!1555443 () Bool)

(declare-fun e!866250 () Bool)

(declare-fun tp_is_empty!38301 () Bool)

(declare-fun tp!112294 () Bool)

(assert (=> b!1555443 (= e!866250 (and tp_is_empty!38301 tp!112294))))

(declare-fun b!1555444 () Bool)

(declare-fun e!866249 () Bool)

(assert (=> b!1555444 (= e!866249 (not true))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun lt!670238 () Bool)

(declare-datatypes ((B!2290 0))(
  ( (B!2291 (val!19231 Int)) )
))
(declare-fun newValue!105 () B!2290)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((tuple2!24978 0))(
  ( (tuple2!24979 (_1!12499 (_ BitVec 64)) (_2!12499 B!2290)) )
))
(declare-datatypes ((List!36411 0))(
  ( (Nil!36408) (Cons!36407 (h!37854 tuple2!24978) (t!51139 List!36411)) )
))
(declare-fun l!1177 () List!36411)

(declare-fun containsKey!793 (List!36411 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!535 (List!36411 (_ BitVec 64) B!2290) List!36411)

(assert (=> b!1555444 (= lt!670238 (containsKey!793 (insertStrictlySorted!535 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun e!866248 () Bool)

(assert (=> b!1555444 e!866248))

(declare-fun res!1064378 () Bool)

(assert (=> b!1555444 (=> (not res!1064378) (not e!866248))))

(declare-fun lt!670236 () List!36411)

(assert (=> b!1555444 (= res!1064378 (= (containsKey!793 lt!670236 otherKey!50) (containsKey!793 (t!51139 l!1177) otherKey!50)))))

(assert (=> b!1555444 (= lt!670236 (insertStrictlySorted!535 (t!51139 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51769 0))(
  ( (Unit!51770) )
))
(declare-fun lt!670237 () Unit!51769)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!32 (List!36411 (_ BitVec 64) B!2290 (_ BitVec 64)) Unit!51769)

(assert (=> b!1555444 (= lt!670237 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!32 (t!51139 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun res!1064379 () Bool)

(assert (=> start!132810 (=> (not res!1064379) (not e!866249))))

(declare-fun isStrictlySorted!921 (List!36411) Bool)

(assert (=> start!132810 (= res!1064379 (isStrictlySorted!921 l!1177))))

(assert (=> start!132810 e!866249))

(assert (=> start!132810 e!866250))

(assert (=> start!132810 true))

(assert (=> start!132810 tp_is_empty!38301))

(declare-fun b!1555445 () Bool)

(declare-datatypes ((Option!850 0))(
  ( (Some!849 (v!22030 B!2290)) (None!848) )
))
(declare-fun getValueByKey!775 (List!36411 (_ BitVec 64)) Option!850)

(assert (=> b!1555445 (= e!866248 (= (getValueByKey!775 lt!670236 otherKey!50) (getValueByKey!775 (t!51139 l!1177) otherKey!50)))))

(declare-fun b!1555446 () Bool)

(declare-fun res!1064376 () Bool)

(assert (=> b!1555446 (=> (not res!1064376) (not e!866249))))

(assert (=> b!1555446 (= res!1064376 (isStrictlySorted!921 (t!51139 l!1177)))))

(declare-fun b!1555447 () Bool)

(declare-fun res!1064377 () Bool)

(assert (=> b!1555447 (=> (not res!1064377) (not e!866249))))

(get-info :version)

(assert (=> b!1555447 (= res!1064377 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36407) l!1177) (not (= (_1!12499 (h!37854 l!1177)) otherKey!50))))))

(assert (= (and start!132810 res!1064379) b!1555447))

(assert (= (and b!1555447 res!1064377) b!1555446))

(assert (= (and b!1555446 res!1064376) b!1555444))

(assert (= (and b!1555444 res!1064378) b!1555445))

(assert (= (and start!132810 ((_ is Cons!36407) l!1177)) b!1555443))

(declare-fun m!1433453 () Bool)

(assert (=> b!1555444 m!1433453))

(declare-fun m!1433455 () Bool)

(assert (=> b!1555444 m!1433455))

(declare-fun m!1433457 () Bool)

(assert (=> b!1555444 m!1433457))

(declare-fun m!1433459 () Bool)

(assert (=> b!1555444 m!1433459))

(declare-fun m!1433461 () Bool)

(assert (=> b!1555444 m!1433461))

(assert (=> b!1555444 m!1433455))

(declare-fun m!1433463 () Bool)

(assert (=> b!1555444 m!1433463))

(declare-fun m!1433465 () Bool)

(assert (=> start!132810 m!1433465))

(declare-fun m!1433467 () Bool)

(assert (=> b!1555445 m!1433467))

(declare-fun m!1433469 () Bool)

(assert (=> b!1555445 m!1433469))

(declare-fun m!1433471 () Bool)

(assert (=> b!1555446 m!1433471))

(check-sat tp_is_empty!38301 (not b!1555443) (not b!1555444) (not b!1555446) (not b!1555445) (not start!132810))
(check-sat)
