; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23096 () Bool)

(assert start!23096)

(declare-fun b!241932 () Bool)

(declare-fun b_free!6499 () Bool)

(declare-fun b_next!6499 () Bool)

(assert (=> b!241932 (= b_free!6499 (not b_next!6499))))

(declare-fun tp!22707 () Bool)

(declare-fun b_and!13491 () Bool)

(assert (=> b!241932 (= tp!22707 b_and!13491)))

(declare-fun b!241915 () Bool)

(declare-fun c!40343 () Bool)

(declare-datatypes ((SeekEntryResult!1071 0))(
  ( (MissingZero!1071 (index!6454 (_ BitVec 32))) (Found!1071 (index!6455 (_ BitVec 32))) (Intermediate!1071 (undefined!1883 Bool) (index!6456 (_ BitVec 32)) (x!24259 (_ BitVec 32))) (Undefined!1071) (MissingVacant!1071 (index!6457 (_ BitVec 32))) )
))
(declare-fun lt!121601 () SeekEntryResult!1071)

(assert (=> b!241915 (= c!40343 (is-MissingVacant!1071 lt!121601))))

(declare-fun e!157010 () Bool)

(declare-fun e!157021 () Bool)

(assert (=> b!241915 (= e!157010 e!157021)))

(declare-fun b!241916 () Bool)

(declare-fun res!118571 () Bool)

(declare-fun e!157014 () Bool)

(assert (=> b!241916 (=> (not res!118571) (not e!157014))))

