; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7624 () Bool)

(assert start!7624)

(declare-fun res!28224 () Bool)

(declare-fun e!31225 () Bool)

(assert (=> start!7624 (=> (not res!28224) (not e!31225))))

(declare-datatypes ((B!956 0))(
  ( (B!957 (val!1098 Int)) )
))
(declare-datatypes ((tuple2!1782 0))(
  ( (tuple2!1783 (_1!901 (_ BitVec 64)) (_2!901 B!956)) )
))
(declare-datatypes ((List!1314 0))(
  ( (Nil!1311) (Cons!1310 (h!1890 tuple2!1782) (t!4350 List!1314)) )
))
(declare-fun l!1333 () List!1314)

(declare-fun isStrictlySorted!258 (List!1314) Bool)

(assert (=> start!7624 (= res!28224 (isStrictlySorted!258 l!1333))))

(assert (=> start!7624 e!31225))

(declare-fun e!31224 () Bool)

(assert (=> start!7624 e!31224))

(assert (=> start!7624 true))

(declare-fun tp_is_empty!2107 () Bool)

(assert (=> start!7624 tp_is_empty!2107))

(declare-fun b!48628 () Bool)

(declare-fun res!28222 () Bool)

(assert (=> b!48628 (=> (not res!28222) (not e!31225))))

(assert (=> b!48628 (= res!28222 (not (is-Nil!1311 l!1333)))))

(declare-fun b!48627 () Bool)

(declare-fun res!28223 () Bool)

(assert (=> b!48627 (=> (not res!28223) (not e!31225))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!110 (List!1314 (_ BitVec 64)) Bool)

(assert (=> b!48627 (= res!28223 (not (containsKey!110 l!1333 newKey!147)))))

(declare-fun b!48629 () Bool)

(assert (=> b!48629 (= e!31225 false)))

(declare-datatypes ((Unit!1364 0))(
  ( (Unit!1365) )
))
(declare-fun lt!20679 () Unit!1364)

(declare-fun newValue!147 () B!956)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!4 (List!1314 (_ BitVec 64) B!956) Unit!1364)

(assert (=> b!48629 (= lt!20679 (lemmaInsertStrictlySortedNotContainedContent!4 (t!4350 l!1333) newKey!147 newValue!147))))

(declare-fun b!48630 () Bool)

(declare-fun tp!6419 () Bool)

(assert (=> b!48630 (= e!31224 (and tp_is_empty!2107 tp!6419))))

(assert (= (and start!7624 res!28224) b!48627))

(assert (= (and b!48627 res!28223) b!48628))

(assert (= (and b!48628 res!28222) b!48629))

(assert (= (and start!7624 (is-Cons!1310 l!1333)) b!48630))

(declare-fun m!42381 () Bool)

(assert (=> start!7624 m!42381))

(declare-fun m!42383 () Bool)

(assert (=> b!48627 m!42383))

(declare-fun m!42385 () Bool)

(assert (=> b!48629 m!42385))

(push 1)

(assert (not b!48629))

(assert tp_is_empty!2107)

(assert (not b!48630))

(assert (not b!48627))

(assert (not start!7624))

(check-sat)

(pop 1)

