; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24300 () Bool)

(assert start!24300)

(declare-fun b!254473 () Bool)

(declare-fun b_free!6689 () Bool)

(declare-fun b_next!6689 () Bool)

(assert (=> b!254473 (= b_free!6689 (not b_next!6689))))

(declare-fun tp!23354 () Bool)

(declare-fun b_and!13749 () Bool)

(assert (=> b!254473 (= tp!23354 b_and!13749)))

(declare-fun b!254457 () Bool)

(declare-fun res!124589 () Bool)

(declare-fun e!164958 () Bool)

(assert (=> b!254457 (=> (not res!124589) (not e!164958))))

(declare-fun call!24010 () Bool)

(assert (=> b!254457 (= res!124589 call!24010)))

(declare-fun e!164955 () Bool)

(assert (=> b!254457 (= e!164955 e!164958)))

(declare-fun b!254458 () Bool)

(declare-datatypes ((Unit!7885 0))(
  ( (Unit!7886) )
))
(declare-fun e!164951 () Unit!7885)

(declare-fun Unit!7887 () Unit!7885)

(assert (=> b!254458 (= e!164951 Unit!7887)))

(declare-fun b!254459 () Bool)

(declare-fun e!164957 () Bool)

(declare-fun e!164954 () Bool)

(assert (=> b!254459 (= e!164957 e!164954)))

(declare-fun res!124586 () Bool)

(assert (=> b!254459 (=> (not res!124586) (not e!164954))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8381 0))(
  ( (V!8382 (val!3320 Int)) )
))
(declare-datatypes ((ValueCell!2932 0))(
  ( (ValueCellFull!2932 (v!5390 V!8381)) (EmptyCell!2932) )
))
(declare-datatypes ((array!12432 0))(
  ( (array!12433 (arr!5891 (Array (_ BitVec 32) ValueCell!2932)) (size!6238 (_ BitVec 32))) )
))
(declare-datatypes ((array!12434 0))(
  ( (array!12435 (arr!5892 (Array (_ BitVec 32) (_ BitVec 64))) (size!6239 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3764 0))(
  ( (LongMapFixedSize!3765 (defaultEntry!4695 Int) (mask!10941 (_ BitVec 32)) (extraKeys!4432 (_ BitVec 32)) (zeroValue!4536 V!8381) (minValue!4536 V!8381) (_size!1931 (_ BitVec 32)) (_keys!6849 array!12434) (_values!4678 array!12432) (_vacant!1931 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3764)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254459 (= res!124586 (inRange!0 index!297 (mask!10941 thiss!1504)))))

(declare-fun lt!127544 () Unit!7885)

(declare-fun e!164956 () Unit!7885)

(assert (=> b!254459 (= lt!127544 e!164956)))

(declare-fun c!42906 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4884 0))(
  ( (tuple2!4885 (_1!2452 (_ BitVec 64)) (_2!2452 V!8381)) )
))
(declare-datatypes ((List!3790 0))(
  ( (Nil!3787) (Cons!3786 (h!4448 tuple2!4884) (t!8845 List!3790)) )
))
(declare-datatypes ((ListLongMap!3811 0))(
  ( (ListLongMap!3812 (toList!1921 List!3790)) )
))
(declare-fun contains!1845 (ListLongMap!3811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1444 (array!12434 array!12432 (_ BitVec 32) (_ BitVec 32) V!8381 V!8381 (_ BitVec 32) Int) ListLongMap!3811)

(assert (=> b!254459 (= c!42906 (contains!1845 (getCurrentListMap!1444 (_keys!6849 thiss!1504) (_values!4678 thiss!1504) (mask!10941 thiss!1504) (extraKeys!4432 thiss!1504) (zeroValue!4536 thiss!1504) (minValue!4536 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4695 thiss!1504)) key!932))))

(declare-fun b!254460 () Bool)

(declare-fun e!164950 () Bool)

(assert (=> b!254460 (= e!164954 (not e!164950))))

(declare-fun res!124591 () Bool)

(assert (=> b!254460 (=> res!124591 e!164950)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!254460 (= res!124591 (not (validMask!0 (mask!10941 thiss!1504))))))

(declare-fun lt!127549 () array!12434)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12434 (_ BitVec 32)) Bool)

(assert (=> b!254460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127549 (mask!10941 thiss!1504))))

(declare-fun lt!127551 () Unit!7885)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12434 (_ BitVec 32) (_ BitVec 32)) Unit!7885)

