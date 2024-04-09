; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22140 () Bool)

(assert start!22140)

(declare-fun b!230479 () Bool)

(declare-fun b_free!6195 () Bool)

(declare-fun b_next!6195 () Bool)

(assert (=> b!230479 (= b_free!6195 (not b_next!6195))))

(declare-fun tp!21727 () Bool)

(declare-fun b_and!13111 () Bool)

(assert (=> b!230479 (= tp!21727 b_and!13111)))

(declare-fun res!113371 () Bool)

(declare-fun e!149582 () Bool)

(assert (=> start!22140 (=> (not res!113371) (not e!149582))))

(declare-datatypes ((V!7723 0))(
  ( (V!7724 (val!3073 Int)) )
))
(declare-datatypes ((ValueCell!2685 0))(
  ( (ValueCellFull!2685 (v!5089 V!7723)) (EmptyCell!2685) )
))
(declare-datatypes ((array!11356 0))(
  ( (array!11357 (arr!5397 (Array (_ BitVec 32) ValueCell!2685)) (size!5730 (_ BitVec 32))) )
))
(declare-datatypes ((array!11358 0))(
  ( (array!11359 (arr!5398 (Array (_ BitVec 32) (_ BitVec 64))) (size!5731 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3270 0))(
  ( (LongMapFixedSize!3271 (defaultEntry!4294 Int) (mask!10186 (_ BitVec 32)) (extraKeys!4031 (_ BitVec 32)) (zeroValue!4135 V!7723) (minValue!4135 V!7723) (_size!1684 (_ BitVec 32)) (_keys!6348 array!11358) (_values!4277 array!11356) (_vacant!1684 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3270)

(declare-fun valid!1294 (LongMapFixedSize!3270) Bool)

(assert (=> start!22140 (= res!113371 (valid!1294 thiss!1504))))

(assert (=> start!22140 e!149582))

(declare-fun e!149592 () Bool)

(assert (=> start!22140 e!149592))

(assert (=> start!22140 true))

(declare-fun tp_is_empty!6057 () Bool)

(assert (=> start!22140 tp_is_empty!6057))

(declare-fun b!230476 () Bool)

(declare-datatypes ((Unit!7056 0))(
  ( (Unit!7057) )
))
(declare-fun e!149586 () Unit!7056)

(declare-fun lt!116049 () Unit!7056)

(assert (=> b!230476 (= e!149586 lt!116049)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!306 (array!11358 array!11356 (_ BitVec 32) (_ BitVec 32) V!7723 V!7723 (_ BitVec 64) Int) Unit!7056)

(assert (=> b!230476 (= lt!116049 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!306 (_keys!6348 thiss!1504) (_values!4277 thiss!1504) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) key!932 (defaultEntry!4294 thiss!1504)))))

(declare-fun c!38249 () Bool)

(declare-datatypes ((SeekEntryResult!948 0))(
  ( (MissingZero!948 (index!5962 (_ BitVec 32))) (Found!948 (index!5963 (_ BitVec 32))) (Intermediate!948 (undefined!1760 Bool) (index!5964 (_ BitVec 32)) (x!23456 (_ BitVec 32))) (Undefined!948) (MissingVacant!948 (index!5965 (_ BitVec 32))) )
))
(declare-fun lt!116057 () SeekEntryResult!948)

(get-info :version)

(assert (=> b!230476 (= c!38249 ((_ is MissingZero!948) lt!116057))))

(declare-fun e!149580 () Bool)

(assert (=> b!230476 e!149580))

(declare-fun b!230477 () Bool)

(declare-fun res!113366 () Bool)

(assert (=> b!230477 (= res!113366 (= (select (arr!5398 (_keys!6348 thiss!1504)) (index!5965 lt!116057)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149587 () Bool)

(assert (=> b!230477 (=> (not res!113366) (not e!149587))))

(declare-fun mapNonEmpty!10255 () Bool)

(declare-fun mapRes!10255 () Bool)

(declare-fun tp!21726 () Bool)

(declare-fun e!149583 () Bool)

(assert (=> mapNonEmpty!10255 (= mapRes!10255 (and tp!21726 e!149583))))

(declare-fun mapKey!10255 () (_ BitVec 32))

(declare-fun mapValue!10255 () ValueCell!2685)

(declare-fun mapRest!10255 () (Array (_ BitVec 32) ValueCell!2685))

(assert (=> mapNonEmpty!10255 (= (arr!5397 (_values!4277 thiss!1504)) (store mapRest!10255 mapKey!10255 mapValue!10255))))

(declare-fun b!230478 () Bool)

(declare-fun e!149585 () Bool)

(assert (=> b!230478 (= e!149582 e!149585)))

(declare-fun res!113369 () Bool)

(assert (=> b!230478 (=> (not res!113369) (not e!149585))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230478 (= res!113369 (or (= lt!116057 (MissingZero!948 index!297)) (= lt!116057 (MissingVacant!948 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11358 (_ BitVec 32)) SeekEntryResult!948)

(assert (=> b!230478 (= lt!116057 (seekEntryOrOpen!0 key!932 (_keys!6348 thiss!1504) (mask!10186 thiss!1504)))))

(declare-fun mapIsEmpty!10255 () Bool)

(assert (=> mapIsEmpty!10255 mapRes!10255))

(declare-fun e!149593 () Bool)

(declare-fun array_inv!3551 (array!11358) Bool)

(declare-fun array_inv!3552 (array!11356) Bool)

(assert (=> b!230479 (= e!149592 (and tp!21727 tp_is_empty!6057 (array_inv!3551 (_keys!6348 thiss!1504)) (array_inv!3552 (_values!4277 thiss!1504)) e!149593))))

(declare-fun b!230480 () Bool)

(declare-fun e!149581 () Bool)

(assert (=> b!230480 (= e!149581 (not true))))

(declare-fun lt!116051 () array!11358)

(declare-fun arrayContainsKey!0 (array!11358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230480 (arrayContainsKey!0 lt!116051 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116058 () Unit!7056)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11358 (_ BitVec 64) (_ BitVec 32)) Unit!7056)

(assert (=> b!230480 (= lt!116058 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116051 key!932 index!297))))

(declare-datatypes ((tuple2!4530 0))(
  ( (tuple2!4531 (_1!2275 (_ BitVec 64)) (_2!2275 V!7723)) )
))
(declare-datatypes ((List!3477 0))(
  ( (Nil!3474) (Cons!3473 (h!4121 tuple2!4530) (t!8444 List!3477)) )
))
(declare-datatypes ((ListLongMap!3457 0))(
  ( (ListLongMap!3458 (toList!1744 List!3477)) )
))
(declare-fun lt!116059 () ListLongMap!3457)

(declare-fun v!346 () V!7723)

(declare-fun +!602 (ListLongMap!3457 tuple2!4530) ListLongMap!3457)

(declare-fun getCurrentListMap!1267 (array!11358 array!11356 (_ BitVec 32) (_ BitVec 32) V!7723 V!7723 (_ BitVec 32) Int) ListLongMap!3457)

(assert (=> b!230480 (= (+!602 lt!116059 (tuple2!4531 key!932 v!346)) (getCurrentListMap!1267 lt!116051 (array!11357 (store (arr!5397 (_values!4277 thiss!1504)) index!297 (ValueCellFull!2685 v!346)) (size!5730 (_values!4277 thiss!1504))) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4294 thiss!1504)))))

(declare-fun lt!116054 () Unit!7056)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!61 (array!11358 array!11356 (_ BitVec 32) (_ BitVec 32) V!7723 V!7723 (_ BitVec 32) (_ BitVec 64) V!7723 Int) Unit!7056)

(assert (=> b!230480 (= lt!116054 (lemmaAddValidKeyToArrayThenAddPairToListMap!61 (_keys!6348 thiss!1504) (_values!4277 thiss!1504) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) index!297 key!932 v!346 (defaultEntry!4294 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11358 (_ BitVec 32)) Bool)

(assert (=> b!230480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116051 (mask!10186 thiss!1504))))

(declare-fun lt!116053 () Unit!7056)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11358 (_ BitVec 32) (_ BitVec 32)) Unit!7056)

(assert (=> b!230480 (= lt!116053 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6348 thiss!1504) index!297 (mask!10186 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11358 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230480 (= (arrayCountValidKeys!0 lt!116051 #b00000000000000000000000000000000 (size!5731 (_keys!6348 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6348 thiss!1504) #b00000000000000000000000000000000 (size!5731 (_keys!6348 thiss!1504)))))))

(declare-fun lt!116052 () Unit!7056)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11358 (_ BitVec 32) (_ BitVec 64)) Unit!7056)

(assert (=> b!230480 (= lt!116052 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6348 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3478 0))(
  ( (Nil!3475) (Cons!3474 (h!4122 (_ BitVec 64)) (t!8445 List!3478)) )
))
(declare-fun arrayNoDuplicates!0 (array!11358 (_ BitVec 32) List!3478) Bool)

(assert (=> b!230480 (arrayNoDuplicates!0 lt!116051 #b00000000000000000000000000000000 Nil!3475)))

(assert (=> b!230480 (= lt!116051 (array!11359 (store (arr!5398 (_keys!6348 thiss!1504)) index!297 key!932) (size!5731 (_keys!6348 thiss!1504))))))

(declare-fun lt!116056 () Unit!7056)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11358 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3478) Unit!7056)

(assert (=> b!230480 (= lt!116056 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6348 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3475))))

(declare-fun lt!116061 () Unit!7056)

(declare-fun e!149589 () Unit!7056)

(assert (=> b!230480 (= lt!116061 e!149589)))

(declare-fun c!38247 () Bool)

(assert (=> b!230480 (= c!38247 (arrayContainsKey!0 (_keys!6348 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230481 () Bool)

(declare-fun res!113370 () Bool)

(declare-fun e!149590 () Bool)

(assert (=> b!230481 (=> (not res!113370) (not e!149590))))

(declare-fun call!21417 () Bool)

(assert (=> b!230481 (= res!113370 call!21417)))

(assert (=> b!230481 (= e!149580 e!149590)))

(declare-fun bm!21414 () Bool)

(declare-fun call!21418 () Bool)

(assert (=> bm!21414 (= call!21418 (arrayContainsKey!0 (_keys!6348 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230482 () Bool)

(declare-fun res!113368 () Bool)

(assert (=> b!230482 (=> (not res!113368) (not e!149590))))

(assert (=> b!230482 (= res!113368 (= (select (arr!5398 (_keys!6348 thiss!1504)) (index!5962 lt!116057)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230483 () Bool)

(declare-fun Unit!7058 () Unit!7056)

(assert (=> b!230483 (= e!149589 Unit!7058)))

(declare-fun b!230484 () Bool)

(declare-fun Unit!7059 () Unit!7056)

(assert (=> b!230484 (= e!149589 Unit!7059)))

(declare-fun lt!116055 () Unit!7056)

(declare-fun lemmaArrayContainsKeyThenInListMap!125 (array!11358 array!11356 (_ BitVec 32) (_ BitVec 32) V!7723 V!7723 (_ BitVec 64) (_ BitVec 32) Int) Unit!7056)

(assert (=> b!230484 (= lt!116055 (lemmaArrayContainsKeyThenInListMap!125 (_keys!6348 thiss!1504) (_values!4277 thiss!1504) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4294 thiss!1504)))))

(assert (=> b!230484 false))

(declare-fun b!230485 () Bool)

(declare-fun Unit!7060 () Unit!7056)

(assert (=> b!230485 (= e!149586 Unit!7060)))

(declare-fun lt!116060 () Unit!7056)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!292 (array!11358 array!11356 (_ BitVec 32) (_ BitVec 32) V!7723 V!7723 (_ BitVec 64) Int) Unit!7056)

(assert (=> b!230485 (= lt!116060 (lemmaInListMapThenSeekEntryOrOpenFindsIt!292 (_keys!6348 thiss!1504) (_values!4277 thiss!1504) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) key!932 (defaultEntry!4294 thiss!1504)))))

(assert (=> b!230485 false))

(declare-fun b!230486 () Bool)

(declare-fun e!149591 () Bool)

(assert (=> b!230486 (= e!149591 tp_is_empty!6057)))

(declare-fun b!230487 () Bool)

(assert (=> b!230487 (= e!149585 e!149581)))

(declare-fun res!113364 () Bool)

(assert (=> b!230487 (=> (not res!113364) (not e!149581))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!230487 (= res!113364 (inRange!0 index!297 (mask!10186 thiss!1504)))))

(declare-fun lt!116050 () Unit!7056)

(assert (=> b!230487 (= lt!116050 e!149586)))

(declare-fun c!38248 () Bool)

(declare-fun contains!1610 (ListLongMap!3457 (_ BitVec 64)) Bool)

(assert (=> b!230487 (= c!38248 (contains!1610 lt!116059 key!932))))

(assert (=> b!230487 (= lt!116059 (getCurrentListMap!1267 (_keys!6348 thiss!1504) (_values!4277 thiss!1504) (mask!10186 thiss!1504) (extraKeys!4031 thiss!1504) (zeroValue!4135 thiss!1504) (minValue!4135 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4294 thiss!1504)))))

(declare-fun b!230488 () Bool)

(assert (=> b!230488 (= e!149587 (not call!21418))))

(declare-fun b!230489 () Bool)

(declare-fun e!149584 () Bool)

(assert (=> b!230489 (= e!149584 e!149587)))

(declare-fun res!113365 () Bool)

(assert (=> b!230489 (= res!113365 call!21417)))

(assert (=> b!230489 (=> (not res!113365) (not e!149587))))

(declare-fun bm!21415 () Bool)

(assert (=> bm!21415 (= call!21417 (inRange!0 (ite c!38249 (index!5962 lt!116057) (index!5965 lt!116057)) (mask!10186 thiss!1504)))))

(declare-fun b!230490 () Bool)

(declare-fun c!38246 () Bool)

(assert (=> b!230490 (= c!38246 ((_ is MissingVacant!948) lt!116057))))

(assert (=> b!230490 (= e!149580 e!149584)))

(declare-fun b!230491 () Bool)

(assert (=> b!230491 (= e!149583 tp_is_empty!6057)))

(declare-fun b!230492 () Bool)

(assert (=> b!230492 (= e!149593 (and e!149591 mapRes!10255))))

(declare-fun condMapEmpty!10255 () Bool)

(declare-fun mapDefault!10255 () ValueCell!2685)

(assert (=> b!230492 (= condMapEmpty!10255 (= (arr!5397 (_values!4277 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2685)) mapDefault!10255)))))

(declare-fun b!230493 () Bool)

(declare-fun res!113367 () Bool)

(assert (=> b!230493 (=> (not res!113367) (not e!149582))))

(assert (=> b!230493 (= res!113367 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230494 () Bool)

(assert (=> b!230494 (= e!149584 ((_ is Undefined!948) lt!116057))))

(declare-fun b!230495 () Bool)

(assert (=> b!230495 (= e!149590 (not call!21418))))

(assert (= (and start!22140 res!113371) b!230493))

(assert (= (and b!230493 res!113367) b!230478))

(assert (= (and b!230478 res!113369) b!230487))

(assert (= (and b!230487 c!38248) b!230485))

(assert (= (and b!230487 (not c!38248)) b!230476))

(assert (= (and b!230476 c!38249) b!230481))

(assert (= (and b!230476 (not c!38249)) b!230490))

(assert (= (and b!230481 res!113370) b!230482))

(assert (= (and b!230482 res!113368) b!230495))

(assert (= (and b!230490 c!38246) b!230489))

(assert (= (and b!230490 (not c!38246)) b!230494))

(assert (= (and b!230489 res!113365) b!230477))

(assert (= (and b!230477 res!113366) b!230488))

(assert (= (or b!230481 b!230489) bm!21415))

(assert (= (or b!230495 b!230488) bm!21414))

(assert (= (and b!230487 res!113364) b!230480))

(assert (= (and b!230480 c!38247) b!230484))

(assert (= (and b!230480 (not c!38247)) b!230483))

(assert (= (and b!230492 condMapEmpty!10255) mapIsEmpty!10255))

(assert (= (and b!230492 (not condMapEmpty!10255)) mapNonEmpty!10255))

(assert (= (and mapNonEmpty!10255 ((_ is ValueCellFull!2685) mapValue!10255)) b!230491))

(assert (= (and b!230492 ((_ is ValueCellFull!2685) mapDefault!10255)) b!230486))

(assert (= b!230479 b!230492))

(assert (= start!22140 b!230479))

(declare-fun m!251867 () Bool)

(assert (=> mapNonEmpty!10255 m!251867))

(declare-fun m!251869 () Bool)

(assert (=> b!230485 m!251869))

(declare-fun m!251871 () Bool)

(assert (=> b!230480 m!251871))

(declare-fun m!251873 () Bool)

(assert (=> b!230480 m!251873))

(declare-fun m!251875 () Bool)

(assert (=> b!230480 m!251875))

(declare-fun m!251877 () Bool)

(assert (=> b!230480 m!251877))

(declare-fun m!251879 () Bool)

(assert (=> b!230480 m!251879))

(declare-fun m!251881 () Bool)

(assert (=> b!230480 m!251881))

(declare-fun m!251883 () Bool)

(assert (=> b!230480 m!251883))

(declare-fun m!251885 () Bool)

(assert (=> b!230480 m!251885))

(declare-fun m!251887 () Bool)

(assert (=> b!230480 m!251887))

(declare-fun m!251889 () Bool)

(assert (=> b!230480 m!251889))

(declare-fun m!251891 () Bool)

(assert (=> b!230480 m!251891))

(declare-fun m!251893 () Bool)

(assert (=> b!230480 m!251893))

(declare-fun m!251895 () Bool)

(assert (=> b!230480 m!251895))

(declare-fun m!251897 () Bool)

(assert (=> b!230480 m!251897))

(declare-fun m!251899 () Bool)

(assert (=> b!230480 m!251899))

(declare-fun m!251901 () Bool)

(assert (=> b!230484 m!251901))

(declare-fun m!251903 () Bool)

(assert (=> b!230482 m!251903))

(declare-fun m!251905 () Bool)

(assert (=> b!230477 m!251905))

(declare-fun m!251907 () Bool)

(assert (=> bm!21415 m!251907))

(declare-fun m!251909 () Bool)

(assert (=> b!230479 m!251909))

(declare-fun m!251911 () Bool)

(assert (=> b!230479 m!251911))

(declare-fun m!251913 () Bool)

(assert (=> b!230476 m!251913))

(declare-fun m!251915 () Bool)

(assert (=> b!230478 m!251915))

(declare-fun m!251917 () Bool)

(assert (=> b!230487 m!251917))

(declare-fun m!251919 () Bool)

(assert (=> b!230487 m!251919))

(declare-fun m!251921 () Bool)

(assert (=> b!230487 m!251921))

(assert (=> bm!21414 m!251871))

(declare-fun m!251923 () Bool)

(assert (=> start!22140 m!251923))

(check-sat b_and!13111 (not bm!21415) (not b!230478) (not b!230480) (not b_next!6195) (not start!22140) (not b!230476) (not b!230485) (not bm!21414) (not b!230479) (not b!230484) (not mapNonEmpty!10255) tp_is_empty!6057 (not b!230487))
(check-sat b_and!13111 (not b_next!6195))
