; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418556 () Bool)

(assert start!418556)

(declare-fun b!4337833 () Bool)

(declare-fun res!1779599 () Bool)

(declare-fun e!2699106 () Bool)

(assert (=> b!4337833 (=> (not res!1779599) (not e!2699106))))

(declare-datatypes ((V!10316 0))(
  ( (V!10317 (val!16327 Int)) )
))
(declare-datatypes ((K!10070 0))(
  ( (K!10071 (val!16328 Int)) )
))
(declare-datatypes ((tuple2!47974 0))(
  ( (tuple2!47975 (_1!27281 K!10070) (_2!27281 V!10316)) )
))
(declare-datatypes ((List!48837 0))(
  ( (Nil!48713) (Cons!48713 (h!54222 tuple2!47974) (t!355753 List!48837)) )
))
(declare-datatypes ((tuple2!47976 0))(
  ( (tuple2!47977 (_1!27282 (_ BitVec 64)) (_2!27282 List!48837)) )
))
(declare-datatypes ((List!48838 0))(
  ( (Nil!48714) (Cons!48714 (h!54223 tuple2!47976) (t!355754 List!48838)) )
))
(declare-datatypes ((ListLongMap!1435 0))(
  ( (ListLongMap!1436 (toList!2785 List!48838)) )
))
(declare-fun lt!1551887 () ListLongMap!1435)

(declare-fun lambda!136471 () Int)

(declare-fun forall!8977 (List!48838 Int) Bool)

(assert (=> b!4337833 (= res!1779599 (forall!8977 (toList!2785 lt!1551887) lambda!136471))))

(declare-fun b!4337834 () Bool)

(declare-fun e!2699102 () Bool)

(declare-datatypes ((ListMap!2029 0))(
  ( (ListMap!2030 (toList!2786 List!48837)) )
))
(declare-fun lt!1551891 () ListMap!2029)

(declare-fun lt!1551897 () ListMap!2029)

(declare-fun eq!191 (ListMap!2029 ListMap!2029) Bool)

(assert (=> b!4337834 (= e!2699102 (eq!191 lt!1551891 lt!1551897))))

(declare-fun b!4337835 () Bool)

(declare-fun res!1779598 () Bool)

(declare-fun e!2699108 () Bool)

(assert (=> b!4337835 (=> (not res!1779598) (not e!2699108))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4793 0))(
  ( (HashableExt!4792 (__x!30496 Int)) )
))
(declare-fun hashF!1247 () Hashable!4793)

(declare-fun key!3918 () K!10070)

(declare-fun hash!1356 (Hashable!4793 K!10070) (_ BitVec 64))

(assert (=> b!4337835 (= res!1779598 (= (hash!1356 hashF!1247 key!3918) hash!377))))

(declare-fun b!4337836 () Bool)

(declare-fun e!2699107 () Bool)

(declare-fun tp!1329160 () Bool)

(assert (=> b!4337836 (= e!2699107 tp!1329160)))

(declare-fun b!4337837 () Bool)

(declare-fun res!1779596 () Bool)

(assert (=> b!4337837 (=> (not res!1779596) (not e!2699108))))

(declare-fun lm!1707 () ListLongMap!1435)

(declare-fun allKeysSameHashInMap!505 (ListLongMap!1435 Hashable!4793) Bool)

(assert (=> b!4337837 (= res!1779596 (allKeysSameHashInMap!505 lm!1707 hashF!1247))))

(declare-fun res!1779604 () Bool)

(assert (=> start!418556 (=> (not res!1779604) (not e!2699108))))

(assert (=> start!418556 (= res!1779604 (forall!8977 (toList!2785 lm!1707) lambda!136471))))

(assert (=> start!418556 e!2699108))

(declare-fun e!2699103 () Bool)

(assert (=> start!418556 e!2699103))

(assert (=> start!418556 true))

(declare-fun inv!64256 (ListLongMap!1435) Bool)

(assert (=> start!418556 (and (inv!64256 lm!1707) e!2699107)))

(declare-fun tp_is_empty!24841 () Bool)

(assert (=> start!418556 tp_is_empty!24841))

(declare-fun tp_is_empty!24843 () Bool)

(assert (=> start!418556 tp_is_empty!24843))

(declare-fun b!4337838 () Bool)

(declare-fun res!1779600 () Bool)

