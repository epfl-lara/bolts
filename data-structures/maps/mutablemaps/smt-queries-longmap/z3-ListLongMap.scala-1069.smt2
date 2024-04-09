; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22110 () Bool)

(assert start!22110)

(declare-fun b!229567 () Bool)

(declare-fun b_free!6165 () Bool)

(declare-fun b_next!6165 () Bool)

(assert (=> b!229567 (= b_free!6165 (not b_next!6165))))

(declare-fun tp!21636 () Bool)

(declare-fun b_and!13081 () Bool)

(assert (=> b!229567 (= tp!21636 b_and!13081)))

(declare-fun b!229564 () Bool)

(declare-fun e!148947 () Bool)

(declare-fun call!21327 () Bool)

(assert (=> b!229564 (= e!148947 (not call!21327))))

(declare-fun b!229565 () Bool)

(declare-fun e!148954 () Bool)

(declare-fun tp_is_empty!6027 () Bool)

(assert (=> b!229565 (= e!148954 tp_is_empty!6027)))

(declare-fun b!229566 () Bool)

(declare-fun res!113000 () Bool)

(declare-fun e!148955 () Bool)

(assert (=> b!229566 (=> (not res!113000) (not e!148955))))

(declare-fun call!21328 () Bool)

(assert (=> b!229566 (= res!113000 call!21328)))

(declare-fun e!148951 () Bool)

(assert (=> b!229566 (= e!148951 e!148955)))

(declare-fun e!148959 () Bool)

(declare-fun e!148960 () Bool)

