; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451076 () Bool)

(assert start!451076)

(declare-fun bs!879289 () Bool)

(declare-fun b!4542246 () Bool)

(assert (= bs!879289 (and b!4542246 start!451076)))

(declare-fun lambda!176636 () Int)

(declare-fun lambda!176635 () Int)

(assert (=> bs!879289 (not (= lambda!176636 lambda!176635))))

(assert (=> b!4542246 true))

(assert (=> b!4542246 true))

(assert (=> b!4542246 true))

(declare-fun b!4542244 () Bool)

(declare-fun res!1893336 () Bool)

(declare-fun e!2830582 () Bool)

(assert (=> b!4542244 (=> res!1893336 e!2830582)))

(declare-datatypes ((K!12155 0))(
  ( (K!12156 (val!17995 Int)) )
))
(declare-datatypes ((V!12401 0))(
  ( (V!12402 (val!17996 Int)) )
))
(declare-datatypes ((tuple2!51258 0))(
  ( (tuple2!51259 (_1!28923 K!12155) (_2!28923 V!12401)) )
))
(declare-datatypes ((List!50896 0))(
  ( (Nil!50772) (Cons!50772 (h!56659 tuple2!51258) (t!357858 List!50896)) )
))
(declare-datatypes ((tuple2!51260 0))(
  ( (tuple2!51261 (_1!28924 (_ BitVec 64)) (_2!28924 List!50896)) )
))
(declare-datatypes ((List!50897 0))(
  ( (Nil!50773) (Cons!50773 (h!56660 tuple2!51260) (t!357859 List!50897)) )
))
(declare-datatypes ((ListLongMap!3051 0))(
  ( (ListLongMap!3052 (toList!4419 List!50897)) )
))
(declare-fun lm!1477 () ListLongMap!3051)

(declare-fun lt!1716985 () tuple2!51260)

(declare-fun contains!13577 (List!50897 tuple2!51260) Bool)

(assert (=> b!4542244 (= res!1893336 (not (contains!13577 (t!357859 (toList!4419 lm!1477)) lt!1716985)))))

(declare-fun b!4542245 () Bool)

(declare-fun e!2830575 () Bool)

(declare-fun e!2830580 () Bool)

(assert (=> b!4542245 (= e!2830575 e!2830580)))

(declare-fun res!1893343 () Bool)

(assert (=> b!4542245 (=> res!1893343 e!2830580)))

(declare-datatypes ((ListMap!3681 0))(
  ( (ListMap!3682 (toList!4420 List!50896)) )
))
(declare-fun lt!1717004 () ListMap!3681)

(declare-fun lt!1716976 () ListMap!3681)

(declare-fun eq!663 (ListMap!3681 ListMap!3681) Bool)

(assert (=> b!4542245 (= res!1893343 (not (eq!663 lt!1717004 lt!1716976)))))

(assert (=> b!4542245 (= lt!1717004 lt!1716976)))

(declare-fun lt!1716982 () ListMap!3681)

(declare-fun key!3287 () K!12155)

(declare-fun lt!1716991 () tuple2!51260)

(declare-fun -!432 (ListMap!3681 K!12155) ListMap!3681)

(declare-fun addToMapMapFromBucket!733 (List!50896 ListMap!3681) ListMap!3681)

(assert (=> b!4542245 (= lt!1716976 (-!432 (addToMapMapFromBucket!733 (_2!28924 lt!1716991) lt!1716982) key!3287))))

(declare-datatypes ((Unit!98898 0))(
  ( (Unit!98899) )
))
(declare-fun lt!1716970 () Unit!98898)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!30 (ListMap!3681 K!12155 List!50896) Unit!98898)

(assert (=> b!4542245 (= lt!1716970 (lemmaAddToMapFromBucketMinusKeyIsCommutative!30 lt!1716982 key!3287 (_2!28924 lt!1716991)))))

(declare-fun e!2830585 () Unit!98898)

(declare-fun Unit!98900 () Unit!98898)

(assert (=> b!4542246 (= e!2830585 Unit!98900)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4542246 (not (= hash!344 (_1!28924 lt!1716991)))))

(declare-datatypes ((Option!11221 0))(
  ( (None!11220) (Some!11220 (v!44930 tuple2!51258)) )
))
(declare-fun lt!1717003 () Option!11221)