(assert (=> b!4337838 (=> (not res!1779600) (not e!2699108))))

(declare-fun contains!10796 (ListLongMap!1435 (_ BitVec 64)) Bool)

(assert (=> b!4337838 (= res!1779600 (contains!10796 lm!1707 hash!377))))

(declare-fun b!4337839 () Bool)

(declare-fun e!2699104 () Bool)

(assert (=> b!4337839 (= e!2699108 (not e!2699104))))

(declare-fun res!1779594 () Bool)

(assert (=> b!4337839 (=> res!1779594 e!2699104)))

(declare-fun newBucket!200 () List!48837)

(declare-fun lt!1551898 () List!48837)

(assert (=> b!4337839 (= res!1779594 (not (= newBucket!200 lt!1551898)))))

(declare-fun lt!1551894 () tuple2!47974)

(declare-fun lt!1551885 () List!48837)

(assert (=> b!4337839 (= lt!1551898 (Cons!48713 lt!1551894 lt!1551885))))

(declare-fun lt!1551881 () List!48837)

(declare-fun removePairForKey!371 (List!48837 K!10070) List!48837)

(assert (=> b!4337839 (= lt!1551885 (removePairForKey!371 lt!1551881 key!3918))))

(declare-fun newValue!99 () V!10316)

(assert (=> b!4337839 (= lt!1551894 (tuple2!47975 key!3918 newValue!99))))

(declare-fun lt!1551884 () tuple2!47976)

(declare-datatypes ((Unit!68975 0))(
  ( (Unit!68976) )
))
(declare-fun lt!1551895 () Unit!68975)

(declare-fun forallContained!1627 (List!48838 Int tuple2!47976) Unit!68975)

(assert (=> b!4337839 (= lt!1551895 (forallContained!1627 (toList!2785 lm!1707) lambda!136471 lt!1551884))))

(declare-fun contains!10797 (List!48838 tuple2!47976) Bool)

(assert (=> b!4337839 (contains!10797 (toList!2785 lm!1707) lt!1551884)))

(assert (=> b!4337839 (= lt!1551884 (tuple2!47977 hash!377 lt!1551881))))

(declare-fun lt!1551893 () Unit!68975)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!248 (List!48838 (_ BitVec 64) List!48837) Unit!68975)

(assert (=> b!4337839 (= lt!1551893 (lemmaGetValueByKeyImpliesContainsTuple!248 (toList!2785 lm!1707) hash!377 lt!1551881))))

(declare-fun apply!11253 (ListLongMap!1435 (_ BitVec 64)) List!48837)

(assert (=> b!4337839 (= lt!1551881 (apply!11253 lm!1707 hash!377))))

(declare-fun b!4337840 () Bool)

(declare-fun e!2699105 () Bool)

(assert (=> b!4337840 (= e!2699105 true)))

(declare-fun lt!1551883 () List!48837)

(assert (=> b!4337840 (= lt!1551883 lt!1551885)))

(declare-fun lt!1551896 () ListLongMap!1435)

(declare-fun +!473 (ListLongMap!1435 tuple2!47976) ListLongMap!1435)

(assert (=> b!4337840 (= lt!1551896 (+!473 lm!1707 (tuple2!47977 hash!377 lt!1551883)))))

(declare-fun tail!6899 (List!48837) List!48837)

(assert (=> b!4337840 (= lt!1551883 (tail!6899 newBucket!200))))

(assert (=> b!4337840 e!2699102))

(declare-fun res!1779602 () Bool)

(assert (=> b!4337840 (=> (not res!1779602) (not e!2699102))))

(declare-fun lt!1551882 () ListMap!2029)

(assert (=> b!4337840 (= res!1779602 (eq!191 lt!1551882 lt!1551897))))

(declare-fun lt!1551889 () ListMap!2029)

(declare-fun +!474 (ListMap!2029 tuple2!47974) ListMap!2029)

(declare-fun addToMapMapFromBucket!109 (List!48837 ListMap!2029) ListMap!2029)

(assert (=> b!4337840 (= lt!1551897 (+!474 (addToMapMapFromBucket!109 lt!1551885 lt!1551889) lt!1551894))))

(declare-fun lt!1551886 () Unit!68975)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!20 (ListMap!2029 K!10070 V!10316 List!48837) Unit!68975)

