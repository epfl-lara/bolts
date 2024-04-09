; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137994 () Bool)

(assert start!137994)

(declare-fun b!1583535 () Bool)

(declare-fun res!1081777 () Bool)

(declare-fun e!883961 () Bool)

(assert (=> b!1583535 (=> (not res!1081777) (not e!883961))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2884 0))(
  ( (B!2885 (val!19804 Int)) )
))
(declare-datatypes ((tuple2!25940 0))(
  ( (tuple2!25941 (_1!12980 (_ BitVec 64)) (_2!12980 B!2884)) )
))
(declare-datatypes ((List!37085 0))(
  ( (Nil!37082) (Cons!37081 (h!38625 tuple2!25940) (t!52006 List!37085)) )
))
(declare-fun l!1251 () List!37085)

(get-info :version)

(assert (=> b!1583535 (= res!1081777 (and (not (= otherKey!56 newKey!123)) ((_ is Cons!37081) l!1251)))))

(declare-fun b!1583536 () Bool)

(declare-fun res!1081780 () Bool)

(assert (=> b!1583536 (=> (not res!1081780) (not e!883961))))

(declare-fun containsKey!984 (List!37085 (_ BitVec 64)) Bool)

(assert (=> b!1583536 (= res!1081780 (not (containsKey!984 l!1251 otherKey!56)))))

(declare-fun b!1583537 () Bool)

(declare-fun e!883962 () Bool)

(declare-fun tp_is_empty!39417 () Bool)

(declare-fun tp!115018 () Bool)

(assert (=> b!1583537 (= e!883962 (and tp_is_empty!39417 tp!115018))))

(declare-fun res!1081781 () Bool)

(assert (=> start!137994 (=> (not res!1081781) (not e!883961))))

(declare-fun isStrictlySorted!1150 (List!37085) Bool)

(assert (=> start!137994 (= res!1081781 (isStrictlySorted!1150 l!1251))))

(assert (=> start!137994 e!883961))

(assert (=> start!137994 e!883962))

(assert (=> start!137994 true))

(assert (=> start!137994 tp_is_empty!39417))

(declare-fun b!1583538 () Bool)

(assert (=> b!1583538 (= e!883961 (not true))))

(declare-fun newValue!123 () B!2884)

(declare-fun insertStrictlySorted!617 (List!37085 (_ BitVec 64) B!2884) List!37085)

(assert (=> b!1583538 (not (containsKey!984 (insertStrictlySorted!617 (t!52006 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52225 0))(
  ( (Unit!52226) )
))
(declare-fun lt!677116 () Unit!52225)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!5 (List!37085 (_ BitVec 64) B!2884 (_ BitVec 64)) Unit!52225)

(assert (=> b!1583538 (= lt!677116 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!5 (t!52006 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1583539 () Bool)

(declare-fun res!1081778 () Bool)

(assert (=> b!1583539 (=> (not res!1081778) (not e!883961))))

(assert (=> b!1583539 (= res!1081778 (not (containsKey!984 (t!52006 l!1251) otherKey!56)))))

(declare-fun b!1583540 () Bool)

(declare-fun res!1081779 () Bool)

(assert (=> b!1583540 (=> (not res!1081779) (not e!883961))))

(assert (=> b!1583540 (= res!1081779 (isStrictlySorted!1150 (t!52006 l!1251)))))

(assert (= (and start!137994 res!1081781) b!1583536))

(assert (= (and b!1583536 res!1081780) b!1583535))

(assert (= (and b!1583535 res!1081777) b!1583540))

(assert (= (and b!1583540 res!1081779) b!1583539))

(assert (= (and b!1583539 res!1081778) b!1583538))

(assert (= (and start!137994 ((_ is Cons!37081) l!1251)) b!1583537))

(declare-fun m!1453309 () Bool)

(assert (=> b!1583538 m!1453309))

(assert (=> b!1583538 m!1453309))

(declare-fun m!1453311 () Bool)

(assert (=> b!1583538 m!1453311))

(declare-fun m!1453313 () Bool)

(assert (=> b!1583538 m!1453313))

(declare-fun m!1453315 () Bool)

(assert (=> b!1583539 m!1453315))

(declare-fun m!1453317 () Bool)

(assert (=> b!1583540 m!1453317))

(declare-fun m!1453319 () Bool)

(assert (=> b!1583536 m!1453319))

(declare-fun m!1453321 () Bool)

(assert (=> start!137994 m!1453321))

(check-sat (not b!1583540) (not start!137994) (not b!1583536) (not b!1583538) (not b!1583539) tp_is_empty!39417 (not b!1583537))
(check-sat)
