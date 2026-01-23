; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419144 () Bool)

(assert start!419144)

(declare-fun b!4343638 () Bool)

(declare-fun res!1782870 () Bool)

(declare-fun e!2703017 () Bool)

(assert (=> b!4343638 (=> (not res!1782870) (not e!2703017))))

(declare-datatypes ((V!10341 0))(
  ( (V!10342 (val!16347 Int)) )
))
(declare-datatypes ((K!10095 0))(
  ( (K!10096 (val!16348 Int)) )
))
(declare-datatypes ((tuple2!48014 0))(
  ( (tuple2!48015 (_1!27301 K!10095) (_2!27301 V!10341)) )
))
(declare-datatypes ((List!48865 0))(
  ( (Nil!48741) (Cons!48741 (h!54258 tuple2!48014) (t!355785 List!48865)) )
))
(declare-datatypes ((tuple2!48016 0))(
  ( (tuple2!48017 (_1!27302 (_ BitVec 64)) (_2!27302 List!48865)) )
))
(declare-datatypes ((List!48866 0))(
  ( (Nil!48742) (Cons!48742 (h!54259 tuple2!48016) (t!355786 List!48866)) )
))
(declare-datatypes ((ListLongMap!1455 0))(
  ( (ListLongMap!1456 (toList!2805 List!48866)) )
))
(declare-fun lm!1707 () ListLongMap!1455)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10842 (ListLongMap!1455 (_ BitVec 64)) Bool)

(assert (=> b!4343638 (= res!1782870 (contains!10842 lm!1707 hash!377))))

(declare-fun e!2703018 () Bool)

(declare-fun b!4343639 () Bool)

(declare-fun tp_is_empty!24881 () Bool)

(declare-fun tp_is_empty!24883 () Bool)

(declare-fun tp!1329309 () Bool)

(assert (=> b!4343639 (= e!2703018 (and tp_is_empty!24881 tp_is_empty!24883 tp!1329309))))

(declare-fun b!4343640 () Bool)

(declare-fun res!1782873 () Bool)

(assert (=> b!4343640 (=> (not res!1782873) (not e!2703017))))

(declare-fun key!3918 () K!10095)

(declare-datatypes ((ListMap!2049 0))(
  ( (ListMap!2050 (toList!2806 List!48865)) )
))
(declare-fun contains!10843 (ListMap!2049 K!10095) Bool)

(declare-fun extractMap!470 (List!48866) ListMap!2049)

(assert (=> b!4343640 (= res!1782873 (contains!10843 (extractMap!470 (toList!2805 lm!1707)) key!3918))))

(declare-fun b!4343641 () Bool)

(declare-fun e!2703021 () Bool)

(declare-fun newBucket!200 () List!48865)

(assert (=> b!4343641 (= e!2703021 (not (= newBucket!200 Nil!48741)))))

(declare-fun e!2703020 () Bool)

(assert (=> b!4343641 e!2703020))

(declare-fun res!1782867 () Bool)

(assert (=> b!4343641 (=> (not res!1782867) (not e!2703020))))

(declare-fun lt!1556891 () List!48865)

(declare-fun lt!1556887 () List!48865)

(assert (=> b!4343641 (= res!1782867 (= lt!1556891 lt!1556887))))

(declare-fun lt!1556890 () ListLongMap!1455)

(declare-fun +!493 (ListLongMap!1455 tuple2!48016) ListLongMap!1455)

(assert (=> b!4343641 (= lt!1556890 (+!493 lm!1707 (tuple2!48017 hash!377 lt!1556891)))))

(declare-fun tail!6909 (List!48865) List!48865)

(assert (=> b!4343641 (= lt!1556891 (tail!6909 newBucket!200))))

(declare-fun e!2703015 () Bool)

(assert (=> b!4343641 e!2703015))

(declare-fun res!1782862 () Bool)

(assert (=> b!4343641 (=> (not res!1782862) (not e!2703015))))

(declare-fun lt!1556883 () ListMap!2049)

(declare-fun lt!1556894 () ListMap!2049)

(declare-fun eq!201 (ListMap!2049 ListMap!2049) Bool)

(assert (=> b!4343641 (= res!1782862 (eq!201 lt!1556883 lt!1556894))))

(declare-fun lt!1556888 () ListMap!2049)

(declare-fun lt!1556889 () tuple2!48014)

(declare-fun +!494 (ListMap!2049 tuple2!48014) ListMap!2049)

(assert (=> b!4343641 (= lt!1556894 (+!494 lt!1556888 lt!1556889))))

