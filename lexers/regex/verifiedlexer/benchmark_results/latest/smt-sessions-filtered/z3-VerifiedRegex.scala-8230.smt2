; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!426300 () Bool)

(assert start!426300)

(declare-fun b!4393227 () Bool)

(declare-fun res!1810906 () Bool)

(declare-fun e!2735356 () Bool)

(assert (=> b!4393227 (=> (not res!1810906) (not e!2735356))))

(declare-datatypes ((V!10801 0))(
  ( (V!10802 (val!16715 Int)) )
))
(declare-datatypes ((K!10555 0))(
  ( (K!10556 (val!16716 Int)) )
))
(declare-datatypes ((tuple2!48750 0))(
  ( (tuple2!48751 (_1!27669 K!10555) (_2!27669 V!10801)) )
))
(declare-datatypes ((List!49322 0))(
  ( (Nil!49198) (Cons!49198 (h!54805 tuple2!48750) (t!356256 List!49322)) )
))
(declare-datatypes ((tuple2!48752 0))(
  ( (tuple2!48753 (_1!27670 (_ BitVec 64)) (_2!27670 List!49322)) )
))
(declare-datatypes ((List!49323 0))(
  ( (Nil!49199) (Cons!49199 (h!54806 tuple2!48752) (t!356257 List!49323)) )
))
(declare-datatypes ((ListLongMap!1823 0))(
  ( (ListLongMap!1824 (toList!3173 List!49323)) )
))
(declare-fun lm!1707 () ListLongMap!1823)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11555 (ListLongMap!1823 (_ BitVec 64)) Bool)

(assert (=> b!4393227 (= res!1810906 (contains!11555 lm!1707 hash!377))))

(declare-fun b!4393228 () Bool)

(declare-fun lt!1600933 () ListLongMap!1823)

(declare-fun lt!1600939 () List!49322)

(declare-fun e!2735353 () Bool)

(declare-fun apply!11447 (ListLongMap!1823 (_ BitVec 64)) List!49322)

(assert (=> b!4393228 (= e!2735353 (= (apply!11447 lt!1600933 hash!377) lt!1600939))))

(declare-fun b!4393229 () Bool)

(declare-fun e!2735351 () Bool)

(declare-datatypes ((ListMap!2417 0))(
  ( (ListMap!2418 (toList!3174 List!49322)) )
))
(declare-fun lt!1600932 () ListMap!2417)

(declare-fun lt!1600938 () ListMap!2417)

(declare-fun eq!333 (ListMap!2417 ListMap!2417) Bool)

(assert (=> b!4393229 (= e!2735351 (eq!333 lt!1600932 lt!1600938))))

(declare-fun b!4393230 () Bool)

(declare-fun res!1810910 () Bool)

(declare-fun e!2735350 () Bool)

(assert (=> b!4393230 (=> (not res!1810910) (not e!2735350))))

(declare-datatypes ((Hashable!4987 0))(
  ( (HashableExt!4986 (__x!30690 Int)) )
))
(declare-fun hashF!1247 () Hashable!4987)

(declare-fun key!3918 () K!10555)

(declare-fun hash!1792 (Hashable!4987 K!10555) (_ BitVec 64))

(assert (=> b!4393230 (= res!1810910 (= (hash!1792 hashF!1247 key!3918) hash!377))))

(declare-fun b!4393232 () Bool)

(declare-fun e!2735357 () Bool)

(declare-fun e!2735358 () Bool)

(assert (=> b!4393232 (= e!2735357 e!2735358)))

(declare-fun res!1810905 () Bool)

(assert (=> b!4393232 (=> res!1810905 e!2735358)))

(get-info :version)

(assert (=> b!4393232 (= res!1810905 (or (not ((_ is Cons!49199) (toList!3173 lm!1707))) (not (= (_1!27670 (h!54806 (toList!3173 lm!1707))) hash!377))))))

