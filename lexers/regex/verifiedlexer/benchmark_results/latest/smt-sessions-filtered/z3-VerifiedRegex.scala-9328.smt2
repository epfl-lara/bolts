; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496414 () Bool)

(assert start!496414)

(declare-fun b!4805273 () Bool)

(declare-fun e!3000963 () Bool)

(declare-fun tp!1358528 () Bool)

(assert (=> b!4805273 (= e!3000963 tp!1358528)))

(declare-fun e!3000962 () Bool)

(declare-fun lt!1959401 () (_ BitVec 64))

(declare-datatypes ((K!15929 0))(
  ( (K!15930 (val!21049 Int)) )
))
(declare-fun key!5896 () K!15929)

(declare-fun b!4805274 () Bool)

(declare-datatypes ((V!16175 0))(
  ( (V!16176 (val!21050 Int)) )
))
(declare-datatypes ((tuple2!57072 0))(
  ( (tuple2!57073 (_1!31830 K!15929) (_2!31830 V!16175)) )
))
(declare-datatypes ((List!54486 0))(
  ( (Nil!54362) (Cons!54362 (h!60794 tuple2!57072) (t!361936 List!54486)) )
))
(declare-datatypes ((tuple2!57074 0))(
  ( (tuple2!57075 (_1!31831 (_ BitVec 64)) (_2!31831 List!54486)) )
))
(declare-datatypes ((List!54487 0))(
  ( (Nil!54363) (Cons!54363 (h!60795 tuple2!57074) (t!361937 List!54487)) )
))
(declare-datatypes ((ListLongMap!5453 0))(
  ( (ListLongMap!5454 (toList!7031 List!54487)) )
))
(declare-fun lm!2473 () ListLongMap!5453)

(declare-datatypes ((Option!13220 0))(
  ( (None!13219) (Some!13219 (v!48560 tuple2!57072)) )
))
(declare-fun isDefined!10361 (Option!13220) Bool)

(declare-fun getPair!948 (List!54486 K!15929) Option!13220)

(declare-fun apply!13056 (ListLongMap!5453 (_ BitVec 64)) List!54486)

(assert (=> b!4805274 (= e!3000962 (isDefined!10361 (getPair!948 (apply!13056 lm!2473 lt!1959401) key!5896)))))

(declare-fun b!4805275 () Bool)

(declare-fun e!3000961 () Bool)

(declare-fun e!3000964 () Bool)

(assert (=> b!4805275 (= e!3000961 e!3000964)))

(declare-fun res!2044333 () Bool)

(assert (=> b!4805275 (=> (not res!2044333) (not e!3000964))))

(declare-datatypes ((ListMap!6503 0))(
  ( (ListMap!6504 (toList!7032 List!54486)) )
))
(declare-fun lt!1959404 () ListMap!6503)

(declare-fun contains!18026 (ListMap!6503 K!15929) Bool)

(assert (=> b!4805275 (= res!2044333 (contains!18026 lt!1959404 key!5896))))

(declare-fun extractMap!2503 (List!54487) ListMap!6503)

(assert (=> b!4805275 (= lt!1959404 (extractMap!2503 (toList!7031 lm!2473)))))

(declare-fun e!3000959 () Bool)

(declare-fun b!4805276 () Bool)

(declare-fun value!3111 () V!16175)

(declare-fun apply!13057 (ListMap!6503 K!15929) V!16175)

(assert (=> b!4805276 (= e!3000959 (= (apply!13057 lt!1959404 key!5896) value!3111))))

(declare-fun lt!1959403 () ListMap!6503)

(assert (=> b!4805276 (= (apply!13057 lt!1959403 key!5896) value!3111)))

(declare-datatypes ((Unit!141197 0))(
  ( (Unit!141198) )
))
(declare-fun lt!1959400 () Unit!141197)

(declare-fun lt!1959411 () ListMap!6503)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!12 (List!54486 ListMap!6503 K!15929 V!16175) Unit!141197)

(assert (=> b!4805276 (= lt!1959400 (lemmaAddToMapFromBucketMaintainsMapping!12 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411 key!5896 value!3111))))

(declare-fun b!4805277 () Bool)

(declare-fun e!3000958 () Unit!141197)

(declare-fun lt!1959399 () Unit!141197)

(assert (=> b!4805277 (= e!3000958 lt!1959399)))

(declare-datatypes ((Hashable!6976 0))(
  ( (HashableExt!6975 (__x!32999 Int)) )
))
(declare-fun hashF!1559 () Hashable!6976)

(declare-fun lt!1959405 () ListLongMap!5453)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!74 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> b!4805277 (= lt!1959399 (lemmaHashNotInLongMapThenNotInGenerated!74 lt!1959405 key!5896 hashF!1559))))

(assert (=> b!4805277 (not (contains!18026 (extractMap!2503 (toList!7031 lt!1959405)) key!5896))))

(declare-fun res!2044336 () Bool)

(assert (=> start!496414 (=> (not res!2044336) (not e!3000961))))

(declare-fun lambda!233313 () Int)

(declare-fun forall!12361 (List!54487 Int) Bool)

(assert (=> start!496414 (= res!2044336 (forall!12361 (toList!7031 lm!2473) lambda!233313))))

(assert (=> start!496414 e!3000961))

(declare-fun inv!69955 (ListLongMap!5453) Bool)

(assert (=> start!496414 (and (inv!69955 lm!2473) e!3000963)))

(assert (=> start!496414 true))

(declare-fun tp_is_empty!33765 () Bool)

(assert (=> start!496414 tp_is_empty!33765))

(declare-fun tp_is_empty!33767 () Bool)

(assert (=> start!496414 tp_is_empty!33767))

(declare-fun b!4805278 () Bool)

(declare-fun e!3000960 () Bool)

(assert (=> b!4805278 (= e!3000960 e!3000959)))

(declare-fun res!2044332 () Bool)

(assert (=> b!4805278 (=> res!2044332 e!3000959)))

(assert (=> b!4805278 (= res!2044332 (not (contains!18026 lt!1959403 key!5896)))))

(declare-fun addToMapMapFromBucket!1743 (List!54486 ListMap!6503) ListMap!6503)

(assert (=> b!4805278 (= lt!1959403 (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411))))

(declare-fun b!4805279 () Bool)

(declare-fun res!2044331 () Bool)

(assert (=> b!4805279 (=> (not res!2044331) (not e!3000961))))

(declare-fun allKeysSameHashInMap!2381 (ListLongMap!5453 Hashable!6976) Bool)

(assert (=> b!4805279 (= res!2044331 (allKeysSameHashInMap!2381 lm!2473 hashF!1559))))

(declare-fun b!4805280 () Bool)

(declare-fun res!2044335 () Bool)

(assert (=> b!4805280 (=> res!2044335 e!3000959)))

(assert (=> b!4805280 (= res!2044335 (not (= (apply!13057 lt!1959411 key!5896) value!3111)))))

(declare-fun b!4805281 () Bool)

(declare-fun e!3000957 () Bool)

(assert (=> b!4805281 (= e!3000957 e!3000960)))

(declare-fun res!2044328 () Bool)

(assert (=> b!4805281 (=> res!2044328 e!3000960)))

(declare-fun noDuplicateKeys!2374 (List!54486) Bool)

