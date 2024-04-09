; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22158 () Bool)

(assert start!22158)

(declare-fun b!231033 () Bool)

(declare-fun b_free!6213 () Bool)

(declare-fun b_next!6213 () Bool)

(assert (=> b!231033 (= b_free!6213 (not b_next!6213))))

(declare-fun tp!21780 () Bool)

(declare-fun b_and!13129 () Bool)

(assert (=> b!231033 (= tp!21780 b_and!13129)))

(declare-fun b!231016 () Bool)

(declare-datatypes ((Unit!7092 0))(
  ( (Unit!7093) )
))
(declare-fun e!149961 () Unit!7092)

(declare-fun Unit!7094 () Unit!7092)

(assert (=> b!231016 (= e!149961 Unit!7094)))

(declare-fun lt!116431 () Unit!7092)

(declare-datatypes ((V!7747 0))(
  ( (V!7748 (val!3082 Int)) )
))
(declare-datatypes ((ValueCell!2694 0))(
  ( (ValueCellFull!2694 (v!5098 V!7747)) (EmptyCell!2694) )
))
(declare-datatypes ((array!11392 0))(
  ( (array!11393 (arr!5415 (Array (_ BitVec 32) ValueCell!2694)) (size!5748 (_ BitVec 32))) )
))
(declare-datatypes ((array!11394 0))(
  ( (array!11395 (arr!5416 (Array (_ BitVec 32) (_ BitVec 64))) (size!5749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3288 0))(
  ( (LongMapFixedSize!3289 (defaultEntry!4303 Int) (mask!10201 (_ BitVec 32)) (extraKeys!4040 (_ BitVec 32)) (zeroValue!4144 V!7747) (minValue!4144 V!7747) (_size!1693 (_ BitVec 32)) (_keys!6357 array!11394) (_values!4286 array!11392) (_vacant!1693 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3288)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!298 (array!11394 array!11392 (_ BitVec 32) (_ BitVec 32) V!7747 V!7747 (_ BitVec 64) Int) Unit!7092)

(assert (=> b!231016 (= lt!116431 (lemmaInListMapThenSeekEntryOrOpenFindsIt!298 (_keys!6357 thiss!1504) (_values!4286 thiss!1504) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) key!932 (defaultEntry!4303 thiss!1504)))))

(assert (=> b!231016 false))

(declare-fun b!231017 () Bool)

(declare-fun e!149966 () Unit!7092)

(declare-fun Unit!7095 () Unit!7092)

(assert (=> b!231017 (= e!149966 Unit!7095)))

(declare-fun b!231018 () Bool)

(declare-fun res!113585 () Bool)

(declare-fun e!149967 () Bool)

(assert (=> b!231018 (=> (not res!113585) (not e!149967))))

(declare-fun call!21472 () Bool)

(assert (=> b!231018 (= res!113585 call!21472)))

(declare-fun e!149969 () Bool)

(assert (=> b!231018 (= e!149969 e!149967)))

(declare-fun bm!21468 () Bool)

(declare-fun call!21471 () Bool)

(declare-fun arrayContainsKey!0 (array!11394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21468 (= call!21471 (arrayContainsKey!0 (_keys!6357 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231019 () Bool)

(declare-fun Unit!7096 () Unit!7092)

(assert (=> b!231019 (= e!149966 Unit!7096)))

(declare-fun lt!116434 () Unit!7092)

(declare-fun lemmaArrayContainsKeyThenInListMap!131 (array!11394 array!11392 (_ BitVec 32) (_ BitVec 32) V!7747 V!7747 (_ BitVec 64) (_ BitVec 32) Int) Unit!7092)

(assert (=> b!231019 (= lt!116434 (lemmaArrayContainsKeyThenInListMap!131 (_keys!6357 thiss!1504) (_values!4286 thiss!1504) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4303 thiss!1504)))))

(assert (=> b!231019 false))

(declare-fun mapNonEmpty!10282 () Bool)

(declare-fun mapRes!10282 () Bool)

(declare-fun tp!21781 () Bool)

(declare-fun e!149963 () Bool)

(assert (=> mapNonEmpty!10282 (= mapRes!10282 (and tp!21781 e!149963))))

(declare-fun mapRest!10282 () (Array (_ BitVec 32) ValueCell!2694))

(declare-fun mapKey!10282 () (_ BitVec 32))

(declare-fun mapValue!10282 () ValueCell!2694)

(assert (=> mapNonEmpty!10282 (= (arr!5415 (_values!4286 thiss!1504)) (store mapRest!10282 mapKey!10282 mapValue!10282))))

(declare-fun b!231020 () Bool)

(declare-fun e!149971 () Bool)

(declare-fun e!149968 () Bool)

(assert (=> b!231020 (= e!149971 e!149968)))

(declare-fun res!113582 () Bool)

(assert (=> b!231020 (=> (not res!113582) (not e!149968))))

(declare-datatypes ((SeekEntryResult!956 0))(
  ( (MissingZero!956 (index!5994 (_ BitVec 32))) (Found!956 (index!5995 (_ BitVec 32))) (Intermediate!956 (undefined!1768 Bool) (index!5996 (_ BitVec 32)) (x!23488 (_ BitVec 32))) (Undefined!956) (MissingVacant!956 (index!5997 (_ BitVec 32))) )
))
(declare-fun lt!116429 () SeekEntryResult!956)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231020 (= res!113582 (or (= lt!116429 (MissingZero!956 index!297)) (= lt!116429 (MissingVacant!956 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11394 (_ BitVec 32)) SeekEntryResult!956)

(assert (=> b!231020 (= lt!116429 (seekEntryOrOpen!0 key!932 (_keys!6357 thiss!1504) (mask!10201 thiss!1504)))))

(declare-fun mapIsEmpty!10282 () Bool)

(assert (=> mapIsEmpty!10282 mapRes!10282))

(declare-fun b!231021 () Bool)

(declare-fun c!38354 () Bool)

(get-info :version)

(assert (=> b!231021 (= c!38354 ((_ is MissingVacant!956) lt!116429))))

(declare-fun e!149965 () Bool)

(assert (=> b!231021 (= e!149969 e!149965)))

(declare-fun b!231022 () Bool)

(declare-fun e!149962 () Bool)

(assert (=> b!231022 (= e!149962 (not call!21471))))

(declare-fun b!231023 () Bool)

(declare-fun e!149960 () Bool)

(declare-fun tp_is_empty!6075 () Bool)

(assert (=> b!231023 (= e!149960 tp_is_empty!6075)))

(declare-fun b!231024 () Bool)

(declare-fun res!113587 () Bool)

(assert (=> b!231024 (=> (not res!113587) (not e!149967))))

(assert (=> b!231024 (= res!113587 (= (select (arr!5416 (_keys!6357 thiss!1504)) (index!5994 lt!116429)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!38355 () Bool)

(declare-fun bm!21469 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21469 (= call!21472 (inRange!0 (ite c!38355 (index!5994 lt!116429) (index!5997 lt!116429)) (mask!10201 thiss!1504)))))

(declare-fun res!113580 () Bool)

(assert (=> start!22158 (=> (not res!113580) (not e!149971))))

(declare-fun valid!1299 (LongMapFixedSize!3288) Bool)

(assert (=> start!22158 (= res!113580 (valid!1299 thiss!1504))))

(assert (=> start!22158 e!149971))

(declare-fun e!149970 () Bool)

(assert (=> start!22158 e!149970))

(assert (=> start!22158 true))

(assert (=> start!22158 tp_is_empty!6075))

(declare-fun b!231025 () Bool)

(declare-fun lt!116428 () Unit!7092)

(assert (=> b!231025 (= e!149961 lt!116428)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!312 (array!11394 array!11392 (_ BitVec 32) (_ BitVec 32) V!7747 V!7747 (_ BitVec 64) Int) Unit!7092)

(assert (=> b!231025 (= lt!116428 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!312 (_keys!6357 thiss!1504) (_values!4286 thiss!1504) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) key!932 (defaultEntry!4303 thiss!1504)))))

(assert (=> b!231025 (= c!38355 ((_ is MissingZero!956) lt!116429))))

(assert (=> b!231025 e!149969))

(declare-fun b!231026 () Bool)

(assert (=> b!231026 (= e!149965 ((_ is Undefined!956) lt!116429))))

(declare-fun b!231027 () Bool)

(declare-fun e!149958 () Bool)

(assert (=> b!231027 (= e!149958 (not true))))

(declare-fun lt!116423 () array!11394)

(declare-fun arrayCountValidKeys!0 (array!11394 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231027 (= (arrayCountValidKeys!0 lt!116423 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116433 () Unit!7092)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11394 (_ BitVec 32)) Unit!7092)

(assert (=> b!231027 (= lt!116433 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116423 index!297))))

(assert (=> b!231027 (arrayContainsKey!0 lt!116423 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116435 () Unit!7092)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11394 (_ BitVec 64) (_ BitVec 32)) Unit!7092)

(assert (=> b!231027 (= lt!116435 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116423 key!932 index!297))))

(declare-datatypes ((tuple2!4544 0))(
  ( (tuple2!4545 (_1!2282 (_ BitVec 64)) (_2!2282 V!7747)) )
))
(declare-datatypes ((List!3488 0))(
  ( (Nil!3485) (Cons!3484 (h!4132 tuple2!4544) (t!8455 List!3488)) )
))
(declare-datatypes ((ListLongMap!3471 0))(
  ( (ListLongMap!3472 (toList!1751 List!3488)) )
))
(declare-fun lt!116430 () ListLongMap!3471)

(declare-fun v!346 () V!7747)

(declare-fun +!606 (ListLongMap!3471 tuple2!4544) ListLongMap!3471)

(declare-fun getCurrentListMap!1274 (array!11394 array!11392 (_ BitVec 32) (_ BitVec 32) V!7747 V!7747 (_ BitVec 32) Int) ListLongMap!3471)

(assert (=> b!231027 (= (+!606 lt!116430 (tuple2!4545 key!932 v!346)) (getCurrentListMap!1274 lt!116423 (array!11393 (store (arr!5415 (_values!4286 thiss!1504)) index!297 (ValueCellFull!2694 v!346)) (size!5748 (_values!4286 thiss!1504))) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4303 thiss!1504)))))

(declare-fun lt!116436 () Unit!7092)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!65 (array!11394 array!11392 (_ BitVec 32) (_ BitVec 32) V!7747 V!7747 (_ BitVec 32) (_ BitVec 64) V!7747 Int) Unit!7092)

(assert (=> b!231027 (= lt!116436 (lemmaAddValidKeyToArrayThenAddPairToListMap!65 (_keys!6357 thiss!1504) (_values!4286 thiss!1504) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) index!297 key!932 v!346 (defaultEntry!4303 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11394 (_ BitVec 32)) Bool)

(assert (=> b!231027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116423 (mask!10201 thiss!1504))))

(declare-fun lt!116432 () Unit!7092)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11394 (_ BitVec 32) (_ BitVec 32)) Unit!7092)

(assert (=> b!231027 (= lt!116432 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6357 thiss!1504) index!297 (mask!10201 thiss!1504)))))

(assert (=> b!231027 (= (arrayCountValidKeys!0 lt!116423 #b00000000000000000000000000000000 (size!5749 (_keys!6357 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6357 thiss!1504) #b00000000000000000000000000000000 (size!5749 (_keys!6357 thiss!1504)))))))

(declare-fun lt!116427 () Unit!7092)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11394 (_ BitVec 32) (_ BitVec 64)) Unit!7092)

(assert (=> b!231027 (= lt!116427 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6357 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3489 0))(
  ( (Nil!3486) (Cons!3485 (h!4133 (_ BitVec 64)) (t!8456 List!3489)) )
))
(declare-fun arrayNoDuplicates!0 (array!11394 (_ BitVec 32) List!3489) Bool)

(assert (=> b!231027 (arrayNoDuplicates!0 lt!116423 #b00000000000000000000000000000000 Nil!3486)))

(assert (=> b!231027 (= lt!116423 (array!11395 (store (arr!5416 (_keys!6357 thiss!1504)) index!297 key!932) (size!5749 (_keys!6357 thiss!1504))))))

(declare-fun lt!116424 () Unit!7092)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11394 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3489) Unit!7092)

(assert (=> b!231027 (= lt!116424 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6357 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3486))))

(declare-fun lt!116426 () Unit!7092)

(assert (=> b!231027 (= lt!116426 e!149966)))

(declare-fun c!38356 () Bool)

(assert (=> b!231027 (= c!38356 (arrayContainsKey!0 (_keys!6357 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231028 () Bool)

(declare-fun res!113583 () Bool)

(assert (=> b!231028 (=> (not res!113583) (not e!149971))))

(assert (=> b!231028 (= res!113583 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231029 () Bool)

(assert (=> b!231029 (= e!149963 tp_is_empty!6075)))

(declare-fun b!231030 () Bool)

(assert (=> b!231030 (= e!149965 e!149962)))

(declare-fun res!113581 () Bool)

(assert (=> b!231030 (= res!113581 call!21472)))

(assert (=> b!231030 (=> (not res!113581) (not e!149962))))

(declare-fun b!231031 () Bool)

(assert (=> b!231031 (= e!149967 (not call!21471))))

(declare-fun b!231032 () Bool)

(declare-fun e!149959 () Bool)

(assert (=> b!231032 (= e!149959 (and e!149960 mapRes!10282))))

(declare-fun condMapEmpty!10282 () Bool)

(declare-fun mapDefault!10282 () ValueCell!2694)

(assert (=> b!231032 (= condMapEmpty!10282 (= (arr!5415 (_values!4286 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2694)) mapDefault!10282)))))

(declare-fun array_inv!3561 (array!11394) Bool)

(declare-fun array_inv!3562 (array!11392) Bool)

(assert (=> b!231033 (= e!149970 (and tp!21780 tp_is_empty!6075 (array_inv!3561 (_keys!6357 thiss!1504)) (array_inv!3562 (_values!4286 thiss!1504)) e!149959))))

(declare-fun b!231034 () Bool)

(declare-fun res!113586 () Bool)

(assert (=> b!231034 (= res!113586 (= (select (arr!5416 (_keys!6357 thiss!1504)) (index!5997 lt!116429)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231034 (=> (not res!113586) (not e!149962))))

(declare-fun b!231035 () Bool)

(assert (=> b!231035 (= e!149968 e!149958)))

(declare-fun res!113584 () Bool)

(assert (=> b!231035 (=> (not res!113584) (not e!149958))))

(assert (=> b!231035 (= res!113584 (inRange!0 index!297 (mask!10201 thiss!1504)))))

(declare-fun lt!116425 () Unit!7092)

(assert (=> b!231035 (= lt!116425 e!149961)))

(declare-fun c!38357 () Bool)

(declare-fun contains!1617 (ListLongMap!3471 (_ BitVec 64)) Bool)

(assert (=> b!231035 (= c!38357 (contains!1617 lt!116430 key!932))))

(assert (=> b!231035 (= lt!116430 (getCurrentListMap!1274 (_keys!6357 thiss!1504) (_values!4286 thiss!1504) (mask!10201 thiss!1504) (extraKeys!4040 thiss!1504) (zeroValue!4144 thiss!1504) (minValue!4144 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4303 thiss!1504)))))

(assert (= (and start!22158 res!113580) b!231028))

(assert (= (and b!231028 res!113583) b!231020))

(assert (= (and b!231020 res!113582) b!231035))

(assert (= (and b!231035 c!38357) b!231016))

(assert (= (and b!231035 (not c!38357)) b!231025))

(assert (= (and b!231025 c!38355) b!231018))

(assert (= (and b!231025 (not c!38355)) b!231021))

(assert (= (and b!231018 res!113585) b!231024))

(assert (= (and b!231024 res!113587) b!231031))

(assert (= (and b!231021 c!38354) b!231030))

(assert (= (and b!231021 (not c!38354)) b!231026))

(assert (= (and b!231030 res!113581) b!231034))

(assert (= (and b!231034 res!113586) b!231022))

(assert (= (or b!231018 b!231030) bm!21469))

(assert (= (or b!231031 b!231022) bm!21468))

(assert (= (and b!231035 res!113584) b!231027))

(assert (= (and b!231027 c!38356) b!231019))

(assert (= (and b!231027 (not c!38356)) b!231017))

(assert (= (and b!231032 condMapEmpty!10282) mapIsEmpty!10282))

(assert (= (and b!231032 (not condMapEmpty!10282)) mapNonEmpty!10282))

(assert (= (and mapNonEmpty!10282 ((_ is ValueCellFull!2694) mapValue!10282)) b!231029))

(assert (= (and b!231032 ((_ is ValueCellFull!2694) mapDefault!10282)) b!231023))

(assert (= b!231033 b!231032))

(assert (= start!22158 b!231033))

(declare-fun m!252417 () Bool)

(assert (=> b!231016 m!252417))

(declare-fun m!252419 () Bool)

(assert (=> b!231024 m!252419))

(declare-fun m!252421 () Bool)

(assert (=> b!231025 m!252421))

(declare-fun m!252423 () Bool)

(assert (=> b!231033 m!252423))

(declare-fun m!252425 () Bool)

(assert (=> b!231033 m!252425))

(declare-fun m!252427 () Bool)

(assert (=> bm!21468 m!252427))

(declare-fun m!252429 () Bool)

(assert (=> bm!21469 m!252429))

(declare-fun m!252431 () Bool)

(assert (=> start!22158 m!252431))

(declare-fun m!252433 () Bool)

(assert (=> b!231020 m!252433))

(declare-fun m!252435 () Bool)

(assert (=> b!231027 m!252435))

(declare-fun m!252437 () Bool)

(assert (=> b!231027 m!252437))

(declare-fun m!252439 () Bool)

(assert (=> b!231027 m!252439))

(declare-fun m!252441 () Bool)

(assert (=> b!231027 m!252441))

(declare-fun m!252443 () Bool)

(assert (=> b!231027 m!252443))

(declare-fun m!252445 () Bool)

(assert (=> b!231027 m!252445))

(declare-fun m!252447 () Bool)

(assert (=> b!231027 m!252447))

(declare-fun m!252449 () Bool)

(assert (=> b!231027 m!252449))

(declare-fun m!252451 () Bool)

(assert (=> b!231027 m!252451))

(declare-fun m!252453 () Bool)

(assert (=> b!231027 m!252453))

(assert (=> b!231027 m!252427))

(declare-fun m!252455 () Bool)

(assert (=> b!231027 m!252455))

(declare-fun m!252457 () Bool)

(assert (=> b!231027 m!252457))

(declare-fun m!252459 () Bool)

(assert (=> b!231027 m!252459))

(declare-fun m!252461 () Bool)

(assert (=> b!231027 m!252461))

(declare-fun m!252463 () Bool)

(assert (=> b!231027 m!252463))

(declare-fun m!252465 () Bool)

(assert (=> b!231027 m!252465))

(declare-fun m!252467 () Bool)

(assert (=> b!231034 m!252467))

(declare-fun m!252469 () Bool)

(assert (=> b!231035 m!252469))

(declare-fun m!252471 () Bool)

(assert (=> b!231035 m!252471))

(declare-fun m!252473 () Bool)

(assert (=> b!231035 m!252473))

(declare-fun m!252475 () Bool)

(assert (=> mapNonEmpty!10282 m!252475))

(declare-fun m!252477 () Bool)

(assert (=> b!231019 m!252477))

(check-sat (not bm!21469) (not b!231025) (not bm!21468) (not b!231016) (not b!231035) tp_is_empty!6075 (not start!22158) (not b!231033) (not b!231020) (not b_next!6213) (not b!231019) b_and!13129 (not b!231027) (not mapNonEmpty!10282))
(check-sat b_and!13129 (not b_next!6213))