(assert (=> b!4337840 (= lt!1551886 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!20 lt!1551889 key!3918 newValue!99 lt!1551885))))

(assert (=> b!4337840 (= lt!1551891 lt!1551882)))

(assert (=> b!4337840 (= lt!1551882 (addToMapMapFromBucket!109 lt!1551885 (+!474 lt!1551889 lt!1551894)))))

(declare-fun lt!1551888 () ListMap!2029)

(assert (=> b!4337840 (= lt!1551888 lt!1551891)))

(assert (=> b!4337840 (= lt!1551891 (addToMapMapFromBucket!109 lt!1551898 lt!1551889))))

(assert (=> b!4337840 (= lt!1551888 (addToMapMapFromBucket!109 newBucket!200 lt!1551889))))

(declare-fun extractMap!460 (List!48838) ListMap!2029)

(assert (=> b!4337840 (= lt!1551888 (extractMap!460 (toList!2785 lt!1551887)))))

(assert (=> b!4337840 (= lt!1551889 (extractMap!460 (t!355754 (toList!2785 lm!1707))))))

(declare-fun lt!1551892 () tuple2!47976)

(declare-fun b!4337841 () Bool)

(get-info :version)

(assert (=> b!4337841 (= e!2699106 (or (not ((_ is Cons!48714) (toList!2785 lm!1707))) (not (= (_1!27282 (h!54223 (toList!2785 lm!1707))) hash!377)) (= lt!1551887 (ListLongMap!1436 (Cons!48714 lt!1551892 (t!355754 (toList!2785 lm!1707)))))))))

(declare-fun b!4337842 () Bool)

(declare-fun tp!1329159 () Bool)

(assert (=> b!4337842 (= e!2699103 (and tp_is_empty!24841 tp_is_empty!24843 tp!1329159))))

(declare-fun b!4337843 () Bool)

(declare-fun res!1779603 () Bool)

(assert (=> b!4337843 (=> (not res!1779603) (not e!2699108))))

(declare-fun contains!10798 (ListMap!2029 K!10070) Bool)

(assert (=> b!4337843 (= res!1779603 (contains!10798 (extractMap!460 (toList!2785 lm!1707)) key!3918))))

(declare-fun b!4337844 () Bool)

(assert (=> b!4337844 (= e!2699104 e!2699105)))

(declare-fun res!1779597 () Bool)

(assert (=> b!4337844 (=> res!1779597 e!2699105)))

(assert (=> b!4337844 (= res!1779597 (or (not ((_ is Cons!48714) (toList!2785 lm!1707))) (not (= (_1!27282 (h!54223 (toList!2785 lm!1707))) hash!377))))))

(assert (=> b!4337844 e!2699106))

(declare-fun res!1779595 () Bool)

(assert (=> b!4337844 (=> (not res!1779595) (not e!2699106))))

(assert (=> b!4337844 (= res!1779595 (forall!8977 (toList!2785 lt!1551887) lambda!136471))))

(assert (=> b!4337844 (= lt!1551887 (+!473 lm!1707 lt!1551892))))

(assert (=> b!4337844 (= lt!1551892 (tuple2!47977 hash!377 newBucket!200))))

(declare-fun lt!1551890 () Unit!68975)

(declare-fun addValidProp!55 (ListLongMap!1435 Int (_ BitVec 64) List!48837) Unit!68975)

(assert (=> b!4337844 (= lt!1551890 (addValidProp!55 lm!1707 lambda!136471 hash!377 newBucket!200))))

(assert (=> b!4337844 (forall!8977 (toList!2785 lm!1707) lambda!136471)))

(declare-fun b!4337845 () Bool)

(declare-fun res!1779605 () Bool)

(assert (=> b!4337845 (=> (not res!1779605) (not e!2699108))))

(declare-fun allKeysSameHash!359 (List!48837 (_ BitVec 64) Hashable!4793) Bool)

