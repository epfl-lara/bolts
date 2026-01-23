; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!447896 () Bool)

(assert start!447896)

(declare-fun bs!857620 () Bool)

(declare-fun b!4522301 () Bool)

(assert (= bs!857620 (and b!4522301 start!447896)))

(declare-fun lambda!172793 () Int)

(declare-fun lambda!172792 () Int)

(assert (=> bs!857620 (not (= lambda!172793 lambda!172792))))

(assert (=> b!4522301 true))

(declare-fun b!4522275 () Bool)

(declare-fun e!2817555 () Bool)

(declare-datatypes ((K!12055 0))(
  ( (K!12056 (val!17915 Int)) )
))
(declare-datatypes ((V!12301 0))(
  ( (V!12302 (val!17916 Int)) )
))
(declare-datatypes ((tuple2!51098 0))(
  ( (tuple2!51099 (_1!28843 K!12055) (_2!28843 V!12301)) )
))
(declare-datatypes ((List!50786 0))(
  ( (Nil!50662) (Cons!50662 (h!56519 tuple2!51098) (t!357748 List!50786)) )
))
(declare-datatypes ((tuple2!51100 0))(
  ( (tuple2!51101 (_1!28844 (_ BitVec 64)) (_2!28844 List!50786)) )
))
(declare-datatypes ((List!50787 0))(
  ( (Nil!50663) (Cons!50663 (h!56520 tuple2!51100) (t!357749 List!50787)) )
))
(declare-datatypes ((ListLongMap!2971 0))(
  ( (ListLongMap!2972 (toList!4339 List!50787)) )
))
(declare-fun lm!1477 () ListLongMap!2971)

(declare-fun contains!13397 (List!50787 tuple2!51100) Bool)

(assert (=> b!4522275 (= e!2817555 (contains!13397 (toList!4339 lm!1477) (h!56520 (toList!4339 lm!1477))))))

(declare-fun b!4522276 () Bool)

(declare-fun e!2817549 () Bool)

(declare-fun e!2817548 () Bool)

(assert (=> b!4522276 (= e!2817549 e!2817548)))

(declare-fun res!1882430 () Bool)

(assert (=> b!4522276 (=> res!1882430 e!2817548)))

(declare-fun lt!1699199 () ListLongMap!2971)

(declare-fun lt!1699176 () tuple2!51100)

(declare-fun +!1548 (ListLongMap!2971 tuple2!51100) ListLongMap!2971)

(assert (=> b!4522276 (= res!1882430 (not (= lt!1699199 (+!1548 lm!1477 lt!1699176))))))

(declare-fun lt!1699198 () ListLongMap!2971)

(declare-fun lt!1699180 () tuple2!51100)

(assert (=> b!4522276 (= lt!1699199 (+!1548 lt!1699198 lt!1699180))))

(declare-fun b!4522277 () Bool)

(declare-fun e!2817543 () Bool)

(declare-fun e!2817551 () Bool)

(assert (=> b!4522277 (= e!2817543 e!2817551)))

(declare-fun res!1882407 () Bool)

(assert (=> b!4522277 (=> res!1882407 e!2817551)))

(declare-fun lt!1699178 () Bool)

(assert (=> b!4522277 (= res!1882407 lt!1699178)))

(declare-datatypes ((Unit!95438 0))(
  ( (Unit!95439) )
))
(declare-fun lt!1699184 () Unit!95438)

(declare-fun e!2817553 () Unit!95438)

(assert (=> b!4522277 (= lt!1699184 e!2817553)))

(declare-fun c!771817 () Bool)

(assert (=> b!4522277 (= c!771817 lt!1699178)))

(declare-fun lt!1699189 () List!50786)

(declare-fun key!3287 () K!12055)

(declare-fun containsKey!1794 (List!50786 K!12055) Bool)

(assert (=> b!4522277 (= lt!1699178 (not (containsKey!1794 lt!1699189 key!3287)))))

(declare-fun b!4522278 () Bool)

(declare-fun e!2817539 () Bool)

(declare-fun e!2817540 () Bool)

(assert (=> b!4522278 (= e!2817539 (not e!2817540))))

(declare-fun res!1882416 () Bool)

(assert (=> b!4522278 (=> res!1882416 e!2817540)))

(declare-fun newBucket!178 () List!50786)

(declare-fun removePairForKey!793 (List!50786 K!12055) List!50786)

(assert (=> b!4522278 (= res!1882416 (not (= newBucket!178 (removePairForKey!793 lt!1699189 key!3287))))))

(declare-fun lt!1699175 () tuple2!51100)

(declare-fun lt!1699181 () Unit!95438)

(declare-fun forallContained!2527 (List!50787 Int tuple2!51100) Unit!95438)

(assert (=> b!4522278 (= lt!1699181 (forallContained!2527 (toList!4339 lm!1477) lambda!172792 lt!1699175))))

(assert (=> b!4522278 (contains!13397 (toList!4339 lm!1477) lt!1699175)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4522278 (= lt!1699175 (tuple2!51101 hash!344 lt!1699189))))

(declare-fun lt!1699200 () Unit!95438)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!678 (List!50787 (_ BitVec 64) List!50786) Unit!95438)

(assert (=> b!4522278 (= lt!1699200 (lemmaGetValueByKeyImpliesContainsTuple!678 (toList!4339 lm!1477) hash!344 lt!1699189))))

(declare-fun apply!11903 (ListLongMap!2971 (_ BitVec 64)) List!50786)

(assert (=> b!4522278 (= lt!1699189 (apply!11903 lm!1477 hash!344))))

(declare-fun lt!1699186 () (_ BitVec 64))

(declare-fun contains!13398 (ListLongMap!2971 (_ BitVec 64)) Bool)

(assert (=> b!4522278 (contains!13398 lm!1477 lt!1699186)))

(declare-datatypes ((Hashable!5561 0))(
  ( (HashableExt!5560 (__x!31264 Int)) )
))
(declare-fun hashF!1107 () Hashable!5561)

(declare-fun lt!1699194 () Unit!95438)

