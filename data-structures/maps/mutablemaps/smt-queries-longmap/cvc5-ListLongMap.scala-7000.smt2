; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88930 () Bool)

(assert start!88930)

(declare-fun b!1020121 () Bool)

(declare-fun e!574210 () Bool)

(assert (=> b!1020121 (= e!574210 false)))

(declare-fun lt!449769 () Bool)

(declare-datatypes ((B!1706 0))(
  ( (B!1707 (val!11937 Int)) )
))
(declare-datatypes ((tuple2!15510 0))(
  ( (tuple2!15511 (_1!7765 (_ BitVec 64)) (_2!7765 B!1706)) )
))
(declare-datatypes ((List!21739 0))(
  ( (Nil!21736) (Cons!21735 (h!22933 tuple2!15510) (t!30756 List!21739)) )
))
(declare-fun l!1367 () List!21739)

(declare-fun lt!449770 () tuple2!15510)

(declare-fun contains!5930 (List!21739 tuple2!15510) Bool)

(assert (=> b!1020121 (= lt!449769 (contains!5930 (t!30756 l!1367) lt!449770))))

(declare-fun b!1020122 () Bool)

(declare-fun e!574208 () Bool)

(assert (=> b!1020122 (= e!574208 e!574210)))

(declare-fun res!683831 () Bool)

(assert (=> b!1020122 (=> (not res!683831) (not e!574210))))

(assert (=> b!1020122 (= res!683831 (contains!5930 l!1367 lt!449770))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1706)

(assert (=> b!1020122 (= lt!449770 (tuple2!15511 key!393 value!188))))

(declare-fun b!1020123 () Bool)

(declare-fun res!683829 () Bool)

(assert (=> b!1020123 (=> (not res!683829) (not e!574210))))

(declare-fun isStrictlySorted!686 (List!21739) Bool)

(assert (=> b!1020123 (= res!683829 (isStrictlySorted!686 (t!30756 l!1367)))))

(declare-fun b!1020124 () Bool)

(declare-fun e!574209 () Bool)

(declare-fun tp_is_empty!23773 () Bool)

(declare-fun tp!71210 () Bool)

(assert (=> b!1020124 (= e!574209 (and tp_is_empty!23773 tp!71210))))

(declare-fun b!1020125 () Bool)

(declare-fun res!683830 () Bool)

(assert (=> b!1020125 (=> (not res!683830) (not e!574210))))

(assert (=> b!1020125 (= res!683830 (and (is-Cons!21735 l!1367) (not (= (h!22933 l!1367) lt!449770))))))

(declare-fun res!683832 () Bool)

(assert (=> start!88930 (=> (not res!683832) (not e!574208))))

(assert (=> start!88930 (= res!683832 (isStrictlySorted!686 l!1367))))

(assert (=> start!88930 e!574208))

(assert (=> start!88930 e!574209))

(assert (=> start!88930 true))

(assert (=> start!88930 tp_is_empty!23773))

(assert (= (and start!88930 res!683832) b!1020122))

(assert (= (and b!1020122 res!683831) b!1020125))

(assert (= (and b!1020125 res!683830) b!1020123))

(assert (= (and b!1020123 res!683829) b!1020121))

(assert (= (and start!88930 (is-Cons!21735 l!1367)) b!1020124))

(declare-fun m!940315 () Bool)

(assert (=> b!1020121 m!940315))

(declare-fun m!940317 () Bool)

(assert (=> b!1020122 m!940317))

(declare-fun m!940319 () Bool)

(assert (=> b!1020123 m!940319))

(declare-fun m!940321 () Bool)

(assert (=> start!88930 m!940321))

(push 1)

