; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24112 () Bool)

(assert start!24112)

(declare-fun b!252074 () Bool)

(declare-fun b_free!6647 () Bool)

(declare-fun b_next!6647 () Bool)

(assert (=> b!252074 (= b_free!6647 (not b_next!6647))))

(declare-fun tp!23217 () Bool)

(declare-fun b_and!13699 () Bool)

(assert (=> b!252074 (= tp!23217 b_and!13699)))

(declare-fun b!252073 () Bool)

(declare-fun e!163485 () Bool)

(declare-datatypes ((V!8325 0))(
  ( (V!8326 (val!3299 Int)) )
))
(declare-datatypes ((ValueCell!2911 0))(
  ( (ValueCellFull!2911 (v!5365 V!8325)) (EmptyCell!2911) )
))
(declare-datatypes ((array!12340 0))(
  ( (array!12341 (arr!5849 (Array (_ BitVec 32) ValueCell!2911)) (size!6196 (_ BitVec 32))) )
))
(declare-datatypes ((array!12342 0))(
  ( (array!12343 (arr!5850 (Array (_ BitVec 32) (_ BitVec 64))) (size!6197 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3722 0))(
  ( (LongMapFixedSize!3723 (defaultEntry!4658 Int) (mask!10870 (_ BitVec 32)) (extraKeys!4395 (_ BitVec 32)) (zeroValue!4499 V!8325) (minValue!4499 V!8325) (_size!1910 (_ BitVec 32)) (_keys!6804 array!12342) (_values!4641 array!12340) (_vacant!1910 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3722)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12342 (_ BitVec 32)) Bool)

(assert (=> b!252073 (= e!163485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6804 thiss!1504) (mask!10870 thiss!1504)))))

(declare-fun tp_is_empty!6509 () Bool)

(declare-fun e!163479 () Bool)

(declare-fun e!163475 () Bool)

(declare-fun array_inv!3857 (array!12342) Bool)

(declare-fun array_inv!3858 (array!12340) Bool)

(assert (=> b!252074 (= e!163475 (and tp!23217 tp_is_empty!6509 (array_inv!3857 (_keys!6804 thiss!1504)) (array_inv!3858 (_values!4641 thiss!1504)) e!163479))))

(declare-fun b!252075 () Bool)

(declare-fun e!163487 () Bool)

(assert (=> b!252075 (= e!163487 (not e!163485))))

(declare-fun res!123412 () Bool)

(assert (=> b!252075 (=> res!123412 e!163485)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252075 (= res!123412 (not (validMask!0 (mask!10870 thiss!1504))))))

(declare-fun lt!126385 () array!12342)

(assert (=> b!252075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126385 (mask!10870 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7801 0))(
  ( (Unit!7802) )
))
(declare-fun lt!126380 () Unit!7801)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12342 (_ BitVec 32) (_ BitVec 32)) Unit!7801)