(assert (=> b!254460 (= lt!127551 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6849 thiss!1504) index!297 (mask!10941 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12434 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254460 (= (arrayCountValidKeys!0 lt!127549 #b00000000000000000000000000000000 (size!6239 (_keys!6849 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6849 thiss!1504) #b00000000000000000000000000000000 (size!6239 (_keys!6849 thiss!1504)))))))

(declare-fun lt!127552 () Unit!7885)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12434 (_ BitVec 32) (_ BitVec 64)) Unit!7885)

(assert (=> b!254460 (= lt!127552 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6849 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3791 0))(
  ( (Nil!3788) (Cons!3787 (h!4449 (_ BitVec 64)) (t!8846 List!3791)) )
))
(declare-fun arrayNoDuplicates!0 (array!12434 (_ BitVec 32) List!3791) Bool)

(assert (=> b!254460 (arrayNoDuplicates!0 lt!127549 #b00000000000000000000000000000000 Nil!3788)))

(assert (=> b!254460 (= lt!127549 (array!12435 (store (arr!5892 (_keys!6849 thiss!1504)) index!297 key!932) (size!6239 (_keys!6849 thiss!1504))))))

(declare-fun lt!127554 () Unit!7885)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3791) Unit!7885)

(assert (=> b!254460 (= lt!127554 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6849 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3788))))

(declare-fun lt!127550 () Unit!7885)

(assert (=> b!254460 (= lt!127550 e!164951)))

(declare-fun c!42907 () Bool)

(declare-fun arrayContainsKey!0 (array!12434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!254460 (= c!42907 (arrayContainsKey!0 (_keys!6849 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254461 () Bool)

(declare-fun call!24011 () Bool)

(assert (=> b!254461 (= e!164958 (not call!24011))))

(declare-datatypes ((SeekEntryResult!1160 0))(
  ( (MissingZero!1160 (index!6810 (_ BitVec 32))) (Found!1160 (index!6811 (_ BitVec 32))) (Intermediate!1160 (undefined!1972 Bool) (index!6812 (_ BitVec 32)) (x!24876 (_ BitVec 32))) (Undefined!1160) (MissingVacant!1160 (index!6813 (_ BitVec 32))) )
))
(declare-fun lt!127548 () SeekEntryResult!1160)

(declare-fun c!42905 () Bool)

(declare-fun bm!24007 () Bool)

(assert (=> bm!24007 (= call!24010 (inRange!0 (ite c!42905 (index!6810 lt!127548) (index!6813 lt!127548)) (mask!10941 thiss!1504)))))

(declare-fun b!254462 () Bool)

(declare-fun res!124584 () Bool)

(declare-fun e!164953 () Bool)

(assert (=> b!254462 (=> (not res!124584) (not e!164953))))

(assert (=> b!254462 (= res!124584 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!11142 () Bool)

(declare-fun mapRes!11142 () Bool)

(declare-fun tp!23355 () Bool)

(declare-fun e!164949 () Bool)

(assert (=> mapNonEmpty!11142 (= mapRes!11142 (and tp!23355 e!164949))))

(declare-fun mapRest!11142 () (Array (_ BitVec 32) ValueCell!2932))

(declare-fun mapKey!11142 () (_ BitVec 32))

(declare-fun mapValue!11142 () ValueCell!2932)

(assert (=> mapNonEmpty!11142 (= (arr!5891 (_values!4678 thiss!1504)) (store mapRest!11142 mapKey!11142 mapValue!11142))))

(declare-fun b!254463 () Bool)

(assert (=> b!254463 (= e!164950 true)))

(declare-fun lt!127553 () Bool)

(assert (=> b!254463 (= lt!127553 (arrayNoDuplicates!0 (_keys!6849 thiss!1504) #b00000000000000000000000000000000 Nil!3788))))

(declare-fun b!254464 () Bool)

(declare-fun e!164945 () Bool)

(assert (=> b!254464 (= e!164945 (not call!24011))))

(declare-fun b!254465 () Bool)

(declare-fun e!164948 () Bool)

(declare-fun tp_is_empty!6551 () Bool)

(assert (=> b!254465 (= e!164948 tp_is_empty!6551)))

(declare-fun b!254466 () Bool)

(declare-fun res!124593 () Bool)

(assert (=> b!254466 (=> (not res!124593) (not e!164958))))

(assert (=> b!254466 (= res!124593 (= (select (arr!5892 (_keys!6849 thiss!1504)) (index!6810 lt!127548)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254467 () Bool)

(declare-fun c!42904 () Bool)

(assert (=> b!254467 (= c!42904 (is-MissingVacant!1160 lt!127548))))

(declare-fun e!164947 () Bool)

(assert (=> b!254467 (= e!164955 e!164947)))

(declare-fun b!254468 () Bool)

(declare-fun res!124588 () Bool)

(assert (=> b!254468 (= res!124588 (= (select (arr!5892 (_keys!6849 thiss!1504)) (index!6813 lt!127548)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254468 (=> (not res!124588) (not e!164945))))

(declare-fun b!254469 () Bool)

(declare-fun e!164946 () Bool)

(assert (=> b!254469 (= e!164946 (and e!164948 mapRes!11142))))

(declare-fun condMapEmpty!11142 () Bool)

(declare-fun mapDefault!11142 () ValueCell!2932)