(declare-datatypes ((V!8129 0))(
  ( (V!8130 (val!3225 Int)) )
))
(declare-datatypes ((ValueCell!2837 0))(
  ( (ValueCellFull!2837 (v!5261 V!8129)) (EmptyCell!2837) )
))
(declare-datatypes ((array!12004 0))(
  ( (array!12005 (arr!5701 (Array (_ BitVec 32) ValueCell!2837)) (size!6043 (_ BitVec 32))) )
))
(declare-datatypes ((array!12006 0))(
  ( (array!12007 (arr!5702 (Array (_ BitVec 32) (_ BitVec 64))) (size!6044 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3574 0))(
  ( (LongMapFixedSize!3575 (defaultEntry!4484 Int) (mask!10561 (_ BitVec 32)) (extraKeys!4221 (_ BitVec 32)) (zeroValue!4325 V!8129) (minValue!4325 V!8129) (_size!1836 (_ BitVec 32)) (_keys!6591 array!12006) (_values!4467 array!12004) (_vacant!1836 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3574)

(assert (=> b!241916 (= res!118571 (= (select (arr!5702 (_keys!6591 thiss!1504)) (index!6454 lt!121601)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!241917 () Bool)

(declare-fun e!157011 () Bool)

(declare-fun e!157022 () Bool)

(assert (=> b!241917 (= e!157011 e!157022)))

(declare-fun res!118564 () Bool)

(assert (=> b!241917 (=> (not res!118564) (not e!157022))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!241917 (= res!118564 (inRange!0 index!297 (mask!10561 thiss!1504)))))

(declare-datatypes ((Unit!7453 0))(
  ( (Unit!7454) )
))
(declare-fun lt!121602 () Unit!7453)

(declare-fun e!157017 () Unit!7453)

(assert (=> b!241917 (= lt!121602 e!157017)))

(declare-fun c!40342 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4746 0))(
  ( (tuple2!4747 (_1!2383 (_ BitVec 64)) (_2!2383 V!8129)) )
))
(declare-datatypes ((List!3648 0))(
  ( (Nil!3645) (Cons!3644 (h!4301 tuple2!4746) (t!8655 List!3648)) )
))
(declare-datatypes ((ListLongMap!3673 0))(
  ( (ListLongMap!3674 (toList!1852 List!3648)) )
))
(declare-fun contains!1736 (ListLongMap!3673 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1375 (array!12006 array!12004 (_ BitVec 32) (_ BitVec 32) V!8129 V!8129 (_ BitVec 32) Int) ListLongMap!3673)

(assert (=> b!241917 (= c!40342 (contains!1736 (getCurrentListMap!1375 (_keys!6591 thiss!1504) (_values!4467 thiss!1504) (mask!10561 thiss!1504) (extraKeys!4221 thiss!1504) (zeroValue!4325 thiss!1504) (minValue!4325 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4484 thiss!1504)) key!932))))

(declare-fun b!241918 () Bool)

(declare-fun Unit!7455 () Unit!7453)

(assert (=> b!241918 (= e!157017 Unit!7455)))

(declare-fun lt!121599 () Unit!7453)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!353 (array!12006 array!12004 (_ BitVec 32) (_ BitVec 32) V!8129 V!8129 (_ BitVec 64) Int) Unit!7453)

(assert (=> b!241918 (= lt!121599 (lemmaInListMapThenSeekEntryOrOpenFindsIt!353 (_keys!6591 thiss!1504) (_values!4467 thiss!1504) (mask!10561 thiss!1504) (extraKeys!4221 thiss!1504) (zeroValue!4325 thiss!1504) (minValue!4325 thiss!1504) key!932 (defaultEntry!4484 thiss!1504)))))

(assert (=> b!241918 false))

(declare-fun bm!22524 () Bool)

(declare-fun call!22528 () Bool)

(declare-fun arrayContainsKey!0 (array!12006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22524 (= call!22528 (arrayContainsKey!0 (_keys!6591 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241919 () Bool)

(declare-fun e!157019 () Unit!7453)

(declare-fun Unit!7456 () Unit!7453)

(assert (=> b!241919 (= e!157019 Unit!7456)))

(declare-fun b!241920 () Bool)

(declare-fun e!157023 () Bool)

(assert (=> b!241920 (= e!157023 e!157011)))

(declare-fun res!118567 () Bool)

(assert (=> b!241920 (=> (not res!118567) (not e!157011))))

(assert (=> b!241920 (= res!118567 (or (= lt!121601 (MissingZero!1071 index!297)) (= lt!121601 (MissingVacant!1071 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12006 (_ BitVec 32)) SeekEntryResult!1071)

(assert (=> b!241920 (= lt!121601 (seekEntryOrOpen!0 key!932 (_keys!6591 thiss!1504) (mask!10561 thiss!1504)))))

(declare-fun bm!22525 () Bool)

(declare-fun c!40341 () Bool)

(declare-fun call!22527 () Bool)

(assert (=> bm!22525 (= call!22527 (inRange!0 (ite c!40341 (index!6454 lt!121601) (index!6457 lt!121601)) (mask!10561 thiss!1504)))))

(declare-fun b!241921 () Bool)

(declare-fun res!118568 () Bool)

(assert (=> b!241921 (=> (not res!118568) (not e!157014))))

(assert (=> b!241921 (= res!118568 call!22527)))

(assert (=> b!241921 (= e!157010 e!157014)))

(declare-fun b!241922 () Bool)

(declare-fun e!157018 () Bool)

(declare-datatypes ((List!3649 0))(
  ( (Nil!3646) (Cons!3645 (h!4302 (_ BitVec 64)) (t!8656 List!3649)) )
))
(declare-fun noDuplicate!87 (List!3649) Bool)

(assert (=> b!241922 (= e!157018 (not (noDuplicate!87 Nil!3646)))))

(declare-fun b!241923 () Bool)

(declare-fun e!157013 () Bool)

(declare-fun tp_is_empty!6361 () Bool)

(assert (=> b!241923 (= e!157013 tp_is_empty!6361)))

(declare-fun b!241924 () Bool)

(assert (=> b!241924 (= e!157021 (is-Undefined!1071 lt!121601))))

(declare-fun b!241925 () Bool)

(assert (=> b!241925 (= e!157014 (not call!22528))))

(declare-fun mapNonEmpty!10780 () Bool)

(declare-fun mapRes!10780 () Bool)

(declare-fun tp!22708 () Bool)

(assert (=> mapNonEmpty!10780 (= mapRes!10780 (and tp!22708 e!157013))))

(declare-fun mapValue!10780 () ValueCell!2837)

(declare-fun mapKey!10780 () (_ BitVec 32))

(declare-fun mapRest!10780 () (Array (_ BitVec 32) ValueCell!2837))

(assert (=> mapNonEmpty!10780 (= (arr!5701 (_values!4467 thiss!1504)) (store mapRest!10780 mapKey!10780 mapValue!10780))))

(declare-fun mapIsEmpty!10780 () Bool)

(assert (=> mapIsEmpty!10780 mapRes!10780))

(declare-fun b!241926 () Bool)

(declare-fun e!157015 () Bool)

(assert (=> b!241926 (= e!157015 (not call!22528))))

(declare-fun b!241927 () Bool)

(declare-fun lt!121598 () Unit!7453)

(assert (=> b!241927 (= e!157017 lt!121598)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!359 (array!12006 array!12004 (_ BitVec 32) (_ BitVec 32) V!8129 V!8129 (_ BitVec 64) Int) Unit!7453)

(assert (=> b!241927 (= lt!121598 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!359 (_keys!6591 thiss!1504) (_values!4467 thiss!1504) (mask!10561 thiss!1504) (extraKeys!4221 thiss!1504) (zeroValue!4325 thiss!1504) (minValue!4325 thiss!1504) key!932 (defaultEntry!4484 thiss!1504)))))

(assert (=> b!241927 (= c!40341 (is-MissingZero!1071 lt!121601))))

(assert (=> b!241927 e!157010))

(declare-fun b!241928 () Bool)

(declare-fun res!118565 () Bool)

(assert (=> b!241928 (= res!118565 (= (select (arr!5702 (_keys!6591 thiss!1504)) (index!6457 lt!121601)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!241928 (=> (not res!118565) (not e!157015))))

(declare-fun b!241929 () Bool)

(declare-fun e!157016 () Bool)

(declare-fun e!157020 () Bool)

(assert (=> b!241929 (= e!157016 (and e!157020 mapRes!10780))))

(declare-fun condMapEmpty!10780 () Bool)

(declare-fun mapDefault!10780 () ValueCell!2837)