(declare-datatypes ((V!7683 0))(
  ( (V!7684 (val!3058 Int)) )
))
(declare-datatypes ((ValueCell!2670 0))(
  ( (ValueCellFull!2670 (v!5074 V!7683)) (EmptyCell!2670) )
))
(declare-datatypes ((array!11296 0))(
  ( (array!11297 (arr!5367 (Array (_ BitVec 32) ValueCell!2670)) (size!5700 (_ BitVec 32))) )
))
(declare-datatypes ((array!11298 0))(
  ( (array!11299 (arr!5368 (Array (_ BitVec 32) (_ BitVec 64))) (size!5701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3240 0))(
  ( (LongMapFixedSize!3241 (defaultEntry!4279 Int) (mask!10161 (_ BitVec 32)) (extraKeys!4016 (_ BitVec 32)) (zeroValue!4120 V!7683) (minValue!4120 V!7683) (_size!1669 (_ BitVec 32)) (_keys!6333 array!11298) (_values!4262 array!11296) (_vacant!1669 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3240)

(declare-fun array_inv!3533 (array!11298) Bool)

(declare-fun array_inv!3534 (array!11296) Bool)

(assert (=> b!229567 (= e!148960 (and tp!21636 tp_is_empty!6027 (array_inv!3533 (_keys!6333 thiss!1504)) (array_inv!3534 (_values!4262 thiss!1504)) e!148959))))

(declare-fun b!229568 () Bool)

(declare-datatypes ((Unit!7002 0))(
  ( (Unit!7003) )
))
(declare-fun e!148948 () Unit!7002)

(declare-fun lt!115508 () Unit!7002)

(assert (=> b!229568 (= e!148948 lt!115508)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!297 (array!11298 array!11296 (_ BitVec 32) (_ BitVec 32) V!7683 V!7683 (_ BitVec 64) Int) Unit!7002)

(assert (=> b!229568 (= lt!115508 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!297 (_keys!6333 thiss!1504) (_values!4262 thiss!1504) (mask!10161 thiss!1504) (extraKeys!4016 thiss!1504) (zeroValue!4120 thiss!1504) (minValue!4120 thiss!1504) key!932 (defaultEntry!4279 thiss!1504)))))

(declare-fun c!38068 () Bool)

(declare-datatypes ((SeekEntryResult!934 0))(
  ( (MissingZero!934 (index!5906 (_ BitVec 32))) (Found!934 (index!5907 (_ BitVec 32))) (Intermediate!934 (undefined!1746 Bool) (index!5908 (_ BitVec 32)) (x!23402 (_ BitVec 32))) (Undefined!934) (MissingVacant!934 (index!5909 (_ BitVec 32))) )
))
(declare-fun lt!115514 () SeekEntryResult!934)

(get-info :version)

(assert (=> b!229568 (= c!38068 ((_ is MissingZero!934) lt!115514))))

(assert (=> b!229568 e!148951))

(declare-fun b!229569 () Bool)

(declare-fun c!38067 () Bool)

(assert (=> b!229569 (= c!38067 ((_ is MissingVacant!934) lt!115514))))

(declare-fun e!148952 () Bool)

(assert (=> b!229569 (= e!148951 e!148952)))

(declare-fun b!229570 () Bool)

(declare-fun res!112992 () Bool)

(declare-fun e!148956 () Bool)

(assert (=> b!229570 (=> (not res!112992) (not e!148956))))

(assert (=> b!229570 (= res!112992 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229571 () Bool)

(declare-fun e!148946 () Unit!7002)

(declare-fun Unit!7004 () Unit!7002)

(assert (=> b!229571 (= e!148946 Unit!7004)))

(declare-fun lt!115509 () Unit!7002)

(declare-fun lemmaArrayContainsKeyThenInListMap!117 (array!11298 array!11296 (_ BitVec 32) (_ BitVec 32) V!7683 V!7683 (_ BitVec 64) (_ BitVec 32) Int) Unit!7002)

(assert (=> b!229571 (= lt!115509 (lemmaArrayContainsKeyThenInListMap!117 (_keys!6333 thiss!1504) (_values!4262 thiss!1504) (mask!10161 thiss!1504) (extraKeys!4016 thiss!1504) (zeroValue!4120 thiss!1504) (minValue!4120 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4279 thiss!1504)))))

(assert (=> b!229571 false))

(declare-fun bm!21324 () Bool)

(declare-fun arrayContainsKey!0 (array!11298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21324 (= call!21327 (arrayContainsKey!0 (_keys!6333 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229572 () Bool)

(declare-fun e!148953 () Bool)

(assert (=> b!229572 (= e!148956 e!148953)))

(declare-fun res!113002 () Bool)

(assert (=> b!229572 (=> (not res!113002) (not e!148953))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229572 (= res!113002 (or (= lt!115514 (MissingZero!934 index!297)) (= lt!115514 (MissingVacant!934 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11298 (_ BitVec 32)) SeekEntryResult!934)

(assert (=> b!229572 (= lt!115514 (seekEntryOrOpen!0 key!932 (_keys!6333 thiss!1504) (mask!10161 thiss!1504)))))

(declare-fun b!229573 () Bool)

(declare-fun res!112995 () Bool)

(declare-fun e!148949 () Bool)

(assert (=> b!229573 (=> res!112995 e!148949)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11298 (_ BitVec 32)) Bool)

(assert (=> b!229573 (= res!112995 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6333 thiss!1504) (mask!10161 thiss!1504))))))

(declare-fun b!229574 () Bool)

(declare-fun e!148957 () Bool)

(assert (=> b!229574 (= e!148957 tp_is_empty!6027)))

(declare-fun b!229575 () Bool)

(declare-fun e!148958 () Bool)

(assert (=> b!229575 (= e!148958 (not e!148949))))

(declare-fun res!112996 () Bool)

(assert (=> b!229575 (=> res!112996 e!148949)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229575 (= res!112996 (not (validMask!0 (mask!10161 thiss!1504))))))

(declare-fun lt!115510 () array!11298)

(assert (=> b!229575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115510 (mask!10161 thiss!1504))))

(declare-fun lt!115511 () Unit!7002)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11298 (_ BitVec 32) (_ BitVec 32)) Unit!7002)

(assert (=> b!229575 (= lt!115511 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6333 thiss!1504) index!297 (mask!10161 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11298 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229575 (= (arrayCountValidKeys!0 lt!115510 #b00000000000000000000000000000000 (size!5701 (_keys!6333 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6333 thiss!1504) #b00000000000000000000000000000000 (size!5701 (_keys!6333 thiss!1504)))))))

(declare-fun lt!115515 () Unit!7002)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11298 (_ BitVec 32) (_ BitVec 64)) Unit!7002)

(assert (=> b!229575 (= lt!115515 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6333 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3455 0))(
  ( (Nil!3452) (Cons!3451 (h!4099 (_ BitVec 64)) (t!8422 List!3455)) )
))
(declare-fun arrayNoDuplicates!0 (array!11298 (_ BitVec 32) List!3455) Bool)

(assert (=> b!229575 (arrayNoDuplicates!0 lt!115510 #b00000000000000000000000000000000 Nil!3452)))

(assert (=> b!229575 (= lt!115510 (array!11299 (store (arr!5368 (_keys!6333 thiss!1504)) index!297 key!932) (size!5701 (_keys!6333 thiss!1504))))))

(declare-fun lt!115518 () Unit!7002)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11298 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3455) Unit!7002)

(assert (=> b!229575 (= lt!115518 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6333 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3452))))

(declare-fun lt!115517 () Unit!7002)

(assert (=> b!229575 (= lt!115517 e!148946)))

(declare-fun c!38066 () Bool)

(assert (=> b!229575 (= c!38066 (arrayContainsKey!0 (_keys!6333 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229576 () Bool)

(assert (=> b!229576 (= e!148952 ((_ is Undefined!934) lt!115514))))

(declare-fun b!229577 () Bool)

(assert (=> b!229577 (= e!148949 true)))

(declare-fun lt!115516 () Bool)

(assert (=> b!229577 (= lt!115516 (arrayNoDuplicates!0 (_keys!6333 thiss!1504) #b00000000000000000000000000000000 Nil!3452))))

(declare-fun mapNonEmpty!10210 () Bool)

(declare-fun mapRes!10210 () Bool)

(declare-fun tp!21637 () Bool)

(assert (=> mapNonEmpty!10210 (= mapRes!10210 (and tp!21637 e!148957))))

(declare-fun mapRest!10210 () (Array (_ BitVec 32) ValueCell!2670))

(declare-fun mapKey!10210 () (_ BitVec 32))

(declare-fun mapValue!10210 () ValueCell!2670)

(assert (=> mapNonEmpty!10210 (= (arr!5367 (_values!4262 thiss!1504)) (store mapRest!10210 mapKey!10210 mapValue!10210))))

(declare-fun res!112997 () Bool)

(assert (=> start!22110 (=> (not res!112997) (not e!148956))))

(declare-fun valid!1284 (LongMapFixedSize!3240) Bool)

(assert (=> start!22110 (= res!112997 (valid!1284 thiss!1504))))

(assert (=> start!22110 e!148956))

(assert (=> start!22110 e!148960))

(assert (=> start!22110 true))

(declare-fun b!229578 () Bool)

(assert (=> b!229578 (= e!148952 e!148947)))

(declare-fun res!112999 () Bool)

(assert (=> b!229578 (= res!112999 call!21328)))

(assert (=> b!229578 (=> (not res!112999) (not e!148947))))

(declare-fun b!229579 () Bool)

(declare-fun res!112998 () Bool)

(assert (=> b!229579 (=> (not res!112998) (not e!148955))))

(assert (=> b!229579 (= res!112998 (= (select (arr!5368 (_keys!6333 thiss!1504)) (index!5906 lt!115514)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229580 () Bool)

(assert (=> b!229580 (= e!148953 e!148958)))

(declare-fun res!112994 () Bool)

(assert (=> b!229580 (=> (not res!112994) (not e!148958))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229580 (= res!112994 (inRange!0 index!297 (mask!10161 thiss!1504)))))

(declare-fun lt!115512 () Unit!7002)

(assert (=> b!229580 (= lt!115512 e!148948)))

(declare-fun c!38069 () Bool)

(declare-datatypes ((tuple2!4506 0))(
  ( (tuple2!4507 (_1!2263 (_ BitVec 64)) (_2!2263 V!7683)) )
))
(declare-datatypes ((List!3456 0))(
  ( (Nil!3453) (Cons!3452 (h!4100 tuple2!4506) (t!8423 List!3456)) )
))
(declare-datatypes ((ListLongMap!3433 0))(
  ( (ListLongMap!3434 (toList!1732 List!3456)) )
))
(declare-fun contains!1600 (ListLongMap!3433 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1255 (array!11298 array!11296 (_ BitVec 32) (_ BitVec 32) V!7683 V!7683 (_ BitVec 32) Int) ListLongMap!3433)

(assert (=> b!229580 (= c!38069 (contains!1600 (getCurrentListMap!1255 (_keys!6333 thiss!1504) (_values!4262 thiss!1504) (mask!10161 thiss!1504) (extraKeys!4016 thiss!1504) (zeroValue!4120 thiss!1504) (minValue!4120 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4279 thiss!1504)) key!932))))

(declare-fun b!229581 () Bool)

(declare-fun res!112993 () Bool)

(assert (=> b!229581 (=> res!112993 e!148949)))

(assert (=> b!229581 (= res!112993 (or (not (= (size!5700 (_values!4262 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10161 thiss!1504)))) (not (= (size!5701 (_keys!6333 thiss!1504)) (size!5700 (_values!4262 thiss!1504)))) (bvslt (mask!10161 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4016 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4016 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!229582 () Bool)

(declare-fun res!113001 () Bool)

(assert (=> b!229582 (= res!113001 (= (select (arr!5368 (_keys!6333 thiss!1504)) (index!5909 lt!115514)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!229582 (=> (not res!113001) (not e!148947))))

(declare-fun b!229583 () Bool)

(assert (=> b!229583 (= e!148955 (not call!21327))))

(declare-fun bm!21325 () Bool)

(assert (=> bm!21325 (= call!21328 (inRange!0 (ite c!38068 (index!5906 lt!115514) (index!5909 lt!115514)) (mask!10161 thiss!1504)))))

(declare-fun mapIsEmpty!10210 () Bool)

(assert (=> mapIsEmpty!10210 mapRes!10210))

(declare-fun b!229584 () Bool)

(declare-fun Unit!7005 () Unit!7002)

(assert (=> b!229584 (= e!148946 Unit!7005)))

(declare-fun b!229585 () Bool)

(declare-fun Unit!7006 () Unit!7002)

(assert (=> b!229585 (= e!148948 Unit!7006)))

(declare-fun lt!115513 () Unit!7002)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!283 (array!11298 array!11296 (_ BitVec 32) (_ BitVec 32) V!7683 V!7683 (_ BitVec 64) Int) Unit!7002)

(assert (=> b!229585 (= lt!115513 (lemmaInListMapThenSeekEntryOrOpenFindsIt!283 (_keys!6333 thiss!1504) (_values!4262 thiss!1504) (mask!10161 thiss!1504) (extraKeys!4016 thiss!1504) (zeroValue!4120 thiss!1504) (minValue!4120 thiss!1504) key!932 (defaultEntry!4279 thiss!1504)))))

(assert (=> b!229585 false))

(declare-fun b!229586 () Bool)

(assert (=> b!229586 (= e!148959 (and e!148954 mapRes!10210))))

(declare-fun condMapEmpty!10210 () Bool)

(declare-fun mapDefault!10210 () ValueCell!2670)

(assert (=> b!229586 (= condMapEmpty!10210 (= (arr!5367 (_values!4262 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2670)) mapDefault!10210)))))

(assert (= (and start!22110 res!112997) b!229570))

(assert (= (and b!229570 res!112992) b!229572))

(assert (= (and b!229572 res!113002) b!229580))

(assert (= (and b!229580 c!38069) b!229585))

(assert (= (and b!229580 (not c!38069)) b!229568))

(assert (= (and b!229568 c!38068) b!229566))

(assert (= (and b!229568 (not c!38068)) b!229569))

(assert (= (and b!229566 res!113000) b!229579))

(assert (= (and b!229579 res!112998) b!229583))

(assert (= (and b!229569 c!38067) b!229578))

(assert (= (and b!229569 (not c!38067)) b!229576))

(assert (= (and b!229578 res!112999) b!229582))

(assert (= (and b!229582 res!113001) b!229564))

(assert (= (or b!229566 b!229578) bm!21325))

(assert (= (or b!229583 b!229564) bm!21324))

(assert (= (and b!229580 res!112994) b!229575))

(assert (= (and b!229575 c!38066) b!229571))

(assert (= (and b!229575 (not c!38066)) b!229584))

(assert (= (and b!229575 (not res!112996)) b!229581))

(assert (= (and b!229581 (not res!112993)) b!229573))

(assert (= (and b!229573 (not res!112995)) b!229577))

(assert (= (and b!229586 condMapEmpty!10210) mapIsEmpty!10210))

(assert (= (and b!229586 (not condMapEmpty!10210)) mapNonEmpty!10210))

(assert (= (and mapNonEmpty!10210 ((_ is ValueCellFull!2670) mapValue!10210)) b!229574))

(assert (= (and b!229586 ((_ is ValueCellFull!2670) mapDefault!10210)) b!229565))

(assert (= b!229567 b!229586))

(assert (= start!22110 b!229567))

(declare-fun m!251057 () Bool)

(assert (=> b!229568 m!251057))

(declare-fun m!251059 () Bool)

(assert (=> bm!21325 m!251059))

(declare-fun m!251061 () Bool)

(assert (=> mapNonEmpty!10210 m!251061))

(declare-fun m!251063 () Bool)

(assert (=> b!229572 m!251063))

(declare-fun m!251065 () Bool)

(assert (=> start!22110 m!251065))

(declare-fun m!251067 () Bool)

(assert (=> b!229585 m!251067))

(declare-fun m!251069 () Bool)

(assert (=> b!229567 m!251069))

(declare-fun m!251071 () Bool)

(assert (=> b!229567 m!251071))

(declare-fun m!251073 () Bool)

(assert (=> b!229575 m!251073))

(declare-fun m!251075 () Bool)

(assert (=> b!229575 m!251075))

(declare-fun m!251077 () Bool)

(assert (=> b!229575 m!251077))

(declare-fun m!251079 () Bool)

(assert (=> b!229575 m!251079))

(declare-fun m!251081 () Bool)

(assert (=> b!229575 m!251081))

(declare-fun m!251083 () Bool)

(assert (=> b!229575 m!251083))

(declare-fun m!251085 () Bool)

(assert (=> b!229575 m!251085))

(declare-fun m!251087 () Bool)

(assert (=> b!229575 m!251087))

(declare-fun m!251089 () Bool)

(assert (=> b!229575 m!251089))

(declare-fun m!251091 () Bool)

(assert (=> b!229575 m!251091))

(declare-fun m!251093 () Bool)

(assert (=> b!229582 m!251093))

(assert (=> bm!21324 m!251073))

(declare-fun m!251095 () Bool)

(assert (=> b!229571 m!251095))

(declare-fun m!251097 () Bool)

(assert (=> b!229573 m!251097))

(declare-fun m!251099 () Bool)

(assert (=> b!229580 m!251099))

(declare-fun m!251101 () Bool)

(assert (=> b!229580 m!251101))

(assert (=> b!229580 m!251101))

(declare-fun m!251103 () Bool)

(assert (=> b!229580 m!251103))

(declare-fun m!251105 () Bool)

(assert (=> b!229577 m!251105))

(declare-fun m!251107 () Bool)

(assert (=> b!229579 m!251107))

(check-sat (not bm!21324) (not b_next!6165) (not b!229585) (not b!229568) tp_is_empty!6027 (not b!229572) (not b!229577) (not b!229567) (not mapNonEmpty!10210) (not b!229573) (not b!229575) (not start!22110) (not b!229580) (not bm!21325) b_and!13081 (not b!229571))
(check-sat b_and!13081 (not b_next!6165))
