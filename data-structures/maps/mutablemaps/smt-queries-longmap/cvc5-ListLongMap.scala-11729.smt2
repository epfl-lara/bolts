; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137566 () Bool)

(assert start!137566)

(declare-fun res!1080727 () Bool)

(declare-fun e!882677 () Bool)

(assert (=> start!137566 (=> (not res!1080727) (not e!882677))))

(declare-datatypes ((B!2714 0))(
  ( (B!2715 (val!19719 Int)) )
))
(declare-datatypes ((tuple2!25770 0))(
  ( (tuple2!25771 (_1!12895 (_ BitVec 64)) (_2!12895 B!2714)) )
))
(declare-datatypes ((List!37000 0))(
  ( (Nil!36997) (Cons!36996 (h!38540 tuple2!25770) (t!51921 List!37000)) )
))
(declare-fun l!1390 () List!37000)

(declare-fun isStrictlySorted!1095 (List!37000) Bool)

(assert (=> start!137566 (= res!1080727 (isStrictlySorted!1095 l!1390))))

(assert (=> start!137566 e!882677))

(declare-fun e!882678 () Bool)

(assert (=> start!137566 e!882678))

(assert (=> start!137566 true))

(declare-fun tp_is_empty!39259 () Bool)

(assert (=> start!137566 tp_is_empty!39259))

(declare-fun b!1581762 () Bool)

(declare-fun res!1080728 () Bool)

(assert (=> b!1581762 (=> (not res!1080728) (not e!882677))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!941 (List!37000 (_ BitVec 64)) Bool)

(assert (=> b!1581762 (= res!1080728 (containsKey!941 l!1390 key!405))))

(declare-fun b!1581763 () Bool)

(assert (=> b!1581763 (= e!882677 false)))

(declare-fun lt!676951 () Bool)

(declare-fun value!194 () B!2714)

(declare-fun contains!10528 (List!37000 tuple2!25770) Bool)

(assert (=> b!1581763 (= lt!676951 (contains!10528 l!1390 (tuple2!25771 key!405 value!194)))))

(declare-fun b!1581764 () Bool)

(declare-fun tp!114625 () Bool)

(assert (=> b!1581764 (= e!882678 (and tp_is_empty!39259 tp!114625))))

(assert (= (and start!137566 res!1080727) b!1581762))

(assert (= (and b!1581762 res!1080728) b!1581763))

(assert (= (and start!137566 (is-Cons!36996 l!1390)) b!1581764))

(declare-fun m!1452569 () Bool)

(assert (=> start!137566 m!1452569))

(declare-fun m!1452571 () Bool)

(assert (=> b!1581762 m!1452571))

(declare-fun m!1452573 () Bool)

(assert (=> b!1581763 m!1452573))

(push 1)

(assert (not b!1581764))

(assert (not b!1581762))

(assert tp_is_empty!39259)

(assert (not b!1581763))

(assert (not start!137566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

