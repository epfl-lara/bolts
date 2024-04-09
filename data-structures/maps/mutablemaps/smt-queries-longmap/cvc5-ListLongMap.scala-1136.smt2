; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23460 () Bool)

(assert start!23460)

(declare-fun b!246237 () Bool)

(declare-fun b_free!6565 () Bool)

(declare-fun b_next!6565 () Bool)

(assert (=> b!246237 (= b_free!6565 (not b_next!6565))))

(declare-fun tp!22933 () Bool)

(declare-fun b_and!13579 () Bool)

(assert (=> b!246237 (= tp!22933 b_and!13579)))

(declare-fun b!246222 () Bool)

(declare-datatypes ((Unit!7598 0))(
  ( (Unit!7599) )
))
(declare-fun e!159738 () Unit!7598)

(declare-fun Unit!7600 () Unit!7598)

(assert (=> b!246222 (= e!159738 Unit!7600)))

(declare-fun lt!123369 () Unit!7598)

(declare-datatypes ((V!8217 0))(
  ( (V!8218 (val!3258 Int)) )
))
(declare-datatypes ((ValueCell!2870 0))(
  ( (ValueCellFull!2870 (v!5309 V!8217)) (EmptyCell!2870) )
))
(declare-datatypes ((array!12154 0))(
  ( (array!12155 (arr!5767 (Array (_ BitVec 32) ValueCell!2870)) (size!6110 (_ BitVec 32))) )
))
(declare-datatypes ((array!12156 0))(
  ( (array!12157 (arr!5768 (Array (_ BitVec 32) (_ BitVec 64))) (size!6111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3640 0))(
  ( (LongMapFixedSize!3641 (defaultEntry!4557 Int) (mask!10680 (_ BitVec 32)) (extraKeys!4294 (_ BitVec 32)) (zeroValue!4398 V!8217) (minValue!4398 V!8217) (_size!1869 (_ BitVec 32)) (_keys!6676 array!12156) (_values!4540 array!12154) (_vacant!1869 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3640)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!177 (array!12156 array!12154 (_ BitVec 32) (_ BitVec 32) V!8217 V!8217 (_ BitVec 64) (_ BitVec 32) Int) Unit!7598)

(assert (=> b!246222 (= lt!123369 (lemmaArrayContainsKeyThenInListMap!177 (_keys!6676 thiss!1504) (_values!4540 thiss!1504) (mask!10680 thiss!1504) (extraKeys!4294 thiss!1504) (zeroValue!4398 thiss!1504) (minValue!4398 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4557 thiss!1504)))))

(assert (=> b!246222 false))

(declare-fun bm!23009 () Bool)

(declare-fun call!23013 () Bool)

(declare-fun arrayContainsKey!0 (array!12156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23009 (= call!23013 (arrayContainsKey!0 (_keys!6676 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!246223 () Bool)

(declare-fun e!159740 () Bool)

(declare-fun e!159743 () Bool)

(assert (=> b!246223 (= e!159740 e!159743)))

(declare-fun res!120756 () Bool)

(assert (=> b!246223 (=> (not res!120756) (not e!159743))))

(declare-datatypes ((SeekEntryResult!1103 0))(
  ( (MissingZero!1103 (index!6582 (_ BitVec 32))) (Found!1103 (index!6583 (_ BitVec 32))) (Intermediate!1103 (undefined!1915 Bool) (index!6584 (_ BitVec 32)) (x!24477 (_ BitVec 32))) (Undefined!1103) (MissingVacant!1103 (index!6585 (_ BitVec 32))) )
))
(declare-fun lt!123365 () SeekEntryResult!1103)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!246223 (= res!120756 (or (= lt!123365 (MissingZero!1103 index!297)) (= lt!123365 (MissingVacant!1103 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12156 (_ BitVec 32)) SeekEntryResult!1103)

(assert (=> b!246223 (= lt!123365 (seekEntryOrOpen!0 key!932 (_keys!6676 thiss!1504) (mask!10680 thiss!1504)))))

(declare-fun b!246224 () Bool)

(declare-fun e!159747 () Bool)

(assert (=> b!246224 (= e!159743 e!159747)))

(declare-fun res!120760 () Bool)

(assert (=> b!246224 (=> (not res!120760) (not e!159747))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!246224 (= res!120760 (inRange!0 index!297 (mask!10680 thiss!1504)))))

(declare-fun lt!123364 () Unit!7598)

(declare-fun e!159737 () Unit!7598)

(assert (=> b!246224 (= lt!123364 e!159737)))

(declare-fun c!41157 () Bool)

(declare-datatypes ((tuple2!4790 0))(
  ( (tuple2!4791 (_1!2405 (_ BitVec 64)) (_2!2405 V!8217)) )
))
(declare-datatypes ((List!3696 0))(
  ( (Nil!3693) (Cons!3692 (h!4350 tuple2!4790) (t!8721 List!3696)) )
))
(declare-datatypes ((ListLongMap!3717 0))(
  ( (ListLongMap!3718 (toList!1874 List!3696)) )
))
(declare-fun contains!1779 (ListLongMap!3717 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1397 (array!12156 array!12154 (_ BitVec 32) (_ BitVec 32) V!8217 V!8217 (_ BitVec 32) Int) ListLongMap!3717)

(assert (=> b!246224 (= c!41157 (contains!1779 (getCurrentListMap!1397 (_keys!6676 thiss!1504) (_values!4540 thiss!1504) (mask!10680 thiss!1504) (extraKeys!4294 thiss!1504) (zeroValue!4398 thiss!1504) (minValue!4398 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4557 thiss!1504)) key!932))))

(declare-fun b!246225 () Bool)

(declare-fun e!159746 () Bool)

(assert (=> b!246225 (= e!159747 (not e!159746))))

(declare-fun res!120754 () Bool)

(assert (=> b!246225 (=> res!120754 e!159746)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!246225 (= res!120754 (not (validMask!0 (mask!10680 thiss!1504))))))

(declare-fun lt!123366 () array!12156)

(declare-fun arrayCountValidKeys!0 (array!12156 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!246225 (= (arrayCountValidKeys!0 lt!123366 #b00000000000000000000000000000000 (size!6111 (_keys!6676 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6676 thiss!1504) #b00000000000000000000000000000000 (size!6111 (_keys!6676 thiss!1504)))))))

(declare-fun lt!123362 () Unit!7598)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12156 (_ BitVec 32) (_ BitVec 64)) Unit!7598)

(assert (=> b!246225 (= lt!123362 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6676 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3697 0))(
  ( (Nil!3694) (Cons!3693 (h!4351 (_ BitVec 64)) (t!8722 List!3697)) )
))
(declare-fun arrayNoDuplicates!0 (array!12156 (_ BitVec 32) List!3697) Bool)

(assert (=> b!246225 (arrayNoDuplicates!0 lt!123366 #b00000000000000000000000000000000 Nil!3694)))

(assert (=> b!246225 (= lt!123366 (array!12157 (store (arr!5768 (_keys!6676 thiss!1504)) index!297 key!932) (size!6111 (_keys!6676 thiss!1504))))))

(declare-fun lt!123367 () Unit!7598)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12156 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3697) Unit!7598)

(assert (=> b!246225 (= lt!123367 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6676 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3694))))

(declare-fun lt!123363 () Unit!7598)

(assert (=> b!246225 (= lt!123363 e!159738)))

(declare-fun c!41156 () Bool)

(assert (=> b!246225 (= c!41156 (arrayContainsKey!0 (_keys!6676 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10907 () Bool)

(declare-fun mapRes!10907 () Bool)

(declare-fun tp!22934 () Bool)

(declare-fun e!159736 () Bool)

(assert (=> mapNonEmpty!10907 (= mapRes!10907 (and tp!22934 e!159736))))

(declare-fun mapValue!10907 () ValueCell!2870)

(declare-fun mapRest!10907 () (Array (_ BitVec 32) ValueCell!2870))

(declare-fun mapKey!10907 () (_ BitVec 32))

(assert (=> mapNonEmpty!10907 (= (arr!5767 (_values!4540 thiss!1504)) (store mapRest!10907 mapKey!10907 mapValue!10907))))

(declare-fun b!246226 () Bool)

(declare-fun res!120758 () Bool)

(assert (=> b!246226 (= res!120758 (= (select (arr!5768 (_keys!6676 thiss!1504)) (index!6585 lt!123365)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159739 () Bool)

(assert (=> b!246226 (=> (not res!120758) (not e!159739))))

(declare-fun res!120755 () Bool)

(assert (=> start!23460 (=> (not res!120755) (not e!159740))))

(declare-fun valid!1417 (LongMapFixedSize!3640) Bool)

(assert (=> start!23460 (= res!120755 (valid!1417 thiss!1504))))

(assert (=> start!23460 e!159740))

(declare-fun e!159742 () Bool)

(assert (=> start!23460 e!159742))

(assert (=> start!23460 true))

(declare-fun b!246227 () Bool)

(declare-fun res!120757 () Bool)

(declare-fun e!159735 () Bool)

(assert (=> b!246227 (=> (not res!120757) (not e!159735))))

(assert (=> b!246227 (= res!120757 (= (select (arr!5768 (_keys!6676 thiss!1504)) (index!6582 lt!123365)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246228 () Bool)

(declare-fun c!41158 () Bool)

(assert (=> b!246228 (= c!41158 (is-MissingVacant!1103 lt!123365))))

(declare-fun e!159741 () Bool)

(declare-fun e!159749 () Bool)

(assert (=> b!246228 (= e!159741 e!159749)))

(declare-fun b!246229 () Bool)

(declare-fun res!120752 () Bool)

(assert (=> b!246229 (=> (not res!120752) (not e!159735))))

(declare-fun call!23012 () Bool)

(assert (=> b!246229 (= res!120752 call!23012)))

(assert (=> b!246229 (= e!159741 e!159735)))

(declare-fun b!246230 () Bool)

(assert (=> b!246230 (= e!159749 (is-Undefined!1103 lt!123365))))

(declare-fun b!246231 () Bool)

(assert (=> b!246231 (= e!159735 (not call!23013))))

(declare-fun mapIsEmpty!10907 () Bool)

(assert (=> mapIsEmpty!10907 mapRes!10907))

(declare-fun b!246232 () Bool)

(assert (=> b!246232 (= e!159749 e!159739)))

(declare-fun res!120759 () Bool)

(assert (=> b!246232 (= res!120759 call!23012)))

(assert (=> b!246232 (=> (not res!120759) (not e!159739))))

(declare-fun b!246233 () Bool)

(declare-fun res!120753 () Bool)

(assert (=> b!246233 (=> (not res!120753) (not e!159740))))

(assert (=> b!246233 (= res!120753 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!246234 () Bool)

(declare-fun tp_is_empty!6427 () Bool)

(assert (=> b!246234 (= e!159736 tp_is_empty!6427)))

(declare-fun b!246235 () Bool)

(declare-fun lt!123368 () Unit!7598)

(assert (=> b!246235 (= e!159737 lt!123368)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!378 (array!12156 array!12154 (_ BitVec 32) (_ BitVec 32) V!8217 V!8217 (_ BitVec 64) Int) Unit!7598)

(assert (=> b!246235 (= lt!123368 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!378 (_keys!6676 thiss!1504) (_values!4540 thiss!1504) (mask!10680 thiss!1504) (extraKeys!4294 thiss!1504) (zeroValue!4398 thiss!1504) (minValue!4398 thiss!1504) key!932 (defaultEntry!4557 thiss!1504)))))

(declare-fun c!41155 () Bool)

(assert (=> b!246235 (= c!41155 (is-MissingZero!1103 lt!123365))))

(assert (=> b!246235 e!159741))

(declare-fun b!246236 () Bool)

(declare-fun e!159748 () Bool)

(assert (=> b!246236 (= e!159748 tp_is_empty!6427)))

(declare-fun e!159744 () Bool)

(declare-fun array_inv!3801 (array!12156) Bool)

(declare-fun array_inv!3802 (array!12154) Bool)

(assert (=> b!246237 (= e!159742 (and tp!22933 tp_is_empty!6427 (array_inv!3801 (_keys!6676 thiss!1504)) (array_inv!3802 (_values!4540 thiss!1504)) e!159744))))

(declare-fun b!246238 () Bool)

(declare-fun Unit!7601 () Unit!7598)

(assert (=> b!246238 (= e!159738 Unit!7601)))

(declare-fun b!246239 () Bool)

(declare-fun Unit!7602 () Unit!7598)

(assert (=> b!246239 (= e!159737 Unit!7602)))

(declare-fun lt!123370 () Unit!7598)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!376 (array!12156 array!12154 (_ BitVec 32) (_ BitVec 32) V!8217 V!8217 (_ BitVec 64) Int) Unit!7598)

(assert (=> b!246239 (= lt!123370 (lemmaInListMapThenSeekEntryOrOpenFindsIt!376 (_keys!6676 thiss!1504) (_values!4540 thiss!1504) (mask!10680 thiss!1504) (extraKeys!4294 thiss!1504) (zeroValue!4398 thiss!1504) (minValue!4398 thiss!1504) key!932 (defaultEntry!4557 thiss!1504)))))

(assert (=> b!246239 false))

(declare-fun b!246240 () Bool)

(assert (=> b!246240 (= e!159744 (and e!159748 mapRes!10907))))

(declare-fun condMapEmpty!10907 () Bool)

(declare-fun mapDefault!10907 () ValueCell!2870)

