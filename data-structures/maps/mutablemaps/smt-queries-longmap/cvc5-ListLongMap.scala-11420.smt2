; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133144 () Bool)

(assert start!133144)

(declare-fun b!1557507 () Bool)

(declare-fun e!867626 () Bool)

(assert (=> b!1557507 (= e!867626 (not true))))

(declare-fun newKey!135 () (_ BitVec 64))

(declare-datatypes ((B!2396 0))(
  ( (B!2397 (val!19284 Int)) )
))
(declare-datatypes ((tuple2!25084 0))(
  ( (tuple2!25085 (_1!12552 (_ BitVec 64)) (_2!12552 B!2396)) )
))
(declare-datatypes ((List!36464 0))(
  ( (Nil!36461) (Cons!36460 (h!37907 tuple2!25084) (t!51198 List!36464)) )
))
(declare-fun l!1292 () List!36464)

(declare-fun newValue!135 () B!2396)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!822 (List!36464 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!560 (List!36464 (_ BitVec 64) B!2396) List!36464)

(assert (=> b!1557507 (containsKey!822 (insertStrictlySorted!560 (t!51198 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51812 0))(
  ( (Unit!51813) )
))
(declare-fun lt!670640 () Unit!51812)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!4 (List!36464 (_ BitVec 64) B!2396 (_ BitVec 64)) Unit!51812)

(assert (=> b!1557507 (= lt!670640 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!4 (t!51198 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1557508 () Bool)

(declare-fun res!1065395 () Bool)

(assert (=> b!1557508 (=> (not res!1065395) (not e!867626))))

(assert (=> b!1557508 (= res!1065395 (and (not (= otherKey!62 newKey!135)) (is-Cons!36460 l!1292) (not (= (_1!12552 (h!37907 l!1292)) otherKey!62))))))

(declare-fun res!1065392 () Bool)

(assert (=> start!133144 (=> (not res!1065392) (not e!867626))))

(declare-fun isStrictlySorted!958 (List!36464) Bool)

(assert (=> start!133144 (= res!1065392 (isStrictlySorted!958 l!1292))))

(assert (=> start!133144 e!867626))

(declare-fun e!867627 () Bool)

(assert (=> start!133144 e!867627))

(assert (=> start!133144 true))

(declare-fun tp_is_empty!38401 () Bool)

(assert (=> start!133144 tp_is_empty!38401))

(declare-fun b!1557506 () Bool)

(declare-fun res!1065393 () Bool)

(assert (=> b!1557506 (=> (not res!1065393) (not e!867626))))

(assert (=> b!1557506 (= res!1065393 (containsKey!822 (t!51198 l!1292) otherKey!62))))

(declare-fun b!1557509 () Bool)

(declare-fun res!1065394 () Bool)

(assert (=> b!1557509 (=> (not res!1065394) (not e!867626))))

(assert (=> b!1557509 (= res!1065394 (containsKey!822 l!1292 otherKey!62))))

(declare-fun b!1557510 () Bool)

(declare-fun res!1065396 () Bool)

(assert (=> b!1557510 (=> (not res!1065396) (not e!867626))))

(assert (=> b!1557510 (= res!1065396 (isStrictlySorted!958 (t!51198 l!1292)))))

(declare-fun b!1557511 () Bool)

(declare-fun tp!112549 () Bool)

(assert (=> b!1557511 (= e!867627 (and tp_is_empty!38401 tp!112549))))

(assert (= (and start!133144 res!1065392) b!1557509))

(assert (= (and b!1557509 res!1065394) b!1557508))

(assert (= (and b!1557508 res!1065395) b!1557510))

(assert (= (and b!1557510 res!1065396) b!1557506))

(assert (= (and b!1557506 res!1065393) b!1557507))

(assert (= (and start!133144 (is-Cons!36460 l!1292)) b!1557511))

(declare-fun m!1434639 () Bool)

(assert (=> b!1557507 m!1434639))

(assert (=> b!1557507 m!1434639))

(declare-fun m!1434641 () Bool)

(assert (=> b!1557507 m!1434641))

(declare-fun m!1434643 () Bool)

(assert (=> b!1557507 m!1434643))

(declare-fun m!1434645 () Bool)

(assert (=> b!1557509 m!1434645))

(declare-fun m!1434647 () Bool)

(assert (=> b!1557506 m!1434647))

(declare-fun m!1434649 () Bool)

(assert (=> start!133144 m!1434649))

(declare-fun m!1434651 () Bool)

(assert (=> b!1557510 m!1434651))

(push 1)

(assert (not b!1557511))

(assert tp_is_empty!38401)

(assert (not b!1557506))

(assert (not b!1557509))

(assert (not b!1557510))

(assert (not b!1557507))

(assert (not start!133144))

(check-sat)

(pop 1)