(declare-fun getPair!222 (List!50896 K!12155) Option!11221)

(assert (=> b!4542246 (= lt!1717003 (getPair!222 (_2!28924 lt!1716991) key!3287))))

(declare-fun lt!1716987 () Unit!98898)

(declare-fun forallContained!2622 (List!50897 Int tuple2!51260) Unit!98898)

(assert (=> b!4542246 (= lt!1716987 (forallContained!2622 (toList!4419 lm!1477) lambda!176636 (h!56660 (toList!4419 lm!1477))))))

(declare-fun lt!1716983 () Unit!98898)

(declare-fun lambda!176637 () Int)

(declare-fun forallContained!2623 (List!50896 Int tuple2!51258) Unit!98898)

(declare-fun get!16703 (Option!11221) tuple2!51258)

(assert (=> b!4542246 (= lt!1716983 (forallContained!2623 (_2!28924 (h!56660 (toList!4419 lm!1477))) lambda!176637 (tuple2!51259 key!3287 (_2!28923 (get!16703 lt!1717003)))))))

(assert (=> b!4542246 false))

(declare-fun b!4542247 () Bool)

(declare-fun e!2830589 () Bool)

(declare-fun e!2830574 () Bool)

(assert (=> b!4542247 (= e!2830589 e!2830574)))

(declare-fun res!1893349 () Bool)

(assert (=> b!4542247 (=> res!1893349 e!2830574)))

(declare-fun lt!1716996 () ListMap!3681)

(declare-fun lt!1716980 () ListMap!3681)

(assert (=> b!4542247 (= res!1893349 (not (eq!663 lt!1716996 lt!1716980)))))

(declare-fun lt!1716984 () ListMap!3681)

(assert (=> b!4542247 (= lt!1716980 (addToMapMapFromBucket!733 (_2!28924 lt!1716991) lt!1716984))))

(declare-fun lt!1716972 () ListLongMap!3051)

(declare-fun extractMap!1262 (List!50897) ListMap!3681)

(assert (=> b!4542247 (= lt!1716996 (extractMap!1262 (toList!4419 lt!1716972)))))

(declare-fun b!4542248 () Bool)

(declare-fun res!1893337 () Bool)

(assert (=> b!4542248 (=> res!1893337 e!2830589)))

(declare-fun head!9492 (ListLongMap!3051) tuple2!51260)

(assert (=> b!4542248 (= res!1893337 (not (= (head!9492 lt!1716972) lt!1716991)))))

(declare-fun b!4542250 () Bool)

(declare-fun e!2830579 () Bool)

(assert (=> b!4542250 (= e!2830579 e!2830589)))

(declare-fun res!1893357 () Bool)

(assert (=> b!4542250 (=> res!1893357 e!2830589)))

(declare-fun lt!1716978 () ListLongMap!3051)

(assert (=> b!4542250 (= res!1893357 (not (= lt!1716972 lt!1716978)))))

(declare-fun lt!1716981 () tuple2!51260)

(declare-fun +!1618 (ListLongMap!3051 tuple2!51260) ListLongMap!3051)

(assert (=> b!4542250 (= lt!1716978 (+!1618 lm!1477 lt!1716981))))

(declare-fun lt!1716977 () ListLongMap!3051)

(assert (=> b!4542250 (= lt!1716972 (+!1618 lt!1716977 lt!1716991))))

(declare-fun b!4542251 () Bool)

(declare-fun res!1893341 () Bool)

(assert (=> b!4542251 (=> res!1893341 e!2830582)))

(declare-fun lt!1716975 () ListLongMap!3051)

(declare-fun lt!1717001 () List!50896)

(declare-fun apply!11943 (ListLongMap!3051 (_ BitVec 64)) List!50896)

(assert (=> b!4542251 (= res!1893341 (not (= (apply!11943 lt!1716975 hash!344) lt!1717001)))))

(declare-fun b!4542252 () Bool)

(declare-fun e!2830583 () Bool)

(declare-fun e!2830572 () Bool)

(assert (=> b!4542252 (= e!2830583 e!2830572)))

(declare-fun res!1893359 () Bool)