(declare-fun lemmaInGenMapThenLongMapContainsHash!240 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> b!4522278 (= lt!1699194 (lemmaInGenMapThenLongMapContainsHash!240 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4522279 () Bool)

(declare-fun res!1882419 () Bool)

(assert (=> b!4522279 (=> res!1882419 e!2817540)))

(declare-fun noDuplicateKeys!1166 (List!50786) Bool)

(assert (=> b!4522279 (= res!1882419 (not (noDuplicateKeys!1166 newBucket!178)))))

(declare-fun b!4522280 () Bool)

(declare-fun Unit!95440 () Unit!95438)

(assert (=> b!4522280 (= e!2817553 Unit!95440)))

(declare-fun lt!1699187 () Unit!95438)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!154 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> b!4522280 (= lt!1699187 (lemmaNotInItsHashBucketThenNotInMap!154 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4522280 false))

(declare-fun res!1882425 () Bool)

(declare-fun e!2817546 () Bool)

(assert (=> start!447896 (=> (not res!1882425) (not e!2817546))))

(declare-fun forall!10275 (List!50787 Int) Bool)

(assert (=> start!447896 (= res!1882425 (forall!10275 (toList!4339 lm!1477) lambda!172792))))

(assert (=> start!447896 e!2817546))

(assert (=> start!447896 true))

(declare-fun e!2817544 () Bool)

(declare-fun inv!66239 (ListLongMap!2971) Bool)

(assert (=> start!447896 (and (inv!66239 lm!1477) e!2817544)))

(declare-fun tp_is_empty!27941 () Bool)

(assert (=> start!447896 tp_is_empty!27941))

(declare-fun e!2817554 () Bool)

(assert (=> start!447896 e!2817554))

(declare-fun b!4522281 () Bool)

(assert (=> b!4522281 (= e!2817540 e!2817543)))

(declare-fun res!1882428 () Bool)

(assert (=> b!4522281 (=> res!1882428 e!2817543)))

(declare-fun lt!1699173 () ListLongMap!2971)

(assert (=> b!4522281 (= res!1882428 (not (contains!13398 lt!1699173 hash!344)))))

(declare-fun tail!7744 (ListLongMap!2971) ListLongMap!2971)

(assert (=> b!4522281 (= lt!1699173 (tail!7744 lm!1477))))

(declare-fun b!4522282 () Bool)

(declare-fun res!1882420 () Bool)

(assert (=> b!4522282 (=> res!1882420 e!2817543)))

(assert (=> b!4522282 (= res!1882420 (not (contains!13397 (t!357749 (toList!4339 lm!1477)) lt!1699175)))))

(declare-fun b!4522283 () Bool)

(declare-fun res!1882426 () Bool)

(assert (=> b!4522283 (=> (not res!1882426) (not e!2817539))))

(declare-fun allKeysSameHash!1020 (List!50786 (_ BitVec 64) Hashable!5561) Bool)

(assert (=> b!4522283 (= res!1882426 (allKeysSameHash!1020 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4522284 () Bool)

(declare-fun res!1882423 () Bool)

(assert (=> b!4522284 (=> res!1882423 e!2817549)))

(declare-datatypes ((ListMap!3601 0))(
  ( (ListMap!3602 (toList!4340 List!50786)) )
))
(declare-fun lt!1699195 () ListMap!3601)

(declare-fun lt!1699188 () ListMap!3601)

(declare-fun eq!623 (ListMap!3601 ListMap!3601) Bool)

(assert (=> b!4522284 (= res!1882423 (not (eq!623 lt!1699195 lt!1699188)))))

(declare-fun b!4522285 () Bool)

(declare-fun e!2817545 () Bool)

(declare-fun e!2817542 () Bool)

(assert (=> b!4522285 (= e!2817545 e!2817542)))

(declare-fun res!1882417 () Bool)

(assert (=> b!4522285 (=> res!1882417 e!2817542)))

(declare-fun contains!13399 (ListMap!3601 K!12055) Bool)

(declare-fun extractMap!1222 (List!50787) ListMap!3601)

(assert (=> b!4522285 (= res!1882417 (not (contains!13399 (extractMap!1222 (t!357749 (toList!4339 lm!1477))) key!3287)))))

(declare-fun lt!1699177 () ListMap!3601)

(assert (=> b!4522285 (contains!13399 lt!1699177 key!3287)))

(assert (=> b!4522285 (= lt!1699177 (extractMap!1222 (toList!4339 lt!1699173)))))

(declare-fun lt!1699174 () Unit!95438)

(declare-fun lemmaListContainsThenExtractedMapContains!136 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> b!4522285 (= lt!1699174 (lemmaListContainsThenExtractedMapContains!136 lt!1699173 key!3287 hashF!1107))))

(declare-fun b!4522286 () Bool)

(assert (=> b!4522286 (= e!2817551 e!2817545)))

(declare-fun res!1882409 () Bool)

(assert (=> b!4522286 (=> res!1882409 e!2817545)))

(declare-fun containsKeyBiggerList!146 (List!50787 K!12055) Bool)

(assert (=> b!4522286 (= res!1882409 (not (containsKeyBiggerList!146 (t!357749 (toList!4339 lm!1477)) key!3287)))))

(assert (=> b!4522286 (containsKeyBiggerList!146 (toList!4339 lt!1699173) key!3287)))

(declare-fun lt!1699179 () Unit!95438)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!82 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> b!4522286 (= lt!1699179 (lemmaInLongMapThenContainsKeyBiggerList!82 lt!1699173 key!3287 hashF!1107))))

(declare-fun b!4522287 () Bool)

(declare-fun Unit!95441 () Unit!95438)

(assert (=> b!4522287 (= e!2817553 Unit!95441)))

(declare-fun tp_is_empty!27943 () Bool)

(declare-fun b!4522288 () Bool)

(declare-fun tp!1338160 () Bool)

(assert (=> b!4522288 (= e!2817554 (and tp_is_empty!27941 tp_is_empty!27943 tp!1338160))))

(declare-fun b!4522289 () Bool)

(declare-fun e!2817547 () Bool)

(declare-fun e!2817552 () Bool)

(assert (=> b!4522289 (= e!2817547 e!2817552)))

(declare-fun res!1882408 () Bool)

(assert (=> b!4522289 (=> res!1882408 e!2817552)))

(assert (=> b!4522289 (= res!1882408 (not (noDuplicateKeys!1166 (_2!28844 lt!1699180))))))

(declare-fun lt!1699183 () Unit!95438)

(assert (=> b!4522289 (= lt!1699183 (forallContained!2527 (toList!4339 lm!1477) lambda!172792 (h!56520 (toList!4339 lm!1477))))))

(declare-fun b!4522290 () Bool)

(declare-fun e!2817541 () Bool)

(assert (=> b!4522290 (= e!2817541 e!2817539)))

(declare-fun res!1882427 () Bool)

(assert (=> b!4522290 (=> (not res!1882427) (not e!2817539))))

(assert (=> b!4522290 (= res!1882427 (= lt!1699186 hash!344))))

(declare-fun hash!2823 (Hashable!5561 K!12055) (_ BitVec 64))

(assert (=> b!4522290 (= lt!1699186 (hash!2823 hashF!1107 key!3287))))

(declare-fun b!4522291 () Bool)

(declare-fun tp!1338161 () Bool)

(assert (=> b!4522291 (= e!2817544 tp!1338161)))

(declare-fun b!4522292 () Bool)

(declare-fun res!1882411 () Bool)

(assert (=> b!4522292 (=> res!1882411 e!2817552)))

(assert (=> b!4522292 (= res!1882411 (not (containsKey!1794 (_2!28844 lt!1699180) key!3287)))))

(declare-fun b!4522293 () Bool)

(assert (=> b!4522293 (= e!2817542 e!2817549)))

(declare-fun res!1882414 () Bool)

(assert (=> b!4522293 (=> res!1882414 e!2817549)))

(assert (=> b!4522293 (= res!1882414 (not (eq!623 lt!1699188 lt!1699195)))))

(assert (=> b!4522293 (= lt!1699188 (extractMap!1222 (toList!4339 (+!1548 lt!1699173 lt!1699180))))))

(declare-fun head!9422 (ListLongMap!2971) tuple2!51100)

(assert (=> b!4522293 (= lt!1699180 (head!9422 lm!1477))))

(declare-fun lt!1699190 () ListMap!3601)

(declare-fun lt!1699196 () ListMap!3601)

(assert (=> b!4522293 (eq!623 lt!1699190 lt!1699196)))

(declare-fun -!392 (ListMap!3601 K!12055) ListMap!3601)

(assert (=> b!4522293 (= lt!1699196 (-!392 lt!1699177 key!3287))))

(assert (=> b!4522293 (= lt!1699190 (extractMap!1222 (toList!4339 lt!1699198)))))

(assert (=> b!4522293 (= lt!1699198 (+!1548 lt!1699173 lt!1699176))))

(assert (=> b!4522293 (= lt!1699176 (tuple2!51101 hash!344 newBucket!178))))

(declare-fun lt!1699192 () Unit!95438)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!151 (ListLongMap!2971 (_ BitVec 64) List!50786 K!12055 Hashable!5561) Unit!95438)

(assert (=> b!4522293 (= lt!1699192 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!151 lt!1699173 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4522294 () Bool)

(declare-fun res!1882422 () Bool)

(assert (=> b!4522294 (=> (not res!1882422) (not e!2817546))))

(declare-fun allKeysSameHashInMap!1273 (ListLongMap!2971 Hashable!5561) Bool)

(assert (=> b!4522294 (= res!1882422 (allKeysSameHashInMap!1273 lm!1477 hashF!1107))))

(declare-fun b!4522295 () Bool)

(declare-fun res!1882412 () Bool)

(assert (=> b!4522295 (=> res!1882412 e!2817549)))

(assert (=> b!4522295 (= res!1882412 (bvsge (_1!28844 lt!1699180) hash!344))))

(declare-fun b!4522296 () Bool)

(declare-fun e!2817550 () Bool)

(assert (=> b!4522296 (= e!2817548 e!2817550)))

(declare-fun res!1882429 () Bool)

(assert (=> b!4522296 (=> res!1882429 e!2817550)))

(declare-fun lt!1699197 () ListMap!3601)

(declare-fun lt!1699182 () ListMap!3601)

(assert (=> b!4522296 (= res!1882429 (not (eq!623 lt!1699197 lt!1699182)))))

(declare-fun addToMapMapFromBucket!693 (List!50786 ListMap!3601) ListMap!3601)

(assert (=> b!4522296 (= lt!1699182 (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699190))))

(assert (=> b!4522296 (= lt!1699197 (extractMap!1222 (toList!4339 lt!1699199)))))

(declare-fun b!4522297 () Bool)

(declare-fun res!1882418 () Bool)

(assert (=> b!4522297 (=> res!1882418 e!2817540)))

(get-info :version)

(assert (=> b!4522297 (= res!1882418 (or ((_ is Nil!50663) (toList!4339 lm!1477)) (= (_1!28844 (h!56520 (toList!4339 lm!1477))) hash!344)))))

(declare-fun b!4522298 () Bool)

(assert (=> b!4522298 (= e!2817546 e!2817541)))

(declare-fun res!1882413 () Bool)

(assert (=> b!4522298 (=> (not res!1882413) (not e!2817541))))

(assert (=> b!4522298 (= res!1882413 (contains!13399 lt!1699195 key!3287))))

(assert (=> b!4522298 (= lt!1699195 (extractMap!1222 (toList!4339 lm!1477)))))

(declare-fun b!4522299 () Bool)

(declare-fun res!1882424 () Bool)

(assert (=> b!4522299 (=> res!1882424 e!2817543)))

(assert (=> b!4522299 (= res!1882424 (not (= (apply!11903 lt!1699173 hash!344) lt!1699189)))))

(declare-fun b!4522300 () Bool)

(assert (=> b!4522300 (= e!2817550 e!2817547)))

(declare-fun res!1882415 () Bool)

(assert (=> b!4522300 (=> res!1882415 e!2817547)))

(declare-fun lt!1699191 () ListMap!3601)

(assert (=> b!4522300 (= res!1882415 (not (eq!623 lt!1699197 lt!1699191)))))

(assert (=> b!4522300 (eq!623 lt!1699182 lt!1699191)))

(assert (=> b!4522300 (= lt!1699191 (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699196))))

(declare-fun lt!1699185 () Unit!95438)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!42 (ListMap!3601 ListMap!3601 List!50786) Unit!95438)

(assert (=> b!4522300 (= lt!1699185 (lemmaAddToMapFromBucketPreservesEquivalence!42 lt!1699190 lt!1699196 (_2!28844 lt!1699180)))))

(assert (=> b!4522301 (= e!2817552 e!2817555)))

(declare-fun res!1882410 () Bool)

(assert (=> b!4522301 (=> (not res!1882410) (not e!2817555))))

(assert (=> b!4522301 (= res!1882410 (forall!10275 (toList!4339 lm!1477) lambda!172793))))

(declare-datatypes ((Option!11121 0))(
  ( (None!11120) (Some!11120 (v!44728 tuple2!51098)) )
))
(declare-fun lt!1699193 () Option!11121)

(declare-fun getPair!182 (List!50786 K!12055) Option!11121)

(assert (=> b!4522301 (= lt!1699193 (getPair!182 (_2!28844 lt!1699180) key!3287))))

(assert (=> b!4522301 (not (= hash!344 (_1!28844 lt!1699180)))))

(declare-fun b!4522302 () Bool)

(declare-fun res!1882421 () Bool)

(assert (=> b!4522302 (=> res!1882421 e!2817548)))

(assert (=> b!4522302 (= res!1882421 (not (= (head!9422 lt!1699199) lt!1699180)))))

(assert (= (and start!447896 res!1882425) b!4522294))

(assert (= (and b!4522294 res!1882422) b!4522298))

(assert (= (and b!4522298 res!1882413) b!4522290))

(assert (= (and b!4522290 res!1882427) b!4522283))

(assert (= (and b!4522283 res!1882426) b!4522278))

(assert (= (and b!4522278 (not res!1882416)) b!4522279))

(assert (= (and b!4522279 (not res!1882419)) b!4522297))

(assert (= (and b!4522297 (not res!1882418)) b!4522281))

(assert (= (and b!4522281 (not res!1882428)) b!4522299))

(assert (= (and b!4522299 (not res!1882424)) b!4522282))

(assert (= (and b!4522282 (not res!1882420)) b!4522277))

(assert (= (and b!4522277 c!771817) b!4522280))

(assert (= (and b!4522277 (not c!771817)) b!4522287))

(assert (= (and b!4522277 (not res!1882407)) b!4522286))

(assert (= (and b!4522286 (not res!1882409)) b!4522285))

(assert (= (and b!4522285 (not res!1882417)) b!4522293))

(assert (= (and b!4522293 (not res!1882414)) b!4522284))

(assert (= (and b!4522284 (not res!1882423)) b!4522295))

(assert (= (and b!4522295 (not res!1882412)) b!4522276))

(assert (= (and b!4522276 (not res!1882430)) b!4522302))

(assert (= (and b!4522302 (not res!1882421)) b!4522296))

(assert (= (and b!4522296 (not res!1882429)) b!4522300))

(assert (= (and b!4522300 (not res!1882415)) b!4522289))

(assert (= (and b!4522289 (not res!1882408)) b!4522292))

(assert (= (and b!4522292 (not res!1882411)) b!4522301))

(assert (= (and b!4522301 res!1882410) b!4522275))

(assert (= start!447896 b!4522291))

(assert (= (and start!447896 ((_ is Cons!50662) newBucket!178)) b!4522288))

(declare-fun m!5272097 () Bool)

(assert (=> b!4522301 m!5272097))

(declare-fun m!5272099 () Bool)

(assert (=> b!4522301 m!5272099))

(declare-fun m!5272101 () Bool)

(assert (=> b!4522294 m!5272101))

(declare-fun m!5272103 () Bool)

(assert (=> b!4522293 m!5272103))

(declare-fun m!5272105 () Bool)

(assert (=> b!4522293 m!5272105))

(declare-fun m!5272107 () Bool)

(assert (=> b!4522293 m!5272107))

(declare-fun m!5272109 () Bool)

(assert (=> b!4522293 m!5272109))

(declare-fun m!5272111 () Bool)

(assert (=> b!4522293 m!5272111))

(declare-fun m!5272113 () Bool)

(assert (=> b!4522293 m!5272113))

(declare-fun m!5272115 () Bool)

(assert (=> b!4522293 m!5272115))

(declare-fun m!5272117 () Bool)

(assert (=> b!4522293 m!5272117))

(declare-fun m!5272119 () Bool)

(assert (=> b!4522293 m!5272119))

(declare-fun m!5272121 () Bool)

(assert (=> b!4522280 m!5272121))

(declare-fun m!5272123 () Bool)

(assert (=> b!4522284 m!5272123))

(declare-fun m!5272125 () Bool)

(assert (=> b!4522276 m!5272125))

(declare-fun m!5272127 () Bool)

(assert (=> b!4522276 m!5272127))

(declare-fun m!5272129 () Bool)

(assert (=> b!4522296 m!5272129))

(declare-fun m!5272131 () Bool)

(assert (=> b!4522296 m!5272131))

(declare-fun m!5272133 () Bool)

(assert (=> b!4522296 m!5272133))

(declare-fun m!5272135 () Bool)

(assert (=> b!4522289 m!5272135))

(declare-fun m!5272137 () Bool)

(assert (=> b!4522289 m!5272137))

(declare-fun m!5272139 () Bool)

(assert (=> b!4522281 m!5272139))

(declare-fun m!5272141 () Bool)

(assert (=> b!4522281 m!5272141))

(declare-fun m!5272143 () Bool)

(assert (=> b!4522298 m!5272143))

(declare-fun m!5272145 () Bool)

(assert (=> b!4522298 m!5272145))

(declare-fun m!5272147 () Bool)

(assert (=> b!4522292 m!5272147))

(declare-fun m!5272149 () Bool)

(assert (=> b!4522286 m!5272149))

(declare-fun m!5272151 () Bool)

(assert (=> b!4522286 m!5272151))

(declare-fun m!5272153 () Bool)

(assert (=> b!4522286 m!5272153))

(declare-fun m!5272155 () Bool)

(assert (=> b!4522302 m!5272155))

(declare-fun m!5272157 () Bool)

(assert (=> b!4522285 m!5272157))

(declare-fun m!5272159 () Bool)

(assert (=> b!4522285 m!5272159))

(declare-fun m!5272161 () Bool)

(assert (=> b!4522285 m!5272161))

(declare-fun m!5272163 () Bool)

(assert (=> b!4522285 m!5272163))

(assert (=> b!4522285 m!5272161))

(declare-fun m!5272165 () Bool)

(assert (=> b!4522285 m!5272165))

(declare-fun m!5272167 () Bool)

(assert (=> b!4522275 m!5272167))

(declare-fun m!5272169 () Bool)

(assert (=> b!4522282 m!5272169))

(declare-fun m!5272171 () Bool)

(assert (=> start!447896 m!5272171))

(declare-fun m!5272173 () Bool)

(assert (=> start!447896 m!5272173))

(declare-fun m!5272175 () Bool)

(assert (=> b!4522290 m!5272175))

(declare-fun m!5272177 () Bool)

(assert (=> b!4522278 m!5272177))

(declare-fun m!5272179 () Bool)

(assert (=> b!4522278 m!5272179))

(declare-fun m!5272181 () Bool)

(assert (=> b!4522278 m!5272181))

(declare-fun m!5272183 () Bool)

(assert (=> b!4522278 m!5272183))

(declare-fun m!5272185 () Bool)

(assert (=> b!4522278 m!5272185))

(declare-fun m!5272187 () Bool)

(assert (=> b!4522278 m!5272187))

(declare-fun m!5272189 () Bool)

(assert (=> b!4522278 m!5272189))

(declare-fun m!5272191 () Bool)

(assert (=> b!4522300 m!5272191))

(declare-fun m!5272193 () Bool)

(assert (=> b!4522300 m!5272193))

(declare-fun m!5272195 () Bool)

(assert (=> b!4522300 m!5272195))

(declare-fun m!5272197 () Bool)

(assert (=> b!4522300 m!5272197))

(declare-fun m!5272199 () Bool)

(assert (=> b!4522283 m!5272199))

(declare-fun m!5272201 () Bool)

(assert (=> b!4522299 m!5272201))

(declare-fun m!5272203 () Bool)

(assert (=> b!4522277 m!5272203))

(declare-fun m!5272205 () Bool)

(assert (=> b!4522279 m!5272205))

(check-sat (not b!4522279) (not b!4522286) tp_is_empty!27941 (not b!4522275) (not b!4522280) (not b!4522293) (not b!4522292) (not b!4522283) (not b!4522294) (not b!4522285) (not b!4522302) (not b!4522298) (not b!4522296) tp_is_empty!27943 (not b!4522284) (not start!447896) (not b!4522277) (not b!4522278) (not b!4522281) (not b!4522291) (not b!4522288) (not b!4522276) (not b!4522301) (not b!4522282) (not b!4522289) (not b!4522300) (not b!4522290) (not b!4522299))
(check-sat)
(get-model)

(declare-fun d!1393655 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8367 (List!50786) (InoxSet tuple2!51098))

(assert (=> d!1393655 (= (eq!623 lt!1699195 lt!1699188) (= (content!8367 (toList!4340 lt!1699195)) (content!8367 (toList!4340 lt!1699188))))))

(declare-fun bs!857621 () Bool)

(assert (= bs!857621 d!1393655))

(declare-fun m!5272207 () Bool)

(assert (=> bs!857621 m!5272207))

(declare-fun m!5272209 () Bool)

(assert (=> bs!857621 m!5272209))

(assert (=> b!4522284 d!1393655))

(declare-fun d!1393657 () Bool)

(assert (=> d!1393657 true))

(assert (=> d!1393657 true))

(declare-fun lambda!172796 () Int)

(declare-fun forall!10276 (List!50786 Int) Bool)

(assert (=> d!1393657 (= (allKeysSameHash!1020 newBucket!178 hash!344 hashF!1107) (forall!10276 newBucket!178 lambda!172796))))

(declare-fun bs!857622 () Bool)

(assert (= bs!857622 d!1393657))

(declare-fun m!5272211 () Bool)

(assert (=> bs!857622 m!5272211))

(assert (=> b!4522283 d!1393657))

(declare-fun d!1393659 () Bool)

(declare-fun res!1882439 () Bool)

(declare-fun e!2817563 () Bool)

(assert (=> d!1393659 (=> res!1882439 e!2817563)))

(declare-fun e!2817562 () Bool)

(assert (=> d!1393659 (= res!1882439 e!2817562)))

(declare-fun res!1882438 () Bool)

(assert (=> d!1393659 (=> (not res!1882438) (not e!2817562))))

(assert (=> d!1393659 (= res!1882438 ((_ is Cons!50663) (t!357749 (toList!4339 lm!1477))))))

(assert (=> d!1393659 (= (containsKeyBiggerList!146 (t!357749 (toList!4339 lm!1477)) key!3287) e!2817563)))

(declare-fun b!4522315 () Bool)

(assert (=> b!4522315 (= e!2817562 (containsKey!1794 (_2!28844 (h!56520 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(declare-fun b!4522316 () Bool)

(declare-fun e!2817564 () Bool)

(assert (=> b!4522316 (= e!2817563 e!2817564)))

(declare-fun res!1882437 () Bool)

(assert (=> b!4522316 (=> (not res!1882437) (not e!2817564))))

(assert (=> b!4522316 (= res!1882437 ((_ is Cons!50663) (t!357749 (toList!4339 lm!1477))))))

(declare-fun b!4522317 () Bool)

(assert (=> b!4522317 (= e!2817564 (containsKeyBiggerList!146 (t!357749 (t!357749 (toList!4339 lm!1477))) key!3287))))

(assert (= (and d!1393659 res!1882438) b!4522315))

(assert (= (and d!1393659 (not res!1882439)) b!4522316))

(assert (= (and b!4522316 res!1882437) b!4522317))

(declare-fun m!5272213 () Bool)

(assert (=> b!4522315 m!5272213))

(declare-fun m!5272215 () Bool)

(assert (=> b!4522317 m!5272215))

(assert (=> b!4522286 d!1393659))

(declare-fun d!1393661 () Bool)

(declare-fun res!1882442 () Bool)

(declare-fun e!2817566 () Bool)

(assert (=> d!1393661 (=> res!1882442 e!2817566)))

(declare-fun e!2817565 () Bool)

(assert (=> d!1393661 (= res!1882442 e!2817565)))

(declare-fun res!1882441 () Bool)

(assert (=> d!1393661 (=> (not res!1882441) (not e!2817565))))

(assert (=> d!1393661 (= res!1882441 ((_ is Cons!50663) (toList!4339 lt!1699173)))))

(assert (=> d!1393661 (= (containsKeyBiggerList!146 (toList!4339 lt!1699173) key!3287) e!2817566)))

(declare-fun b!4522318 () Bool)

(assert (=> b!4522318 (= e!2817565 (containsKey!1794 (_2!28844 (h!56520 (toList!4339 lt!1699173))) key!3287))))

(declare-fun b!4522319 () Bool)

(declare-fun e!2817567 () Bool)

(assert (=> b!4522319 (= e!2817566 e!2817567)))

(declare-fun res!1882440 () Bool)

(assert (=> b!4522319 (=> (not res!1882440) (not e!2817567))))

(assert (=> b!4522319 (= res!1882440 ((_ is Cons!50663) (toList!4339 lt!1699173)))))

(declare-fun b!4522320 () Bool)

(assert (=> b!4522320 (= e!2817567 (containsKeyBiggerList!146 (t!357749 (toList!4339 lt!1699173)) key!3287))))

(assert (= (and d!1393661 res!1882441) b!4522318))

(assert (= (and d!1393661 (not res!1882442)) b!4522319))

(assert (= (and b!4522319 res!1882440) b!4522320))

(declare-fun m!5272217 () Bool)

(assert (=> b!4522318 m!5272217))

(declare-fun m!5272219 () Bool)

(assert (=> b!4522320 m!5272219))

(assert (=> b!4522286 d!1393661))

(declare-fun bs!857623 () Bool)

(declare-fun d!1393663 () Bool)

(assert (= bs!857623 (and d!1393663 start!447896)))

(declare-fun lambda!172799 () Int)

(assert (=> bs!857623 (= lambda!172799 lambda!172792)))

(declare-fun bs!857624 () Bool)

(assert (= bs!857624 (and d!1393663 b!4522301)))

(assert (=> bs!857624 (not (= lambda!172799 lambda!172793))))

(assert (=> d!1393663 (containsKeyBiggerList!146 (toList!4339 lt!1699173) key!3287)))

(declare-fun lt!1699203 () Unit!95438)

(declare-fun choose!29561 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> d!1393663 (= lt!1699203 (choose!29561 lt!1699173 key!3287 hashF!1107))))

(assert (=> d!1393663 (forall!10275 (toList!4339 lt!1699173) lambda!172799)))

(assert (=> d!1393663 (= (lemmaInLongMapThenContainsKeyBiggerList!82 lt!1699173 key!3287 hashF!1107) lt!1699203)))

(declare-fun bs!857625 () Bool)

(assert (= bs!857625 d!1393663))

(assert (=> bs!857625 m!5272151))

(declare-fun m!5272221 () Bool)

(assert (=> bs!857625 m!5272221))

(declare-fun m!5272223 () Bool)

(assert (=> bs!857625 m!5272223))

(assert (=> b!4522286 d!1393663))

(declare-fun b!4522353 () Bool)

(declare-datatypes ((List!50788 0))(
  ( (Nil!50664) (Cons!50664 (h!56523 K!12055) (t!357750 List!50788)) )
))
(declare-fun e!2817593 () List!50788)

(declare-fun keys!17603 (ListMap!3601) List!50788)

(assert (=> b!4522353 (= e!2817593 (keys!17603 lt!1699177))))

(declare-fun b!4522354 () Bool)

(declare-fun e!2817590 () Unit!95438)

(declare-fun lt!1699236 () Unit!95438)

(assert (=> b!4522354 (= e!2817590 lt!1699236)))

(declare-fun lt!1699242 () Unit!95438)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1003 (List!50786 K!12055) Unit!95438)

(assert (=> b!4522354 (= lt!1699242 (lemmaContainsKeyImpliesGetValueByKeyDefined!1003 (toList!4340 lt!1699177) key!3287))))

(declare-datatypes ((Option!11123 0))(
  ( (None!11122) (Some!11122 (v!44734 V!12301)) )
))
(declare-fun isDefined!8409 (Option!11123) Bool)

(declare-fun getValueByKey!1099 (List!50786 K!12055) Option!11123)

(assert (=> b!4522354 (isDefined!8409 (getValueByKey!1099 (toList!4340 lt!1699177) key!3287))))

(declare-fun lt!1699243 () Unit!95438)

(assert (=> b!4522354 (= lt!1699243 lt!1699242)))

(declare-fun lemmaInListThenGetKeysListContains!464 (List!50786 K!12055) Unit!95438)

(assert (=> b!4522354 (= lt!1699236 (lemmaInListThenGetKeysListContains!464 (toList!4340 lt!1699177) key!3287))))

(declare-fun call!315104 () Bool)

(assert (=> b!4522354 call!315104))

(declare-fun b!4522355 () Bool)

(declare-fun e!2817594 () Unit!95438)

(declare-fun Unit!95448 () Unit!95438)

(assert (=> b!4522355 (= e!2817594 Unit!95448)))

(declare-fun b!4522356 () Bool)

(assert (=> b!4522356 false))

(declare-fun lt!1699240 () Unit!95438)

(declare-fun lt!1699239 () Unit!95438)

(assert (=> b!4522356 (= lt!1699240 lt!1699239)))

(declare-fun containsKey!1796 (List!50786 K!12055) Bool)

(assert (=> b!4522356 (containsKey!1796 (toList!4340 lt!1699177) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!467 (List!50786 K!12055) Unit!95438)

(assert (=> b!4522356 (= lt!1699239 (lemmaInGetKeysListThenContainsKey!467 (toList!4340 lt!1699177) key!3287))))

(declare-fun Unit!95452 () Unit!95438)

(assert (=> b!4522356 (= e!2817594 Unit!95452)))

(declare-fun b!4522357 () Bool)

(assert (=> b!4522357 (= e!2817590 e!2817594)))

(declare-fun c!771825 () Bool)

(assert (=> b!4522357 (= c!771825 call!315104)))

(declare-fun b!4522358 () Bool)

(declare-fun e!2817591 () Bool)

(declare-fun e!2817595 () Bool)

(assert (=> b!4522358 (= e!2817591 e!2817595)))

(declare-fun res!1882463 () Bool)

(assert (=> b!4522358 (=> (not res!1882463) (not e!2817595))))

(assert (=> b!4522358 (= res!1882463 (isDefined!8409 (getValueByKey!1099 (toList!4340 lt!1699177) key!3287)))))

(declare-fun b!4522359 () Bool)

(declare-fun contains!13401 (List!50788 K!12055) Bool)

(assert (=> b!4522359 (= e!2817595 (contains!13401 (keys!17603 lt!1699177) key!3287))))

(declare-fun b!4522360 () Bool)

(declare-fun getKeysList!468 (List!50786) List!50788)

(assert (=> b!4522360 (= e!2817593 (getKeysList!468 (toList!4340 lt!1699177)))))

(declare-fun d!1393665 () Bool)

(assert (=> d!1393665 e!2817591))

(declare-fun res!1882465 () Bool)

(assert (=> d!1393665 (=> res!1882465 e!2817591)))

(declare-fun e!2817592 () Bool)

(assert (=> d!1393665 (= res!1882465 e!2817592)))

(declare-fun res!1882464 () Bool)

(assert (=> d!1393665 (=> (not res!1882464) (not e!2817592))))

(declare-fun lt!1699238 () Bool)

(assert (=> d!1393665 (= res!1882464 (not lt!1699238))))

(declare-fun lt!1699241 () Bool)

(assert (=> d!1393665 (= lt!1699238 lt!1699241)))

(declare-fun lt!1699237 () Unit!95438)

(assert (=> d!1393665 (= lt!1699237 e!2817590)))

(declare-fun c!771826 () Bool)

(assert (=> d!1393665 (= c!771826 lt!1699241)))

(assert (=> d!1393665 (= lt!1699241 (containsKey!1796 (toList!4340 lt!1699177) key!3287))))

(assert (=> d!1393665 (= (contains!13399 lt!1699177 key!3287) lt!1699238)))

(declare-fun b!4522361 () Bool)

(assert (=> b!4522361 (= e!2817592 (not (contains!13401 (keys!17603 lt!1699177) key!3287)))))

(declare-fun bm!315099 () Bool)

(assert (=> bm!315099 (= call!315104 (contains!13401 e!2817593 key!3287))))

(declare-fun c!771824 () Bool)

(assert (=> bm!315099 (= c!771824 c!771826)))

(assert (= (and d!1393665 c!771826) b!4522354))

(assert (= (and d!1393665 (not c!771826)) b!4522357))

(assert (= (and b!4522357 c!771825) b!4522356))

(assert (= (and b!4522357 (not c!771825)) b!4522355))

(assert (= (or b!4522354 b!4522357) bm!315099))

(assert (= (and bm!315099 c!771824) b!4522360))

(assert (= (and bm!315099 (not c!771824)) b!4522353))

(assert (= (and d!1393665 res!1882464) b!4522361))

(assert (= (and d!1393665 (not res!1882465)) b!4522358))

(assert (= (and b!4522358 res!1882463) b!4522359))

(declare-fun m!5272257 () Bool)

(assert (=> b!4522360 m!5272257))

(declare-fun m!5272259 () Bool)

(assert (=> b!4522356 m!5272259))

(declare-fun m!5272261 () Bool)

(assert (=> b!4522356 m!5272261))

(declare-fun m!5272263 () Bool)

(assert (=> b!4522353 m!5272263))

(declare-fun m!5272265 () Bool)

(assert (=> b!4522358 m!5272265))

(assert (=> b!4522358 m!5272265))

(declare-fun m!5272267 () Bool)

(assert (=> b!4522358 m!5272267))

(declare-fun m!5272269 () Bool)

(assert (=> b!4522354 m!5272269))

(assert (=> b!4522354 m!5272265))

(assert (=> b!4522354 m!5272265))

(assert (=> b!4522354 m!5272267))

(declare-fun m!5272271 () Bool)

(assert (=> b!4522354 m!5272271))

(assert (=> b!4522359 m!5272263))

(assert (=> b!4522359 m!5272263))

(declare-fun m!5272273 () Bool)

(assert (=> b!4522359 m!5272273))

(declare-fun m!5272275 () Bool)

(assert (=> bm!315099 m!5272275))

(assert (=> b!4522361 m!5272263))

(assert (=> b!4522361 m!5272263))

(assert (=> b!4522361 m!5272273))

(assert (=> d!1393665 m!5272259))

(assert (=> b!4522285 d!1393665))

(declare-fun b!4522362 () Bool)

(declare-fun e!2817599 () List!50788)

(assert (=> b!4522362 (= e!2817599 (keys!17603 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))))))

(declare-fun b!4522363 () Bool)

(declare-fun e!2817596 () Unit!95438)

(declare-fun lt!1699244 () Unit!95438)

(assert (=> b!4522363 (= e!2817596 lt!1699244)))

(declare-fun lt!1699250 () Unit!95438)

(assert (=> b!4522363 (= lt!1699250 (lemmaContainsKeyImpliesGetValueByKeyDefined!1003 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(assert (=> b!4522363 (isDefined!8409 (getValueByKey!1099 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(declare-fun lt!1699251 () Unit!95438)

(assert (=> b!4522363 (= lt!1699251 lt!1699250)))

(assert (=> b!4522363 (= lt!1699244 (lemmaInListThenGetKeysListContains!464 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(declare-fun call!315105 () Bool)

(assert (=> b!4522363 call!315105))

(declare-fun b!4522364 () Bool)

(declare-fun e!2817600 () Unit!95438)

(declare-fun Unit!95456 () Unit!95438)

(assert (=> b!4522364 (= e!2817600 Unit!95456)))

(declare-fun b!4522365 () Bool)

(assert (=> b!4522365 false))

(declare-fun lt!1699248 () Unit!95438)

(declare-fun lt!1699247 () Unit!95438)

(assert (=> b!4522365 (= lt!1699248 lt!1699247)))

(assert (=> b!4522365 (containsKey!1796 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287)))

(assert (=> b!4522365 (= lt!1699247 (lemmaInGetKeysListThenContainsKey!467 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(declare-fun Unit!95457 () Unit!95438)

(assert (=> b!4522365 (= e!2817600 Unit!95457)))

(declare-fun b!4522366 () Bool)

(assert (=> b!4522366 (= e!2817596 e!2817600)))

(declare-fun c!771828 () Bool)

(assert (=> b!4522366 (= c!771828 call!315105)))

(declare-fun b!4522367 () Bool)

(declare-fun e!2817597 () Bool)

(declare-fun e!2817601 () Bool)

(assert (=> b!4522367 (= e!2817597 e!2817601)))

(declare-fun res!1882466 () Bool)

(assert (=> b!4522367 (=> (not res!1882466) (not e!2817601))))

(assert (=> b!4522367 (= res!1882466 (isDefined!8409 (getValueByKey!1099 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287)))))

(declare-fun b!4522368 () Bool)

(assert (=> b!4522368 (= e!2817601 (contains!13401 (keys!17603 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(declare-fun b!4522369 () Bool)

(assert (=> b!4522369 (= e!2817599 (getKeysList!468 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477))))))))

(declare-fun d!1393677 () Bool)

(assert (=> d!1393677 e!2817597))

(declare-fun res!1882468 () Bool)

(assert (=> d!1393677 (=> res!1882468 e!2817597)))

(declare-fun e!2817598 () Bool)

(assert (=> d!1393677 (= res!1882468 e!2817598)))

(declare-fun res!1882467 () Bool)

(assert (=> d!1393677 (=> (not res!1882467) (not e!2817598))))

(declare-fun lt!1699246 () Bool)

(assert (=> d!1393677 (= res!1882467 (not lt!1699246))))

(declare-fun lt!1699249 () Bool)

(assert (=> d!1393677 (= lt!1699246 lt!1699249)))

(declare-fun lt!1699245 () Unit!95438)

(assert (=> d!1393677 (= lt!1699245 e!2817596)))

(declare-fun c!771829 () Bool)

(assert (=> d!1393677 (= c!771829 lt!1699249)))

(assert (=> d!1393677 (= lt!1699249 (containsKey!1796 (toList!4340 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287))))

(assert (=> d!1393677 (= (contains!13399 (extractMap!1222 (t!357749 (toList!4339 lm!1477))) key!3287) lt!1699246)))

(declare-fun b!4522370 () Bool)

(assert (=> b!4522370 (= e!2817598 (not (contains!13401 (keys!17603 (extractMap!1222 (t!357749 (toList!4339 lm!1477)))) key!3287)))))

(declare-fun bm!315100 () Bool)

(assert (=> bm!315100 (= call!315105 (contains!13401 e!2817599 key!3287))))

(declare-fun c!771827 () Bool)

(assert (=> bm!315100 (= c!771827 c!771829)))

(assert (= (and d!1393677 c!771829) b!4522363))

(assert (= (and d!1393677 (not c!771829)) b!4522366))

(assert (= (and b!4522366 c!771828) b!4522365))

(assert (= (and b!4522366 (not c!771828)) b!4522364))

(assert (= (or b!4522363 b!4522366) bm!315100))

(assert (= (and bm!315100 c!771827) b!4522369))

(assert (= (and bm!315100 (not c!771827)) b!4522362))

(assert (= (and d!1393677 res!1882467) b!4522370))

(assert (= (and d!1393677 (not res!1882468)) b!4522367))

(assert (= (and b!4522367 res!1882466) b!4522368))

(declare-fun m!5272277 () Bool)

(assert (=> b!4522369 m!5272277))

(declare-fun m!5272279 () Bool)

(assert (=> b!4522365 m!5272279))

(declare-fun m!5272281 () Bool)

(assert (=> b!4522365 m!5272281))

(assert (=> b!4522362 m!5272161))

(declare-fun m!5272283 () Bool)

(assert (=> b!4522362 m!5272283))

(declare-fun m!5272285 () Bool)

(assert (=> b!4522367 m!5272285))

(assert (=> b!4522367 m!5272285))

(declare-fun m!5272287 () Bool)

(assert (=> b!4522367 m!5272287))

(declare-fun m!5272289 () Bool)

(assert (=> b!4522363 m!5272289))

(assert (=> b!4522363 m!5272285))

(assert (=> b!4522363 m!5272285))

(assert (=> b!4522363 m!5272287))

(declare-fun m!5272291 () Bool)

(assert (=> b!4522363 m!5272291))

(assert (=> b!4522368 m!5272161))

(assert (=> b!4522368 m!5272283))

(assert (=> b!4522368 m!5272283))

(declare-fun m!5272293 () Bool)

(assert (=> b!4522368 m!5272293))

(declare-fun m!5272295 () Bool)

(assert (=> bm!315100 m!5272295))

(assert (=> b!4522370 m!5272161))

(assert (=> b!4522370 m!5272283))

(assert (=> b!4522370 m!5272283))

(assert (=> b!4522370 m!5272293))

(assert (=> d!1393677 m!5272279))

(assert (=> b!4522285 d!1393677))

(declare-fun bs!857632 () Bool)

(declare-fun d!1393679 () Bool)

(assert (= bs!857632 (and d!1393679 start!447896)))

(declare-fun lambda!172805 () Int)

(assert (=> bs!857632 (= lambda!172805 lambda!172792)))

(declare-fun bs!857633 () Bool)

(assert (= bs!857633 (and d!1393679 b!4522301)))

(assert (=> bs!857633 (not (= lambda!172805 lambda!172793))))

(declare-fun bs!857634 () Bool)

(assert (= bs!857634 (and d!1393679 d!1393663)))

(assert (=> bs!857634 (= lambda!172805 lambda!172799)))

(declare-fun lt!1699272 () ListMap!3601)

(declare-fun invariantList!1021 (List!50786) Bool)

(assert (=> d!1393679 (invariantList!1021 (toList!4340 lt!1699272))))

(declare-fun e!2817631 () ListMap!3601)

(assert (=> d!1393679 (= lt!1699272 e!2817631)))

(declare-fun c!771841 () Bool)

(assert (=> d!1393679 (= c!771841 ((_ is Cons!50663) (t!357749 (toList!4339 lm!1477))))))

(assert (=> d!1393679 (forall!10275 (t!357749 (toList!4339 lm!1477)) lambda!172805)))

(assert (=> d!1393679 (= (extractMap!1222 (t!357749 (toList!4339 lm!1477))) lt!1699272)))

(declare-fun b!4522414 () Bool)

(assert (=> b!4522414 (= e!2817631 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (t!357749 (toList!4339 lm!1477)))) (extractMap!1222 (t!357749 (t!357749 (toList!4339 lm!1477))))))))

(declare-fun b!4522415 () Bool)

(assert (=> b!4522415 (= e!2817631 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393679 c!771841) b!4522414))

(assert (= (and d!1393679 (not c!771841)) b!4522415))

(declare-fun m!5272329 () Bool)

(assert (=> d!1393679 m!5272329))

(declare-fun m!5272331 () Bool)

(assert (=> d!1393679 m!5272331))

(declare-fun m!5272333 () Bool)

(assert (=> b!4522414 m!5272333))

(assert (=> b!4522414 m!5272333))

(declare-fun m!5272335 () Bool)

(assert (=> b!4522414 m!5272335))

(assert (=> b!4522285 d!1393679))

(declare-fun bs!857635 () Bool)

(declare-fun d!1393693 () Bool)

(assert (= bs!857635 (and d!1393693 start!447896)))

(declare-fun lambda!172806 () Int)

(assert (=> bs!857635 (= lambda!172806 lambda!172792)))

(declare-fun bs!857636 () Bool)

(assert (= bs!857636 (and d!1393693 b!4522301)))

(assert (=> bs!857636 (not (= lambda!172806 lambda!172793))))

(declare-fun bs!857637 () Bool)

(assert (= bs!857637 (and d!1393693 d!1393663)))

(assert (=> bs!857637 (= lambda!172806 lambda!172799)))

(declare-fun bs!857638 () Bool)

(assert (= bs!857638 (and d!1393693 d!1393679)))

(assert (=> bs!857638 (= lambda!172806 lambda!172805)))

(declare-fun lt!1699273 () ListMap!3601)

(assert (=> d!1393693 (invariantList!1021 (toList!4340 lt!1699273))))

(declare-fun e!2817632 () ListMap!3601)

(assert (=> d!1393693 (= lt!1699273 e!2817632)))

(declare-fun c!771842 () Bool)

(assert (=> d!1393693 (= c!771842 ((_ is Cons!50663) (toList!4339 lt!1699173)))))

(assert (=> d!1393693 (forall!10275 (toList!4339 lt!1699173) lambda!172806)))

(assert (=> d!1393693 (= (extractMap!1222 (toList!4339 lt!1699173)) lt!1699273)))

(declare-fun b!4522416 () Bool)

(assert (=> b!4522416 (= e!2817632 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (toList!4339 lt!1699173))) (extractMap!1222 (t!357749 (toList!4339 lt!1699173)))))))

(declare-fun b!4522417 () Bool)

(assert (=> b!4522417 (= e!2817632 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393693 c!771842) b!4522416))

(assert (= (and d!1393693 (not c!771842)) b!4522417))

(declare-fun m!5272337 () Bool)

(assert (=> d!1393693 m!5272337))

(declare-fun m!5272339 () Bool)

(assert (=> d!1393693 m!5272339))

(declare-fun m!5272341 () Bool)

(assert (=> b!4522416 m!5272341))

(assert (=> b!4522416 m!5272341))

(declare-fun m!5272343 () Bool)

(assert (=> b!4522416 m!5272343))

(assert (=> b!4522285 d!1393693))

(declare-fun bs!857639 () Bool)

(declare-fun d!1393695 () Bool)

(assert (= bs!857639 (and d!1393695 d!1393693)))

(declare-fun lambda!172809 () Int)

(assert (=> bs!857639 (= lambda!172809 lambda!172806)))

(declare-fun bs!857640 () Bool)

(assert (= bs!857640 (and d!1393695 d!1393663)))

(assert (=> bs!857640 (= lambda!172809 lambda!172799)))

(declare-fun bs!857641 () Bool)

(assert (= bs!857641 (and d!1393695 start!447896)))

(assert (=> bs!857641 (= lambda!172809 lambda!172792)))

(declare-fun bs!857642 () Bool)

(assert (= bs!857642 (and d!1393695 d!1393679)))

(assert (=> bs!857642 (= lambda!172809 lambda!172805)))

(declare-fun bs!857643 () Bool)

(assert (= bs!857643 (and d!1393695 b!4522301)))

(assert (=> bs!857643 (not (= lambda!172809 lambda!172793))))

(assert (=> d!1393695 (contains!13399 (extractMap!1222 (toList!4339 lt!1699173)) key!3287)))

(declare-fun lt!1699276 () Unit!95438)

(declare-fun choose!29564 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> d!1393695 (= lt!1699276 (choose!29564 lt!1699173 key!3287 hashF!1107))))

(assert (=> d!1393695 (forall!10275 (toList!4339 lt!1699173) lambda!172809)))

(assert (=> d!1393695 (= (lemmaListContainsThenExtractedMapContains!136 lt!1699173 key!3287 hashF!1107) lt!1699276)))

(declare-fun bs!857644 () Bool)

(assert (= bs!857644 d!1393695))

(assert (=> bs!857644 m!5272157))

(assert (=> bs!857644 m!5272157))

(declare-fun m!5272345 () Bool)

(assert (=> bs!857644 m!5272345))

(declare-fun m!5272347 () Bool)

(assert (=> bs!857644 m!5272347))

(declare-fun m!5272349 () Bool)

(assert (=> bs!857644 m!5272349))

(assert (=> b!4522285 d!1393695))

(declare-fun d!1393697 () Bool)

(declare-fun res!1882494 () Bool)

(declare-fun e!2817637 () Bool)

(assert (=> d!1393697 (=> res!1882494 e!2817637)))

(assert (=> d!1393697 (= res!1882494 (not ((_ is Cons!50662) newBucket!178)))))

(assert (=> d!1393697 (= (noDuplicateKeys!1166 newBucket!178) e!2817637)))

(declare-fun b!4522422 () Bool)

(declare-fun e!2817638 () Bool)

(assert (=> b!4522422 (= e!2817637 e!2817638)))

(declare-fun res!1882495 () Bool)

(assert (=> b!4522422 (=> (not res!1882495) (not e!2817638))))

(assert (=> b!4522422 (= res!1882495 (not (containsKey!1794 (t!357748 newBucket!178) (_1!28843 (h!56519 newBucket!178)))))))

(declare-fun b!4522423 () Bool)

(assert (=> b!4522423 (= e!2817638 (noDuplicateKeys!1166 (t!357748 newBucket!178)))))

(assert (= (and d!1393697 (not res!1882494)) b!4522422))

(assert (= (and b!4522422 res!1882495) b!4522423))

(declare-fun m!5272351 () Bool)

(assert (=> b!4522422 m!5272351))

(declare-fun m!5272353 () Bool)

(assert (=> b!4522423 m!5272353))

(assert (=> b!4522279 d!1393697))

(declare-fun d!1393699 () Bool)

(assert (=> d!1393699 (= (eq!623 lt!1699197 lt!1699191) (= (content!8367 (toList!4340 lt!1699197)) (content!8367 (toList!4340 lt!1699191))))))

(declare-fun bs!857645 () Bool)

(assert (= bs!857645 d!1393699))

(declare-fun m!5272355 () Bool)

(assert (=> bs!857645 m!5272355))

(declare-fun m!5272357 () Bool)

(assert (=> bs!857645 m!5272357))

(assert (=> b!4522300 d!1393699))

(declare-fun d!1393701 () Bool)

(assert (=> d!1393701 (= (eq!623 lt!1699182 lt!1699191) (= (content!8367 (toList!4340 lt!1699182)) (content!8367 (toList!4340 lt!1699191))))))

(declare-fun bs!857646 () Bool)

(assert (= bs!857646 d!1393701))

(declare-fun m!5272359 () Bool)

(assert (=> bs!857646 m!5272359))

(assert (=> bs!857646 m!5272357))

(assert (=> b!4522300 d!1393701))

(declare-fun bs!857666 () Bool)

(declare-fun b!4522499 () Bool)

(assert (= bs!857666 (and b!4522499 d!1393657)))

(declare-fun lambda!172879 () Int)

(assert (=> bs!857666 (not (= lambda!172879 lambda!172796))))

(assert (=> b!4522499 true))

(declare-fun bs!857667 () Bool)

(declare-fun b!4522502 () Bool)

(assert (= bs!857667 (and b!4522502 d!1393657)))

(declare-fun lambda!172880 () Int)

(assert (=> bs!857667 (not (= lambda!172880 lambda!172796))))

(declare-fun bs!857668 () Bool)

(assert (= bs!857668 (and b!4522502 b!4522499)))

(assert (=> bs!857668 (= lambda!172880 lambda!172879)))

(assert (=> b!4522502 true))

(declare-fun lambda!172881 () Int)

(assert (=> bs!857667 (not (= lambda!172881 lambda!172796))))

(declare-fun lt!1699424 () ListMap!3601)

(assert (=> bs!857668 (= (= lt!1699424 lt!1699196) (= lambda!172881 lambda!172879))))

(assert (=> b!4522502 (= (= lt!1699424 lt!1699196) (= lambda!172881 lambda!172880))))

(assert (=> b!4522502 true))

(declare-fun bs!857669 () Bool)

(declare-fun d!1393703 () Bool)

(assert (= bs!857669 (and d!1393703 d!1393657)))

(declare-fun lambda!172882 () Int)

(assert (=> bs!857669 (not (= lambda!172882 lambda!172796))))

(declare-fun bs!857670 () Bool)

(assert (= bs!857670 (and d!1393703 b!4522499)))

(declare-fun lt!1699410 () ListMap!3601)

(assert (=> bs!857670 (= (= lt!1699410 lt!1699196) (= lambda!172882 lambda!172879))))

(declare-fun bs!857671 () Bool)

(assert (= bs!857671 (and d!1393703 b!4522502)))

(assert (=> bs!857671 (= (= lt!1699410 lt!1699196) (= lambda!172882 lambda!172880))))

(assert (=> bs!857671 (= (= lt!1699410 lt!1699424) (= lambda!172882 lambda!172881))))

(assert (=> d!1393703 true))

(declare-fun e!2817693 () ListMap!3601)

(assert (=> b!4522499 (= e!2817693 lt!1699196)))

(declare-fun lt!1699422 () Unit!95438)

(declare-fun call!315121 () Unit!95438)

(assert (=> b!4522499 (= lt!1699422 call!315121)))

(declare-fun call!315122 () Bool)

(assert (=> b!4522499 call!315122))

(declare-fun lt!1699417 () Unit!95438)

(assert (=> b!4522499 (= lt!1699417 lt!1699422)))

(declare-fun call!315123 () Bool)

(assert (=> b!4522499 call!315123))

(declare-fun lt!1699420 () Unit!95438)

(declare-fun Unit!95458 () Unit!95438)

(assert (=> b!4522499 (= lt!1699420 Unit!95458)))

(declare-fun c!771858 () Bool)

(declare-fun lt!1699425 () ListMap!3601)

(declare-fun bm!315116 () Bool)

(assert (=> bm!315116 (= call!315122 (forall!10276 (ite c!771858 (toList!4340 lt!1699196) (toList!4340 lt!1699425)) (ite c!771858 lambda!172879 lambda!172881)))))

(declare-fun bm!315117 () Bool)

(assert (=> bm!315117 (= call!315123 (forall!10276 (ite c!771858 (toList!4340 lt!1699196) (toList!4340 lt!1699425)) (ite c!771858 lambda!172879 lambda!172881)))))

(declare-fun b!4522500 () Bool)

(declare-fun e!2817692 () Bool)

(assert (=> b!4522500 (= e!2817692 (forall!10276 (toList!4340 lt!1699196) lambda!172881))))

(declare-fun bm!315118 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!342 (ListMap!3601) Unit!95438)

(assert (=> bm!315118 (= call!315121 (lemmaContainsAllItsOwnKeys!342 lt!1699196))))

(declare-fun b!4522501 () Bool)

(declare-fun e!2817691 () Bool)

(assert (=> b!4522501 (= e!2817691 (invariantList!1021 (toList!4340 lt!1699410)))))

(assert (=> b!4522502 (= e!2817693 lt!1699424)))

(declare-fun +!1550 (ListMap!3601 tuple2!51098) ListMap!3601)

(assert (=> b!4522502 (= lt!1699425 (+!1550 lt!1699196 (h!56519 (_2!28844 lt!1699180))))))

(assert (=> b!4522502 (= lt!1699424 (addToMapMapFromBucket!693 (t!357748 (_2!28844 lt!1699180)) (+!1550 lt!1699196 (h!56519 (_2!28844 lt!1699180)))))))

(declare-fun lt!1699412 () Unit!95438)

(assert (=> b!4522502 (= lt!1699412 call!315121)))

(assert (=> b!4522502 (forall!10276 (toList!4340 lt!1699196) lambda!172880)))

(declare-fun lt!1699426 () Unit!95438)

(assert (=> b!4522502 (= lt!1699426 lt!1699412)))

(assert (=> b!4522502 call!315123))

(declare-fun lt!1699427 () Unit!95438)

(declare-fun Unit!95459 () Unit!95438)

(assert (=> b!4522502 (= lt!1699427 Unit!95459)))

(assert (=> b!4522502 (forall!10276 (t!357748 (_2!28844 lt!1699180)) lambda!172881)))

(declare-fun lt!1699413 () Unit!95438)

(declare-fun Unit!95460 () Unit!95438)

(assert (=> b!4522502 (= lt!1699413 Unit!95460)))

(declare-fun lt!1699421 () Unit!95438)

(declare-fun Unit!95461 () Unit!95438)

(assert (=> b!4522502 (= lt!1699421 Unit!95461)))

(declare-fun lt!1699407 () Unit!95438)

(declare-fun forallContained!2529 (List!50786 Int tuple2!51098) Unit!95438)

(assert (=> b!4522502 (= lt!1699407 (forallContained!2529 (toList!4340 lt!1699425) lambda!172881 (h!56519 (_2!28844 lt!1699180))))))

(assert (=> b!4522502 (contains!13399 lt!1699425 (_1!28843 (h!56519 (_2!28844 lt!1699180))))))

(declare-fun lt!1699408 () Unit!95438)

(declare-fun Unit!95462 () Unit!95438)

(assert (=> b!4522502 (= lt!1699408 Unit!95462)))

(assert (=> b!4522502 (contains!13399 lt!1699424 (_1!28843 (h!56519 (_2!28844 lt!1699180))))))

(declare-fun lt!1699409 () Unit!95438)

(declare-fun Unit!95463 () Unit!95438)

(assert (=> b!4522502 (= lt!1699409 Unit!95463)))

(assert (=> b!4522502 (forall!10276 (_2!28844 lt!1699180) lambda!172881)))

(declare-fun lt!1699419 () Unit!95438)

(declare-fun Unit!95464 () Unit!95438)

(assert (=> b!4522502 (= lt!1699419 Unit!95464)))

(assert (=> b!4522502 call!315122))

(declare-fun lt!1699416 () Unit!95438)

(declare-fun Unit!95466 () Unit!95438)

(assert (=> b!4522502 (= lt!1699416 Unit!95466)))

(declare-fun lt!1699418 () Unit!95438)

(declare-fun Unit!95467 () Unit!95438)

(assert (=> b!4522502 (= lt!1699418 Unit!95467)))

(declare-fun lt!1699414 () Unit!95438)

(declare-fun addForallContainsKeyThenBeforeAdding!342 (ListMap!3601 ListMap!3601 K!12055 V!12301) Unit!95438)

(assert (=> b!4522502 (= lt!1699414 (addForallContainsKeyThenBeforeAdding!342 lt!1699196 lt!1699424 (_1!28843 (h!56519 (_2!28844 lt!1699180))) (_2!28843 (h!56519 (_2!28844 lt!1699180)))))))

(assert (=> b!4522502 (forall!10276 (toList!4340 lt!1699196) lambda!172881)))

(declare-fun lt!1699411 () Unit!95438)

(assert (=> b!4522502 (= lt!1699411 lt!1699414)))

(assert (=> b!4522502 (forall!10276 (toList!4340 lt!1699196) lambda!172881)))

(declare-fun lt!1699423 () Unit!95438)

(declare-fun Unit!95468 () Unit!95438)

(assert (=> b!4522502 (= lt!1699423 Unit!95468)))

(declare-fun res!1882540 () Bool)

(assert (=> b!4522502 (= res!1882540 (forall!10276 (_2!28844 lt!1699180) lambda!172881))))

(assert (=> b!4522502 (=> (not res!1882540) (not e!2817692))))

(assert (=> b!4522502 e!2817692))

(declare-fun lt!1699415 () Unit!95438)

(declare-fun Unit!95469 () Unit!95438)

(assert (=> b!4522502 (= lt!1699415 Unit!95469)))

(declare-fun b!4522498 () Bool)

(declare-fun res!1882539 () Bool)

(assert (=> b!4522498 (=> (not res!1882539) (not e!2817691))))

(assert (=> b!4522498 (= res!1882539 (forall!10276 (toList!4340 lt!1699196) lambda!172882))))

(assert (=> d!1393703 e!2817691))

(declare-fun res!1882538 () Bool)

(assert (=> d!1393703 (=> (not res!1882538) (not e!2817691))))

(assert (=> d!1393703 (= res!1882538 (forall!10276 (_2!28844 lt!1699180) lambda!172882))))

(assert (=> d!1393703 (= lt!1699410 e!2817693)))

(assert (=> d!1393703 (= c!771858 ((_ is Nil!50662) (_2!28844 lt!1699180)))))

(assert (=> d!1393703 (noDuplicateKeys!1166 (_2!28844 lt!1699180))))

(assert (=> d!1393703 (= (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699196) lt!1699410)))

(assert (= (and d!1393703 c!771858) b!4522499))

(assert (= (and d!1393703 (not c!771858)) b!4522502))

(assert (= (and b!4522502 res!1882540) b!4522500))

(assert (= (or b!4522499 b!4522502) bm!315117))

(assert (= (or b!4522499 b!4522502) bm!315116))

(assert (= (or b!4522499 b!4522502) bm!315118))

(assert (= (and d!1393703 res!1882538) b!4522498))

(assert (= (and b!4522498 res!1882539) b!4522501))

(declare-fun m!5272455 () Bool)

(assert (=> b!4522501 m!5272455))

(declare-fun m!5272457 () Bool)

(assert (=> d!1393703 m!5272457))

(assert (=> d!1393703 m!5272135))

(declare-fun m!5272459 () Bool)

(assert (=> b!4522502 m!5272459))

(declare-fun m!5272461 () Bool)

(assert (=> b!4522502 m!5272461))

(declare-fun m!5272463 () Bool)

(assert (=> b!4522502 m!5272463))

(assert (=> b!4522502 m!5272463))

(declare-fun m!5272465 () Bool)

(assert (=> b!4522502 m!5272465))

(assert (=> b!4522502 m!5272459))

(declare-fun m!5272467 () Bool)

(assert (=> b!4522502 m!5272467))

(declare-fun m!5272469 () Bool)

(assert (=> b!4522502 m!5272469))

(declare-fun m!5272471 () Bool)

(assert (=> b!4522502 m!5272471))

(assert (=> b!4522502 m!5272467))

(declare-fun m!5272473 () Bool)

(assert (=> b!4522502 m!5272473))

(declare-fun m!5272475 () Bool)

(assert (=> b!4522502 m!5272475))

(declare-fun m!5272477 () Bool)

(assert (=> b!4522502 m!5272477))

(declare-fun m!5272479 () Bool)

(assert (=> bm!315117 m!5272479))

(declare-fun m!5272481 () Bool)

(assert (=> bm!315118 m!5272481))

(declare-fun m!5272483 () Bool)

(assert (=> b!4522498 m!5272483))

(assert (=> b!4522500 m!5272459))

(assert (=> bm!315116 m!5272479))

(assert (=> b!4522300 d!1393703))

(declare-fun d!1393733 () Bool)

(assert (=> d!1393733 (eq!623 (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699190) (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699196))))

(declare-fun lt!1699456 () Unit!95438)

(declare-fun choose!29567 (ListMap!3601 ListMap!3601 List!50786) Unit!95438)

(assert (=> d!1393733 (= lt!1699456 (choose!29567 lt!1699190 lt!1699196 (_2!28844 lt!1699180)))))

(assert (=> d!1393733 (noDuplicateKeys!1166 (_2!28844 lt!1699180))))

(assert (=> d!1393733 (= (lemmaAddToMapFromBucketPreservesEquivalence!42 lt!1699190 lt!1699196 (_2!28844 lt!1699180)) lt!1699456)))

(declare-fun bs!857685 () Bool)

(assert (= bs!857685 d!1393733))

(assert (=> bs!857685 m!5272195))

(assert (=> bs!857685 m!5272135))

(assert (=> bs!857685 m!5272131))

(assert (=> bs!857685 m!5272195))

(declare-fun m!5272521 () Bool)

(assert (=> bs!857685 m!5272521))

(declare-fun m!5272523 () Bool)

(assert (=> bs!857685 m!5272523))

(assert (=> bs!857685 m!5272131))

(assert (=> b!4522300 d!1393733))

(declare-fun d!1393741 () Bool)

(declare-datatypes ((Option!11125 0))(
  ( (None!11124) (Some!11124 (v!44736 List!50786)) )
))
(declare-fun get!16600 (Option!11125) List!50786)

(declare-fun getValueByKey!1101 (List!50787 (_ BitVec 64)) Option!11125)

(assert (=> d!1393741 (= (apply!11903 lt!1699173 hash!344) (get!16600 (getValueByKey!1101 (toList!4339 lt!1699173) hash!344)))))

(declare-fun bs!857686 () Bool)

(assert (= bs!857686 d!1393741))

(declare-fun m!5272525 () Bool)

(assert (=> bs!857686 m!5272525))

(assert (=> bs!857686 m!5272525))

(declare-fun m!5272527 () Bool)

(assert (=> bs!857686 m!5272527))

(assert (=> b!4522299 d!1393741))

(declare-fun bs!857687 () Bool)

(declare-fun d!1393743 () Bool)

(assert (= bs!857687 (and d!1393743 d!1393695)))

(declare-fun lambda!172887 () Int)

(assert (=> bs!857687 (= lambda!172887 lambda!172809)))

(declare-fun bs!857688 () Bool)

(assert (= bs!857688 (and d!1393743 d!1393693)))

(assert (=> bs!857688 (= lambda!172887 lambda!172806)))

(declare-fun bs!857689 () Bool)

(assert (= bs!857689 (and d!1393743 d!1393663)))

(assert (=> bs!857689 (= lambda!172887 lambda!172799)))

(declare-fun bs!857690 () Bool)

(assert (= bs!857690 (and d!1393743 start!447896)))

(assert (=> bs!857690 (= lambda!172887 lambda!172792)))

(declare-fun bs!857691 () Bool)

(assert (= bs!857691 (and d!1393743 d!1393679)))

(assert (=> bs!857691 (= lambda!172887 lambda!172805)))

(declare-fun bs!857692 () Bool)

(assert (= bs!857692 (and d!1393743 b!4522301)))

(assert (=> bs!857692 (not (= lambda!172887 lambda!172793))))

(assert (=> d!1393743 (contains!13398 lm!1477 (hash!2823 hashF!1107 key!3287))))

(declare-fun lt!1699459 () Unit!95438)

(declare-fun choose!29568 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> d!1393743 (= lt!1699459 (choose!29568 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1393743 (forall!10275 (toList!4339 lm!1477) lambda!172887)))

(assert (=> d!1393743 (= (lemmaInGenMapThenLongMapContainsHash!240 lm!1477 key!3287 hashF!1107) lt!1699459)))

(declare-fun bs!857693 () Bool)

(assert (= bs!857693 d!1393743))

(assert (=> bs!857693 m!5272175))

(assert (=> bs!857693 m!5272175))

(declare-fun m!5272529 () Bool)

(assert (=> bs!857693 m!5272529))

(declare-fun m!5272531 () Bool)

(assert (=> bs!857693 m!5272531))

(declare-fun m!5272533 () Bool)

(assert (=> bs!857693 m!5272533))

(assert (=> b!4522278 d!1393743))

(declare-fun d!1393745 () Bool)

(assert (=> d!1393745 (= (apply!11903 lm!1477 hash!344) (get!16600 (getValueByKey!1101 (toList!4339 lm!1477) hash!344)))))

(declare-fun bs!857694 () Bool)

(assert (= bs!857694 d!1393745))

(declare-fun m!5272535 () Bool)

(assert (=> bs!857694 m!5272535))

(assert (=> bs!857694 m!5272535))

(declare-fun m!5272537 () Bool)

(assert (=> bs!857694 m!5272537))

(assert (=> b!4522278 d!1393745))

(declare-fun d!1393747 () Bool)

(declare-fun e!2817724 () Bool)

(assert (=> d!1393747 e!2817724))

(declare-fun res!1882555 () Bool)

(assert (=> d!1393747 (=> res!1882555 e!2817724)))

(declare-fun lt!1699479 () Bool)

(assert (=> d!1393747 (= res!1882555 (not lt!1699479))))

(declare-fun lt!1699482 () Bool)

(assert (=> d!1393747 (= lt!1699479 lt!1699482)))

(declare-fun lt!1699480 () Unit!95438)

(declare-fun e!2817725 () Unit!95438)

(assert (=> d!1393747 (= lt!1699480 e!2817725)))

(declare-fun c!771875 () Bool)

(assert (=> d!1393747 (= c!771875 lt!1699482)))

(declare-fun containsKey!1798 (List!50787 (_ BitVec 64)) Bool)

(assert (=> d!1393747 (= lt!1699482 (containsKey!1798 (toList!4339 lm!1477) lt!1699186))))

(assert (=> d!1393747 (= (contains!13398 lm!1477 lt!1699186) lt!1699479)))

(declare-fun b!4522551 () Bool)

(declare-fun lt!1699481 () Unit!95438)

(assert (=> b!4522551 (= e!2817725 lt!1699481)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1005 (List!50787 (_ BitVec 64)) Unit!95438)

(assert (=> b!4522551 (= lt!1699481 (lemmaContainsKeyImpliesGetValueByKeyDefined!1005 (toList!4339 lm!1477) lt!1699186))))

(declare-fun isDefined!8411 (Option!11125) Bool)

(assert (=> b!4522551 (isDefined!8411 (getValueByKey!1101 (toList!4339 lm!1477) lt!1699186))))

(declare-fun b!4522552 () Bool)

(declare-fun Unit!95472 () Unit!95438)

(assert (=> b!4522552 (= e!2817725 Unit!95472)))

(declare-fun b!4522553 () Bool)

(assert (=> b!4522553 (= e!2817724 (isDefined!8411 (getValueByKey!1101 (toList!4339 lm!1477) lt!1699186)))))

(assert (= (and d!1393747 c!771875) b!4522551))

(assert (= (and d!1393747 (not c!771875)) b!4522552))

(assert (= (and d!1393747 (not res!1882555)) b!4522553))

(declare-fun m!5272565 () Bool)

(assert (=> d!1393747 m!5272565))

(declare-fun m!5272567 () Bool)

(assert (=> b!4522551 m!5272567))

(declare-fun m!5272569 () Bool)

(assert (=> b!4522551 m!5272569))

(assert (=> b!4522551 m!5272569))

(declare-fun m!5272571 () Bool)

(assert (=> b!4522551 m!5272571))

(assert (=> b!4522553 m!5272569))

(assert (=> b!4522553 m!5272569))

(assert (=> b!4522553 m!5272571))

(assert (=> b!4522278 d!1393747))

(declare-fun b!4522582 () Bool)

(declare-fun e!2817745 () List!50786)

(assert (=> b!4522582 (= e!2817745 (Cons!50662 (h!56519 lt!1699189) (removePairForKey!793 (t!357748 lt!1699189) key!3287)))))

(declare-fun d!1393753 () Bool)

(declare-fun lt!1699495 () List!50786)

(assert (=> d!1393753 (not (containsKey!1794 lt!1699495 key!3287))))

(declare-fun e!2817744 () List!50786)

(assert (=> d!1393753 (= lt!1699495 e!2817744)))

(declare-fun c!771885 () Bool)

(assert (=> d!1393753 (= c!771885 (and ((_ is Cons!50662) lt!1699189) (= (_1!28843 (h!56519 lt!1699189)) key!3287)))))

(assert (=> d!1393753 (noDuplicateKeys!1166 lt!1699189)))

(assert (=> d!1393753 (= (removePairForKey!793 lt!1699189 key!3287) lt!1699495)))

(declare-fun b!4522583 () Bool)

(assert (=> b!4522583 (= e!2817745 Nil!50662)))

(declare-fun b!4522580 () Bool)

(assert (=> b!4522580 (= e!2817744 (t!357748 lt!1699189))))

(declare-fun b!4522581 () Bool)

(assert (=> b!4522581 (= e!2817744 e!2817745)))

(declare-fun c!771884 () Bool)

(assert (=> b!4522581 (= c!771884 ((_ is Cons!50662) lt!1699189))))

(assert (= (and d!1393753 c!771885) b!4522580))

(assert (= (and d!1393753 (not c!771885)) b!4522581))

(assert (= (and b!4522581 c!771884) b!4522582))

(assert (= (and b!4522581 (not c!771884)) b!4522583))

(declare-fun m!5272605 () Bool)

(assert (=> b!4522582 m!5272605))

(declare-fun m!5272607 () Bool)

(assert (=> d!1393753 m!5272607))

(declare-fun m!5272611 () Bool)

(assert (=> d!1393753 m!5272611))

(assert (=> b!4522278 d!1393753))

(declare-fun d!1393763 () Bool)

(assert (=> d!1393763 (contains!13397 (toList!4339 lm!1477) (tuple2!51101 hash!344 lt!1699189))))

(declare-fun lt!1699500 () Unit!95438)

(declare-fun choose!29569 (List!50787 (_ BitVec 64) List!50786) Unit!95438)

(assert (=> d!1393763 (= lt!1699500 (choose!29569 (toList!4339 lm!1477) hash!344 lt!1699189))))

(declare-fun e!2817756 () Bool)

(assert (=> d!1393763 e!2817756))

(declare-fun res!1882576 () Bool)

(assert (=> d!1393763 (=> (not res!1882576) (not e!2817756))))

(declare-fun isStrictlySorted!435 (List!50787) Bool)

(assert (=> d!1393763 (= res!1882576 (isStrictlySorted!435 (toList!4339 lm!1477)))))

(assert (=> d!1393763 (= (lemmaGetValueByKeyImpliesContainsTuple!678 (toList!4339 lm!1477) hash!344 lt!1699189) lt!1699500)))

(declare-fun b!4522594 () Bool)

(assert (=> b!4522594 (= e!2817756 (= (getValueByKey!1101 (toList!4339 lm!1477) hash!344) (Some!11124 lt!1699189)))))

(assert (= (and d!1393763 res!1882576) b!4522594))

(declare-fun m!5272631 () Bool)

(assert (=> d!1393763 m!5272631))

(declare-fun m!5272633 () Bool)

(assert (=> d!1393763 m!5272633))

(declare-fun m!5272635 () Bool)

(assert (=> d!1393763 m!5272635))

(assert (=> b!4522594 m!5272535))

(assert (=> b!4522278 d!1393763))

(declare-fun d!1393777 () Bool)

(declare-fun dynLambda!21169 (Int tuple2!51100) Bool)

(assert (=> d!1393777 (dynLambda!21169 lambda!172792 lt!1699175)))

(declare-fun lt!1699503 () Unit!95438)

(declare-fun choose!29570 (List!50787 Int tuple2!51100) Unit!95438)

(assert (=> d!1393777 (= lt!1699503 (choose!29570 (toList!4339 lm!1477) lambda!172792 lt!1699175))))

(declare-fun e!2817759 () Bool)

(assert (=> d!1393777 e!2817759))

(declare-fun res!1882579 () Bool)

(assert (=> d!1393777 (=> (not res!1882579) (not e!2817759))))

(assert (=> d!1393777 (= res!1882579 (forall!10275 (toList!4339 lm!1477) lambda!172792))))

(assert (=> d!1393777 (= (forallContained!2527 (toList!4339 lm!1477) lambda!172792 lt!1699175) lt!1699503)))

(declare-fun b!4522597 () Bool)

(assert (=> b!4522597 (= e!2817759 (contains!13397 (toList!4339 lm!1477) lt!1699175))))

(assert (= (and d!1393777 res!1882579) b!4522597))

(declare-fun b_lambda!155245 () Bool)

(assert (=> (not b_lambda!155245) (not d!1393777)))

(declare-fun m!5272639 () Bool)

(assert (=> d!1393777 m!5272639))

(declare-fun m!5272641 () Bool)

(assert (=> d!1393777 m!5272641))

(assert (=> d!1393777 m!5272171))

(assert (=> b!4522597 m!5272181))

(assert (=> b!4522278 d!1393777))

(declare-fun d!1393781 () Bool)

(declare-fun lt!1699506 () Bool)

(declare-fun content!8369 (List!50787) (InoxSet tuple2!51100))

(assert (=> d!1393781 (= lt!1699506 (select (content!8369 (toList!4339 lm!1477)) lt!1699175))))

(declare-fun e!2817764 () Bool)

(assert (=> d!1393781 (= lt!1699506 e!2817764)))

(declare-fun res!1882585 () Bool)

(assert (=> d!1393781 (=> (not res!1882585) (not e!2817764))))

(assert (=> d!1393781 (= res!1882585 ((_ is Cons!50663) (toList!4339 lm!1477)))))

(assert (=> d!1393781 (= (contains!13397 (toList!4339 lm!1477) lt!1699175) lt!1699506)))

(declare-fun b!4522606 () Bool)

(declare-fun e!2817765 () Bool)

(assert (=> b!4522606 (= e!2817764 e!2817765)))

(declare-fun res!1882584 () Bool)

(assert (=> b!4522606 (=> res!1882584 e!2817765)))

(assert (=> b!4522606 (= res!1882584 (= (h!56520 (toList!4339 lm!1477)) lt!1699175))))

(declare-fun b!4522607 () Bool)

(assert (=> b!4522607 (= e!2817765 (contains!13397 (t!357749 (toList!4339 lm!1477)) lt!1699175))))

(assert (= (and d!1393781 res!1882585) b!4522606))

(assert (= (and b!4522606 (not res!1882584)) b!4522607))

(declare-fun m!5272645 () Bool)

(assert (=> d!1393781 m!5272645))

(declare-fun m!5272647 () Bool)

(assert (=> d!1393781 m!5272647))

(assert (=> b!4522607 m!5272169))

(assert (=> b!4522278 d!1393781))

(declare-fun d!1393785 () Bool)

(declare-fun res!1882593 () Bool)

(declare-fun e!2817773 () Bool)

(assert (=> d!1393785 (=> res!1882593 e!2817773)))

(assert (=> d!1393785 (= res!1882593 (and ((_ is Cons!50662) lt!1699189) (= (_1!28843 (h!56519 lt!1699189)) key!3287)))))

(assert (=> d!1393785 (= (containsKey!1794 lt!1699189 key!3287) e!2817773)))

(declare-fun b!4522617 () Bool)

(declare-fun e!2817774 () Bool)

(assert (=> b!4522617 (= e!2817773 e!2817774)))

(declare-fun res!1882594 () Bool)

(assert (=> b!4522617 (=> (not res!1882594) (not e!2817774))))

(assert (=> b!4522617 (= res!1882594 ((_ is Cons!50662) lt!1699189))))

(declare-fun b!4522618 () Bool)

(assert (=> b!4522618 (= e!2817774 (containsKey!1794 (t!357748 lt!1699189) key!3287))))

(assert (= (and d!1393785 (not res!1882593)) b!4522617))

(assert (= (and b!4522617 res!1882594) b!4522618))

(declare-fun m!5272653 () Bool)

(assert (=> b!4522618 m!5272653))

(assert (=> b!4522277 d!1393785))

(declare-fun d!1393793 () Bool)

(declare-fun lt!1699528 () Bool)

(assert (=> d!1393793 (= lt!1699528 (select (content!8369 (t!357749 (toList!4339 lm!1477))) lt!1699175))))

(declare-fun e!2817775 () Bool)

(assert (=> d!1393793 (= lt!1699528 e!2817775)))

(declare-fun res!1882596 () Bool)

(assert (=> d!1393793 (=> (not res!1882596) (not e!2817775))))

(assert (=> d!1393793 (= res!1882596 ((_ is Cons!50663) (t!357749 (toList!4339 lm!1477))))))

(assert (=> d!1393793 (= (contains!13397 (t!357749 (toList!4339 lm!1477)) lt!1699175) lt!1699528)))

(declare-fun b!4522619 () Bool)

(declare-fun e!2817776 () Bool)

(assert (=> b!4522619 (= e!2817775 e!2817776)))

(declare-fun res!1882595 () Bool)

(assert (=> b!4522619 (=> res!1882595 e!2817776)))

(assert (=> b!4522619 (= res!1882595 (= (h!56520 (t!357749 (toList!4339 lm!1477))) lt!1699175))))

(declare-fun b!4522620 () Bool)

(assert (=> b!4522620 (= e!2817776 (contains!13397 (t!357749 (t!357749 (toList!4339 lm!1477))) lt!1699175))))

(assert (= (and d!1393793 res!1882596) b!4522619))

(assert (= (and b!4522619 (not res!1882595)) b!4522620))

(declare-fun m!5272655 () Bool)

(assert (=> d!1393793 m!5272655))

(declare-fun m!5272657 () Bool)

(assert (=> d!1393793 m!5272657))

(declare-fun m!5272659 () Bool)

(assert (=> b!4522620 m!5272659))

(assert (=> b!4522282 d!1393793))

(declare-fun d!1393795 () Bool)

(declare-fun e!2817777 () Bool)

(assert (=> d!1393795 e!2817777))

(declare-fun res!1882597 () Bool)

(assert (=> d!1393795 (=> res!1882597 e!2817777)))

(declare-fun lt!1699529 () Bool)

(assert (=> d!1393795 (= res!1882597 (not lt!1699529))))

(declare-fun lt!1699532 () Bool)

(assert (=> d!1393795 (= lt!1699529 lt!1699532)))

(declare-fun lt!1699530 () Unit!95438)

(declare-fun e!2817778 () Unit!95438)

(assert (=> d!1393795 (= lt!1699530 e!2817778)))

(declare-fun c!771887 () Bool)

(assert (=> d!1393795 (= c!771887 lt!1699532)))

(assert (=> d!1393795 (= lt!1699532 (containsKey!1798 (toList!4339 lt!1699173) hash!344))))

(assert (=> d!1393795 (= (contains!13398 lt!1699173 hash!344) lt!1699529)))

(declare-fun b!4522621 () Bool)

(declare-fun lt!1699531 () Unit!95438)

(assert (=> b!4522621 (= e!2817778 lt!1699531)))

(assert (=> b!4522621 (= lt!1699531 (lemmaContainsKeyImpliesGetValueByKeyDefined!1005 (toList!4339 lt!1699173) hash!344))))

(assert (=> b!4522621 (isDefined!8411 (getValueByKey!1101 (toList!4339 lt!1699173) hash!344))))

(declare-fun b!4522622 () Bool)

(declare-fun Unit!95475 () Unit!95438)

(assert (=> b!4522622 (= e!2817778 Unit!95475)))

(declare-fun b!4522623 () Bool)

(assert (=> b!4522623 (= e!2817777 (isDefined!8411 (getValueByKey!1101 (toList!4339 lt!1699173) hash!344)))))

(assert (= (and d!1393795 c!771887) b!4522621))

(assert (= (and d!1393795 (not c!771887)) b!4522622))

(assert (= (and d!1393795 (not res!1882597)) b!4522623))

(declare-fun m!5272661 () Bool)

(assert (=> d!1393795 m!5272661))

(declare-fun m!5272663 () Bool)

(assert (=> b!4522621 m!5272663))

(assert (=> b!4522621 m!5272525))

(assert (=> b!4522621 m!5272525))

(declare-fun m!5272665 () Bool)

(assert (=> b!4522621 m!5272665))

(assert (=> b!4522623 m!5272525))

(assert (=> b!4522623 m!5272525))

(assert (=> b!4522623 m!5272665))

(assert (=> b!4522281 d!1393795))

(declare-fun d!1393797 () Bool)

(declare-fun tail!7746 (List!50787) List!50787)

(assert (=> d!1393797 (= (tail!7744 lm!1477) (ListLongMap!2972 (tail!7746 (toList!4339 lm!1477))))))

(declare-fun bs!857742 () Bool)

(assert (= bs!857742 d!1393797))

(declare-fun m!5272667 () Bool)

(assert (=> bs!857742 m!5272667))

(assert (=> b!4522281 d!1393797))

(declare-fun d!1393799 () Bool)

(declare-fun head!9423 (List!50787) tuple2!51100)

(assert (=> d!1393799 (= (head!9422 lt!1699199) (head!9423 (toList!4339 lt!1699199)))))

(declare-fun bs!857748 () Bool)

(assert (= bs!857748 d!1393799))

(declare-fun m!5272669 () Bool)

(assert (=> bs!857748 m!5272669))

(assert (=> b!4522302 d!1393799))

(declare-fun d!1393801 () Bool)

(declare-fun res!1882602 () Bool)

(declare-fun e!2817783 () Bool)

(assert (=> d!1393801 (=> res!1882602 e!2817783)))

(assert (=> d!1393801 (= res!1882602 ((_ is Nil!50663) (toList!4339 lm!1477)))))

(assert (=> d!1393801 (= (forall!10275 (toList!4339 lm!1477) lambda!172793) e!2817783)))

(declare-fun b!4522628 () Bool)

(declare-fun e!2817784 () Bool)

(assert (=> b!4522628 (= e!2817783 e!2817784)))

(declare-fun res!1882603 () Bool)

(assert (=> b!4522628 (=> (not res!1882603) (not e!2817784))))

(assert (=> b!4522628 (= res!1882603 (dynLambda!21169 lambda!172793 (h!56520 (toList!4339 lm!1477))))))

(declare-fun b!4522629 () Bool)

(assert (=> b!4522629 (= e!2817784 (forall!10275 (t!357749 (toList!4339 lm!1477)) lambda!172793))))

(assert (= (and d!1393801 (not res!1882602)) b!4522628))

(assert (= (and b!4522628 res!1882603) b!4522629))

(declare-fun b_lambda!155247 () Bool)

(assert (=> (not b_lambda!155247) (not b!4522628)))

(declare-fun m!5272703 () Bool)

(assert (=> b!4522628 m!5272703))

(declare-fun m!5272705 () Bool)

(assert (=> b!4522629 m!5272705))

(assert (=> b!4522301 d!1393801))

(declare-fun b!4522646 () Bool)

(declare-fun res!1882613 () Bool)

(declare-fun e!2817798 () Bool)

(assert (=> b!4522646 (=> (not res!1882613) (not e!2817798))))

(declare-fun lt!1699535 () Option!11121)

(declare-fun get!16601 (Option!11121) tuple2!51098)

(assert (=> b!4522646 (= res!1882613 (= (_1!28843 (get!16601 lt!1699535)) key!3287))))

(declare-fun b!4522647 () Bool)

(declare-fun e!2817799 () Option!11121)

(declare-fun e!2817795 () Option!11121)

(assert (=> b!4522647 (= e!2817799 e!2817795)))

(declare-fun c!771892 () Bool)

(assert (=> b!4522647 (= c!771892 ((_ is Cons!50662) (_2!28844 lt!1699180)))))

(declare-fun b!4522648 () Bool)

(assert (=> b!4522648 (= e!2817795 None!11120)))

(declare-fun b!4522649 () Bool)

(assert (=> b!4522649 (= e!2817799 (Some!11120 (h!56519 (_2!28844 lt!1699180))))))

(declare-fun b!4522650 () Bool)

(assert (=> b!4522650 (= e!2817795 (getPair!182 (t!357748 (_2!28844 lt!1699180)) key!3287))))

(declare-fun b!4522651 () Bool)

(declare-fun contains!13403 (List!50786 tuple2!51098) Bool)

(assert (=> b!4522651 (= e!2817798 (contains!13403 (_2!28844 lt!1699180) (get!16601 lt!1699535)))))

(declare-fun d!1393805 () Bool)

(declare-fun e!2817796 () Bool)

(assert (=> d!1393805 e!2817796))

(declare-fun res!1882614 () Bool)

(assert (=> d!1393805 (=> res!1882614 e!2817796)))

(declare-fun e!2817797 () Bool)

(assert (=> d!1393805 (= res!1882614 e!2817797)))

(declare-fun res!1882615 () Bool)

(assert (=> d!1393805 (=> (not res!1882615) (not e!2817797))))

(declare-fun isEmpty!28677 (Option!11121) Bool)

(assert (=> d!1393805 (= res!1882615 (isEmpty!28677 lt!1699535))))

(assert (=> d!1393805 (= lt!1699535 e!2817799)))

(declare-fun c!771893 () Bool)

(assert (=> d!1393805 (= c!771893 (and ((_ is Cons!50662) (_2!28844 lt!1699180)) (= (_1!28843 (h!56519 (_2!28844 lt!1699180))) key!3287)))))

(assert (=> d!1393805 (noDuplicateKeys!1166 (_2!28844 lt!1699180))))

(assert (=> d!1393805 (= (getPair!182 (_2!28844 lt!1699180) key!3287) lt!1699535)))

(declare-fun b!4522652 () Bool)

(assert (=> b!4522652 (= e!2817796 e!2817798)))

(declare-fun res!1882612 () Bool)

(assert (=> b!4522652 (=> (not res!1882612) (not e!2817798))))

(declare-fun isDefined!8412 (Option!11121) Bool)

(assert (=> b!4522652 (= res!1882612 (isDefined!8412 lt!1699535))))

(declare-fun b!4522653 () Bool)

(assert (=> b!4522653 (= e!2817797 (not (containsKey!1794 (_2!28844 lt!1699180) key!3287)))))

(assert (= (and d!1393805 c!771893) b!4522649))

(assert (= (and d!1393805 (not c!771893)) b!4522647))

(assert (= (and b!4522647 c!771892) b!4522650))

(assert (= (and b!4522647 (not c!771892)) b!4522648))

(assert (= (and d!1393805 res!1882615) b!4522653))

(assert (= (and d!1393805 (not res!1882614)) b!4522652))

(assert (= (and b!4522652 res!1882612) b!4522646))

(assert (= (and b!4522646 res!1882613) b!4522651))

(declare-fun m!5272707 () Bool)

(assert (=> b!4522650 m!5272707))

(declare-fun m!5272709 () Bool)

(assert (=> b!4522651 m!5272709))

(assert (=> b!4522651 m!5272709))

(declare-fun m!5272711 () Bool)

(assert (=> b!4522651 m!5272711))

(declare-fun m!5272713 () Bool)

(assert (=> d!1393805 m!5272713))

(assert (=> d!1393805 m!5272135))

(declare-fun m!5272715 () Bool)

(assert (=> b!4522652 m!5272715))

(assert (=> b!4522653 m!5272147))

(assert (=> b!4522646 m!5272709))

(assert (=> b!4522301 d!1393805))

(declare-fun bs!857751 () Bool)

(declare-fun d!1393807 () Bool)

(assert (= bs!857751 (and d!1393807 d!1393695)))

(declare-fun lambda!172904 () Int)

(assert (=> bs!857751 (= lambda!172904 lambda!172809)))

(declare-fun bs!857752 () Bool)

(assert (= bs!857752 (and d!1393807 d!1393693)))

(assert (=> bs!857752 (= lambda!172904 lambda!172806)))

(declare-fun bs!857753 () Bool)

(assert (= bs!857753 (and d!1393807 d!1393663)))

(assert (=> bs!857753 (= lambda!172904 lambda!172799)))

(declare-fun bs!857754 () Bool)

(assert (= bs!857754 (and d!1393807 start!447896)))

(assert (=> bs!857754 (= lambda!172904 lambda!172792)))

(declare-fun bs!857755 () Bool)

(assert (= bs!857755 (and d!1393807 d!1393743)))

(assert (=> bs!857755 (= lambda!172904 lambda!172887)))

(declare-fun bs!857756 () Bool)

(assert (= bs!857756 (and d!1393807 d!1393679)))

(assert (=> bs!857756 (= lambda!172904 lambda!172805)))

(declare-fun bs!857757 () Bool)

(assert (= bs!857757 (and d!1393807 b!4522301)))

(assert (=> bs!857757 (not (= lambda!172904 lambda!172793))))

(assert (=> d!1393807 (not (contains!13399 (extractMap!1222 (toList!4339 lm!1477)) key!3287))))

(declare-fun lt!1699541 () Unit!95438)

(declare-fun choose!29572 (ListLongMap!2971 K!12055 Hashable!5561) Unit!95438)

(assert (=> d!1393807 (= lt!1699541 (choose!29572 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1393807 (forall!10275 (toList!4339 lm!1477) lambda!172904)))

(assert (=> d!1393807 (= (lemmaNotInItsHashBucketThenNotInMap!154 lm!1477 key!3287 hashF!1107) lt!1699541)))

(declare-fun bs!857758 () Bool)

(assert (= bs!857758 d!1393807))

(assert (=> bs!857758 m!5272145))

(assert (=> bs!857758 m!5272145))

(declare-fun m!5272721 () Bool)

(assert (=> bs!857758 m!5272721))

(declare-fun m!5272723 () Bool)

(assert (=> bs!857758 m!5272723))

(declare-fun m!5272725 () Bool)

(assert (=> bs!857758 m!5272725))

(assert (=> b!4522280 d!1393807))

(declare-fun bs!857759 () Bool)

(declare-fun d!1393811 () Bool)

(assert (= bs!857759 (and d!1393811 d!1393695)))

(declare-fun lambda!172907 () Int)

(assert (=> bs!857759 (not (= lambda!172907 lambda!172809))))

(declare-fun bs!857760 () Bool)

(assert (= bs!857760 (and d!1393811 d!1393693)))

(assert (=> bs!857760 (not (= lambda!172907 lambda!172806))))

(declare-fun bs!857761 () Bool)

(assert (= bs!857761 (and d!1393811 d!1393663)))

(assert (=> bs!857761 (not (= lambda!172907 lambda!172799))))

(declare-fun bs!857762 () Bool)

(assert (= bs!857762 (and d!1393811 d!1393807)))

(assert (=> bs!857762 (not (= lambda!172907 lambda!172904))))

(declare-fun bs!857763 () Bool)

(assert (= bs!857763 (and d!1393811 start!447896)))

(assert (=> bs!857763 (not (= lambda!172907 lambda!172792))))

(declare-fun bs!857764 () Bool)

(assert (= bs!857764 (and d!1393811 d!1393743)))

(assert (=> bs!857764 (not (= lambda!172907 lambda!172887))))

(declare-fun bs!857765 () Bool)

(assert (= bs!857765 (and d!1393811 d!1393679)))

(assert (=> bs!857765 (not (= lambda!172907 lambda!172805))))

(declare-fun bs!857766 () Bool)

(assert (= bs!857766 (and d!1393811 b!4522301)))

(assert (=> bs!857766 (= lambda!172907 lambda!172793)))

(assert (=> d!1393811 true))

(assert (=> d!1393811 (= (allKeysSameHashInMap!1273 lm!1477 hashF!1107) (forall!10275 (toList!4339 lm!1477) lambda!172907))))

(declare-fun bs!857767 () Bool)

(assert (= bs!857767 d!1393811))

(declare-fun m!5272727 () Bool)

(assert (=> bs!857767 m!5272727))

(assert (=> b!4522294 d!1393811))

(declare-fun d!1393813 () Bool)

(assert (=> d!1393813 (= (eq!623 lt!1699190 lt!1699196) (= (content!8367 (toList!4340 lt!1699190)) (content!8367 (toList!4340 lt!1699196))))))

(declare-fun bs!857768 () Bool)

(assert (= bs!857768 d!1393813))

(declare-fun m!5272729 () Bool)

(assert (=> bs!857768 m!5272729))

(declare-fun m!5272731 () Bool)

(assert (=> bs!857768 m!5272731))

(assert (=> b!4522293 d!1393813))

(declare-fun bs!857769 () Bool)

(declare-fun d!1393815 () Bool)

(assert (= bs!857769 (and d!1393815 d!1393695)))

(declare-fun lambda!172908 () Int)

(assert (=> bs!857769 (= lambda!172908 lambda!172809)))

(declare-fun bs!857770 () Bool)

(assert (= bs!857770 (and d!1393815 d!1393811)))

(assert (=> bs!857770 (not (= lambda!172908 lambda!172907))))

(declare-fun bs!857771 () Bool)

(assert (= bs!857771 (and d!1393815 d!1393693)))

(assert (=> bs!857771 (= lambda!172908 lambda!172806)))

(declare-fun bs!857772 () Bool)

(assert (= bs!857772 (and d!1393815 d!1393663)))

(assert (=> bs!857772 (= lambda!172908 lambda!172799)))

(declare-fun bs!857773 () Bool)

(assert (= bs!857773 (and d!1393815 d!1393807)))

(assert (=> bs!857773 (= lambda!172908 lambda!172904)))

(declare-fun bs!857774 () Bool)

(assert (= bs!857774 (and d!1393815 start!447896)))

(assert (=> bs!857774 (= lambda!172908 lambda!172792)))

(declare-fun bs!857775 () Bool)

(assert (= bs!857775 (and d!1393815 d!1393743)))

(assert (=> bs!857775 (= lambda!172908 lambda!172887)))

(declare-fun bs!857776 () Bool)

(assert (= bs!857776 (and d!1393815 d!1393679)))

(assert (=> bs!857776 (= lambda!172908 lambda!172805)))

(declare-fun bs!857777 () Bool)

(assert (= bs!857777 (and d!1393815 b!4522301)))

(assert (=> bs!857777 (not (= lambda!172908 lambda!172793))))

(declare-fun lt!1699542 () ListMap!3601)

(assert (=> d!1393815 (invariantList!1021 (toList!4340 lt!1699542))))

(declare-fun e!2817800 () ListMap!3601)

(assert (=> d!1393815 (= lt!1699542 e!2817800)))

(declare-fun c!771894 () Bool)

(assert (=> d!1393815 (= c!771894 ((_ is Cons!50663) (toList!4339 (+!1548 lt!1699173 lt!1699180))))))

(assert (=> d!1393815 (forall!10275 (toList!4339 (+!1548 lt!1699173 lt!1699180)) lambda!172908)))

(assert (=> d!1393815 (= (extractMap!1222 (toList!4339 (+!1548 lt!1699173 lt!1699180))) lt!1699542)))

(declare-fun b!4522654 () Bool)

(assert (=> b!4522654 (= e!2817800 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (toList!4339 (+!1548 lt!1699173 lt!1699180)))) (extractMap!1222 (t!357749 (toList!4339 (+!1548 lt!1699173 lt!1699180))))))))

(declare-fun b!4522655 () Bool)

(assert (=> b!4522655 (= e!2817800 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393815 c!771894) b!4522654))

(assert (= (and d!1393815 (not c!771894)) b!4522655))

(declare-fun m!5272733 () Bool)

(assert (=> d!1393815 m!5272733))

(declare-fun m!5272735 () Bool)

(assert (=> d!1393815 m!5272735))

(declare-fun m!5272737 () Bool)

(assert (=> b!4522654 m!5272737))

(assert (=> b!4522654 m!5272737))

(declare-fun m!5272739 () Bool)

(assert (=> b!4522654 m!5272739))

(assert (=> b!4522293 d!1393815))

(declare-fun d!1393817 () Bool)

(declare-fun e!2817804 () Bool)

(assert (=> d!1393817 e!2817804))

(declare-fun res!1882621 () Bool)

(assert (=> d!1393817 (=> (not res!1882621) (not e!2817804))))

(declare-fun lt!1699557 () ListLongMap!2971)

(assert (=> d!1393817 (= res!1882621 (contains!13398 lt!1699557 (_1!28844 lt!1699180)))))

(declare-fun lt!1699556 () List!50787)

(assert (=> d!1393817 (= lt!1699557 (ListLongMap!2972 lt!1699556))))

(declare-fun lt!1699558 () Unit!95438)

(declare-fun lt!1699555 () Unit!95438)

(assert (=> d!1393817 (= lt!1699558 lt!1699555)))

(assert (=> d!1393817 (= (getValueByKey!1101 lt!1699556 (_1!28844 lt!1699180)) (Some!11124 (_2!28844 lt!1699180)))))

(declare-fun lemmaContainsTupThenGetReturnValue!684 (List!50787 (_ BitVec 64) List!50786) Unit!95438)

(assert (=> d!1393817 (= lt!1699555 (lemmaContainsTupThenGetReturnValue!684 lt!1699556 (_1!28844 lt!1699180) (_2!28844 lt!1699180)))))

(declare-fun insertStrictlySorted!412 (List!50787 (_ BitVec 64) List!50786) List!50787)

(assert (=> d!1393817 (= lt!1699556 (insertStrictlySorted!412 (toList!4339 lt!1699173) (_1!28844 lt!1699180) (_2!28844 lt!1699180)))))

(assert (=> d!1393817 (= (+!1548 lt!1699173 lt!1699180) lt!1699557)))

(declare-fun b!4522662 () Bool)

(declare-fun res!1882620 () Bool)

(assert (=> b!4522662 (=> (not res!1882620) (not e!2817804))))

(assert (=> b!4522662 (= res!1882620 (= (getValueByKey!1101 (toList!4339 lt!1699557) (_1!28844 lt!1699180)) (Some!11124 (_2!28844 lt!1699180))))))

(declare-fun b!4522663 () Bool)

(assert (=> b!4522663 (= e!2817804 (contains!13397 (toList!4339 lt!1699557) lt!1699180))))

(assert (= (and d!1393817 res!1882621) b!4522662))

(assert (= (and b!4522662 res!1882620) b!4522663))

(declare-fun m!5272761 () Bool)

(assert (=> d!1393817 m!5272761))

(declare-fun m!5272763 () Bool)

(assert (=> d!1393817 m!5272763))

(declare-fun m!5272765 () Bool)

(assert (=> d!1393817 m!5272765))

(declare-fun m!5272767 () Bool)

(assert (=> d!1393817 m!5272767))

(declare-fun m!5272769 () Bool)

(assert (=> b!4522662 m!5272769))

(declare-fun m!5272771 () Bool)

(assert (=> b!4522663 m!5272771))

(assert (=> b!4522293 d!1393817))

(declare-fun d!1393823 () Bool)

(assert (=> d!1393823 (= (head!9422 lm!1477) (head!9423 (toList!4339 lm!1477)))))

(declare-fun bs!857802 () Bool)

(assert (= bs!857802 d!1393823))

(declare-fun m!5272773 () Bool)

(assert (=> bs!857802 m!5272773))

(assert (=> b!4522293 d!1393823))

(declare-fun d!1393825 () Bool)

(declare-fun e!2817813 () Bool)

(assert (=> d!1393825 e!2817813))

(declare-fun res!1882631 () Bool)

(assert (=> d!1393825 (=> (not res!1882631) (not e!2817813))))

(declare-fun lt!1699573 () ListMap!3601)

(assert (=> d!1393825 (= res!1882631 (not (contains!13399 lt!1699573 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!144 (List!50786 K!12055) List!50786)

(assert (=> d!1393825 (= lt!1699573 (ListMap!3602 (removePresrvNoDuplicatedKeys!144 (toList!4340 lt!1699177) key!3287)))))

(assert (=> d!1393825 (= (-!392 lt!1699177 key!3287) lt!1699573)))

(declare-fun b!4522675 () Bool)

(declare-fun content!8370 (List!50788) (InoxSet K!12055))

(assert (=> b!4522675 (= e!2817813 (= ((_ map and) (content!8370 (keys!17603 lt!1699177)) ((_ map not) (store ((as const (Array K!12055 Bool)) false) key!3287 true))) (content!8370 (keys!17603 lt!1699573))))))

(assert (= (and d!1393825 res!1882631) b!4522675))

(declare-fun m!5272817 () Bool)

(assert (=> d!1393825 m!5272817))

(declare-fun m!5272819 () Bool)

(assert (=> d!1393825 m!5272819))

(assert (=> b!4522675 m!5272263))

(declare-fun m!5272821 () Bool)

(assert (=> b!4522675 m!5272821))

(assert (=> b!4522675 m!5272821))

(declare-fun m!5272823 () Bool)

(assert (=> b!4522675 m!5272823))

(assert (=> b!4522675 m!5272263))

(declare-fun m!5272825 () Bool)

(assert (=> b!4522675 m!5272825))

(declare-fun m!5272827 () Bool)

(assert (=> b!4522675 m!5272827))

(assert (=> b!4522293 d!1393825))

(declare-fun d!1393839 () Bool)

(assert (=> d!1393839 (= (eq!623 lt!1699188 lt!1699195) (= (content!8367 (toList!4340 lt!1699188)) (content!8367 (toList!4340 lt!1699195))))))

(declare-fun bs!857819 () Bool)

(assert (= bs!857819 d!1393839))

(assert (=> bs!857819 m!5272209))

(assert (=> bs!857819 m!5272207))

(assert (=> b!4522293 d!1393839))

(declare-fun bs!857820 () Bool)

(declare-fun d!1393841 () Bool)

(assert (= bs!857820 (and d!1393841 d!1393815)))

(declare-fun lambda!172914 () Int)

(assert (=> bs!857820 (= lambda!172914 lambda!172908)))

(declare-fun bs!857821 () Bool)

(assert (= bs!857821 (and d!1393841 d!1393695)))

(assert (=> bs!857821 (= lambda!172914 lambda!172809)))

(declare-fun bs!857822 () Bool)

(assert (= bs!857822 (and d!1393841 d!1393811)))

(assert (=> bs!857822 (not (= lambda!172914 lambda!172907))))

(declare-fun bs!857823 () Bool)

(assert (= bs!857823 (and d!1393841 d!1393693)))

(assert (=> bs!857823 (= lambda!172914 lambda!172806)))

(declare-fun bs!857824 () Bool)

(assert (= bs!857824 (and d!1393841 d!1393663)))

(assert (=> bs!857824 (= lambda!172914 lambda!172799)))

(declare-fun bs!857825 () Bool)

(assert (= bs!857825 (and d!1393841 d!1393807)))

(assert (=> bs!857825 (= lambda!172914 lambda!172904)))

(declare-fun bs!857826 () Bool)

(assert (= bs!857826 (and d!1393841 start!447896)))

(assert (=> bs!857826 (= lambda!172914 lambda!172792)))

(declare-fun bs!857827 () Bool)

(assert (= bs!857827 (and d!1393841 d!1393743)))

(assert (=> bs!857827 (= lambda!172914 lambda!172887)))

(declare-fun bs!857828 () Bool)

(assert (= bs!857828 (and d!1393841 d!1393679)))

(assert (=> bs!857828 (= lambda!172914 lambda!172805)))

(declare-fun bs!857829 () Bool)

(assert (= bs!857829 (and d!1393841 b!4522301)))

(assert (=> bs!857829 (not (= lambda!172914 lambda!172793))))

(declare-fun lt!1699574 () ListMap!3601)

(assert (=> d!1393841 (invariantList!1021 (toList!4340 lt!1699574))))

(declare-fun e!2817814 () ListMap!3601)

(assert (=> d!1393841 (= lt!1699574 e!2817814)))

(declare-fun c!771897 () Bool)

(assert (=> d!1393841 (= c!771897 ((_ is Cons!50663) (toList!4339 lt!1699198)))))

(assert (=> d!1393841 (forall!10275 (toList!4339 lt!1699198) lambda!172914)))

(assert (=> d!1393841 (= (extractMap!1222 (toList!4339 lt!1699198)) lt!1699574)))

(declare-fun b!4522676 () Bool)

(assert (=> b!4522676 (= e!2817814 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (toList!4339 lt!1699198))) (extractMap!1222 (t!357749 (toList!4339 lt!1699198)))))))

(declare-fun b!4522677 () Bool)

(assert (=> b!4522677 (= e!2817814 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393841 c!771897) b!4522676))

(assert (= (and d!1393841 (not c!771897)) b!4522677))

(declare-fun m!5272837 () Bool)

(assert (=> d!1393841 m!5272837))

(declare-fun m!5272839 () Bool)

(assert (=> d!1393841 m!5272839))

(declare-fun m!5272841 () Bool)

(assert (=> b!4522676 m!5272841))

(assert (=> b!4522676 m!5272841))

(declare-fun m!5272843 () Bool)

(assert (=> b!4522676 m!5272843))

(assert (=> b!4522293 d!1393841))

(declare-fun bs!857833 () Bool)

(declare-fun d!1393843 () Bool)

(assert (= bs!857833 (and d!1393843 d!1393815)))

(declare-fun lambda!172917 () Int)

(assert (=> bs!857833 (= lambda!172917 lambda!172908)))

(declare-fun bs!857834 () Bool)

(assert (= bs!857834 (and d!1393843 d!1393695)))

(assert (=> bs!857834 (= lambda!172917 lambda!172809)))

(declare-fun bs!857835 () Bool)

(assert (= bs!857835 (and d!1393843 d!1393841)))

(assert (=> bs!857835 (= lambda!172917 lambda!172914)))

(declare-fun bs!857836 () Bool)

(assert (= bs!857836 (and d!1393843 d!1393811)))

(assert (=> bs!857836 (not (= lambda!172917 lambda!172907))))

(declare-fun bs!857837 () Bool)

(assert (= bs!857837 (and d!1393843 d!1393693)))

(assert (=> bs!857837 (= lambda!172917 lambda!172806)))

(declare-fun bs!857838 () Bool)

(assert (= bs!857838 (and d!1393843 d!1393663)))

(assert (=> bs!857838 (= lambda!172917 lambda!172799)))

(declare-fun bs!857839 () Bool)

(assert (= bs!857839 (and d!1393843 d!1393807)))

(assert (=> bs!857839 (= lambda!172917 lambda!172904)))

(declare-fun bs!857840 () Bool)

(assert (= bs!857840 (and d!1393843 start!447896)))

(assert (=> bs!857840 (= lambda!172917 lambda!172792)))

(declare-fun bs!857841 () Bool)

(assert (= bs!857841 (and d!1393843 d!1393743)))

(assert (=> bs!857841 (= lambda!172917 lambda!172887)))

(declare-fun bs!857842 () Bool)

(assert (= bs!857842 (and d!1393843 d!1393679)))

(assert (=> bs!857842 (= lambda!172917 lambda!172805)))

(declare-fun bs!857843 () Bool)

(assert (= bs!857843 (and d!1393843 b!4522301)))

(assert (=> bs!857843 (not (= lambda!172917 lambda!172793))))

(assert (=> d!1393843 (eq!623 (extractMap!1222 (toList!4339 (+!1548 lt!1699173 (tuple2!51101 hash!344 newBucket!178)))) (-!392 (extractMap!1222 (toList!4339 lt!1699173)) key!3287))))

(declare-fun lt!1699577 () Unit!95438)

(declare-fun choose!29573 (ListLongMap!2971 (_ BitVec 64) List!50786 K!12055 Hashable!5561) Unit!95438)

(assert (=> d!1393843 (= lt!1699577 (choose!29573 lt!1699173 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1393843 (forall!10275 (toList!4339 lt!1699173) lambda!172917)))

(assert (=> d!1393843 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!151 lt!1699173 hash!344 newBucket!178 key!3287 hashF!1107) lt!1699577)))

(declare-fun bs!857844 () Bool)

(assert (= bs!857844 d!1393843))

(declare-fun m!5272851 () Bool)

(assert (=> bs!857844 m!5272851))

(assert (=> bs!857844 m!5272157))

(declare-fun m!5272853 () Bool)

(assert (=> bs!857844 m!5272853))

(declare-fun m!5272855 () Bool)

(assert (=> bs!857844 m!5272855))

(declare-fun m!5272857 () Bool)

(assert (=> bs!857844 m!5272857))

(declare-fun m!5272859 () Bool)

(assert (=> bs!857844 m!5272859))

(assert (=> bs!857844 m!5272853))

(declare-fun m!5272861 () Bool)

(assert (=> bs!857844 m!5272861))

(assert (=> bs!857844 m!5272157))

(assert (=> bs!857844 m!5272859))

(assert (=> b!4522293 d!1393843))

(declare-fun d!1393851 () Bool)

(declare-fun e!2817821 () Bool)

(assert (=> d!1393851 e!2817821))

(declare-fun res!1882633 () Bool)

(assert (=> d!1393851 (=> (not res!1882633) (not e!2817821))))

(declare-fun lt!1699580 () ListLongMap!2971)

(assert (=> d!1393851 (= res!1882633 (contains!13398 lt!1699580 (_1!28844 lt!1699176)))))

(declare-fun lt!1699579 () List!50787)

(assert (=> d!1393851 (= lt!1699580 (ListLongMap!2972 lt!1699579))))

(declare-fun lt!1699581 () Unit!95438)

(declare-fun lt!1699578 () Unit!95438)

(assert (=> d!1393851 (= lt!1699581 lt!1699578)))

(assert (=> d!1393851 (= (getValueByKey!1101 lt!1699579 (_1!28844 lt!1699176)) (Some!11124 (_2!28844 lt!1699176)))))

(assert (=> d!1393851 (= lt!1699578 (lemmaContainsTupThenGetReturnValue!684 lt!1699579 (_1!28844 lt!1699176) (_2!28844 lt!1699176)))))

(assert (=> d!1393851 (= lt!1699579 (insertStrictlySorted!412 (toList!4339 lt!1699173) (_1!28844 lt!1699176) (_2!28844 lt!1699176)))))

(assert (=> d!1393851 (= (+!1548 lt!1699173 lt!1699176) lt!1699580)))

(declare-fun b!4522688 () Bool)

(declare-fun res!1882632 () Bool)

(assert (=> b!4522688 (=> (not res!1882632) (not e!2817821))))

(assert (=> b!4522688 (= res!1882632 (= (getValueByKey!1101 (toList!4339 lt!1699580) (_1!28844 lt!1699176)) (Some!11124 (_2!28844 lt!1699176))))))

(declare-fun b!4522689 () Bool)

(assert (=> b!4522689 (= e!2817821 (contains!13397 (toList!4339 lt!1699580) lt!1699176))))

(assert (= (and d!1393851 res!1882633) b!4522688))

(assert (= (and b!4522688 res!1882632) b!4522689))

(declare-fun m!5272863 () Bool)

(assert (=> d!1393851 m!5272863))

(declare-fun m!5272865 () Bool)

(assert (=> d!1393851 m!5272865))

(declare-fun m!5272867 () Bool)

(assert (=> d!1393851 m!5272867))

(declare-fun m!5272869 () Bool)

(assert (=> d!1393851 m!5272869))

(declare-fun m!5272871 () Bool)

(assert (=> b!4522688 m!5272871))

(declare-fun m!5272873 () Bool)

(assert (=> b!4522689 m!5272873))

(assert (=> b!4522293 d!1393851))

(declare-fun b!4522690 () Bool)

(declare-fun e!2817825 () List!50788)

(assert (=> b!4522690 (= e!2817825 (keys!17603 lt!1699195))))

(declare-fun b!4522691 () Bool)

(declare-fun e!2817822 () Unit!95438)

(declare-fun lt!1699582 () Unit!95438)

(assert (=> b!4522691 (= e!2817822 lt!1699582)))

(declare-fun lt!1699588 () Unit!95438)

(assert (=> b!4522691 (= lt!1699588 (lemmaContainsKeyImpliesGetValueByKeyDefined!1003 (toList!4340 lt!1699195) key!3287))))

(assert (=> b!4522691 (isDefined!8409 (getValueByKey!1099 (toList!4340 lt!1699195) key!3287))))

(declare-fun lt!1699589 () Unit!95438)

(assert (=> b!4522691 (= lt!1699589 lt!1699588)))

(assert (=> b!4522691 (= lt!1699582 (lemmaInListThenGetKeysListContains!464 (toList!4340 lt!1699195) key!3287))))

(declare-fun call!315132 () Bool)

(assert (=> b!4522691 call!315132))

(declare-fun b!4522692 () Bool)

(declare-fun e!2817826 () Unit!95438)

(declare-fun Unit!95478 () Unit!95438)

(assert (=> b!4522692 (= e!2817826 Unit!95478)))

(declare-fun b!4522693 () Bool)

(assert (=> b!4522693 false))

(declare-fun lt!1699586 () Unit!95438)

(declare-fun lt!1699585 () Unit!95438)

(assert (=> b!4522693 (= lt!1699586 lt!1699585)))

(assert (=> b!4522693 (containsKey!1796 (toList!4340 lt!1699195) key!3287)))

(assert (=> b!4522693 (= lt!1699585 (lemmaInGetKeysListThenContainsKey!467 (toList!4340 lt!1699195) key!3287))))

(declare-fun Unit!95479 () Unit!95438)

(assert (=> b!4522693 (= e!2817826 Unit!95479)))

(declare-fun b!4522694 () Bool)

(assert (=> b!4522694 (= e!2817822 e!2817826)))

(declare-fun c!771899 () Bool)

(assert (=> b!4522694 (= c!771899 call!315132)))

(declare-fun b!4522695 () Bool)

(declare-fun e!2817823 () Bool)

(declare-fun e!2817827 () Bool)

(assert (=> b!4522695 (= e!2817823 e!2817827)))

(declare-fun res!1882634 () Bool)

(assert (=> b!4522695 (=> (not res!1882634) (not e!2817827))))

(assert (=> b!4522695 (= res!1882634 (isDefined!8409 (getValueByKey!1099 (toList!4340 lt!1699195) key!3287)))))

(declare-fun b!4522696 () Bool)

(assert (=> b!4522696 (= e!2817827 (contains!13401 (keys!17603 lt!1699195) key!3287))))

(declare-fun b!4522697 () Bool)

(assert (=> b!4522697 (= e!2817825 (getKeysList!468 (toList!4340 lt!1699195)))))

(declare-fun d!1393853 () Bool)

(assert (=> d!1393853 e!2817823))

(declare-fun res!1882636 () Bool)

(assert (=> d!1393853 (=> res!1882636 e!2817823)))

(declare-fun e!2817824 () Bool)

(assert (=> d!1393853 (= res!1882636 e!2817824)))

(declare-fun res!1882635 () Bool)

(assert (=> d!1393853 (=> (not res!1882635) (not e!2817824))))

(declare-fun lt!1699584 () Bool)

(assert (=> d!1393853 (= res!1882635 (not lt!1699584))))

(declare-fun lt!1699587 () Bool)

(assert (=> d!1393853 (= lt!1699584 lt!1699587)))

(declare-fun lt!1699583 () Unit!95438)

(assert (=> d!1393853 (= lt!1699583 e!2817822)))

(declare-fun c!771900 () Bool)

(assert (=> d!1393853 (= c!771900 lt!1699587)))

(assert (=> d!1393853 (= lt!1699587 (containsKey!1796 (toList!4340 lt!1699195) key!3287))))

(assert (=> d!1393853 (= (contains!13399 lt!1699195 key!3287) lt!1699584)))

(declare-fun b!4522698 () Bool)

(assert (=> b!4522698 (= e!2817824 (not (contains!13401 (keys!17603 lt!1699195) key!3287)))))

(declare-fun bm!315127 () Bool)

(assert (=> bm!315127 (= call!315132 (contains!13401 e!2817825 key!3287))))

(declare-fun c!771898 () Bool)

(assert (=> bm!315127 (= c!771898 c!771900)))

(assert (= (and d!1393853 c!771900) b!4522691))

(assert (= (and d!1393853 (not c!771900)) b!4522694))

(assert (= (and b!4522694 c!771899) b!4522693))

(assert (= (and b!4522694 (not c!771899)) b!4522692))

(assert (= (or b!4522691 b!4522694) bm!315127))

(assert (= (and bm!315127 c!771898) b!4522697))

(assert (= (and bm!315127 (not c!771898)) b!4522690))

(assert (= (and d!1393853 res!1882635) b!4522698))

(assert (= (and d!1393853 (not res!1882636)) b!4522695))

(assert (= (and b!4522695 res!1882634) b!4522696))

(declare-fun m!5272875 () Bool)

(assert (=> b!4522697 m!5272875))

(declare-fun m!5272877 () Bool)

(assert (=> b!4522693 m!5272877))

(declare-fun m!5272879 () Bool)

(assert (=> b!4522693 m!5272879))

(declare-fun m!5272881 () Bool)

(assert (=> b!4522690 m!5272881))

(declare-fun m!5272883 () Bool)

(assert (=> b!4522695 m!5272883))

(assert (=> b!4522695 m!5272883))

(declare-fun m!5272885 () Bool)

(assert (=> b!4522695 m!5272885))

(declare-fun m!5272887 () Bool)

(assert (=> b!4522691 m!5272887))

(assert (=> b!4522691 m!5272883))

(assert (=> b!4522691 m!5272883))

(assert (=> b!4522691 m!5272885))

(declare-fun m!5272889 () Bool)

(assert (=> b!4522691 m!5272889))

(assert (=> b!4522696 m!5272881))

(assert (=> b!4522696 m!5272881))

(declare-fun m!5272891 () Bool)

(assert (=> b!4522696 m!5272891))

(declare-fun m!5272893 () Bool)

(assert (=> bm!315127 m!5272893))

(assert (=> b!4522698 m!5272881))

(assert (=> b!4522698 m!5272881))

(assert (=> b!4522698 m!5272891))

(assert (=> d!1393853 m!5272877))

(assert (=> b!4522298 d!1393853))

(declare-fun bs!857845 () Bool)

(declare-fun d!1393855 () Bool)

(assert (= bs!857845 (and d!1393855 d!1393815)))

(declare-fun lambda!172918 () Int)

(assert (=> bs!857845 (= lambda!172918 lambda!172908)))

(declare-fun bs!857846 () Bool)

(assert (= bs!857846 (and d!1393855 d!1393695)))

(assert (=> bs!857846 (= lambda!172918 lambda!172809)))

(declare-fun bs!857847 () Bool)

(assert (= bs!857847 (and d!1393855 d!1393841)))

(assert (=> bs!857847 (= lambda!172918 lambda!172914)))

(declare-fun bs!857848 () Bool)

(assert (= bs!857848 (and d!1393855 d!1393811)))

(assert (=> bs!857848 (not (= lambda!172918 lambda!172907))))

(declare-fun bs!857849 () Bool)

(assert (= bs!857849 (and d!1393855 d!1393693)))

(assert (=> bs!857849 (= lambda!172918 lambda!172806)))

(declare-fun bs!857850 () Bool)

(assert (= bs!857850 (and d!1393855 d!1393663)))

(assert (=> bs!857850 (= lambda!172918 lambda!172799)))

(declare-fun bs!857851 () Bool)

(assert (= bs!857851 (and d!1393855 start!447896)))

(assert (=> bs!857851 (= lambda!172918 lambda!172792)))

(declare-fun bs!857852 () Bool)

(assert (= bs!857852 (and d!1393855 d!1393743)))

(assert (=> bs!857852 (= lambda!172918 lambda!172887)))

(declare-fun bs!857853 () Bool)

(assert (= bs!857853 (and d!1393855 d!1393679)))

(assert (=> bs!857853 (= lambda!172918 lambda!172805)))

(declare-fun bs!857854 () Bool)

(assert (= bs!857854 (and d!1393855 b!4522301)))

(assert (=> bs!857854 (not (= lambda!172918 lambda!172793))))

(declare-fun bs!857855 () Bool)

(assert (= bs!857855 (and d!1393855 d!1393807)))

(assert (=> bs!857855 (= lambda!172918 lambda!172904)))

(declare-fun bs!857856 () Bool)

(assert (= bs!857856 (and d!1393855 d!1393843)))

(assert (=> bs!857856 (= lambda!172918 lambda!172917)))

(declare-fun lt!1699590 () ListMap!3601)

(assert (=> d!1393855 (invariantList!1021 (toList!4340 lt!1699590))))

(declare-fun e!2817828 () ListMap!3601)

(assert (=> d!1393855 (= lt!1699590 e!2817828)))

(declare-fun c!771901 () Bool)

(assert (=> d!1393855 (= c!771901 ((_ is Cons!50663) (toList!4339 lm!1477)))))

(assert (=> d!1393855 (forall!10275 (toList!4339 lm!1477) lambda!172918)))

(assert (=> d!1393855 (= (extractMap!1222 (toList!4339 lm!1477)) lt!1699590)))

(declare-fun b!4522699 () Bool)

(assert (=> b!4522699 (= e!2817828 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (toList!4339 lm!1477))) (extractMap!1222 (t!357749 (toList!4339 lm!1477)))))))

(declare-fun b!4522700 () Bool)

(assert (=> b!4522700 (= e!2817828 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393855 c!771901) b!4522699))

(assert (= (and d!1393855 (not c!771901)) b!4522700))

(declare-fun m!5272895 () Bool)

(assert (=> d!1393855 m!5272895))

(declare-fun m!5272897 () Bool)

(assert (=> d!1393855 m!5272897))

(assert (=> b!4522699 m!5272161))

(assert (=> b!4522699 m!5272161))

(declare-fun m!5272899 () Bool)

(assert (=> b!4522699 m!5272899))

(assert (=> b!4522298 d!1393855))

(declare-fun d!1393857 () Bool)

(declare-fun res!1882637 () Bool)

(declare-fun e!2817829 () Bool)

(assert (=> d!1393857 (=> res!1882637 e!2817829)))

(assert (=> d!1393857 (= res!1882637 ((_ is Nil!50663) (toList!4339 lm!1477)))))

(assert (=> d!1393857 (= (forall!10275 (toList!4339 lm!1477) lambda!172792) e!2817829)))

(declare-fun b!4522701 () Bool)

(declare-fun e!2817830 () Bool)

(assert (=> b!4522701 (= e!2817829 e!2817830)))

(declare-fun res!1882638 () Bool)

(assert (=> b!4522701 (=> (not res!1882638) (not e!2817830))))

(assert (=> b!4522701 (= res!1882638 (dynLambda!21169 lambda!172792 (h!56520 (toList!4339 lm!1477))))))

(declare-fun b!4522702 () Bool)

(assert (=> b!4522702 (= e!2817830 (forall!10275 (t!357749 (toList!4339 lm!1477)) lambda!172792))))

(assert (= (and d!1393857 (not res!1882637)) b!4522701))

(assert (= (and b!4522701 res!1882638) b!4522702))

(declare-fun b_lambda!155257 () Bool)

(assert (=> (not b_lambda!155257) (not b!4522701)))

(declare-fun m!5272901 () Bool)

(assert (=> b!4522701 m!5272901))

(declare-fun m!5272903 () Bool)

(assert (=> b!4522702 m!5272903))

(assert (=> start!447896 d!1393857))

(declare-fun d!1393859 () Bool)

(assert (=> d!1393859 (= (inv!66239 lm!1477) (isStrictlySorted!435 (toList!4339 lm!1477)))))

(declare-fun bs!857857 () Bool)

(assert (= bs!857857 d!1393859))

(assert (=> bs!857857 m!5272635))

(assert (=> start!447896 d!1393859))

(declare-fun d!1393861 () Bool)

(declare-fun e!2817831 () Bool)

(assert (=> d!1393861 e!2817831))

(declare-fun res!1882640 () Bool)

(assert (=> d!1393861 (=> (not res!1882640) (not e!2817831))))

(declare-fun lt!1699593 () ListLongMap!2971)

(assert (=> d!1393861 (= res!1882640 (contains!13398 lt!1699593 (_1!28844 lt!1699176)))))

(declare-fun lt!1699592 () List!50787)

(assert (=> d!1393861 (= lt!1699593 (ListLongMap!2972 lt!1699592))))

(declare-fun lt!1699594 () Unit!95438)

(declare-fun lt!1699591 () Unit!95438)

(assert (=> d!1393861 (= lt!1699594 lt!1699591)))

(assert (=> d!1393861 (= (getValueByKey!1101 lt!1699592 (_1!28844 lt!1699176)) (Some!11124 (_2!28844 lt!1699176)))))

(assert (=> d!1393861 (= lt!1699591 (lemmaContainsTupThenGetReturnValue!684 lt!1699592 (_1!28844 lt!1699176) (_2!28844 lt!1699176)))))

(assert (=> d!1393861 (= lt!1699592 (insertStrictlySorted!412 (toList!4339 lm!1477) (_1!28844 lt!1699176) (_2!28844 lt!1699176)))))

(assert (=> d!1393861 (= (+!1548 lm!1477 lt!1699176) lt!1699593)))

(declare-fun b!4522703 () Bool)

(declare-fun res!1882639 () Bool)

(assert (=> b!4522703 (=> (not res!1882639) (not e!2817831))))

(assert (=> b!4522703 (= res!1882639 (= (getValueByKey!1101 (toList!4339 lt!1699593) (_1!28844 lt!1699176)) (Some!11124 (_2!28844 lt!1699176))))))

(declare-fun b!4522704 () Bool)

(assert (=> b!4522704 (= e!2817831 (contains!13397 (toList!4339 lt!1699593) lt!1699176))))

(assert (= (and d!1393861 res!1882640) b!4522703))

(assert (= (and b!4522703 res!1882639) b!4522704))

(declare-fun m!5272905 () Bool)

(assert (=> d!1393861 m!5272905))

(declare-fun m!5272907 () Bool)

(assert (=> d!1393861 m!5272907))

(declare-fun m!5272909 () Bool)

(assert (=> d!1393861 m!5272909))

(declare-fun m!5272911 () Bool)

(assert (=> d!1393861 m!5272911))

(declare-fun m!5272913 () Bool)

(assert (=> b!4522703 m!5272913))

(declare-fun m!5272915 () Bool)

(assert (=> b!4522704 m!5272915))

(assert (=> b!4522276 d!1393861))

(declare-fun d!1393863 () Bool)

(declare-fun e!2817832 () Bool)

(assert (=> d!1393863 e!2817832))

(declare-fun res!1882642 () Bool)

(assert (=> d!1393863 (=> (not res!1882642) (not e!2817832))))

(declare-fun lt!1699597 () ListLongMap!2971)

(assert (=> d!1393863 (= res!1882642 (contains!13398 lt!1699597 (_1!28844 lt!1699180)))))

(declare-fun lt!1699596 () List!50787)

(assert (=> d!1393863 (= lt!1699597 (ListLongMap!2972 lt!1699596))))

(declare-fun lt!1699598 () Unit!95438)

(declare-fun lt!1699595 () Unit!95438)

(assert (=> d!1393863 (= lt!1699598 lt!1699595)))

(assert (=> d!1393863 (= (getValueByKey!1101 lt!1699596 (_1!28844 lt!1699180)) (Some!11124 (_2!28844 lt!1699180)))))

(assert (=> d!1393863 (= lt!1699595 (lemmaContainsTupThenGetReturnValue!684 lt!1699596 (_1!28844 lt!1699180) (_2!28844 lt!1699180)))))

(assert (=> d!1393863 (= lt!1699596 (insertStrictlySorted!412 (toList!4339 lt!1699198) (_1!28844 lt!1699180) (_2!28844 lt!1699180)))))

(assert (=> d!1393863 (= (+!1548 lt!1699198 lt!1699180) lt!1699597)))

(declare-fun b!4522705 () Bool)

(declare-fun res!1882641 () Bool)

(assert (=> b!4522705 (=> (not res!1882641) (not e!2817832))))

(assert (=> b!4522705 (= res!1882641 (= (getValueByKey!1101 (toList!4339 lt!1699597) (_1!28844 lt!1699180)) (Some!11124 (_2!28844 lt!1699180))))))

(declare-fun b!4522706 () Bool)

(assert (=> b!4522706 (= e!2817832 (contains!13397 (toList!4339 lt!1699597) lt!1699180))))

(assert (= (and d!1393863 res!1882642) b!4522705))

(assert (= (and b!4522705 res!1882641) b!4522706))

(declare-fun m!5272917 () Bool)

(assert (=> d!1393863 m!5272917))

(declare-fun m!5272919 () Bool)

(assert (=> d!1393863 m!5272919))

(declare-fun m!5272921 () Bool)

(assert (=> d!1393863 m!5272921))

(declare-fun m!5272923 () Bool)

(assert (=> d!1393863 m!5272923))

(declare-fun m!5272925 () Bool)

(assert (=> b!4522705 m!5272925))

(declare-fun m!5272927 () Bool)

(assert (=> b!4522706 m!5272927))

(assert (=> b!4522276 d!1393863))

(declare-fun d!1393865 () Bool)

(declare-fun lt!1699599 () Bool)

(assert (=> d!1393865 (= lt!1699599 (select (content!8369 (toList!4339 lm!1477)) (h!56520 (toList!4339 lm!1477))))))

(declare-fun e!2817833 () Bool)

(assert (=> d!1393865 (= lt!1699599 e!2817833)))

(declare-fun res!1882644 () Bool)

(assert (=> d!1393865 (=> (not res!1882644) (not e!2817833))))

(assert (=> d!1393865 (= res!1882644 ((_ is Cons!50663) (toList!4339 lm!1477)))))

(assert (=> d!1393865 (= (contains!13397 (toList!4339 lm!1477) (h!56520 (toList!4339 lm!1477))) lt!1699599)))

(declare-fun b!4522707 () Bool)

(declare-fun e!2817834 () Bool)

(assert (=> b!4522707 (= e!2817833 e!2817834)))

(declare-fun res!1882643 () Bool)

(assert (=> b!4522707 (=> res!1882643 e!2817834)))

(assert (=> b!4522707 (= res!1882643 (= (h!56520 (toList!4339 lm!1477)) (h!56520 (toList!4339 lm!1477))))))

(declare-fun b!4522708 () Bool)

(assert (=> b!4522708 (= e!2817834 (contains!13397 (t!357749 (toList!4339 lm!1477)) (h!56520 (toList!4339 lm!1477))))))

(assert (= (and d!1393865 res!1882644) b!4522707))

(assert (= (and b!4522707 (not res!1882643)) b!4522708))

(assert (=> d!1393865 m!5272645))

(declare-fun m!5272929 () Bool)

(assert (=> d!1393865 m!5272929))

(declare-fun m!5272931 () Bool)

(assert (=> b!4522708 m!5272931))

(assert (=> b!4522275 d!1393865))

(declare-fun d!1393867 () Bool)

(assert (=> d!1393867 (= (eq!623 lt!1699197 lt!1699182) (= (content!8367 (toList!4340 lt!1699197)) (content!8367 (toList!4340 lt!1699182))))))

(declare-fun bs!857858 () Bool)

(assert (= bs!857858 d!1393867))

(assert (=> bs!857858 m!5272355))

(assert (=> bs!857858 m!5272359))

(assert (=> b!4522296 d!1393867))

(declare-fun bs!857859 () Bool)

(declare-fun b!4522710 () Bool)

(assert (= bs!857859 (and b!4522710 b!4522502)))

(declare-fun lambda!172919 () Int)

(assert (=> bs!857859 (= (= lt!1699190 lt!1699424) (= lambda!172919 lambda!172881))))

(declare-fun bs!857860 () Bool)

(assert (= bs!857860 (and b!4522710 b!4522499)))

(assert (=> bs!857860 (= (= lt!1699190 lt!1699196) (= lambda!172919 lambda!172879))))

(assert (=> bs!857859 (= (= lt!1699190 lt!1699196) (= lambda!172919 lambda!172880))))

(declare-fun bs!857861 () Bool)

(assert (= bs!857861 (and b!4522710 d!1393703)))

(assert (=> bs!857861 (= (= lt!1699190 lt!1699410) (= lambda!172919 lambda!172882))))

(declare-fun bs!857862 () Bool)

(assert (= bs!857862 (and b!4522710 d!1393657)))

(assert (=> bs!857862 (not (= lambda!172919 lambda!172796))))

(assert (=> b!4522710 true))

(declare-fun bs!857863 () Bool)

(declare-fun b!4522713 () Bool)

(assert (= bs!857863 (and b!4522713 b!4522502)))

(declare-fun lambda!172920 () Int)

(assert (=> bs!857863 (= (= lt!1699190 lt!1699424) (= lambda!172920 lambda!172881))))

(declare-fun bs!857864 () Bool)

(assert (= bs!857864 (and b!4522713 b!4522499)))

(assert (=> bs!857864 (= (= lt!1699190 lt!1699196) (= lambda!172920 lambda!172879))))

(assert (=> bs!857863 (= (= lt!1699190 lt!1699196) (= lambda!172920 lambda!172880))))

(declare-fun bs!857865 () Bool)

(assert (= bs!857865 (and b!4522713 b!4522710)))

(assert (=> bs!857865 (= lambda!172920 lambda!172919)))

(declare-fun bs!857866 () Bool)

(assert (= bs!857866 (and b!4522713 d!1393703)))

(assert (=> bs!857866 (= (= lt!1699190 lt!1699410) (= lambda!172920 lambda!172882))))

(declare-fun bs!857867 () Bool)

(assert (= bs!857867 (and b!4522713 d!1393657)))

(assert (=> bs!857867 (not (= lambda!172920 lambda!172796))))

(assert (=> b!4522713 true))

(declare-fun lt!1699617 () ListMap!3601)

(declare-fun lambda!172921 () Int)

(assert (=> b!4522713 (= (= lt!1699617 lt!1699190) (= lambda!172921 lambda!172920))))

(assert (=> bs!857863 (= (= lt!1699617 lt!1699424) (= lambda!172921 lambda!172881))))

(assert (=> bs!857864 (= (= lt!1699617 lt!1699196) (= lambda!172921 lambda!172879))))

(assert (=> bs!857863 (= (= lt!1699617 lt!1699196) (= lambda!172921 lambda!172880))))

(assert (=> bs!857865 (= (= lt!1699617 lt!1699190) (= lambda!172921 lambda!172919))))

(assert (=> bs!857866 (= (= lt!1699617 lt!1699410) (= lambda!172921 lambda!172882))))

(assert (=> bs!857867 (not (= lambda!172921 lambda!172796))))

(assert (=> b!4522713 true))

(declare-fun bs!857868 () Bool)

(declare-fun d!1393869 () Bool)

(assert (= bs!857868 (and d!1393869 b!4522713)))

(declare-fun lambda!172922 () Int)

(declare-fun lt!1699603 () ListMap!3601)

(assert (=> bs!857868 (= (= lt!1699603 lt!1699190) (= lambda!172922 lambda!172920))))

(assert (=> bs!857868 (= (= lt!1699603 lt!1699617) (= lambda!172922 lambda!172921))))

(declare-fun bs!857869 () Bool)

(assert (= bs!857869 (and d!1393869 b!4522502)))

(assert (=> bs!857869 (= (= lt!1699603 lt!1699424) (= lambda!172922 lambda!172881))))

(declare-fun bs!857870 () Bool)

(assert (= bs!857870 (and d!1393869 b!4522499)))

(assert (=> bs!857870 (= (= lt!1699603 lt!1699196) (= lambda!172922 lambda!172879))))

(assert (=> bs!857869 (= (= lt!1699603 lt!1699196) (= lambda!172922 lambda!172880))))

(declare-fun bs!857871 () Bool)

(assert (= bs!857871 (and d!1393869 b!4522710)))

(assert (=> bs!857871 (= (= lt!1699603 lt!1699190) (= lambda!172922 lambda!172919))))

(declare-fun bs!857872 () Bool)

(assert (= bs!857872 (and d!1393869 d!1393703)))

(assert (=> bs!857872 (= (= lt!1699603 lt!1699410) (= lambda!172922 lambda!172882))))

(declare-fun bs!857873 () Bool)

(assert (= bs!857873 (and d!1393869 d!1393657)))

(assert (=> bs!857873 (not (= lambda!172922 lambda!172796))))

(assert (=> d!1393869 true))

(declare-fun e!2817837 () ListMap!3601)

(assert (=> b!4522710 (= e!2817837 lt!1699190)))

(declare-fun lt!1699615 () Unit!95438)

(declare-fun call!315133 () Unit!95438)

(assert (=> b!4522710 (= lt!1699615 call!315133)))

(declare-fun call!315134 () Bool)

(assert (=> b!4522710 call!315134))

(declare-fun lt!1699610 () Unit!95438)

(assert (=> b!4522710 (= lt!1699610 lt!1699615)))

(declare-fun call!315135 () Bool)

(assert (=> b!4522710 call!315135))

(declare-fun lt!1699613 () Unit!95438)

(declare-fun Unit!95491 () Unit!95438)

(assert (=> b!4522710 (= lt!1699613 Unit!95491)))

(declare-fun c!771902 () Bool)

(declare-fun lt!1699618 () ListMap!3601)

(declare-fun bm!315128 () Bool)

(assert (=> bm!315128 (= call!315134 (forall!10276 (ite c!771902 (toList!4340 lt!1699190) (toList!4340 lt!1699618)) (ite c!771902 lambda!172919 lambda!172921)))))

(declare-fun bm!315129 () Bool)

(assert (=> bm!315129 (= call!315135 (forall!10276 (ite c!771902 (toList!4340 lt!1699190) (toList!4340 lt!1699618)) (ite c!771902 lambda!172919 lambda!172921)))))

(declare-fun b!4522711 () Bool)

(declare-fun e!2817836 () Bool)

(assert (=> b!4522711 (= e!2817836 (forall!10276 (toList!4340 lt!1699190) lambda!172921))))

(declare-fun bm!315130 () Bool)

(assert (=> bm!315130 (= call!315133 (lemmaContainsAllItsOwnKeys!342 lt!1699190))))

(declare-fun b!4522712 () Bool)

(declare-fun e!2817835 () Bool)

(assert (=> b!4522712 (= e!2817835 (invariantList!1021 (toList!4340 lt!1699603)))))

(assert (=> b!4522713 (= e!2817837 lt!1699617)))

(assert (=> b!4522713 (= lt!1699618 (+!1550 lt!1699190 (h!56519 (_2!28844 lt!1699180))))))

(assert (=> b!4522713 (= lt!1699617 (addToMapMapFromBucket!693 (t!357748 (_2!28844 lt!1699180)) (+!1550 lt!1699190 (h!56519 (_2!28844 lt!1699180)))))))

(declare-fun lt!1699605 () Unit!95438)

(assert (=> b!4522713 (= lt!1699605 call!315133)))

(assert (=> b!4522713 (forall!10276 (toList!4340 lt!1699190) lambda!172920)))

(declare-fun lt!1699619 () Unit!95438)

(assert (=> b!4522713 (= lt!1699619 lt!1699605)))

(assert (=> b!4522713 call!315135))

(declare-fun lt!1699620 () Unit!95438)

(declare-fun Unit!95492 () Unit!95438)

(assert (=> b!4522713 (= lt!1699620 Unit!95492)))

(assert (=> b!4522713 (forall!10276 (t!357748 (_2!28844 lt!1699180)) lambda!172921)))

(declare-fun lt!1699606 () Unit!95438)

(declare-fun Unit!95493 () Unit!95438)

(assert (=> b!4522713 (= lt!1699606 Unit!95493)))

(declare-fun lt!1699614 () Unit!95438)

(declare-fun Unit!95494 () Unit!95438)

(assert (=> b!4522713 (= lt!1699614 Unit!95494)))

(declare-fun lt!1699600 () Unit!95438)

(assert (=> b!4522713 (= lt!1699600 (forallContained!2529 (toList!4340 lt!1699618) lambda!172921 (h!56519 (_2!28844 lt!1699180))))))

(assert (=> b!4522713 (contains!13399 lt!1699618 (_1!28843 (h!56519 (_2!28844 lt!1699180))))))

(declare-fun lt!1699601 () Unit!95438)

(declare-fun Unit!95495 () Unit!95438)

(assert (=> b!4522713 (= lt!1699601 Unit!95495)))

(assert (=> b!4522713 (contains!13399 lt!1699617 (_1!28843 (h!56519 (_2!28844 lt!1699180))))))

(declare-fun lt!1699602 () Unit!95438)

(declare-fun Unit!95496 () Unit!95438)

(assert (=> b!4522713 (= lt!1699602 Unit!95496)))

(assert (=> b!4522713 (forall!10276 (_2!28844 lt!1699180) lambda!172921)))

(declare-fun lt!1699612 () Unit!95438)

(declare-fun Unit!95497 () Unit!95438)

(assert (=> b!4522713 (= lt!1699612 Unit!95497)))

(assert (=> b!4522713 call!315134))

(declare-fun lt!1699609 () Unit!95438)

(declare-fun Unit!95498 () Unit!95438)

(assert (=> b!4522713 (= lt!1699609 Unit!95498)))

(declare-fun lt!1699611 () Unit!95438)

(declare-fun Unit!95499 () Unit!95438)

(assert (=> b!4522713 (= lt!1699611 Unit!95499)))

(declare-fun lt!1699607 () Unit!95438)

(assert (=> b!4522713 (= lt!1699607 (addForallContainsKeyThenBeforeAdding!342 lt!1699190 lt!1699617 (_1!28843 (h!56519 (_2!28844 lt!1699180))) (_2!28843 (h!56519 (_2!28844 lt!1699180)))))))

(assert (=> b!4522713 (forall!10276 (toList!4340 lt!1699190) lambda!172921)))

(declare-fun lt!1699604 () Unit!95438)

(assert (=> b!4522713 (= lt!1699604 lt!1699607)))

(assert (=> b!4522713 (forall!10276 (toList!4340 lt!1699190) lambda!172921)))

(declare-fun lt!1699616 () Unit!95438)

(declare-fun Unit!95500 () Unit!95438)

(assert (=> b!4522713 (= lt!1699616 Unit!95500)))

(declare-fun res!1882647 () Bool)

(assert (=> b!4522713 (= res!1882647 (forall!10276 (_2!28844 lt!1699180) lambda!172921))))

(assert (=> b!4522713 (=> (not res!1882647) (not e!2817836))))

(assert (=> b!4522713 e!2817836))

(declare-fun lt!1699608 () Unit!95438)

(declare-fun Unit!95501 () Unit!95438)

(assert (=> b!4522713 (= lt!1699608 Unit!95501)))

(declare-fun b!4522709 () Bool)

(declare-fun res!1882646 () Bool)

(assert (=> b!4522709 (=> (not res!1882646) (not e!2817835))))

(assert (=> b!4522709 (= res!1882646 (forall!10276 (toList!4340 lt!1699190) lambda!172922))))

(assert (=> d!1393869 e!2817835))

(declare-fun res!1882645 () Bool)

(assert (=> d!1393869 (=> (not res!1882645) (not e!2817835))))

(assert (=> d!1393869 (= res!1882645 (forall!10276 (_2!28844 lt!1699180) lambda!172922))))

(assert (=> d!1393869 (= lt!1699603 e!2817837)))

(assert (=> d!1393869 (= c!771902 ((_ is Nil!50662) (_2!28844 lt!1699180)))))

(assert (=> d!1393869 (noDuplicateKeys!1166 (_2!28844 lt!1699180))))

(assert (=> d!1393869 (= (addToMapMapFromBucket!693 (_2!28844 lt!1699180) lt!1699190) lt!1699603)))

(assert (= (and d!1393869 c!771902) b!4522710))

(assert (= (and d!1393869 (not c!771902)) b!4522713))

(assert (= (and b!4522713 res!1882647) b!4522711))

(assert (= (or b!4522710 b!4522713) bm!315129))

(assert (= (or b!4522710 b!4522713) bm!315128))

(assert (= (or b!4522710 b!4522713) bm!315130))

(assert (= (and d!1393869 res!1882645) b!4522709))

(assert (= (and b!4522709 res!1882646) b!4522712))

(declare-fun m!5272933 () Bool)

(assert (=> b!4522712 m!5272933))

(declare-fun m!5272935 () Bool)

(assert (=> d!1393869 m!5272935))

(assert (=> d!1393869 m!5272135))

(declare-fun m!5272937 () Bool)

(assert (=> b!4522713 m!5272937))

(declare-fun m!5272939 () Bool)

(assert (=> b!4522713 m!5272939))

(declare-fun m!5272941 () Bool)

(assert (=> b!4522713 m!5272941))

(assert (=> b!4522713 m!5272941))

(declare-fun m!5272943 () Bool)

(assert (=> b!4522713 m!5272943))

(assert (=> b!4522713 m!5272937))

(declare-fun m!5272945 () Bool)

(assert (=> b!4522713 m!5272945))

(declare-fun m!5272947 () Bool)

(assert (=> b!4522713 m!5272947))

(declare-fun m!5272949 () Bool)

(assert (=> b!4522713 m!5272949))

(assert (=> b!4522713 m!5272945))

(declare-fun m!5272951 () Bool)

(assert (=> b!4522713 m!5272951))

(declare-fun m!5272953 () Bool)

(assert (=> b!4522713 m!5272953))

(declare-fun m!5272955 () Bool)

(assert (=> b!4522713 m!5272955))

(declare-fun m!5272957 () Bool)

(assert (=> bm!315129 m!5272957))

(declare-fun m!5272959 () Bool)

(assert (=> bm!315130 m!5272959))

(declare-fun m!5272961 () Bool)

(assert (=> b!4522709 m!5272961))

(assert (=> b!4522711 m!5272937))

(assert (=> bm!315128 m!5272957))

(assert (=> b!4522296 d!1393869))

(declare-fun bs!857874 () Bool)

(declare-fun d!1393871 () Bool)

(assert (= bs!857874 (and d!1393871 d!1393815)))

(declare-fun lambda!172923 () Int)

(assert (=> bs!857874 (= lambda!172923 lambda!172908)))

(declare-fun bs!857875 () Bool)

(assert (= bs!857875 (and d!1393871 d!1393695)))

(assert (=> bs!857875 (= lambda!172923 lambda!172809)))

(declare-fun bs!857876 () Bool)

(assert (= bs!857876 (and d!1393871 d!1393841)))

(assert (=> bs!857876 (= lambda!172923 lambda!172914)))

(declare-fun bs!857877 () Bool)

(assert (= bs!857877 (and d!1393871 d!1393811)))

(assert (=> bs!857877 (not (= lambda!172923 lambda!172907))))

(declare-fun bs!857878 () Bool)

(assert (= bs!857878 (and d!1393871 d!1393693)))

(assert (=> bs!857878 (= lambda!172923 lambda!172806)))

(declare-fun bs!857879 () Bool)

(assert (= bs!857879 (and d!1393871 d!1393663)))

(assert (=> bs!857879 (= lambda!172923 lambda!172799)))

(declare-fun bs!857880 () Bool)

(assert (= bs!857880 (and d!1393871 d!1393855)))

(assert (=> bs!857880 (= lambda!172923 lambda!172918)))

(declare-fun bs!857881 () Bool)

(assert (= bs!857881 (and d!1393871 start!447896)))

(assert (=> bs!857881 (= lambda!172923 lambda!172792)))

(declare-fun bs!857882 () Bool)

(assert (= bs!857882 (and d!1393871 d!1393743)))

(assert (=> bs!857882 (= lambda!172923 lambda!172887)))

(declare-fun bs!857883 () Bool)

(assert (= bs!857883 (and d!1393871 d!1393679)))

(assert (=> bs!857883 (= lambda!172923 lambda!172805)))

(declare-fun bs!857884 () Bool)

(assert (= bs!857884 (and d!1393871 b!4522301)))

(assert (=> bs!857884 (not (= lambda!172923 lambda!172793))))

(declare-fun bs!857885 () Bool)

(assert (= bs!857885 (and d!1393871 d!1393807)))

(assert (=> bs!857885 (= lambda!172923 lambda!172904)))

(declare-fun bs!857886 () Bool)

(assert (= bs!857886 (and d!1393871 d!1393843)))

(assert (=> bs!857886 (= lambda!172923 lambda!172917)))

(declare-fun lt!1699621 () ListMap!3601)

(assert (=> d!1393871 (invariantList!1021 (toList!4340 lt!1699621))))

(declare-fun e!2817838 () ListMap!3601)

(assert (=> d!1393871 (= lt!1699621 e!2817838)))

(declare-fun c!771903 () Bool)

(assert (=> d!1393871 (= c!771903 ((_ is Cons!50663) (toList!4339 lt!1699199)))))

(assert (=> d!1393871 (forall!10275 (toList!4339 lt!1699199) lambda!172923)))

(assert (=> d!1393871 (= (extractMap!1222 (toList!4339 lt!1699199)) lt!1699621)))

(declare-fun b!4522714 () Bool)

(assert (=> b!4522714 (= e!2817838 (addToMapMapFromBucket!693 (_2!28844 (h!56520 (toList!4339 lt!1699199))) (extractMap!1222 (t!357749 (toList!4339 lt!1699199)))))))

(declare-fun b!4522715 () Bool)

(assert (=> b!4522715 (= e!2817838 (ListMap!3602 Nil!50662))))

(assert (= (and d!1393871 c!771903) b!4522714))

(assert (= (and d!1393871 (not c!771903)) b!4522715))

(declare-fun m!5272963 () Bool)

(assert (=> d!1393871 m!5272963))

(declare-fun m!5272965 () Bool)

(assert (=> d!1393871 m!5272965))

(declare-fun m!5272967 () Bool)

(assert (=> b!4522714 m!5272967))

(assert (=> b!4522714 m!5272967))

(declare-fun m!5272969 () Bool)

(assert (=> b!4522714 m!5272969))

(assert (=> b!4522296 d!1393871))

(declare-fun d!1393873 () Bool)

(declare-fun hash!2827 (Hashable!5561 K!12055) (_ BitVec 64))

(assert (=> d!1393873 (= (hash!2823 hashF!1107 key!3287) (hash!2827 hashF!1107 key!3287))))

(declare-fun bs!857887 () Bool)

(assert (= bs!857887 d!1393873))

(declare-fun m!5272971 () Bool)

(assert (=> bs!857887 m!5272971))

(assert (=> b!4522290 d!1393873))

(declare-fun d!1393875 () Bool)

(declare-fun res!1882648 () Bool)

(declare-fun e!2817839 () Bool)

(assert (=> d!1393875 (=> res!1882648 e!2817839)))

(assert (=> d!1393875 (= res!1882648 (not ((_ is Cons!50662) (_2!28844 lt!1699180))))))

(assert (=> d!1393875 (= (noDuplicateKeys!1166 (_2!28844 lt!1699180)) e!2817839)))

(declare-fun b!4522716 () Bool)

(declare-fun e!2817840 () Bool)

(assert (=> b!4522716 (= e!2817839 e!2817840)))

(declare-fun res!1882649 () Bool)

(assert (=> b!4522716 (=> (not res!1882649) (not e!2817840))))

(assert (=> b!4522716 (= res!1882649 (not (containsKey!1794 (t!357748 (_2!28844 lt!1699180)) (_1!28843 (h!56519 (_2!28844 lt!1699180))))))))

(declare-fun b!4522717 () Bool)

(assert (=> b!4522717 (= e!2817840 (noDuplicateKeys!1166 (t!357748 (_2!28844 lt!1699180))))))

(assert (= (and d!1393875 (not res!1882648)) b!4522716))

(assert (= (and b!4522716 res!1882649) b!4522717))

(declare-fun m!5272973 () Bool)

(assert (=> b!4522716 m!5272973))

(declare-fun m!5272975 () Bool)

(assert (=> b!4522717 m!5272975))

(assert (=> b!4522289 d!1393875))

(declare-fun d!1393877 () Bool)

(assert (=> d!1393877 (dynLambda!21169 lambda!172792 (h!56520 (toList!4339 lm!1477)))))

(declare-fun lt!1699622 () Unit!95438)

(assert (=> d!1393877 (= lt!1699622 (choose!29570 (toList!4339 lm!1477) lambda!172792 (h!56520 (toList!4339 lm!1477))))))

(declare-fun e!2817841 () Bool)

(assert (=> d!1393877 e!2817841))

(declare-fun res!1882650 () Bool)

(assert (=> d!1393877 (=> (not res!1882650) (not e!2817841))))

(assert (=> d!1393877 (= res!1882650 (forall!10275 (toList!4339 lm!1477) lambda!172792))))

(assert (=> d!1393877 (= (forallContained!2527 (toList!4339 lm!1477) lambda!172792 (h!56520 (toList!4339 lm!1477))) lt!1699622)))

(declare-fun b!4522718 () Bool)

(assert (=> b!4522718 (= e!2817841 (contains!13397 (toList!4339 lm!1477) (h!56520 (toList!4339 lm!1477))))))

(assert (= (and d!1393877 res!1882650) b!4522718))

(declare-fun b_lambda!155259 () Bool)

(assert (=> (not b_lambda!155259) (not d!1393877)))

(assert (=> d!1393877 m!5272901))

(declare-fun m!5272977 () Bool)

(assert (=> d!1393877 m!5272977))

(assert (=> d!1393877 m!5272171))

(assert (=> b!4522718 m!5272167))

(assert (=> b!4522289 d!1393877))

(declare-fun d!1393879 () Bool)

(declare-fun res!1882651 () Bool)

(declare-fun e!2817842 () Bool)

(assert (=> d!1393879 (=> res!1882651 e!2817842)))

(assert (=> d!1393879 (= res!1882651 (and ((_ is Cons!50662) (_2!28844 lt!1699180)) (= (_1!28843 (h!56519 (_2!28844 lt!1699180))) key!3287)))))

(assert (=> d!1393879 (= (containsKey!1794 (_2!28844 lt!1699180) key!3287) e!2817842)))

(declare-fun b!4522719 () Bool)

(declare-fun e!2817843 () Bool)

(assert (=> b!4522719 (= e!2817842 e!2817843)))

(declare-fun res!1882652 () Bool)

(assert (=> b!4522719 (=> (not res!1882652) (not e!2817843))))

(assert (=> b!4522719 (= res!1882652 ((_ is Cons!50662) (_2!28844 lt!1699180)))))

(declare-fun b!4522720 () Bool)

(assert (=> b!4522720 (= e!2817843 (containsKey!1794 (t!357748 (_2!28844 lt!1699180)) key!3287))))

(assert (= (and d!1393879 (not res!1882651)) b!4522719))

(assert (= (and b!4522719 res!1882652) b!4522720))

(declare-fun m!5272979 () Bool)

(assert (=> b!4522720 m!5272979))

(assert (=> b!4522292 d!1393879))

(declare-fun b!4522725 () Bool)

(declare-fun e!2817846 () Bool)

(declare-fun tp!1338173 () Bool)

(assert (=> b!4522725 (= e!2817846 (and tp_is_empty!27941 tp_is_empty!27943 tp!1338173))))

(assert (=> b!4522288 (= tp!1338160 e!2817846)))

(assert (= (and b!4522288 ((_ is Cons!50662) (t!357748 newBucket!178))) b!4522725))

(declare-fun b!4522730 () Bool)

(declare-fun e!2817849 () Bool)

(declare-fun tp!1338178 () Bool)

(declare-fun tp!1338179 () Bool)

(assert (=> b!4522730 (= e!2817849 (and tp!1338178 tp!1338179))))

(assert (=> b!4522291 (= tp!1338161 e!2817849)))

(assert (= (and b!4522291 ((_ is Cons!50663) (toList!4339 lm!1477))) b!4522730))

(declare-fun b_lambda!155261 () Bool)

(assert (= b_lambda!155247 (or b!4522301 b_lambda!155261)))

(declare-fun bs!857888 () Bool)

(declare-fun d!1393881 () Bool)

(assert (= bs!857888 (and d!1393881 b!4522301)))

(assert (=> bs!857888 (= (dynLambda!21169 lambda!172793 (h!56520 (toList!4339 lm!1477))) (allKeysSameHash!1020 (_2!28844 (h!56520 (toList!4339 lm!1477))) (_1!28844 (h!56520 (toList!4339 lm!1477))) hashF!1107))))

(declare-fun m!5272981 () Bool)

(assert (=> bs!857888 m!5272981))

(assert (=> b!4522628 d!1393881))

(declare-fun b_lambda!155263 () Bool)

(assert (= b_lambda!155257 (or start!447896 b_lambda!155263)))

(declare-fun bs!857889 () Bool)

(declare-fun d!1393883 () Bool)

(assert (= bs!857889 (and d!1393883 start!447896)))

(assert (=> bs!857889 (= (dynLambda!21169 lambda!172792 (h!56520 (toList!4339 lm!1477))) (noDuplicateKeys!1166 (_2!28844 (h!56520 (toList!4339 lm!1477)))))))

(declare-fun m!5272983 () Bool)

(assert (=> bs!857889 m!5272983))

(assert (=> b!4522701 d!1393883))

(declare-fun b_lambda!155265 () Bool)

(assert (= b_lambda!155259 (or start!447896 b_lambda!155265)))

(assert (=> d!1393877 d!1393883))

(declare-fun b_lambda!155267 () Bool)

(assert (= b_lambda!155245 (or start!447896 b_lambda!155267)))

(declare-fun bs!857890 () Bool)

(declare-fun d!1393885 () Bool)

(assert (= bs!857890 (and d!1393885 start!447896)))

(assert (=> bs!857890 (= (dynLambda!21169 lambda!172792 lt!1699175) (noDuplicateKeys!1166 (_2!28844 lt!1699175)))))

(declare-fun m!5272985 () Bool)

(assert (=> bs!857890 m!5272985))

(assert (=> d!1393777 d!1393885))

(check-sat (not b!4522360) (not b!4522501) (not b!4522423) (not d!1393841) (not b!4522369) (not d!1393823) (not b!4522582) (not b!4522368) (not b!4522553) (not b!4522720) (not b!4522706) (not d!1393677) (not d!1393741) (not b!4522646) (not b!4522353) (not d!1393869) (not d!1393811) (not d!1393745) (not b!4522356) (not d!1393695) (not b!4522359) (not bm!315128) (not b!4522662) (not d!1393793) (not bs!857890) (not b!4522688) (not bm!315099) (not b!4522629) (not b!4522597) (not b!4522652) (not d!1393699) (not bm!315130) (not b!4522315) (not bs!857889) (not b!4522717) (not d!1393817) (not d!1393865) (not b!4522500) (not d!1393799) (not b!4522320) (not b!4522714) (not b!4522594) (not b!4522708) (not b!4522621) (not bm!315127) (not b!4522691) (not b!4522422) (not b_lambda!155263) (not b!4522716) tp_is_empty!27941 (not b!4522698) (not b_lambda!155261) (not b!4522354) (not b_lambda!155267) (not d!1393867) (not b!4522650) (not b!4522358) (not b!4522697) (not d!1393777) (not b!4522676) tp_is_empty!27943 (not b!4522362) (not d!1393815) (not b!4522653) (not b!4522695) (not b!4522663) (not b!4522318) (not d!1393743) (not b!4522365) (not b!4522607) (not d!1393843) (not bm!315100) (not b!4522623) (not b!4522689) (not b!4522551) (not b!4522618) (not d!1393863) (not d!1393873) (not d!1393693) (not b!4522361) (not d!1393665) (not d!1393825) (not d!1393851) (not b!4522693) (not d!1393701) (not b!4522317) (not d!1393655) (not d!1393855) (not b!4522690) (not b!4522704) (not b!4522703) (not b!4522718) (not d!1393663) (not d!1393747) (not d!1393753) (not b!4522620) (not bm!315118) (not b!4522414) (not b!4522725) (not b!4522651) (not b!4522713) (not d!1393839) (not d!1393679) (not b!4522654) (not b!4522416) (not b!4522370) (not d!1393703) (not d!1393657) (not b!4522675) (not d!1393795) (not b!4522363) (not d!1393797) (not d!1393877) (not b!4522702) (not b!4522711) (not d!1393861) (not d!1393813) (not b!4522699) (not b!4522712) (not d!1393763) (not b!4522705) (not d!1393807) (not b_lambda!155265) (not b!4522709) (not b!4522498) (not b!4522696) (not b!4522730) (not bm!315116) (not bm!315129) (not d!1393859) (not d!1393871) (not d!1393781) (not bs!857888) (not b!4522367) (not bm!315117) (not d!1393733) (not b!4522502) (not d!1393853) (not d!1393805))
(check-sat)