(declare-fun e!2735349 () Bool)

(assert (=> b!4393232 e!2735349))

(declare-fun res!1810915 () Bool)

(assert (=> b!4393232 (=> (not res!1810915) (not e!2735349))))

(declare-fun lt!1600946 () ListLongMap!1823)

(declare-fun lambda!147301 () Int)

(declare-fun forall!9303 (List!49323 Int) Bool)

(assert (=> b!4393232 (= res!1810915 (forall!9303 (toList!3173 lt!1600946) lambda!147301))))

(declare-fun lt!1600923 () tuple2!48752)

(declare-fun +!821 (ListLongMap!1823 tuple2!48752) ListLongMap!1823)

(assert (=> b!4393232 (= lt!1600946 (+!821 lm!1707 lt!1600923))))

(declare-fun newBucket!200 () List!49322)

(assert (=> b!4393232 (= lt!1600923 (tuple2!48753 hash!377 newBucket!200))))

(declare-datatypes ((Unit!78139 0))(
  ( (Unit!78140) )
))
(declare-fun lt!1600949 () Unit!78139)

(declare-fun addValidProp!241 (ListLongMap!1823 Int (_ BitVec 64) List!49322) Unit!78139)

(assert (=> b!4393232 (= lt!1600949 (addValidProp!241 lm!1707 lambda!147301 hash!377 newBucket!200))))

(assert (=> b!4393232 (forall!9303 (toList!3173 lm!1707) lambda!147301)))

(declare-fun b!4393233 () Bool)

(declare-fun res!1810908 () Bool)

(assert (=> b!4393233 (=> (not res!1810908) (not e!2735350))))

(declare-fun allKeysSameHash!553 (List!49322 (_ BitVec 64) Hashable!4987) Bool)

