; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413374 () Bool)

(assert start!413374)

(declare-fun b!4303761 () Bool)

(declare-fun b_free!128267 () Bool)

(declare-fun b_next!128971 () Bool)

(assert (=> b!4303761 (= b_free!128267 (not b_next!128971))))

(declare-fun tp!1322481 () Bool)

(declare-fun b_and!339659 () Bool)

(assert (=> b!4303761 (= tp!1322481 b_and!339659)))

(declare-fun b!4303766 () Bool)

(declare-fun b_free!128269 () Bool)

(declare-fun b_next!128973 () Bool)

(assert (=> b!4303766 (= b_free!128269 (not b_next!128973))))

(declare-fun tp!1322486 () Bool)

(declare-fun b_and!339661 () Bool)

(assert (=> b!4303766 (= tp!1322486 b_and!339661)))

(declare-fun b!4303759 () Bool)

(declare-fun e!2675709 () Bool)

(declare-datatypes ((K!9189 0))(
  ( (K!9190 (val!15609 Int)) )
))
(declare-datatypes ((V!9391 0))(
  ( (V!9392 (val!15610 Int)) )
))
(declare-datatypes ((tuple2!46176 0))(
  ( (tuple2!46177 (_1!26367 K!9189) (_2!26367 V!9391)) )
))
(declare-datatypes ((List!48163 0))(
  ( (Nil!48039) (Cons!48039 (h!53463 tuple2!46176) (t!354940 List!48163)) )
))
(declare-fun lt!1525352 () List!48163)

(declare-fun noDuplicateKeys!179 (List!48163) Bool)

(assert (=> b!4303759 (= e!2675709 (noDuplicateKeys!179 lt!1525352))))

(declare-fun b!4303760 () Bool)

(declare-fun e!2675718 () Bool)

