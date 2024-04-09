; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137150 () Bool)

(assert start!137150)

(declare-fun res!1079359 () Bool)

(declare-fun e!881408 () Bool)

(assert (=> start!137150 (=> (not res!1079359) (not e!881408))))

(declare-datatypes ((B!2622 0))(
  ( (B!2623 (val!19673 Int)) )
))
(declare-datatypes ((tuple2!25618 0))(
  ( (tuple2!25619 (_1!12819 (_ BitVec 64)) (_2!12819 B!2622)) )
))
(declare-datatypes ((List!36954 0))(
  ( (Nil!36951) (Cons!36950 (h!38494 tuple2!25618) (t!51875 List!36954)) )
))
(declare-fun l!1390 () List!36954)

(declare-fun isStrictlySorted!1049 (List!36954) Bool)

(assert (=> start!137150 (= res!1079359 (isStrictlySorted!1049 l!1390))))

(assert (=> start!137150 e!881408))

(declare-fun e!881409 () Bool)

(assert (=> start!137150 e!881409))

(assert (=> start!137150 true))

(declare-fun tp_is_empty!39167 () Bool)

(assert (=> start!137150 tp_is_empty!39167))

(declare-fun b!1579905 () Bool)

(declare-fun res!1079360 () Bool)

(assert (=> b!1579905 (=> (not res!1079360) (not e!881408))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!895 (List!36954 (_ BitVec 64)) Bool)

(assert (=> b!1579905 (= res!1079360 (containsKey!895 l!1390 key!405))))

(declare-fun b!1579906 () Bool)

(assert (=> b!1579906 (= e!881408 false)))

(declare-fun lt!676588 () Bool)

(declare-fun value!194 () B!2622)

(declare-fun contains!10482 (List!36954 tuple2!25618) Bool)

(assert (=> b!1579906 (= lt!676588 (contains!10482 l!1390 (tuple2!25619 key!405 value!194)))))

(declare-fun b!1579907 () Bool)

(declare-fun tp!114412 () Bool)

(assert (=> b!1579907 (= e!881409 (and tp_is_empty!39167 tp!114412))))

(assert (= (and start!137150 res!1079359) b!1579905))

(assert (= (and b!1579905 res!1079360) b!1579906))

(assert (= (and start!137150 (is-Cons!36950 l!1390)) b!1579907))

(declare-fun m!1451507 () Bool)

(assert (=> start!137150 m!1451507))

(declare-fun m!1451509 () Bool)

(assert (=> b!1579905 m!1451509))

(declare-fun m!1451511 () Bool)

(assert (=> b!1579906 m!1451511))

(push 1)

(assert (not b!1579906))

(assert (not b!1579907))

(assert tp_is_empty!39167)

(assert (not b!1579905))

(assert (not start!137150))

(check-sat)

(pop 1)

(push 1)

