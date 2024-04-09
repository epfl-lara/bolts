; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137178 () Bool)

(assert start!137178)

(declare-fun res!1079623 () Bool)

(declare-fun e!881574 () Bool)

(assert (=> start!137178 (=> (not res!1079623) (not e!881574))))

(declare-datatypes ((B!2650 0))(
  ( (B!2651 (val!19687 Int)) )
))
(declare-datatypes ((tuple2!25664 0))(
  ( (tuple2!25665 (_1!12842 (_ BitVec 64)) (_2!12842 B!2650)) )
))
(declare-datatypes ((List!36968 0))(
  ( (Nil!36965) (Cons!36964 (h!38508 tuple2!25664) (t!51889 List!36968)) )
))
(declare-fun l!1390 () List!36968)

(declare-fun isStrictlySorted!1063 (List!36968) Bool)

(assert (=> start!137178 (= res!1079623 (isStrictlySorted!1063 l!1390))))

(assert (=> start!137178 e!881574))

(declare-fun e!881573 () Bool)

(assert (=> start!137178 e!881573))

(assert (=> start!137178 true))

(declare-fun tp_is_empty!39195 () Bool)

(assert (=> start!137178 tp_is_empty!39195))

(declare-fun b!1580211 () Bool)

(declare-fun res!1079624 () Bool)

(assert (=> b!1580211 (=> (not res!1079624) (not e!881574))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!909 (List!36968 (_ BitVec 64)) Bool)

(assert (=> b!1580211 (= res!1079624 (containsKey!909 l!1390 key!405))))

(declare-fun b!1580212 () Bool)

(assert (=> b!1580212 (= e!881574 false)))

(declare-fun lt!676675 () Bool)

(declare-fun value!194 () B!2650)

(declare-fun contains!10496 (List!36968 tuple2!25664) Bool)

(assert (=> b!1580212 (= lt!676675 (contains!10496 l!1390 (tuple2!25665 key!405 value!194)))))

(declare-fun b!1580213 () Bool)

(declare-fun tp!114454 () Bool)

(assert (=> b!1580213 (= e!881573 (and tp_is_empty!39195 tp!114454))))

(assert (= (and start!137178 res!1079623) b!1580211))

(assert (= (and b!1580211 res!1079624) b!1580212))

(get-info :version)

(assert (= (and start!137178 ((_ is Cons!36964) l!1390)) b!1580213))

(declare-fun m!1451717 () Bool)

(assert (=> start!137178 m!1451717))

(declare-fun m!1451719 () Bool)

(assert (=> b!1580211 m!1451719))

(declare-fun m!1451721 () Bool)

(assert (=> b!1580212 m!1451721))

(check-sat (not b!1580213) tp_is_empty!39195 (not b!1580212) (not start!137178) (not b!1580211))
(check-sat)