(declare-datatypes ((array!16438 0))(
  ( (array!16439 (arr!7339 (Array (_ BitVec 32) (_ BitVec 64))) (size!35378 (_ BitVec 32))) )
))
(declare-datatypes ((array!16440 0))(
  ( (array!16441 (arr!7340 (Array (_ BitVec 32) List!48163)) (size!35379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9154 0))(
  ( (LongMapFixedSize!9155 (defaultEntry!4962 Int) (mask!13094 (_ BitVec 32)) (extraKeys!4826 (_ BitVec 32)) (zeroValue!4836 List!48163) (minValue!4836 List!48163) (_size!9197 (_ BitVec 32)) (_keys!4877 array!16438) (_values!4858 array!16440) (_vacant!4638 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18117 0))(
  ( (Cell!18118 (v!42063 LongMapFixedSize!9154)) )
))
(declare-datatypes ((MutLongMap!4577 0))(
  ( (LongMap!4577 (underlying!9383 Cell!18117)) (MutLongMapExt!4576 (__x!29756 Int)) )
))
(declare-datatypes ((tuple2!46178 0))(
  ( (tuple2!46179 (_1!26368 Bool) (_2!26368 MutLongMap!4577)) )
))
(declare-fun lt!1525353 () tuple2!46178)

(declare-fun lambda!132286 () Int)

(declare-datatypes ((tuple2!46180 0))(
  ( (tuple2!46181 (_1!26369 (_ BitVec 64)) (_2!26369 List!48163)) )
))
(declare-datatypes ((List!48164 0))(
  ( (Nil!48040) (Cons!48040 (h!53464 tuple2!46180) (t!354941 List!48164)) )
))
(declare-fun forall!8674 (List!48164 Int) Bool)

(declare-datatypes ((ListLongMap!881 0))(
  ( (ListLongMap!882 (toList!2273 List!48164)) )
))
(declare-fun map!10006 (MutLongMap!4577) ListLongMap!881)

(assert (=> b!4303760 (= e!2675718 (forall!8674 (toList!2273 (map!10006 (_2!26368 lt!1525353))) lambda!132286))))

(declare-fun tp!1322482 () Bool)

(declare-fun e!2675717 () Bool)

(declare-fun e!2675712 () Bool)

(declare-fun tp!1322485 () Bool)

(declare-datatypes ((Hashable!4493 0))(
  ( (HashableExt!4492 (__x!29757 Int)) )
))
(declare-datatypes ((Cell!18119 0))(
  ( (Cell!18120 (v!42064 MutLongMap!4577)) )
))
(declare-datatypes ((MutableMap!4483 0))(
  ( (MutableMapExt!4482 (__x!29758 Int)) (HashMap!4483 (underlying!9384 Cell!18119) (hashF!6549 Hashable!4493) (_size!9198 (_ BitVec 32)) (defaultValue!4654 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4483)

(declare-fun array_inv!5263 (array!16438) Bool)

(declare-fun array_inv!5264 (array!16440) Bool)

(assert (=> b!4303761 (= e!2675712 (and tp!1322481 tp!1322485 tp!1322482 (array_inv!5263 (_keys!4877 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) (array_inv!5264 (_values!4858 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) e!2675717))))

(declare-fun b!4303762 () Bool)

(declare-fun e!2675720 () Bool)

(declare-fun e!2675713 () Bool)

(declare-fun lt!1525355 () MutLongMap!4577)

(get-info :version)

(assert (=> b!4303762 (= e!2675720 (and e!2675713 ((_ is LongMap!4577) lt!1525355)))))

(assert (=> b!4303762 (= lt!1525355 (v!42064 (underlying!9384 thiss!42308)))))

(declare-fun b!4303763 () Bool)

(declare-fun e!2675711 () Bool)

(assert (=> b!4303763 (= e!2675711 e!2675712)))

(declare-fun res!1763999 () Bool)

(declare-fun e!2675714 () Bool)

(assert (=> start!413374 (=> (not res!1763999) (not e!2675714))))

(assert (=> start!413374 (= res!1763999 ((_ is HashMap!4483) thiss!42308))))

(assert (=> start!413374 e!2675714))

(declare-fun e!2675715 () Bool)

(assert (=> start!413374 e!2675715))

(declare-fun tp_is_empty!23447 () Bool)

(assert (=> start!413374 tp_is_empty!23447))

(declare-fun tp_is_empty!23449 () Bool)

(assert (=> start!413374 tp_is_empty!23449))

(declare-fun mapNonEmpty!20515 () Bool)

(declare-fun mapRes!20515 () Bool)

(declare-fun tp!1322480 () Bool)

(declare-fun tp!1322484 () Bool)

(assert (=> mapNonEmpty!20515 (= mapRes!20515 (and tp!1322480 tp!1322484))))

(declare-fun mapKey!20515 () (_ BitVec 32))

(declare-fun mapRest!20515 () (Array (_ BitVec 32) List!48163))

(declare-fun mapValue!20515 () List!48163)

(assert (=> mapNonEmpty!20515 (= (arr!7340 (_values!4858 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) (store mapRest!20515 mapKey!20515 mapValue!20515))))

(declare-fun b!4303764 () Bool)

(declare-fun res!1764002 () Bool)

(assert (=> b!4303764 (=> (not res!1764002) (not e!2675709))))

(declare-fun lt!1525362 () List!48163)

(declare-fun key!2048 () K!9189)

(declare-fun containsKey!269 (List!48163 K!9189) Bool)

(assert (=> b!4303764 (= res!1764002 (not (containsKey!269 lt!1525362 key!2048)))))

(declare-fun b!4303765 () Bool)

(declare-fun e!2675708 () Bool)

(assert (=> b!4303765 (= e!2675714 e!2675708)))

(declare-fun res!1763998 () Bool)

(assert (=> b!4303765 (=> (not res!1763998) (not e!2675708))))

(declare-fun contains!9967 (MutableMap!4483 K!9189) Bool)

(assert (=> b!4303765 (= res!1763998 (contains!9967 thiss!42308 key!2048))))

(declare-fun lt!1525349 () ListLongMap!881)

(assert (=> b!4303765 (= lt!1525349 (map!10006 (v!42064 (underlying!9384 thiss!42308))))))

(declare-datatypes ((ListMap!1559 0))(
  ( (ListMap!1560 (toList!2274 List!48163)) )
))
(declare-fun lt!1525358 () ListMap!1559)

(declare-fun map!10007 (MutableMap!4483) ListMap!1559)

(assert (=> b!4303765 (= lt!1525358 (map!10007 thiss!42308))))

(assert (=> b!4303766 (= e!2675715 (and e!2675720 tp!1322486))))

(declare-fun mapIsEmpty!20515 () Bool)

(assert (=> mapIsEmpty!20515 mapRes!20515))

(declare-fun b!4303767 () Bool)

(declare-fun e!2675716 () Bool)

(assert (=> b!4303767 (= e!2675716 (not ((_ is LongMap!4577) (_2!26368 lt!1525353))))))

(assert (=> b!4303767 e!2675718))

(declare-fun res!1764000 () Bool)

(assert (=> b!4303767 (=> (not res!1764000) (not e!2675718))))

(declare-fun lt!1525348 () ListMap!1559)

(declare-fun lt!1525363 () ListMap!1559)

(declare-fun contains!9968 (ListMap!1559 K!9189) Bool)

(assert (=> b!4303767 (= res!1764000 (= (contains!9968 lt!1525363 key!2048) (contains!9968 lt!1525348 key!2048)))))

(declare-datatypes ((Unit!67040 0))(
  ( (Unit!67041) )
))
(declare-fun lt!1525354 () Unit!67040)

(declare-fun lemmaEquivalentThenSameContains!44 (ListMap!1559 ListMap!1559 K!9189) Unit!67040)

(assert (=> b!4303767 (= lt!1525354 (lemmaEquivalentThenSameContains!44 lt!1525363 lt!1525348 key!2048))))

(declare-fun lt!1525357 () tuple2!46176)

(declare-fun +!211 (ListMap!1559 tuple2!46176) ListMap!1559)

(assert (=> b!4303767 (= lt!1525348 (+!211 lt!1525358 lt!1525357))))

(assert (=> b!4303767 (= lt!1525363 (map!10007 (HashMap!4483 (Cell!18120 (_2!26368 lt!1525353)) (hashF!6549 thiss!42308) (_size!9198 thiss!42308) (defaultValue!4654 thiss!42308))))))

(declare-fun lt!1525359 () ListLongMap!881)

(declare-fun eq!117 (ListMap!1559 ListMap!1559) Bool)

(declare-fun extractMap!293 (List!48164) ListMap!1559)

(assert (=> b!4303767 (eq!117 (extractMap!293 (toList!2273 lt!1525359)) (+!211 (extractMap!293 (toList!2273 lt!1525349)) lt!1525357))))

(declare-fun lt!1525351 () Unit!67040)

(declare-fun lt!1525347 () (_ BitVec 64))

(declare-fun v!9179 () V!9391)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!49 (ListLongMap!881 (_ BitVec 64) List!48163 K!9189 V!9391 Hashable!4493) Unit!67040)

(assert (=> b!4303767 (= lt!1525351 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!49 lt!1525349 lt!1525347 lt!1525352 key!2048 v!9179 (hashF!6549 thiss!42308)))))

(declare-fun e!2675719 () Bool)

(assert (=> b!4303767 e!2675719))

(declare-fun res!1763996 () Bool)

(assert (=> b!4303767 (=> (not res!1763996) (not e!2675719))))

(assert (=> b!4303767 (= res!1763996 (forall!8674 (toList!2273 lt!1525359) lambda!132286))))

(declare-fun +!212 (ListLongMap!881 tuple2!46180) ListLongMap!881)

(assert (=> b!4303767 (= lt!1525359 (+!212 lt!1525349 (tuple2!46181 lt!1525347 lt!1525352)))))

(declare-fun lt!1525361 () Unit!67040)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!120 (ListLongMap!881 (_ BitVec 64) List!48163 Hashable!4493) Unit!67040)

(assert (=> b!4303767 (= lt!1525361 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!120 lt!1525349 lt!1525347 lt!1525352 (hashF!6549 thiss!42308)))))

(assert (=> b!4303767 e!2675709))

(declare-fun res!1764001 () Bool)

(assert (=> b!4303767 (=> (not res!1764001) (not e!2675709))))

(assert (=> b!4303767 (= res!1764001 (noDuplicateKeys!179 lt!1525362))))

(declare-fun lt!1525356 () Unit!67040)

(declare-fun lt!1525364 () List!48163)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!152 (List!48163 K!9189) Unit!67040)

(assert (=> b!4303767 (= lt!1525356 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!152 lt!1525364 key!2048))))

(declare-fun allKeysSameHash!149 (List!48163 (_ BitVec 64) Hashable!4493) Bool)

(assert (=> b!4303767 (allKeysSameHash!149 lt!1525362 lt!1525347 (hashF!6549 thiss!42308))))

(declare-fun lt!1525360 () Unit!67040)

(declare-fun lemmaRemovePairForKeyPreservesHash!135 (List!48163 K!9189 (_ BitVec 64) Hashable!4493) Unit!67040)

(assert (=> b!4303767 (= lt!1525360 (lemmaRemovePairForKeyPreservesHash!135 lt!1525364 key!2048 lt!1525347 (hashF!6549 thiss!42308)))))

(assert (=> b!4303767 (allKeysSameHash!149 lt!1525364 lt!1525347 (hashF!6549 thiss!42308))))

(declare-fun lt!1525350 () Unit!67040)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!140 (List!48164 (_ BitVec 64) List!48163 Hashable!4493) Unit!67040)

(assert (=> b!4303767 (= lt!1525350 (lemmaInLongMapAllKeySameHashThenForTuple!140 (toList!2273 lt!1525349) lt!1525347 lt!1525364 (hashF!6549 thiss!42308)))))

(declare-fun b!4303768 () Bool)

(declare-fun res!1763997 () Bool)

(assert (=> b!4303768 (=> (not res!1763997) (not e!2675714))))

(declare-fun valid!3561 (MutableMap!4483) Bool)

(assert (=> b!4303768 (= res!1763997 (valid!3561 thiss!42308))))

(declare-fun b!4303769 () Bool)

(assert (=> b!4303769 (= e!2675713 e!2675711)))

(declare-fun b!4303770 () Bool)

(declare-fun allKeysSameHashInMap!296 (ListLongMap!881 Hashable!4493) Bool)

(assert (=> b!4303770 (= e!2675719 (allKeysSameHashInMap!296 lt!1525359 (hashF!6549 thiss!42308)))))

(declare-fun b!4303771 () Bool)

(assert (=> b!4303771 (= e!2675708 e!2675716)))

(declare-fun res!1763995 () Bool)

(assert (=> b!4303771 (=> (not res!1763995) (not e!2675716))))

(assert (=> b!4303771 (= res!1763995 (_1!26368 lt!1525353))))

(declare-fun update!373 (MutLongMap!4577 (_ BitVec 64) List!48163) tuple2!46178)

(assert (=> b!4303771 (= lt!1525353 (update!373 (v!42064 (underlying!9384 thiss!42308)) lt!1525347 lt!1525352))))

(assert (=> b!4303771 (= lt!1525352 (Cons!48039 lt!1525357 lt!1525362))))

(declare-fun removePairForKey!172 (List!48163 K!9189) List!48163)

(assert (=> b!4303771 (= lt!1525362 (removePairForKey!172 lt!1525364 key!2048))))

(assert (=> b!4303771 (= lt!1525357 (tuple2!46177 key!2048 v!9179))))

(declare-fun apply!10928 (MutLongMap!4577 (_ BitVec 64)) List!48163)

(assert (=> b!4303771 (= lt!1525364 (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525347))))

(declare-fun hash!893 (Hashable!4493 K!9189) (_ BitVec 64))

(assert (=> b!4303771 (= lt!1525347 (hash!893 (hashF!6549 thiss!42308) key!2048))))

(declare-fun b!4303772 () Bool)

(declare-fun tp!1322483 () Bool)

(assert (=> b!4303772 (= e!2675717 (and tp!1322483 mapRes!20515))))

(declare-fun condMapEmpty!20515 () Bool)

(declare-fun mapDefault!20515 () List!48163)

(assert (=> b!4303772 (= condMapEmpty!20515 (= (arr!7340 (_values!4858 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48163)) mapDefault!20515)))))

(assert (= (and start!413374 res!1763999) b!4303768))

(assert (= (and b!4303768 res!1763997) b!4303765))

(assert (= (and b!4303765 res!1763998) b!4303771))

(assert (= (and b!4303771 res!1763995) b!4303767))

(assert (= (and b!4303767 res!1764001) b!4303764))

(assert (= (and b!4303764 res!1764002) b!4303759))

(assert (= (and b!4303767 res!1763996) b!4303770))

(assert (= (and b!4303767 res!1764000) b!4303760))

(assert (= (and b!4303772 condMapEmpty!20515) mapIsEmpty!20515))

(assert (= (and b!4303772 (not condMapEmpty!20515)) mapNonEmpty!20515))

(assert (= b!4303761 b!4303772))

(assert (= b!4303763 b!4303761))

(assert (= b!4303769 b!4303763))

(assert (= (and b!4303762 ((_ is LongMap!4577) (v!42064 (underlying!9384 thiss!42308)))) b!4303769))

(assert (= b!4303766 b!4303762))

(assert (= (and start!413374 ((_ is HashMap!4483) thiss!42308)) b!4303766))

(declare-fun m!4896335 () Bool)

(assert (=> b!4303760 m!4896335))

(declare-fun m!4896337 () Bool)

(assert (=> b!4303760 m!4896337))

(declare-fun m!4896339 () Bool)

(assert (=> b!4303765 m!4896339))

(declare-fun m!4896341 () Bool)

(assert (=> b!4303765 m!4896341))

(declare-fun m!4896343 () Bool)

(assert (=> b!4303765 m!4896343))

(declare-fun m!4896345 () Bool)

(assert (=> b!4303768 m!4896345))

(declare-fun m!4896347 () Bool)

(assert (=> b!4303764 m!4896347))

(declare-fun m!4896349 () Bool)

(assert (=> b!4303771 m!4896349))

(declare-fun m!4896351 () Bool)

(assert (=> b!4303771 m!4896351))

(declare-fun m!4896353 () Bool)

(assert (=> b!4303771 m!4896353))

(declare-fun m!4896355 () Bool)

(assert (=> b!4303771 m!4896355))

(declare-fun m!4896357 () Bool)

(assert (=> mapNonEmpty!20515 m!4896357))

(declare-fun m!4896359 () Bool)

(assert (=> b!4303770 m!4896359))

(declare-fun m!4896361 () Bool)

(assert (=> b!4303759 m!4896361))

(declare-fun m!4896363 () Bool)

(assert (=> b!4303767 m!4896363))

(declare-fun m!4896365 () Bool)

(assert (=> b!4303767 m!4896365))

(declare-fun m!4896367 () Bool)

(assert (=> b!4303767 m!4896367))

(declare-fun m!4896369 () Bool)

(assert (=> b!4303767 m!4896369))

(declare-fun m!4896371 () Bool)

(assert (=> b!4303767 m!4896371))

(declare-fun m!4896373 () Bool)

(assert (=> b!4303767 m!4896373))

(declare-fun m!4896375 () Bool)

(assert (=> b!4303767 m!4896375))

(declare-fun m!4896377 () Bool)

(assert (=> b!4303767 m!4896377))

(declare-fun m!4896379 () Bool)

(assert (=> b!4303767 m!4896379))

(declare-fun m!4896381 () Bool)

(assert (=> b!4303767 m!4896381))

(declare-fun m!4896383 () Bool)

(assert (=> b!4303767 m!4896383))

(declare-fun m!4896385 () Bool)

(assert (=> b!4303767 m!4896385))

(declare-fun m!4896387 () Bool)

(assert (=> b!4303767 m!4896387))

(declare-fun m!4896389 () Bool)

(assert (=> b!4303767 m!4896389))

(assert (=> b!4303767 m!4896379))

(declare-fun m!4896391 () Bool)

(assert (=> b!4303767 m!4896391))

(declare-fun m!4896393 () Bool)

(assert (=> b!4303767 m!4896393))

(assert (=> b!4303767 m!4896393))

(assert (=> b!4303767 m!4896381))

(declare-fun m!4896395 () Bool)

(assert (=> b!4303767 m!4896395))

(declare-fun m!4896397 () Bool)

(assert (=> b!4303767 m!4896397))

(declare-fun m!4896399 () Bool)

(assert (=> b!4303767 m!4896399))

(declare-fun m!4896401 () Bool)

(assert (=> b!4303761 m!4896401))

(declare-fun m!4896403 () Bool)

(assert (=> b!4303761 m!4896403))

(check-sat (not b_next!128971) b_and!339661 (not b_next!128973) (not mapNonEmpty!20515) (not b!4303765) (not b!4303771) (not b!4303764) (not b!4303759) (not b!4303768) (not b!4303772) b_and!339659 tp_is_empty!23447 (not b!4303767) (not b!4303770) (not b!4303760) (not b!4303761) tp_is_empty!23449)
(check-sat b_and!339659 b_and!339661 (not b_next!128973) (not b_next!128971))
(get-model)

(declare-fun bs!604280 () Bool)

(declare-fun d!1267113 () Bool)

(assert (= bs!604280 (and d!1267113 b!4303767)))

(declare-fun lambda!132289 () Int)

(assert (=> bs!604280 (= lambda!132289 lambda!132286)))

(declare-fun lt!1525367 () ListMap!1559)

(declare-fun invariantList!556 (List!48163) Bool)

(assert (=> d!1267113 (invariantList!556 (toList!2274 lt!1525367))))

(declare-fun e!2675723 () ListMap!1559)

(assert (=> d!1267113 (= lt!1525367 e!2675723)))

(declare-fun c!731852 () Bool)

(assert (=> d!1267113 (= c!731852 ((_ is Cons!48040) (toList!2273 lt!1525349)))))

(assert (=> d!1267113 (forall!8674 (toList!2273 lt!1525349) lambda!132289)))

(assert (=> d!1267113 (= (extractMap!293 (toList!2273 lt!1525349)) lt!1525367)))

(declare-fun b!4303777 () Bool)

(declare-fun addToMapMapFromBucket!27 (List!48163 ListMap!1559) ListMap!1559)

(assert (=> b!4303777 (= e!2675723 (addToMapMapFromBucket!27 (_2!26369 (h!53464 (toList!2273 lt!1525349))) (extractMap!293 (t!354941 (toList!2273 lt!1525349)))))))

(declare-fun b!4303778 () Bool)

(assert (=> b!4303778 (= e!2675723 (ListMap!1560 Nil!48039))))

(assert (= (and d!1267113 c!731852) b!4303777))

(assert (= (and d!1267113 (not c!731852)) b!4303778))

(declare-fun m!4896405 () Bool)

(assert (=> d!1267113 m!4896405))

(declare-fun m!4896407 () Bool)

(assert (=> d!1267113 m!4896407))

(declare-fun m!4896409 () Bool)

(assert (=> b!4303777 m!4896409))

(assert (=> b!4303777 m!4896409))

(declare-fun m!4896411 () Bool)

(assert (=> b!4303777 m!4896411))

(assert (=> b!4303767 d!1267113))

(declare-fun d!1267115 () Bool)

(declare-fun e!2675726 () Bool)

(assert (=> d!1267115 e!2675726))

(declare-fun res!1764008 () Bool)

(assert (=> d!1267115 (=> (not res!1764008) (not e!2675726))))

(declare-fun lt!1525377 () ListLongMap!881)

(declare-fun contains!9969 (ListLongMap!881 (_ BitVec 64)) Bool)

(assert (=> d!1267115 (= res!1764008 (contains!9969 lt!1525377 (_1!26369 (tuple2!46181 lt!1525347 lt!1525352))))))

(declare-fun lt!1525378 () List!48164)

(assert (=> d!1267115 (= lt!1525377 (ListLongMap!882 lt!1525378))))

(declare-fun lt!1525379 () Unit!67040)

(declare-fun lt!1525376 () Unit!67040)

(assert (=> d!1267115 (= lt!1525379 lt!1525376)))

(declare-datatypes ((Option!10186 0))(
  ( (None!10185) (Some!10185 (v!42069 List!48163)) )
))
(declare-fun getValueByKey!228 (List!48164 (_ BitVec 64)) Option!10186)

(assert (=> d!1267115 (= (getValueByKey!228 lt!1525378 (_1!26369 (tuple2!46181 lt!1525347 lt!1525352))) (Some!10185 (_2!26369 (tuple2!46181 lt!1525347 lt!1525352))))))

(declare-fun lemmaContainsTupThenGetReturnValue!54 (List!48164 (_ BitVec 64) List!48163) Unit!67040)

(assert (=> d!1267115 (= lt!1525376 (lemmaContainsTupThenGetReturnValue!54 lt!1525378 (_1!26369 (tuple2!46181 lt!1525347 lt!1525352)) (_2!26369 (tuple2!46181 lt!1525347 lt!1525352))))))

(declare-fun insertStrictlySorted!28 (List!48164 (_ BitVec 64) List!48163) List!48164)

(assert (=> d!1267115 (= lt!1525378 (insertStrictlySorted!28 (toList!2273 lt!1525349) (_1!26369 (tuple2!46181 lt!1525347 lt!1525352)) (_2!26369 (tuple2!46181 lt!1525347 lt!1525352))))))

(assert (=> d!1267115 (= (+!212 lt!1525349 (tuple2!46181 lt!1525347 lt!1525352)) lt!1525377)))

(declare-fun b!4303783 () Bool)

(declare-fun res!1764007 () Bool)

(assert (=> b!4303783 (=> (not res!1764007) (not e!2675726))))

(assert (=> b!4303783 (= res!1764007 (= (getValueByKey!228 (toList!2273 lt!1525377) (_1!26369 (tuple2!46181 lt!1525347 lt!1525352))) (Some!10185 (_2!26369 (tuple2!46181 lt!1525347 lt!1525352)))))))

(declare-fun b!4303784 () Bool)

(declare-fun contains!9970 (List!48164 tuple2!46180) Bool)

(assert (=> b!4303784 (= e!2675726 (contains!9970 (toList!2273 lt!1525377) (tuple2!46181 lt!1525347 lt!1525352)))))

(assert (= (and d!1267115 res!1764008) b!4303783))

(assert (= (and b!4303783 res!1764007) b!4303784))

(declare-fun m!4896413 () Bool)

(assert (=> d!1267115 m!4896413))

(declare-fun m!4896415 () Bool)

(assert (=> d!1267115 m!4896415))

(declare-fun m!4896417 () Bool)

(assert (=> d!1267115 m!4896417))

(declare-fun m!4896419 () Bool)

(assert (=> d!1267115 m!4896419))

(declare-fun m!4896421 () Bool)

(assert (=> b!4303783 m!4896421))

(declare-fun m!4896423 () Bool)

(assert (=> b!4303784 m!4896423))

(assert (=> b!4303767 d!1267115))

(declare-fun b!4303803 () Bool)

(declare-fun e!2675743 () Bool)

(declare-datatypes ((List!48165 0))(
  ( (Nil!48041) (Cons!48041 (h!53466 K!9189) (t!354944 List!48165)) )
))
(declare-fun contains!9971 (List!48165 K!9189) Bool)

(declare-fun keys!15980 (ListMap!1559) List!48165)

(assert (=> b!4303803 (= e!2675743 (contains!9971 (keys!15980 lt!1525363) key!2048))))

(declare-fun d!1267117 () Bool)

(declare-fun e!2675740 () Bool)

(assert (=> d!1267117 e!2675740))

(declare-fun res!1764016 () Bool)

(assert (=> d!1267117 (=> res!1764016 e!2675740)))

(declare-fun e!2675744 () Bool)

(assert (=> d!1267117 (= res!1764016 e!2675744)))

(declare-fun res!1764015 () Bool)

(assert (=> d!1267117 (=> (not res!1764015) (not e!2675744))))

(declare-fun lt!1525403 () Bool)

(assert (=> d!1267117 (= res!1764015 (not lt!1525403))))

(declare-fun lt!1525400 () Bool)

(assert (=> d!1267117 (= lt!1525403 lt!1525400)))

(declare-fun lt!1525398 () Unit!67040)

(declare-fun e!2675741 () Unit!67040)

(assert (=> d!1267117 (= lt!1525398 e!2675741)))

(declare-fun c!731860 () Bool)

(assert (=> d!1267117 (= c!731860 lt!1525400)))

(declare-fun containsKey!270 (List!48163 K!9189) Bool)

(assert (=> d!1267117 (= lt!1525400 (containsKey!270 (toList!2274 lt!1525363) key!2048))))

(assert (=> d!1267117 (= (contains!9968 lt!1525363 key!2048) lt!1525403)))

(declare-fun b!4303804 () Bool)

(assert (=> b!4303804 (= e!2675744 (not (contains!9971 (keys!15980 lt!1525363) key!2048)))))

(declare-fun b!4303805 () Bool)

(declare-fun e!2675739 () List!48165)

(declare-fun getKeysList!39 (List!48163) List!48165)

(assert (=> b!4303805 (= e!2675739 (getKeysList!39 (toList!2274 lt!1525363)))))

(declare-fun b!4303806 () Bool)

(assert (=> b!4303806 false))

(declare-fun lt!1525399 () Unit!67040)

(declare-fun lt!1525397 () Unit!67040)

(assert (=> b!4303806 (= lt!1525399 lt!1525397)))

(assert (=> b!4303806 (containsKey!270 (toList!2274 lt!1525363) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!36 (List!48163 K!9189) Unit!67040)

(assert (=> b!4303806 (= lt!1525397 (lemmaInGetKeysListThenContainsKey!36 (toList!2274 lt!1525363) key!2048))))

(declare-fun e!2675742 () Unit!67040)

(declare-fun Unit!67042 () Unit!67040)

(assert (=> b!4303806 (= e!2675742 Unit!67042)))

(declare-fun b!4303807 () Bool)

(assert (=> b!4303807 (= e!2675739 (keys!15980 lt!1525363))))

(declare-fun bm!296765 () Bool)

(declare-fun call!296770 () Bool)

(assert (=> bm!296765 (= call!296770 (contains!9971 e!2675739 key!2048))))

(declare-fun c!731861 () Bool)

(assert (=> bm!296765 (= c!731861 c!731860)))

(declare-fun b!4303808 () Bool)

(declare-fun lt!1525396 () Unit!67040)

(assert (=> b!4303808 (= e!2675741 lt!1525396)))

(declare-fun lt!1525401 () Unit!67040)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!154 (List!48163 K!9189) Unit!67040)

(assert (=> b!4303808 (= lt!1525401 (lemmaContainsKeyImpliesGetValueByKeyDefined!154 (toList!2274 lt!1525363) key!2048))))

(declare-datatypes ((Option!10187 0))(
  ( (None!10186) (Some!10186 (v!42070 V!9391)) )
))
(declare-fun isDefined!7494 (Option!10187) Bool)

(declare-fun getValueByKey!229 (List!48163 K!9189) Option!10187)

(assert (=> b!4303808 (isDefined!7494 (getValueByKey!229 (toList!2274 lt!1525363) key!2048))))

(declare-fun lt!1525402 () Unit!67040)

(assert (=> b!4303808 (= lt!1525402 lt!1525401)))

(declare-fun lemmaInListThenGetKeysListContains!36 (List!48163 K!9189) Unit!67040)

(assert (=> b!4303808 (= lt!1525396 (lemmaInListThenGetKeysListContains!36 (toList!2274 lt!1525363) key!2048))))

(assert (=> b!4303808 call!296770))

(declare-fun b!4303809 () Bool)

(assert (=> b!4303809 (= e!2675741 e!2675742)))

(declare-fun c!731859 () Bool)

(assert (=> b!4303809 (= c!731859 call!296770)))

(declare-fun b!4303810 () Bool)

(declare-fun Unit!67043 () Unit!67040)

(assert (=> b!4303810 (= e!2675742 Unit!67043)))

(declare-fun b!4303811 () Bool)

(assert (=> b!4303811 (= e!2675740 e!2675743)))

(declare-fun res!1764017 () Bool)

(assert (=> b!4303811 (=> (not res!1764017) (not e!2675743))))

(assert (=> b!4303811 (= res!1764017 (isDefined!7494 (getValueByKey!229 (toList!2274 lt!1525363) key!2048)))))

(assert (= (and d!1267117 c!731860) b!4303808))

(assert (= (and d!1267117 (not c!731860)) b!4303809))

(assert (= (and b!4303809 c!731859) b!4303806))

(assert (= (and b!4303809 (not c!731859)) b!4303810))

(assert (= (or b!4303808 b!4303809) bm!296765))

(assert (= (and bm!296765 c!731861) b!4303805))

(assert (= (and bm!296765 (not c!731861)) b!4303807))

(assert (= (and d!1267117 res!1764015) b!4303804))

(assert (= (and d!1267117 (not res!1764016)) b!4303811))

(assert (= (and b!4303811 res!1764017) b!4303803))

(declare-fun m!4896425 () Bool)

(assert (=> b!4303804 m!4896425))

(assert (=> b!4303804 m!4896425))

(declare-fun m!4896427 () Bool)

(assert (=> b!4303804 m!4896427))

(declare-fun m!4896429 () Bool)

(assert (=> b!4303808 m!4896429))

(declare-fun m!4896431 () Bool)

(assert (=> b!4303808 m!4896431))

(assert (=> b!4303808 m!4896431))

(declare-fun m!4896433 () Bool)

(assert (=> b!4303808 m!4896433))

(declare-fun m!4896435 () Bool)

(assert (=> b!4303808 m!4896435))

(assert (=> b!4303803 m!4896425))

(assert (=> b!4303803 m!4896425))

(assert (=> b!4303803 m!4896427))

(assert (=> b!4303807 m!4896425))

(declare-fun m!4896437 () Bool)

(assert (=> bm!296765 m!4896437))

(assert (=> b!4303811 m!4896431))

(assert (=> b!4303811 m!4896431))

(assert (=> b!4303811 m!4896433))

(declare-fun m!4896439 () Bool)

(assert (=> b!4303805 m!4896439))

(declare-fun m!4896441 () Bool)

(assert (=> d!1267117 m!4896441))

(assert (=> b!4303806 m!4896441))

(declare-fun m!4896443 () Bool)

(assert (=> b!4303806 m!4896443))

(assert (=> b!4303767 d!1267117))

(declare-fun d!1267119 () Bool)

(assert (=> d!1267119 true))

(assert (=> d!1267119 true))

(declare-fun lambda!132292 () Int)

(declare-fun forall!8675 (List!48163 Int) Bool)

(assert (=> d!1267119 (= (allKeysSameHash!149 lt!1525364 lt!1525347 (hashF!6549 thiss!42308)) (forall!8675 lt!1525364 lambda!132292))))

(declare-fun bs!604281 () Bool)

(assert (= bs!604281 d!1267119))

(declare-fun m!4896445 () Bool)

(assert (=> bs!604281 m!4896445))

(assert (=> b!4303767 d!1267119))

(declare-fun d!1267121 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7544 (List!48163) (InoxSet tuple2!46176))

(assert (=> d!1267121 (= (eq!117 (extractMap!293 (toList!2273 lt!1525359)) (+!211 (extractMap!293 (toList!2273 lt!1525349)) lt!1525357)) (= (content!7544 (toList!2274 (extractMap!293 (toList!2273 lt!1525359)))) (content!7544 (toList!2274 (+!211 (extractMap!293 (toList!2273 lt!1525349)) lt!1525357)))))))

(declare-fun bs!604282 () Bool)

(assert (= bs!604282 d!1267121))

(declare-fun m!4896447 () Bool)

(assert (=> bs!604282 m!4896447))

(declare-fun m!4896449 () Bool)

(assert (=> bs!604282 m!4896449))

(assert (=> b!4303767 d!1267121))

(declare-fun d!1267123 () Bool)

(assert (=> d!1267123 (allKeysSameHash!149 (removePairForKey!172 lt!1525364 key!2048) lt!1525347 (hashF!6549 thiss!42308))))

(declare-fun lt!1525406 () Unit!67040)

(declare-fun choose!26201 (List!48163 K!9189 (_ BitVec 64) Hashable!4493) Unit!67040)

(assert (=> d!1267123 (= lt!1525406 (choose!26201 lt!1525364 key!2048 lt!1525347 (hashF!6549 thiss!42308)))))

(assert (=> d!1267123 (noDuplicateKeys!179 lt!1525364)))

(assert (=> d!1267123 (= (lemmaRemovePairForKeyPreservesHash!135 lt!1525364 key!2048 lt!1525347 (hashF!6549 thiss!42308)) lt!1525406)))

(declare-fun bs!604283 () Bool)

(assert (= bs!604283 d!1267123))

(assert (=> bs!604283 m!4896351))

(assert (=> bs!604283 m!4896351))

(declare-fun m!4896451 () Bool)

(assert (=> bs!604283 m!4896451))

(declare-fun m!4896453 () Bool)

(assert (=> bs!604283 m!4896453))

(declare-fun m!4896455 () Bool)

(assert (=> bs!604283 m!4896455))

(assert (=> b!4303767 d!1267123))

(declare-fun bs!604284 () Bool)

(declare-fun d!1267125 () Bool)

(assert (= bs!604284 (and d!1267125 b!4303767)))

(declare-fun lambda!132295 () Int)

(assert (=> bs!604284 (= lambda!132295 lambda!132286)))

(declare-fun bs!604285 () Bool)

(assert (= bs!604285 (and d!1267125 d!1267113)))

(assert (=> bs!604285 (= lambda!132295 lambda!132289)))

(assert (=> d!1267125 (eq!117 (extractMap!293 (toList!2273 (+!212 lt!1525349 (tuple2!46181 lt!1525347 lt!1525352)))) (+!211 (extractMap!293 (toList!2273 lt!1525349)) (tuple2!46177 key!2048 v!9179)))))

(declare-fun lt!1525409 () Unit!67040)

(declare-fun choose!26202 (ListLongMap!881 (_ BitVec 64) List!48163 K!9189 V!9391 Hashable!4493) Unit!67040)

(assert (=> d!1267125 (= lt!1525409 (choose!26202 lt!1525349 lt!1525347 lt!1525352 key!2048 v!9179 (hashF!6549 thiss!42308)))))

(assert (=> d!1267125 (forall!8674 (toList!2273 lt!1525349) lambda!132295)))

(assert (=> d!1267125 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!49 lt!1525349 lt!1525347 lt!1525352 key!2048 v!9179 (hashF!6549 thiss!42308)) lt!1525409)))

(declare-fun bs!604286 () Bool)

(assert (= bs!604286 d!1267125))

(assert (=> bs!604286 m!4896393))

(declare-fun m!4896457 () Bool)

(assert (=> bs!604286 m!4896457))

(declare-fun m!4896459 () Bool)

(assert (=> bs!604286 m!4896459))

(assert (=> bs!604286 m!4896393))

(declare-fun m!4896461 () Bool)

(assert (=> bs!604286 m!4896461))

(declare-fun m!4896463 () Bool)

(assert (=> bs!604286 m!4896463))

(assert (=> bs!604286 m!4896461))

(declare-fun m!4896465 () Bool)

(assert (=> bs!604286 m!4896465))

(assert (=> bs!604286 m!4896369))

(assert (=> bs!604286 m!4896463))

(assert (=> b!4303767 d!1267125))

(declare-fun bs!604287 () Bool)

(declare-fun d!1267127 () Bool)

(assert (= bs!604287 (and d!1267127 b!4303767)))

(declare-fun lambda!132298 () Int)

(assert (=> bs!604287 (not (= lambda!132298 lambda!132286))))

(declare-fun bs!604288 () Bool)

(assert (= bs!604288 (and d!1267127 d!1267113)))

(assert (=> bs!604288 (not (= lambda!132298 lambda!132289))))

(declare-fun bs!604289 () Bool)

(assert (= bs!604289 (and d!1267127 d!1267125)))

(assert (=> bs!604289 (not (= lambda!132298 lambda!132295))))

(assert (=> d!1267127 true))

(assert (=> d!1267127 (allKeysSameHash!149 lt!1525364 lt!1525347 (hashF!6549 thiss!42308))))

(declare-fun lt!1525412 () Unit!67040)

(declare-fun choose!26203 (List!48164 (_ BitVec 64) List!48163 Hashable!4493) Unit!67040)

(assert (=> d!1267127 (= lt!1525412 (choose!26203 (toList!2273 lt!1525349) lt!1525347 lt!1525364 (hashF!6549 thiss!42308)))))

(assert (=> d!1267127 (forall!8674 (toList!2273 lt!1525349) lambda!132298)))

(assert (=> d!1267127 (= (lemmaInLongMapAllKeySameHashThenForTuple!140 (toList!2273 lt!1525349) lt!1525347 lt!1525364 (hashF!6549 thiss!42308)) lt!1525412)))

(declare-fun bs!604290 () Bool)

(assert (= bs!604290 d!1267127))

(assert (=> bs!604290 m!4896377))

(declare-fun m!4896467 () Bool)

(assert (=> bs!604290 m!4896467))

(declare-fun m!4896469 () Bool)

(assert (=> bs!604290 m!4896469))

(assert (=> b!4303767 d!1267127))

(declare-fun d!1267129 () Bool)

(declare-fun res!1764022 () Bool)

(declare-fun e!2675749 () Bool)

(assert (=> d!1267129 (=> res!1764022 e!2675749)))

(assert (=> d!1267129 (= res!1764022 (not ((_ is Cons!48039) lt!1525362)))))

(assert (=> d!1267129 (= (noDuplicateKeys!179 lt!1525362) e!2675749)))

(declare-fun b!4303822 () Bool)

(declare-fun e!2675750 () Bool)

(assert (=> b!4303822 (= e!2675749 e!2675750)))

(declare-fun res!1764023 () Bool)

(assert (=> b!4303822 (=> (not res!1764023) (not e!2675750))))

(assert (=> b!4303822 (= res!1764023 (not (containsKey!269 (t!354940 lt!1525362) (_1!26367 (h!53463 lt!1525362)))))))

(declare-fun b!4303823 () Bool)

(assert (=> b!4303823 (= e!2675750 (noDuplicateKeys!179 (t!354940 lt!1525362)))))

(assert (= (and d!1267129 (not res!1764022)) b!4303822))

(assert (= (and b!4303822 res!1764023) b!4303823))

(declare-fun m!4896471 () Bool)

(assert (=> b!4303822 m!4896471))

(declare-fun m!4896473 () Bool)

(assert (=> b!4303823 m!4896473))

(assert (=> b!4303767 d!1267129))

(declare-fun d!1267131 () Bool)

(declare-fun e!2675753 () Bool)

(assert (=> d!1267131 e!2675753))

(declare-fun res!1764028 () Bool)

(assert (=> d!1267131 (=> (not res!1764028) (not e!2675753))))

(declare-fun lt!1525421 () ListMap!1559)

(assert (=> d!1267131 (= res!1764028 (contains!9968 lt!1525421 (_1!26367 lt!1525357)))))

(declare-fun lt!1525422 () List!48163)

(assert (=> d!1267131 (= lt!1525421 (ListMap!1560 lt!1525422))))

(declare-fun lt!1525423 () Unit!67040)

(declare-fun lt!1525424 () Unit!67040)

(assert (=> d!1267131 (= lt!1525423 lt!1525424)))

(assert (=> d!1267131 (= (getValueByKey!229 lt!1525422 (_1!26367 lt!1525357)) (Some!10186 (_2!26367 lt!1525357)))))

(declare-fun lemmaContainsTupThenGetReturnValue!55 (List!48163 K!9189 V!9391) Unit!67040)

(assert (=> d!1267131 (= lt!1525424 (lemmaContainsTupThenGetReturnValue!55 lt!1525422 (_1!26367 lt!1525357) (_2!26367 lt!1525357)))))

(declare-fun insertNoDuplicatedKeys!35 (List!48163 K!9189 V!9391) List!48163)

(assert (=> d!1267131 (= lt!1525422 (insertNoDuplicatedKeys!35 (toList!2274 (extractMap!293 (toList!2273 lt!1525349))) (_1!26367 lt!1525357) (_2!26367 lt!1525357)))))

(assert (=> d!1267131 (= (+!211 (extractMap!293 (toList!2273 lt!1525349)) lt!1525357) lt!1525421)))

(declare-fun b!4303828 () Bool)

(declare-fun res!1764029 () Bool)

(assert (=> b!4303828 (=> (not res!1764029) (not e!2675753))))

(assert (=> b!4303828 (= res!1764029 (= (getValueByKey!229 (toList!2274 lt!1525421) (_1!26367 lt!1525357)) (Some!10186 (_2!26367 lt!1525357))))))

(declare-fun b!4303829 () Bool)

(declare-fun contains!9972 (List!48163 tuple2!46176) Bool)

(assert (=> b!4303829 (= e!2675753 (contains!9972 (toList!2274 lt!1525421) lt!1525357))))

(assert (= (and d!1267131 res!1764028) b!4303828))

(assert (= (and b!4303828 res!1764029) b!4303829))

(declare-fun m!4896475 () Bool)

(assert (=> d!1267131 m!4896475))

(declare-fun m!4896477 () Bool)

(assert (=> d!1267131 m!4896477))

(declare-fun m!4896479 () Bool)

(assert (=> d!1267131 m!4896479))

(declare-fun m!4896481 () Bool)

(assert (=> d!1267131 m!4896481))

(declare-fun m!4896483 () Bool)

(assert (=> b!4303828 m!4896483))

(declare-fun m!4896485 () Bool)

(assert (=> b!4303829 m!4896485))

(assert (=> b!4303767 d!1267131))

(declare-fun b!4303830 () Bool)

(declare-fun e!2675758 () Bool)

(assert (=> b!4303830 (= e!2675758 (contains!9971 (keys!15980 lt!1525348) key!2048))))

(declare-fun d!1267133 () Bool)

(declare-fun e!2675755 () Bool)

(assert (=> d!1267133 e!2675755))

(declare-fun res!1764031 () Bool)

(assert (=> d!1267133 (=> res!1764031 e!2675755)))

(declare-fun e!2675759 () Bool)

(assert (=> d!1267133 (= res!1764031 e!2675759)))

(declare-fun res!1764030 () Bool)

(assert (=> d!1267133 (=> (not res!1764030) (not e!2675759))))

(declare-fun lt!1525432 () Bool)

(assert (=> d!1267133 (= res!1764030 (not lt!1525432))))

(declare-fun lt!1525429 () Bool)

(assert (=> d!1267133 (= lt!1525432 lt!1525429)))

(declare-fun lt!1525427 () Unit!67040)

(declare-fun e!2675756 () Unit!67040)

(assert (=> d!1267133 (= lt!1525427 e!2675756)))

(declare-fun c!731863 () Bool)

(assert (=> d!1267133 (= c!731863 lt!1525429)))

(assert (=> d!1267133 (= lt!1525429 (containsKey!270 (toList!2274 lt!1525348) key!2048))))

(assert (=> d!1267133 (= (contains!9968 lt!1525348 key!2048) lt!1525432)))

(declare-fun b!4303831 () Bool)

(assert (=> b!4303831 (= e!2675759 (not (contains!9971 (keys!15980 lt!1525348) key!2048)))))

(declare-fun b!4303832 () Bool)

(declare-fun e!2675754 () List!48165)

(assert (=> b!4303832 (= e!2675754 (getKeysList!39 (toList!2274 lt!1525348)))))

(declare-fun b!4303833 () Bool)

(assert (=> b!4303833 false))

(declare-fun lt!1525428 () Unit!67040)

(declare-fun lt!1525426 () Unit!67040)

(assert (=> b!4303833 (= lt!1525428 lt!1525426)))

(assert (=> b!4303833 (containsKey!270 (toList!2274 lt!1525348) key!2048)))

(assert (=> b!4303833 (= lt!1525426 (lemmaInGetKeysListThenContainsKey!36 (toList!2274 lt!1525348) key!2048))))

(declare-fun e!2675757 () Unit!67040)

(declare-fun Unit!67044 () Unit!67040)

(assert (=> b!4303833 (= e!2675757 Unit!67044)))

(declare-fun b!4303834 () Bool)

(assert (=> b!4303834 (= e!2675754 (keys!15980 lt!1525348))))

(declare-fun bm!296766 () Bool)

(declare-fun call!296771 () Bool)

(assert (=> bm!296766 (= call!296771 (contains!9971 e!2675754 key!2048))))

(declare-fun c!731864 () Bool)

(assert (=> bm!296766 (= c!731864 c!731863)))

(declare-fun b!4303835 () Bool)

(declare-fun lt!1525425 () Unit!67040)

(assert (=> b!4303835 (= e!2675756 lt!1525425)))

(declare-fun lt!1525430 () Unit!67040)

(assert (=> b!4303835 (= lt!1525430 (lemmaContainsKeyImpliesGetValueByKeyDefined!154 (toList!2274 lt!1525348) key!2048))))

(assert (=> b!4303835 (isDefined!7494 (getValueByKey!229 (toList!2274 lt!1525348) key!2048))))

(declare-fun lt!1525431 () Unit!67040)

(assert (=> b!4303835 (= lt!1525431 lt!1525430)))

(assert (=> b!4303835 (= lt!1525425 (lemmaInListThenGetKeysListContains!36 (toList!2274 lt!1525348) key!2048))))

(assert (=> b!4303835 call!296771))

(declare-fun b!4303836 () Bool)

(assert (=> b!4303836 (= e!2675756 e!2675757)))

(declare-fun c!731862 () Bool)

(assert (=> b!4303836 (= c!731862 call!296771)))

(declare-fun b!4303837 () Bool)

(declare-fun Unit!67045 () Unit!67040)

(assert (=> b!4303837 (= e!2675757 Unit!67045)))

(declare-fun b!4303838 () Bool)

(assert (=> b!4303838 (= e!2675755 e!2675758)))

(declare-fun res!1764032 () Bool)

(assert (=> b!4303838 (=> (not res!1764032) (not e!2675758))))

(assert (=> b!4303838 (= res!1764032 (isDefined!7494 (getValueByKey!229 (toList!2274 lt!1525348) key!2048)))))

(assert (= (and d!1267133 c!731863) b!4303835))

(assert (= (and d!1267133 (not c!731863)) b!4303836))

(assert (= (and b!4303836 c!731862) b!4303833))

(assert (= (and b!4303836 (not c!731862)) b!4303837))

(assert (= (or b!4303835 b!4303836) bm!296766))

(assert (= (and bm!296766 c!731864) b!4303832))

(assert (= (and bm!296766 (not c!731864)) b!4303834))

(assert (= (and d!1267133 res!1764030) b!4303831))

(assert (= (and d!1267133 (not res!1764031)) b!4303838))

(assert (= (and b!4303838 res!1764032) b!4303830))

(declare-fun m!4896487 () Bool)

(assert (=> b!4303831 m!4896487))

(assert (=> b!4303831 m!4896487))

(declare-fun m!4896489 () Bool)

(assert (=> b!4303831 m!4896489))

(declare-fun m!4896491 () Bool)

(assert (=> b!4303835 m!4896491))

(declare-fun m!4896493 () Bool)

(assert (=> b!4303835 m!4896493))

(assert (=> b!4303835 m!4896493))

(declare-fun m!4896495 () Bool)

(assert (=> b!4303835 m!4896495))

(declare-fun m!4896497 () Bool)

(assert (=> b!4303835 m!4896497))

(assert (=> b!4303830 m!4896487))

(assert (=> b!4303830 m!4896487))

(assert (=> b!4303830 m!4896489))

(assert (=> b!4303834 m!4896487))

(declare-fun m!4896499 () Bool)

(assert (=> bm!296766 m!4896499))

(assert (=> b!4303838 m!4896493))

(assert (=> b!4303838 m!4896493))

(assert (=> b!4303838 m!4896495))

(declare-fun m!4896501 () Bool)

(assert (=> b!4303832 m!4896501))

(declare-fun m!4896503 () Bool)

(assert (=> d!1267133 m!4896503))

(assert (=> b!4303833 m!4896503))

(declare-fun m!4896505 () Bool)

(assert (=> b!4303833 m!4896505))

(assert (=> b!4303767 d!1267133))

(declare-fun d!1267135 () Bool)

(declare-fun lt!1525435 () ListMap!1559)

(assert (=> d!1267135 (invariantList!556 (toList!2274 lt!1525435))))

(assert (=> d!1267135 (= lt!1525435 (extractMap!293 (toList!2273 (map!10006 (v!42064 (underlying!9384 (HashMap!4483 (Cell!18120 (_2!26368 lt!1525353)) (hashF!6549 thiss!42308) (_size!9198 thiss!42308) (defaultValue!4654 thiss!42308))))))))))

(assert (=> d!1267135 (valid!3561 (HashMap!4483 (Cell!18120 (_2!26368 lt!1525353)) (hashF!6549 thiss!42308) (_size!9198 thiss!42308) (defaultValue!4654 thiss!42308)))))

(assert (=> d!1267135 (= (map!10007 (HashMap!4483 (Cell!18120 (_2!26368 lt!1525353)) (hashF!6549 thiss!42308) (_size!9198 thiss!42308) (defaultValue!4654 thiss!42308))) lt!1525435)))

(declare-fun bs!604291 () Bool)

(assert (= bs!604291 d!1267135))

(declare-fun m!4896507 () Bool)

(assert (=> bs!604291 m!4896507))

(declare-fun m!4896509 () Bool)

(assert (=> bs!604291 m!4896509))

(declare-fun m!4896511 () Bool)

(assert (=> bs!604291 m!4896511))

(declare-fun m!4896513 () Bool)

(assert (=> bs!604291 m!4896513))

(assert (=> b!4303767 d!1267135))

(declare-fun bs!604292 () Bool)

(declare-fun d!1267137 () Bool)

(assert (= bs!604292 (and d!1267137 b!4303767)))

(declare-fun lambda!132303 () Int)

(assert (=> bs!604292 (= lambda!132303 lambda!132286)))

(declare-fun bs!604293 () Bool)

(assert (= bs!604293 (and d!1267137 d!1267113)))

(assert (=> bs!604293 (= lambda!132303 lambda!132289)))

(declare-fun bs!604294 () Bool)

(assert (= bs!604294 (and d!1267137 d!1267125)))

(assert (=> bs!604294 (= lambda!132303 lambda!132295)))

(declare-fun bs!604295 () Bool)

(assert (= bs!604295 (and d!1267137 d!1267127)))

(assert (=> bs!604295 (not (= lambda!132303 lambda!132298))))

(declare-fun e!2675762 () Bool)

(assert (=> d!1267137 e!2675762))

(declare-fun res!1764035 () Bool)

(assert (=> d!1267137 (=> (not res!1764035) (not e!2675762))))

(declare-fun lt!1525441 () ListLongMap!881)

(assert (=> d!1267137 (= res!1764035 (forall!8674 (toList!2273 lt!1525441) lambda!132303))))

(assert (=> d!1267137 (= lt!1525441 (+!212 lt!1525349 (tuple2!46181 lt!1525347 lt!1525352)))))

(declare-fun lt!1525440 () Unit!67040)

(declare-fun choose!26204 (ListLongMap!881 (_ BitVec 64) List!48163 Hashable!4493) Unit!67040)

(assert (=> d!1267137 (= lt!1525440 (choose!26204 lt!1525349 lt!1525347 lt!1525352 (hashF!6549 thiss!42308)))))

(assert (=> d!1267137 (forall!8674 (toList!2273 lt!1525349) lambda!132303)))

(assert (=> d!1267137 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!120 lt!1525349 lt!1525347 lt!1525352 (hashF!6549 thiss!42308)) lt!1525440)))