(declare-fun lt!1556884 () ListMap!2049)

(declare-fun addToMapMapFromBucket!119 (List!48865 ListMap!2049) ListMap!2049)

(assert (=> b!4343641 (= lt!1556888 (addToMapMapFromBucket!119 lt!1556887 lt!1556884))))

(declare-datatypes ((Unit!70165 0))(
  ( (Unit!70166) )
))
(declare-fun lt!1556886 () Unit!70165)

(declare-fun newValue!99 () V!10341)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!30 (ListMap!2049 K!10095 V!10341 List!48865) Unit!70165)

(assert (=> b!4343641 (= lt!1556886 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!30 lt!1556884 key!3918 newValue!99 lt!1556887))))

(declare-fun lt!1556895 () ListMap!2049)

(assert (=> b!4343641 (= lt!1556895 lt!1556883)))

(assert (=> b!4343641 (= lt!1556883 (addToMapMapFromBucket!119 lt!1556887 (+!494 lt!1556884 lt!1556889)))))

(declare-fun lt!1556900 () ListMap!2049)

(assert (=> b!4343641 (= lt!1556900 lt!1556895)))

(declare-fun lt!1556897 () List!48865)

(assert (=> b!4343641 (= lt!1556895 (addToMapMapFromBucket!119 lt!1556897 lt!1556884))))

(assert (=> b!4343641 (= lt!1556900 (addToMapMapFromBucket!119 newBucket!200 lt!1556884))))

(declare-fun lt!1556899 () ListLongMap!1455)

(assert (=> b!4343641 (= lt!1556900 (extractMap!470 (toList!2805 lt!1556899)))))

(assert (=> b!4343641 (= lt!1556884 (extractMap!470 (t!355786 (toList!2805 lm!1707))))))

(declare-fun b!4343642 () Bool)

(assert (=> b!4343642 (= e!2703020 (= lt!1556888 (extractMap!470 (toList!2805 lt!1556890))))))

(declare-fun b!4343643 () Bool)

(declare-fun res!1782871 () Bool)

(assert (=> b!4343643 (=> (not res!1782871) (not e!2703017))))

(declare-datatypes ((Hashable!4803 0))(
  ( (HashableExt!4802 (__x!30506 Int)) )
))
(declare-fun hashF!1247 () Hashable!4803)

(declare-fun allKeysSameHashInMap!515 (ListLongMap!1455 Hashable!4803) Bool)

(assert (=> b!4343643 (= res!1782871 (allKeysSameHashInMap!515 lm!1707 hashF!1247))))

(declare-fun b!4343644 () Bool)

(declare-fun res!1782865 () Bool)

(assert (=> b!4343644 (=> (not res!1782865) (not e!2703017))))

(declare-fun hash!1374 (Hashable!4803 K!10095) (_ BitVec 64))

(assert (=> b!4343644 (= res!1782865 (= (hash!1374 hashF!1247 key!3918) hash!377))))

(declare-fun b!4343645 () Bool)

(declare-fun e!2703019 () Bool)

(assert (=> b!4343645 (= e!2703019 e!2703021)))

(declare-fun res!1782869 () Bool)

(assert (=> b!4343645 (=> res!1782869 e!2703021)))

(get-info :version)

(assert (=> b!4343645 (= res!1782869 (or (not ((_ is Cons!48742) (toList!2805 lm!1707))) (not (= (_1!27302 (h!54259 (toList!2805 lm!1707))) hash!377))))))

(declare-fun e!2703016 () Bool)

(assert (=> b!4343645 e!2703016))

(declare-fun res!1782866 () Bool)

(assert (=> b!4343645 (=> (not res!1782866) (not e!2703016))))

(declare-fun lambda!137477 () Int)

(declare-fun forall!8997 (List!48866 Int) Bool)

(assert (=> b!4343645 (= res!1782866 (forall!8997 (toList!2805 lt!1556899) lambda!137477))))

(declare-fun lt!1556896 () tuple2!48016)

(assert (=> b!4343645 (= lt!1556899 (+!493 lm!1707 lt!1556896))))

(assert (=> b!4343645 (= lt!1556896 (tuple2!48017 hash!377 newBucket!200))))

(declare-fun lt!1556893 () Unit!70165)

(declare-fun addValidProp!65 (ListLongMap!1455 Int (_ BitVec 64) List!48865) Unit!70165)

(assert (=> b!4343645 (= lt!1556893 (addValidProp!65 lm!1707 lambda!137477 hash!377 newBucket!200))))

