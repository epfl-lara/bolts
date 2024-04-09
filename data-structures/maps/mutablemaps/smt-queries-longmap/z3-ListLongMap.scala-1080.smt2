; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22176 () Bool)

(assert start!22176)

(declare-fun b!231565 () Bool)

(declare-fun b_free!6231 () Bool)

(declare-fun b_next!6231 () Bool)

(assert (=> b!231565 (= b_free!6231 (not b_next!6231))))

(declare-fun tp!21835 () Bool)

(declare-fun b_and!13147 () Bool)

(assert (=> b!231565 (= tp!21835 b_and!13147)))

(declare-fun b!231556 () Bool)

(declare-fun res!113796 () Bool)

(declare-fun e!150339 () Bool)

(assert (=> b!231556 (=> (not res!113796) (not e!150339))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!231556 (= res!113796 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231557 () Bool)

(declare-datatypes ((Unit!7123 0))(
  ( (Unit!7124) )
))
(declare-fun e!150348 () Unit!7123)

(declare-fun Unit!7125 () Unit!7123)

(assert (=> b!231557 (= e!150348 Unit!7125)))

(declare-fun lt!116808 () Unit!7123)

(declare-datatypes ((V!7771 0))(
  ( (V!7772 (val!3091 Int)) )
))
(declare-datatypes ((ValueCell!2703 0))(
  ( (ValueCellFull!2703 (v!5107 V!7771)) (EmptyCell!2703) )
))
(declare-datatypes ((array!11428 0))(
  ( (array!11429 (arr!5433 (Array (_ BitVec 32) ValueCell!2703)) (size!5766 (_ BitVec 32))) )
))
(declare-datatypes ((array!11430 0))(
  ( (array!11431 (arr!5434 (Array (_ BitVec 32) (_ BitVec 64))) (size!5767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3306 0))(
  ( (LongMapFixedSize!3307 (defaultEntry!4312 Int) (mask!10216 (_ BitVec 32)) (extraKeys!4049 (_ BitVec 32)) (zeroValue!4153 V!7771) (minValue!4153 V!7771) (_size!1702 (_ BitVec 32)) (_keys!6366 array!11430) (_values!4295 array!11428) (_vacant!1702 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3306)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!302 (array!11430 array!11428 (_ BitVec 32) (_ BitVec 32) V!7771 V!7771 (_ BitVec 64) Int) Unit!7123)

(assert (=> b!231557 (= lt!116808 (lemmaInListMapThenSeekEntryOrOpenFindsIt!302 (_keys!6366 thiss!1504) (_values!4295 thiss!1504) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) key!932 (defaultEntry!4312 thiss!1504)))))

(assert (=> b!231557 false))

(declare-fun b!231558 () Bool)

(declare-fun e!150342 () Unit!7123)

(declare-fun Unit!7126 () Unit!7123)

(assert (=> b!231558 (= e!150342 Unit!7126)))

(declare-fun lt!116805 () Unit!7123)

(declare-fun lemmaArrayContainsKeyThenInListMap!137 (array!11430 array!11428 (_ BitVec 32) (_ BitVec 32) V!7771 V!7771 (_ BitVec 64) (_ BitVec 32) Int) Unit!7123)

(assert (=> b!231558 (= lt!116805 (lemmaArrayContainsKeyThenInListMap!137 (_keys!6366 thiss!1504) (_values!4295 thiss!1504) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4312 thiss!1504)))))

(assert (=> b!231558 false))

(declare-fun b!231559 () Bool)

(declare-fun e!150347 () Bool)

(declare-fun tp_is_empty!6093 () Bool)

(assert (=> b!231559 (= e!150347 tp_is_empty!6093)))

(declare-fun b!231560 () Bool)

(declare-fun c!38465 () Bool)

(declare-datatypes ((SeekEntryResult!963 0))(
  ( (MissingZero!963 (index!6022 (_ BitVec 32))) (Found!963 (index!6023 (_ BitVec 32))) (Intermediate!963 (undefined!1775 Bool) (index!6024 (_ BitVec 32)) (x!23519 (_ BitVec 32))) (Undefined!963) (MissingVacant!963 (index!6025 (_ BitVec 32))) )
))
(declare-fun lt!116809 () SeekEntryResult!963)

(get-info :version)

(assert (=> b!231560 (= c!38465 ((_ is MissingVacant!963) lt!116809))))

(declare-fun e!150336 () Bool)

(declare-fun e!150344 () Bool)

(assert (=> b!231560 (= e!150336 e!150344)))

(declare-fun b!231561 () Bool)

(declare-fun e!150341 () Bool)

(assert (=> b!231561 (= e!150339 e!150341)))

(declare-fun res!113802 () Bool)

(assert (=> b!231561 (=> (not res!113802) (not e!150341))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231561 (= res!113802 (or (= lt!116809 (MissingZero!963 index!297)) (= lt!116809 (MissingVacant!963 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11430 (_ BitVec 32)) SeekEntryResult!963)

(assert (=> b!231561 (= lt!116809 (seekEntryOrOpen!0 key!932 (_keys!6366 thiss!1504) (mask!10216 thiss!1504)))))

(declare-fun b!231562 () Bool)

(declare-fun res!113798 () Bool)

(assert (=> b!231562 (= res!113798 (= (select (arr!5434 (_keys!6366 thiss!1504)) (index!6025 lt!116809)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!150349 () Bool)

(assert (=> b!231562 (=> (not res!113798) (not e!150349))))

(declare-fun b!231563 () Bool)

(declare-fun Unit!7127 () Unit!7123)

(assert (=> b!231563 (= e!150342 Unit!7127)))

(declare-fun b!231564 () Bool)

(assert (=> b!231564 (= e!150344 e!150349)))

(declare-fun res!113797 () Bool)

(declare-fun call!21526 () Bool)

(assert (=> b!231564 (= res!113797 call!21526)))

(assert (=> b!231564 (=> (not res!113797) (not e!150349))))

(declare-fun e!150338 () Bool)

(declare-fun e!150337 () Bool)

(declare-fun array_inv!3573 (array!11430) Bool)

(declare-fun array_inv!3574 (array!11428) Bool)

(assert (=> b!231565 (= e!150338 (and tp!21835 tp_is_empty!6093 (array_inv!3573 (_keys!6366 thiss!1504)) (array_inv!3574 (_values!4295 thiss!1504)) e!150337))))

(declare-fun b!231566 () Bool)

(declare-fun e!150340 () Bool)

(assert (=> b!231566 (= e!150341 e!150340)))

(declare-fun res!113803 () Bool)

(assert (=> b!231566 (=> (not res!113803) (not e!150340))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231566 (= res!113803 (inRange!0 index!297 (mask!10216 thiss!1504)))))

(declare-fun lt!116802 () Unit!7123)

(assert (=> b!231566 (= lt!116802 e!150348)))

(declare-fun c!38463 () Bool)

(declare-datatypes ((tuple2!4558 0))(
  ( (tuple2!4559 (_1!2289 (_ BitVec 64)) (_2!2289 V!7771)) )
))
(declare-datatypes ((List!3501 0))(
  ( (Nil!3498) (Cons!3497 (h!4145 tuple2!4558) (t!8468 List!3501)) )
))
(declare-datatypes ((ListLongMap!3485 0))(
  ( (ListLongMap!3486 (toList!1758 List!3501)) )
))
(declare-fun lt!116811 () ListLongMap!3485)

(declare-fun contains!1621 (ListLongMap!3485 (_ BitVec 64)) Bool)

(assert (=> b!231566 (= c!38463 (contains!1621 lt!116811 key!932))))

(declare-fun getCurrentListMap!1281 (array!11430 array!11428 (_ BitVec 32) (_ BitVec 32) V!7771 V!7771 (_ BitVec 32) Int) ListLongMap!3485)

(assert (=> b!231566 (= lt!116811 (getCurrentListMap!1281 (_keys!6366 thiss!1504) (_values!4295 thiss!1504) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4312 thiss!1504)))))

(declare-fun b!231567 () Bool)

(assert (=> b!231567 (= e!150344 ((_ is Undefined!963) lt!116809))))

(declare-fun c!38462 () Bool)

(declare-fun bm!21522 () Bool)

(assert (=> bm!21522 (= call!21526 (inRange!0 (ite c!38462 (index!6022 lt!116809) (index!6025 lt!116809)) (mask!10216 thiss!1504)))))

(declare-fun b!231568 () Bool)

(declare-fun e!150343 () Bool)

(assert (=> b!231568 (= e!150343 tp_is_empty!6093)))

(declare-fun b!231569 () Bool)

(declare-fun call!21525 () Bool)

(assert (=> b!231569 (= e!150349 (not call!21525))))

(declare-fun b!231570 () Bool)

(declare-fun e!150345 () Bool)

(assert (=> b!231570 (= e!150345 (not call!21525))))

(declare-fun mapIsEmpty!10309 () Bool)

(declare-fun mapRes!10309 () Bool)

(assert (=> mapIsEmpty!10309 mapRes!10309))

(declare-fun bm!21523 () Bool)

(declare-fun arrayContainsKey!0 (array!11430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21523 (= call!21525 (arrayContainsKey!0 (_keys!6366 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231571 () Bool)

(assert (=> b!231571 (= e!150340 (not true))))

(declare-fun lt!116814 () array!11430)

(declare-fun arrayCountValidKeys!0 (array!11430 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231571 (= (arrayCountValidKeys!0 lt!116814 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116801 () Unit!7123)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11430 (_ BitVec 32)) Unit!7123)

(assert (=> b!231571 (= lt!116801 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116814 index!297))))

(assert (=> b!231571 (arrayContainsKey!0 lt!116814 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116807 () Unit!7123)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11430 (_ BitVec 64) (_ BitVec 32)) Unit!7123)

(assert (=> b!231571 (= lt!116807 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116814 key!932 index!297))))

(declare-fun v!346 () V!7771)

(declare-fun +!612 (ListLongMap!3485 tuple2!4558) ListLongMap!3485)

(assert (=> b!231571 (= (+!612 lt!116811 (tuple2!4559 key!932 v!346)) (getCurrentListMap!1281 lt!116814 (array!11429 (store (arr!5433 (_values!4295 thiss!1504)) index!297 (ValueCellFull!2703 v!346)) (size!5766 (_values!4295 thiss!1504))) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4312 thiss!1504)))))

(declare-fun lt!116804 () Unit!7123)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!71 (array!11430 array!11428 (_ BitVec 32) (_ BitVec 32) V!7771 V!7771 (_ BitVec 32) (_ BitVec 64) V!7771 Int) Unit!7123)

(assert (=> b!231571 (= lt!116804 (lemmaAddValidKeyToArrayThenAddPairToListMap!71 (_keys!6366 thiss!1504) (_values!4295 thiss!1504) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) index!297 key!932 v!346 (defaultEntry!4312 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11430 (_ BitVec 32)) Bool)

(assert (=> b!231571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116814 (mask!10216 thiss!1504))))

(declare-fun lt!116803 () Unit!7123)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11430 (_ BitVec 32) (_ BitVec 32)) Unit!7123)

(assert (=> b!231571 (= lt!116803 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6366 thiss!1504) index!297 (mask!10216 thiss!1504)))))

(assert (=> b!231571 (= (arrayCountValidKeys!0 lt!116814 #b00000000000000000000000000000000 (size!5767 (_keys!6366 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6366 thiss!1504) #b00000000000000000000000000000000 (size!5767 (_keys!6366 thiss!1504)))))))

(declare-fun lt!116812 () Unit!7123)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11430 (_ BitVec 32) (_ BitVec 64)) Unit!7123)

(assert (=> b!231571 (= lt!116812 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6366 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3502 0))(
  ( (Nil!3499) (Cons!3498 (h!4146 (_ BitVec 64)) (t!8469 List!3502)) )
))
(declare-fun arrayNoDuplicates!0 (array!11430 (_ BitVec 32) List!3502) Bool)

(assert (=> b!231571 (arrayNoDuplicates!0 lt!116814 #b00000000000000000000000000000000 Nil!3499)))

(assert (=> b!231571 (= lt!116814 (array!11431 (store (arr!5434 (_keys!6366 thiss!1504)) index!297 key!932) (size!5767 (_keys!6366 thiss!1504))))))

(declare-fun lt!116813 () Unit!7123)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11430 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3502) Unit!7123)

(assert (=> b!231571 (= lt!116813 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6366 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3499))))

(declare-fun lt!116810 () Unit!7123)

(assert (=> b!231571 (= lt!116810 e!150342)))

(declare-fun c!38464 () Bool)

(assert (=> b!231571 (= c!38464 (arrayContainsKey!0 (_keys!6366 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231572 () Bool)

(declare-fun res!113799 () Bool)

(assert (=> b!231572 (=> (not res!113799) (not e!150345))))

(assert (=> b!231572 (= res!113799 call!21526)))

(assert (=> b!231572 (= e!150336 e!150345)))

(declare-fun b!231573 () Bool)

(declare-fun res!113800 () Bool)

(assert (=> b!231573 (=> (not res!113800) (not e!150345))))

(assert (=> b!231573 (= res!113800 (= (select (arr!5434 (_keys!6366 thiss!1504)) (index!6022 lt!116809)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!10309 () Bool)

(declare-fun tp!21834 () Bool)

(assert (=> mapNonEmpty!10309 (= mapRes!10309 (and tp!21834 e!150347))))

(declare-fun mapRest!10309 () (Array (_ BitVec 32) ValueCell!2703))

(declare-fun mapKey!10309 () (_ BitVec 32))

(declare-fun mapValue!10309 () ValueCell!2703)

(assert (=> mapNonEmpty!10309 (= (arr!5433 (_values!4295 thiss!1504)) (store mapRest!10309 mapKey!10309 mapValue!10309))))

(declare-fun b!231574 () Bool)

(declare-fun lt!116806 () Unit!7123)

(assert (=> b!231574 (= e!150348 lt!116806)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!317 (array!11430 array!11428 (_ BitVec 32) (_ BitVec 32) V!7771 V!7771 (_ BitVec 64) Int) Unit!7123)

(assert (=> b!231574 (= lt!116806 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!317 (_keys!6366 thiss!1504) (_values!4295 thiss!1504) (mask!10216 thiss!1504) (extraKeys!4049 thiss!1504) (zeroValue!4153 thiss!1504) (minValue!4153 thiss!1504) key!932 (defaultEntry!4312 thiss!1504)))))

(assert (=> b!231574 (= c!38462 ((_ is MissingZero!963) lt!116809))))

(assert (=> b!231574 e!150336))

(declare-fun res!113801 () Bool)

(assert (=> start!22176 (=> (not res!113801) (not e!150339))))

(declare-fun valid!1303 (LongMapFixedSize!3306) Bool)

(assert (=> start!22176 (= res!113801 (valid!1303 thiss!1504))))

(assert (=> start!22176 e!150339))

(assert (=> start!22176 e!150338))

(assert (=> start!22176 true))

(assert (=> start!22176 tp_is_empty!6093))

(declare-fun b!231575 () Bool)

(assert (=> b!231575 (= e!150337 (and e!150343 mapRes!10309))))

(declare-fun condMapEmpty!10309 () Bool)

(declare-fun mapDefault!10309 () ValueCell!2703)

(assert (=> b!231575 (= condMapEmpty!10309 (= (arr!5433 (_values!4295 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2703)) mapDefault!10309)))))

(assert (= (and start!22176 res!113801) b!231556))

(assert (= (and b!231556 res!113796) b!231561))

(assert (= (and b!231561 res!113802) b!231566))

(assert (= (and b!231566 c!38463) b!231557))

(assert (= (and b!231566 (not c!38463)) b!231574))

(assert (= (and b!231574 c!38462) b!231572))

(assert (= (and b!231574 (not c!38462)) b!231560))

(assert (= (and b!231572 res!113799) b!231573))

(assert (= (and b!231573 res!113800) b!231570))

(assert (= (and b!231560 c!38465) b!231564))

(assert (= (and b!231560 (not c!38465)) b!231567))

(assert (= (and b!231564 res!113797) b!231562))

(assert (= (and b!231562 res!113798) b!231569))

(assert (= (or b!231572 b!231564) bm!21522))

(assert (= (or b!231570 b!231569) bm!21523))

(assert (= (and b!231566 res!113803) b!231571))

(assert (= (and b!231571 c!38464) b!231558))

(assert (= (and b!231571 (not c!38464)) b!231563))

(assert (= (and b!231575 condMapEmpty!10309) mapIsEmpty!10309))

(assert (= (and b!231575 (not condMapEmpty!10309)) mapNonEmpty!10309))

(assert (= (and mapNonEmpty!10309 ((_ is ValueCellFull!2703) mapValue!10309)) b!231559))

(assert (= (and b!231575 ((_ is ValueCellFull!2703) mapDefault!10309)) b!231568))

(assert (= b!231565 b!231575))

(assert (= start!22176 b!231565))

(declare-fun m!252975 () Bool)

(assert (=> b!231562 m!252975))

(declare-fun m!252977 () Bool)

(assert (=> start!22176 m!252977))

(declare-fun m!252979 () Bool)

(assert (=> bm!21523 m!252979))

(declare-fun m!252981 () Bool)

(assert (=> b!231571 m!252981))

(declare-fun m!252983 () Bool)

(assert (=> b!231571 m!252983))

(declare-fun m!252985 () Bool)

(assert (=> b!231571 m!252985))

(declare-fun m!252987 () Bool)

(assert (=> b!231571 m!252987))

(declare-fun m!252989 () Bool)

(assert (=> b!231571 m!252989))

(declare-fun m!252991 () Bool)

(assert (=> b!231571 m!252991))

(declare-fun m!252993 () Bool)

(assert (=> b!231571 m!252993))

(declare-fun m!252995 () Bool)

(assert (=> b!231571 m!252995))

(declare-fun m!252997 () Bool)

(assert (=> b!231571 m!252997))

(declare-fun m!252999 () Bool)

(assert (=> b!231571 m!252999))

(declare-fun m!253001 () Bool)

(assert (=> b!231571 m!253001))

(assert (=> b!231571 m!252979))

(declare-fun m!253003 () Bool)

(assert (=> b!231571 m!253003))

(declare-fun m!253005 () Bool)

(assert (=> b!231571 m!253005))

(declare-fun m!253007 () Bool)

(assert (=> b!231571 m!253007))

(declare-fun m!253009 () Bool)

(assert (=> b!231571 m!253009))

(declare-fun m!253011 () Bool)

(assert (=> b!231571 m!253011))

(declare-fun m!253013 () Bool)

(assert (=> bm!21522 m!253013))

(declare-fun m!253015 () Bool)

(assert (=> b!231558 m!253015))

(declare-fun m!253017 () Bool)

(assert (=> b!231566 m!253017))

(declare-fun m!253019 () Bool)

(assert (=> b!231566 m!253019))

(declare-fun m!253021 () Bool)

(assert (=> b!231566 m!253021))

(declare-fun m!253023 () Bool)

(assert (=> b!231561 m!253023))

(declare-fun m!253025 () Bool)

(assert (=> b!231557 m!253025))

(declare-fun m!253027 () Bool)

(assert (=> b!231573 m!253027))

(declare-fun m!253029 () Bool)

(assert (=> b!231565 m!253029))

(declare-fun m!253031 () Bool)

(assert (=> b!231565 m!253031))

(declare-fun m!253033 () Bool)

(assert (=> mapNonEmpty!10309 m!253033))

(declare-fun m!253035 () Bool)

(assert (=> b!231574 m!253035))

(check-sat b_and!13147 (not mapNonEmpty!10309) tp_is_empty!6093 (not start!22176) (not b!231574) (not b!231558) (not bm!21522) (not b!231565) (not b!231566) (not b!231557) (not b_next!6231) (not b!231571) (not b!231561) (not bm!21523))
(check-sat b_and!13147 (not b_next!6231))
