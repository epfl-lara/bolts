; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22974 () Bool)

(assert start!22974)

(declare-fun b!240367 () Bool)

(declare-fun b_free!6465 () Bool)

(declare-fun b_next!6465 () Bool)

(assert (=> b!240367 (= b_free!6465 (not b_next!6465))))

(declare-fun tp!22598 () Bool)

(declare-fun b_and!13449 () Bool)

(assert (=> b!240367 (= tp!22598 b_and!13449)))

(declare-fun b!240350 () Bool)

(declare-fun e!156014 () Bool)

(declare-fun call!22354 () Bool)

(assert (=> b!240350 (= e!156014 (not call!22354))))

(declare-fun b!240351 () Bool)

(declare-fun res!117858 () Bool)

(declare-fun e!156025 () Bool)

(assert (=> b!240351 (=> (not res!117858) (not e!156025))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!240351 (= res!117858 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!22351 () Bool)

(declare-datatypes ((V!8083 0))(
  ( (V!8084 (val!3208 Int)) )
))
(declare-datatypes ((ValueCell!2820 0))(
  ( (ValueCellFull!2820 (v!5242 V!8083)) (EmptyCell!2820) )
))
(declare-datatypes ((array!11932 0))(
  ( (array!11933 (arr!5667 (Array (_ BitVec 32) ValueCell!2820)) (size!6008 (_ BitVec 32))) )
))
(declare-datatypes ((array!11934 0))(
  ( (array!11935 (arr!5668 (Array (_ BitVec 32) (_ BitVec 64))) (size!6009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3540 0))(
  ( (LongMapFixedSize!3541 (defaultEntry!4455 Int) (mask!10511 (_ BitVec 32)) (extraKeys!4192 (_ BitVec 32)) (zeroValue!4296 V!8083) (minValue!4296 V!8083) (_size!1819 (_ BitVec 32)) (_keys!6557 array!11934) (_values!4438 array!11932) (_vacant!1819 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3540)

(declare-fun arrayContainsKey!0 (array!11934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22351 (= call!22354 (arrayContainsKey!0 (_keys!6557 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240352 () Bool)

(declare-fun e!156017 () Bool)

(assert (=> b!240352 (= e!156017 (not call!22354))))

(declare-fun b!240353 () Bool)

(declare-fun res!117865 () Bool)

(declare-fun e!156016 () Bool)

(assert (=> b!240353 (=> (not res!117865) (not e!156016))))

(assert (=> b!240353 (= res!117865 (and (= (size!6008 (_values!4438 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10511 thiss!1504))) (= (size!6009 (_keys!6557 thiss!1504)) (size!6008 (_values!4438 thiss!1504))) (bvsge (mask!10511 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4192 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4192 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!240354 () Bool)

(declare-fun res!117859 () Bool)

(declare-datatypes ((SeekEntryResult!1055 0))(
  ( (MissingZero!1055 (index!6390 (_ BitVec 32))) (Found!1055 (index!6391 (_ BitVec 32))) (Intermediate!1055 (undefined!1867 Bool) (index!6392 (_ BitVec 32)) (x!24167 (_ BitVec 32))) (Undefined!1055) (MissingVacant!1055 (index!6393 (_ BitVec 32))) )
))
(declare-fun lt!120989 () SeekEntryResult!1055)

(assert (=> b!240354 (= res!117859 (= (select (arr!5668 (_keys!6557 thiss!1504)) (index!6393 lt!120989)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!240354 (=> (not res!117859) (not e!156017))))

(declare-fun b!240355 () Bool)

(declare-datatypes ((Unit!7391 0))(
  ( (Unit!7392) )
))
(declare-fun e!156024 () Unit!7391)

(declare-fun lt!120988 () Unit!7391)

(assert (=> b!240355 (= e!156024 lt!120988)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!349 (array!11934 array!11932 (_ BitVec 32) (_ BitVec 32) V!8083 V!8083 (_ BitVec 64) Int) Unit!7391)

(assert (=> b!240355 (= lt!120988 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!349 (_keys!6557 thiss!1504) (_values!4438 thiss!1504) (mask!10511 thiss!1504) (extraKeys!4192 thiss!1504) (zeroValue!4296 thiss!1504) (minValue!4296 thiss!1504) key!932 (defaultEntry!4455 thiss!1504)))))

(declare-fun c!40026 () Bool)

(get-info :version)

(assert (=> b!240355 (= c!40026 ((_ is MissingZero!1055) lt!120989))))

(declare-fun e!156022 () Bool)

(assert (=> b!240355 e!156022))

(declare-fun b!240356 () Bool)

(declare-fun res!117869 () Bool)

(assert (=> b!240356 (=> (not res!117869) (not e!156016))))

(assert (=> b!240356 (= res!117869 (arrayContainsKey!0 (_keys!6557 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240357 () Bool)

(declare-fun res!117856 () Bool)

(assert (=> b!240357 (=> (not res!117856) (not e!156016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!240357 (= res!117856 (validKeyInArray!0 key!932))))

(declare-fun b!240358 () Bool)

(assert (=> b!240358 (= e!156016 (bvsge #b00000000000000000000000000000000 (size!6009 (_keys!6557 thiss!1504))))))

(declare-fun b!240359 () Bool)

(declare-fun e!156020 () Bool)

(assert (=> b!240359 (= e!156020 e!156017)))

(declare-fun res!117866 () Bool)

(declare-fun call!22353 () Bool)

(assert (=> b!240359 (= res!117866 call!22353)))

(assert (=> b!240359 (=> (not res!117866) (not e!156017))))

(declare-fun b!240360 () Bool)

(declare-fun c!40027 () Bool)

(assert (=> b!240360 (= c!40027 ((_ is MissingVacant!1055) lt!120989))))

(assert (=> b!240360 (= e!156022 e!156020)))

(declare-fun mapIsEmpty!10722 () Bool)

(declare-fun mapRes!10722 () Bool)

(assert (=> mapIsEmpty!10722 mapRes!10722))

(declare-fun b!240361 () Bool)

(assert (=> b!240361 (= e!156020 ((_ is Undefined!1055) lt!120989))))

(declare-fun b!240362 () Bool)

(declare-fun e!156015 () Bool)

(assert (=> b!240362 (= e!156015 e!156016)))

(declare-fun res!117864 () Bool)

(assert (=> b!240362 (=> (not res!117864) (not e!156016))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240362 (= res!117864 (inRange!0 index!297 (mask!10511 thiss!1504)))))

(declare-fun lt!120990 () Unit!7391)

(assert (=> b!240362 (= lt!120990 e!156024)))

(declare-fun c!40025 () Bool)

(declare-datatypes ((tuple2!4724 0))(
  ( (tuple2!4725 (_1!2372 (_ BitVec 64)) (_2!2372 V!8083)) )
))
(declare-datatypes ((List!3631 0))(
  ( (Nil!3628) (Cons!3627 (h!4283 tuple2!4724) (t!8634 List!3631)) )
))
(declare-datatypes ((ListLongMap!3651 0))(
  ( (ListLongMap!3652 (toList!1841 List!3631)) )
))
(declare-fun contains!1723 (ListLongMap!3651 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1364 (array!11934 array!11932 (_ BitVec 32) (_ BitVec 32) V!8083 V!8083 (_ BitVec 32) Int) ListLongMap!3651)

(assert (=> b!240362 (= c!40025 (contains!1723 (getCurrentListMap!1364 (_keys!6557 thiss!1504) (_values!4438 thiss!1504) (mask!10511 thiss!1504) (extraKeys!4192 thiss!1504) (zeroValue!4296 thiss!1504) (minValue!4296 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4455 thiss!1504)) key!932))))

(declare-fun b!240363 () Bool)

(declare-fun res!117868 () Bool)

(assert (=> b!240363 (=> (not res!117868) (not e!156014))))

(assert (=> b!240363 (= res!117868 call!22353)))

(assert (=> b!240363 (= e!156022 e!156014)))

(declare-fun b!240364 () Bool)

(assert (=> b!240364 (= e!156025 e!156015)))

(declare-fun res!117862 () Bool)

(assert (=> b!240364 (=> (not res!117862) (not e!156015))))

(assert (=> b!240364 (= res!117862 (or (= lt!120989 (MissingZero!1055 index!297)) (= lt!120989 (MissingVacant!1055 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11934 (_ BitVec 32)) SeekEntryResult!1055)

(assert (=> b!240364 (= lt!120989 (seekEntryOrOpen!0 key!932 (_keys!6557 thiss!1504) (mask!10511 thiss!1504)))))

(declare-fun b!240365 () Bool)

(declare-fun res!117867 () Bool)

(assert (=> b!240365 (=> (not res!117867) (not e!156016))))

(declare-datatypes ((List!3632 0))(
  ( (Nil!3629) (Cons!3628 (h!4284 (_ BitVec 64)) (t!8635 List!3632)) )
))
(declare-fun arrayNoDuplicates!0 (array!11934 (_ BitVec 32) List!3632) Bool)

(assert (=> b!240365 (= res!117867 (arrayNoDuplicates!0 (_keys!6557 thiss!1504) #b00000000000000000000000000000000 Nil!3629))))

(declare-fun bm!22350 () Bool)

(assert (=> bm!22350 (= call!22353 (inRange!0 (ite c!40026 (index!6390 lt!120989) (index!6393 lt!120989)) (mask!10511 thiss!1504)))))

(declare-fun res!117860 () Bool)

(assert (=> start!22974 (=> (not res!117860) (not e!156025))))

(declare-fun valid!1385 (LongMapFixedSize!3540) Bool)

(assert (=> start!22974 (= res!117860 (valid!1385 thiss!1504))))

(assert (=> start!22974 e!156025))

(declare-fun e!156019 () Bool)

(assert (=> start!22974 e!156019))

(assert (=> start!22974 true))

(declare-fun b!240366 () Bool)

(declare-fun e!156026 () Bool)

(declare-fun tp_is_empty!6327 () Bool)

(assert (=> b!240366 (= e!156026 tp_is_empty!6327)))

(declare-fun mapNonEmpty!10722 () Bool)

(declare-fun tp!22599 () Bool)

(declare-fun e!156023 () Bool)

(assert (=> mapNonEmpty!10722 (= mapRes!10722 (and tp!22599 e!156023))))

(declare-fun mapKey!10722 () (_ BitVec 32))

(declare-fun mapRest!10722 () (Array (_ BitVec 32) ValueCell!2820))

(declare-fun mapValue!10722 () ValueCell!2820)

(assert (=> mapNonEmpty!10722 (= (arr!5667 (_values!4438 thiss!1504)) (store mapRest!10722 mapKey!10722 mapValue!10722))))

(declare-fun e!156021 () Bool)

(declare-fun array_inv!3741 (array!11934) Bool)

(declare-fun array_inv!3742 (array!11932) Bool)

(assert (=> b!240367 (= e!156019 (and tp!22598 tp_is_empty!6327 (array_inv!3741 (_keys!6557 thiss!1504)) (array_inv!3742 (_values!4438 thiss!1504)) e!156021))))

(declare-fun b!240368 () Bool)

(declare-fun res!117857 () Bool)

(assert (=> b!240368 (=> (not res!117857) (not e!156016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!240368 (= res!117857 (validMask!0 (mask!10511 thiss!1504)))))

(declare-fun b!240369 () Bool)

(declare-fun res!117863 () Bool)

(assert (=> b!240369 (=> (not res!117863) (not e!156014))))

(assert (=> b!240369 (= res!117863 (= (select (arr!5668 (_keys!6557 thiss!1504)) (index!6390 lt!120989)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240370 () Bool)

(assert (=> b!240370 (= e!156021 (and e!156026 mapRes!10722))))

(declare-fun condMapEmpty!10722 () Bool)

(declare-fun mapDefault!10722 () ValueCell!2820)

(assert (=> b!240370 (= condMapEmpty!10722 (= (arr!5667 (_values!4438 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2820)) mapDefault!10722)))))

(declare-fun b!240371 () Bool)

(declare-fun res!117861 () Bool)

(assert (=> b!240371 (=> (not res!117861) (not e!156016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11934 (_ BitVec 32)) Bool)

(assert (=> b!240371 (= res!117861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6557 thiss!1504) (mask!10511 thiss!1504)))))

(declare-fun b!240372 () Bool)

(assert (=> b!240372 (= e!156023 tp_is_empty!6327)))

(declare-fun b!240373 () Bool)

(declare-fun Unit!7393 () Unit!7391)

(assert (=> b!240373 (= e!156024 Unit!7393)))

(declare-fun lt!120991 () Unit!7391)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!341 (array!11934 array!11932 (_ BitVec 32) (_ BitVec 32) V!8083 V!8083 (_ BitVec 64) Int) Unit!7391)

(assert (=> b!240373 (= lt!120991 (lemmaInListMapThenSeekEntryOrOpenFindsIt!341 (_keys!6557 thiss!1504) (_values!4438 thiss!1504) (mask!10511 thiss!1504) (extraKeys!4192 thiss!1504) (zeroValue!4296 thiss!1504) (minValue!4296 thiss!1504) key!932 (defaultEntry!4455 thiss!1504)))))

(assert (=> b!240373 false))

(assert (= (and start!22974 res!117860) b!240351))

(assert (= (and b!240351 res!117858) b!240364))

(assert (= (and b!240364 res!117862) b!240362))

(assert (= (and b!240362 c!40025) b!240373))

(assert (= (and b!240362 (not c!40025)) b!240355))

(assert (= (and b!240355 c!40026) b!240363))

(assert (= (and b!240355 (not c!40026)) b!240360))

(assert (= (and b!240363 res!117868) b!240369))

(assert (= (and b!240369 res!117863) b!240350))

(assert (= (and b!240360 c!40027) b!240359))

(assert (= (and b!240360 (not c!40027)) b!240361))

(assert (= (and b!240359 res!117866) b!240354))

(assert (= (and b!240354 res!117859) b!240352))

(assert (= (or b!240363 b!240359) bm!22350))

(assert (= (or b!240350 b!240352) bm!22351))

(assert (= (and b!240362 res!117864) b!240356))

(assert (= (and b!240356 res!117869) b!240368))

(assert (= (and b!240368 res!117857) b!240353))

(assert (= (and b!240353 res!117865) b!240371))

(assert (= (and b!240371 res!117861) b!240365))

(assert (= (and b!240365 res!117867) b!240357))

(assert (= (and b!240357 res!117856) b!240358))

(assert (= (and b!240370 condMapEmpty!10722) mapIsEmpty!10722))

(assert (= (and b!240370 (not condMapEmpty!10722)) mapNonEmpty!10722))

(assert (= (and mapNonEmpty!10722 ((_ is ValueCellFull!2820) mapValue!10722)) b!240372))

(assert (= (and b!240370 ((_ is ValueCellFull!2820) mapDefault!10722)) b!240366))

(assert (= b!240367 b!240370))

(assert (= start!22974 b!240367))

(declare-fun m!259969 () Bool)

(assert (=> b!240354 m!259969))

(declare-fun m!259971 () Bool)

(assert (=> b!240367 m!259971))

(declare-fun m!259973 () Bool)

(assert (=> b!240367 m!259973))

(declare-fun m!259975 () Bool)

(assert (=> b!240364 m!259975))

(declare-fun m!259977 () Bool)

(assert (=> b!240357 m!259977))

(declare-fun m!259979 () Bool)

(assert (=> mapNonEmpty!10722 m!259979))

(declare-fun m!259981 () Bool)

(assert (=> b!240365 m!259981))

(declare-fun m!259983 () Bool)

(assert (=> bm!22350 m!259983))

(declare-fun m!259985 () Bool)

(assert (=> start!22974 m!259985))

(declare-fun m!259987 () Bool)

(assert (=> bm!22351 m!259987))

(declare-fun m!259989 () Bool)

(assert (=> b!240373 m!259989))

(declare-fun m!259991 () Bool)

(assert (=> b!240362 m!259991))

(declare-fun m!259993 () Bool)

(assert (=> b!240362 m!259993))

(assert (=> b!240362 m!259993))

(declare-fun m!259995 () Bool)

(assert (=> b!240362 m!259995))

(declare-fun m!259997 () Bool)

(assert (=> b!240368 m!259997))

(declare-fun m!259999 () Bool)

(assert (=> b!240371 m!259999))

(declare-fun m!260001 () Bool)

(assert (=> b!240369 m!260001))

(assert (=> b!240356 m!259987))

(declare-fun m!260003 () Bool)

(assert (=> b!240355 m!260003))

(check-sat (not b!240371) (not bm!22351) b_and!13449 (not mapNonEmpty!10722) (not b_next!6465) (not b!240355) (not b!240357) (not b!240364) (not b!240365) (not bm!22350) (not start!22974) tp_is_empty!6327 (not b!240356) (not b!240373) (not b!240362) (not b!240367) (not b!240368))
(check-sat b_and!13449 (not b_next!6465))
