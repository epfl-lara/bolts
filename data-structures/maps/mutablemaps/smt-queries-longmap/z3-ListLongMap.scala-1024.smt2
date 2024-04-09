; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21840 () Bool)

(assert start!21840)

(declare-fun b!219505 () Bool)

(declare-fun b_free!5895 () Bool)

(declare-fun b_next!5895 () Bool)

(assert (=> b!219505 (= b_free!5895 (not b_next!5895))))

(declare-fun tp!20826 () Bool)

(declare-fun b_and!12811 () Bool)

(assert (=> b!219505 (= tp!20826 b_and!12811)))

(declare-fun b!219488 () Bool)

(declare-fun e!142778 () Bool)

(declare-fun e!142773 () Bool)

(declare-fun mapRes!9805 () Bool)

(assert (=> b!219488 (= e!142778 (and e!142773 mapRes!9805))))

(declare-fun condMapEmpty!9805 () Bool)

(declare-datatypes ((V!7323 0))(
  ( (V!7324 (val!2923 Int)) )
))
(declare-datatypes ((ValueCell!2535 0))(
  ( (ValueCellFull!2535 (v!4939 V!7323)) (EmptyCell!2535) )
))
(declare-datatypes ((array!10756 0))(
  ( (array!10757 (arr!5097 (Array (_ BitVec 32) ValueCell!2535)) (size!5430 (_ BitVec 32))) )
))
(declare-datatypes ((array!10758 0))(
  ( (array!10759 (arr!5098 (Array (_ BitVec 32) (_ BitVec 64))) (size!5431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2970 0))(
  ( (LongMapFixedSize!2971 (defaultEntry!4144 Int) (mask!9936 (_ BitVec 32)) (extraKeys!3881 (_ BitVec 32)) (zeroValue!3985 V!7323) (minValue!3985 V!7323) (_size!1534 (_ BitVec 32)) (_keys!6198 array!10758) (_values!4127 array!10756) (_vacant!1534 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2970)

(declare-fun mapDefault!9805 () ValueCell!2535)

(assert (=> b!219488 (= condMapEmpty!9805 (= (arr!5097 (_values!4127 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2535)) mapDefault!9805)))))

(declare-fun mapNonEmpty!9805 () Bool)

(declare-fun tp!20827 () Bool)

(declare-fun e!142775 () Bool)

(assert (=> mapNonEmpty!9805 (= mapRes!9805 (and tp!20827 e!142775))))

(declare-fun mapRest!9805 () (Array (_ BitVec 32) ValueCell!2535))

(declare-fun mapValue!9805 () ValueCell!2535)

(declare-fun mapKey!9805 () (_ BitVec 32))

(assert (=> mapNonEmpty!9805 (= (arr!5097 (_values!4127 thiss!1504)) (store mapRest!9805 mapKey!9805 mapValue!9805))))

(declare-fun b!219489 () Bool)

(declare-fun tp_is_empty!5757 () Bool)

(assert (=> b!219489 (= e!142775 tp_is_empty!5757)))

(declare-fun b!219490 () Bool)

(declare-fun e!142782 () Bool)

(declare-fun e!142781 () Bool)

(assert (=> b!219490 (= e!142782 e!142781)))

(declare-fun res!107595 () Bool)

(assert (=> b!219490 (=> (not res!107595) (not e!142781))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!219490 (= res!107595 (inRange!0 index!297 (mask!9936 thiss!1504)))))

(declare-datatypes ((Unit!6541 0))(
  ( (Unit!6542) )
))
(declare-fun lt!111996 () Unit!6541)

(declare-fun e!142783 () Unit!6541)

(assert (=> b!219490 (= lt!111996 e!142783)))

(declare-fun c!36540 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4336 0))(
  ( (tuple2!4337 (_1!2178 (_ BitVec 64)) (_2!2178 V!7323)) )
))
(declare-datatypes ((List!3262 0))(
  ( (Nil!3259) (Cons!3258 (h!3906 tuple2!4336) (t!8229 List!3262)) )
))
(declare-datatypes ((ListLongMap!3263 0))(
  ( (ListLongMap!3264 (toList!1647 List!3262)) )
))
(declare-fun contains!1484 (ListLongMap!3263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1170 (array!10758 array!10756 (_ BitVec 32) (_ BitVec 32) V!7323 V!7323 (_ BitVec 32) Int) ListLongMap!3263)

(assert (=> b!219490 (= c!36540 (contains!1484 (getCurrentListMap!1170 (_keys!6198 thiss!1504) (_values!4127 thiss!1504) (mask!9936 thiss!1504) (extraKeys!3881 thiss!1504) (zeroValue!3985 thiss!1504) (minValue!3985 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4144 thiss!1504)) key!932))))

(declare-fun b!219491 () Bool)

(declare-fun Unit!6543 () Unit!6541)

(assert (=> b!219491 (= e!142783 Unit!6543)))

(declare-fun lt!111998 () Unit!6541)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!196 (array!10758 array!10756 (_ BitVec 32) (_ BitVec 32) V!7323 V!7323 (_ BitVec 64) Int) Unit!6541)

(assert (=> b!219491 (= lt!111998 (lemmaInListMapThenSeekEntryOrOpenFindsIt!196 (_keys!6198 thiss!1504) (_values!4127 thiss!1504) (mask!9936 thiss!1504) (extraKeys!3881 thiss!1504) (zeroValue!3985 thiss!1504) (minValue!3985 thiss!1504) key!932 (defaultEntry!4144 thiss!1504)))))

(assert (=> b!219491 false))

(declare-fun b!219492 () Bool)

(declare-fun res!107594 () Bool)

(assert (=> b!219492 (=> (not res!107594) (not e!142781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219492 (= res!107594 (validMask!0 (mask!9936 thiss!1504)))))

(declare-fun c!36542 () Bool)

(declare-fun call!20518 () Bool)

(declare-datatypes ((SeekEntryResult!808 0))(
  ( (MissingZero!808 (index!5402 (_ BitVec 32))) (Found!808 (index!5403 (_ BitVec 32))) (Intermediate!808 (undefined!1620 Bool) (index!5404 (_ BitVec 32)) (x!22916 (_ BitVec 32))) (Undefined!808) (MissingVacant!808 (index!5405 (_ BitVec 32))) )
))
(declare-fun lt!111995 () SeekEntryResult!808)

(declare-fun bm!20514 () Bool)

(assert (=> bm!20514 (= call!20518 (inRange!0 (ite c!36542 (index!5402 lt!111995) (index!5405 lt!111995)) (mask!9936 thiss!1504)))))

(declare-fun b!219493 () Bool)

(declare-fun lt!111999 () Unit!6541)

(assert (=> b!219493 (= e!142783 lt!111999)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!204 (array!10758 array!10756 (_ BitVec 32) (_ BitVec 32) V!7323 V!7323 (_ BitVec 64) Int) Unit!6541)

(assert (=> b!219493 (= lt!111999 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!204 (_keys!6198 thiss!1504) (_values!4127 thiss!1504) (mask!9936 thiss!1504) (extraKeys!3881 thiss!1504) (zeroValue!3985 thiss!1504) (minValue!3985 thiss!1504) key!932 (defaultEntry!4144 thiss!1504)))))

(get-info :version)

(assert (=> b!219493 (= c!36542 ((_ is MissingZero!808) lt!111995))))

(declare-fun e!142772 () Bool)

(assert (=> b!219493 e!142772))

(declare-fun b!219494 () Bool)

(declare-fun e!142777 () Bool)

(declare-fun call!20517 () Bool)

(assert (=> b!219494 (= e!142777 (not call!20517))))

(declare-fun b!219495 () Bool)

(declare-fun res!107596 () Bool)

(assert (=> b!219495 (= res!107596 (= (select (arr!5098 (_keys!6198 thiss!1504)) (index!5405 lt!111995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!142776 () Bool)

(assert (=> b!219495 (=> (not res!107596) (not e!142776))))

(declare-fun b!219496 () Bool)

(declare-fun e!142779 () Bool)

(assert (=> b!219496 (= e!142779 ((_ is Undefined!808) lt!111995))))

(declare-fun b!219497 () Bool)

(declare-fun e!142771 () Bool)

(assert (=> b!219497 (= e!142771 e!142782)))

(declare-fun res!107589 () Bool)

(assert (=> b!219497 (=> (not res!107589) (not e!142782))))

(assert (=> b!219497 (= res!107589 (or (= lt!111995 (MissingZero!808 index!297)) (= lt!111995 (MissingVacant!808 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10758 (_ BitVec 32)) SeekEntryResult!808)

(assert (=> b!219497 (= lt!111995 (seekEntryOrOpen!0 key!932 (_keys!6198 thiss!1504) (mask!9936 thiss!1504)))))

(declare-fun b!219499 () Bool)

(assert (=> b!219499 (= e!142773 tp_is_empty!5757)))

(declare-fun b!219500 () Bool)

(declare-fun res!107590 () Bool)

(assert (=> b!219500 (=> (not res!107590) (not e!142781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10758 (_ BitVec 32)) Bool)

(assert (=> b!219500 (= res!107590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6198 thiss!1504) (mask!9936 thiss!1504)))))

(declare-fun bm!20515 () Bool)

(declare-fun arrayContainsKey!0 (array!10758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20515 (= call!20517 (arrayContainsKey!0 (_keys!6198 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219501 () Bool)

(declare-fun res!107592 () Bool)

(assert (=> b!219501 (=> (not res!107592) (not e!142777))))

(assert (=> b!219501 (= res!107592 call!20518)))

(assert (=> b!219501 (= e!142772 e!142777)))

(declare-fun b!219502 () Bool)

(declare-fun res!107588 () Bool)

(assert (=> b!219502 (=> (not res!107588) (not e!142771))))

(assert (=> b!219502 (= res!107588 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!219503 () Bool)

(declare-fun c!36541 () Bool)

(assert (=> b!219503 (= c!36541 ((_ is MissingVacant!808) lt!111995))))

(assert (=> b!219503 (= e!142772 e!142779)))

(declare-fun b!219504 () Bool)

(declare-fun res!107591 () Bool)

(assert (=> b!219504 (=> (not res!107591) (not e!142781))))

(assert (=> b!219504 (= res!107591 (arrayContainsKey!0 (_keys!6198 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!9805 () Bool)

(assert (=> mapIsEmpty!9805 mapRes!9805))

(declare-fun e!142774 () Bool)

(declare-fun array_inv!3367 (array!10758) Bool)

(declare-fun array_inv!3368 (array!10756) Bool)

(assert (=> b!219505 (= e!142774 (and tp!20826 tp_is_empty!5757 (array_inv!3367 (_keys!6198 thiss!1504)) (array_inv!3368 (_values!4127 thiss!1504)) e!142778))))

(declare-fun b!219506 () Bool)

(assert (=> b!219506 (= e!142776 (not call!20517))))

(declare-fun b!219507 () Bool)

(declare-fun res!107599 () Bool)

(assert (=> b!219507 (=> (not res!107599) (not e!142777))))

(assert (=> b!219507 (= res!107599 (= (select (arr!5098 (_keys!6198 thiss!1504)) (index!5402 lt!111995)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219508 () Bool)

(assert (=> b!219508 (= e!142779 e!142776)))

(declare-fun res!107597 () Bool)

(assert (=> b!219508 (= res!107597 call!20518)))

(assert (=> b!219508 (=> (not res!107597) (not e!142776))))

(declare-fun b!219509 () Bool)

(assert (=> b!219509 (= e!142781 false)))

(declare-fun lt!111997 () Bool)

(declare-datatypes ((List!3263 0))(
  ( (Nil!3260) (Cons!3259 (h!3907 (_ BitVec 64)) (t!8230 List!3263)) )
))
(declare-fun arrayNoDuplicates!0 (array!10758 (_ BitVec 32) List!3263) Bool)

(assert (=> b!219509 (= lt!111997 (arrayNoDuplicates!0 (_keys!6198 thiss!1504) #b00000000000000000000000000000000 Nil!3260))))

(declare-fun b!219498 () Bool)

(declare-fun res!107598 () Bool)

(assert (=> b!219498 (=> (not res!107598) (not e!142781))))

(assert (=> b!219498 (= res!107598 (and (= (size!5430 (_values!4127 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9936 thiss!1504))) (= (size!5431 (_keys!6198 thiss!1504)) (size!5430 (_values!4127 thiss!1504))) (bvsge (mask!9936 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3881 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3881 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!107593 () Bool)

(assert (=> start!21840 (=> (not res!107593) (not e!142771))))

(declare-fun valid!1194 (LongMapFixedSize!2970) Bool)

(assert (=> start!21840 (= res!107593 (valid!1194 thiss!1504))))

(assert (=> start!21840 e!142771))

(assert (=> start!21840 e!142774))

(assert (=> start!21840 true))

(assert (= (and start!21840 res!107593) b!219502))

(assert (= (and b!219502 res!107588) b!219497))

(assert (= (and b!219497 res!107589) b!219490))

(assert (= (and b!219490 c!36540) b!219491))

(assert (= (and b!219490 (not c!36540)) b!219493))

(assert (= (and b!219493 c!36542) b!219501))

(assert (= (and b!219493 (not c!36542)) b!219503))

(assert (= (and b!219501 res!107592) b!219507))

(assert (= (and b!219507 res!107599) b!219494))

(assert (= (and b!219503 c!36541) b!219508))

(assert (= (and b!219503 (not c!36541)) b!219496))

(assert (= (and b!219508 res!107597) b!219495))

(assert (= (and b!219495 res!107596) b!219506))

(assert (= (or b!219501 b!219508) bm!20514))

(assert (= (or b!219494 b!219506) bm!20515))

(assert (= (and b!219490 res!107595) b!219504))

(assert (= (and b!219504 res!107591) b!219492))

(assert (= (and b!219492 res!107594) b!219498))

(assert (= (and b!219498 res!107598) b!219500))

(assert (= (and b!219500 res!107590) b!219509))

(assert (= (and b!219488 condMapEmpty!9805) mapIsEmpty!9805))

(assert (= (and b!219488 (not condMapEmpty!9805)) mapNonEmpty!9805))

(assert (= (and mapNonEmpty!9805 ((_ is ValueCellFull!2535) mapValue!9805)) b!219489))

(assert (= (and b!219488 ((_ is ValueCellFull!2535) mapDefault!9805)) b!219499))

(assert (= b!219505 b!219488))

(assert (= start!21840 b!219505))

(declare-fun m!245075 () Bool)

(assert (=> b!219490 m!245075))

(declare-fun m!245077 () Bool)

(assert (=> b!219490 m!245077))

(assert (=> b!219490 m!245077))

(declare-fun m!245079 () Bool)

(assert (=> b!219490 m!245079))

(declare-fun m!245081 () Bool)

(assert (=> b!219509 m!245081))

(declare-fun m!245083 () Bool)

(assert (=> b!219495 m!245083))

(declare-fun m!245085 () Bool)

(assert (=> b!219507 m!245085))

(declare-fun m!245087 () Bool)

(assert (=> b!219504 m!245087))

(declare-fun m!245089 () Bool)

(assert (=> b!219505 m!245089))

(declare-fun m!245091 () Bool)

(assert (=> b!219505 m!245091))

(declare-fun m!245093 () Bool)

(assert (=> b!219500 m!245093))

(declare-fun m!245095 () Bool)

(assert (=> b!219493 m!245095))

(assert (=> bm!20515 m!245087))

(declare-fun m!245097 () Bool)

(assert (=> mapNonEmpty!9805 m!245097))

(declare-fun m!245099 () Bool)

(assert (=> bm!20514 m!245099))

(declare-fun m!245101 () Bool)

(assert (=> b!219492 m!245101))

(declare-fun m!245103 () Bool)

(assert (=> b!219497 m!245103))

(declare-fun m!245105 () Bool)

(assert (=> start!21840 m!245105))

(declare-fun m!245107 () Bool)

(assert (=> b!219491 m!245107))

(check-sat (not bm!20515) (not b!219500) b_and!12811 (not b!219497) (not bm!20514) (not mapNonEmpty!9805) (not b!219493) (not b!219490) (not start!21840) (not b!219491) (not b!219492) (not b!219509) (not b!219504) tp_is_empty!5757 (not b!219505) (not b_next!5895))
(check-sat b_and!12811 (not b_next!5895))