(assert (=> b!4805281 (= res!2044328 (not (noDuplicateKeys!2374 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(assert (=> b!4805281 (= lt!1959411 (extractMap!2503 (t!361937 (toList!7031 lm!2473))))))

(declare-fun lt!1959408 () ListMap!6503)

(assert (=> b!4805281 (= (apply!13057 lt!1959408 key!5896) value!3111)))

(declare-fun lt!1959402 () Unit!141197)

(declare-fun lemmaExtractMapPreservesMapping!48 (ListLongMap!5453 K!15929 V!16175 Hashable!6976) Unit!141197)

(assert (=> b!4805281 (= lt!1959402 (lemmaExtractMapPreservesMapping!48 lt!1959405 key!5896 value!3111 hashF!1559))))

(assert (=> b!4805281 (contains!18026 lt!1959408 key!5896)))

(assert (=> b!4805281 (= lt!1959408 (extractMap!2503 (toList!7031 lt!1959405)))))

(declare-fun lt!1959409 () Unit!141197)

(declare-fun lemmaListContainsThenExtractedMapContains!726 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> b!4805281 (= lt!1959409 (lemmaListContainsThenExtractedMapContains!726 lt!1959405 key!5896 hashF!1559))))

(declare-fun lt!1959406 () Unit!141197)

(assert (=> b!4805281 (= lt!1959406 e!3000958)))

(declare-fun c!819147 () Bool)

(declare-fun contains!18027 (ListLongMap!5453 (_ BitVec 64)) Bool)

(assert (=> b!4805281 (= c!819147 (not (contains!18027 lt!1959405 lt!1959401)))))

(declare-fun tail!9352 (ListLongMap!5453) ListLongMap!5453)

(assert (=> b!4805281 (= lt!1959405 (tail!9352 lm!2473))))

(declare-fun b!4805282 () Bool)

(declare-fun res!2044334 () Bool)

(assert (=> b!4805282 (=> res!2044334 e!3000957)))

(get-info :version)

(assert (=> b!4805282 (= res!2044334 (not ((_ is Cons!54363) (toList!7031 lm!2473))))))

(declare-fun b!4805283 () Bool)

(declare-fun res!2044338 () Bool)

(assert (=> b!4805283 (=> res!2044338 e!3000957)))

(declare-fun containsKey!4070 (List!54486 K!15929) Bool)

(assert (=> b!4805283 (= res!2044338 (containsKey!4070 (_2!31831 (h!60795 (toList!7031 lm!2473))) key!5896))))

(declare-fun b!4805284 () Bool)

(declare-fun res!2044337 () Bool)

(assert (=> b!4805284 (=> res!2044337 e!3000959)))

(assert (=> b!4805284 (= res!2044337 (not (contains!18026 lt!1959411 key!5896)))))

(declare-fun b!4805285 () Bool)

(declare-fun Unit!141199 () Unit!141197)

(assert (=> b!4805285 (= e!3000958 Unit!141199)))

(declare-fun b!4805286 () Bool)

(assert (=> b!4805286 (= e!3000964 (not e!3000957))))

(declare-fun res!2044330 () Bool)

(assert (=> b!4805286 (=> res!2044330 e!3000957)))

(declare-fun getValue!164 (List!54487 K!15929) V!16175)

(assert (=> b!4805286 (= res!2044330 (not (= (getValue!164 (toList!7031 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!618 (List!54487 K!15929) Bool)

(assert (=> b!4805286 (containsKeyBiggerList!618 (toList!7031 lm!2473) key!5896)))

(declare-fun lt!1959410 () Unit!141197)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!358 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> b!4805286 (= lt!1959410 (lemmaInLongMapThenContainsKeyBiggerList!358 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4805286 e!3000962))

(declare-fun res!2044329 () Bool)

(assert (=> b!4805286 (=> (not res!2044329) (not e!3000962))))

(assert (=> b!4805286 (= res!2044329 (contains!18027 lm!2473 lt!1959401))))

(declare-fun hash!5043 (Hashable!6976 K!15929) (_ BitVec 64))

(assert (=> b!4805286 (= lt!1959401 (hash!5043 hashF!1559 key!5896))))

(declare-fun lt!1959407 () Unit!141197)

(declare-fun lemmaInGenericMapThenInLongMap!380 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> b!4805286 (= lt!1959407 (lemmaInGenericMapThenInLongMap!380 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!496414 res!2044336) b!4805279))

(assert (= (and b!4805279 res!2044331) b!4805275))

(assert (= (and b!4805275 res!2044333) b!4805286))

(assert (= (and b!4805286 res!2044329) b!4805274))

(assert (= (and b!4805286 (not res!2044330)) b!4805282))

(assert (= (and b!4805282 (not res!2044334)) b!4805283))

(assert (= (and b!4805283 (not res!2044338)) b!4805281))

(assert (= (and b!4805281 c!819147) b!4805277))

(assert (= (and b!4805281 (not c!819147)) b!4805285))

(assert (= (and b!4805281 (not res!2044328)) b!4805278))

(assert (= (and b!4805278 (not res!2044332)) b!4805284))

(assert (= (and b!4805284 (not res!2044337)) b!4805280))

(assert (= (and b!4805280 (not res!2044335)) b!4805276))

(assert (= start!496414 b!4805273))

(declare-fun m!5791644 () Bool)

(assert (=> b!4805277 m!5791644))

(declare-fun m!5791646 () Bool)

(assert (=> b!4805277 m!5791646))

(assert (=> b!4805277 m!5791646))

(declare-fun m!5791648 () Bool)

(assert (=> b!4805277 m!5791648))

(declare-fun m!5791650 () Bool)

(assert (=> b!4805276 m!5791650))

(declare-fun m!5791652 () Bool)

(assert (=> b!4805276 m!5791652))

(declare-fun m!5791654 () Bool)

(assert (=> b!4805276 m!5791654))

(declare-fun m!5791656 () Bool)

(assert (=> b!4805278 m!5791656))

(declare-fun m!5791658 () Bool)

(assert (=> b!4805278 m!5791658))

(declare-fun m!5791660 () Bool)

(assert (=> b!4805286 m!5791660))

(declare-fun m!5791662 () Bool)

(assert (=> b!4805286 m!5791662))

(declare-fun m!5791664 () Bool)

(assert (=> b!4805286 m!5791664))

(declare-fun m!5791666 () Bool)

(assert (=> b!4805286 m!5791666))

(declare-fun m!5791668 () Bool)

(assert (=> b!4805286 m!5791668))

(declare-fun m!5791670 () Bool)

(assert (=> b!4805286 m!5791670))

(declare-fun m!5791672 () Bool)

(assert (=> b!4805284 m!5791672))

(declare-fun m!5791674 () Bool)

(assert (=> b!4805280 m!5791674))

(declare-fun m!5791676 () Bool)

(assert (=> start!496414 m!5791676))

(declare-fun m!5791678 () Bool)

(assert (=> start!496414 m!5791678))

(declare-fun m!5791680 () Bool)

(assert (=> b!4805274 m!5791680))

(assert (=> b!4805274 m!5791680))

(declare-fun m!5791682 () Bool)

(assert (=> b!4805274 m!5791682))

(assert (=> b!4805274 m!5791682))

(declare-fun m!5791684 () Bool)

(assert (=> b!4805274 m!5791684))

(declare-fun m!5791686 () Bool)

(assert (=> b!4805281 m!5791686))

(declare-fun m!5791688 () Bool)

(assert (=> b!4805281 m!5791688))

(assert (=> b!4805281 m!5791646))

(declare-fun m!5791690 () Bool)

(assert (=> b!4805281 m!5791690))

(declare-fun m!5791692 () Bool)

(assert (=> b!4805281 m!5791692))

(declare-fun m!5791694 () Bool)

(assert (=> b!4805281 m!5791694))

(declare-fun m!5791696 () Bool)

(assert (=> b!4805281 m!5791696))

(declare-fun m!5791698 () Bool)

(assert (=> b!4805281 m!5791698))

(declare-fun m!5791700 () Bool)

(assert (=> b!4805281 m!5791700))

(declare-fun m!5791702 () Bool)

(assert (=> b!4805279 m!5791702))

(declare-fun m!5791704 () Bool)

(assert (=> b!4805275 m!5791704))

(declare-fun m!5791706 () Bool)

(assert (=> b!4805275 m!5791706))

(declare-fun m!5791708 () Bool)

(assert (=> b!4805283 m!5791708))

(check-sat tp_is_empty!33767 tp_is_empty!33765 (not b!4805276) (not b!4805274) (not b!4805279) (not b!4805275) (not b!4805284) (not b!4805286) (not b!4805283) (not b!4805278) (not start!496414) (not b!4805277) (not b!4805280) (not b!4805273) (not b!4805281))
(check-sat)
(get-model)

(declare-fun b!4805335 () Bool)

(declare-fun e!3001004 () Unit!141197)

(declare-fun lt!1959452 () Unit!141197)

(assert (=> b!4805335 (= e!3001004 lt!1959452)))

(declare-fun lt!1959449 () Unit!141197)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (List!54486 K!15929) Unit!141197)

(assert (=> b!4805335 (= lt!1959449 (lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (toList!7032 lt!1959411) key!5896))))

(declare-datatypes ((Option!13223 0))(
  ( (None!13222) (Some!13222 (v!48563 V!16175)) )
))
(declare-fun isDefined!10364 (Option!13223) Bool)

(declare-fun getValueByKey!2422 (List!54486 K!15929) Option!13223)

(assert (=> b!4805335 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959411) key!5896))))

(declare-fun lt!1959455 () Unit!141197)

(assert (=> b!4805335 (= lt!1959455 lt!1959449)))

(declare-fun lemmaInListThenGetKeysListContains!1107 (List!54486 K!15929) Unit!141197)

(assert (=> b!4805335 (= lt!1959452 (lemmaInListThenGetKeysListContains!1107 (toList!7032 lt!1959411) key!5896))))

(declare-fun call!335563 () Bool)

(assert (=> b!4805335 call!335563))

(declare-fun b!4805336 () Bool)

(assert (=> b!4805336 false))

(declare-fun lt!1959451 () Unit!141197)

(declare-fun lt!1959454 () Unit!141197)

(assert (=> b!4805336 (= lt!1959451 lt!1959454)))

(declare-fun containsKey!4073 (List!54486 K!15929) Bool)

(assert (=> b!4805336 (containsKey!4073 (toList!7032 lt!1959411) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1112 (List!54486 K!15929) Unit!141197)

(assert (=> b!4805336 (= lt!1959454 (lemmaInGetKeysListThenContainsKey!1112 (toList!7032 lt!1959411) key!5896))))

(declare-fun e!3001005 () Unit!141197)

(declare-fun Unit!141208 () Unit!141197)

(assert (=> b!4805336 (= e!3001005 Unit!141208)))

(declare-fun b!4805337 () Bool)

(declare-fun e!3001002 () Bool)

(declare-fun e!3001001 () Bool)

(assert (=> b!4805337 (= e!3001002 e!3001001)))

(declare-fun res!2044365 () Bool)

(assert (=> b!4805337 (=> (not res!2044365) (not e!3001001))))

(assert (=> b!4805337 (= res!2044365 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959411) key!5896)))))

(declare-fun b!4805338 () Bool)

(declare-datatypes ((List!54489 0))(
  ( (Nil!54365) (Cons!54365 (h!60797 K!15929) (t!361939 List!54489)) )
))
(declare-fun e!3001003 () List!54489)

(declare-fun getKeysList!1112 (List!54486) List!54489)

(assert (=> b!4805338 (= e!3001003 (getKeysList!1112 (toList!7032 lt!1959411)))))

(declare-fun d!1539507 () Bool)

(assert (=> d!1539507 e!3001002))

(declare-fun res!2044363 () Bool)

(assert (=> d!1539507 (=> res!2044363 e!3001002)))

(declare-fun e!3001006 () Bool)

(assert (=> d!1539507 (= res!2044363 e!3001006)))

(declare-fun res!2044364 () Bool)

(assert (=> d!1539507 (=> (not res!2044364) (not e!3001006))))

(declare-fun lt!1959453 () Bool)

(assert (=> d!1539507 (= res!2044364 (not lt!1959453))))

(declare-fun lt!1959456 () Bool)

(assert (=> d!1539507 (= lt!1959453 lt!1959456)))

(declare-fun lt!1959450 () Unit!141197)

(assert (=> d!1539507 (= lt!1959450 e!3001004)))

(declare-fun c!819162 () Bool)

(assert (=> d!1539507 (= c!819162 lt!1959456)))

(assert (=> d!1539507 (= lt!1959456 (containsKey!4073 (toList!7032 lt!1959411) key!5896))))

(assert (=> d!1539507 (= (contains!18026 lt!1959411 key!5896) lt!1959453)))

(declare-fun bm!335558 () Bool)

(declare-fun contains!18029 (List!54489 K!15929) Bool)

(assert (=> bm!335558 (= call!335563 (contains!18029 e!3001003 key!5896))))

(declare-fun c!819160 () Bool)

(assert (=> bm!335558 (= c!819160 c!819162)))

(declare-fun b!4805339 () Bool)

(declare-fun keys!19887 (ListMap!6503) List!54489)

(assert (=> b!4805339 (= e!3001003 (keys!19887 lt!1959411))))

(declare-fun b!4805340 () Bool)

(assert (=> b!4805340 (= e!3001004 e!3001005)))

(declare-fun c!819161 () Bool)

(assert (=> b!4805340 (= c!819161 call!335563)))

(declare-fun b!4805341 () Bool)

(assert (=> b!4805341 (= e!3001001 (contains!18029 (keys!19887 lt!1959411) key!5896))))

(declare-fun b!4805342 () Bool)

(declare-fun Unit!141209 () Unit!141197)

(assert (=> b!4805342 (= e!3001005 Unit!141209)))

(declare-fun b!4805343 () Bool)

(assert (=> b!4805343 (= e!3001006 (not (contains!18029 (keys!19887 lt!1959411) key!5896)))))

(assert (= (and d!1539507 c!819162) b!4805335))

(assert (= (and d!1539507 (not c!819162)) b!4805340))

(assert (= (and b!4805340 c!819161) b!4805336))

(assert (= (and b!4805340 (not c!819161)) b!4805342))

(assert (= (or b!4805335 b!4805340) bm!335558))

(assert (= (and bm!335558 c!819160) b!4805338))

(assert (= (and bm!335558 (not c!819160)) b!4805339))

(assert (= (and d!1539507 res!2044364) b!4805343))

(assert (= (and d!1539507 (not res!2044363)) b!4805337))

(assert (= (and b!4805337 res!2044365) b!4805341))

(declare-fun m!5791748 () Bool)

(assert (=> d!1539507 m!5791748))

(declare-fun m!5791750 () Bool)

(assert (=> b!4805343 m!5791750))

(assert (=> b!4805343 m!5791750))

(declare-fun m!5791752 () Bool)

(assert (=> b!4805343 m!5791752))

(declare-fun m!5791754 () Bool)

(assert (=> bm!335558 m!5791754))

(assert (=> b!4805336 m!5791748))

(declare-fun m!5791756 () Bool)

(assert (=> b!4805336 m!5791756))

(declare-fun m!5791758 () Bool)

(assert (=> b!4805338 m!5791758))

(assert (=> b!4805339 m!5791750))

(assert (=> b!4805341 m!5791750))

(assert (=> b!4805341 m!5791750))

(assert (=> b!4805341 m!5791752))

(declare-fun m!5791760 () Bool)

(assert (=> b!4805335 m!5791760))

(declare-fun m!5791762 () Bool)

(assert (=> b!4805335 m!5791762))

(assert (=> b!4805335 m!5791762))

(declare-fun m!5791764 () Bool)

(assert (=> b!4805335 m!5791764))

(declare-fun m!5791766 () Bool)

(assert (=> b!4805335 m!5791766))

(assert (=> b!4805337 m!5791762))

(assert (=> b!4805337 m!5791762))

(assert (=> b!4805337 m!5791764))

(assert (=> b!4805284 d!1539507))

(declare-fun d!1539523 () Bool)

(declare-fun res!2044376 () Bool)

(declare-fun e!3001023 () Bool)

(assert (=> d!1539523 (=> res!2044376 e!3001023)))

(assert (=> d!1539523 (= res!2044376 (and ((_ is Cons!54362) (_2!31831 (h!60795 (toList!7031 lm!2473)))) (= (_1!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))) key!5896)))))

(assert (=> d!1539523 (= (containsKey!4070 (_2!31831 (h!60795 (toList!7031 lm!2473))) key!5896) e!3001023)))

(declare-fun b!4805366 () Bool)

(declare-fun e!3001024 () Bool)

(assert (=> b!4805366 (= e!3001023 e!3001024)))

(declare-fun res!2044377 () Bool)

(assert (=> b!4805366 (=> (not res!2044377) (not e!3001024))))

(assert (=> b!4805366 (= res!2044377 ((_ is Cons!54362) (_2!31831 (h!60795 (toList!7031 lm!2473)))))))

(declare-fun b!4805367 () Bool)

(assert (=> b!4805367 (= e!3001024 (containsKey!4070 (t!361936 (_2!31831 (h!60795 (toList!7031 lm!2473)))) key!5896))))

(assert (= (and d!1539523 (not res!2044376)) b!4805366))

(assert (= (and b!4805366 res!2044377) b!4805367))

(declare-fun m!5791768 () Bool)

(assert (=> b!4805367 m!5791768))

(assert (=> b!4805283 d!1539523))

(declare-fun d!1539525 () Bool)

(declare-fun isEmpty!29530 (Option!13220) Bool)

(assert (=> d!1539525 (= (isDefined!10361 (getPair!948 (apply!13056 lm!2473 lt!1959401) key!5896)) (not (isEmpty!29530 (getPair!948 (apply!13056 lm!2473 lt!1959401) key!5896))))))

(declare-fun bs!1159691 () Bool)

(assert (= bs!1159691 d!1539525))

(assert (=> bs!1159691 m!5791682))

(declare-fun m!5791770 () Bool)

(assert (=> bs!1159691 m!5791770))

(assert (=> b!4805274 d!1539525))

(declare-fun lt!1959486 () Option!13220)

(declare-fun e!3001045 () Bool)

(declare-fun b!4805399 () Bool)

(declare-fun contains!18030 (List!54486 tuple2!57072) Bool)

(declare-fun get!18586 (Option!13220) tuple2!57072)

(assert (=> b!4805399 (= e!3001045 (contains!18030 (apply!13056 lm!2473 lt!1959401) (get!18586 lt!1959486)))))

(declare-fun d!1539527 () Bool)

(declare-fun e!3001046 () Bool)

(assert (=> d!1539527 e!3001046))

(declare-fun res!2044389 () Bool)

(assert (=> d!1539527 (=> res!2044389 e!3001046)))

(declare-fun e!3001044 () Bool)

(assert (=> d!1539527 (= res!2044389 e!3001044)))

(declare-fun res!2044390 () Bool)

(assert (=> d!1539527 (=> (not res!2044390) (not e!3001044))))

(assert (=> d!1539527 (= res!2044390 (isEmpty!29530 lt!1959486))))

(declare-fun e!3001048 () Option!13220)

(assert (=> d!1539527 (= lt!1959486 e!3001048)))

(declare-fun c!819179 () Bool)

(assert (=> d!1539527 (= c!819179 (and ((_ is Cons!54362) (apply!13056 lm!2473 lt!1959401)) (= (_1!31830 (h!60794 (apply!13056 lm!2473 lt!1959401))) key!5896)))))

(assert (=> d!1539527 (noDuplicateKeys!2374 (apply!13056 lm!2473 lt!1959401))))

(assert (=> d!1539527 (= (getPair!948 (apply!13056 lm!2473 lt!1959401) key!5896) lt!1959486)))

(declare-fun b!4805400 () Bool)

(declare-fun e!3001047 () Option!13220)

(assert (=> b!4805400 (= e!3001048 e!3001047)))

(declare-fun c!819180 () Bool)

(assert (=> b!4805400 (= c!819180 ((_ is Cons!54362) (apply!13056 lm!2473 lt!1959401)))))

(declare-fun b!4805401 () Bool)

(assert (=> b!4805401 (= e!3001047 (getPair!948 (t!361936 (apply!13056 lm!2473 lt!1959401)) key!5896))))

(declare-fun b!4805402 () Bool)

(assert (=> b!4805402 (= e!3001047 None!13219)))

(declare-fun b!4805403 () Bool)

(assert (=> b!4805403 (= e!3001044 (not (containsKey!4070 (apply!13056 lm!2473 lt!1959401) key!5896)))))

(declare-fun b!4805404 () Bool)

(assert (=> b!4805404 (= e!3001048 (Some!13219 (h!60794 (apply!13056 lm!2473 lt!1959401))))))

(declare-fun b!4805405 () Bool)

(declare-fun res!2044392 () Bool)

(assert (=> b!4805405 (=> (not res!2044392) (not e!3001045))))

(assert (=> b!4805405 (= res!2044392 (= (_1!31830 (get!18586 lt!1959486)) key!5896))))

(declare-fun b!4805406 () Bool)

(assert (=> b!4805406 (= e!3001046 e!3001045)))

(declare-fun res!2044391 () Bool)

(assert (=> b!4805406 (=> (not res!2044391) (not e!3001045))))

(assert (=> b!4805406 (= res!2044391 (isDefined!10361 lt!1959486))))

(assert (= (and d!1539527 c!819179) b!4805404))

(assert (= (and d!1539527 (not c!819179)) b!4805400))

(assert (= (and b!4805400 c!819180) b!4805401))

(assert (= (and b!4805400 (not c!819180)) b!4805402))

(assert (= (and d!1539527 res!2044390) b!4805403))

(assert (= (and d!1539527 (not res!2044389)) b!4805406))

(assert (= (and b!4805406 res!2044391) b!4805405))

(assert (= (and b!4805405 res!2044392) b!4805399))

(declare-fun m!5791808 () Bool)

(assert (=> d!1539527 m!5791808))

(assert (=> d!1539527 m!5791680))

(declare-fun m!5791810 () Bool)

(assert (=> d!1539527 m!5791810))

(declare-fun m!5791812 () Bool)

(assert (=> b!4805401 m!5791812))

(declare-fun m!5791814 () Bool)

(assert (=> b!4805405 m!5791814))

(assert (=> b!4805399 m!5791814))

(assert (=> b!4805399 m!5791680))

(assert (=> b!4805399 m!5791814))

(declare-fun m!5791816 () Bool)

(assert (=> b!4805399 m!5791816))

(declare-fun m!5791818 () Bool)

(assert (=> b!4805406 m!5791818))

(assert (=> b!4805403 m!5791680))

(declare-fun m!5791820 () Bool)

(assert (=> b!4805403 m!5791820))

(assert (=> b!4805274 d!1539527))

(declare-fun d!1539537 () Bool)

(declare-datatypes ((Option!13224 0))(
  ( (None!13223) (Some!13223 (v!48564 List!54486)) )
))
(declare-fun get!18587 (Option!13224) List!54486)

(declare-fun getValueByKey!2423 (List!54487 (_ BitVec 64)) Option!13224)

(assert (=> d!1539537 (= (apply!13056 lm!2473 lt!1959401) (get!18587 (getValueByKey!2423 (toList!7031 lm!2473) lt!1959401)))))

(declare-fun bs!1159698 () Bool)

(assert (= bs!1159698 d!1539537))

(declare-fun m!5791822 () Bool)

(assert (=> bs!1159698 m!5791822))

(assert (=> bs!1159698 m!5791822))

(declare-fun m!5791824 () Bool)

(assert (=> bs!1159698 m!5791824))

(assert (=> b!4805274 d!1539537))

(declare-fun d!1539539 () Bool)

(declare-fun get!18588 (Option!13223) V!16175)

(assert (=> d!1539539 (= (apply!13057 lt!1959404 key!5896) (get!18588 (getValueByKey!2422 (toList!7032 lt!1959404) key!5896)))))

(declare-fun bs!1159699 () Bool)

(assert (= bs!1159699 d!1539539))

(declare-fun m!5791826 () Bool)

(assert (=> bs!1159699 m!5791826))

(assert (=> bs!1159699 m!5791826))

(declare-fun m!5791828 () Bool)

(assert (=> bs!1159699 m!5791828))

(assert (=> b!4805276 d!1539539))

(declare-fun d!1539541 () Bool)

(assert (=> d!1539541 (= (apply!13057 lt!1959403 key!5896) (get!18588 (getValueByKey!2422 (toList!7032 lt!1959403) key!5896)))))

(declare-fun bs!1159700 () Bool)

(assert (= bs!1159700 d!1539541))

(declare-fun m!5791830 () Bool)

(assert (=> bs!1159700 m!5791830))

(assert (=> bs!1159700 m!5791830))

(declare-fun m!5791832 () Bool)

(assert (=> bs!1159700 m!5791832))

(assert (=> b!4805276 d!1539541))

(declare-fun d!1539543 () Bool)

(assert (=> d!1539543 (= (apply!13057 (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411) key!5896) value!3111)))

(declare-fun lt!1959516 () Unit!141197)

(declare-fun choose!34791 (List!54486 ListMap!6503 K!15929 V!16175) Unit!141197)

(assert (=> d!1539543 (= lt!1959516 (choose!34791 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411 key!5896 value!3111))))

(assert (=> d!1539543 (noDuplicateKeys!2374 (_2!31831 (h!60795 (toList!7031 lm!2473))))))

(assert (=> d!1539543 (= (lemmaAddToMapFromBucketMaintainsMapping!12 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411 key!5896 value!3111) lt!1959516)))

(declare-fun bs!1159717 () Bool)

(assert (= bs!1159717 d!1539543))

(assert (=> bs!1159717 m!5791658))

(assert (=> bs!1159717 m!5791658))

(declare-fun m!5791908 () Bool)

(assert (=> bs!1159717 m!5791908))

(declare-fun m!5791910 () Bool)

(assert (=> bs!1159717 m!5791910))

(assert (=> bs!1159717 m!5791700))

(assert (=> b!4805276 d!1539543))

(declare-fun b!4805436 () Bool)

(declare-fun e!3001073 () Unit!141197)

(declare-fun lt!1959520 () Unit!141197)

(assert (=> b!4805436 (= e!3001073 lt!1959520)))

(declare-fun lt!1959517 () Unit!141197)

(assert (=> b!4805436 (= lt!1959517 (lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (toList!7032 lt!1959404) key!5896))))

(assert (=> b!4805436 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959404) key!5896))))

