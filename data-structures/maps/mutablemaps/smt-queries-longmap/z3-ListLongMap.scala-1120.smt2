; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22980 () Bool)

(assert start!22980)

(declare-fun b!240558 () Bool)

(declare-fun b_free!6471 () Bool)

(declare-fun b_next!6471 () Bool)

(assert (=> b!240558 (= b_free!6471 (not b_next!6471))))

(declare-fun tp!22616 () Bool)

(declare-fun b_and!13455 () Bool)

(assert (=> b!240558 (= tp!22616 b_and!13455)))

(declare-fun b!240556 () Bool)

(declare-fun e!156141 () Bool)

(declare-fun call!22371 () Bool)

(assert (=> b!240556 (= e!156141 (not call!22371))))

(declare-fun b!240557 () Bool)

(declare-fun e!156132 () Bool)

(assert (=> b!240557 (= e!156132 e!156141)))

(declare-fun res!117983 () Bool)

(declare-fun call!22372 () Bool)

(assert (=> b!240557 (= res!117983 call!22372)))

(assert (=> b!240557 (=> (not res!117983) (not e!156141))))

(declare-fun bm!22368 () Bool)

(declare-datatypes ((V!8091 0))(
  ( (V!8092 (val!3211 Int)) )
))
(declare-datatypes ((ValueCell!2823 0))(
  ( (ValueCellFull!2823 (v!5245 V!8091)) (EmptyCell!2823) )
))
(declare-datatypes ((array!11944 0))(
  ( (array!11945 (arr!5673 (Array (_ BitVec 32) ValueCell!2823)) (size!6014 (_ BitVec 32))) )
))
(declare-datatypes ((array!11946 0))(
  ( (array!11947 (arr!5674 (Array (_ BitVec 32) (_ BitVec 64))) (size!6015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3546 0))(
  ( (LongMapFixedSize!3547 (defaultEntry!4458 Int) (mask!10516 (_ BitVec 32)) (extraKeys!4195 (_ BitVec 32)) (zeroValue!4299 V!8091) (minValue!4299 V!8091) (_size!1822 (_ BitVec 32)) (_keys!6560 array!11946) (_values!4441 array!11944) (_vacant!1822 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3546)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22368 (= call!22371 (arrayContainsKey!0 (_keys!6560 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!156138 () Bool)

(declare-fun tp_is_empty!6333 () Bool)

(declare-fun e!156137 () Bool)

(declare-fun array_inv!3743 (array!11946) Bool)

(declare-fun array_inv!3744 (array!11944) Bool)

(assert (=> b!240558 (= e!156138 (and tp!22616 tp_is_empty!6333 (array_inv!3743 (_keys!6560 thiss!1504)) (array_inv!3744 (_values!4441 thiss!1504)) e!156137))))

(declare-fun b!240559 () Bool)

(declare-fun c!40052 () Bool)

(declare-datatypes ((SeekEntryResult!1058 0))(
  ( (MissingZero!1058 (index!6402 (_ BitVec 32))) (Found!1058 (index!6403 (_ BitVec 32))) (Intermediate!1058 (undefined!1870 Bool) (index!6404 (_ BitVec 32)) (x!24178 (_ BitVec 32))) (Undefined!1058) (MissingVacant!1058 (index!6405 (_ BitVec 32))) )
))
(declare-fun lt!121032 () SeekEntryResult!1058)

(get-info :version)

(assert (=> b!240559 (= c!40052 ((_ is MissingVacant!1058) lt!121032))))

(declare-fun e!156133 () Bool)

(assert (=> b!240559 (= e!156133 e!156132)))

(declare-fun b!240560 () Bool)

(declare-fun res!117975 () Bool)

(declare-fun e!156142 () Bool)

(assert (=> b!240560 (=> (not res!117975) (not e!156142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11946 (_ BitVec 32)) Bool)

(assert (=> b!240560 (= res!117975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6560 thiss!1504) (mask!10516 thiss!1504)))))

(declare-fun b!240561 () Bool)

(assert (=> b!240561 (= e!156142 false)))

(declare-fun lt!121030 () Bool)

(declare-datatypes ((List!3634 0))(
  ( (Nil!3631) (Cons!3630 (h!4286 (_ BitVec 64)) (t!8637 List!3634)) )
))
(declare-fun arrayNoDuplicates!0 (array!11946 (_ BitVec 32) List!3634) Bool)

(assert (=> b!240561 (= lt!121030 (arrayNoDuplicates!0 (_keys!6560 thiss!1504) #b00000000000000000000000000000000 Nil!3631))))

(declare-fun mapIsEmpty!10731 () Bool)

(declare-fun mapRes!10731 () Bool)

(assert (=> mapIsEmpty!10731 mapRes!10731))

(declare-fun b!240562 () Bool)

(declare-datatypes ((Unit!7399 0))(
  ( (Unit!7400) )
))
(declare-fun e!156143 () Unit!7399)

(declare-fun Unit!7401 () Unit!7399)

(assert (=> b!240562 (= e!156143 Unit!7401)))

(declare-fun lt!121033 () Unit!7399)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!343 (array!11946 array!11944 (_ BitVec 32) (_ BitVec 32) V!8091 V!8091 (_ BitVec 64) Int) Unit!7399)

(assert (=> b!240562 (= lt!121033 (lemmaInListMapThenSeekEntryOrOpenFindsIt!343 (_keys!6560 thiss!1504) (_values!4441 thiss!1504) (mask!10516 thiss!1504) (extraKeys!4195 thiss!1504) (zeroValue!4299 thiss!1504) (minValue!4299 thiss!1504) key!932 (defaultEntry!4458 thiss!1504)))))

(assert (=> b!240562 false))

(declare-fun b!240563 () Bool)

(declare-fun e!156135 () Bool)

(assert (=> b!240563 (= e!156137 (and e!156135 mapRes!10731))))

(declare-fun condMapEmpty!10731 () Bool)

(declare-fun mapDefault!10731 () ValueCell!2823)

(assert (=> b!240563 (= condMapEmpty!10731 (= (arr!5673 (_values!4441 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2823)) mapDefault!10731)))))

(declare-fun res!117976 () Bool)

(declare-fun e!156140 () Bool)

(assert (=> start!22980 (=> (not res!117976) (not e!156140))))

(declare-fun valid!1387 (LongMapFixedSize!3546) Bool)

(assert (=> start!22980 (= res!117976 (valid!1387 thiss!1504))))

(assert (=> start!22980 e!156140))

(assert (=> start!22980 e!156138))

(assert (=> start!22980 true))

(declare-fun mapNonEmpty!10731 () Bool)

(declare-fun tp!22617 () Bool)

(declare-fun e!156136 () Bool)

(assert (=> mapNonEmpty!10731 (= mapRes!10731 (and tp!22617 e!156136))))

(declare-fun mapValue!10731 () ValueCell!2823)

(declare-fun mapRest!10731 () (Array (_ BitVec 32) ValueCell!2823))

(declare-fun mapKey!10731 () (_ BitVec 32))

(assert (=> mapNonEmpty!10731 (= (arr!5673 (_values!4441 thiss!1504)) (store mapRest!10731 mapKey!10731 mapValue!10731))))

(declare-fun b!240564 () Bool)

(declare-fun lt!121029 () Unit!7399)

(assert (=> b!240564 (= e!156143 lt!121029)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!352 (array!11946 array!11944 (_ BitVec 32) (_ BitVec 32) V!8091 V!8091 (_ BitVec 64) Int) Unit!7399)

(assert (=> b!240564 (= lt!121029 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!352 (_keys!6560 thiss!1504) (_values!4441 thiss!1504) (mask!10516 thiss!1504) (extraKeys!4195 thiss!1504) (zeroValue!4299 thiss!1504) (minValue!4299 thiss!1504) key!932 (defaultEntry!4458 thiss!1504)))))

(declare-fun c!40053 () Bool)

(assert (=> b!240564 (= c!40053 ((_ is MissingZero!1058) lt!121032))))

(assert (=> b!240564 e!156133))

(declare-fun b!240565 () Bool)

(declare-fun res!117972 () Bool)

(declare-fun e!156131 () Bool)

(assert (=> b!240565 (=> (not res!117972) (not e!156131))))

(assert (=> b!240565 (= res!117972 (= (select (arr!5674 (_keys!6560 thiss!1504)) (index!6402 lt!121032)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240566 () Bool)

(declare-fun res!117973 () Bool)

(assert (=> b!240566 (= res!117973 (= (select (arr!5674 (_keys!6560 thiss!1504)) (index!6405 lt!121032)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!240566 (=> (not res!117973) (not e!156141))))

(declare-fun b!240567 () Bool)

(assert (=> b!240567 (= e!156135 tp_is_empty!6333)))

(declare-fun b!240568 () Bool)

(assert (=> b!240568 (= e!156131 (not call!22371))))

(declare-fun b!240569 () Bool)

(declare-fun res!117978 () Bool)

(assert (=> b!240569 (=> (not res!117978) (not e!156142))))

(assert (=> b!240569 (= res!117978 (arrayContainsKey!0 (_keys!6560 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240570 () Bool)

(declare-fun res!117981 () Bool)

(assert (=> b!240570 (=> (not res!117981) (not e!156142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!240570 (= res!117981 (validMask!0 (mask!10516 thiss!1504)))))

(declare-fun b!240571 () Bool)

(declare-fun e!156134 () Bool)

(assert (=> b!240571 (= e!156140 e!156134)))

(declare-fun res!117979 () Bool)

(assert (=> b!240571 (=> (not res!117979) (not e!156134))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!240571 (= res!117979 (or (= lt!121032 (MissingZero!1058 index!297)) (= lt!121032 (MissingVacant!1058 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11946 (_ BitVec 32)) SeekEntryResult!1058)

(assert (=> b!240571 (= lt!121032 (seekEntryOrOpen!0 key!932 (_keys!6560 thiss!1504) (mask!10516 thiss!1504)))))

(declare-fun b!240572 () Bool)

(declare-fun res!117977 () Bool)

(assert (=> b!240572 (=> (not res!117977) (not e!156131))))

(assert (=> b!240572 (= res!117977 call!22372)))

(assert (=> b!240572 (= e!156133 e!156131)))

(declare-fun bm!22369 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22369 (= call!22372 (inRange!0 (ite c!40053 (index!6402 lt!121032) (index!6405 lt!121032)) (mask!10516 thiss!1504)))))

(declare-fun b!240573 () Bool)

(assert (=> b!240573 (= e!156132 ((_ is Undefined!1058) lt!121032))))

(declare-fun b!240574 () Bool)

(declare-fun res!117974 () Bool)

(assert (=> b!240574 (=> (not res!117974) (not e!156140))))

(assert (=> b!240574 (= res!117974 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240575 () Bool)

(assert (=> b!240575 (= e!156136 tp_is_empty!6333)))

(declare-fun b!240576 () Bool)

(declare-fun res!117982 () Bool)

(assert (=> b!240576 (=> (not res!117982) (not e!156142))))

(assert (=> b!240576 (= res!117982 (and (= (size!6014 (_values!4441 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10516 thiss!1504))) (= (size!6015 (_keys!6560 thiss!1504)) (size!6014 (_values!4441 thiss!1504))) (bvsge (mask!10516 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4195 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4195 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!240577 () Bool)

(assert (=> b!240577 (= e!156134 e!156142)))

(declare-fun res!117980 () Bool)

(assert (=> b!240577 (=> (not res!117980) (not e!156142))))

(assert (=> b!240577 (= res!117980 (inRange!0 index!297 (mask!10516 thiss!1504)))))

(declare-fun lt!121031 () Unit!7399)

(assert (=> b!240577 (= lt!121031 e!156143)))

(declare-fun c!40054 () Bool)

(declare-datatypes ((tuple2!4726 0))(
  ( (tuple2!4727 (_1!2373 (_ BitVec 64)) (_2!2373 V!8091)) )
))
(declare-datatypes ((List!3635 0))(
  ( (Nil!3632) (Cons!3631 (h!4287 tuple2!4726) (t!8638 List!3635)) )
))
(declare-datatypes ((ListLongMap!3653 0))(
  ( (ListLongMap!3654 (toList!1842 List!3635)) )
))
(declare-fun contains!1724 (ListLongMap!3653 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1365 (array!11946 array!11944 (_ BitVec 32) (_ BitVec 32) V!8091 V!8091 (_ BitVec 32) Int) ListLongMap!3653)

(assert (=> b!240577 (= c!40054 (contains!1724 (getCurrentListMap!1365 (_keys!6560 thiss!1504) (_values!4441 thiss!1504) (mask!10516 thiss!1504) (extraKeys!4195 thiss!1504) (zeroValue!4299 thiss!1504) (minValue!4299 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4458 thiss!1504)) key!932))))

(assert (= (and start!22980 res!117976) b!240574))

(assert (= (and b!240574 res!117974) b!240571))

(assert (= (and b!240571 res!117979) b!240577))

(assert (= (and b!240577 c!40054) b!240562))

(assert (= (and b!240577 (not c!40054)) b!240564))

(assert (= (and b!240564 c!40053) b!240572))

(assert (= (and b!240564 (not c!40053)) b!240559))

(assert (= (and b!240572 res!117977) b!240565))

(assert (= (and b!240565 res!117972) b!240568))

(assert (= (and b!240559 c!40052) b!240557))

(assert (= (and b!240559 (not c!40052)) b!240573))

(assert (= (and b!240557 res!117983) b!240566))

(assert (= (and b!240566 res!117973) b!240556))

(assert (= (or b!240572 b!240557) bm!22369))

(assert (= (or b!240568 b!240556) bm!22368))

(assert (= (and b!240577 res!117980) b!240569))

(assert (= (and b!240569 res!117978) b!240570))

(assert (= (and b!240570 res!117981) b!240576))

(assert (= (and b!240576 res!117982) b!240560))

(assert (= (and b!240560 res!117975) b!240561))

(assert (= (and b!240563 condMapEmpty!10731) mapIsEmpty!10731))

(assert (= (and b!240563 (not condMapEmpty!10731)) mapNonEmpty!10731))

(assert (= (and mapNonEmpty!10731 ((_ is ValueCellFull!2823) mapValue!10731)) b!240575))

(assert (= (and b!240563 ((_ is ValueCellFull!2823) mapDefault!10731)) b!240567))

(assert (= b!240558 b!240563))

(assert (= start!22980 b!240558))

(declare-fun m!260075 () Bool)

(assert (=> b!240564 m!260075))

(declare-fun m!260077 () Bool)

(assert (=> b!240561 m!260077))

(declare-fun m!260079 () Bool)

(assert (=> b!240566 m!260079))

(declare-fun m!260081 () Bool)

(assert (=> b!240565 m!260081))

(declare-fun m!260083 () Bool)

(assert (=> start!22980 m!260083))

(declare-fun m!260085 () Bool)

(assert (=> b!240571 m!260085))

(declare-fun m!260087 () Bool)

(assert (=> b!240577 m!260087))

(declare-fun m!260089 () Bool)

(assert (=> b!240577 m!260089))

(assert (=> b!240577 m!260089))

(declare-fun m!260091 () Bool)

(assert (=> b!240577 m!260091))

(declare-fun m!260093 () Bool)

(assert (=> b!240569 m!260093))

(declare-fun m!260095 () Bool)

(assert (=> b!240570 m!260095))

(assert (=> bm!22368 m!260093))

(declare-fun m!260097 () Bool)

(assert (=> b!240562 m!260097))

(declare-fun m!260099 () Bool)

(assert (=> b!240560 m!260099))

(declare-fun m!260101 () Bool)

(assert (=> b!240558 m!260101))

(declare-fun m!260103 () Bool)

(assert (=> b!240558 m!260103))

(declare-fun m!260105 () Bool)

(assert (=> bm!22369 m!260105))

(declare-fun m!260107 () Bool)

(assert (=> mapNonEmpty!10731 m!260107))

(check-sat (not b!240564) (not b!240562) (not bm!22369) (not b!240569) (not b!240558) (not b!240571) (not bm!22368) (not b!240577) (not start!22980) (not mapNonEmpty!10731) (not b!240570) (not b!240560) (not b!240561) (not b_next!6471) b_and!13455 tp_is_empty!6333)
(check-sat b_and!13455 (not b_next!6471))
