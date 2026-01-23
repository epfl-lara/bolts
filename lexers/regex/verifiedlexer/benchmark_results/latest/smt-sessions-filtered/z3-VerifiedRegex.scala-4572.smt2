; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241528 () Bool)

(assert start!241528)

(declare-fun b!2476391 () Bool)

(declare-fun b_free!71913 () Bool)

(declare-fun b_next!72617 () Bool)

(assert (=> b!2476391 (= b_free!71913 (not b_next!72617))))

(declare-fun tp!792119 () Bool)

(declare-fun b_and!188137 () Bool)

(assert (=> b!2476391 (= tp!792119 b_and!188137)))

(declare-fun b!2476393 () Bool)

(declare-fun b_free!71915 () Bool)

(declare-fun b_next!72619 () Bool)

(assert (=> b!2476393 (= b_free!71915 (not b_next!72619))))

(declare-fun tp!792125 () Bool)

(declare-fun b_and!188139 () Bool)

(assert (=> b!2476393 (= tp!792125 b_and!188139)))

(declare-fun b!2476386 () Bool)

(declare-fun e!1571224 () Bool)

(declare-fun tp!792120 () Bool)

(declare-fun mapRes!15207 () Bool)

(assert (=> b!2476386 (= e!1571224 (and tp!792120 mapRes!15207))))

(declare-fun condMapEmpty!15207 () Bool)

