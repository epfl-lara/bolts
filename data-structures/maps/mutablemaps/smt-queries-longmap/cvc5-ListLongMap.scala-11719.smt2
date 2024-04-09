; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137182 () Bool)

(assert start!137182)

(declare-fun res!1079636 () Bool)

(declare-fun e!881585 () Bool)

(assert (=> start!137182 (=> (not res!1079636) (not e!881585))))

(declare-datatypes ((B!2654 0))(
  ( (B!2655 (val!19689 Int)) )
))
(declare-datatypes ((tuple2!25668 0))(
  ( (tuple2!25669 (_1!12844 (_ BitVec 64)) (_2!12844 B!2654)) )
))
(declare-datatypes ((List!36970 0))(
  ( (Nil!36967) (Cons!36966 (h!38510 tuple2!25668) (t!51891 List!36970)) )
))
(declare-fun l!1390 () List!36970)

(declare-fun isStrictlySorted!1065 (List!36970) Bool)

(assert (=> start!137182 (= res!1079636 (isStrictlySorted!1065 l!1390))))

(assert (=> start!137182 e!881585))

(declare-fun e!881586 () Bool)

(assert (=> start!137182 e!881586))

(assert (=> start!137182 true))

(declare-fun tp_is_empty!39199 () Bool)

(assert (=> start!137182 tp_is_empty!39199))

(declare-fun b!1580229 () Bool)

(declare-fun res!1079635 () Bool)

(assert (=> b!1580229 (=> (not res!1079635) (not e!881585))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!911 (List!36970 (_ BitVec 64)) Bool)

(assert (=> b!1580229 (= res!1079635 (containsKey!911 l!1390 key!405))))

(declare-fun b!1580230 () Bool)

(assert (=> b!1580230 (= e!881585 false)))

(declare-fun lt!676681 () Bool)

(declare-fun value!194 () B!2654)

(declare-fun contains!10498 (List!36970 tuple2!25668) Bool)

(assert (=> b!1580230 (= lt!676681 (contains!10498 l!1390 (tuple2!25669 key!405 value!194)))))

(declare-fun b!1580231 () Bool)

(declare-fun tp!114460 () Bool)

(assert (=> b!1580231 (= e!881586 (and tp_is_empty!39199 tp!114460))))

(assert (= (and start!137182 res!1079636) b!1580229))

(assert (= (and b!1580229 res!1079635) b!1580230))

(assert (= (and start!137182 (is-Cons!36966 l!1390)) b!1580231))

(declare-fun m!1451729 () Bool)

(assert (=> start!137182 m!1451729))

(declare-fun m!1451731 () Bool)

(assert (=> b!1580229 m!1451731))

(declare-fun m!1451733 () Bool)

(assert (=> b!1580230 m!1451733))

(push 1)

(assert (not b!1580231))

(assert tp_is_empty!39199)

(assert (not b!1580230))

(assert (not b!1580229))

(assert (not start!137182))

(check-sat)

(pop 1)

