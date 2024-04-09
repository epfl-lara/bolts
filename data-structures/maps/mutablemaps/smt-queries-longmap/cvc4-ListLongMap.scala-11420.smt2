; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133148 () Bool)

(assert start!133148)

(declare-fun b!1557542 () Bool)

(declare-fun res!1065426 () Bool)

(declare-fun e!867639 () Bool)

(assert (=> b!1557542 (=> (not res!1065426) (not e!867639))))

(declare-datatypes ((B!2400 0))(
  ( (B!2401 (val!19286 Int)) )
))
(declare-datatypes ((tuple2!25088 0))(
  ( (tuple2!25089 (_1!12554 (_ BitVec 64)) (_2!12554 B!2400)) )
))
(declare-datatypes ((List!36466 0))(
  ( (Nil!36463) (Cons!36462 (h!37909 tuple2!25088) (t!51200 List!36466)) )
))
(declare-fun l!1292 () List!36466)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!824 (List!36466 (_ BitVec 64)) Bool)

(assert (=> b!1557542 (= res!1065426 (containsKey!824 (t!51200 l!1292) otherKey!62))))

(declare-fun b!1557543 () Bool)

(declare-fun res!1065425 () Bool)

(assert (=> b!1557543 (=> (not res!1065425) (not e!867639))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1557543 (= res!1065425 (and (not (= otherKey!62 newKey!135)) (is-Cons!36462 l!1292) (not (= (_1!12554 (h!37909 l!1292)) otherKey!62))))))

(declare-fun b!1557544 () Bool)

(declare-fun res!1065422 () Bool)

(assert (=> b!1557544 (=> (not res!1065422) (not e!867639))))

(assert (=> b!1557544 (= res!1065422 (containsKey!824 l!1292 otherKey!62))))

(declare-fun res!1065424 () Bool)

(assert (=> start!133148 (=> (not res!1065424) (not e!867639))))

(declare-fun isStrictlySorted!960 (List!36466) Bool)

(assert (=> start!133148 (= res!1065424 (isStrictlySorted!960 l!1292))))

(assert (=> start!133148 e!867639))

(declare-fun e!867638 () Bool)

(assert (=> start!133148 e!867638))

(assert (=> start!133148 true))

(declare-fun tp_is_empty!38405 () Bool)

(assert (=> start!133148 tp_is_empty!38405))

(declare-fun b!1557545 () Bool)

(assert (=> b!1557545 (= e!867639 (not true))))

(declare-fun newValue!135 () B!2400)

(declare-fun insertStrictlySorted!562 (List!36466 (_ BitVec 64) B!2400) List!36466)

(assert (=> b!1557545 (containsKey!824 (insertStrictlySorted!562 (t!51200 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51816 0))(
  ( (Unit!51817) )
))
(declare-fun lt!670646 () Unit!51816)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!6 (List!36466 (_ BitVec 64) B!2400 (_ BitVec 64)) Unit!51816)

(assert (=> b!1557545 (= lt!670646 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!6 (t!51200 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1557546 () Bool)

(declare-fun tp!112555 () Bool)

(assert (=> b!1557546 (= e!867638 (and tp_is_empty!38405 tp!112555))))

(declare-fun b!1557547 () Bool)

(declare-fun res!1065423 () Bool)

(assert (=> b!1557547 (=> (not res!1065423) (not e!867639))))

(assert (=> b!1557547 (= res!1065423 (isStrictlySorted!960 (t!51200 l!1292)))))

(assert (= (and start!133148 res!1065424) b!1557544))

(assert (= (and b!1557544 res!1065422) b!1557543))

(assert (= (and b!1557543 res!1065425) b!1557547))

(assert (= (and b!1557547 res!1065423) b!1557542))

(assert (= (and b!1557542 res!1065426) b!1557545))

(assert (= (and start!133148 (is-Cons!36462 l!1292)) b!1557546))

(declare-fun m!1434667 () Bool)

(assert (=> b!1557544 m!1434667))

(declare-fun m!1434669 () Bool)

(assert (=> b!1557545 m!1434669))

(assert (=> b!1557545 m!1434669))

(declare-fun m!1434671 () Bool)

(assert (=> b!1557545 m!1434671))

(declare-fun m!1434673 () Bool)

(assert (=> b!1557545 m!1434673))

(declare-fun m!1434675 () Bool)

(assert (=> b!1557542 m!1434675))

(declare-fun m!1434677 () Bool)

(assert (=> b!1557547 m!1434677))

(declare-fun m!1434679 () Bool)

(assert (=> start!133148 m!1434679))

(push 1)

(assert (not b!1557546))

(assert (not b!1557547))

(assert (not b!1557542))

(assert (not start!133148))

(assert tp_is_empty!38405)

(assert (not b!1557545))

(assert (not b!1557544))

(check-sat)

