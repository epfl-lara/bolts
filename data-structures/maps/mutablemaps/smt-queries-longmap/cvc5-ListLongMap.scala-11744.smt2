; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137776 () Bool)

(assert start!137776)

(declare-fun b!1582530 () Bool)

(declare-fun res!1081199 () Bool)

(declare-fun e!883278 () Bool)

(assert (=> b!1582530 (=> (not res!1081199) (not e!883278))))

(declare-datatypes ((B!2804 0))(
  ( (B!2805 (val!19764 Int)) )
))
(declare-datatypes ((tuple2!25860 0))(
  ( (tuple2!25861 (_1!12940 (_ BitVec 64)) (_2!12940 B!2804)) )
))
(declare-datatypes ((List!37045 0))(
  ( (Nil!37042) (Cons!37041 (h!38585 tuple2!25860) (t!51966 List!37045)) )
))
(declare-fun l!1065 () List!37045)

(declare-fun isStrictlySorted!1119 (List!37045) Bool)

(assert (=> b!1582530 (= res!1081199 (isStrictlySorted!1119 (t!51966 l!1065)))))

(declare-fun res!1081197 () Bool)

(assert (=> start!137776 (=> (not res!1081197) (not e!883278))))

(assert (=> start!137776 (= res!1081197 (isStrictlySorted!1119 l!1065))))

(assert (=> start!137776 e!883278))

(declare-fun e!883277 () Bool)

(assert (=> start!137776 e!883277))

(assert (=> start!137776 true))

(declare-fun b!1582531 () Bool)

(declare-fun res!1081198 () Bool)

(assert (=> b!1582531 (=> (not res!1081198) (not e!883278))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!965 (List!37045 (_ BitVec 64)) Bool)

(assert (=> b!1582531 (= res!1081198 (containsKey!965 l!1065 key!287))))

(declare-fun b!1582532 () Bool)

(declare-fun res!1081196 () Bool)

(assert (=> b!1582532 (=> (not res!1081196) (not e!883278))))

(assert (=> b!1582532 (= res!1081196 (and (is-Cons!37041 l!1065) (not (= (_1!12940 (h!38585 l!1065)) key!287))))))

(declare-fun b!1582533 () Bool)

(assert (=> b!1582533 (= e!883278 (not true))))

(declare-datatypes ((Option!939 0))(
  ( (Some!938 (v!22462 B!2804)) (None!937) )
))
(declare-fun isDefined!599 (Option!939) Bool)

(declare-fun getValueByKey!831 (List!37045 (_ BitVec 64)) Option!939)

(assert (=> b!1582533 (isDefined!599 (getValueByKey!831 (t!51966 l!1065) key!287))))

(declare-datatypes ((Unit!52211 0))(
  ( (Unit!52212) )
))
(declare-fun lt!677044 () Unit!52211)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!547 (List!37045 (_ BitVec 64)) Unit!52211)

(assert (=> b!1582533 (= lt!677044 (lemmaContainsKeyImpliesGetValueByKeyDefined!547 (t!51966 l!1065) key!287))))

(declare-fun b!1582534 () Bool)

(declare-fun res!1081195 () Bool)

(assert (=> b!1582534 (=> (not res!1081195) (not e!883278))))

(assert (=> b!1582534 (= res!1081195 (containsKey!965 (t!51966 l!1065) key!287))))

(declare-fun b!1582535 () Bool)

(declare-fun tp_is_empty!39337 () Bool)

(declare-fun tp!114823 () Bool)

(assert (=> b!1582535 (= e!883277 (and tp_is_empty!39337 tp!114823))))

(assert (= (and start!137776 res!1081197) b!1582531))

(assert (= (and b!1582531 res!1081198) b!1582532))

(assert (= (and b!1582532 res!1081196) b!1582530))

(assert (= (and b!1582530 res!1081199) b!1582534))

(assert (= (and b!1582534 res!1081195) b!1582533))

(assert (= (and start!137776 (is-Cons!37041 l!1065)) b!1582535))

(declare-fun m!1452893 () Bool)

(assert (=> b!1582530 m!1452893))

(declare-fun m!1452895 () Bool)

(assert (=> start!137776 m!1452895))

(declare-fun m!1452897 () Bool)

(assert (=> b!1582534 m!1452897))

(declare-fun m!1452899 () Bool)

(assert (=> b!1582531 m!1452899))

(declare-fun m!1452901 () Bool)

(assert (=> b!1582533 m!1452901))

(assert (=> b!1582533 m!1452901))

(declare-fun m!1452903 () Bool)

(assert (=> b!1582533 m!1452903))

(declare-fun m!1452905 () Bool)

(assert (=> b!1582533 m!1452905))

(push 1)

(assert (not b!1582530))

(assert (not b!1582534))

(assert (not b!1582535))

(assert (not start!137776))

(assert tp_is_empty!39337)

(assert (not b!1582533))

(assert (not b!1582531))

(check-sat)

(pop 1)