(assert (=> b!4393233 (= res!1810908 (allKeysSameHash!553 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4393234 () Bool)

(declare-fun res!1810916 () Bool)

(assert (=> b!4393234 (=> (not res!1810916) (not e!2735349))))

(assert (=> b!4393234 (= res!1810916 (forall!9303 (toList!3173 lt!1600946) lambda!147301))))

(declare-fun b!4393235 () Bool)

(assert (=> b!4393235 (= e!2735350 e!2735356)))

(declare-fun res!1810907 () Bool)

(assert (=> b!4393235 (=> (not res!1810907) (not e!2735356))))

(declare-fun lt!1600941 () ListMap!2417)

(declare-fun contains!11556 (ListMap!2417 K!10555) Bool)

(assert (=> b!4393235 (= res!1810907 (contains!11556 lt!1600941 key!3918))))

(declare-fun extractMap!654 (List!49323) ListMap!2417)

(assert (=> b!4393235 (= lt!1600941 (extractMap!654 (toList!3173 lm!1707)))))

(declare-fun b!4393231 () Bool)

(declare-fun e!2735354 () Bool)

(assert (=> b!4393231 (= e!2735354 true)))

(declare-fun lt!1600947 () Bool)

(declare-fun lt!1600937 () ListMap!2417)

(declare-fun lt!1600935 () ListMap!2417)

(assert (=> b!4393231 (= lt!1600947 (eq!333 lt!1600937 lt!1600935))))

(declare-fun lt!1600921 () ListMap!2417)

(assert (=> b!4393231 (eq!333 lt!1600921 lt!1600935)))

(declare-fun lt!1600926 () tuple2!48750)

(declare-fun +!822 (ListMap!2417 tuple2!48750) ListMap!2417)

(assert (=> b!4393231 (= lt!1600935 (+!822 lt!1600941 lt!1600926))))

(declare-fun lt!1600943 () ListMap!2417)

(assert (=> b!4393231 (= lt!1600921 (+!822 lt!1600943 lt!1600926))))

(declare-fun lt!1600942 () Unit!78139)

(declare-fun newValue!99 () V!10801)

(declare-fun removeThenAddForSameKeyIsSameAsAdd!12 (ListMap!2417 K!10555 V!10801) Unit!78139)

(assert (=> b!4393231 (= lt!1600942 (removeThenAddForSameKeyIsSameAsAdd!12 lt!1600941 key!3918 newValue!99))))

(declare-fun lt!1600922 () ListMap!2417)

(assert (=> b!4393231 (eq!333 (extractMap!654 (toList!3173 (+!821 lt!1600933 lt!1600923))) (+!822 lt!1600922 lt!1600926))))

(declare-fun lt!1600934 () Unit!78139)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!95 (ListLongMap!1823 (_ BitVec 64) List!49322 K!10555 V!10801 Hashable!4987) Unit!78139)

(assert (=> b!4393231 (= lt!1600934 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!95 lt!1600933 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun res!1810904 () Bool)

(assert (=> start!426300 (=> (not res!1810904) (not e!2735350))))

(assert (=> start!426300 (= res!1810904 (forall!9303 (toList!3173 lm!1707) lambda!147301))))

(assert (=> start!426300 e!2735350))

(declare-fun e!2735352 () Bool)

(assert (=> start!426300 e!2735352))

(assert (=> start!426300 true))

(declare-fun e!2735355 () Bool)

(declare-fun inv!64741 (ListLongMap!1823) Bool)

(assert (=> start!426300 (and (inv!64741 lm!1707) e!2735355)))

(declare-fun tp_is_empty!25617 () Bool)

(assert (=> start!426300 tp_is_empty!25617))

(declare-fun tp_is_empty!25619 () Bool)

(assert (=> start!426300 tp_is_empty!25619))

(declare-fun b!4393236 () Bool)

(assert (=> b!4393236 (= e!2735358 e!2735354)))

(declare-fun res!1810917 () Bool)

(assert (=> b!4393236 (=> res!1810917 e!2735354)))

(declare-fun lt!1600944 () Bool)

(assert (=> b!4393236 (= res!1810917 lt!1600944)))

(assert (=> b!4393236 e!2735353))

(declare-fun res!1810914 () Bool)

(assert (=> b!4393236 (=> (not res!1810914) (not e!2735353))))

(assert (=> b!4393236 (= res!1810914 (= lt!1600944 (contains!11556 lt!1600943 key!3918)))))

(assert (=> b!4393236 (= lt!1600944 (contains!11556 lt!1600922 key!3918))))

(declare-fun lt!1600931 () Unit!78139)

(declare-fun lemmaEquivalentThenSameContains!120 (ListMap!2417 ListMap!2417 K!10555) Unit!78139)

(assert (=> b!4393236 (= lt!1600931 (lemmaEquivalentThenSameContains!120 lt!1600922 lt!1600943 key!3918))))

(assert (=> b!4393236 (eq!333 lt!1600922 lt!1600943)))

(declare-fun -!270 (ListMap!2417 K!10555) ListMap!2417)

(assert (=> b!4393236 (= lt!1600943 (-!270 lt!1600941 key!3918))))

(declare-fun lt!1600925 () Unit!78139)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!85 (ListLongMap!1823 (_ BitVec 64) List!49322 K!10555 Hashable!4987) Unit!78139)

(assert (=> b!4393236 (= lt!1600925 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!85 lm!1707 hash!377 lt!1600939 key!3918 hashF!1247))))

(declare-fun lt!1600930 () ListMap!2417)

(assert (=> b!4393236 (= lt!1600930 lt!1600922)))

(assert (=> b!4393236 (= lt!1600922 (extractMap!654 (toList!3173 lt!1600933)))))

(declare-fun lt!1600948 () List!49322)

(assert (=> b!4393236 (= lt!1600939 lt!1600948)))

(assert (=> b!4393236 (= lt!1600933 (+!821 lm!1707 (tuple2!48753 hash!377 lt!1600939)))))

(declare-fun tail!7088 (List!49322) List!49322)

(assert (=> b!4393236 (= lt!1600939 (tail!7088 newBucket!200))))

(assert (=> b!4393236 e!2735351))

(declare-fun res!1810909 () Bool)

(assert (=> b!4393236 (=> (not res!1810909) (not e!2735351))))

(declare-fun lt!1600924 () ListMap!2417)

(assert (=> b!4393236 (= res!1810909 (eq!333 lt!1600924 lt!1600938))))

(assert (=> b!4393236 (= lt!1600938 (+!822 lt!1600930 lt!1600926))))

(declare-fun lt!1600945 () ListMap!2417)

(declare-fun addToMapMapFromBucket!276 (List!49322 ListMap!2417) ListMap!2417)

(assert (=> b!4393236 (= lt!1600930 (addToMapMapFromBucket!276 lt!1600948 lt!1600945))))

(declare-fun lt!1600940 () Unit!78139)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!142 (ListMap!2417 K!10555 V!10801 List!49322) Unit!78139)

(assert (=> b!4393236 (= lt!1600940 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!142 lt!1600945 key!3918 newValue!99 lt!1600948))))

