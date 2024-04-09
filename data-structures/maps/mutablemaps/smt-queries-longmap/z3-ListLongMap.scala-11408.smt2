; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132876 () Bool)

(assert start!132876)

(declare-fun res!1064573 () Bool)

(declare-fun e!866532 () Bool)

(assert (=> start!132876 (=> (not res!1064573) (not e!866532))))

(declare-datatypes ((B!2326 0))(
  ( (B!2327 (val!19249 Int)) )
))
(declare-datatypes ((tuple2!25014 0))(
  ( (tuple2!25015 (_1!12517 (_ BitVec 64)) (_2!12517 B!2326)) )
))
(declare-datatypes ((List!36429 0))(
  ( (Nil!36426) (Cons!36425 (h!37872 tuple2!25014) (t!51157 List!36429)) )
))
(declare-fun l!1177 () List!36429)

(declare-fun isStrictlySorted!933 (List!36429) Bool)

(assert (=> start!132876 (= res!1064573 (isStrictlySorted!933 l!1177))))

(assert (=> start!132876 e!866532))

(declare-fun e!866531 () Bool)

(assert (=> start!132876 e!866531))

(assert (=> start!132876 true))

(declare-fun tp_is_empty!38337 () Bool)

(assert (=> start!132876 tp_is_empty!38337))

(declare-fun b!1555868 () Bool)

(declare-fun res!1064574 () Bool)

(assert (=> b!1555868 (=> (not res!1064574) (not e!866532))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1555868 (= res!1064574 (and (not (= newKey!105 otherKey!50)) (or (not ((_ is Cons!36425) l!1177)) (= (_1!12517 (h!37872 l!1177)) otherKey!50))))))

(declare-fun b!1555869 () Bool)

(assert (=> b!1555869 (= e!866532 false)))

(declare-fun lt!670289 () Bool)

(declare-fun newValue!105 () B!2326)

(declare-fun containsKey!805 (List!36429 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!547 (List!36429 (_ BitVec 64) B!2326) List!36429)

(assert (=> b!1555869 (= lt!670289 (containsKey!805 (insertStrictlySorted!547 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555870 () Bool)

(declare-fun tp!112366 () Bool)

(assert (=> b!1555870 (= e!866531 (and tp_is_empty!38337 tp!112366))))

(assert (= (and start!132876 res!1064573) b!1555868))

(assert (= (and b!1555868 res!1064574) b!1555869))

(assert (= (and start!132876 ((_ is Cons!36425) l!1177)) b!1555870))

(declare-fun m!1433661 () Bool)

(assert (=> start!132876 m!1433661))

(declare-fun m!1433663 () Bool)

(assert (=> b!1555869 m!1433663))

(assert (=> b!1555869 m!1433663))

(declare-fun m!1433665 () Bool)

(assert (=> b!1555869 m!1433665))

(check-sat (not start!132876) (not b!1555869) (not b!1555870) tp_is_empty!38337)
(check-sat)
