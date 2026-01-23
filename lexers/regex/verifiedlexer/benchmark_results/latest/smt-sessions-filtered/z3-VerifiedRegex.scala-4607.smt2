; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242042 () Bool)

(assert start!242042)

(declare-fun b!2480318 () Bool)

(declare-fun b_free!72193 () Bool)

(declare-fun b_next!72897 () Bool)

(assert (=> b!2480318 (= b_free!72193 (not b_next!72897))))

(declare-fun tp!793811 () Bool)

(declare-fun b_and!188439 () Bool)

(assert (=> b!2480318 (= tp!793811 b_and!188439)))

(declare-fun b!2480312 () Bool)

(declare-fun b_free!72195 () Bool)

(declare-fun b_next!72899 () Bool)

(assert (=> b!2480312 (= b_free!72195 (not b_next!72899))))

(declare-fun tp!793812 () Bool)

(declare-fun b_and!188441 () Bool)

(assert (=> b!2480312 (= tp!793812 b_and!188441)))

(declare-fun b!2480308 () Bool)

(declare-fun e!1574217 () Bool)

(declare-datatypes ((K!5420 0))(
  ( (K!5421 (val!8811 Int)) )
))
(declare-datatypes ((V!5622 0))(
  ( (V!5623 (val!8812 Int)) )
))
(declare-datatypes ((tuple2!28676 0))(
  ( (tuple2!28677 (_1!16879 K!5420) (_2!16879 V!5622)) )
))
(declare-datatypes ((List!29155 0))(
  ( (Nil!29055) (Cons!29055 (h!34461 tuple2!28676) (t!210812 List!29155)) )
))
(declare-datatypes ((ListMap!1025 0))(
  ( (ListMap!1026 (toList!1540 List!29155)) )
))
(declare-fun lt!887378 () ListMap!1025)

(declare-fun key!2246 () K!5420)

(declare-fun contains!5063 (ListMap!1025 K!5420) Bool)

(assert (=> b!2480308 (= e!1574217 (contains!5063 lt!887378 key!2246))))

(declare-fun b!2480309 () Bool)

(declare-fun res!1049964 () Bool)

(declare-fun e!1574212 () Bool)

(assert (=> b!2480309 (=> (not res!1049964) (not e!1574212))))

