; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423632 () Bool)

(assert start!423632)

(declare-fun b!4366783 () Bool)

(declare-fun res!1796447 () Bool)

(declare-fun e!2717744 () Bool)

(assert (=> b!4366783 (=> res!1796447 e!2717744)))

(declare-datatypes ((K!10430 0))(
  ( (K!10431 (val!16615 Int)) )
))
(declare-datatypes ((V!10676 0))(
  ( (V!10677 (val!16616 Int)) )
))
(declare-datatypes ((tuple2!48550 0))(
  ( (tuple2!48551 (_1!27569 K!10430) (_2!27569 V!10676)) )
))
(declare-datatypes ((List!49192 0))(
  ( (Nil!49068) (Cons!49068 (h!54645 tuple2!48550) (t!356112 List!49192)) )
))
(declare-fun newBucket!200 () List!49192)

(declare-fun noDuplicateKeys!545 (List!49192) Bool)

(assert (=> b!4366783 (= res!1796447 (not (noDuplicateKeys!545 newBucket!200)))))

(declare-fun b!4366784 () Bool)

(declare-fun res!1796448 () Bool)

(declare-fun e!2717745 () Bool)

(assert (=> b!4366784 (=> (not res!1796448) (not e!2717745))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4937 0))(
  ( (HashableExt!4936 (__x!30640 Int)) )
))
(declare-fun hashF!1247 () Hashable!4937)

(declare-fun allKeysSameHash!503 (List!49192 (_ BitVec 64) Hashable!4937) Bool)

