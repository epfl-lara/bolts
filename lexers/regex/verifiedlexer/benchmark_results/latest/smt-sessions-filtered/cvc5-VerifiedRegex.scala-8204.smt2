; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423626 () Bool)

(assert start!423626)

(declare-fun res!1796370 () Bool)

(declare-fun e!2717706 () Bool)

(assert (=> start!423626 (=> (not res!1796370) (not e!2717706))))

(declare-datatypes ((V!10669 0))(
  ( (V!10670 (val!16609 Int)) )
))
(declare-datatypes ((K!10423 0))(
  ( (K!10424 (val!16610 Int)) )
))
(declare-datatypes ((tuple2!48538 0))(
  ( (tuple2!48539 (_1!27563 K!10423) (_2!27563 V!10669)) )
))
(declare-datatypes ((List!49186 0))(
  ( (Nil!49062) (Cons!49062 (h!54639 tuple2!48538) (t!356106 List!49186)) )
))
(declare-datatypes ((tuple2!48540 0))(
  ( (tuple2!48541 (_1!27564 (_ BitVec 64)) (_2!27564 List!49186)) )
))
(declare-datatypes ((List!49187 0))(
  ( (Nil!49063) (Cons!49063 (h!54640 tuple2!48540) (t!356107 List!49187)) )
))
(declare-datatypes ((ListLongMap!1717 0))(
  ( (ListLongMap!1718 (toList!3067 List!49187)) )
))
(declare-fun lm!1707 () ListLongMap!1717)

(declare-fun lambda!142882 () Int)

(declare-fun forall!9206 (List!49187 Int) Bool)

(assert (=> start!423626 (= res!1796370 (forall!9206 (toList!3067 lm!1707) lambda!142882))))

(assert (=> start!423626 e!2717706))

(declare-fun e!2717703 () Bool)

(assert (=> start!423626 e!2717703))

(assert (=> start!423626 true))

(declare-fun e!2717705 () Bool)

(declare-fun inv!64610 (ListLongMap!1717) Bool)

(assert (=> start!423626 (and (inv!64610 lm!1707) e!2717705)))

(declare-fun tp_is_empty!25405 () Bool)

(assert (=> start!423626 tp_is_empty!25405))

(declare-fun tp_is_empty!25407 () Bool)

(assert (=> start!423626 tp_is_empty!25407))

(declare-fun b!4366687 () Bool)

(declare-fun res!1796373 () Bool)

(declare-fun e!2717704 () Bool)

(assert (=> b!4366687 (=> res!1796373 e!2717704)))

(declare-fun newBucket!200 () List!49186)

(declare-fun noDuplicateKeys!542 (List!49186) Bool)

(assert (=> b!4366687 (= res!1796373 (not (noDuplicateKeys!542 newBucket!200)))))

(declare-fun b!4366688 () Bool)

(declare-fun res!1796372 () Bool)

(assert (=> b!4366688 (=> (not res!1796372) (not e!2717706))))

(declare-datatypes ((Hashable!4934 0))(
  ( (HashableExt!4933 (__x!30637 Int)) )
))
(declare-fun hashF!1247 () Hashable!4934)

(declare-fun allKeysSameHashInMap!646 (ListLongMap!1717 Hashable!4934) Bool)

(assert (=> b!4366688 (= res!1796372 (allKeysSameHashInMap!646 lm!1707 hashF!1247))))

(declare-fun b!4366689 () Bool)

(declare-fun res!1796367 () Bool)

(assert (=> b!4366689 (=> (not res!1796367) (not e!2717706))))

(declare-fun key!3918 () K!10423)

(declare-datatypes ((ListMap!2311 0))(
  ( (ListMap!2312 (toList!3068 List!49186)) )
))
(declare-fun contains!11340 (ListMap!2311 K!10423) Bool)

(declare-fun extractMap!601 (List!49187) ListMap!2311)

(assert (=> b!4366689 (= res!1796367 (contains!11340 (extractMap!601 (toList!3067 lm!1707)) key!3918))))

(declare-fun b!4366690 () Bool)

(declare-fun res!1796371 () Bool)

