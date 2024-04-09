; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23718 () Bool)

(assert start!23718)

(declare-fun b!249138 () Bool)

(declare-fun b_free!6617 () Bool)

(declare-fun b_next!6617 () Bool)

(assert (=> b!249138 (= b_free!6617 (not b_next!6617))))

(declare-fun tp!23108 () Bool)

(declare-fun b_and!13643 () Bool)

(assert (=> b!249138 (= tp!23108 b_and!13643)))

(declare-fun b!249122 () Bool)

(declare-fun res!122078 () Bool)

(declare-fun e!161610 () Bool)

(assert (=> b!249122 (=> (not res!122078) (not e!161610))))

(declare-datatypes ((V!8285 0))(
  ( (V!8286 (val!3284 Int)) )
))
(declare-datatypes ((ValueCell!2896 0))(
  ( (ValueCellFull!2896 (v!5341 V!8285)) (EmptyCell!2896) )
))
(declare-datatypes ((array!12270 0))(
  ( (array!12271 (arr!5819 (Array (_ BitVec 32) ValueCell!2896)) (size!6162 (_ BitVec 32))) )
))
(declare-datatypes ((array!12272 0))(
  ( (array!12273 (arr!5820 (Array (_ BitVec 32) (_ BitVec 64))) (size!6163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3692 0))(
  ( (LongMapFixedSize!3693 (defaultEntry!4607 Int) (mask!10768 (_ BitVec 32)) (extraKeys!4344 (_ BitVec 32)) (zeroValue!4448 V!8285) (minValue!4448 V!8285) (_size!1895 (_ BitVec 32)) (_keys!6735 array!12272) (_values!4590 array!12270) (_vacant!1895 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3692)

(declare-datatypes ((SeekEntryResult!1127 0))(
  ( (MissingZero!1127 (index!6678 (_ BitVec 32))) (Found!1127 (index!6679 (_ BitVec 32))) (Intermediate!1127 (undefined!1939 Bool) (index!6680 (_ BitVec 32)) (x!24625 (_ BitVec 32))) (Undefined!1127) (MissingVacant!1127 (index!6681 (_ BitVec 32))) )
))
(declare-fun lt!124817 () SeekEntryResult!1127)

(assert (=> b!249122 (= res!122078 (= (select (arr!5820 (_keys!6735 thiss!1504)) (index!6678 lt!124817)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249123 () Bool)

(declare-fun res!122074 () Bool)

(declare-fun e!161607 () Bool)

(assert (=> b!249123 (=> (not res!122074) (not e!161607))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!249123 (= res!122074 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!249124 () Bool)

(declare-datatypes ((Unit!7716 0))(
  ( (Unit!7717) )
))
(declare-fun e!161603 () Unit!7716)

(declare-fun lt!124816 () Unit!7716)

(assert (=> b!249124 (= e!161603 lt!124816)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!395 (array!12272 array!12270 (_ BitVec 32) (_ BitVec 32) V!8285 V!8285 (_ BitVec 64) Int) Unit!7716)

(assert (=> b!249124 (= lt!124816 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!395 (_keys!6735 thiss!1504) (_values!4590 thiss!1504) (mask!10768 thiss!1504) (extraKeys!4344 thiss!1504) (zeroValue!4448 thiss!1504) (minValue!4448 thiss!1504) key!932 (defaultEntry!4607 thiss!1504)))))

(declare-fun c!41759 () Bool)

(assert (=> b!249124 (= c!41759 (is-MissingZero!1127 lt!124817))))

(declare-fun e!161612 () Bool)

(assert (=> b!249124 e!161612))

(declare-fun call!23382 () Bool)

(declare-fun bm!23379 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23379 (= call!23382 (inRange!0 (ite c!41759 (index!6678 lt!124817) (index!6681 lt!124817)) (mask!10768 thiss!1504)))))

(declare-fun b!249125 () Bool)

(declare-fun e!161601 () Bool)

(declare-fun e!161599 () Bool)

(assert (=> b!249125 (= e!161601 e!161599)))

(declare-fun res!122073 () Bool)

(assert (=> b!249125 (= res!122073 call!23382)))

(assert (=> b!249125 (=> (not res!122073) (not e!161599))))

(declare-fun b!249126 () Bool)

(declare-fun e!161604 () Bool)

(declare-fun tp_is_empty!6479 () Bool)

(assert (=> b!249126 (= e!161604 tp_is_empty!6479)))

(declare-fun b!249127 () Bool)

(declare-fun res!122080 () Bool)

(assert (=> b!249127 (=> (not res!122080) (not e!161610))))

(assert (=> b!249127 (= res!122080 call!23382)))

(assert (=> b!249127 (= e!161612 e!161610)))

(declare-fun b!249128 () Bool)

(declare-fun res!122076 () Bool)

(assert (=> b!249128 (= res!122076 (= (select (arr!5820 (_keys!6735 thiss!1504)) (index!6681 lt!124817)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249128 (=> (not res!122076) (not e!161599))))

(declare-fun b!249129 () Bool)

(declare-fun e!161606 () Unit!7716)

(declare-fun Unit!7718 () Unit!7716)

(assert (=> b!249129 (= e!161606 Unit!7718)))

(declare-fun lt!124814 () Unit!7716)

(declare-fun lemmaArrayContainsKeyThenInListMap!198 (array!12272 array!12270 (_ BitVec 32) (_ BitVec 32) V!8285 V!8285 (_ BitVec 64) (_ BitVec 32) Int) Unit!7716)

(assert (=> b!249129 (= lt!124814 (lemmaArrayContainsKeyThenInListMap!198 (_keys!6735 thiss!1504) (_values!4590 thiss!1504) (mask!10768 thiss!1504) (extraKeys!4344 thiss!1504) (zeroValue!4448 thiss!1504) (minValue!4448 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4607 thiss!1504)))))

(assert (=> b!249129 false))

(declare-fun b!249130 () Bool)

(declare-fun e!161600 () Bool)

(assert (=> b!249130 (= e!161600 (= (size!6162 (_values!4590 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10768 thiss!1504))))))

(declare-fun res!122079 () Bool)

(assert (=> start!23718 (=> (not res!122079) (not e!161607))))

(declare-fun valid!1437 (LongMapFixedSize!3692) Bool)

(assert (=> start!23718 (= res!122079 (valid!1437 thiss!1504))))

(assert (=> start!23718 e!161607))

(declare-fun e!161611 () Bool)

(assert (=> start!23718 e!161611))

(assert (=> start!23718 true))

(declare-fun mapIsEmpty!11003 () Bool)

(declare-fun mapRes!11003 () Bool)

(assert (=> mapIsEmpty!11003 mapRes!11003))

(declare-fun b!249131 () Bool)

(declare-fun Unit!7719 () Unit!7716)

(assert (=> b!249131 (= e!161603 Unit!7719)))

(declare-fun lt!124818 () Unit!7716)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!395 (array!12272 array!12270 (_ BitVec 32) (_ BitVec 32) V!8285 V!8285 (_ BitVec 64) Int) Unit!7716)

(assert (=> b!249131 (= lt!124818 (lemmaInListMapThenSeekEntryOrOpenFindsIt!395 (_keys!6735 thiss!1504) (_values!4590 thiss!1504) (mask!10768 thiss!1504) (extraKeys!4344 thiss!1504) (zeroValue!4448 thiss!1504) (minValue!4448 thiss!1504) key!932 (defaultEntry!4607 thiss!1504)))))

(assert (=> b!249131 false))

(declare-fun b!249132 () Bool)

(declare-fun c!41760 () Bool)

(assert (=> b!249132 (= c!41760 (is-MissingVacant!1127 lt!124817))))

(assert (=> b!249132 (= e!161612 e!161601)))

(declare-fun b!249133 () Bool)

(declare-fun e!161605 () Bool)

(assert (=> b!249133 (= e!161605 (not e!161600))))

(declare-fun res!122077 () Bool)

(assert (=> b!249133 (=> res!122077 e!161600)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!249133 (= res!122077 (not (validMask!0 (mask!10768 thiss!1504))))))

(declare-fun lt!124819 () array!12272)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12272 (_ BitVec 32)) Bool)

(assert (=> b!249133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124819 (mask!10768 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!124813 () Unit!7716)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12272 (_ BitVec 32) (_ BitVec 32)) Unit!7716)

(assert (=> b!249133 (= lt!124813 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6735 thiss!1504) index!297 (mask!10768 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12272 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!249133 (= (arrayCountValidKeys!0 lt!124819 #b00000000000000000000000000000000 (size!6163 (_keys!6735 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6735 thiss!1504) #b00000000000000000000000000000000 (size!6163 (_keys!6735 thiss!1504)))))))

(declare-fun lt!124815 () Unit!7716)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12272 (_ BitVec 32) (_ BitVec 64)) Unit!7716)

(assert (=> b!249133 (= lt!124815 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6735 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3735 0))(
  ( (Nil!3732) (Cons!3731 (h!4389 (_ BitVec 64)) (t!8772 List!3735)) )
))
(declare-fun arrayNoDuplicates!0 (array!12272 (_ BitVec 32) List!3735) Bool)

(assert (=> b!249133 (arrayNoDuplicates!0 lt!124819 #b00000000000000000000000000000000 Nil!3732)))

(assert (=> b!249133 (= lt!124819 (array!12273 (store (arr!5820 (_keys!6735 thiss!1504)) index!297 key!932) (size!6163 (_keys!6735 thiss!1504))))))

(declare-fun lt!124812 () Unit!7716)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12272 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3735) Unit!7716)

(assert (=> b!249133 (= lt!124812 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6735 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3732))))

(declare-fun lt!124810 () Unit!7716)

(assert (=> b!249133 (= lt!124810 e!161606)))

(declare-fun c!41762 () Bool)

(declare-fun arrayContainsKey!0 (array!12272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!249133 (= c!41762 (arrayContainsKey!0 (_keys!6735 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249134 () Bool)

(declare-fun Unit!7720 () Unit!7716)

(assert (=> b!249134 (= e!161606 Unit!7720)))

(declare-fun b!249135 () Bool)

(declare-fun e!161602 () Bool)

(assert (=> b!249135 (= e!161607 e!161602)))

(declare-fun res!122075 () Bool)

(assert (=> b!249135 (=> (not res!122075) (not e!161602))))

(assert (=> b!249135 (= res!122075 (or (= lt!124817 (MissingZero!1127 index!297)) (= lt!124817 (MissingVacant!1127 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12272 (_ BitVec 32)) SeekEntryResult!1127)

(assert (=> b!249135 (= lt!124817 (seekEntryOrOpen!0 key!932 (_keys!6735 thiss!1504) (mask!10768 thiss!1504)))))

(declare-fun mapNonEmpty!11003 () Bool)

(declare-fun tp!23107 () Bool)

(assert (=> mapNonEmpty!11003 (= mapRes!11003 (and tp!23107 e!161604))))

(declare-fun mapValue!11003 () ValueCell!2896)

(declare-fun mapRest!11003 () (Array (_ BitVec 32) ValueCell!2896))

(declare-fun mapKey!11003 () (_ BitVec 32))

(assert (=> mapNonEmpty!11003 (= (arr!5819 (_values!4590 thiss!1504)) (store mapRest!11003 mapKey!11003 mapValue!11003))))

(declare-fun bm!23380 () Bool)

(declare-fun call!23383 () Bool)

(assert (=> bm!23380 (= call!23383 (arrayContainsKey!0 (_keys!6735 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249136 () Bool)

(assert (=> b!249136 (= e!161602 e!161605)))

(declare-fun res!122072 () Bool)

(assert (=> b!249136 (=> (not res!122072) (not e!161605))))

(assert (=> b!249136 (= res!122072 (inRange!0 index!297 (mask!10768 thiss!1504)))))

(declare-fun lt!124811 () Unit!7716)

(assert (=> b!249136 (= lt!124811 e!161603)))

(declare-fun c!41761 () Bool)

(declare-datatypes ((tuple2!4830 0))(
  ( (tuple2!4831 (_1!2425 (_ BitVec 64)) (_2!2425 V!8285)) )
))
(declare-datatypes ((List!3736 0))(
  ( (Nil!3733) (Cons!3732 (h!4390 tuple2!4830) (t!8773 List!3736)) )
))
(declare-datatypes ((ListLongMap!3757 0))(
  ( (ListLongMap!3758 (toList!1894 List!3736)) )
))
(declare-fun contains!1805 (ListLongMap!3757 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1417 (array!12272 array!12270 (_ BitVec 32) (_ BitVec 32) V!8285 V!8285 (_ BitVec 32) Int) ListLongMap!3757)

(assert (=> b!249136 (= c!41761 (contains!1805 (getCurrentListMap!1417 (_keys!6735 thiss!1504) (_values!4590 thiss!1504) (mask!10768 thiss!1504) (extraKeys!4344 thiss!1504) (zeroValue!4448 thiss!1504) (minValue!4448 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4607 thiss!1504)) key!932))))

(declare-fun b!249137 () Bool)

(assert (=> b!249137 (= e!161610 (not call!23383))))

(declare-fun e!161613 () Bool)

(declare-fun array_inv!3831 (array!12272) Bool)

(declare-fun array_inv!3832 (array!12270) Bool)

(assert (=> b!249138 (= e!161611 (and tp!23108 tp_is_empty!6479 (array_inv!3831 (_keys!6735 thiss!1504)) (array_inv!3832 (_values!4590 thiss!1504)) e!161613))))

(declare-fun b!249139 () Bool)

(declare-fun e!161608 () Bool)

(assert (=> b!249139 (= e!161613 (and e!161608 mapRes!11003))))

(declare-fun condMapEmpty!11003 () Bool)

(declare-fun mapDefault!11003 () ValueCell!2896)