(declare-fun b!4303841 () Bool)

(assert (=> b!4303841 (= e!2675762 (allKeysSameHashInMap!296 lt!1525441 (hashF!6549 thiss!42308)))))

(assert (= (and d!1267137 res!1764035) b!4303841))

(declare-fun m!4896515 () Bool)

(assert (=> d!1267137 m!4896515))

(assert (=> d!1267137 m!4896369))

(declare-fun m!4896517 () Bool)

(assert (=> d!1267137 m!4896517))

(declare-fun m!4896519 () Bool)

(assert (=> d!1267137 m!4896519))

(declare-fun m!4896521 () Bool)

(assert (=> b!4303841 m!4896521))

(assert (=> b!4303767 d!1267137))

(declare-fun d!1267139 () Bool)

(assert (=> d!1267139 (noDuplicateKeys!179 (removePairForKey!172 lt!1525364 key!2048))))

(declare-fun lt!1525444 () Unit!67040)

(declare-fun choose!26205 (List!48163 K!9189) Unit!67040)

(assert (=> d!1267139 (= lt!1525444 (choose!26205 lt!1525364 key!2048))))

(assert (=> d!1267139 (noDuplicateKeys!179 lt!1525364)))

(assert (=> d!1267139 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!152 lt!1525364 key!2048) lt!1525444)))

