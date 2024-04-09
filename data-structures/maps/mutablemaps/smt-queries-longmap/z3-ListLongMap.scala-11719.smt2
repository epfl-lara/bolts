; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137184 () Bool)

(assert start!137184)

(declare-fun res!1079642 () Bool)

(declare-fun e!881591 () Bool)

(assert (=> start!137184 (=> (not res!1079642) (not e!881591))))

(declare-datatypes ((B!2656 0))(
  ( (B!2657 (val!19690 Int)) )
))
(declare-datatypes ((tuple2!25670 0))(
  ( (tuple2!25671 (_1!12845 (_ BitVec 64)) (_2!12845 B!2656)) )
))
(declare-datatypes ((List!36971 0))(
  ( (Nil!36968) (Cons!36967 (h!38511 tuple2!25670) (t!51892 List!36971)) )
))
(declare-fun l!1390 () List!36971)

(declare-fun isStrictlySorted!1066 (List!36971) Bool)

(assert (=> start!137184 (= res!1079642 (isStrictlySorted!1066 l!1390))))

(assert (=> start!137184 e!881591))

(declare-fun e!881592 () Bool)

(assert (=> start!137184 e!881592))

(assert (=> start!137184 true))

(declare-fun tp_is_empty!39201 () Bool)

(assert (=> start!137184 tp_is_empty!39201))

(declare-fun b!1580238 () Bool)

(declare-fun res!1079641 () Bool)

(assert (=> b!1580238 (=> (not res!1079641) (not e!881591))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!912 (List!36971 (_ BitVec 64)) Bool)

(assert (=> b!1580238 (= res!1079641 (containsKey!912 l!1390 key!405))))

(declare-fun b!1580239 () Bool)

(assert (=> b!1580239 (= e!881591 false)))

(declare-fun lt!676684 () Bool)

(declare-fun value!194 () B!2656)

(declare-fun contains!10499 (List!36971 tuple2!25670) Bool)

(assert (=> b!1580239 (= lt!676684 (contains!10499 l!1390 (tuple2!25671 key!405 value!194)))))

(declare-fun b!1580240 () Bool)

(declare-fun tp!114463 () Bool)

(assert (=> b!1580240 (= e!881592 (and tp_is_empty!39201 tp!114463))))

(assert (= (and start!137184 res!1079642) b!1580238))

(assert (= (and b!1580238 res!1079641) b!1580239))

(get-info :version)

(assert (= (and start!137184 ((_ is Cons!36967) l!1390)) b!1580240))

(declare-fun m!1451735 () Bool)

(assert (=> start!137184 m!1451735))

(declare-fun m!1451737 () Bool)

(assert (=> b!1580238 m!1451737))

(declare-fun m!1451739 () Bool)

(assert (=> b!1580239 m!1451739))

(check-sat (not b!1580238) (not b!1580240) (not start!137184) (not b!1580239) tp_is_empty!39201)
(check-sat)
