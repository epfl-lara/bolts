; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88936 () Bool)

(assert start!88936)

(declare-fun b!1020168 () Bool)

(declare-fun res!683867 () Bool)

(declare-fun e!574235 () Bool)

(assert (=> b!1020168 (=> (not res!683867) (not e!574235))))

(declare-datatypes ((B!1712 0))(
  ( (B!1713 (val!11940 Int)) )
))
(declare-datatypes ((tuple2!15516 0))(
  ( (tuple2!15517 (_1!7768 (_ BitVec 64)) (_2!7768 B!1712)) )
))
(declare-datatypes ((List!21742 0))(
  ( (Nil!21739) (Cons!21738 (h!22936 tuple2!15516) (t!30759 List!21742)) )
))
(declare-fun l!1367 () List!21742)

(declare-fun lt!449787 () tuple2!15516)

(declare-fun contains!5933 (List!21742 tuple2!15516) Bool)

(assert (=> b!1020168 (= res!683867 (contains!5933 (t!30759 l!1367) lt!449787))))

(declare-fun b!1020170 () Bool)

(assert (=> b!1020170 (= e!574235 (not true))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!551 (List!21742 (_ BitVec 64)) Bool)

(assert (=> b!1020170 (containsKey!551 (t!30759 l!1367) key!393)))

(declare-fun value!188 () B!1712)

(declare-datatypes ((Unit!33258 0))(
  ( (Unit!33259) )
))
(declare-fun lt!449788 () Unit!33258)

(declare-fun lemmaContainsTupleThenContainsKey!10 (List!21742 (_ BitVec 64) B!1712) Unit!33258)

(assert (=> b!1020170 (= lt!449788 (lemmaContainsTupleThenContainsKey!10 (t!30759 l!1367) key!393 value!188))))

(declare-fun b!1020171 () Bool)

(declare-fun res!683868 () Bool)

(assert (=> b!1020171 (=> (not res!683868) (not e!574235))))

(declare-fun isStrictlySorted!689 (List!21742) Bool)

(assert (=> b!1020171 (= res!683868 (isStrictlySorted!689 (t!30759 l!1367)))))

(declare-fun b!1020169 () Bool)

(declare-fun res!683869 () Bool)

(assert (=> b!1020169 (=> (not res!683869) (not e!574235))))

(assert (=> b!1020169 (= res!683869 (and (is-Cons!21738 l!1367) (not (= (h!22936 l!1367) lt!449787))))))

(declare-fun res!683871 () Bool)

(declare-fun e!574236 () Bool)

(assert (=> start!88936 (=> (not res!683871) (not e!574236))))

(assert (=> start!88936 (= res!683871 (isStrictlySorted!689 l!1367))))

(assert (=> start!88936 e!574236))

(declare-fun e!574237 () Bool)

(assert (=> start!88936 e!574237))

(assert (=> start!88936 true))

(declare-fun tp_is_empty!23779 () Bool)

(assert (=> start!88936 tp_is_empty!23779))

(declare-fun b!1020172 () Bool)

(assert (=> b!1020172 (= e!574236 e!574235)))

(declare-fun res!683870 () Bool)

(assert (=> b!1020172 (=> (not res!683870) (not e!574235))))

(assert (=> b!1020172 (= res!683870 (contains!5933 l!1367 lt!449787))))

(assert (=> b!1020172 (= lt!449787 (tuple2!15517 key!393 value!188))))

(declare-fun b!1020173 () Bool)

(declare-fun tp!71219 () Bool)

(assert (=> b!1020173 (= e!574237 (and tp_is_empty!23779 tp!71219))))

(assert (= (and start!88936 res!683871) b!1020172))

(assert (= (and b!1020172 res!683870) b!1020169))

(assert (= (and b!1020169 res!683869) b!1020171))

(assert (= (and b!1020171 res!683868) b!1020168))

(assert (= (and b!1020168 res!683867) b!1020170))

(assert (= (and start!88936 (is-Cons!21738 l!1367)) b!1020173))

(declare-fun m!940339 () Bool)

(assert (=> b!1020168 m!940339))

(declare-fun m!940341 () Bool)

(assert (=> b!1020171 m!940341))

(declare-fun m!940343 () Bool)

(assert (=> b!1020172 m!940343))

(declare-fun m!940345 () Bool)

(assert (=> start!88936 m!940345))

(declare-fun m!940347 () Bool)

(assert (=> b!1020170 m!940347))

(declare-fun m!940349 () Bool)

(assert (=> b!1020170 m!940349))

(push 1)