(declare-fun bs!604296 () Bool)

(assert (= bs!604296 d!1267139))

(assert (=> bs!604296 m!4896351))

(assert (=> bs!604296 m!4896351))

(declare-fun m!4896523 () Bool)

(assert (=> bs!604296 m!4896523))

(declare-fun m!4896525 () Bool)

(assert (=> bs!604296 m!4896525))

(assert (=> bs!604296 m!4896455))

(assert (=> b!4303767 d!1267139))

(declare-fun bs!604297 () Bool)

(declare-fun d!1267141 () Bool)

(assert (= bs!604297 (and d!1267141 d!1267119)))

(declare-fun lambda!132304 () Int)

(assert (=> bs!604297 (= lambda!132304 lambda!132292)))

(assert (=> d!1267141 true))

(assert (=> d!1267141 true))

(assert (=> d!1267141 (= (allKeysSameHash!149 lt!1525362 lt!1525347 (hashF!6549 thiss!42308)) (forall!8675 lt!1525362 lambda!132304))))

(declare-fun bs!604298 () Bool)

(assert (= bs!604298 d!1267141))

(declare-fun m!4896527 () Bool)

(assert (=> bs!604298 m!4896527))

(assert (=> b!4303767 d!1267141))

(declare-fun d!1267143 () Bool)

