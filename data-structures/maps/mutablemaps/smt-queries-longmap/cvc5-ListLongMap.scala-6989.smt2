; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88640 () Bool)

(assert start!88640)

(declare-fun b!1018271 () Bool)

(declare-fun e!572985 () Bool)

(assert (=> b!1018271 (= e!572985 (not true))))

(declare-datatypes ((B!1640 0))(
  ( (B!1641 (val!11904 Int)) )
))
(declare-datatypes ((tuple2!15444 0))(
  ( (tuple2!15445 (_1!7732 (_ BitVec 64)) (_2!7732 B!1640)) )
))
(declare-datatypes ((List!21706 0))(
  ( (Nil!21703) (Cons!21702 (h!22900 tuple2!15444) (t!30715 List!21706)) )
))
(declare-fun l!996 () List!21706)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun value!172 () B!1640)

(declare-fun length!41 (List!21706) Int)

(declare-fun insertStrictlySorted!338 (List!21706 (_ BitVec 64) B!1640) List!21706)

(assert (=> b!1018271 (= (length!41 (insertStrictlySorted!338 (t!30715 l!996) key!261 value!172)) (length!41 (t!30715 l!996)))))

(declare-datatypes ((Unit!33246 0))(
  ( (Unit!33247) )
))
(declare-fun lt!449502 () Unit!33246)

(declare-fun lemmaAddExistingKeyPreservesSize!1 (List!21706 (_ BitVec 64) B!1640) Unit!33246)

(assert (=> b!1018271 (= lt!449502 (lemmaAddExistingKeyPreservesSize!1 (t!30715 l!996) key!261 value!172))))

(declare-fun res!682896 () Bool)

(declare-fun e!572986 () Bool)

(assert (=> start!88640 (=> (not res!682896) (not e!572986))))

(declare-fun isStrictlySorted!653 (List!21706) Bool)

(assert (=> start!88640 (= res!682896 (isStrictlySorted!653 l!996))))

(assert (=> start!88640 e!572986))

(declare-fun e!572984 () Bool)

(assert (=> start!88640 e!572984))

(assert (=> start!88640 true))

(declare-fun tp_is_empty!23707 () Bool)

(assert (=> start!88640 tp_is_empty!23707))

(declare-fun b!1018272 () Bool)

(declare-fun res!682897 () Bool)

(assert (=> b!1018272 (=> (not res!682897) (not e!572986))))

(declare-fun containsKey!518 (List!21706 (_ BitVec 64)) Bool)

(assert (=> b!1018272 (= res!682897 (containsKey!518 l!996 key!261))))

(declare-fun b!1018273 () Bool)

(assert (=> b!1018273 (= e!572986 e!572985)))

(declare-fun res!682895 () Bool)

(assert (=> b!1018273 (=> (not res!682895) (not e!572985))))

(assert (=> b!1018273 (= res!682895 (and (is-Cons!21702 l!996) (bvslt (_1!7732 (h!22900 l!996)) key!261)))))

(declare-fun lt!449501 () List!21706)

(assert (=> b!1018273 (= lt!449501 (insertStrictlySorted!338 l!996 key!261 value!172))))

(declare-fun b!1018274 () Bool)

(declare-fun res!682899 () Bool)

(assert (=> b!1018274 (=> (not res!682899) (not e!572985))))

(assert (=> b!1018274 (= res!682899 (containsKey!518 (t!30715 l!996) key!261))))

(declare-fun b!1018275 () Bool)

(declare-fun tp!71030 () Bool)

(assert (=> b!1018275 (= e!572984 (and tp_is_empty!23707 tp!71030))))

(declare-fun b!1018276 () Bool)

(declare-fun res!682898 () Bool)

(assert (=> b!1018276 (=> (not res!682898) (not e!572985))))

(assert (=> b!1018276 (= res!682898 (isStrictlySorted!653 (t!30715 l!996)))))

(assert (= (and start!88640 res!682896) b!1018272))

(assert (= (and b!1018272 res!682897) b!1018273))

(assert (= (and b!1018273 res!682895) b!1018276))

(assert (= (and b!1018276 res!682898) b!1018274))

(assert (= (and b!1018274 res!682899) b!1018271))

(assert (= (and start!88640 (is-Cons!21702 l!996)) b!1018275))

(declare-fun m!939329 () Bool)

(assert (=> b!1018272 m!939329))

(declare-fun m!939331 () Bool)

(assert (=> start!88640 m!939331))

(declare-fun m!939333 () Bool)

(assert (=> b!1018273 m!939333))

(declare-fun m!939335 () Bool)

(assert (=> b!1018274 m!939335))

(declare-fun m!939337 () Bool)

(assert (=> b!1018271 m!939337))

(assert (=> b!1018271 m!939337))

(declare-fun m!939339 () Bool)

(assert (=> b!1018271 m!939339))

(declare-fun m!939341 () Bool)

(assert (=> b!1018271 m!939341))

(declare-fun m!939343 () Bool)

(assert (=> b!1018271 m!939343))

(declare-fun m!939345 () Bool)

(assert (=> b!1018276 m!939345))

(push 1)