(assert (=> b!252075 (= lt!126380 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6804 thiss!1504) index!297 (mask!10870 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12342 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252075 (= (arrayCountValidKeys!0 lt!126385 #b00000000000000000000000000000000 (size!6197 (_keys!6804 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6804 thiss!1504) #b00000000000000000000000000000000 (size!6197 (_keys!6804 thiss!1504)))))))

(declare-fun lt!126383 () Unit!7801)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12342 (_ BitVec 32) (_ BitVec 64)) Unit!7801)

(assert (=> b!252075 (= lt!126383 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6804 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3758 0))(
  ( (Nil!3755) (Cons!3754 (h!4416 (_ BitVec 64)) (t!8805 List!3758)) )
))
(declare-fun arrayNoDuplicates!0 (array!12342 (_ BitVec 32) List!3758) Bool)

(assert (=> b!252075 (arrayNoDuplicates!0 lt!126385 #b00000000000000000000000000000000 Nil!3755)))

(assert (=> b!252075 (= lt!126385 (array!12343 (store (arr!5850 (_keys!6804 thiss!1504)) index!297 key!932) (size!6197 (_keys!6804 thiss!1504))))))

(declare-fun lt!126389 () Unit!7801)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3758) Unit!7801)

(assert (=> b!252075 (= lt!126389 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6804 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3755))))

(declare-fun lt!126381 () Unit!7801)

(declare-fun e!163476 () Unit!7801)

(assert (=> b!252075 (= lt!126381 e!163476)))

(declare-fun c!42448 () Bool)

(declare-fun arrayContainsKey!0 (array!12342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252075 (= c!42448 (arrayContainsKey!0 (_keys!6804 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1141 0))(
  ( (MissingZero!1141 (index!6734 (_ BitVec 32))) (Found!1141 (index!6735 (_ BitVec 32))) (Intermediate!1141 (undefined!1953 Bool) (index!6736 (_ BitVec 32)) (x!24761 (_ BitVec 32))) (Undefined!1141) (MissingVacant!1141 (index!6737 (_ BitVec 32))) )
))
(declare-fun lt!126387 () SeekEntryResult!1141)

(declare-fun bm!23726 () Bool)

(declare-fun call!23730 () Bool)

(declare-fun c!42445 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23726 (= call!23730 (inRange!0 (ite c!42445 (index!6734 lt!126387) (index!6737 lt!126387)) (mask!10870 thiss!1504)))))

(declare-fun b!252076 () Bool)

(declare-fun res!123411 () Bool)

(assert (=> b!252076 (= res!123411 (= (select (arr!5850 (_keys!6804 thiss!1504)) (index!6737 lt!126387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!163483 () Bool)

(assert (=> b!252076 (=> (not res!123411) (not e!163483))))

(declare-fun b!252077 () Bool)

(declare-fun res!123416 () Bool)

(declare-fun e!163478 () Bool)

(assert (=> b!252077 (=> (not res!123416) (not e!163478))))

(assert (=> b!252077 (= res!123416 call!23730)))

(declare-fun e!163480 () Bool)

(assert (=> b!252077 (= e!163480 e!163478)))

(declare-fun b!252078 () Bool)

(declare-fun e!163477 () Bool)

(assert (=> b!252078 (= e!163477 e!163487)))

(declare-fun res!123409 () Bool)

(assert (=> b!252078 (=> (not res!123409) (not e!163487))))

(assert (=> b!252078 (= res!123409 (inRange!0 index!297 (mask!10870 thiss!1504)))))

(declare-fun lt!126388 () Unit!7801)

(declare-fun e!163481 () Unit!7801)

(assert (=> b!252078 (= lt!126388 e!163481)))

(declare-fun c!42447 () Bool)

(declare-datatypes ((tuple2!4854 0))(
  ( (tuple2!4855 (_1!2437 (_ BitVec 64)) (_2!2437 V!8325)) )
))
(declare-datatypes ((List!3759 0))(
  ( (Nil!3756) (Cons!3755 (h!4417 tuple2!4854) (t!8806 List!3759)) )
))
(declare-datatypes ((ListLongMap!3781 0))(
  ( (ListLongMap!3782 (toList!1906 List!3759)) )
))
(declare-fun contains!1826 (ListLongMap!3781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1429 (array!12342 array!12340 (_ BitVec 32) (_ BitVec 32) V!8325 V!8325 (_ BitVec 32) Int) ListLongMap!3781)

(assert (=> b!252078 (= c!42447 (contains!1826 (getCurrentListMap!1429 (_keys!6804 thiss!1504) (_values!4641 thiss!1504) (mask!10870 thiss!1504) (extraKeys!4395 thiss!1504) (zeroValue!4499 thiss!1504) (minValue!4499 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4658 thiss!1504)) key!932))))

(declare-fun res!123417 () Bool)

(declare-fun e!163482 () Bool)

(assert (=> start!24112 (=> (not res!123417) (not e!163482))))

(declare-fun valid!1448 (LongMapFixedSize!3722) Bool)

(assert (=> start!24112 (= res!123417 (valid!1448 thiss!1504))))

(assert (=> start!24112 e!163482))

(assert (=> start!24112 e!163475))

(assert (=> start!24112 true))

(declare-fun b!252079 () Bool)

(declare-fun e!163489 () Bool)

(assert (=> b!252079 (= e!163489 (is-Undefined!1141 lt!126387))))

(declare-fun b!252080 () Bool)

(declare-fun c!42446 () Bool)

(assert (=> b!252080 (= c!42446 (is-MissingVacant!1141 lt!126387))))

(assert (=> b!252080 (= e!163480 e!163489)))

(declare-fun b!252081 () Bool)

(declare-fun Unit!7803 () Unit!7801)

(assert (=> b!252081 (= e!163476 Unit!7803)))

(declare-fun lt!126382 () Unit!7801)

(declare-fun lemmaArrayContainsKeyThenInListMap!209 (array!12342 array!12340 (_ BitVec 32) (_ BitVec 32) V!8325 V!8325 (_ BitVec 64) (_ BitVec 32) Int) Unit!7801)

(assert (=> b!252081 (= lt!126382 (lemmaArrayContainsKeyThenInListMap!209 (_keys!6804 thiss!1504) (_values!4641 thiss!1504) (mask!10870 thiss!1504) (extraKeys!4395 thiss!1504) (zeroValue!4499 thiss!1504) (minValue!4499 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4658 thiss!1504)))))

(assert (=> b!252081 false))

(declare-fun b!252082 () Bool)

(declare-fun e!163484 () Bool)

(assert (=> b!252082 (= e!163484 tp_is_empty!6509)))

(declare-fun b!252083 () Bool)

(assert (=> b!252083 (= e!163489 e!163483)))

(declare-fun res!123415 () Bool)

(assert (=> b!252083 (= res!123415 call!23730)))

(assert (=> b!252083 (=> (not res!123415) (not e!163483))))

(declare-fun b!252084 () Bool)

(declare-fun call!23729 () Bool)

(assert (=> b!252084 (= e!163478 (not call!23729))))

(declare-fun mapIsEmpty!11067 () Bool)

(declare-fun mapRes!11067 () Bool)

(assert (=> mapIsEmpty!11067 mapRes!11067))

(declare-fun b!252085 () Bool)

(declare-fun Unit!7804 () Unit!7801)

(assert (=> b!252085 (= e!163476 Unit!7804)))

(declare-fun b!252086 () Bool)

(declare-fun e!163486 () Bool)

(assert (=> b!252086 (= e!163486 tp_is_empty!6509)))

(declare-fun b!252087 () Bool)

(declare-fun res!123410 () Bool)

(assert (=> b!252087 (=> (not res!123410) (not e!163478))))

(assert (=> b!252087 (= res!123410 (= (select (arr!5850 (_keys!6804 thiss!1504)) (index!6734 lt!126387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252088 () Bool)

(declare-fun res!123413 () Bool)

(assert (=> b!252088 (=> (not res!123413) (not e!163482))))

(assert (=> b!252088 (= res!123413 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!11067 () Bool)

(declare-fun tp!23216 () Bool)

(assert (=> mapNonEmpty!11067 (= mapRes!11067 (and tp!23216 e!163486))))

(declare-fun mapKey!11067 () (_ BitVec 32))

(declare-fun mapValue!11067 () ValueCell!2911)

(declare-fun mapRest!11067 () (Array (_ BitVec 32) ValueCell!2911))

(assert (=> mapNonEmpty!11067 (= (arr!5849 (_values!4641 thiss!1504)) (store mapRest!11067 mapKey!11067 mapValue!11067))))

(declare-fun b!252089 () Bool)

(assert (=> b!252089 (= e!163479 (and e!163484 mapRes!11067))))

(declare-fun condMapEmpty!11067 () Bool)

(declare-fun mapDefault!11067 () ValueCell!2911)