(assert (=> b!4393236 (= lt!1600932 lt!1600924)))

(assert (=> b!4393236 (= lt!1600924 (addToMapMapFromBucket!276 lt!1600948 (+!822 lt!1600945 lt!1600926)))))

(assert (=> b!4393236 (= lt!1600937 lt!1600932)))

(declare-fun lt!1600936 () List!49322)

(assert (=> b!4393236 (= lt!1600932 (addToMapMapFromBucket!276 lt!1600936 lt!1600945))))

(assert (=> b!4393236 (= lt!1600937 (addToMapMapFromBucket!276 newBucket!200 lt!1600945))))

(assert (=> b!4393236 (= lt!1600937 (extractMap!654 (toList!3173 lt!1600946)))))

(assert (=> b!4393236 (= lt!1600945 (extractMap!654 (t!356257 (toList!3173 lm!1707))))))

(declare-fun b!4393237 () Bool)

(assert (=> b!4393237 (= e!2735349 (or (not ((_ is Cons!49199) (toList!3173 lm!1707))) (not (= (_1!27670 (h!54806 (toList!3173 lm!1707))) hash!377)) (= lt!1600946 (ListLongMap!1824 (Cons!49199 lt!1600923 (t!356257 (toList!3173 lm!1707)))))))))

(declare-fun b!4393238 () Bool)

(assert (=> b!4393238 (= e!2735356 (not e!2735357))))

(declare-fun res!1810912 () Bool)

(assert (=> b!4393238 (=> res!1810912 e!2735357)))

(assert (=> b!4393238 (= res!1810912 (not (= newBucket!200 lt!1600936)))))

(assert (=> b!4393238 (= lt!1600936 (Cons!49198 lt!1600926 lt!1600948))))

(declare-fun lt!1600950 () List!49322)

(declare-fun removePairForKey!563 (List!49322 K!10555) List!49322)

(assert (=> b!4393238 (= lt!1600948 (removePairForKey!563 lt!1600950 key!3918))))

(assert (=> b!4393238 (= lt!1600926 (tuple2!48751 key!3918 newValue!99))))

(declare-fun lt!1600927 () Unit!78139)

(declare-fun lt!1600929 () tuple2!48752)

(declare-fun forallContained!1941 (List!49323 Int tuple2!48752) Unit!78139)

(assert (=> b!4393238 (= lt!1600927 (forallContained!1941 (toList!3173 lm!1707) lambda!147301 lt!1600929))))

(declare-fun contains!11557 (List!49323 tuple2!48752) Bool)

(assert (=> b!4393238 (contains!11557 (toList!3173 lm!1707) lt!1600929)))

(assert (=> b!4393238 (= lt!1600929 (tuple2!48753 hash!377 lt!1600950))))