(assert (=> b!4542252 (=> res!1893359 e!2830572)))

(declare-fun noDuplicateKeys!1206 (List!50896) Bool)

(assert (=> b!4542252 (= res!1893359 (not (noDuplicateKeys!1206 (_2!28924 lt!1716991))))))

(declare-fun lt!1716971 () Unit!98898)

(assert (=> b!4542252 (= lt!1716971 (forallContained!2622 (toList!4419 lm!1477) lambda!176635 (h!56660 (toList!4419 lm!1477))))))

(declare-fun tp_is_empty!28103 () Bool)

(declare-fun e!2830590 () Bool)

(declare-fun tp_is_empty!28101 () Bool)

(declare-fun tp!1338727 () Bool)

(declare-fun b!4542253 () Bool)

(assert (=> b!4542253 (= e!2830590 (and tp_is_empty!28101 tp_is_empty!28103 tp!1338727))))

(declare-fun b!4542254 () Bool)

(declare-fun e!2830591 () Bool)

(declare-fun e!2830584 () Bool)

(assert (=> b!4542254 (= e!2830591 e!2830584)))

(declare-fun res!1893356 () Bool)

(assert (=> b!4542254 (=> res!1893356 e!2830584)))

(declare-fun contains!13578 (ListMap!3681 K!12155) Bool)

(assert (=> b!4542254 (= res!1893356 (not (contains!13578 (extractMap!1262 (t!357859 (toList!4419 lm!1477))) key!3287)))))

(assert (=> b!4542254 (contains!13578 lt!1716982 key!3287)))

(assert (=> b!4542254 (= lt!1716982 (extractMap!1262 (toList!4419 lt!1716975)))))

(declare-datatypes ((Hashable!5601 0))(
  ( (HashableExt!5600 (__x!31304 Int)) )
))
(declare-fun hashF!1107 () Hashable!5601)

(declare-fun lt!1717002 () Unit!98898)

(declare-fun lemmaListContainsThenExtractedMapContains!176 (ListLongMap!3051 K!12155 Hashable!5601) Unit!98898)

(assert (=> b!4542254 (= lt!1717002 (lemmaListContainsThenExtractedMapContains!176 lt!1716975 key!3287 hashF!1107))))

(declare-fun b!4542255 () Bool)

(assert (=> b!4542255 (= e!2830572 e!2830575)))

(declare-fun res!1893347 () Bool)

(assert (=> b!4542255 (=> res!1893347 e!2830575)))

(declare-fun lt!1716992 () Bool)

(assert (=> b!4542255 (= res!1893347 lt!1716992)))

(declare-fun lt!1716994 () Unit!98898)

(assert (=> b!4542255 (= lt!1716994 e!2830585)))

(declare-fun c!775832 () Bool)

(assert (=> b!4542255 (= c!775832 lt!1716992)))

(declare-fun containsKey!1894 (List!50896 K!12155) Bool)

(assert (=> b!4542255 (= lt!1716992 (containsKey!1894 (_2!28924 lt!1716991) key!3287))))

(declare-fun b!4542256 () Bool)

(declare-fun Unit!98901 () Unit!98898)

(assert (=> b!4542256 (= e!2830585 Unit!98901)))

(declare-fun b!4542257 () Bool)

(declare-fun e!2830586 () Bool)

(assert (=> b!4542257 (= e!2830580 e!2830586)))

(declare-fun res!1893360 () Bool)

(assert (=> b!4542257 (=> res!1893360 e!2830586)))

(declare-fun lt!1716995 () ListMap!3681)

(assert (=> b!4542257 (= res!1893360 (not (eq!663 lt!1717004 lt!1716995)))))

(declare-fun lt!1717000 () ListMap!3681)

(assert (=> b!4542257 (= lt!1716995 (-!432 lt!1717000 key!3287))))

(declare-fun b!4542258 () Bool)

(declare-fun res!1893345 () Bool)

(assert (=> b!4542258 (=> res!1893345 e!2830579)))

(assert (=> b!4542258 (= res!1893345 (bvsge (_1!28924 lt!1716991) hash!344))))

(declare-fun b!4542259 () Bool)

(declare-fun res!1893338 () Bool)

(assert (=> b!4542259 (=> res!1893338 e!2830586)))

