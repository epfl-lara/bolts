; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75116 () Bool)

(assert start!75116)

(declare-fun b!885116 () Bool)

(declare-fun res!601282 () Bool)

(declare-fun e!492637 () Bool)

(assert (=> b!885116 (=> (not res!601282) (not e!492637))))

(declare-datatypes ((B!1244 0))(
  ( (B!1245 (val!8928 Int)) )
))
(declare-datatypes ((tuple2!11876 0))(
  ( (tuple2!11877 (_1!5948 (_ BitVec 64)) (_2!5948 B!1244)) )
))
(declare-datatypes ((List!17728 0))(
  ( (Nil!17725) (Cons!17724 (h!18855 tuple2!11876) (t!25013 List!17728)) )
))
(declare-fun l!906 () List!17728)

(declare-fun isStrictlySorted!464 (List!17728) Bool)

(assert (=> b!885116 (= res!601282 (isStrictlySorted!464 (t!25013 l!906)))))

(declare-fun b!885117 () Bool)

(assert (=> b!885117 (= e!492637 (not true))))

(declare-fun v2!16 () B!1244)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1244)

(declare-fun insertStrictlySorted!285 (List!17728 (_ BitVec 64) B!1244) List!17728)

(assert (=> b!885117 (= (insertStrictlySorted!285 (insertStrictlySorted!285 (t!25013 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!285 (t!25013 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30187 0))(
  ( (Unit!30188) )
))
(declare-fun lt!400929 () Unit!30187)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!4 (List!17728 (_ BitVec 64) B!1244 B!1244) Unit!30187)

(assert (=> b!885117 (= lt!400929 (lemmaInsertStrictlySortedErasesIfSameKey!4 (t!25013 l!906) key1!49 v1!38 v2!16))))

(declare-fun res!601283 () Bool)

(assert (=> start!75116 (=> (not res!601283) (not e!492637))))

(assert (=> start!75116 (= res!601283 (isStrictlySorted!464 l!906))))

(assert (=> start!75116 e!492637))

(declare-fun e!492638 () Bool)

(assert (=> start!75116 e!492638))

(assert (=> start!75116 true))

(declare-fun tp_is_empty!17755 () Bool)

(assert (=> start!75116 tp_is_empty!17755))

(declare-fun b!885118 () Bool)

(declare-fun tp!54240 () Bool)

(assert (=> b!885118 (= e!492638 (and tp_is_empty!17755 tp!54240))))

(declare-fun b!885115 () Bool)

(declare-fun res!601281 () Bool)

(assert (=> b!885115 (=> (not res!601281) (not e!492637))))

(assert (=> b!885115 (= res!601281 (and (is-Cons!17724 l!906) (bvslt (_1!5948 (h!18855 l!906)) key1!49)))))

(assert (= (and start!75116 res!601283) b!885115))

(assert (= (and b!885115 res!601281) b!885116))

(assert (= (and b!885116 res!601282) b!885117))

(assert (= (and start!75116 (is-Cons!17724 l!906)) b!885118))

(declare-fun m!825479 () Bool)

(assert (=> b!885116 m!825479))

(declare-fun m!825481 () Bool)

(assert (=> b!885117 m!825481))

(assert (=> b!885117 m!825481))

(declare-fun m!825483 () Bool)

(assert (=> b!885117 m!825483))

(declare-fun m!825485 () Bool)

(assert (=> b!885117 m!825485))

(declare-fun m!825487 () Bool)

(assert (=> b!885117 m!825487))

(declare-fun m!825489 () Bool)

(assert (=> start!75116 m!825489))

(push 1)

(assert (not b!885116))

(assert (not b!885117))

(assert tp_is_empty!17755)

(assert (not start!75116))

(assert (not b!885118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