(assert (=> b!4343645 (forall!8997 (toList!2805 lm!1707) lambda!137477)))

(declare-fun b!4343646 () Bool)

(assert (=> b!4343646 (= e!2703016 (or (not ((_ is Cons!48742) (toList!2805 lm!1707))) (not (= (_1!27302 (h!54259 (toList!2805 lm!1707))) hash!377)) (= lt!1556899 (ListLongMap!1456 (Cons!48742 lt!1556896 (t!355786 (toList!2805 lm!1707)))))))))

(declare-fun b!4343647 () Bool)

(declare-fun res!1782872 () Bool)

(assert (=> b!4343647 (=> res!1782872 e!2703019)))

(declare-fun noDuplicateKeys!411 (List!48865) Bool)

(assert (=> b!4343647 (= res!1782872 (not (noDuplicateKeys!411 newBucket!200)))))

(declare-fun b!4343648 () Bool)

(assert (=> b!4343648 (= e!2703015 (eq!201 lt!1556895 lt!1556894))))

(declare-fun b!4343649 () Bool)

(declare-fun res!1782863 () Bool)

(assert (=> b!4343649 (=> (not res!1782863) (not e!2703017))))

(declare-fun allKeysSameHash!369 (List!48865 (_ BitVec 64) Hashable!4803) Bool)