(declare-fun lt!1716998 () ListMap!3681)

(assert (=> b!4542259 (= res!1893338 (not (eq!663 lt!1716996 (-!432 lt!1716998 key!3287))))))

(declare-fun b!4542260 () Bool)

(declare-fun res!1893346 () Bool)

(declare-fun e!2830588 () Bool)

(assert (=> b!4542260 (=> (not res!1893346) (not e!2830588))))

(declare-fun newBucket!178 () List!50896)

(declare-fun allKeysSameHash!1060 (List!50896 (_ BitVec 64) Hashable!5601) Bool)

(assert (=> b!4542260 (= res!1893346 (allKeysSameHash!1060 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4542261 () Bool)

(assert (=> b!4542261 (= e!2830574 e!2830583)))

(declare-fun res!1893355 () Bool)

(assert (=> b!4542261 (=> res!1893355 e!2830583)))

(assert (=> b!4542261 (= res!1893355 (not (eq!663 lt!1716996 lt!1717004)))))

(assert (=> b!4542261 (eq!663 lt!1716980 lt!1717004)))

(declare-fun lt!1716974 () ListMap!3681)

(assert (=> b!4542261 (= lt!1717004 (addToMapMapFromBucket!733 (_2!28924 lt!1716991) lt!1716974))))

(declare-fun lt!1716999 () Unit!98898)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!82 (ListMap!3681 ListMap!3681 List!50896) Unit!98898)

(assert (=> b!4542261 (= lt!1716999 (lemmaAddToMapFromBucketPreservesEquivalence!82 lt!1716984 lt!1716974 (_2!28924 lt!1716991)))))

(declare-fun b!4542262 () Bool)

(declare-fun res!1893352 () Bool)

(declare-fun e!2830587 () Bool)

(assert (=> b!4542262 (=> (not res!1893352) (not e!2830587))))

(declare-fun allKeysSameHashInMap!1313 (ListLongMap!3051 Hashable!5601) Bool)

(assert (=> b!4542262 (= res!1893352 (allKeysSameHashInMap!1313 lm!1477 hashF!1107))))

(declare-fun b!4542263 () Bool)

(declare-fun res!1893342 () Bool)

(declare-fun e!2830578 () Bool)

(assert (=> b!4542263 (=> res!1893342 e!2830578)))

(assert (=> b!4542263 (= res!1893342 (not (noDuplicateKeys!1206 newBucket!178)))))

(declare-fun b!4542264 () Bool)

(declare-fun res!1893348 () Bool)

(assert (=> b!4542264 (=> res!1893348 e!2830579)))

(assert (=> b!4542264 (= res!1893348 (not (eq!663 lt!1717000 lt!1716998)))))

(declare-fun b!4542265 () Bool)

(assert (=> b!4542265 (= e!2830578 e!2830582)))

(declare-fun res!1893344 () Bool)

(assert (=> b!4542265 (=> res!1893344 e!2830582)))

(declare-fun contains!13579 (ListLongMap!3051 (_ BitVec 64)) Bool)

(assert (=> b!4542265 (= res!1893344 (not (contains!13579 lt!1716975 hash!344)))))

(declare-fun tail!7814 (ListLongMap!3051) ListLongMap!3051)

(assert (=> b!4542265 (= lt!1716975 (tail!7814 lm!1477))))

(declare-fun b!4542266 () Bool)

(declare-fun forall!10359 (List!50897 Int) Bool)

(assert (=> b!4542266 (= e!2830586 (forall!10359 (toList!4419 lm!1477) lambda!176635))))

(declare-fun lt!1716968 () ListMap!3681)

(assert (=> b!4542266 (= lt!1716968 (extractMap!1262 (toList!4419 lt!1716978)))))

(declare-fun b!4542267 () Bool)

(declare-fun e!2830581 () Unit!98898)

(declare-fun Unit!98902 () Unit!98898)

(assert (=> b!4542267 (= e!2830581 Unit!98902)))

(declare-fun b!4542268 () Bool)

(declare-fun e!2830573 () Bool)

(declare-fun tp!1338726 () Bool)

(assert (=> b!4542268 (= e!2830573 tp!1338726)))

(declare-fun b!4542269 () Bool)

(declare-fun e!2830577 () Bool)

(assert (=> b!4542269 (= e!2830577 e!2830588)))

(declare-fun res!1893351 () Bool)

(assert (=> b!4542269 (=> (not res!1893351) (not e!2830588))))

(declare-fun lt!1716993 () (_ BitVec 64))

(assert (=> b!4542269 (= res!1893351 (= lt!1716993 hash!344))))

(declare-fun hash!2937 (Hashable!5601 K!12155) (_ BitVec 64))

(assert (=> b!4542269 (= lt!1716993 (hash!2937 hashF!1107 key!3287))))

(declare-fun b!4542249 () Bool)

(declare-fun e!2830576 () Bool)

(assert (=> b!4542249 (= e!2830582 e!2830576)))

(declare-fun res!1893354 () Bool)

(assert (=> b!4542249 (=> res!1893354 e!2830576)))

(declare-fun lt!1716989 () Bool)

(assert (=> b!4542249 (= res!1893354 lt!1716989)))

(declare-fun lt!1716990 () Unit!98898)

(assert (=> b!4542249 (= lt!1716990 e!2830581)))

(declare-fun c!775833 () Bool)

(assert (=> b!4542249 (= c!775833 lt!1716989)))

(assert (=> b!4542249 (= lt!1716989 (not (containsKey!1894 lt!1717001 key!3287)))))

(declare-fun res!1893340 () Bool)

(assert (=> start!451076 (=> (not res!1893340) (not e!2830587))))

(assert (=> start!451076 (= res!1893340 (forall!10359 (toList!4419 lm!1477) lambda!176635))))

(assert (=> start!451076 e!2830587))

(assert (=> start!451076 true))

(declare-fun inv!66339 (ListLongMap!3051) Bool)

(assert (=> start!451076 (and (inv!66339 lm!1477) e!2830573)))

(assert (=> start!451076 tp_is_empty!28101))

(assert (=> start!451076 e!2830590))

(declare-fun b!4542270 () Bool)

(assert (=> b!4542270 (= e!2830587 e!2830577)))

(declare-fun res!1893358 () Bool)

(assert (=> b!4542270 (=> (not res!1893358) (not e!2830577))))

(assert (=> b!4542270 (= res!1893358 (contains!13578 lt!1717000 key!3287))))

(assert (=> b!4542270 (= lt!1717000 (extractMap!1262 (toList!4419 lm!1477)))))

(declare-fun b!4542271 () Bool)

(assert (=> b!4542271 (= e!2830588 (not e!2830578))))

(declare-fun res!1893353 () Bool)

(assert (=> b!4542271 (=> res!1893353 e!2830578)))

(declare-fun removePairForKey!833 (List!50896 K!12155) List!50896)

(assert (=> b!4542271 (= res!1893353 (not (= newBucket!178 (removePairForKey!833 lt!1717001 key!3287))))))

(declare-fun lt!1716973 () Unit!98898)

(assert (=> b!4542271 (= lt!1716973 (forallContained!2622 (toList!4419 lm!1477) lambda!176635 lt!1716985))))

(assert (=> b!4542271 (contains!13577 (toList!4419 lm!1477) lt!1716985)))

(assert (=> b!4542271 (= lt!1716985 (tuple2!51261 hash!344 lt!1717001))))

(declare-fun lt!1716997 () Unit!98898)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!718 (List!50897 (_ BitVec 64) List!50896) Unit!98898)

(assert (=> b!4542271 (= lt!1716997 (lemmaGetValueByKeyImpliesContainsTuple!718 (toList!4419 lm!1477) hash!344 lt!1717001))))

(assert (=> b!4542271 (= lt!1717001 (apply!11943 lm!1477 hash!344))))

(assert (=> b!4542271 (contains!13579 lm!1477 lt!1716993)))

(declare-fun lt!1716988 () Unit!98898)

(declare-fun lemmaInGenMapThenLongMapContainsHash!280 (ListLongMap!3051 K!12155 Hashable!5601) Unit!98898)

(assert (=> b!4542271 (= lt!1716988 (lemmaInGenMapThenLongMapContainsHash!280 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4542272 () Bool)

(declare-fun res!1893335 () Bool)

(assert (=> b!4542272 (=> res!1893335 e!2830586)))

(assert (=> b!4542272 (= res!1893335 (not (eq!663 lt!1716996 lt!1716995)))))

(declare-fun b!4542273 () Bool)

(assert (=> b!4542273 (= e!2830584 e!2830579)))

(declare-fun res!1893350 () Bool)

(assert (=> b!4542273 (=> res!1893350 e!2830579)))

(assert (=> b!4542273 (= res!1893350 (not (eq!663 lt!1716998 lt!1717000)))))

(assert (=> b!4542273 (= lt!1716998 (extractMap!1262 (toList!4419 (+!1618 lt!1716975 lt!1716991))))))

(assert (=> b!4542273 (= lt!1716991 (head!9492 lm!1477))))

(assert (=> b!4542273 (eq!663 lt!1716984 lt!1716974)))

(assert (=> b!4542273 (= lt!1716974 (-!432 lt!1716982 key!3287))))

(assert (=> b!4542273 (= lt!1716984 (extractMap!1262 (toList!4419 lt!1716977)))))

(assert (=> b!4542273 (= lt!1716977 (+!1618 lt!1716975 lt!1716981))))

(assert (=> b!4542273 (= lt!1716981 (tuple2!51261 hash!344 newBucket!178))))

(declare-fun lt!1716979 () Unit!98898)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!191 (ListLongMap!3051 (_ BitVec 64) List!50896 K!12155 Hashable!5601) Unit!98898)

(assert (=> b!4542273 (= lt!1716979 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!191 lt!1716975 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4542274 () Bool)

(declare-fun Unit!98903 () Unit!98898)

(assert (=> b!4542274 (= e!2830581 Unit!98903)))

(declare-fun lt!1716986 () Unit!98898)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!194 (ListLongMap!3051 K!12155 Hashable!5601) Unit!98898)

(assert (=> b!4542274 (= lt!1716986 (lemmaNotInItsHashBucketThenNotInMap!194 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4542274 false))

(declare-fun b!4542275 () Bool)

(declare-fun res!1893334 () Bool)

(assert (=> b!4542275 (=> res!1893334 e!2830578)))

(get-info :version)

(assert (=> b!4542275 (= res!1893334 (or ((_ is Nil!50773) (toList!4419 lm!1477)) (= (_1!28924 (h!56660 (toList!4419 lm!1477))) hash!344)))))

(declare-fun b!4542276 () Bool)

(assert (=> b!4542276 (= e!2830576 e!2830591)))

(declare-fun res!1893339 () Bool)

(assert (=> b!4542276 (=> res!1893339 e!2830591)))

(declare-fun containsKeyBiggerList!186 (List!50897 K!12155) Bool)

(assert (=> b!4542276 (= res!1893339 (not (containsKeyBiggerList!186 (t!357859 (toList!4419 lm!1477)) key!3287)))))

(assert (=> b!4542276 (containsKeyBiggerList!186 (toList!4419 lt!1716975) key!3287)))

(declare-fun lt!1716969 () Unit!98898)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!122 (ListLongMap!3051 K!12155 Hashable!5601) Unit!98898)

(assert (=> b!4542276 (= lt!1716969 (lemmaInLongMapThenContainsKeyBiggerList!122 lt!1716975 key!3287 hashF!1107))))

(assert (= (and start!451076 res!1893340) b!4542262))

(assert (= (and b!4542262 res!1893352) b!4542270))

(assert (= (and b!4542270 res!1893358) b!4542269))

(assert (= (and b!4542269 res!1893351) b!4542260))

(assert (= (and b!4542260 res!1893346) b!4542271))

(assert (= (and b!4542271 (not res!1893353)) b!4542263))

(assert (= (and b!4542263 (not res!1893342)) b!4542275))

(assert (= (and b!4542275 (not res!1893334)) b!4542265))

(assert (= (and b!4542265 (not res!1893344)) b!4542251))

(assert (= (and b!4542251 (not res!1893341)) b!4542244))

(assert (= (and b!4542244 (not res!1893336)) b!4542249))

(assert (= (and b!4542249 c!775833) b!4542274))

(assert (= (and b!4542249 (not c!775833)) b!4542267))

(assert (= (and b!4542249 (not res!1893354)) b!4542276))

(assert (= (and b!4542276 (not res!1893339)) b!4542254))

(assert (= (and b!4542254 (not res!1893356)) b!4542273))

(assert (= (and b!4542273 (not res!1893350)) b!4542264))

(assert (= (and b!4542264 (not res!1893348)) b!4542258))

(assert (= (and b!4542258 (not res!1893345)) b!4542250))

(assert (= (and b!4542250 (not res!1893357)) b!4542248))

(assert (= (and b!4542248 (not res!1893337)) b!4542247))

(assert (= (and b!4542247 (not res!1893349)) b!4542261))

(assert (= (and b!4542261 (not res!1893355)) b!4542252))

(assert (= (and b!4542252 (not res!1893359)) b!4542255))

(assert (= (and b!4542255 c!775832) b!4542246))

(assert (= (and b!4542255 (not c!775832)) b!4542256))

(assert (= (and b!4542255 (not res!1893347)) b!4542245))

(assert (= (and b!4542245 (not res!1893343)) b!4542257))

(assert (= (and b!4542257 (not res!1893360)) b!4542272))

(assert (= (and b!4542272 (not res!1893335)) b!4542259))

(assert (= (and b!4542259 (not res!1893338)) b!4542266))

(assert (= start!451076 b!4542268))

(assert (= (and start!451076 ((_ is Cons!50772) newBucket!178)) b!4542253))

(declare-fun m!5310563 () Bool)

(assert (=> b!4542246 m!5310563))

(declare-fun m!5310565 () Bool)

(assert (=> b!4542246 m!5310565))

(declare-fun m!5310567 () Bool)

(assert (=> b!4542246 m!5310567))

(declare-fun m!5310569 () Bool)

(assert (=> b!4542246 m!5310569))

(declare-fun m!5310571 () Bool)

(assert (=> start!451076 m!5310571))

(declare-fun m!5310573 () Bool)

(assert (=> start!451076 m!5310573))

(declare-fun m!5310575 () Bool)

(assert (=> b!4542259 m!5310575))

(assert (=> b!4542259 m!5310575))

(declare-fun m!5310577 () Bool)

(assert (=> b!4542259 m!5310577))

(declare-fun m!5310579 () Bool)

(assert (=> b!4542250 m!5310579))

(declare-fun m!5310581 () Bool)

(assert (=> b!4542250 m!5310581))

(assert (=> b!4542266 m!5310571))

(declare-fun m!5310583 () Bool)

(assert (=> b!4542266 m!5310583))

(declare-fun m!5310585 () Bool)

(assert (=> b!4542244 m!5310585))

(declare-fun m!5310587 () Bool)

(assert (=> b!4542261 m!5310587))

(declare-fun m!5310589 () Bool)

(assert (=> b!4542261 m!5310589))

(declare-fun m!5310591 () Bool)

(assert (=> b!4542261 m!5310591))

(declare-fun m!5310593 () Bool)

(assert (=> b!4542261 m!5310593))

(declare-fun m!5310595 () Bool)

(assert (=> b!4542264 m!5310595))

(declare-fun m!5310597 () Bool)

(assert (=> b!4542269 m!5310597))

(declare-fun m!5310599 () Bool)

(assert (=> b!4542274 m!5310599))

(declare-fun m!5310601 () Bool)

(assert (=> b!4542263 m!5310601))

(declare-fun m!5310603 () Bool)

(assert (=> b!4542272 m!5310603))

(declare-fun m!5310605 () Bool)

(assert (=> b!4542271 m!5310605))

(declare-fun m!5310607 () Bool)

(assert (=> b!4542271 m!5310607))

(declare-fun m!5310609 () Bool)

(assert (=> b!4542271 m!5310609))

(declare-fun m!5310611 () Bool)

(assert (=> b!4542271 m!5310611))

(declare-fun m!5310613 () Bool)

(assert (=> b!4542271 m!5310613))

(declare-fun m!5310615 () Bool)

(assert (=> b!4542271 m!5310615))

(declare-fun m!5310617 () Bool)

(assert (=> b!4542271 m!5310617))

(declare-fun m!5310619 () Bool)

(assert (=> b!4542273 m!5310619))

(declare-fun m!5310621 () Bool)

(assert (=> b!4542273 m!5310621))

(declare-fun m!5310623 () Bool)

(assert (=> b!4542273 m!5310623))

(declare-fun m!5310625 () Bool)

(assert (=> b!4542273 m!5310625))

(declare-fun m!5310627 () Bool)

(assert (=> b!4542273 m!5310627))

(declare-fun m!5310629 () Bool)

(assert (=> b!4542273 m!5310629))

(declare-fun m!5310631 () Bool)

(assert (=> b!4542273 m!5310631))

(declare-fun m!5310633 () Bool)

(assert (=> b!4542273 m!5310633))

(declare-fun m!5310635 () Bool)

(assert (=> b!4542273 m!5310635))

(declare-fun m!5310637 () Bool)

(assert (=> b!4542247 m!5310637))

(declare-fun m!5310639 () Bool)

(assert (=> b!4542247 m!5310639))

(declare-fun m!5310641 () Bool)

(assert (=> b!4542247 m!5310641))

(declare-fun m!5310643 () Bool)

(assert (=> b!4542265 m!5310643))

(declare-fun m!5310645 () Bool)

(assert (=> b!4542265 m!5310645))

(declare-fun m!5310647 () Bool)

(assert (=> b!4542252 m!5310647))

(declare-fun m!5310649 () Bool)

(assert (=> b!4542252 m!5310649))

(declare-fun m!5310651 () Bool)

(assert (=> b!4542251 m!5310651))

(declare-fun m!5310653 () Bool)

(assert (=> b!4542245 m!5310653))

(declare-fun m!5310655 () Bool)

(assert (=> b!4542245 m!5310655))

(assert (=> b!4542245 m!5310655))

(declare-fun m!5310657 () Bool)

(assert (=> b!4542245 m!5310657))

(declare-fun m!5310659 () Bool)

(assert (=> b!4542245 m!5310659))

(declare-fun m!5310661 () Bool)

(assert (=> b!4542248 m!5310661))

(declare-fun m!5310663 () Bool)

(assert (=> b!4542255 m!5310663))

(declare-fun m!5310665 () Bool)

(assert (=> b!4542270 m!5310665))

(declare-fun m!5310667 () Bool)

(assert (=> b!4542270 m!5310667))

(declare-fun m!5310669 () Bool)

(assert (=> b!4542257 m!5310669))

(declare-fun m!5310671 () Bool)

(assert (=> b!4542257 m!5310671))

(declare-fun m!5310673 () Bool)

(assert (=> b!4542276 m!5310673))

(declare-fun m!5310675 () Bool)

(assert (=> b!4542276 m!5310675))

(declare-fun m!5310677 () Bool)

(assert (=> b!4542276 m!5310677))

(declare-fun m!5310679 () Bool)

(assert (=> b!4542249 m!5310679))

(declare-fun m!5310681 () Bool)

(assert (=> b!4542260 m!5310681))

(declare-fun m!5310683 () Bool)

(assert (=> b!4542262 m!5310683))

(declare-fun m!5310685 () Bool)

(assert (=> b!4542254 m!5310685))

(declare-fun m!5310687 () Bool)

(assert (=> b!4542254 m!5310687))

(declare-fun m!5310689 () Bool)

(assert (=> b!4542254 m!5310689))

(declare-fun m!5310691 () Bool)

(assert (=> b!4542254 m!5310691))

(assert (=> b!4542254 m!5310689))

(declare-fun m!5310693 () Bool)

(assert (=> b!4542254 m!5310693))

(check-sat (not b!4542246) (not b!4542272) (not b!4542270) (not b!4542261) (not b!4542274) (not b!4542257) (not b!4542251) (not b!4542254) (not b!4542250) (not b!4542245) (not b!4542269) (not b!4542263) (not b!4542247) (not b!4542248) (not b!4542276) (not b!4542268) (not b!4542249) tp_is_empty!28103 (not b!4542255) tp_is_empty!28101 (not start!451076) (not b!4542264) (not b!4542259) (not b!4542265) (not b!4542271) (not b!4542262) (not b!4542253) (not b!4542244) (not b!4542266) (not b!4542273) (not b!4542252) (not b!4542260))
(check-sat)
