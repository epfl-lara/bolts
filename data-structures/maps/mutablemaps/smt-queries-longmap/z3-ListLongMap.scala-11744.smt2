; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137778 () Bool)

(assert start!137778)

(declare-fun b!1582548 () Bool)

(declare-fun res!1081214 () Bool)

(declare-fun e!883284 () Bool)

(assert (=> b!1582548 (=> (not res!1081214) (not e!883284))))

(declare-datatypes ((B!2806 0))(
  ( (B!2807 (val!19765 Int)) )
))
(declare-datatypes ((tuple2!25862 0))(
  ( (tuple2!25863 (_1!12941 (_ BitVec 64)) (_2!12941 B!2806)) )
))
(declare-datatypes ((List!37046 0))(
  ( (Nil!37043) (Cons!37042 (h!38586 tuple2!25862) (t!51967 List!37046)) )
))
(declare-fun l!1065 () List!37046)

(declare-fun key!287 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1582548 (= res!1081214 (and ((_ is Cons!37042) l!1065) (not (= (_1!12941 (h!38586 l!1065)) key!287))))))

(declare-fun b!1582549 () Bool)

(assert (=> b!1582549 (= e!883284 (not true))))

(declare-datatypes ((Option!940 0))(
  ( (Some!939 (v!22463 B!2806)) (None!938) )
))
(declare-fun isDefined!600 (Option!940) Bool)

(declare-fun getValueByKey!832 (List!37046 (_ BitVec 64)) Option!940)

(assert (=> b!1582549 (isDefined!600 (getValueByKey!832 (t!51967 l!1065) key!287))))

(declare-datatypes ((Unit!52213 0))(
  ( (Unit!52214) )
))
(declare-fun lt!677047 () Unit!52213)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!548 (List!37046 (_ BitVec 64)) Unit!52213)

(assert (=> b!1582549 (= lt!677047 (lemmaContainsKeyImpliesGetValueByKeyDefined!548 (t!51967 l!1065) key!287))))

(declare-fun b!1582550 () Bool)

(declare-fun res!1081210 () Bool)

(assert (=> b!1582550 (=> (not res!1081210) (not e!883284))))

(declare-fun containsKey!966 (List!37046 (_ BitVec 64)) Bool)

(assert (=> b!1582550 (= res!1081210 (containsKey!966 l!1065 key!287))))

(declare-fun b!1582551 () Bool)

(declare-fun e!883283 () Bool)

(declare-fun tp_is_empty!39339 () Bool)

(declare-fun tp!114826 () Bool)

(assert (=> b!1582551 (= e!883283 (and tp_is_empty!39339 tp!114826))))

(declare-fun b!1582552 () Bool)

(declare-fun res!1081212 () Bool)

(assert (=> b!1582552 (=> (not res!1081212) (not e!883284))))

(declare-fun isStrictlySorted!1120 (List!37046) Bool)

(assert (=> b!1582552 (= res!1081212 (isStrictlySorted!1120 (t!51967 l!1065)))))

(declare-fun res!1081213 () Bool)

(assert (=> start!137778 (=> (not res!1081213) (not e!883284))))

(assert (=> start!137778 (= res!1081213 (isStrictlySorted!1120 l!1065))))

(assert (=> start!137778 e!883284))

(assert (=> start!137778 e!883283))

(assert (=> start!137778 true))

(declare-fun b!1582553 () Bool)

(declare-fun res!1081211 () Bool)

(assert (=> b!1582553 (=> (not res!1081211) (not e!883284))))

(assert (=> b!1582553 (= res!1081211 (containsKey!966 (t!51967 l!1065) key!287))))

(assert (= (and start!137778 res!1081213) b!1582550))

(assert (= (and b!1582550 res!1081210) b!1582548))

(assert (= (and b!1582548 res!1081214) b!1582552))

(assert (= (and b!1582552 res!1081212) b!1582553))

(assert (= (and b!1582553 res!1081211) b!1582549))

(assert (= (and start!137778 ((_ is Cons!37042) l!1065)) b!1582551))

(declare-fun m!1452907 () Bool)

(assert (=> b!1582550 m!1452907))

(declare-fun m!1452909 () Bool)

(assert (=> start!137778 m!1452909))

(declare-fun m!1452911 () Bool)

(assert (=> b!1582553 m!1452911))

(declare-fun m!1452913 () Bool)

(assert (=> b!1582552 m!1452913))

(declare-fun m!1452915 () Bool)

(assert (=> b!1582549 m!1452915))

(assert (=> b!1582549 m!1452915))

(declare-fun m!1452917 () Bool)

(assert (=> b!1582549 m!1452917))

(declare-fun m!1452919 () Bool)

(assert (=> b!1582549 m!1452919))

(check-sat (not b!1582553) (not b!1582552) (not b!1582551) (not b!1582550) (not b!1582549) tp_is_empty!39339 (not start!137778))
(check-sat)
