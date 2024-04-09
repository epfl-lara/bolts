; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22104 () Bool)

(assert start!22104)

(declare-fun b!229378 () Bool)

(declare-fun b_free!6159 () Bool)

(declare-fun b_next!6159 () Bool)

(assert (=> b!229378 (= b_free!6159 (not b_next!6159))))

(declare-fun tp!21618 () Bool)

(declare-fun b_and!13075 () Bool)

(assert (=> b!229378 (= tp!21618 b_and!13075)))

(declare-fun b!229357 () Bool)

(declare-fun e!148822 () Bool)

(declare-datatypes ((SeekEntryResult!931 0))(
  ( (MissingZero!931 (index!5894 (_ BitVec 32))) (Found!931 (index!5895 (_ BitVec 32))) (Intermediate!931 (undefined!1743 Bool) (index!5896 (_ BitVec 32)) (x!23391 (_ BitVec 32))) (Undefined!931) (MissingVacant!931 (index!5897 (_ BitVec 32))) )
))
(declare-fun lt!115412 () SeekEntryResult!931)

(get-info :version)

(assert (=> b!229357 (= e!148822 ((_ is Undefined!931) lt!115412))))

(declare-fun b!229358 () Bool)

(declare-fun e!148818 () Bool)

(assert (=> b!229358 (= e!148818 true)))

(declare-fun lt!115409 () Bool)