(declare-fun lt!1959523 () Unit!141197)

(assert (=> b!4805436 (= lt!1959523 lt!1959517)))

(assert (=> b!4805436 (= lt!1959520 (lemmaInListThenGetKeysListContains!1107 (toList!7032 lt!1959404) key!5896))))

(declare-fun call!335569 () Bool)

(assert (=> b!4805436 call!335569))

(declare-fun b!4805437 () Bool)

(assert (=> b!4805437 false))

(declare-fun lt!1959519 () Unit!141197)

(declare-fun lt!1959522 () Unit!141197)

(assert (=> b!4805437 (= lt!1959519 lt!1959522)))

(assert (=> b!4805437 (containsKey!4073 (toList!7032 lt!1959404) key!5896)))

(assert (=> b!4805437 (= lt!1959522 (lemmaInGetKeysListThenContainsKey!1112 (toList!7032 lt!1959404) key!5896))))

(declare-fun e!3001074 () Unit!141197)

(declare-fun Unit!141210 () Unit!141197)

(assert (=> b!4805437 (= e!3001074 Unit!141210)))

(declare-fun b!4805438 () Bool)

(declare-fun e!3001071 () Bool)

(declare-fun e!3001070 () Bool)

(assert (=> b!4805438 (= e!3001071 e!3001070)))

(declare-fun res!2044408 () Bool)

(assert (=> b!4805438 (=> (not res!2044408) (not e!3001070))))

(assert (=> b!4805438 (= res!2044408 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959404) key!5896)))))

(declare-fun b!4805439 () Bool)

(declare-fun e!3001072 () List!54489)

(assert (=> b!4805439 (= e!3001072 (getKeysList!1112 (toList!7032 lt!1959404)))))

(declare-fun d!1539565 () Bool)

(assert (=> d!1539565 e!3001071))

(declare-fun res!2044406 () Bool)

(assert (=> d!1539565 (=> res!2044406 e!3001071)))

(declare-fun e!3001075 () Bool)

(assert (=> d!1539565 (= res!2044406 e!3001075)))

(declare-fun res!2044407 () Bool)

(assert (=> d!1539565 (=> (not res!2044407) (not e!3001075))))

(declare-fun lt!1959521 () Bool)

(assert (=> d!1539565 (= res!2044407 (not lt!1959521))))

(declare-fun lt!1959524 () Bool)

(assert (=> d!1539565 (= lt!1959521 lt!1959524)))

(declare-fun lt!1959518 () Unit!141197)

(assert (=> d!1539565 (= lt!1959518 e!3001073)))

(declare-fun c!819191 () Bool)

(assert (=> d!1539565 (= c!819191 lt!1959524)))

(assert (=> d!1539565 (= lt!1959524 (containsKey!4073 (toList!7032 lt!1959404) key!5896))))

(assert (=> d!1539565 (= (contains!18026 lt!1959404 key!5896) lt!1959521)))

(declare-fun bm!335564 () Bool)

(assert (=> bm!335564 (= call!335569 (contains!18029 e!3001072 key!5896))))

(declare-fun c!819189 () Bool)

(assert (=> bm!335564 (= c!819189 c!819191)))

(declare-fun b!4805440 () Bool)

(assert (=> b!4805440 (= e!3001072 (keys!19887 lt!1959404))))

(declare-fun b!4805441 () Bool)

(assert (=> b!4805441 (= e!3001073 e!3001074)))

(declare-fun c!819190 () Bool)

(assert (=> b!4805441 (= c!819190 call!335569)))

(declare-fun b!4805442 () Bool)

(assert (=> b!4805442 (= e!3001070 (contains!18029 (keys!19887 lt!1959404) key!5896))))

(declare-fun b!4805443 () Bool)

(declare-fun Unit!141211 () Unit!141197)

(assert (=> b!4805443 (= e!3001074 Unit!141211)))

(declare-fun b!4805444 () Bool)

(assert (=> b!4805444 (= e!3001075 (not (contains!18029 (keys!19887 lt!1959404) key!5896)))))

(assert (= (and d!1539565 c!819191) b!4805436))

(assert (= (and d!1539565 (not c!819191)) b!4805441))

(assert (= (and b!4805441 c!819190) b!4805437))

(assert (= (and b!4805441 (not c!819190)) b!4805443))

(assert (= (or b!4805436 b!4805441) bm!335564))

(assert (= (and bm!335564 c!819189) b!4805439))

(assert (= (and bm!335564 (not c!819189)) b!4805440))

(assert (= (and d!1539565 res!2044407) b!4805444))

(assert (= (and d!1539565 (not res!2044406)) b!4805438))

(assert (= (and b!4805438 res!2044408) b!4805442))

(declare-fun m!5791912 () Bool)

(assert (=> d!1539565 m!5791912))

(declare-fun m!5791914 () Bool)

(assert (=> b!4805444 m!5791914))

(assert (=> b!4805444 m!5791914))

(declare-fun m!5791916 () Bool)

(assert (=> b!4805444 m!5791916))

(declare-fun m!5791918 () Bool)

(assert (=> bm!335564 m!5791918))

(assert (=> b!4805437 m!5791912))

(declare-fun m!5791920 () Bool)

(assert (=> b!4805437 m!5791920))

(declare-fun m!5791922 () Bool)

(assert (=> b!4805439 m!5791922))

(assert (=> b!4805440 m!5791914))

(assert (=> b!4805442 m!5791914))

(assert (=> b!4805442 m!5791914))

(assert (=> b!4805442 m!5791916))

(declare-fun m!5791924 () Bool)

(assert (=> b!4805436 m!5791924))

(assert (=> b!4805436 m!5791826))

(assert (=> b!4805436 m!5791826))

(declare-fun m!5791926 () Bool)

(assert (=> b!4805436 m!5791926))

(declare-fun m!5791928 () Bool)

(assert (=> b!4805436 m!5791928))

(assert (=> b!4805438 m!5791826))

(assert (=> b!4805438 m!5791826))

(assert (=> b!4805438 m!5791926))

(assert (=> b!4805275 d!1539565))

(declare-fun bs!1159746 () Bool)

(declare-fun d!1539567 () Bool)

(assert (= bs!1159746 (and d!1539567 start!496414)))

(declare-fun lambda!233339 () Int)

(assert (=> bs!1159746 (= lambda!233339 lambda!233313)))

(declare-fun lt!1959542 () ListMap!6503)

(declare-fun invariantList!1766 (List!54486) Bool)

(assert (=> d!1539567 (invariantList!1766 (toList!7032 lt!1959542))))

(declare-fun e!3001106 () ListMap!6503)

(assert (=> d!1539567 (= lt!1959542 e!3001106)))

(declare-fun c!819204 () Bool)

(assert (=> d!1539567 (= c!819204 ((_ is Cons!54363) (toList!7031 lm!2473)))))

(assert (=> d!1539567 (forall!12361 (toList!7031 lm!2473) lambda!233339)))

(assert (=> d!1539567 (= (extractMap!2503 (toList!7031 lm!2473)) lt!1959542)))

(declare-fun b!4805492 () Bool)

(assert (=> b!4805492 (= e!3001106 (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (toList!7031 lm!2473))) (extractMap!2503 (t!361937 (toList!7031 lm!2473)))))))

(declare-fun b!4805493 () Bool)

(assert (=> b!4805493 (= e!3001106 (ListMap!6504 Nil!54362))))

(assert (= (and d!1539567 c!819204) b!4805492))

