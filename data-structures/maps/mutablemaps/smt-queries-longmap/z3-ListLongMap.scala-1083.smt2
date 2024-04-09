; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22194 () Bool)

(assert start!22194)

(declare-fun b!232109 () Bool)

(declare-fun b_free!6249 () Bool)

(declare-fun b_next!6249 () Bool)

(assert (=> b!232109 (= b_free!6249 (not b_next!6249))))

(declare-fun tp!21888 () Bool)

(declare-fun b_and!13165 () Bool)

(assert (=> b!232109 (= tp!21888 b_and!13165)))

(declare-fun b!232096 () Bool)

(declare-datatypes ((Unit!7159 0))(
  ( (Unit!7160) )
))
(declare-fun e!150717 () Unit!7159)

(declare-fun Unit!7161 () Unit!7159)

(assert (=> b!232096 (= e!150717 Unit!7161)))

(declare-fun lt!117191 () Unit!7159)

(declare-datatypes ((V!7795 0))(
  ( (V!7796 (val!3100 Int)) )
))
(declare-datatypes ((ValueCell!2712 0))(
  ( (ValueCellFull!2712 (v!5116 V!7795)) (EmptyCell!2712) )
))
(declare-datatypes ((array!11464 0))(
  ( (array!11465 (arr!5451 (Array (_ BitVec 32) ValueCell!2712)) (size!5784 (_ BitVec 32))) )
))
(declare-datatypes ((array!11466 0))(
  ( (array!11467 (arr!5452 (Array (_ BitVec 32) (_ BitVec 64))) (size!5785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3324 0))(
  ( (LongMapFixedSize!3325 (defaultEntry!4321 Int) (mask!10231 (_ BitVec 32)) (extraKeys!4058 (_ BitVec 32)) (zeroValue!4162 V!7795) (minValue!4162 V!7795) (_size!1711 (_ BitVec 32)) (_keys!6375 array!11466) (_values!4304 array!11464) (_vacant!1711 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3324)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!309 (array!11466 array!11464 (_ BitVec 32) (_ BitVec 32) V!7795 V!7795 (_ BitVec 64) Int) Unit!7159)

(assert (=> b!232096 (= lt!117191 (lemmaInListMapThenSeekEntryOrOpenFindsIt!309 (_keys!6375 thiss!1504) (_values!4304 thiss!1504) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) key!932 (defaultEntry!4321 thiss!1504)))))

(assert (=> b!232096 false))

(declare-fun mapIsEmpty!10336 () Bool)

(declare-fun mapRes!10336 () Bool)

(assert (=> mapIsEmpty!10336 mapRes!10336))

(declare-fun b!232097 () Bool)

(declare-fun e!150724 () Bool)

(declare-fun call!21580 () Bool)

(assert (=> b!232097 (= e!150724 (not call!21580))))

(declare-fun b!232098 () Bool)

(declare-fun res!114017 () Bool)

(declare-fun e!150715 () Bool)

(assert (=> b!232098 (=> (not res!114017) (not e!150715))))

(declare-datatypes ((SeekEntryResult!970 0))(
  ( (MissingZero!970 (index!6050 (_ BitVec 32))) (Found!970 (index!6051 (_ BitVec 32))) (Intermediate!970 (undefined!1782 Bool) (index!6052 (_ BitVec 32)) (x!23550 (_ BitVec 32))) (Undefined!970) (MissingVacant!970 (index!6053 (_ BitVec 32))) )
))
(declare-fun lt!117187 () SeekEntryResult!970)

(assert (=> b!232098 (= res!114017 (= (select (arr!5452 (_keys!6375 thiss!1504)) (index!6050 lt!117187)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!232099 () Bool)

(declare-fun e!150714 () Bool)

(declare-fun tp_is_empty!6111 () Bool)

(assert (=> b!232099 (= e!150714 tp_is_empty!6111)))

(declare-fun b!232100 () Bool)

(assert (=> b!232100 (= e!150715 (not call!21580))))

(declare-fun b!232101 () Bool)

(declare-fun e!150727 () Bool)

(assert (=> b!232101 (= e!150727 e!150724)))

(declare-fun res!114019 () Bool)

(declare-fun call!21579 () Bool)

(assert (=> b!232101 (= res!114019 call!21579)))

(assert (=> b!232101 (=> (not res!114019) (not e!150724))))

(declare-fun b!232102 () Bool)

(declare-fun e!150723 () Unit!7159)

(declare-fun Unit!7162 () Unit!7159)

(assert (=> b!232102 (= e!150723 Unit!7162)))

(declare-fun b!232103 () Bool)

(declare-fun e!150721 () Bool)

(declare-fun e!150720 () Bool)

(assert (=> b!232103 (= e!150721 (and e!150720 mapRes!10336))))

(declare-fun condMapEmpty!10336 () Bool)

(declare-fun mapDefault!10336 () ValueCell!2712)

(assert (=> b!232103 (= condMapEmpty!10336 (= (arr!5451 (_values!4304 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2712)) mapDefault!10336)))))

(declare-fun b!232104 () Bool)

(get-info :version)

(assert (=> b!232104 (= e!150727 ((_ is Undefined!970) lt!117187))))

(declare-fun b!232105 () Bool)

(declare-fun e!150716 () Bool)

(assert (=> b!232105 (= e!150716 (not true))))

(declare-fun lt!117181 () array!11466)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11466 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232105 (= (arrayCountValidKeys!0 lt!117181 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117186 () Unit!7159)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11466 (_ BitVec 32)) Unit!7159)

(assert (=> b!232105 (= lt!117186 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117181 index!297))))

(declare-fun arrayContainsKey!0 (array!11466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!232105 (arrayContainsKey!0 lt!117181 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117184 () Unit!7159)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11466 (_ BitVec 64) (_ BitVec 32)) Unit!7159)

(assert (=> b!232105 (= lt!117184 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117181 key!932 index!297))))

(declare-fun v!346 () V!7795)

(declare-datatypes ((tuple2!4572 0))(
  ( (tuple2!4573 (_1!2296 (_ BitVec 64)) (_2!2296 V!7795)) )
))
(declare-datatypes ((List!3514 0))(
  ( (Nil!3511) (Cons!3510 (h!4158 tuple2!4572) (t!8481 List!3514)) )
))
(declare-datatypes ((ListLongMap!3499 0))(
  ( (ListLongMap!3500 (toList!1765 List!3514)) )
))
(declare-fun lt!117192 () ListLongMap!3499)

(declare-fun +!618 (ListLongMap!3499 tuple2!4572) ListLongMap!3499)

(declare-fun getCurrentListMap!1288 (array!11466 array!11464 (_ BitVec 32) (_ BitVec 32) V!7795 V!7795 (_ BitVec 32) Int) ListLongMap!3499)

(assert (=> b!232105 (= (+!618 lt!117192 (tuple2!4573 key!932 v!346)) (getCurrentListMap!1288 lt!117181 (array!11465 (store (arr!5451 (_values!4304 thiss!1504)) index!297 (ValueCellFull!2712 v!346)) (size!5784 (_values!4304 thiss!1504))) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4321 thiss!1504)))))

(declare-fun lt!117180 () Unit!7159)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!77 (array!11466 array!11464 (_ BitVec 32) (_ BitVec 32) V!7795 V!7795 (_ BitVec 32) (_ BitVec 64) V!7795 Int) Unit!7159)

(assert (=> b!232105 (= lt!117180 (lemmaAddValidKeyToArrayThenAddPairToListMap!77 (_keys!6375 thiss!1504) (_values!4304 thiss!1504) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) index!297 key!932 v!346 (defaultEntry!4321 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11466 (_ BitVec 32)) Bool)

(assert (=> b!232105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117181 (mask!10231 thiss!1504))))

(declare-fun lt!117185 () Unit!7159)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11466 (_ BitVec 32) (_ BitVec 32)) Unit!7159)

(assert (=> b!232105 (= lt!117185 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6375 thiss!1504) index!297 (mask!10231 thiss!1504)))))

