; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137146 () Bool)

(assert start!137146)

(declare-fun res!1079348 () Bool)

(declare-fun e!881396 () Bool)

(assert (=> start!137146 (=> (not res!1079348) (not e!881396))))

(declare-datatypes ((B!2618 0))(
  ( (B!2619 (val!19671 Int)) )
))
(declare-datatypes ((tuple2!25614 0))(
  ( (tuple2!25615 (_1!12817 (_ BitVec 64)) (_2!12817 B!2618)) )
))
(declare-datatypes ((List!36952 0))(
  ( (Nil!36949) (Cons!36948 (h!38492 tuple2!25614) (t!51873 List!36952)) )
))
(declare-fun l!1390 () List!36952)

(declare-fun isStrictlySorted!1047 (List!36952) Bool)

(assert (=> start!137146 (= res!1079348 (isStrictlySorted!1047 l!1390))))

(assert (=> start!137146 e!881396))

(declare-fun e!881397 () Bool)

(assert (=> start!137146 e!881397))

(assert (=> start!137146 true))

(declare-fun tp_is_empty!39163 () Bool)

(assert (=> start!137146 tp_is_empty!39163))

(declare-fun b!1579887 () Bool)

(declare-fun res!1079347 () Bool)

(assert (=> b!1579887 (=> (not res!1079347) (not e!881396))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!893 (List!36952 (_ BitVec 64)) Bool)

(assert (=> b!1579887 (= res!1079347 (containsKey!893 l!1390 key!405))))

(declare-fun b!1579888 () Bool)

(assert (=> b!1579888 (= e!881396 false)))

(declare-fun lt!676582 () Bool)

(declare-fun value!194 () B!2618)

(declare-fun contains!10480 (List!36952 tuple2!25614) Bool)

(assert (=> b!1579888 (= lt!676582 (contains!10480 l!1390 (tuple2!25615 key!405 value!194)))))

(declare-fun b!1579889 () Bool)

(declare-fun tp!114406 () Bool)

(assert (=> b!1579889 (= e!881397 (and tp_is_empty!39163 tp!114406))))

(assert (= (and start!137146 res!1079348) b!1579887))

(assert (= (and b!1579887 res!1079347) b!1579888))

(assert (= (and start!137146 (is-Cons!36948 l!1390)) b!1579889))

(declare-fun m!1451495 () Bool)

(assert (=> start!137146 m!1451495))

(declare-fun m!1451497 () Bool)

(assert (=> b!1579887 m!1451497))

(declare-fun m!1451499 () Bool)

(assert (=> b!1579888 m!1451499))

(push 1)

(assert (not b!1579889))

(assert (not start!137146))

(assert tp_is_empty!39163)

(assert (not b!1579888))

(assert (not b!1579887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

