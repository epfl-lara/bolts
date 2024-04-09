; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137180 () Bool)

(assert start!137180)

(declare-fun res!1079629 () Bool)

(declare-fun e!881579 () Bool)

(assert (=> start!137180 (=> (not res!1079629) (not e!881579))))

(declare-datatypes ((B!2652 0))(
  ( (B!2653 (val!19688 Int)) )
))
(declare-datatypes ((tuple2!25666 0))(
  ( (tuple2!25667 (_1!12843 (_ BitVec 64)) (_2!12843 B!2652)) )
))
(declare-datatypes ((List!36969 0))(
  ( (Nil!36966) (Cons!36965 (h!38509 tuple2!25666) (t!51890 List!36969)) )
))
(declare-fun l!1390 () List!36969)

(declare-fun isStrictlySorted!1064 (List!36969) Bool)

(assert (=> start!137180 (= res!1079629 (isStrictlySorted!1064 l!1390))))

(assert (=> start!137180 e!881579))

(declare-fun e!881580 () Bool)

(assert (=> start!137180 e!881580))

(assert (=> start!137180 true))

(declare-fun tp_is_empty!39197 () Bool)

(assert (=> start!137180 tp_is_empty!39197))

(declare-fun b!1580220 () Bool)

(declare-fun res!1079630 () Bool)

(assert (=> b!1580220 (=> (not res!1079630) (not e!881579))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!910 (List!36969 (_ BitVec 64)) Bool)

(assert (=> b!1580220 (= res!1079630 (containsKey!910 l!1390 key!405))))

(declare-fun b!1580221 () Bool)

(assert (=> b!1580221 (= e!881579 false)))

(declare-fun lt!676678 () Bool)

(declare-fun value!194 () B!2652)

(declare-fun contains!10497 (List!36969 tuple2!25666) Bool)

(assert (=> b!1580221 (= lt!676678 (contains!10497 l!1390 (tuple2!25667 key!405 value!194)))))

(declare-fun b!1580222 () Bool)

(declare-fun tp!114457 () Bool)

(assert (=> b!1580222 (= e!881580 (and tp_is_empty!39197 tp!114457))))

(assert (= (and start!137180 res!1079629) b!1580220))

(assert (= (and b!1580220 res!1079630) b!1580221))

(assert (= (and start!137180 (is-Cons!36965 l!1390)) b!1580222))

(declare-fun m!1451723 () Bool)

(assert (=> start!137180 m!1451723))

(declare-fun m!1451725 () Bool)

(assert (=> b!1580220 m!1451725))

(declare-fun m!1451727 () Bool)

(assert (=> b!1580221 m!1451727))

(push 1)

(assert (not b!1580220))

(assert (not b!1580221))

(assert (not start!137180))

(assert tp_is_empty!39197)

(assert (not b!1580222))

(check-sat)

(pop 1)

(push 1)