(assert (= (and d!1539567 (not c!819204)) b!4805493))

(declare-fun m!5791986 () Bool)

(assert (=> d!1539567 m!5791986))

(declare-fun m!5791988 () Bool)

(assert (=> d!1539567 m!5791988))

(assert (=> b!4805492 m!5791692))

(assert (=> b!4805492 m!5791692))

(declare-fun m!5791990 () Bool)

(assert (=> b!4805492 m!5791990))

(assert (=> b!4805275 d!1539567))

(declare-fun d!1539587 () Bool)

(declare-fun e!3001118 () Bool)

(assert (=> d!1539587 e!3001118))

(declare-fun res!2044435 () Bool)

(assert (=> d!1539587 (=> res!2044435 e!3001118)))

(declare-fun lt!1959560 () Bool)

(assert (=> d!1539587 (= res!2044435 (not lt!1959560))))

(declare-fun lt!1959559 () Bool)

(assert (=> d!1539587 (= lt!1959560 lt!1959559)))

(declare-fun lt!1959562 () Unit!141197)

(declare-fun e!3001117 () Unit!141197)

(assert (=> d!1539587 (= lt!1959562 e!3001117)))

(declare-fun c!819210 () Bool)

(assert (=> d!1539587 (= c!819210 lt!1959559)))

(declare-fun containsKey!4074 (List!54487 (_ BitVec 64)) Bool)

(assert (=> d!1539587 (= lt!1959559 (containsKey!4074 (toList!7031 lm!2473) lt!1959401))))

(assert (=> d!1539587 (= (contains!18027 lm!2473 lt!1959401) lt!1959560)))

(declare-fun b!4805509 () Bool)

(declare-fun lt!1959561 () Unit!141197)

