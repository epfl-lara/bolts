; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22170 () Bool)

(assert start!22170)

(declare-fun b!231389 () Bool)

(declare-fun b_free!6225 () Bool)

(declare-fun b_next!6225 () Bool)

(assert (=> b!231389 (= b_free!6225 (not b_next!6225))))

(declare-fun tp!21816 () Bool)

(declare-fun b_and!13141 () Bool)

(assert (=> b!231389 (= tp!21816 b_and!13141)))

(declare-fun b!231376 () Bool)

(declare-fun e!150210 () Bool)

(declare-datatypes ((SeekEntryResult!961 0))(
  ( (MissingZero!961 (index!6014 (_ BitVec 32))) (Found!961 (index!6015 (_ BitVec 32))) (Intermediate!961 (undefined!1773 Bool) (index!6016 (_ BitVec 32)) (x!23509 (_ BitVec 32))) (Undefined!961) (MissingVacant!961 (index!6017 (_ BitVec 32))) )
))
(declare-fun lt!116684 () SeekEntryResult!961)

(get-info :version)

(assert (=> b!231376 (= e!150210 ((_ is Undefined!961) lt!116684))))

(declare-fun b!231377 () Bool)

(declare-fun e!150213 () Bool)

(declare-fun tp_is_empty!6087 () Bool)

(assert (=> b!231377 (= e!150213 tp_is_empty!6087)))

(declare-fun b!231378 () Bool)

(declare-fun res!113724 () Bool)

(declare-fun e!150211 () Bool)

(assert (=> b!231378 (=> (not res!113724) (not e!150211))))

(declare-fun call!21507 () Bool)

(assert (=> b!231378 (= res!113724 call!21507)))

(declare-fun e!150218 () Bool)

(assert (=> b!231378 (= e!150218 e!150211)))

(declare-fun b!231379 () Bool)

(declare-datatypes ((Unit!7116 0))(
  ( (Unit!7117) )
))
(declare-fun e!150219 () Unit!7116)

(declare-fun Unit!7118 () Unit!7116)

(assert (=> b!231379 (= e!150219 Unit!7118)))

(declare-fun lt!116677 () Unit!7116)