(assert (=> b!4366690 (=> (not res!1796371) (not e!2717706))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!500 (List!49186 (_ BitVec 64) Hashable!4934) Bool)

(assert (=> b!4366690 (= res!1796371 (allKeysSameHash!500 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4366691 () Bool)

(assert (=> b!4366691 (= e!2717706 (not e!2717704))))

(declare-fun res!1796366 () Bool)

(assert (=> b!4366691 (=> res!1796366 e!2717704)))

(declare-fun lt!1579186 () List!49186)

(declare-fun newValue!99 () V!10669)

(declare-fun removePairForKey!510 (List!49186 K!10423) List!49186)

(assert (=> b!4366691 (= res!1796366 (not (= newBucket!200 (Cons!49062 (tuple2!48539 key!3918 newValue!99) (removePairForKey!510 lt!1579186 key!3918)))))))

(declare-fun lt!1579187 () tuple2!48540)

(declare-datatypes ((Unit!73156 0))(
  ( (Unit!73157) )
))
(declare-fun lt!1579188 () Unit!73156)

(declare-fun forallContained!1844 (List!49187 Int tuple2!48540) Unit!73156)

(assert (=> b!4366691 (= lt!1579188 (forallContained!1844 (toList!3067 lm!1707) lambda!142882 lt!1579187))))

(declare-fun contains!11341 (List!49187 tuple2!48540) Bool)

(assert (=> b!4366691 (contains!11341 (toList!3067 lm!1707) lt!1579187)))

(assert (=> b!4366691 (= lt!1579187 (tuple2!48541 hash!377 lt!1579186))))

(declare-fun lt!1579185 () Unit!73156)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!387 (List!49187 (_ BitVec 64) List!49186) Unit!73156)

(assert (=> b!4366691 (= lt!1579185 (lemmaGetValueByKeyImpliesContainsTuple!387 (toList!3067 lm!1707) hash!377 lt!1579186))))

(declare-fun apply!11394 (ListLongMap!1717 (_ BitVec 64)) List!49186)

(assert (=> b!4366691 (= lt!1579186 (apply!11394 lm!1707 hash!377))))

(declare-fun b!4366692 () Bool)

(assert (=> b!4366692 (= e!2717704 (forall!9206 (toList!3067 lm!1707) lambda!142882))))

(declare-fun tp!1330725 () Bool)

(declare-fun b!4366693 () Bool)

(assert (=> b!4366693 (= e!2717703 (and tp_is_empty!25405 tp_is_empty!25407 tp!1330725))))

(declare-fun b!4366694 () Bool)

(declare-fun res!1796369 () Bool)

(assert (=> b!4366694 (=> (not res!1796369) (not e!2717706))))

(declare-fun contains!11342 (ListLongMap!1717 (_ BitVec 64)) Bool)

(assert (=> b!4366694 (= res!1796369 (contains!11342 lm!1707 hash!377))))

(declare-fun b!4366695 () Bool)

(declare-fun tp!1330726 () Bool)

(assert (=> b!4366695 (= e!2717705 tp!1330726)))

(declare-fun b!4366696 () Bool)

(declare-fun res!1796368 () Bool)

(assert (=> b!4366696 (=> (not res!1796368) (not e!2717706))))

(declare-fun hash!1689 (Hashable!4934 K!10423) (_ BitVec 64))

(assert (=> b!4366696 (= res!1796368 (= (hash!1689 hashF!1247 key!3918) hash!377))))

(assert (= (and start!423626 res!1796370) b!4366688))

(assert (= (and b!4366688 res!1796372) b!4366696))

(assert (= (and b!4366696 res!1796368) b!4366690))

(assert (= (and b!4366690 res!1796371) b!4366689))

(assert (= (and b!4366689 res!1796367) b!4366694))

(assert (= (and b!4366694 res!1796369) b!4366691))

(assert (= (and b!4366691 (not res!1796366)) b!4366687))

(assert (= (and b!4366687 (not res!1796373)) b!4366692))

(assert (= (and start!423626 (is-Cons!49062 newBucket!200)) b!4366693))

(assert (= start!423626 b!4366695))

(declare-fun m!4989763 () Bool)

(assert (=> b!4366691 m!4989763))

(declare-fun m!4989765 () Bool)

(assert (=> b!4366691 m!4989765))

(declare-fun m!4989767 () Bool)

(assert (=> b!4366691 m!4989767))

(declare-fun m!4989769 () Bool)

(assert (=> b!4366691 m!4989769))

(declare-fun m!4989771 () Bool)

(assert (=> b!4366691 m!4989771))

(declare-fun m!4989773 () Bool)

(assert (=> b!4366687 m!4989773))

(declare-fun m!4989775 () Bool)

(assert (=> b!4366696 m!4989775))

(declare-fun m!4989777 () Bool)

(assert (=> b!4366692 m!4989777))

(declare-fun m!4989779 () Bool)

(assert (=> b!4366694 m!4989779))

(declare-fun m!4989781 () Bool)

(assert (=> b!4366689 m!4989781))

(assert (=> b!4366689 m!4989781))

(declare-fun m!4989783 () Bool)

(assert (=> b!4366689 m!4989783))

(declare-fun m!4989785 () Bool)

(assert (=> b!4366688 m!4989785))

(declare-fun m!4989787 () Bool)

(assert (=> b!4366690 m!4989787))

(assert (=> start!423626 m!4989777))

(declare-fun m!4989789 () Bool)

(assert (=> start!423626 m!4989789))

(push 1)

(assert (not b!4366689))

(assert (not b!4366694))

(assert (not b!4366688))

(assert tp_is_empty!25405)

(assert (not b!4366696))

(assert (not b!4366693))

(assert (not start!423626))

(assert (not b!4366695))

(assert (not b!4366692))

(assert (not b!4366691))

(assert tp_is_empty!25407)

(assert (not b!4366690))

(assert (not b!4366687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