(declare-fun lt!1600928 () Unit!78139)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!440 (List!49323 (_ BitVec 64) List!49322) Unit!78139)

(assert (=> b!4393238 (= lt!1600928 (lemmaGetValueByKeyImpliesContainsTuple!440 (toList!3173 lm!1707) hash!377 lt!1600950))))

(assert (=> b!4393238 (= lt!1600950 (apply!11447 lm!1707 hash!377))))

(declare-fun tp!1331410 () Bool)

(declare-fun b!4393239 () Bool)

(assert (=> b!4393239 (= e!2735352 (and tp_is_empty!25617 tp_is_empty!25619 tp!1331410))))

(declare-fun b!4393240 () Bool)

(declare-fun res!1810911 () Bool)

(assert (=> b!4393240 (=> (not res!1810911) (not e!2735350))))

(declare-fun allKeysSameHashInMap!699 (ListLongMap!1823 Hashable!4987) Bool)

(assert (=> b!4393240 (= res!1810911 (allKeysSameHashInMap!699 lm!1707 hashF!1247))))

(declare-fun b!4393241 () Bool)

(declare-fun res!1810913 () Bool)

(assert (=> b!4393241 (=> res!1810913 e!2735357)))

(declare-fun noDuplicateKeys!595 (List!49322) Bool)

(assert (=> b!4393241 (= res!1810913 (not (noDuplicateKeys!595 newBucket!200)))))

(declare-fun b!4393242 () Bool)

(declare-fun tp!1331409 () Bool)

(assert (=> b!4393242 (= e!2735355 tp!1331409)))

(assert (= (and start!426300 res!1810904) b!4393240))

(assert (= (and b!4393240 res!1810911) b!4393230))

(assert (= (and b!4393230 res!1810910) b!4393233))

(assert (= (and b!4393233 res!1810908) b!4393235))

(assert (= (and b!4393235 res!1810907) b!4393227))

(assert (= (and b!4393227 res!1810906) b!4393238))

(assert (= (and b!4393238 (not res!1810912)) b!4393241))

(assert (= (and b!4393241 (not res!1810913)) b!4393232))

(assert (= (and b!4393232 res!1810915) b!4393234))

(assert (= (and b!4393234 res!1810916) b!4393237))

(assert (= (and b!4393232 (not res!1810905)) b!4393236))

(assert (= (and b!4393236 res!1810909) b!4393229))

(assert (= (and b!4393236 res!1810914) b!4393228))

(assert (= (and b!4393236 (not res!1810917)) b!4393231))

(assert (= (and start!426300 ((_ is Cons!49198) newBucket!200)) b!4393239))

(assert (= start!426300 b!4393242))

(declare-fun m!5053243 () Bool)

(assert (=> b!4393240 m!5053243))

(declare-fun m!5053245 () Bool)

(assert (=> b!4393230 m!5053245))

(declare-fun m!5053247 () Bool)

(assert (=> b!4393228 m!5053247))

(declare-fun m!5053249 () Bool)

(assert (=> b!4393232 m!5053249))

(declare-fun m!5053251 () Bool)

(assert (=> b!4393232 m!5053251))

(declare-fun m!5053253 () Bool)

(assert (=> b!4393232 m!5053253))

(declare-fun m!5053255 () Bool)

(assert (=> b!4393232 m!5053255))

(assert (=> b!4393234 m!5053249))

(declare-fun m!5053257 () Bool)

(assert (=> b!4393241 m!5053257))

(declare-fun m!5053259 () Bool)

(assert (=> b!4393236 m!5053259))

(declare-fun m!5053261 () Bool)

(assert (=> b!4393236 m!5053261))

(declare-fun m!5053263 () Bool)

(assert (=> b!4393236 m!5053263))

(declare-fun m!5053265 () Bool)

(assert (=> b!4393236 m!5053265))

(declare-fun m!5053267 () Bool)

