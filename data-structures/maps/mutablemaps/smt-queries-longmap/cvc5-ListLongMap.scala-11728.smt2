; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137560 () Bool)

(assert start!137560)

(declare-fun res!1080709 () Bool)

(declare-fun e!882660 () Bool)

(assert (=> start!137560 (=> (not res!1080709) (not e!882660))))

(declare-datatypes ((B!2708 0))(
  ( (B!2709 (val!19716 Int)) )
))
(declare-datatypes ((tuple2!25764 0))(
  ( (tuple2!25765 (_1!12892 (_ BitVec 64)) (_2!12892 B!2708)) )
))
(declare-datatypes ((List!36997 0))(
  ( (Nil!36994) (Cons!36993 (h!38537 tuple2!25764) (t!51918 List!36997)) )
))
(declare-fun l!1390 () List!36997)

(declare-fun isStrictlySorted!1092 (List!36997) Bool)

(assert (=> start!137560 (= res!1080709 (isStrictlySorted!1092 l!1390))))

(assert (=> start!137560 e!882660))

(declare-fun e!882659 () Bool)

(assert (=> start!137560 e!882659))

(assert (=> start!137560 true))

(declare-fun tp_is_empty!39253 () Bool)

(assert (=> start!137560 tp_is_empty!39253))

(declare-fun b!1581735 () Bool)

(declare-fun res!1080710 () Bool)

(assert (=> b!1581735 (=> (not res!1080710) (not e!882660))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!938 (List!36997 (_ BitVec 64)) Bool)

(assert (=> b!1581735 (= res!1080710 (containsKey!938 l!1390 key!405))))

(declare-fun b!1581736 () Bool)

(assert (=> b!1581736 (= e!882660 false)))

(declare-fun lt!676942 () Bool)

(declare-fun value!194 () B!2708)

(declare-fun contains!10525 (List!36997 tuple2!25764) Bool)

(assert (=> b!1581736 (= lt!676942 (contains!10525 l!1390 (tuple2!25765 key!405 value!194)))))

(declare-fun b!1581737 () Bool)

(declare-fun tp!114616 () Bool)

(assert (=> b!1581737 (= e!882659 (and tp_is_empty!39253 tp!114616))))

(assert (= (and start!137560 res!1080709) b!1581735))

(assert (= (and b!1581735 res!1080710) b!1581736))

(assert (= (and start!137560 (is-Cons!36993 l!1390)) b!1581737))

(declare-fun m!1452551 () Bool)

(assert (=> start!137560 m!1452551))

(declare-fun m!1452553 () Bool)

(assert (=> b!1581735 m!1452553))

(declare-fun m!1452555 () Bool)

(assert (=> b!1581736 m!1452555))

(push 1)

(assert tp_is_empty!39253)

(assert (not b!1581735))

(assert (not b!1581736))

(assert (not b!1581737))

(assert (not start!137560))

(check-sat)

(pop 1)