(declare-fun e!2675763 () Bool)

(assert (=> d!1267143 e!2675763))

(declare-fun res!1764036 () Bool)

(assert (=> d!1267143 (=> (not res!1764036) (not e!2675763))))

(declare-fun lt!1525445 () ListMap!1559)

(assert (=> d!1267143 (= res!1764036 (contains!9968 lt!1525445 (_1!26367 lt!1525357)))))

(declare-fun lt!1525446 () List!48163)

(assert (=> d!1267143 (= lt!1525445 (ListMap!1560 lt!1525446))))

(declare-fun lt!1525447 () Unit!67040)

(declare-fun lt!1525448 () Unit!67040)

(assert (=> d!1267143 (= lt!1525447 lt!1525448)))

(assert (=> d!1267143 (= (getValueByKey!229 lt!1525446 (_1!26367 lt!1525357)) (Some!10186 (_2!26367 lt!1525357)))))

(assert (=> d!1267143 (= lt!1525448 (lemmaContainsTupThenGetReturnValue!55 lt!1525446 (_1!26367 lt!1525357) (_2!26367 lt!1525357)))))

(assert (=> d!1267143 (= lt!1525446 (insertNoDuplicatedKeys!35 (toList!2274 lt!1525358) (_1!26367 lt!1525357) (_2!26367 lt!1525357)))))

(assert (=> d!1267143 (= (+!211 lt!1525358 lt!1525357) lt!1525445)))

(declare-fun b!4303842 () Bool)

(declare-fun res!1764037 () Bool)

(assert (=> b!4303842 (=> (not res!1764037) (not e!2675763))))

(assert (=> b!4303842 (= res!1764037 (= (getValueByKey!229 (toList!2274 lt!1525445) (_1!26367 lt!1525357)) (Some!10186 (_2!26367 lt!1525357))))))

(declare-fun b!4303843 () Bool)

(assert (=> b!4303843 (= e!2675763 (contains!9972 (toList!2274 lt!1525445) lt!1525357))))

(assert (= (and d!1267143 res!1764036) b!4303842))

(assert (= (and b!4303842 res!1764037) b!4303843))

(declare-fun m!4896529 () Bool)

(assert (=> d!1267143 m!4896529))

(declare-fun m!4896531 () Bool)

(assert (=> d!1267143 m!4896531))

(declare-fun m!4896533 () Bool)

(assert (=> d!1267143 m!4896533))

(declare-fun m!4896535 () Bool)

(assert (=> d!1267143 m!4896535))

(declare-fun m!4896537 () Bool)

(assert (=> b!4303842 m!4896537))

(declare-fun m!4896539 () Bool)

(assert (=> b!4303843 m!4896539))

(assert (=> b!4303767 d!1267143))

(declare-fun bs!604299 () Bool)

(declare-fun d!1267145 () Bool)

(assert (= bs!604299 (and d!1267145 d!1267137)))

(declare-fun lambda!132305 () Int)

(assert (=> bs!604299 (= lambda!132305 lambda!132303)))

(declare-fun bs!604300 () Bool)

(assert (= bs!604300 (and d!1267145 d!1267127)))

(assert (=> bs!604300 (not (= lambda!132305 lambda!132298))))

(declare-fun bs!604301 () Bool)

(assert (= bs!604301 (and d!1267145 d!1267113)))

(assert (=> bs!604301 (= lambda!132305 lambda!132289)))

(declare-fun bs!604302 () Bool)

(assert (= bs!604302 (and d!1267145 b!4303767)))

(assert (=> bs!604302 (= lambda!132305 lambda!132286)))

(declare-fun bs!604303 () Bool)

(assert (= bs!604303 (and d!1267145 d!1267125)))

(assert (=> bs!604303 (= lambda!132305 lambda!132295)))

(declare-fun lt!1525449 () ListMap!1559)

(assert (=> d!1267145 (invariantList!556 (toList!2274 lt!1525449))))

(declare-fun e!2675764 () ListMap!1559)

(assert (=> d!1267145 (= lt!1525449 e!2675764)))

(declare-fun c!731865 () Bool)

(assert (=> d!1267145 (= c!731865 ((_ is Cons!48040) (toList!2273 lt!1525359)))))

(assert (=> d!1267145 (forall!8674 (toList!2273 lt!1525359) lambda!132305)))

(assert (=> d!1267145 (= (extractMap!293 (toList!2273 lt!1525359)) lt!1525449)))

(declare-fun b!4303844 () Bool)

(assert (=> b!4303844 (= e!2675764 (addToMapMapFromBucket!27 (_2!26369 (h!53464 (toList!2273 lt!1525359))) (extractMap!293 (t!354941 (toList!2273 lt!1525359)))))))

(declare-fun b!4303845 () Bool)

(assert (=> b!4303845 (= e!2675764 (ListMap!1560 Nil!48039))))

(assert (= (and d!1267145 c!731865) b!4303844))

(assert (= (and d!1267145 (not c!731865)) b!4303845))

(declare-fun m!4896541 () Bool)

(assert (=> d!1267145 m!4896541))

(declare-fun m!4896543 () Bool)

(assert (=> d!1267145 m!4896543))

(declare-fun m!4896545 () Bool)

(assert (=> b!4303844 m!4896545))

(assert (=> b!4303844 m!4896545))

(declare-fun m!4896547 () Bool)

(assert (=> b!4303844 m!4896547))

(assert (=> b!4303767 d!1267145))

(declare-fun d!1267147 () Bool)

(assert (=> d!1267147 (= (contains!9968 lt!1525363 key!2048) (contains!9968 lt!1525348 key!2048))))

(declare-fun lt!1525452 () Unit!67040)

(declare-fun choose!26206 (ListMap!1559 ListMap!1559 K!9189) Unit!67040)

(assert (=> d!1267147 (= lt!1525452 (choose!26206 lt!1525363 lt!1525348 key!2048))))

(assert (=> d!1267147 (eq!117 lt!1525363 lt!1525348)))

(assert (=> d!1267147 (= (lemmaEquivalentThenSameContains!44 lt!1525363 lt!1525348 key!2048) lt!1525452)))

(declare-fun bs!604304 () Bool)

(assert (= bs!604304 d!1267147))

(assert (=> bs!604304 m!4896373))

(assert (=> bs!604304 m!4896397))

(declare-fun m!4896549 () Bool)

(assert (=> bs!604304 m!4896549))

(declare-fun m!4896551 () Bool)

(assert (=> bs!604304 m!4896551))

(assert (=> b!4303767 d!1267147))

(declare-fun d!1267149 () Bool)

(declare-fun res!1764042 () Bool)

(declare-fun e!2675769 () Bool)

(assert (=> d!1267149 (=> res!1764042 e!2675769)))

(assert (=> d!1267149 (= res!1764042 ((_ is Nil!48040) (toList!2273 lt!1525359)))))

(assert (=> d!1267149 (= (forall!8674 (toList!2273 lt!1525359) lambda!132286) e!2675769)))

(declare-fun b!4303850 () Bool)

(declare-fun e!2675770 () Bool)

(assert (=> b!4303850 (= e!2675769 e!2675770)))

(declare-fun res!1764043 () Bool)

(assert (=> b!4303850 (=> (not res!1764043) (not e!2675770))))

(declare-fun dynLambda!20388 (Int tuple2!46180) Bool)

(assert (=> b!4303850 (= res!1764043 (dynLambda!20388 lambda!132286 (h!53464 (toList!2273 lt!1525359))))))

(declare-fun b!4303851 () Bool)

(assert (=> b!4303851 (= e!2675770 (forall!8674 (t!354941 (toList!2273 lt!1525359)) lambda!132286))))

(assert (= (and d!1267149 (not res!1764042)) b!4303850))

(assert (= (and b!4303850 res!1764043) b!4303851))

(declare-fun b_lambda!126467 () Bool)

(assert (=> (not b_lambda!126467) (not b!4303850)))

(declare-fun m!4896553 () Bool)

(assert (=> b!4303850 m!4896553))

(declare-fun m!4896555 () Bool)

(assert (=> b!4303851 m!4896555))

(assert (=> b!4303767 d!1267149))

(declare-fun bs!604305 () Bool)

(declare-fun b!4303856 () Bool)

(assert (= bs!604305 (and b!4303856 d!1267145)))

(declare-fun lambda!132308 () Int)

(assert (=> bs!604305 (= lambda!132308 lambda!132305)))

(declare-fun bs!604306 () Bool)

(assert (= bs!604306 (and b!4303856 d!1267137)))

(assert (=> bs!604306 (= lambda!132308 lambda!132303)))

(declare-fun bs!604307 () Bool)

(assert (= bs!604307 (and b!4303856 d!1267127)))

(assert (=> bs!604307 (not (= lambda!132308 lambda!132298))))

(declare-fun bs!604308 () Bool)

(assert (= bs!604308 (and b!4303856 d!1267113)))

(assert (=> bs!604308 (= lambda!132308 lambda!132289)))

(declare-fun bs!604309 () Bool)

(assert (= bs!604309 (and b!4303856 b!4303767)))

(assert (=> bs!604309 (= lambda!132308 lambda!132286)))

(declare-fun bs!604310 () Bool)

(assert (= bs!604310 (and b!4303856 d!1267125)))

(assert (=> bs!604310 (= lambda!132308 lambda!132295)))

(declare-fun d!1267151 () Bool)

(declare-fun res!1764048 () Bool)

(declare-fun e!2675773 () Bool)

(assert (=> d!1267151 (=> (not res!1764048) (not e!2675773))))

(declare-fun valid!3562 (MutLongMap!4577) Bool)

(assert (=> d!1267151 (= res!1764048 (valid!3562 (v!42064 (underlying!9384 thiss!42308))))))

(assert (=> d!1267151 (= (valid!3561 thiss!42308) e!2675773)))

(declare-fun res!1764049 () Bool)

(assert (=> b!4303856 (=> (not res!1764049) (not e!2675773))))

(assert (=> b!4303856 (= res!1764049 (forall!8674 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))) lambda!132308))))

(declare-fun b!4303857 () Bool)

(assert (=> b!4303857 (= e!2675773 (allKeysSameHashInMap!296 (map!10006 (v!42064 (underlying!9384 thiss!42308))) (hashF!6549 thiss!42308)))))

(assert (= (and d!1267151 res!1764048) b!4303856))

(assert (= (and b!4303856 res!1764049) b!4303857))

(declare-fun m!4896557 () Bool)

(assert (=> d!1267151 m!4896557))

(assert (=> b!4303856 m!4896341))

(declare-fun m!4896559 () Bool)

(assert (=> b!4303856 m!4896559))

(assert (=> b!4303857 m!4896341))

(assert (=> b!4303857 m!4896341))

(declare-fun m!4896561 () Bool)

(assert (=> b!4303857 m!4896561))

(assert (=> b!4303768 d!1267151))

(declare-fun d!1267153 () Bool)

(declare-fun res!1764050 () Bool)

(declare-fun e!2675774 () Bool)

(assert (=> d!1267153 (=> res!1764050 e!2675774)))

(assert (=> d!1267153 (= res!1764050 (not ((_ is Cons!48039) lt!1525352)))))

(assert (=> d!1267153 (= (noDuplicateKeys!179 lt!1525352) e!2675774)))

(declare-fun b!4303858 () Bool)

(declare-fun e!2675775 () Bool)

(assert (=> b!4303858 (= e!2675774 e!2675775)))

