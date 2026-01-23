; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436632 () Bool)

(assert start!436632)

(declare-fun res!1847045 () Bool)

(declare-fun e!2774567 () Bool)

(assert (=> start!436632 (=> (not res!1847045) (not e!2774567))))

(declare-datatypes ((K!11365 0))(
  ( (K!11366 (val!17363 Int)) )
))
(declare-datatypes ((V!11611 0))(
  ( (V!11612 (val!17364 Int)) )
))
(declare-datatypes ((tuple2!50046 0))(
  ( (tuple2!50047 (_1!28317 K!11365) (_2!28317 V!11611)) )
))
(declare-datatypes ((List!50111 0))(
  ( (Nil!49987) (Cons!49987 (h!55732 tuple2!50046) (t!357061 List!50111)) )
))
(declare-datatypes ((tuple2!50048 0))(
  ( (tuple2!50049 (_1!28318 (_ BitVec 64)) (_2!28318 List!50111)) )
))
(declare-datatypes ((List!50112 0))(
  ( (Nil!49988) (Cons!49988 (h!55733 tuple2!50048) (t!357062 List!50112)) )
))
(declare-datatypes ((ListLongMap!2471 0))(
  ( (ListLongMap!2472 (toList!3815 List!50112)) )
))
(declare-fun lm!1853 () ListLongMap!2471)

(declare-fun lambda!160175 () Int)

(declare-fun forall!9824 (List!50112 Int) Bool)

(assert (=> start!436632 (= res!1847045 (forall!9824 (toList!3815 lm!1853) lambda!160175))))

(assert (=> start!436632 e!2774567))

(declare-fun e!2774568 () Bool)

(declare-fun inv!65551 (ListLongMap!2471) Bool)

(assert (=> start!436632 (and (inv!65551 lm!1853) e!2774568)))

(assert (=> start!436632 true))

(declare-fun e!2774569 () Bool)

(assert (=> start!436632 e!2774569))

(declare-fun tp_is_empty!26837 () Bool)

(assert (=> start!436632 tp_is_empty!26837))

(declare-fun b!4455727 () Bool)

(declare-fun e!2774566 () Bool)

(assert (=> b!4455727 (= e!2774566 (not (forall!9824 (toList!3815 lm!1853) lambda!160175)))))

(declare-fun l!12858 () List!50111)

(declare-datatypes ((ListMap!3053 0))(
  ( (ListMap!3054 (toList!3816 List!50111)) )
))
(declare-fun lt!1647019 () ListMap!3053)

(declare-fun key!4412 () K!11365)

(declare-fun contains!12536 (ListMap!3053 K!11365) Bool)

(declare-fun addToMapMapFromBucket!498 (List!50111 ListMap!3053) ListMap!3053)

(assert (=> b!4455727 (contains!12536 (addToMapMapFromBucket!498 (t!357061 l!12858) lt!1647019) key!4412)))

(declare-datatypes ((Hashable!5311 0))(
  ( (HashableExt!5310 (__x!31014 Int)) )
))
(declare-fun hashF!1313 () Hashable!5311)

(declare-datatypes ((Unit!85999 0))(
  ( (Unit!86000) )
))
(declare-fun lt!1647020 () Unit!85999)

(declare-fun lemmaAddToMapMaintainsContains!6 (ListLongMap!2471 K!11365 List!50111 Hashable!5311) Unit!85999)

(assert (=> b!4455727 (= lt!1647020 (lemmaAddToMapMaintainsContains!6 lm!1853 key!4412 (t!357061 l!12858) hashF!1313))))

(declare-fun b!4455728 () Bool)

(declare-fun res!1847044 () Bool)

(assert (=> b!4455728 (=> (not res!1847044) (not e!2774567))))

(declare-fun noDuplicateKeys!904 (List!50111) Bool)

(assert (=> b!4455728 (= res!1847044 (noDuplicateKeys!904 l!12858))))

(declare-fun b!4455729 () Bool)

(declare-fun tp!1334935 () Bool)

(assert (=> b!4455729 (= e!2774568 tp!1334935)))

(declare-fun b!4455730 () Bool)

(declare-fun res!1847043 () Bool)

(assert (=> b!4455730 (=> (not res!1847043) (not e!2774567))))

(declare-fun allKeysSameHashInMap!1023 (ListLongMap!2471 Hashable!5311) Bool)

(assert (=> b!4455730 (= res!1847043 (allKeysSameHashInMap!1023 lm!1853 hashF!1313))))

(declare-fun b!4455731 () Bool)

(assert (=> b!4455731 (= e!2774567 e!2774566)))

(declare-fun res!1847046 () Bool)

(assert (=> b!4455731 (=> (not res!1847046) (not e!2774566))))

(assert (=> b!4455731 (= res!1847046 (contains!12536 lt!1647019 key!4412))))

(declare-fun extractMap!972 (List!50112) ListMap!3053)

(assert (=> b!4455731 (= lt!1647019 (extractMap!972 (toList!3815 lm!1853)))))

(declare-fun tp_is_empty!26839 () Bool)

(declare-fun tp!1334934 () Bool)

(declare-fun b!4455732 () Bool)

(assert (=> b!4455732 (= e!2774569 (and tp_is_empty!26837 tp_is_empty!26839 tp!1334934))))

(declare-fun b!4455733 () Bool)

(declare-fun res!1847047 () Bool)

(assert (=> b!4455733 (=> (not res!1847047) (not e!2774566))))

(get-info :version)

(assert (=> b!4455733 (= res!1847047 ((_ is Cons!49987) l!12858))))

(assert (= (and start!436632 res!1847045) b!4455730))

(assert (= (and b!4455730 res!1847043) b!4455728))

(assert (= (and b!4455728 res!1847044) b!4455731))

(assert (= (and b!4455731 res!1847046) b!4455733))

(assert (= (and b!4455733 res!1847047) b!4455727))

(assert (= start!436632 b!4455729))

(assert (= (and start!436632 ((_ is Cons!49987) l!12858)) b!4455732))

(declare-fun m!5157245 () Bool)

(assert (=> b!4455728 m!5157245))

(declare-fun m!5157247 () Bool)

(assert (=> start!436632 m!5157247))

(declare-fun m!5157249 () Bool)

(assert (=> start!436632 m!5157249))

(declare-fun m!5157251 () Bool)

(assert (=> b!4455731 m!5157251))

(declare-fun m!5157253 () Bool)

(assert (=> b!4455731 m!5157253))

(declare-fun m!5157255 () Bool)

(assert (=> b!4455730 m!5157255))

(assert (=> b!4455727 m!5157247))

(declare-fun m!5157257 () Bool)

(assert (=> b!4455727 m!5157257))

(assert (=> b!4455727 m!5157257))

(declare-fun m!5157259 () Bool)

(assert (=> b!4455727 m!5157259))

(declare-fun m!5157261 () Bool)

(assert (=> b!4455727 m!5157261))

(check-sat (not b!4455727) tp_is_empty!26839 (not b!4455729) (not b!4455732) (not b!4455731) (not b!4455730) (not start!436632) tp_is_empty!26837 (not b!4455728))
(check-sat)
