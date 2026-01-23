; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436726 () Bool)

(assert start!436726)

(declare-fun b!4456288 () Bool)

(declare-fun e!2774918 () Bool)

(declare-datatypes ((K!11388 0))(
  ( (K!11389 (val!17381 Int)) )
))
(declare-datatypes ((V!11634 0))(
  ( (V!11635 (val!17382 Int)) )
))
(declare-datatypes ((tuple2!50082 0))(
  ( (tuple2!50083 (_1!28335 K!11388) (_2!28335 V!11634)) )
))
(declare-datatypes ((List!50133 0))(
  ( (Nil!50009) (Cons!50009 (h!55754 tuple2!50082) (t!357083 List!50133)) )
))
(declare-datatypes ((tuple2!50084 0))(
  ( (tuple2!50085 (_1!28336 (_ BitVec 64)) (_2!28336 List!50133)) )
))
(declare-datatypes ((List!50134 0))(
  ( (Nil!50010) (Cons!50010 (h!55755 tuple2!50084) (t!357084 List!50134)) )
))
(declare-datatypes ((ListLongMap!2489 0))(
  ( (ListLongMap!2490 (toList!3833 List!50134)) )
))
(declare-fun lm!1853 () ListLongMap!2489)

(declare-fun lambda!160380 () Int)

(declare-fun forall!9836 (List!50134 Int) Bool)

(assert (=> b!4456288 (= e!2774918 (not (forall!9836 (toList!3833 lm!1853) lambda!160380)))))

(declare-datatypes ((ListMap!3071 0))(
  ( (ListMap!3072 (toList!3834 List!50133)) )
))
(declare-fun lt!1647600 () ListMap!3071)

(declare-fun l!12858 () List!50133)

(declare-fun lt!1647601 () ListMap!3071)

(declare-fun addToMapMapFromBucket!507 (List!50133 ListMap!3071) ListMap!3071)

(declare-fun +!1288 (ListMap!3071 tuple2!50082) ListMap!3071)

(assert (=> b!4456288 (= lt!1647600 (addToMapMapFromBucket!507 (t!357083 l!12858) (+!1288 lt!1647601 (h!55754 l!12858))))))

(declare-fun lt!1647602 () ListMap!3071)

(declare-fun eq!472 (ListMap!3071 ListMap!3071) Bool)

(assert (=> b!4456288 (eq!472 (addToMapMapFromBucket!507 (t!357083 l!12858) (+!1288 lt!1647601 (h!55754 l!12858))) (+!1288 lt!1647602 (h!55754 l!12858)))))

(declare-datatypes ((Unit!86086 0))(
  ( (Unit!86087) )
))
(declare-fun lt!1647603 () Unit!86086)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!219 (ListMap!3071 K!11388 V!11634 List!50133) Unit!86086)

(assert (=> b!4456288 (= lt!1647603 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!219 lt!1647601 (_1!28335 (h!55754 l!12858)) (_2!28335 (h!55754 l!12858)) (t!357083 l!12858)))))

(declare-fun key!4412 () K!11388)

(declare-fun contains!12551 (ListMap!3071 K!11388) Bool)

(assert (=> b!4456288 (contains!12551 lt!1647602 key!4412)))

(assert (=> b!4456288 (= lt!1647602 (addToMapMapFromBucket!507 (t!357083 l!12858) lt!1647601))))

(declare-datatypes ((Hashable!5320 0))(
  ( (HashableExt!5319 (__x!31023 Int)) )
))
(declare-fun hashF!1313 () Hashable!5320)

(declare-fun lt!1647599 () Unit!86086)

(declare-fun lemmaAddToMapMaintainsContains!15 (ListLongMap!2489 K!11388 List!50133 Hashable!5320) Unit!86086)

(assert (=> b!4456288 (= lt!1647599 (lemmaAddToMapMaintainsContains!15 lm!1853 key!4412 (t!357083 l!12858) hashF!1313))))

(declare-fun b!4456289 () Bool)

(declare-fun res!1847348 () Bool)

(declare-fun e!2774921 () Bool)

(assert (=> b!4456289 (=> (not res!1847348) (not e!2774921))))

(declare-fun noDuplicateKeys!913 (List!50133) Bool)

(assert (=> b!4456289 (= res!1847348 (noDuplicateKeys!913 l!12858))))

(declare-fun b!4456290 () Bool)

(declare-fun e!2774920 () Bool)

(declare-fun tp!1335024 () Bool)