(declare-fun res!1764051 () Bool)

(assert (=> b!4303858 (=> (not res!1764051) (not e!2675775))))

(assert (=> b!4303858 (= res!1764051 (not (containsKey!269 (t!354940 lt!1525352) (_1!26367 (h!53463 lt!1525352)))))))

(declare-fun b!4303859 () Bool)

(assert (=> b!4303859 (= e!2675775 (noDuplicateKeys!179 (t!354940 lt!1525352)))))

(assert (= (and d!1267153 (not res!1764050)) b!4303858))

(assert (= (and b!4303858 res!1764051) b!4303859))

(declare-fun m!4896563 () Bool)

(assert (=> b!4303858 m!4896563))

(declare-fun m!4896565 () Bool)

(assert (=> b!4303859 m!4896565))

(assert (=> b!4303759 d!1267153))

(declare-fun b!4303878 () Bool)

(declare-fun res!1764059 () Bool)

(declare-fun e!2675788 () Bool)

(assert (=> b!4303878 (=> (not res!1764059) (not e!2675788))))

(declare-fun lt!1525463 () tuple2!46178)

(assert (=> b!4303878 (= res!1764059 (valid!3562 (_2!26368 lt!1525463)))))

(declare-fun d!1267155 () Bool)

(assert (=> d!1267155 e!2675788))

(declare-fun res!1764058 () Bool)

(assert (=> d!1267155 (=> (not res!1764058) (not e!2675788))))

(assert (=> d!1267155 (= res!1764058 ((_ is LongMap!4577) (_2!26368 lt!1525463)))))

(declare-fun e!2675790 () tuple2!46178)

(assert (=> d!1267155 (= lt!1525463 e!2675790)))

(declare-fun c!731873 () Bool)

(declare-fun lt!1525464 () tuple2!46178)

(assert (=> d!1267155 (= c!731873 (_1!26368 lt!1525464))))

(declare-fun e!2675787 () tuple2!46178)

(assert (=> d!1267155 (= lt!1525464 e!2675787)))

(declare-fun c!731872 () Bool)

(declare-fun imbalanced!38 (MutLongMap!4577) Bool)

(assert (=> d!1267155 (= c!731872 (imbalanced!38 (v!42064 (underlying!9384 thiss!42308))))))

(assert (=> d!1267155 (valid!3562 (v!42064 (underlying!9384 thiss!42308)))))

(assert (=> d!1267155 (= (update!373 (v!42064 (underlying!9384 thiss!42308)) lt!1525347 lt!1525352) lt!1525463)))

(declare-fun b!4303879 () Bool)

(declare-datatypes ((tuple2!46182 0))(
  ( (tuple2!46183 (_1!26370 Bool) (_2!26370 LongMapFixedSize!9154)) )
))
(declare-fun lt!1525461 () tuple2!46182)

(assert (=> b!4303879 (= e!2675790 (tuple2!46179 (_1!26370 lt!1525461) (LongMap!4577 (Cell!18118 (_2!26370 lt!1525461)))))))

(declare-fun update!374 (LongMapFixedSize!9154 (_ BitVec 64) List!48163) tuple2!46182)

(assert (=> b!4303879 (= lt!1525461 (update!374 (v!42063 (underlying!9383 (_2!26368 lt!1525464))) lt!1525347 lt!1525352))))

(declare-fun b!4303880 () Bool)

(declare-fun lt!1525462 () tuple2!46178)

(assert (=> b!4303880 (= e!2675787 (tuple2!46179 (_1!26368 lt!1525462) (_2!26368 lt!1525462)))))

(declare-fun repack!42 (MutLongMap!4577) tuple2!46178)

(assert (=> b!4303880 (= lt!1525462 (repack!42 (v!42064 (underlying!9384 thiss!42308))))))

(declare-fun b!4303881 () Bool)

(assert (=> b!4303881 (= e!2675787 (tuple2!46179 true (v!42064 (underlying!9384 thiss!42308))))))

(declare-fun b!4303882 () Bool)

(declare-fun call!296777 () ListLongMap!881)

(declare-fun call!296776 () ListLongMap!881)

(declare-fun e!2675786 () Bool)

(assert (=> b!4303882 (= e!2675786 (= call!296777 (+!212 call!296776 (tuple2!46181 lt!1525347 lt!1525352))))))

(declare-fun b!4303883 () Bool)

(declare-fun e!2675789 () Bool)

(assert (=> b!4303883 (= e!2675789 e!2675786)))

(declare-fun res!1764060 () Bool)

(assert (=> b!4303883 (= res!1764060 (contains!9969 call!296777 lt!1525347))))

(assert (=> b!4303883 (=> (not res!1764060) (not e!2675786))))

(declare-fun bm!296771 () Bool)

(assert (=> bm!296771 (= call!296777 (map!10006 (_2!26368 lt!1525463)))))

(declare-fun bm!296772 () Bool)

(assert (=> bm!296772 (= call!296776 (map!10006 (v!42064 (underlying!9384 thiss!42308))))))

(declare-fun b!4303884 () Bool)

(assert (=> b!4303884 (= e!2675790 (tuple2!46179 false (_2!26368 lt!1525464)))))

(declare-fun b!4303885 () Bool)

(assert (=> b!4303885 (= e!2675789 (= call!296777 call!296776))))

(declare-fun b!4303886 () Bool)

(assert (=> b!4303886 (= e!2675788 e!2675789)))

(declare-fun c!731874 () Bool)

(assert (=> b!4303886 (= c!731874 (_1!26368 lt!1525463))))

(assert (= (and d!1267155 c!731872) b!4303880))

(assert (= (and d!1267155 (not c!731872)) b!4303881))

(assert (= (and d!1267155 c!731873) b!4303879))

(assert (= (and d!1267155 (not c!731873)) b!4303884))

(assert (= (and d!1267155 res!1764058) b!4303878))

(assert (= (and b!4303878 res!1764059) b!4303886))

(assert (= (and b!4303886 c!731874) b!4303883))

(assert (= (and b!4303886 (not c!731874)) b!4303885))

(assert (= (and b!4303883 res!1764060) b!4303882))

(assert (= (or b!4303883 b!4303882 b!4303885) bm!296771))

(assert (= (or b!4303882 b!4303885) bm!296772))

(declare-fun m!4896567 () Bool)

(assert (=> b!4303879 m!4896567))

(assert (=> bm!296772 m!4896341))

(declare-fun m!4896569 () Bool)

(assert (=> b!4303882 m!4896569))

(declare-fun m!4896571 () Bool)

(assert (=> b!4303883 m!4896571))

(declare-fun m!4896573 () Bool)

(assert (=> bm!296771 m!4896573))

(declare-fun m!4896575 () Bool)

(assert (=> d!1267155 m!4896575))

(assert (=> d!1267155 m!4896557))

(declare-fun m!4896577 () Bool)

(assert (=> b!4303880 m!4896577))

(declare-fun m!4896579 () Bool)

(assert (=> b!4303878 m!4896579))

(assert (=> b!4303771 d!1267155))

(declare-fun b!4303898 () Bool)

(declare-fun e!2675796 () List!48163)

(assert (=> b!4303898 (= e!2675796 Nil!48039)))

(declare-fun d!1267157 () Bool)

(declare-fun lt!1525467 () List!48163)

(assert (=> d!1267157 (not (containsKey!269 lt!1525467 key!2048))))

(declare-fun e!2675795 () List!48163)

(assert (=> d!1267157 (= lt!1525467 e!2675795)))

(declare-fun c!731879 () Bool)

(assert (=> d!1267157 (= c!731879 (and ((_ is Cons!48039) lt!1525364) (= (_1!26367 (h!53463 lt!1525364)) key!2048)))))

(assert (=> d!1267157 (noDuplicateKeys!179 lt!1525364)))

(assert (=> d!1267157 (= (removePairForKey!172 lt!1525364 key!2048) lt!1525467)))

(declare-fun b!4303897 () Bool)

(assert (=> b!4303897 (= e!2675796 (Cons!48039 (h!53463 lt!1525364) (removePairForKey!172 (t!354940 lt!1525364) key!2048)))))

(declare-fun b!4303896 () Bool)

(assert (=> b!4303896 (= e!2675795 e!2675796)))

(declare-fun c!731880 () Bool)

(assert (=> b!4303896 (= c!731880 ((_ is Cons!48039) lt!1525364))))

(declare-fun b!4303895 () Bool)

(assert (=> b!4303895 (= e!2675795 (t!354940 lt!1525364))))

(assert (= (and d!1267157 c!731879) b!4303895))

(assert (= (and d!1267157 (not c!731879)) b!4303896))

(assert (= (and b!4303896 c!731880) b!4303897))

(assert (= (and b!4303896 (not c!731880)) b!4303898))

(declare-fun m!4896581 () Bool)

(assert (=> d!1267157 m!4896581))

(assert (=> d!1267157 m!4896455))

(declare-fun m!4896583 () Bool)

(assert (=> b!4303897 m!4896583))

(assert (=> b!4303771 d!1267157))

(declare-fun d!1267159 () Bool)

(declare-fun e!2675799 () Bool)

(assert (=> d!1267159 e!2675799))

(declare-fun c!731883 () Bool)

(declare-fun contains!9973 (MutLongMap!4577 (_ BitVec 64)) Bool)

(assert (=> d!1267159 (= c!731883 (contains!9973 (v!42064 (underlying!9384 thiss!42308)) lt!1525347))))

(declare-fun lt!1525470 () List!48163)

(declare-fun apply!10929 (LongMapFixedSize!9154 (_ BitVec 64)) List!48163)

(assert (=> d!1267159 (= lt!1525470 (apply!10929 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))) lt!1525347))))

(assert (=> d!1267159 (valid!3562 (v!42064 (underlying!9384 thiss!42308)))))

(assert (=> d!1267159 (= (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525347) lt!1525470)))

(declare-fun b!4303903 () Bool)

(declare-fun get!15537 (Option!10186) List!48163)

(assert (=> b!4303903 (= e!2675799 (= lt!1525470 (get!15537 (getValueByKey!228 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))) lt!1525347))))))

(declare-fun b!4303904 () Bool)

(declare-fun dynLambda!20389 (Int (_ BitVec 64)) List!48163)

(assert (=> b!4303904 (= e!2675799 (= lt!1525470 (dynLambda!20389 (defaultEntry!4962 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308))))) lt!1525347)))))

(assert (=> b!4303904 ((_ is LongMap!4577) (v!42064 (underlying!9384 thiss!42308)))))

(assert (= (and d!1267159 c!731883) b!4303903))

(assert (= (and d!1267159 (not c!731883)) b!4303904))

(declare-fun b_lambda!126469 () Bool)

(assert (=> (not b_lambda!126469) (not b!4303904)))

(declare-fun t!354943 () Bool)

(declare-fun tb!257263 () Bool)

(assert (=> (and b!4303761 (= (defaultEntry!4962 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308))))) (defaultEntry!4962 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) t!354943) tb!257263))

(assert (=> b!4303904 t!354943))

(declare-fun result!314596 () Bool)

(declare-fun b_and!339663 () Bool)

(assert (= b_and!339659 (and (=> t!354943 result!314596) b_and!339663)))

(declare-fun m!4896585 () Bool)

(assert (=> d!1267159 m!4896585))

(declare-fun m!4896587 () Bool)

(assert (=> d!1267159 m!4896587))

(assert (=> d!1267159 m!4896557))

(assert (=> b!4303903 m!4896341))

(declare-fun m!4896589 () Bool)

(assert (=> b!4303903 m!4896589))

(assert (=> b!4303903 m!4896589))

(declare-fun m!4896591 () Bool)

(assert (=> b!4303903 m!4896591))

(declare-fun m!4896593 () Bool)

(assert (=> b!4303904 m!4896593))

(assert (=> b!4303771 d!1267159))

(declare-fun d!1267161 () Bool)

(declare-fun hash!898 (Hashable!4493 K!9189) (_ BitVec 64))

(assert (=> d!1267161 (= (hash!893 (hashF!6549 thiss!42308) key!2048) (hash!898 (hashF!6549 thiss!42308) key!2048))))

(declare-fun bs!604311 () Bool)

(assert (= bs!604311 d!1267161))

(declare-fun m!4896595 () Bool)

(assert (=> bs!604311 m!4896595))

(assert (=> b!4303771 d!1267161))

(declare-fun bs!604312 () Bool)

(declare-fun d!1267163 () Bool)

(assert (= bs!604312 (and d!1267163 d!1267145)))

(declare-fun lambda!132311 () Int)

(assert (=> bs!604312 (not (= lambda!132311 lambda!132305))))

(declare-fun bs!604313 () Bool)

(assert (= bs!604313 (and d!1267163 d!1267137)))

(assert (=> bs!604313 (not (= lambda!132311 lambda!132303))))

(declare-fun bs!604314 () Bool)

(assert (= bs!604314 (and d!1267163 d!1267127)))

(assert (=> bs!604314 (= lambda!132311 lambda!132298)))

(declare-fun bs!604315 () Bool)

(assert (= bs!604315 (and d!1267163 b!4303856)))

(assert (=> bs!604315 (not (= lambda!132311 lambda!132308))))

(declare-fun bs!604316 () Bool)

(assert (= bs!604316 (and d!1267163 d!1267113)))

(assert (=> bs!604316 (not (= lambda!132311 lambda!132289))))

(declare-fun bs!604317 () Bool)

(assert (= bs!604317 (and d!1267163 b!4303767)))

(assert (=> bs!604317 (not (= lambda!132311 lambda!132286))))

(declare-fun bs!604318 () Bool)

(assert (= bs!604318 (and d!1267163 d!1267125)))

(assert (=> bs!604318 (not (= lambda!132311 lambda!132295))))

(assert (=> d!1267163 true))

(assert (=> d!1267163 (= (allKeysSameHashInMap!296 lt!1525359 (hashF!6549 thiss!42308)) (forall!8674 (toList!2273 lt!1525359) lambda!132311))))

