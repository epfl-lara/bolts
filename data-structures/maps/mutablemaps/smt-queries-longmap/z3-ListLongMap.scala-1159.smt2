; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24392 () Bool)

(assert start!24392)

(declare-fun b!255423 () Bool)

(declare-fun b_free!6705 () Bool)

(declare-fun b_next!6705 () Bool)

(assert (=> b!255423 (= b_free!6705 (not b_next!6705))))

(declare-fun tp!23408 () Bool)

(declare-fun b_and!13773 () Bool)

(assert (=> b!255423 (= tp!23408 b_and!13773)))

(declare-fun b!255412 () Bool)

(declare-datatypes ((Unit!7925 0))(
  ( (Unit!7926) )
))
(declare-fun e!165579 () Unit!7925)

(declare-fun Unit!7927 () Unit!7925)

(assert (=> b!255412 (= e!165579 Unit!7927)))

(declare-fun lt!128157 () Unit!7925)

(declare-datatypes ((V!8403 0))(
  ( (V!8404 (val!3328 Int)) )
))
(declare-datatypes ((ValueCell!2940 0))(
  ( (ValueCellFull!2940 (v!5404 V!8403)) (EmptyCell!2940) )
))
(declare-datatypes ((array!12468 0))(
  ( (array!12469 (arr!5907 (Array (_ BitVec 32) ValueCell!2940)) (size!6254 (_ BitVec 32))) )
))
(declare-datatypes ((array!12470 0))(
  ( (array!12471 (arr!5908 (Array (_ BitVec 32) (_ BitVec 64))) (size!6255 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3780 0))(
  ( (LongMapFixedSize!3781 (defaultEntry!4713 Int) (mask!10973 (_ BitVec 32)) (extraKeys!4450 (_ BitVec 32)) (zeroValue!4554 V!8403) (minValue!4554 V!8403) (_size!1939 (_ BitVec 32)) (_keys!6871 array!12470) (_values!4696 array!12468) (_vacant!1939 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3780)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!230 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) (_ BitVec 32) Int) Unit!7925)

(assert (=> b!255412 (= lt!128157 (lemmaArrayContainsKeyThenInListMap!230 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(assert (=> b!255412 false))

(declare-fun b!255413 () Bool)

(declare-fun e!165573 () Unit!7925)

(declare-fun Unit!7928 () Unit!7925)

(assert (=> b!255413 (= e!165573 Unit!7928)))

(declare-fun lt!128153 () Unit!7925)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!424 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) Int) Unit!7925)

(assert (=> b!255413 (= lt!128153 (lemmaInListMapThenSeekEntryOrOpenFindsIt!424 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)))))

(assert (=> b!255413 false))

(declare-fun b!255414 () Bool)

(declare-fun e!165578 () Bool)

(declare-fun tp_is_empty!6567 () Bool)

(assert (=> b!255414 (= e!165578 tp_is_empty!6567)))

(declare-fun b!255415 () Bool)

(declare-fun e!165569 () Bool)

(declare-datatypes ((SeekEntryResult!1168 0))(
  ( (MissingZero!1168 (index!6842 (_ BitVec 32))) (Found!1168 (index!6843 (_ BitVec 32))) (Intermediate!1168 (undefined!1980 Bool) (index!6844 (_ BitVec 32)) (x!24928 (_ BitVec 32))) (Undefined!1168) (MissingVacant!1168 (index!6845 (_ BitVec 32))) )
))
(declare-fun lt!128159 () SeekEntryResult!1168)

(get-info :version)

(assert (=> b!255415 (= e!165569 ((_ is Undefined!1168) lt!128159))))

(declare-fun b!255416 () Bool)

(declare-fun res!125012 () Bool)

(declare-fun e!165580 () Bool)

(assert (=> b!255416 (=> (not res!125012) (not e!165580))))

(assert (=> b!255416 (= res!125012 (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6842 lt!128159)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255417 () Bool)

(declare-fun call!24147 () Bool)

(assert (=> b!255417 (= e!165580 (not call!24147))))

(declare-fun b!255418 () Bool)

(declare-fun e!165576 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!255418 (= e!165576 (not (or (bvslt index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504))))))))

(declare-fun v!346 () V!8403)

(declare-fun lt!128164 () array!12470)

(declare-datatypes ((tuple2!4898 0))(
  ( (tuple2!4899 (_1!2459 (_ BitVec 64)) (_2!2459 V!8403)) )
))
(declare-datatypes ((List!3802 0))(
  ( (Nil!3799) (Cons!3798 (h!4460 tuple2!4898) (t!8861 List!3802)) )
))
(declare-datatypes ((ListLongMap!3825 0))(
  ( (ListLongMap!3826 (toList!1928 List!3802)) )
))
(declare-fun lt!128161 () ListLongMap!3825)

(declare-fun +!673 (ListLongMap!3825 tuple2!4898) ListLongMap!3825)

(declare-fun getCurrentListMap!1451 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 32) Int) ListLongMap!3825)

(assert (=> b!255418 (= (+!673 lt!128161 (tuple2!4899 key!932 v!346)) (getCurrentListMap!1451 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128160 () Unit!7925)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!88 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 32) (_ BitVec 64) V!8403 Int) Unit!7925)

(assert (=> b!255418 (= lt!128160 (lemmaAddValidKeyToArrayThenAddPairToListMap!88 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) index!297 key!932 v!346 (defaultEntry!4713 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12470 (_ BitVec 32)) Bool)

(assert (=> b!255418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128164 (mask!10973 thiss!1504))))

(declare-fun lt!128154 () Unit!7925)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12470 (_ BitVec 32) (_ BitVec 32)) Unit!7925)