(assert (=> b!4456290 (= e!2774920 tp!1335024)))

(declare-fun res!1847347 () Bool)

(assert (=> start!436726 (=> (not res!1847347) (not e!2774921))))

(assert (=> start!436726 (= res!1847347 (forall!9836 (toList!3833 lm!1853) lambda!160380))))

(assert (=> start!436726 e!2774921))

(declare-fun inv!65575 (ListLongMap!2489) Bool)

(assert (=> start!436726 (and (inv!65575 lm!1853) e!2774920)))

(assert (=> start!436726 true))

(declare-fun e!2774919 () Bool)

(assert (=> start!436726 e!2774919))

(declare-fun tp_is_empty!26873 () Bool)

(assert (=> start!436726 tp_is_empty!26873))

(declare-fun b!4456291 () Bool)

(declare-fun res!1847349 () Bool)

(assert (=> b!4456291 (=> (not res!1847349) (not e!2774918))))

(assert (=> b!4456291 (= res!1847349 (is-Cons!50009 l!12858))))

(declare-fun b!4456292 () Bool)

(declare-fun tp!1335025 () Bool)

(declare-fun tp_is_empty!26875 () Bool)

(assert (=> b!4456292 (= e!2774919 (and tp_is_empty!26873 tp_is_empty!26875 tp!1335025))))

(declare-fun b!4456293 () Bool)

(assert (=> b!4456293 (= e!2774921 e!2774918)))

(declare-fun res!1847350 () Bool)

(assert (=> b!4456293 (=> (not res!1847350) (not e!2774918))))

(assert (=> b!4456293 (= res!1847350 (contains!12551 lt!1647601 key!4412))))

(declare-fun extractMap!981 (List!50134) ListMap!3071)

(assert (=> b!4456293 (= lt!1647601 (extractMap!981 (toList!3833 lm!1853)))))

(declare-fun b!4456294 () Bool)

(declare-fun res!1847346 () Bool)

(assert (=> b!4456294 (=> (not res!1847346) (not e!2774921))))

(declare-fun allKeysSameHashInMap!1032 (ListLongMap!2489 Hashable!5320) Bool)

(assert (=> b!4456294 (= res!1847346 (allKeysSameHashInMap!1032 lm!1853 hashF!1313))))

(assert (= (and start!436726 res!1847347) b!4456294))

(assert (= (and b!4456294 res!1847346) b!4456289))

(assert (= (and b!4456289 res!1847348) b!4456293))

(assert (= (and b!4456293 res!1847350) b!4456291))

(assert (= (and b!4456291 res!1847349) b!4456288))

(assert (= start!436726 b!4456290))

(assert (= (and start!436726 (is-Cons!50009 l!12858)) b!4456292))

(declare-fun m!5158025 () Bool)

(assert (=> b!4456294 m!5158025))

(declare-fun m!5158027 () Bool)

(assert (=> b!4456293 m!5158027))

(declare-fun m!5158029 () Bool)

(assert (=> b!4456293 m!5158029))

(declare-fun m!5158031 () Bool)

(assert (=> b!4456289 m!5158031))

(declare-fun m!5158033 () Bool)

(assert (=> b!4456288 m!5158033))

(declare-fun m!5158035 () Bool)

(assert (=> b!4456288 m!5158035))

(declare-fun m!5158037 () Bool)

(assert (=> b!4456288 m!5158037))

(declare-fun m!5158039 () Bool)

(assert (=> b!4456288 m!5158039))

(declare-fun m!5158041 () Bool)

(assert (=> b!4456288 m!5158041))

(declare-fun m!5158043 () Bool)

(assert (=> b!4456288 m!5158043))

(declare-fun m!5158045 () Bool)

(assert (=> b!4456288 m!5158045))

(declare-fun m!5158047 () Bool)

(assert (=> b!4456288 m!5158047))

(declare-fun m!5158049 () Bool)

(assert (=> b!4456288 m!5158049))

(assert (=> b!4456288 m!5158045))

(assert (=> b!4456288 m!5158049))

(assert (=> b!4456288 m!5158043))

(assert (=> start!436726 m!5158041))

(declare-fun m!5158051 () Bool)

(assert (=> start!436726 m!5158051))

(push 1)

(assert (not b!4456290))

(assert (not b!4456294))

(assert tp_is_empty!26873)

(assert tp_is_empty!26875)

(assert (not b!4456293))

(assert (not start!436726))

(assert (not b!4456292))

(assert (not b!4456288))

(assert (not b!4456289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

