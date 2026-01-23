; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425820 () Bool)

(assert start!425820)

(declare-datatypes ((V!10776 0))(
  ( (V!10777 (val!16695 Int)) )
))
(declare-datatypes ((K!10530 0))(
  ( (K!10531 (val!16696 Int)) )
))
(declare-datatypes ((tuple2!48710 0))(
  ( (tuple2!48711 (_1!27649 K!10530) (_2!27649 V!10776)) )
))
(declare-datatypes ((List!49298 0))(
  ( (Nil!49174) (Cons!49174 (h!54777 tuple2!48710) (t!356228 List!49298)) )
))
(declare-datatypes ((tuple2!48712 0))(
  ( (tuple2!48713 (_1!27650 (_ BitVec 64)) (_2!27650 List!49298)) )
))
(declare-datatypes ((List!49299 0))(
  ( (Nil!49175) (Cons!49175 (h!54778 tuple2!48712) (t!356229 List!49299)) )
))
(declare-datatypes ((ListLongMap!1803 0))(
  ( (ListLongMap!1804 (toList!3153 List!49299)) )
))
(declare-fun lt!1594926 () ListLongMap!1803)

(declare-fun lt!1594937 () tuple2!48712)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun b!4385640 () Bool)

(declare-fun e!2730309 () Bool)

(declare-fun lm!1707 () ListLongMap!1803)

(get-info :version)

(assert (=> b!4385640 (= e!2730309 (or (not ((_ is Cons!49175) (toList!3153 lm!1707))) (not (= (_1!27650 (h!54778 (toList!3153 lm!1707))) hash!377)) (= lt!1594926 (ListLongMap!1804 (Cons!49175 lt!1594937 (t!356229 (toList!3153 lm!1707)))))))))

(declare-fun res!1806894 () Bool)

(declare-fun e!2730310 () Bool)

(assert (=> start!425820 (=> (not res!1806894) (not e!2730310))))

(declare-fun lambda!146237 () Int)

(declare-fun forall!9287 (List!49299 Int) Bool)

(assert (=> start!425820 (= res!1806894 (forall!9287 (toList!3153 lm!1707) lambda!146237))))

(assert (=> start!425820 e!2730310))

(declare-fun e!2730308 () Bool)

(assert (=> start!425820 e!2730308))

(assert (=> start!425820 true))

(declare-fun e!2730303 () Bool)

(declare-fun inv!64716 (ListLongMap!1803) Bool)

(assert (=> start!425820 (and (inv!64716 lm!1707) e!2730303)))

(declare-fun tp_is_empty!25577 () Bool)

(assert (=> start!425820 tp_is_empty!25577))

(declare-fun tp_is_empty!25579 () Bool)

(assert (=> start!425820 tp_is_empty!25579))

(declare-fun b!4385641 () Bool)

(declare-fun res!1806897 () Bool)

(assert (=> b!4385641 (=> (not res!1806897) (not e!2730310))))

(declare-datatypes ((Hashable!4977 0))(
  ( (HashableExt!4976 (__x!30680 Int)) )
))
(declare-fun hashF!1247 () Hashable!4977)

(declare-fun key!3918 () K!10530)

(declare-fun hash!1768 (Hashable!4977 K!10530) (_ BitVec 64))

(assert (=> b!4385641 (= res!1806897 (= (hash!1768 hashF!1247 key!3918) hash!377))))

(declare-fun b!4385642 () Bool)

(declare-fun tp!1331295 () Bool)

(assert (=> b!4385642 (= e!2730308 (and tp_is_empty!25577 tp_is_empty!25579 tp!1331295))))

(declare-fun b!4385643 () Bool)

(declare-fun res!1806895 () Bool)

(assert (=> b!4385643 (=> (not res!1806895) (not e!2730310))))

(declare-fun newBucket!200 () List!49298)

(declare-fun allKeysSameHash!543 (List!49298 (_ BitVec 64) Hashable!4977) Bool)