(assert (=> b!255418 (= lt!128154 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) index!297 (mask!10973 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12470 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!255418 (= (arrayCountValidKeys!0 lt!128164 #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6871 thiss!1504) #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504)))))))

(declare-fun lt!128163 () Unit!7925)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12470 (_ BitVec 32) (_ BitVec 64)) Unit!7925)

(assert (=> b!255418 (= lt!128163 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6871 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3803 0))(
  ( (Nil!3800) (Cons!3799 (h!4461 (_ BitVec 64)) (t!8862 List!3803)) )
))
(declare-fun arrayNoDuplicates!0 (array!12470 (_ BitVec 32) List!3803) Bool)

(assert (=> b!255418 (arrayNoDuplicates!0 lt!128164 #b00000000000000000000000000000000 Nil!3800)))

(assert (=> b!255418 (= lt!128164 (array!12471 (store (arr!5908 (_keys!6871 thiss!1504)) index!297 key!932) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun lt!128162 () Unit!7925)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3803) Unit!7925)

(assert (=> b!255418 (= lt!128162 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6871 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3800))))

(declare-fun lt!128155 () Unit!7925)

(assert (=> b!255418 (= lt!128155 e!165579)))

(declare-fun c!43115 () Bool)

(declare-fun arrayContainsKey!0 (array!12470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!255418 (= c!43115 (arrayContainsKey!0 (_keys!6871 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255419 () Bool)

(declare-fun e!165574 () Bool)

(assert (=> b!255419 (= e!165574 tp_is_empty!6567)))

(declare-fun mapNonEmpty!11172 () Bool)

(declare-fun mapRes!11172 () Bool)

(declare-fun tp!23409 () Bool)

(assert (=> mapNonEmpty!11172 (= mapRes!11172 (and tp!23409 e!165578))))

(declare-fun mapKey!11172 () (_ BitVec 32))

(declare-fun mapValue!11172 () ValueCell!2940)

(declare-fun mapRest!11172 () (Array (_ BitVec 32) ValueCell!2940))

(assert (=> mapNonEmpty!11172 (= (arr!5907 (_values!4696 thiss!1504)) (store mapRest!11172 mapKey!11172 mapValue!11172))))

(declare-fun b!255420 () Bool)

(declare-fun e!165577 () Bool)

(assert (=> b!255420 (= e!165569 e!165577)))

(declare-fun res!125009 () Bool)

(declare-fun call!24146 () Bool)

(assert (=> b!255420 (= res!125009 call!24146)))

(assert (=> b!255420 (=> (not res!125009) (not e!165577))))

(declare-fun b!255421 () Bool)

(declare-fun e!165582 () Bool)

(assert (=> b!255421 (= e!165582 (and e!165574 mapRes!11172))))

(declare-fun condMapEmpty!11172 () Bool)

(declare-fun mapDefault!11172 () ValueCell!2940)

(assert (=> b!255421 (= condMapEmpty!11172 (= (arr!5907 (_values!4696 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2940)) mapDefault!11172)))))

(declare-fun mapIsEmpty!11172 () Bool)

(assert (=> mapIsEmpty!11172 mapRes!11172))

(declare-fun b!255422 () Bool)

(declare-fun res!125006 () Bool)

(assert (=> b!255422 (= res!125006 (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6845 lt!128159)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!255422 (=> (not res!125006) (not e!165577))))

(declare-fun c!43113 () Bool)

(declare-fun bm!24143 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24143 (= call!24146 (inRange!0 (ite c!43113 (index!6842 lt!128159) (index!6845 lt!128159)) (mask!10973 thiss!1504)))))

(declare-fun res!125010 () Bool)

(declare-fun e!165572 () Bool)

(assert (=> start!24392 (=> (not res!125010) (not e!165572))))

(declare-fun valid!1470 (LongMapFixedSize!3780) Bool)

(assert (=> start!24392 (= res!125010 (valid!1470 thiss!1504))))

(assert (=> start!24392 e!165572))

(declare-fun e!165571 () Bool)

(assert (=> start!24392 e!165571))

(assert (=> start!24392 true))

(assert (=> start!24392 tp_is_empty!6567))

(declare-fun array_inv!3897 (array!12470) Bool)

(declare-fun array_inv!3898 (array!12468) Bool)

(assert (=> b!255423 (= e!165571 (and tp!23408 tp_is_empty!6567 (array_inv!3897 (_keys!6871 thiss!1504)) (array_inv!3898 (_values!4696 thiss!1504)) e!165582))))

(declare-fun b!255424 () Bool)

(declare-fun Unit!7929 () Unit!7925)

(assert (=> b!255424 (= e!165579 Unit!7929)))

(declare-fun b!255425 () Bool)

(declare-fun lt!128158 () Unit!7925)

(assert (=> b!255425 (= e!165573 lt!128158)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!425 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) Int) Unit!7925)

(assert (=> b!255425 (= lt!128158 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!425 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)))))

(assert (=> b!255425 (= c!43113 ((_ is MissingZero!1168) lt!128159))))

(declare-fun e!165581 () Bool)

(assert (=> b!255425 e!165581))

(declare-fun b!255426 () Bool)

(assert (=> b!255426 (= e!165577 (not call!24147))))

(declare-fun b!255427 () Bool)

(declare-fun e!165570 () Bool)

(assert (=> b!255427 (= e!165572 e!165570)))

(declare-fun res!125011 () Bool)

(assert (=> b!255427 (=> (not res!125011) (not e!165570))))

(assert (=> b!255427 (= res!125011 (or (= lt!128159 (MissingZero!1168 index!297)) (= lt!128159 (MissingVacant!1168 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12470 (_ BitVec 32)) SeekEntryResult!1168)

(assert (=> b!255427 (= lt!128159 (seekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(declare-fun b!255428 () Bool)

(declare-fun res!125013 () Bool)

(assert (=> b!255428 (=> (not res!125013) (not e!165580))))

(assert (=> b!255428 (= res!125013 call!24146)))

(assert (=> b!255428 (= e!165581 e!165580)))

(declare-fun b!255429 () Bool)

(assert (=> b!255429 (= e!165570 e!165576)))

(declare-fun res!125007 () Bool)

(assert (=> b!255429 (=> (not res!125007) (not e!165576))))

(assert (=> b!255429 (= res!125007 (inRange!0 index!297 (mask!10973 thiss!1504)))))

(declare-fun lt!128156 () Unit!7925)

(assert (=> b!255429 (= lt!128156 e!165573)))

(declare-fun c!43114 () Bool)

(declare-fun contains!1856 (ListLongMap!3825 (_ BitVec 64)) Bool)

(assert (=> b!255429 (= c!43114 (contains!1856 lt!128161 key!932))))

(assert (=> b!255429 (= lt!128161 (getCurrentListMap!1451 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun bm!24144 () Bool)

(assert (=> bm!24144 (= call!24147 (arrayContainsKey!0 (_keys!6871 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255430 () Bool)

(declare-fun c!43112 () Bool)

(assert (=> b!255430 (= c!43112 ((_ is MissingVacant!1168) lt!128159))))

(assert (=> b!255430 (= e!165581 e!165569)))

(declare-fun b!255431 () Bool)

(declare-fun res!125008 () Bool)

(assert (=> b!255431 (=> (not res!125008) (not e!165572))))

(assert (=> b!255431 (= res!125008 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!24392 res!125010) b!255431))

(assert (= (and b!255431 res!125008) b!255427))

(assert (= (and b!255427 res!125011) b!255429))

(assert (= (and b!255429 c!43114) b!255413))

(assert (= (and b!255429 (not c!43114)) b!255425))

(assert (= (and b!255425 c!43113) b!255428))

(assert (= (and b!255425 (not c!43113)) b!255430))

(assert (= (and b!255428 res!125013) b!255416))

(assert (= (and b!255416 res!125012) b!255417))

(assert (= (and b!255430 c!43112) b!255420))

(assert (= (and b!255430 (not c!43112)) b!255415))

(assert (= (and b!255420 res!125009) b!255422))

(assert (= (and b!255422 res!125006) b!255426))

(assert (= (or b!255428 b!255420) bm!24143))

(assert (= (or b!255417 b!255426) bm!24144))

(assert (= (and b!255429 res!125007) b!255418))

(assert (= (and b!255418 c!43115) b!255412))

(assert (= (and b!255418 (not c!43115)) b!255424))

(assert (= (and b!255421 condMapEmpty!11172) mapIsEmpty!11172))

(assert (= (and b!255421 (not condMapEmpty!11172)) mapNonEmpty!11172))

(assert (= (and mapNonEmpty!11172 ((_ is ValueCellFull!2940) mapValue!11172)) b!255414))

(assert (= (and b!255421 ((_ is ValueCellFull!2940) mapDefault!11172)) b!255419))

(assert (= b!255423 b!255421))

(assert (= start!24392 b!255423))

(declare-fun m!270897 () Bool)

(assert (=> b!255416 m!270897))

(declare-fun m!270899 () Bool)

(assert (=> mapNonEmpty!11172 m!270899))

(declare-fun m!270901 () Bool)

(assert (=> b!255412 m!270901))

(declare-fun m!270903 () Bool)

(assert (=> b!255425 m!270903))

(declare-fun m!270905 () Bool)

(assert (=> b!255418 m!270905))

(declare-fun m!270907 () Bool)

(assert (=> b!255418 m!270907))

(declare-fun m!270909 () Bool)

(assert (=> b!255418 m!270909))

(declare-fun m!270911 () Bool)

(assert (=> b!255418 m!270911))

(declare-fun m!270913 () Bool)

(assert (=> b!255418 m!270913))

(declare-fun m!270915 () Bool)

(assert (=> b!255418 m!270915))

(declare-fun m!270917 () Bool)

(assert (=> b!255418 m!270917))

(declare-fun m!270919 () Bool)

(assert (=> b!255418 m!270919))

(declare-fun m!270921 () Bool)

(assert (=> b!255418 m!270921))

(declare-fun m!270923 () Bool)

(assert (=> b!255418 m!270923))

(declare-fun m!270925 () Bool)

(assert (=> b!255418 m!270925))

(declare-fun m!270927 () Bool)

(assert (=> b!255418 m!270927))

(declare-fun m!270929 () Bool)

(assert (=> b!255418 m!270929))

(assert (=> bm!24144 m!270905))

(declare-fun m!270931 () Bool)

(assert (=> b!255422 m!270931))

(declare-fun m!270933 () Bool)

(assert (=> b!255413 m!270933))

(declare-fun m!270935 () Bool)

(assert (=> b!255429 m!270935))

(declare-fun m!270937 () Bool)

(assert (=> b!255429 m!270937))

(declare-fun m!270939 () Bool)

(assert (=> b!255429 m!270939))

(declare-fun m!270941 () Bool)

(assert (=> start!24392 m!270941))

(declare-fun m!270943 () Bool)

(assert (=> bm!24143 m!270943))

(declare-fun m!270945 () Bool)

(assert (=> b!255423 m!270945))

(declare-fun m!270947 () Bool)

(assert (=> b!255423 m!270947))

(declare-fun m!270949 () Bool)

(assert (=> b!255427 m!270949))

(check-sat (not start!24392) (not b!255427) (not mapNonEmpty!11172) (not b_next!6705) (not b!255425) (not b!255418) (not b!255423) tp_is_empty!6567 (not b!255412) (not b!255429) b_and!13773 (not b!255413) (not bm!24144) (not bm!24143))
(check-sat b_and!13773 (not b_next!6705))
(get-model)

(declare-fun b!255508 () Bool)

(declare-fun res!125046 () Bool)

(declare-fun e!165636 () Bool)

(assert (=> b!255508 (=> (not res!125046) (not e!165636))))

(declare-fun call!24158 () Bool)

(assert (=> b!255508 (= res!125046 call!24158)))

(declare-fun e!165635 () Bool)

(assert (=> b!255508 (= e!165635 e!165636)))

(declare-fun d!61493 () Bool)

(declare-fun e!165633 () Bool)

(assert (=> d!61493 e!165633))

(declare-fun c!43133 () Bool)

(declare-fun lt!128205 () SeekEntryResult!1168)

(assert (=> d!61493 (= c!43133 ((_ is MissingZero!1168) lt!128205))))

(assert (=> d!61493 (= lt!128205 (seekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(declare-fun lt!128206 () Unit!7925)

(declare-fun choose!1228 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) Int) Unit!7925)

(assert (=> d!61493 (= lt!128206 (choose!1228 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61493 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61493 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!425 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)) lt!128206)))

(declare-fun b!255509 () Bool)

(declare-fun call!24159 () Bool)

(assert (=> b!255509 (= e!165636 (not call!24159))))

(declare-fun bm!24155 () Bool)

(assert (=> bm!24155 (= call!24159 (arrayContainsKey!0 (_keys!6871 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255510 () Bool)

(declare-fun e!165634 () Bool)

(assert (=> b!255510 (= e!165634 (not call!24159))))

(declare-fun b!255511 () Bool)

(assert (=> b!255511 (= e!165633 e!165634)))

(declare-fun res!125048 () Bool)

(assert (=> b!255511 (= res!125048 call!24158)))

(assert (=> b!255511 (=> (not res!125048) (not e!165634))))

(declare-fun bm!24156 () Bool)

(assert (=> bm!24156 (= call!24158 (inRange!0 (ite c!43133 (index!6842 lt!128205) (index!6845 lt!128205)) (mask!10973 thiss!1504)))))

(declare-fun b!255512 () Bool)

(declare-fun res!125049 () Bool)

(assert (=> b!255512 (=> (not res!125049) (not e!165636))))

(assert (=> b!255512 (= res!125049 (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6845 lt!128205)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!255512 (and (bvsge (index!6845 lt!128205) #b00000000000000000000000000000000) (bvslt (index!6845 lt!128205) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun b!255513 () Bool)

(assert (=> b!255513 (= e!165633 e!165635)))

(declare-fun c!43132 () Bool)

(assert (=> b!255513 (= c!43132 ((_ is MissingVacant!1168) lt!128205))))

(declare-fun b!255514 () Bool)

(assert (=> b!255514 (and (bvsge (index!6842 lt!128205) #b00000000000000000000000000000000) (bvslt (index!6842 lt!128205) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun res!125047 () Bool)

(assert (=> b!255514 (= res!125047 (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6842 lt!128205)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!255514 (=> (not res!125047) (not e!165634))))

(declare-fun b!255515 () Bool)

(assert (=> b!255515 (= e!165635 ((_ is Undefined!1168) lt!128205))))

(assert (= (and d!61493 c!43133) b!255511))

(assert (= (and d!61493 (not c!43133)) b!255513))

(assert (= (and b!255511 res!125048) b!255514))

(assert (= (and b!255514 res!125047) b!255510))

(assert (= (and b!255513 c!43132) b!255508))

(assert (= (and b!255513 (not c!43132)) b!255515))

(assert (= (and b!255508 res!125046) b!255512))

(assert (= (and b!255512 res!125049) b!255509))

(assert (= (or b!255511 b!255508) bm!24156))

(assert (= (or b!255510 b!255509) bm!24155))

(assert (=> d!61493 m!270949))

(declare-fun m!271005 () Bool)

(assert (=> d!61493 m!271005))

(declare-fun m!271007 () Bool)

(assert (=> d!61493 m!271007))

(assert (=> bm!24155 m!270905))

(declare-fun m!271009 () Bool)

(assert (=> b!255514 m!271009))

(declare-fun m!271011 () Bool)

(assert (=> b!255512 m!271011))

(declare-fun m!271013 () Bool)

(assert (=> bm!24156 m!271013))

(assert (=> b!255425 d!61493))

(declare-fun d!61495 () Bool)

(assert (=> d!61495 (= (inRange!0 (ite c!43113 (index!6842 lt!128159) (index!6845 lt!128159)) (mask!10973 thiss!1504)) (and (bvsge (ite c!43113 (index!6842 lt!128159) (index!6845 lt!128159)) #b00000000000000000000000000000000) (bvslt (ite c!43113 (index!6842 lt!128159) (index!6845 lt!128159)) (bvadd (mask!10973 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24143 d!61495))

(declare-fun d!61497 () Bool)

(declare-fun res!125054 () Bool)

(declare-fun e!165641 () Bool)

(assert (=> d!61497 (=> res!125054 e!165641)))

(assert (=> d!61497 (= res!125054 (= (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61497 (= (arrayContainsKey!0 (_keys!6871 thiss!1504) key!932 #b00000000000000000000000000000000) e!165641)))

(declare-fun b!255520 () Bool)

(declare-fun e!165642 () Bool)

(assert (=> b!255520 (= e!165641 e!165642)))

(declare-fun res!125055 () Bool)

(assert (=> b!255520 (=> (not res!125055) (not e!165642))))

(assert (=> b!255520 (= res!125055 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun b!255521 () Bool)

(assert (=> b!255521 (= e!165642 (arrayContainsKey!0 (_keys!6871 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61497 (not res!125054)) b!255520))

(assert (= (and b!255520 res!125055) b!255521))

(declare-fun m!271015 () Bool)

(assert (=> d!61497 m!271015))

(declare-fun m!271017 () Bool)

(assert (=> b!255521 m!271017))

(assert (=> bm!24144 d!61497))

(declare-fun d!61499 () Bool)

(assert (=> d!61499 (contains!1856 (getCurrentListMap!1451 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)) key!932)))

(declare-fun lt!128209 () Unit!7925)

(declare-fun choose!1229 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) (_ BitVec 32) Int) Unit!7925)

(assert (=> d!61499 (= lt!128209 (choose!1229 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(assert (=> d!61499 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61499 (= (lemmaArrayContainsKeyThenInListMap!230 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)) lt!128209)))

(declare-fun bs!9064 () Bool)

(assert (= bs!9064 d!61499))

(assert (=> bs!9064 m!270939))

(assert (=> bs!9064 m!270939))

(declare-fun m!271019 () Bool)

(assert (=> bs!9064 m!271019))

(declare-fun m!271021 () Bool)

(assert (=> bs!9064 m!271021))

(assert (=> bs!9064 m!271007))

(assert (=> b!255412 d!61499))

(declare-fun d!61501 () Bool)

(declare-fun lt!128218 () SeekEntryResult!1168)

(assert (=> d!61501 (and (or ((_ is Undefined!1168) lt!128218) (not ((_ is Found!1168) lt!128218)) (and (bvsge (index!6843 lt!128218) #b00000000000000000000000000000000) (bvslt (index!6843 lt!128218) (size!6255 (_keys!6871 thiss!1504))))) (or ((_ is Undefined!1168) lt!128218) ((_ is Found!1168) lt!128218) (not ((_ is MissingZero!1168) lt!128218)) (and (bvsge (index!6842 lt!128218) #b00000000000000000000000000000000) (bvslt (index!6842 lt!128218) (size!6255 (_keys!6871 thiss!1504))))) (or ((_ is Undefined!1168) lt!128218) ((_ is Found!1168) lt!128218) ((_ is MissingZero!1168) lt!128218) (not ((_ is MissingVacant!1168) lt!128218)) (and (bvsge (index!6845 lt!128218) #b00000000000000000000000000000000) (bvslt (index!6845 lt!128218) (size!6255 (_keys!6871 thiss!1504))))) (or ((_ is Undefined!1168) lt!128218) (ite ((_ is Found!1168) lt!128218) (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6843 lt!128218)) key!932) (ite ((_ is MissingZero!1168) lt!128218) (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6842 lt!128218)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1168) lt!128218) (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6845 lt!128218)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!165650 () SeekEntryResult!1168)

(assert (=> d!61501 (= lt!128218 e!165650)))

(declare-fun c!43142 () Bool)

(declare-fun lt!128217 () SeekEntryResult!1168)

(assert (=> d!61501 (= c!43142 (and ((_ is Intermediate!1168) lt!128217) (undefined!1980 lt!128217)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12470 (_ BitVec 32)) SeekEntryResult!1168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61501 (= lt!128217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10973 thiss!1504)) key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(assert (=> d!61501 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61501 (= (seekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)) lt!128218)))

(declare-fun b!255534 () Bool)

(assert (=> b!255534 (= e!165650 Undefined!1168)))

(declare-fun b!255535 () Bool)

(declare-fun e!165651 () SeekEntryResult!1168)

(assert (=> b!255535 (= e!165651 (Found!1168 (index!6844 lt!128217)))))

(declare-fun b!255536 () Bool)

(declare-fun c!43140 () Bool)

(declare-fun lt!128216 () (_ BitVec 64))

(assert (=> b!255536 (= c!43140 (= lt!128216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165649 () SeekEntryResult!1168)

(assert (=> b!255536 (= e!165651 e!165649)))

(declare-fun b!255537 () Bool)

(assert (=> b!255537 (= e!165649 (MissingZero!1168 (index!6844 lt!128217)))))

(declare-fun b!255538 () Bool)

(assert (=> b!255538 (= e!165650 e!165651)))

(assert (=> b!255538 (= lt!128216 (select (arr!5908 (_keys!6871 thiss!1504)) (index!6844 lt!128217)))))

(declare-fun c!43141 () Bool)

(assert (=> b!255538 (= c!43141 (= lt!128216 key!932))))

(declare-fun b!255539 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12470 (_ BitVec 32)) SeekEntryResult!1168)

(assert (=> b!255539 (= e!165649 (seekKeyOrZeroReturnVacant!0 (x!24928 lt!128217) (index!6844 lt!128217) (index!6844 lt!128217) key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(assert (= (and d!61501 c!43142) b!255534))

(assert (= (and d!61501 (not c!43142)) b!255538))

(assert (= (and b!255538 c!43141) b!255535))

(assert (= (and b!255538 (not c!43141)) b!255536))

(assert (= (and b!255536 c!43140) b!255537))

(assert (= (and b!255536 (not c!43140)) b!255539))

(assert (=> d!61501 m!271007))

(declare-fun m!271023 () Bool)

(assert (=> d!61501 m!271023))

(declare-fun m!271025 () Bool)

(assert (=> d!61501 m!271025))

(declare-fun m!271027 () Bool)

(assert (=> d!61501 m!271027))

(declare-fun m!271029 () Bool)

(assert (=> d!61501 m!271029))

(assert (=> d!61501 m!271023))

(declare-fun m!271031 () Bool)

(assert (=> d!61501 m!271031))

(declare-fun m!271033 () Bool)

(assert (=> b!255538 m!271033))

(declare-fun m!271035 () Bool)

(assert (=> b!255539 m!271035))

(assert (=> b!255427 d!61501))

(declare-fun d!61503 () Bool)

(declare-fun e!165654 () Bool)

(assert (=> d!61503 e!165654))

(declare-fun res!125061 () Bool)

(assert (=> d!61503 (=> (not res!125061) (not e!165654))))

(declare-fun lt!128224 () SeekEntryResult!1168)

(assert (=> d!61503 (= res!125061 ((_ is Found!1168) lt!128224))))

(assert (=> d!61503 (= lt!128224 (seekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(declare-fun lt!128223 () Unit!7925)

(declare-fun choose!1230 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 64) Int) Unit!7925)

(assert (=> d!61503 (= lt!128223 (choose!1230 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)))))

(assert (=> d!61503 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61503 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!424 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) key!932 (defaultEntry!4713 thiss!1504)) lt!128223)))

(declare-fun b!255544 () Bool)

(declare-fun res!125060 () Bool)

(assert (=> b!255544 (=> (not res!125060) (not e!165654))))

(assert (=> b!255544 (= res!125060 (inRange!0 (index!6843 lt!128224) (mask!10973 thiss!1504)))))

(declare-fun b!255545 () Bool)

(assert (=> b!255545 (= e!165654 (= (select (arr!5908 (_keys!6871 thiss!1504)) (index!6843 lt!128224)) key!932))))

(assert (=> b!255545 (and (bvsge (index!6843 lt!128224) #b00000000000000000000000000000000) (bvslt (index!6843 lt!128224) (size!6255 (_keys!6871 thiss!1504))))))

(assert (= (and d!61503 res!125061) b!255544))

(assert (= (and b!255544 res!125060) b!255545))

(assert (=> d!61503 m!270949))

(declare-fun m!271037 () Bool)

(assert (=> d!61503 m!271037))

(assert (=> d!61503 m!271007))

(declare-fun m!271039 () Bool)

(assert (=> b!255544 m!271039))

(declare-fun m!271041 () Bool)

(assert (=> b!255545 m!271041))

(assert (=> b!255413 d!61503))

(declare-fun b!255557 () Bool)

(declare-fun e!165659 () Bool)

(assert (=> b!255557 (= e!165659 (= (arrayCountValidKeys!0 (array!12471 (store (arr!5908 (_keys!6871 thiss!1504)) index!297 key!932) (size!6255 (_keys!6871 thiss!1504))) #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6871 thiss!1504) #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!255556 () Bool)

(declare-fun e!165660 () Bool)

(assert (=> b!255556 (= e!165660 (bvslt (size!6255 (_keys!6871 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!255555 () Bool)

(declare-fun res!125072 () Bool)

(assert (=> b!255555 (=> (not res!125072) (not e!165660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!255555 (= res!125072 (validKeyInArray!0 key!932))))

(declare-fun d!61505 () Bool)

(assert (=> d!61505 e!165659))

(declare-fun res!125070 () Bool)

(assert (=> d!61505 (=> (not res!125070) (not e!165659))))

(assert (=> d!61505 (= res!125070 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504)))))))

(declare-fun lt!128227 () Unit!7925)

(declare-fun choose!1 (array!12470 (_ BitVec 32) (_ BitVec 64)) Unit!7925)

(assert (=> d!61505 (= lt!128227 (choose!1 (_keys!6871 thiss!1504) index!297 key!932))))

(assert (=> d!61505 e!165660))

(declare-fun res!125073 () Bool)

(assert (=> d!61505 (=> (not res!125073) (not e!165660))))

(assert (=> d!61505 (= res!125073 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504)))))))

(assert (=> d!61505 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6871 thiss!1504) index!297 key!932) lt!128227)))

(declare-fun b!255554 () Bool)

(declare-fun res!125071 () Bool)

(assert (=> b!255554 (=> (not res!125071) (not e!165660))))

(assert (=> b!255554 (= res!125071 (not (validKeyInArray!0 (select (arr!5908 (_keys!6871 thiss!1504)) index!297))))))

(assert (= (and d!61505 res!125073) b!255554))

(assert (= (and b!255554 res!125071) b!255555))

(assert (= (and b!255555 res!125072) b!255556))

(assert (= (and d!61505 res!125070) b!255557))

(assert (=> b!255557 m!270921))

(declare-fun m!271043 () Bool)

(assert (=> b!255557 m!271043))

(assert (=> b!255557 m!270927))

(declare-fun m!271045 () Bool)

(assert (=> b!255555 m!271045))

(declare-fun m!271047 () Bool)

(assert (=> d!61505 m!271047))

(declare-fun m!271049 () Bool)

(assert (=> b!255554 m!271049))

(assert (=> b!255554 m!271049))

(declare-fun m!271051 () Bool)

(assert (=> b!255554 m!271051))

(assert (=> b!255418 d!61505))

(declare-fun b!255566 () Bool)

(declare-fun e!165669 () Bool)

(declare-fun call!24162 () Bool)

(assert (=> b!255566 (= e!165669 call!24162)))

(declare-fun b!255567 () Bool)

(declare-fun e!165667 () Bool)

(assert (=> b!255567 (= e!165667 e!165669)))

(declare-fun lt!128235 () (_ BitVec 64))

(assert (=> b!255567 (= lt!128235 (select (arr!5908 lt!128164) #b00000000000000000000000000000000))))

(declare-fun lt!128236 () Unit!7925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12470 (_ BitVec 64) (_ BitVec 32)) Unit!7925)

(assert (=> b!255567 (= lt!128236 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128164 lt!128235 #b00000000000000000000000000000000))))

(assert (=> b!255567 (arrayContainsKey!0 lt!128164 lt!128235 #b00000000000000000000000000000000)))

(declare-fun lt!128234 () Unit!7925)

(assert (=> b!255567 (= lt!128234 lt!128236)))

(declare-fun res!125079 () Bool)

(assert (=> b!255567 (= res!125079 (= (seekEntryOrOpen!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000) lt!128164 (mask!10973 thiss!1504)) (Found!1168 #b00000000000000000000000000000000)))))

(assert (=> b!255567 (=> (not res!125079) (not e!165669))))

(declare-fun b!255568 () Bool)

(declare-fun e!165668 () Bool)

(assert (=> b!255568 (= e!165668 e!165667)))

(declare-fun c!43145 () Bool)

(assert (=> b!255568 (= c!43145 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun bm!24159 () Bool)

(assert (=> bm!24159 (= call!24162 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!128164 (mask!10973 thiss!1504)))))

(declare-fun b!255569 () Bool)

(assert (=> b!255569 (= e!165667 call!24162)))

(declare-fun d!61507 () Bool)

(declare-fun res!125078 () Bool)

(assert (=> d!61507 (=> res!125078 e!165668)))

(assert (=> d!61507 (= res!125078 (bvsge #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(assert (=> d!61507 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128164 (mask!10973 thiss!1504)) e!165668)))

(assert (= (and d!61507 (not res!125078)) b!255568))

(assert (= (and b!255568 c!43145) b!255567))

(assert (= (and b!255568 (not c!43145)) b!255569))

(assert (= (and b!255567 res!125079) b!255566))

(assert (= (or b!255566 b!255569) bm!24159))

(declare-fun m!271053 () Bool)

(assert (=> b!255567 m!271053))

(declare-fun m!271055 () Bool)

(assert (=> b!255567 m!271055))

(declare-fun m!271057 () Bool)

(assert (=> b!255567 m!271057))

(assert (=> b!255567 m!271053))

(declare-fun m!271059 () Bool)

(assert (=> b!255567 m!271059))

(assert (=> b!255568 m!271053))

(assert (=> b!255568 m!271053))

(declare-fun m!271061 () Bool)

(assert (=> b!255568 m!271061))

(declare-fun m!271063 () Bool)

(assert (=> bm!24159 m!271063))

(assert (=> b!255418 d!61507))

(declare-fun b!255578 () Bool)

(declare-fun e!165675 () (_ BitVec 32))

(declare-fun e!165674 () (_ BitVec 32))

(assert (=> b!255578 (= e!165675 e!165674)))

(declare-fun c!43150 () Bool)

(assert (=> b!255578 (= c!43150 (validKeyInArray!0 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61509 () Bool)

(declare-fun lt!128239 () (_ BitVec 32))

(assert (=> d!61509 (and (bvsge lt!128239 #b00000000000000000000000000000000) (bvsle lt!128239 (bvsub (size!6255 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61509 (= lt!128239 e!165675)))

(declare-fun c!43151 () Bool)

(assert (=> d!61509 (= c!43151 (bvsge #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(assert (=> d!61509 (and (bvsle #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6255 (_keys!6871 thiss!1504)) (size!6255 (_keys!6871 thiss!1504))))))

(assert (=> d!61509 (= (arrayCountValidKeys!0 (_keys!6871 thiss!1504) #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) lt!128239)))

(declare-fun bm!24162 () Bool)

(declare-fun call!24165 () (_ BitVec 32))

(assert (=> bm!24162 (= call!24165 (arrayCountValidKeys!0 (_keys!6871 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun b!255579 () Bool)

(assert (=> b!255579 (= e!165674 call!24165)))

(declare-fun b!255580 () Bool)

(assert (=> b!255580 (= e!165674 (bvadd #b00000000000000000000000000000001 call!24165))))

(declare-fun b!255581 () Bool)

(assert (=> b!255581 (= e!165675 #b00000000000000000000000000000000)))

(assert (= (and d!61509 c!43151) b!255581))

(assert (= (and d!61509 (not c!43151)) b!255578))

(assert (= (and b!255578 c!43150) b!255580))

(assert (= (and b!255578 (not c!43150)) b!255579))

(assert (= (or b!255580 b!255579) bm!24162))

(assert (=> b!255578 m!271015))

(assert (=> b!255578 m!271015))

(declare-fun m!271065 () Bool)

(assert (=> b!255578 m!271065))

(declare-fun m!271067 () Bool)

(assert (=> bm!24162 m!271067))

(assert (=> b!255418 d!61509))

(declare-fun d!61511 () Bool)

(declare-fun e!165678 () Bool)

(assert (=> d!61511 e!165678))

(declare-fun res!125082 () Bool)

(assert (=> d!61511 (=> (not res!125082) (not e!165678))))

(assert (=> d!61511 (= res!125082 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504))) (bvslt index!297 (size!6254 (_values!4696 thiss!1504)))))))

(declare-fun lt!128242 () Unit!7925)

(declare-fun choose!1231 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 32) (_ BitVec 64) V!8403 Int) Unit!7925)

(assert (=> d!61511 (= lt!128242 (choose!1231 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) index!297 key!932 v!346 (defaultEntry!4713 thiss!1504)))))

(assert (=> d!61511 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61511 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!88 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) index!297 key!932 v!346 (defaultEntry!4713 thiss!1504)) lt!128242)))

(declare-fun b!255584 () Bool)

(assert (=> b!255584 (= e!165678 (= (+!673 (getCurrentListMap!1451 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)) (tuple2!4899 key!932 v!346)) (getCurrentListMap!1451 (array!12471 (store (arr!5908 (_keys!6871 thiss!1504)) index!297 key!932) (size!6255 (_keys!6871 thiss!1504))) (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504))))))

(assert (= (and d!61511 res!125082) b!255584))

(declare-fun m!271069 () Bool)

(assert (=> d!61511 m!271069))

(assert (=> d!61511 m!271007))

(assert (=> b!255584 m!270939))

(declare-fun m!271071 () Bool)

(assert (=> b!255584 m!271071))

(declare-fun m!271073 () Bool)

(assert (=> b!255584 m!271073))

(assert (=> b!255584 m!270939))

(assert (=> b!255584 m!270921))

(assert (=> b!255584 m!270911))

(assert (=> b!255418 d!61511))

(declare-fun b!255585 () Bool)

(declare-fun e!165680 () (_ BitVec 32))

(declare-fun e!165679 () (_ BitVec 32))

(assert (=> b!255585 (= e!165680 e!165679)))

(declare-fun c!43152 () Bool)

(assert (=> b!255585 (= c!43152 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun d!61513 () Bool)

(declare-fun lt!128243 () (_ BitVec 32))

(assert (=> d!61513 (and (bvsge lt!128243 #b00000000000000000000000000000000) (bvsle lt!128243 (bvsub (size!6255 lt!128164) #b00000000000000000000000000000000)))))

(assert (=> d!61513 (= lt!128243 e!165680)))

(declare-fun c!43153 () Bool)

(assert (=> d!61513 (= c!43153 (bvsge #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(assert (=> d!61513 (and (bvsle #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6255 (_keys!6871 thiss!1504)) (size!6255 lt!128164)))))

(assert (=> d!61513 (= (arrayCountValidKeys!0 lt!128164 #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) lt!128243)))

(declare-fun bm!24163 () Bool)

(declare-fun call!24166 () (_ BitVec 32))

(assert (=> bm!24163 (= call!24166 (arrayCountValidKeys!0 lt!128164 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun b!255586 () Bool)

(assert (=> b!255586 (= e!165679 call!24166)))

(declare-fun b!255587 () Bool)

(assert (=> b!255587 (= e!165679 (bvadd #b00000000000000000000000000000001 call!24166))))

(declare-fun b!255588 () Bool)

(assert (=> b!255588 (= e!165680 #b00000000000000000000000000000000)))

(assert (= (and d!61513 c!43153) b!255588))

(assert (= (and d!61513 (not c!43153)) b!255585))

(assert (= (and b!255585 c!43152) b!255587))

(assert (= (and b!255585 (not c!43152)) b!255586))

(assert (= (or b!255587 b!255586) bm!24163))

(assert (=> b!255585 m!271053))

(assert (=> b!255585 m!271053))

(assert (=> b!255585 m!271061))

(declare-fun m!271075 () Bool)

(assert (=> bm!24163 m!271075))

(assert (=> b!255418 d!61513))

(declare-fun d!61515 () Bool)

(declare-fun e!165683 () Bool)

(assert (=> d!61515 e!165683))

(declare-fun res!125088 () Bool)

(assert (=> d!61515 (=> (not res!125088) (not e!165683))))

(declare-fun lt!128252 () ListLongMap!3825)

(assert (=> d!61515 (= res!125088 (contains!1856 lt!128252 (_1!2459 (tuple2!4899 key!932 v!346))))))

(declare-fun lt!128254 () List!3802)

(assert (=> d!61515 (= lt!128252 (ListLongMap!3826 lt!128254))))

(declare-fun lt!128255 () Unit!7925)

(declare-fun lt!128253 () Unit!7925)

(assert (=> d!61515 (= lt!128255 lt!128253)))

(declare-datatypes ((Option!312 0))(
  ( (Some!311 (v!5408 V!8403)) (None!310) )
))
(declare-fun getValueByKey!306 (List!3802 (_ BitVec 64)) Option!312)

(assert (=> d!61515 (= (getValueByKey!306 lt!128254 (_1!2459 (tuple2!4899 key!932 v!346))) (Some!311 (_2!2459 (tuple2!4899 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!164 (List!3802 (_ BitVec 64) V!8403) Unit!7925)

(assert (=> d!61515 (= lt!128253 (lemmaContainsTupThenGetReturnValue!164 lt!128254 (_1!2459 (tuple2!4899 key!932 v!346)) (_2!2459 (tuple2!4899 key!932 v!346))))))

(declare-fun insertStrictlySorted!166 (List!3802 (_ BitVec 64) V!8403) List!3802)

(assert (=> d!61515 (= lt!128254 (insertStrictlySorted!166 (toList!1928 lt!128161) (_1!2459 (tuple2!4899 key!932 v!346)) (_2!2459 (tuple2!4899 key!932 v!346))))))

(assert (=> d!61515 (= (+!673 lt!128161 (tuple2!4899 key!932 v!346)) lt!128252)))

(declare-fun b!255593 () Bool)

(declare-fun res!125087 () Bool)

(assert (=> b!255593 (=> (not res!125087) (not e!165683))))

(assert (=> b!255593 (= res!125087 (= (getValueByKey!306 (toList!1928 lt!128252) (_1!2459 (tuple2!4899 key!932 v!346))) (Some!311 (_2!2459 (tuple2!4899 key!932 v!346)))))))

(declare-fun b!255594 () Bool)

(declare-fun contains!1857 (List!3802 tuple2!4898) Bool)

(assert (=> b!255594 (= e!165683 (contains!1857 (toList!1928 lt!128252) (tuple2!4899 key!932 v!346)))))

(assert (= (and d!61515 res!125088) b!255593))

(assert (= (and b!255593 res!125087) b!255594))

(declare-fun m!271077 () Bool)

(assert (=> d!61515 m!271077))

(declare-fun m!271079 () Bool)

(assert (=> d!61515 m!271079))

(declare-fun m!271081 () Bool)

(assert (=> d!61515 m!271081))

(declare-fun m!271083 () Bool)

(assert (=> d!61515 m!271083))

(declare-fun m!271085 () Bool)

(assert (=> b!255593 m!271085))

(declare-fun m!271087 () Bool)

(assert (=> b!255594 m!271087))

(assert (=> b!255418 d!61515))

(declare-fun b!255605 () Bool)

(declare-fun e!165694 () Bool)

(declare-fun e!165692 () Bool)

(assert (=> b!255605 (= e!165694 e!165692)))

(declare-fun c!43156 () Bool)

(assert (=> b!255605 (= c!43156 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun bm!24166 () Bool)

(declare-fun call!24169 () Bool)

(assert (=> bm!24166 (= call!24169 (arrayNoDuplicates!0 lt!128164 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43156 (Cons!3799 (select (arr!5908 lt!128164) #b00000000000000000000000000000000) Nil!3800) Nil!3800)))))

(declare-fun b!255606 () Bool)

(declare-fun e!165693 () Bool)

(declare-fun contains!1858 (List!3803 (_ BitVec 64)) Bool)

(assert (=> b!255606 (= e!165693 (contains!1858 Nil!3800 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun b!255607 () Bool)

(assert (=> b!255607 (= e!165692 call!24169)))

(declare-fun d!61517 () Bool)

(declare-fun res!125096 () Bool)

(declare-fun e!165695 () Bool)

(assert (=> d!61517 (=> res!125096 e!165695)))

(assert (=> d!61517 (= res!125096 (bvsge #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(assert (=> d!61517 (= (arrayNoDuplicates!0 lt!128164 #b00000000000000000000000000000000 Nil!3800) e!165695)))

(declare-fun b!255608 () Bool)

(assert (=> b!255608 (= e!165695 e!165694)))

(declare-fun res!125097 () Bool)

(assert (=> b!255608 (=> (not res!125097) (not e!165694))))

(assert (=> b!255608 (= res!125097 (not e!165693))))

(declare-fun res!125095 () Bool)

(assert (=> b!255608 (=> (not res!125095) (not e!165693))))

(assert (=> b!255608 (= res!125095 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun b!255609 () Bool)

(assert (=> b!255609 (= e!165692 call!24169)))

(assert (= (and d!61517 (not res!125096)) b!255608))

(assert (= (and b!255608 res!125095) b!255606))

(assert (= (and b!255608 res!125097) b!255605))

(assert (= (and b!255605 c!43156) b!255607))

(assert (= (and b!255605 (not c!43156)) b!255609))

(assert (= (or b!255607 b!255609) bm!24166))

(assert (=> b!255605 m!271053))

(assert (=> b!255605 m!271053))

(assert (=> b!255605 m!271061))

(assert (=> bm!24166 m!271053))

(declare-fun m!271089 () Bool)

(assert (=> bm!24166 m!271089))

(assert (=> b!255606 m!271053))

(assert (=> b!255606 m!271053))

(declare-fun m!271091 () Bool)

(assert (=> b!255606 m!271091))

(assert (=> b!255608 m!271053))

(assert (=> b!255608 m!271053))

(assert (=> b!255608 m!271061))

(assert (=> b!255418 d!61517))

(declare-fun d!61519 () Bool)

(declare-fun e!165698 () Bool)

(assert (=> d!61519 e!165698))

(declare-fun res!125100 () Bool)

(assert (=> d!61519 (=> (not res!125100) (not e!165698))))

(assert (=> d!61519 (= res!125100 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504)))))))

(declare-fun lt!128258 () Unit!7925)

(declare-fun choose!41 (array!12470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3803) Unit!7925)

(assert (=> d!61519 (= lt!128258 (choose!41 (_keys!6871 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3800))))

(assert (=> d!61519 (bvslt (size!6255 (_keys!6871 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61519 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6871 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3800) lt!128258)))

(declare-fun b!255612 () Bool)

(assert (=> b!255612 (= e!165698 (arrayNoDuplicates!0 (array!12471 (store (arr!5908 (_keys!6871 thiss!1504)) index!297 key!932) (size!6255 (_keys!6871 thiss!1504))) #b00000000000000000000000000000000 Nil!3800))))

(assert (= (and d!61519 res!125100) b!255612))

(declare-fun m!271093 () Bool)

(assert (=> d!61519 m!271093))

(assert (=> b!255612 m!270921))

(declare-fun m!271095 () Bool)

(assert (=> b!255612 m!271095))

(assert (=> b!255418 d!61519))

(declare-fun b!255655 () Bool)

(declare-fun e!165730 () Bool)

(declare-fun e!165731 () Bool)

(assert (=> b!255655 (= e!165730 e!165731)))

(declare-fun res!125120 () Bool)

(declare-fun call!24190 () Bool)

(assert (=> b!255655 (= res!125120 call!24190)))

(assert (=> b!255655 (=> (not res!125120) (not e!165731))))

(declare-fun b!255656 () Bool)

(declare-fun e!165735 () Unit!7925)

(declare-fun lt!128322 () Unit!7925)

(assert (=> b!255656 (= e!165735 lt!128322)))

(declare-fun lt!128319 () ListLongMap!3825)

(declare-fun getCurrentListMapNoExtraKeys!568 (array!12470 array!12468 (_ BitVec 32) (_ BitVec 32) V!8403 V!8403 (_ BitVec 32) Int) ListLongMap!3825)

(assert (=> b!255656 (= lt!128319 (getCurrentListMapNoExtraKeys!568 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128311 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128311 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128303 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128303 (select (arr!5908 lt!128164) #b00000000000000000000000000000000))))

(declare-fun lt!128321 () Unit!7925)

(declare-fun addStillContains!225 (ListLongMap!3825 (_ BitVec 64) V!8403 (_ BitVec 64)) Unit!7925)

(assert (=> b!255656 (= lt!128321 (addStillContains!225 lt!128319 lt!128311 (zeroValue!4554 thiss!1504) lt!128303))))

(assert (=> b!255656 (contains!1856 (+!673 lt!128319 (tuple2!4899 lt!128311 (zeroValue!4554 thiss!1504))) lt!128303)))

(declare-fun lt!128323 () Unit!7925)

(assert (=> b!255656 (= lt!128323 lt!128321)))

(declare-fun lt!128306 () ListLongMap!3825)

(assert (=> b!255656 (= lt!128306 (getCurrentListMapNoExtraKeys!568 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128309 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128309 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128318 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128318 (select (arr!5908 lt!128164) #b00000000000000000000000000000000))))

(declare-fun lt!128304 () Unit!7925)

(declare-fun addApplyDifferent!225 (ListLongMap!3825 (_ BitVec 64) V!8403 (_ BitVec 64)) Unit!7925)

(assert (=> b!255656 (= lt!128304 (addApplyDifferent!225 lt!128306 lt!128309 (minValue!4554 thiss!1504) lt!128318))))

(declare-fun apply!249 (ListLongMap!3825 (_ BitVec 64)) V!8403)

(assert (=> b!255656 (= (apply!249 (+!673 lt!128306 (tuple2!4899 lt!128309 (minValue!4554 thiss!1504))) lt!128318) (apply!249 lt!128306 lt!128318))))

(declare-fun lt!128324 () Unit!7925)

(assert (=> b!255656 (= lt!128324 lt!128304)))

(declare-fun lt!128308 () ListLongMap!3825)

(assert (=> b!255656 (= lt!128308 (getCurrentListMapNoExtraKeys!568 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128307 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128307 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128316 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128316 (select (arr!5908 lt!128164) #b00000000000000000000000000000000))))

(declare-fun lt!128310 () Unit!7925)

(assert (=> b!255656 (= lt!128310 (addApplyDifferent!225 lt!128308 lt!128307 (zeroValue!4554 thiss!1504) lt!128316))))

(assert (=> b!255656 (= (apply!249 (+!673 lt!128308 (tuple2!4899 lt!128307 (zeroValue!4554 thiss!1504))) lt!128316) (apply!249 lt!128308 lt!128316))))

(declare-fun lt!128320 () Unit!7925)

(assert (=> b!255656 (= lt!128320 lt!128310)))

(declare-fun lt!128312 () ListLongMap!3825)

(assert (=> b!255656 (= lt!128312 (getCurrentListMapNoExtraKeys!568 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128317 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128317 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128315 () (_ BitVec 64))

(assert (=> b!255656 (= lt!128315 (select (arr!5908 lt!128164) #b00000000000000000000000000000000))))

(assert (=> b!255656 (= lt!128322 (addApplyDifferent!225 lt!128312 lt!128317 (minValue!4554 thiss!1504) lt!128315))))

(assert (=> b!255656 (= (apply!249 (+!673 lt!128312 (tuple2!4899 lt!128317 (minValue!4554 thiss!1504))) lt!128315) (apply!249 lt!128312 lt!128315))))

(declare-fun b!255657 () Bool)

(declare-fun e!165734 () ListLongMap!3825)

(declare-fun e!165729 () ListLongMap!3825)

(assert (=> b!255657 (= e!165734 e!165729)))

(declare-fun c!43174 () Bool)

(assert (=> b!255657 (= c!43174 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!255658 () Bool)

(declare-fun e!165733 () ListLongMap!3825)

(declare-fun call!24188 () ListLongMap!3825)

(assert (=> b!255658 (= e!165733 call!24188)))

(declare-fun b!255659 () Bool)

(declare-fun e!165732 () Bool)

(declare-fun e!165726 () Bool)

(assert (=> b!255659 (= e!165732 e!165726)))

(declare-fun c!43169 () Bool)

(assert (=> b!255659 (= c!43169 (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!24185 () ListLongMap!3825)

(declare-fun c!43173 () Bool)

(declare-fun call!24189 () ListLongMap!3825)

(declare-fun bm!24181 () Bool)

(declare-fun call!24184 () ListLongMap!3825)

(declare-fun call!24187 () ListLongMap!3825)

(assert (=> bm!24181 (= call!24187 (+!673 (ite c!43173 call!24185 (ite c!43174 call!24189 call!24184)) (ite (or c!43173 c!43174) (tuple2!4899 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4554 thiss!1504)) (tuple2!4899 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4554 thiss!1504)))))))

(declare-fun b!255660 () Bool)

(declare-fun e!165736 () Bool)

(declare-fun lt!128305 () ListLongMap!3825)

(assert (=> b!255660 (= e!165736 (= (apply!249 lt!128305 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4554 thiss!1504)))))

(declare-fun bm!24182 () Bool)

(assert (=> bm!24182 (= call!24185 (getCurrentListMapNoExtraKeys!568 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun bm!24183 () Bool)

(assert (=> bm!24183 (= call!24184 call!24189)))

(declare-fun b!255661 () Bool)

(declare-fun res!125122 () Bool)

(assert (=> b!255661 (=> (not res!125122) (not e!165732))))

(declare-fun e!165728 () Bool)

(assert (=> b!255661 (= res!125122 e!165728)))

(declare-fun res!125123 () Bool)

(assert (=> b!255661 (=> res!125123 e!165728)))

(declare-fun e!165737 () Bool)

(assert (=> b!255661 (= res!125123 (not e!165737))))

(declare-fun res!125126 () Bool)

(assert (=> b!255661 (=> (not res!125126) (not e!165737))))

(assert (=> b!255661 (= res!125126 (bvslt #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(declare-fun d!61521 () Bool)

(assert (=> d!61521 e!165732))

(declare-fun res!125127 () Bool)

(assert (=> d!61521 (=> (not res!125127) (not e!165732))))

(assert (=> d!61521 (= res!125127 (or (bvsge #b00000000000000000000000000000000 (size!6255 lt!128164)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 lt!128164)))))))

(declare-fun lt!128314 () ListLongMap!3825)

(assert (=> d!61521 (= lt!128305 lt!128314)))

(declare-fun lt!128313 () Unit!7925)

(assert (=> d!61521 (= lt!128313 e!165735)))

(declare-fun c!43172 () Bool)

(declare-fun e!165727 () Bool)

(assert (=> d!61521 (= c!43172 e!165727)))

(declare-fun res!125119 () Bool)

(assert (=> d!61521 (=> (not res!125119) (not e!165727))))

(assert (=> d!61521 (= res!125119 (bvslt #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(assert (=> d!61521 (= lt!128314 e!165734)))

(assert (=> d!61521 (= c!43173 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61521 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61521 (= (getCurrentListMap!1451 lt!128164 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)) lt!128305)))

(declare-fun b!255662 () Bool)

(assert (=> b!255662 (= e!165733 call!24184)))

(declare-fun b!255663 () Bool)

(assert (=> b!255663 (= e!165729 call!24188)))

(declare-fun b!255664 () Bool)

(declare-fun Unit!7930 () Unit!7925)

(assert (=> b!255664 (= e!165735 Unit!7930)))

(declare-fun b!255665 () Bool)

(declare-fun res!125124 () Bool)

(assert (=> b!255665 (=> (not res!125124) (not e!165732))))

(assert (=> b!255665 (= res!125124 e!165730)))

(declare-fun c!43170 () Bool)

(assert (=> b!255665 (= c!43170 (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!255666 () Bool)

(assert (=> b!255666 (= e!165727 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun b!255667 () Bool)

(assert (=> b!255667 (= e!165731 (= (apply!249 lt!128305 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4554 thiss!1504)))))

(declare-fun b!255668 () Bool)

(declare-fun c!43171 () Bool)

(assert (=> b!255668 (= c!43171 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!255668 (= e!165729 e!165733)))

(declare-fun b!255669 () Bool)

(declare-fun call!24186 () Bool)

(assert (=> b!255669 (= e!165726 (not call!24186))))

(declare-fun b!255670 () Bool)

(assert (=> b!255670 (= e!165737 (validKeyInArray!0 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(declare-fun bm!24184 () Bool)

(assert (=> bm!24184 (= call!24190 (contains!1856 lt!128305 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255671 () Bool)

(assert (=> b!255671 (= e!165726 e!165736)))

(declare-fun res!125125 () Bool)

(assert (=> b!255671 (= res!125125 call!24186)))

(assert (=> b!255671 (=> (not res!125125) (not e!165736))))

(declare-fun b!255672 () Bool)

(assert (=> b!255672 (= e!165730 (not call!24190))))

(declare-fun b!255673 () Bool)

(declare-fun e!165725 () Bool)

(assert (=> b!255673 (= e!165728 e!165725)))

(declare-fun res!125121 () Bool)

(assert (=> b!255673 (=> (not res!125121) (not e!165725))))

(assert (=> b!255673 (= res!125121 (contains!1856 lt!128305 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)))))

(assert (=> b!255673 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(declare-fun bm!24185 () Bool)

(assert (=> bm!24185 (= call!24188 call!24187)))

(declare-fun bm!24186 () Bool)

(assert (=> bm!24186 (= call!24186 (contains!1856 lt!128305 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24187 () Bool)

(assert (=> bm!24187 (= call!24189 call!24185)))

(declare-fun b!255674 () Bool)

(declare-fun get!3039 (ValueCell!2940 V!8403) V!8403)

(declare-fun dynLambda!587 (Int (_ BitVec 64)) V!8403)

(assert (=> b!255674 (= e!165725 (= (apply!249 lt!128305 (select (arr!5908 lt!128164) #b00000000000000000000000000000000)) (get!3039 (select (arr!5907 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!587 (defaultEntry!4713 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!255674 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6254 (array!12469 (store (arr!5907 (_values!4696 thiss!1504)) index!297 (ValueCellFull!2940 v!346)) (size!6254 (_values!4696 thiss!1504))))))))

(assert (=> b!255674 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 lt!128164)))))

(declare-fun b!255675 () Bool)

(assert (=> b!255675 (= e!165734 (+!673 call!24187 (tuple2!4899 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4554 thiss!1504))))))

(assert (= (and d!61521 c!43173) b!255675))

(assert (= (and d!61521 (not c!43173)) b!255657))

(assert (= (and b!255657 c!43174) b!255663))

(assert (= (and b!255657 (not c!43174)) b!255668))

(assert (= (and b!255668 c!43171) b!255658))

(assert (= (and b!255668 (not c!43171)) b!255662))

(assert (= (or b!255658 b!255662) bm!24183))

(assert (= (or b!255663 bm!24183) bm!24187))

(assert (= (or b!255663 b!255658) bm!24185))

(assert (= (or b!255675 bm!24187) bm!24182))

(assert (= (or b!255675 bm!24185) bm!24181))

(assert (= (and d!61521 res!125119) b!255666))

(assert (= (and d!61521 c!43172) b!255656))

(assert (= (and d!61521 (not c!43172)) b!255664))

(assert (= (and d!61521 res!125127) b!255661))

(assert (= (and b!255661 res!125126) b!255670))

(assert (= (and b!255661 (not res!125123)) b!255673))

(assert (= (and b!255673 res!125121) b!255674))

(assert (= (and b!255661 res!125122) b!255665))

(assert (= (and b!255665 c!43170) b!255655))

(assert (= (and b!255665 (not c!43170)) b!255672))

(assert (= (and b!255655 res!125120) b!255667))

(assert (= (or b!255655 b!255672) bm!24184))

(assert (= (and b!255665 res!125124) b!255659))

(assert (= (and b!255659 c!43169) b!255671))

(assert (= (and b!255659 (not c!43169)) b!255669))

(assert (= (and b!255671 res!125125) b!255660))

(assert (= (or b!255671 b!255669) bm!24186))

(declare-fun b_lambda!8177 () Bool)

(assert (=> (not b_lambda!8177) (not b!255674)))

(declare-fun t!8864 () Bool)

(declare-fun tb!3019 () Bool)

(assert (=> (and b!255423 (= (defaultEntry!4713 thiss!1504) (defaultEntry!4713 thiss!1504)) t!8864) tb!3019))

(declare-fun result!5363 () Bool)

(assert (=> tb!3019 (= result!5363 tp_is_empty!6567)))

(assert (=> b!255674 t!8864))

(declare-fun b_and!13777 () Bool)

(assert (= b_and!13773 (and (=> t!8864 result!5363) b_and!13777)))

(declare-fun m!271097 () Bool)

(assert (=> b!255667 m!271097))

(declare-fun m!271099 () Bool)

(assert (=> b!255674 m!271099))

(assert (=> b!255674 m!271053))

(declare-fun m!271101 () Bool)

(assert (=> b!255674 m!271101))

(assert (=> b!255674 m!271101))

(assert (=> b!255674 m!271099))

(declare-fun m!271103 () Bool)

(assert (=> b!255674 m!271103))

(assert (=> b!255674 m!271053))

(declare-fun m!271105 () Bool)

(assert (=> b!255674 m!271105))

(assert (=> d!61521 m!271007))

(assert (=> b!255673 m!271053))

(assert (=> b!255673 m!271053))

(declare-fun m!271107 () Bool)

(assert (=> b!255673 m!271107))

(declare-fun m!271109 () Bool)

(assert (=> b!255656 m!271109))

(declare-fun m!271111 () Bool)

(assert (=> b!255656 m!271111))

(declare-fun m!271113 () Bool)

(assert (=> b!255656 m!271113))

(assert (=> b!255656 m!271053))

(declare-fun m!271115 () Bool)

(assert (=> b!255656 m!271115))

(declare-fun m!271117 () Bool)

(assert (=> b!255656 m!271117))

(declare-fun m!271119 () Bool)

(assert (=> b!255656 m!271119))

(declare-fun m!271121 () Bool)

(assert (=> b!255656 m!271121))

(declare-fun m!271123 () Bool)

(assert (=> b!255656 m!271123))

(assert (=> b!255656 m!271109))

(declare-fun m!271125 () Bool)

(assert (=> b!255656 m!271125))

(assert (=> b!255656 m!271111))

(declare-fun m!271127 () Bool)

(assert (=> b!255656 m!271127))

(declare-fun m!271129 () Bool)

(assert (=> b!255656 m!271129))

(declare-fun m!271131 () Bool)

(assert (=> b!255656 m!271131))

(declare-fun m!271133 () Bool)

(assert (=> b!255656 m!271133))

(declare-fun m!271135 () Bool)

(assert (=> b!255656 m!271135))

(assert (=> b!255656 m!271115))

(declare-fun m!271137 () Bool)

(assert (=> b!255656 m!271137))

(assert (=> b!255656 m!271121))

(declare-fun m!271139 () Bool)

(assert (=> b!255656 m!271139))

(declare-fun m!271141 () Bool)

(assert (=> b!255675 m!271141))

(declare-fun m!271143 () Bool)

(assert (=> bm!24184 m!271143))

(assert (=> bm!24182 m!271131))

(declare-fun m!271145 () Bool)

(assert (=> b!255660 m!271145))

(assert (=> b!255670 m!271053))

(assert (=> b!255670 m!271053))

(assert (=> b!255670 m!271061))

(assert (=> b!255666 m!271053))

(assert (=> b!255666 m!271053))

(assert (=> b!255666 m!271061))

(declare-fun m!271147 () Bool)

(assert (=> bm!24181 m!271147))

(declare-fun m!271149 () Bool)

(assert (=> bm!24186 m!271149))

(assert (=> b!255418 d!61521))

(assert (=> b!255418 d!61497))

(declare-fun d!61523 () Bool)

(declare-fun e!165740 () Bool)

(assert (=> d!61523 e!165740))

(declare-fun res!125130 () Bool)

(assert (=> d!61523 (=> (not res!125130) (not e!165740))))

(assert (=> d!61523 (= res!125130 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6255 (_keys!6871 thiss!1504)))))))

(declare-fun lt!128327 () Unit!7925)

(declare-fun choose!102 ((_ BitVec 64) array!12470 (_ BitVec 32) (_ BitVec 32)) Unit!7925)

(assert (=> d!61523 (= lt!128327 (choose!102 key!932 (_keys!6871 thiss!1504) index!297 (mask!10973 thiss!1504)))))

(assert (=> d!61523 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61523 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6871 thiss!1504) index!297 (mask!10973 thiss!1504)) lt!128327)))

(declare-fun b!255680 () Bool)

(assert (=> b!255680 (= e!165740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12471 (store (arr!5908 (_keys!6871 thiss!1504)) index!297 key!932) (size!6255 (_keys!6871 thiss!1504))) (mask!10973 thiss!1504)))))

(assert (= (and d!61523 res!125130) b!255680))

(declare-fun m!271151 () Bool)

(assert (=> d!61523 m!271151))

(assert (=> d!61523 m!271007))

(assert (=> b!255680 m!270921))

(declare-fun m!271153 () Bool)

(assert (=> b!255680 m!271153))

(assert (=> b!255418 d!61523))

(declare-fun d!61525 () Bool)

(assert (=> d!61525 (= (inRange!0 index!297 (mask!10973 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10973 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!255429 d!61525))

(declare-fun d!61527 () Bool)

(declare-fun e!165746 () Bool)

(assert (=> d!61527 e!165746))

(declare-fun res!125133 () Bool)

(assert (=> d!61527 (=> res!125133 e!165746)))

(declare-fun lt!128337 () Bool)

(assert (=> d!61527 (= res!125133 (not lt!128337))))

(declare-fun lt!128339 () Bool)

(assert (=> d!61527 (= lt!128337 lt!128339)))

(declare-fun lt!128338 () Unit!7925)

(declare-fun e!165745 () Unit!7925)

(assert (=> d!61527 (= lt!128338 e!165745)))

(declare-fun c!43177 () Bool)

(assert (=> d!61527 (= c!43177 lt!128339)))

(declare-fun containsKey!298 (List!3802 (_ BitVec 64)) Bool)

(assert (=> d!61527 (= lt!128339 (containsKey!298 (toList!1928 lt!128161) key!932))))

(assert (=> d!61527 (= (contains!1856 lt!128161 key!932) lt!128337)))

(declare-fun b!255687 () Bool)

(declare-fun lt!128336 () Unit!7925)

(assert (=> b!255687 (= e!165745 lt!128336)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!247 (List!3802 (_ BitVec 64)) Unit!7925)

(assert (=> b!255687 (= lt!128336 (lemmaContainsKeyImpliesGetValueByKeyDefined!247 (toList!1928 lt!128161) key!932))))

(declare-fun isDefined!248 (Option!312) Bool)

(assert (=> b!255687 (isDefined!248 (getValueByKey!306 (toList!1928 lt!128161) key!932))))

(declare-fun b!255688 () Bool)

(declare-fun Unit!7931 () Unit!7925)

(assert (=> b!255688 (= e!165745 Unit!7931)))

(declare-fun b!255689 () Bool)

(assert (=> b!255689 (= e!165746 (isDefined!248 (getValueByKey!306 (toList!1928 lt!128161) key!932)))))

(assert (= (and d!61527 c!43177) b!255687))

(assert (= (and d!61527 (not c!43177)) b!255688))

(assert (= (and d!61527 (not res!125133)) b!255689))

(declare-fun m!271155 () Bool)

(assert (=> d!61527 m!271155))

(declare-fun m!271157 () Bool)

(assert (=> b!255687 m!271157))

(declare-fun m!271159 () Bool)

(assert (=> b!255687 m!271159))

(assert (=> b!255687 m!271159))

(declare-fun m!271161 () Bool)

(assert (=> b!255687 m!271161))

(assert (=> b!255689 m!271159))

(assert (=> b!255689 m!271159))

(assert (=> b!255689 m!271161))

(assert (=> b!255429 d!61527))

(declare-fun b!255690 () Bool)

(declare-fun e!165752 () Bool)

(declare-fun e!165753 () Bool)

(assert (=> b!255690 (= e!165752 e!165753)))

(declare-fun res!125135 () Bool)

(declare-fun call!24197 () Bool)

(assert (=> b!255690 (= res!125135 call!24197)))

(assert (=> b!255690 (=> (not res!125135) (not e!165753))))

(declare-fun b!255691 () Bool)

(declare-fun e!165757 () Unit!7925)

(declare-fun lt!128359 () Unit!7925)

(assert (=> b!255691 (= e!165757 lt!128359)))

(declare-fun lt!128356 () ListLongMap!3825)

(assert (=> b!255691 (= lt!128356 (getCurrentListMapNoExtraKeys!568 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128348 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128348 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128340 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128340 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128358 () Unit!7925)

(assert (=> b!255691 (= lt!128358 (addStillContains!225 lt!128356 lt!128348 (zeroValue!4554 thiss!1504) lt!128340))))

(assert (=> b!255691 (contains!1856 (+!673 lt!128356 (tuple2!4899 lt!128348 (zeroValue!4554 thiss!1504))) lt!128340)))

(declare-fun lt!128360 () Unit!7925)

(assert (=> b!255691 (= lt!128360 lt!128358)))

(declare-fun lt!128343 () ListLongMap!3825)

(assert (=> b!255691 (= lt!128343 (getCurrentListMapNoExtraKeys!568 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128346 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128346 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128355 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128355 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128341 () Unit!7925)

(assert (=> b!255691 (= lt!128341 (addApplyDifferent!225 lt!128343 lt!128346 (minValue!4554 thiss!1504) lt!128355))))

(assert (=> b!255691 (= (apply!249 (+!673 lt!128343 (tuple2!4899 lt!128346 (minValue!4554 thiss!1504))) lt!128355) (apply!249 lt!128343 lt!128355))))

(declare-fun lt!128361 () Unit!7925)

(assert (=> b!255691 (= lt!128361 lt!128341)))

(declare-fun lt!128345 () ListLongMap!3825)

(assert (=> b!255691 (= lt!128345 (getCurrentListMapNoExtraKeys!568 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128344 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128344 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128353 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128353 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128347 () Unit!7925)

(assert (=> b!255691 (= lt!128347 (addApplyDifferent!225 lt!128345 lt!128344 (zeroValue!4554 thiss!1504) lt!128353))))

(assert (=> b!255691 (= (apply!249 (+!673 lt!128345 (tuple2!4899 lt!128344 (zeroValue!4554 thiss!1504))) lt!128353) (apply!249 lt!128345 lt!128353))))

(declare-fun lt!128357 () Unit!7925)

(assert (=> b!255691 (= lt!128357 lt!128347)))

(declare-fun lt!128349 () ListLongMap!3825)

(assert (=> b!255691 (= lt!128349 (getCurrentListMapNoExtraKeys!568 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun lt!128354 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128354 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128352 () (_ BitVec 64))

(assert (=> b!255691 (= lt!128352 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255691 (= lt!128359 (addApplyDifferent!225 lt!128349 lt!128354 (minValue!4554 thiss!1504) lt!128352))))

(assert (=> b!255691 (= (apply!249 (+!673 lt!128349 (tuple2!4899 lt!128354 (minValue!4554 thiss!1504))) lt!128352) (apply!249 lt!128349 lt!128352))))

(declare-fun b!255692 () Bool)

(declare-fun e!165756 () ListLongMap!3825)

(declare-fun e!165751 () ListLongMap!3825)

(assert (=> b!255692 (= e!165756 e!165751)))

(declare-fun c!43183 () Bool)

(assert (=> b!255692 (= c!43183 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!255693 () Bool)

(declare-fun e!165755 () ListLongMap!3825)

(declare-fun call!24195 () ListLongMap!3825)

(assert (=> b!255693 (= e!165755 call!24195)))

(declare-fun b!255694 () Bool)

(declare-fun e!165754 () Bool)

(declare-fun e!165748 () Bool)

(assert (=> b!255694 (= e!165754 e!165748)))

(declare-fun c!43178 () Bool)

(assert (=> b!255694 (= c!43178 (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!24194 () ListLongMap!3825)

(declare-fun call!24191 () ListLongMap!3825)

(declare-fun call!24196 () ListLongMap!3825)

(declare-fun bm!24188 () Bool)

(declare-fun c!43182 () Bool)

(declare-fun call!24192 () ListLongMap!3825)

(assert (=> bm!24188 (= call!24194 (+!673 (ite c!43182 call!24192 (ite c!43183 call!24196 call!24191)) (ite (or c!43182 c!43183) (tuple2!4899 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4554 thiss!1504)) (tuple2!4899 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4554 thiss!1504)))))))

(declare-fun b!255695 () Bool)

(declare-fun e!165758 () Bool)

(declare-fun lt!128342 () ListLongMap!3825)

(assert (=> b!255695 (= e!165758 (= (apply!249 lt!128342 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4554 thiss!1504)))))

(declare-fun bm!24189 () Bool)

(assert (=> bm!24189 (= call!24192 (getCurrentListMapNoExtraKeys!568 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)))))

(declare-fun bm!24190 () Bool)

(assert (=> bm!24190 (= call!24191 call!24196)))

(declare-fun b!255696 () Bool)

(declare-fun res!125137 () Bool)

(assert (=> b!255696 (=> (not res!125137) (not e!165754))))

(declare-fun e!165750 () Bool)

(assert (=> b!255696 (= res!125137 e!165750)))

(declare-fun res!125138 () Bool)

(assert (=> b!255696 (=> res!125138 e!165750)))

(declare-fun e!165759 () Bool)

(assert (=> b!255696 (= res!125138 (not e!165759))))

(declare-fun res!125141 () Bool)

(assert (=> b!255696 (=> (not res!125141) (not e!165759))))

(assert (=> b!255696 (= res!125141 (bvslt #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun d!61529 () Bool)

(assert (=> d!61529 e!165754))

(declare-fun res!125142 () Bool)

(assert (=> d!61529 (=> (not res!125142) (not e!165754))))

(assert (=> d!61529 (= res!125142 (or (bvsge #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))))

(declare-fun lt!128351 () ListLongMap!3825)

(assert (=> d!61529 (= lt!128342 lt!128351)))

(declare-fun lt!128350 () Unit!7925)

(assert (=> d!61529 (= lt!128350 e!165757)))

(declare-fun c!43181 () Bool)

(declare-fun e!165749 () Bool)

(assert (=> d!61529 (= c!43181 e!165749)))

(declare-fun res!125134 () Bool)

(assert (=> d!61529 (=> (not res!125134) (not e!165749))))

(assert (=> d!61529 (= res!125134 (bvslt #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(assert (=> d!61529 (= lt!128351 e!165756)))

(assert (=> d!61529 (= c!43182 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61529 (validMask!0 (mask!10973 thiss!1504))))

(assert (=> d!61529 (= (getCurrentListMap!1451 (_keys!6871 thiss!1504) (_values!4696 thiss!1504) (mask!10973 thiss!1504) (extraKeys!4450 thiss!1504) (zeroValue!4554 thiss!1504) (minValue!4554 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4713 thiss!1504)) lt!128342)))

(declare-fun b!255697 () Bool)

(assert (=> b!255697 (= e!165755 call!24191)))

(declare-fun b!255698 () Bool)

(assert (=> b!255698 (= e!165751 call!24195)))

(declare-fun b!255699 () Bool)

(declare-fun Unit!7932 () Unit!7925)

(assert (=> b!255699 (= e!165757 Unit!7932)))

(declare-fun b!255700 () Bool)

(declare-fun res!125139 () Bool)

(assert (=> b!255700 (=> (not res!125139) (not e!165754))))

(assert (=> b!255700 (= res!125139 e!165752)))

(declare-fun c!43179 () Bool)

(assert (=> b!255700 (= c!43179 (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!255701 () Bool)

(assert (=> b!255701 (= e!165749 (validKeyInArray!0 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!255702 () Bool)

(assert (=> b!255702 (= e!165753 (= (apply!249 lt!128342 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4554 thiss!1504)))))

(declare-fun b!255703 () Bool)

(declare-fun c!43180 () Bool)

(assert (=> b!255703 (= c!43180 (and (not (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4450 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!255703 (= e!165751 e!165755)))

(declare-fun b!255704 () Bool)

(declare-fun call!24193 () Bool)

(assert (=> b!255704 (= e!165748 (not call!24193))))

(declare-fun b!255705 () Bool)

(assert (=> b!255705 (= e!165759 (validKeyInArray!0 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24191 () Bool)

(assert (=> bm!24191 (= call!24197 (contains!1856 lt!128342 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255706 () Bool)

(assert (=> b!255706 (= e!165748 e!165758)))

(declare-fun res!125140 () Bool)

(assert (=> b!255706 (= res!125140 call!24193)))

(assert (=> b!255706 (=> (not res!125140) (not e!165758))))

(declare-fun b!255707 () Bool)

(assert (=> b!255707 (= e!165752 (not call!24197))))

(declare-fun b!255708 () Bool)

(declare-fun e!165747 () Bool)

(assert (=> b!255708 (= e!165750 e!165747)))

(declare-fun res!125136 () Bool)

(assert (=> b!255708 (=> (not res!125136) (not e!165747))))

(assert (=> b!255708 (= res!125136 (contains!1856 lt!128342 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!255708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun bm!24192 () Bool)

(assert (=> bm!24192 (= call!24195 call!24194)))

(declare-fun bm!24193 () Bool)

(assert (=> bm!24193 (= call!24193 (contains!1856 lt!128342 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24194 () Bool)

(assert (=> bm!24194 (= call!24196 call!24192)))

(declare-fun b!255709 () Bool)

(assert (=> b!255709 (= e!165747 (= (apply!249 lt!128342 (select (arr!5908 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000)) (get!3039 (select (arr!5907 (_values!4696 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!587 (defaultEntry!4713 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!255709 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6254 (_values!4696 thiss!1504))))))

(assert (=> b!255709 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))))))

(declare-fun b!255710 () Bool)

(assert (=> b!255710 (= e!165756 (+!673 call!24194 (tuple2!4899 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4554 thiss!1504))))))

(assert (= (and d!61529 c!43182) b!255710))

(assert (= (and d!61529 (not c!43182)) b!255692))

(assert (= (and b!255692 c!43183) b!255698))

(assert (= (and b!255692 (not c!43183)) b!255703))

(assert (= (and b!255703 c!43180) b!255693))

(assert (= (and b!255703 (not c!43180)) b!255697))

(assert (= (or b!255693 b!255697) bm!24190))

(assert (= (or b!255698 bm!24190) bm!24194))

(assert (= (or b!255698 b!255693) bm!24192))

(assert (= (or b!255710 bm!24194) bm!24189))

(assert (= (or b!255710 bm!24192) bm!24188))

(assert (= (and d!61529 res!125134) b!255701))

(assert (= (and d!61529 c!43181) b!255691))

(assert (= (and d!61529 (not c!43181)) b!255699))

(assert (= (and d!61529 res!125142) b!255696))

(assert (= (and b!255696 res!125141) b!255705))

(assert (= (and b!255696 (not res!125138)) b!255708))

(assert (= (and b!255708 res!125136) b!255709))

(assert (= (and b!255696 res!125137) b!255700))

(assert (= (and b!255700 c!43179) b!255690))

(assert (= (and b!255700 (not c!43179)) b!255707))

(assert (= (and b!255690 res!125135) b!255702))

(assert (= (or b!255690 b!255707) bm!24191))

(assert (= (and b!255700 res!125139) b!255694))

(assert (= (and b!255694 c!43178) b!255706))

(assert (= (and b!255694 (not c!43178)) b!255704))

(assert (= (and b!255706 res!125140) b!255695))

(assert (= (or b!255706 b!255704) bm!24193))

(declare-fun b_lambda!8179 () Bool)

(assert (=> (not b_lambda!8179) (not b!255709)))

(assert (=> b!255709 t!8864))

(declare-fun b_and!13779 () Bool)

(assert (= b_and!13777 (and (=> t!8864 result!5363) b_and!13779)))

(declare-fun m!271163 () Bool)

(assert (=> b!255702 m!271163))

(assert (=> b!255709 m!271099))

(assert (=> b!255709 m!271015))

(declare-fun m!271165 () Bool)

(assert (=> b!255709 m!271165))

(assert (=> b!255709 m!271165))

(assert (=> b!255709 m!271099))

(declare-fun m!271167 () Bool)

(assert (=> b!255709 m!271167))

(assert (=> b!255709 m!271015))

(declare-fun m!271169 () Bool)

(assert (=> b!255709 m!271169))

(assert (=> d!61529 m!271007))

(assert (=> b!255708 m!271015))

(assert (=> b!255708 m!271015))

(declare-fun m!271171 () Bool)

(assert (=> b!255708 m!271171))

(declare-fun m!271173 () Bool)

(assert (=> b!255691 m!271173))

(declare-fun m!271175 () Bool)

(assert (=> b!255691 m!271175))

(declare-fun m!271177 () Bool)

(assert (=> b!255691 m!271177))

(assert (=> b!255691 m!271015))

(declare-fun m!271179 () Bool)

(assert (=> b!255691 m!271179))

(declare-fun m!271181 () Bool)

(assert (=> b!255691 m!271181))

(declare-fun m!271183 () Bool)

(assert (=> b!255691 m!271183))

(declare-fun m!271185 () Bool)

(assert (=> b!255691 m!271185))

(declare-fun m!271187 () Bool)

(assert (=> b!255691 m!271187))

(assert (=> b!255691 m!271173))

(declare-fun m!271189 () Bool)

(assert (=> b!255691 m!271189))

(assert (=> b!255691 m!271175))

(declare-fun m!271191 () Bool)

(assert (=> b!255691 m!271191))

(declare-fun m!271193 () Bool)

(assert (=> b!255691 m!271193))

(declare-fun m!271195 () Bool)

(assert (=> b!255691 m!271195))

(declare-fun m!271197 () Bool)

(assert (=> b!255691 m!271197))

(declare-fun m!271199 () Bool)

(assert (=> b!255691 m!271199))

(assert (=> b!255691 m!271179))

(declare-fun m!271201 () Bool)

(assert (=> b!255691 m!271201))

(assert (=> b!255691 m!271185))

(declare-fun m!271203 () Bool)

(assert (=> b!255691 m!271203))

(declare-fun m!271205 () Bool)

(assert (=> b!255710 m!271205))

(declare-fun m!271207 () Bool)

(assert (=> bm!24191 m!271207))

(assert (=> bm!24189 m!271195))

(declare-fun m!271209 () Bool)

(assert (=> b!255695 m!271209))

(assert (=> b!255705 m!271015))

(assert (=> b!255705 m!271015))

(assert (=> b!255705 m!271065))

(assert (=> b!255701 m!271015))

(assert (=> b!255701 m!271015))

(assert (=> b!255701 m!271065))

(declare-fun m!271211 () Bool)

(assert (=> bm!24188 m!271211))

(declare-fun m!271213 () Bool)

(assert (=> bm!24193 m!271213))

(assert (=> b!255429 d!61529))

(declare-fun d!61531 () Bool)

(declare-fun res!125149 () Bool)

(declare-fun e!165762 () Bool)

(assert (=> d!61531 (=> (not res!125149) (not e!165762))))

(declare-fun simpleValid!271 (LongMapFixedSize!3780) Bool)

(assert (=> d!61531 (= res!125149 (simpleValid!271 thiss!1504))))

(assert (=> d!61531 (= (valid!1470 thiss!1504) e!165762)))

(declare-fun b!255717 () Bool)

(declare-fun res!125150 () Bool)

(assert (=> b!255717 (=> (not res!125150) (not e!165762))))

(assert (=> b!255717 (= res!125150 (= (arrayCountValidKeys!0 (_keys!6871 thiss!1504) #b00000000000000000000000000000000 (size!6255 (_keys!6871 thiss!1504))) (_size!1939 thiss!1504)))))

(declare-fun b!255718 () Bool)

(declare-fun res!125151 () Bool)

(assert (=> b!255718 (=> (not res!125151) (not e!165762))))

(assert (=> b!255718 (= res!125151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6871 thiss!1504) (mask!10973 thiss!1504)))))

(declare-fun b!255719 () Bool)

(assert (=> b!255719 (= e!165762 (arrayNoDuplicates!0 (_keys!6871 thiss!1504) #b00000000000000000000000000000000 Nil!3800))))

(assert (= (and d!61531 res!125149) b!255717))

(assert (= (and b!255717 res!125150) b!255718))

(assert (= (and b!255718 res!125151) b!255719))

(declare-fun m!271215 () Bool)

(assert (=> d!61531 m!271215))

(assert (=> b!255717 m!270927))

(declare-fun m!271217 () Bool)

(assert (=> b!255718 m!271217))

(declare-fun m!271219 () Bool)

(assert (=> b!255719 m!271219))

(assert (=> start!24392 d!61531))

(declare-fun d!61533 () Bool)

(assert (=> d!61533 (= (array_inv!3897 (_keys!6871 thiss!1504)) (bvsge (size!6255 (_keys!6871 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255423 d!61533))

(declare-fun d!61535 () Bool)

(assert (=> d!61535 (= (array_inv!3898 (_values!4696 thiss!1504)) (bvsge (size!6254 (_values!4696 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255423 d!61535))

(declare-fun b!255726 () Bool)

(declare-fun e!165768 () Bool)

(assert (=> b!255726 (= e!165768 tp_is_empty!6567)))

(declare-fun condMapEmpty!11178 () Bool)

(declare-fun mapDefault!11178 () ValueCell!2940)

(assert (=> mapNonEmpty!11172 (= condMapEmpty!11178 (= mapRest!11172 ((as const (Array (_ BitVec 32) ValueCell!2940)) mapDefault!11178)))))

(declare-fun e!165767 () Bool)

(declare-fun mapRes!11178 () Bool)

(assert (=> mapNonEmpty!11172 (= tp!23409 (and e!165767 mapRes!11178))))

(declare-fun b!255727 () Bool)

(assert (=> b!255727 (= e!165767 tp_is_empty!6567)))

(declare-fun mapIsEmpty!11178 () Bool)

(assert (=> mapIsEmpty!11178 mapRes!11178))

(declare-fun mapNonEmpty!11178 () Bool)

(declare-fun tp!23418 () Bool)

(assert (=> mapNonEmpty!11178 (= mapRes!11178 (and tp!23418 e!165768))))

(declare-fun mapValue!11178 () ValueCell!2940)

(declare-fun mapKey!11178 () (_ BitVec 32))

(declare-fun mapRest!11178 () (Array (_ BitVec 32) ValueCell!2940))

(assert (=> mapNonEmpty!11178 (= mapRest!11172 (store mapRest!11178 mapKey!11178 mapValue!11178))))

(assert (= (and mapNonEmpty!11172 condMapEmpty!11178) mapIsEmpty!11178))

(assert (= (and mapNonEmpty!11172 (not condMapEmpty!11178)) mapNonEmpty!11178))

(assert (= (and mapNonEmpty!11178 ((_ is ValueCellFull!2940) mapValue!11178)) b!255726))

(assert (= (and mapNonEmpty!11172 ((_ is ValueCellFull!2940) mapDefault!11178)) b!255727))

(declare-fun m!271221 () Bool)

(assert (=> mapNonEmpty!11178 m!271221))

(declare-fun b_lambda!8181 () Bool)

(assert (= b_lambda!8177 (or (and b!255423 b_free!6705) b_lambda!8181)))

(declare-fun b_lambda!8183 () Bool)

(assert (= b_lambda!8179 (or (and b!255423 b_free!6705) b_lambda!8183)))

(check-sat (not b!255554) (not b!255585) (not b!255675) (not b!255702) (not b!255612) (not bm!24191) (not b!255719) (not bm!24186) (not b!255708) (not b!255521) (not d!61493) (not bm!24188) (not bm!24166) (not bm!24155) (not b!255674) (not b_lambda!8183) (not b!255578) (not b!255718) (not d!61523) (not d!61501) (not mapNonEmpty!11178) (not b!255705) (not b!255670) (not d!61521) (not bm!24184) (not b!255605) (not b_next!6705) (not b_lambda!8181) (not b!255673) (not bm!24189) (not bm!24193) (not b!255594) (not d!61505) (not b!255695) (not b!255539) (not d!61527) (not b!255709) (not b!255666) (not b!255710) (not b!255593) (not bm!24181) (not d!61529) (not b!255689) b_and!13779 (not b!255606) (not b!255544) (not bm!24156) (not b!255584) (not d!61503) (not d!61515) (not b!255608) (not b!255567) (not d!61519) (not d!61511) (not d!61531) (not b!255687) (not b!255568) (not bm!24163) (not bm!24159) (not d!61499) (not b!255691) (not b!255680) (not b!255717) (not b!255656) (not b!255555) (not b!255557) (not bm!24182) (not b!255701) (not b!255660) tp_is_empty!6567 (not bm!24162) (not b!255667))
(check-sat b_and!13779 (not b_next!6705))