(assert (=> b!4393236 m!5053267))

(declare-fun m!5053269 () Bool)

(assert (=> b!4393236 m!5053269))

(declare-fun m!5053271 () Bool)

(assert (=> b!4393236 m!5053271))

(declare-fun m!5053273 () Bool)

(assert (=> b!4393236 m!5053273))

(assert (=> b!4393236 m!5053259))

(declare-fun m!5053275 () Bool)

(assert (=> b!4393236 m!5053275))

(declare-fun m!5053277 () Bool)

(assert (=> b!4393236 m!5053277))

(declare-fun m!5053279 () Bool)

(assert (=> b!4393236 m!5053279))

(declare-fun m!5053281 () Bool)

(assert (=> b!4393236 m!5053281))

(declare-fun m!5053283 () Bool)

(assert (=> b!4393236 m!5053283))

(declare-fun m!5053285 () Bool)

(assert (=> b!4393236 m!5053285))

(declare-fun m!5053287 () Bool)

(assert (=> b!4393236 m!5053287))

(declare-fun m!5053289 () Bool)

(assert (=> b!4393236 m!5053289))

(declare-fun m!5053291 () Bool)

(assert (=> b!4393236 m!5053291))

(declare-fun m!5053293 () Bool)

(assert (=> b!4393236 m!5053293))

(declare-fun m!5053295 () Bool)

(assert (=> b!4393236 m!5053295))

(declare-fun m!5053297 () Bool)

(assert (=> b!4393231 m!5053297))

(declare-fun m!5053299 () Bool)

(assert (=> b!4393231 m!5053299))

(declare-fun m!5053301 () Bool)

(assert (=> b!4393231 m!5053301))

(declare-fun m!5053303 () Bool)

(assert (=> b!4393231 m!5053303))

(declare-fun m!5053305 () Bool)

(assert (=> b!4393231 m!5053305))

(declare-fun m!5053307 () Bool)

(assert (=> b!4393231 m!5053307))

(declare-fun m!5053309 () Bool)

(assert (=> b!4393231 m!5053309))

(declare-fun m!5053311 () Bool)

(assert (=> b!4393231 m!5053311))

(declare-fun m!5053313 () Bool)

(assert (=> b!4393231 m!5053313))

(assert (=> b!4393231 m!5053301))

(assert (=> b!4393231 m!5053303))

(declare-fun m!5053315 () Bool)

(assert (=> b!4393231 m!5053315))

(declare-fun m!5053317 () Bool)

(assert (=> b!4393235 m!5053317))

(declare-fun m!5053319 () Bool)

(assert (=> b!4393235 m!5053319))

(assert (=> start!426300 m!5053255))

(declare-fun m!5053321 () Bool)

(assert (=> start!426300 m!5053321))

(declare-fun m!5053323 () Bool)

(assert (=> b!4393233 m!5053323))

(declare-fun m!5053325 () Bool)

(assert (=> b!4393238 m!5053325))

(declare-fun m!5053327 () Bool)

(assert (=> b!4393238 m!5053327))

(declare-fun m!5053329 () Bool)

(assert (=> b!4393238 m!5053329))

(declare-fun m!5053331 () Bool)

(assert (=> b!4393238 m!5053331))

(declare-fun m!5053333 () Bool)

(assert (=> b!4393238 m!5053333))

(declare-fun m!5053335 () Bool)

(assert (=> b!4393229 m!5053335))

(declare-fun m!5053337 () Bool)

(assert (=> b!4393227 m!5053337))

(check-sat (not b!4393227) (not b!4393242) (not b!4393232) (not b!4393229) (not b!4393235) (not b!4393236) tp_is_empty!25619 tp_is_empty!25617 (not b!4393240) (not b!4393239) (not b!4393234) (not b!4393241) (not b!4393230) (not b!4393233) (not b!4393228) (not start!426300) (not b!4393231) (not b!4393238))
(check-sat)
