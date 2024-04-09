; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132812 () Bool)

(assert start!132812)

(declare-fun b!1555458 () Bool)

(declare-fun e!866257 () Bool)

(declare-fun tp_is_empty!38303 () Bool)

(declare-fun tp!112297 () Bool)

(assert (=> b!1555458 (= e!866257 (and tp_is_empty!38303 tp!112297))))

(declare-fun b!1555459 () Bool)

(declare-fun res!1064388 () Bool)

(declare-fun e!866258 () Bool)

(assert (=> b!1555459 (=> (not res!1064388) (not e!866258))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2292 0))(
  ( (B!2293 (val!19232 Int)) )
))
(declare-datatypes ((tuple2!24980 0))(
  ( (tuple2!24981 (_1!12500 (_ BitVec 64)) (_2!12500 B!2292)) )
))
(declare-datatypes ((List!36412 0))(
  ( (Nil!36409) (Cons!36408 (h!37855 tuple2!24980) (t!51140 List!36412)) )
))
(declare-fun l!1177 () List!36412)

(assert (=> b!1555459 (= res!1064388 (and (not (= newKey!105 otherKey!50)) (is-Cons!36408 l!1177) (not (= (_1!12500 (h!37855 l!1177)) otherKey!50))))))

(declare-fun lt!670246 () List!36412)

(declare-fun e!866259 () Bool)

(declare-fun b!1555460 () Bool)

(declare-datatypes ((Option!851 0))(
  ( (Some!850 (v!22031 B!2292)) (None!849) )
))
(declare-fun getValueByKey!776 (List!36412 (_ BitVec 64)) Option!851)

(assert (=> b!1555460 (= e!866259 (= (getValueByKey!776 lt!670246 otherKey!50) (getValueByKey!776 (t!51140 l!1177) otherKey!50)))))

(declare-fun res!1064390 () Bool)

(assert (=> start!132812 (=> (not res!1064390) (not e!866258))))

(declare-fun isStrictlySorted!922 (List!36412) Bool)

(assert (=> start!132812 (= res!1064390 (isStrictlySorted!922 l!1177))))

(assert (=> start!132812 e!866258))

(assert (=> start!132812 e!866257))

(assert (=> start!132812 true))

(assert (=> start!132812 tp_is_empty!38303))

(declare-fun b!1555461 () Bool)

(declare-fun res!1064389 () Bool)

(assert (=> b!1555461 (=> (not res!1064389) (not e!866258))))

(assert (=> b!1555461 (= res!1064389 (isStrictlySorted!922 (t!51140 l!1177)))))

(declare-fun b!1555462 () Bool)

(assert (=> b!1555462 (= e!866258 (not true))))

(declare-fun lt!670247 () Bool)

(declare-fun newValue!105 () B!2292)

(declare-fun containsKey!794 (List!36412 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!536 (List!36412 (_ BitVec 64) B!2292) List!36412)

(assert (=> b!1555462 (= lt!670247 (containsKey!794 (insertStrictlySorted!536 l!1177 newKey!105 newValue!105) otherKey!50))))

(assert (=> b!1555462 e!866259))

(declare-fun res!1064391 () Bool)

(assert (=> b!1555462 (=> (not res!1064391) (not e!866259))))

(assert (=> b!1555462 (= res!1064391 (= (containsKey!794 lt!670246 otherKey!50) (containsKey!794 (t!51140 l!1177) otherKey!50)))))

(assert (=> b!1555462 (= lt!670246 (insertStrictlySorted!536 (t!51140 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51771 0))(
  ( (Unit!51772) )
))
(declare-fun lt!670245 () Unit!51771)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!33 (List!36412 (_ BitVec 64) B!2292 (_ BitVec 64)) Unit!51771)

(assert (=> b!1555462 (= lt!670245 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!33 (t!51140 l!1177) newKey!105 newValue!105 otherKey!50))))

(assert (= (and start!132812 res!1064390) b!1555459))

(assert (= (and b!1555459 res!1064388) b!1555461))

(assert (= (and b!1555461 res!1064389) b!1555462))

(assert (= (and b!1555462 res!1064391) b!1555460))

(assert (= (and start!132812 (is-Cons!36408 l!1177)) b!1555458))

(declare-fun m!1433473 () Bool)

(assert (=> b!1555460 m!1433473))

(declare-fun m!1433475 () Bool)

(assert (=> b!1555460 m!1433475))

(declare-fun m!1433477 () Bool)

(assert (=> start!132812 m!1433477))

(declare-fun m!1433479 () Bool)

(assert (=> b!1555461 m!1433479))

(declare-fun m!1433481 () Bool)

(assert (=> b!1555462 m!1433481))

(declare-fun m!1433483 () Bool)

(assert (=> b!1555462 m!1433483))

(declare-fun m!1433485 () Bool)

(assert (=> b!1555462 m!1433485))

(declare-fun m!1433487 () Bool)

(assert (=> b!1555462 m!1433487))

(declare-fun m!1433489 () Bool)

(assert (=> b!1555462 m!1433489))

(assert (=> b!1555462 m!1433483))

(declare-fun m!1433491 () Bool)

(assert (=> b!1555462 m!1433491))

(push 1)

(assert (not b!1555458))

(assert tp_is_empty!38303)

(assert (not b!1555462))

(assert (not b!1555460))

(assert (not b!1555461))

(assert (not start!132812))

(check-sat)

