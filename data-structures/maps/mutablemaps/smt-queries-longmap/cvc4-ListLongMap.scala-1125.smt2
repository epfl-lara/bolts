; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23100 () Bool)

(assert start!23100)

(declare-fun b!242056 () Bool)

(declare-fun b_free!6503 () Bool)

(declare-fun b_next!6503 () Bool)

(assert (=> b!242056 (= b_free!6503 (not b_next!6503))))

(declare-fun tp!22720 () Bool)

(declare-fun b_and!13495 () Bool)

(assert (=> b!242056 (= tp!22720 b_and!13495)))

(declare-fun b!242041 () Bool)

(declare-datatypes ((Unit!7462 0))(
  ( (Unit!7463) )
))
(declare-fun e!157103 () Unit!7462)

(declare-fun lt!121635 () Unit!7462)

(assert (=> b!242041 (= e!157103 lt!121635)))

(declare-datatypes ((V!8133 0))(
  ( (V!8134 (val!3227 Int)) )
))
(declare-datatypes ((ValueCell!2839 0))(
  ( (ValueCellFull!2839 (v!5263 V!8133)) (EmptyCell!2839) )
))
(declare-datatypes ((array!12012 0))(
  ( (array!12013 (arr!5705 (Array (_ BitVec 32) ValueCell!2839)) (size!6047 (_ BitVec 32))) )
))
(declare-datatypes ((array!12014 0))(
  ( (array!12015 (arr!5706 (Array (_ BitVec 32) (_ BitVec 64))) (size!6048 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3578 0))(
  ( (LongMapFixedSize!3579 (defaultEntry!4486 Int) (mask!10563 (_ BitVec 32)) (extraKeys!4223 (_ BitVec 32)) (zeroValue!4327 V!8133) (minValue!4327 V!8133) (_size!1838 (_ BitVec 32)) (_keys!6593 array!12014) (_values!4469 array!12012) (_vacant!1838 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3578)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!361 (array!12014 array!12012 (_ BitVec 32) (_ BitVec 32) V!8133 V!8133 (_ BitVec 64) Int) Unit!7462)

(assert (=> b!242041 (= lt!121635 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!361 (_keys!6593 thiss!1504) (_values!4469 thiss!1504) (mask!10563 thiss!1504) (extraKeys!4223 thiss!1504) (zeroValue!4327 thiss!1504) (minValue!4327 thiss!1504) key!932 (defaultEntry!4486 thiss!1504)))))

(declare-fun c!40367 () Bool)

(declare-datatypes ((SeekEntryResult!1073 0))(
  ( (MissingZero!1073 (index!6462 (_ BitVec 32))) (Found!1073 (index!6463 (_ BitVec 32))) (Intermediate!1073 (undefined!1885 Bool) (index!6464 (_ BitVec 32)) (x!24261 (_ BitVec 32))) (Undefined!1073) (MissingVacant!1073 (index!6465 (_ BitVec 32))) )
))
(declare-fun lt!121633 () SeekEntryResult!1073)

(assert (=> b!242041 (= c!40367 (is-MissingZero!1073 lt!121633))))

(declare-fun e!157112 () Bool)

(assert (=> b!242041 e!157112))

(declare-fun b!242042 () Bool)

(declare-fun res!118622 () Bool)

(assert (=> b!242042 (= res!118622 (= (select (arr!5706 (_keys!6593 thiss!1504)) (index!6465 lt!121633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157109 () Bool)

(assert (=> b!242042 (=> (not res!118622) (not e!157109))))

(declare-fun b!242044 () Bool)

(declare-fun e!157111 () Bool)

(declare-fun e!157106 () Bool)

(assert (=> b!242044 (= e!157111 e!157106)))

(declare-fun res!118619 () Bool)

(assert (=> b!242044 (=> (not res!118619) (not e!157106))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!242044 (= res!118619 (inRange!0 index!297 (mask!10563 thiss!1504)))))

(declare-fun lt!121637 () Unit!7462)

(assert (=> b!242044 (= lt!121637 e!157103)))

(declare-fun c!40364 () Bool)

(declare-datatypes ((tuple2!4750 0))(
  ( (tuple2!4751 (_1!2385 (_ BitVec 64)) (_2!2385 V!8133)) )
))
(declare-datatypes ((List!3652 0))(
  ( (Nil!3649) (Cons!3648 (h!4305 tuple2!4750) (t!8659 List!3652)) )
))
(declare-datatypes ((ListLongMap!3677 0))(
  ( (ListLongMap!3678 (toList!1854 List!3652)) )
))
(declare-fun contains!1738 (ListLongMap!3677 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1377 (array!12014 array!12012 (_ BitVec 32) (_ BitVec 32) V!8133 V!8133 (_ BitVec 32) Int) ListLongMap!3677)

(assert (=> b!242044 (= c!40364 (contains!1738 (getCurrentListMap!1377 (_keys!6593 thiss!1504) (_values!4469 thiss!1504) (mask!10563 thiss!1504) (extraKeys!4223 thiss!1504) (zeroValue!4327 thiss!1504) (minValue!4327 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4486 thiss!1504)) key!932))))

(declare-fun b!242045 () Bool)

(declare-fun Unit!7464 () Unit!7462)

(assert (=> b!242045 (= e!157103 Unit!7464)))

(declare-fun lt!121638 () Unit!7462)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!355 (array!12014 array!12012 (_ BitVec 32) (_ BitVec 32) V!8133 V!8133 (_ BitVec 64) Int) Unit!7462)

(assert (=> b!242045 (= lt!121638 (lemmaInListMapThenSeekEntryOrOpenFindsIt!355 (_keys!6593 thiss!1504) (_values!4469 thiss!1504) (mask!10563 thiss!1504) (extraKeys!4223 thiss!1504) (zeroValue!4327 thiss!1504) (minValue!4327 thiss!1504) key!932 (defaultEntry!4486 thiss!1504)))))

(assert (=> b!242045 false))

(declare-fun b!242046 () Bool)

(declare-fun e!157110 () Unit!7462)

(declare-fun Unit!7465 () Unit!7462)

(assert (=> b!242046 (= e!157110 Unit!7465)))

(declare-fun lt!121636 () Unit!7462)

(declare-fun lemmaArrayContainsKeyThenInListMap!157 (array!12014 array!12012 (_ BitVec 32) (_ BitVec 32) V!8133 V!8133 (_ BitVec 64) (_ BitVec 32) Int) Unit!7462)

(assert (=> b!242046 (= lt!121636 (lemmaArrayContainsKeyThenInListMap!157 (_keys!6593 thiss!1504) (_values!4469 thiss!1504) (mask!10563 thiss!1504) (extraKeys!4223 thiss!1504) (zeroValue!4327 thiss!1504) (minValue!4327 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4486 thiss!1504)))))

(assert (=> b!242046 false))

(declare-fun mapIsEmpty!10786 () Bool)

(declare-fun mapRes!10786 () Bool)

(assert (=> mapIsEmpty!10786 mapRes!10786))

(declare-fun mapNonEmpty!10786 () Bool)

(declare-fun tp!22719 () Bool)

(declare-fun e!157104 () Bool)

(assert (=> mapNonEmpty!10786 (= mapRes!10786 (and tp!22719 e!157104))))

(declare-fun mapRest!10786 () (Array (_ BitVec 32) ValueCell!2839))

(declare-fun mapKey!10786 () (_ BitVec 32))

(declare-fun mapValue!10786 () ValueCell!2839)

(assert (=> mapNonEmpty!10786 (= (arr!5705 (_values!4469 thiss!1504)) (store mapRest!10786 mapKey!10786 mapValue!10786))))

(declare-fun b!242047 () Bool)

(declare-fun e!157100 () Bool)

(assert (=> b!242047 (= e!157100 (is-Undefined!1073 lt!121633))))

(declare-fun b!242048 () Bool)

(declare-fun e!157099 () Bool)

(declare-fun e!157113 () Bool)

(assert (=> b!242048 (= e!157099 (and e!157113 mapRes!10786))))

(declare-fun condMapEmpty!10786 () Bool)

(declare-fun mapDefault!10786 () ValueCell!2839)