(assert (=> b!4805509 (= e!3001117 lt!1959561)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2214 (List!54487 (_ BitVec 64)) Unit!141197)

(assert (=> b!4805509 (= lt!1959561 (lemmaContainsKeyImpliesGetValueByKeyDefined!2214 (toList!7031 lm!2473) lt!1959401))))

(declare-fun isDefined!10365 (Option!13224) Bool)

(assert (=> b!4805509 (isDefined!10365 (getValueByKey!2423 (toList!7031 lm!2473) lt!1959401))))

(declare-fun b!4805510 () Bool)

(declare-fun Unit!141214 () Unit!141197)

(assert (=> b!4805510 (= e!3001117 Unit!141214)))

(declare-fun b!4805511 () Bool)

(assert (=> b!4805511 (= e!3001118 (isDefined!10365 (getValueByKey!2423 (toList!7031 lm!2473) lt!1959401)))))

(assert (= (and d!1539587 c!819210) b!4805509))

(assert (= (and d!1539587 (not c!819210)) b!4805510))

(assert (= (and d!1539587 (not res!2044435)) b!4805511))

(declare-fun m!5792010 () Bool)

(assert (=> d!1539587 m!5792010))

(declare-fun m!5792012 () Bool)

(assert (=> b!4805509 m!5792012))

(assert (=> b!4805509 m!5791822))

(assert (=> b!4805509 m!5791822))

(declare-fun m!5792014 () Bool)

(assert (=> b!4805509 m!5792014))

(assert (=> b!4805511 m!5791822))

(assert (=> b!4805511 m!5791822))

(assert (=> b!4805511 m!5792014))

(assert (=> b!4805286 d!1539587))

(declare-fun d!1539591 () Bool)

(declare-fun res!2044444 () Bool)

(declare-fun e!3001126 () Bool)

(assert (=> d!1539591 (=> res!2044444 e!3001126)))

(declare-fun e!3001127 () Bool)

(assert (=> d!1539591 (= res!2044444 e!3001127)))

(declare-fun res!2044442 () Bool)

(assert (=> d!1539591 (=> (not res!2044442) (not e!3001127))))

(assert (=> d!1539591 (= res!2044442 ((_ is Cons!54363) (toList!7031 lm!2473)))))

(assert (=> d!1539591 (= (containsKeyBiggerList!618 (toList!7031 lm!2473) key!5896) e!3001126)))

(declare-fun b!4805518 () Bool)

(assert (=> b!4805518 (= e!3001127 (containsKey!4070 (_2!31831 (h!60795 (toList!7031 lm!2473))) key!5896))))

(declare-fun b!4805519 () Bool)

(declare-fun e!3001125 () Bool)

(assert (=> b!4805519 (= e!3001126 e!3001125)))

(declare-fun res!2044443 () Bool)

(assert (=> b!4805519 (=> (not res!2044443) (not e!3001125))))

(assert (=> b!4805519 (= res!2044443 ((_ is Cons!54363) (toList!7031 lm!2473)))))

(declare-fun b!4805520 () Bool)

(assert (=> b!4805520 (= e!3001125 (containsKeyBiggerList!618 (t!361937 (toList!7031 lm!2473)) key!5896))))

(assert (= (and d!1539591 res!2044442) b!4805518))

(assert (= (and d!1539591 (not res!2044444)) b!4805519))

(assert (= (and b!4805519 res!2044443) b!4805520))

(assert (=> b!4805518 m!5791708))

(declare-fun m!5792016 () Bool)

(assert (=> b!4805520 m!5792016))

(assert (=> b!4805286 d!1539591))

(declare-fun bs!1159748 () Bool)

(declare-fun d!1539593 () Bool)

(assert (= bs!1159748 (and d!1539593 start!496414)))

(declare-fun lambda!233342 () Int)

(assert (=> bs!1159748 (= lambda!233342 lambda!233313)))

(declare-fun bs!1159749 () Bool)

(assert (= bs!1159749 (and d!1539593 d!1539567)))

(assert (=> bs!1159749 (= lambda!233342 lambda!233339)))

(assert (=> d!1539593 (containsKeyBiggerList!618 (toList!7031 lm!2473) key!5896)))

(declare-fun lt!1959565 () Unit!141197)

(declare-fun choose!34792 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> d!1539593 (= lt!1959565 (choose!34792 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1539593 (forall!12361 (toList!7031 lm!2473) lambda!233342)))

(assert (=> d!1539593 (= (lemmaInLongMapThenContainsKeyBiggerList!358 lm!2473 key!5896 hashF!1559) lt!1959565)))

(declare-fun bs!1159750 () Bool)

(assert (= bs!1159750 d!1539593))

(assert (=> bs!1159750 m!5791662))

(declare-fun m!5792018 () Bool)

(assert (=> bs!1159750 m!5792018))

(declare-fun m!5792020 () Bool)

(assert (=> bs!1159750 m!5792020))

(assert (=> b!4805286 d!1539593))

(declare-fun bs!1159751 () Bool)

(declare-fun d!1539595 () Bool)

(assert (= bs!1159751 (and d!1539595 start!496414)))

(declare-fun lambda!233345 () Int)

(assert (=> bs!1159751 (= lambda!233345 lambda!233313)))

(declare-fun bs!1159752 () Bool)

(assert (= bs!1159752 (and d!1539595 d!1539567)))

(assert (=> bs!1159752 (= lambda!233345 lambda!233339)))

(declare-fun bs!1159753 () Bool)

(assert (= bs!1159753 (and d!1539595 d!1539593)))

(assert (=> bs!1159753 (= lambda!233345 lambda!233342)))

(declare-fun e!3001130 () Bool)

(assert (=> d!1539595 e!3001130))

(declare-fun res!2044447 () Bool)

(assert (=> d!1539595 (=> (not res!2044447) (not e!3001130))))

(assert (=> d!1539595 (= res!2044447 (contains!18027 lm!2473 (hash!5043 hashF!1559 key!5896)))))

(declare-fun lt!1959568 () Unit!141197)

(declare-fun choose!34793 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> d!1539595 (= lt!1959568 (choose!34793 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1539595 (forall!12361 (toList!7031 lm!2473) lambda!233345)))

(assert (=> d!1539595 (= (lemmaInGenericMapThenInLongMap!380 lm!2473 key!5896 hashF!1559) lt!1959568)))

(declare-fun b!4805523 () Bool)

(assert (=> b!4805523 (= e!3001130 (isDefined!10361 (getPair!948 (apply!13056 lm!2473 (hash!5043 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1539595 res!2044447) b!4805523))

(assert (=> d!1539595 m!5791664))

(assert (=> d!1539595 m!5791664))

(declare-fun m!5792022 () Bool)

(assert (=> d!1539595 m!5792022))

(declare-fun m!5792024 () Bool)

(assert (=> d!1539595 m!5792024))

(declare-fun m!5792026 () Bool)

(assert (=> d!1539595 m!5792026))

(assert (=> b!4805523 m!5791664))

(assert (=> b!4805523 m!5791664))

(declare-fun m!5792028 () Bool)

(assert (=> b!4805523 m!5792028))

(assert (=> b!4805523 m!5792028))

(declare-fun m!5792030 () Bool)

(assert (=> b!4805523 m!5792030))

(assert (=> b!4805523 m!5792030))

(declare-fun m!5792032 () Bool)

(assert (=> b!4805523 m!5792032))

(assert (=> b!4805286 d!1539595))

(declare-fun d!1539597 () Bool)

(declare-fun c!819213 () Bool)

(declare-fun e!3001136 () Bool)

(assert (=> d!1539597 (= c!819213 e!3001136)))

(declare-fun res!2044450 () Bool)

(assert (=> d!1539597 (=> (not res!2044450) (not e!3001136))))

(assert (=> d!1539597 (= res!2044450 ((_ is Cons!54363) (toList!7031 lm!2473)))))

(declare-fun e!3001135 () V!16175)

(assert (=> d!1539597 (= (getValue!164 (toList!7031 lm!2473) key!5896) e!3001135)))

(declare-fun b!4805532 () Bool)

(assert (=> b!4805532 (= e!3001136 (containsKey!4070 (_2!31831 (h!60795 (toList!7031 lm!2473))) key!5896))))

(declare-fun b!4805530 () Bool)

(assert (=> b!4805530 (= e!3001135 (_2!31830 (get!18586 (getPair!948 (_2!31831 (h!60795 (toList!7031 lm!2473))) key!5896))))))

(declare-fun b!4805531 () Bool)

(assert (=> b!4805531 (= e!3001135 (getValue!164 (t!361937 (toList!7031 lm!2473)) key!5896))))

(assert (= (and d!1539597 res!2044450) b!4805532))

(assert (= (and d!1539597 c!819213) b!4805530))

(assert (= (and d!1539597 (not c!819213)) b!4805531))

(assert (=> b!4805532 m!5791708))

(declare-fun m!5792034 () Bool)

(assert (=> b!4805530 m!5792034))

(assert (=> b!4805530 m!5792034))

(declare-fun m!5792036 () Bool)

(assert (=> b!4805530 m!5792036))

(declare-fun m!5792038 () Bool)

(assert (=> b!4805531 m!5792038))

(assert (=> b!4805286 d!1539597))

(declare-fun d!1539599 () Bool)

(declare-fun hash!5045 (Hashable!6976 K!15929) (_ BitVec 64))

(assert (=> d!1539599 (= (hash!5043 hashF!1559 key!5896) (hash!5045 hashF!1559 key!5896))))

(declare-fun bs!1159754 () Bool)

(assert (= bs!1159754 d!1539599))

(declare-fun m!5792040 () Bool)

(assert (=> bs!1159754 m!5792040))

(assert (=> b!4805286 d!1539599))

(declare-fun bs!1159755 () Bool)

(declare-fun d!1539601 () Bool)

(assert (= bs!1159755 (and d!1539601 start!496414)))

(declare-fun lambda!233348 () Int)

(assert (=> bs!1159755 (= lambda!233348 lambda!233313)))

(declare-fun bs!1159756 () Bool)

(assert (= bs!1159756 (and d!1539601 d!1539567)))

(assert (=> bs!1159756 (= lambda!233348 lambda!233339)))

(declare-fun bs!1159757 () Bool)

(assert (= bs!1159757 (and d!1539601 d!1539593)))

(assert (=> bs!1159757 (= lambda!233348 lambda!233342)))

(declare-fun bs!1159758 () Bool)

(assert (= bs!1159758 (and d!1539601 d!1539595)))

(assert (=> bs!1159758 (= lambda!233348 lambda!233345)))

(assert (=> d!1539601 (not (contains!18026 (extractMap!2503 (toList!7031 lt!1959405)) key!5896))))

(declare-fun lt!1959571 () Unit!141197)

(declare-fun choose!34794 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> d!1539601 (= lt!1959571 (choose!34794 lt!1959405 key!5896 hashF!1559))))

(assert (=> d!1539601 (forall!12361 (toList!7031 lt!1959405) lambda!233348)))

(assert (=> d!1539601 (= (lemmaHashNotInLongMapThenNotInGenerated!74 lt!1959405 key!5896 hashF!1559) lt!1959571)))

(declare-fun bs!1159759 () Bool)

(assert (= bs!1159759 d!1539601))

(assert (=> bs!1159759 m!5791646))

(assert (=> bs!1159759 m!5791646))

(assert (=> bs!1159759 m!5791648))

(declare-fun m!5792042 () Bool)

(assert (=> bs!1159759 m!5792042))

(declare-fun m!5792044 () Bool)

(assert (=> bs!1159759 m!5792044))

(assert (=> b!4805277 d!1539601))

(declare-fun b!4805533 () Bool)

(declare-fun e!3001140 () Unit!141197)

(declare-fun lt!1959575 () Unit!141197)

(assert (=> b!4805533 (= e!3001140 lt!1959575)))

(declare-fun lt!1959572 () Unit!141197)

(assert (=> b!4805533 (= lt!1959572 (lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(assert (=> b!4805533 (isDefined!10364 (getValueByKey!2422 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(declare-fun lt!1959578 () Unit!141197)

(assert (=> b!4805533 (= lt!1959578 lt!1959572)))

(assert (=> b!4805533 (= lt!1959575 (lemmaInListThenGetKeysListContains!1107 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(declare-fun call!335572 () Bool)

(assert (=> b!4805533 call!335572))

(declare-fun b!4805534 () Bool)

(assert (=> b!4805534 false))

(declare-fun lt!1959574 () Unit!141197)

(declare-fun lt!1959577 () Unit!141197)

(assert (=> b!4805534 (= lt!1959574 lt!1959577)))

(assert (=> b!4805534 (containsKey!4073 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896)))

(assert (=> b!4805534 (= lt!1959577 (lemmaInGetKeysListThenContainsKey!1112 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(declare-fun e!3001141 () Unit!141197)

(declare-fun Unit!141217 () Unit!141197)

(assert (=> b!4805534 (= e!3001141 Unit!141217)))

(declare-fun b!4805535 () Bool)

(declare-fun e!3001138 () Bool)

(declare-fun e!3001137 () Bool)

(assert (=> b!4805535 (= e!3001138 e!3001137)))

(declare-fun res!2044453 () Bool)

(assert (=> b!4805535 (=> (not res!2044453) (not e!3001137))))

(assert (=> b!4805535 (= res!2044453 (isDefined!10364 (getValueByKey!2422 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896)))))

(declare-fun b!4805536 () Bool)

(declare-fun e!3001139 () List!54489)

(assert (=> b!4805536 (= e!3001139 (getKeysList!1112 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405)))))))

(declare-fun d!1539603 () Bool)

(assert (=> d!1539603 e!3001138))

(declare-fun res!2044451 () Bool)

(assert (=> d!1539603 (=> res!2044451 e!3001138)))

(declare-fun e!3001142 () Bool)

(assert (=> d!1539603 (= res!2044451 e!3001142)))

(declare-fun res!2044452 () Bool)

(assert (=> d!1539603 (=> (not res!2044452) (not e!3001142))))

(declare-fun lt!1959576 () Bool)

(assert (=> d!1539603 (= res!2044452 (not lt!1959576))))

(declare-fun lt!1959579 () Bool)

(assert (=> d!1539603 (= lt!1959576 lt!1959579)))

(declare-fun lt!1959573 () Unit!141197)

(assert (=> d!1539603 (= lt!1959573 e!3001140)))

(declare-fun c!819216 () Bool)

(assert (=> d!1539603 (= c!819216 lt!1959579)))

(assert (=> d!1539603 (= lt!1959579 (containsKey!4073 (toList!7032 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(assert (=> d!1539603 (= (contains!18026 (extractMap!2503 (toList!7031 lt!1959405)) key!5896) lt!1959576)))

(declare-fun bm!335567 () Bool)

(assert (=> bm!335567 (= call!335572 (contains!18029 e!3001139 key!5896))))

(declare-fun c!819214 () Bool)

(assert (=> bm!335567 (= c!819214 c!819216)))

(declare-fun b!4805537 () Bool)

(assert (=> b!4805537 (= e!3001139 (keys!19887 (extractMap!2503 (toList!7031 lt!1959405))))))

(declare-fun b!4805538 () Bool)

(assert (=> b!4805538 (= e!3001140 e!3001141)))

(declare-fun c!819215 () Bool)

(assert (=> b!4805538 (= c!819215 call!335572)))

(declare-fun b!4805539 () Bool)

(assert (=> b!4805539 (= e!3001137 (contains!18029 (keys!19887 (extractMap!2503 (toList!7031 lt!1959405))) key!5896))))

(declare-fun b!4805540 () Bool)

(declare-fun Unit!141223 () Unit!141197)

(assert (=> b!4805540 (= e!3001141 Unit!141223)))

(declare-fun b!4805541 () Bool)

(assert (=> b!4805541 (= e!3001142 (not (contains!18029 (keys!19887 (extractMap!2503 (toList!7031 lt!1959405))) key!5896)))))

(assert (= (and d!1539603 c!819216) b!4805533))

(assert (= (and d!1539603 (not c!819216)) b!4805538))

(assert (= (and b!4805538 c!819215) b!4805534))

(assert (= (and b!4805538 (not c!819215)) b!4805540))

(assert (= (or b!4805533 b!4805538) bm!335567))

(assert (= (and bm!335567 c!819214) b!4805536))

(assert (= (and bm!335567 (not c!819214)) b!4805537))

(assert (= (and d!1539603 res!2044452) b!4805541))

(assert (= (and d!1539603 (not res!2044451)) b!4805535))

(assert (= (and b!4805535 res!2044453) b!4805539))

(declare-fun m!5792046 () Bool)

(assert (=> d!1539603 m!5792046))

(assert (=> b!4805541 m!5791646))

(declare-fun m!5792048 () Bool)

(assert (=> b!4805541 m!5792048))

(assert (=> b!4805541 m!5792048))

(declare-fun m!5792050 () Bool)

(assert (=> b!4805541 m!5792050))

(declare-fun m!5792052 () Bool)

(assert (=> bm!335567 m!5792052))

(assert (=> b!4805534 m!5792046))

(declare-fun m!5792054 () Bool)

(assert (=> b!4805534 m!5792054))

(declare-fun m!5792056 () Bool)

(assert (=> b!4805536 m!5792056))

(assert (=> b!4805537 m!5791646))

(assert (=> b!4805537 m!5792048))

(assert (=> b!4805539 m!5791646))

(assert (=> b!4805539 m!5792048))

(assert (=> b!4805539 m!5792048))

(assert (=> b!4805539 m!5792050))

(declare-fun m!5792058 () Bool)

(assert (=> b!4805533 m!5792058))

(declare-fun m!5792060 () Bool)

(assert (=> b!4805533 m!5792060))

(assert (=> b!4805533 m!5792060))

(declare-fun m!5792062 () Bool)

(assert (=> b!4805533 m!5792062))

(declare-fun m!5792064 () Bool)

(assert (=> b!4805533 m!5792064))

(assert (=> b!4805535 m!5792060))

(assert (=> b!4805535 m!5792060))

(assert (=> b!4805535 m!5792062))

(assert (=> b!4805277 d!1539603))

(declare-fun bs!1159760 () Bool)

(declare-fun d!1539605 () Bool)

(assert (= bs!1159760 (and d!1539605 start!496414)))

(declare-fun lambda!233349 () Int)

(assert (=> bs!1159760 (= lambda!233349 lambda!233313)))

(declare-fun bs!1159761 () Bool)

(assert (= bs!1159761 (and d!1539605 d!1539595)))

(assert (=> bs!1159761 (= lambda!233349 lambda!233345)))

(declare-fun bs!1159762 () Bool)

(assert (= bs!1159762 (and d!1539605 d!1539601)))

(assert (=> bs!1159762 (= lambda!233349 lambda!233348)))

(declare-fun bs!1159763 () Bool)

(assert (= bs!1159763 (and d!1539605 d!1539593)))

(assert (=> bs!1159763 (= lambda!233349 lambda!233342)))

(declare-fun bs!1159764 () Bool)

(assert (= bs!1159764 (and d!1539605 d!1539567)))

(assert (=> bs!1159764 (= lambda!233349 lambda!233339)))

(declare-fun lt!1959580 () ListMap!6503)

(assert (=> d!1539605 (invariantList!1766 (toList!7032 lt!1959580))))

(declare-fun e!3001143 () ListMap!6503)

(assert (=> d!1539605 (= lt!1959580 e!3001143)))

(declare-fun c!819217 () Bool)

(assert (=> d!1539605 (= c!819217 ((_ is Cons!54363) (toList!7031 lt!1959405)))))

(assert (=> d!1539605 (forall!12361 (toList!7031 lt!1959405) lambda!233349)))

(assert (=> d!1539605 (= (extractMap!2503 (toList!7031 lt!1959405)) lt!1959580)))

(declare-fun b!4805542 () Bool)

(assert (=> b!4805542 (= e!3001143 (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (toList!7031 lt!1959405))) (extractMap!2503 (t!361937 (toList!7031 lt!1959405)))))))

(declare-fun b!4805543 () Bool)

(assert (=> b!4805543 (= e!3001143 (ListMap!6504 Nil!54362))))

(assert (= (and d!1539605 c!819217) b!4805542))

(assert (= (and d!1539605 (not c!819217)) b!4805543))

(declare-fun m!5792066 () Bool)

(assert (=> d!1539605 m!5792066))

(declare-fun m!5792068 () Bool)

(assert (=> d!1539605 m!5792068))

(declare-fun m!5792070 () Bool)

(assert (=> b!4805542 m!5792070))

(assert (=> b!4805542 m!5792070))

(declare-fun m!5792072 () Bool)

(assert (=> b!4805542 m!5792072))

(assert (=> b!4805277 d!1539605))

(declare-fun b!4805544 () Bool)

(declare-fun e!3001147 () Unit!141197)

(declare-fun lt!1959584 () Unit!141197)

(assert (=> b!4805544 (= e!3001147 lt!1959584)))

(declare-fun lt!1959581 () Unit!141197)

(assert (=> b!4805544 (= lt!1959581 (lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (toList!7032 lt!1959403) key!5896))))

(assert (=> b!4805544 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959403) key!5896))))

(declare-fun lt!1959587 () Unit!141197)

(assert (=> b!4805544 (= lt!1959587 lt!1959581)))

(assert (=> b!4805544 (= lt!1959584 (lemmaInListThenGetKeysListContains!1107 (toList!7032 lt!1959403) key!5896))))

(declare-fun call!335573 () Bool)

(assert (=> b!4805544 call!335573))

(declare-fun b!4805545 () Bool)

(assert (=> b!4805545 false))

(declare-fun lt!1959583 () Unit!141197)

(declare-fun lt!1959586 () Unit!141197)

(assert (=> b!4805545 (= lt!1959583 lt!1959586)))

(assert (=> b!4805545 (containsKey!4073 (toList!7032 lt!1959403) key!5896)))

(assert (=> b!4805545 (= lt!1959586 (lemmaInGetKeysListThenContainsKey!1112 (toList!7032 lt!1959403) key!5896))))

(declare-fun e!3001148 () Unit!141197)

(declare-fun Unit!141230 () Unit!141197)

(assert (=> b!4805545 (= e!3001148 Unit!141230)))

(declare-fun b!4805546 () Bool)

(declare-fun e!3001145 () Bool)

(declare-fun e!3001144 () Bool)

(assert (=> b!4805546 (= e!3001145 e!3001144)))

(declare-fun res!2044456 () Bool)

(assert (=> b!4805546 (=> (not res!2044456) (not e!3001144))))

(assert (=> b!4805546 (= res!2044456 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959403) key!5896)))))

(declare-fun b!4805547 () Bool)

(declare-fun e!3001146 () List!54489)

(assert (=> b!4805547 (= e!3001146 (getKeysList!1112 (toList!7032 lt!1959403)))))

(declare-fun d!1539607 () Bool)

(assert (=> d!1539607 e!3001145))

(declare-fun res!2044454 () Bool)

(assert (=> d!1539607 (=> res!2044454 e!3001145)))

(declare-fun e!3001149 () Bool)

(assert (=> d!1539607 (= res!2044454 e!3001149)))

(declare-fun res!2044455 () Bool)

(assert (=> d!1539607 (=> (not res!2044455) (not e!3001149))))

(declare-fun lt!1959585 () Bool)

(assert (=> d!1539607 (= res!2044455 (not lt!1959585))))

(declare-fun lt!1959588 () Bool)

(assert (=> d!1539607 (= lt!1959585 lt!1959588)))

(declare-fun lt!1959582 () Unit!141197)

(assert (=> d!1539607 (= lt!1959582 e!3001147)))

(declare-fun c!819220 () Bool)

(assert (=> d!1539607 (= c!819220 lt!1959588)))

(assert (=> d!1539607 (= lt!1959588 (containsKey!4073 (toList!7032 lt!1959403) key!5896))))

(assert (=> d!1539607 (= (contains!18026 lt!1959403 key!5896) lt!1959585)))

(declare-fun bm!335568 () Bool)

(assert (=> bm!335568 (= call!335573 (contains!18029 e!3001146 key!5896))))

(declare-fun c!819218 () Bool)

(assert (=> bm!335568 (= c!819218 c!819220)))

(declare-fun b!4805548 () Bool)

(assert (=> b!4805548 (= e!3001146 (keys!19887 lt!1959403))))

(declare-fun b!4805549 () Bool)

(assert (=> b!4805549 (= e!3001147 e!3001148)))

(declare-fun c!819219 () Bool)

(assert (=> b!4805549 (= c!819219 call!335573)))

(declare-fun b!4805550 () Bool)

(assert (=> b!4805550 (= e!3001144 (contains!18029 (keys!19887 lt!1959403) key!5896))))

(declare-fun b!4805551 () Bool)

(declare-fun Unit!141231 () Unit!141197)

(assert (=> b!4805551 (= e!3001148 Unit!141231)))

(declare-fun b!4805552 () Bool)

(assert (=> b!4805552 (= e!3001149 (not (contains!18029 (keys!19887 lt!1959403) key!5896)))))

(assert (= (and d!1539607 c!819220) b!4805544))

(assert (= (and d!1539607 (not c!819220)) b!4805549))

(assert (= (and b!4805549 c!819219) b!4805545))

(assert (= (and b!4805549 (not c!819219)) b!4805551))

(assert (= (or b!4805544 b!4805549) bm!335568))

(assert (= (and bm!335568 c!819218) b!4805547))

(assert (= (and bm!335568 (not c!819218)) b!4805548))

(assert (= (and d!1539607 res!2044455) b!4805552))

(assert (= (and d!1539607 (not res!2044454)) b!4805546))

(assert (= (and b!4805546 res!2044456) b!4805550))

(declare-fun m!5792074 () Bool)

(assert (=> d!1539607 m!5792074))

(declare-fun m!5792076 () Bool)

(assert (=> b!4805552 m!5792076))

(assert (=> b!4805552 m!5792076))

(declare-fun m!5792078 () Bool)

(assert (=> b!4805552 m!5792078))

(declare-fun m!5792080 () Bool)

(assert (=> bm!335568 m!5792080))

(assert (=> b!4805545 m!5792074))

(declare-fun m!5792082 () Bool)

(assert (=> b!4805545 m!5792082))

(declare-fun m!5792084 () Bool)

(assert (=> b!4805547 m!5792084))

(assert (=> b!4805548 m!5792076))

(assert (=> b!4805550 m!5792076))

(assert (=> b!4805550 m!5792076))

(assert (=> b!4805550 m!5792078))

(declare-fun m!5792086 () Bool)

(assert (=> b!4805544 m!5792086))

(assert (=> b!4805544 m!5791830))

(assert (=> b!4805544 m!5791830))

(declare-fun m!5792088 () Bool)

(assert (=> b!4805544 m!5792088))

(declare-fun m!5792090 () Bool)

(assert (=> b!4805544 m!5792090))

(assert (=> b!4805546 m!5791830))

(assert (=> b!4805546 m!5791830))

(assert (=> b!4805546 m!5792088))

(assert (=> b!4805278 d!1539607))

(declare-fun b!4805592 () Bool)

(assert (=> b!4805592 true))

(declare-fun bs!1159769 () Bool)

(declare-fun b!4805594 () Bool)

(assert (= bs!1159769 (and b!4805594 b!4805592)))

(declare-fun lambda!233411 () Int)

(declare-fun lambda!233410 () Int)

(assert (=> bs!1159769 (= lambda!233411 lambda!233410)))

(assert (=> b!4805594 true))

(declare-fun lt!1959705 () ListMap!6503)

(declare-fun lambda!233412 () Int)

(assert (=> bs!1159769 (= (= lt!1959705 lt!1959411) (= lambda!233412 lambda!233410))))

(assert (=> b!4805594 (= (= lt!1959705 lt!1959411) (= lambda!233412 lambda!233411))))

(assert (=> b!4805594 true))

(declare-fun bs!1159770 () Bool)

(declare-fun d!1539609 () Bool)

(assert (= bs!1159770 (and d!1539609 b!4805592)))

(declare-fun lt!1959697 () ListMap!6503)

(declare-fun lambda!233413 () Int)

(assert (=> bs!1159770 (= (= lt!1959697 lt!1959411) (= lambda!233413 lambda!233410))))

(declare-fun bs!1159771 () Bool)

(assert (= bs!1159771 (and d!1539609 b!4805594)))

(assert (=> bs!1159771 (= (= lt!1959697 lt!1959411) (= lambda!233413 lambda!233411))))

(assert (=> bs!1159771 (= (= lt!1959697 lt!1959705) (= lambda!233413 lambda!233412))))

(assert (=> d!1539609 true))

(declare-fun b!4805591 () Bool)

(declare-fun e!3001176 () Bool)

(declare-fun forall!12363 (List!54486 Int) Bool)

(assert (=> b!4805591 (= e!3001176 (forall!12363 (toList!7032 lt!1959411) lambda!233412))))

(declare-fun bm!335584 () Bool)

(declare-fun call!335590 () Unit!141197)

(declare-fun lemmaContainsAllItsOwnKeys!971 (ListMap!6503) Unit!141197)

(assert (=> bm!335584 (= call!335590 (lemmaContainsAllItsOwnKeys!971 lt!1959411))))

(declare-fun bm!335585 () Bool)

(declare-fun call!335591 () Bool)

(declare-fun c!819226 () Bool)

(assert (=> bm!335585 (= call!335591 (forall!12363 (ite c!819226 (toList!7032 lt!1959411) (t!361936 (_2!31831 (h!60795 (toList!7031 lm!2473))))) (ite c!819226 lambda!233410 lambda!233412)))))

(declare-fun e!3001174 () ListMap!6503)

(assert (=> b!4805592 (= e!3001174 lt!1959411)))

(declare-fun lt!1959704 () Unit!141197)

(assert (=> b!4805592 (= lt!1959704 call!335590)))

(declare-fun call!335589 () Bool)

(assert (=> b!4805592 call!335589))

(declare-fun lt!1959696 () Unit!141197)

(assert (=> b!4805592 (= lt!1959696 lt!1959704)))

(assert (=> b!4805592 call!335591))

(declare-fun lt!1959713 () Unit!141197)

(declare-fun Unit!141232 () Unit!141197)

(assert (=> b!4805592 (= lt!1959713 Unit!141232)))

(declare-fun b!4805593 () Bool)

(declare-fun res!2044480 () Bool)

(declare-fun e!3001175 () Bool)

(assert (=> b!4805593 (=> (not res!2044480) (not e!3001175))))

(assert (=> b!4805593 (= res!2044480 (forall!12363 (toList!7032 lt!1959411) lambda!233413))))

(assert (=> d!1539609 e!3001175))

(declare-fun res!2044478 () Bool)

(assert (=> d!1539609 (=> (not res!2044478) (not e!3001175))))

(assert (=> d!1539609 (= res!2044478 (forall!12363 (_2!31831 (h!60795 (toList!7031 lm!2473))) lambda!233413))))

(assert (=> d!1539609 (= lt!1959697 e!3001174)))

(assert (=> d!1539609 (= c!819226 ((_ is Nil!54362) (_2!31831 (h!60795 (toList!7031 lm!2473)))))))

(assert (=> d!1539609 (noDuplicateKeys!2374 (_2!31831 (h!60795 (toList!7031 lm!2473))))))

(assert (=> d!1539609 (= (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (toList!7031 lm!2473))) lt!1959411) lt!1959697)))

(assert (=> b!4805594 (= e!3001174 lt!1959705)))

(declare-fun lt!1959703 () ListMap!6503)

(declare-fun +!2515 (ListMap!6503 tuple2!57072) ListMap!6503)

(assert (=> b!4805594 (= lt!1959703 (+!2515 lt!1959411 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(assert (=> b!4805594 (= lt!1959705 (addToMapMapFromBucket!1743 (t!361936 (_2!31831 (h!60795 (toList!7031 lm!2473)))) (+!2515 lt!1959411 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473)))))))))

(declare-fun lt!1959699 () Unit!141197)

(assert (=> b!4805594 (= lt!1959699 call!335590)))

(assert (=> b!4805594 (forall!12363 (toList!7032 lt!1959411) lambda!233411)))

(declare-fun lt!1959707 () Unit!141197)

(assert (=> b!4805594 (= lt!1959707 lt!1959699)))

(assert (=> b!4805594 (forall!12363 (toList!7032 lt!1959703) lambda!233412)))

(declare-fun lt!1959695 () Unit!141197)

(declare-fun Unit!141233 () Unit!141197)

(assert (=> b!4805594 (= lt!1959695 Unit!141233)))

(assert (=> b!4805594 call!335591))

(declare-fun lt!1959694 () Unit!141197)

(declare-fun Unit!141234 () Unit!141197)

(assert (=> b!4805594 (= lt!1959694 Unit!141234)))

(declare-fun lt!1959714 () Unit!141197)

(declare-fun Unit!141235 () Unit!141197)

(assert (=> b!4805594 (= lt!1959714 Unit!141235)))

(declare-fun lt!1959700 () Unit!141197)

(declare-fun forallContained!4231 (List!54486 Int tuple2!57072) Unit!141197)

(assert (=> b!4805594 (= lt!1959700 (forallContained!4231 (toList!7032 lt!1959703) lambda!233412 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(assert (=> b!4805594 (contains!18026 lt!1959703 (_1!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(declare-fun lt!1959702 () Unit!141197)

(declare-fun Unit!141236 () Unit!141197)

(assert (=> b!4805594 (= lt!1959702 Unit!141236)))

(assert (=> b!4805594 (contains!18026 lt!1959705 (_1!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(declare-fun lt!1959711 () Unit!141197)

(declare-fun Unit!141237 () Unit!141197)

(assert (=> b!4805594 (= lt!1959711 Unit!141237)))

(assert (=> b!4805594 (forall!12363 (_2!31831 (h!60795 (toList!7031 lm!2473))) lambda!233412)))

(declare-fun lt!1959701 () Unit!141197)

(declare-fun Unit!141238 () Unit!141197)

(assert (=> b!4805594 (= lt!1959701 Unit!141238)))

(assert (=> b!4805594 (forall!12363 (toList!7032 lt!1959703) lambda!233412)))

(declare-fun lt!1959709 () Unit!141197)

(declare-fun Unit!141239 () Unit!141197)

(assert (=> b!4805594 (= lt!1959709 Unit!141239)))

(declare-fun lt!1959698 () Unit!141197)

(declare-fun Unit!141240 () Unit!141197)

(assert (=> b!4805594 (= lt!1959698 Unit!141240)))

(declare-fun lt!1959706 () Unit!141197)

(declare-fun addForallContainsKeyThenBeforeAdding!970 (ListMap!6503 ListMap!6503 K!15929 V!16175) Unit!141197)

(assert (=> b!4805594 (= lt!1959706 (addForallContainsKeyThenBeforeAdding!970 lt!1959411 lt!1959705 (_1!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))) (_2!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473)))))))))

(assert (=> b!4805594 (forall!12363 (toList!7032 lt!1959411) lambda!233412)))

(declare-fun lt!1959712 () Unit!141197)

(assert (=> b!4805594 (= lt!1959712 lt!1959706)))

(assert (=> b!4805594 (forall!12363 (toList!7032 lt!1959411) lambda!233412)))

(declare-fun lt!1959710 () Unit!141197)

(declare-fun Unit!141241 () Unit!141197)

(assert (=> b!4805594 (= lt!1959710 Unit!141241)))

(declare-fun res!2044479 () Bool)

(assert (=> b!4805594 (= res!2044479 call!335589)))

(assert (=> b!4805594 (=> (not res!2044479) (not e!3001176))))

(assert (=> b!4805594 e!3001176))

(declare-fun lt!1959708 () Unit!141197)

(declare-fun Unit!141242 () Unit!141197)

(assert (=> b!4805594 (= lt!1959708 Unit!141242)))

(declare-fun bm!335586 () Bool)

(assert (=> bm!335586 (= call!335589 (forall!12363 (ite c!819226 (toList!7032 lt!1959411) (_2!31831 (h!60795 (toList!7031 lm!2473)))) (ite c!819226 lambda!233410 lambda!233412)))))

(declare-fun b!4805595 () Bool)

(assert (=> b!4805595 (= e!3001175 (invariantList!1766 (toList!7032 lt!1959697)))))

(assert (= (and d!1539609 c!819226) b!4805592))

(assert (= (and d!1539609 (not c!819226)) b!4805594))

(assert (= (and b!4805594 res!2044479) b!4805591))

(assert (= (or b!4805592 b!4805594) bm!335586))

(assert (= (or b!4805592 b!4805594) bm!335585))

(assert (= (or b!4805592 b!4805594) bm!335584))

(assert (= (and d!1539609 res!2044478) b!4805593))

(assert (= (and b!4805593 res!2044480) b!4805595))

(declare-fun m!5792128 () Bool)

(assert (=> bm!335584 m!5792128))

(declare-fun m!5792130 () Bool)

(assert (=> bm!335585 m!5792130))

(declare-fun m!5792132 () Bool)

(assert (=> b!4805594 m!5792132))

(declare-fun m!5792134 () Bool)

(assert (=> b!4805594 m!5792134))

(declare-fun m!5792136 () Bool)

(assert (=> b!4805594 m!5792136))

(assert (=> b!4805594 m!5792134))

(declare-fun m!5792138 () Bool)

(assert (=> b!4805594 m!5792138))

(declare-fun m!5792140 () Bool)

(assert (=> b!4805594 m!5792140))

(declare-fun m!5792142 () Bool)

(assert (=> b!4805594 m!5792142))

(assert (=> b!4805594 m!5792140))

(declare-fun m!5792144 () Bool)

(assert (=> b!4805594 m!5792144))

(declare-fun m!5792146 () Bool)

(assert (=> b!4805594 m!5792146))

(declare-fun m!5792148 () Bool)

(assert (=> b!4805594 m!5792148))

(assert (=> b!4805594 m!5792146))

(declare-fun m!5792150 () Bool)

(assert (=> b!4805594 m!5792150))

(declare-fun m!5792152 () Bool)

(assert (=> b!4805593 m!5792152))

(assert (=> b!4805591 m!5792140))

(declare-fun m!5792154 () Bool)

(assert (=> b!4805595 m!5792154))

(declare-fun m!5792156 () Bool)

(assert (=> d!1539609 m!5792156))

(assert (=> d!1539609 m!5791700))

(declare-fun m!5792158 () Bool)

(assert (=> bm!335586 m!5792158))

(assert (=> b!4805278 d!1539609))

(declare-fun d!1539615 () Bool)

(assert (=> d!1539615 (= (apply!13057 lt!1959411 key!5896) (get!18588 (getValueByKey!2422 (toList!7032 lt!1959411) key!5896)))))

(declare-fun bs!1159772 () Bool)

(assert (= bs!1159772 d!1539615))

(assert (=> bs!1159772 m!5791762))

(assert (=> bs!1159772 m!5791762))

(declare-fun m!5792160 () Bool)

(assert (=> bs!1159772 m!5792160))

(assert (=> b!4805280 d!1539615))

(declare-fun bs!1159773 () Bool)

(declare-fun d!1539617 () Bool)

(assert (= bs!1159773 (and d!1539617 start!496414)))

(declare-fun lambda!233416 () Int)

(assert (=> bs!1159773 (not (= lambda!233416 lambda!233313))))

(declare-fun bs!1159774 () Bool)

(assert (= bs!1159774 (and d!1539617 d!1539605)))

(assert (=> bs!1159774 (not (= lambda!233416 lambda!233349))))

(declare-fun bs!1159775 () Bool)

(assert (= bs!1159775 (and d!1539617 d!1539595)))

(assert (=> bs!1159775 (not (= lambda!233416 lambda!233345))))

(declare-fun bs!1159776 () Bool)

(assert (= bs!1159776 (and d!1539617 d!1539601)))

(assert (=> bs!1159776 (not (= lambda!233416 lambda!233348))))

(declare-fun bs!1159777 () Bool)

(assert (= bs!1159777 (and d!1539617 d!1539593)))

(assert (=> bs!1159777 (not (= lambda!233416 lambda!233342))))

(declare-fun bs!1159778 () Bool)

(assert (= bs!1159778 (and d!1539617 d!1539567)))

(assert (=> bs!1159778 (not (= lambda!233416 lambda!233339))))

(assert (=> d!1539617 true))

(assert (=> d!1539617 (= (allKeysSameHashInMap!2381 lm!2473 hashF!1559) (forall!12361 (toList!7031 lm!2473) lambda!233416))))

(declare-fun bs!1159779 () Bool)

(assert (= bs!1159779 d!1539617))

(declare-fun m!5792162 () Bool)

(assert (=> bs!1159779 m!5792162))

(assert (=> b!4805279 d!1539617))

(declare-fun d!1539619 () Bool)

(declare-fun res!2044485 () Bool)

(declare-fun e!3001181 () Bool)

(assert (=> d!1539619 (=> res!2044485 e!3001181)))

(assert (=> d!1539619 (= res!2044485 ((_ is Nil!54363) (toList!7031 lm!2473)))))

(assert (=> d!1539619 (= (forall!12361 (toList!7031 lm!2473) lambda!233313) e!3001181)))

(declare-fun b!4805604 () Bool)

(declare-fun e!3001182 () Bool)

(assert (=> b!4805604 (= e!3001181 e!3001182)))

(declare-fun res!2044486 () Bool)

(assert (=> b!4805604 (=> (not res!2044486) (not e!3001182))))

(declare-fun dynLambda!22107 (Int tuple2!57074) Bool)

(assert (=> b!4805604 (= res!2044486 (dynLambda!22107 lambda!233313 (h!60795 (toList!7031 lm!2473))))))

(declare-fun b!4805605 () Bool)

(assert (=> b!4805605 (= e!3001182 (forall!12361 (t!361937 (toList!7031 lm!2473)) lambda!233313))))

(assert (= (and d!1539619 (not res!2044485)) b!4805604))

(assert (= (and b!4805604 res!2044486) b!4805605))

(declare-fun b_lambda!188093 () Bool)

(assert (=> (not b_lambda!188093) (not b!4805604)))

(declare-fun m!5792164 () Bool)

(assert (=> b!4805604 m!5792164))

(declare-fun m!5792166 () Bool)

(assert (=> b!4805605 m!5792166))

(assert (=> start!496414 d!1539619))

(declare-fun d!1539621 () Bool)

(declare-fun isStrictlySorted!912 (List!54487) Bool)

(assert (=> d!1539621 (= (inv!69955 lm!2473) (isStrictlySorted!912 (toList!7031 lm!2473)))))

(declare-fun bs!1159780 () Bool)

(assert (= bs!1159780 d!1539621))

(declare-fun m!5792168 () Bool)

(assert (=> bs!1159780 m!5792168))

(assert (=> start!496414 d!1539621))

(declare-fun d!1539623 () Bool)

(assert (=> d!1539623 (= (apply!13057 lt!1959408 key!5896) (get!18588 (getValueByKey!2422 (toList!7032 lt!1959408) key!5896)))))

(declare-fun bs!1159781 () Bool)

(assert (= bs!1159781 d!1539623))

(declare-fun m!5792170 () Bool)

(assert (=> bs!1159781 m!5792170))

(assert (=> bs!1159781 m!5792170))

(declare-fun m!5792172 () Bool)

(assert (=> bs!1159781 m!5792172))

(assert (=> b!4805281 d!1539623))

(declare-fun bs!1159782 () Bool)

(declare-fun d!1539625 () Bool)

(assert (= bs!1159782 (and d!1539625 d!1539617)))

(declare-fun lambda!233419 () Int)

(assert (=> bs!1159782 (not (= lambda!233419 lambda!233416))))

(declare-fun bs!1159783 () Bool)

(assert (= bs!1159783 (and d!1539625 start!496414)))

(assert (=> bs!1159783 (= lambda!233419 lambda!233313)))

(declare-fun bs!1159784 () Bool)

(assert (= bs!1159784 (and d!1539625 d!1539605)))

(assert (=> bs!1159784 (= lambda!233419 lambda!233349)))

(declare-fun bs!1159785 () Bool)

(assert (= bs!1159785 (and d!1539625 d!1539595)))

(assert (=> bs!1159785 (= lambda!233419 lambda!233345)))

(declare-fun bs!1159786 () Bool)

(assert (= bs!1159786 (and d!1539625 d!1539601)))

(assert (=> bs!1159786 (= lambda!233419 lambda!233348)))

(declare-fun bs!1159787 () Bool)

(assert (= bs!1159787 (and d!1539625 d!1539593)))

(assert (=> bs!1159787 (= lambda!233419 lambda!233342)))

(declare-fun bs!1159788 () Bool)

(assert (= bs!1159788 (and d!1539625 d!1539567)))

(assert (=> bs!1159788 (= lambda!233419 lambda!233339)))

(assert (=> d!1539625 (= (apply!13057 (extractMap!2503 (toList!7031 lt!1959405)) key!5896) value!3111)))

(declare-fun lt!1959717 () Unit!141197)

(declare-fun choose!34795 (ListLongMap!5453 K!15929 V!16175 Hashable!6976) Unit!141197)

(assert (=> d!1539625 (= lt!1959717 (choose!34795 lt!1959405 key!5896 value!3111 hashF!1559))))

(assert (=> d!1539625 (forall!12361 (toList!7031 lt!1959405) lambda!233419)))

(assert (=> d!1539625 (= (lemmaExtractMapPreservesMapping!48 lt!1959405 key!5896 value!3111 hashF!1559) lt!1959717)))

(declare-fun bs!1159789 () Bool)

(assert (= bs!1159789 d!1539625))

(assert (=> bs!1159789 m!5791646))

(assert (=> bs!1159789 m!5791646))

(declare-fun m!5792174 () Bool)

(assert (=> bs!1159789 m!5792174))

(declare-fun m!5792176 () Bool)

(assert (=> bs!1159789 m!5792176))

(declare-fun m!5792178 () Bool)

(assert (=> bs!1159789 m!5792178))

(assert (=> b!4805281 d!1539625))

(declare-fun bs!1159790 () Bool)

(declare-fun d!1539627 () Bool)

(assert (= bs!1159790 (and d!1539627 d!1539617)))

(declare-fun lambda!233422 () Int)

(assert (=> bs!1159790 (not (= lambda!233422 lambda!233416))))

(declare-fun bs!1159791 () Bool)

(assert (= bs!1159791 (and d!1539627 d!1539605)))

(assert (=> bs!1159791 (= lambda!233422 lambda!233349)))

(declare-fun bs!1159792 () Bool)

(assert (= bs!1159792 (and d!1539627 d!1539595)))

(assert (=> bs!1159792 (= lambda!233422 lambda!233345)))

(declare-fun bs!1159793 () Bool)

(assert (= bs!1159793 (and d!1539627 d!1539601)))

(assert (=> bs!1159793 (= lambda!233422 lambda!233348)))

(declare-fun bs!1159794 () Bool)

(assert (= bs!1159794 (and d!1539627 d!1539593)))

(assert (=> bs!1159794 (= lambda!233422 lambda!233342)))

(declare-fun bs!1159795 () Bool)

(assert (= bs!1159795 (and d!1539627 d!1539567)))

(assert (=> bs!1159795 (= lambda!233422 lambda!233339)))

(declare-fun bs!1159796 () Bool)

(assert (= bs!1159796 (and d!1539627 d!1539625)))

(assert (=> bs!1159796 (= lambda!233422 lambda!233419)))

(declare-fun bs!1159797 () Bool)

(assert (= bs!1159797 (and d!1539627 start!496414)))

(assert (=> bs!1159797 (= lambda!233422 lambda!233313)))

(assert (=> d!1539627 (contains!18026 (extractMap!2503 (toList!7031 lt!1959405)) key!5896)))

(declare-fun lt!1959720 () Unit!141197)

(declare-fun choose!34796 (ListLongMap!5453 K!15929 Hashable!6976) Unit!141197)

(assert (=> d!1539627 (= lt!1959720 (choose!34796 lt!1959405 key!5896 hashF!1559))))

(assert (=> d!1539627 (forall!12361 (toList!7031 lt!1959405) lambda!233422)))

(assert (=> d!1539627 (= (lemmaListContainsThenExtractedMapContains!726 lt!1959405 key!5896 hashF!1559) lt!1959720)))

(declare-fun bs!1159798 () Bool)

(assert (= bs!1159798 d!1539627))

(assert (=> bs!1159798 m!5791646))

(assert (=> bs!1159798 m!5791646))

(assert (=> bs!1159798 m!5791648))

(declare-fun m!5792180 () Bool)

(assert (=> bs!1159798 m!5792180))

(declare-fun m!5792182 () Bool)

(assert (=> bs!1159798 m!5792182))

(assert (=> b!4805281 d!1539627))

(declare-fun d!1539629 () Bool)

(declare-fun e!3001184 () Bool)

(assert (=> d!1539629 e!3001184))

(declare-fun res!2044487 () Bool)

(assert (=> d!1539629 (=> res!2044487 e!3001184)))

(declare-fun lt!1959722 () Bool)

(assert (=> d!1539629 (= res!2044487 (not lt!1959722))))

(declare-fun lt!1959721 () Bool)

(assert (=> d!1539629 (= lt!1959722 lt!1959721)))

(declare-fun lt!1959724 () Unit!141197)

(declare-fun e!3001183 () Unit!141197)

(assert (=> d!1539629 (= lt!1959724 e!3001183)))

(declare-fun c!819227 () Bool)

(assert (=> d!1539629 (= c!819227 lt!1959721)))

(assert (=> d!1539629 (= lt!1959721 (containsKey!4074 (toList!7031 lt!1959405) lt!1959401))))

(assert (=> d!1539629 (= (contains!18027 lt!1959405 lt!1959401) lt!1959722)))

(declare-fun b!4805606 () Bool)

(declare-fun lt!1959723 () Unit!141197)

(assert (=> b!4805606 (= e!3001183 lt!1959723)))

(assert (=> b!4805606 (= lt!1959723 (lemmaContainsKeyImpliesGetValueByKeyDefined!2214 (toList!7031 lt!1959405) lt!1959401))))

(assert (=> b!4805606 (isDefined!10365 (getValueByKey!2423 (toList!7031 lt!1959405) lt!1959401))))

(declare-fun b!4805607 () Bool)

(declare-fun Unit!141243 () Unit!141197)

(assert (=> b!4805607 (= e!3001183 Unit!141243)))

(declare-fun b!4805608 () Bool)

(assert (=> b!4805608 (= e!3001184 (isDefined!10365 (getValueByKey!2423 (toList!7031 lt!1959405) lt!1959401)))))

(assert (= (and d!1539629 c!819227) b!4805606))

(assert (= (and d!1539629 (not c!819227)) b!4805607))

(assert (= (and d!1539629 (not res!2044487)) b!4805608))

(declare-fun m!5792184 () Bool)

(assert (=> d!1539629 m!5792184))

(declare-fun m!5792186 () Bool)

(assert (=> b!4805606 m!5792186))

(declare-fun m!5792188 () Bool)

(assert (=> b!4805606 m!5792188))

(assert (=> b!4805606 m!5792188))

(declare-fun m!5792190 () Bool)

(assert (=> b!4805606 m!5792190))

(assert (=> b!4805608 m!5792188))

(assert (=> b!4805608 m!5792188))

(assert (=> b!4805608 m!5792190))

(assert (=> b!4805281 d!1539629))

(declare-fun d!1539631 () Bool)

(declare-fun res!2044492 () Bool)

(declare-fun e!3001189 () Bool)

(assert (=> d!1539631 (=> res!2044492 e!3001189)))

(assert (=> d!1539631 (= res!2044492 (not ((_ is Cons!54362) (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(assert (=> d!1539631 (= (noDuplicateKeys!2374 (_2!31831 (h!60795 (toList!7031 lm!2473)))) e!3001189)))

(declare-fun b!4805613 () Bool)

(declare-fun e!3001190 () Bool)

(assert (=> b!4805613 (= e!3001189 e!3001190)))

(declare-fun res!2044493 () Bool)

(assert (=> b!4805613 (=> (not res!2044493) (not e!3001190))))

(assert (=> b!4805613 (= res!2044493 (not (containsKey!4070 (t!361936 (_2!31831 (h!60795 (toList!7031 lm!2473)))) (_1!31830 (h!60794 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))))

(declare-fun b!4805614 () Bool)

(assert (=> b!4805614 (= e!3001190 (noDuplicateKeys!2374 (t!361936 (_2!31831 (h!60795 (toList!7031 lm!2473))))))))

(assert (= (and d!1539631 (not res!2044492)) b!4805613))

(assert (= (and b!4805613 res!2044493) b!4805614))

(declare-fun m!5792192 () Bool)

(assert (=> b!4805613 m!5792192))

(declare-fun m!5792194 () Bool)

(assert (=> b!4805614 m!5792194))

(assert (=> b!4805281 d!1539631))

(declare-fun d!1539633 () Bool)

(declare-fun tail!9354 (List!54487) List!54487)

(assert (=> d!1539633 (= (tail!9352 lm!2473) (ListLongMap!5454 (tail!9354 (toList!7031 lm!2473))))))

(declare-fun bs!1159799 () Bool)

(assert (= bs!1159799 d!1539633))

(declare-fun m!5792196 () Bool)

(assert (=> bs!1159799 m!5792196))

(assert (=> b!4805281 d!1539633))

(declare-fun b!4805615 () Bool)

(declare-fun e!3001194 () Unit!141197)

(declare-fun lt!1959728 () Unit!141197)

(assert (=> b!4805615 (= e!3001194 lt!1959728)))

(declare-fun lt!1959725 () Unit!141197)

(assert (=> b!4805615 (= lt!1959725 (lemmaContainsKeyImpliesGetValueByKeyDefined!2213 (toList!7032 lt!1959408) key!5896))))

(assert (=> b!4805615 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959408) key!5896))))

(declare-fun lt!1959731 () Unit!141197)

(assert (=> b!4805615 (= lt!1959731 lt!1959725)))

(assert (=> b!4805615 (= lt!1959728 (lemmaInListThenGetKeysListContains!1107 (toList!7032 lt!1959408) key!5896))))

(declare-fun call!335592 () Bool)

(assert (=> b!4805615 call!335592))

(declare-fun b!4805616 () Bool)

(assert (=> b!4805616 false))

(declare-fun lt!1959727 () Unit!141197)

(declare-fun lt!1959730 () Unit!141197)

(assert (=> b!4805616 (= lt!1959727 lt!1959730)))

(assert (=> b!4805616 (containsKey!4073 (toList!7032 lt!1959408) key!5896)))

(assert (=> b!4805616 (= lt!1959730 (lemmaInGetKeysListThenContainsKey!1112 (toList!7032 lt!1959408) key!5896))))

(declare-fun e!3001195 () Unit!141197)

(declare-fun Unit!141244 () Unit!141197)

(assert (=> b!4805616 (= e!3001195 Unit!141244)))

(declare-fun b!4805617 () Bool)

(declare-fun e!3001192 () Bool)

(declare-fun e!3001191 () Bool)

(assert (=> b!4805617 (= e!3001192 e!3001191)))

(declare-fun res!2044496 () Bool)

(assert (=> b!4805617 (=> (not res!2044496) (not e!3001191))))

(assert (=> b!4805617 (= res!2044496 (isDefined!10364 (getValueByKey!2422 (toList!7032 lt!1959408) key!5896)))))

(declare-fun b!4805618 () Bool)

(declare-fun e!3001193 () List!54489)

(assert (=> b!4805618 (= e!3001193 (getKeysList!1112 (toList!7032 lt!1959408)))))

(declare-fun d!1539635 () Bool)

(assert (=> d!1539635 e!3001192))

(declare-fun res!2044494 () Bool)

(assert (=> d!1539635 (=> res!2044494 e!3001192)))

(declare-fun e!3001196 () Bool)

(assert (=> d!1539635 (= res!2044494 e!3001196)))

(declare-fun res!2044495 () Bool)

(assert (=> d!1539635 (=> (not res!2044495) (not e!3001196))))

(declare-fun lt!1959729 () Bool)

(assert (=> d!1539635 (= res!2044495 (not lt!1959729))))

(declare-fun lt!1959732 () Bool)

(assert (=> d!1539635 (= lt!1959729 lt!1959732)))

(declare-fun lt!1959726 () Unit!141197)

(assert (=> d!1539635 (= lt!1959726 e!3001194)))

(declare-fun c!819230 () Bool)

(assert (=> d!1539635 (= c!819230 lt!1959732)))

(assert (=> d!1539635 (= lt!1959732 (containsKey!4073 (toList!7032 lt!1959408) key!5896))))

(assert (=> d!1539635 (= (contains!18026 lt!1959408 key!5896) lt!1959729)))

(declare-fun bm!335587 () Bool)

(assert (=> bm!335587 (= call!335592 (contains!18029 e!3001193 key!5896))))

(declare-fun c!819228 () Bool)

(assert (=> bm!335587 (= c!819228 c!819230)))

(declare-fun b!4805619 () Bool)

(assert (=> b!4805619 (= e!3001193 (keys!19887 lt!1959408))))

(declare-fun b!4805620 () Bool)

(assert (=> b!4805620 (= e!3001194 e!3001195)))

(declare-fun c!819229 () Bool)

(assert (=> b!4805620 (= c!819229 call!335592)))

(declare-fun b!4805621 () Bool)

(assert (=> b!4805621 (= e!3001191 (contains!18029 (keys!19887 lt!1959408) key!5896))))

(declare-fun b!4805622 () Bool)

(declare-fun Unit!141245 () Unit!141197)

(assert (=> b!4805622 (= e!3001195 Unit!141245)))

(declare-fun b!4805623 () Bool)

(assert (=> b!4805623 (= e!3001196 (not (contains!18029 (keys!19887 lt!1959408) key!5896)))))

(assert (= (and d!1539635 c!819230) b!4805615))

(assert (= (and d!1539635 (not c!819230)) b!4805620))

(assert (= (and b!4805620 c!819229) b!4805616))

(assert (= (and b!4805620 (not c!819229)) b!4805622))

(assert (= (or b!4805615 b!4805620) bm!335587))

(assert (= (and bm!335587 c!819228) b!4805618))

(assert (= (and bm!335587 (not c!819228)) b!4805619))

(assert (= (and d!1539635 res!2044495) b!4805623))

(assert (= (and d!1539635 (not res!2044494)) b!4805617))

(assert (= (and b!4805617 res!2044496) b!4805621))

(declare-fun m!5792198 () Bool)

(assert (=> d!1539635 m!5792198))

(declare-fun m!5792200 () Bool)

(assert (=> b!4805623 m!5792200))

(assert (=> b!4805623 m!5792200))

(declare-fun m!5792202 () Bool)

(assert (=> b!4805623 m!5792202))

(declare-fun m!5792204 () Bool)

(assert (=> bm!335587 m!5792204))

(assert (=> b!4805616 m!5792198))

(declare-fun m!5792206 () Bool)

(assert (=> b!4805616 m!5792206))

(declare-fun m!5792208 () Bool)

(assert (=> b!4805618 m!5792208))

(assert (=> b!4805619 m!5792200))

(assert (=> b!4805621 m!5792200))

(assert (=> b!4805621 m!5792200))

(assert (=> b!4805621 m!5792202))

(declare-fun m!5792210 () Bool)

(assert (=> b!4805615 m!5792210))

(assert (=> b!4805615 m!5792170))

(assert (=> b!4805615 m!5792170))

(declare-fun m!5792212 () Bool)

(assert (=> b!4805615 m!5792212))

(declare-fun m!5792214 () Bool)

(assert (=> b!4805615 m!5792214))

(assert (=> b!4805617 m!5792170))

(assert (=> b!4805617 m!5792170))

(assert (=> b!4805617 m!5792212))

(assert (=> b!4805281 d!1539635))

(declare-fun bs!1159800 () Bool)

(declare-fun d!1539637 () Bool)

(assert (= bs!1159800 (and d!1539637 d!1539617)))

(declare-fun lambda!233423 () Int)

(assert (=> bs!1159800 (not (= lambda!233423 lambda!233416))))

(declare-fun bs!1159801 () Bool)

(assert (= bs!1159801 (and d!1539637 d!1539627)))

(assert (=> bs!1159801 (= lambda!233423 lambda!233422)))

(declare-fun bs!1159802 () Bool)

(assert (= bs!1159802 (and d!1539637 d!1539605)))

(assert (=> bs!1159802 (= lambda!233423 lambda!233349)))

(declare-fun bs!1159803 () Bool)

(assert (= bs!1159803 (and d!1539637 d!1539595)))

(assert (=> bs!1159803 (= lambda!233423 lambda!233345)))

(declare-fun bs!1159804 () Bool)

(assert (= bs!1159804 (and d!1539637 d!1539601)))

(assert (=> bs!1159804 (= lambda!233423 lambda!233348)))

(declare-fun bs!1159805 () Bool)

(assert (= bs!1159805 (and d!1539637 d!1539593)))

(assert (=> bs!1159805 (= lambda!233423 lambda!233342)))

(declare-fun bs!1159806 () Bool)

(assert (= bs!1159806 (and d!1539637 d!1539567)))

(assert (=> bs!1159806 (= lambda!233423 lambda!233339)))

(declare-fun bs!1159807 () Bool)

(assert (= bs!1159807 (and d!1539637 d!1539625)))

(assert (=> bs!1159807 (= lambda!233423 lambda!233419)))

(declare-fun bs!1159808 () Bool)

(assert (= bs!1159808 (and d!1539637 start!496414)))

(assert (=> bs!1159808 (= lambda!233423 lambda!233313)))

(declare-fun lt!1959733 () ListMap!6503)

(assert (=> d!1539637 (invariantList!1766 (toList!7032 lt!1959733))))

(declare-fun e!3001197 () ListMap!6503)

(assert (=> d!1539637 (= lt!1959733 e!3001197)))

(declare-fun c!819231 () Bool)

(assert (=> d!1539637 (= c!819231 ((_ is Cons!54363) (t!361937 (toList!7031 lm!2473))))))

(assert (=> d!1539637 (forall!12361 (t!361937 (toList!7031 lm!2473)) lambda!233423)))

(assert (=> d!1539637 (= (extractMap!2503 (t!361937 (toList!7031 lm!2473))) lt!1959733)))

(declare-fun b!4805624 () Bool)

(assert (=> b!4805624 (= e!3001197 (addToMapMapFromBucket!1743 (_2!31831 (h!60795 (t!361937 (toList!7031 lm!2473)))) (extractMap!2503 (t!361937 (t!361937 (toList!7031 lm!2473))))))))

(declare-fun b!4805625 () Bool)

(assert (=> b!4805625 (= e!3001197 (ListMap!6504 Nil!54362))))

(assert (= (and d!1539637 c!819231) b!4805624))

(assert (= (and d!1539637 (not c!819231)) b!4805625))

(declare-fun m!5792216 () Bool)

(assert (=> d!1539637 m!5792216))

(declare-fun m!5792218 () Bool)

(assert (=> d!1539637 m!5792218))

(declare-fun m!5792220 () Bool)

(assert (=> b!4805624 m!5792220))

(assert (=> b!4805624 m!5792220))

(declare-fun m!5792222 () Bool)

(assert (=> b!4805624 m!5792222))

(assert (=> b!4805281 d!1539637))

(assert (=> b!4805281 d!1539605))

(declare-fun b!4805630 () Bool)

(declare-fun e!3001200 () Bool)

(declare-fun tp!1358539 () Bool)

(declare-fun tp!1358540 () Bool)

(assert (=> b!4805630 (= e!3001200 (and tp!1358539 tp!1358540))))

(assert (=> b!4805273 (= tp!1358528 e!3001200)))

(assert (= (and b!4805273 ((_ is Cons!54363) (toList!7031 lm!2473))) b!4805630))

(declare-fun b_lambda!188095 () Bool)

(assert (= b_lambda!188093 (or start!496414 b_lambda!188095)))

(declare-fun bs!1159809 () Bool)

(declare-fun d!1539639 () Bool)

(assert (= bs!1159809 (and d!1539639 start!496414)))

(assert (=> bs!1159809 (= (dynLambda!22107 lambda!233313 (h!60795 (toList!7031 lm!2473))) (noDuplicateKeys!2374 (_2!31831 (h!60795 (toList!7031 lm!2473)))))))

(assert (=> bs!1159809 m!5791700))

(assert (=> b!4805604 d!1539639))

(check-sat tp_is_empty!33765 (not b!4805624) (not b!4805436) (not b!4805440) (not b!4805401) (not d!1539633) (not b!4805520) (not b!4805439) (not b!4805492) (not b!4805630) (not b!4805403) tp_is_empty!33767 (not b!4805541) (not bm!335564) (not b!4805552) (not b!4805595) (not d!1539525) (not bm!335587) (not b!4805406) (not b!4805542) (not b!4805405) (not b!4805444) (not d!1539637) (not b!4805616) (not d!1539621) (not b!4805523) (not b!4805509) (not b!4805537) (not d!1539595) (not b!4805437) (not d!1539615) (not bm!335568) (not b!4805367) (not b!4805618) (not b!4805545) (not b!4805544) (not d!1539527) (not bm!335586) (not b!4805533) (not b!4805535) (not bs!1159809) (not d!1539543) (not b!4805621) (not b!4805608) (not bm!335584) (not b!4805548) (not b!4805615) (not b!4805343) (not b!4805591) (not b!4805605) (not d!1539627) (not b!4805546) (not b!4805442) (not b!4805399) (not d!1539599) (not b!4805339) (not d!1539635) (not b!4805438) (not b!4805341) (not b!4805614) (not b!4805539) (not b!4805550) (not b!4805511) (not b!4805613) (not d!1539567) (not bm!335567) (not b!4805623) (not b!4805606) (not d!1539537) (not b!4805594) (not b_lambda!188095) (not d!1539609) (not b!4805536) (not b!4805518) (not b!4805593) (not b!4805335) (not b!4805530) (not d!1539629) (not d!1539541) (not b!4805617) (not b!4805336) (not b!4805532) (not d!1539601) (not d!1539593) (not d!1539625) (not b!4805619) (not d!1539605) (not b!4805337) (not b!4805534) (not d!1539587) (not d!1539607) (not d!1539603) (not d!1539617) (not bm!335558) (not b!4805531) (not d!1539623) (not d!1539507) (not b!4805547) (not d!1539565) (not bm!335585) (not b!4805338) (not d!1539539))
(check-sat)
