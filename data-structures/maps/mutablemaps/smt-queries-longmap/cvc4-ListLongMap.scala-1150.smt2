; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24154 () Bool)

(assert start!24154)

(declare-fun b!252493 () Bool)

(declare-fun b_free!6653 () Bool)

(declare-fun b_next!6653 () Bool)

(assert (=> b!252493 (= b_free!6653 (not b_next!6653))))

(declare-fun tp!23237 () Bool)

(declare-fun b_and!13707 () Bool)

(assert (=> b!252493 (= tp!23237 b_and!13707)))

(declare-fun b!252489 () Bool)

(declare-fun e!163739 () Bool)

(declare-fun e!163749 () Bool)

(assert (=> b!252489 (= e!163739 (not e!163749))))

(declare-fun res!123613 () Bool)

(assert (=> b!252489 (=> res!123613 e!163749)))

(declare-datatypes ((V!8333 0))(
  ( (V!8334 (val!3302 Int)) )
))
(declare-datatypes ((ValueCell!2914 0))(
  ( (ValueCellFull!2914 (v!5369 V!8333)) (EmptyCell!2914) )
))
(declare-datatypes ((array!12354 0))(
  ( (array!12355 (arr!5855 (Array (_ BitVec 32) ValueCell!2914)) (size!6202 (_ BitVec 32))) )
))
(declare-datatypes ((array!12356 0))(
  ( (array!12357 (arr!5856 (Array (_ BitVec 32) (_ BitVec 64))) (size!6203 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3728 0))(
  ( (LongMapFixedSize!3729 (defaultEntry!4665 Int) (mask!10884 (_ BitVec 32)) (extraKeys!4402 (_ BitVec 32)) (zeroValue!4506 V!8333) (minValue!4506 V!8333) (_size!1913 (_ BitVec 32)) (_keys!6813 array!12356) (_values!4648 array!12354) (_vacant!1913 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3728)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252489 (= res!123613 (not (validMask!0 (mask!10884 thiss!1504))))))

(declare-fun lt!126605 () array!12356)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12356 (_ BitVec 32)) Bool)

(assert (=> b!252489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126605 (mask!10884 thiss!1504))))

(declare-datatypes ((Unit!7817 0))(
  ( (Unit!7818) )
))
(declare-fun lt!126599 () Unit!7817)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12356 (_ BitVec 32) (_ BitVec 32)) Unit!7817)