(assert (=> b!4343649 (= res!1782863 (allKeysSameHash!369 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4343650 () Bool)

(assert (=> b!4343650 (= e!2703017 (not e!2703019))))

(declare-fun res!1782861 () Bool)

(assert (=> b!4343650 (=> res!1782861 e!2703019)))

(assert (=> b!4343650 (= res!1782861 (not (= newBucket!200 lt!1556897)))))

(assert (=> b!4343650 (= lt!1556897 (Cons!48741 lt!1556889 lt!1556887))))

(declare-fun lt!1556885 () List!48865)

(declare-fun removePairForKey!381 (List!48865 K!10095) List!48865)

(assert (=> b!4343650 (= lt!1556887 (removePairForKey!381 lt!1556885 key!3918))))

(assert (=> b!4343650 (= lt!1556889 (tuple2!48015 key!3918 newValue!99))))

(declare-fun lt!1556892 () Unit!70165)

(declare-fun lt!1556882 () tuple2!48016)

(declare-fun forallContained!1647 (List!48866 Int tuple2!48016) Unit!70165)

(assert (=> b!4343650 (= lt!1556892 (forallContained!1647 (toList!2805 lm!1707) lambda!137477 lt!1556882))))

(declare-fun contains!10844 (List!48866 tuple2!48016) Bool)

(assert (=> b!4343650 (contains!10844 (toList!2805 lm!1707) lt!1556882)))

(assert (=> b!4343650 (= lt!1556882 (tuple2!48017 hash!377 lt!1556885))))

(declare-fun lt!1556898 () Unit!70165)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!258 (List!48866 (_ BitVec 64) List!48865) Unit!70165)

(assert (=> b!4343650 (= lt!1556898 (lemmaGetValueByKeyImpliesContainsTuple!258 (toList!2805 lm!1707) hash!377 lt!1556885))))

(declare-fun apply!11263 (ListLongMap!1455 (_ BitVec 64)) List!48865)

(assert (=> b!4343650 (= lt!1556885 (apply!11263 lm!1707 hash!377))))

(declare-fun res!1782868 () Bool)

(assert (=> start!419144 (=> (not res!1782868) (not e!2703017))))

(assert (=> start!419144 (= res!1782868 (forall!8997 (toList!2805 lm!1707) lambda!137477))))

(assert (=> start!419144 e!2703017))

(assert (=> start!419144 e!2703018))

(assert (=> start!419144 true))

(declare-fun e!2703022 () Bool)

(declare-fun inv!64281 (ListLongMap!1455) Bool)

(assert (=> start!419144 (and (inv!64281 lm!1707) e!2703022)))

(assert (=> start!419144 tp_is_empty!24881))

(assert (=> start!419144 tp_is_empty!24883))

(declare-fun b!4343651 () Bool)

(declare-fun tp!1329310 () Bool)

(assert (=> b!4343651 (= e!2703022 tp!1329310)))

(declare-fun b!4343652 () Bool)

(declare-fun res!1782864 () Bool)

(assert (=> b!4343652 (=> (not res!1782864) (not e!2703016))))

(assert (=> b!4343652 (= res!1782864 (forall!8997 (toList!2805 lt!1556899) lambda!137477))))

(assert (= (and start!419144 res!1782868) b!4343643))

(assert (= (and b!4343643 res!1782871) b!4343644))

(assert (= (and b!4343644 res!1782865) b!4343649))

(assert (= (and b!4343649 res!1782863) b!4343640))

(assert (= (and b!4343640 res!1782873) b!4343638))

(assert (= (and b!4343638 res!1782870) b!4343650))

(assert (= (and b!4343650 (not res!1782861)) b!4343647))

(assert (= (and b!4343647 (not res!1782872)) b!4343645))

(assert (= (and b!4343645 res!1782866) b!4343652))

(assert (= (and b!4343652 res!1782864) b!4343646))

(assert (= (and b!4343645 (not res!1782869)) b!4343641))

(assert (= (and b!4343641 res!1782862) b!4343648))

(assert (= (and b!4343641 res!1782867) b!4343642))

(assert (= (and start!419144 ((_ is Cons!48741) newBucket!200)) b!4343639))

(assert (= start!419144 b!4343651))

(declare-fun m!4949237 () Bool)

(assert (=> b!4343643 m!4949237))

(declare-fun m!4949239 () Bool)

(assert (=> b!4343652 m!4949239))

(declare-fun m!4949241 () Bool)

(assert (=> b!4343647 m!4949241))

(declare-fun m!4949243 () Bool)

(assert (=> b!4343644 m!4949243))

(assert (=> b!4343645 m!4949239))

(declare-fun m!4949245 () Bool)

(assert (=> b!4343645 m!4949245))

(declare-fun m!4949247 () Bool)

(assert (=> b!4343645 m!4949247))

(declare-fun m!4949249 () Bool)

(assert (=> b!4343645 m!4949249))

(declare-fun m!4949251 () Bool)

(assert (=> b!4343641 m!4949251))

(declare-fun m!4949253 () Bool)

(assert (=> b!4343641 m!4949253))

(declare-fun m!4949255 () Bool)

(assert (=> b!4343641 m!4949255))

(assert (=> b!4343641 m!4949253))

(declare-fun m!4949257 () Bool)

(assert (=> b!4343641 m!4949257))

(declare-fun m!4949259 () Bool)

(assert (=> b!4343641 m!4949259))

(declare-fun m!4949261 () Bool)

(assert (=> b!4343641 m!4949261))

(declare-fun m!4949263 () Bool)

(assert (=> b!4343641 m!4949263))

(declare-fun m!4949265 () Bool)

(assert (=> b!4343641 m!4949265))

(declare-fun m!4949267 () Bool)

(assert (=> b!4343641 m!4949267))

(declare-fun m!4949269 () Bool)

(assert (=> b!4343641 m!4949269))

(declare-fun m!4949271 () Bool)

(assert (=> b!4343641 m!4949271))

(declare-fun m!4949273 () Bool)

(assert (=> b!4343641 m!4949273))

(declare-fun m!4949275 () Bool)

(assert (=> b!4343642 m!4949275))

(declare-fun m!4949277 () Bool)

(assert (=> b!4343640 m!4949277))

(assert (=> b!4343640 m!4949277))

(declare-fun m!4949279 () Bool)

(assert (=> b!4343640 m!4949279))

(declare-fun m!4949281 () Bool)

(assert (=> b!4343650 m!4949281))

(declare-fun m!4949283 () Bool)

(assert (=> b!4343650 m!4949283))

(declare-fun m!4949285 () Bool)

(assert (=> b!4343650 m!4949285))

(declare-fun m!4949287 () Bool)

(assert (=> b!4343650 m!4949287))

(declare-fun m!4949289 () Bool)

(assert (=> b!4343650 m!4949289))

(declare-fun m!4949291 () Bool)

(assert (=> b!4343648 m!4949291))

(declare-fun m!4949293 () Bool)

(assert (=> b!4343649 m!4949293))

(declare-fun m!4949295 () Bool)

(assert (=> b!4343638 m!4949295))

(assert (=> start!419144 m!4949249))

(declare-fun m!4949297 () Bool)

(assert (=> start!419144 m!4949297))

(check-sat (not b!4343647) (not b!4343638) (not b!4343649) tp_is_empty!24881 (not b!4343651) (not b!4343648) (not start!419144) (not b!4343639) tp_is_empty!24883 (not b!4343640) (not b!4343645) (not b!4343644) (not b!4343643) (not b!4343642) (not b!4343652) (not b!4343650) (not b!4343641))
(check-sat)
