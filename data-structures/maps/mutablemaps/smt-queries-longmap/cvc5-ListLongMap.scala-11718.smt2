; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137176 () Bool)

(assert start!137176)

(declare-fun res!1079618 () Bool)

(declare-fun e!881568 () Bool)

(assert (=> start!137176 (=> (not res!1079618) (not e!881568))))

(declare-datatypes ((B!2648 0))(
  ( (B!2649 (val!19686 Int)) )
))
(declare-datatypes ((tuple2!25662 0))(
  ( (tuple2!25663 (_1!12841 (_ BitVec 64)) (_2!12841 B!2648)) )
))
(declare-datatypes ((List!36967 0))(
  ( (Nil!36964) (Cons!36963 (h!38507 tuple2!25662) (t!51888 List!36967)) )
))
(declare-fun l!1390 () List!36967)

(declare-fun isStrictlySorted!1062 (List!36967) Bool)

(assert (=> start!137176 (= res!1079618 (isStrictlySorted!1062 l!1390))))

(assert (=> start!137176 e!881568))

(declare-fun e!881567 () Bool)

(assert (=> start!137176 e!881567))

(assert (=> start!137176 true))

(declare-fun tp_is_empty!39193 () Bool)

(assert (=> start!137176 tp_is_empty!39193))

(declare-fun b!1580202 () Bool)

(declare-fun res!1079617 () Bool)

(assert (=> b!1580202 (=> (not res!1079617) (not e!881568))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!908 (List!36967 (_ BitVec 64)) Bool)

(assert (=> b!1580202 (= res!1079617 (containsKey!908 l!1390 key!405))))

(declare-fun b!1580203 () Bool)

(assert (=> b!1580203 (= e!881568 false)))

(declare-fun value!194 () B!2648)

(declare-fun lt!676672 () Bool)

(declare-fun contains!10495 (List!36967 tuple2!25662) Bool)

(assert (=> b!1580203 (= lt!676672 (contains!10495 l!1390 (tuple2!25663 key!405 value!194)))))

(declare-fun b!1580204 () Bool)

(declare-fun tp!114451 () Bool)

(assert (=> b!1580204 (= e!881567 (and tp_is_empty!39193 tp!114451))))

(assert (= (and start!137176 res!1079618) b!1580202))

(assert (= (and b!1580202 res!1079617) b!1580203))

(assert (= (and start!137176 (is-Cons!36963 l!1390)) b!1580204))

(declare-fun m!1451711 () Bool)

(assert (=> start!137176 m!1451711))

(declare-fun m!1451713 () Bool)

(assert (=> b!1580202 m!1451713))

(declare-fun m!1451715 () Bool)

(assert (=> b!1580203 m!1451715))

(push 1)

(assert (not b!1580203))

(assert tp_is_empty!39193)

(assert (not b!1580202))

(assert (not start!137176))

(assert (not b!1580204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

