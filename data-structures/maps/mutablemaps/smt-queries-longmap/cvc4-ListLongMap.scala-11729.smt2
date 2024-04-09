; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137570 () Bool)

(assert start!137570)

(declare-fun res!1080740 () Bool)

(declare-fun e!882689 () Bool)

(assert (=> start!137570 (=> (not res!1080740) (not e!882689))))

(declare-datatypes ((B!2718 0))(
  ( (B!2719 (val!19721 Int)) )
))
(declare-datatypes ((tuple2!25774 0))(
  ( (tuple2!25775 (_1!12897 (_ BitVec 64)) (_2!12897 B!2718)) )
))
(declare-datatypes ((List!37002 0))(
  ( (Nil!36999) (Cons!36998 (h!38542 tuple2!25774) (t!51923 List!37002)) )
))
(declare-fun l!1390 () List!37002)

(declare-fun isStrictlySorted!1097 (List!37002) Bool)

(assert (=> start!137570 (= res!1080740 (isStrictlySorted!1097 l!1390))))

(assert (=> start!137570 e!882689))

(declare-fun e!882690 () Bool)

(assert (=> start!137570 e!882690))

(assert (=> start!137570 true))

(declare-fun tp_is_empty!39263 () Bool)

(assert (=> start!137570 tp_is_empty!39263))

(declare-fun b!1581780 () Bool)

(declare-fun res!1080739 () Bool)

(assert (=> b!1581780 (=> (not res!1080739) (not e!882689))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!943 (List!37002 (_ BitVec 64)) Bool)

(assert (=> b!1581780 (= res!1080739 (containsKey!943 l!1390 key!405))))

(declare-fun b!1581781 () Bool)

(assert (=> b!1581781 (= e!882689 false)))

(declare-fun lt!676957 () Bool)

(declare-fun value!194 () B!2718)

(declare-fun contains!10530 (List!37002 tuple2!25774) Bool)

(assert (=> b!1581781 (= lt!676957 (contains!10530 l!1390 (tuple2!25775 key!405 value!194)))))

(declare-fun b!1581782 () Bool)

(declare-fun tp!114631 () Bool)

(assert (=> b!1581782 (= e!882690 (and tp_is_empty!39263 tp!114631))))

(assert (= (and start!137570 res!1080740) b!1581780))

(assert (= (and b!1581780 res!1080739) b!1581781))

(assert (= (and start!137570 (is-Cons!36998 l!1390)) b!1581782))

(declare-fun m!1452581 () Bool)

(assert (=> start!137570 m!1452581))

(declare-fun m!1452583 () Bool)

(assert (=> b!1581780 m!1452583))

(declare-fun m!1452585 () Bool)

(assert (=> b!1581781 m!1452585))

(push 1)

(assert (not b!1581781))

(assert tp_is_empty!39263)

(assert (not b!1581782))

(assert (not start!137570))

(assert (not b!1581780))

(check-sat)

(pop 1)

