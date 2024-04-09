; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132846 () Bool)

(assert start!132846)

(declare-fun res!1064463 () Bool)

(declare-fun e!866384 () Bool)

(assert (=> start!132846 (=> (not res!1064463) (not e!866384))))

(declare-datatypes ((B!2314 0))(
  ( (B!2315 (val!19243 Int)) )
))
(declare-datatypes ((tuple2!25002 0))(
  ( (tuple2!25003 (_1!12511 (_ BitVec 64)) (_2!12511 B!2314)) )
))
(declare-datatypes ((List!36423 0))(
  ( (Nil!36420) (Cons!36419 (h!37866 tuple2!25002) (t!51151 List!36423)) )
))
(declare-fun l!1177 () List!36423)

(declare-fun isStrictlySorted!927 (List!36423) Bool)

(assert (=> start!132846 (= res!1064463 (isStrictlySorted!927 l!1177))))

(assert (=> start!132846 e!866384))

(declare-fun e!866385 () Bool)

(assert (=> start!132846 e!866385))

(assert (=> start!132846 true))

(declare-fun tp_is_empty!38325 () Bool)

(assert (=> start!132846 tp_is_empty!38325))

(declare-fun b!1555652 () Bool)

(declare-fun res!1064462 () Bool)

(assert (=> b!1555652 (=> (not res!1064462) (not e!866384))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1555652 (= res!1064462 (and (not (= newKey!105 otherKey!50)) (or (not ((_ is Cons!36419) l!1177)) (= (_1!12511 (h!37866 l!1177)) otherKey!50))))))

(declare-fun b!1555653 () Bool)

(assert (=> b!1555653 (= e!866384 false)))

(declare-fun newValue!105 () B!2314)

(declare-fun lt!670262 () Bool)

(declare-fun containsKey!799 (List!36423 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!541 (List!36423 (_ BitVec 64) B!2314) List!36423)

(assert (=> b!1555653 (= lt!670262 (containsKey!799 (insertStrictlySorted!541 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555654 () Bool)

(declare-fun tp!112339 () Bool)

(assert (=> b!1555654 (= e!866385 (and tp_is_empty!38325 tp!112339))))

(assert (= (and start!132846 res!1064463) b!1555652))

(assert (= (and b!1555652 res!1064462) b!1555653))

(assert (= (and start!132846 ((_ is Cons!36419) l!1177)) b!1555654))

(declare-fun m!1433559 () Bool)

(assert (=> start!132846 m!1433559))

(declare-fun m!1433561 () Bool)

(assert (=> b!1555653 m!1433561))

(assert (=> b!1555653 m!1433561))

(declare-fun m!1433563 () Bool)

(assert (=> b!1555653 m!1433563))

(check-sat (not b!1555653) (not start!132846) (not b!1555654) tp_is_empty!38325)
(check-sat)
