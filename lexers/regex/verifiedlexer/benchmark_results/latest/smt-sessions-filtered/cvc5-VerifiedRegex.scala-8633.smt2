; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!460702 () Bool)

(assert start!460702)

(declare-fun b!4608209 () Bool)

(declare-fun e!2874488 () Bool)

(declare-datatypes ((K!12568 0))(
  ( (K!12569 (val!18325 Int)) )
))
(declare-datatypes ((V!12814 0))(
  ( (V!12815 (val!18326 Int)) )
))
(declare-datatypes ((tuple2!51918 0))(
  ( (tuple2!51919 (_1!29253 K!12568) (_2!29253 V!12814)) )
))
(declare-datatypes ((List!51323 0))(
  ( (Nil!51199) (Cons!51199 (h!57187 tuple2!51918) (t!358317 List!51323)) )
))
(declare-datatypes ((tuple2!51920 0))(
  ( (tuple2!51921 (_1!29254 (_ BitVec 64)) (_2!29254 List!51323)) )
))
(declare-datatypes ((List!51324 0))(
  ( (Nil!51200) (Cons!51200 (h!57188 tuple2!51920) (t!358318 List!51324)) )
))
(declare-datatypes ((ListLongMap!3381 0))(
  ( (ListLongMap!3382 (toList!4749 List!51324)) )
))
(declare-fun lt!1764988 () ListLongMap!3381)

(declare-fun lm!1477 () ListLongMap!3381)

(declare-fun size!35961 (List!51324) Int)

(assert (=> b!4608209 (= e!2874488 (< (size!35961 (toList!4749 lt!1764988)) (size!35961 (toList!4749 lm!1477))))))

(declare-fun b!4608210 () Bool)

(declare-fun res!1928894 () Bool)

(declare-fun e!2874486 () Bool)

(assert (=> b!4608210 (=> (not res!1928894) (not e!2874486))))

(declare-fun key!3287 () K!12568)

(declare-datatypes ((ListMap!4011 0))(
  ( (ListMap!4012 (toList!4750 List!51323)) )
))
(declare-fun contains!14203 (ListMap!4011 K!12568) Bool)

(declare-fun extractMap!1427 (List!51324) ListMap!4011)

(assert (=> b!4608210 (= res!1928894 (contains!14203 (extractMap!1427 (toList!4749 lm!1477)) key!3287))))

(declare-fun b!4608211 () Bool)

(declare-fun e!2874481 () Bool)

(declare-fun e!2874491 () Bool)

(assert (=> b!4608211 (= e!2874481 e!2874491)))

(declare-fun res!1928890 () Bool)

(assert (=> b!4608211 (=> res!1928890 e!2874491)))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!14204 (ListLongMap!3381 (_ BitVec 64)) Bool)

(assert (=> b!4608211 (= res!1928890 (not (contains!14204 lt!1764988 hash!344)))))

(declare-fun tail!8022 (ListLongMap!3381) ListLongMap!3381)

(assert (=> b!4608211 (= lt!1764988 (tail!8022 lm!1477))))

(declare-fun res!1928896 () Bool)

(assert (=> start!460702 (=> (not res!1928896) (not e!2874486))))

(declare-fun lambda!187941 () Int)

(declare-fun forall!10683 (List!51324 Int) Bool)

(assert (=> start!460702 (= res!1928896 (forall!10683 (toList!4749 lm!1477) lambda!187941))))

(assert (=> start!460702 e!2874486))

(assert (=> start!460702 true))

(declare-fun e!2874483 () Bool)

(declare-fun inv!66753 (ListLongMap!3381) Bool)

(assert (=> start!460702 (and (inv!66753 lm!1477) e!2874483)))

(declare-fun tp_is_empty!28761 () Bool)

(assert (=> start!460702 tp_is_empty!28761))

(declare-fun e!2874482 () Bool)

(assert (=> start!460702 e!2874482))

(declare-fun b!4608212 () Bool)

(declare-fun e!2874485 () Bool)

(assert (=> b!4608212 (= e!2874491 e!2874485)))

(declare-fun res!1928892 () Bool)

(assert (=> b!4608212 (=> res!1928892 e!2874485)))

(declare-fun lt!1764984 () List!51323)

(declare-fun lt!1764987 () List!51323)

(assert (=> b!4608212 (= res!1928892 (not (= lt!1764984 lt!1764987)))))

(declare-fun apply!12104 (ListLongMap!3381 (_ BitVec 64)) List!51323)

(assert (=> b!4608212 (= lt!1764984 (apply!12104 lt!1764988 hash!344))))

(declare-fun b!4608213 () Bool)

(declare-fun res!1928898 () Bool)

(assert (=> b!4608213 (=> res!1928898 e!2874485)))

(declare-fun lt!1764978 () tuple2!51920)

(declare-fun contains!14205 (List!51324 tuple2!51920) Bool)

(assert (=> b!4608213 (= res!1928898 (not (contains!14205 (t!358318 (toList!4749 lm!1477)) lt!1764978)))))

(declare-fun b!4608214 () Bool)

(declare-fun e!2874490 () Bool)

(assert (=> b!4608214 (= e!2874485 e!2874490)))

(declare-fun res!1928885 () Bool)

(assert (=> b!4608214 (=> res!1928885 e!2874490)))

(declare-fun lt!1764982 () Bool)

(assert (=> b!4608214 (= res!1928885 lt!1764982)))

(declare-datatypes ((Unit!109169 0))(
  ( (Unit!109170) )
))
(declare-fun lt!1764983 () Unit!109169)

(declare-fun e!2874487 () Unit!109169)

(assert (=> b!4608214 (= lt!1764983 e!2874487)))

(declare-fun c!789359 () Bool)

(assert (=> b!4608214 (= c!789359 lt!1764982)))

(declare-fun containsKey!2249 (List!51323 K!12568) Bool)

(assert (=> b!4608214 (= lt!1764982 (not (containsKey!2249 lt!1764987 key!3287)))))

(declare-fun b!4608215 () Bool)

(declare-fun res!1928886 () Bool)

(assert (=> b!4608215 (=> res!1928886 e!2874481)))

(assert (=> b!4608215 (= res!1928886 (or (is-Nil!51200 (toList!4749 lm!1477)) (= (_1!29254 (h!57188 (toList!4749 lm!1477))) hash!344)))))

(declare-fun b!4608216 () Bool)

(declare-fun res!1928901 () Bool)

(assert (=> b!4608216 (=> res!1928901 e!2874481)))

(declare-fun newBucket!178 () List!51323)

(declare-fun noDuplicateKeys!1367 (List!51323) Bool)

(assert (=> b!4608216 (= res!1928901 (not (noDuplicateKeys!1367 newBucket!178)))))

(declare-fun b!4608217 () Bool)

(declare-fun e!2874492 () Bool)

(assert (=> b!4608217 (= e!2874486 e!2874492)))

(declare-fun res!1928889 () Bool)

(assert (=> b!4608217 (=> (not res!1928889) (not e!2874492))))

(declare-fun lt!1764980 () (_ BitVec 64))

(assert (=> b!4608217 (= res!1928889 (= lt!1764980 hash!344))))

(declare-datatypes ((Hashable!5766 0))(
  ( (HashableExt!5765 (__x!31469 Int)) )
))
(declare-fun hashF!1107 () Hashable!5766)

(declare-fun hash!3300 (Hashable!5766 K!12568) (_ BitVec 64))

(assert (=> b!4608217 (= lt!1764980 (hash!3300 hashF!1107 key!3287))))

(declare-fun b!4608218 () Bool)

(declare-fun res!1928899 () Bool)

(assert (=> b!4608218 (=> (not res!1928899) (not e!2874492))))

(declare-fun allKeysSameHash!1223 (List!51323 (_ BitVec 64) Hashable!5766) Bool)

(assert (=> b!4608218 (= res!1928899 (allKeysSameHash!1223 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4608219 () Bool)

(declare-fun Unit!109171 () Unit!109169)

(assert (=> b!4608219 (= e!2874487 Unit!109171)))

(declare-fun b!4608220 () Bool)

(assert (=> b!4608220 (= e!2874492 (not e!2874481))))

(declare-fun res!1928893 () Bool)

(assert (=> b!4608220 (=> res!1928893 e!2874481)))

(declare-fun removePairForKey!992 (List!51323 K!12568) List!51323)

(assert (=> b!4608220 (= res!1928893 (not (= newBucket!178 (removePairForKey!992 lt!1764987 key!3287))))))

(declare-fun lt!1764979 () Unit!109169)

(declare-fun forallContained!2928 (List!51324 Int tuple2!51920) Unit!109169)

(assert (=> b!4608220 (= lt!1764979 (forallContained!2928 (toList!4749 lm!1477) lambda!187941 lt!1764978))))

(assert (=> b!4608220 (contains!14205 (toList!4749 lm!1477) lt!1764978)))

(assert (=> b!4608220 (= lt!1764978 (tuple2!51921 hash!344 lt!1764987))))

(declare-fun lt!1764977 () Unit!109169)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!877 (List!51324 (_ BitVec 64) List!51323) Unit!109169)

(assert (=> b!4608220 (= lt!1764977 (lemmaGetValueByKeyImpliesContainsTuple!877 (toList!4749 lm!1477) hash!344 lt!1764987))))

(assert (=> b!4608220 (= lt!1764987 (apply!12104 lm!1477 hash!344))))

(assert (=> b!4608220 (contains!14204 lm!1477 lt!1764980)))

(declare-fun lt!1764974 () Unit!109169)

(declare-fun lemmaInGenMapThenLongMapContainsHash!441 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> b!4608220 (= lt!1764974 (lemmaInGenMapThenLongMapContainsHash!441 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4608221 () Bool)

(declare-fun res!1928895 () Bool)

(assert (=> b!4608221 (=> (not res!1928895) (not e!2874486))))

(declare-fun allKeysSameHashInMap!1478 (ListLongMap!3381 Hashable!5766) Bool)

(assert (=> b!4608221 (= res!1928895 (allKeysSameHashInMap!1478 lm!1477 hashF!1107))))

(declare-fun b!4608222 () Bool)

(declare-fun e!2874489 () Bool)

(assert (=> b!4608222 (= e!2874489 e!2874488)))

(declare-fun res!1928897 () Bool)

(assert (=> b!4608222 (=> res!1928897 e!2874488)))

(assert (=> b!4608222 (= res!1928897 (not (= newBucket!178 (removePairForKey!992 lt!1764984 key!3287))))))

(declare-fun lt!1764976 () tuple2!51920)

(declare-fun lt!1764985 () Unit!109169)

(assert (=> b!4608222 (= lt!1764985 (forallContained!2928 (toList!4749 lt!1764988) lambda!187941 lt!1764976))))

(assert (=> b!4608222 (contains!14205 (toList!4749 lt!1764988) lt!1764976)))

(assert (=> b!4608222 (= lt!1764976 (tuple2!51921 hash!344 lt!1764984))))

(declare-fun lt!1764973 () Unit!109169)

(assert (=> b!4608222 (= lt!1764973 (lemmaGetValueByKeyImpliesContainsTuple!877 (toList!4749 lt!1764988) hash!344 lt!1764984))))

(assert (=> b!4608222 (contains!14204 lt!1764988 lt!1764980)))

(declare-fun lt!1764972 () Unit!109169)

(assert (=> b!4608222 (= lt!1764972 (lemmaInGenMapThenLongMapContainsHash!441 lt!1764988 key!3287 hashF!1107))))

(declare-fun tp!1340983 () Bool)

(declare-fun tp_is_empty!28763 () Bool)

(declare-fun b!4608223 () Bool)

(assert (=> b!4608223 (= e!2874482 (and tp_is_empty!28761 tp_is_empty!28763 tp!1340983))))

(declare-fun b!4608224 () Bool)

(declare-fun e!2874484 () Bool)

(assert (=> b!4608224 (= e!2874484 e!2874489)))

(declare-fun res!1928888 () Bool)

(assert (=> b!4608224 (=> res!1928888 e!2874489)))

(assert (=> b!4608224 (= res!1928888 (not (contains!14203 (extractMap!1427 (t!358318 (toList!4749 lm!1477))) key!3287)))))

(assert (=> b!4608224 (contains!14203 (extractMap!1427 (toList!4749 lt!1764988)) key!3287)))

(declare-fun lt!1764986 () Unit!109169)

(declare-fun lemmaListContainsThenExtractedMapContains!279 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> b!4608224 (= lt!1764986 (lemmaListContainsThenExtractedMapContains!279 lt!1764988 key!3287 hashF!1107))))

(declare-fun b!4608225 () Bool)

(declare-fun res!1928887 () Bool)

(assert (=> b!4608225 (=> res!1928887 e!2874489)))

(assert (=> b!4608225 (= res!1928887 (not (allKeysSameHashInMap!1478 lt!1764988 hashF!1107)))))

(declare-fun b!4608226 () Bool)

(declare-fun tp!1340982 () Bool)

(assert (=> b!4608226 (= e!2874483 tp!1340982)))

(declare-fun b!4608227 () Bool)

(assert (=> b!4608227 (= e!2874490 e!2874484)))

(declare-fun res!1928891 () Bool)

(assert (=> b!4608227 (=> res!1928891 e!2874484)))

(declare-fun containsKeyBiggerList!307 (List!51324 K!12568) Bool)

(assert (=> b!4608227 (= res!1928891 (not (containsKeyBiggerList!307 (t!358318 (toList!4749 lm!1477)) key!3287)))))

(assert (=> b!4608227 (containsKeyBiggerList!307 (toList!4749 lt!1764988) key!3287)))

(declare-fun lt!1764981 () Unit!109169)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!177 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> b!4608227 (= lt!1764981 (lemmaInLongMapThenContainsKeyBiggerList!177 lt!1764988 key!3287 hashF!1107))))

(declare-fun b!4608228 () Bool)

(declare-fun res!1928900 () Bool)

(assert (=> b!4608228 (=> res!1928900 e!2874489)))

(assert (=> b!4608228 (= res!1928900 (not (forall!10683 (toList!4749 lt!1764988) lambda!187941)))))

(declare-fun b!4608229 () Bool)

(declare-fun Unit!109172 () Unit!109169)

(assert (=> b!4608229 (= e!2874487 Unit!109172)))

(declare-fun lt!1764975 () Unit!109169)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!331 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> b!4608229 (= lt!1764975 (lemmaNotInItsHashBucketThenNotInMap!331 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4608229 false))

(assert (= (and start!460702 res!1928896) b!4608221))

(assert (= (and b!4608221 res!1928895) b!4608210))

(assert (= (and b!4608210 res!1928894) b!4608217))

(assert (= (and b!4608217 res!1928889) b!4608218))

(assert (= (and b!4608218 res!1928899) b!4608220))

(assert (= (and b!4608220 (not res!1928893)) b!4608216))

(assert (= (and b!4608216 (not res!1928901)) b!4608215))

(assert (= (and b!4608215 (not res!1928886)) b!4608211))

(assert (= (and b!4608211 (not res!1928890)) b!4608212))

(assert (= (and b!4608212 (not res!1928892)) b!4608213))

(assert (= (and b!4608213 (not res!1928898)) b!4608214))

(assert (= (and b!4608214 c!789359) b!4608229))

(assert (= (and b!4608214 (not c!789359)) b!4608219))

(assert (= (and b!4608214 (not res!1928885)) b!4608227))

(assert (= (and b!4608227 (not res!1928891)) b!4608224))

(assert (= (and b!4608224 (not res!1928888)) b!4608228))

(assert (= (and b!4608228 (not res!1928900)) b!4608225))

(assert (= (and b!4608225 (not res!1928887)) b!4608222))

(assert (= (and b!4608222 (not res!1928897)) b!4608209))

(assert (= start!460702 b!4608226))

(assert (= (and start!460702 (is-Cons!51199 newBucket!178)) b!4608223))

(declare-fun m!5438337 () Bool)

(assert (=> b!4608228 m!5438337))

(declare-fun m!5438339 () Bool)

(assert (=> b!4608224 m!5438339))

(declare-fun m!5438341 () Bool)

(assert (=> b!4608224 m!5438341))

(assert (=> b!4608224 m!5438339))

(declare-fun m!5438343 () Bool)

(assert (=> b!4608224 m!5438343))

(assert (=> b!4608224 m!5438343))

(declare-fun m!5438345 () Bool)

(assert (=> b!4608224 m!5438345))

(declare-fun m!5438347 () Bool)

(assert (=> b!4608224 m!5438347))

(declare-fun m!5438349 () Bool)

(assert (=> b!4608229 m!5438349))

(declare-fun m!5438351 () Bool)

(assert (=> b!4608225 m!5438351))

(declare-fun m!5438353 () Bool)

(assert (=> b!4608210 m!5438353))

(assert (=> b!4608210 m!5438353))

(declare-fun m!5438355 () Bool)

(assert (=> b!4608210 m!5438355))

(declare-fun m!5438357 () Bool)

(assert (=> b!4608227 m!5438357))

(declare-fun m!5438359 () Bool)

(assert (=> b!4608227 m!5438359))

(declare-fun m!5438361 () Bool)

(assert (=> b!4608227 m!5438361))

(declare-fun m!5438363 () Bool)

(assert (=> b!4608209 m!5438363))

(declare-fun m!5438365 () Bool)

(assert (=> b!4608209 m!5438365))

(declare-fun m!5438367 () Bool)

(assert (=> b!4608217 m!5438367))

(declare-fun m!5438369 () Bool)

(assert (=> b!4608211 m!5438369))

(declare-fun m!5438371 () Bool)

(assert (=> b!4608211 m!5438371))

(declare-fun m!5438373 () Bool)

(assert (=> b!4608216 m!5438373))

(declare-fun m!5438375 () Bool)

(assert (=> b!4608221 m!5438375))

(declare-fun m!5438377 () Bool)

(assert (=> b!4608213 m!5438377))

(declare-fun m!5438379 () Bool)

(assert (=> b!4608214 m!5438379))

(declare-fun m!5438381 () Bool)

(assert (=> b!4608212 m!5438381))

(declare-fun m!5438383 () Bool)

(assert (=> b!4608222 m!5438383))

(declare-fun m!5438385 () Bool)

(assert (=> b!4608222 m!5438385))

(declare-fun m!5438387 () Bool)

(assert (=> b!4608222 m!5438387))

(declare-fun m!5438389 () Bool)

(assert (=> b!4608222 m!5438389))

(declare-fun m!5438391 () Bool)

(assert (=> b!4608222 m!5438391))

(declare-fun m!5438393 () Bool)

(assert (=> b!4608222 m!5438393))

(declare-fun m!5438395 () Bool)

(assert (=> b!4608218 m!5438395))

(declare-fun m!5438397 () Bool)

(assert (=> b!4608220 m!5438397))

(declare-fun m!5438399 () Bool)

(assert (=> b!4608220 m!5438399))

(declare-fun m!5438401 () Bool)

(assert (=> b!4608220 m!5438401))

(declare-fun m!5438403 () Bool)

(assert (=> b!4608220 m!5438403))

(declare-fun m!5438405 () Bool)

(assert (=> b!4608220 m!5438405))

(declare-fun m!5438407 () Bool)

(assert (=> b!4608220 m!5438407))

(declare-fun m!5438409 () Bool)

(assert (=> b!4608220 m!5438409))

(declare-fun m!5438411 () Bool)

(assert (=> start!460702 m!5438411))

(declare-fun m!5438413 () Bool)

(assert (=> start!460702 m!5438413))

(push 1)

(assert (not b!4608221))

(assert (not b!4608222))

(assert (not b!4608228))

(assert (not b!4608217))

(assert (not b!4608210))

(assert (not b!4608214))

(assert (not b!4608229))

(assert (not b!4608220))

(assert (not b!4608212))

(assert (not b!4608227))

(assert tp_is_empty!28761)

(assert (not b!4608224))

(assert (not b!4608225))

(assert tp_is_empty!28763)

(assert (not b!4608223))

(assert (not b!4608218))

(assert (not b!4608226))

(assert (not b!4608211))

(assert (not start!460702))

(assert (not b!4608216))

(assert (not b!4608209))

(assert (not b!4608213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1015096 () Bool)

(declare-fun d!1451850 () Bool)

(assert (= bs!1015096 (and d!1451850 start!460702)))

(declare-fun lambda!187953 () Int)

(assert (=> bs!1015096 (not (= lambda!187953 lambda!187941))))

(assert (=> d!1451850 true))

(assert (=> d!1451850 (= (allKeysSameHashInMap!1478 lt!1764988 hashF!1107) (forall!10683 (toList!4749 lt!1764988) lambda!187953))))

(declare-fun bs!1015097 () Bool)

(assert (= bs!1015097 d!1451850))

(declare-fun m!5438493 () Bool)

(assert (=> bs!1015097 m!5438493))

(assert (=> b!4608225 d!1451850))

(declare-fun d!1451854 () Bool)

(declare-fun res!1928957 () Bool)

(declare-fun e!2874533 () Bool)

(assert (=> d!1451854 (=> res!1928957 e!2874533)))

(assert (=> d!1451854 (= res!1928957 (and (is-Cons!51199 lt!1764987) (= (_1!29253 (h!57187 lt!1764987)) key!3287)))))

(assert (=> d!1451854 (= (containsKey!2249 lt!1764987 key!3287) e!2874533)))

(declare-fun b!4608299 () Bool)

(declare-fun e!2874534 () Bool)

(assert (=> b!4608299 (= e!2874533 e!2874534)))

(declare-fun res!1928958 () Bool)

(assert (=> b!4608299 (=> (not res!1928958) (not e!2874534))))

(assert (=> b!4608299 (= res!1928958 (is-Cons!51199 lt!1764987))))

(declare-fun b!4608300 () Bool)

(assert (=> b!4608300 (= e!2874534 (containsKey!2249 (t!358317 lt!1764987) key!3287))))

(assert (= (and d!1451854 (not res!1928957)) b!4608299))

(assert (= (and b!4608299 res!1928958) b!4608300))

(declare-fun m!5438495 () Bool)

(assert (=> b!4608300 m!5438495))

(assert (=> b!4608214 d!1451854))

(declare-fun b!4608319 () Bool)

(assert (=> b!4608319 false))

(declare-fun lt!1765059 () Unit!109169)

(declare-fun lt!1765057 () Unit!109169)

(assert (=> b!4608319 (= lt!1765059 lt!1765057)))

(declare-fun containsKey!2251 (List!51323 K!12568) Bool)

(assert (=> b!4608319 (containsKey!2251 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!594 (List!51323 K!12568) Unit!109169)

(assert (=> b!4608319 (= lt!1765057 (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(declare-fun e!2874550 () Unit!109169)

(declare-fun Unit!109177 () Unit!109169)

(assert (=> b!4608319 (= e!2874550 Unit!109177)))

(declare-fun b!4608321 () Bool)

(declare-fun Unit!109178 () Unit!109169)

(assert (=> b!4608321 (= e!2874550 Unit!109178)))

(declare-fun b!4608322 () Bool)

(declare-fun e!2874547 () Bool)

(declare-datatypes ((List!51327 0))(
  ( (Nil!51203) (Cons!51203 (h!57192 K!12568) (t!358321 List!51327)) )
))
(declare-fun contains!14209 (List!51327 K!12568) Bool)

(declare-fun keys!17956 (ListMap!4011) List!51327)

(assert (=> b!4608322 (= e!2874547 (contains!14209 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(declare-fun b!4608323 () Bool)

(declare-fun e!2874549 () List!51327)

(declare-fun getKeysList!595 (List!51323) List!51327)

(assert (=> b!4608323 (= e!2874549 (getKeysList!595 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun b!4608324 () Bool)

(declare-fun e!2874551 () Bool)

(assert (=> b!4608324 (= e!2874551 e!2874547)))

(declare-fun res!1928966 () Bool)

(assert (=> b!4608324 (=> (not res!1928966) (not e!2874547))))

(declare-datatypes ((Option!11437 0))(
  ( (None!11436) (Some!11436 (v!45490 V!12814)) )
))
(declare-fun isDefined!8704 (Option!11437) Bool)

(declare-fun getValueByKey!1355 (List!51323 K!12568) Option!11437)

(assert (=> b!4608324 (= res!1928966 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287)))))

(declare-fun b!4608325 () Bool)

(declare-fun e!2874548 () Unit!109169)

(assert (=> b!4608325 (= e!2874548 e!2874550)))

(declare-fun c!789369 () Bool)

(declare-fun call!321374 () Bool)

(assert (=> b!4608325 (= c!789369 call!321374)))

(declare-fun b!4608326 () Bool)

(declare-fun lt!1765062 () Unit!109169)

(assert (=> b!4608326 (= e!2874548 lt!1765062)))

(declare-fun lt!1765058 () Unit!109169)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (List!51323 K!12568) Unit!109169)

(assert (=> b!4608326 (= lt!1765058 (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> b!4608326 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(declare-fun lt!1765060 () Unit!109169)

(assert (=> b!4608326 (= lt!1765060 lt!1765058)))

(declare-fun lemmaInListThenGetKeysListContains!590 (List!51323 K!12568) Unit!109169)

(assert (=> b!4608326 (= lt!1765062 (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> b!4608326 call!321374))

(declare-fun bm!321369 () Bool)

(assert (=> bm!321369 (= call!321374 (contains!14209 e!2874549 key!3287))))

(declare-fun c!789370 () Bool)

(declare-fun c!789371 () Bool)

(assert (=> bm!321369 (= c!789370 c!789371)))

(declare-fun b!4608327 () Bool)

(assert (=> b!4608327 (= e!2874549 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun b!4608320 () Bool)

(declare-fun e!2874552 () Bool)

(assert (=> b!4608320 (= e!2874552 (not (contains!14209 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287)))))

(declare-fun d!1451856 () Bool)

(assert (=> d!1451856 e!2874551))

(declare-fun res!1928965 () Bool)

(assert (=> d!1451856 (=> res!1928965 e!2874551)))

(assert (=> d!1451856 (= res!1928965 e!2874552)))

(declare-fun res!1928967 () Bool)

(assert (=> d!1451856 (=> (not res!1928967) (not e!2874552))))

(declare-fun lt!1765056 () Bool)

(assert (=> d!1451856 (= res!1928967 (not lt!1765056))))

(declare-fun lt!1765063 () Bool)

(assert (=> d!1451856 (= lt!1765056 lt!1765063)))

(declare-fun lt!1765061 () Unit!109169)

(assert (=> d!1451856 (= lt!1765061 e!2874548)))

(assert (=> d!1451856 (= c!789371 lt!1765063)))

(assert (=> d!1451856 (= lt!1765063 (containsKey!2251 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> d!1451856 (= (contains!14203 (extractMap!1427 (t!358318 (toList!4749 lm!1477))) key!3287) lt!1765056)))

(assert (= (and d!1451856 c!789371) b!4608326))

(assert (= (and d!1451856 (not c!789371)) b!4608325))

(assert (= (and b!4608325 c!789369) b!4608319))

(assert (= (and b!4608325 (not c!789369)) b!4608321))

(assert (= (or b!4608326 b!4608325) bm!321369))

(assert (= (and bm!321369 c!789370) b!4608323))

(assert (= (and bm!321369 (not c!789370)) b!4608327))

(assert (= (and d!1451856 res!1928967) b!4608320))

(assert (= (and d!1451856 (not res!1928965)) b!4608324))

(assert (= (and b!4608324 res!1928966) b!4608322))

(declare-fun m!5438497 () Bool)

(assert (=> b!4608323 m!5438497))

(assert (=> b!4608327 m!5438343))

(declare-fun m!5438499 () Bool)

(assert (=> b!4608327 m!5438499))

(declare-fun m!5438501 () Bool)

(assert (=> bm!321369 m!5438501))

(assert (=> b!4608320 m!5438343))

(assert (=> b!4608320 m!5438499))

(assert (=> b!4608320 m!5438499))

(declare-fun m!5438503 () Bool)

(assert (=> b!4608320 m!5438503))

(declare-fun m!5438505 () Bool)

(assert (=> b!4608324 m!5438505))

(assert (=> b!4608324 m!5438505))

(declare-fun m!5438507 () Bool)

(assert (=> b!4608324 m!5438507))

(declare-fun m!5438509 () Bool)

(assert (=> d!1451856 m!5438509))

(declare-fun m!5438511 () Bool)

(assert (=> b!4608326 m!5438511))

(assert (=> b!4608326 m!5438505))

(assert (=> b!4608326 m!5438505))

(assert (=> b!4608326 m!5438507))

(declare-fun m!5438513 () Bool)

(assert (=> b!4608326 m!5438513))

(assert (=> b!4608319 m!5438509))

(declare-fun m!5438515 () Bool)

(assert (=> b!4608319 m!5438515))

(assert (=> b!4608322 m!5438343))

(assert (=> b!4608322 m!5438499))

(assert (=> b!4608322 m!5438499))

(assert (=> b!4608322 m!5438503))

(assert (=> b!4608224 d!1451856))

(declare-fun bs!1015101 () Bool)

(declare-fun d!1451858 () Bool)

(assert (= bs!1015101 (and d!1451858 start!460702)))

(declare-fun lambda!187960 () Int)

(assert (=> bs!1015101 (= lambda!187960 lambda!187941)))

(declare-fun bs!1015102 () Bool)

(assert (= bs!1015102 (and d!1451858 d!1451850)))

(assert (=> bs!1015102 (not (= lambda!187960 lambda!187953))))

(declare-fun lt!1765070 () ListMap!4011)

(declare-fun invariantList!1145 (List!51323) Bool)

(assert (=> d!1451858 (invariantList!1145 (toList!4750 lt!1765070))))

(declare-fun e!2874559 () ListMap!4011)

(assert (=> d!1451858 (= lt!1765070 e!2874559)))

(declare-fun c!789378 () Bool)

(assert (=> d!1451858 (= c!789378 (is-Cons!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1451858 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187960)))

(assert (=> d!1451858 (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765070)))

(declare-fun b!4608340 () Bool)

(declare-fun addToMapMapFromBucket!837 (List!51323 ListMap!4011) ListMap!4011)

(assert (=> b!4608340 (= e!2874559 (addToMapMapFromBucket!837 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun b!4608341 () Bool)

(assert (=> b!4608341 (= e!2874559 (ListMap!4012 Nil!51199))))

(assert (= (and d!1451858 c!789378) b!4608340))

(assert (= (and d!1451858 (not c!789378)) b!4608341))

(declare-fun m!5438533 () Bool)

(assert (=> d!1451858 m!5438533))

(declare-fun m!5438535 () Bool)

(assert (=> d!1451858 m!5438535))

(declare-fun m!5438537 () Bool)

(assert (=> b!4608340 m!5438537))

(assert (=> b!4608340 m!5438537))

(declare-fun m!5438539 () Bool)

(assert (=> b!4608340 m!5438539))

(assert (=> b!4608224 d!1451858))

(declare-fun bs!1015103 () Bool)

(declare-fun d!1451864 () Bool)

(assert (= bs!1015103 (and d!1451864 start!460702)))

(declare-fun lambda!187963 () Int)

(assert (=> bs!1015103 (= lambda!187963 lambda!187941)))

(declare-fun bs!1015104 () Bool)

(assert (= bs!1015104 (and d!1451864 d!1451850)))

(assert (=> bs!1015104 (not (= lambda!187963 lambda!187953))))

(declare-fun bs!1015105 () Bool)

(assert (= bs!1015105 (and d!1451864 d!1451858)))

(assert (=> bs!1015105 (= lambda!187963 lambda!187960)))

(assert (=> d!1451864 (contains!14203 (extractMap!1427 (toList!4749 lt!1764988)) key!3287)))

(declare-fun lt!1765073 () Unit!109169)

(declare-fun choose!30996 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> d!1451864 (= lt!1765073 (choose!30996 lt!1764988 key!3287 hashF!1107))))

(assert (=> d!1451864 (forall!10683 (toList!4749 lt!1764988) lambda!187963)))

(assert (=> d!1451864 (= (lemmaListContainsThenExtractedMapContains!279 lt!1764988 key!3287 hashF!1107) lt!1765073)))

(declare-fun bs!1015106 () Bool)

(assert (= bs!1015106 d!1451864))

(assert (=> bs!1015106 m!5438339))

(assert (=> bs!1015106 m!5438339))

(assert (=> bs!1015106 m!5438341))

(declare-fun m!5438541 () Bool)

(assert (=> bs!1015106 m!5438541))

(declare-fun m!5438543 () Bool)

(assert (=> bs!1015106 m!5438543))

(assert (=> b!4608224 d!1451864))

(declare-fun b!4608342 () Bool)

(assert (=> b!4608342 false))

(declare-fun lt!1765077 () Unit!109169)

(declare-fun lt!1765075 () Unit!109169)

(assert (=> b!4608342 (= lt!1765077 lt!1765075)))

(assert (=> b!4608342 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287)))

(assert (=> b!4608342 (= lt!1765075 (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(declare-fun e!2874563 () Unit!109169)

(declare-fun Unit!109179 () Unit!109169)

(assert (=> b!4608342 (= e!2874563 Unit!109179)))

(declare-fun b!4608344 () Bool)

(declare-fun Unit!109180 () Unit!109169)

(assert (=> b!4608344 (= e!2874563 Unit!109180)))

(declare-fun b!4608345 () Bool)

(declare-fun e!2874560 () Bool)

(assert (=> b!4608345 (= e!2874560 (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(declare-fun b!4608346 () Bool)

(declare-fun e!2874562 () List!51327)

(assert (=> b!4608346 (= e!2874562 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))

(declare-fun b!4608347 () Bool)

(declare-fun e!2874564 () Bool)

(assert (=> b!4608347 (= e!2874564 e!2874560)))

(declare-fun res!1928969 () Bool)

(assert (=> b!4608347 (=> (not res!1928969) (not e!2874560))))

(assert (=> b!4608347 (= res!1928969 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287)))))

(declare-fun b!4608348 () Bool)

(declare-fun e!2874561 () Unit!109169)

(assert (=> b!4608348 (= e!2874561 e!2874563)))

(declare-fun c!789379 () Bool)

(declare-fun call!321375 () Bool)

(assert (=> b!4608348 (= c!789379 call!321375)))

(declare-fun b!4608349 () Bool)

(declare-fun lt!1765080 () Unit!109169)

(assert (=> b!4608349 (= e!2874561 lt!1765080)))

(declare-fun lt!1765076 () Unit!109169)

(assert (=> b!4608349 (= lt!1765076 (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> b!4608349 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(declare-fun lt!1765078 () Unit!109169)

(assert (=> b!4608349 (= lt!1765078 lt!1765076)))

(assert (=> b!4608349 (= lt!1765080 (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> b!4608349 call!321375))

(declare-fun bm!321370 () Bool)

(assert (=> bm!321370 (= call!321375 (contains!14209 e!2874562 key!3287))))

(declare-fun c!789380 () Bool)

(declare-fun c!789381 () Bool)

(assert (=> bm!321370 (= c!789380 c!789381)))

(declare-fun b!4608350 () Bool)

(assert (=> b!4608350 (= e!2874562 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))))))

(declare-fun b!4608343 () Bool)

(declare-fun e!2874565 () Bool)

(assert (=> b!4608343 (= e!2874565 (not (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))) key!3287)))))

(declare-fun d!1451866 () Bool)

(assert (=> d!1451866 e!2874564))

(declare-fun res!1928968 () Bool)

(assert (=> d!1451866 (=> res!1928968 e!2874564)))

(assert (=> d!1451866 (= res!1928968 e!2874565)))

(declare-fun res!1928970 () Bool)

(assert (=> d!1451866 (=> (not res!1928970) (not e!2874565))))

(declare-fun lt!1765074 () Bool)

(assert (=> d!1451866 (= res!1928970 (not lt!1765074))))

(declare-fun lt!1765081 () Bool)

(assert (=> d!1451866 (= lt!1765074 lt!1765081)))

(declare-fun lt!1765079 () Unit!109169)

(assert (=> d!1451866 (= lt!1765079 e!2874561)))

(assert (=> d!1451866 (= c!789381 lt!1765081)))

(assert (=> d!1451866 (= lt!1765081 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> d!1451866 (= (contains!14203 (extractMap!1427 (toList!4749 lt!1764988)) key!3287) lt!1765074)))

(assert (= (and d!1451866 c!789381) b!4608349))

(assert (= (and d!1451866 (not c!789381)) b!4608348))

(assert (= (and b!4608348 c!789379) b!4608342))

(assert (= (and b!4608348 (not c!789379)) b!4608344))

(assert (= (or b!4608349 b!4608348) bm!321370))

(assert (= (and bm!321370 c!789380) b!4608346))

(assert (= (and bm!321370 (not c!789380)) b!4608350))

(assert (= (and d!1451866 res!1928970) b!4608343))

(assert (= (and d!1451866 (not res!1928968)) b!4608347))

(assert (= (and b!4608347 res!1928969) b!4608345))

(declare-fun m!5438545 () Bool)

(assert (=> b!4608346 m!5438545))

(assert (=> b!4608350 m!5438339))

(declare-fun m!5438547 () Bool)

(assert (=> b!4608350 m!5438547))

(declare-fun m!5438549 () Bool)

(assert (=> bm!321370 m!5438549))

(assert (=> b!4608343 m!5438339))

(assert (=> b!4608343 m!5438547))

(assert (=> b!4608343 m!5438547))

(declare-fun m!5438551 () Bool)

(assert (=> b!4608343 m!5438551))

(declare-fun m!5438553 () Bool)

(assert (=> b!4608347 m!5438553))

(assert (=> b!4608347 m!5438553))

(declare-fun m!5438555 () Bool)

(assert (=> b!4608347 m!5438555))

(declare-fun m!5438557 () Bool)

(assert (=> d!1451866 m!5438557))

(declare-fun m!5438559 () Bool)

(assert (=> b!4608349 m!5438559))

(assert (=> b!4608349 m!5438553))

(assert (=> b!4608349 m!5438553))

(assert (=> b!4608349 m!5438555))

(declare-fun m!5438561 () Bool)

(assert (=> b!4608349 m!5438561))

(assert (=> b!4608342 m!5438557))

(declare-fun m!5438563 () Bool)

(assert (=> b!4608342 m!5438563))

(assert (=> b!4608345 m!5438339))

(assert (=> b!4608345 m!5438547))

(assert (=> b!4608345 m!5438547))

(assert (=> b!4608345 m!5438551))

(assert (=> b!4608224 d!1451866))

(declare-fun bs!1015107 () Bool)

(declare-fun d!1451868 () Bool)

(assert (= bs!1015107 (and d!1451868 start!460702)))

(declare-fun lambda!187964 () Int)

(assert (=> bs!1015107 (= lambda!187964 lambda!187941)))

(declare-fun bs!1015108 () Bool)

(assert (= bs!1015108 (and d!1451868 d!1451850)))

(assert (=> bs!1015108 (not (= lambda!187964 lambda!187953))))

(declare-fun bs!1015109 () Bool)

(assert (= bs!1015109 (and d!1451868 d!1451858)))

(assert (=> bs!1015109 (= lambda!187964 lambda!187960)))

(declare-fun bs!1015110 () Bool)

(assert (= bs!1015110 (and d!1451868 d!1451864)))

(assert (=> bs!1015110 (= lambda!187964 lambda!187963)))

(declare-fun lt!1765082 () ListMap!4011)

(assert (=> d!1451868 (invariantList!1145 (toList!4750 lt!1765082))))

(declare-fun e!2874566 () ListMap!4011)

(assert (=> d!1451868 (= lt!1765082 e!2874566)))

(declare-fun c!789382 () Bool)

(assert (=> d!1451868 (= c!789382 (is-Cons!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1451868 (forall!10683 (toList!4749 lt!1764988) lambda!187964)))

(assert (=> d!1451868 (= (extractMap!1427 (toList!4749 lt!1764988)) lt!1765082)))

(declare-fun b!4608351 () Bool)

(assert (=> b!4608351 (= e!2874566 (addToMapMapFromBucket!837 (_2!29254 (h!57188 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))))))

(declare-fun b!4608352 () Bool)

(assert (=> b!4608352 (= e!2874566 (ListMap!4012 Nil!51199))))

(assert (= (and d!1451868 c!789382) b!4608351))

(assert (= (and d!1451868 (not c!789382)) b!4608352))

(declare-fun m!5438565 () Bool)

(assert (=> d!1451868 m!5438565))

(declare-fun m!5438567 () Bool)

(assert (=> d!1451868 m!5438567))

(declare-fun m!5438569 () Bool)

(assert (=> b!4608351 m!5438569))

(assert (=> b!4608351 m!5438569))

(declare-fun m!5438571 () Bool)

(assert (=> b!4608351 m!5438571))

(assert (=> b!4608224 d!1451868))

(declare-fun d!1451870 () Bool)

(declare-fun lt!1765085 () Bool)

(declare-fun content!8692 (List!51324) (Set tuple2!51920))

(assert (=> d!1451870 (= lt!1765085 (set.member lt!1764978 (content!8692 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun e!2874572 () Bool)

(assert (=> d!1451870 (= lt!1765085 e!2874572)))

(declare-fun res!1928975 () Bool)

(assert (=> d!1451870 (=> (not res!1928975) (not e!2874572))))

(assert (=> d!1451870 (= res!1928975 (is-Cons!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1451870 (= (contains!14205 (t!358318 (toList!4749 lm!1477)) lt!1764978) lt!1765085)))

(declare-fun b!4608357 () Bool)

(declare-fun e!2874571 () Bool)

(assert (=> b!4608357 (= e!2874572 e!2874571)))

(declare-fun res!1928976 () Bool)

(assert (=> b!4608357 (=> res!1928976 e!2874571)))

(assert (=> b!4608357 (= res!1928976 (= (h!57188 (t!358318 (toList!4749 lm!1477))) lt!1764978))))

(declare-fun b!4608358 () Bool)

(assert (=> b!4608358 (= e!2874571 (contains!14205 (t!358318 (t!358318 (toList!4749 lm!1477))) lt!1764978))))

(assert (= (and d!1451870 res!1928975) b!4608357))

(assert (= (and b!4608357 (not res!1928976)) b!4608358))

(declare-fun m!5438573 () Bool)

(assert (=> d!1451870 m!5438573))

(declare-fun m!5438575 () Bool)

(assert (=> d!1451870 m!5438575))

(declare-fun m!5438577 () Bool)

(assert (=> b!4608358 m!5438577))

(assert (=> b!4608213 d!1451870))

(declare-fun d!1451872 () Bool)

(declare-datatypes ((Option!11438 0))(
  ( (None!11437) (Some!11437 (v!45491 List!51323)) )
))
(declare-fun get!16937 (Option!11438) List!51323)

(declare-fun getValueByKey!1356 (List!51324 (_ BitVec 64)) Option!11438)

(assert (=> d!1451872 (= (apply!12104 lt!1764988 hash!344) (get!16937 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344)))))

(declare-fun bs!1015111 () Bool)

(assert (= bs!1015111 d!1451872))

(declare-fun m!5438579 () Bool)

(assert (=> bs!1015111 m!5438579))

(assert (=> bs!1015111 m!5438579))

(declare-fun m!5438581 () Bool)

(assert (=> bs!1015111 m!5438581))

(assert (=> b!4608212 d!1451872))

(declare-fun b!4608369 () Bool)

(declare-fun e!2874577 () List!51323)

(assert (=> b!4608369 (= e!2874577 (Cons!51199 (h!57187 lt!1764984) (removePairForKey!992 (t!358317 lt!1764984) key!3287)))))

(declare-fun b!4608368 () Bool)

(declare-fun e!2874578 () List!51323)

(assert (=> b!4608368 (= e!2874578 e!2874577)))

(declare-fun c!789388 () Bool)

(assert (=> b!4608368 (= c!789388 (is-Cons!51199 lt!1764984))))

(declare-fun b!4608370 () Bool)

(assert (=> b!4608370 (= e!2874577 Nil!51199)))

(declare-fun b!4608367 () Bool)

(assert (=> b!4608367 (= e!2874578 (t!358317 lt!1764984))))

(declare-fun d!1451874 () Bool)

(declare-fun lt!1765088 () List!51323)

(assert (=> d!1451874 (not (containsKey!2249 lt!1765088 key!3287))))

(assert (=> d!1451874 (= lt!1765088 e!2874578)))

(declare-fun c!789387 () Bool)

(assert (=> d!1451874 (= c!789387 (and (is-Cons!51199 lt!1764984) (= (_1!29253 (h!57187 lt!1764984)) key!3287)))))

(assert (=> d!1451874 (noDuplicateKeys!1367 lt!1764984)))

(assert (=> d!1451874 (= (removePairForKey!992 lt!1764984 key!3287) lt!1765088)))

(assert (= (and d!1451874 c!789387) b!4608367))

(assert (= (and d!1451874 (not c!789387)) b!4608368))

(assert (= (and b!4608368 c!789388) b!4608369))

(assert (= (and b!4608368 (not c!789388)) b!4608370))

(declare-fun m!5438583 () Bool)

(assert (=> b!4608369 m!5438583))

(declare-fun m!5438585 () Bool)

(assert (=> d!1451874 m!5438585))

(declare-fun m!5438587 () Bool)

(assert (=> d!1451874 m!5438587))

(assert (=> b!4608222 d!1451874))

(declare-fun bs!1015112 () Bool)

(declare-fun d!1451876 () Bool)

(assert (= bs!1015112 (and d!1451876 d!1451864)))

(declare-fun lambda!187967 () Int)

(assert (=> bs!1015112 (= lambda!187967 lambda!187963)))

(declare-fun bs!1015113 () Bool)

(assert (= bs!1015113 (and d!1451876 d!1451850)))

(assert (=> bs!1015113 (not (= lambda!187967 lambda!187953))))

(declare-fun bs!1015114 () Bool)

(assert (= bs!1015114 (and d!1451876 d!1451858)))

(assert (=> bs!1015114 (= lambda!187967 lambda!187960)))

(declare-fun bs!1015115 () Bool)

(assert (= bs!1015115 (and d!1451876 d!1451868)))

(assert (=> bs!1015115 (= lambda!187967 lambda!187964)))

(declare-fun bs!1015116 () Bool)

(assert (= bs!1015116 (and d!1451876 start!460702)))

(assert (=> bs!1015116 (= lambda!187967 lambda!187941)))

(assert (=> d!1451876 (contains!14204 lt!1764988 (hash!3300 hashF!1107 key!3287))))

(declare-fun lt!1765107 () Unit!109169)

(declare-fun choose!30997 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> d!1451876 (= lt!1765107 (choose!30997 lt!1764988 key!3287 hashF!1107))))

(assert (=> d!1451876 (forall!10683 (toList!4749 lt!1764988) lambda!187967)))

(assert (=> d!1451876 (= (lemmaInGenMapThenLongMapContainsHash!441 lt!1764988 key!3287 hashF!1107) lt!1765107)))

(declare-fun bs!1015117 () Bool)

(assert (= bs!1015117 d!1451876))

(assert (=> bs!1015117 m!5438367))

(assert (=> bs!1015117 m!5438367))

(declare-fun m!5438589 () Bool)

(assert (=> bs!1015117 m!5438589))

(declare-fun m!5438591 () Bool)

(assert (=> bs!1015117 m!5438591))

(declare-fun m!5438593 () Bool)

(assert (=> bs!1015117 m!5438593))

(assert (=> b!4608222 d!1451876))

(declare-fun d!1451878 () Bool)

(declare-fun e!2874596 () Bool)

(assert (=> d!1451878 e!2874596))

(declare-fun res!1928985 () Bool)

(assert (=> d!1451878 (=> res!1928985 e!2874596)))

(declare-fun lt!1765119 () Bool)

(assert (=> d!1451878 (= res!1928985 (not lt!1765119))))

(declare-fun lt!1765117 () Bool)

(assert (=> d!1451878 (= lt!1765119 lt!1765117)))

(declare-fun lt!1765118 () Unit!109169)

(declare-fun e!2874595 () Unit!109169)

(assert (=> d!1451878 (= lt!1765118 e!2874595)))

(declare-fun c!789397 () Bool)

(assert (=> d!1451878 (= c!789397 lt!1765117)))

(declare-fun containsKey!2252 (List!51324 (_ BitVec 64)) Bool)

(assert (=> d!1451878 (= lt!1765117 (containsKey!2252 (toList!4749 lt!1764988) lt!1764980))))

(assert (=> d!1451878 (= (contains!14204 lt!1764988 lt!1764980) lt!1765119)))

(declare-fun b!4608395 () Bool)

(declare-fun lt!1765116 () Unit!109169)

(assert (=> b!4608395 (= e!2874595 lt!1765116)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (List!51324 (_ BitVec 64)) Unit!109169)

(assert (=> b!4608395 (= lt!1765116 (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lt!1764988) lt!1764980))))

(declare-fun isDefined!8705 (Option!11438) Bool)

(assert (=> b!4608395 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980))))

(declare-fun b!4608396 () Bool)

(declare-fun Unit!109181 () Unit!109169)

(assert (=> b!4608396 (= e!2874595 Unit!109181)))

(declare-fun b!4608397 () Bool)

(assert (=> b!4608397 (= e!2874596 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980)))))

(assert (= (and d!1451878 c!789397) b!4608395))

(assert (= (and d!1451878 (not c!789397)) b!4608396))

(assert (= (and d!1451878 (not res!1928985)) b!4608397))

(declare-fun m!5438595 () Bool)

(assert (=> d!1451878 m!5438595))

(declare-fun m!5438597 () Bool)

(assert (=> b!4608395 m!5438597))

(declare-fun m!5438599 () Bool)

(assert (=> b!4608395 m!5438599))

(assert (=> b!4608395 m!5438599))

(declare-fun m!5438601 () Bool)

(assert (=> b!4608395 m!5438601))

(assert (=> b!4608397 m!5438599))

(assert (=> b!4608397 m!5438599))

(assert (=> b!4608397 m!5438601))

(assert (=> b!4608222 d!1451878))

(declare-fun d!1451880 () Bool)

(assert (=> d!1451880 (contains!14205 (toList!4749 lt!1764988) (tuple2!51921 hash!344 lt!1764984))))

(declare-fun lt!1765130 () Unit!109169)

(declare-fun choose!30998 (List!51324 (_ BitVec 64) List!51323) Unit!109169)

(assert (=> d!1451880 (= lt!1765130 (choose!30998 (toList!4749 lt!1764988) hash!344 lt!1764984))))

(declare-fun e!2874605 () Bool)

(assert (=> d!1451880 e!2874605))

(declare-fun res!1928991 () Bool)

(assert (=> d!1451880 (=> (not res!1928991) (not e!2874605))))

(declare-fun isStrictlySorted!561 (List!51324) Bool)

(assert (=> d!1451880 (= res!1928991 (isStrictlySorted!561 (toList!4749 lt!1764988)))))

(assert (=> d!1451880 (= (lemmaGetValueByKeyImpliesContainsTuple!877 (toList!4749 lt!1764988) hash!344 lt!1764984) lt!1765130)))

(declare-fun b!4608409 () Bool)

(assert (=> b!4608409 (= e!2874605 (= (getValueByKey!1356 (toList!4749 lt!1764988) hash!344) (Some!11437 lt!1764984)))))

(assert (= (and d!1451880 res!1928991) b!4608409))

(declare-fun m!5438603 () Bool)

(assert (=> d!1451880 m!5438603))

(declare-fun m!5438605 () Bool)

(assert (=> d!1451880 m!5438605))

(declare-fun m!5438607 () Bool)

(assert (=> d!1451880 m!5438607))

(assert (=> b!4608409 m!5438579))

(assert (=> b!4608222 d!1451880))

(declare-fun d!1451882 () Bool)

(declare-fun lt!1765131 () Bool)

(assert (=> d!1451882 (= lt!1765131 (set.member lt!1764976 (content!8692 (toList!4749 lt!1764988))))))

(declare-fun e!2874607 () Bool)

(assert (=> d!1451882 (= lt!1765131 e!2874607)))

(declare-fun res!1928992 () Bool)

(assert (=> d!1451882 (=> (not res!1928992) (not e!2874607))))

(assert (=> d!1451882 (= res!1928992 (is-Cons!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1451882 (= (contains!14205 (toList!4749 lt!1764988) lt!1764976) lt!1765131)))

(declare-fun b!4608410 () Bool)

(declare-fun e!2874606 () Bool)

(assert (=> b!4608410 (= e!2874607 e!2874606)))

(declare-fun res!1928993 () Bool)

(assert (=> b!4608410 (=> res!1928993 e!2874606)))

(assert (=> b!4608410 (= res!1928993 (= (h!57188 (toList!4749 lt!1764988)) lt!1764976))))

(declare-fun b!4608411 () Bool)

(assert (=> b!4608411 (= e!2874606 (contains!14205 (t!358318 (toList!4749 lt!1764988)) lt!1764976))))

(assert (= (and d!1451882 res!1928992) b!4608410))

(assert (= (and b!4608410 (not res!1928993)) b!4608411))

(declare-fun m!5438615 () Bool)

(assert (=> d!1451882 m!5438615))

(declare-fun m!5438617 () Bool)

(assert (=> d!1451882 m!5438617))

(declare-fun m!5438621 () Bool)

(assert (=> b!4608411 m!5438621))

(assert (=> b!4608222 d!1451882))

(declare-fun d!1451884 () Bool)

(declare-fun dynLambda!21432 (Int tuple2!51920) Bool)

(assert (=> d!1451884 (dynLambda!21432 lambda!187941 lt!1764976)))

(declare-fun lt!1765134 () Unit!109169)

(declare-fun choose!30999 (List!51324 Int tuple2!51920) Unit!109169)

(assert (=> d!1451884 (= lt!1765134 (choose!30999 (toList!4749 lt!1764988) lambda!187941 lt!1764976))))

(declare-fun e!2874610 () Bool)

(assert (=> d!1451884 e!2874610))

(declare-fun res!1928996 () Bool)

(assert (=> d!1451884 (=> (not res!1928996) (not e!2874610))))

(assert (=> d!1451884 (= res!1928996 (forall!10683 (toList!4749 lt!1764988) lambda!187941))))

(assert (=> d!1451884 (= (forallContained!2928 (toList!4749 lt!1764988) lambda!187941 lt!1764976) lt!1765134)))

(declare-fun b!4608414 () Bool)

(assert (=> b!4608414 (= e!2874610 (contains!14205 (toList!4749 lt!1764988) lt!1764976))))

(assert (= (and d!1451884 res!1928996) b!4608414))

(declare-fun b_lambda!170229 () Bool)

(assert (=> (not b_lambda!170229) (not d!1451884)))

(declare-fun m!5438635 () Bool)

(assert (=> d!1451884 m!5438635))

(declare-fun m!5438637 () Bool)

(assert (=> d!1451884 m!5438637))

(assert (=> d!1451884 m!5438337))

(assert (=> b!4608414 m!5438387))

(assert (=> b!4608222 d!1451884))

(declare-fun d!1451888 () Bool)

(declare-fun e!2874612 () Bool)

(assert (=> d!1451888 e!2874612))

(declare-fun res!1928997 () Bool)

(assert (=> d!1451888 (=> res!1928997 e!2874612)))

(declare-fun lt!1765138 () Bool)

(assert (=> d!1451888 (= res!1928997 (not lt!1765138))))

(declare-fun lt!1765136 () Bool)

(assert (=> d!1451888 (= lt!1765138 lt!1765136)))

(declare-fun lt!1765137 () Unit!109169)

(declare-fun e!2874611 () Unit!109169)

(assert (=> d!1451888 (= lt!1765137 e!2874611)))

(declare-fun c!789401 () Bool)

(assert (=> d!1451888 (= c!789401 lt!1765136)))

(assert (=> d!1451888 (= lt!1765136 (containsKey!2252 (toList!4749 lt!1764988) hash!344))))

(assert (=> d!1451888 (= (contains!14204 lt!1764988 hash!344) lt!1765138)))

(declare-fun b!4608415 () Bool)

(declare-fun lt!1765135 () Unit!109169)

(assert (=> b!4608415 (= e!2874611 lt!1765135)))

(assert (=> b!4608415 (= lt!1765135 (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lt!1764988) hash!344))))

(assert (=> b!4608415 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344))))

(declare-fun b!4608416 () Bool)

(declare-fun Unit!109182 () Unit!109169)

(assert (=> b!4608416 (= e!2874611 Unit!109182)))

(declare-fun b!4608417 () Bool)

(assert (=> b!4608417 (= e!2874612 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344)))))

(assert (= (and d!1451888 c!789401) b!4608415))

(assert (= (and d!1451888 (not c!789401)) b!4608416))

(assert (= (and d!1451888 (not res!1928997)) b!4608417))

(declare-fun m!5438639 () Bool)

(assert (=> d!1451888 m!5438639))

(declare-fun m!5438641 () Bool)

(assert (=> b!4608415 m!5438641))

(assert (=> b!4608415 m!5438579))

(assert (=> b!4608415 m!5438579))

(declare-fun m!5438643 () Bool)

(assert (=> b!4608415 m!5438643))

(assert (=> b!4608417 m!5438579))

(assert (=> b!4608417 m!5438579))

(assert (=> b!4608417 m!5438643))

(assert (=> b!4608211 d!1451888))

(declare-fun d!1451890 () Bool)

(declare-fun tail!8024 (List!51324) List!51324)

(assert (=> d!1451890 (= (tail!8022 lm!1477) (ListLongMap!3382 (tail!8024 (toList!4749 lm!1477))))))

(declare-fun bs!1015118 () Bool)

(assert (= bs!1015118 d!1451890))

(declare-fun m!5438645 () Bool)

(assert (=> bs!1015118 m!5438645))

(assert (=> b!4608211 d!1451890))

(declare-fun d!1451892 () Bool)

(declare-fun res!1929002 () Bool)

(declare-fun e!2874617 () Bool)

(assert (=> d!1451892 (=> res!1929002 e!2874617)))

(assert (=> d!1451892 (= res!1929002 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1451892 (= (forall!10683 (toList!4749 lm!1477) lambda!187941) e!2874617)))

(declare-fun b!4608422 () Bool)

(declare-fun e!2874618 () Bool)

(assert (=> b!4608422 (= e!2874617 e!2874618)))

(declare-fun res!1929003 () Bool)

(assert (=> b!4608422 (=> (not res!1929003) (not e!2874618))))

(assert (=> b!4608422 (= res!1929003 (dynLambda!21432 lambda!187941 (h!57188 (toList!4749 lm!1477))))))

(declare-fun b!4608423 () Bool)

(assert (=> b!4608423 (= e!2874618 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187941))))

(assert (= (and d!1451892 (not res!1929002)) b!4608422))

(assert (= (and b!4608422 res!1929003) b!4608423))

(declare-fun b_lambda!170231 () Bool)

(assert (=> (not b_lambda!170231) (not b!4608422)))

(declare-fun m!5438647 () Bool)

(assert (=> b!4608422 m!5438647))

(declare-fun m!5438649 () Bool)

(assert (=> b!4608423 m!5438649))

(assert (=> start!460702 d!1451892))

(declare-fun d!1451894 () Bool)

(assert (=> d!1451894 (= (inv!66753 lm!1477) (isStrictlySorted!561 (toList!4749 lm!1477)))))

(declare-fun bs!1015119 () Bool)

(assert (= bs!1015119 d!1451894))

(declare-fun m!5438651 () Bool)

(assert (=> bs!1015119 m!5438651))

(assert (=> start!460702 d!1451894))

(declare-fun bs!1015120 () Bool)

(declare-fun d!1451896 () Bool)

(assert (= bs!1015120 (and d!1451896 d!1451864)))

(declare-fun lambda!187968 () Int)

(assert (=> bs!1015120 (not (= lambda!187968 lambda!187963))))

(declare-fun bs!1015121 () Bool)

(assert (= bs!1015121 (and d!1451896 d!1451876)))

(assert (=> bs!1015121 (not (= lambda!187968 lambda!187967))))

(declare-fun bs!1015122 () Bool)

(assert (= bs!1015122 (and d!1451896 d!1451850)))

(assert (=> bs!1015122 (= lambda!187968 lambda!187953)))

(declare-fun bs!1015123 () Bool)

(assert (= bs!1015123 (and d!1451896 d!1451858)))

(assert (=> bs!1015123 (not (= lambda!187968 lambda!187960))))

(declare-fun bs!1015124 () Bool)

(assert (= bs!1015124 (and d!1451896 d!1451868)))

(assert (=> bs!1015124 (not (= lambda!187968 lambda!187964))))

(declare-fun bs!1015125 () Bool)

(assert (= bs!1015125 (and d!1451896 start!460702)))

(assert (=> bs!1015125 (not (= lambda!187968 lambda!187941))))

(assert (=> d!1451896 true))

(assert (=> d!1451896 (= (allKeysSameHashInMap!1478 lm!1477 hashF!1107) (forall!10683 (toList!4749 lm!1477) lambda!187968))))

(declare-fun bs!1015126 () Bool)

(assert (= bs!1015126 d!1451896))

(declare-fun m!5438653 () Bool)

(assert (=> bs!1015126 m!5438653))

(assert (=> b!4608221 d!1451896))

(declare-fun b!4608424 () Bool)

(assert (=> b!4608424 false))

(declare-fun lt!1765142 () Unit!109169)

(declare-fun lt!1765140 () Unit!109169)

(assert (=> b!4608424 (= lt!1765142 lt!1765140)))

(assert (=> b!4608424 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287)))

(assert (=> b!4608424 (= lt!1765140 (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(declare-fun e!2874622 () Unit!109169)

(declare-fun Unit!109183 () Unit!109169)

(assert (=> b!4608424 (= e!2874622 Unit!109183)))

(declare-fun b!4608426 () Bool)

(declare-fun Unit!109184 () Unit!109169)

(assert (=> b!4608426 (= e!2874622 Unit!109184)))

(declare-fun b!4608427 () Bool)

(declare-fun e!2874619 () Bool)

(assert (=> b!4608427 (= e!2874619 (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(declare-fun b!4608428 () Bool)

(declare-fun e!2874621 () List!51327)

(assert (=> b!4608428 (= e!2874621 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))

(declare-fun b!4608429 () Bool)

(declare-fun e!2874623 () Bool)

(assert (=> b!4608429 (= e!2874623 e!2874619)))

(declare-fun res!1929005 () Bool)

(assert (=> b!4608429 (=> (not res!1929005) (not e!2874619))))

(assert (=> b!4608429 (= res!1929005 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287)))))

(declare-fun b!4608430 () Bool)

(declare-fun e!2874620 () Unit!109169)

(assert (=> b!4608430 (= e!2874620 e!2874622)))

(declare-fun c!789402 () Bool)

(declare-fun call!321379 () Bool)

(assert (=> b!4608430 (= c!789402 call!321379)))

(declare-fun b!4608431 () Bool)

(declare-fun lt!1765145 () Unit!109169)

(assert (=> b!4608431 (= e!2874620 lt!1765145)))

(declare-fun lt!1765141 () Unit!109169)

(assert (=> b!4608431 (= lt!1765141 (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> b!4608431 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(declare-fun lt!1765143 () Unit!109169)

(assert (=> b!4608431 (= lt!1765143 lt!1765141)))

(assert (=> b!4608431 (= lt!1765145 (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> b!4608431 call!321379))

(declare-fun bm!321374 () Bool)

(assert (=> bm!321374 (= call!321379 (contains!14209 e!2874621 key!3287))))

(declare-fun c!789403 () Bool)

(declare-fun c!789404 () Bool)

(assert (=> bm!321374 (= c!789403 c!789404)))

(declare-fun b!4608432 () Bool)

(assert (=> b!4608432 (= e!2874621 (keys!17956 (extractMap!1427 (toList!4749 lm!1477))))))

(declare-fun b!4608425 () Bool)

(declare-fun e!2874624 () Bool)

(assert (=> b!4608425 (= e!2874624 (not (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lm!1477))) key!3287)))))

(declare-fun d!1451898 () Bool)

(assert (=> d!1451898 e!2874623))

(declare-fun res!1929004 () Bool)

(assert (=> d!1451898 (=> res!1929004 e!2874623)))

(assert (=> d!1451898 (= res!1929004 e!2874624)))

(declare-fun res!1929006 () Bool)

(assert (=> d!1451898 (=> (not res!1929006) (not e!2874624))))

(declare-fun lt!1765139 () Bool)

(assert (=> d!1451898 (= res!1929006 (not lt!1765139))))

(declare-fun lt!1765146 () Bool)

(assert (=> d!1451898 (= lt!1765139 lt!1765146)))

(declare-fun lt!1765144 () Unit!109169)

(assert (=> d!1451898 (= lt!1765144 e!2874620)))

(assert (=> d!1451898 (= c!789404 lt!1765146)))

(assert (=> d!1451898 (= lt!1765146 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> d!1451898 (= (contains!14203 (extractMap!1427 (toList!4749 lm!1477)) key!3287) lt!1765139)))

(assert (= (and d!1451898 c!789404) b!4608431))

(assert (= (and d!1451898 (not c!789404)) b!4608430))

(assert (= (and b!4608430 c!789402) b!4608424))

(assert (= (and b!4608430 (not c!789402)) b!4608426))

(assert (= (or b!4608431 b!4608430) bm!321374))

(assert (= (and bm!321374 c!789403) b!4608428))

(assert (= (and bm!321374 (not c!789403)) b!4608432))

(assert (= (and d!1451898 res!1929006) b!4608425))

(assert (= (and d!1451898 (not res!1929004)) b!4608429))

(assert (= (and b!4608429 res!1929005) b!4608427))

(declare-fun m!5438655 () Bool)

(assert (=> b!4608428 m!5438655))

(assert (=> b!4608432 m!5438353))

(declare-fun m!5438657 () Bool)

(assert (=> b!4608432 m!5438657))

(declare-fun m!5438659 () Bool)

(assert (=> bm!321374 m!5438659))

(assert (=> b!4608425 m!5438353))

(assert (=> b!4608425 m!5438657))

(assert (=> b!4608425 m!5438657))

(declare-fun m!5438661 () Bool)

(assert (=> b!4608425 m!5438661))

(declare-fun m!5438663 () Bool)

(assert (=> b!4608429 m!5438663))

(assert (=> b!4608429 m!5438663))

(declare-fun m!5438665 () Bool)

(assert (=> b!4608429 m!5438665))

(declare-fun m!5438667 () Bool)

(assert (=> d!1451898 m!5438667))

(declare-fun m!5438669 () Bool)

(assert (=> b!4608431 m!5438669))

(assert (=> b!4608431 m!5438663))

(assert (=> b!4608431 m!5438663))

(assert (=> b!4608431 m!5438665))

(declare-fun m!5438671 () Bool)

(assert (=> b!4608431 m!5438671))

(assert (=> b!4608424 m!5438667))

(declare-fun m!5438673 () Bool)

(assert (=> b!4608424 m!5438673))

(assert (=> b!4608427 m!5438353))

(assert (=> b!4608427 m!5438657))

(assert (=> b!4608427 m!5438657))

(assert (=> b!4608427 m!5438661))

(assert (=> b!4608210 d!1451898))

(declare-fun bs!1015127 () Bool)

(declare-fun d!1451900 () Bool)

(assert (= bs!1015127 (and d!1451900 d!1451864)))

(declare-fun lambda!187969 () Int)

(assert (=> bs!1015127 (= lambda!187969 lambda!187963)))

(declare-fun bs!1015128 () Bool)

(assert (= bs!1015128 (and d!1451900 d!1451876)))

(assert (=> bs!1015128 (= lambda!187969 lambda!187967)))

(declare-fun bs!1015129 () Bool)

(assert (= bs!1015129 (and d!1451900 d!1451850)))

(assert (=> bs!1015129 (not (= lambda!187969 lambda!187953))))

(declare-fun bs!1015130 () Bool)

(assert (= bs!1015130 (and d!1451900 d!1451896)))

(assert (=> bs!1015130 (not (= lambda!187969 lambda!187968))))

(declare-fun bs!1015131 () Bool)

(assert (= bs!1015131 (and d!1451900 d!1451858)))

(assert (=> bs!1015131 (= lambda!187969 lambda!187960)))

(declare-fun bs!1015132 () Bool)

(assert (= bs!1015132 (and d!1451900 d!1451868)))

(assert (=> bs!1015132 (= lambda!187969 lambda!187964)))

(declare-fun bs!1015133 () Bool)

(assert (= bs!1015133 (and d!1451900 start!460702)))

(assert (=> bs!1015133 (= lambda!187969 lambda!187941)))

(declare-fun lt!1765147 () ListMap!4011)

(assert (=> d!1451900 (invariantList!1145 (toList!4750 lt!1765147))))

(declare-fun e!2874625 () ListMap!4011)

(assert (=> d!1451900 (= lt!1765147 e!2874625)))

(declare-fun c!789405 () Bool)

(assert (=> d!1451900 (= c!789405 (is-Cons!51200 (toList!4749 lm!1477)))))

(assert (=> d!1451900 (forall!10683 (toList!4749 lm!1477) lambda!187969)))

(assert (=> d!1451900 (= (extractMap!1427 (toList!4749 lm!1477)) lt!1765147)))

(declare-fun b!4608433 () Bool)

(assert (=> b!4608433 (= e!2874625 (addToMapMapFromBucket!837 (_2!29254 (h!57188 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun b!4608434 () Bool)

(assert (=> b!4608434 (= e!2874625 (ListMap!4012 Nil!51199))))

(assert (= (and d!1451900 c!789405) b!4608433))

(assert (= (and d!1451900 (not c!789405)) b!4608434))

(declare-fun m!5438675 () Bool)

(assert (=> d!1451900 m!5438675))

(declare-fun m!5438677 () Bool)

(assert (=> d!1451900 m!5438677))

(assert (=> b!4608433 m!5438343))

(assert (=> b!4608433 m!5438343))

(declare-fun m!5438679 () Bool)

(assert (=> b!4608433 m!5438679))

(assert (=> b!4608210 d!1451900))

(declare-fun bs!1015134 () Bool)

(declare-fun d!1451902 () Bool)

(assert (= bs!1015134 (and d!1451902 d!1451864)))

(declare-fun lambda!187970 () Int)

(assert (=> bs!1015134 (= lambda!187970 lambda!187963)))

(declare-fun bs!1015135 () Bool)

(assert (= bs!1015135 (and d!1451902 d!1451876)))

(assert (=> bs!1015135 (= lambda!187970 lambda!187967)))

(declare-fun bs!1015136 () Bool)

(assert (= bs!1015136 (and d!1451902 d!1451850)))

(assert (=> bs!1015136 (not (= lambda!187970 lambda!187953))))

(declare-fun bs!1015137 () Bool)

(assert (= bs!1015137 (and d!1451902 d!1451896)))

(assert (=> bs!1015137 (not (= lambda!187970 lambda!187968))))

(declare-fun bs!1015138 () Bool)

(assert (= bs!1015138 (and d!1451902 d!1451900)))

(assert (=> bs!1015138 (= lambda!187970 lambda!187969)))

(declare-fun bs!1015139 () Bool)

(assert (= bs!1015139 (and d!1451902 d!1451858)))

(assert (=> bs!1015139 (= lambda!187970 lambda!187960)))

(declare-fun bs!1015140 () Bool)

(assert (= bs!1015140 (and d!1451902 d!1451868)))

(assert (=> bs!1015140 (= lambda!187970 lambda!187964)))

(declare-fun bs!1015141 () Bool)

(assert (= bs!1015141 (and d!1451902 start!460702)))

(assert (=> bs!1015141 (= lambda!187970 lambda!187941)))

(assert (=> d!1451902 (contains!14204 lm!1477 (hash!3300 hashF!1107 key!3287))))

(declare-fun lt!1765148 () Unit!109169)

(assert (=> d!1451902 (= lt!1765148 (choose!30997 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451902 (forall!10683 (toList!4749 lm!1477) lambda!187970)))

(assert (=> d!1451902 (= (lemmaInGenMapThenLongMapContainsHash!441 lm!1477 key!3287 hashF!1107) lt!1765148)))

(declare-fun bs!1015142 () Bool)

(assert (= bs!1015142 d!1451902))

(assert (=> bs!1015142 m!5438367))

(assert (=> bs!1015142 m!5438367))

(declare-fun m!5438681 () Bool)

(assert (=> bs!1015142 m!5438681))

(declare-fun m!5438683 () Bool)

(assert (=> bs!1015142 m!5438683))

(declare-fun m!5438685 () Bool)

(assert (=> bs!1015142 m!5438685))

(assert (=> b!4608220 d!1451902))

(declare-fun d!1451904 () Bool)

(assert (=> d!1451904 (= (apply!12104 lm!1477 hash!344) (get!16937 (getValueByKey!1356 (toList!4749 lm!1477) hash!344)))))

(declare-fun bs!1015143 () Bool)

(assert (= bs!1015143 d!1451904))

(declare-fun m!5438687 () Bool)

(assert (=> bs!1015143 m!5438687))

(assert (=> bs!1015143 m!5438687))

(declare-fun m!5438689 () Bool)

(assert (=> bs!1015143 m!5438689))

(assert (=> b!4608220 d!1451904))

(declare-fun d!1451906 () Bool)

(assert (=> d!1451906 (contains!14205 (toList!4749 lm!1477) (tuple2!51921 hash!344 lt!1764987))))

(declare-fun lt!1765149 () Unit!109169)

(assert (=> d!1451906 (= lt!1765149 (choose!30998 (toList!4749 lm!1477) hash!344 lt!1764987))))

(declare-fun e!2874626 () Bool)

(assert (=> d!1451906 e!2874626))

(declare-fun res!1929007 () Bool)

(assert (=> d!1451906 (=> (not res!1929007) (not e!2874626))))

(assert (=> d!1451906 (= res!1929007 (isStrictlySorted!561 (toList!4749 lm!1477)))))

(assert (=> d!1451906 (= (lemmaGetValueByKeyImpliesContainsTuple!877 (toList!4749 lm!1477) hash!344 lt!1764987) lt!1765149)))

(declare-fun b!4608435 () Bool)

(assert (=> b!4608435 (= e!2874626 (= (getValueByKey!1356 (toList!4749 lm!1477) hash!344) (Some!11437 lt!1764987)))))

(assert (= (and d!1451906 res!1929007) b!4608435))

(declare-fun m!5438691 () Bool)

(assert (=> d!1451906 m!5438691))

(declare-fun m!5438693 () Bool)

(assert (=> d!1451906 m!5438693))

(assert (=> d!1451906 m!5438651))

(assert (=> b!4608435 m!5438687))

(assert (=> b!4608220 d!1451906))

(declare-fun b!4608438 () Bool)

(declare-fun e!2874627 () List!51323)

(assert (=> b!4608438 (= e!2874627 (Cons!51199 (h!57187 lt!1764987) (removePairForKey!992 (t!358317 lt!1764987) key!3287)))))

(declare-fun b!4608437 () Bool)

(declare-fun e!2874628 () List!51323)

(assert (=> b!4608437 (= e!2874628 e!2874627)))

(declare-fun c!789407 () Bool)

(assert (=> b!4608437 (= c!789407 (is-Cons!51199 lt!1764987))))

(declare-fun b!4608439 () Bool)

(assert (=> b!4608439 (= e!2874627 Nil!51199)))

(declare-fun b!4608436 () Bool)

(assert (=> b!4608436 (= e!2874628 (t!358317 lt!1764987))))

(declare-fun d!1451908 () Bool)

(declare-fun lt!1765150 () List!51323)

(assert (=> d!1451908 (not (containsKey!2249 lt!1765150 key!3287))))

(assert (=> d!1451908 (= lt!1765150 e!2874628)))

(declare-fun c!789406 () Bool)

(assert (=> d!1451908 (= c!789406 (and (is-Cons!51199 lt!1764987) (= (_1!29253 (h!57187 lt!1764987)) key!3287)))))

(assert (=> d!1451908 (noDuplicateKeys!1367 lt!1764987)))

(assert (=> d!1451908 (= (removePairForKey!992 lt!1764987 key!3287) lt!1765150)))

(assert (= (and d!1451908 c!789406) b!4608436))

(assert (= (and d!1451908 (not c!789406)) b!4608437))

(assert (= (and b!4608437 c!789407) b!4608438))

(assert (= (and b!4608437 (not c!789407)) b!4608439))

(declare-fun m!5438695 () Bool)

(assert (=> b!4608438 m!5438695))

(declare-fun m!5438697 () Bool)

(assert (=> d!1451908 m!5438697))

(declare-fun m!5438699 () Bool)

(assert (=> d!1451908 m!5438699))

(assert (=> b!4608220 d!1451908))

(declare-fun d!1451910 () Bool)

(assert (=> d!1451910 (dynLambda!21432 lambda!187941 lt!1764978)))

(declare-fun lt!1765151 () Unit!109169)

(assert (=> d!1451910 (= lt!1765151 (choose!30999 (toList!4749 lm!1477) lambda!187941 lt!1764978))))

(declare-fun e!2874629 () Bool)

(assert (=> d!1451910 e!2874629))

(declare-fun res!1929008 () Bool)

(assert (=> d!1451910 (=> (not res!1929008) (not e!2874629))))

(assert (=> d!1451910 (= res!1929008 (forall!10683 (toList!4749 lm!1477) lambda!187941))))

(assert (=> d!1451910 (= (forallContained!2928 (toList!4749 lm!1477) lambda!187941 lt!1764978) lt!1765151)))

(declare-fun b!4608440 () Bool)

(assert (=> b!4608440 (= e!2874629 (contains!14205 (toList!4749 lm!1477) lt!1764978))))

(assert (= (and d!1451910 res!1929008) b!4608440))

(declare-fun b_lambda!170233 () Bool)

(assert (=> (not b_lambda!170233) (not d!1451910)))

(declare-fun m!5438701 () Bool)

(assert (=> d!1451910 m!5438701))

(declare-fun m!5438703 () Bool)

(assert (=> d!1451910 m!5438703))

(assert (=> d!1451910 m!5438411))

(assert (=> b!4608440 m!5438401))

(assert (=> b!4608220 d!1451910))

(declare-fun d!1451912 () Bool)

(declare-fun lt!1765152 () Bool)

(assert (=> d!1451912 (= lt!1765152 (set.member lt!1764978 (content!8692 (toList!4749 lm!1477))))))

(declare-fun e!2874631 () Bool)

(assert (=> d!1451912 (= lt!1765152 e!2874631)))

(declare-fun res!1929009 () Bool)

(assert (=> d!1451912 (=> (not res!1929009) (not e!2874631))))

(assert (=> d!1451912 (= res!1929009 (is-Cons!51200 (toList!4749 lm!1477)))))

(assert (=> d!1451912 (= (contains!14205 (toList!4749 lm!1477) lt!1764978) lt!1765152)))

(declare-fun b!4608441 () Bool)

(declare-fun e!2874630 () Bool)

(assert (=> b!4608441 (= e!2874631 e!2874630)))

(declare-fun res!1929010 () Bool)

(assert (=> b!4608441 (=> res!1929010 e!2874630)))

(assert (=> b!4608441 (= res!1929010 (= (h!57188 (toList!4749 lm!1477)) lt!1764978))))

(declare-fun b!4608442 () Bool)

(assert (=> b!4608442 (= e!2874630 (contains!14205 (t!358318 (toList!4749 lm!1477)) lt!1764978))))

(assert (= (and d!1451912 res!1929009) b!4608441))

(assert (= (and b!4608441 (not res!1929010)) b!4608442))

(declare-fun m!5438705 () Bool)

(assert (=> d!1451912 m!5438705))

(declare-fun m!5438707 () Bool)

(assert (=> d!1451912 m!5438707))

(assert (=> b!4608442 m!5438377))

(assert (=> b!4608220 d!1451912))

(declare-fun d!1451914 () Bool)

(declare-fun e!2874633 () Bool)

(assert (=> d!1451914 e!2874633))

(declare-fun res!1929011 () Bool)

(assert (=> d!1451914 (=> res!1929011 e!2874633)))

(declare-fun lt!1765156 () Bool)

(assert (=> d!1451914 (= res!1929011 (not lt!1765156))))

(declare-fun lt!1765154 () Bool)

(assert (=> d!1451914 (= lt!1765156 lt!1765154)))

(declare-fun lt!1765155 () Unit!109169)

(declare-fun e!2874632 () Unit!109169)

(assert (=> d!1451914 (= lt!1765155 e!2874632)))

(declare-fun c!789408 () Bool)

(assert (=> d!1451914 (= c!789408 lt!1765154)))

(assert (=> d!1451914 (= lt!1765154 (containsKey!2252 (toList!4749 lm!1477) lt!1764980))))

(assert (=> d!1451914 (= (contains!14204 lm!1477 lt!1764980) lt!1765156)))

(declare-fun b!4608443 () Bool)

(declare-fun lt!1765153 () Unit!109169)

(assert (=> b!4608443 (= e!2874632 lt!1765153)))

(assert (=> b!4608443 (= lt!1765153 (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lm!1477) lt!1764980))))

(assert (=> b!4608443 (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980))))

(declare-fun b!4608444 () Bool)

(declare-fun Unit!109187 () Unit!109169)

(assert (=> b!4608444 (= e!2874632 Unit!109187)))

(declare-fun b!4608445 () Bool)

(assert (=> b!4608445 (= e!2874633 (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980)))))

(assert (= (and d!1451914 c!789408) b!4608443))

(assert (= (and d!1451914 (not c!789408)) b!4608444))

(assert (= (and d!1451914 (not res!1929011)) b!4608445))

(declare-fun m!5438709 () Bool)

(assert (=> d!1451914 m!5438709))

(declare-fun m!5438711 () Bool)

(assert (=> b!4608443 m!5438711))

(declare-fun m!5438713 () Bool)

(assert (=> b!4608443 m!5438713))

(assert (=> b!4608443 m!5438713))

(declare-fun m!5438715 () Bool)

(assert (=> b!4608443 m!5438715))

(assert (=> b!4608445 m!5438713))

(assert (=> b!4608445 m!5438713))

(assert (=> b!4608445 m!5438715))

(assert (=> b!4608220 d!1451914))

(declare-fun d!1451916 () Bool)

(declare-fun lt!1765159 () Int)

(assert (=> d!1451916 (>= lt!1765159 0)))

(declare-fun e!2874636 () Int)

(assert (=> d!1451916 (= lt!1765159 e!2874636)))

(declare-fun c!789411 () Bool)

(assert (=> d!1451916 (= c!789411 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1451916 (= (size!35961 (toList!4749 lt!1764988)) lt!1765159)))

(declare-fun b!4608450 () Bool)

(assert (=> b!4608450 (= e!2874636 0)))

(declare-fun b!4608451 () Bool)

(assert (=> b!4608451 (= e!2874636 (+ 1 (size!35961 (t!358318 (toList!4749 lt!1764988)))))))

(assert (= (and d!1451916 c!789411) b!4608450))

(assert (= (and d!1451916 (not c!789411)) b!4608451))

(declare-fun m!5438717 () Bool)

(assert (=> b!4608451 m!5438717))

(assert (=> b!4608209 d!1451916))

(declare-fun d!1451918 () Bool)

(declare-fun lt!1765160 () Int)

(assert (=> d!1451918 (>= lt!1765160 0)))

(declare-fun e!2874637 () Int)

(assert (=> d!1451918 (= lt!1765160 e!2874637)))

(declare-fun c!789412 () Bool)

(assert (=> d!1451918 (= c!789412 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1451918 (= (size!35961 (toList!4749 lm!1477)) lt!1765160)))

(declare-fun b!4608452 () Bool)

(assert (=> b!4608452 (= e!2874637 0)))

(declare-fun b!4608453 () Bool)

(assert (=> b!4608453 (= e!2874637 (+ 1 (size!35961 (t!358318 (toList!4749 lm!1477)))))))

(assert (= (and d!1451918 c!789412) b!4608452))

(assert (= (and d!1451918 (not c!789412)) b!4608453))

(declare-fun m!5438719 () Bool)

(assert (=> b!4608453 m!5438719))

(assert (=> b!4608209 d!1451918))

(declare-fun bs!1015148 () Bool)

(declare-fun d!1451920 () Bool)

(assert (= bs!1015148 (and d!1451920 d!1451864)))

(declare-fun lambda!187976 () Int)

(assert (=> bs!1015148 (= lambda!187976 lambda!187963)))

(declare-fun bs!1015149 () Bool)

(assert (= bs!1015149 (and d!1451920 d!1451876)))

(assert (=> bs!1015149 (= lambda!187976 lambda!187967)))

(declare-fun bs!1015150 () Bool)

(assert (= bs!1015150 (and d!1451920 d!1451850)))

(assert (=> bs!1015150 (not (= lambda!187976 lambda!187953))))

(declare-fun bs!1015151 () Bool)

(assert (= bs!1015151 (and d!1451920 d!1451896)))

(assert (=> bs!1015151 (not (= lambda!187976 lambda!187968))))

(declare-fun bs!1015152 () Bool)

(assert (= bs!1015152 (and d!1451920 d!1451858)))

(assert (=> bs!1015152 (= lambda!187976 lambda!187960)))

(declare-fun bs!1015153 () Bool)

(assert (= bs!1015153 (and d!1451920 d!1451868)))

(assert (=> bs!1015153 (= lambda!187976 lambda!187964)))

(declare-fun bs!1015154 () Bool)

(assert (= bs!1015154 (and d!1451920 start!460702)))

(assert (=> bs!1015154 (= lambda!187976 lambda!187941)))

(declare-fun bs!1015155 () Bool)

(assert (= bs!1015155 (and d!1451920 d!1451900)))

(assert (=> bs!1015155 (= lambda!187976 lambda!187969)))

(declare-fun bs!1015156 () Bool)

(assert (= bs!1015156 (and d!1451920 d!1451902)))

(assert (=> bs!1015156 (= lambda!187976 lambda!187970)))

(assert (=> d!1451920 (not (contains!14203 (extractMap!1427 (toList!4749 lm!1477)) key!3287))))

(declare-fun lt!1765166 () Unit!109169)

(declare-fun choose!31000 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> d!1451920 (= lt!1765166 (choose!31000 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1451920 (forall!10683 (toList!4749 lm!1477) lambda!187976)))

(assert (=> d!1451920 (= (lemmaNotInItsHashBucketThenNotInMap!331 lm!1477 key!3287 hashF!1107) lt!1765166)))

(declare-fun bs!1015157 () Bool)

(assert (= bs!1015157 d!1451920))

(assert (=> bs!1015157 m!5438353))

(assert (=> bs!1015157 m!5438353))

(assert (=> bs!1015157 m!5438355))

(declare-fun m!5438725 () Bool)

(assert (=> bs!1015157 m!5438725))

(declare-fun m!5438727 () Bool)

(assert (=> bs!1015157 m!5438727))

(assert (=> b!4608229 d!1451920))

(declare-fun d!1451924 () Bool)

(assert (=> d!1451924 true))

(assert (=> d!1451924 true))

(declare-fun lambda!187979 () Int)

(declare-fun forall!10685 (List!51323 Int) Bool)

(assert (=> d!1451924 (= (allKeysSameHash!1223 newBucket!178 hash!344 hashF!1107) (forall!10685 newBucket!178 lambda!187979))))

(declare-fun bs!1015158 () Bool)

(assert (= bs!1015158 d!1451924))

(declare-fun m!5438749 () Bool)

(assert (=> bs!1015158 m!5438749))

(assert (=> b!4608218 d!1451924))

(declare-fun d!1451928 () Bool)

(declare-fun res!1929015 () Bool)

(declare-fun e!2874644 () Bool)

(assert (=> d!1451928 (=> res!1929015 e!2874644)))

(assert (=> d!1451928 (= res!1929015 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1451928 (= (forall!10683 (toList!4749 lt!1764988) lambda!187941) e!2874644)))

(declare-fun b!4608467 () Bool)

(declare-fun e!2874645 () Bool)

(assert (=> b!4608467 (= e!2874644 e!2874645)))

(declare-fun res!1929016 () Bool)

(assert (=> b!4608467 (=> (not res!1929016) (not e!2874645))))

(assert (=> b!4608467 (= res!1929016 (dynLambda!21432 lambda!187941 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608468 () Bool)

(assert (=> b!4608468 (= e!2874645 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187941))))

(assert (= (and d!1451928 (not res!1929015)) b!4608467))

(assert (= (and b!4608467 res!1929016) b!4608468))

(declare-fun b_lambda!170235 () Bool)

(assert (=> (not b_lambda!170235) (not b!4608467)))

(declare-fun m!5438751 () Bool)

(assert (=> b!4608467 m!5438751))

(declare-fun m!5438753 () Bool)

(assert (=> b!4608468 m!5438753))

(assert (=> b!4608228 d!1451928))

(declare-fun d!1451930 () Bool)

(declare-fun hash!3302 (Hashable!5766 K!12568) (_ BitVec 64))

(assert (=> d!1451930 (= (hash!3300 hashF!1107 key!3287) (hash!3302 hashF!1107 key!3287))))

(declare-fun bs!1015159 () Bool)

(assert (= bs!1015159 d!1451930))

(declare-fun m!5438755 () Bool)

(assert (=> bs!1015159 m!5438755))

(assert (=> b!4608217 d!1451930))

(declare-fun d!1451932 () Bool)

(declare-fun res!1929028 () Bool)

(declare-fun e!2874657 () Bool)

(assert (=> d!1451932 (=> res!1929028 e!2874657)))

(declare-fun e!2874656 () Bool)

(assert (=> d!1451932 (= res!1929028 e!2874656)))

(declare-fun res!1929029 () Bool)

(assert (=> d!1451932 (=> (not res!1929029) (not e!2874656))))

(assert (=> d!1451932 (= res!1929029 (is-Cons!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1451932 (= (containsKeyBiggerList!307 (t!358318 (toList!4749 lm!1477)) key!3287) e!2874657)))

(declare-fun b!4608479 () Bool)

(assert (=> b!4608479 (= e!2874656 (containsKey!2249 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(declare-fun b!4608480 () Bool)

(declare-fun e!2874658 () Bool)

(assert (=> b!4608480 (= e!2874657 e!2874658)))

(declare-fun res!1929027 () Bool)

(assert (=> b!4608480 (=> (not res!1929027) (not e!2874658))))

(assert (=> b!4608480 (= res!1929027 (is-Cons!51200 (t!358318 (toList!4749 lm!1477))))))

(declare-fun b!4608481 () Bool)

(assert (=> b!4608481 (= e!2874658 (containsKeyBiggerList!307 (t!358318 (t!358318 (toList!4749 lm!1477))) key!3287))))

(assert (= (and d!1451932 res!1929029) b!4608479))

(assert (= (and d!1451932 (not res!1929028)) b!4608480))

(assert (= (and b!4608480 res!1929027) b!4608481))

(declare-fun m!5438757 () Bool)

(assert (=> b!4608479 m!5438757))

(declare-fun m!5438759 () Bool)

(assert (=> b!4608481 m!5438759))

(assert (=> b!4608227 d!1451932))

(declare-fun d!1451934 () Bool)

(declare-fun res!1929031 () Bool)

(declare-fun e!2874660 () Bool)

(assert (=> d!1451934 (=> res!1929031 e!2874660)))

(declare-fun e!2874659 () Bool)

(assert (=> d!1451934 (= res!1929031 e!2874659)))

(declare-fun res!1929032 () Bool)

(assert (=> d!1451934 (=> (not res!1929032) (not e!2874659))))

(assert (=> d!1451934 (= res!1929032 (is-Cons!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1451934 (= (containsKeyBiggerList!307 (toList!4749 lt!1764988) key!3287) e!2874660)))

(declare-fun b!4608482 () Bool)

(assert (=> b!4608482 (= e!2874659 (containsKey!2249 (_2!29254 (h!57188 (toList!4749 lt!1764988))) key!3287))))

(declare-fun b!4608483 () Bool)

(declare-fun e!2874661 () Bool)

(assert (=> b!4608483 (= e!2874660 e!2874661)))

(declare-fun res!1929030 () Bool)

(assert (=> b!4608483 (=> (not res!1929030) (not e!2874661))))

(assert (=> b!4608483 (= res!1929030 (is-Cons!51200 (toList!4749 lt!1764988)))))

(declare-fun b!4608484 () Bool)

(assert (=> b!4608484 (= e!2874661 (containsKeyBiggerList!307 (t!358318 (toList!4749 lt!1764988)) key!3287))))

(assert (= (and d!1451934 res!1929032) b!4608482))

(assert (= (and d!1451934 (not res!1929031)) b!4608483))

(assert (= (and b!4608483 res!1929030) b!4608484))

(declare-fun m!5438761 () Bool)

(assert (=> b!4608482 m!5438761))

(declare-fun m!5438763 () Bool)

(assert (=> b!4608484 m!5438763))

(assert (=> b!4608227 d!1451934))

(declare-fun bs!1015160 () Bool)

(declare-fun d!1451936 () Bool)

(assert (= bs!1015160 (and d!1451936 d!1451864)))

(declare-fun lambda!187982 () Int)

(assert (=> bs!1015160 (= lambda!187982 lambda!187963)))

(declare-fun bs!1015161 () Bool)

(assert (= bs!1015161 (and d!1451936 d!1451876)))

(assert (=> bs!1015161 (= lambda!187982 lambda!187967)))

(declare-fun bs!1015162 () Bool)

(assert (= bs!1015162 (and d!1451936 d!1451920)))

(assert (=> bs!1015162 (= lambda!187982 lambda!187976)))

(declare-fun bs!1015163 () Bool)

(assert (= bs!1015163 (and d!1451936 d!1451850)))

(assert (=> bs!1015163 (not (= lambda!187982 lambda!187953))))

(declare-fun bs!1015164 () Bool)

(assert (= bs!1015164 (and d!1451936 d!1451896)))

(assert (=> bs!1015164 (not (= lambda!187982 lambda!187968))))

(declare-fun bs!1015165 () Bool)

(assert (= bs!1015165 (and d!1451936 d!1451858)))

(assert (=> bs!1015165 (= lambda!187982 lambda!187960)))

(declare-fun bs!1015166 () Bool)

(assert (= bs!1015166 (and d!1451936 d!1451868)))

(assert (=> bs!1015166 (= lambda!187982 lambda!187964)))

(declare-fun bs!1015167 () Bool)

(assert (= bs!1015167 (and d!1451936 start!460702)))

(assert (=> bs!1015167 (= lambda!187982 lambda!187941)))

(declare-fun bs!1015168 () Bool)

(assert (= bs!1015168 (and d!1451936 d!1451900)))

(assert (=> bs!1015168 (= lambda!187982 lambda!187969)))

(declare-fun bs!1015169 () Bool)

(assert (= bs!1015169 (and d!1451936 d!1451902)))

(assert (=> bs!1015169 (= lambda!187982 lambda!187970)))

(assert (=> d!1451936 (containsKeyBiggerList!307 (toList!4749 lt!1764988) key!3287)))

(declare-fun lt!1765180 () Unit!109169)

(declare-fun choose!31002 (ListLongMap!3381 K!12568 Hashable!5766) Unit!109169)

(assert (=> d!1451936 (= lt!1765180 (choose!31002 lt!1764988 key!3287 hashF!1107))))

(assert (=> d!1451936 (forall!10683 (toList!4749 lt!1764988) lambda!187982)))

(assert (=> d!1451936 (= (lemmaInLongMapThenContainsKeyBiggerList!177 lt!1764988 key!3287 hashF!1107) lt!1765180)))

(declare-fun bs!1015170 () Bool)

(assert (= bs!1015170 d!1451936))

(assert (=> bs!1015170 m!5438359))

(declare-fun m!5438771 () Bool)

(assert (=> bs!1015170 m!5438771))

(declare-fun m!5438773 () Bool)

(assert (=> bs!1015170 m!5438773))

(assert (=> b!4608227 d!1451936))

(declare-fun d!1451940 () Bool)

(declare-fun res!1929042 () Bool)

(declare-fun e!2874671 () Bool)

(assert (=> d!1451940 (=> res!1929042 e!2874671)))

(assert (=> d!1451940 (= res!1929042 (not (is-Cons!51199 newBucket!178)))))

(assert (=> d!1451940 (= (noDuplicateKeys!1367 newBucket!178) e!2874671)))

(declare-fun b!4608494 () Bool)

(declare-fun e!2874672 () Bool)

(assert (=> b!4608494 (= e!2874671 e!2874672)))

(declare-fun res!1929043 () Bool)

(assert (=> b!4608494 (=> (not res!1929043) (not e!2874672))))

(assert (=> b!4608494 (= res!1929043 (not (containsKey!2249 (t!358317 newBucket!178) (_1!29253 (h!57187 newBucket!178)))))))

(declare-fun b!4608495 () Bool)

(assert (=> b!4608495 (= e!2874672 (noDuplicateKeys!1367 (t!358317 newBucket!178)))))

(assert (= (and d!1451940 (not res!1929042)) b!4608494))

(assert (= (and b!4608494 res!1929043) b!4608495))

(declare-fun m!5438775 () Bool)

(assert (=> b!4608494 m!5438775))

(declare-fun m!5438777 () Bool)

(assert (=> b!4608495 m!5438777))

(assert (=> b!4608216 d!1451940))

(declare-fun b!4608500 () Bool)

(declare-fun tp!1340992 () Bool)

(declare-fun e!2874675 () Bool)

(assert (=> b!4608500 (= e!2874675 (and tp_is_empty!28761 tp_is_empty!28763 tp!1340992))))

(assert (=> b!4608223 (= tp!1340983 e!2874675)))

(assert (= (and b!4608223 (is-Cons!51199 (t!358317 newBucket!178))) b!4608500))

(declare-fun b!4608505 () Bool)

(declare-fun e!2874678 () Bool)

(declare-fun tp!1340997 () Bool)

(declare-fun tp!1340998 () Bool)

(assert (=> b!4608505 (= e!2874678 (and tp!1340997 tp!1340998))))

(assert (=> b!4608226 (= tp!1340982 e!2874678)))

(assert (= (and b!4608226 (is-Cons!51200 (toList!4749 lm!1477))) b!4608505))

(declare-fun b_lambda!170239 () Bool)

(assert (= b_lambda!170233 (or start!460702 b_lambda!170239)))

(declare-fun bs!1015171 () Bool)

(declare-fun d!1451944 () Bool)

(assert (= bs!1015171 (and d!1451944 start!460702)))

(assert (=> bs!1015171 (= (dynLambda!21432 lambda!187941 lt!1764978) (noDuplicateKeys!1367 (_2!29254 lt!1764978)))))

(declare-fun m!5438783 () Bool)

(assert (=> bs!1015171 m!5438783))

(assert (=> d!1451910 d!1451944))

(declare-fun b_lambda!170241 () Bool)

(assert (= b_lambda!170231 (or start!460702 b_lambda!170241)))

(declare-fun bs!1015172 () Bool)

(declare-fun d!1451946 () Bool)

(assert (= bs!1015172 (and d!1451946 start!460702)))

(assert (=> bs!1015172 (= (dynLambda!21432 lambda!187941 (h!57188 (toList!4749 lm!1477))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(declare-fun m!5438785 () Bool)

(assert (=> bs!1015172 m!5438785))

(assert (=> b!4608422 d!1451946))

(declare-fun b_lambda!170243 () Bool)

(assert (= b_lambda!170229 (or start!460702 b_lambda!170243)))

(declare-fun bs!1015173 () Bool)

(declare-fun d!1451948 () Bool)

(assert (= bs!1015173 (and d!1451948 start!460702)))

(assert (=> bs!1015173 (= (dynLambda!21432 lambda!187941 lt!1764976) (noDuplicateKeys!1367 (_2!29254 lt!1764976)))))

(declare-fun m!5438787 () Bool)

(assert (=> bs!1015173 m!5438787))

(assert (=> d!1451884 d!1451948))

(declare-fun b_lambda!170245 () Bool)

(assert (= b_lambda!170235 (or start!460702 b_lambda!170245)))

(declare-fun bs!1015174 () Bool)

(declare-fun d!1451950 () Bool)

(assert (= bs!1015174 (and d!1451950 start!460702)))

(assert (=> bs!1015174 (= (dynLambda!21432 lambda!187941 (h!57188 (toList!4749 lt!1764988))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(declare-fun m!5438789 () Bool)

(assert (=> bs!1015174 m!5438789))

(assert (=> b!4608467 d!1451950))

(push 1)

(assert (not b_lambda!170239))

(assert (not b!4608468))

(assert (not d!1451908))

(assert (not b!4608415))

(assert (not b!4608395))

(assert (not b!4608435))

(assert (not d!1451896))

(assert (not b!4608397))

(assert (not d!1451930))

(assert (not d!1451856))

(assert (not d!1451890))

(assert (not d!1451900))

(assert (not b!4608445))

(assert (not b!4608324))

(assert (not bm!321374))

(assert (not d!1451876))

(assert tp_is_empty!28761)

(assert (not b!4608300))

(assert (not b!4608438))

(assert (not b!4608425))

(assert (not d!1451868))

(assert (not b!4608482))

(assert (not b!4608431))

(assert (not bs!1015173))

(assert (not d!1451864))

(assert (not bm!321370))

(assert (not b!4608440))

(assert (not b!4608346))

(assert (not d!1451870))

(assert (not b!4608369))

(assert (not b!4608342))

(assert (not b!4608423))

(assert (not b!4608409))

(assert (not b!4608417))

(assert (not b!4608358))

(assert tp_is_empty!28763)

(assert (not b!4608505))

(assert (not b!4608323))

(assert (not b!4608484))

(assert (not d!1451884))

(assert (not d!1451914))

(assert (not b!4608453))

(assert (not d!1451866))

(assert (not b!4608326))

(assert (not d!1451874))

(assert (not b!4608320))

(assert (not b!4608343))

(assert (not d!1451924))

(assert (not d!1451906))

(assert (not b!4608414))

(assert (not b_lambda!170241))

(assert (not b!4608340))

(assert (not b!4608433))

(assert (not b!4608411))

(assert (not d!1451894))

(assert (not b!4608428))

(assert (not d!1451880))

(assert (not bs!1015174))

(assert (not d!1451936))

(assert (not b!4608349))

(assert (not b!4608427))

(assert (not b!4608442))

(assert (not d!1451872))

(assert (not bm!321369))

(assert (not d!1451878))

(assert (not b_lambda!170243))

(assert (not b!4608481))

(assert (not bs!1015171))

(assert (not b!4608443))

(assert (not d!1451912))

(assert (not d!1451898))

(assert (not bs!1015172))

(assert (not b!4608500))

(assert (not b!4608424))

(assert (not b!4608319))

(assert (not b_lambda!170245))

(assert (not b!4608345))

(assert (not b!4608451))

(assert (not b!4608432))

(assert (not d!1451888))

(assert (not d!1451902))

(assert (not b!4608429))

(assert (not b!4608350))

(assert (not d!1451910))

(assert (not d!1451858))

(assert (not d!1451904))

(assert (not b!4608494))

(assert (not b!4608479))

(assert (not d!1451920))

(assert (not b!4608495))

(assert (not b!4608322))

(assert (not b!4608347))

(assert (not d!1451850))

(assert (not b!4608351))

(assert (not d!1451882))

(assert (not b!4608327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1452022 () Bool)

(declare-fun res!1929093 () Bool)

(declare-fun e!2874755 () Bool)

(assert (=> d!1452022 (=> res!1929093 e!2874755)))

(assert (=> d!1452022 (= res!1929093 (is-Nil!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1452022 (= (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187941) e!2874755)))

(declare-fun b!4608613 () Bool)

(declare-fun e!2874756 () Bool)

(assert (=> b!4608613 (= e!2874755 e!2874756)))

(declare-fun res!1929094 () Bool)

(assert (=> b!4608613 (=> (not res!1929094) (not e!2874756))))

(assert (=> b!4608613 (= res!1929094 (dynLambda!21432 lambda!187941 (h!57188 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun b!4608614 () Bool)

(assert (=> b!4608614 (= e!2874756 (forall!10683 (t!358318 (t!358318 (toList!4749 lm!1477))) lambda!187941))))

(assert (= (and d!1452022 (not res!1929093)) b!4608613))

(assert (= (and b!4608613 res!1929094) b!4608614))

(declare-fun b_lambda!170261 () Bool)

(assert (=> (not b_lambda!170261) (not b!4608613)))

(declare-fun m!5438949 () Bool)

(assert (=> b!4608613 m!5438949))

(declare-fun m!5438951 () Bool)

(assert (=> b!4608614 m!5438951))

(assert (=> b!4608423 d!1452022))

(declare-fun lt!1765238 () Bool)

(declare-fun d!1452024 () Bool)

(assert (=> d!1452024 (= lt!1765238 (set.member (tuple2!51921 hash!344 lt!1764987) (content!8692 (toList!4749 lm!1477))))))

(declare-fun e!2874758 () Bool)

(assert (=> d!1452024 (= lt!1765238 e!2874758)))

(declare-fun res!1929095 () Bool)

(assert (=> d!1452024 (=> (not res!1929095) (not e!2874758))))

(assert (=> d!1452024 (= res!1929095 (is-Cons!51200 (toList!4749 lm!1477)))))

(assert (=> d!1452024 (= (contains!14205 (toList!4749 lm!1477) (tuple2!51921 hash!344 lt!1764987)) lt!1765238)))

(declare-fun b!4608615 () Bool)

(declare-fun e!2874757 () Bool)

(assert (=> b!4608615 (= e!2874758 e!2874757)))

(declare-fun res!1929096 () Bool)

(assert (=> b!4608615 (=> res!1929096 e!2874757)))

(assert (=> b!4608615 (= res!1929096 (= (h!57188 (toList!4749 lm!1477)) (tuple2!51921 hash!344 lt!1764987)))))

(declare-fun b!4608616 () Bool)

(assert (=> b!4608616 (= e!2874757 (contains!14205 (t!358318 (toList!4749 lm!1477)) (tuple2!51921 hash!344 lt!1764987)))))

(assert (= (and d!1452024 res!1929095) b!4608615))

(assert (= (and b!4608615 (not res!1929096)) b!4608616))

(assert (=> d!1452024 m!5438705))

(declare-fun m!5438953 () Bool)

(assert (=> d!1452024 m!5438953))

(declare-fun m!5438955 () Bool)

(assert (=> b!4608616 m!5438955))

(assert (=> d!1451906 d!1452024))

(declare-fun d!1452026 () Bool)

(assert (=> d!1452026 (contains!14205 (toList!4749 lm!1477) (tuple2!51921 hash!344 lt!1764987))))

(assert (=> d!1452026 true))

(declare-fun _$14!1515 () Unit!109169)

(assert (=> d!1452026 (= (choose!30998 (toList!4749 lm!1477) hash!344 lt!1764987) _$14!1515)))

(declare-fun bs!1015240 () Bool)

(assert (= bs!1015240 d!1452026))

(assert (=> bs!1015240 m!5438691))

(assert (=> d!1451906 d!1452026))

(declare-fun d!1452028 () Bool)

(declare-fun res!1929101 () Bool)

(declare-fun e!2874763 () Bool)

(assert (=> d!1452028 (=> res!1929101 e!2874763)))

(assert (=> d!1452028 (= res!1929101 (or (is-Nil!51200 (toList!4749 lm!1477)) (is-Nil!51200 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452028 (= (isStrictlySorted!561 (toList!4749 lm!1477)) e!2874763)))

(declare-fun b!4608621 () Bool)

(declare-fun e!2874764 () Bool)

(assert (=> b!4608621 (= e!2874763 e!2874764)))

(declare-fun res!1929102 () Bool)

(assert (=> b!4608621 (=> (not res!1929102) (not e!2874764))))

(assert (=> b!4608621 (= res!1929102 (bvslt (_1!29254 (h!57188 (toList!4749 lm!1477))) (_1!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun b!4608622 () Bool)

(assert (=> b!4608622 (= e!2874764 (isStrictlySorted!561 (t!358318 (toList!4749 lm!1477))))))

(assert (= (and d!1452028 (not res!1929101)) b!4608621))

(assert (= (and b!4608621 res!1929102) b!4608622))

(declare-fun m!5438957 () Bool)

(assert (=> b!4608622 m!5438957))

(assert (=> d!1451906 d!1452028))

(declare-fun d!1452030 () Bool)

(declare-fun choose!31008 (Hashable!5766 K!12568) (_ BitVec 64))

(assert (=> d!1452030 (= (hash!3302 hashF!1107 key!3287) (choose!31008 hashF!1107 key!3287))))

(declare-fun bs!1015241 () Bool)

(assert (= bs!1015241 d!1452030))

(declare-fun m!5438959 () Bool)

(assert (=> bs!1015241 m!5438959))

(assert (=> d!1451930 d!1452030))

(declare-fun d!1452032 () Bool)

(declare-fun res!1929107 () Bool)

(declare-fun e!2874769 () Bool)

(assert (=> d!1452032 (=> res!1929107 e!2874769)))

(assert (=> d!1452032 (= res!1929107 (and (is-Cons!51200 (toList!4749 lt!1764988)) (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) lt!1764980)))))

(assert (=> d!1452032 (= (containsKey!2252 (toList!4749 lt!1764988) lt!1764980) e!2874769)))

(declare-fun b!4608627 () Bool)

(declare-fun e!2874770 () Bool)

(assert (=> b!4608627 (= e!2874769 e!2874770)))

(declare-fun res!1929108 () Bool)

(assert (=> b!4608627 (=> (not res!1929108) (not e!2874770))))

(assert (=> b!4608627 (= res!1929108 (and (or (not (is-Cons!51200 (toList!4749 lt!1764988))) (bvsle (_1!29254 (h!57188 (toList!4749 lt!1764988))) lt!1764980)) (is-Cons!51200 (toList!4749 lt!1764988)) (bvslt (_1!29254 (h!57188 (toList!4749 lt!1764988))) lt!1764980)))))

(declare-fun b!4608628 () Bool)

(assert (=> b!4608628 (= e!2874770 (containsKey!2252 (t!358318 (toList!4749 lt!1764988)) lt!1764980))))

(assert (= (and d!1452032 (not res!1929107)) b!4608627))

(assert (= (and b!4608627 res!1929108) b!4608628))

(declare-fun m!5438961 () Bool)

(assert (=> b!4608628 m!5438961))

(assert (=> d!1451878 d!1452032))

(declare-fun d!1452034 () Bool)

(declare-fun res!1929113 () Bool)

(declare-fun e!2874775 () Bool)

(assert (=> d!1452034 (=> res!1929113 e!2874775)))

(assert (=> d!1452034 (= res!1929113 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) key!3287)))))

(assert (=> d!1452034 (= (containsKey!2251 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) e!2874775)))

(declare-fun b!4608633 () Bool)

(declare-fun e!2874776 () Bool)

(assert (=> b!4608633 (= e!2874775 e!2874776)))

(declare-fun res!1929114 () Bool)

(assert (=> b!4608633 (=> (not res!1929114) (not e!2874776))))

(assert (=> b!4608633 (= res!1929114 (is-Cons!51199 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun b!4608634 () Bool)

(assert (=> b!4608634 (= e!2874776 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(assert (= (and d!1452034 (not res!1929113)) b!4608633))

(assert (= (and b!4608633 res!1929114) b!4608634))

(declare-fun m!5438963 () Bool)

(assert (=> b!4608634 m!5438963))

(assert (=> b!4608319 d!1452034))

(declare-fun d!1452036 () Bool)

(assert (=> d!1452036 (containsKey!2251 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287)))

(declare-fun lt!1765241 () Unit!109169)

(declare-fun choose!31009 (List!51323 K!12568) Unit!109169)

(assert (=> d!1452036 (= lt!1765241 (choose!31009 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> d!1452036 (invariantList!1145 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452036 (= (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) lt!1765241)))

(declare-fun bs!1015242 () Bool)

(assert (= bs!1015242 d!1452036))

(assert (=> bs!1015242 m!5438509))

(declare-fun m!5438965 () Bool)

(assert (=> bs!1015242 m!5438965))

(declare-fun m!5438967 () Bool)

(assert (=> bs!1015242 m!5438967))

(assert (=> b!4608319 d!1452036))

(declare-fun d!1452038 () Bool)

(declare-fun isEmpty!28893 (Option!11438) Bool)

(assert (=> d!1452038 (= (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980)) (not (isEmpty!28893 (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980))))))

(declare-fun bs!1015243 () Bool)

(assert (= bs!1015243 d!1452038))

(assert (=> bs!1015243 m!5438713))

(declare-fun m!5438969 () Bool)

(assert (=> bs!1015243 m!5438969))

(assert (=> b!4608445 d!1452038))

(declare-fun b!4608643 () Bool)

(declare-fun e!2874781 () Option!11438)

(assert (=> b!4608643 (= e!2874781 (Some!11437 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(declare-fun b!4608646 () Bool)

(declare-fun e!2874782 () Option!11438)

(assert (=> b!4608646 (= e!2874782 None!11437)))

(declare-fun b!4608644 () Bool)

(assert (=> b!4608644 (= e!2874781 e!2874782)))

(declare-fun c!789442 () Bool)

(assert (=> b!4608644 (= c!789442 (and (is-Cons!51200 (toList!4749 lm!1477)) (not (= (_1!29254 (h!57188 (toList!4749 lm!1477))) lt!1764980))))))

(declare-fun d!1452040 () Bool)

(declare-fun c!789441 () Bool)

(assert (=> d!1452040 (= c!789441 (and (is-Cons!51200 (toList!4749 lm!1477)) (= (_1!29254 (h!57188 (toList!4749 lm!1477))) lt!1764980)))))

(assert (=> d!1452040 (= (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980) e!2874781)))

(declare-fun b!4608645 () Bool)

(assert (=> b!4608645 (= e!2874782 (getValueByKey!1356 (t!358318 (toList!4749 lm!1477)) lt!1764980))))

(assert (= (and d!1452040 c!789441) b!4608643))

(assert (= (and d!1452040 (not c!789441)) b!4608644))

(assert (= (and b!4608644 c!789442) b!4608645))

(assert (= (and b!4608644 (not c!789442)) b!4608646))

(declare-fun m!5438971 () Bool)

(assert (=> b!4608645 m!5438971))

(assert (=> b!4608445 d!1452040))

(declare-fun d!1452042 () Bool)

(declare-fun res!1929115 () Bool)

(declare-fun e!2874783 () Bool)

(assert (=> d!1452042 (=> res!1929115 e!2874783)))

(assert (=> d!1452042 (= res!1929115 (not (is-Cons!51199 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(assert (=> d!1452042 (= (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))) e!2874783)))

(declare-fun b!4608647 () Bool)

(declare-fun e!2874784 () Bool)

(assert (=> b!4608647 (= e!2874783 e!2874784)))

(declare-fun res!1929116 () Bool)

(assert (=> b!4608647 (=> (not res!1929116) (not e!2874784))))

(assert (=> b!4608647 (= res!1929116 (not (containsKey!2249 (t!358317 (_2!29254 (h!57188 (toList!4749 lt!1764988)))) (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))))

(declare-fun b!4608648 () Bool)

(assert (=> b!4608648 (= e!2874784 (noDuplicateKeys!1367 (t!358317 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(assert (= (and d!1452042 (not res!1929115)) b!4608647))

(assert (= (and b!4608647 res!1929116) b!4608648))

(declare-fun m!5438973 () Bool)

(assert (=> b!4608647 m!5438973))

(declare-fun m!5438975 () Bool)

(assert (=> b!4608648 m!5438975))

(assert (=> bs!1015174 d!1452042))

(declare-fun d!1452044 () Bool)

(assert (=> d!1452044 (dynLambda!21432 lambda!187941 lt!1764976)))

(assert (=> d!1452044 true))

(declare-fun _$7!2174 () Unit!109169)

(assert (=> d!1452044 (= (choose!30999 (toList!4749 lt!1764988) lambda!187941 lt!1764976) _$7!2174)))

(declare-fun b_lambda!170263 () Bool)

(assert (=> (not b_lambda!170263) (not d!1452044)))

(declare-fun bs!1015244 () Bool)

(assert (= bs!1015244 d!1452044))

(assert (=> bs!1015244 m!5438635))

(assert (=> d!1451884 d!1452044))

(assert (=> d!1451884 d!1451928))

(declare-fun d!1452046 () Bool)

(declare-fun lt!1765242 () Bool)

(assert (=> d!1452046 (= lt!1765242 (set.member lt!1764978 (content!8692 (t!358318 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun e!2874786 () Bool)

(assert (=> d!1452046 (= lt!1765242 e!2874786)))

(declare-fun res!1929117 () Bool)

(assert (=> d!1452046 (=> (not res!1929117) (not e!2874786))))

(assert (=> d!1452046 (= res!1929117 (is-Cons!51200 (t!358318 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452046 (= (contains!14205 (t!358318 (t!358318 (toList!4749 lm!1477))) lt!1764978) lt!1765242)))

(declare-fun b!4608649 () Bool)

(declare-fun e!2874785 () Bool)

(assert (=> b!4608649 (= e!2874786 e!2874785)))

(declare-fun res!1929118 () Bool)

(assert (=> b!4608649 (=> res!1929118 e!2874785)))

(assert (=> b!4608649 (= res!1929118 (= (h!57188 (t!358318 (t!358318 (toList!4749 lm!1477)))) lt!1764978))))

(declare-fun b!4608650 () Bool)

(assert (=> b!4608650 (= e!2874785 (contains!14205 (t!358318 (t!358318 (t!358318 (toList!4749 lm!1477)))) lt!1764978))))

(assert (= (and d!1452046 res!1929117) b!4608649))

(assert (= (and b!4608649 (not res!1929118)) b!4608650))

(declare-fun m!5438977 () Bool)

(assert (=> d!1452046 m!5438977))

(declare-fun m!5438979 () Bool)

(assert (=> d!1452046 m!5438979))

(declare-fun m!5438981 () Bool)

(assert (=> b!4608650 m!5438981))

(assert (=> b!4608358 d!1452046))

(declare-fun d!1452048 () Bool)

(declare-fun res!1929119 () Bool)

(declare-fun e!2874787 () Bool)

(assert (=> d!1452048 (=> res!1929119 e!2874787)))

(assert (=> d!1452048 (= res!1929119 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) key!3287)))))

(assert (=> d!1452048 (= (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287) e!2874787)))

(declare-fun b!4608651 () Bool)

(declare-fun e!2874788 () Bool)

(assert (=> b!4608651 (= e!2874787 e!2874788)))

(declare-fun res!1929120 () Bool)

(assert (=> b!4608651 (=> (not res!1929120) (not e!2874788))))

(assert (=> b!4608651 (= res!1929120 (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))

(declare-fun b!4608652 () Bool)

(assert (=> b!4608652 (= e!2874788 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) key!3287))))

(assert (= (and d!1452048 (not res!1929119)) b!4608651))

(assert (= (and b!4608651 res!1929120) b!4608652))

(declare-fun m!5438983 () Bool)

(assert (=> b!4608652 m!5438983))

(assert (=> b!4608424 d!1452048))

(declare-fun d!1452050 () Bool)

(assert (=> d!1452050 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287)))

(declare-fun lt!1765243 () Unit!109169)

(assert (=> d!1452050 (= lt!1765243 (choose!31009 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> d!1452050 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))

(assert (=> d!1452050 (= (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287) lt!1765243)))

(declare-fun bs!1015245 () Bool)

(assert (= bs!1015245 d!1452050))

(assert (=> bs!1015245 m!5438667))

(declare-fun m!5438985 () Bool)

(assert (=> bs!1015245 m!5438985))

(declare-fun m!5438987 () Bool)

(assert (=> bs!1015245 m!5438987))

(assert (=> b!4608424 d!1452050))

(declare-fun d!1452052 () Bool)

(declare-fun lt!1765246 () Bool)

(declare-fun content!8694 (List!51327) (Set K!12568))

(assert (=> d!1452052 (= lt!1765246 (set.member key!3287 (content!8694 e!2874549)))))

(declare-fun e!2874794 () Bool)

(assert (=> d!1452052 (= lt!1765246 e!2874794)))

(declare-fun res!1929126 () Bool)

(assert (=> d!1452052 (=> (not res!1929126) (not e!2874794))))

(assert (=> d!1452052 (= res!1929126 (is-Cons!51203 e!2874549))))

(assert (=> d!1452052 (= (contains!14209 e!2874549 key!3287) lt!1765246)))

(declare-fun b!4608657 () Bool)

(declare-fun e!2874793 () Bool)

(assert (=> b!4608657 (= e!2874794 e!2874793)))

(declare-fun res!1929125 () Bool)

(assert (=> b!4608657 (=> res!1929125 e!2874793)))

(assert (=> b!4608657 (= res!1929125 (= (h!57192 e!2874549) key!3287))))

(declare-fun b!4608658 () Bool)

(assert (=> b!4608658 (= e!2874793 (contains!14209 (t!358321 e!2874549) key!3287))))

(assert (= (and d!1452052 res!1929126) b!4608657))

(assert (= (and b!4608657 (not res!1929125)) b!4608658))

(declare-fun m!5438989 () Bool)

(assert (=> d!1452052 m!5438989))

(declare-fun m!5438991 () Bool)

(assert (=> d!1452052 m!5438991))

(declare-fun m!5438993 () Bool)

(assert (=> b!4608658 m!5438993))

(assert (=> bm!321369 d!1452052))

(declare-fun d!1452054 () Bool)

(declare-fun res!1929127 () Bool)

(declare-fun e!2874795 () Bool)

(assert (=> d!1452054 (=> res!1929127 e!2874795)))

(assert (=> d!1452054 (= res!1929127 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) key!3287)))))

(assert (=> d!1452054 (= (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) e!2874795)))

(declare-fun b!4608659 () Bool)

(declare-fun e!2874796 () Bool)

(assert (=> b!4608659 (= e!2874795 e!2874796)))

(declare-fun res!1929128 () Bool)

(assert (=> b!4608659 (=> (not res!1929128) (not e!2874796))))

(assert (=> b!4608659 (= res!1929128 (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))

(declare-fun b!4608660 () Bool)

(assert (=> b!4608660 (= e!2874796 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) key!3287))))

(assert (= (and d!1452054 (not res!1929127)) b!4608659))

(assert (= (and b!4608659 res!1929128) b!4608660))

(declare-fun m!5438995 () Bool)

(assert (=> b!4608660 m!5438995))

(assert (=> b!4608342 d!1452054))

(declare-fun d!1452056 () Bool)

(assert (=> d!1452056 (containsKey!2251 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287)))

(declare-fun lt!1765247 () Unit!109169)

(assert (=> d!1452056 (= lt!1765247 (choose!31009 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> d!1452056 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))

(assert (=> d!1452056 (= (lemmaInGetKeysListThenContainsKey!594 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) lt!1765247)))

(declare-fun bs!1015246 () Bool)

(assert (= bs!1015246 d!1452056))

(assert (=> bs!1015246 m!5438557))

(declare-fun m!5438997 () Bool)

(assert (=> bs!1015246 m!5438997))

(declare-fun m!5438999 () Bool)

(assert (=> bs!1015246 m!5438999))

(assert (=> b!4608342 d!1452056))

(assert (=> b!4608414 d!1451882))

(declare-fun d!1452058 () Bool)

(declare-fun res!1929129 () Bool)

(declare-fun e!2874797 () Bool)

(assert (=> d!1452058 (=> res!1929129 e!2874797)))

(assert (=> d!1452058 (= res!1929129 (and (is-Cons!51199 (_2!29254 (h!57188 (toList!4749 lt!1764988)))) (= (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))) key!3287)))))

(assert (=> d!1452058 (= (containsKey!2249 (_2!29254 (h!57188 (toList!4749 lt!1764988))) key!3287) e!2874797)))

(declare-fun b!4608661 () Bool)

(declare-fun e!2874798 () Bool)

(assert (=> b!4608661 (= e!2874797 e!2874798)))

(declare-fun res!1929130 () Bool)

(assert (=> b!4608661 (=> (not res!1929130) (not e!2874798))))

(assert (=> b!4608661 (= res!1929130 (is-Cons!51199 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(declare-fun b!4608662 () Bool)

(assert (=> b!4608662 (= e!2874798 (containsKey!2249 (t!358317 (_2!29254 (h!57188 (toList!4749 lt!1764988)))) key!3287))))

(assert (= (and d!1452058 (not res!1929129)) b!4608661))

(assert (= (and b!4608661 res!1929130) b!4608662))

(declare-fun m!5439001 () Bool)

(assert (=> b!4608662 m!5439001))

(assert (=> b!4608482 d!1452058))

(declare-fun d!1452060 () Bool)

(assert (=> d!1452060 (dynLambda!21432 lambda!187941 lt!1764978)))

(assert (=> d!1452060 true))

(declare-fun _$7!2175 () Unit!109169)

(assert (=> d!1452060 (= (choose!30999 (toList!4749 lm!1477) lambda!187941 lt!1764978) _$7!2175)))

(declare-fun b_lambda!170265 () Bool)

(assert (=> (not b_lambda!170265) (not d!1452060)))

(declare-fun bs!1015247 () Bool)

(assert (= bs!1015247 d!1452060))

(assert (=> bs!1015247 m!5438701))

(assert (=> d!1451910 d!1452060))

(assert (=> d!1451910 d!1451892))

(declare-fun d!1452062 () Bool)

(assert (=> d!1452062 (= (get!16937 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344)) (v!45491 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344)))))

(assert (=> d!1451872 d!1452062))

(declare-fun b!4608663 () Bool)

(declare-fun e!2874799 () Option!11438)

(assert (=> b!4608663 (= e!2874799 (Some!11437 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(declare-fun b!4608666 () Bool)

(declare-fun e!2874800 () Option!11438)

(assert (=> b!4608666 (= e!2874800 None!11437)))

(declare-fun b!4608664 () Bool)

(assert (=> b!4608664 (= e!2874799 e!2874800)))

(declare-fun c!789444 () Bool)

(assert (=> b!4608664 (= c!789444 (and (is-Cons!51200 (toList!4749 lt!1764988)) (not (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) hash!344))))))

(declare-fun d!1452064 () Bool)

(declare-fun c!789443 () Bool)

(assert (=> d!1452064 (= c!789443 (and (is-Cons!51200 (toList!4749 lt!1764988)) (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) hash!344)))))

(assert (=> d!1452064 (= (getValueByKey!1356 (toList!4749 lt!1764988) hash!344) e!2874799)))

(declare-fun b!4608665 () Bool)

(assert (=> b!4608665 (= e!2874800 (getValueByKey!1356 (t!358318 (toList!4749 lt!1764988)) hash!344))))

(assert (= (and d!1452064 c!789443) b!4608663))

(assert (= (and d!1452064 (not c!789443)) b!4608664))

(assert (= (and b!4608664 c!789444) b!4608665))

(assert (= (and b!4608664 (not c!789444)) b!4608666))

(declare-fun m!5439003 () Bool)

(assert (=> b!4608665 m!5439003))

(assert (=> d!1451872 d!1452064))

(declare-fun d!1452066 () Bool)

(assert (=> d!1452066 (= (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344)) (not (isEmpty!28893 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344))))))

(declare-fun bs!1015248 () Bool)

(assert (= bs!1015248 d!1452066))

(assert (=> bs!1015248 m!5438579))

(declare-fun m!5439005 () Bool)

(assert (=> bs!1015248 m!5439005))

(assert (=> b!4608417 d!1452066))

(assert (=> b!4608417 d!1452064))

(declare-fun d!1452068 () Bool)

(declare-fun res!1929131 () Bool)

(declare-fun e!2874801 () Bool)

(assert (=> d!1452068 (=> res!1929131 e!2874801)))

(assert (=> d!1452068 (= res!1929131 (not (is-Cons!51199 (_2!29254 lt!1764978))))))

(assert (=> d!1452068 (= (noDuplicateKeys!1367 (_2!29254 lt!1764978)) e!2874801)))

(declare-fun b!4608667 () Bool)

(declare-fun e!2874802 () Bool)

(assert (=> b!4608667 (= e!2874801 e!2874802)))

(declare-fun res!1929132 () Bool)

(assert (=> b!4608667 (=> (not res!1929132) (not e!2874802))))

(assert (=> b!4608667 (= res!1929132 (not (containsKey!2249 (t!358317 (_2!29254 lt!1764978)) (_1!29253 (h!57187 (_2!29254 lt!1764978))))))))

(declare-fun b!4608668 () Bool)

(assert (=> b!4608668 (= e!2874802 (noDuplicateKeys!1367 (t!358317 (_2!29254 lt!1764978))))))

(assert (= (and d!1452068 (not res!1929131)) b!4608667))

(assert (= (and b!4608667 res!1929132) b!4608668))

(declare-fun m!5439007 () Bool)

(assert (=> b!4608667 m!5439007))

(declare-fun m!5439009 () Bool)

(assert (=> b!4608668 m!5439009))

(assert (=> bs!1015171 d!1452068))

(declare-fun b!4608669 () Bool)

(declare-fun e!2874803 () Option!11438)

(assert (=> b!4608669 (= e!2874803 (Some!11437 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(declare-fun b!4608672 () Bool)

(declare-fun e!2874804 () Option!11438)

(assert (=> b!4608672 (= e!2874804 None!11437)))

(declare-fun b!4608670 () Bool)

(assert (=> b!4608670 (= e!2874803 e!2874804)))

(declare-fun c!789446 () Bool)

(assert (=> b!4608670 (= c!789446 (and (is-Cons!51200 (toList!4749 lm!1477)) (not (= (_1!29254 (h!57188 (toList!4749 lm!1477))) hash!344))))))

(declare-fun d!1452070 () Bool)

(declare-fun c!789445 () Bool)

(assert (=> d!1452070 (= c!789445 (and (is-Cons!51200 (toList!4749 lm!1477)) (= (_1!29254 (h!57188 (toList!4749 lm!1477))) hash!344)))))

(assert (=> d!1452070 (= (getValueByKey!1356 (toList!4749 lm!1477) hash!344) e!2874803)))

(declare-fun b!4608671 () Bool)

(assert (=> b!4608671 (= e!2874804 (getValueByKey!1356 (t!358318 (toList!4749 lm!1477)) hash!344))))

(assert (= (and d!1452070 c!789445) b!4608669))

(assert (= (and d!1452070 (not c!789445)) b!4608670))

(assert (= (and b!4608670 c!789446) b!4608671))

(assert (= (and b!4608670 (not c!789446)) b!4608672))

(declare-fun m!5439011 () Bool)

(assert (=> b!4608671 m!5439011))

(assert (=> b!4608435 d!1452070))

(assert (=> b!4608442 d!1451870))

(declare-fun b!4608691 () Bool)

(assert (=> b!4608691 true))

(declare-fun bs!1015249 () Bool)

(declare-fun b!4608699 () Bool)

(assert (= bs!1015249 (and b!4608699 b!4608691)))

(declare-fun lambda!188010 () Int)

(declare-fun lambda!188009 () Int)

(assert (=> bs!1015249 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188010 lambda!188009))))

(assert (=> b!4608699 true))

(declare-fun bs!1015250 () Bool)

(declare-fun b!4608693 () Bool)

(assert (= bs!1015250 (and b!4608693 b!4608691)))

(declare-fun lambda!188011 () Int)

(assert (=> bs!1015250 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188011 lambda!188009))))

(declare-fun bs!1015251 () Bool)

(assert (= bs!1015251 (and b!4608693 b!4608699)))

(assert (=> bs!1015251 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188011 lambda!188010))))

(assert (=> b!4608693 true))

(assert (=> b!4608691 false))

(declare-fun lt!1765265 () Unit!109169)

(declare-fun forallContained!2930 (List!51327 Int K!12568) Unit!109169)

(assert (=> b!4608691 (= lt!1765265 (forallContained!2930 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) lambda!188009 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun e!2874814 () Unit!109169)

(declare-fun Unit!109195 () Unit!109169)

(assert (=> b!4608691 (= e!2874814 Unit!109195)))

(declare-fun b!4608692 () Bool)

(declare-fun res!1929140 () Bool)

(declare-fun e!2874813 () Bool)

(assert (=> b!4608692 (=> (not res!1929140) (not e!2874813))))

(declare-fun lt!1765262 () List!51327)

(declare-fun length!506 (List!51327) Int)

(declare-fun length!507 (List!51323) Int)

(assert (=> b!4608692 (= res!1929140 (= (length!506 lt!1765262) (length!507 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun res!1929141 () Bool)

(assert (=> b!4608693 (=> (not res!1929141) (not e!2874813))))

(declare-fun forall!10687 (List!51327 Int) Bool)

(assert (=> b!4608693 (= res!1929141 (forall!10687 lt!1765262 lambda!188011))))

(declare-fun b!4608694 () Bool)

(declare-fun Unit!109196 () Unit!109169)

(assert (=> b!4608694 (= e!2874814 Unit!109196)))

(declare-fun b!4608695 () Bool)

(assert (=> b!4608695 false))

(declare-fun e!2874815 () Unit!109169)

(declare-fun Unit!109197 () Unit!109169)

(assert (=> b!4608695 (= e!2874815 Unit!109197)))

(declare-fun b!4608696 () Bool)

(declare-fun e!2874816 () List!51327)

(assert (=> b!4608696 (= e!2874816 Nil!51203)))

(declare-fun d!1452072 () Bool)

(assert (=> d!1452072 e!2874813))

(declare-fun res!1929139 () Bool)

(assert (=> d!1452072 (=> (not res!1929139) (not e!2874813))))

(declare-fun noDuplicate!825 (List!51327) Bool)

(assert (=> d!1452072 (= res!1929139 (noDuplicate!825 lt!1765262))))

(assert (=> d!1452072 (= lt!1765262 e!2874816)))

(declare-fun c!789453 () Bool)

(assert (=> d!1452072 (= c!789453 (is-Cons!51199 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> d!1452072 (invariantList!1145 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452072 (= (getKeysList!595 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) lt!1765262)))

(declare-fun lambda!188012 () Int)

(declare-fun b!4608697 () Bool)

(declare-fun map!11322 (List!51323 Int) List!51327)

(assert (=> b!4608697 (= e!2874813 (= (content!8694 lt!1765262) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188012))))))

(declare-fun b!4608698 () Bool)

(declare-fun Unit!109198 () Unit!109169)

(assert (=> b!4608698 (= e!2874815 Unit!109198)))

(assert (=> b!4608699 (= e!2874816 (Cons!51203 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun c!789455 () Bool)

(assert (=> b!4608699 (= c!789455 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun lt!1765268 () Unit!109169)

(assert (=> b!4608699 (= lt!1765268 e!2874815)))

(declare-fun c!789454 () Bool)

(assert (=> b!4608699 (= c!789454 (contains!14209 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun lt!1765264 () Unit!109169)

(assert (=> b!4608699 (= lt!1765264 e!2874814)))

(declare-fun lt!1765267 () List!51327)

(assert (=> b!4608699 (= lt!1765267 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765263 () Unit!109169)

(declare-fun lemmaForallContainsAddHeadPreserves!245 (List!51323 List!51327 tuple2!51918) Unit!109169)

(assert (=> b!4608699 (= lt!1765263 (lemmaForallContainsAddHeadPreserves!245 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) lt!1765267 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))))

(assert (=> b!4608699 (forall!10687 lt!1765267 lambda!188010)))

(declare-fun lt!1765266 () Unit!109169)

(assert (=> b!4608699 (= lt!1765266 lt!1765263)))

(assert (= (and d!1452072 c!789453) b!4608699))

(assert (= (and d!1452072 (not c!789453)) b!4608696))

(assert (= (and b!4608699 c!789455) b!4608695))

(assert (= (and b!4608699 (not c!789455)) b!4608698))

(assert (= (and b!4608699 c!789454) b!4608691))

(assert (= (and b!4608699 (not c!789454)) b!4608694))

(assert (= (and d!1452072 res!1929139) b!4608692))

(assert (= (and b!4608692 res!1929140) b!4608693))

(assert (= (and b!4608693 res!1929141) b!4608697))

(declare-fun m!5439013 () Bool)

(assert (=> d!1452072 m!5439013))

(assert (=> d!1452072 m!5438967))

(declare-fun m!5439015 () Bool)

(assert (=> b!4608699 m!5439015))

(declare-fun m!5439017 () Bool)

(assert (=> b!4608699 m!5439017))

(declare-fun m!5439019 () Bool)

(assert (=> b!4608699 m!5439019))

(declare-fun m!5439021 () Bool)

(assert (=> b!4608699 m!5439021))

(declare-fun m!5439023 () Bool)

(assert (=> b!4608699 m!5439023))

(assert (=> b!4608699 m!5439021))

(assert (=> b!4608691 m!5439021))

(assert (=> b!4608691 m!5439021))

(declare-fun m!5439025 () Bool)

(assert (=> b!4608691 m!5439025))

(declare-fun m!5439027 () Bool)

(assert (=> b!4608693 m!5439027))

(declare-fun m!5439029 () Bool)

(assert (=> b!4608697 m!5439029))

(declare-fun m!5439031 () Bool)

(assert (=> b!4608697 m!5439031))

(assert (=> b!4608697 m!5439031))

(declare-fun m!5439033 () Bool)

(assert (=> b!4608697 m!5439033))

(declare-fun m!5439035 () Bool)

(assert (=> b!4608692 m!5439035))

(declare-fun m!5439037 () Bool)

(assert (=> b!4608692 m!5439037))

(assert (=> b!4608323 d!1452072))

(declare-fun d!1452074 () Bool)

(assert (=> d!1452074 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) hash!344))))

(declare-fun lt!1765271 () Unit!109169)

(declare-fun choose!31010 (List!51324 (_ BitVec 64)) Unit!109169)

(assert (=> d!1452074 (= lt!1765271 (choose!31010 (toList!4749 lt!1764988) hash!344))))

(declare-fun e!2874819 () Bool)

(assert (=> d!1452074 e!2874819))

(declare-fun res!1929144 () Bool)

(assert (=> d!1452074 (=> (not res!1929144) (not e!2874819))))

(assert (=> d!1452074 (= res!1929144 (isStrictlySorted!561 (toList!4749 lt!1764988)))))

(assert (=> d!1452074 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lt!1764988) hash!344) lt!1765271)))

(declare-fun b!4608704 () Bool)

(assert (=> b!4608704 (= e!2874819 (containsKey!2252 (toList!4749 lt!1764988) hash!344))))

(assert (= (and d!1452074 res!1929144) b!4608704))

(assert (=> d!1452074 m!5438579))

(assert (=> d!1452074 m!5438579))

(assert (=> d!1452074 m!5438643))

(declare-fun m!5439039 () Bool)

(assert (=> d!1452074 m!5439039))

(assert (=> d!1452074 m!5438607))

(assert (=> b!4608704 m!5438639))

(assert (=> b!4608415 d!1452074))

(assert (=> b!4608415 d!1452066))

(assert (=> b!4608415 d!1452064))

(declare-fun d!1452076 () Bool)

(assert (=> d!1452076 (= (tail!8024 (toList!4749 lm!1477)) (t!358318 (toList!4749 lm!1477)))))

(assert (=> d!1451890 d!1452076))

(declare-fun d!1452078 () Bool)

(declare-fun e!2874821 () Bool)

(assert (=> d!1452078 e!2874821))

(declare-fun res!1929145 () Bool)

(assert (=> d!1452078 (=> res!1929145 e!2874821)))

(declare-fun lt!1765275 () Bool)

(assert (=> d!1452078 (= res!1929145 (not lt!1765275))))

(declare-fun lt!1765273 () Bool)

(assert (=> d!1452078 (= lt!1765275 lt!1765273)))

(declare-fun lt!1765274 () Unit!109169)

(declare-fun e!2874820 () Unit!109169)

(assert (=> d!1452078 (= lt!1765274 e!2874820)))

(declare-fun c!789456 () Bool)

(assert (=> d!1452078 (= c!789456 lt!1765273)))

(assert (=> d!1452078 (= lt!1765273 (containsKey!2252 (toList!4749 lt!1764988) (hash!3300 hashF!1107 key!3287)))))

(assert (=> d!1452078 (= (contains!14204 lt!1764988 (hash!3300 hashF!1107 key!3287)) lt!1765275)))

(declare-fun b!4608705 () Bool)

(declare-fun lt!1765272 () Unit!109169)

(assert (=> b!4608705 (= e!2874820 lt!1765272)))

(assert (=> b!4608705 (= lt!1765272 (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lt!1764988) (hash!3300 hashF!1107 key!3287)))))

(assert (=> b!4608705 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) (hash!3300 hashF!1107 key!3287)))))

(declare-fun b!4608706 () Bool)

(declare-fun Unit!109199 () Unit!109169)

(assert (=> b!4608706 (= e!2874820 Unit!109199)))

(declare-fun b!4608707 () Bool)

(assert (=> b!4608707 (= e!2874821 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) (hash!3300 hashF!1107 key!3287))))))

(assert (= (and d!1452078 c!789456) b!4608705))

(assert (= (and d!1452078 (not c!789456)) b!4608706))

(assert (= (and d!1452078 (not res!1929145)) b!4608707))

(assert (=> d!1452078 m!5438367))

(declare-fun m!5439041 () Bool)

(assert (=> d!1452078 m!5439041))

(assert (=> b!4608705 m!5438367))

(declare-fun m!5439043 () Bool)

(assert (=> b!4608705 m!5439043))

(assert (=> b!4608705 m!5438367))

(declare-fun m!5439045 () Bool)

(assert (=> b!4608705 m!5439045))

(assert (=> b!4608705 m!5439045))

(declare-fun m!5439047 () Bool)

(assert (=> b!4608705 m!5439047))

(assert (=> b!4608707 m!5438367))

(assert (=> b!4608707 m!5439045))

(assert (=> b!4608707 m!5439045))

(assert (=> b!4608707 m!5439047))

(assert (=> d!1451876 d!1452078))

(assert (=> d!1451876 d!1451930))

(declare-fun d!1452080 () Bool)

(assert (=> d!1452080 (contains!14204 lt!1764988 (hash!3300 hashF!1107 key!3287))))

(assert (=> d!1452080 true))

(declare-fun _$27!1477 () Unit!109169)

(assert (=> d!1452080 (= (choose!30997 lt!1764988 key!3287 hashF!1107) _$27!1477)))

(declare-fun bs!1015252 () Bool)

(assert (= bs!1015252 d!1452080))

(assert (=> bs!1015252 m!5438367))

(assert (=> bs!1015252 m!5438367))

(assert (=> bs!1015252 m!5438589))

(assert (=> d!1451876 d!1452080))

(declare-fun d!1452082 () Bool)

(declare-fun res!1929146 () Bool)

(declare-fun e!2874822 () Bool)

(assert (=> d!1452082 (=> res!1929146 e!2874822)))

(assert (=> d!1452082 (= res!1929146 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452082 (= (forall!10683 (toList!4749 lt!1764988) lambda!187967) e!2874822)))

(declare-fun b!4608708 () Bool)

(declare-fun e!2874823 () Bool)

(assert (=> b!4608708 (= e!2874822 e!2874823)))

(declare-fun res!1929147 () Bool)

(assert (=> b!4608708 (=> (not res!1929147) (not e!2874823))))

(assert (=> b!4608708 (= res!1929147 (dynLambda!21432 lambda!187967 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608709 () Bool)

(assert (=> b!4608709 (= e!2874823 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187967))))

(assert (= (and d!1452082 (not res!1929146)) b!4608708))

(assert (= (and b!4608708 res!1929147) b!4608709))

(declare-fun b_lambda!170267 () Bool)

(assert (=> (not b_lambda!170267) (not b!4608708)))

(declare-fun m!5439049 () Bool)

(assert (=> b!4608708 m!5439049))

(declare-fun m!5439051 () Bool)

(assert (=> b!4608709 m!5439051))

(assert (=> d!1451876 d!1452082))

(declare-fun d!1452084 () Bool)

(assert (=> d!1452084 (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980))))

(declare-fun lt!1765276 () Unit!109169)

(assert (=> d!1452084 (= lt!1765276 (choose!31010 (toList!4749 lt!1764988) lt!1764980))))

(declare-fun e!2874824 () Bool)

(assert (=> d!1452084 e!2874824))

(declare-fun res!1929148 () Bool)

(assert (=> d!1452084 (=> (not res!1929148) (not e!2874824))))

(assert (=> d!1452084 (= res!1929148 (isStrictlySorted!561 (toList!4749 lt!1764988)))))

(assert (=> d!1452084 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lt!1764988) lt!1764980) lt!1765276)))

(declare-fun b!4608710 () Bool)

(assert (=> b!4608710 (= e!2874824 (containsKey!2252 (toList!4749 lt!1764988) lt!1764980))))

(assert (= (and d!1452084 res!1929148) b!4608710))

(assert (=> d!1452084 m!5438599))

(assert (=> d!1452084 m!5438599))

(assert (=> d!1452084 m!5438601))

(declare-fun m!5439053 () Bool)

(assert (=> d!1452084 m!5439053))

(assert (=> d!1452084 m!5438607))

(assert (=> b!4608710 m!5438595))

(assert (=> b!4608395 d!1452084))

(declare-fun d!1452086 () Bool)

(assert (=> d!1452086 (= (isDefined!8705 (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980)) (not (isEmpty!28893 (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980))))))

(declare-fun bs!1015253 () Bool)

(assert (= bs!1015253 d!1452086))

(assert (=> bs!1015253 m!5438599))

(declare-fun m!5439055 () Bool)

(assert (=> bs!1015253 m!5439055))

(assert (=> b!4608395 d!1452086))

(declare-fun b!4608711 () Bool)

(declare-fun e!2874825 () Option!11438)

(assert (=> b!4608711 (= e!2874825 (Some!11437 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(declare-fun b!4608714 () Bool)

(declare-fun e!2874826 () Option!11438)

(assert (=> b!4608714 (= e!2874826 None!11437)))

(declare-fun b!4608712 () Bool)

(assert (=> b!4608712 (= e!2874825 e!2874826)))

(declare-fun c!789458 () Bool)

(assert (=> b!4608712 (= c!789458 (and (is-Cons!51200 (toList!4749 lt!1764988)) (not (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) lt!1764980))))))

(declare-fun d!1452088 () Bool)

(declare-fun c!789457 () Bool)

(assert (=> d!1452088 (= c!789457 (and (is-Cons!51200 (toList!4749 lt!1764988)) (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) lt!1764980)))))

(assert (=> d!1452088 (= (getValueByKey!1356 (toList!4749 lt!1764988) lt!1764980) e!2874825)))

(declare-fun b!4608713 () Bool)

(assert (=> b!4608713 (= e!2874826 (getValueByKey!1356 (t!358318 (toList!4749 lt!1764988)) lt!1764980))))

(assert (= (and d!1452088 c!789457) b!4608711))

(assert (= (and d!1452088 (not c!789457)) b!4608712))

(assert (= (and b!4608712 c!789458) b!4608713))

(assert (= (and b!4608712 (not c!789458)) b!4608714))

(declare-fun m!5439057 () Bool)

(assert (=> b!4608713 m!5439057))

(assert (=> b!4608395 d!1452088))

(declare-fun bs!1015254 () Bool)

(declare-fun b!4608729 () Bool)

(assert (= bs!1015254 (and b!4608729 d!1451924)))

(declare-fun lambda!188041 () Int)

(assert (=> bs!1015254 (not (= lambda!188041 lambda!187979))))

(assert (=> b!4608729 true))

(declare-fun bs!1015255 () Bool)

(declare-fun b!4608728 () Bool)

(assert (= bs!1015255 (and b!4608728 d!1451924)))

(declare-fun lambda!188042 () Int)

(assert (=> bs!1015255 (not (= lambda!188042 lambda!187979))))

(declare-fun bs!1015256 () Bool)

(assert (= bs!1015256 (and b!4608728 b!4608729)))

(assert (=> bs!1015256 (= lambda!188042 lambda!188041)))

(assert (=> b!4608728 true))

(declare-fun lambda!188043 () Int)

(assert (=> bs!1015255 (not (= lambda!188043 lambda!187979))))

(declare-fun lt!1765338 () ListMap!4011)

(assert (=> bs!1015256 (= (= lt!1765338 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188043 lambda!188041))))

(assert (=> b!4608728 (= (= lt!1765338 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188043 lambda!188042))))

(assert (=> b!4608728 true))

(declare-fun bs!1015257 () Bool)

(declare-fun d!1452090 () Bool)

(assert (= bs!1015257 (and d!1452090 d!1451924)))

(declare-fun lambda!188044 () Int)

(assert (=> bs!1015257 (not (= lambda!188044 lambda!187979))))

(declare-fun bs!1015258 () Bool)

(assert (= bs!1015258 (and d!1452090 b!4608729)))

(declare-fun lt!1765339 () ListMap!4011)

(assert (=> bs!1015258 (= (= lt!1765339 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188044 lambda!188041))))

(declare-fun bs!1015259 () Bool)

(assert (= bs!1015259 (and d!1452090 b!4608728)))

(assert (=> bs!1015259 (= (= lt!1765339 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188044 lambda!188042))))

(assert (=> bs!1015259 (= (= lt!1765339 lt!1765338) (= lambda!188044 lambda!188043))))

(assert (=> d!1452090 true))

(declare-fun bm!321383 () Bool)

(declare-fun call!321388 () Unit!109169)

(declare-fun lemmaContainsAllItsOwnKeys!449 (ListMap!4011) Unit!109169)

(assert (=> bm!321383 (= call!321388 (lemmaContainsAllItsOwnKeys!449 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun c!789461 () Bool)

(declare-fun call!321390 () Bool)

(declare-fun bm!321384 () Bool)

(assert (=> bm!321384 (= call!321390 (forall!10685 (ite c!789461 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))) (ite c!789461 lambda!188041 lambda!188043)))))

(declare-fun bm!321385 () Bool)

(declare-fun call!321389 () Bool)

(assert (=> bm!321385 (= call!321389 (forall!10685 (ite c!789461 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (t!358317 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))) (ite c!789461 lambda!188041 lambda!188043)))))

(declare-fun b!4608725 () Bool)

(declare-fun e!2874833 () Bool)

(assert (=> b!4608725 (= e!2874833 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lambda!188043))))

(declare-fun b!4608726 () Bool)

(declare-fun e!2874835 () Bool)

(assert (=> b!4608726 (= e!2874835 (invariantList!1145 (toList!4750 lt!1765339)))))

(assert (=> d!1452090 e!2874835))

(declare-fun res!1929155 () Bool)

(assert (=> d!1452090 (=> (not res!1929155) (not e!2874835))))

(assert (=> d!1452090 (= res!1929155 (forall!10685 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) lambda!188044))))

(declare-fun e!2874834 () ListMap!4011)

(assert (=> d!1452090 (= lt!1765339 e!2874834)))

(assert (=> d!1452090 (= c!789461 (is-Nil!51199 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> d!1452090 (noDuplicateKeys!1367 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452090 (= (addToMapMapFromBucket!837 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lt!1765339)))

(declare-fun b!4608727 () Bool)

(declare-fun res!1929157 () Bool)

(assert (=> b!4608727 (=> (not res!1929157) (not e!2874835))))

(assert (=> b!4608727 (= res!1929157 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lambda!188044))))

(assert (=> b!4608728 (= e!2874834 lt!1765338)))

(declare-fun lt!1765337 () ListMap!4011)

(declare-fun +!1775 (ListMap!4011 tuple2!51918) ListMap!4011)

(assert (=> b!4608728 (= lt!1765337 (+!1775 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477)))) (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))))))

(assert (=> b!4608728 (= lt!1765338 (addToMapMapFromBucket!837 (t!358317 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))) (+!1775 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477)))) (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun lt!1765321 () Unit!109169)

(assert (=> b!4608728 (= lt!1765321 call!321388)))

(assert (=> b!4608728 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lambda!188042)))

(declare-fun lt!1765331 () Unit!109169)

(assert (=> b!4608728 (= lt!1765331 lt!1765321)))

(assert (=> b!4608728 (forall!10685 (toList!4750 lt!1765337) lambda!188043)))

(declare-fun lt!1765327 () Unit!109169)

(declare-fun Unit!109200 () Unit!109169)

(assert (=> b!4608728 (= lt!1765327 Unit!109200)))

(assert (=> b!4608728 call!321389))

(declare-fun lt!1765320 () Unit!109169)

(declare-fun Unit!109201 () Unit!109169)

(assert (=> b!4608728 (= lt!1765320 Unit!109201)))

(declare-fun lt!1765330 () Unit!109169)

(declare-fun Unit!109202 () Unit!109169)

(assert (=> b!4608728 (= lt!1765330 Unit!109202)))

(declare-fun lt!1765319 () Unit!109169)

(declare-fun forallContained!2931 (List!51323 Int tuple2!51918) Unit!109169)

(assert (=> b!4608728 (= lt!1765319 (forallContained!2931 (toList!4750 lt!1765337) lambda!188043 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))))))

(assert (=> b!4608728 (contains!14203 lt!1765337 (_1!29253 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765324 () Unit!109169)

(declare-fun Unit!109203 () Unit!109169)

(assert (=> b!4608728 (= lt!1765324 Unit!109203)))

(assert (=> b!4608728 (contains!14203 lt!1765338 (_1!29253 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765335 () Unit!109169)

(declare-fun Unit!109204 () Unit!109169)

(assert (=> b!4608728 (= lt!1765335 Unit!109204)))

(assert (=> b!4608728 (forall!10685 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) lambda!188043)))

(declare-fun lt!1765328 () Unit!109169)

(declare-fun Unit!109205 () Unit!109169)

(assert (=> b!4608728 (= lt!1765328 Unit!109205)))

(assert (=> b!4608728 (forall!10685 (toList!4750 lt!1765337) lambda!188043)))

(declare-fun lt!1765333 () Unit!109169)

(declare-fun Unit!109206 () Unit!109169)

(assert (=> b!4608728 (= lt!1765333 Unit!109206)))

(declare-fun lt!1765332 () Unit!109169)

(declare-fun Unit!109207 () Unit!109169)

(assert (=> b!4608728 (= lt!1765332 Unit!109207)))

(declare-fun lt!1765326 () Unit!109169)

(declare-fun addForallContainsKeyThenBeforeAdding!449 (ListMap!4011 ListMap!4011 K!12568 V!12814) Unit!109169)

(assert (=> b!4608728 (= lt!1765326 (addForallContainsKeyThenBeforeAdding!449 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477)))) lt!1765338 (_1!29253 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))) (_2!29253 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))))

(assert (=> b!4608728 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lambda!188043)))

(declare-fun lt!1765334 () Unit!109169)

(assert (=> b!4608728 (= lt!1765334 lt!1765326)))

(assert (=> b!4608728 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) lambda!188043)))

(declare-fun lt!1765323 () Unit!109169)

(declare-fun Unit!109208 () Unit!109169)

(assert (=> b!4608728 (= lt!1765323 Unit!109208)))

(declare-fun res!1929156 () Bool)

(assert (=> b!4608728 (= res!1929156 call!321390)))

(assert (=> b!4608728 (=> (not res!1929156) (not e!2874833))))

(assert (=> b!4608728 e!2874833))

(declare-fun lt!1765322 () Unit!109169)

(declare-fun Unit!109209 () Unit!109169)

(assert (=> b!4608728 (= lt!1765322 Unit!109209)))

(assert (=> b!4608729 (= e!2874834 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun lt!1765336 () Unit!109169)

(assert (=> b!4608729 (= lt!1765336 call!321388)))

(assert (=> b!4608729 call!321389))

(declare-fun lt!1765329 () Unit!109169)

(assert (=> b!4608729 (= lt!1765329 lt!1765336)))

(assert (=> b!4608729 call!321390))

(declare-fun lt!1765325 () Unit!109169)

(declare-fun Unit!109210 () Unit!109169)

(assert (=> b!4608729 (= lt!1765325 Unit!109210)))

(assert (= (and d!1452090 c!789461) b!4608729))

(assert (= (and d!1452090 (not c!789461)) b!4608728))

(assert (= (and b!4608728 res!1929156) b!4608725))

(assert (= (or b!4608729 b!4608728) bm!321384))

(assert (= (or b!4608729 b!4608728) bm!321385))

(assert (= (or b!4608729 b!4608728) bm!321383))

(assert (= (and d!1452090 res!1929155) b!4608727))

(assert (= (and b!4608727 res!1929157) b!4608726))

(declare-fun m!5439067 () Bool)

(assert (=> b!4608727 m!5439067))

(declare-fun m!5439069 () Bool)

(assert (=> d!1452090 m!5439069))

(declare-fun m!5439071 () Bool)

(assert (=> d!1452090 m!5439071))

(declare-fun m!5439073 () Bool)

(assert (=> b!4608728 m!5439073))

(assert (=> b!4608728 m!5438537))

(declare-fun m!5439075 () Bool)

(assert (=> b!4608728 m!5439075))

(declare-fun m!5439077 () Bool)

(assert (=> b!4608728 m!5439077))

(assert (=> b!4608728 m!5439073))

(declare-fun m!5439079 () Bool)

(assert (=> b!4608728 m!5439079))

(assert (=> b!4608728 m!5439077))

(assert (=> b!4608728 m!5438537))

(declare-fun m!5439081 () Bool)

(assert (=> b!4608728 m!5439081))

(declare-fun m!5439083 () Bool)

(assert (=> b!4608728 m!5439083))

(declare-fun m!5439085 () Bool)

(assert (=> b!4608728 m!5439085))

(assert (=> b!4608728 m!5439075))

(declare-fun m!5439087 () Bool)

(assert (=> b!4608728 m!5439087))

(declare-fun m!5439089 () Bool)

(assert (=> b!4608728 m!5439089))

(declare-fun m!5439091 () Bool)

(assert (=> b!4608728 m!5439091))

(assert (=> bm!321383 m!5438537))

(declare-fun m!5439093 () Bool)

(assert (=> bm!321383 m!5439093))

(declare-fun m!5439095 () Bool)

(assert (=> b!4608726 m!5439095))

(assert (=> b!4608725 m!5439073))

(declare-fun m!5439097 () Bool)

(assert (=> bm!321384 m!5439097))

(declare-fun m!5439099 () Bool)

(assert (=> bm!321385 m!5439099))

(assert (=> b!4608340 d!1452090))

(declare-fun bs!1015261 () Bool)

(declare-fun d!1452098 () Bool)

(assert (= bs!1015261 (and d!1452098 d!1451864)))

(declare-fun lambda!188045 () Int)

(assert (=> bs!1015261 (= lambda!188045 lambda!187963)))

(declare-fun bs!1015262 () Bool)

(assert (= bs!1015262 (and d!1452098 d!1451876)))

(assert (=> bs!1015262 (= lambda!188045 lambda!187967)))

(declare-fun bs!1015263 () Bool)

(assert (= bs!1015263 (and d!1452098 d!1451920)))

(assert (=> bs!1015263 (= lambda!188045 lambda!187976)))

(declare-fun bs!1015264 () Bool)

(assert (= bs!1015264 (and d!1452098 d!1451850)))

(assert (=> bs!1015264 (not (= lambda!188045 lambda!187953))))

(declare-fun bs!1015265 () Bool)

(assert (= bs!1015265 (and d!1452098 d!1451896)))

(assert (=> bs!1015265 (not (= lambda!188045 lambda!187968))))

(declare-fun bs!1015266 () Bool)

(assert (= bs!1015266 (and d!1452098 d!1451936)))

(assert (=> bs!1015266 (= lambda!188045 lambda!187982)))

(declare-fun bs!1015267 () Bool)

(assert (= bs!1015267 (and d!1452098 d!1451858)))

(assert (=> bs!1015267 (= lambda!188045 lambda!187960)))

(declare-fun bs!1015268 () Bool)

(assert (= bs!1015268 (and d!1452098 d!1451868)))

(assert (=> bs!1015268 (= lambda!188045 lambda!187964)))

(declare-fun bs!1015269 () Bool)

(assert (= bs!1015269 (and d!1452098 start!460702)))

(assert (=> bs!1015269 (= lambda!188045 lambda!187941)))

(declare-fun bs!1015270 () Bool)

(assert (= bs!1015270 (and d!1452098 d!1451900)))

(assert (=> bs!1015270 (= lambda!188045 lambda!187969)))

(declare-fun bs!1015271 () Bool)

(assert (= bs!1015271 (and d!1452098 d!1451902)))

(assert (=> bs!1015271 (= lambda!188045 lambda!187970)))

(declare-fun lt!1765344 () ListMap!4011)

(assert (=> d!1452098 (invariantList!1145 (toList!4750 lt!1765344))))

(declare-fun e!2874844 () ListMap!4011)

(assert (=> d!1452098 (= lt!1765344 e!2874844)))

(declare-fun c!789462 () Bool)

(assert (=> d!1452098 (= c!789462 (is-Cons!51200 (t!358318 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452098 (forall!10683 (t!358318 (t!358318 (toList!4749 lm!1477))) lambda!188045)))

(assert (=> d!1452098 (= (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477)))) lt!1765344)))

(declare-fun b!4608740 () Bool)

(assert (=> b!4608740 (= e!2874844 (addToMapMapFromBucket!837 (_2!29254 (h!57188 (t!358318 (t!358318 (toList!4749 lm!1477))))) (extractMap!1427 (t!358318 (t!358318 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun b!4608741 () Bool)

(assert (=> b!4608741 (= e!2874844 (ListMap!4012 Nil!51199))))

(assert (= (and d!1452098 c!789462) b!4608740))

(assert (= (and d!1452098 (not c!789462)) b!4608741))

(declare-fun m!5439115 () Bool)

(assert (=> d!1452098 m!5439115))

(declare-fun m!5439117 () Bool)

(assert (=> d!1452098 m!5439117))

(declare-fun m!5439119 () Bool)

(assert (=> b!4608740 m!5439119))

(assert (=> b!4608740 m!5439119))

(declare-fun m!5439121 () Bool)

(assert (=> b!4608740 m!5439121))

(assert (=> b!4608340 d!1452098))

(declare-fun bs!1015272 () Bool)

(declare-fun b!4608746 () Bool)

(assert (= bs!1015272 (and b!4608746 b!4608691)))

(declare-fun lambda!188046 () Int)

(assert (=> bs!1015272 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188046 lambda!188009))))

(declare-fun bs!1015273 () Bool)

(assert (= bs!1015273 (and b!4608746 b!4608699)))

(assert (=> bs!1015273 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188046 lambda!188010))))

(declare-fun bs!1015274 () Bool)

(assert (= bs!1015274 (and b!4608746 b!4608693)))

(assert (=> bs!1015274 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188046 lambda!188011))))

(assert (=> b!4608746 true))

(declare-fun bs!1015275 () Bool)

(declare-fun b!4608754 () Bool)

(assert (= bs!1015275 (and b!4608754 b!4608691)))

(declare-fun lambda!188047 () Int)

(assert (=> bs!1015275 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188047 lambda!188009))))

(declare-fun bs!1015276 () Bool)

(assert (= bs!1015276 (and b!4608754 b!4608699)))

(assert (=> bs!1015276 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188047 lambda!188010))))

(declare-fun bs!1015277 () Bool)

(assert (= bs!1015277 (and b!4608754 b!4608693)))

(assert (=> bs!1015277 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188047 lambda!188011))))

(declare-fun bs!1015278 () Bool)

(assert (= bs!1015278 (and b!4608754 b!4608746)))

(assert (=> bs!1015278 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188047 lambda!188046))))

(assert (=> b!4608754 true))

(declare-fun bs!1015279 () Bool)

(declare-fun b!4608748 () Bool)

(assert (= bs!1015279 (and b!4608748 b!4608754)))

(declare-fun lambda!188048 () Int)

(assert (=> bs!1015279 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188048 lambda!188047))))

(declare-fun bs!1015280 () Bool)

(assert (= bs!1015280 (and b!4608748 b!4608746)))

(assert (=> bs!1015280 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188048 lambda!188046))))

(declare-fun bs!1015281 () Bool)

(assert (= bs!1015281 (and b!4608748 b!4608693)))

(assert (=> bs!1015281 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188048 lambda!188011))))

(declare-fun bs!1015282 () Bool)

(assert (= bs!1015282 (and b!4608748 b!4608691)))

(assert (=> bs!1015282 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188048 lambda!188009))))

(declare-fun bs!1015283 () Bool)

(assert (= bs!1015283 (and b!4608748 b!4608699)))

(assert (=> bs!1015283 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188048 lambda!188010))))

(assert (=> b!4608748 true))

(declare-fun bs!1015284 () Bool)

(declare-fun b!4608752 () Bool)

(assert (= bs!1015284 (and b!4608752 b!4608697)))

(declare-fun lambda!188049 () Int)

(assert (=> bs!1015284 (= lambda!188049 lambda!188012)))

(assert (=> b!4608746 false))

(declare-fun lt!1765349 () Unit!109169)

(assert (=> b!4608746 (= lt!1765349 (forallContained!2930 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) lambda!188046 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))))

(declare-fun e!2874850 () Unit!109169)

(declare-fun Unit!109211 () Unit!109169)

(assert (=> b!4608746 (= e!2874850 Unit!109211)))

(declare-fun b!4608747 () Bool)

(declare-fun res!1929171 () Bool)

(declare-fun e!2874849 () Bool)

(assert (=> b!4608747 (=> (not res!1929171) (not e!2874849))))

(declare-fun lt!1765346 () List!51327)

(assert (=> b!4608747 (= res!1929171 (= (length!506 lt!1765346) (length!507 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))))

(declare-fun res!1929172 () Bool)

(assert (=> b!4608748 (=> (not res!1929172) (not e!2874849))))

(assert (=> b!4608748 (= res!1929172 (forall!10687 lt!1765346 lambda!188048))))

(declare-fun b!4608749 () Bool)

(declare-fun Unit!109212 () Unit!109169)

(assert (=> b!4608749 (= e!2874850 Unit!109212)))

(declare-fun b!4608750 () Bool)

(assert (=> b!4608750 false))

(declare-fun e!2874851 () Unit!109169)

(declare-fun Unit!109213 () Unit!109169)

(assert (=> b!4608750 (= e!2874851 Unit!109213)))

(declare-fun b!4608751 () Bool)

(declare-fun e!2874852 () List!51327)

(assert (=> b!4608751 (= e!2874852 Nil!51203)))

(declare-fun d!1452106 () Bool)

(assert (=> d!1452106 e!2874849))

(declare-fun res!1929170 () Bool)

(assert (=> d!1452106 (=> (not res!1929170) (not e!2874849))))

(assert (=> d!1452106 (= res!1929170 (noDuplicate!825 lt!1765346))))

(assert (=> d!1452106 (= lt!1765346 e!2874852)))

(declare-fun c!789463 () Bool)

(assert (=> d!1452106 (= c!789463 (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))

(assert (=> d!1452106 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))

(assert (=> d!1452106 (= (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) lt!1765346)))

(assert (=> b!4608752 (= e!2874849 (= (content!8694 lt!1765346) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) lambda!188049))))))

(declare-fun b!4608753 () Bool)

(declare-fun Unit!109214 () Unit!109169)

(assert (=> b!4608753 (= e!2874851 Unit!109214)))

(assert (=> b!4608754 (= e!2874852 (Cons!51203 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))))

(declare-fun c!789465 () Bool)

(assert (=> b!4608754 (= c!789465 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765352 () Unit!109169)

(assert (=> b!4608754 (= lt!1765352 e!2874851)))

(declare-fun c!789464 () Bool)

(assert (=> b!4608754 (= c!789464 (contains!14209 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765348 () Unit!109169)

(assert (=> b!4608754 (= lt!1765348 e!2874850)))

(declare-fun lt!1765351 () List!51327)

(assert (=> b!4608754 (= lt!1765351 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))))

(declare-fun lt!1765347 () Unit!109169)

(assert (=> b!4608754 (= lt!1765347 (lemmaForallContainsAddHeadPreserves!245 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) lt!1765351 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))))

(assert (=> b!4608754 (forall!10687 lt!1765351 lambda!188047)))

(declare-fun lt!1765350 () Unit!109169)

(assert (=> b!4608754 (= lt!1765350 lt!1765347)))

(assert (= (and d!1452106 c!789463) b!4608754))

(assert (= (and d!1452106 (not c!789463)) b!4608751))

(assert (= (and b!4608754 c!789465) b!4608750))

(assert (= (and b!4608754 (not c!789465)) b!4608753))

(assert (= (and b!4608754 c!789464) b!4608746))

(assert (= (and b!4608754 (not c!789464)) b!4608749))

(assert (= (and d!1452106 res!1929170) b!4608747))

(assert (= (and b!4608747 res!1929171) b!4608748))

(assert (= (and b!4608748 res!1929172) b!4608752))

(declare-fun m!5439125 () Bool)

(assert (=> d!1452106 m!5439125))

(assert (=> d!1452106 m!5438987))

(declare-fun m!5439127 () Bool)

(assert (=> b!4608754 m!5439127))

(declare-fun m!5439129 () Bool)

(assert (=> b!4608754 m!5439129))

(declare-fun m!5439131 () Bool)

(assert (=> b!4608754 m!5439131))

(declare-fun m!5439133 () Bool)

(assert (=> b!4608754 m!5439133))

(declare-fun m!5439135 () Bool)

(assert (=> b!4608754 m!5439135))

(assert (=> b!4608754 m!5439133))

(assert (=> b!4608746 m!5439133))

(assert (=> b!4608746 m!5439133))

(declare-fun m!5439139 () Bool)

(assert (=> b!4608746 m!5439139))

(declare-fun m!5439141 () Bool)

(assert (=> b!4608748 m!5439141))

(declare-fun m!5439143 () Bool)

(assert (=> b!4608752 m!5439143))

(declare-fun m!5439145 () Bool)

(assert (=> b!4608752 m!5439145))

(assert (=> b!4608752 m!5439145))

(declare-fun m!5439147 () Bool)

(assert (=> b!4608752 m!5439147))

(declare-fun m!5439149 () Bool)

(assert (=> b!4608747 m!5439149))

(declare-fun m!5439151 () Bool)

(assert (=> b!4608747 m!5439151))

(assert (=> b!4608428 d!1452106))

(declare-fun d!1452112 () Bool)

(declare-fun res!1929173 () Bool)

(declare-fun e!2874861 () Bool)

(assert (=> d!1452112 (=> res!1929173 e!2874861)))

(assert (=> d!1452112 (= res!1929173 (and (is-Cons!51199 (t!358317 newBucket!178)) (= (_1!29253 (h!57187 (t!358317 newBucket!178))) (_1!29253 (h!57187 newBucket!178)))))))

(assert (=> d!1452112 (= (containsKey!2249 (t!358317 newBucket!178) (_1!29253 (h!57187 newBucket!178))) e!2874861)))

(declare-fun b!4608771 () Bool)

(declare-fun e!2874862 () Bool)

(assert (=> b!4608771 (= e!2874861 e!2874862)))

(declare-fun res!1929174 () Bool)

(assert (=> b!4608771 (=> (not res!1929174) (not e!2874862))))

(assert (=> b!4608771 (= res!1929174 (is-Cons!51199 (t!358317 newBucket!178)))))

(declare-fun b!4608772 () Bool)

(assert (=> b!4608772 (= e!2874862 (containsKey!2249 (t!358317 (t!358317 newBucket!178)) (_1!29253 (h!57187 newBucket!178))))))

(assert (= (and d!1452112 (not res!1929173)) b!4608771))

(assert (= (and b!4608771 res!1929174) b!4608772))

(declare-fun m!5439155 () Bool)

(assert (=> b!4608772 m!5439155))

(assert (=> b!4608494 d!1452112))

(declare-fun bs!1015286 () Bool)

(declare-fun b!4608775 () Bool)

(assert (= bs!1015286 (and b!4608775 b!4608754)))

(declare-fun lambda!188050 () Int)

(assert (=> bs!1015286 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188050 lambda!188047))))

(declare-fun bs!1015287 () Bool)

(assert (= bs!1015287 (and b!4608775 b!4608746)))

(assert (=> bs!1015287 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188050 lambda!188046))))

(declare-fun bs!1015288 () Bool)

(assert (= bs!1015288 (and b!4608775 b!4608748)))

(assert (=> bs!1015288 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= lambda!188050 lambda!188048))))

(declare-fun bs!1015289 () Bool)

(assert (= bs!1015289 (and b!4608775 b!4608693)))

(assert (=> bs!1015289 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188050 lambda!188011))))

(declare-fun bs!1015290 () Bool)

(assert (= bs!1015290 (and b!4608775 b!4608691)))

(assert (=> bs!1015290 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188050 lambda!188009))))

(declare-fun bs!1015291 () Bool)

(assert (= bs!1015291 (and b!4608775 b!4608699)))

(assert (=> bs!1015291 (= (= (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188050 lambda!188010))))

(assert (=> b!4608775 true))

(declare-fun bs!1015292 () Bool)

(declare-fun b!4608783 () Bool)

(assert (= bs!1015292 (and b!4608783 b!4608754)))

(declare-fun lambda!188051 () Int)

(assert (=> bs!1015292 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188051 lambda!188047))))

(declare-fun bs!1015293 () Bool)

(assert (= bs!1015293 (and b!4608783 b!4608746)))

(assert (=> bs!1015293 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188051 lambda!188046))))

(declare-fun bs!1015294 () Bool)

(assert (= bs!1015294 (and b!4608783 b!4608748)))

(assert (=> bs!1015294 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= lambda!188051 lambda!188048))))

(declare-fun bs!1015295 () Bool)

(assert (= bs!1015295 (and b!4608783 b!4608693)))

(assert (=> bs!1015295 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188051 lambda!188011))))

(declare-fun bs!1015296 () Bool)

(assert (= bs!1015296 (and b!4608783 b!4608775)))

(assert (=> bs!1015296 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (= lambda!188051 lambda!188050))))

(declare-fun bs!1015297 () Bool)

(assert (= bs!1015297 (and b!4608783 b!4608691)))

(assert (=> bs!1015297 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188051 lambda!188009))))

(declare-fun bs!1015298 () Bool)

(assert (= bs!1015298 (and b!4608783 b!4608699)))

(assert (=> bs!1015298 (= (= (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188051 lambda!188010))))

(assert (=> b!4608783 true))

(declare-fun bs!1015299 () Bool)

(declare-fun b!4608777 () Bool)

(assert (= bs!1015299 (and b!4608777 b!4608754)))

(declare-fun lambda!188052 () Int)

(assert (=> bs!1015299 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188052 lambda!188047))))

(declare-fun bs!1015300 () Bool)

(assert (= bs!1015300 (and b!4608777 b!4608746)))

(assert (=> bs!1015300 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188052 lambda!188046))))

(declare-fun bs!1015301 () Bool)

(assert (= bs!1015301 (and b!4608777 b!4608783)))

(assert (=> bs!1015301 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))) (= lambda!188052 lambda!188051))))

(declare-fun bs!1015302 () Bool)

(assert (= bs!1015302 (and b!4608777 b!4608748)))

(assert (=> bs!1015302 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= lambda!188052 lambda!188048))))

(declare-fun bs!1015303 () Bool)

(assert (= bs!1015303 (and b!4608777 b!4608693)))

(assert (=> bs!1015303 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188052 lambda!188011))))

(declare-fun bs!1015304 () Bool)

(assert (= bs!1015304 (and b!4608777 b!4608775)))

(assert (=> bs!1015304 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (= lambda!188052 lambda!188050))))

(declare-fun bs!1015305 () Bool)

(assert (= bs!1015305 (and b!4608777 b!4608691)))

(assert (=> bs!1015305 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188052 lambda!188009))))

(declare-fun bs!1015306 () Bool)

(assert (= bs!1015306 (and b!4608777 b!4608699)))

(assert (=> bs!1015306 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188052 lambda!188010))))

(assert (=> b!4608777 true))

(declare-fun bs!1015307 () Bool)

(declare-fun b!4608781 () Bool)

(assert (= bs!1015307 (and b!4608781 b!4608697)))

(declare-fun lambda!188053 () Int)

(assert (=> bs!1015307 (= lambda!188053 lambda!188012)))

(declare-fun bs!1015308 () Bool)

(assert (= bs!1015308 (and b!4608781 b!4608752)))

(assert (=> bs!1015308 (= lambda!188053 lambda!188049)))

(assert (=> b!4608775 false))

(declare-fun lt!1765356 () Unit!109169)

(assert (=> b!4608775 (= lt!1765356 (forallContained!2930 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) lambda!188050 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))))

(declare-fun e!2874866 () Unit!109169)

(declare-fun Unit!109215 () Unit!109169)

(assert (=> b!4608775 (= e!2874866 Unit!109215)))

(declare-fun b!4608776 () Bool)

(declare-fun res!1929178 () Bool)

(declare-fun e!2874865 () Bool)

(assert (=> b!4608776 (=> (not res!1929178) (not e!2874865))))

(declare-fun lt!1765353 () List!51327)

(assert (=> b!4608776 (= res!1929178 (= (length!506 lt!1765353) (length!507 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))))

(declare-fun res!1929179 () Bool)

(assert (=> b!4608777 (=> (not res!1929179) (not e!2874865))))

(assert (=> b!4608777 (= res!1929179 (forall!10687 lt!1765353 lambda!188052))))

(declare-fun b!4608778 () Bool)

(declare-fun Unit!109216 () Unit!109169)

(assert (=> b!4608778 (= e!2874866 Unit!109216)))

(declare-fun b!4608779 () Bool)

(assert (=> b!4608779 false))

(declare-fun e!2874867 () Unit!109169)

(declare-fun Unit!109217 () Unit!109169)

(assert (=> b!4608779 (= e!2874867 Unit!109217)))

(declare-fun b!4608780 () Bool)

(declare-fun e!2874868 () List!51327)

(assert (=> b!4608780 (= e!2874868 Nil!51203)))

(declare-fun d!1452116 () Bool)

(assert (=> d!1452116 e!2874865))

(declare-fun res!1929177 () Bool)

(assert (=> d!1452116 (=> (not res!1929177) (not e!2874865))))

(assert (=> d!1452116 (= res!1929177 (noDuplicate!825 lt!1765353))))

(assert (=> d!1452116 (= lt!1765353 e!2874868)))

(declare-fun c!789474 () Bool)

(assert (=> d!1452116 (= c!789474 (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))

(assert (=> d!1452116 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))

(assert (=> d!1452116 (= (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) lt!1765353)))

(assert (=> b!4608781 (= e!2874865 (= (content!8694 lt!1765353) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) lambda!188053))))))

(declare-fun b!4608782 () Bool)

(declare-fun Unit!109218 () Unit!109169)

(assert (=> b!4608782 (= e!2874867 Unit!109218)))

(assert (=> b!4608783 (= e!2874868 (Cons!51203 (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))))

(declare-fun c!789476 () Bool)

(assert (=> b!4608783 (= c!789476 (containsKey!2251 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))))

(declare-fun lt!1765359 () Unit!109169)

(assert (=> b!4608783 (= lt!1765359 e!2874867)))

(declare-fun c!789475 () Bool)

(assert (=> b!4608783 (= c!789475 (contains!14209 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))))

(declare-fun lt!1765355 () Unit!109169)

(assert (=> b!4608783 (= lt!1765355 e!2874866)))

(declare-fun lt!1765358 () List!51327)

(assert (=> b!4608783 (= lt!1765358 (getKeysList!595 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))))

(declare-fun lt!1765354 () Unit!109169)

(assert (=> b!4608783 (= lt!1765354 (lemmaForallContainsAddHeadPreserves!245 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) lt!1765358 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))))

(assert (=> b!4608783 (forall!10687 lt!1765358 lambda!188051)))

(declare-fun lt!1765357 () Unit!109169)

(assert (=> b!4608783 (= lt!1765357 lt!1765354)))

(assert (= (and d!1452116 c!789474) b!4608783))

(assert (= (and d!1452116 (not c!789474)) b!4608780))

(assert (= (and b!4608783 c!789476) b!4608779))

(assert (= (and b!4608783 (not c!789476)) b!4608782))

(assert (= (and b!4608783 c!789475) b!4608775))

(assert (= (and b!4608783 (not c!789475)) b!4608778))

(assert (= (and d!1452116 res!1929177) b!4608776))

(assert (= (and b!4608776 res!1929178) b!4608777))

(assert (= (and b!4608777 res!1929179) b!4608781))

(declare-fun m!5439165 () Bool)

(assert (=> d!1452116 m!5439165))

(assert (=> d!1452116 m!5438999))

(declare-fun m!5439167 () Bool)

(assert (=> b!4608783 m!5439167))

(declare-fun m!5439169 () Bool)

(assert (=> b!4608783 m!5439169))

(declare-fun m!5439171 () Bool)

(assert (=> b!4608783 m!5439171))

(declare-fun m!5439175 () Bool)

(assert (=> b!4608783 m!5439175))

(declare-fun m!5439177 () Bool)

(assert (=> b!4608783 m!5439177))

(assert (=> b!4608783 m!5439175))

(assert (=> b!4608775 m!5439175))

(assert (=> b!4608775 m!5439175))

(declare-fun m!5439179 () Bool)

(assert (=> b!4608775 m!5439179))

(declare-fun m!5439181 () Bool)

(assert (=> b!4608777 m!5439181))

(declare-fun m!5439183 () Bool)

(assert (=> b!4608781 m!5439183))

(declare-fun m!5439185 () Bool)

(assert (=> b!4608781 m!5439185))

(assert (=> b!4608781 m!5439185))

(declare-fun m!5439187 () Bool)

(assert (=> b!4608781 m!5439187))

(declare-fun m!5439189 () Bool)

(assert (=> b!4608776 m!5439189))

(declare-fun m!5439191 () Bool)

(assert (=> b!4608776 m!5439191))

(assert (=> b!4608346 d!1452116))

(declare-fun d!1452126 () Bool)

(declare-fun res!1929186 () Bool)

(declare-fun e!2874877 () Bool)

(assert (=> d!1452126 (=> res!1929186 e!2874877)))

(assert (=> d!1452126 (= res!1929186 (and (is-Cons!51199 lt!1765150) (= (_1!29253 (h!57187 lt!1765150)) key!3287)))))

(assert (=> d!1452126 (= (containsKey!2249 lt!1765150 key!3287) e!2874877)))

(declare-fun b!4608794 () Bool)

(declare-fun e!2874878 () Bool)

(assert (=> b!4608794 (= e!2874877 e!2874878)))

(declare-fun res!1929187 () Bool)

(assert (=> b!4608794 (=> (not res!1929187) (not e!2874878))))

(assert (=> b!4608794 (= res!1929187 (is-Cons!51199 lt!1765150))))

(declare-fun b!4608795 () Bool)

(assert (=> b!4608795 (= e!2874878 (containsKey!2249 (t!358317 lt!1765150) key!3287))))

(assert (= (and d!1452126 (not res!1929186)) b!4608794))

(assert (= (and b!4608794 res!1929187) b!4608795))

(declare-fun m!5439197 () Bool)

(assert (=> b!4608795 m!5439197))

(assert (=> d!1451908 d!1452126))

(declare-fun d!1452130 () Bool)

(declare-fun res!1929188 () Bool)

(declare-fun e!2874879 () Bool)

(assert (=> d!1452130 (=> res!1929188 e!2874879)))

(assert (=> d!1452130 (= res!1929188 (not (is-Cons!51199 lt!1764987)))))

(assert (=> d!1452130 (= (noDuplicateKeys!1367 lt!1764987) e!2874879)))

(declare-fun b!4608796 () Bool)

(declare-fun e!2874880 () Bool)

(assert (=> b!4608796 (= e!2874879 e!2874880)))

(declare-fun res!1929189 () Bool)

(assert (=> b!4608796 (=> (not res!1929189) (not e!2874880))))

(assert (=> b!4608796 (= res!1929189 (not (containsKey!2249 (t!358317 lt!1764987) (_1!29253 (h!57187 lt!1764987)))))))

(declare-fun b!4608797 () Bool)

(assert (=> b!4608797 (= e!2874880 (noDuplicateKeys!1367 (t!358317 lt!1764987)))))

(assert (= (and d!1452130 (not res!1929188)) b!4608796))

(assert (= (and b!4608796 res!1929189) b!4608797))

(declare-fun m!5439199 () Bool)

(assert (=> b!4608796 m!5439199))

(declare-fun m!5439201 () Bool)

(assert (=> b!4608797 m!5439201))

(assert (=> d!1451908 d!1452130))

(declare-fun d!1452132 () Bool)

(declare-fun res!1929190 () Bool)

(declare-fun e!2874881 () Bool)

(assert (=> d!1452132 (=> res!1929190 e!2874881)))

(assert (=> d!1452132 (= res!1929190 (and (is-Cons!51200 (toList!4749 lm!1477)) (= (_1!29254 (h!57188 (toList!4749 lm!1477))) lt!1764980)))))

(assert (=> d!1452132 (= (containsKey!2252 (toList!4749 lm!1477) lt!1764980) e!2874881)))

(declare-fun b!4608798 () Bool)

(declare-fun e!2874882 () Bool)

(assert (=> b!4608798 (= e!2874881 e!2874882)))

(declare-fun res!1929191 () Bool)

(assert (=> b!4608798 (=> (not res!1929191) (not e!2874882))))

(assert (=> b!4608798 (= res!1929191 (and (or (not (is-Cons!51200 (toList!4749 lm!1477))) (bvsle (_1!29254 (h!57188 (toList!4749 lm!1477))) lt!1764980)) (is-Cons!51200 (toList!4749 lm!1477)) (bvslt (_1!29254 (h!57188 (toList!4749 lm!1477))) lt!1764980)))))

(declare-fun b!4608799 () Bool)

(assert (=> b!4608799 (= e!2874882 (containsKey!2252 (t!358318 (toList!4749 lm!1477)) lt!1764980))))

(assert (= (and d!1452132 (not res!1929190)) b!4608798))

(assert (= (and b!4608798 res!1929191) b!4608799))

(declare-fun m!5439203 () Bool)

(assert (=> b!4608799 m!5439203))

(assert (=> d!1451914 d!1452132))

(assert (=> b!4608440 d!1451912))

(declare-fun d!1452134 () Bool)

(declare-fun res!1929193 () Bool)

(declare-fun e!2874884 () Bool)

(assert (=> d!1452134 (=> res!1929193 e!2874884)))

(declare-fun e!2874883 () Bool)

(assert (=> d!1452134 (= res!1929193 e!2874883)))

(declare-fun res!1929194 () Bool)

(assert (=> d!1452134 (=> (not res!1929194) (not e!2874883))))

(assert (=> d!1452134 (= res!1929194 (is-Cons!51200 (t!358318 (toList!4749 lt!1764988))))))

(assert (=> d!1452134 (= (containsKeyBiggerList!307 (t!358318 (toList!4749 lt!1764988)) key!3287) e!2874884)))

(declare-fun b!4608800 () Bool)

(assert (=> b!4608800 (= e!2874883 (containsKey!2249 (_2!29254 (h!57188 (t!358318 (toList!4749 lt!1764988)))) key!3287))))

(declare-fun b!4608801 () Bool)

(declare-fun e!2874885 () Bool)

(assert (=> b!4608801 (= e!2874884 e!2874885)))

(declare-fun res!1929192 () Bool)

(assert (=> b!4608801 (=> (not res!1929192) (not e!2874885))))

(assert (=> b!4608801 (= res!1929192 (is-Cons!51200 (t!358318 (toList!4749 lt!1764988))))))

(declare-fun b!4608802 () Bool)

(assert (=> b!4608802 (= e!2874885 (containsKeyBiggerList!307 (t!358318 (t!358318 (toList!4749 lt!1764988))) key!3287))))

(assert (= (and d!1452134 res!1929194) b!4608800))

(assert (= (and d!1452134 (not res!1929193)) b!4608801))

(assert (= (and b!4608801 res!1929192) b!4608802))

(declare-fun m!5439205 () Bool)

(assert (=> b!4608800 m!5439205))

(declare-fun m!5439207 () Bool)

(assert (=> b!4608802 m!5439207))

(assert (=> b!4608484 d!1452134))

(assert (=> d!1451894 d!1452028))

(declare-fun b!4608805 () Bool)

(declare-fun e!2874886 () List!51323)

(assert (=> b!4608805 (= e!2874886 (Cons!51199 (h!57187 (t!358317 lt!1764987)) (removePairForKey!992 (t!358317 (t!358317 lt!1764987)) key!3287)))))

(declare-fun b!4608804 () Bool)

(declare-fun e!2874887 () List!51323)

(assert (=> b!4608804 (= e!2874887 e!2874886)))

(declare-fun c!789480 () Bool)

(assert (=> b!4608804 (= c!789480 (is-Cons!51199 (t!358317 lt!1764987)))))

(declare-fun b!4608806 () Bool)

(assert (=> b!4608806 (= e!2874886 Nil!51199)))

(declare-fun b!4608803 () Bool)

(assert (=> b!4608803 (= e!2874887 (t!358317 (t!358317 lt!1764987)))))

(declare-fun d!1452136 () Bool)

(declare-fun lt!1765363 () List!51323)

(assert (=> d!1452136 (not (containsKey!2249 lt!1765363 key!3287))))

(assert (=> d!1452136 (= lt!1765363 e!2874887)))

(declare-fun c!789479 () Bool)

(assert (=> d!1452136 (= c!789479 (and (is-Cons!51199 (t!358317 lt!1764987)) (= (_1!29253 (h!57187 (t!358317 lt!1764987))) key!3287)))))

(assert (=> d!1452136 (noDuplicateKeys!1367 (t!358317 lt!1764987))))

(assert (=> d!1452136 (= (removePairForKey!992 (t!358317 lt!1764987) key!3287) lt!1765363)))

(assert (= (and d!1452136 c!789479) b!4608803))

(assert (= (and d!1452136 (not c!789479)) b!4608804))

(assert (= (and b!4608804 c!789480) b!4608805))

(assert (= (and b!4608804 (not c!789480)) b!4608806))

(declare-fun m!5439209 () Bool)

(assert (=> b!4608805 m!5439209))

(declare-fun m!5439211 () Bool)

(assert (=> d!1452136 m!5439211))

(assert (=> d!1452136 m!5439201))

(assert (=> b!4608438 d!1452136))

(declare-fun d!1452138 () Bool)

(declare-fun c!789483 () Bool)

(assert (=> d!1452138 (= c!789483 (is-Nil!51200 (toList!4749 lm!1477)))))

(declare-fun e!2874896 () (Set tuple2!51920))

(assert (=> d!1452138 (= (content!8692 (toList!4749 lm!1477)) e!2874896)))

(declare-fun b!4608817 () Bool)

(assert (=> b!4608817 (= e!2874896 (as set.empty (Set tuple2!51920)))))

(declare-fun b!4608818 () Bool)

(assert (=> b!4608818 (= e!2874896 (set.union (set.insert (h!57188 (toList!4749 lm!1477)) (as set.empty (Set tuple2!51920))) (content!8692 (t!358318 (toList!4749 lm!1477)))))))

(assert (= (and d!1452138 c!789483) b!4608817))

(assert (= (and d!1452138 (not c!789483)) b!4608818))

(declare-fun m!5439219 () Bool)

(assert (=> b!4608818 m!5439219))

(assert (=> b!4608818 m!5438573))

(assert (=> d!1451912 d!1452138))

(declare-fun d!1452142 () Bool)

(declare-fun e!2874898 () Bool)

(assert (=> d!1452142 e!2874898))

(declare-fun res!1929201 () Bool)

(assert (=> d!1452142 (=> res!1929201 e!2874898)))

(declare-fun lt!1765370 () Bool)

(assert (=> d!1452142 (= res!1929201 (not lt!1765370))))

(declare-fun lt!1765368 () Bool)

(assert (=> d!1452142 (= lt!1765370 lt!1765368)))

(declare-fun lt!1765369 () Unit!109169)

(declare-fun e!2874897 () Unit!109169)

(assert (=> d!1452142 (= lt!1765369 e!2874897)))

(declare-fun c!789484 () Bool)

(assert (=> d!1452142 (= c!789484 lt!1765368)))

(assert (=> d!1452142 (= lt!1765368 (containsKey!2252 (toList!4749 lm!1477) (hash!3300 hashF!1107 key!3287)))))

(assert (=> d!1452142 (= (contains!14204 lm!1477 (hash!3300 hashF!1107 key!3287)) lt!1765370)))

(declare-fun b!4608819 () Bool)

(declare-fun lt!1765367 () Unit!109169)

(assert (=> b!4608819 (= e!2874897 lt!1765367)))

(assert (=> b!4608819 (= lt!1765367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lm!1477) (hash!3300 hashF!1107 key!3287)))))

(assert (=> b!4608819 (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) (hash!3300 hashF!1107 key!3287)))))

(declare-fun b!4608820 () Bool)

(declare-fun Unit!109219 () Unit!109169)

(assert (=> b!4608820 (= e!2874897 Unit!109219)))

(declare-fun b!4608821 () Bool)

(assert (=> b!4608821 (= e!2874898 (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) (hash!3300 hashF!1107 key!3287))))))

(assert (= (and d!1452142 c!789484) b!4608819))

(assert (= (and d!1452142 (not c!789484)) b!4608820))

(assert (= (and d!1452142 (not res!1929201)) b!4608821))

(assert (=> d!1452142 m!5438367))

(declare-fun m!5439221 () Bool)

(assert (=> d!1452142 m!5439221))

(assert (=> b!4608819 m!5438367))

(declare-fun m!5439223 () Bool)

(assert (=> b!4608819 m!5439223))

(assert (=> b!4608819 m!5438367))

(declare-fun m!5439225 () Bool)

(assert (=> b!4608819 m!5439225))

(assert (=> b!4608819 m!5439225))

(declare-fun m!5439227 () Bool)

(assert (=> b!4608819 m!5439227))

(assert (=> b!4608821 m!5438367))

(assert (=> b!4608821 m!5439225))

(assert (=> b!4608821 m!5439225))

(assert (=> b!4608821 m!5439227))

(assert (=> d!1451902 d!1452142))

(assert (=> d!1451902 d!1451930))

(declare-fun d!1452144 () Bool)

(assert (=> d!1452144 (contains!14204 lm!1477 (hash!3300 hashF!1107 key!3287))))

(assert (=> d!1452144 true))

(declare-fun _$27!1478 () Unit!109169)

(assert (=> d!1452144 (= (choose!30997 lm!1477 key!3287 hashF!1107) _$27!1478)))

(declare-fun bs!1015310 () Bool)

(assert (= bs!1015310 d!1452144))

(assert (=> bs!1015310 m!5438367))

(assert (=> bs!1015310 m!5438367))

(assert (=> bs!1015310 m!5438681))

(assert (=> d!1451902 d!1452144))

(declare-fun d!1452146 () Bool)

(declare-fun res!1929202 () Bool)

(declare-fun e!2874899 () Bool)

(assert (=> d!1452146 (=> res!1929202 e!2874899)))

(assert (=> d!1452146 (= res!1929202 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1452146 (= (forall!10683 (toList!4749 lm!1477) lambda!187970) e!2874899)))

(declare-fun b!4608822 () Bool)

(declare-fun e!2874900 () Bool)

(assert (=> b!4608822 (= e!2874899 e!2874900)))

(declare-fun res!1929203 () Bool)

(assert (=> b!4608822 (=> (not res!1929203) (not e!2874900))))

(assert (=> b!4608822 (= res!1929203 (dynLambda!21432 lambda!187970 (h!57188 (toList!4749 lm!1477))))))

(declare-fun b!4608823 () Bool)

(assert (=> b!4608823 (= e!2874900 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187970))))

(assert (= (and d!1452146 (not res!1929202)) b!4608822))

(assert (= (and b!4608822 res!1929203) b!4608823))

(declare-fun b_lambda!170269 () Bool)

(assert (=> (not b_lambda!170269) (not b!4608822)))

(declare-fun m!5439229 () Bool)

(assert (=> b!4608822 m!5439229))

(declare-fun m!5439231 () Bool)

(assert (=> b!4608823 m!5439231))

(assert (=> d!1451902 d!1452146))

(declare-fun d!1452148 () Bool)

(declare-fun noDuplicatedKeys!339 (List!51323) Bool)

(assert (=> d!1452148 (= (invariantList!1145 (toList!4750 lt!1765082)) (noDuplicatedKeys!339 (toList!4750 lt!1765082)))))

(declare-fun bs!1015311 () Bool)

(assert (= bs!1015311 d!1452148))

(declare-fun m!5439233 () Bool)

(assert (=> bs!1015311 m!5439233))

(assert (=> d!1451868 d!1452148))

(declare-fun d!1452150 () Bool)

(declare-fun res!1929204 () Bool)

(declare-fun e!2874901 () Bool)

(assert (=> d!1452150 (=> res!1929204 e!2874901)))

(assert (=> d!1452150 (= res!1929204 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452150 (= (forall!10683 (toList!4749 lt!1764988) lambda!187964) e!2874901)))

(declare-fun b!4608824 () Bool)

(declare-fun e!2874902 () Bool)

(assert (=> b!4608824 (= e!2874901 e!2874902)))

(declare-fun res!1929205 () Bool)

(assert (=> b!4608824 (=> (not res!1929205) (not e!2874902))))

(assert (=> b!4608824 (= res!1929205 (dynLambda!21432 lambda!187964 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608825 () Bool)

(assert (=> b!4608825 (= e!2874902 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187964))))

(assert (= (and d!1452150 (not res!1929204)) b!4608824))

(assert (= (and b!4608824 res!1929205) b!4608825))

(declare-fun b_lambda!170271 () Bool)

(assert (=> (not b_lambda!170271) (not b!4608824)))

(declare-fun m!5439235 () Bool)

(assert (=> b!4608824 m!5439235))

(declare-fun m!5439237 () Bool)

(assert (=> b!4608825 m!5439237))

(assert (=> d!1451868 d!1452150))

(declare-fun d!1452152 () Bool)

(assert (=> d!1452152 (= (invariantList!1145 (toList!4750 lt!1765147)) (noDuplicatedKeys!339 (toList!4750 lt!1765147)))))

(declare-fun bs!1015312 () Bool)

(assert (= bs!1015312 d!1452152))

(declare-fun m!5439239 () Bool)

(assert (=> bs!1015312 m!5439239))

(assert (=> d!1451900 d!1452152))

(declare-fun d!1452154 () Bool)

(declare-fun res!1929206 () Bool)

(declare-fun e!2874903 () Bool)

(assert (=> d!1452154 (=> res!1929206 e!2874903)))

(assert (=> d!1452154 (= res!1929206 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1452154 (= (forall!10683 (toList!4749 lm!1477) lambda!187969) e!2874903)))

(declare-fun b!4608826 () Bool)

(declare-fun e!2874904 () Bool)

(assert (=> b!4608826 (= e!2874903 e!2874904)))

(declare-fun res!1929207 () Bool)

(assert (=> b!4608826 (=> (not res!1929207) (not e!2874904))))

(assert (=> b!4608826 (= res!1929207 (dynLambda!21432 lambda!187969 (h!57188 (toList!4749 lm!1477))))))

(declare-fun b!4608827 () Bool)

(assert (=> b!4608827 (= e!2874904 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187969))))

(assert (= (and d!1452154 (not res!1929206)) b!4608826))

(assert (= (and b!4608826 res!1929207) b!4608827))

(declare-fun b_lambda!170273 () Bool)

(assert (=> (not b_lambda!170273) (not b!4608826)))

(declare-fun m!5439241 () Bool)

(assert (=> b!4608826 m!5439241))

(declare-fun m!5439243 () Bool)

(assert (=> b!4608827 m!5439243))

(assert (=> d!1451900 d!1452154))

(declare-fun d!1452156 () Bool)

(declare-fun res!1929214 () Bool)

(declare-fun e!2874907 () Bool)

(assert (=> d!1452156 (=> res!1929214 e!2874907)))

(assert (=> d!1452156 (= res!1929214 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1452156 (= (forall!10683 (toList!4749 lm!1477) lambda!187968) e!2874907)))

(declare-fun b!4608832 () Bool)

(declare-fun e!2874908 () Bool)

(assert (=> b!4608832 (= e!2874907 e!2874908)))

(declare-fun res!1929215 () Bool)

(assert (=> b!4608832 (=> (not res!1929215) (not e!2874908))))

(assert (=> b!4608832 (= res!1929215 (dynLambda!21432 lambda!187968 (h!57188 (toList!4749 lm!1477))))))

(declare-fun b!4608833 () Bool)

(assert (=> b!4608833 (= e!2874908 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187968))))

(assert (= (and d!1452156 (not res!1929214)) b!4608832))

(assert (= (and b!4608832 res!1929215) b!4608833))

(declare-fun b_lambda!170275 () Bool)

(assert (=> (not b_lambda!170275) (not b!4608832)))

(declare-fun m!5439245 () Bool)

(assert (=> b!4608832 m!5439245))

(declare-fun m!5439247 () Bool)

(assert (=> b!4608833 m!5439247))

(assert (=> d!1451896 d!1452156))

(declare-fun d!1452158 () Bool)

(declare-fun lt!1765373 () Bool)

(assert (=> d!1452158 (= lt!1765373 (set.member key!3287 (content!8694 e!2874621)))))

(declare-fun e!2874910 () Bool)

(assert (=> d!1452158 (= lt!1765373 e!2874910)))

(declare-fun res!1929217 () Bool)

(assert (=> d!1452158 (=> (not res!1929217) (not e!2874910))))

(assert (=> d!1452158 (= res!1929217 (is-Cons!51203 e!2874621))))

(assert (=> d!1452158 (= (contains!14209 e!2874621 key!3287) lt!1765373)))

(declare-fun b!4608834 () Bool)

(declare-fun e!2874909 () Bool)

(assert (=> b!4608834 (= e!2874910 e!2874909)))

(declare-fun res!1929216 () Bool)

(assert (=> b!4608834 (=> res!1929216 e!2874909)))

(assert (=> b!4608834 (= res!1929216 (= (h!57192 e!2874621) key!3287))))

(declare-fun b!4608835 () Bool)

(assert (=> b!4608835 (= e!2874909 (contains!14209 (t!358321 e!2874621) key!3287))))

(assert (= (and d!1452158 res!1929217) b!4608834))

(assert (= (and b!4608834 (not res!1929216)) b!4608835))

(declare-fun m!5439249 () Bool)

(assert (=> d!1452158 m!5439249))

(declare-fun m!5439251 () Bool)

(assert (=> d!1452158 m!5439251))

(declare-fun m!5439253 () Bool)

(assert (=> b!4608835 m!5439253))

(assert (=> bm!321374 d!1452158))

(declare-fun d!1452160 () Bool)

(declare-fun res!1929219 () Bool)

(declare-fun e!2874912 () Bool)

(assert (=> d!1452160 (=> res!1929219 e!2874912)))

(declare-fun e!2874911 () Bool)

(assert (=> d!1452160 (= res!1929219 e!2874911)))

(declare-fun res!1929220 () Bool)

(assert (=> d!1452160 (=> (not res!1929220) (not e!2874911))))

(assert (=> d!1452160 (= res!1929220 (is-Cons!51200 (t!358318 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452160 (= (containsKeyBiggerList!307 (t!358318 (t!358318 (toList!4749 lm!1477))) key!3287) e!2874912)))

(declare-fun b!4608838 () Bool)

(assert (=> b!4608838 (= e!2874911 (containsKey!2249 (_2!29254 (h!57188 (t!358318 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(declare-fun b!4608839 () Bool)

(declare-fun e!2874913 () Bool)

(assert (=> b!4608839 (= e!2874912 e!2874913)))

(declare-fun res!1929218 () Bool)

(assert (=> b!4608839 (=> (not res!1929218) (not e!2874913))))

(assert (=> b!4608839 (= res!1929218 (is-Cons!51200 (t!358318 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun b!4608840 () Bool)

(assert (=> b!4608840 (= e!2874913 (containsKeyBiggerList!307 (t!358318 (t!358318 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (= (and d!1452160 res!1929220) b!4608838))

(assert (= (and d!1452160 (not res!1929219)) b!4608839))

(assert (= (and b!4608839 res!1929218) b!4608840))

(declare-fun m!5439255 () Bool)

(assert (=> b!4608838 m!5439255))

(declare-fun m!5439257 () Bool)

(assert (=> b!4608840 m!5439257))

(assert (=> b!4608481 d!1452160))

(declare-fun d!1452162 () Bool)

(declare-fun lt!1765374 () Bool)

(assert (=> d!1452162 (= lt!1765374 (set.member key!3287 (content!8694 e!2874562)))))

(declare-fun e!2874915 () Bool)

(assert (=> d!1452162 (= lt!1765374 e!2874915)))

(declare-fun res!1929222 () Bool)

(assert (=> d!1452162 (=> (not res!1929222) (not e!2874915))))

(assert (=> d!1452162 (= res!1929222 (is-Cons!51203 e!2874562))))

(assert (=> d!1452162 (= (contains!14209 e!2874562 key!3287) lt!1765374)))

(declare-fun b!4608841 () Bool)

(declare-fun e!2874914 () Bool)

(assert (=> b!4608841 (= e!2874915 e!2874914)))

(declare-fun res!1929221 () Bool)

(assert (=> b!4608841 (=> res!1929221 e!2874914)))

(assert (=> b!4608841 (= res!1929221 (= (h!57192 e!2874562) key!3287))))

(declare-fun b!4608842 () Bool)

(assert (=> b!4608842 (= e!2874914 (contains!14209 (t!358321 e!2874562) key!3287))))

(assert (= (and d!1452162 res!1929222) b!4608841))

(assert (= (and b!4608841 (not res!1929221)) b!4608842))

(declare-fun m!5439259 () Bool)

(assert (=> d!1452162 m!5439259))

(declare-fun m!5439261 () Bool)

(assert (=> d!1452162 m!5439261))

(declare-fun m!5439263 () Bool)

(assert (=> b!4608842 m!5439263))

(assert (=> bm!321370 d!1452162))

(declare-fun d!1452164 () Bool)

(declare-fun res!1929223 () Bool)

(declare-fun e!2874916 () Bool)

(assert (=> d!1452164 (=> res!1929223 e!2874916)))

(assert (=> d!1452164 (= res!1929223 (not (is-Cons!51199 (_2!29254 lt!1764976))))))

(assert (=> d!1452164 (= (noDuplicateKeys!1367 (_2!29254 lt!1764976)) e!2874916)))

(declare-fun b!4608843 () Bool)

(declare-fun e!2874917 () Bool)

(assert (=> b!4608843 (= e!2874916 e!2874917)))

(declare-fun res!1929224 () Bool)

(assert (=> b!4608843 (=> (not res!1929224) (not e!2874917))))

(assert (=> b!4608843 (= res!1929224 (not (containsKey!2249 (t!358317 (_2!29254 lt!1764976)) (_1!29253 (h!57187 (_2!29254 lt!1764976))))))))

(declare-fun b!4608844 () Bool)

(assert (=> b!4608844 (= e!2874917 (noDuplicateKeys!1367 (t!358317 (_2!29254 lt!1764976))))))

(assert (= (and d!1452164 (not res!1929223)) b!4608843))

(assert (= (and b!4608843 res!1929224) b!4608844))

(declare-fun m!5439265 () Bool)

(assert (=> b!4608843 m!5439265))

(declare-fun m!5439267 () Bool)

(assert (=> b!4608844 m!5439267))

(assert (=> bs!1015173 d!1452164))

(declare-fun d!1452166 () Bool)

(declare-fun lt!1765375 () Int)

(assert (=> d!1452166 (>= lt!1765375 0)))

(declare-fun e!2874918 () Int)

(assert (=> d!1452166 (= lt!1765375 e!2874918)))

(declare-fun c!789485 () Bool)

(assert (=> d!1452166 (= c!789485 (is-Nil!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1452166 (= (size!35961 (t!358318 (toList!4749 lm!1477))) lt!1765375)))

(declare-fun b!4608845 () Bool)

(assert (=> b!4608845 (= e!2874918 0)))

(declare-fun b!4608846 () Bool)

(assert (=> b!4608846 (= e!2874918 (+ 1 (size!35961 (t!358318 (t!358318 (toList!4749 lm!1477))))))))

(assert (= (and d!1452166 c!789485) b!4608845))

(assert (= (and d!1452166 (not c!789485)) b!4608846))

(declare-fun m!5439269 () Bool)

(assert (=> b!4608846 m!5439269))

(assert (=> b!4608453 d!1452166))

(declare-fun d!1452168 () Bool)

(declare-fun res!1929225 () Bool)

(declare-fun e!2874919 () Bool)

(assert (=> d!1452168 (=> res!1929225 e!2874919)))

(assert (=> d!1452168 (= res!1929225 (and (is-Cons!51200 (toList!4749 lt!1764988)) (= (_1!29254 (h!57188 (toList!4749 lt!1764988))) hash!344)))))

(assert (=> d!1452168 (= (containsKey!2252 (toList!4749 lt!1764988) hash!344) e!2874919)))

(declare-fun b!4608847 () Bool)

(declare-fun e!2874920 () Bool)

(assert (=> b!4608847 (= e!2874919 e!2874920)))

(declare-fun res!1929226 () Bool)

(assert (=> b!4608847 (=> (not res!1929226) (not e!2874920))))

(assert (=> b!4608847 (= res!1929226 (and (or (not (is-Cons!51200 (toList!4749 lt!1764988))) (bvsle (_1!29254 (h!57188 (toList!4749 lt!1764988))) hash!344)) (is-Cons!51200 (toList!4749 lt!1764988)) (bvslt (_1!29254 (h!57188 (toList!4749 lt!1764988))) hash!344)))))

(declare-fun b!4608848 () Bool)

(assert (=> b!4608848 (= e!2874920 (containsKey!2252 (t!358318 (toList!4749 lt!1764988)) hash!344))))

(assert (= (and d!1452168 (not res!1929225)) b!4608847))

(assert (= (and b!4608847 res!1929226) b!4608848))

(declare-fun m!5439271 () Bool)

(assert (=> b!4608848 m!5439271))

(assert (=> d!1451888 d!1452168))

(assert (=> b!4608397 d!1452086))

(assert (=> b!4608397 d!1452088))

(assert (=> d!1451936 d!1451934))

(declare-fun d!1452170 () Bool)

(assert (=> d!1452170 (containsKeyBiggerList!307 (toList!4749 lt!1764988) key!3287)))

(assert (=> d!1452170 true))

(declare-fun _$33!781 () Unit!109169)

(assert (=> d!1452170 (= (choose!31002 lt!1764988 key!3287 hashF!1107) _$33!781)))

(declare-fun bs!1015313 () Bool)

(assert (= bs!1015313 d!1452170))

(assert (=> bs!1015313 m!5438359))

(assert (=> d!1451936 d!1452170))

(declare-fun d!1452172 () Bool)

(declare-fun res!1929230 () Bool)

(declare-fun e!2874922 () Bool)

(assert (=> d!1452172 (=> res!1929230 e!2874922)))

(assert (=> d!1452172 (= res!1929230 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452172 (= (forall!10683 (toList!4749 lt!1764988) lambda!187982) e!2874922)))

(declare-fun b!4608854 () Bool)

(declare-fun e!2874923 () Bool)

(assert (=> b!4608854 (= e!2874922 e!2874923)))

(declare-fun res!1929231 () Bool)

(assert (=> b!4608854 (=> (not res!1929231) (not e!2874923))))

(assert (=> b!4608854 (= res!1929231 (dynLambda!21432 lambda!187982 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608855 () Bool)

(assert (=> b!4608855 (= e!2874923 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187982))))

(assert (= (and d!1452172 (not res!1929230)) b!4608854))

(assert (= (and b!4608854 res!1929231) b!4608855))

(declare-fun b_lambda!170277 () Bool)

(assert (=> (not b_lambda!170277) (not b!4608854)))

(declare-fun m!5439285 () Bool)

(assert (=> b!4608854 m!5439285))

(declare-fun m!5439289 () Bool)

(assert (=> b!4608855 m!5439289))

(assert (=> d!1451936 d!1452172))

(declare-fun d!1452174 () Bool)

(assert (=> d!1452174 (= (get!16937 (getValueByKey!1356 (toList!4749 lm!1477) hash!344)) (v!45491 (getValueByKey!1356 (toList!4749 lm!1477) hash!344)))))

(assert (=> d!1451904 d!1452174))

(assert (=> d!1451904 d!1452070))

(declare-fun d!1452178 () Bool)

(declare-fun res!1929232 () Bool)

(declare-fun e!2874926 () Bool)

(assert (=> d!1452178 (=> res!1929232 e!2874926)))

(assert (=> d!1452178 (= res!1929232 (and (is-Cons!51199 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))) (= (_1!29253 (h!57187 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))))) key!3287)))))

(assert (=> d!1452178 (= (containsKey!2249 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477)))) key!3287) e!2874926)))

(declare-fun b!4608860 () Bool)

(declare-fun e!2874927 () Bool)

(assert (=> b!4608860 (= e!2874926 e!2874927)))

(declare-fun res!1929233 () Bool)

(assert (=> b!4608860 (=> (not res!1929233) (not e!2874927))))

(assert (=> b!4608860 (= res!1929233 (is-Cons!51199 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))

(declare-fun b!4608861 () Bool)

(assert (=> b!4608861 (= e!2874927 (containsKey!2249 (t!358317 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(assert (= (and d!1452178 (not res!1929232)) b!4608860))

(assert (= (and b!4608860 res!1929233) b!4608861))

(declare-fun m!5439291 () Bool)

(assert (=> b!4608861 m!5439291))

(assert (=> b!4608479 d!1452178))

(declare-fun d!1452180 () Bool)

(declare-fun lt!1765378 () Bool)

(assert (=> d!1452180 (= lt!1765378 (set.member key!3287 (content!8694 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun e!2874929 () Bool)

(assert (=> d!1452180 (= lt!1765378 e!2874929)))

(declare-fun res!1929235 () Bool)

(assert (=> d!1452180 (=> (not res!1929235) (not e!2874929))))

(assert (=> d!1452180 (= res!1929235 (is-Cons!51203 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> d!1452180 (= (contains!14209 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) lt!1765378)))

(declare-fun b!4608862 () Bool)

(declare-fun e!2874928 () Bool)

(assert (=> b!4608862 (= e!2874929 e!2874928)))

(declare-fun res!1929234 () Bool)

(assert (=> b!4608862 (=> res!1929234 e!2874928)))

(assert (=> b!4608862 (= res!1929234 (= (h!57192 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(declare-fun b!4608863 () Bool)

(assert (=> b!4608863 (= e!2874928 (contains!14209 (t!358321 (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(assert (= (and d!1452180 res!1929235) b!4608862))

(assert (= (and b!4608862 (not res!1929234)) b!4608863))

(assert (=> d!1452180 m!5438499))

(declare-fun m!5439299 () Bool)

(assert (=> d!1452180 m!5439299))

(declare-fun m!5439301 () Bool)

(assert (=> d!1452180 m!5439301))

(declare-fun m!5439303 () Bool)

(assert (=> b!4608863 m!5439303))

(assert (=> b!4608322 d!1452180))

(declare-fun bs!1015317 () Bool)

(declare-fun b!4608887 () Bool)

(assert (= bs!1015317 (and b!4608887 b!4608754)))

(declare-fun lambda!188064 () Int)

(assert (=> bs!1015317 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188064 lambda!188047))))

(declare-fun bs!1015318 () Bool)

(assert (= bs!1015318 (and b!4608887 b!4608746)))

(assert (=> bs!1015318 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188064 lambda!188046))))

(declare-fun bs!1015319 () Bool)

(assert (= bs!1015319 (and b!4608887 b!4608777)))

(assert (=> bs!1015319 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (= lambda!188064 lambda!188052))))

(declare-fun bs!1015320 () Bool)

(assert (= bs!1015320 (and b!4608887 b!4608783)))

(assert (=> bs!1015320 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))) (= lambda!188064 lambda!188051))))

(declare-fun bs!1015321 () Bool)

(assert (= bs!1015321 (and b!4608887 b!4608748)))

(assert (=> bs!1015321 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= lambda!188064 lambda!188048))))

(declare-fun bs!1015322 () Bool)

(assert (= bs!1015322 (and b!4608887 b!4608693)))

(assert (=> bs!1015322 (= lambda!188064 lambda!188011)))

(declare-fun bs!1015323 () Bool)

(assert (= bs!1015323 (and b!4608887 b!4608775)))

(assert (=> bs!1015323 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (= lambda!188064 lambda!188050))))

(declare-fun bs!1015324 () Bool)

(assert (= bs!1015324 (and b!4608887 b!4608691)))

(assert (=> bs!1015324 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188064 lambda!188009))))

(declare-fun bs!1015325 () Bool)

(assert (= bs!1015325 (and b!4608887 b!4608699)))

(assert (=> bs!1015325 (= (= (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188064 lambda!188010))))

(assert (=> b!4608887 true))

(declare-fun bs!1015326 () Bool)

(declare-fun b!4608888 () Bool)

(assert (= bs!1015326 (and b!4608888 b!4608697)))

(declare-fun lambda!188065 () Int)

(assert (=> bs!1015326 (= lambda!188065 lambda!188012)))

(declare-fun bs!1015327 () Bool)

(assert (= bs!1015327 (and b!4608888 b!4608752)))

(assert (=> bs!1015327 (= lambda!188065 lambda!188049)))

(declare-fun bs!1015328 () Bool)

(assert (= bs!1015328 (and b!4608888 b!4608781)))

(assert (=> bs!1015328 (= lambda!188065 lambda!188053)))

(declare-fun d!1452184 () Bool)

(declare-fun e!2874940 () Bool)

(assert (=> d!1452184 e!2874940))

(declare-fun res!1929243 () Bool)

(assert (=> d!1452184 (=> (not res!1929243) (not e!2874940))))

(declare-fun lt!1765384 () List!51327)

(assert (=> d!1452184 (= res!1929243 (noDuplicate!825 lt!1765384))))

(assert (=> d!1452184 (= lt!1765384 (getKeysList!595 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> d!1452184 (= (keys!17956 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lt!1765384)))

(declare-fun b!4608886 () Bool)

(declare-fun res!1929244 () Bool)

(assert (=> b!4608886 (=> (not res!1929244) (not e!2874940))))

(assert (=> b!4608886 (= res!1929244 (= (length!506 lt!1765384) (length!507 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))))

(declare-fun res!1929242 () Bool)

(assert (=> b!4608887 (=> (not res!1929242) (not e!2874940))))

(assert (=> b!4608887 (= res!1929242 (forall!10687 lt!1765384 lambda!188064))))

(assert (=> b!4608888 (= e!2874940 (= (content!8694 lt!1765384) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188065))))))

(assert (= (and d!1452184 res!1929243) b!4608886))

(assert (= (and b!4608886 res!1929244) b!4608887))

(assert (= (and b!4608887 res!1929242) b!4608888))

(declare-fun m!5439315 () Bool)

(assert (=> d!1452184 m!5439315))

(assert (=> d!1452184 m!5438497))

(declare-fun m!5439317 () Bool)

(assert (=> b!4608886 m!5439317))

(assert (=> b!4608886 m!5439037))

(declare-fun m!5439319 () Bool)

(assert (=> b!4608887 m!5439319))

(declare-fun m!5439321 () Bool)

(assert (=> b!4608888 m!5439321))

(declare-fun m!5439323 () Bool)

(assert (=> b!4608888 m!5439323))

(assert (=> b!4608888 m!5439323))

(declare-fun m!5439325 () Bool)

(assert (=> b!4608888 m!5439325))

(assert (=> b!4608322 d!1452184))

(assert (=> b!4608320 d!1452180))

(assert (=> b!4608320 d!1452184))

(declare-fun bs!1015329 () Bool)

(declare-fun b!4608895 () Bool)

(assert (= bs!1015329 (and b!4608895 d!1451924)))

(declare-fun lambda!188066 () Int)

(assert (=> bs!1015329 (not (= lambda!188066 lambda!187979))))

(declare-fun bs!1015330 () Bool)

(assert (= bs!1015330 (and b!4608895 b!4608728)))

(assert (=> bs!1015330 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188066 lambda!188042))))

(assert (=> bs!1015330 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765338) (= lambda!188066 lambda!188043))))

(declare-fun bs!1015331 () Bool)

(assert (= bs!1015331 (and b!4608895 d!1452090)))

(assert (=> bs!1015331 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765339) (= lambda!188066 lambda!188044))))

(declare-fun bs!1015332 () Bool)

(assert (= bs!1015332 (and b!4608895 b!4608729)))

(assert (=> bs!1015332 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188066 lambda!188041))))

(assert (=> b!4608895 true))

(declare-fun bs!1015334 () Bool)

(declare-fun b!4608894 () Bool)

(assert (= bs!1015334 (and b!4608894 b!4608895)))

(declare-fun lambda!188067 () Int)

(assert (=> bs!1015334 (= lambda!188067 lambda!188066)))

(declare-fun bs!1015335 () Bool)

(assert (= bs!1015335 (and b!4608894 d!1451924)))

(assert (=> bs!1015335 (not (= lambda!188067 lambda!187979))))

(declare-fun bs!1015336 () Bool)

(assert (= bs!1015336 (and b!4608894 b!4608728)))

(assert (=> bs!1015336 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188067 lambda!188042))))

(assert (=> bs!1015336 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765338) (= lambda!188067 lambda!188043))))

(declare-fun bs!1015337 () Bool)

(assert (= bs!1015337 (and b!4608894 d!1452090)))

(assert (=> bs!1015337 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765339) (= lambda!188067 lambda!188044))))

(declare-fun bs!1015338 () Bool)

(assert (= bs!1015338 (and b!4608894 b!4608729)))

(assert (=> bs!1015338 (= (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188067 lambda!188041))))

(assert (=> b!4608894 true))

(declare-fun lambda!188068 () Int)

(declare-fun lt!1765404 () ListMap!4011)

(assert (=> bs!1015334 (= (= lt!1765404 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188068 lambda!188066))))

(assert (=> bs!1015335 (not (= lambda!188068 lambda!187979))))

(assert (=> bs!1015336 (= (= lt!1765404 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188068 lambda!188042))))

(assert (=> bs!1015336 (= (= lt!1765404 lt!1765338) (= lambda!188068 lambda!188043))))

(assert (=> b!4608894 (= (= lt!1765404 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188068 lambda!188067))))

(assert (=> bs!1015337 (= (= lt!1765404 lt!1765339) (= lambda!188068 lambda!188044))))

(assert (=> bs!1015338 (= (= lt!1765404 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188068 lambda!188041))))

(assert (=> b!4608894 true))

(declare-fun bs!1015340 () Bool)

(declare-fun d!1452196 () Bool)

(assert (= bs!1015340 (and d!1452196 b!4608895)))

(declare-fun lt!1765405 () ListMap!4011)

(declare-fun lambda!188069 () Int)

(assert (=> bs!1015340 (= (= lt!1765405 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188069 lambda!188066))))

(declare-fun bs!1015341 () Bool)

(assert (= bs!1015341 (and d!1452196 d!1451924)))

(assert (=> bs!1015341 (not (= lambda!188069 lambda!187979))))

(declare-fun bs!1015342 () Bool)

(assert (= bs!1015342 (and d!1452196 b!4608894)))

(assert (=> bs!1015342 (= (= lt!1765405 lt!1765404) (= lambda!188069 lambda!188068))))

(declare-fun bs!1015343 () Bool)

(assert (= bs!1015343 (and d!1452196 b!4608728)))

(assert (=> bs!1015343 (= (= lt!1765405 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188069 lambda!188042))))

(assert (=> bs!1015343 (= (= lt!1765405 lt!1765338) (= lambda!188069 lambda!188043))))

(assert (=> bs!1015342 (= (= lt!1765405 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188069 lambda!188067))))

(declare-fun bs!1015344 () Bool)

(assert (= bs!1015344 (and d!1452196 d!1452090)))

(assert (=> bs!1015344 (= (= lt!1765405 lt!1765339) (= lambda!188069 lambda!188044))))

(declare-fun bs!1015345 () Bool)

(assert (= bs!1015345 (and d!1452196 b!4608729)))

(assert (=> bs!1015345 (= (= lt!1765405 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188069 lambda!188041))))

(assert (=> d!1452196 true))

(declare-fun bm!321386 () Bool)

(declare-fun call!321391 () Unit!109169)

(assert (=> bm!321386 (= call!321391 (lemmaContainsAllItsOwnKeys!449 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))))))

(declare-fun bm!321387 () Bool)

(declare-fun call!321393 () Bool)

(declare-fun c!789496 () Bool)

(assert (=> bm!321387 (= call!321393 (forall!10685 (ite c!789496 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (_2!29254 (h!57188 (toList!4749 lt!1764988)))) (ite c!789496 lambda!188066 lambda!188068)))))

(declare-fun call!321392 () Bool)

(declare-fun bm!321388 () Bool)

(assert (=> bm!321388 (= call!321392 (forall!10685 (ite c!789496 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (t!358317 (_2!29254 (h!57188 (toList!4749 lt!1764988))))) (ite c!789496 lambda!188066 lambda!188068)))))

(declare-fun b!4608891 () Bool)

(declare-fun e!2874941 () Bool)

(assert (=> b!4608891 (= e!2874941 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lambda!188068))))

(declare-fun b!4608892 () Bool)

(declare-fun e!2874943 () Bool)

(assert (=> b!4608892 (= e!2874943 (invariantList!1145 (toList!4750 lt!1765405)))))

(assert (=> d!1452196 e!2874943))

(declare-fun res!1929245 () Bool)

(assert (=> d!1452196 (=> (not res!1929245) (not e!2874943))))

(assert (=> d!1452196 (= res!1929245 (forall!10685 (_2!29254 (h!57188 (toList!4749 lt!1764988))) lambda!188069))))

(declare-fun e!2874942 () ListMap!4011)

(assert (=> d!1452196 (= lt!1765405 e!2874942)))

(assert (=> d!1452196 (= c!789496 (is-Nil!51199 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(assert (=> d!1452196 (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))

(assert (=> d!1452196 (= (addToMapMapFromBucket!837 (_2!29254 (h!57188 (toList!4749 lt!1764988))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lt!1765405)))

(declare-fun b!4608893 () Bool)

(declare-fun res!1929247 () Bool)

(assert (=> b!4608893 (=> (not res!1929247) (not e!2874943))))

(assert (=> b!4608893 (= res!1929247 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lambda!188069))))

(assert (=> b!4608894 (= e!2874942 lt!1765404)))

(declare-fun lt!1765403 () ListMap!4011)

(assert (=> b!4608894 (= lt!1765403 (+!1775 (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(assert (=> b!4608894 (= lt!1765404 (addToMapMapFromBucket!837 (t!358317 (_2!29254 (h!57188 (toList!4749 lt!1764988)))) (+!1775 (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))))

(declare-fun lt!1765387 () Unit!109169)

(assert (=> b!4608894 (= lt!1765387 call!321391)))

(assert (=> b!4608894 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lambda!188067)))

(declare-fun lt!1765397 () Unit!109169)

(assert (=> b!4608894 (= lt!1765397 lt!1765387)))

(assert (=> b!4608894 (forall!10685 (toList!4750 lt!1765403) lambda!188068)))

(declare-fun lt!1765393 () Unit!109169)

(declare-fun Unit!109220 () Unit!109169)

(assert (=> b!4608894 (= lt!1765393 Unit!109220)))

(assert (=> b!4608894 call!321392))

(declare-fun lt!1765386 () Unit!109169)

(declare-fun Unit!109221 () Unit!109169)

(assert (=> b!4608894 (= lt!1765386 Unit!109221)))

(declare-fun lt!1765396 () Unit!109169)

(declare-fun Unit!109222 () Unit!109169)

(assert (=> b!4608894 (= lt!1765396 Unit!109222)))

(declare-fun lt!1765385 () Unit!109169)

(assert (=> b!4608894 (= lt!1765385 (forallContained!2931 (toList!4750 lt!1765403) lambda!188068 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(assert (=> b!4608894 (contains!14203 lt!1765403 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(declare-fun lt!1765390 () Unit!109169)

(declare-fun Unit!109223 () Unit!109169)

(assert (=> b!4608894 (= lt!1765390 Unit!109223)))

(assert (=> b!4608894 (contains!14203 lt!1765404 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))))))

(declare-fun lt!1765401 () Unit!109169)

(declare-fun Unit!109224 () Unit!109169)

(assert (=> b!4608894 (= lt!1765401 Unit!109224)))

(assert (=> b!4608894 (forall!10685 (_2!29254 (h!57188 (toList!4749 lt!1764988))) lambda!188068)))

(declare-fun lt!1765394 () Unit!109169)

(declare-fun Unit!109225 () Unit!109169)

(assert (=> b!4608894 (= lt!1765394 Unit!109225)))

(assert (=> b!4608894 (forall!10685 (toList!4750 lt!1765403) lambda!188068)))

(declare-fun lt!1765399 () Unit!109169)

(declare-fun Unit!109226 () Unit!109169)

(assert (=> b!4608894 (= lt!1765399 Unit!109226)))

(declare-fun lt!1765398 () Unit!109169)

(declare-fun Unit!109227 () Unit!109169)

(assert (=> b!4608894 (= lt!1765398 Unit!109227)))

(declare-fun lt!1765392 () Unit!109169)

(assert (=> b!4608894 (= lt!1765392 (addForallContainsKeyThenBeforeAdding!449 (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765404 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988))))) (_2!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))))

(assert (=> b!4608894 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lambda!188068)))

(declare-fun lt!1765400 () Unit!109169)

(assert (=> b!4608894 (= lt!1765400 lt!1765392)))

(assert (=> b!4608894 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) lambda!188068)))

(declare-fun lt!1765389 () Unit!109169)

(declare-fun Unit!109228 () Unit!109169)

(assert (=> b!4608894 (= lt!1765389 Unit!109228)))

(declare-fun res!1929246 () Bool)

(assert (=> b!4608894 (= res!1929246 call!321393)))

(assert (=> b!4608894 (=> (not res!1929246) (not e!2874941))))

(assert (=> b!4608894 e!2874941))

(declare-fun lt!1765388 () Unit!109169)

(declare-fun Unit!109229 () Unit!109169)

(assert (=> b!4608894 (= lt!1765388 Unit!109229)))

(assert (=> b!4608895 (= e!2874942 (extractMap!1427 (t!358318 (toList!4749 lt!1764988))))))

(declare-fun lt!1765402 () Unit!109169)

(assert (=> b!4608895 (= lt!1765402 call!321391)))

(assert (=> b!4608895 call!321392))

(declare-fun lt!1765395 () Unit!109169)

(assert (=> b!4608895 (= lt!1765395 lt!1765402)))

(assert (=> b!4608895 call!321393))

(declare-fun lt!1765391 () Unit!109169)

(declare-fun Unit!109230 () Unit!109169)

(assert (=> b!4608895 (= lt!1765391 Unit!109230)))

(assert (= (and d!1452196 c!789496) b!4608895))

(assert (= (and d!1452196 (not c!789496)) b!4608894))

(assert (= (and b!4608894 res!1929246) b!4608891))

(assert (= (or b!4608895 b!4608894) bm!321387))

(assert (= (or b!4608895 b!4608894) bm!321388))

(assert (= (or b!4608895 b!4608894) bm!321386))

(assert (= (and d!1452196 res!1929245) b!4608893))

(assert (= (and b!4608893 res!1929247) b!4608892))

(declare-fun m!5439337 () Bool)

(assert (=> b!4608893 m!5439337))

(declare-fun m!5439339 () Bool)

(assert (=> d!1452196 m!5439339))

(assert (=> d!1452196 m!5438789))

(declare-fun m!5439345 () Bool)

(assert (=> b!4608894 m!5439345))

(assert (=> b!4608894 m!5438569))

(declare-fun m!5439349 () Bool)

(assert (=> b!4608894 m!5439349))

(declare-fun m!5439351 () Bool)

(assert (=> b!4608894 m!5439351))

(assert (=> b!4608894 m!5439345))

(declare-fun m!5439353 () Bool)

(assert (=> b!4608894 m!5439353))

(assert (=> b!4608894 m!5439351))

(assert (=> b!4608894 m!5438569))

(declare-fun m!5439355 () Bool)

(assert (=> b!4608894 m!5439355))

(declare-fun m!5439357 () Bool)

(assert (=> b!4608894 m!5439357))

(declare-fun m!5439359 () Bool)

(assert (=> b!4608894 m!5439359))

(assert (=> b!4608894 m!5439349))

(declare-fun m!5439361 () Bool)

(assert (=> b!4608894 m!5439361))

(declare-fun m!5439363 () Bool)

(assert (=> b!4608894 m!5439363))

(declare-fun m!5439365 () Bool)

(assert (=> b!4608894 m!5439365))

(assert (=> bm!321386 m!5438569))

(declare-fun m!5439367 () Bool)

(assert (=> bm!321386 m!5439367))

(declare-fun m!5439369 () Bool)

(assert (=> b!4608892 m!5439369))

(assert (=> b!4608891 m!5439345))

(declare-fun m!5439371 () Bool)

(assert (=> bm!321387 m!5439371))

(declare-fun m!5439373 () Bool)

(assert (=> bm!321388 m!5439373))

(assert (=> b!4608351 d!1452196))

(declare-fun bs!1015348 () Bool)

(declare-fun d!1452208 () Bool)

(assert (= bs!1015348 (and d!1452208 d!1451864)))

(declare-fun lambda!188072 () Int)

(assert (=> bs!1015348 (= lambda!188072 lambda!187963)))

(declare-fun bs!1015349 () Bool)

(assert (= bs!1015349 (and d!1452208 d!1451876)))

(assert (=> bs!1015349 (= lambda!188072 lambda!187967)))

(declare-fun bs!1015350 () Bool)

(assert (= bs!1015350 (and d!1452208 d!1451920)))

(assert (=> bs!1015350 (= lambda!188072 lambda!187976)))

(declare-fun bs!1015351 () Bool)

(assert (= bs!1015351 (and d!1452208 d!1451850)))

(assert (=> bs!1015351 (not (= lambda!188072 lambda!187953))))

(declare-fun bs!1015352 () Bool)

(assert (= bs!1015352 (and d!1452208 d!1451896)))

(assert (=> bs!1015352 (not (= lambda!188072 lambda!187968))))

(declare-fun bs!1015353 () Bool)

(assert (= bs!1015353 (and d!1452208 d!1452098)))

(assert (=> bs!1015353 (= lambda!188072 lambda!188045)))

(declare-fun bs!1015354 () Bool)

(assert (= bs!1015354 (and d!1452208 d!1451936)))

(assert (=> bs!1015354 (= lambda!188072 lambda!187982)))

(declare-fun bs!1015355 () Bool)

(assert (= bs!1015355 (and d!1452208 d!1451858)))

(assert (=> bs!1015355 (= lambda!188072 lambda!187960)))

(declare-fun bs!1015356 () Bool)

(assert (= bs!1015356 (and d!1452208 d!1451868)))

(assert (=> bs!1015356 (= lambda!188072 lambda!187964)))

(declare-fun bs!1015357 () Bool)

(assert (= bs!1015357 (and d!1452208 start!460702)))

(assert (=> bs!1015357 (= lambda!188072 lambda!187941)))

(declare-fun bs!1015358 () Bool)

(assert (= bs!1015358 (and d!1452208 d!1451900)))

(assert (=> bs!1015358 (= lambda!188072 lambda!187969)))

(declare-fun bs!1015359 () Bool)

(assert (= bs!1015359 (and d!1452208 d!1451902)))

(assert (=> bs!1015359 (= lambda!188072 lambda!187970)))

(declare-fun lt!1765412 () ListMap!4011)

(assert (=> d!1452208 (invariantList!1145 (toList!4750 lt!1765412))))

(declare-fun e!2874955 () ListMap!4011)

(assert (=> d!1452208 (= lt!1765412 e!2874955)))

(declare-fun c!789497 () Bool)

(assert (=> d!1452208 (= c!789497 (is-Cons!51200 (t!358318 (toList!4749 lt!1764988))))))

(assert (=> d!1452208 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!188072)))

(assert (=> d!1452208 (= (extractMap!1427 (t!358318 (toList!4749 lt!1764988))) lt!1765412)))

(declare-fun b!4608909 () Bool)

(assert (=> b!4608909 (= e!2874955 (addToMapMapFromBucket!837 (_2!29254 (h!57188 (t!358318 (toList!4749 lt!1764988)))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lt!1764988))))))))

(declare-fun b!4608910 () Bool)

(assert (=> b!4608910 (= e!2874955 (ListMap!4012 Nil!51199))))

(assert (= (and d!1452208 c!789497) b!4608909))

(assert (= (and d!1452208 (not c!789497)) b!4608910))

(declare-fun m!5439389 () Bool)

(assert (=> d!1452208 m!5439389))

(declare-fun m!5439391 () Bool)

(assert (=> d!1452208 m!5439391))

(declare-fun m!5439393 () Bool)

(assert (=> b!4608909 m!5439393))

(assert (=> b!4608909 m!5439393))

(declare-fun m!5439395 () Bool)

(assert (=> b!4608909 m!5439395))

(assert (=> b!4608351 d!1452208))

(declare-fun bs!1015360 () Bool)

(declare-fun b!4608915 () Bool)

(assert (= bs!1015360 (and b!4608915 d!1452196)))

(declare-fun lambda!188073 () Int)

(assert (=> bs!1015360 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765405) (= lambda!188073 lambda!188069))))

(declare-fun bs!1015361 () Bool)

(assert (= bs!1015361 (and b!4608915 b!4608895)))

(assert (=> bs!1015361 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188073 lambda!188066))))

(declare-fun bs!1015362 () Bool)

(assert (= bs!1015362 (and b!4608915 d!1451924)))

(assert (=> bs!1015362 (not (= lambda!188073 lambda!187979))))

(declare-fun bs!1015363 () Bool)

(assert (= bs!1015363 (and b!4608915 b!4608894)))

(assert (=> bs!1015363 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765404) (= lambda!188073 lambda!188068))))

(declare-fun bs!1015364 () Bool)

(assert (= bs!1015364 (and b!4608915 b!4608728)))

(assert (=> bs!1015364 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188073 lambda!188042))))

(assert (=> bs!1015364 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765338) (= lambda!188073 lambda!188043))))

(assert (=> bs!1015363 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188073 lambda!188067))))

(declare-fun bs!1015365 () Bool)

(assert (= bs!1015365 (and b!4608915 d!1452090)))

(assert (=> bs!1015365 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765339) (= lambda!188073 lambda!188044))))

(declare-fun bs!1015366 () Bool)

(assert (= bs!1015366 (and b!4608915 b!4608729)))

(assert (=> bs!1015366 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188073 lambda!188041))))

(assert (=> b!4608915 true))

(declare-fun bs!1015367 () Bool)

(declare-fun b!4608914 () Bool)

(assert (= bs!1015367 (and b!4608914 d!1452196)))

(declare-fun lambda!188074 () Int)

(assert (=> bs!1015367 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765405) (= lambda!188074 lambda!188069))))

(declare-fun bs!1015368 () Bool)

(assert (= bs!1015368 (and b!4608914 b!4608895)))

(assert (=> bs!1015368 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188074 lambda!188066))))

(declare-fun bs!1015369 () Bool)

(assert (= bs!1015369 (and b!4608914 b!4608915)))

(assert (=> bs!1015369 (= lambda!188074 lambda!188073)))

(declare-fun bs!1015370 () Bool)

(assert (= bs!1015370 (and b!4608914 d!1451924)))

(assert (=> bs!1015370 (not (= lambda!188074 lambda!187979))))

(declare-fun bs!1015371 () Bool)

(assert (= bs!1015371 (and b!4608914 b!4608894)))

(assert (=> bs!1015371 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765404) (= lambda!188074 lambda!188068))))

(declare-fun bs!1015372 () Bool)

(assert (= bs!1015372 (and b!4608914 b!4608728)))

(assert (=> bs!1015372 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188074 lambda!188042))))

(assert (=> bs!1015372 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765338) (= lambda!188074 lambda!188043))))

(assert (=> bs!1015371 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188074 lambda!188067))))

(declare-fun bs!1015373 () Bool)

(assert (= bs!1015373 (and b!4608914 d!1452090)))

(assert (=> bs!1015373 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765339) (= lambda!188074 lambda!188044))))

(declare-fun bs!1015374 () Bool)

(assert (= bs!1015374 (and b!4608914 b!4608729)))

(assert (=> bs!1015374 (= (= (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188074 lambda!188041))))

(assert (=> b!4608914 true))

(declare-fun lt!1765432 () ListMap!4011)

(declare-fun lambda!188075 () Int)

(assert (=> bs!1015367 (= (= lt!1765432 lt!1765405) (= lambda!188075 lambda!188069))))

(assert (=> bs!1015368 (= (= lt!1765432 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188075 lambda!188066))))

(assert (=> bs!1015369 (= (= lt!1765432 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (= lambda!188075 lambda!188073))))

(assert (=> bs!1015370 (not (= lambda!188075 lambda!187979))))

(assert (=> bs!1015371 (= (= lt!1765432 lt!1765404) (= lambda!188075 lambda!188068))))

(assert (=> bs!1015372 (= (= lt!1765432 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188075 lambda!188042))))

(assert (=> bs!1015372 (= (= lt!1765432 lt!1765338) (= lambda!188075 lambda!188043))))

(assert (=> bs!1015371 (= (= lt!1765432 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188075 lambda!188067))))

(assert (=> bs!1015373 (= (= lt!1765432 lt!1765339) (= lambda!188075 lambda!188044))))

(assert (=> bs!1015374 (= (= lt!1765432 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188075 lambda!188041))))

(assert (=> b!4608914 (= (= lt!1765432 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (= lambda!188075 lambda!188074))))

(assert (=> b!4608914 true))

(declare-fun bs!1015375 () Bool)

(declare-fun d!1452214 () Bool)

(assert (= bs!1015375 (and d!1452214 d!1452196)))

(declare-fun lt!1765433 () ListMap!4011)

(declare-fun lambda!188076 () Int)

(assert (=> bs!1015375 (= (= lt!1765433 lt!1765405) (= lambda!188076 lambda!188069))))

(declare-fun bs!1015376 () Bool)

(assert (= bs!1015376 (and d!1452214 b!4608895)))

(assert (=> bs!1015376 (= (= lt!1765433 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188076 lambda!188066))))

(declare-fun bs!1015377 () Bool)

(assert (= bs!1015377 (and d!1452214 b!4608915)))

(assert (=> bs!1015377 (= (= lt!1765433 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (= lambda!188076 lambda!188073))))

(declare-fun bs!1015378 () Bool)

(assert (= bs!1015378 (and d!1452214 d!1451924)))

(assert (=> bs!1015378 (not (= lambda!188076 lambda!187979))))

(declare-fun bs!1015379 () Bool)

(assert (= bs!1015379 (and d!1452214 b!4608894)))

(assert (=> bs!1015379 (= (= lt!1765433 lt!1765404) (= lambda!188076 lambda!188068))))

(declare-fun bs!1015380 () Bool)

(assert (= bs!1015380 (and d!1452214 b!4608728)))

(assert (=> bs!1015380 (= (= lt!1765433 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188076 lambda!188042))))

(assert (=> bs!1015380 (= (= lt!1765433 lt!1765338) (= lambda!188076 lambda!188043))))

(assert (=> bs!1015379 (= (= lt!1765433 (extractMap!1427 (t!358318 (toList!4749 lt!1764988)))) (= lambda!188076 lambda!188067))))

(declare-fun bs!1015381 () Bool)

(assert (= bs!1015381 (and d!1452214 b!4608914)))

(assert (=> bs!1015381 (= (= lt!1765433 lt!1765432) (= lambda!188076 lambda!188075))))

(declare-fun bs!1015382 () Bool)

(assert (= bs!1015382 (and d!1452214 d!1452090)))

(assert (=> bs!1015382 (= (= lt!1765433 lt!1765339) (= lambda!188076 lambda!188044))))

(declare-fun bs!1015383 () Bool)

(assert (= bs!1015383 (and d!1452214 b!4608729)))

(assert (=> bs!1015383 (= (= lt!1765433 (extractMap!1427 (t!358318 (t!358318 (toList!4749 lm!1477))))) (= lambda!188076 lambda!188041))))

(assert (=> bs!1015381 (= (= lt!1765433 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (= lambda!188076 lambda!188074))))

(assert (=> d!1452214 true))

(declare-fun bm!321389 () Bool)

(declare-fun call!321394 () Unit!109169)

(assert (=> bm!321389 (= call!321394 (lemmaContainsAllItsOwnKeys!449 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun c!789498 () Bool)

(declare-fun bm!321390 () Bool)

(declare-fun call!321396 () Bool)

(assert (=> bm!321390 (= call!321396 (forall!10685 (ite c!789498 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (_2!29254 (h!57188 (toList!4749 lm!1477)))) (ite c!789498 lambda!188073 lambda!188075)))))

(declare-fun bm!321391 () Bool)

(declare-fun call!321395 () Bool)

(assert (=> bm!321391 (= call!321395 (forall!10685 (ite c!789498 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) (t!358317 (_2!29254 (h!57188 (toList!4749 lm!1477))))) (ite c!789498 lambda!188073 lambda!188075)))))

(declare-fun b!4608911 () Bool)

(declare-fun e!2874956 () Bool)

(assert (=> b!4608911 (= e!2874956 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188075))))

(declare-fun b!4608912 () Bool)

(declare-fun e!2874958 () Bool)

(assert (=> b!4608912 (= e!2874958 (invariantList!1145 (toList!4750 lt!1765433)))))

(assert (=> d!1452214 e!2874958))

(declare-fun res!1929261 () Bool)

(assert (=> d!1452214 (=> (not res!1929261) (not e!2874958))))

(assert (=> d!1452214 (= res!1929261 (forall!10685 (_2!29254 (h!57188 (toList!4749 lm!1477))) lambda!188076))))

(declare-fun e!2874957 () ListMap!4011)

(assert (=> d!1452214 (= lt!1765433 e!2874957)))

(assert (=> d!1452214 (= c!789498 (is-Nil!51199 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(assert (=> d!1452214 (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477))))))

(assert (=> d!1452214 (= (addToMapMapFromBucket!837 (_2!29254 (h!57188 (toList!4749 lm!1477))) (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lt!1765433)))

(declare-fun b!4608913 () Bool)

(declare-fun res!1929263 () Bool)

(assert (=> b!4608913 (=> (not res!1929263) (not e!2874958))))

(assert (=> b!4608913 (= res!1929263 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188076))))

(assert (=> b!4608914 (= e!2874957 lt!1765432)))

(declare-fun lt!1765431 () ListMap!4011)

(assert (=> b!4608914 (= lt!1765431 (+!1775 (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(assert (=> b!4608914 (= lt!1765432 (addToMapMapFromBucket!837 (t!358317 (_2!29254 (h!57188 (toList!4749 lm!1477)))) (+!1775 (extractMap!1427 (t!358318 (toList!4749 lm!1477))) (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))))

(declare-fun lt!1765415 () Unit!109169)

(assert (=> b!4608914 (= lt!1765415 call!321394)))

(assert (=> b!4608914 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188074)))

(declare-fun lt!1765425 () Unit!109169)

(assert (=> b!4608914 (= lt!1765425 lt!1765415)))

(assert (=> b!4608914 (forall!10685 (toList!4750 lt!1765431) lambda!188075)))

(declare-fun lt!1765421 () Unit!109169)

(declare-fun Unit!109236 () Unit!109169)

(assert (=> b!4608914 (= lt!1765421 Unit!109236)))

(assert (=> b!4608914 call!321395))

(declare-fun lt!1765414 () Unit!109169)

(declare-fun Unit!109237 () Unit!109169)

(assert (=> b!4608914 (= lt!1765414 Unit!109237)))

(declare-fun lt!1765424 () Unit!109169)

(declare-fun Unit!109238 () Unit!109169)

(assert (=> b!4608914 (= lt!1765424 Unit!109238)))

(declare-fun lt!1765413 () Unit!109169)

(assert (=> b!4608914 (= lt!1765413 (forallContained!2931 (toList!4750 lt!1765431) lambda!188075 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(assert (=> b!4608914 (contains!14203 lt!1765431 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(declare-fun lt!1765418 () Unit!109169)

(declare-fun Unit!109239 () Unit!109169)

(assert (=> b!4608914 (= lt!1765418 Unit!109239)))

(assert (=> b!4608914 (contains!14203 lt!1765432 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(declare-fun lt!1765429 () Unit!109169)

(declare-fun Unit!109240 () Unit!109169)

(assert (=> b!4608914 (= lt!1765429 Unit!109240)))

(assert (=> b!4608914 (forall!10685 (_2!29254 (h!57188 (toList!4749 lm!1477))) lambda!188075)))

(declare-fun lt!1765422 () Unit!109169)

(declare-fun Unit!109241 () Unit!109169)

(assert (=> b!4608914 (= lt!1765422 Unit!109241)))

(assert (=> b!4608914 (forall!10685 (toList!4750 lt!1765431) lambda!188075)))

(declare-fun lt!1765427 () Unit!109169)

(declare-fun Unit!109242 () Unit!109169)

(assert (=> b!4608914 (= lt!1765427 Unit!109242)))

(declare-fun lt!1765426 () Unit!109169)

(declare-fun Unit!109243 () Unit!109169)

(assert (=> b!4608914 (= lt!1765426 Unit!109243)))

(declare-fun lt!1765420 () Unit!109169)

(assert (=> b!4608914 (= lt!1765420 (addForallContainsKeyThenBeforeAdding!449 (extractMap!1427 (t!358318 (toList!4749 lm!1477))) lt!1765432 (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))) (_2!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))))

(assert (=> b!4608914 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188075)))

(declare-fun lt!1765428 () Unit!109169)

(assert (=> b!4608914 (= lt!1765428 lt!1765420)))

(assert (=> b!4608914 (forall!10685 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) lambda!188075)))

(declare-fun lt!1765417 () Unit!109169)

(declare-fun Unit!109244 () Unit!109169)

(assert (=> b!4608914 (= lt!1765417 Unit!109244)))

(declare-fun res!1929262 () Bool)

(assert (=> b!4608914 (= res!1929262 call!321396)))

(assert (=> b!4608914 (=> (not res!1929262) (not e!2874956))))

(assert (=> b!4608914 e!2874956))

(declare-fun lt!1765416 () Unit!109169)

(declare-fun Unit!109245 () Unit!109169)

(assert (=> b!4608914 (= lt!1765416 Unit!109245)))

(assert (=> b!4608915 (= e!2874957 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))

(declare-fun lt!1765430 () Unit!109169)

(assert (=> b!4608915 (= lt!1765430 call!321394)))

(assert (=> b!4608915 call!321395))

(declare-fun lt!1765423 () Unit!109169)

(assert (=> b!4608915 (= lt!1765423 lt!1765430)))

(assert (=> b!4608915 call!321396))

(declare-fun lt!1765419 () Unit!109169)

(declare-fun Unit!109246 () Unit!109169)

(assert (=> b!4608915 (= lt!1765419 Unit!109246)))

(assert (= (and d!1452214 c!789498) b!4608915))

(assert (= (and d!1452214 (not c!789498)) b!4608914))

(assert (= (and b!4608914 res!1929262) b!4608911))

(assert (= (or b!4608915 b!4608914) bm!321390))

(assert (= (or b!4608915 b!4608914) bm!321391))

(assert (= (or b!4608915 b!4608914) bm!321389))

(assert (= (and d!1452214 res!1929261) b!4608913))

(assert (= (and b!4608913 res!1929263) b!4608912))

(declare-fun m!5439397 () Bool)

(assert (=> b!4608913 m!5439397))

(declare-fun m!5439399 () Bool)

(assert (=> d!1452214 m!5439399))

(assert (=> d!1452214 m!5438785))

(declare-fun m!5439401 () Bool)

(assert (=> b!4608914 m!5439401))

(assert (=> b!4608914 m!5438343))

(declare-fun m!5439403 () Bool)

(assert (=> b!4608914 m!5439403))

(declare-fun m!5439405 () Bool)

(assert (=> b!4608914 m!5439405))

(assert (=> b!4608914 m!5439401))

(declare-fun m!5439407 () Bool)

(assert (=> b!4608914 m!5439407))

(assert (=> b!4608914 m!5439405))

(assert (=> b!4608914 m!5438343))

(declare-fun m!5439409 () Bool)

(assert (=> b!4608914 m!5439409))

(declare-fun m!5439411 () Bool)

(assert (=> b!4608914 m!5439411))

(declare-fun m!5439413 () Bool)

(assert (=> b!4608914 m!5439413))

(assert (=> b!4608914 m!5439403))

(declare-fun m!5439415 () Bool)

(assert (=> b!4608914 m!5439415))

(declare-fun m!5439417 () Bool)

(assert (=> b!4608914 m!5439417))

(declare-fun m!5439419 () Bool)

(assert (=> b!4608914 m!5439419))

(assert (=> bm!321389 m!5438343))

(declare-fun m!5439421 () Bool)

(assert (=> bm!321389 m!5439421))

(declare-fun m!5439423 () Bool)

(assert (=> b!4608912 m!5439423))

(assert (=> b!4608911 m!5439401))

(declare-fun m!5439425 () Bool)

(assert (=> bm!321390 m!5439425))

(declare-fun m!5439427 () Bool)

(assert (=> bm!321391 m!5439427))

(assert (=> b!4608433 d!1452214))

(assert (=> b!4608433 d!1451858))

(declare-fun d!1452216 () Bool)

(declare-fun res!1929264 () Bool)

(declare-fun e!2874959 () Bool)

(assert (=> d!1452216 (=> res!1929264 e!2874959)))

(assert (=> d!1452216 (= res!1929264 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452216 (= (forall!10683 (toList!4749 lt!1764988) lambda!187953) e!2874959)))

(declare-fun b!4608916 () Bool)

(declare-fun e!2874960 () Bool)

(assert (=> b!4608916 (= e!2874959 e!2874960)))

(declare-fun res!1929265 () Bool)

(assert (=> b!4608916 (=> (not res!1929265) (not e!2874960))))

(assert (=> b!4608916 (= res!1929265 (dynLambda!21432 lambda!187953 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608917 () Bool)

(assert (=> b!4608917 (= e!2874960 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187953))))

(assert (= (and d!1452216 (not res!1929264)) b!4608916))

(assert (= (and b!4608916 res!1929265) b!4608917))

(declare-fun b_lambda!170279 () Bool)

(assert (=> (not b_lambda!170279) (not b!4608916)))

(declare-fun m!5439429 () Bool)

(assert (=> b!4608916 m!5439429))

(declare-fun m!5439431 () Bool)

(assert (=> b!4608917 m!5439431))

(assert (=> d!1451850 d!1452216))

(declare-fun d!1452218 () Bool)

(assert (=> d!1452218 (= (invariantList!1145 (toList!4750 lt!1765070)) (noDuplicatedKeys!339 (toList!4750 lt!1765070)))))

(declare-fun bs!1015384 () Bool)

(assert (= bs!1015384 d!1452218))

(declare-fun m!5439433 () Bool)

(assert (=> bs!1015384 m!5439433))

(assert (=> d!1451858 d!1452218))

(declare-fun d!1452220 () Bool)

(declare-fun res!1929266 () Bool)

(declare-fun e!2874961 () Bool)

(assert (=> d!1452220 (=> res!1929266 e!2874961)))

(assert (=> d!1452220 (= res!1929266 (is-Nil!51200 (t!358318 (toList!4749 lm!1477))))))

(assert (=> d!1452220 (= (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187960) e!2874961)))

(declare-fun b!4608918 () Bool)

(declare-fun e!2874962 () Bool)

(assert (=> b!4608918 (= e!2874961 e!2874962)))

(declare-fun res!1929267 () Bool)

(assert (=> b!4608918 (=> (not res!1929267) (not e!2874962))))

(assert (=> b!4608918 (= res!1929267 (dynLambda!21432 lambda!187960 (h!57188 (t!358318 (toList!4749 lm!1477)))))))

(declare-fun b!4608919 () Bool)

(assert (=> b!4608919 (= e!2874962 (forall!10683 (t!358318 (t!358318 (toList!4749 lm!1477))) lambda!187960))))

(assert (= (and d!1452220 (not res!1929266)) b!4608918))

(assert (= (and b!4608918 res!1929267) b!4608919))

(declare-fun b_lambda!170281 () Bool)

(assert (=> (not b_lambda!170281) (not b!4608918)))

(declare-fun m!5439435 () Bool)

(assert (=> b!4608918 m!5439435))

(declare-fun m!5439437 () Bool)

(assert (=> b!4608919 m!5439437))

(assert (=> d!1451858 d!1452220))

(assert (=> d!1451920 d!1451898))

(assert (=> d!1451920 d!1451900))

(declare-fun d!1452222 () Bool)

(assert (=> d!1452222 (not (contains!14203 (extractMap!1427 (toList!4749 lm!1477)) key!3287))))

(assert (=> d!1452222 true))

(declare-fun _$26!587 () Unit!109169)

(assert (=> d!1452222 (= (choose!31000 lm!1477 key!3287 hashF!1107) _$26!587)))

(declare-fun bs!1015387 () Bool)

(assert (= bs!1015387 d!1452222))

(assert (=> bs!1015387 m!5438353))

(assert (=> bs!1015387 m!5438353))

(assert (=> bs!1015387 m!5438355))

(assert (=> d!1451920 d!1452222))

(declare-fun d!1452232 () Bool)

(declare-fun res!1929272 () Bool)

(declare-fun e!2874967 () Bool)

(assert (=> d!1452232 (=> res!1929272 e!2874967)))

(assert (=> d!1452232 (= res!1929272 (is-Nil!51200 (toList!4749 lm!1477)))))

(assert (=> d!1452232 (= (forall!10683 (toList!4749 lm!1477) lambda!187976) e!2874967)))

(declare-fun b!4608924 () Bool)

(declare-fun e!2874968 () Bool)

(assert (=> b!4608924 (= e!2874967 e!2874968)))

(declare-fun res!1929273 () Bool)

(assert (=> b!4608924 (=> (not res!1929273) (not e!2874968))))

(assert (=> b!4608924 (= res!1929273 (dynLambda!21432 lambda!187976 (h!57188 (toList!4749 lm!1477))))))

(declare-fun b!4608925 () Bool)

(assert (=> b!4608925 (= e!2874968 (forall!10683 (t!358318 (toList!4749 lm!1477)) lambda!187976))))

(assert (= (and d!1452232 (not res!1929272)) b!4608924))

(assert (= (and b!4608924 res!1929273) b!4608925))

(declare-fun b_lambda!170285 () Bool)

(assert (=> (not b_lambda!170285) (not b!4608924)))

(declare-fun m!5439451 () Bool)

(assert (=> b!4608924 m!5439451))

(declare-fun m!5439453 () Bool)

(assert (=> b!4608925 m!5439453))

(assert (=> d!1451920 d!1452232))

(assert (=> d!1451898 d!1452048))

(declare-fun d!1452234 () Bool)

(assert (=> d!1452234 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(declare-fun lt!1765442 () Unit!109169)

(declare-fun choose!31015 (List!51323 K!12568) Unit!109169)

(assert (=> d!1452234 (= lt!1765442 (choose!31015 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> d!1452234 (invariantList!1145 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452234 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) lt!1765442)))

(declare-fun bs!1015389 () Bool)

(assert (= bs!1015389 d!1452234))

(assert (=> bs!1015389 m!5438505))

(assert (=> bs!1015389 m!5438505))

(assert (=> bs!1015389 m!5438507))

(declare-fun m!5439469 () Bool)

(assert (=> bs!1015389 m!5439469))

(assert (=> bs!1015389 m!5438967))

(assert (=> b!4608326 d!1452234))

(declare-fun d!1452244 () Bool)

(declare-fun isEmpty!28896 (Option!11437) Bool)

(assert (=> d!1452244 (= (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287)) (not (isEmpty!28896 (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))))

(declare-fun bs!1015390 () Bool)

(assert (= bs!1015390 d!1452244))

(assert (=> bs!1015390 m!5438505))

(declare-fun m!5439471 () Bool)

(assert (=> bs!1015390 m!5439471))

(assert (=> b!4608326 d!1452244))

(declare-fun b!4608951 () Bool)

(declare-fun e!2874984 () Option!11437)

(assert (=> b!4608951 (= e!2874984 None!11436)))

(declare-fun b!4608950 () Bool)

(assert (=> b!4608950 (= e!2874984 (getValueByKey!1355 (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) key!3287))))

(declare-fun b!4608949 () Bool)

(declare-fun e!2874983 () Option!11437)

(assert (=> b!4608949 (= e!2874983 e!2874984)))

(declare-fun c!789508 () Bool)

(assert (=> b!4608949 (= c!789508 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (not (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) key!3287))))))

(declare-fun b!4608948 () Bool)

(assert (=> b!4608948 (= e!2874983 (Some!11436 (_2!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))))))

(declare-fun d!1452246 () Bool)

(declare-fun c!789507 () Bool)

(assert (=> d!1452246 (= c!789507 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) key!3287)))))

(assert (=> d!1452246 (= (getValueByKey!1355 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) e!2874983)))

(assert (= (and d!1452246 c!789507) b!4608948))

(assert (= (and d!1452246 (not c!789507)) b!4608949))

(assert (= (and b!4608949 c!789508) b!4608950))

(assert (= (and b!4608949 (not c!789508)) b!4608951))

(declare-fun m!5439479 () Bool)

(assert (=> b!4608950 m!5439479))

(assert (=> b!4608326 d!1452246))

(declare-fun d!1452254 () Bool)

(assert (=> d!1452254 (contains!14209 (getKeysList!595 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) key!3287)))

(declare-fun lt!1765445 () Unit!109169)

(declare-fun choose!31016 (List!51323 K!12568) Unit!109169)

(assert (=> d!1452254 (= lt!1765445 (choose!31016 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287))))

(assert (=> d!1452254 (invariantList!1145 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))))

(assert (=> d!1452254 (= (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))) key!3287) lt!1765445)))

(declare-fun bs!1015392 () Bool)

(assert (= bs!1015392 d!1452254))

(assert (=> bs!1015392 m!5438497))

(assert (=> bs!1015392 m!5438497))

(declare-fun m!5439483 () Bool)

(assert (=> bs!1015392 m!5439483))

(declare-fun m!5439485 () Bool)

(assert (=> bs!1015392 m!5439485))

(assert (=> bs!1015392 m!5438967))

(assert (=> b!4608326 d!1452254))

(assert (=> d!1451866 d!1452054))

(declare-fun d!1452258 () Bool)

(declare-fun res!1929286 () Bool)

(declare-fun e!2874991 () Bool)

(assert (=> d!1452258 (=> res!1929286 e!2874991)))

(assert (=> d!1452258 (= res!1929286 (and (is-Cons!51199 (t!358317 lt!1764987)) (= (_1!29253 (h!57187 (t!358317 lt!1764987))) key!3287)))))

(assert (=> d!1452258 (= (containsKey!2249 (t!358317 lt!1764987) key!3287) e!2874991)))

(declare-fun b!4608958 () Bool)

(declare-fun e!2874992 () Bool)

(assert (=> b!4608958 (= e!2874991 e!2874992)))

(declare-fun res!1929287 () Bool)

(assert (=> b!4608958 (=> (not res!1929287) (not e!2874992))))

(assert (=> b!4608958 (= res!1929287 (is-Cons!51199 (t!358317 lt!1764987)))))

(declare-fun b!4608959 () Bool)

(assert (=> b!4608959 (= e!2874992 (containsKey!2249 (t!358317 (t!358317 lt!1764987)) key!3287))))

(assert (= (and d!1452258 (not res!1929286)) b!4608958))

(assert (= (and b!4608958 res!1929287) b!4608959))

(declare-fun m!5439487 () Bool)

(assert (=> b!4608959 m!5439487))

(assert (=> b!4608300 d!1452258))

(declare-fun d!1452260 () Bool)

(declare-fun lt!1765446 () Int)

(assert (=> d!1452260 (>= lt!1765446 0)))

(declare-fun e!2874993 () Int)

(assert (=> d!1452260 (= lt!1765446 e!2874993)))

(declare-fun c!789509 () Bool)

(assert (=> d!1452260 (= c!789509 (is-Nil!51200 (t!358318 (toList!4749 lt!1764988))))))

(assert (=> d!1452260 (= (size!35961 (t!358318 (toList!4749 lt!1764988))) lt!1765446)))

(declare-fun b!4608960 () Bool)

(assert (=> b!4608960 (= e!2874993 0)))

(declare-fun b!4608961 () Bool)

(assert (=> b!4608961 (= e!2874993 (+ 1 (size!35961 (t!358318 (t!358318 (toList!4749 lt!1764988))))))))

(assert (= (and d!1452260 c!789509) b!4608960))

(assert (= (and d!1452260 (not c!789509)) b!4608961))

(declare-fun m!5439489 () Bool)

(assert (=> b!4608961 m!5439489))

(assert (=> b!4608451 d!1452260))

(declare-fun d!1452262 () Bool)

(declare-fun lt!1765447 () Bool)

(assert (=> d!1452262 (= lt!1765447 (set.member lt!1764976 (content!8692 (t!358318 (toList!4749 lt!1764988)))))))

(declare-fun e!2874995 () Bool)

(assert (=> d!1452262 (= lt!1765447 e!2874995)))

(declare-fun res!1929288 () Bool)

(assert (=> d!1452262 (=> (not res!1929288) (not e!2874995))))

(assert (=> d!1452262 (= res!1929288 (is-Cons!51200 (t!358318 (toList!4749 lt!1764988))))))

(assert (=> d!1452262 (= (contains!14205 (t!358318 (toList!4749 lt!1764988)) lt!1764976) lt!1765447)))

(declare-fun b!4608962 () Bool)

(declare-fun e!2874994 () Bool)

(assert (=> b!4608962 (= e!2874995 e!2874994)))

(declare-fun res!1929289 () Bool)

(assert (=> b!4608962 (=> res!1929289 e!2874994)))

(assert (=> b!4608962 (= res!1929289 (= (h!57188 (t!358318 (toList!4749 lt!1764988))) lt!1764976))))

(declare-fun b!4608963 () Bool)

(assert (=> b!4608963 (= e!2874994 (contains!14205 (t!358318 (t!358318 (toList!4749 lt!1764988))) lt!1764976))))

(assert (= (and d!1452262 res!1929288) b!4608962))

(assert (= (and b!4608962 (not res!1929289)) b!4608963))

(declare-fun m!5439491 () Bool)

(assert (=> d!1452262 m!5439491))

(declare-fun m!5439493 () Bool)

(assert (=> d!1452262 m!5439493))

(declare-fun m!5439495 () Bool)

(assert (=> b!4608963 m!5439495))

(assert (=> b!4608411 d!1452262))

(assert (=> d!1451864 d!1451866))

(assert (=> d!1451864 d!1451868))

(declare-fun d!1452264 () Bool)

(assert (=> d!1452264 (contains!14203 (extractMap!1427 (toList!4749 lt!1764988)) key!3287)))

(assert (=> d!1452264 true))

(declare-fun _$34!850 () Unit!109169)

(assert (=> d!1452264 (= (choose!30996 lt!1764988 key!3287 hashF!1107) _$34!850)))

(declare-fun bs!1015393 () Bool)

(assert (= bs!1015393 d!1452264))

(assert (=> bs!1015393 m!5438339))

(assert (=> bs!1015393 m!5438339))

(assert (=> bs!1015393 m!5438341))

(assert (=> d!1451864 d!1452264))

(declare-fun d!1452266 () Bool)

(declare-fun res!1929290 () Bool)

(declare-fun e!2874996 () Bool)

(assert (=> d!1452266 (=> res!1929290 e!2874996)))

(assert (=> d!1452266 (= res!1929290 (is-Nil!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452266 (= (forall!10683 (toList!4749 lt!1764988) lambda!187963) e!2874996)))

(declare-fun b!4608964 () Bool)

(declare-fun e!2874997 () Bool)

(assert (=> b!4608964 (= e!2874996 e!2874997)))

(declare-fun res!1929291 () Bool)

(assert (=> b!4608964 (=> (not res!1929291) (not e!2874997))))

(assert (=> b!4608964 (= res!1929291 (dynLambda!21432 lambda!187963 (h!57188 (toList!4749 lt!1764988))))))

(declare-fun b!4608965 () Bool)

(assert (=> b!4608965 (= e!2874997 (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187963))))

(assert (= (and d!1452266 (not res!1929290)) b!4608964))

(assert (= (and b!4608964 res!1929291) b!4608965))

(declare-fun b_lambda!170291 () Bool)

(assert (=> (not b_lambda!170291) (not b!4608964)))

(declare-fun m!5439497 () Bool)

(assert (=> b!4608964 m!5439497))

(declare-fun m!5439499 () Bool)

(assert (=> b!4608965 m!5439499))

(assert (=> d!1451864 d!1452266))

(assert (=> b!4608324 d!1452244))

(assert (=> b!4608324 d!1452246))

(declare-fun b!4608968 () Bool)

(declare-fun e!2874998 () List!51323)

(assert (=> b!4608968 (= e!2874998 (Cons!51199 (h!57187 (t!358317 lt!1764984)) (removePairForKey!992 (t!358317 (t!358317 lt!1764984)) key!3287)))))

(declare-fun b!4608967 () Bool)

(declare-fun e!2874999 () List!51323)

(assert (=> b!4608967 (= e!2874999 e!2874998)))

(declare-fun c!789511 () Bool)

(assert (=> b!4608967 (= c!789511 (is-Cons!51199 (t!358317 lt!1764984)))))

(declare-fun b!4608969 () Bool)

(assert (=> b!4608969 (= e!2874998 Nil!51199)))

(declare-fun b!4608966 () Bool)

(assert (=> b!4608966 (= e!2874999 (t!358317 (t!358317 lt!1764984)))))

(declare-fun d!1452268 () Bool)

(declare-fun lt!1765448 () List!51323)

(assert (=> d!1452268 (not (containsKey!2249 lt!1765448 key!3287))))

(assert (=> d!1452268 (= lt!1765448 e!2874999)))

(declare-fun c!789510 () Bool)

(assert (=> d!1452268 (= c!789510 (and (is-Cons!51199 (t!358317 lt!1764984)) (= (_1!29253 (h!57187 (t!358317 lt!1764984))) key!3287)))))

(assert (=> d!1452268 (noDuplicateKeys!1367 (t!358317 lt!1764984))))

(assert (=> d!1452268 (= (removePairForKey!992 (t!358317 lt!1764984) key!3287) lt!1765448)))

(assert (= (and d!1452268 c!789510) b!4608966))

(assert (= (and d!1452268 (not c!789510)) b!4608967))

(assert (= (and b!4608967 c!789511) b!4608968))

(assert (= (and b!4608967 (not c!789511)) b!4608969))

(declare-fun m!5439501 () Bool)

(assert (=> b!4608968 m!5439501))

(declare-fun m!5439503 () Bool)

(assert (=> d!1452268 m!5439503))

(declare-fun m!5439505 () Bool)

(assert (=> d!1452268 m!5439505))

(assert (=> b!4608369 d!1452268))

(declare-fun lt!1765449 () Bool)

(declare-fun d!1452270 () Bool)

(assert (=> d!1452270 (= lt!1765449 (set.member (tuple2!51921 hash!344 lt!1764984) (content!8692 (toList!4749 lt!1764988))))))

(declare-fun e!2875001 () Bool)

(assert (=> d!1452270 (= lt!1765449 e!2875001)))

(declare-fun res!1929292 () Bool)

(assert (=> d!1452270 (=> (not res!1929292) (not e!2875001))))

(assert (=> d!1452270 (= res!1929292 (is-Cons!51200 (toList!4749 lt!1764988)))))

(assert (=> d!1452270 (= (contains!14205 (toList!4749 lt!1764988) (tuple2!51921 hash!344 lt!1764984)) lt!1765449)))

(declare-fun b!4608970 () Bool)

(declare-fun e!2875000 () Bool)

(assert (=> b!4608970 (= e!2875001 e!2875000)))

(declare-fun res!1929293 () Bool)

(assert (=> b!4608970 (=> res!1929293 e!2875000)))

(assert (=> b!4608970 (= res!1929293 (= (h!57188 (toList!4749 lt!1764988)) (tuple2!51921 hash!344 lt!1764984)))))

(declare-fun b!4608971 () Bool)

(assert (=> b!4608971 (= e!2875000 (contains!14205 (t!358318 (toList!4749 lt!1764988)) (tuple2!51921 hash!344 lt!1764984)))))

(assert (= (and d!1452270 res!1929292) b!4608970))

(assert (= (and b!4608970 (not res!1929293)) b!4608971))

(assert (=> d!1452270 m!5438615))

(declare-fun m!5439507 () Bool)

(assert (=> d!1452270 m!5439507))

(declare-fun m!5439509 () Bool)

(assert (=> b!4608971 m!5439509))

(assert (=> d!1451880 d!1452270))

(declare-fun d!1452272 () Bool)

(assert (=> d!1452272 (contains!14205 (toList!4749 lt!1764988) (tuple2!51921 hash!344 lt!1764984))))

(assert (=> d!1452272 true))

(declare-fun _$14!1519 () Unit!109169)

(assert (=> d!1452272 (= (choose!30998 (toList!4749 lt!1764988) hash!344 lt!1764984) _$14!1519)))

(declare-fun bs!1015394 () Bool)

(assert (= bs!1015394 d!1452272))

(assert (=> bs!1015394 m!5438603))

(assert (=> d!1451880 d!1452272))

(declare-fun d!1452274 () Bool)

(declare-fun res!1929294 () Bool)

(declare-fun e!2875002 () Bool)

(assert (=> d!1452274 (=> res!1929294 e!2875002)))

(assert (=> d!1452274 (= res!1929294 (or (is-Nil!51200 (toList!4749 lt!1764988)) (is-Nil!51200 (t!358318 (toList!4749 lt!1764988)))))))

(assert (=> d!1452274 (= (isStrictlySorted!561 (toList!4749 lt!1764988)) e!2875002)))

(declare-fun b!4608972 () Bool)

(declare-fun e!2875003 () Bool)

(assert (=> b!4608972 (= e!2875002 e!2875003)))

(declare-fun res!1929295 () Bool)

(assert (=> b!4608972 (=> (not res!1929295) (not e!2875003))))

(assert (=> b!4608972 (= res!1929295 (bvslt (_1!29254 (h!57188 (toList!4749 lt!1764988))) (_1!29254 (h!57188 (t!358318 (toList!4749 lt!1764988))))))))

(declare-fun b!4608973 () Bool)

(assert (=> b!4608973 (= e!2875003 (isStrictlySorted!561 (t!358318 (toList!4749 lt!1764988))))))

(assert (= (and d!1452274 (not res!1929294)) b!4608972))

(assert (= (and b!4608972 res!1929295) b!4608973))

(declare-fun m!5439511 () Bool)

(assert (=> b!4608973 m!5439511))

(assert (=> d!1451880 d!1452274))

(declare-fun d!1452276 () Bool)

(declare-fun res!1929296 () Bool)

(declare-fun e!2875004 () Bool)

(assert (=> d!1452276 (=> res!1929296 e!2875004)))

(assert (=> d!1452276 (= res!1929296 (not (is-Cons!51199 (t!358317 newBucket!178))))))

(assert (=> d!1452276 (= (noDuplicateKeys!1367 (t!358317 newBucket!178)) e!2875004)))

(declare-fun b!4608974 () Bool)

(declare-fun e!2875005 () Bool)

(assert (=> b!4608974 (= e!2875004 e!2875005)))

(declare-fun res!1929297 () Bool)

(assert (=> b!4608974 (=> (not res!1929297) (not e!2875005))))

(assert (=> b!4608974 (= res!1929297 (not (containsKey!2249 (t!358317 (t!358317 newBucket!178)) (_1!29253 (h!57187 (t!358317 newBucket!178))))))))

(declare-fun b!4608975 () Bool)

(assert (=> b!4608975 (= e!2875005 (noDuplicateKeys!1367 (t!358317 (t!358317 newBucket!178))))))

(assert (= (and d!1452276 (not res!1929296)) b!4608974))

(assert (= (and b!4608974 res!1929297) b!4608975))

(declare-fun m!5439513 () Bool)

(assert (=> b!4608974 m!5439513))

(declare-fun m!5439515 () Bool)

(assert (=> b!4608975 m!5439515))

(assert (=> b!4608495 d!1452276))

(declare-fun d!1452278 () Bool)

(assert (=> d!1452278 (= (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287)) (not (isEmpty!28896 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))))

(declare-fun bs!1015395 () Bool)

(assert (= bs!1015395 d!1452278))

(assert (=> bs!1015395 m!5438553))

(declare-fun m!5439517 () Bool)

(assert (=> bs!1015395 m!5439517))

(assert (=> b!4608347 d!1452278))

(declare-fun b!4608979 () Bool)

(declare-fun e!2875007 () Option!11437)

(assert (=> b!4608979 (= e!2875007 None!11436)))

(declare-fun b!4608978 () Bool)

(assert (=> b!4608978 (= e!2875007 (getValueByKey!1355 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) key!3287))))

(declare-fun b!4608977 () Bool)

(declare-fun e!2875006 () Option!11437)

(assert (=> b!4608977 (= e!2875006 e!2875007)))

(declare-fun c!789513 () Bool)

(assert (=> b!4608977 (= c!789513 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (not (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) key!3287))))))

(declare-fun b!4608976 () Bool)

(assert (=> b!4608976 (= e!2875006 (Some!11436 (_2!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))))

(declare-fun d!1452280 () Bool)

(declare-fun c!789512 () Bool)

(assert (=> d!1452280 (= c!789512 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) key!3287)))))

(assert (=> d!1452280 (= (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) e!2875006)))

(assert (= (and d!1452280 c!789512) b!4608976))

(assert (= (and d!1452280 (not c!789512)) b!4608977))

(assert (= (and b!4608977 c!789513) b!4608978))

(assert (= (and b!4608977 (not c!789513)) b!4608979))

(declare-fun m!5439519 () Bool)

(assert (=> b!4608978 m!5439519))

(assert (=> b!4608347 d!1452280))

(declare-fun d!1452282 () Bool)

(assert (=> d!1452282 (= (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287)) (not (isEmpty!28896 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))))

(declare-fun bs!1015396 () Bool)

(assert (= bs!1015396 d!1452282))

(assert (=> bs!1015396 m!5438663))

(declare-fun m!5439521 () Bool)

(assert (=> bs!1015396 m!5439521))

(assert (=> b!4608429 d!1452282))

(declare-fun b!4608983 () Bool)

(declare-fun e!2875009 () Option!11437)

(assert (=> b!4608983 (= e!2875009 None!11436)))

(declare-fun b!4608982 () Bool)

(assert (=> b!4608982 (= e!2875009 (getValueByKey!1355 (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) key!3287))))

(declare-fun b!4608981 () Bool)

(declare-fun e!2875008 () Option!11437)

(assert (=> b!4608981 (= e!2875008 e!2875009)))

(declare-fun c!789515 () Bool)

(assert (=> b!4608981 (= c!789515 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (not (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) key!3287))))))

(declare-fun b!4608980 () Bool)

(assert (=> b!4608980 (= e!2875008 (Some!11436 (_2!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))))

(declare-fun d!1452284 () Bool)

(declare-fun c!789514 () Bool)

(assert (=> d!1452284 (= c!789514 (and (is-Cons!51199 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= (_1!29253 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) key!3287)))))

(assert (=> d!1452284 (= (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287) e!2875008)))

(assert (= (and d!1452284 c!789514) b!4608980))

(assert (= (and d!1452284 (not c!789514)) b!4608981))

(assert (= (and b!4608981 c!789515) b!4608982))

(assert (= (and b!4608981 (not c!789515)) b!4608983))

(declare-fun m!5439523 () Bool)

(assert (=> b!4608982 m!5439523))

(assert (=> b!4608429 d!1452284))

(declare-fun d!1452286 () Bool)

(declare-fun lt!1765454 () Bool)

(assert (=> d!1452286 (= lt!1765454 (set.member key!3287 (content!8694 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))))))))

(declare-fun e!2875015 () Bool)

(assert (=> d!1452286 (= lt!1765454 e!2875015)))

(declare-fun res!1929299 () Bool)

(assert (=> d!1452286 (=> (not res!1929299) (not e!2875015))))

(assert (=> d!1452286 (= res!1929299 (is-Cons!51203 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988)))))))

(assert (=> d!1452286 (= (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) lt!1765454)))

(declare-fun b!4608992 () Bool)

(declare-fun e!2875014 () Bool)

(assert (=> b!4608992 (= e!2875015 e!2875014)))

(declare-fun res!1929298 () Bool)

(assert (=> b!4608992 (=> res!1929298 e!2875014)))

(assert (=> b!4608992 (= res!1929298 (= (h!57192 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988)))) key!3287))))

(declare-fun b!4608993 () Bool)

(assert (=> b!4608993 (= e!2875014 (contains!14209 (t!358321 (keys!17956 (extractMap!1427 (toList!4749 lt!1764988)))) key!3287))))

(assert (= (and d!1452286 res!1929299) b!4608992))

(assert (= (and b!4608992 (not res!1929298)) b!4608993))

(assert (=> d!1452286 m!5438547))

(declare-fun m!5439525 () Bool)

(assert (=> d!1452286 m!5439525))

(declare-fun m!5439527 () Bool)

(assert (=> d!1452286 m!5439527))

(declare-fun m!5439529 () Bool)

(assert (=> b!4608993 m!5439529))

(assert (=> b!4608345 d!1452286))

(declare-fun bs!1015397 () Bool)

(declare-fun b!4608999 () Bool)

(assert (= bs!1015397 (and b!4608999 b!4608754)))

(declare-fun lambda!188077 () Int)

(assert (=> bs!1015397 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188077 lambda!188047))))

(declare-fun bs!1015398 () Bool)

(assert (= bs!1015398 (and b!4608999 b!4608777)))

(assert (=> bs!1015398 (= lambda!188077 lambda!188052)))

(declare-fun bs!1015399 () Bool)

(assert (= bs!1015399 (and b!4608999 b!4608783)))

(assert (=> bs!1015399 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))) (= lambda!188077 lambda!188051))))

(declare-fun bs!1015400 () Bool)

(assert (= bs!1015400 (and b!4608999 b!4608748)))

(assert (=> bs!1015400 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (= lambda!188077 lambda!188048))))

(declare-fun bs!1015401 () Bool)

(assert (= bs!1015401 (and b!4608999 b!4608693)))

(assert (=> bs!1015401 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188077 lambda!188011))))

(declare-fun bs!1015402 () Bool)

(assert (= bs!1015402 (and b!4608999 b!4608775)))

(assert (=> bs!1015402 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (= lambda!188077 lambda!188050))))

(declare-fun bs!1015403 () Bool)

(assert (= bs!1015403 (and b!4608999 b!4608746)))

(assert (=> bs!1015403 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188077 lambda!188046))))

(declare-fun bs!1015404 () Bool)

(assert (= bs!1015404 (and b!4608999 b!4608887)))

(assert (=> bs!1015404 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188077 lambda!188064))))

(declare-fun bs!1015405 () Bool)

(assert (= bs!1015405 (and b!4608999 b!4608691)))

(assert (=> bs!1015405 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188077 lambda!188009))))

(declare-fun bs!1015406 () Bool)

(assert (= bs!1015406 (and b!4608999 b!4608699)))

(assert (=> bs!1015406 (= (= (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188077 lambda!188010))))

(assert (=> b!4608999 true))

(declare-fun bs!1015407 () Bool)

(declare-fun b!4609000 () Bool)

(assert (= bs!1015407 (and b!4609000 b!4608697)))

(declare-fun lambda!188080 () Int)

(assert (=> bs!1015407 (= lambda!188080 lambda!188012)))

(declare-fun bs!1015408 () Bool)

(assert (= bs!1015408 (and b!4609000 b!4608752)))

(assert (=> bs!1015408 (= lambda!188080 lambda!188049)))

(declare-fun bs!1015409 () Bool)

(assert (= bs!1015409 (and b!4609000 b!4608781)))

(assert (=> bs!1015409 (= lambda!188080 lambda!188053)))

(declare-fun bs!1015410 () Bool)

(assert (= bs!1015410 (and b!4609000 b!4608888)))

(assert (=> bs!1015410 (= lambda!188080 lambda!188065)))

(declare-fun d!1452288 () Bool)

(declare-fun e!2875018 () Bool)

(assert (=> d!1452288 e!2875018))

(declare-fun res!1929301 () Bool)

(assert (=> d!1452288 (=> (not res!1929301) (not e!2875018))))

(declare-fun lt!1765459 () List!51327)

(assert (=> d!1452288 (= res!1929301 (noDuplicate!825 lt!1765459))))

(assert (=> d!1452288 (= lt!1765459 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))))

(assert (=> d!1452288 (= (keys!17956 (extractMap!1427 (toList!4749 lt!1764988))) lt!1765459)))

(declare-fun b!4608998 () Bool)

(declare-fun res!1929302 () Bool)

(assert (=> b!4608998 (=> (not res!1929302) (not e!2875018))))

(assert (=> b!4608998 (= res!1929302 (= (length!506 lt!1765459) (length!507 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))))

(declare-fun res!1929300 () Bool)

(assert (=> b!4608999 (=> (not res!1929300) (not e!2875018))))

(assert (=> b!4608999 (= res!1929300 (forall!10687 lt!1765459 lambda!188077))))

(assert (=> b!4609000 (= e!2875018 (= (content!8694 lt!1765459) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) lambda!188080))))))

(assert (= (and d!1452288 res!1929301) b!4608998))

(assert (= (and b!4608998 res!1929302) b!4608999))

(assert (= (and b!4608999 res!1929300) b!4609000))

(declare-fun m!5439531 () Bool)

(assert (=> d!1452288 m!5439531))

(assert (=> d!1452288 m!5438545))

(declare-fun m!5439533 () Bool)

(assert (=> b!4608998 m!5439533))

(assert (=> b!4608998 m!5439191))

(declare-fun m!5439535 () Bool)

(assert (=> b!4608999 m!5439535))

(declare-fun m!5439537 () Bool)

(assert (=> b!4609000 m!5439537))

(declare-fun m!5439539 () Bool)

(assert (=> b!4609000 m!5439539))

(assert (=> b!4609000 m!5439539))

(declare-fun m!5439541 () Bool)

(assert (=> b!4609000 m!5439541))

(assert (=> b!4608345 d!1452288))

(assert (=> d!1451856 d!1452034))

(declare-fun d!1452290 () Bool)

(declare-fun lt!1765466 () Bool)

(assert (=> d!1452290 (= lt!1765466 (set.member key!3287 (content!8694 (keys!17956 (extractMap!1427 (toList!4749 lm!1477))))))))

(declare-fun e!2875020 () Bool)

(assert (=> d!1452290 (= lt!1765466 e!2875020)))

(declare-fun res!1929304 () Bool)

(assert (=> d!1452290 (=> (not res!1929304) (not e!2875020))))

(assert (=> d!1452290 (= res!1929304 (is-Cons!51203 (keys!17956 (extractMap!1427 (toList!4749 lm!1477)))))))

(assert (=> d!1452290 (= (contains!14209 (keys!17956 (extractMap!1427 (toList!4749 lm!1477))) key!3287) lt!1765466)))

(declare-fun b!4609001 () Bool)

(declare-fun e!2875019 () Bool)

(assert (=> b!4609001 (= e!2875020 e!2875019)))

(declare-fun res!1929303 () Bool)

(assert (=> b!4609001 (=> res!1929303 e!2875019)))

(assert (=> b!4609001 (= res!1929303 (= (h!57192 (keys!17956 (extractMap!1427 (toList!4749 lm!1477)))) key!3287))))

(declare-fun b!4609002 () Bool)

(assert (=> b!4609002 (= e!2875019 (contains!14209 (t!358321 (keys!17956 (extractMap!1427 (toList!4749 lm!1477)))) key!3287))))

(assert (= (and d!1452290 res!1929304) b!4609001))

(assert (= (and b!4609001 (not res!1929303)) b!4609002))

(assert (=> d!1452290 m!5438657))

(declare-fun m!5439543 () Bool)

(assert (=> d!1452290 m!5439543))

(declare-fun m!5439545 () Bool)

(assert (=> d!1452290 m!5439545))

(declare-fun m!5439547 () Bool)

(assert (=> b!4609002 m!5439547))

(assert (=> b!4608427 d!1452290))

(declare-fun bs!1015411 () Bool)

(declare-fun b!4609008 () Bool)

(assert (= bs!1015411 (and b!4609008 b!4608754)))

(declare-fun lambda!188085 () Int)

(assert (=> bs!1015411 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))) (= lambda!188085 lambda!188047))))

(declare-fun bs!1015412 () Bool)

(assert (= bs!1015412 (and b!4609008 b!4608777)))

(assert (=> bs!1015412 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (= lambda!188085 lambda!188052))))

(declare-fun bs!1015413 () Bool)

(assert (= bs!1015413 (and b!4609008 b!4608783)))

(assert (=> bs!1015413 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))))) (= lambda!188085 lambda!188051))))

(declare-fun bs!1015414 () Bool)

(assert (= bs!1015414 (and b!4609008 b!4608748)))

(assert (=> bs!1015414 (= lambda!188085 lambda!188048)))

(declare-fun bs!1015415 () Bool)

(assert (= bs!1015415 (and b!4609008 b!4608693)))

(assert (=> bs!1015415 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188085 lambda!188011))))

(declare-fun bs!1015416 () Bool)

(assert (= bs!1015416 (and b!4609008 b!4608775)))

(assert (=> bs!1015416 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))) (= lambda!188085 lambda!188050))))

(declare-fun bs!1015417 () Bool)

(assert (= bs!1015417 (and b!4609008 b!4608999)))

(assert (=> bs!1015417 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) (= lambda!188085 lambda!188077))))

(declare-fun bs!1015418 () Bool)

(assert (= bs!1015418 (and b!4609008 b!4608746)))

(assert (=> bs!1015418 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (t!358317 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))) (= lambda!188085 lambda!188046))))

(declare-fun bs!1015419 () Bool)

(assert (= bs!1015419 (and b!4609008 b!4608887)))

(assert (=> bs!1015419 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (= lambda!188085 lambda!188064))))

(declare-fun bs!1015420 () Bool)

(assert (= bs!1015420 (and b!4609008 b!4608691)))

(assert (=> bs!1015420 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477)))))) (= lambda!188085 lambda!188009))))

(declare-fun bs!1015421 () Bool)

(assert (= bs!1015421 (and b!4609008 b!4608699)))

(assert (=> bs!1015421 (= (= (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) (Cons!51199 (h!57187 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))) (t!358317 (toList!4750 (extractMap!1427 (t!358318 (toList!4749 lm!1477))))))) (= lambda!188085 lambda!188010))))

(assert (=> b!4609008 true))

(declare-fun bs!1015422 () Bool)

(declare-fun b!4609009 () Bool)

(assert (= bs!1015422 (and b!4609009 b!4609000)))

(declare-fun lambda!188088 () Int)

(assert (=> bs!1015422 (= lambda!188088 lambda!188080)))

(declare-fun bs!1015423 () Bool)

(assert (= bs!1015423 (and b!4609009 b!4608697)))

(assert (=> bs!1015423 (= lambda!188088 lambda!188012)))

(declare-fun bs!1015424 () Bool)

(assert (= bs!1015424 (and b!4609009 b!4608752)))

(assert (=> bs!1015424 (= lambda!188088 lambda!188049)))

(declare-fun bs!1015425 () Bool)

(assert (= bs!1015425 (and b!4609009 b!4608781)))

(assert (=> bs!1015425 (= lambda!188088 lambda!188053)))

(declare-fun bs!1015426 () Bool)

(assert (= bs!1015426 (and b!4609009 b!4608888)))

(assert (=> bs!1015426 (= lambda!188088 lambda!188065)))

(declare-fun d!1452292 () Bool)

(declare-fun e!2875023 () Bool)

(assert (=> d!1452292 e!2875023))

(declare-fun res!1929312 () Bool)

(assert (=> d!1452292 (=> (not res!1929312) (not e!2875023))))

(declare-fun lt!1765467 () List!51327)

(assert (=> d!1452292 (= res!1929312 (noDuplicate!825 lt!1765467))))

(assert (=> d!1452292 (= lt!1765467 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))))))

(assert (=> d!1452292 (= (keys!17956 (extractMap!1427 (toList!4749 lm!1477))) lt!1765467)))

(declare-fun b!4609007 () Bool)

(declare-fun res!1929313 () Bool)

(assert (=> b!4609007 (=> (not res!1929313) (not e!2875023))))

(assert (=> b!4609007 (= res!1929313 (= (length!506 lt!1765467) (length!507 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))))

(declare-fun res!1929311 () Bool)

(assert (=> b!4609008 (=> (not res!1929311) (not e!2875023))))

(assert (=> b!4609008 (= res!1929311 (forall!10687 lt!1765467 lambda!188085))))

(assert (=> b!4609009 (= e!2875023 (= (content!8694 lt!1765467) (content!8694 (map!11322 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) lambda!188088))))))

(assert (= (and d!1452292 res!1929312) b!4609007))

(assert (= (and b!4609007 res!1929313) b!4609008))

(assert (= (and b!4609008 res!1929311) b!4609009))

(declare-fun m!5439549 () Bool)

(assert (=> d!1452292 m!5439549))

(assert (=> d!1452292 m!5438655))

(declare-fun m!5439551 () Bool)

(assert (=> b!4609007 m!5439551))

(assert (=> b!4609007 m!5439151))

(declare-fun m!5439553 () Bool)

(assert (=> b!4609008 m!5439553))

(declare-fun m!5439555 () Bool)

(assert (=> b!4609009 m!5439555))

(declare-fun m!5439557 () Bool)

(assert (=> b!4609009 m!5439557))

(assert (=> b!4609009 m!5439557))

(declare-fun m!5439559 () Bool)

(assert (=> b!4609009 m!5439559))

(assert (=> b!4608427 d!1452292))

(declare-fun d!1452294 () Bool)

(declare-fun res!1929314 () Bool)

(declare-fun e!2875024 () Bool)

(assert (=> d!1452294 (=> res!1929314 e!2875024)))

(assert (=> d!1452294 (= res!1929314 (not (is-Cons!51199 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(assert (=> d!1452294 (= (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477)))) e!2875024)))

(declare-fun b!4609012 () Bool)

(declare-fun e!2875025 () Bool)

(assert (=> b!4609012 (= e!2875024 e!2875025)))

(declare-fun res!1929315 () Bool)

(assert (=> b!4609012 (=> (not res!1929315) (not e!2875025))))

(assert (=> b!4609012 (= res!1929315 (not (containsKey!2249 (t!358317 (_2!29254 (h!57188 (toList!4749 lm!1477)))) (_1!29253 (h!57187 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))))

(declare-fun b!4609013 () Bool)

(assert (=> b!4609013 (= e!2875025 (noDuplicateKeys!1367 (t!358317 (_2!29254 (h!57188 (toList!4749 lm!1477))))))))

(assert (= (and d!1452294 (not res!1929314)) b!4609012))

(assert (= (and b!4609012 res!1929315) b!4609013))

(declare-fun m!5439561 () Bool)

(assert (=> b!4609012 m!5439561))

(declare-fun m!5439563 () Bool)

(assert (=> b!4609013 m!5439563))

(assert (=> bs!1015172 d!1452294))

(assert (=> b!4608409 d!1452064))

(assert (=> b!4608327 d!1452184))

(assert (=> b!4608343 d!1452286))

(assert (=> b!4608343 d!1452288))

(assert (=> b!4608425 d!1452290))

(assert (=> b!4608425 d!1452292))

(declare-fun d!1452296 () Bool)

(assert (=> d!1452296 (isDefined!8705 (getValueByKey!1356 (toList!4749 lm!1477) lt!1764980))))

(declare-fun lt!1765468 () Unit!109169)

(assert (=> d!1452296 (= lt!1765468 (choose!31010 (toList!4749 lm!1477) lt!1764980))))

(declare-fun e!2875026 () Bool)

(assert (=> d!1452296 e!2875026))

(declare-fun res!1929316 () Bool)

(assert (=> d!1452296 (=> (not res!1929316) (not e!2875026))))

(assert (=> d!1452296 (= res!1929316 (isStrictlySorted!561 (toList!4749 lm!1477)))))

(assert (=> d!1452296 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1258 (toList!4749 lm!1477) lt!1764980) lt!1765468)))

(declare-fun b!4609014 () Bool)

(assert (=> b!4609014 (= e!2875026 (containsKey!2252 (toList!4749 lm!1477) lt!1764980))))

(assert (= (and d!1452296 res!1929316) b!4609014))

(assert (=> d!1452296 m!5438713))

(assert (=> d!1452296 m!5438713))

(assert (=> d!1452296 m!5438715))

(declare-fun m!5439565 () Bool)

(assert (=> d!1452296 m!5439565))

(assert (=> d!1452296 m!5438651))

(assert (=> b!4609014 m!5438709))

(assert (=> b!4608443 d!1452296))

(assert (=> b!4608443 d!1452038))

(assert (=> b!4608443 d!1452040))

(declare-fun d!1452298 () Bool)

(declare-fun res!1929317 () Bool)

(declare-fun e!2875027 () Bool)

(assert (=> d!1452298 (=> res!1929317 e!2875027)))

(assert (=> d!1452298 (= res!1929317 (and (is-Cons!51199 lt!1765088) (= (_1!29253 (h!57187 lt!1765088)) key!3287)))))

(assert (=> d!1452298 (= (containsKey!2249 lt!1765088 key!3287) e!2875027)))

(declare-fun b!4609015 () Bool)

(declare-fun e!2875028 () Bool)

(assert (=> b!4609015 (= e!2875027 e!2875028)))

(declare-fun res!1929318 () Bool)

(assert (=> b!4609015 (=> (not res!1929318) (not e!2875028))))

(assert (=> b!4609015 (= res!1929318 (is-Cons!51199 lt!1765088))))

(declare-fun b!4609016 () Bool)

(assert (=> b!4609016 (= e!2875028 (containsKey!2249 (t!358317 lt!1765088) key!3287))))

(assert (= (and d!1452298 (not res!1929317)) b!4609015))

(assert (= (and b!4609015 res!1929318) b!4609016))

(declare-fun m!5439567 () Bool)

(assert (=> b!4609016 m!5439567))

(assert (=> d!1451874 d!1452298))

(declare-fun d!1452300 () Bool)

(declare-fun res!1929319 () Bool)

(declare-fun e!2875029 () Bool)

(assert (=> d!1452300 (=> res!1929319 e!2875029)))

(assert (=> d!1452300 (= res!1929319 (not (is-Cons!51199 lt!1764984)))))

(assert (=> d!1452300 (= (noDuplicateKeys!1367 lt!1764984) e!2875029)))

(declare-fun b!4609017 () Bool)

(declare-fun e!2875030 () Bool)

(assert (=> b!4609017 (= e!2875029 e!2875030)))

(declare-fun res!1929320 () Bool)

(assert (=> b!4609017 (=> (not res!1929320) (not e!2875030))))

(assert (=> b!4609017 (= res!1929320 (not (containsKey!2249 (t!358317 lt!1764984) (_1!29253 (h!57187 lt!1764984)))))))

(declare-fun b!4609018 () Bool)

(assert (=> b!4609018 (= e!2875030 (noDuplicateKeys!1367 (t!358317 lt!1764984)))))

(assert (= (and d!1452300 (not res!1929319)) b!4609017))

(assert (= (and b!4609017 res!1929320) b!4609018))

(declare-fun m!5439569 () Bool)

(assert (=> b!4609017 m!5439569))

(assert (=> b!4609018 m!5439505))

(assert (=> d!1451874 d!1452300))

(declare-fun d!1452302 () Bool)

(declare-fun c!789522 () Bool)

(assert (=> d!1452302 (= c!789522 (is-Nil!51200 (toList!4749 lt!1764988)))))

(declare-fun e!2875031 () (Set tuple2!51920))

(assert (=> d!1452302 (= (content!8692 (toList!4749 lt!1764988)) e!2875031)))

(declare-fun b!4609019 () Bool)

(assert (=> b!4609019 (= e!2875031 (as set.empty (Set tuple2!51920)))))

(declare-fun b!4609020 () Bool)

(assert (=> b!4609020 (= e!2875031 (set.union (set.insert (h!57188 (toList!4749 lt!1764988)) (as set.empty (Set tuple2!51920))) (content!8692 (t!358318 (toList!4749 lt!1764988)))))))

(assert (= (and d!1452302 c!789522) b!4609019))

(assert (= (and d!1452302 (not c!789522)) b!4609020))

(declare-fun m!5439571 () Bool)

(assert (=> b!4609020 m!5439571))

(assert (=> b!4609020 m!5439491))

(assert (=> d!1451882 d!1452302))

(assert (=> b!4608350 d!1452288))

(assert (=> b!4608432 d!1452292))

(declare-fun d!1452304 () Bool)

(declare-fun res!1929328 () Bool)

(declare-fun e!2875040 () Bool)

(assert (=> d!1452304 (=> res!1929328 e!2875040)))

(assert (=> d!1452304 (= res!1929328 (is-Nil!51199 newBucket!178))))

(assert (=> d!1452304 (= (forall!10685 newBucket!178 lambda!187979) e!2875040)))

(declare-fun b!4609036 () Bool)

(declare-fun e!2875041 () Bool)

(assert (=> b!4609036 (= e!2875040 e!2875041)))

(declare-fun res!1929329 () Bool)

(assert (=> b!4609036 (=> (not res!1929329) (not e!2875041))))

(declare-fun dynLambda!21434 (Int tuple2!51918) Bool)

(assert (=> b!4609036 (= res!1929329 (dynLambda!21434 lambda!187979 (h!57187 newBucket!178)))))

(declare-fun b!4609037 () Bool)

(assert (=> b!4609037 (= e!2875041 (forall!10685 (t!358317 newBucket!178) lambda!187979))))

(assert (= (and d!1452304 (not res!1929328)) b!4609036))

(assert (= (and b!4609036 res!1929329) b!4609037))

(declare-fun b_lambda!170293 () Bool)

(assert (=> (not b_lambda!170293) (not b!4609036)))

(declare-fun m!5439573 () Bool)

(assert (=> b!4609036 m!5439573))

(declare-fun m!5439575 () Bool)

(assert (=> b!4609037 m!5439575))

(assert (=> d!1451924 d!1452304))

(declare-fun d!1452306 () Bool)

(declare-fun c!789526 () Bool)

(assert (=> d!1452306 (= c!789526 (is-Nil!51200 (t!358318 (toList!4749 lm!1477))))))

(declare-fun e!2875042 () (Set tuple2!51920))

(assert (=> d!1452306 (= (content!8692 (t!358318 (toList!4749 lm!1477))) e!2875042)))

(declare-fun b!4609038 () Bool)

(assert (=> b!4609038 (= e!2875042 (as set.empty (Set tuple2!51920)))))

(declare-fun b!4609039 () Bool)

(assert (=> b!4609039 (= e!2875042 (set.union (set.insert (h!57188 (t!358318 (toList!4749 lm!1477))) (as set.empty (Set tuple2!51920))) (content!8692 (t!358318 (t!358318 (toList!4749 lm!1477))))))))

(assert (= (and d!1452306 c!789526) b!4609038))

(assert (= (and d!1452306 (not c!789526)) b!4609039))

(declare-fun m!5439577 () Bool)

(assert (=> b!4609039 m!5439577))

(assert (=> b!4609039 m!5438977))

(assert (=> d!1451870 d!1452306))

(declare-fun d!1452308 () Bool)

(assert (=> d!1452308 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(declare-fun lt!1765476 () Unit!109169)

(assert (=> d!1452308 (= lt!1765476 (choose!31015 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> d!1452308 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))

(assert (=> d!1452308 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) lt!1765476)))

(declare-fun bs!1015438 () Bool)

(assert (= bs!1015438 d!1452308))

(assert (=> bs!1015438 m!5438553))

(assert (=> bs!1015438 m!5438553))

(assert (=> bs!1015438 m!5438555))

(declare-fun m!5439579 () Bool)

(assert (=> bs!1015438 m!5439579))

(assert (=> bs!1015438 m!5438999))

(assert (=> b!4608349 d!1452308))

(assert (=> b!4608349 d!1452278))

(assert (=> b!4608349 d!1452280))

(declare-fun d!1452310 () Bool)

(assert (=> d!1452310 (contains!14209 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988)))) key!3287)))

(declare-fun lt!1765477 () Unit!109169)

(assert (=> d!1452310 (= lt!1765477 (choose!31016 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287))))

(assert (=> d!1452310 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))))))

(assert (=> d!1452310 (= (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (toList!4749 lt!1764988))) key!3287) lt!1765477)))

(declare-fun bs!1015439 () Bool)

(assert (= bs!1015439 d!1452310))

(assert (=> bs!1015439 m!5438545))

(assert (=> bs!1015439 m!5438545))

(declare-fun m!5439581 () Bool)

(assert (=> bs!1015439 m!5439581))

(declare-fun m!5439583 () Bool)

(assert (=> bs!1015439 m!5439583))

(assert (=> bs!1015439 m!5438999))

(assert (=> b!4608349 d!1452310))

(declare-fun d!1452312 () Bool)

(assert (=> d!1452312 (isDefined!8704 (getValueByKey!1355 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(declare-fun lt!1765478 () Unit!109169)

(assert (=> d!1452312 (= lt!1765478 (choose!31015 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> d!1452312 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))

(assert (=> d!1452312 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1257 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287) lt!1765478)))

(declare-fun bs!1015440 () Bool)

(assert (= bs!1015440 d!1452312))

(assert (=> bs!1015440 m!5438663))

(assert (=> bs!1015440 m!5438663))

(assert (=> bs!1015440 m!5438665))

(declare-fun m!5439585 () Bool)

(assert (=> bs!1015440 m!5439585))

(assert (=> bs!1015440 m!5438987))

(assert (=> b!4608431 d!1452312))

(assert (=> b!4608431 d!1452282))

(assert (=> b!4608431 d!1452284))

(declare-fun d!1452314 () Bool)

(assert (=> d!1452314 (contains!14209 (getKeysList!595 (toList!4750 (extractMap!1427 (toList!4749 lm!1477)))) key!3287)))

(declare-fun lt!1765479 () Unit!109169)

(assert (=> d!1452314 (= lt!1765479 (choose!31016 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287))))

(assert (=> d!1452314 (invariantList!1145 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))))))

(assert (=> d!1452314 (= (lemmaInListThenGetKeysListContains!590 (toList!4750 (extractMap!1427 (toList!4749 lm!1477))) key!3287) lt!1765479)))

(declare-fun bs!1015441 () Bool)

(assert (= bs!1015441 d!1452314))

(assert (=> bs!1015441 m!5438655))

(assert (=> bs!1015441 m!5438655))

(declare-fun m!5439587 () Bool)

(assert (=> bs!1015441 m!5439587))

(declare-fun m!5439589 () Bool)

(assert (=> bs!1015441 m!5439589))

(assert (=> bs!1015441 m!5438987))

(assert (=> b!4608431 d!1452314))

(declare-fun d!1452316 () Bool)

(declare-fun res!1929330 () Bool)

(declare-fun e!2875043 () Bool)

(assert (=> d!1452316 (=> res!1929330 e!2875043)))

(assert (=> d!1452316 (= res!1929330 (is-Nil!51200 (t!358318 (toList!4749 lt!1764988))))))

(assert (=> d!1452316 (= (forall!10683 (t!358318 (toList!4749 lt!1764988)) lambda!187941) e!2875043)))

(declare-fun b!4609040 () Bool)

(declare-fun e!2875044 () Bool)

(assert (=> b!4609040 (= e!2875043 e!2875044)))

(declare-fun res!1929331 () Bool)

(assert (=> b!4609040 (=> (not res!1929331) (not e!2875044))))

(assert (=> b!4609040 (= res!1929331 (dynLambda!21432 lambda!187941 (h!57188 (t!358318 (toList!4749 lt!1764988)))))))

(declare-fun b!4609041 () Bool)

(assert (=> b!4609041 (= e!2875044 (forall!10683 (t!358318 (t!358318 (toList!4749 lt!1764988))) lambda!187941))))

(assert (= (and d!1452316 (not res!1929330)) b!4609040))

(assert (= (and b!4609040 res!1929331) b!4609041))

(declare-fun b_lambda!170295 () Bool)

(assert (=> (not b_lambda!170295) (not b!4609040)))

(declare-fun m!5439607 () Bool)

(assert (=> b!4609040 m!5439607))

(declare-fun m!5439613 () Bool)

(assert (=> b!4609041 m!5439613))

(assert (=> b!4608468 d!1452316))

(declare-fun tp!1341008 () Bool)

(declare-fun b!4609042 () Bool)

(declare-fun e!2875045 () Bool)

(assert (=> b!4609042 (= e!2875045 (and tp_is_empty!28761 tp_is_empty!28763 tp!1341008))))

(assert (=> b!4608500 (= tp!1340992 e!2875045)))

(assert (= (and b!4608500 (is-Cons!51199 (t!358317 (t!358317 newBucket!178)))) b!4609042))

(declare-fun tp!1341009 () Bool)

(declare-fun e!2875046 () Bool)

(declare-fun b!4609043 () Bool)

(assert (=> b!4609043 (= e!2875046 (and tp_is_empty!28761 tp_is_empty!28763 tp!1341009))))

(assert (=> b!4608505 (= tp!1340997 e!2875046)))

(assert (= (and b!4608505 (is-Cons!51199 (_2!29254 (h!57188 (toList!4749 lm!1477))))) b!4609043))

(declare-fun b!4609044 () Bool)

(declare-fun e!2875047 () Bool)

(declare-fun tp!1341010 () Bool)

(declare-fun tp!1341011 () Bool)

(assert (=> b!4609044 (= e!2875047 (and tp!1341010 tp!1341011))))

(assert (=> b!4608505 (= tp!1340998 e!2875047)))

(assert (= (and b!4608505 (is-Cons!51200 (t!358318 (toList!4749 lm!1477)))) b!4609044))

(declare-fun b_lambda!170297 () Bool)

(assert (= b_lambda!170269 (or d!1451902 b_lambda!170297)))

(declare-fun bs!1015443 () Bool)

(declare-fun d!1452322 () Bool)

(assert (= bs!1015443 (and d!1452322 d!1451902)))

(assert (=> bs!1015443 (= (dynLambda!21432 lambda!187970 (h!57188 (toList!4749 lm!1477))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(assert (=> bs!1015443 m!5438785))

(assert (=> b!4608822 d!1452322))

(declare-fun b_lambda!170299 () Bool)

(assert (= b_lambda!170291 (or d!1451864 b_lambda!170299)))

(declare-fun bs!1015444 () Bool)

(declare-fun d!1452324 () Bool)

(assert (= bs!1015444 (and d!1452324 d!1451864)))

(assert (=> bs!1015444 (= (dynLambda!21432 lambda!187963 (h!57188 (toList!4749 lt!1764988))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(assert (=> bs!1015444 m!5438789))

(assert (=> b!4608964 d!1452324))

(declare-fun b_lambda!170301 () Bool)

(assert (= b_lambda!170273 (or d!1451900 b_lambda!170301)))

(declare-fun bs!1015445 () Bool)

(declare-fun d!1452326 () Bool)

(assert (= bs!1015445 (and d!1452326 d!1451900)))

(assert (=> bs!1015445 (= (dynLambda!21432 lambda!187969 (h!57188 (toList!4749 lm!1477))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(assert (=> bs!1015445 m!5438785))

(assert (=> b!4608826 d!1452326))

(declare-fun b_lambda!170303 () Bool)

(assert (= b_lambda!170271 (or d!1451868 b_lambda!170303)))

(declare-fun bs!1015446 () Bool)

(declare-fun d!1452330 () Bool)

(assert (= bs!1015446 (and d!1452330 d!1451868)))

(assert (=> bs!1015446 (= (dynLambda!21432 lambda!187964 (h!57188 (toList!4749 lt!1764988))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(assert (=> bs!1015446 m!5438789))

(assert (=> b!4608824 d!1452330))

(declare-fun b_lambda!170305 () Bool)

(assert (= b_lambda!170285 (or d!1451920 b_lambda!170305)))

(declare-fun bs!1015447 () Bool)

(declare-fun d!1452332 () Bool)

(assert (= bs!1015447 (and d!1452332 d!1451920)))

(assert (=> bs!1015447 (= (dynLambda!21432 lambda!187976 (h!57188 (toList!4749 lm!1477))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lm!1477)))))))

(assert (=> bs!1015447 m!5438785))

(assert (=> b!4608924 d!1452332))

(declare-fun b_lambda!170307 () Bool)

(assert (= b_lambda!170295 (or start!460702 b_lambda!170307)))

(declare-fun bs!1015448 () Bool)

(declare-fun d!1452334 () Bool)

(assert (= bs!1015448 (and d!1452334 start!460702)))

(assert (=> bs!1015448 (= (dynLambda!21432 lambda!187941 (h!57188 (t!358318 (toList!4749 lt!1764988)))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (t!358318 (toList!4749 lt!1764988))))))))

(declare-fun m!5439623 () Bool)

(assert (=> bs!1015448 m!5439623))

(assert (=> b!4609040 d!1452334))

(declare-fun b_lambda!170309 () Bool)

(assert (= b_lambda!170281 (or d!1451858 b_lambda!170309)))

(declare-fun bs!1015449 () Bool)

(declare-fun d!1452336 () Bool)

(assert (= bs!1015449 (and d!1452336 d!1451858)))

(assert (=> bs!1015449 (= (dynLambda!21432 lambda!187960 (h!57188 (t!358318 (toList!4749 lm!1477)))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> bs!1015449 m!5439071))

(assert (=> b!4608918 d!1452336))

(declare-fun b_lambda!170311 () Bool)

(assert (= b_lambda!170265 (or start!460702 b_lambda!170311)))

(assert (=> d!1452060 d!1451944))

(declare-fun b_lambda!170313 () Bool)

(assert (= b_lambda!170277 (or d!1451936 b_lambda!170313)))

(declare-fun bs!1015450 () Bool)

(declare-fun d!1452338 () Bool)

(assert (= bs!1015450 (and d!1452338 d!1451936)))

(assert (=> bs!1015450 (= (dynLambda!21432 lambda!187982 (h!57188 (toList!4749 lt!1764988))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(assert (=> bs!1015450 m!5438789))

(assert (=> b!4608854 d!1452338))

(declare-fun b_lambda!170315 () Bool)

(assert (= b_lambda!170263 (or start!460702 b_lambda!170315)))

(assert (=> d!1452044 d!1451948))

(declare-fun b_lambda!170317 () Bool)

(assert (= b_lambda!170275 (or d!1451896 b_lambda!170317)))

(declare-fun bs!1015451 () Bool)

(declare-fun d!1452342 () Bool)

(assert (= bs!1015451 (and d!1452342 d!1451896)))

(assert (=> bs!1015451 (= (dynLambda!21432 lambda!187968 (h!57188 (toList!4749 lm!1477))) (allKeysSameHash!1223 (_2!29254 (h!57188 (toList!4749 lm!1477))) (_1!29254 (h!57188 (toList!4749 lm!1477))) hashF!1107))))

(declare-fun m!5439629 () Bool)

(assert (=> bs!1015451 m!5439629))

(assert (=> b!4608832 d!1452342))

(declare-fun b_lambda!170319 () Bool)

(assert (= b_lambda!170267 (or d!1451876 b_lambda!170319)))

(declare-fun bs!1015452 () Bool)

(declare-fun d!1452344 () Bool)

(assert (= bs!1015452 (and d!1452344 d!1451876)))

(assert (=> bs!1015452 (= (dynLambda!21432 lambda!187967 (h!57188 (toList!4749 lt!1764988))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (toList!4749 lt!1764988)))))))

(assert (=> bs!1015452 m!5438789))

(assert (=> b!4608708 d!1452344))

(declare-fun b_lambda!170323 () Bool)

(assert (= b_lambda!170293 (or d!1451924 b_lambda!170323)))

(declare-fun bs!1015453 () Bool)

(declare-fun d!1452348 () Bool)

(assert (= bs!1015453 (and d!1452348 d!1451924)))

(assert (=> bs!1015453 (= (dynLambda!21434 lambda!187979 (h!57187 newBucket!178)) (= (hash!3300 hashF!1107 (_1!29253 (h!57187 newBucket!178))) hash!344))))

(declare-fun m!5439633 () Bool)

(assert (=> bs!1015453 m!5439633))

(assert (=> b!4609036 d!1452348))

(declare-fun b_lambda!170325 () Bool)

(assert (= b_lambda!170279 (or d!1451850 b_lambda!170325)))

(declare-fun bs!1015454 () Bool)

(declare-fun d!1452350 () Bool)

(assert (= bs!1015454 (and d!1452350 d!1451850)))

(assert (=> bs!1015454 (= (dynLambda!21432 lambda!187953 (h!57188 (toList!4749 lt!1764988))) (allKeysSameHash!1223 (_2!29254 (h!57188 (toList!4749 lt!1764988))) (_1!29254 (h!57188 (toList!4749 lt!1764988))) hashF!1107))))

(declare-fun m!5439635 () Bool)

(assert (=> bs!1015454 m!5439635))

(assert (=> b!4608916 d!1452350))

(declare-fun b_lambda!170327 () Bool)

(assert (= b_lambda!170261 (or start!460702 b_lambda!170327)))

(declare-fun bs!1015455 () Bool)

(declare-fun d!1452352 () Bool)

(assert (= bs!1015455 (and d!1452352 start!460702)))

(assert (=> bs!1015455 (= (dynLambda!21432 lambda!187941 (h!57188 (t!358318 (toList!4749 lm!1477)))) (noDuplicateKeys!1367 (_2!29254 (h!57188 (t!358318 (toList!4749 lm!1477))))))))

(assert (=> bs!1015455 m!5439071))

(assert (=> b!4608613 d!1452352))

(push 1)

(assert (not bs!1015449))

(assert (not d!1452162))

(assert (not d!1452080))

(assert (not b_lambda!170297))

(assert (not d!1452152))

(assert (not b!4608913))

(assert (not d!1452272))

(assert (not b_lambda!170315))

(assert (not b!4608752))

(assert (not b!4608726))

(assert (not b_lambda!170239))

(assert (not d!1452086))

(assert (not b!4608781))

(assert (not d!1452234))

(assert (not d!1452282))

(assert (not b_lambda!170301))

(assert (not b!4609018))

(assert (not b!4608796))

(assert (not b!4608844))

(assert (not b!4608999))

(assert (not b!4609014))

(assert tp_is_empty!28761)

(assert (not b!4608772))

(assert (not b!4608665))

(assert (not d!1452030))

(assert (not b!4609039))

(assert (not b!4608963))

(assert (not b!4608652))

(assert (not b!4608699))

(assert (not b!4608805))

(assert (not b_lambda!170317))

(assert (not b!4608973))

(assert (not b!4608888))

(assert (not b!4608648))

(assert (not b!4608950))

(assert (not b!4608797))

(assert (not b_lambda!170313))

(assert (not b!4608819))

(assert (not b!4608658))

(assert (not d!1452026))

(assert (not bs!1015444))

(assert (not b!4608727))

(assert (not b!4608846))

(assert (not d!1452074))

(assert (not d!1452288))

(assert (not b!4609013))

(assert (not b!4608965))

(assert (not d!1452050))

(assert (not b_lambda!170311))

(assert (not b!4608777))

(assert (not b!4608776))

(assert (not bm!321387))

(assert (not b!4608614))

(assert (not b!4608840))

(assert (not b!4608671))

(assert (not b!4608692))

(assert (not b!4608713))

(assert (not d!1452308))

(assert (not b!4608893))

(assert (not d!1452290))

(assert (not d!1452296))

(assert (not b!4608975))

(assert (not b!4608909))

(assert (not d!1452184))

(assert (not d!1452136))

(assert (not b!4608891))

(assert (not d!1452208))

(assert (not d!1452158))

(assert tp_is_empty!28763)

(assert (not b!4608919))

(assert (not d!1452098))

(assert (not d!1452278))

(assert (not b!4608842))

(assert (not bs!1015451))

(assert (not d!1452036))

(assert (not b!4609044))

(assert (not b!4608634))

(assert (not b!4608650))

(assert (not b!4608783))

(assert (not b!4608835))

(assert (not b!4609037))

(assert (not b!4609012))

(assert (not d!1452196))

(assert (not d!1452244))

(assert (not b!4609043))

(assert (not b!4609016))

(assert (not d!1452078))

(assert (not d!1452144))

(assert (not b!4608848))

(assert (not d!1452218))

(assert (not b!4608911))

(assert (not d!1452310))

(assert (not b!4608993))

(assert (not b!4608825))

(assert (not b_lambda!170323))

(assert (not b!4608802))

(assert (not d!1452268))

(assert (not b_lambda!170305))

(assert (not b!4608693))

(assert (not d!1452106))

(assert (not bs!1015446))

(assert (not b_lambda!170241))

(assert (not d!1452270))

(assert (not b!4608833))

(assert (not bs!1015445))

(assert (not d!1452314))

(assert (not b!4608710))

(assert (not b!4608704))

(assert (not b!4608799))

(assert (not b!4608912))

(assert (not b!4608823))

(assert (not b!4608691))

(assert (not b!4608709))

(assert (not d!1452116))

(assert (not b!4608959))

(assert (not d!1452264))

(assert (not b!4608982))

(assert (not b!4609008))

(assert (not b!4608668))

(assert (not b!4609007))

(assert (not b!4608818))

(assert (not b!4608974))

(assert (not b!4609000))

(assert (not bs!1015447))

(assert (not b!4608917))

(assert (not b!4608838))

(assert (not b!4608998))

(assert (not b!4608827))

(assert (not bs!1015453))

(assert (not b!4608800))

(assert (not d!1452072))

(assert (not bs!1015450))

(assert (not b_lambda!170303))

(assert (not b!4608622))

(assert (not b!4608843))

(assert (not b!4608961))

(assert (not b!4608775))

(assert (not b!4609017))

(assert (not b_lambda!170243))

(assert (not b_lambda!170309))

(assert (not d!1452312))

(assert (not b!4608795))

(assert (not d!1452024))

(assert (not b!4608754))

(assert (not bm!321384))

(assert (not bm!321390))

(assert (not b!4608968))

(assert (not b!4608925))

(assert (not b!4608707))

(assert (not b_lambda!170245))

(assert (not d!1452170))

(assert (not b!4608747))

(assert (not b_lambda!170319))

(assert (not b!4609041))

(assert (not b!4608855))

(assert (not d!1452038))

(assert (not b!4608740))

(assert (not b!4608914))

(assert (not d!1452142))

(assert (not d!1452090))

(assert (not b!4608645))

(assert (not b!4608886))

(assert (not b_lambda!170327))

(assert (not d!1452148))

(assert (not d!1452222))

(assert (not b!4609020))

(assert (not b!4608748))

(assert (not b!4609042))

(assert (not b!4608728))

(assert (not b!4608861))

(assert (not b!4608660))

(assert (not b!4608892))

(assert (not d!1452056))

(assert (not d!1452046))

(assert (not b!4609009))

(assert (not bm!321386))

(assert (not b!4608662))

(assert (not b!4608863))

(assert (not bm!321383))

(assert (not b!4608628))

(assert (not b!4608887))

(assert (not b!4608697))

(assert (not b!4608616))

(assert (not b!4608971))

(assert (not b!4609002))

(assert (not b_lambda!170325))

(assert (not bs!1015452))

(assert (not bm!321388))

(assert (not d!1452262))

(assert (not b!4608746))

(assert (not b!4608705))

(assert (not d!1452052))

(assert (not d!1452286))

(assert (not d!1452084))

(assert (not bs!1015455))

(assert (not d!1452292))

(assert (not b_lambda!170299))

(assert (not bm!321389))

(assert (not bm!321391))

(assert (not d!1452254))

(assert (not b!4608647))

(assert (not d!1452066))

(assert (not b!4608667))

(assert (not bm!321385))

(assert (not bs!1015454))

(assert (not b!4608821))

(assert (not d!1452214))

(assert (not b!4608725))

(assert (not bs!1015448))

(assert (not b!4608978))

(assert (not b_lambda!170307))

(assert (not d!1452180))

(assert (not b!4608894))

(assert (not bs!1015443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

