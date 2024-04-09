; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137996 () Bool)

(assert start!137996)

(declare-fun b!1583553 () Bool)

(declare-fun res!1081796 () Bool)

(declare-fun e!883967 () Bool)

(assert (=> b!1583553 (=> (not res!1081796) (not e!883967))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2886 0))(
  ( (B!2887 (val!19805 Int)) )
))
(declare-datatypes ((tuple2!25942 0))(
  ( (tuple2!25943 (_1!12981 (_ BitVec 64)) (_2!12981 B!2886)) )
))
(declare-datatypes ((List!37086 0))(
  ( (Nil!37083) (Cons!37082 (h!38626 tuple2!25942) (t!52007 List!37086)) )
))
(declare-fun l!1251 () List!37086)

(assert (=> b!1583553 (= res!1081796 (and (not (= otherKey!56 newKey!123)) (is-Cons!37082 l!1251)))))

(declare-fun b!1583554 () Bool)

(declare-fun e!883968 () Bool)

(declare-fun tp_is_empty!39419 () Bool)

(declare-fun tp!115021 () Bool)

(assert (=> b!1583554 (= e!883968 (and tp_is_empty!39419 tp!115021))))

(declare-fun res!1081795 () Bool)

(assert (=> start!137996 (=> (not res!1081795) (not e!883967))))

(declare-fun isStrictlySorted!1151 (List!37086) Bool)

(assert (=> start!137996 (= res!1081795 (isStrictlySorted!1151 l!1251))))

(assert (=> start!137996 e!883967))

(assert (=> start!137996 e!883968))

(assert (=> start!137996 true))

(assert (=> start!137996 tp_is_empty!39419))

(declare-fun b!1583555 () Bool)

(declare-fun res!1081794 () Bool)

(assert (=> b!1583555 (=> (not res!1081794) (not e!883967))))

(declare-fun containsKey!985 (List!37086 (_ BitVec 64)) Bool)

(assert (=> b!1583555 (= res!1081794 (not (containsKey!985 (t!52007 l!1251) otherKey!56)))))

(declare-fun b!1583556 () Bool)

(declare-fun res!1081792 () Bool)

(assert (=> b!1583556 (=> (not res!1081792) (not e!883967))))

(assert (=> b!1583556 (= res!1081792 (not (containsKey!985 l!1251 otherKey!56)))))

(declare-fun b!1583557 () Bool)

(declare-fun res!1081793 () Bool)

(assert (=> b!1583557 (=> (not res!1081793) (not e!883967))))

(assert (=> b!1583557 (= res!1081793 (isStrictlySorted!1151 (t!52007 l!1251)))))

(declare-fun b!1583558 () Bool)

(assert (=> b!1583558 (= e!883967 (not true))))

(declare-fun newValue!123 () B!2886)

(declare-fun insertStrictlySorted!618 (List!37086 (_ BitVec 64) B!2886) List!37086)

(assert (=> b!1583558 (not (containsKey!985 (insertStrictlySorted!618 (t!52007 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52227 0))(
  ( (Unit!52228) )
))
(declare-fun lt!677119 () Unit!52227)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!6 (List!37086 (_ BitVec 64) B!2886 (_ BitVec 64)) Unit!52227)

(assert (=> b!1583558 (= lt!677119 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!6 (t!52007 l!1251) newKey!123 newValue!123 otherKey!56))))

(assert (= (and start!137996 res!1081795) b!1583556))

(assert (= (and b!1583556 res!1081792) b!1583553))

(assert (= (and b!1583553 res!1081796) b!1583557))

(assert (= (and b!1583557 res!1081793) b!1583555))

(assert (= (and b!1583555 res!1081794) b!1583558))

(assert (= (and start!137996 (is-Cons!37082 l!1251)) b!1583554))

(declare-fun m!1453323 () Bool)

(assert (=> b!1583556 m!1453323))

(declare-fun m!1453325 () Bool)

(assert (=> b!1583557 m!1453325))

(declare-fun m!1453327 () Bool)

(assert (=> b!1583558 m!1453327))

(assert (=> b!1583558 m!1453327))

(declare-fun m!1453329 () Bool)

(assert (=> b!1583558 m!1453329))

(declare-fun m!1453331 () Bool)

(assert (=> b!1583558 m!1453331))

(declare-fun m!1453333 () Bool)

(assert (=> b!1583555 m!1453333))

(declare-fun m!1453335 () Bool)

(assert (=> start!137996 m!1453335))

(push 1)

(assert tp_is_empty!39419)

(assert (not b!1583554))

(assert (not b!1583556))

(assert (not b!1583555))

(assert (not b!1583557))

(assert (not b!1583558))

(assert (not start!137996))

(check-sat)