(declare-fun bs!604319 () Bool)

(assert (= bs!604319 d!1267163))

(declare-fun m!4896597 () Bool)

(assert (=> bs!604319 m!4896597))

(assert (=> b!4303770 d!1267163))

(declare-fun d!1267165 () Bool)

(assert (=> d!1267165 (= (array_inv!5263 (_keys!4877 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) (bvsge (size!35378 (_keys!4877 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303761 d!1267165))

(declare-fun d!1267167 () Bool)

(assert (=> d!1267167 (= (array_inv!5264 (_values!4858 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) (bvsge (size!35379 (_values!4858 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303761 d!1267167))

(declare-fun d!1267169 () Bool)

(declare-fun res!1764061 () Bool)

(declare-fun e!2675800 () Bool)

(assert (=> d!1267169 (=> res!1764061 e!2675800)))

(assert (=> d!1267169 (= res!1764061 ((_ is Nil!48040) (toList!2273 (map!10006 (_2!26368 lt!1525353)))))))

(assert (=> d!1267169 (= (forall!8674 (toList!2273 (map!10006 (_2!26368 lt!1525353))) lambda!132286) e!2675800)))

(declare-fun b!4303905 () Bool)

(declare-fun e!2675801 () Bool)

(assert (=> b!4303905 (= e!2675800 e!2675801)))

(declare-fun res!1764062 () Bool)

(assert (=> b!4303905 (=> (not res!1764062) (not e!2675801))))

(assert (=> b!4303905 (= res!1764062 (dynLambda!20388 lambda!132286 (h!53464 (toList!2273 (map!10006 (_2!26368 lt!1525353))))))))

(declare-fun b!4303906 () Bool)

(assert (=> b!4303906 (= e!2675801 (forall!8674 (t!354941 (toList!2273 (map!10006 (_2!26368 lt!1525353)))) lambda!132286))))

(assert (= (and d!1267169 (not res!1764061)) b!4303905))

(assert (= (and b!4303905 res!1764062) b!4303906))

(declare-fun b_lambda!126471 () Bool)

(assert (=> (not b_lambda!126471) (not b!4303905)))

(declare-fun m!4896599 () Bool)

(assert (=> b!4303905 m!4896599))

(declare-fun m!4896601 () Bool)

(assert (=> b!4303906 m!4896601))

(assert (=> b!4303760 d!1267169))

(declare-fun d!1267171 () Bool)

(declare-fun map!10008 (LongMapFixedSize!9154) ListLongMap!881)

(assert (=> d!1267171 (= (map!10006 (_2!26368 lt!1525353)) (map!10008 (v!42063 (underlying!9383 (_2!26368 lt!1525353)))))))

(declare-fun bs!604320 () Bool)

(assert (= bs!604320 d!1267171))

(declare-fun m!4896603 () Bool)

(assert (=> bs!604320 m!4896603))

(assert (=> b!4303760 d!1267171))

(declare-fun d!1267173 () Bool)

(declare-fun res!1764067 () Bool)

(declare-fun e!2675806 () Bool)

(assert (=> d!1267173 (=> res!1764067 e!2675806)))

(assert (=> d!1267173 (= res!1764067 (and ((_ is Cons!48039) lt!1525362) (= (_1!26367 (h!53463 lt!1525362)) key!2048)))))

(assert (=> d!1267173 (= (containsKey!269 lt!1525362 key!2048) e!2675806)))

(declare-fun b!4303911 () Bool)

(declare-fun e!2675807 () Bool)

(assert (=> b!4303911 (= e!2675806 e!2675807)))

(declare-fun res!1764068 () Bool)

(assert (=> b!4303911 (=> (not res!1764068) (not e!2675807))))

(assert (=> b!4303911 (= res!1764068 ((_ is Cons!48039) lt!1525362))))

(declare-fun b!4303912 () Bool)

(assert (=> b!4303912 (= e!2675807 (containsKey!269 (t!354940 lt!1525362) key!2048))))

(assert (= (and d!1267173 (not res!1764067)) b!4303911))

(assert (= (and b!4303911 res!1764068) b!4303912))

(declare-fun m!4896605 () Bool)

(assert (=> b!4303912 m!4896605))

(assert (=> b!4303764 d!1267173))

(declare-fun bs!604321 () Bool)

(declare-fun b!4303939 () Bool)

(assert (= bs!604321 (and b!4303939 d!1267145)))

(declare-fun lambda!132314 () Int)

(assert (=> bs!604321 (= lambda!132314 lambda!132305)))

(declare-fun bs!604322 () Bool)

(assert (= bs!604322 (and b!4303939 d!1267137)))

(assert (=> bs!604322 (= lambda!132314 lambda!132303)))

(declare-fun bs!604323 () Bool)

(assert (= bs!604323 (and b!4303939 d!1267127)))

(assert (=> bs!604323 (not (= lambda!132314 lambda!132298))))

(declare-fun bs!604324 () Bool)

(assert (= bs!604324 (and b!4303939 b!4303856)))

(assert (=> bs!604324 (= lambda!132314 lambda!132308)))

(declare-fun bs!604325 () Bool)

(assert (= bs!604325 (and b!4303939 d!1267113)))

(assert (=> bs!604325 (= lambda!132314 lambda!132289)))

(declare-fun bs!604326 () Bool)

(assert (= bs!604326 (and b!4303939 d!1267163)))

(assert (=> bs!604326 (not (= lambda!132314 lambda!132311))))

(declare-fun bs!604327 () Bool)

(assert (= bs!604327 (and b!4303939 b!4303767)))

(assert (=> bs!604327 (= lambda!132314 lambda!132286)))

(declare-fun bs!604328 () Bool)

(assert (= bs!604328 (and b!4303939 d!1267125)))

(assert (=> bs!604328 (= lambda!132314 lambda!132295)))

(declare-fun lt!1525515 () (_ BitVec 64))

(declare-fun b!4303935 () Bool)

(declare-fun e!2675824 () Bool)

(declare-datatypes ((Option!10188 0))(
  ( (None!10187) (Some!10187 (v!42071 tuple2!46176)) )
))
(declare-fun isDefined!7495 (Option!10188) Bool)

(declare-fun getPair!117 (List!48163 K!9189) Option!10188)

(assert (=> b!4303935 (= e!2675824 (isDefined!7495 (getPair!117 (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525515) key!2048)))))

(declare-fun bm!296785 () Bool)

(declare-fun call!296791 () Bool)

(declare-fun call!296795 () Option!10188)

(assert (=> bm!296785 (= call!296791 (isDefined!7495 call!296795))))

(declare-fun bm!296786 () Bool)

(declare-fun call!296792 () List!48163)

(assert (=> bm!296786 (= call!296795 (getPair!117 call!296792 key!2048))))

(declare-fun b!4303936 () Bool)

(assert (=> b!4303936 false))

(declare-fun lt!1525513 () Unit!67040)

(declare-fun lt!1525528 () Unit!67040)

(assert (=> b!4303936 (= lt!1525513 lt!1525528)))

(declare-fun lt!1525524 () List!48164)

(declare-fun lt!1525526 () List!48163)

(assert (=> b!4303936 (contains!9970 lt!1525524 (tuple2!46181 lt!1525515 lt!1525526))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!128 (List!48164 (_ BitVec 64) List!48163) Unit!67040)

(assert (=> b!4303936 (= lt!1525528 (lemmaGetValueByKeyImpliesContainsTuple!128 lt!1525524 lt!1525515 lt!1525526))))

(assert (=> b!4303936 (= lt!1525526 (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525515))))

(assert (=> b!4303936 (= lt!1525524 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))))))

(declare-fun lt!1525530 () Unit!67040)

(declare-fun lt!1525525 () Unit!67040)

(assert (=> b!4303936 (= lt!1525530 lt!1525525)))

(declare-fun lt!1525522 () List!48164)

(declare-fun isDefined!7496 (Option!10186) Bool)

(assert (=> b!4303936 (isDefined!7496 (getValueByKey!228 lt!1525522 lt!1525515))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!155 (List!48164 (_ BitVec 64)) Unit!67040)

(assert (=> b!4303936 (= lt!1525525 (lemmaContainsKeyImpliesGetValueByKeyDefined!155 lt!1525522 lt!1525515))))

(assert (=> b!4303936 (= lt!1525522 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))))))

(declare-fun lt!1525523 () Unit!67040)

(declare-fun lt!1525520 () Unit!67040)

(assert (=> b!4303936 (= lt!1525523 lt!1525520)))

(declare-fun lt!1525517 () List!48164)

(declare-fun containsKey!271 (List!48164 (_ BitVec 64)) Bool)

(assert (=> b!4303936 (containsKey!271 lt!1525517 lt!1525515)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!118 (List!48164 (_ BitVec 64)) Unit!67040)

(assert (=> b!4303936 (= lt!1525520 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!118 lt!1525517 lt!1525515))))

(assert (=> b!4303936 (= lt!1525517 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))))))

(declare-fun e!2675825 () Unit!67040)

(declare-fun Unit!67046 () Unit!67040)

(assert (=> b!4303936 (= e!2675825 Unit!67046)))

(declare-fun call!296794 () ListLongMap!881)

(declare-fun call!296790 () (_ BitVec 64))

(declare-fun lt!1525516 () ListLongMap!881)

(declare-fun bm!296787 () Bool)

(declare-fun c!731895 () Bool)

(declare-fun apply!10930 (ListLongMap!881 (_ BitVec 64)) List!48163)

(assert (=> bm!296787 (= call!296792 (apply!10930 (ite c!731895 lt!1525516 call!296794) call!296790))))

(declare-fun b!4303937 () Bool)

(declare-fun e!2675822 () Unit!67040)

(declare-fun e!2675828 () Unit!67040)

(assert (=> b!4303937 (= e!2675822 e!2675828)))

(declare-fun res!1764076 () Bool)

(declare-fun call!296793 () Bool)

(assert (=> b!4303937 (= res!1764076 call!296793)))

(declare-fun e!2675823 () Bool)

(assert (=> b!4303937 (=> (not res!1764076) (not e!2675823))))

(declare-fun c!731892 () Bool)

(assert (=> b!4303937 (= c!731892 e!2675823)))

(declare-fun bm!296788 () Bool)

(assert (=> bm!296788 (= call!296793 (contains!9969 (ite c!731895 lt!1525516 call!296794) call!296790))))

(declare-fun bm!296789 () Bool)

(assert (=> bm!296789 (= call!296794 (map!10006 (v!42064 (underlying!9384 thiss!42308))))))

(declare-fun b!4303938 () Bool)

(assert (=> b!4303938 (= e!2675823 call!296791)))

(declare-fun e!2675826 () Unit!67040)

(declare-fun forallContained!1484 (List!48164 Int tuple2!46180) Unit!67040)

(assert (=> b!4303939 (= e!2675826 (forallContained!1484 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))) lambda!132314 (tuple2!46181 lt!1525515 (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525515))))))

(declare-fun c!731893 () Bool)

(assert (=> b!4303939 (= c!731893 (not (contains!9970 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308)))) (tuple2!46181 lt!1525515 (apply!10928 (v!42064 (underlying!9384 thiss!42308)) lt!1525515)))))))

(declare-fun lt!1525512 () Unit!67040)

(assert (=> b!4303939 (= lt!1525512 e!2675825)))

(declare-fun b!4303940 () Bool)

(assert (=> b!4303940 false))

(declare-fun lt!1525519 () Unit!67040)

(declare-fun lt!1525527 () Unit!67040)

(assert (=> b!4303940 (= lt!1525519 lt!1525527)))

(declare-fun lt!1525518 () ListLongMap!881)

(assert (=> b!4303940 (contains!9968 (extractMap!293 (toList!2273 lt!1525518)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!117 (ListLongMap!881 K!9189 Hashable!4493) Unit!67040)

(assert (=> b!4303940 (= lt!1525527 (lemmaInLongMapThenInGenericMap!117 lt!1525518 key!2048 (hashF!6549 thiss!42308)))))

(assert (=> b!4303940 (= lt!1525518 call!296794)))

(declare-fun Unit!67047 () Unit!67040)

(assert (=> b!4303940 (= e!2675828 Unit!67047)))

(declare-fun bm!296790 () Bool)

(assert (=> bm!296790 (= call!296790 (hash!893 (hashF!6549 thiss!42308) key!2048))))

(declare-fun d!1267175 () Bool)

(declare-fun lt!1525521 () Bool)

(assert (=> d!1267175 (= lt!1525521 (contains!9968 (map!10007 thiss!42308) key!2048))))

(assert (=> d!1267175 (= lt!1525521 e!2675824)))

(declare-fun res!1764075 () Bool)

(assert (=> d!1267175 (=> (not res!1764075) (not e!2675824))))

(assert (=> d!1267175 (= res!1764075 (contains!9973 (v!42064 (underlying!9384 thiss!42308)) lt!1525515))))

(declare-fun lt!1525511 () Unit!67040)

(assert (=> d!1267175 (= lt!1525511 e!2675822)))

(assert (=> d!1267175 (= c!731895 (contains!9968 (extractMap!293 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308))))) key!2048))))

(declare-fun lt!1525529 () Unit!67040)

(assert (=> d!1267175 (= lt!1525529 e!2675826)))

(declare-fun c!731894 () Bool)

(assert (=> d!1267175 (= c!731894 (contains!9973 (v!42064 (underlying!9384 thiss!42308)) lt!1525515))))

(assert (=> d!1267175 (= lt!1525515 (hash!893 (hashF!6549 thiss!42308) key!2048))))

(assert (=> d!1267175 (valid!3561 thiss!42308)))

(assert (=> d!1267175 (= (contains!9967 thiss!42308 key!2048) lt!1525521)))

(declare-fun b!4303941 () Bool)

(declare-fun Unit!67048 () Unit!67040)

(assert (=> b!4303941 (= e!2675825 Unit!67048)))

(declare-fun b!4303942 () Bool)

(declare-fun lt!1525514 () Unit!67040)

(assert (=> b!4303942 (= e!2675822 lt!1525514)))