(assert (=> b!4337845 (= res!1779605 (allKeysSameHash!359 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337846 () Bool)

(declare-fun res!1779601 () Bool)

(assert (=> b!4337846 (=> res!1779601 e!2699104)))

(declare-fun noDuplicateKeys!401 (List!48837) Bool)

(assert (=> b!4337846 (= res!1779601 (not (noDuplicateKeys!401 newBucket!200)))))

(assert (= (and start!418556 res!1779604) b!4337837))

(assert (= (and b!4337837 res!1779596) b!4337835))

(assert (= (and b!4337835 res!1779598) b!4337845))

(assert (= (and b!4337845 res!1779605) b!4337843))

(assert (= (and b!4337843 res!1779603) b!4337838))

(assert (= (and b!4337838 res!1779600) b!4337839))

(assert (= (and b!4337839 (not res!1779594)) b!4337846))

(assert (= (and b!4337846 (not res!1779601)) b!4337844))

(assert (= (and b!4337844 res!1779595) b!4337833))

(assert (= (and b!4337833 res!1779599) b!4337841))

(assert (= (and b!4337844 (not res!1779597)) b!4337840))

(assert (= (and b!4337840 res!1779602) b!4337834))

(assert (= (and start!418556 ((_ is Cons!48713) newBucket!200)) b!4337842))

(assert (= start!418556 b!4337836))

(declare-fun m!4934351 () Bool)

(assert (=> b!4337837 m!4934351))

(declare-fun m!4934353 () Bool)

(assert (=> b!4337838 m!4934353))

(declare-fun m!4934355 () Bool)

(assert (=> b!4337834 m!4934355))

(declare-fun m!4934357 () Bool)

(assert (=> b!4337846 m!4934357))

(declare-fun m!4934359 () Bool)

(assert (=> b!4337839 m!4934359))

(declare-fun m!4934361 () Bool)

(assert (=> b!4337839 m!4934361))

(declare-fun m!4934363 () Bool)

(assert (=> b!4337839 m!4934363))

(declare-fun m!4934365 () Bool)

(assert (=> b!4337839 m!4934365))

(declare-fun m!4934367 () Bool)

(assert (=> b!4337839 m!4934367))

(declare-fun m!4934369 () Bool)

(assert (=> b!4337844 m!4934369))

(declare-fun m!4934371 () Bool)

(assert (=> b!4337844 m!4934371))

(declare-fun m!4934373 () Bool)

(assert (=> b!4337844 m!4934373))

(declare-fun m!4934375 () Bool)

(assert (=> b!4337844 m!4934375))

(declare-fun m!4934377 () Bool)

(assert (=> b!4337840 m!4934377))

(declare-fun m!4934379 () Bool)

(assert (=> b!4337840 m!4934379))

(declare-fun m!4934381 () Bool)

(assert (=> b!4337840 m!4934381))

(declare-fun m!4934383 () Bool)

(assert (=> b!4337840 m!4934383))

(declare-fun m!4934385 () Bool)

(assert (=> b!4337840 m!4934385))

(declare-fun m!4934387 () Bool)

(assert (=> b!4337840 m!4934387))

(assert (=> b!4337840 m!4934377))

(declare-fun m!4934389 () Bool)

(assert (=> b!4337840 m!4934389))

(declare-fun m!4934391 () Bool)

(assert (=> b!4337840 m!4934391))

(declare-fun m!4934393 () Bool)

(assert (=> b!4337840 m!4934393))

(assert (=> b!4337840 m!4934385))

(declare-fun m!4934395 () Bool)

(assert (=> b!4337840 m!4934395))

(declare-fun m!4934397 () Bool)

(assert (=> b!4337840 m!4934397))

(declare-fun m!4934399 () Bool)

(assert (=> b!4337840 m!4934399))

(declare-fun m!4934401 () Bool)

(assert (=> b!4337843 m!4934401))

(assert (=> b!4337843 m!4934401))

(declare-fun m!4934403 () Bool)

(assert (=> b!4337843 m!4934403))

(assert (=> b!4337833 m!4934369))

(assert (=> start!418556 m!4934375))

(declare-fun m!4934405 () Bool)

(assert (=> start!418556 m!4934405))

(declare-fun m!4934407 () Bool)

(assert (=> b!4337835 m!4934407))

(declare-fun m!4934409 () Bool)

(assert (=> b!4337845 m!4934409))

(check-sat (not b!4337838) tp_is_empty!24841 (not b!4337835) (not b!4337842) (not b!4337845) (not b!4337844) (not b!4337840) (not b!4337839) (not b!4337846) (not b!4337836) (not b!4337843) tp_is_empty!24843 (not b!4337837) (not start!418556) (not b!4337833) (not b!4337834))
(check-sat)