(declare-datatypes ((array!11485 0))(
  ( (array!11486 (arr!5118 (Array (_ BitVec 32) (_ BitVec 64))) (size!22537 (_ BitVec 32))) )
))
(declare-datatypes ((K!5245 0))(
  ( (K!5246 (val!8671 Int)) )
))
(declare-datatypes ((V!5447 0))(
  ( (V!5448 (val!8672 Int)) )
))
(declare-datatypes ((tuple2!28322 0))(
  ( (tuple2!28323 (_1!16702 K!5245) (_2!16702 V!5447)) )
))
(declare-datatypes ((List!29032 0))(
  ( (Nil!28932) (Cons!28932 (h!34333 tuple2!28322) (t!210667 List!29032)) )
))
(declare-datatypes ((array!11487 0))(
  ( (array!11488 (arr!5119 (Array (_ BitVec 32) List!29032)) (size!22538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6528 0))(
  ( (LongMapFixedSize!6529 (defaultEntry!3638 Int) (mask!8385 (_ BitVec 32)) (extraKeys!3512 (_ BitVec 32)) (zeroValue!3522 List!29032) (minValue!3522 List!29032) (_size!6575 (_ BitVec 32)) (_keys!3561 array!11485) (_values!3544 array!11487) (_vacant!3325 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12873 0))(
  ( (Cell!12874 (v!31192 LongMapFixedSize!6528)) )
))
(declare-datatypes ((MutLongMap!3264 0))(
  ( (LongMap!3264 (underlying!6735 Cell!12873)) (MutLongMapExt!3263 (__x!18698 Int)) )
))
(declare-datatypes ((Cell!12875 0))(
  ( (Cell!12876 (v!31193 MutLongMap!3264)) )
))
(declare-datatypes ((Hashable!3174 0))(
  ( (HashableExt!3173 (__x!18699 Int)) )
))
(declare-datatypes ((MutableMap!3174 0))(
  ( (MutableMapExt!3173 (__x!18700 Int)) (HashMap!3174 (underlying!6736 Cell!12875) (hashF!5105 Hashable!3174) (_size!6576 (_ BitVec 32)) (defaultValue!3336 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3174)

(declare-fun mapDefault!15207 () List!29032)

(assert (=> b!2476386 (= condMapEmpty!15207 (= (arr!5119 (_values!3544 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29032)) mapDefault!15207)))))

(declare-fun b!2476387 () Bool)

(declare-fun e!1571225 () Bool)

(declare-fun key!7256 () K!5245)

(get-info :version)

(declare-datatypes ((tuple2!28324 0))(
  ( (tuple2!28325 (_1!16703 Bool) (_2!16703 MutableMap!3174)) )
))
(declare-fun remove!76 (MutableMap!3174 K!5245) tuple2!28324)

(assert (=> b!2476387 (= e!1571225 (not ((_ is HashMap!3174) (_2!16703 (remove!76 thiss!47892 key!7256)))))))

(declare-fun b!2476388 () Bool)

(declare-fun e!1571223 () Bool)

(declare-fun e!1571226 () Bool)

(assert (=> b!2476388 (= e!1571223 e!1571226)))

(declare-fun b!2476389 () Bool)

(declare-fun e!1571221 () Bool)

(assert (=> b!2476389 (= e!1571221 e!1571223)))

(declare-fun b!2476390 () Bool)

(declare-fun res!1048417 () Bool)

(assert (=> b!2476390 (=> (not res!1048417) (not e!1571225))))

(assert (=> b!2476390 (= res!1048417 (not ((_ is MutableMapExt!3173) thiss!47892)))))

(declare-fun tp!792122 () Bool)

(declare-fun tp!792121 () Bool)

(declare-fun array_inv!3671 (array!11485) Bool)

(declare-fun array_inv!3672 (array!11487) Bool)

(assert (=> b!2476391 (= e!1571226 (and tp!792119 tp!792122 tp!792121 (array_inv!3671 (_keys!3561 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) (array_inv!3672 (_values!3544 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) e!1571224))))

(declare-fun b!2476392 () Bool)

(declare-fun e!1571222 () Bool)

(declare-fun lt!884273 () MutLongMap!3264)

(assert (=> b!2476392 (= e!1571222 (and e!1571221 ((_ is LongMap!3264) lt!884273)))))

(assert (=> b!2476392 (= lt!884273 (v!31193 (underlying!6736 thiss!47892)))))

(declare-fun e!1571228 () Bool)

(assert (=> b!2476393 (= e!1571228 (and e!1571222 tp!792125))))

(declare-fun mapNonEmpty!15207 () Bool)

(declare-fun tp!792124 () Bool)

(declare-fun tp!792123 () Bool)

(assert (=> mapNonEmpty!15207 (= mapRes!15207 (and tp!792124 tp!792123))))

(declare-fun mapRest!15207 () (Array (_ BitVec 32) List!29032))

(declare-fun mapValue!15207 () List!29032)

(declare-fun mapKey!15207 () (_ BitVec 32))

(assert (=> mapNonEmpty!15207 (= (arr!5119 (_values!3544 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) (store mapRest!15207 mapKey!15207 mapValue!15207))))

(declare-fun mapIsEmpty!15207 () Bool)

(assert (=> mapIsEmpty!15207 mapRes!15207))

(declare-fun res!1048418 () Bool)

(assert (=> start!241528 (=> (not res!1048418) (not e!1571225))))

(declare-fun valid!2464 (MutableMap!3174) Bool)

(assert (=> start!241528 (= res!1048418 (valid!2464 thiss!47892))))

(assert (=> start!241528 e!1571225))

(assert (=> start!241528 e!1571228))

(declare-fun tp_is_empty!12023 () Bool)

(assert (=> start!241528 tp_is_empty!12023))

(assert (= (and start!241528 res!1048418) b!2476390))

(assert (= (and b!2476390 res!1048417) b!2476387))

(assert (= (and b!2476386 condMapEmpty!15207) mapIsEmpty!15207))

(assert (= (and b!2476386 (not condMapEmpty!15207)) mapNonEmpty!15207))

(assert (= b!2476391 b!2476386))

(assert (= b!2476388 b!2476391))

(assert (= b!2476389 b!2476388))

(assert (= (and b!2476392 ((_ is LongMap!3264) (v!31193 (underlying!6736 thiss!47892)))) b!2476389))

(assert (= b!2476393 b!2476392))

(assert (= (and start!241528 ((_ is HashMap!3174) thiss!47892)) b!2476393))

(declare-fun m!2844305 () Bool)

(assert (=> b!2476387 m!2844305))

(declare-fun m!2844307 () Bool)

(assert (=> b!2476391 m!2844307))

(declare-fun m!2844309 () Bool)

(assert (=> b!2476391 m!2844309))

(declare-fun m!2844311 () Bool)

(assert (=> mapNonEmpty!15207 m!2844311))

(declare-fun m!2844313 () Bool)

(assert (=> start!241528 m!2844313))

(check-sat (not b!2476391) (not b!2476387) tp_is_empty!12023 (not mapNonEmpty!15207) b_and!188137 (not b_next!72619) (not start!241528) (not b_next!72617) (not b!2476386) b_and!188139)
(check-sat b_and!188139 b_and!188137 (not b_next!72619) (not b_next!72617))
(get-model)

(declare-fun d!712257 () Bool)

(declare-fun c!394087 () Bool)

(assert (=> d!712257 (= c!394087 ((_ is MutableMapExt!3173) thiss!47892))))

(declare-fun e!1571231 () Bool)

(assert (=> d!712257 (= (valid!2464 thiss!47892) e!1571231)))

(declare-fun b!2476398 () Bool)

(declare-fun valid!2465 (MutableMap!3174) Bool)

(assert (=> b!2476398 (= e!1571231 (valid!2465 thiss!47892))))

(declare-fun b!2476399 () Bool)

(declare-fun valid!2466 (MutableMap!3174) Bool)

(assert (=> b!2476399 (= e!1571231 (valid!2466 thiss!47892))))

(assert (= (and d!712257 c!394087) b!2476398))

(assert (= (and d!712257 (not c!394087)) b!2476399))

(declare-fun m!2844315 () Bool)

(assert (=> b!2476398 m!2844315))

(declare-fun m!2844317 () Bool)

(assert (=> b!2476399 m!2844317))

(assert (=> start!241528 d!712257))

(declare-fun d!712259 () Bool)

(declare-fun e!1571247 () Bool)

(assert (=> d!712259 e!1571247))

(declare-fun res!1048425 () Bool)

(assert (=> d!712259 (=> (not res!1048425) (not e!1571247))))

(declare-fun lt!884338 () tuple2!28324)

(assert (=> d!712259 (= res!1048425 ((_ is HashMap!3174) (_2!16703 lt!884338)))))

(declare-fun e!1571245 () tuple2!28324)

(assert (=> d!712259 (= lt!884338 e!1571245)))

(declare-fun c!394096 () Bool)

(declare-fun lt!884336 () Bool)

(assert (=> d!712259 (= c!394096 (not lt!884336))))

(declare-fun contains!4935 (MutableMap!3174 K!5245) Bool)

(assert (=> d!712259 (= lt!884336 (contains!4935 thiss!47892 key!7256))))

(assert (=> d!712259 (valid!2466 thiss!47892)))

(assert (=> d!712259 (= (remove!76 thiss!47892 key!7256) lt!884338)))

(declare-fun bm!151590 () Bool)

(declare-fun call!151598 () Bool)

(declare-datatypes ((Unit!42290 0))(
  ( (Unit!42291) )
))
(declare-datatypes ((tuple2!28326 0))(
  ( (tuple2!28327 (_1!16704 Unit!42290) (_2!16704 MutableMap!3174)) )
))
(declare-fun lt!884359 () tuple2!28326)

(assert (=> bm!151590 (= call!151598 (valid!2466 (_2!16704 lt!884359)))))

(declare-fun b!2476422 () Bool)

(declare-fun e!1571246 () Bool)

(assert (=> b!2476422 (= e!1571247 e!1571246)))

(declare-fun c!394098 () Bool)

(assert (=> b!2476422 (= c!394098 (_1!16703 lt!884338))))

(declare-fun b!2476423 () Bool)

(declare-datatypes ((ListMap!935 0))(
  ( (ListMap!936 (toList!1443 List!29032)) )
))
(declare-fun call!151602 () ListMap!935)

(declare-fun call!151596 () ListMap!935)

(declare-fun eq!58 (ListMap!935 ListMap!935) Bool)

(assert (=> b!2476423 (eq!58 call!151602 call!151596)))

(declare-fun lt!884361 () Unit!42290)

(declare-fun lt!884358 () Unit!42290)

(assert (=> b!2476423 (= lt!884361 lt!884358)))

(declare-fun lt!884335 () List!29032)

(declare-datatypes ((tuple2!28328 0))(
  ( (tuple2!28329 (_1!16705 (_ BitVec 64)) (_2!16705 List!29032)) )
))
(declare-datatypes ((List!29033 0))(
  ( (Nil!28933) (Cons!28933 (h!34334 tuple2!28328) (t!210668 List!29033)) )
))
(declare-datatypes ((ListLongMap!381 0))(
  ( (ListLongMap!382 (toList!1444 List!29033)) )
))
(declare-fun lt!884354 () ListLongMap!381)

(declare-fun call!151600 () ListMap!935)

(declare-fun lt!884362 () (_ BitVec 64))

(declare-fun extractMap!134 (List!29033) ListMap!935)

(declare-fun +!63 (ListLongMap!381 tuple2!28328) ListLongMap!381)

(declare-fun -!110 (ListMap!935 K!5245) ListMap!935)

(assert (=> b!2476423 (eq!58 (extractMap!134 (toList!1444 (+!63 lt!884354 (tuple2!28329 lt!884362 lt!884335)))) (-!110 call!151600 key!7256))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!20 (ListLongMap!381 (_ BitVec 64) List!29032 K!5245 Hashable!3174) Unit!42290)

(assert (=> b!2476423 (= lt!884358 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!20 lt!884354 lt!884362 lt!884335 key!7256 (hashF!5105 (_2!16704 lt!884359))))))

(declare-fun lt!884363 () Unit!42290)

(declare-fun Unit!42292 () Unit!42290)

(assert (=> b!2476423 (= lt!884363 Unit!42292)))

(declare-fun lt!884344 () ListMap!935)

(declare-fun contains!4936 (ListMap!935 K!5245) Bool)

(assert (=> b!2476423 (contains!4936 lt!884344 key!7256)))

(declare-fun lt!884356 () Unit!42290)

(declare-fun Unit!42293 () Unit!42290)

(assert (=> b!2476423 (= lt!884356 Unit!42293)))

(assert (=> b!2476423 call!151598))

(declare-fun lt!884349 () Unit!42290)

(declare-fun Unit!42294 () Unit!42290)

(assert (=> b!2476423 (= lt!884349 Unit!42294)))

(declare-fun allKeysSameHashInMap!124 (ListLongMap!381 Hashable!3174) Bool)

(declare-fun map!6011 (MutLongMap!3264) ListLongMap!381)

(assert (=> b!2476423 (allKeysSameHashInMap!124 (map!6011 (v!31193 (underlying!6736 (_2!16704 lt!884359)))) (hashF!5105 (_2!16704 lt!884359)))))

(declare-fun lt!884347 () Unit!42290)

(declare-fun Unit!42295 () Unit!42290)

(assert (=> b!2476423 (= lt!884347 Unit!42295)))

(declare-fun lambda!93394 () Int)

(declare-fun forall!5921 (List!29033 Int) Bool)

(assert (=> b!2476423 (forall!5921 (toList!1444 (map!6011 (v!31193 (underlying!6736 (_2!16704 lt!884359))))) lambda!93394)))

(declare-fun lt!884348 () Unit!42290)

(declare-fun lt!884334 () Unit!42290)

(assert (=> b!2476423 (= lt!884348 lt!884334)))

(declare-fun e!1571248 () Bool)

(assert (=> b!2476423 e!1571248))

(declare-fun res!1048427 () Bool)

(assert (=> b!2476423 (=> (not res!1048427) (not e!1571248))))

(declare-fun lt!884352 () ListLongMap!381)

(assert (=> b!2476423 (= res!1048427 (forall!5921 (toList!1444 lt!884352) lambda!93394))))

(assert (=> b!2476423 (= lt!884352 (+!63 lt!884354 (tuple2!28329 lt!884362 lt!884335)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!34 (ListLongMap!381 (_ BitVec 64) List!29032 Hashable!3174) Unit!42290)

(assert (=> b!2476423 (= lt!884334 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!34 lt!884354 lt!884362 lt!884335 (hashF!5105 (_2!16704 lt!884359))))))

(declare-fun lt!884342 () Unit!42290)

(declare-fun lt!884357 () Unit!42290)

(assert (=> b!2476423 (= lt!884342 lt!884357)))

(declare-fun lt!884339 () List!29032)

(declare-fun allKeysSameHash!38 (List!29032 (_ BitVec 64) Hashable!3174) Bool)

(declare-fun removePairForKey!34 (List!29032 K!5245) List!29032)

(assert (=> b!2476423 (allKeysSameHash!38 (removePairForKey!34 lt!884339 key!7256) lt!884362 (hashF!5105 (_2!16704 lt!884359)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!34 (List!29032 K!5245 (_ BitVec 64) Hashable!3174) Unit!42290)

(assert (=> b!2476423 (= lt!884357 (lemmaRemovePairForKeyPreservesHash!34 lt!884339 key!7256 lt!884362 (hashF!5105 (_2!16704 lt!884359))))))

(declare-fun lt!884341 () Unit!42290)

(declare-fun lt!884350 () Unit!42290)

(assert (=> b!2476423 (= lt!884341 lt!884350)))

(assert (=> b!2476423 (allKeysSameHash!38 lt!884339 lt!884362 (hashF!5105 (_2!16704 lt!884359)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!34 (List!29033 (_ BitVec 64) List!29032 Hashable!3174) Unit!42290)

(assert (=> b!2476423 (= lt!884350 (lemmaInLongMapAllKeySameHashThenForTuple!34 (toList!1444 lt!884354) lt!884362 lt!884339 (hashF!5105 (_2!16704 lt!884359))))))

(declare-fun e!1571244 () Unit!42290)

(declare-fun Unit!42296 () Unit!42290)

(assert (=> b!2476423 (= e!1571244 Unit!42296)))

(declare-fun b!2476424 () Bool)

(declare-fun call!151595 () Bool)

(assert (=> b!2476424 (= e!1571246 call!151595)))

(declare-fun b!2476425 () Bool)

(assert (=> b!2476425 (= e!1571246 call!151595)))

(declare-fun b!2476426 () Bool)

(declare-fun e!1571249 () ListMap!935)

(declare-fun call!151597 () ListMap!935)

(assert (=> b!2476426 (= e!1571249 (-!110 call!151597 key!7256))))

(declare-fun bm!151591 () Bool)

(assert (=> bm!151591 (= call!151596 (-!110 (ite c!394096 call!151600 lt!884344) key!7256))))

(declare-fun b!2476427 () Bool)

(assert (=> b!2476427 (= e!1571248 (allKeysSameHashInMap!124 lt!884352 (hashF!5105 (_2!16704 lt!884359))))))

(declare-fun bm!151592 () Bool)

(declare-fun map!6012 (MutableMap!3174) ListMap!935)

(assert (=> bm!151592 (= call!151597 (map!6012 thiss!47892))))

(declare-fun b!2476428 () Bool)

(assert (=> b!2476428 (= e!1571245 (tuple2!28325 true thiss!47892))))

(declare-fun lt!884343 () ListLongMap!381)

(declare-fun call!151601 () ListLongMap!381)

(assert (=> b!2476428 (= lt!884343 call!151601)))

(declare-fun lt!884346 () Unit!42290)

(declare-fun lemmaRemoveNotContainedDoesNotChange!20 (ListLongMap!381 K!5245 Hashable!3174) Unit!42290)

(assert (=> b!2476428 (= lt!884346 (lemmaRemoveNotContainedDoesNotChange!20 lt!884343 key!7256 (hashF!5105 thiss!47892)))))

(assert (=> b!2476428 (= call!151600 call!151596)))

(declare-fun lt!884340 () Unit!42290)

(assert (=> b!2476428 (= lt!884340 lt!884346)))

(declare-fun b!2476429 () Bool)

(assert (=> b!2476429 (= call!151602 lt!884344)))

(declare-fun lt!884353 () Unit!42290)

(declare-fun Unit!42297 () Unit!42290)

(assert (=> b!2476429 (= lt!884353 Unit!42297)))

(assert (=> b!2476429 call!151598))

(declare-fun Unit!42298 () Unit!42290)

(assert (=> b!2476429 (= e!1571244 Unit!42298)))

(declare-fun b!2476430 () Bool)

(declare-datatypes ((tuple2!28330 0))(
  ( (tuple2!28331 (_1!16706 Bool) (_2!16706 MutLongMap!3264)) )
))
(declare-fun lt!884337 () tuple2!28330)

(assert (=> b!2476430 (= e!1571245 (tuple2!28325 (_1!16706 lt!884337) (_2!16704 lt!884359)))))

(declare-fun hash!603 (Hashable!3174 K!5245) (_ BitVec 64))

(assert (=> b!2476430 (= lt!884362 (hash!603 (hashF!5105 thiss!47892) key!7256))))

(declare-fun apply!6827 (MutLongMap!3264 (_ BitVec 64)) List!29032)

(assert (=> b!2476430 (= lt!884339 (apply!6827 (v!31193 (underlying!6736 thiss!47892)) lt!884362))))

(declare-fun lt!884345 () Unit!42290)

(declare-fun forallContained!803 (List!29033 Int tuple2!28328) Unit!42290)

(assert (=> b!2476430 (= lt!884345 (forallContained!803 (toList!1444 call!151601) lambda!93394 (tuple2!28329 lt!884362 (apply!6827 (v!31193 (underlying!6736 thiss!47892)) lt!884362))))))

(assert (=> b!2476430 (= lt!884344 (map!6012 thiss!47892))))

(assert (=> b!2476430 (= lt!884354 call!151601)))

(assert (=> b!2476430 (= lt!884335 (removePairForKey!34 lt!884339 key!7256))))

(declare-fun update!149 (MutLongMap!3264 (_ BitVec 64) List!29032) tuple2!28330)

(assert (=> b!2476430 (= lt!884337 (update!149 (v!31193 (underlying!6736 thiss!47892)) lt!884362 lt!884335))))

(declare-fun Unit!42299 () Unit!42290)

(declare-fun Unit!42300 () Unit!42290)

(assert (=> b!2476430 (= lt!884359 (ite (and (_1!16706 lt!884337) lt!884336) (tuple2!28327 Unit!42299 (HashMap!3174 (Cell!12876 (_2!16706 lt!884337)) (hashF!5105 thiss!47892) (bvsub (_size!6576 thiss!47892) #b00000000000000000000000000000001) (defaultValue!3336 thiss!47892))) (tuple2!28327 Unit!42300 (HashMap!3174 (Cell!12876 (_2!16706 lt!884337)) (hashF!5105 thiss!47892) (_size!6576 thiss!47892) (defaultValue!3336 thiss!47892)))))))

(declare-fun lt!884360 () Unit!42290)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!34 (List!29032 K!5245) Unit!42290)

(assert (=> b!2476430 (= lt!884360 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!34 lt!884339 key!7256))))

(declare-fun noDuplicateKeys!42 (List!29032) Bool)

(assert (=> b!2476430 (noDuplicateKeys!42 (removePairForKey!34 lt!884339 key!7256))))

(declare-fun lt!884355 () Unit!42290)

(assert (=> b!2476430 (= lt!884355 lt!884360)))

(declare-fun c!394099 () Bool)

(assert (=> b!2476430 (= c!394099 (_1!16706 lt!884337))))

(declare-fun lt!884351 () Unit!42290)

(assert (=> b!2476430 (= lt!884351 e!1571244)))

(declare-fun bm!151593 () Bool)

(assert (=> bm!151593 (= call!151600 (extractMap!134 (ite c!394096 (toList!1444 lt!884343) (toList!1444 lt!884354))))))

(declare-fun b!2476431 () Bool)

(declare-fun res!1048426 () Bool)

(assert (=> b!2476431 (=> (not res!1048426) (not e!1571247))))

(assert (=> b!2476431 (= res!1048426 (valid!2466 (_2!16703 lt!884338)))))

(declare-fun bm!151594 () Bool)

(declare-fun call!151599 () ListMap!935)

(assert (=> bm!151594 (= call!151599 (map!6012 (_2!16703 lt!884338)))))

(declare-fun b!2476432 () Bool)

(assert (=> b!2476432 (= e!1571249 call!151597)))

(declare-fun bm!151595 () Bool)

(assert (=> bm!151595 (= call!151601 (map!6011 (v!31193 (underlying!6736 thiss!47892))))))

(declare-fun bm!151596 () Bool)

(assert (=> bm!151596 (= call!151602 (map!6012 (_2!16704 lt!884359)))))

(declare-fun bm!151597 () Bool)

(assert (=> bm!151597 (= call!151595 (eq!58 call!151599 e!1571249))))

(declare-fun c!394097 () Bool)

(assert (=> bm!151597 (= c!394097 c!394098)))

(assert (= (and d!712259 c!394096) b!2476428))

(assert (= (and d!712259 (not c!394096)) b!2476430))

(assert (= (and b!2476430 c!394099) b!2476423))

(assert (= (and b!2476430 (not c!394099)) b!2476429))

(assert (= (and b!2476423 res!1048427) b!2476427))

(assert (= (or b!2476423 b!2476429) bm!151596))

(assert (= (or b!2476423 b!2476429) bm!151590))

(assert (= (or b!2476428 b!2476430) bm!151595))

(assert (= (or b!2476428 b!2476423) bm!151593))

(assert (= (or b!2476428 b!2476423) bm!151591))

(assert (= (and d!712259 res!1048425) b!2476431))

(assert (= (and b!2476431 res!1048426) b!2476422))

(assert (= (and b!2476422 c!394098) b!2476425))

(assert (= (and b!2476422 (not c!394098)) b!2476424))

(assert (= (or b!2476425 b!2476424) bm!151592))

(assert (= (or b!2476425 b!2476424) bm!151594))

(assert (= (or b!2476425 b!2476424) bm!151597))

(assert (= (and bm!151597 c!394097) b!2476426))

(assert (= (and bm!151597 (not c!394097)) b!2476432))

(declare-fun m!2844319 () Bool)

(assert (=> bm!151594 m!2844319))

(declare-fun m!2844321 () Bool)

(assert (=> b!2476428 m!2844321))

(declare-fun m!2844323 () Bool)

(assert (=> bm!151597 m!2844323))

(declare-fun m!2844325 () Bool)

(assert (=> bm!151596 m!2844325))

(declare-fun m!2844327 () Bool)

(assert (=> d!712259 m!2844327))

(assert (=> d!712259 m!2844317))

(declare-fun m!2844329 () Bool)

(assert (=> bm!151595 m!2844329))

(declare-fun m!2844331 () Bool)

(assert (=> b!2476430 m!2844331))

(declare-fun m!2844333 () Bool)

(assert (=> b!2476430 m!2844333))

(declare-fun m!2844335 () Bool)

(assert (=> b!2476430 m!2844335))

(declare-fun m!2844337 () Bool)

(assert (=> b!2476430 m!2844337))

(declare-fun m!2844339 () Bool)

(assert (=> b!2476430 m!2844339))

(declare-fun m!2844341 () Bool)

(assert (=> b!2476430 m!2844341))

(declare-fun m!2844343 () Bool)

(assert (=> b!2476430 m!2844343))

(declare-fun m!2844345 () Bool)

(assert (=> b!2476430 m!2844345))

(assert (=> b!2476430 m!2844331))

(declare-fun m!2844347 () Bool)

(assert (=> bm!151591 m!2844347))

(declare-fun m!2844349 () Bool)

(assert (=> bm!151590 m!2844349))

(declare-fun m!2844351 () Bool)

(assert (=> b!2476431 m!2844351))

(declare-fun m!2844353 () Bool)

(assert (=> bm!151593 m!2844353))

(declare-fun m!2844355 () Bool)

(assert (=> b!2476423 m!2844355))

(declare-fun m!2844357 () Bool)

(assert (=> b!2476423 m!2844357))

(declare-fun m!2844359 () Bool)

(assert (=> b!2476423 m!2844359))

(assert (=> b!2476423 m!2844331))

(declare-fun m!2844361 () Bool)

(assert (=> b!2476423 m!2844361))

(declare-fun m!2844363 () Bool)

(assert (=> b!2476423 m!2844363))

(declare-fun m!2844365 () Bool)

(assert (=> b!2476423 m!2844365))

(declare-fun m!2844367 () Bool)

(assert (=> b!2476423 m!2844367))

(declare-fun m!2844369 () Bool)

(assert (=> b!2476423 m!2844369))

(declare-fun m!2844371 () Bool)

(assert (=> b!2476423 m!2844371))

(declare-fun m!2844373 () Bool)

(assert (=> b!2476423 m!2844373))

(assert (=> b!2476423 m!2844357))

(assert (=> b!2476423 m!2844331))

(declare-fun m!2844375 () Bool)

(assert (=> b!2476423 m!2844375))

(declare-fun m!2844377 () Bool)

(assert (=> b!2476423 m!2844377))

(declare-fun m!2844379 () Bool)

(assert (=> b!2476423 m!2844379))

(declare-fun m!2844381 () Bool)

(assert (=> b!2476423 m!2844381))

(declare-fun m!2844383 () Bool)

(assert (=> b!2476423 m!2844383))

(assert (=> b!2476423 m!2844373))

(assert (=> b!2476423 m!2844365))

(declare-fun m!2844385 () Bool)

(assert (=> b!2476423 m!2844385))

(assert (=> bm!151592 m!2844345))

(declare-fun m!2844387 () Bool)

(assert (=> b!2476427 m!2844387))

(declare-fun m!2844389 () Bool)

(assert (=> b!2476426 m!2844389))

(assert (=> b!2476387 d!712259))

(declare-fun d!712261 () Bool)

(assert (=> d!712261 (= (array_inv!3671 (_keys!3561 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) (bvsge (size!22537 (_keys!3561 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476391 d!712261))

(declare-fun d!712263 () Bool)

(assert (=> d!712263 (= (array_inv!3672 (_values!3544 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) (bvsge (size!22538 (_values!3544 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476391 d!712263))

(declare-fun tp_is_empty!12025 () Bool)

(declare-fun tp!792133 () Bool)

(declare-fun e!1571254 () Bool)

(declare-fun b!2476439 () Bool)

(assert (=> b!2476439 (= e!1571254 (and tp_is_empty!12023 tp_is_empty!12025 tp!792133))))

(declare-fun mapNonEmpty!15210 () Bool)

(declare-fun mapRes!15210 () Bool)

(declare-fun tp!792132 () Bool)

(assert (=> mapNonEmpty!15210 (= mapRes!15210 (and tp!792132 e!1571254))))

(declare-fun mapKey!15210 () (_ BitVec 32))

(declare-fun mapRest!15210 () (Array (_ BitVec 32) List!29032))

(declare-fun mapValue!15210 () List!29032)

(assert (=> mapNonEmpty!15210 (= mapRest!15207 (store mapRest!15210 mapKey!15210 mapValue!15210))))

(declare-fun condMapEmpty!15210 () Bool)

(declare-fun mapDefault!15210 () List!29032)

(assert (=> mapNonEmpty!15207 (= condMapEmpty!15210 (= mapRest!15207 ((as const (Array (_ BitVec 32) List!29032)) mapDefault!15210)))))

(declare-fun e!1571255 () Bool)

(assert (=> mapNonEmpty!15207 (= tp!792124 (and e!1571255 mapRes!15210))))

(declare-fun mapIsEmpty!15210 () Bool)

(assert (=> mapIsEmpty!15210 mapRes!15210))

(declare-fun tp!792134 () Bool)

(declare-fun b!2476440 () Bool)

(assert (=> b!2476440 (= e!1571255 (and tp_is_empty!12023 tp_is_empty!12025 tp!792134))))

(assert (= (and mapNonEmpty!15207 condMapEmpty!15210) mapIsEmpty!15210))

(assert (= (and mapNonEmpty!15207 (not condMapEmpty!15210)) mapNonEmpty!15210))

(assert (= (and mapNonEmpty!15210 ((_ is Cons!28932) mapValue!15210)) b!2476439))

(assert (= (and mapNonEmpty!15207 ((_ is Cons!28932) mapDefault!15210)) b!2476440))

(declare-fun m!2844391 () Bool)

(assert (=> mapNonEmpty!15210 m!2844391))

(declare-fun tp!792137 () Bool)

(declare-fun e!1571258 () Bool)

(declare-fun b!2476445 () Bool)

(assert (=> b!2476445 (= e!1571258 (and tp_is_empty!12023 tp_is_empty!12025 tp!792137))))

(assert (=> mapNonEmpty!15207 (= tp!792123 e!1571258)))

(assert (= (and mapNonEmpty!15207 ((_ is Cons!28932) mapValue!15207)) b!2476445))

(declare-fun e!1571259 () Bool)

(declare-fun b!2476446 () Bool)

(declare-fun tp!792138 () Bool)

(assert (=> b!2476446 (= e!1571259 (and tp_is_empty!12023 tp_is_empty!12025 tp!792138))))

(assert (=> b!2476391 (= tp!792122 e!1571259)))

(assert (= (and b!2476391 ((_ is Cons!28932) (zeroValue!3522 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892))))))) b!2476446))

(declare-fun e!1571260 () Bool)

(declare-fun b!2476447 () Bool)

(declare-fun tp!792139 () Bool)

(assert (=> b!2476447 (= e!1571260 (and tp_is_empty!12023 tp_is_empty!12025 tp!792139))))

(assert (=> b!2476391 (= tp!792121 e!1571260)))

(assert (= (and b!2476391 ((_ is Cons!28932) (minValue!3522 (v!31192 (underlying!6735 (v!31193 (underlying!6736 thiss!47892))))))) b!2476447))

(declare-fun tp!792140 () Bool)

(declare-fun e!1571261 () Bool)

(declare-fun b!2476448 () Bool)

(assert (=> b!2476448 (= e!1571261 (and tp_is_empty!12023 tp_is_empty!12025 tp!792140))))

(assert (=> b!2476386 (= tp!792120 e!1571261)))

(assert (= (and b!2476386 ((_ is Cons!28932) mapDefault!15207)) b!2476448))

(check-sat (not bm!151596) b_and!188139 (not b!2476398) (not b!2476427) (not bm!151594) tp_is_empty!12025 (not bm!151592) (not b!2476439) (not mapNonEmpty!15210) (not b!2476446) (not b!2476399) (not bm!151597) (not b!2476423) (not b!2476448) (not b_next!72619) (not d!712259) (not b_next!72617) (not b!2476431) (not bm!151591) (not b!2476430) tp_is_empty!12023 (not b!2476445) (not bm!151590) (not bm!151593) b_and!188137 (not b!2476440) (not b!2476447) (not b!2476426) (not bm!151595) (not b!2476428))
(check-sat b_and!188139 b_and!188137 (not b_next!72619) (not b_next!72617))
