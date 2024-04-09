; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137186 () Bool)

(assert start!137186)

(declare-fun res!1079648 () Bool)

(declare-fun e!881597 () Bool)

(assert (=> start!137186 (=> (not res!1079648) (not e!881597))))

(declare-datatypes ((B!2658 0))(
  ( (B!2659 (val!19691 Int)) )
))
(declare-datatypes ((tuple2!25672 0))(
  ( (tuple2!25673 (_1!12846 (_ BitVec 64)) (_2!12846 B!2658)) )
))
(declare-datatypes ((List!36972 0))(
  ( (Nil!36969) (Cons!36968 (h!38512 tuple2!25672) (t!51893 List!36972)) )
))
(declare-fun l!1390 () List!36972)

(declare-fun isStrictlySorted!1067 (List!36972) Bool)

(assert (=> start!137186 (= res!1079648 (isStrictlySorted!1067 l!1390))))

(assert (=> start!137186 e!881597))

(declare-fun e!881598 () Bool)

(assert (=> start!137186 e!881598))

(assert (=> start!137186 true))

(declare-fun tp_is_empty!39203 () Bool)

(assert (=> start!137186 tp_is_empty!39203))

(declare-fun b!1580247 () Bool)

(declare-fun res!1079647 () Bool)

(assert (=> b!1580247 (=> (not res!1079647) (not e!881597))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!913 (List!36972 (_ BitVec 64)) Bool)

(assert (=> b!1580247 (= res!1079647 (containsKey!913 l!1390 key!405))))

(declare-fun b!1580248 () Bool)

(assert (=> b!1580248 (= e!881597 false)))

(declare-fun lt!676687 () Bool)

(declare-fun value!194 () B!2658)

(declare-fun contains!10500 (List!36972 tuple2!25672) Bool)

(assert (=> b!1580248 (= lt!676687 (contains!10500 l!1390 (tuple2!25673 key!405 value!194)))))

(declare-fun b!1580249 () Bool)

(declare-fun tp!114466 () Bool)

(assert (=> b!1580249 (= e!881598 (and tp_is_empty!39203 tp!114466))))

(assert (= (and start!137186 res!1079648) b!1580247))

(assert (= (and b!1580247 res!1079647) b!1580248))

(assert (= (and start!137186 (is-Cons!36968 l!1390)) b!1580249))

(declare-fun m!1451741 () Bool)

(assert (=> start!137186 m!1451741))

(declare-fun m!1451743 () Bool)

(assert (=> b!1580247 m!1451743))

(declare-fun m!1451745 () Bool)

(assert (=> b!1580248 m!1451745))

(push 1)

(assert (not b!1580248))

(assert tp_is_empty!39203)

(assert (not b!1580249))

(assert (not b!1580247))

(assert (not start!137186))

(check-sat)

(pop 1)