(declare-datatypes ((Hashable!3244 0))(
  ( (HashableExt!3243 (__x!18908 Int)) )
))
(declare-datatypes ((array!11793 0))(
  ( (array!11794 (arr!5258 (Array (_ BitVec 32) List!29155)) (size!22677 (_ BitVec 32))) )
))
(declare-datatypes ((array!11795 0))(
  ( (array!11796 (arr!5259 (Array (_ BitVec 32) (_ BitVec 64))) (size!22678 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6668 0))(
  ( (LongMapFixedSize!6669 (defaultEntry!3708 Int) (mask!8490 (_ BitVec 32)) (extraKeys!3582 (_ BitVec 32)) (zeroValue!3592 List!29155) (minValue!3592 List!29155) (_size!6715 (_ BitVec 32)) (_keys!3631 array!11795) (_values!3614 array!11793) (_vacant!3395 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13153 0))(
  ( (Cell!13154 (v!31380 LongMapFixedSize!6668)) )
))
(declare-datatypes ((MutLongMap!3334 0))(
  ( (LongMap!3334 (underlying!6875 Cell!13153)) (MutLongMapExt!3333 (__x!18909 Int)) )
))
(declare-datatypes ((Cell!13155 0))(
  ( (Cell!13156 (v!31381 MutLongMap!3334)) )
))
(declare-datatypes ((MutableMap!3244 0))(
  ( (MutableMapExt!3243 (__x!18910 Int)) (HashMap!3244 (underlying!6876 Cell!13155) (hashF!5202 Hashable!3244) (_size!6716 (_ BitVec 32)) (defaultValue!3406 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3244)

(declare-fun valid!2544 (MutableMap!3244) Bool)

(assert (=> b!2480309 (= res!1049964 (valid!2544 thiss!42540))))

(declare-fun b!2480311 () Bool)

(declare-fun e!1574215 () Bool)

(assert (=> b!2480311 (= e!1574212 (not e!1574215))))

(declare-fun res!1049962 () Bool)

(assert (=> b!2480311 (=> res!1049962 e!1574215)))

(declare-datatypes ((tuple2!28678 0))(
  ( (tuple2!28679 (_1!16880 Bool) (_2!16880 MutLongMap!3334)) )
))
(declare-fun lt!887387 () tuple2!28678)

(assert (=> b!2480311 (= res!1049962 (not (_1!16880 lt!887387)))))

(declare-fun lt!887390 () List!29155)

(declare-fun noDuplicateKeys!70 (List!29155) Bool)

(assert (=> b!2480311 (noDuplicateKeys!70 lt!887390)))

(declare-datatypes ((Unit!42513 0))(
  ( (Unit!42514) )
))
(declare-fun lt!887383 () Unit!42513)

(declare-fun lt!887382 () List!29155)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!56 (List!29155 K!5420) Unit!42513)

(assert (=> b!2480311 (= lt!887383 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!56 lt!887382 key!2246))))

(declare-fun lt!887389 () Cell!13155)

(declare-datatypes ((tuple2!28680 0))(
  ( (tuple2!28681 (_1!16881 Unit!42513) (_2!16881 MutableMap!3244)) )
))
(declare-fun lt!887394 () tuple2!28680)

(declare-fun Unit!42515 () Unit!42513)

(declare-fun Unit!42516 () Unit!42513)

(assert (=> b!2480311 (= lt!887394 (ite (_1!16880 lt!887387) (tuple2!28681 Unit!42515 (HashMap!3244 lt!887389 (hashF!5202 thiss!42540) (bvsub (_size!6716 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3406 thiss!42540))) (tuple2!28681 Unit!42516 (HashMap!3244 lt!887389 (hashF!5202 thiss!42540) (_size!6716 thiss!42540) (defaultValue!3406 thiss!42540)))))))

(assert (=> b!2480311 (= lt!887389 (Cell!13156 (_2!16880 lt!887387)))))

(declare-fun lt!887380 () (_ BitVec 64))

(declare-fun update!177 (MutLongMap!3334 (_ BitVec 64) List!29155) tuple2!28678)

(assert (=> b!2480311 (= lt!887387 (update!177 (v!31381 (underlying!6876 thiss!42540)) lt!887380 lt!887390))))

(declare-fun removePairForKey!60 (List!29155 K!5420) List!29155)

(assert (=> b!2480311 (= lt!887390 (removePairForKey!60 lt!887382 key!2246))))

(declare-fun map!6144 (MutableMap!3244) ListMap!1025)

(assert (=> b!2480311 (= lt!887378 (map!6144 thiss!42540))))

(declare-datatypes ((tuple2!28682 0))(
  ( (tuple2!28683 (_1!16882 (_ BitVec 64)) (_2!16882 List!29155)) )
))
(declare-datatypes ((List!29156 0))(
  ( (Nil!29056) (Cons!29056 (h!34462 tuple2!28682) (t!210813 List!29156)) )
))
(declare-datatypes ((ListLongMap!485 0))(
  ( (ListLongMap!486 (toList!1541 List!29156)) )
))
(declare-fun lt!887381 () ListLongMap!485)

(declare-fun lt!887391 () Unit!42513)

(declare-fun lambda!93852 () Int)

(declare-fun forallContained!841 (List!29156 Int tuple2!28682) Unit!42513)

(assert (=> b!2480311 (= lt!887391 (forallContained!841 (toList!1541 lt!887381) lambda!93852 (tuple2!28683 lt!887380 lt!887382)))))

(declare-fun map!6145 (MutLongMap!3334) ListLongMap!485)

(assert (=> b!2480311 (= lt!887381 (map!6145 (v!31381 (underlying!6876 thiss!42540))))))

(declare-fun apply!6898 (MutLongMap!3334 (_ BitVec 64)) List!29155)

(assert (=> b!2480311 (= lt!887382 (apply!6898 (v!31381 (underlying!6876 thiss!42540)) lt!887380))))

(declare-fun hash!673 (Hashable!3244 K!5420) (_ BitVec 64))

(assert (=> b!2480311 (= lt!887380 (hash!673 (hashF!5202 thiss!42540) key!2246))))

(declare-fun e!1574208 () Bool)

(declare-fun e!1574207 () Bool)

(assert (=> b!2480312 (= e!1574208 (and e!1574207 tp!793812))))

(declare-fun mapIsEmpty!15460 () Bool)

(declare-fun mapRes!15460 () Bool)

(assert (=> mapIsEmpty!15460 mapRes!15460))

(declare-fun b!2480313 () Bool)

(declare-fun e!1574209 () Bool)

(declare-fun lt!887392 () MutLongMap!3334)

(get-info :version)

(assert (=> b!2480313 (= e!1574207 (and e!1574209 ((_ is LongMap!3334) lt!887392)))))

(assert (=> b!2480313 (= lt!887392 (v!31381 (underlying!6876 thiss!42540)))))

(declare-fun b!2480314 () Bool)

(declare-fun res!1049963 () Bool)

(assert (=> b!2480314 (=> (not res!1049963) (not e!1574217))))

(assert (=> b!2480314 (= res!1049963 (valid!2544 (_2!16881 lt!887394)))))

(declare-fun b!2480315 () Bool)

(declare-fun res!1049966 () Bool)

(assert (=> b!2480315 (=> (not res!1049966) (not e!1574217))))

(declare-fun lt!887393 () ListLongMap!485)

(declare-fun allKeysSameHashInMap!153 (ListLongMap!485 Hashable!3244) Bool)

(assert (=> b!2480315 (= res!1049966 (allKeysSameHashInMap!153 lt!887393 (hashF!5202 (_2!16881 lt!887394))))))

(declare-fun b!2480316 () Bool)

(declare-fun e!1574214 () Bool)

(declare-fun e!1574211 () Bool)

(assert (=> b!2480316 (= e!1574214 e!1574211)))

(declare-fun b!2480317 () Bool)

(assert (=> b!2480317 (= e!1574209 e!1574214)))

(declare-fun tp!793814 () Bool)

(declare-fun tp!793810 () Bool)

(declare-fun e!1574210 () Bool)

(declare-fun array_inv!3771 (array!11795) Bool)

(declare-fun array_inv!3772 (array!11793) Bool)

(assert (=> b!2480318 (= e!1574211 (and tp!793811 tp!793814 tp!793810 (array_inv!3771 (_keys!3631 (v!31380 (underlying!6875 (v!31381 (underlying!6876 thiss!42540)))))) (array_inv!3772 (_values!3614 (v!31380 (underlying!6875 (v!31381 (underlying!6876 thiss!42540)))))) e!1574210))))

(declare-fun b!2480310 () Bool)

(declare-fun tp!793809 () Bool)

(assert (=> b!2480310 (= e!1574210 (and tp!793809 mapRes!15460))))

(declare-fun condMapEmpty!15460 () Bool)

(declare-fun mapDefault!15460 () List!29155)

(assert (=> b!2480310 (= condMapEmpty!15460 (= (arr!5258 (_values!3614 (v!31380 (underlying!6875 (v!31381 (underlying!6876 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29155)) mapDefault!15460)))))

(declare-fun res!1049959 () Bool)

(assert (=> start!242042 (=> (not res!1049959) (not e!1574212))))

(assert (=> start!242042 (= res!1049959 ((_ is HashMap!3244) thiss!42540))))

(assert (=> start!242042 e!1574212))

(assert (=> start!242042 e!1574208))

(declare-fun tp_is_empty!12191 () Bool)

(assert (=> start!242042 tp_is_empty!12191))

(declare-fun mapNonEmpty!15460 () Bool)

(declare-fun tp!793808 () Bool)

(declare-fun tp!793813 () Bool)

(assert (=> mapNonEmpty!15460 (= mapRes!15460 (and tp!793808 tp!793813))))

(declare-fun mapRest!15460 () (Array (_ BitVec 32) List!29155))

(declare-fun mapValue!15460 () List!29155)

(declare-fun mapKey!15460 () (_ BitVec 32))

(assert (=> mapNonEmpty!15460 (= (arr!5258 (_values!3614 (v!31380 (underlying!6875 (v!31381 (underlying!6876 thiss!42540)))))) (store mapRest!15460 mapKey!15460 mapValue!15460))))

(declare-fun b!2480319 () Bool)

(assert (=> b!2480319 (= e!1574215 ((_ is HashMap!3244) (_2!16881 lt!887394)))))

(declare-fun lt!887386 () ListLongMap!485)

(declare-fun eq!61 (ListMap!1025 ListMap!1025) Bool)

(declare-fun extractMap!162 (List!29156) ListMap!1025)

(declare-fun -!117 (ListMap!1025 K!5420) ListMap!1025)

(assert (=> b!2480319 (eq!61 (extractMap!162 (toList!1541 lt!887386)) (-!117 (extractMap!162 (toList!1541 lt!887381)) key!2246))))

(declare-fun lt!887384 () Unit!42513)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!23 (ListLongMap!485 (_ BitVec 64) List!29155 K!5420 Hashable!3244) Unit!42513)

(assert (=> b!2480319 (= lt!887384 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!23 lt!887381 lt!887380 lt!887390 key!2246 (hashF!5202 (_2!16881 lt!887394))))))

(assert (=> b!2480319 e!1574217))

(declare-fun res!1049965 () Bool)

(assert (=> b!2480319 (=> (not res!1049965) (not e!1574217))))

(declare-fun forall!5959 (List!29156 Int) Bool)

(assert (=> b!2480319 (= res!1049965 (forall!5959 (toList!1541 lt!887393) lambda!93852))))

(assert (=> b!2480319 (= lt!887393 (map!6145 (v!31381 (underlying!6876 (_2!16881 lt!887394)))))))

(declare-fun e!1574216 () Bool)

(assert (=> b!2480319 e!1574216))

(declare-fun res!1049960 () Bool)

(assert (=> b!2480319 (=> (not res!1049960) (not e!1574216))))

(assert (=> b!2480319 (= res!1049960 (forall!5959 (toList!1541 lt!887386) lambda!93852))))

(declare-fun +!76 (ListLongMap!485 tuple2!28682) ListLongMap!485)

(assert (=> b!2480319 (= lt!887386 (+!76 lt!887381 (tuple2!28683 lt!887380 lt!887390)))))

(declare-fun lt!887379 () Unit!42513)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!47 (ListLongMap!485 (_ BitVec 64) List!29155 Hashable!3244) Unit!42513)

(assert (=> b!2480319 (= lt!887379 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!47 lt!887381 lt!887380 lt!887390 (hashF!5202 (_2!16881 lt!887394))))))

(declare-fun allKeysSameHash!57 (List!29155 (_ BitVec 64) Hashable!3244) Bool)

(assert (=> b!2480319 (allKeysSameHash!57 lt!887390 lt!887380 (hashF!5202 (_2!16881 lt!887394)))))

(declare-fun lt!887388 () Unit!42513)

(declare-fun lemmaRemovePairForKeyPreservesHash!51 (List!29155 K!5420 (_ BitVec 64) Hashable!3244) Unit!42513)

(assert (=> b!2480319 (= lt!887388 (lemmaRemovePairForKeyPreservesHash!51 lt!887382 key!2246 lt!887380 (hashF!5202 (_2!16881 lt!887394))))))

(assert (=> b!2480319 (allKeysSameHash!57 lt!887382 lt!887380 (hashF!5202 (_2!16881 lt!887394)))))

(declare-fun lt!887385 () Unit!42513)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!53 (List!29156 (_ BitVec 64) List!29155 Hashable!3244) Unit!42513)

(assert (=> b!2480319 (= lt!887385 (lemmaInLongMapAllKeySameHashThenForTuple!53 (toList!1541 lt!887381) lt!887380 lt!887382 (hashF!5202 (_2!16881 lt!887394))))))

(declare-fun b!2480320 () Bool)

(assert (=> b!2480320 (= e!1574216 (allKeysSameHashInMap!153 lt!887386 (hashF!5202 (_2!16881 lt!887394))))))

(declare-fun b!2480321 () Bool)

(declare-fun res!1049961 () Bool)

(assert (=> b!2480321 (=> (not res!1049961) (not e!1574212))))

(declare-fun contains!5064 (MutableMap!3244 K!5420) Bool)

(assert (=> b!2480321 (= res!1049961 (contains!5064 thiss!42540 key!2246))))

(assert (= (and start!242042 res!1049959) b!2480309))

(assert (= (and b!2480309 res!1049964) b!2480321))

(assert (= (and b!2480321 res!1049961) b!2480311))

(assert (= (and b!2480311 (not res!1049962)) b!2480319))

(assert (= (and b!2480319 res!1049960) b!2480320))

(assert (= (and b!2480319 res!1049965) b!2480315))

(assert (= (and b!2480315 res!1049966) b!2480314))

(assert (= (and b!2480314 res!1049963) b!2480308))

(assert (= (and b!2480310 condMapEmpty!15460) mapIsEmpty!15460))

(assert (= (and b!2480310 (not condMapEmpty!15460)) mapNonEmpty!15460))

(assert (= b!2480318 b!2480310))

(assert (= b!2480316 b!2480318))

(assert (= b!2480317 b!2480316))

(assert (= (and b!2480313 ((_ is LongMap!3334) (v!31381 (underlying!6876 thiss!42540)))) b!2480317))

(assert (= b!2480312 b!2480313))

(assert (= (and start!242042 ((_ is HashMap!3244) thiss!42540)) b!2480312))

(declare-fun m!2848285 () Bool)

(assert (=> b!2480321 m!2848285))

(declare-fun m!2848287 () Bool)

(assert (=> mapNonEmpty!15460 m!2848287))

(declare-fun m!2848289 () Bool)

(assert (=> b!2480315 m!2848289))

(declare-fun m!2848291 () Bool)

(assert (=> b!2480319 m!2848291))

(declare-fun m!2848293 () Bool)

(assert (=> b!2480319 m!2848293))

(declare-fun m!2848295 () Bool)

(assert (=> b!2480319 m!2848295))

(declare-fun m!2848297 () Bool)

(assert (=> b!2480319 m!2848297))

(declare-fun m!2848299 () Bool)

(assert (=> b!2480319 m!2848299))

(declare-fun m!2848301 () Bool)

(assert (=> b!2480319 m!2848301))

(declare-fun m!2848303 () Bool)

(assert (=> b!2480319 m!2848303))

(declare-fun m!2848305 () Bool)

(assert (=> b!2480319 m!2848305))

(declare-fun m!2848307 () Bool)

(assert (=> b!2480319 m!2848307))

(assert (=> b!2480319 m!2848291))

(assert (=> b!2480319 m!2848305))

(assert (=> b!2480319 m!2848293))

(declare-fun m!2848309 () Bool)

(assert (=> b!2480319 m!2848309))

(declare-fun m!2848311 () Bool)

(assert (=> b!2480319 m!2848311))

(declare-fun m!2848313 () Bool)

(assert (=> b!2480319 m!2848313))

(declare-fun m!2848315 () Bool)

(assert (=> b!2480319 m!2848315))

(declare-fun m!2848317 () Bool)

(assert (=> b!2480319 m!2848317))

(declare-fun m!2848319 () Bool)

(assert (=> b!2480311 m!2848319))

(declare-fun m!2848321 () Bool)

(assert (=> b!2480311 m!2848321))

(declare-fun m!2848323 () Bool)

(assert (=> b!2480311 m!2848323))

(declare-fun m!2848325 () Bool)

(assert (=> b!2480311 m!2848325))

(declare-fun m!2848327 () Bool)

(assert (=> b!2480311 m!2848327))

(declare-fun m!2848329 () Bool)

(assert (=> b!2480311 m!2848329))

(declare-fun m!2848331 () Bool)

(assert (=> b!2480311 m!2848331))

(declare-fun m!2848333 () Bool)

(assert (=> b!2480311 m!2848333))

(declare-fun m!2848335 () Bool)

(assert (=> b!2480311 m!2848335))

(declare-fun m!2848337 () Bool)

(assert (=> b!2480318 m!2848337))

(declare-fun m!2848339 () Bool)

(assert (=> b!2480318 m!2848339))

(declare-fun m!2848341 () Bool)

(assert (=> b!2480308 m!2848341))

(declare-fun m!2848343 () Bool)

(assert (=> b!2480309 m!2848343))

(declare-fun m!2848345 () Bool)

(assert (=> b!2480320 m!2848345))

(declare-fun m!2848347 () Bool)

(assert (=> b!2480314 m!2848347))

(check-sat (not b!2480318) (not b_next!72899) (not b!2480314) (not mapNonEmpty!15460) b_and!188439 (not b!2480310) (not b!2480319) tp_is_empty!12191 (not b!2480311) (not b!2480308) (not b!2480320) (not b!2480321) (not b!2480309) (not b!2480315) (not b_next!72897) b_and!188441)
(check-sat b_and!188441 b_and!188439 (not b_next!72897) (not b_next!72899))