(assert (=> b!4385643 (= res!1806895 (allKeysSameHash!543 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4385644 () Bool)

(declare-fun tp!1331296 () Bool)

(assert (=> b!4385644 (= e!2730303 tp!1331296)))

(declare-fun b!4385645 () Bool)

(declare-fun e!2730302 () Bool)

(declare-fun e!2730301 () Bool)

(assert (=> b!4385645 (= e!2730302 e!2730301)))

(declare-fun res!1806890 () Bool)

(assert (=> b!4385645 (=> res!1806890 e!2730301)))

(assert (=> b!4385645 (= res!1806890 (or (not ((_ is Cons!49175) (toList!3153 lm!1707))) (not (= (_1!27650 (h!54778 (toList!3153 lm!1707))) hash!377))))))

(assert (=> b!4385645 e!2730309))

(declare-fun res!1806900 () Bool)

(assert (=> b!4385645 (=> (not res!1806900) (not e!2730309))))

(assert (=> b!4385645 (= res!1806900 (forall!9287 (toList!3153 lt!1594926) lambda!146237))))

(declare-fun +!801 (ListLongMap!1803 tuple2!48712) ListLongMap!1803)

(assert (=> b!4385645 (= lt!1594926 (+!801 lm!1707 lt!1594937))))

(assert (=> b!4385645 (= lt!1594937 (tuple2!48713 hash!377 newBucket!200))))

(declare-datatypes ((Unit!76734 0))(
  ( (Unit!76735) )
))
(declare-fun lt!1594932 () Unit!76734)

(declare-fun addValidProp!231 (ListLongMap!1803 Int (_ BitVec 64) List!49298) Unit!76734)

(assert (=> b!4385645 (= lt!1594932 (addValidProp!231 lm!1707 lambda!146237 hash!377 newBucket!200))))

(assert (=> b!4385645 (forall!9287 (toList!3153 lm!1707) lambda!146237)))

(declare-fun b!4385646 () Bool)

(declare-fun e!2730304 () Bool)

(assert (=> b!4385646 (= e!2730301 e!2730304)))

(declare-fun res!1806887 () Bool)

(assert (=> b!4385646 (=> res!1806887 e!2730304)))

(declare-fun lt!1594929 () Bool)

(assert (=> b!4385646 (= res!1806887 lt!1594929)))

(declare-fun e!2730305 () Bool)

(assert (=> b!4385646 e!2730305))

(declare-fun res!1806888 () Bool)

(assert (=> b!4385646 (=> (not res!1806888) (not e!2730305))))

(declare-datatypes ((ListMap!2397 0))(
  ( (ListMap!2398 (toList!3154 List!49298)) )
))
(declare-fun lt!1594933 () ListMap!2397)

(declare-fun contains!11517 (ListMap!2397 K!10530) Bool)

(assert (=> b!4385646 (= res!1806888 (= lt!1594929 (contains!11517 lt!1594933 key!3918)))))

(declare-fun lt!1594925 () ListMap!2397)

(assert (=> b!4385646 (= lt!1594929 (contains!11517 lt!1594925 key!3918))))

(declare-fun lt!1594918 () Unit!76734)

(declare-fun lemmaEquivalentThenSameContains!110 (ListMap!2397 ListMap!2397 K!10530) Unit!76734)

(assert (=> b!4385646 (= lt!1594918 (lemmaEquivalentThenSameContains!110 lt!1594925 lt!1594933 key!3918))))

(declare-fun eq!323 (ListMap!2397 ListMap!2397) Bool)

(assert (=> b!4385646 (eq!323 lt!1594925 lt!1594933)))

(declare-fun lt!1594924 () ListMap!2397)

(declare-fun -!260 (ListMap!2397 K!10530) ListMap!2397)

(assert (=> b!4385646 (= lt!1594933 (-!260 lt!1594924 key!3918))))

(declare-fun lt!1594927 () List!49298)

(declare-fun lt!1594939 () Unit!76734)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!75 (ListLongMap!1803 (_ BitVec 64) List!49298 K!10530 Hashable!4977) Unit!76734)

(assert (=> b!4385646 (= lt!1594939 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!75 lm!1707 hash!377 lt!1594927 key!3918 hashF!1247))))

(declare-fun lt!1594935 () ListMap!2397)

(assert (=> b!4385646 (= lt!1594935 lt!1594925)))

(declare-fun lt!1594923 () ListLongMap!1803)

(declare-fun extractMap!644 (List!49299) ListMap!2397)

(assert (=> b!4385646 (= lt!1594925 (extractMap!644 (toList!3153 lt!1594923)))))

(declare-fun lt!1594917 () List!49298)

(assert (=> b!4385646 (= lt!1594927 lt!1594917)))

(assert (=> b!4385646 (= lt!1594923 (+!801 lm!1707 (tuple2!48713 hash!377 lt!1594927)))))

(declare-fun tail!7078 (List!49298) List!49298)

(assert (=> b!4385646 (= lt!1594927 (tail!7078 newBucket!200))))

(declare-fun e!2730306 () Bool)

(assert (=> b!4385646 e!2730306))

(declare-fun res!1806891 () Bool)

(assert (=> b!4385646 (=> (not res!1806891) (not e!2730306))))

(declare-fun lt!1594930 () ListMap!2397)

(declare-fun lt!1594919 () ListMap!2397)

(assert (=> b!4385646 (= res!1806891 (eq!323 lt!1594930 lt!1594919))))

(declare-fun lt!1594940 () tuple2!48710)

(declare-fun +!802 (ListMap!2397 tuple2!48710) ListMap!2397)

(assert (=> b!4385646 (= lt!1594919 (+!802 lt!1594935 lt!1594940))))

(declare-fun lt!1594921 () ListMap!2397)

(declare-fun addToMapMapFromBucket!266 (List!49298 ListMap!2397) ListMap!2397)

(assert (=> b!4385646 (= lt!1594935 (addToMapMapFromBucket!266 lt!1594917 lt!1594921))))

(declare-fun lt!1594936 () Unit!76734)

(declare-fun newValue!99 () V!10776)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!132 (ListMap!2397 K!10530 V!10776 List!49298) Unit!76734)

