; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24298 () Bool)

(assert start!24298)

(declare-fun b!254388 () Bool)

(declare-fun b_free!6687 () Bool)

(declare-fun b_next!6687 () Bool)

(assert (=> b!254388 (= b_free!6687 (not b_next!6687))))

(declare-fun tp!23348 () Bool)

(declare-fun b_and!13747 () Bool)

(assert (=> b!254388 (= tp!23348 b_and!13747)))

(declare-fun e!164910 () Bool)

(declare-fun tp_is_empty!6549 () Bool)

(declare-fun e!164905 () Bool)

(declare-datatypes ((V!8379 0))(
  ( (V!8380 (val!3319 Int)) )
))
(declare-datatypes ((ValueCell!2931 0))(
  ( (ValueCellFull!2931 (v!5389 V!8379)) (EmptyCell!2931) )
))
(declare-datatypes ((array!12428 0))(
  ( (array!12429 (arr!5889 (Array (_ BitVec 32) ValueCell!2931)) (size!6236 (_ BitVec 32))) )
))
(declare-datatypes ((array!12430 0))(
  ( (array!12431 (arr!5890 (Array (_ BitVec 32) (_ BitVec 64))) (size!6237 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3762 0))(
  ( (LongMapFixedSize!3763 (defaultEntry!4694 Int) (mask!10940 (_ BitVec 32)) (extraKeys!4431 (_ BitVec 32)) (zeroValue!4535 V!8379) (minValue!4535 V!8379) (_size!1930 (_ BitVec 32)) (_keys!6848 array!12430) (_values!4677 array!12428) (_vacant!1930 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3762)

(declare-fun array_inv!3885 (array!12430) Bool)

(declare-fun array_inv!3886 (array!12428) Bool)

(assert (=> b!254388 (= e!164905 (and tp!23348 tp_is_empty!6549 (array_inv!3885 (_keys!6848 thiss!1504)) (array_inv!3886 (_values!4677 thiss!1504)) e!164910))))

(declare-fun b!254389 () Bool)

(declare-datatypes ((Unit!7880 0))(
  ( (Unit!7881) )
))
(declare-fun e!164904 () Unit!7880)

(declare-fun Unit!7882 () Unit!7880)

(assert (=> b!254389 (= e!164904 Unit!7882)))

(declare-fun lt!127516 () Unit!7880)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!418 (array!12430 array!12428 (_ BitVec 32) (_ BitVec 32) V!8379 V!8379 (_ BitVec 64) Int) Unit!7880)

(assert (=> b!254389 (= lt!127516 (lemmaInListMapThenSeekEntryOrOpenFindsIt!418 (_keys!6848 thiss!1504) (_values!4677 thiss!1504) (mask!10940 thiss!1504) (extraKeys!4431 thiss!1504) (zeroValue!4535 thiss!1504) (minValue!4535 thiss!1504) key!932 (defaultEntry!4694 thiss!1504)))))

(assert (=> b!254389 false))

(declare-fun b!254390 () Bool)

(declare-fun e!164906 () Bool)

(assert (=> b!254390 (= e!164906 true)))

(declare-fun lt!127512 () Bool)

(declare-datatypes ((List!3788 0))(
  ( (Nil!3785) (Cons!3784 (h!4446 (_ BitVec 64)) (t!8843 List!3788)) )
))
(declare-fun arrayNoDuplicates!0 (array!12430 (_ BitVec 32) List!3788) Bool)

(assert (=> b!254390 (= lt!127512 (arrayNoDuplicates!0 (_keys!6848 thiss!1504) #b00000000000000000000000000000000 Nil!3785))))

(declare-fun res!124550 () Bool)

(declare-fun e!164900 () Bool)

(assert (=> start!24298 (=> (not res!124550) (not e!164900))))

(declare-fun valid!1463 (LongMapFixedSize!3762) Bool)

(assert (=> start!24298 (= res!124550 (valid!1463 thiss!1504))))

(assert (=> start!24298 e!164900))

(assert (=> start!24298 e!164905))

(assert (=> start!24298 true))

(declare-fun b!254391 () Bool)

(declare-fun e!164901 () Bool)

(declare-fun call!24005 () Bool)

(assert (=> b!254391 (= e!164901 (not call!24005))))

(declare-fun b!254392 () Bool)

(declare-fun res!124553 () Bool)

(assert (=> b!254392 (=> res!124553 e!164906)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12430 (_ BitVec 32)) Bool)

(assert (=> b!254392 (= res!124553 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6848 thiss!1504) (mask!10940 thiss!1504))))))

(declare-fun b!254393 () Bool)

(declare-fun res!124556 () Bool)

(assert (=> b!254393 (=> (not res!124556) (not e!164901))))

(declare-fun call!24004 () Bool)

(assert (=> b!254393 (= res!124556 call!24004)))

(declare-fun e!164909 () Bool)

(assert (=> b!254393 (= e!164909 e!164901)))

(declare-fun b!254394 () Bool)

(declare-fun res!124560 () Bool)

(assert (=> b!254394 (=> res!124560 e!164906)))

(assert (=> b!254394 (= res!124560 (or (not (= (size!6236 (_values!4677 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10940 thiss!1504)))) (not (= (size!6237 (_keys!6848 thiss!1504)) (size!6236 (_values!4677 thiss!1504)))) (bvslt (mask!10940 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4431 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4431 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!254395 () Bool)

(declare-fun e!164899 () Bool)

(assert (=> b!254395 (= e!164899 (not call!24005))))

(declare-fun b!254396 () Bool)

(declare-fun e!164907 () Unit!7880)

(declare-fun Unit!7883 () Unit!7880)

(assert (=> b!254396 (= e!164907 Unit!7883)))

(declare-fun mapIsEmpty!11139 () Bool)

(declare-fun mapRes!11139 () Bool)

(assert (=> mapIsEmpty!11139 mapRes!11139))

(declare-fun mapNonEmpty!11139 () Bool)

(declare-fun tp!23349 () Bool)

(declare-fun e!164911 () Bool)

(assert (=> mapNonEmpty!11139 (= mapRes!11139 (and tp!23349 e!164911))))

(declare-fun mapRest!11139 () (Array (_ BitVec 32) ValueCell!2931))

(declare-fun mapValue!11139 () ValueCell!2931)

(declare-fun mapKey!11139 () (_ BitVec 32))

(assert (=> mapNonEmpty!11139 (= (arr!5889 (_values!4677 thiss!1504)) (store mapRest!11139 mapKey!11139 mapValue!11139))))

(declare-fun c!42895 () Bool)

(declare-fun bm!24001 () Bool)

(declare-datatypes ((SeekEntryResult!1159 0))(
  ( (MissingZero!1159 (index!6806 (_ BitVec 32))) (Found!1159 (index!6807 (_ BitVec 32))) (Intermediate!1159 (undefined!1971 Bool) (index!6808 (_ BitVec 32)) (x!24875 (_ BitVec 32))) (Undefined!1159) (MissingVacant!1159 (index!6809 (_ BitVec 32))) )
))
(declare-fun lt!127517 () SeekEntryResult!1159)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24001 (= call!24004 (inRange!0 (ite c!42895 (index!6806 lt!127517) (index!6809 lt!127517)) (mask!10940 thiss!1504)))))

(declare-fun b!254397 () Bool)

(declare-fun Unit!7884 () Unit!7880)

(assert (=> b!254397 (= e!164907 Unit!7884)))

(declare-fun lt!127513 () Unit!7880)

(declare-fun lemmaArrayContainsKeyThenInListMap!223 (array!12430 array!12428 (_ BitVec 32) (_ BitVec 32) V!8379 V!8379 (_ BitVec 64) (_ BitVec 32) Int) Unit!7880)

(assert (=> b!254397 (= lt!127513 (lemmaArrayContainsKeyThenInListMap!223 (_keys!6848 thiss!1504) (_values!4677 thiss!1504) (mask!10940 thiss!1504) (extraKeys!4431 thiss!1504) (zeroValue!4535 thiss!1504) (minValue!4535 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4694 thiss!1504)))))

(assert (=> b!254397 false))

(declare-fun b!254398 () Bool)

(declare-fun lt!127514 () Unit!7880)

(assert (=> b!254398 (= e!164904 lt!127514)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!418 (array!12430 array!12428 (_ BitVec 32) (_ BitVec 32) V!8379 V!8379 (_ BitVec 64) Int) Unit!7880)

(assert (=> b!254398 (= lt!127514 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!418 (_keys!6848 thiss!1504) (_values!4677 thiss!1504) (mask!10940 thiss!1504) (extraKeys!4431 thiss!1504) (zeroValue!4535 thiss!1504) (minValue!4535 thiss!1504) key!932 (defaultEntry!4694 thiss!1504)))))

(get-info :version)

(assert (=> b!254398 (= c!42895 ((_ is MissingZero!1159) lt!127517))))

(assert (=> b!254398 e!164909))

(declare-fun b!254399 () Bool)

(declare-fun e!164913 () Bool)

(assert (=> b!254399 (= e!164910 (and e!164913 mapRes!11139))))

(declare-fun condMapEmpty!11139 () Bool)

(declare-fun mapDefault!11139 () ValueCell!2931)

(assert (=> b!254399 (= condMapEmpty!11139 (= (arr!5889 (_values!4677 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2931)) mapDefault!11139)))))

(declare-fun b!254400 () Bool)

(declare-fun res!124559 () Bool)

(assert (=> b!254400 (= res!124559 (= (select (arr!5890 (_keys!6848 thiss!1504)) (index!6809 lt!127517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254400 (=> (not res!124559) (not e!164899))))

(declare-fun b!254401 () Bool)

(declare-fun e!164903 () Bool)

(assert (=> b!254401 (= e!164900 e!164903)))

(declare-fun res!124555 () Bool)

(assert (=> b!254401 (=> (not res!124555) (not e!164903))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!254401 (= res!124555 (or (= lt!127517 (MissingZero!1159 index!297)) (= lt!127517 (MissingVacant!1159 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12430 (_ BitVec 32)) SeekEntryResult!1159)

(assert (=> b!254401 (= lt!127517 (seekEntryOrOpen!0 key!932 (_keys!6848 thiss!1504) (mask!10940 thiss!1504)))))

(declare-fun b!254402 () Bool)

(declare-fun e!164912 () Bool)

(assert (=> b!254402 (= e!164912 e!164899)))

(declare-fun res!124557 () Bool)

(assert (=> b!254402 (= res!124557 call!24004)))

(assert (=> b!254402 (=> (not res!124557) (not e!164899))))

(declare-fun b!254403 () Bool)

(declare-fun e!164902 () Bool)

(assert (=> b!254403 (= e!164903 e!164902)))

(declare-fun res!124552 () Bool)

(assert (=> b!254403 (=> (not res!124552) (not e!164902))))

(assert (=> b!254403 (= res!124552 (inRange!0 index!297 (mask!10940 thiss!1504)))))

(declare-fun lt!127520 () Unit!7880)

(assert (=> b!254403 (= lt!127520 e!164904)))

(declare-fun c!42894 () Bool)

(declare-datatypes ((tuple2!4882 0))(
  ( (tuple2!4883 (_1!2451 (_ BitVec 64)) (_2!2451 V!8379)) )
))
(declare-datatypes ((List!3789 0))(
  ( (Nil!3786) (Cons!3785 (h!4447 tuple2!4882) (t!8844 List!3789)) )
))
(declare-datatypes ((ListLongMap!3809 0))(
  ( (ListLongMap!3810 (toList!1920 List!3789)) )
))
(declare-fun contains!1844 (ListLongMap!3809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1443 (array!12430 array!12428 (_ BitVec 32) (_ BitVec 32) V!8379 V!8379 (_ BitVec 32) Int) ListLongMap!3809)

(assert (=> b!254403 (= c!42894 (contains!1844 (getCurrentListMap!1443 (_keys!6848 thiss!1504) (_values!4677 thiss!1504) (mask!10940 thiss!1504) (extraKeys!4431 thiss!1504) (zeroValue!4535 thiss!1504) (minValue!4535 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4694 thiss!1504)) key!932))))

(declare-fun b!254404 () Bool)

(declare-fun c!42893 () Bool)

(assert (=> b!254404 (= c!42893 ((_ is MissingVacant!1159) lt!127517))))

(assert (=> b!254404 (= e!164909 e!164912)))

(declare-fun b!254405 () Bool)

(declare-fun res!124551 () Bool)

(assert (=> b!254405 (=> (not res!124551) (not e!164900))))

(assert (=> b!254405 (= res!124551 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!24002 () Bool)

(declare-fun arrayContainsKey!0 (array!12430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24002 (= call!24005 (arrayContainsKey!0 (_keys!6848 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254406 () Bool)

(assert (=> b!254406 (= e!164902 (not e!164906))))

(declare-fun res!124558 () Bool)

(assert (=> b!254406 (=> res!124558 e!164906)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!254406 (= res!124558 (not (validMask!0 (mask!10940 thiss!1504))))))

(declare-fun lt!127511 () array!12430)

(assert (=> b!254406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127511 (mask!10940 thiss!1504))))

(declare-fun lt!127521 () Unit!7880)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12430 (_ BitVec 32) (_ BitVec 32)) Unit!7880)

(assert (=> b!254406 (= lt!127521 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6848 thiss!1504) index!297 (mask!10940 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12430 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254406 (= (arrayCountValidKeys!0 lt!127511 #b00000000000000000000000000000000 (size!6237 (_keys!6848 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6848 thiss!1504) #b00000000000000000000000000000000 (size!6237 (_keys!6848 thiss!1504)))))))

(declare-fun lt!127519 () Unit!7880)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12430 (_ BitVec 32) (_ BitVec 64)) Unit!7880)

(assert (=> b!254406 (= lt!127519 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6848 thiss!1504) index!297 key!932))))

(assert (=> b!254406 (arrayNoDuplicates!0 lt!127511 #b00000000000000000000000000000000 Nil!3785)))

(assert (=> b!254406 (= lt!127511 (array!12431 (store (arr!5890 (_keys!6848 thiss!1504)) index!297 key!932) (size!6237 (_keys!6848 thiss!1504))))))

(declare-fun lt!127515 () Unit!7880)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12430 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3788) Unit!7880)

(assert (=> b!254406 (= lt!127515 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6848 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3785))))

(declare-fun lt!127518 () Unit!7880)

(assert (=> b!254406 (= lt!127518 e!164907)))

(declare-fun c!42892 () Bool)

(assert (=> b!254406 (= c!42892 (arrayContainsKey!0 (_keys!6848 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254407 () Bool)

(assert (=> b!254407 (= e!164913 tp_is_empty!6549)))

(declare-fun b!254408 () Bool)

(assert (=> b!254408 (= e!164911 tp_is_empty!6549)))

(declare-fun b!254409 () Bool)

(declare-fun res!124554 () Bool)

(assert (=> b!254409 (=> (not res!124554) (not e!164901))))

(assert (=> b!254409 (= res!124554 (= (select (arr!5890 (_keys!6848 thiss!1504)) (index!6806 lt!127517)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254410 () Bool)

(assert (=> b!254410 (= e!164912 ((_ is Undefined!1159) lt!127517))))

(assert (= (and start!24298 res!124550) b!254405))

(assert (= (and b!254405 res!124551) b!254401))

(assert (= (and b!254401 res!124555) b!254403))

(assert (= (and b!254403 c!42894) b!254389))

(assert (= (and b!254403 (not c!42894)) b!254398))

(assert (= (and b!254398 c!42895) b!254393))

(assert (= (and b!254398 (not c!42895)) b!254404))

(assert (= (and b!254393 res!124556) b!254409))

(assert (= (and b!254409 res!124554) b!254391))

(assert (= (and b!254404 c!42893) b!254402))

(assert (= (and b!254404 (not c!42893)) b!254410))

(assert (= (and b!254402 res!124557) b!254400))

(assert (= (and b!254400 res!124559) b!254395))

(assert (= (or b!254393 b!254402) bm!24001))

(assert (= (or b!254391 b!254395) bm!24002))

(assert (= (and b!254403 res!124552) b!254406))

(assert (= (and b!254406 c!42892) b!254397))

(assert (= (and b!254406 (not c!42892)) b!254396))

(assert (= (and b!254406 (not res!124558)) b!254394))

(assert (= (and b!254394 (not res!124560)) b!254392))

(assert (= (and b!254392 (not res!124553)) b!254390))

(assert (= (and b!254399 condMapEmpty!11139) mapIsEmpty!11139))

(assert (= (and b!254399 (not condMapEmpty!11139)) mapNonEmpty!11139))

(assert (= (and mapNonEmpty!11139 ((_ is ValueCellFull!2931) mapValue!11139)) b!254408))

(assert (= (and b!254399 ((_ is ValueCellFull!2931) mapDefault!11139)) b!254407))

(assert (= b!254388 b!254399))

(assert (= start!24298 b!254388))

(declare-fun m!269979 () Bool)

(assert (=> b!254406 m!269979))

(declare-fun m!269981 () Bool)

(assert (=> b!254406 m!269981))

(declare-fun m!269983 () Bool)

(assert (=> b!254406 m!269983))

(declare-fun m!269985 () Bool)

(assert (=> b!254406 m!269985))

(declare-fun m!269987 () Bool)

(assert (=> b!254406 m!269987))

(declare-fun m!269989 () Bool)

(assert (=> b!254406 m!269989))

(declare-fun m!269991 () Bool)

(assert (=> b!254406 m!269991))

(declare-fun m!269993 () Bool)

(assert (=> b!254406 m!269993))

(declare-fun m!269995 () Bool)

(assert (=> b!254406 m!269995))

(declare-fun m!269997 () Bool)

(assert (=> b!254406 m!269997))

(declare-fun m!269999 () Bool)

(assert (=> b!254388 m!269999))

(declare-fun m!270001 () Bool)

(assert (=> b!254388 m!270001))

(declare-fun m!270003 () Bool)

(assert (=> b!254409 m!270003))

(declare-fun m!270005 () Bool)

(assert (=> b!254390 m!270005))

(declare-fun m!270007 () Bool)

(assert (=> b!254403 m!270007))

(declare-fun m!270009 () Bool)

(assert (=> b!254403 m!270009))

(assert (=> b!254403 m!270009))

(declare-fun m!270011 () Bool)

(assert (=> b!254403 m!270011))

(declare-fun m!270013 () Bool)

(assert (=> b!254397 m!270013))

(declare-fun m!270015 () Bool)

(assert (=> b!254389 m!270015))

(declare-fun m!270017 () Bool)

(assert (=> mapNonEmpty!11139 m!270017))

(declare-fun m!270019 () Bool)

(assert (=> bm!24001 m!270019))

(declare-fun m!270021 () Bool)

(assert (=> b!254392 m!270021))

(assert (=> bm!24002 m!269979))

(declare-fun m!270023 () Bool)

(assert (=> b!254401 m!270023))

(declare-fun m!270025 () Bool)

(assert (=> start!24298 m!270025))

(declare-fun m!270027 () Bool)

(assert (=> b!254400 m!270027))

(declare-fun m!270029 () Bool)

(assert (=> b!254398 m!270029))

(check-sat (not b_next!6687) (not b!254392) (not b!254401) tp_is_empty!6549 (not b!254406) (not b!254398) (not bm!24001) (not b!254388) (not b!254389) (not mapNonEmpty!11139) (not b!254403) (not b!254390) b_and!13747 (not b!254397) (not start!24298) (not bm!24002))
(check-sat b_and!13747 (not b_next!6687))
