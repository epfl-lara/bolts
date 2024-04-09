; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137564 () Bool)

(assert start!137564)

(declare-fun res!1080721 () Bool)

(declare-fun e!882672 () Bool)

(assert (=> start!137564 (=> (not res!1080721) (not e!882672))))

(declare-datatypes ((B!2712 0))(
  ( (B!2713 (val!19718 Int)) )
))
(declare-datatypes ((tuple2!25768 0))(
  ( (tuple2!25769 (_1!12894 (_ BitVec 64)) (_2!12894 B!2712)) )
))
(declare-datatypes ((List!36999 0))(
  ( (Nil!36996) (Cons!36995 (h!38539 tuple2!25768) (t!51920 List!36999)) )
))
(declare-fun l!1390 () List!36999)

(declare-fun isStrictlySorted!1094 (List!36999) Bool)

(assert (=> start!137564 (= res!1080721 (isStrictlySorted!1094 l!1390))))

(assert (=> start!137564 e!882672))

(declare-fun e!882671 () Bool)

(assert (=> start!137564 e!882671))

(assert (=> start!137564 true))

(declare-fun tp_is_empty!39257 () Bool)

(assert (=> start!137564 tp_is_empty!39257))

(declare-fun b!1581753 () Bool)

(declare-fun res!1080722 () Bool)

(assert (=> b!1581753 (=> (not res!1080722) (not e!882672))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!940 (List!36999 (_ BitVec 64)) Bool)

(assert (=> b!1581753 (= res!1080722 (containsKey!940 l!1390 key!405))))

(declare-fun b!1581754 () Bool)

(assert (=> b!1581754 (= e!882672 false)))

(declare-fun lt!676948 () Bool)

(declare-fun value!194 () B!2712)

(declare-fun contains!10527 (List!36999 tuple2!25768) Bool)

(assert (=> b!1581754 (= lt!676948 (contains!10527 l!1390 (tuple2!25769 key!405 value!194)))))

(declare-fun b!1581755 () Bool)

(declare-fun tp!114622 () Bool)

(assert (=> b!1581755 (= e!882671 (and tp_is_empty!39257 tp!114622))))

(assert (= (and start!137564 res!1080721) b!1581753))

(assert (= (and b!1581753 res!1080722) b!1581754))

(assert (= (and start!137564 (is-Cons!36995 l!1390)) b!1581755))

(declare-fun m!1452563 () Bool)

(assert (=> start!137564 m!1452563))

(declare-fun m!1452565 () Bool)

(assert (=> b!1581753 m!1452565))

(declare-fun m!1452567 () Bool)

(assert (=> b!1581754 m!1452567))

(push 1)

(assert tp_is_empty!39257)

(assert (not b!1581755))

(assert (not b!1581753))

(assert (not b!1581754))

(assert (not start!137564))

(check-sat)