(assert (=> b!4385646 (= lt!1594936 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!132 lt!1594921 key!3918 newValue!99 lt!1594917))))

(declare-fun lt!1594920 () ListMap!2397)

(assert (=> b!4385646 (= lt!1594920 lt!1594930)))

(assert (=> b!4385646 (= lt!1594930 (addToMapMapFromBucket!266 lt!1594917 (+!802 lt!1594921 lt!1594940)))))

(declare-fun lt!1594942 () ListMap!2397)

(assert (=> b!4385646 (= lt!1594942 lt!1594920)))

(declare-fun lt!1594941 () List!49298)

(assert (=> b!4385646 (= lt!1594920 (addToMapMapFromBucket!266 lt!1594941 lt!1594921))))

(assert (=> b!4385646 (= lt!1594942 (addToMapMapFromBucket!266 newBucket!200 lt!1594921))))

(assert (=> b!4385646 (= lt!1594942 (extractMap!644 (toList!3153 lt!1594926)))))

(assert (=> b!4385646 (= lt!1594921 (extractMap!644 (t!356229 (toList!3153 lm!1707))))))

(declare-fun b!4385647 () Bool)

(declare-fun res!1806901 () Bool)

(declare-fun e!2730307 () Bool)

(assert (=> b!4385647 (=> (not res!1806901) (not e!2730307))))

(declare-fun contains!11518 (ListLongMap!1803 (_ BitVec 64)) Bool)

(assert (=> b!4385647 (= res!1806901 (contains!11518 lm!1707 hash!377))))

(declare-fun b!4385648 () Bool)

(declare-fun res!1806898 () Bool)

(assert (=> b!4385648 (=> res!1806898 e!2730302)))

(declare-fun noDuplicateKeys!585 (List!49298) Bool)

(assert (=> b!4385648 (= res!1806898 (not (noDuplicateKeys!585 newBucket!200)))))

(declare-fun b!4385649 () Bool)

(declare-fun res!1806889 () Bool)

(assert (=> b!4385649 (=> (not res!1806889) (not e!2730309))))

(assert (=> b!4385649 (= res!1806889 (forall!9287 (toList!3153 lt!1594926) lambda!146237))))

(declare-fun b!4385650 () Bool)

(assert (=> b!4385650 (= e!2730304 true)))

(declare-fun lt!1594934 () Bool)

(declare-fun allKeysSameHashInMap!689 (ListLongMap!1803 Hashable!4977) Bool)

(assert (=> b!4385650 (= lt!1594934 (allKeysSameHashInMap!689 lt!1594923 hashF!1247))))

(declare-fun b!4385651 () Bool)

(declare-fun res!1806899 () Bool)

(assert (=> b!4385651 (=> (not res!1806899) (not e!2730310))))

