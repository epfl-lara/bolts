; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137154 () Bool)

(assert start!137154)

(declare-fun res!1079376 () Bool)

(declare-fun e!881421 () Bool)

(assert (=> start!137154 (=> (not res!1079376) (not e!881421))))

(declare-datatypes ((B!2626 0))(
  ( (B!2627 (val!19675 Int)) )
))
(declare-datatypes ((tuple2!25622 0))(
  ( (tuple2!25623 (_1!12821 (_ BitVec 64)) (_2!12821 B!2626)) )
))
(declare-datatypes ((List!36956 0))(
  ( (Nil!36953) (Cons!36952 (h!38496 tuple2!25622) (t!51877 List!36956)) )
))
(declare-fun l!1390 () List!36956)

(declare-fun isStrictlySorted!1051 (List!36956) Bool)

(assert (=> start!137154 (= res!1079376 (isStrictlySorted!1051 l!1390))))

(assert (=> start!137154 e!881421))

(declare-fun e!881420 () Bool)

(assert (=> start!137154 e!881420))

(assert (=> start!137154 true))

(declare-fun tp_is_empty!39171 () Bool)

(assert (=> start!137154 tp_is_empty!39171))

(declare-fun b!1579929 () Bool)

(declare-fun res!1079377 () Bool)

(assert (=> b!1579929 (=> (not res!1079377) (not e!881421))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2626)

(declare-fun contains!10484 (List!36956 tuple2!25622) Bool)

(assert (=> b!1579929 (= res!1079377 (contains!10484 l!1390 (tuple2!25623 key!405 value!194)))))

(declare-fun b!1579928 () Bool)

(declare-fun res!1079378 () Bool)

(assert (=> b!1579928 (=> (not res!1079378) (not e!881421))))

(declare-fun containsKey!897 (List!36956 (_ BitVec 64)) Bool)

(assert (=> b!1579928 (= res!1079378 (containsKey!897 l!1390 key!405))))

(declare-fun b!1579931 () Bool)

(declare-fun tp!114418 () Bool)

(assert (=> b!1579931 (= e!881420 (and tp_is_empty!39171 tp!114418))))

(declare-fun b!1579930 () Bool)

(assert (=> b!1579930 (= e!881421 false)))

(assert (= (and start!137154 res!1079376) b!1579928))

(assert (= (and b!1579928 res!1079378) b!1579929))

(assert (= (and b!1579929 res!1079377) b!1579930))

(get-info :version)

(assert (= (and start!137154 ((_ is Cons!36952) l!1390)) b!1579931))

(declare-fun m!1451519 () Bool)

(assert (=> start!137154 m!1451519))

(declare-fun m!1451521 () Bool)

(assert (=> b!1579929 m!1451521))

(declare-fun m!1451523 () Bool)

(assert (=> b!1579928 m!1451523))

(check-sat (not b!1579928) (not start!137154) tp_is_empty!39171 (not b!1579929) (not b!1579931))
(check-sat)
