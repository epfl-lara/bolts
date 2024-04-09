; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137156 () Bool)

(assert start!137156)

(declare-fun b!1579941 () Bool)

(declare-fun res!1079385 () Bool)

(declare-fun e!881426 () Bool)

(assert (=> b!1579941 (=> (not res!1079385) (not e!881426))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2628 0))(
  ( (B!2629 (val!19676 Int)) )
))
(declare-datatypes ((tuple2!25624 0))(
  ( (tuple2!25625 (_1!12822 (_ BitVec 64)) (_2!12822 B!2628)) )
))
(declare-datatypes ((List!36957 0))(
  ( (Nil!36954) (Cons!36953 (h!38497 tuple2!25624) (t!51878 List!36957)) )
))
(declare-fun l!1390 () List!36957)

(declare-fun value!194 () B!2628)

(declare-fun contains!10485 (List!36957 tuple2!25624) Bool)

(assert (=> b!1579941 (= res!1079385 (contains!10485 l!1390 (tuple2!25625 key!405 value!194)))))

(declare-fun b!1579943 () Bool)

(declare-fun e!881427 () Bool)

(declare-fun tp_is_empty!39173 () Bool)

(declare-fun tp!114421 () Bool)

(assert (=> b!1579943 (= e!881427 (and tp_is_empty!39173 tp!114421))))

(declare-fun b!1579942 () Bool)

(assert (=> b!1579942 (= e!881426 false)))

(declare-fun res!1079386 () Bool)

(assert (=> start!137156 (=> (not res!1079386) (not e!881426))))

(declare-fun isStrictlySorted!1052 (List!36957) Bool)

(assert (=> start!137156 (= res!1079386 (isStrictlySorted!1052 l!1390))))

(assert (=> start!137156 e!881426))

(assert (=> start!137156 e!881427))

(assert (=> start!137156 true))

(assert (=> start!137156 tp_is_empty!39173))

(declare-fun b!1579940 () Bool)

(declare-fun res!1079387 () Bool)

(assert (=> b!1579940 (=> (not res!1079387) (not e!881426))))

(declare-fun containsKey!898 (List!36957 (_ BitVec 64)) Bool)

(assert (=> b!1579940 (= res!1079387 (containsKey!898 l!1390 key!405))))

(assert (= (and start!137156 res!1079386) b!1579940))

(assert (= (and b!1579940 res!1079387) b!1579941))

(assert (= (and b!1579941 res!1079385) b!1579942))

(assert (= (and start!137156 (is-Cons!36953 l!1390)) b!1579943))

(declare-fun m!1451525 () Bool)

(assert (=> b!1579941 m!1451525))

(declare-fun m!1451527 () Bool)

(assert (=> start!137156 m!1451527))

(declare-fun m!1451529 () Bool)

(assert (=> b!1579940 m!1451529))

(push 1)

(assert (not b!1579943))

(assert (not b!1579941))

(assert (not b!1579940))

(assert tp_is_empty!39173)

(assert (not start!137156))

(check-sat)