(assert (=> b!4385651 (= res!1806899 (allKeysSameHashInMap!689 lm!1707 hashF!1247))))

(declare-fun b!4385652 () Bool)

(assert (=> b!4385652 (= e!2730307 (not e!2730302))))

(declare-fun res!1806892 () Bool)

(assert (=> b!4385652 (=> res!1806892 e!2730302)))

(assert (=> b!4385652 (= res!1806892 (not (= newBucket!200 lt!1594941)))))

(assert (=> b!4385652 (= lt!1594941 (Cons!49174 lt!1594940 lt!1594917))))

(declare-fun lt!1594931 () List!49298)

(declare-fun removePairForKey!553 (List!49298 K!10530) List!49298)

(assert (=> b!4385652 (= lt!1594917 (removePairForKey!553 lt!1594931 key!3918))))

(assert (=> b!4385652 (= lt!1594940 (tuple2!48711 key!3918 newValue!99))))

(declare-fun lt!1594922 () tuple2!48712)

(declare-fun lt!1594928 () Unit!76734)

(declare-fun forallContained!1925 (List!49299 Int tuple2!48712) Unit!76734)

(assert (=> b!4385652 (= lt!1594928 (forallContained!1925 (toList!3153 lm!1707) lambda!146237 lt!1594922))))

(declare-fun contains!11519 (List!49299 tuple2!48712) Bool)

(assert (=> b!4385652 (contains!11519 (toList!3153 lm!1707) lt!1594922)))

(assert (=> b!4385652 (= lt!1594922 (tuple2!48713 hash!377 lt!1594931))))

(declare-fun lt!1594938 () Unit!76734)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!430 (List!49299 (_ BitVec 64) List!49298) Unit!76734)

(assert (=> b!4385652 (= lt!1594938 (lemmaGetValueByKeyImpliesContainsTuple!430 (toList!3153 lm!1707) hash!377 lt!1594931))))

(declare-fun apply!11437 (ListLongMap!1803 (_ BitVec 64)) List!49298)

(assert (=> b!4385652 (= lt!1594931 (apply!11437 lm!1707 hash!377))))

(declare-fun b!4385653 () Bool)

(assert (=> b!4385653 (= e!2730305 (= (apply!11437 lt!1594923 hash!377) lt!1594927))))

(declare-fun b!4385654 () Bool)

(assert (=> b!4385654 (= e!2730310 e!2730307)))

(declare-fun res!1806893 () Bool)

(assert (=> b!4385654 (=> (not res!1806893) (not e!2730307))))

(assert (=> b!4385654 (= res!1806893 (contains!11517 lt!1594924 key!3918))))

(assert (=> b!4385654 (= lt!1594924 (extractMap!644 (toList!3153 lm!1707)))))

(declare-fun b!4385655 () Bool)

(declare-fun res!1806896 () Bool)

(assert (=> b!4385655 (=> res!1806896 e!2730304)))

(assert (=> b!4385655 (= res!1806896 (not (forall!9287 (toList!3153 lt!1594923) lambda!146237)))))

(declare-fun b!4385656 () Bool)

(assert (=> b!4385656 (= e!2730306 (eq!323 lt!1594920 lt!1594919))))

(assert (= (and start!425820 res!1806894) b!4385651))

(assert (= (and b!4385651 res!1806899) b!4385641))

(assert (= (and b!4385641 res!1806897) b!4385643))

(assert (= (and b!4385643 res!1806895) b!4385654))

(assert (= (and b!4385654 res!1806893) b!4385647))

(assert (= (and b!4385647 res!1806901) b!4385652))

(assert (= (and b!4385652 (not res!1806892)) b!4385648))

(assert (= (and b!4385648 (not res!1806898)) b!4385645))

(assert (= (and b!4385645 res!1806900) b!4385649))

(assert (= (and b!4385649 res!1806889) b!4385640))

(assert (= (and b!4385645 (not res!1806890)) b!4385646))

(assert (= (and b!4385646 res!1806891) b!4385656))

(assert (= (and b!4385646 res!1806888) b!4385653))

(assert (= (and b!4385646 (not res!1806887)) b!4385655))

(assert (= (and b!4385655 (not res!1806896)) b!4385650))

(assert (= (and start!425820 ((_ is Cons!49174) newBucket!200)) b!4385642))

(assert (= start!425820 b!4385644))