(assert (=> b!4303942 (= lt!1525516 call!296794)))

(declare-fun lemmaInGenericMapThenInLongMap!117 (ListLongMap!881 K!9189 Hashable!4493) Unit!67040)

(assert (=> b!4303942 (= lt!1525514 (lemmaInGenericMapThenInLongMap!117 lt!1525516 key!2048 (hashF!6549 thiss!42308)))))

(declare-fun res!1764077 () Bool)

(assert (=> b!4303942 (= res!1764077 call!296793)))

(declare-fun e!2675827 () Bool)

(assert (=> b!4303942 (=> (not res!1764077) (not e!2675827))))

(assert (=> b!4303942 e!2675827))

(declare-fun b!4303943 () Bool)

(declare-fun Unit!67049 () Unit!67040)

(assert (=> b!4303943 (= e!2675828 Unit!67049)))

(declare-fun b!4303944 () Bool)

(assert (=> b!4303944 (= e!2675827 call!296791)))

(declare-fun b!4303945 () Bool)

(declare-fun Unit!67050 () Unit!67040)

(assert (=> b!4303945 (= e!2675826 Unit!67050)))

(assert (= (and d!1267175 c!731894) b!4303939))

(assert (= (and d!1267175 (not c!731894)) b!4303945))

(assert (= (and b!4303939 c!731893) b!4303936))

(assert (= (and b!4303939 (not c!731893)) b!4303941))

(assert (= (and d!1267175 c!731895) b!4303942))

(assert (= (and d!1267175 (not c!731895)) b!4303937))

(assert (= (and b!4303942 res!1764077) b!4303944))

(assert (= (and b!4303937 res!1764076) b!4303938))

(assert (= (and b!4303937 c!731892) b!4303940))

(assert (= (and b!4303937 (not c!731892)) b!4303943))

(assert (= (or b!4303942 b!4303937 b!4303938 b!4303940) bm!296789))

(assert (= (or b!4303942 b!4303944 b!4303937 b!4303938) bm!296790))

(assert (= (or b!4303942 b!4303937) bm!296788))

(assert (= (or b!4303944 b!4303938) bm!296787))

(assert (= (or b!4303944 b!4303938) bm!296786))

(assert (= (or b!4303944 b!4303938) bm!296785))

(assert (= (and d!1267175 res!1764075) b!4303935))

(assert (=> d!1267175 m!4896343))

(declare-fun m!4896607 () Bool)

(assert (=> d!1267175 m!4896607))

(declare-fun m!4896609 () Bool)

(assert (=> d!1267175 m!4896609))

(declare-fun m!4896611 () Bool)

(assert (=> d!1267175 m!4896611))

(assert (=> d!1267175 m!4896345))

(assert (=> d!1267175 m!4896609))

(assert (=> d!1267175 m!4896343))

(declare-fun m!4896613 () Bool)

(assert (=> d!1267175 m!4896613))

(assert (=> d!1267175 m!4896341))

(assert (=> d!1267175 m!4896355))

(declare-fun m!4896615 () Bool)

(assert (=> b!4303936 m!4896615))

(declare-fun m!4896617 () Bool)

(assert (=> b!4303936 m!4896617))

(declare-fun m!4896619 () Bool)

(assert (=> b!4303936 m!4896619))

(assert (=> b!4303936 m!4896615))

(declare-fun m!4896621 () Bool)

(assert (=> b!4303936 m!4896621))

(declare-fun m!4896623 () Bool)

(assert (=> b!4303936 m!4896623))

(assert (=> b!4303936 m!4896341))

(declare-fun m!4896625 () Bool)

(assert (=> b!4303936 m!4896625))

(declare-fun m!4896627 () Bool)

(assert (=> b!4303936 m!4896627))

(declare-fun m!4896629 () Bool)

(assert (=> b!4303936 m!4896629))

(assert (=> b!4303939 m!4896341))

(assert (=> b!4303939 m!4896629))

(declare-fun m!4896631 () Bool)

(assert (=> b!4303939 m!4896631))

(declare-fun m!4896633 () Bool)

(assert (=> b!4303939 m!4896633))

(assert (=> bm!296789 m!4896341))

(declare-fun m!4896635 () Bool)

(assert (=> b!4303940 m!4896635))

(assert (=> b!4303940 m!4896635))

(declare-fun m!4896637 () Bool)

(assert (=> b!4303940 m!4896637))

(declare-fun m!4896639 () Bool)

(assert (=> b!4303940 m!4896639))

(declare-fun m!4896641 () Bool)

(assert (=> bm!296785 m!4896641))

(declare-fun m!4896643 () Bool)

(assert (=> b!4303942 m!4896643))

(declare-fun m!4896645 () Bool)

(assert (=> bm!296786 m!4896645))

(assert (=> bm!296790 m!4896355))

(declare-fun m!4896647 () Bool)

(assert (=> bm!296787 m!4896647))

(declare-fun m!4896649 () Bool)

(assert (=> bm!296788 m!4896649))

(assert (=> b!4303935 m!4896629))

(assert (=> b!4303935 m!4896629))

(declare-fun m!4896651 () Bool)

(assert (=> b!4303935 m!4896651))

(assert (=> b!4303935 m!4896651))

(declare-fun m!4896653 () Bool)

(assert (=> b!4303935 m!4896653))

(assert (=> b!4303765 d!1267175))

(declare-fun d!1267177 () Bool)

(assert (=> d!1267177 (= (map!10006 (v!42064 (underlying!9384 thiss!42308))) (map!10008 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308))))))))

(declare-fun bs!604329 () Bool)

(assert (= bs!604329 d!1267177))

(declare-fun m!4896655 () Bool)

(assert (=> bs!604329 m!4896655))

(assert (=> b!4303765 d!1267177))

(declare-fun d!1267179 () Bool)

(declare-fun lt!1525531 () ListMap!1559)

(assert (=> d!1267179 (invariantList!556 (toList!2274 lt!1525531))))

(assert (=> d!1267179 (= lt!1525531 (extractMap!293 (toList!2273 (map!10006 (v!42064 (underlying!9384 thiss!42308))))))))

(assert (=> d!1267179 (valid!3561 thiss!42308)))

(assert (=> d!1267179 (= (map!10007 thiss!42308) lt!1525531)))

(declare-fun bs!604330 () Bool)

(assert (= bs!604330 d!1267179))

(declare-fun m!4896657 () Bool)

(assert (=> bs!604330 m!4896657))

(assert (=> bs!604330 m!4896341))

(assert (=> bs!604330 m!4896609))

(assert (=> bs!604330 m!4896345))

(assert (=> b!4303765 d!1267179))

(declare-fun e!2675834 () Bool)

(declare-fun b!4303953 () Bool)

(declare-fun tp!1322493 () Bool)

(assert (=> b!4303953 (= e!2675834 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322493))))

(declare-fun mapNonEmpty!20518 () Bool)

(declare-fun mapRes!20518 () Bool)

(declare-fun tp!1322494 () Bool)

(declare-fun e!2675833 () Bool)

(assert (=> mapNonEmpty!20518 (= mapRes!20518 (and tp!1322494 e!2675833))))

(declare-fun mapKey!20518 () (_ BitVec 32))

(declare-fun mapRest!20518 () (Array (_ BitVec 32) List!48163))

(declare-fun mapValue!20518 () List!48163)

(assert (=> mapNonEmpty!20518 (= mapRest!20515 (store mapRest!20518 mapKey!20518 mapValue!20518))))

(declare-fun condMapEmpty!20518 () Bool)

(declare-fun mapDefault!20518 () List!48163)

(assert (=> mapNonEmpty!20515 (= condMapEmpty!20518 (= mapRest!20515 ((as const (Array (_ BitVec 32) List!48163)) mapDefault!20518)))))

(assert (=> mapNonEmpty!20515 (= tp!1322480 (and e!2675834 mapRes!20518))))

(declare-fun mapIsEmpty!20518 () Bool)

(assert (=> mapIsEmpty!20518 mapRes!20518))

(declare-fun b!4303952 () Bool)

(declare-fun tp!1322495 () Bool)

(assert (=> b!4303952 (= e!2675833 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322495))))

(assert (= (and mapNonEmpty!20515 condMapEmpty!20518) mapIsEmpty!20518))

(assert (= (and mapNonEmpty!20515 (not condMapEmpty!20518)) mapNonEmpty!20518))

(assert (= (and mapNonEmpty!20518 ((_ is Cons!48039) mapValue!20518)) b!4303952))

(assert (= (and mapNonEmpty!20515 ((_ is Cons!48039) mapDefault!20518)) b!4303953))

(declare-fun m!4896659 () Bool)

(assert (=> mapNonEmpty!20518 m!4896659))

(declare-fun b!4303958 () Bool)

(declare-fun tp!1322498 () Bool)

(declare-fun e!2675837 () Bool)

(assert (=> b!4303958 (= e!2675837 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322498))))

(assert (=> mapNonEmpty!20515 (= tp!1322484 e!2675837)))

(assert (= (and mapNonEmpty!20515 ((_ is Cons!48039) mapValue!20515)) b!4303958))

(declare-fun b!4303959 () Bool)

(declare-fun tp!1322499 () Bool)

(declare-fun e!2675838 () Bool)

(assert (=> b!4303959 (= e!2675838 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322499))))

(assert (=> b!4303772 (= tp!1322483 e!2675838)))

(assert (= (and b!4303772 ((_ is Cons!48039) mapDefault!20515)) b!4303959))

(declare-fun b!4303960 () Bool)

(declare-fun tp!1322500 () Bool)

(declare-fun e!2675839 () Bool)

(assert (=> b!4303960 (= e!2675839 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322500))))

(assert (=> b!4303761 (= tp!1322485 e!2675839)))

(assert (= (and b!4303761 ((_ is Cons!48039) (zeroValue!4836 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308))))))) b!4303960))

(declare-fun b!4303961 () Bool)

(declare-fun e!2675840 () Bool)

(declare-fun tp!1322501 () Bool)

(assert (=> b!4303961 (= e!2675840 (and tp_is_empty!23449 tp_is_empty!23447 tp!1322501))))

(assert (=> b!4303761 (= tp!1322482 e!2675840)))

(assert (= (and b!4303761 ((_ is Cons!48039) (minValue!4836 (v!42063 (underlying!9383 (v!42064 (underlying!9384 thiss!42308))))))) b!4303961))

(declare-fun b_lambda!126473 () Bool)

(assert (= b_lambda!126467 (or b!4303767 b_lambda!126473)))

(declare-fun bs!604331 () Bool)

(declare-fun d!1267181 () Bool)

(assert (= bs!604331 (and d!1267181 b!4303767)))

(assert (=> bs!604331 (= (dynLambda!20388 lambda!132286 (h!53464 (toList!2273 lt!1525359))) (noDuplicateKeys!179 (_2!26369 (h!53464 (toList!2273 lt!1525359)))))))

(declare-fun m!4896661 () Bool)

(assert (=> bs!604331 m!4896661))

(assert (=> b!4303850 d!1267181))

(declare-fun b_lambda!126475 () Bool)

(assert (= b_lambda!126471 (or b!4303767 b_lambda!126475)))

(declare-fun bs!604332 () Bool)

(declare-fun d!1267183 () Bool)

(assert (= bs!604332 (and d!1267183 b!4303767)))

(assert (=> bs!604332 (= (dynLambda!20388 lambda!132286 (h!53464 (toList!2273 (map!10006 (_2!26368 lt!1525353))))) (noDuplicateKeys!179 (_2!26369 (h!53464 (toList!2273 (map!10006 (_2!26368 lt!1525353)))))))))

(declare-fun m!4896663 () Bool)

(assert (=> bs!604332 m!4896663))

(assert (=> b!4303905 d!1267183))

(declare-fun b_lambda!126477 () Bool)

(assert (= b_lambda!126469 (or (and b!4303761 b_free!128267) b_lambda!126477)))

(check-sat (not b_lambda!126473) (not b!4303882) (not b!4303844) (not b!4303828) (not b!4303879) (not b!4303811) (not bm!296766) (not b!4303939) (not b!4303833) (not bm!296788) (not b!4303903) (not d!1267119) (not mapNonEmpty!20518) (not d!1267117) (not b_next!128971) (not b!4303857) (not d!1267123) (not d!1267163) (not b!4303961) (not b!4303842) (not bm!296787) tp_is_empty!23447 (not b_lambda!126477) (not tb!257263) (not b!4303808) (not b!4303942) (not b!4303841) (not b!4303777) (not b!4303784) (not b!4303835) (not d!1267131) (not d!1267147) (not d!1267155) (not bs!604331) (not b!4303959) (not d!1267137) (not b!4303807) (not b!4303935) (not b!4303856) (not b!4303834) (not d!1267161) (not d!1267175) (not d!1267143) (not b!4303805) (not b!4303940) (not d!1267145) b_and!339661 (not b!4303804) (not b!4303897) (not b!4303952) tp_is_empty!23449 (not b!4303783) (not b!4303958) b_and!339663 (not d!1267171) (not b!4303806) (not b_next!128973) (not d!1267121) (not bm!296771) (not b!4303912) (not bm!296765) (not b!4303960) (not d!1267125) (not b!4303831) (not b!4303851) (not b!4303880) (not d!1267177) (not b!4303906) (not d!1267157) (not b!4303878) (not b!4303829) (not b!4303859) (not d!1267127) (not b!4303936) (not b!4303803) (not d!1267113) (not bm!296790) (not b!4303832) (not d!1267133) (not bm!296789) (not bm!296786) (not b!4303953) (not bm!296772) (not b!4303838) (not d!1267179) (not d!1267115) (not d!1267159) (not bm!296785) (not d!1267141) (not b!4303858) (not d!1267151) (not d!1267139) (not b!4303822) (not b!4303830) (not b!4303843) (not d!1267135) (not b!4303823) (not b_lambda!126475) (not bs!604332) (not b!4303883))
(check-sat b_and!339663 b_and!339661 (not b_next!128973) (not b_next!128971))
