; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133146 () Bool)

(assert start!133146)

(declare-fun b!1557524 () Bool)

(declare-fun e!867633 () Bool)

(declare-fun tp_is_empty!38403 () Bool)

(declare-fun tp!112552 () Bool)

(assert (=> b!1557524 (= e!867633 (and tp_is_empty!38403 tp!112552))))

(declare-fun b!1557525 () Bool)

(declare-fun e!867632 () Bool)

(assert (=> b!1557525 (= e!867632 (not true))))

(declare-fun newKey!135 () (_ BitVec 64))

(declare-datatypes ((B!2398 0))(
  ( (B!2399 (val!19285 Int)) )
))
(declare-datatypes ((tuple2!25086 0))(
  ( (tuple2!25087 (_1!12553 (_ BitVec 64)) (_2!12553 B!2398)) )
))
(declare-datatypes ((List!36465 0))(
  ( (Nil!36462) (Cons!36461 (h!37908 tuple2!25086) (t!51199 List!36465)) )
))
(declare-fun l!1292 () List!36465)

(declare-fun newValue!135 () B!2398)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!823 (List!36465 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!561 (List!36465 (_ BitVec 64) B!2398) List!36465)

(assert (=> b!1557525 (containsKey!823 (insertStrictlySorted!561 (t!51199 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51814 0))(
  ( (Unit!51815) )
))
(declare-fun lt!670643 () Unit!51814)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!5 (List!36465 (_ BitVec 64) B!2398 (_ BitVec 64)) Unit!51814)

(assert (=> b!1557525 (= lt!670643 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!5 (t!51199 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1557526 () Bool)

(declare-fun res!1065411 () Bool)

(assert (=> b!1557526 (=> (not res!1065411) (not e!867632))))

(get-info :version)

(assert (=> b!1557526 (= res!1065411 (and (not (= otherKey!62 newKey!135)) ((_ is Cons!36461) l!1292) (not (= (_1!12553 (h!37908 l!1292)) otherKey!62))))))

(declare-fun b!1557528 () Bool)

(declare-fun res!1065410 () Bool)

(assert (=> b!1557528 (=> (not res!1065410) (not e!867632))))

(declare-fun isStrictlySorted!959 (List!36465) Bool)

(assert (=> b!1557528 (= res!1065410 (isStrictlySorted!959 (t!51199 l!1292)))))

(declare-fun b!1557529 () Bool)

(declare-fun res!1065408 () Bool)

(assert (=> b!1557529 (=> (not res!1065408) (not e!867632))))

(assert (=> b!1557529 (= res!1065408 (containsKey!823 (t!51199 l!1292) otherKey!62))))

(declare-fun res!1065407 () Bool)

(assert (=> start!133146 (=> (not res!1065407) (not e!867632))))

(assert (=> start!133146 (= res!1065407 (isStrictlySorted!959 l!1292))))

(assert (=> start!133146 e!867632))

(assert (=> start!133146 e!867633))

(assert (=> start!133146 true))

(assert (=> start!133146 tp_is_empty!38403))

(declare-fun b!1557527 () Bool)

(declare-fun res!1065409 () Bool)

(assert (=> b!1557527 (=> (not res!1065409) (not e!867632))))

(assert (=> b!1557527 (= res!1065409 (containsKey!823 l!1292 otherKey!62))))

(assert (= (and start!133146 res!1065407) b!1557527))

(assert (= (and b!1557527 res!1065409) b!1557526))

(assert (= (and b!1557526 res!1065411) b!1557528))

(assert (= (and b!1557528 res!1065410) b!1557529))

(assert (= (and b!1557529 res!1065408) b!1557525))

(assert (= (and start!133146 ((_ is Cons!36461) l!1292)) b!1557524))

(declare-fun m!1434653 () Bool)

(assert (=> start!133146 m!1434653))

(declare-fun m!1434655 () Bool)

(assert (=> b!1557525 m!1434655))

(assert (=> b!1557525 m!1434655))

(declare-fun m!1434657 () Bool)

(assert (=> b!1557525 m!1434657))

(declare-fun m!1434659 () Bool)

(assert (=> b!1557525 m!1434659))

(declare-fun m!1434661 () Bool)

(assert (=> b!1557529 m!1434661))

(declare-fun m!1434663 () Bool)

(assert (=> b!1557527 m!1434663))

(declare-fun m!1434665 () Bool)

(assert (=> b!1557528 m!1434665))

(check-sat tp_is_empty!38403 (not b!1557528) (not b!1557524) (not b!1557527) (not b!1557529) (not b!1557525) (not start!133146))
(check-sat)