(assert (=> b!252489 (= lt!126599 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6813 thiss!1504) index!297 (mask!10884 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12356 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252489 (= (arrayCountValidKeys!0 lt!126605 #b00000000000000000000000000000000 (size!6203 (_keys!6813 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6813 thiss!1504) #b00000000000000000000000000000000 (size!6203 (_keys!6813 thiss!1504)))))))

(declare-fun lt!126600 () Unit!7817)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12356 (_ BitVec 32) (_ BitVec 64)) Unit!7817)

(assert (=> b!252489 (= lt!126600 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6813 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3764 0))(
  ( (Nil!3761) (Cons!3760 (h!4422 (_ BitVec 64)) (t!8813 List!3764)) )
))
(declare-fun arrayNoDuplicates!0 (array!12356 (_ BitVec 32) List!3764) Bool)

(assert (=> b!252489 (arrayNoDuplicates!0 lt!126605 #b00000000000000000000000000000000 Nil!3761)))

(assert (=> b!252489 (= lt!126605 (array!12357 (store (arr!5856 (_keys!6813 thiss!1504)) index!297 key!932) (size!6203 (_keys!6813 thiss!1504))))))

(declare-fun lt!126604 () Unit!7817)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12356 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3764) Unit!7817)

(assert (=> b!252489 (= lt!126604 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6813 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3761))))

(declare-fun lt!126602 () Unit!7817)

(declare-fun e!163741 () Unit!7817)

(assert (=> b!252489 (= lt!126602 e!163741)))

(declare-fun c!42533 () Bool)

(declare-fun arrayContainsKey!0 (array!12356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252489 (= c!42533 (arrayContainsKey!0 (_keys!6813 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!23782 () Bool)

(declare-fun c!42534 () Bool)

(declare-fun call!23785 () Bool)

(declare-datatypes ((SeekEntryResult!1144 0))(
  ( (MissingZero!1144 (index!6746 (_ BitVec 32))) (Found!1144 (index!6747 (_ BitVec 32))) (Intermediate!1144 (undefined!1956 Bool) (index!6748 (_ BitVec 32)) (x!24782 (_ BitVec 32))) (Undefined!1144) (MissingVacant!1144 (index!6749 (_ BitVec 32))) )
))
(declare-fun lt!126603 () SeekEntryResult!1144)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23782 (= call!23785 (inRange!0 (ite c!42534 (index!6746 lt!126603) (index!6749 lt!126603)) (mask!10884 thiss!1504)))))

(declare-fun bm!23783 () Bool)

(declare-fun call!23786 () Bool)

(assert (=> bm!23783 (= call!23786 (arrayContainsKey!0 (_keys!6813 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252490 () Bool)

(declare-fun e!163745 () Bool)

(assert (=> b!252490 (= e!163745 (is-Undefined!1144 lt!126603))))

(declare-fun b!252491 () Bool)

(declare-fun res!123615 () Bool)

(declare-fun e!163752 () Bool)

(assert (=> b!252491 (=> (not res!123615) (not e!163752))))

(assert (=> b!252491 (= res!123615 (= (select (arr!5856 (_keys!6813 thiss!1504)) (index!6746 lt!126603)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252492 () Bool)

(declare-fun e!163751 () Bool)

(declare-fun tp_is_empty!6515 () Bool)

(assert (=> b!252492 (= e!163751 tp_is_empty!6515)))

(declare-fun e!163740 () Bool)

(declare-fun e!163748 () Bool)

(declare-fun array_inv!3861 (array!12356) Bool)

(declare-fun array_inv!3862 (array!12354) Bool)

(assert (=> b!252493 (= e!163748 (and tp!23237 tp_is_empty!6515 (array_inv!3861 (_keys!6813 thiss!1504)) (array_inv!3862 (_values!4648 thiss!1504)) e!163740))))

(declare-fun res!123607 () Bool)

(declare-fun e!163744 () Bool)

(assert (=> start!24154 (=> (not res!123607) (not e!163744))))

(declare-fun valid!1451 (LongMapFixedSize!3728) Bool)

(assert (=> start!24154 (= res!123607 (valid!1451 thiss!1504))))

(assert (=> start!24154 e!163744))

(assert (=> start!24154 e!163748))

(assert (=> start!24154 true))

(declare-fun b!252494 () Bool)

(declare-fun e!163747 () Bool)

(assert (=> b!252494 (= e!163747 e!163739)))

(declare-fun res!123614 () Bool)

(assert (=> b!252494 (=> (not res!123614) (not e!163739))))

(assert (=> b!252494 (= res!123614 (inRange!0 index!297 (mask!10884 thiss!1504)))))

(declare-fun lt!126601 () Unit!7817)

(declare-fun e!163750 () Unit!7817)

(assert (=> b!252494 (= lt!126601 e!163750)))

(declare-fun c!42532 () Bool)

(declare-datatypes ((tuple2!4860 0))(
  ( (tuple2!4861 (_1!2440 (_ BitVec 64)) (_2!2440 V!8333)) )
))
(declare-datatypes ((List!3765 0))(
  ( (Nil!3762) (Cons!3761 (h!4423 tuple2!4860) (t!8814 List!3765)) )
))
(declare-datatypes ((ListLongMap!3787 0))(
  ( (ListLongMap!3788 (toList!1909 List!3765)) )
))
(declare-fun contains!1830 (ListLongMap!3787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1432 (array!12356 array!12354 (_ BitVec 32) (_ BitVec 32) V!8333 V!8333 (_ BitVec 32) Int) ListLongMap!3787)

(assert (=> b!252494 (= c!42532 (contains!1830 (getCurrentListMap!1432 (_keys!6813 thiss!1504) (_values!4648 thiss!1504) (mask!10884 thiss!1504) (extraKeys!4402 thiss!1504) (zeroValue!4506 thiss!1504) (minValue!4506 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4665 thiss!1504)) key!932))))

(declare-fun b!252495 () Bool)

(assert (=> b!252495 (= e!163749 (arrayNoDuplicates!0 (_keys!6813 thiss!1504) #b00000000000000000000000000000000 Nil!3761))))

(declare-fun b!252496 () Bool)

(declare-fun Unit!7819 () Unit!7817)

(assert (=> b!252496 (= e!163750 Unit!7819)))

(declare-fun lt!126606 () Unit!7817)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!407 (array!12356 array!12354 (_ BitVec 32) (_ BitVec 32) V!8333 V!8333 (_ BitVec 64) Int) Unit!7817)

(assert (=> b!252496 (= lt!126606 (lemmaInListMapThenSeekEntryOrOpenFindsIt!407 (_keys!6813 thiss!1504) (_values!4648 thiss!1504) (mask!10884 thiss!1504) (extraKeys!4402 thiss!1504) (zeroValue!4506 thiss!1504) (minValue!4506 thiss!1504) key!932 (defaultEntry!4665 thiss!1504)))))

(assert (=> b!252496 false))

(declare-fun b!252497 () Bool)

(assert (=> b!252497 (= e!163752 (not call!23786))))

(declare-fun b!252498 () Bool)

(declare-fun e!163742 () Bool)

(assert (=> b!252498 (= e!163745 e!163742)))

(declare-fun res!123609 () Bool)

(assert (=> b!252498 (= res!123609 call!23785)))

(assert (=> b!252498 (=> (not res!123609) (not e!163742))))

(declare-fun b!252499 () Bool)

(declare-fun res!123612 () Bool)

(assert (=> b!252499 (=> (not res!123612) (not e!163744))))

(assert (=> b!252499 (= res!123612 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252500 () Bool)

(declare-fun res!123608 () Bool)

(assert (=> b!252500 (= res!123608 (= (select (arr!5856 (_keys!6813 thiss!1504)) (index!6749 lt!126603)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252500 (=> (not res!123608) (not e!163742))))

(declare-fun b!252501 () Bool)

(declare-fun e!163746 () Bool)

(declare-fun mapRes!11079 () Bool)

(assert (=> b!252501 (= e!163740 (and e!163746 mapRes!11079))))

(declare-fun condMapEmpty!11079 () Bool)

(declare-fun mapDefault!11079 () ValueCell!2914)