(assert (=> b!232105 (= (arrayCountValidKeys!0 lt!117181 #b00000000000000000000000000000000 (size!5785 (_keys!6375 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6375 thiss!1504) #b00000000000000000000000000000000 (size!5785 (_keys!6375 thiss!1504)))))))

(declare-fun lt!117183 () Unit!7159)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11466 (_ BitVec 32) (_ BitVec 64)) Unit!7159)

(assert (=> b!232105 (= lt!117183 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6375 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3515 0))(
  ( (Nil!3512) (Cons!3511 (h!4159 (_ BitVec 64)) (t!8482 List!3515)) )
))
(declare-fun arrayNoDuplicates!0 (array!11466 (_ BitVec 32) List!3515) Bool)

(assert (=> b!232105 (arrayNoDuplicates!0 lt!117181 #b00000000000000000000000000000000 Nil!3512)))

(assert (=> b!232105 (= lt!117181 (array!11467 (store (arr!5452 (_keys!6375 thiss!1504)) index!297 key!932) (size!5785 (_keys!6375 thiss!1504))))))

(declare-fun lt!117179 () Unit!7159)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3515) Unit!7159)

(assert (=> b!232105 (= lt!117179 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6375 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3512))))

(declare-fun lt!117182 () Unit!7159)

(assert (=> b!232105 (= lt!117182 e!150723)))

(declare-fun c!38570 () Bool)

(assert (=> b!232105 (= c!38570 (arrayContainsKey!0 (_keys!6375 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232106 () Bool)

(declare-fun e!150722 () Bool)

(declare-fun e!150719 () Bool)

(assert (=> b!232106 (= e!150722 e!150719)))

(declare-fun res!114013 () Bool)

(assert (=> b!232106 (=> (not res!114013) (not e!150719))))

(assert (=> b!232106 (= res!114013 (or (= lt!117187 (MissingZero!970 index!297)) (= lt!117187 (MissingVacant!970 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11466 (_ BitVec 32)) SeekEntryResult!970)

(assert (=> b!232106 (= lt!117187 (seekEntryOrOpen!0 key!932 (_keys!6375 thiss!1504) (mask!10231 thiss!1504)))))

(declare-fun bm!21576 () Bool)

(assert (=> bm!21576 (= call!21580 (arrayContainsKey!0 (_keys!6375 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232107 () Bool)

(assert (=> b!232107 (= e!150720 tp_is_empty!6111)))

(declare-fun b!232108 () Bool)

(declare-fun res!114018 () Bool)

(assert (=> b!232108 (=> (not res!114018) (not e!150722))))

(assert (=> b!232108 (= res!114018 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!21577 () Bool)

(declare-fun c!38571 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21577 (= call!21579 (inRange!0 (ite c!38571 (index!6050 lt!117187) (index!6053 lt!117187)) (mask!10231 thiss!1504)))))

(declare-fun mapNonEmpty!10336 () Bool)

(declare-fun tp!21889 () Bool)

(assert (=> mapNonEmpty!10336 (= mapRes!10336 (and tp!21889 e!150714))))

(declare-fun mapRest!10336 () (Array (_ BitVec 32) ValueCell!2712))

(declare-fun mapKey!10336 () (_ BitVec 32))

(declare-fun mapValue!10336 () ValueCell!2712)

(assert (=> mapNonEmpty!10336 (= (arr!5451 (_values!4304 thiss!1504)) (store mapRest!10336 mapKey!10336 mapValue!10336))))

(declare-fun res!114012 () Bool)

(assert (=> start!22194 (=> (not res!114012) (not e!150722))))

(declare-fun valid!1309 (LongMapFixedSize!3324) Bool)

(assert (=> start!22194 (= res!114012 (valid!1309 thiss!1504))))

(assert (=> start!22194 e!150722))

(declare-fun e!150726 () Bool)

(assert (=> start!22194 e!150726))

(assert (=> start!22194 true))

(assert (=> start!22194 tp_is_empty!6111))

(declare-fun array_inv!3583 (array!11466) Bool)

(declare-fun array_inv!3584 (array!11464) Bool)

(assert (=> b!232109 (= e!150726 (and tp!21888 tp_is_empty!6111 (array_inv!3583 (_keys!6375 thiss!1504)) (array_inv!3584 (_values!4304 thiss!1504)) e!150721))))

(declare-fun b!232110 () Bool)

(assert (=> b!232110 (= e!150719 e!150716)))

(declare-fun res!114014 () Bool)

(assert (=> b!232110 (=> (not res!114014) (not e!150716))))

(assert (=> b!232110 (= res!114014 (inRange!0 index!297 (mask!10231 thiss!1504)))))

(declare-fun lt!117189 () Unit!7159)

(assert (=> b!232110 (= lt!117189 e!150717)))

(declare-fun c!38572 () Bool)

(declare-fun contains!1627 (ListLongMap!3499 (_ BitVec 64)) Bool)

(assert (=> b!232110 (= c!38572 (contains!1627 lt!117192 key!932))))

(assert (=> b!232110 (= lt!117192 (getCurrentListMap!1288 (_keys!6375 thiss!1504) (_values!4304 thiss!1504) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4321 thiss!1504)))))

(declare-fun b!232111 () Bool)

(declare-fun Unit!7163 () Unit!7159)

(assert (=> b!232111 (= e!150723 Unit!7163)))

(declare-fun lt!117188 () Unit!7159)

(declare-fun lemmaArrayContainsKeyThenInListMap!143 (array!11466 array!11464 (_ BitVec 32) (_ BitVec 32) V!7795 V!7795 (_ BitVec 64) (_ BitVec 32) Int) Unit!7159)

(assert (=> b!232111 (= lt!117188 (lemmaArrayContainsKeyThenInListMap!143 (_keys!6375 thiss!1504) (_values!4304 thiss!1504) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4321 thiss!1504)))))

(assert (=> b!232111 false))

(declare-fun b!232112 () Bool)

(declare-fun lt!117190 () Unit!7159)

(assert (=> b!232112 (= e!150717 lt!117190)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!322 (array!11466 array!11464 (_ BitVec 32) (_ BitVec 32) V!7795 V!7795 (_ BitVec 64) Int) Unit!7159)

(assert (=> b!232112 (= lt!117190 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!322 (_keys!6375 thiss!1504) (_values!4304 thiss!1504) (mask!10231 thiss!1504) (extraKeys!4058 thiss!1504) (zeroValue!4162 thiss!1504) (minValue!4162 thiss!1504) key!932 (defaultEntry!4321 thiss!1504)))))

(assert (=> b!232112 (= c!38571 ((_ is MissingZero!970) lt!117187))))

(declare-fun e!150725 () Bool)

(assert (=> b!232112 e!150725))

(declare-fun b!232113 () Bool)

(declare-fun res!114015 () Bool)

(assert (=> b!232113 (= res!114015 (= (select (arr!5452 (_keys!6375 thiss!1504)) (index!6053 lt!117187)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232113 (=> (not res!114015) (not e!150724))))

(declare-fun b!232114 () Bool)

(declare-fun res!114016 () Bool)

(assert (=> b!232114 (=> (not res!114016) (not e!150715))))

(assert (=> b!232114 (= res!114016 call!21579)))

(assert (=> b!232114 (= e!150725 e!150715)))

(declare-fun b!232115 () Bool)

(declare-fun c!38573 () Bool)

(assert (=> b!232115 (= c!38573 ((_ is MissingVacant!970) lt!117187))))

(assert (=> b!232115 (= e!150725 e!150727)))

(assert (= (and start!22194 res!114012) b!232108))

(assert (= (and b!232108 res!114018) b!232106))

(assert (= (and b!232106 res!114013) b!232110))

(assert (= (and b!232110 c!38572) b!232096))

(assert (= (and b!232110 (not c!38572)) b!232112))

(assert (= (and b!232112 c!38571) b!232114))

(assert (= (and b!232112 (not c!38571)) b!232115))

(assert (= (and b!232114 res!114016) b!232098))

(assert (= (and b!232098 res!114017) b!232100))

(assert (= (and b!232115 c!38573) b!232101))

(assert (= (and b!232115 (not c!38573)) b!232104))

(assert (= (and b!232101 res!114019) b!232113))

(assert (= (and b!232113 res!114015) b!232097))

(assert (= (or b!232114 b!232101) bm!21577))

(assert (= (or b!232100 b!232097) bm!21576))

(assert (= (and b!232110 res!114014) b!232105))

(assert (= (and b!232105 c!38570) b!232111))

(assert (= (and b!232105 (not c!38570)) b!232102))

(assert (= (and b!232103 condMapEmpty!10336) mapIsEmpty!10336))

(assert (= (and b!232103 (not condMapEmpty!10336)) mapNonEmpty!10336))

(assert (= (and mapNonEmpty!10336 ((_ is ValueCellFull!2712) mapValue!10336)) b!232099))

(assert (= (and b!232103 ((_ is ValueCellFull!2712) mapDefault!10336)) b!232107))

(assert (= b!232109 b!232103))

(assert (= start!22194 b!232109))

(declare-fun m!253533 () Bool)

(assert (=> b!232105 m!253533))

(declare-fun m!253535 () Bool)

(assert (=> b!232105 m!253535))

(declare-fun m!253537 () Bool)

(assert (=> b!232105 m!253537))

(declare-fun m!253539 () Bool)

(assert (=> b!232105 m!253539))

(declare-fun m!253541 () Bool)

(assert (=> b!232105 m!253541))

(declare-fun m!253543 () Bool)

(assert (=> b!232105 m!253543))

(declare-fun m!253545 () Bool)

(assert (=> b!232105 m!253545))

(declare-fun m!253547 () Bool)

(assert (=> b!232105 m!253547))

(declare-fun m!253549 () Bool)

(assert (=> b!232105 m!253549))

(declare-fun m!253551 () Bool)

(assert (=> b!232105 m!253551))

(declare-fun m!253553 () Bool)

(assert (=> b!232105 m!253553))

(declare-fun m!253555 () Bool)

(assert (=> b!232105 m!253555))

(declare-fun m!253557 () Bool)

(assert (=> b!232105 m!253557))

(declare-fun m!253559 () Bool)

(assert (=> b!232105 m!253559))

(declare-fun m!253561 () Bool)

(assert (=> b!232105 m!253561))

(declare-fun m!253563 () Bool)

(assert (=> b!232105 m!253563))

(declare-fun m!253565 () Bool)

(assert (=> b!232105 m!253565))

(declare-fun m!253567 () Bool)

(assert (=> b!232098 m!253567))

(declare-fun m!253569 () Bool)

(assert (=> b!232113 m!253569))

(declare-fun m!253571 () Bool)

(assert (=> b!232112 m!253571))

(declare-fun m!253573 () Bool)

(assert (=> b!232106 m!253573))

(declare-fun m!253575 () Bool)

(assert (=> bm!21577 m!253575))

(declare-fun m!253577 () Bool)

(assert (=> start!22194 m!253577))

(declare-fun m!253579 () Bool)

(assert (=> b!232096 m!253579))

(declare-fun m!253581 () Bool)

(assert (=> b!232111 m!253581))

(assert (=> bm!21576 m!253535))

(declare-fun m!253583 () Bool)

(assert (=> b!232110 m!253583))

(declare-fun m!253585 () Bool)

(assert (=> b!232110 m!253585))

(declare-fun m!253587 () Bool)

(assert (=> b!232110 m!253587))

(declare-fun m!253589 () Bool)

(assert (=> b!232109 m!253589))

(declare-fun m!253591 () Bool)

(assert (=> b!232109 m!253591))

(declare-fun m!253593 () Bool)

(assert (=> mapNonEmpty!10336 m!253593))

(check-sat (not mapNonEmpty!10336) (not b!232110) (not b!232106) (not b!232112) (not b!232105) (not bm!21576) (not b!232111) (not start!22194) b_and!13165 (not bm!21577) (not b!232109) (not b!232096) tp_is_empty!6111 (not b_next!6249))
(check-sat b_and!13165 (not b_next!6249))