(declare-datatypes ((V!7675 0))(
  ( (V!7676 (val!3055 Int)) )
))
(declare-datatypes ((ValueCell!2667 0))(
  ( (ValueCellFull!2667 (v!5071 V!7675)) (EmptyCell!2667) )
))
(declare-datatypes ((array!11284 0))(
  ( (array!11285 (arr!5361 (Array (_ BitVec 32) ValueCell!2667)) (size!5694 (_ BitVec 32))) )
))
(declare-datatypes ((array!11286 0))(
  ( (array!11287 (arr!5362 (Array (_ BitVec 32) (_ BitVec 64))) (size!5695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3234 0))(
  ( (LongMapFixedSize!3235 (defaultEntry!4276 Int) (mask!10156 (_ BitVec 32)) (extraKeys!4013 (_ BitVec 32)) (zeroValue!4117 V!7675) (minValue!4117 V!7675) (_size!1666 (_ BitVec 32)) (_keys!6330 array!11286) (_values!4259 array!11284) (_vacant!1666 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3234)

(declare-datatypes ((List!3452 0))(
  ( (Nil!3449) (Cons!3448 (h!4096 (_ BitVec 64)) (t!8419 List!3452)) )
))
(declare-fun arrayNoDuplicates!0 (array!11286 (_ BitVec 32) List!3452) Bool)

(assert (=> b!229358 (= lt!115409 (arrayNoDuplicates!0 (_keys!6330 thiss!1504) #b00000000000000000000000000000000 Nil!3449))))

(declare-fun b!229359 () Bool)

(declare-fun res!112893 () Bool)

(declare-fun e!148819 () Bool)

(assert (=> b!229359 (=> (not res!112893) (not e!148819))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!229359 (= res!112893 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229360 () Bool)

(declare-fun res!112901 () Bool)

(declare-fun e!148813 () Bool)

(assert (=> b!229360 (=> (not res!112901) (not e!148813))))

(assert (=> b!229360 (= res!112901 (= (select (arr!5362 (_keys!6330 thiss!1504)) (index!5894 lt!115412)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21306 () Bool)

(declare-fun call!21309 () Bool)

(declare-fun c!38030 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21306 (= call!21309 (inRange!0 (ite c!38030 (index!5894 lt!115412) (index!5897 lt!115412)) (mask!10156 thiss!1504)))))

(declare-fun b!229361 () Bool)

(declare-fun c!38032 () Bool)

(assert (=> b!229361 (= c!38032 ((_ is MissingVacant!931) lt!115412))))

(declare-fun e!148811 () Bool)

(assert (=> b!229361 (= e!148811 e!148822)))

(declare-fun b!229362 () Bool)

(declare-fun res!112902 () Bool)

(assert (=> b!229362 (= res!112902 (= (select (arr!5362 (_keys!6330 thiss!1504)) (index!5897 lt!115412)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148816 () Bool)

(assert (=> b!229362 (=> (not res!112902) (not e!148816))))

(declare-fun res!112897 () Bool)

(assert (=> start!22104 (=> (not res!112897) (not e!148819))))

(declare-fun valid!1282 (LongMapFixedSize!3234) Bool)

(assert (=> start!22104 (= res!112897 (valid!1282 thiss!1504))))

(assert (=> start!22104 e!148819))

(declare-fun e!148824 () Bool)

(assert (=> start!22104 e!148824))

(assert (=> start!22104 true))

(declare-fun b!229363 () Bool)

(declare-fun e!148823 () Bool)

(declare-fun e!148817 () Bool)

(assert (=> b!229363 (= e!148823 e!148817)))

(declare-fun res!112899 () Bool)

(assert (=> b!229363 (=> (not res!112899) (not e!148817))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229363 (= res!112899 (inRange!0 index!297 (mask!10156 thiss!1504)))))

(declare-datatypes ((Unit!6994 0))(
  ( (Unit!6995) )
))
(declare-fun lt!115418 () Unit!6994)

(declare-fun e!148812 () Unit!6994)

(assert (=> b!229363 (= lt!115418 e!148812)))

(declare-fun c!38031 () Bool)

(declare-datatypes ((tuple2!4504 0))(
  ( (tuple2!4505 (_1!2262 (_ BitVec 64)) (_2!2262 V!7675)) )
))
(declare-datatypes ((List!3453 0))(
  ( (Nil!3450) (Cons!3449 (h!4097 tuple2!4504) (t!8420 List!3453)) )
))
(declare-datatypes ((ListLongMap!3431 0))(
  ( (ListLongMap!3432 (toList!1731 List!3453)) )
))
(declare-fun contains!1599 (ListLongMap!3431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1254 (array!11286 array!11284 (_ BitVec 32) (_ BitVec 32) V!7675 V!7675 (_ BitVec 32) Int) ListLongMap!3431)

(assert (=> b!229363 (= c!38031 (contains!1599 (getCurrentListMap!1254 (_keys!6330 thiss!1504) (_values!4259 thiss!1504) (mask!10156 thiss!1504) (extraKeys!4013 thiss!1504) (zeroValue!4117 thiss!1504) (minValue!4117 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4276 thiss!1504)) key!932))))

(declare-fun b!229364 () Bool)

(declare-fun Unit!6996 () Unit!6994)

(assert (=> b!229364 (= e!148812 Unit!6996)))

(declare-fun lt!115416 () Unit!6994)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!282 (array!11286 array!11284 (_ BitVec 32) (_ BitVec 32) V!7675 V!7675 (_ BitVec 64) Int) Unit!6994)

(assert (=> b!229364 (= lt!115416 (lemmaInListMapThenSeekEntryOrOpenFindsIt!282 (_keys!6330 thiss!1504) (_values!4259 thiss!1504) (mask!10156 thiss!1504) (extraKeys!4013 thiss!1504) (zeroValue!4117 thiss!1504) (minValue!4117 thiss!1504) key!932 (defaultEntry!4276 thiss!1504)))))

(assert (=> b!229364 false))

(declare-fun b!229365 () Bool)

(assert (=> b!229365 (= e!148817 (not e!148818))))

(declare-fun res!112895 () Bool)

(assert (=> b!229365 (=> res!112895 e!148818)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229365 (= res!112895 (not (validMask!0 (mask!10156 thiss!1504))))))

(declare-fun lt!115417 () array!11286)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11286 (_ BitVec 32)) Bool)

(assert (=> b!229365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115417 (mask!10156 thiss!1504))))

(declare-fun lt!115410 () Unit!6994)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11286 (_ BitVec 32) (_ BitVec 32)) Unit!6994)

(assert (=> b!229365 (= lt!115410 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6330 thiss!1504) index!297 (mask!10156 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11286 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229365 (= (arrayCountValidKeys!0 lt!115417 #b00000000000000000000000000000000 (size!5695 (_keys!6330 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6330 thiss!1504) #b00000000000000000000000000000000 (size!5695 (_keys!6330 thiss!1504)))))))

(declare-fun lt!115415 () Unit!6994)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11286 (_ BitVec 32) (_ BitVec 64)) Unit!6994)

(assert (=> b!229365 (= lt!115415 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6330 thiss!1504) index!297 key!932))))

(assert (=> b!229365 (arrayNoDuplicates!0 lt!115417 #b00000000000000000000000000000000 Nil!3449)))

(assert (=> b!229365 (= lt!115417 (array!11287 (store (arr!5362 (_keys!6330 thiss!1504)) index!297 key!932) (size!5695 (_keys!6330 thiss!1504))))))

(declare-fun lt!115411 () Unit!6994)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11286 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3452) Unit!6994)

(assert (=> b!229365 (= lt!115411 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6330 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3449))))

(declare-fun lt!115413 () Unit!6994)

(declare-fun e!148820 () Unit!6994)

(assert (=> b!229365 (= lt!115413 e!148820)))

(declare-fun c!38033 () Bool)

(declare-fun arrayContainsKey!0 (array!11286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!229365 (= c!38033 (arrayContainsKey!0 (_keys!6330 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229366 () Bool)

(declare-fun Unit!6997 () Unit!6994)

(assert (=> b!229366 (= e!148820 Unit!6997)))

(declare-fun lt!115414 () Unit!6994)

(declare-fun lemmaArrayContainsKeyThenInListMap!115 (array!11286 array!11284 (_ BitVec 32) (_ BitVec 32) V!7675 V!7675 (_ BitVec 64) (_ BitVec 32) Int) Unit!6994)

(assert (=> b!229366 (= lt!115414 (lemmaArrayContainsKeyThenInListMap!115 (_keys!6330 thiss!1504) (_values!4259 thiss!1504) (mask!10156 thiss!1504) (extraKeys!4013 thiss!1504) (zeroValue!4117 thiss!1504) (minValue!4117 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4276 thiss!1504)))))

(assert (=> b!229366 false))

(declare-fun b!229367 () Bool)

(declare-fun lt!115419 () Unit!6994)

(assert (=> b!229367 (= e!148812 lt!115419)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!296 (array!11286 array!11284 (_ BitVec 32) (_ BitVec 32) V!7675 V!7675 (_ BitVec 64) Int) Unit!6994)

(assert (=> b!229367 (= lt!115419 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!296 (_keys!6330 thiss!1504) (_values!4259 thiss!1504) (mask!10156 thiss!1504) (extraKeys!4013 thiss!1504) (zeroValue!4117 thiss!1504) (minValue!4117 thiss!1504) key!932 (defaultEntry!4276 thiss!1504)))))

(assert (=> b!229367 (= c!38030 ((_ is MissingZero!931) lt!115412))))

(assert (=> b!229367 e!148811))

(declare-fun b!229368 () Bool)

(declare-fun call!21310 () Bool)

(assert (=> b!229368 (= e!148813 (not call!21310))))

(declare-fun bm!21307 () Bool)

(assert (=> bm!21307 (= call!21310 (arrayContainsKey!0 (_keys!6330 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229369 () Bool)

(declare-fun e!148825 () Bool)

(declare-fun tp_is_empty!6021 () Bool)

(assert (=> b!229369 (= e!148825 tp_is_empty!6021)))

(declare-fun b!229370 () Bool)

(assert (=> b!229370 (= e!148822 e!148816)))

(declare-fun res!112900 () Bool)

(assert (=> b!229370 (= res!112900 call!21309)))

(assert (=> b!229370 (=> (not res!112900) (not e!148816))))

(declare-fun b!229371 () Bool)

(declare-fun e!148814 () Bool)

(assert (=> b!229371 (= e!148814 tp_is_empty!6021)))

(declare-fun b!229372 () Bool)

(declare-fun res!112898 () Bool)

(assert (=> b!229372 (=> res!112898 e!148818)))

(assert (=> b!229372 (= res!112898 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6330 thiss!1504) (mask!10156 thiss!1504))))))

(declare-fun b!229373 () Bool)

(assert (=> b!229373 (= e!148816 (not call!21310))))

(declare-fun mapIsEmpty!10201 () Bool)

(declare-fun mapRes!10201 () Bool)

(assert (=> mapIsEmpty!10201 mapRes!10201))

(declare-fun b!229374 () Bool)

(assert (=> b!229374 (= e!148819 e!148823)))

(declare-fun res!112903 () Bool)

(assert (=> b!229374 (=> (not res!112903) (not e!148823))))

(assert (=> b!229374 (= res!112903 (or (= lt!115412 (MissingZero!931 index!297)) (= lt!115412 (MissingVacant!931 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11286 (_ BitVec 32)) SeekEntryResult!931)

(assert (=> b!229374 (= lt!115412 (seekEntryOrOpen!0 key!932 (_keys!6330 thiss!1504) (mask!10156 thiss!1504)))))

(declare-fun b!229375 () Bool)

(declare-fun e!148815 () Bool)

(assert (=> b!229375 (= e!148815 (and e!148814 mapRes!10201))))

(declare-fun condMapEmpty!10201 () Bool)

(declare-fun mapDefault!10201 () ValueCell!2667)

(assert (=> b!229375 (= condMapEmpty!10201 (= (arr!5361 (_values!4259 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2667)) mapDefault!10201)))))

(declare-fun b!229376 () Bool)

(declare-fun res!112896 () Bool)

(assert (=> b!229376 (=> (not res!112896) (not e!148813))))

(assert (=> b!229376 (= res!112896 call!21309)))

(assert (=> b!229376 (= e!148811 e!148813)))

(declare-fun b!229377 () Bool)

(declare-fun res!112894 () Bool)

(assert (=> b!229377 (=> res!112894 e!148818)))

(assert (=> b!229377 (= res!112894 (or (not (= (size!5694 (_values!4259 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10156 thiss!1504)))) (not (= (size!5695 (_keys!6330 thiss!1504)) (size!5694 (_values!4259 thiss!1504)))) (bvslt (mask!10156 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4013 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4013 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun array_inv!3531 (array!11286) Bool)

(declare-fun array_inv!3532 (array!11284) Bool)

(assert (=> b!229378 (= e!148824 (and tp!21618 tp_is_empty!6021 (array_inv!3531 (_keys!6330 thiss!1504)) (array_inv!3532 (_values!4259 thiss!1504)) e!148815))))

(declare-fun mapNonEmpty!10201 () Bool)

(declare-fun tp!21619 () Bool)

(assert (=> mapNonEmpty!10201 (= mapRes!10201 (and tp!21619 e!148825))))

(declare-fun mapKey!10201 () (_ BitVec 32))

(declare-fun mapValue!10201 () ValueCell!2667)

(declare-fun mapRest!10201 () (Array (_ BitVec 32) ValueCell!2667))

(assert (=> mapNonEmpty!10201 (= (arr!5361 (_values!4259 thiss!1504)) (store mapRest!10201 mapKey!10201 mapValue!10201))))

(declare-fun b!229379 () Bool)

(declare-fun Unit!6998 () Unit!6994)

(assert (=> b!229379 (= e!148820 Unit!6998)))

(assert (= (and start!22104 res!112897) b!229359))

(assert (= (and b!229359 res!112893) b!229374))

(assert (= (and b!229374 res!112903) b!229363))

(assert (= (and b!229363 c!38031) b!229364))

(assert (= (and b!229363 (not c!38031)) b!229367))

(assert (= (and b!229367 c!38030) b!229376))

(assert (= (and b!229367 (not c!38030)) b!229361))

(assert (= (and b!229376 res!112896) b!229360))

(assert (= (and b!229360 res!112901) b!229368))

(assert (= (and b!229361 c!38032) b!229370))

(assert (= (and b!229361 (not c!38032)) b!229357))

(assert (= (and b!229370 res!112900) b!229362))

(assert (= (and b!229362 res!112902) b!229373))

(assert (= (or b!229376 b!229370) bm!21306))

(assert (= (or b!229368 b!229373) bm!21307))

(assert (= (and b!229363 res!112899) b!229365))

(assert (= (and b!229365 c!38033) b!229366))

(assert (= (and b!229365 (not c!38033)) b!229379))

(assert (= (and b!229365 (not res!112895)) b!229377))

(assert (= (and b!229377 (not res!112894)) b!229372))

(assert (= (and b!229372 (not res!112898)) b!229358))

(assert (= (and b!229375 condMapEmpty!10201) mapIsEmpty!10201))

(assert (= (and b!229375 (not condMapEmpty!10201)) mapNonEmpty!10201))

(assert (= (and mapNonEmpty!10201 ((_ is ValueCellFull!2667) mapValue!10201)) b!229369))

(assert (= (and b!229375 ((_ is ValueCellFull!2667) mapDefault!10201)) b!229371))

(assert (= b!229378 b!229375))

(assert (= start!22104 b!229378))

(declare-fun m!250901 () Bool)

(assert (=> b!229358 m!250901))

(declare-fun m!250903 () Bool)

(assert (=> b!229374 m!250903))

(declare-fun m!250905 () Bool)

(assert (=> b!229360 m!250905))

(declare-fun m!250907 () Bool)

(assert (=> mapNonEmpty!10201 m!250907))

(declare-fun m!250909 () Bool)

(assert (=> b!229362 m!250909))

(declare-fun m!250911 () Bool)

(assert (=> bm!21306 m!250911))

(declare-fun m!250913 () Bool)

(assert (=> b!229363 m!250913))

(declare-fun m!250915 () Bool)

(assert (=> b!229363 m!250915))

(assert (=> b!229363 m!250915))

(declare-fun m!250917 () Bool)

(assert (=> b!229363 m!250917))

(declare-fun m!250919 () Bool)

(assert (=> b!229365 m!250919))

(declare-fun m!250921 () Bool)

(assert (=> b!229365 m!250921))

(declare-fun m!250923 () Bool)

(assert (=> b!229365 m!250923))

(declare-fun m!250925 () Bool)

(assert (=> b!229365 m!250925))

(declare-fun m!250927 () Bool)

(assert (=> b!229365 m!250927))

(declare-fun m!250929 () Bool)

(assert (=> b!229365 m!250929))

(declare-fun m!250931 () Bool)

(assert (=> b!229365 m!250931))

(declare-fun m!250933 () Bool)

(assert (=> b!229365 m!250933))

(declare-fun m!250935 () Bool)

(assert (=> b!229365 m!250935))

(declare-fun m!250937 () Bool)

(assert (=> b!229365 m!250937))

(assert (=> bm!21307 m!250921))

(declare-fun m!250939 () Bool)

(assert (=> start!22104 m!250939))

(declare-fun m!250941 () Bool)

(assert (=> b!229364 m!250941))

(declare-fun m!250943 () Bool)

(assert (=> b!229367 m!250943))

(declare-fun m!250945 () Bool)

(assert (=> b!229366 m!250945))

(declare-fun m!250947 () Bool)

(assert (=> b!229378 m!250947))

(declare-fun m!250949 () Bool)

(assert (=> b!229378 m!250949))

(declare-fun m!250951 () Bool)

(assert (=> b!229372 m!250951))

(check-sat tp_is_empty!6021 (not b!229372) (not b!229378) (not start!22104) (not bm!21307) (not b!229363) b_and!13075 (not b_next!6159) (not b!229365) (not b!229374) (not b!229364) (not b!229366) (not mapNonEmpty!10201) (not bm!21306) (not b!229358) (not b!229367))
(check-sat b_and!13075 (not b_next!6159))
