; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137148 () Bool)

(assert start!137148)

(declare-fun res!1079354 () Bool)

(declare-fun e!881403 () Bool)

(assert (=> start!137148 (=> (not res!1079354) (not e!881403))))

(declare-datatypes ((B!2620 0))(
  ( (B!2621 (val!19672 Int)) )
))
(declare-datatypes ((tuple2!25616 0))(
  ( (tuple2!25617 (_1!12818 (_ BitVec 64)) (_2!12818 B!2620)) )
))
(declare-datatypes ((List!36953 0))(
  ( (Nil!36950) (Cons!36949 (h!38493 tuple2!25616) (t!51874 List!36953)) )
))
(declare-fun l!1390 () List!36953)

(declare-fun isStrictlySorted!1048 (List!36953) Bool)

(assert (=> start!137148 (= res!1079354 (isStrictlySorted!1048 l!1390))))

(assert (=> start!137148 e!881403))

(declare-fun e!881402 () Bool)

(assert (=> start!137148 e!881402))

(assert (=> start!137148 true))

(declare-fun tp_is_empty!39165 () Bool)

(assert (=> start!137148 tp_is_empty!39165))

(declare-fun b!1579896 () Bool)

(declare-fun res!1079353 () Bool)

(assert (=> b!1579896 (=> (not res!1079353) (not e!881403))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!894 (List!36953 (_ BitVec 64)) Bool)

(assert (=> b!1579896 (= res!1079353 (containsKey!894 l!1390 key!405))))

(declare-fun b!1579897 () Bool)

(assert (=> b!1579897 (= e!881403 false)))

(declare-fun lt!676585 () Bool)

(declare-fun value!194 () B!2620)

(declare-fun contains!10481 (List!36953 tuple2!25616) Bool)

(assert (=> b!1579897 (= lt!676585 (contains!10481 l!1390 (tuple2!25617 key!405 value!194)))))

(declare-fun b!1579898 () Bool)

(declare-fun tp!114409 () Bool)

(assert (=> b!1579898 (= e!881402 (and tp_is_empty!39165 tp!114409))))

(assert (= (and start!137148 res!1079354) b!1579896))

(assert (= (and b!1579896 res!1079353) b!1579897))

(get-info :version)

(assert (= (and start!137148 ((_ is Cons!36949) l!1390)) b!1579898))

(declare-fun m!1451501 () Bool)

(assert (=> start!137148 m!1451501))

(declare-fun m!1451503 () Bool)

(assert (=> b!1579896 m!1451503))

(declare-fun m!1451505 () Bool)

(assert (=> b!1579897 m!1451505))

(check-sat (not b!1579896) (not b!1579897) (not start!137148) (not b!1579898) tp_is_empty!39165)
(check-sat)