(declare-fun m!5033047 () Bool)

(assert (=> b!4385653 m!5033047))

(declare-fun m!5033049 () Bool)

(assert (=> b!4385655 m!5033049))

(declare-fun m!5033051 () Bool)

(assert (=> b!4385641 m!5033051))

(declare-fun m!5033053 () Bool)

(assert (=> b!4385652 m!5033053))

(declare-fun m!5033055 () Bool)

(assert (=> b!4385652 m!5033055))

(declare-fun m!5033057 () Bool)

(assert (=> b!4385652 m!5033057))

(declare-fun m!5033059 () Bool)

(assert (=> b!4385652 m!5033059))

(declare-fun m!5033061 () Bool)

(assert (=> b!4385652 m!5033061))

(declare-fun m!5033063 () Bool)

(assert (=> b!4385650 m!5033063))

(declare-fun m!5033065 () Bool)

(assert (=> b!4385651 m!5033065))

(declare-fun m!5033067 () Bool)

(assert (=> b!4385647 m!5033067))

(declare-fun m!5033069 () Bool)

(assert (=> b!4385643 m!5033069))

(declare-fun m!5033071 () Bool)

(assert (=> start!425820 m!5033071))

(declare-fun m!5033073 () Bool)

(assert (=> start!425820 m!5033073))

(declare-fun m!5033075 () Bool)

(assert (=> b!4385645 m!5033075))

(declare-fun m!5033077 () Bool)

(assert (=> b!4385645 m!5033077))

(declare-fun m!5033079 () Bool)

(assert (=> b!4385645 m!5033079))

(assert (=> b!4385645 m!5033071))

(assert (=> b!4385649 m!5033075))

(declare-fun m!5033081 () Bool)

(assert (=> b!4385656 m!5033081))

(declare-fun m!5033083 () Bool)

(assert (=> b!4385654 m!5033083))

(declare-fun m!5033085 () Bool)

(assert (=> b!4385654 m!5033085))

(declare-fun m!5033087 () Bool)

(assert (=> b!4385646 m!5033087))

(declare-fun m!5033089 () Bool)

(assert (=> b!4385646 m!5033089))

(declare-fun m!5033091 () Bool)

(assert (=> b!4385646 m!5033091))

(declare-fun m!5033093 () Bool)

(assert (=> b!4385646 m!5033093))

(declare-fun m!5033095 () Bool)

(assert (=> b!4385646 m!5033095))

(declare-fun m!5033097 () Bool)

(assert (=> b!4385646 m!5033097))

(declare-fun m!5033099 () Bool)

(assert (=> b!4385646 m!5033099))

(declare-fun m!5033101 () Bool)

(assert (=> b!4385646 m!5033101))

(declare-fun m!5033103 () Bool)

(assert (=> b!4385646 m!5033103))

(declare-fun m!5033105 () Bool)

(assert (=> b!4385646 m!5033105))

(declare-fun m!5033107 () Bool)

(assert (=> b!4385646 m!5033107))

(declare-fun m!5033109 () Bool)

(assert (=> b!4385646 m!5033109))

(assert (=> b!4385646 m!5033097))

(declare-fun m!5033111 () Bool)

(assert (=> b!4385646 m!5033111))

(declare-fun m!5033113 () Bool)

(assert (=> b!4385646 m!5033113))

(declare-fun m!5033115 () Bool)

(assert (=> b!4385646 m!5033115))

(declare-fun m!5033117 () Bool)

(assert (=> b!4385646 m!5033117))

(declare-fun m!5033119 () Bool)

(assert (=> b!4385646 m!5033119))

(declare-fun m!5033121 () Bool)

(assert (=> b!4385646 m!5033121))

(declare-fun m!5033123 () Bool)

(assert (=> b!4385646 m!5033123))

(declare-fun m!5033125 () Bool)

(assert (=> b!4385648 m!5033125))

(check-sat (not b!4385643) (not b!4385656) (not b!4385644) tp_is_empty!25579 (not b!4385654) (not b!4385646) (not b!4385649) (not b!4385641) (not b!4385655) (not b!4385645) (not start!425820) (not b!4385648) (not b!4385651) (not b!4385652) (not b!4385647) tp_is_empty!25577 (not b!4385650) (not b!4385642) (not b!4385653))
(check-sat)