(declare-datatypes ((V!7763 0))(
  ( (V!7764 (val!3088 Int)) )
))
(declare-datatypes ((ValueCell!2700 0))(
  ( (ValueCellFull!2700 (v!5104 V!7763)) (EmptyCell!2700) )
))
(declare-datatypes ((array!11416 0))(
  ( (array!11417 (arr!5427 (Array (_ BitVec 32) ValueCell!2700)) (size!5760 (_ BitVec 32))) )
))
(declare-datatypes ((array!11418 0))(
  ( (array!11419 (arr!5428 (Array (_ BitVec 32) (_ BitVec 64))) (size!5761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3300 0))(
  ( (LongMapFixedSize!3301 (defaultEntry!4309 Int) (mask!10211 (_ BitVec 32)) (extraKeys!4046 (_ BitVec 32)) (zeroValue!4150 V!7763) (minValue!4150 V!7763) (_size!1699 (_ BitVec 32)) (_keys!6363 array!11418) (_values!4292 array!11416) (_vacant!1699 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3300)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!301 (array!11418 array!11416 (_ BitVec 32) (_ BitVec 32) V!7763 V!7763 (_ BitVec 64) Int) Unit!7116)

(assert (=> b!231379 (= lt!116677 (lemmaInListMapThenSeekEntryOrOpenFindsIt!301 (_keys!6363 thiss!1504) (_values!4292 thiss!1504) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) key!932 (defaultEntry!4309 thiss!1504)))))

(assert (=> b!231379 false))

(declare-fun b!231380 () Bool)

(declare-fun res!113730 () Bool)

(declare-fun e!150220 () Bool)

(assert (=> b!231380 (=> (not res!113730) (not e!150220))))

(assert (=> b!231380 (= res!113730 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231381 () Bool)

(declare-fun e!150216 () Bool)

(assert (=> b!231381 (= e!150220 e!150216)))

(declare-fun res!113728 () Bool)

(assert (=> b!231381 (=> (not res!113728) (not e!150216))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231381 (= res!113728 (or (= lt!116684 (MissingZero!961 index!297)) (= lt!116684 (MissingVacant!961 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11418 (_ BitVec 32)) SeekEntryResult!961)

(assert (=> b!231381 (= lt!116684 (seekEntryOrOpen!0 key!932 (_keys!6363 thiss!1504) (mask!10211 thiss!1504)))))

(declare-fun b!231382 () Bool)

(declare-fun e!150215 () Bool)

(assert (=> b!231382 (= e!150215 (not true))))

(declare-fun lt!116686 () array!11418)

(declare-fun arrayCountValidKeys!0 (array!11418 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231382 (= (arrayCountValidKeys!0 lt!116686 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116688 () Unit!7116)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11418 (_ BitVec 32)) Unit!7116)

(assert (=> b!231382 (= lt!116688 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116686 index!297))))

(declare-fun arrayContainsKey!0 (array!11418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231382 (arrayContainsKey!0 lt!116686 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116687 () Unit!7116)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11418 (_ BitVec 64) (_ BitVec 32)) Unit!7116)

(assert (=> b!231382 (= lt!116687 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116686 key!932 index!297))))

(declare-fun v!346 () V!7763)

(declare-datatypes ((tuple2!4554 0))(
  ( (tuple2!4555 (_1!2287 (_ BitVec 64)) (_2!2287 V!7763)) )
))
(declare-datatypes ((List!3497 0))(
  ( (Nil!3494) (Cons!3493 (h!4141 tuple2!4554) (t!8464 List!3497)) )
))
(declare-datatypes ((ListLongMap!3481 0))(
  ( (ListLongMap!3482 (toList!1756 List!3497)) )
))
(declare-fun lt!116681 () ListLongMap!3481)

(declare-fun +!610 (ListLongMap!3481 tuple2!4554) ListLongMap!3481)

(declare-fun getCurrentListMap!1279 (array!11418 array!11416 (_ BitVec 32) (_ BitVec 32) V!7763 V!7763 (_ BitVec 32) Int) ListLongMap!3481)

(assert (=> b!231382 (= (+!610 lt!116681 (tuple2!4555 key!932 v!346)) (getCurrentListMap!1279 lt!116686 (array!11417 (store (arr!5427 (_values!4292 thiss!1504)) index!297 (ValueCellFull!2700 v!346)) (size!5760 (_values!4292 thiss!1504))) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4309 thiss!1504)))))

(declare-fun lt!116682 () Unit!7116)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!69 (array!11418 array!11416 (_ BitVec 32) (_ BitVec 32) V!7763 V!7763 (_ BitVec 32) (_ BitVec 64) V!7763 Int) Unit!7116)

(assert (=> b!231382 (= lt!116682 (lemmaAddValidKeyToArrayThenAddPairToListMap!69 (_keys!6363 thiss!1504) (_values!4292 thiss!1504) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) index!297 key!932 v!346 (defaultEntry!4309 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11418 (_ BitVec 32)) Bool)

(assert (=> b!231382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116686 (mask!10211 thiss!1504))))

(declare-fun lt!116675 () Unit!7116)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11418 (_ BitVec 32) (_ BitVec 32)) Unit!7116)

(assert (=> b!231382 (= lt!116675 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6363 thiss!1504) index!297 (mask!10211 thiss!1504)))))

(assert (=> b!231382 (= (arrayCountValidKeys!0 lt!116686 #b00000000000000000000000000000000 (size!5761 (_keys!6363 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6363 thiss!1504) #b00000000000000000000000000000000 (size!5761 (_keys!6363 thiss!1504)))))))

(declare-fun lt!116676 () Unit!7116)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11418 (_ BitVec 32) (_ BitVec 64)) Unit!7116)

(assert (=> b!231382 (= lt!116676 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6363 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3498 0))(
  ( (Nil!3495) (Cons!3494 (h!4142 (_ BitVec 64)) (t!8465 List!3498)) )
))
(declare-fun arrayNoDuplicates!0 (array!11418 (_ BitVec 32) List!3498) Bool)

(assert (=> b!231382 (arrayNoDuplicates!0 lt!116686 #b00000000000000000000000000000000 Nil!3495)))

(assert (=> b!231382 (= lt!116686 (array!11419 (store (arr!5428 (_keys!6363 thiss!1504)) index!297 key!932) (size!5761 (_keys!6363 thiss!1504))))))

(declare-fun lt!116678 () Unit!7116)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11418 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3498) Unit!7116)

(assert (=> b!231382 (= lt!116678 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6363 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3495))))

(declare-fun lt!116685 () Unit!7116)

(declare-fun e!150214 () Unit!7116)

(assert (=> b!231382 (= lt!116685 e!150214)))

(declare-fun c!38426 () Bool)

(assert (=> b!231382 (= c!38426 (arrayContainsKey!0 (_keys!6363 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231383 () Bool)

(declare-fun call!21508 () Bool)

(assert (=> b!231383 (= e!150211 (not call!21508))))

(declare-fun b!231384 () Bool)

(declare-fun e!150217 () Bool)

(assert (=> b!231384 (= e!150217 (not call!21508))))

(declare-fun b!231385 () Bool)

(declare-fun e!150212 () Bool)

(declare-fun mapRes!10300 () Bool)

(assert (=> b!231385 (= e!150212 (and e!150213 mapRes!10300))))

(declare-fun condMapEmpty!10300 () Bool)

(declare-fun mapDefault!10300 () ValueCell!2700)

(assert (=> b!231385 (= condMapEmpty!10300 (= (arr!5427 (_values!4292 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2700)) mapDefault!10300)))))

(declare-fun bm!21504 () Bool)

(assert (=> bm!21504 (= call!21508 (arrayContainsKey!0 (_keys!6363 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231386 () Bool)

(declare-fun Unit!7119 () Unit!7116)

(assert (=> b!231386 (= e!150214 Unit!7119)))

(declare-fun lt!116679 () Unit!7116)

(declare-fun lemmaArrayContainsKeyThenInListMap!136 (array!11418 array!11416 (_ BitVec 32) (_ BitVec 32) V!7763 V!7763 (_ BitVec 64) (_ BitVec 32) Int) Unit!7116)

(assert (=> b!231386 (= lt!116679 (lemmaArrayContainsKeyThenInListMap!136 (_keys!6363 thiss!1504) (_values!4292 thiss!1504) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4309 thiss!1504)))))

(assert (=> b!231386 false))

(declare-fun mapNonEmpty!10300 () Bool)

(declare-fun tp!21817 () Bool)

(declare-fun e!150221 () Bool)

(assert (=> mapNonEmpty!10300 (= mapRes!10300 (and tp!21817 e!150221))))

(declare-fun mapRest!10300 () (Array (_ BitVec 32) ValueCell!2700))

(declare-fun mapValue!10300 () ValueCell!2700)

(declare-fun mapKey!10300 () (_ BitVec 32))

(assert (=> mapNonEmpty!10300 (= (arr!5427 (_values!4292 thiss!1504)) (store mapRest!10300 mapKey!10300 mapValue!10300))))

(declare-fun b!231387 () Bool)

(declare-fun Unit!7120 () Unit!7116)

(assert (=> b!231387 (= e!150214 Unit!7120)))

(declare-fun b!231388 () Bool)

(assert (=> b!231388 (= e!150221 tp_is_empty!6087)))

(declare-fun e!150222 () Bool)

(declare-fun array_inv!3571 (array!11418) Bool)

(declare-fun array_inv!3572 (array!11416) Bool)

(assert (=> b!231389 (= e!150222 (and tp!21816 tp_is_empty!6087 (array_inv!3571 (_keys!6363 thiss!1504)) (array_inv!3572 (_values!4292 thiss!1504)) e!150212))))

(declare-fun mapIsEmpty!10300 () Bool)

(assert (=> mapIsEmpty!10300 mapRes!10300))

(declare-fun b!231390 () Bool)

(declare-fun lt!116683 () Unit!7116)

(assert (=> b!231390 (= e!150219 lt!116683)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!316 (array!11418 array!11416 (_ BitVec 32) (_ BitVec 32) V!7763 V!7763 (_ BitVec 64) Int) Unit!7116)

(assert (=> b!231390 (= lt!116683 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!316 (_keys!6363 thiss!1504) (_values!4292 thiss!1504) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) key!932 (defaultEntry!4309 thiss!1504)))))

(declare-fun c!38428 () Bool)

(assert (=> b!231390 (= c!38428 ((_ is MissingZero!961) lt!116684))))

(assert (=> b!231390 e!150218))

(declare-fun b!231391 () Bool)

(declare-fun res!113729 () Bool)

(assert (=> b!231391 (=> (not res!113729) (not e!150211))))

(assert (=> b!231391 (= res!113729 (= (select (arr!5428 (_keys!6363 thiss!1504)) (index!6014 lt!116684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231392 () Bool)

(assert (=> b!231392 (= e!150210 e!150217)))

(declare-fun res!113727 () Bool)

(assert (=> b!231392 (= res!113727 call!21507)))

(assert (=> b!231392 (=> (not res!113727) (not e!150217))))

(declare-fun res!113731 () Bool)

(assert (=> start!22170 (=> (not res!113731) (not e!150220))))

(declare-fun valid!1302 (LongMapFixedSize!3300) Bool)

(assert (=> start!22170 (= res!113731 (valid!1302 thiss!1504))))

(assert (=> start!22170 e!150220))

(assert (=> start!22170 e!150222))

(assert (=> start!22170 true))

(assert (=> start!22170 tp_is_empty!6087))

(declare-fun b!231393 () Bool)

(declare-fun res!113726 () Bool)

(assert (=> b!231393 (= res!113726 (= (select (arr!5428 (_keys!6363 thiss!1504)) (index!6017 lt!116684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231393 (=> (not res!113726) (not e!150217))))

(declare-fun b!231394 () Bool)

(assert (=> b!231394 (= e!150216 e!150215)))

(declare-fun res!113725 () Bool)

(assert (=> b!231394 (=> (not res!113725) (not e!150215))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231394 (= res!113725 (inRange!0 index!297 (mask!10211 thiss!1504)))))

(declare-fun lt!116680 () Unit!7116)

(assert (=> b!231394 (= lt!116680 e!150219)))

(declare-fun c!38427 () Bool)

(declare-fun contains!1620 (ListLongMap!3481 (_ BitVec 64)) Bool)

(assert (=> b!231394 (= c!38427 (contains!1620 lt!116681 key!932))))

(assert (=> b!231394 (= lt!116681 (getCurrentListMap!1279 (_keys!6363 thiss!1504) (_values!4292 thiss!1504) (mask!10211 thiss!1504) (extraKeys!4046 thiss!1504) (zeroValue!4150 thiss!1504) (minValue!4150 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4309 thiss!1504)))))

(declare-fun b!231395 () Bool)

(declare-fun c!38429 () Bool)

(assert (=> b!231395 (= c!38429 ((_ is MissingVacant!961) lt!116684))))

(assert (=> b!231395 (= e!150218 e!150210)))

(declare-fun bm!21505 () Bool)

(assert (=> bm!21505 (= call!21507 (inRange!0 (ite c!38428 (index!6014 lt!116684) (index!6017 lt!116684)) (mask!10211 thiss!1504)))))

(assert (= (and start!22170 res!113731) b!231380))

(assert (= (and b!231380 res!113730) b!231381))

(assert (= (and b!231381 res!113728) b!231394))

(assert (= (and b!231394 c!38427) b!231379))

(assert (= (and b!231394 (not c!38427)) b!231390))

(assert (= (and b!231390 c!38428) b!231378))

(assert (= (and b!231390 (not c!38428)) b!231395))

(assert (= (and b!231378 res!113724) b!231391))

(assert (= (and b!231391 res!113729) b!231383))

(assert (= (and b!231395 c!38429) b!231392))

(assert (= (and b!231395 (not c!38429)) b!231376))

(assert (= (and b!231392 res!113727) b!231393))

(assert (= (and b!231393 res!113726) b!231384))

(assert (= (or b!231378 b!231392) bm!21505))

(assert (= (or b!231383 b!231384) bm!21504))

(assert (= (and b!231394 res!113725) b!231382))

(assert (= (and b!231382 c!38426) b!231386))

(assert (= (and b!231382 (not c!38426)) b!231387))

(assert (= (and b!231385 condMapEmpty!10300) mapIsEmpty!10300))

(assert (= (and b!231385 (not condMapEmpty!10300)) mapNonEmpty!10300))

(assert (= (and mapNonEmpty!10300 ((_ is ValueCellFull!2700) mapValue!10300)) b!231388))

(assert (= (and b!231385 ((_ is ValueCellFull!2700) mapDefault!10300)) b!231377))

(assert (= b!231389 b!231385))

(assert (= start!22170 b!231389))

(declare-fun m!252789 () Bool)

(assert (=> bm!21505 m!252789))

(declare-fun m!252791 () Bool)

(assert (=> mapNonEmpty!10300 m!252791))

(declare-fun m!252793 () Bool)

(assert (=> b!231391 m!252793))

(declare-fun m!252795 () Bool)

(assert (=> b!231382 m!252795))

(declare-fun m!252797 () Bool)

(assert (=> b!231382 m!252797))

(declare-fun m!252799 () Bool)

(assert (=> b!231382 m!252799))

(declare-fun m!252801 () Bool)

(assert (=> b!231382 m!252801))

(declare-fun m!252803 () Bool)

(assert (=> b!231382 m!252803))

(declare-fun m!252805 () Bool)

(assert (=> b!231382 m!252805))

(declare-fun m!252807 () Bool)

(assert (=> b!231382 m!252807))

(declare-fun m!252809 () Bool)

(assert (=> b!231382 m!252809))

(declare-fun m!252811 () Bool)

(assert (=> b!231382 m!252811))

(declare-fun m!252813 () Bool)

(assert (=> b!231382 m!252813))

(declare-fun m!252815 () Bool)

(assert (=> b!231382 m!252815))

(declare-fun m!252817 () Bool)

(assert (=> b!231382 m!252817))

(declare-fun m!252819 () Bool)

(assert (=> b!231382 m!252819))

(declare-fun m!252821 () Bool)

(assert (=> b!231382 m!252821))

(declare-fun m!252823 () Bool)

(assert (=> b!231382 m!252823))

(declare-fun m!252825 () Bool)

(assert (=> b!231382 m!252825))

(declare-fun m!252827 () Bool)

(assert (=> b!231382 m!252827))

(declare-fun m!252829 () Bool)

(assert (=> b!231381 m!252829))

(assert (=> bm!21504 m!252795))

(declare-fun m!252831 () Bool)

(assert (=> b!231393 m!252831))

(declare-fun m!252833 () Bool)

(assert (=> b!231394 m!252833))

(declare-fun m!252835 () Bool)

(assert (=> b!231394 m!252835))

(declare-fun m!252837 () Bool)

(assert (=> b!231394 m!252837))

(declare-fun m!252839 () Bool)

(assert (=> b!231386 m!252839))

(declare-fun m!252841 () Bool)

(assert (=> b!231390 m!252841))

(declare-fun m!252843 () Bool)

(assert (=> b!231389 m!252843))

(declare-fun m!252845 () Bool)

(assert (=> b!231389 m!252845))

(declare-fun m!252847 () Bool)

(assert (=> b!231379 m!252847))

(declare-fun m!252849 () Bool)

(assert (=> start!22170 m!252849))

(check-sat (not b!231394) (not mapNonEmpty!10300) (not bm!21504) (not b!231381) (not b!231379) b_and!13141 (not b!231389) (not b!231390) (not start!22170) (not b!231386) (not bm!21505) (not b_next!6225) tp_is_empty!6087 (not b!231382))
(check-sat b_and!13141 (not b_next!6225))