(assert (=> b!4366784 (= res!1796448 (allKeysSameHash!503 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4366785 () Bool)

(declare-fun e!2717747 () Bool)

(declare-fun tp!1330743 () Bool)

(assert (=> b!4366785 (= e!2717747 tp!1330743)))

(declare-fun b!4366786 () Bool)

(declare-fun res!1796451 () Bool)

(assert (=> b!4366786 (=> (not res!1796451) (not e!2717745))))

(declare-fun key!3918 () K!10430)

(declare-fun hash!1692 (Hashable!4937 K!10430) (_ BitVec 64))

(assert (=> b!4366786 (= res!1796451 (= (hash!1692 hashF!1247 key!3918) hash!377))))

(declare-fun b!4366782 () Bool)

(declare-fun res!1796443 () Bool)

(assert (=> b!4366782 (=> (not res!1796443) (not e!2717745))))

(declare-datatypes ((tuple2!48552 0))(
  ( (tuple2!48553 (_1!27570 (_ BitVec 64)) (_2!27570 List!49192)) )
))
(declare-datatypes ((List!49193 0))(
  ( (Nil!49069) (Cons!49069 (h!54646 tuple2!48552) (t!356113 List!49193)) )
))
(declare-datatypes ((ListLongMap!1723 0))(
  ( (ListLongMap!1724 (toList!3073 List!49193)) )
))
(declare-fun lm!1707 () ListLongMap!1723)

(declare-fun allKeysSameHashInMap!649 (ListLongMap!1723 Hashable!4937) Bool)

(assert (=> b!4366782 (= res!1796443 (allKeysSameHashInMap!649 lm!1707 hashF!1247))))

(declare-fun res!1796445 () Bool)

(assert (=> start!423632 (=> (not res!1796445) (not e!2717745))))

(declare-fun lambda!142907 () Int)

(declare-fun forall!9209 (List!49193 Int) Bool)

(assert (=> start!423632 (= res!1796445 (forall!9209 (toList!3073 lm!1707) lambda!142907))))

(assert (=> start!423632 e!2717745))

(declare-fun e!2717746 () Bool)

(assert (=> start!423632 e!2717746))

(assert (=> start!423632 true))

(declare-fun inv!64616 (ListLongMap!1723) Bool)

(assert (=> start!423632 (and (inv!64616 lm!1707) e!2717747)))

(declare-fun tp_is_empty!25417 () Bool)

(assert (=> start!423632 tp_is_empty!25417))

(declare-fun tp_is_empty!25419 () Bool)

(assert (=> start!423632 tp_is_empty!25419))

(declare-fun b!4366787 () Bool)

(declare-fun res!1796449 () Bool)

(assert (=> b!4366787 (=> (not res!1796449) (not e!2717745))))

(declare-datatypes ((ListMap!2317 0))(
  ( (ListMap!2318 (toList!3074 List!49192)) )
))
(declare-fun contains!11349 (ListMap!2317 K!10430) Bool)

(declare-fun extractMap!604 (List!49193) ListMap!2317)

(assert (=> b!4366787 (= res!1796449 (contains!11349 (extractMap!604 (toList!3073 lm!1707)) key!3918))))

(declare-fun tp!1330744 () Bool)

(declare-fun b!4366788 () Bool)

(assert (=> b!4366788 (= e!2717746 (and tp_is_empty!25417 tp_is_empty!25419 tp!1330744))))

(declare-fun b!4366789 () Bool)

(declare-fun e!2717748 () Bool)

(assert (=> b!4366789 (= e!2717744 e!2717748)))

(declare-fun res!1796450 () Bool)

(assert (=> b!4366789 (=> (not res!1796450) (not e!2717748))))

(assert (=> b!4366789 (= res!1796450 (forall!9209 (toList!3073 lm!1707) lambda!142907))))

(assert (=> b!4366789 (forall!9209 (toList!3073 lm!1707) lambda!142907)))

(declare-fun b!4366790 () Bool)

(assert (=> b!4366790 (= e!2717748 (noDuplicateKeys!545 newBucket!200))))

(declare-fun b!4366791 () Bool)

(declare-fun res!1796446 () Bool)

(assert (=> b!4366791 (=> (not res!1796446) (not e!2717745))))

(declare-fun contains!11350 (ListLongMap!1723 (_ BitVec 64)) Bool)

(assert (=> b!4366791 (= res!1796446 (contains!11350 lm!1707 hash!377))))

(declare-fun b!4366792 () Bool)

(assert (=> b!4366792 (= e!2717745 (not e!2717744))))

(declare-fun res!1796444 () Bool)

(assert (=> b!4366792 (=> res!1796444 e!2717744)))

(declare-fun lt!1579221 () List!49192)

(declare-fun newValue!99 () V!10676)

(declare-fun removePairForKey!513 (List!49192 K!10430) List!49192)

(assert (=> b!4366792 (= res!1796444 (not (= newBucket!200 (Cons!49068 (tuple2!48551 key!3918 newValue!99) (removePairForKey!513 lt!1579221 key!3918)))))))

(declare-fun lt!1579224 () tuple2!48552)

(declare-datatypes ((Unit!73162 0))(
  ( (Unit!73163) )
))
(declare-fun lt!1579222 () Unit!73162)

(declare-fun forallContained!1847 (List!49193 Int tuple2!48552) Unit!73162)

(assert (=> b!4366792 (= lt!1579222 (forallContained!1847 (toList!3073 lm!1707) lambda!142907 lt!1579224))))

(declare-fun contains!11351 (List!49193 tuple2!48552) Bool)

(assert (=> b!4366792 (contains!11351 (toList!3073 lm!1707) lt!1579224)))

(assert (=> b!4366792 (= lt!1579224 (tuple2!48553 hash!377 lt!1579221))))

(declare-fun lt!1579223 () Unit!73162)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!390 (List!49193 (_ BitVec 64) List!49192) Unit!73162)

(assert (=> b!4366792 (= lt!1579223 (lemmaGetValueByKeyImpliesContainsTuple!390 (toList!3073 lm!1707) hash!377 lt!1579221))))

(declare-fun apply!11397 (ListLongMap!1723 (_ BitVec 64)) List!49192)

(assert (=> b!4366792 (= lt!1579221 (apply!11397 lm!1707 hash!377))))

(assert (= (and start!423632 res!1796445) b!4366782))

(assert (= (and b!4366782 res!1796443) b!4366786))

(assert (= (and b!4366786 res!1796451) b!4366784))

(assert (= (and b!4366784 res!1796448) b!4366787))

(assert (= (and b!4366787 res!1796449) b!4366791))

(assert (= (and b!4366791 res!1796446) b!4366792))

(assert (= (and b!4366792 (not res!1796444)) b!4366783))

(assert (= (and b!4366783 (not res!1796447)) b!4366789))

(assert (= (and b!4366789 res!1796450) b!4366790))

(get-info :version)

(assert (= (and start!423632 ((_ is Cons!49068) newBucket!200)) b!4366788))

(assert (= start!423632 b!4366785))

(declare-fun m!4989847 () Bool)

(assert (=> b!4366783 m!4989847))

(declare-fun m!4989849 () Bool)

(assert (=> b!4366791 m!4989849))

(declare-fun m!4989851 () Bool)

(assert (=> start!423632 m!4989851))

(declare-fun m!4989853 () Bool)

(assert (=> start!423632 m!4989853))

(declare-fun m!4989855 () Bool)

(assert (=> b!4366782 m!4989855))

(declare-fun m!4989857 () Bool)

(assert (=> b!4366792 m!4989857))

(declare-fun m!4989859 () Bool)

(assert (=> b!4366792 m!4989859))

(declare-fun m!4989861 () Bool)

(assert (=> b!4366792 m!4989861))

(declare-fun m!4989863 () Bool)

(assert (=> b!4366792 m!4989863))

(declare-fun m!4989865 () Bool)

(assert (=> b!4366792 m!4989865))

(assert (=> b!4366789 m!4989851))

(assert (=> b!4366789 m!4989851))

(assert (=> b!4366790 m!4989847))

(declare-fun m!4989867 () Bool)

(assert (=> b!4366787 m!4989867))

(assert (=> b!4366787 m!4989867))

(declare-fun m!4989869 () Bool)

(assert (=> b!4366787 m!4989869))

(declare-fun m!4989871 () Bool)

(assert (=> b!4366784 m!4989871))

(declare-fun m!4989873 () Bool)

(assert (=> b!4366786 m!4989873))

(check-sat (not b!4366791) (not b!4366786) (not b!4366785) tp_is_empty!25417 (not b!4366788) tp_is_empty!25419 (not b!4366787) (not start!423632) (not b!4366784) (not b!4366792) (not b!4366790) (not b!4366783) (not b!4366789) (not b!4366782))
(check-sat)
