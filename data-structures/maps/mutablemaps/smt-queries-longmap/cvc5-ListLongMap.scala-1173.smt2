; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25196 () Bool)

(assert start!25196)

(declare-fun b!262368 () Bool)

(declare-fun b_free!6787 () Bool)

(declare-fun b_next!6787 () Bool)

(assert (=> b!262368 (= b_free!6787 (not b_next!6787))))

(declare-fun tp!23694 () Bool)

(declare-fun b_and!13943 () Bool)

(assert (=> b!262368 (= tp!23694 b_and!13943)))

(declare-fun bm!25073 () Bool)

(declare-fun call!25077 () Bool)

(declare-datatypes ((V!8513 0))(
  ( (V!8514 (val!3369 Int)) )
))
(declare-datatypes ((ValueCell!2981 0))(
  ( (ValueCellFull!2981 (v!5493 V!8513)) (EmptyCell!2981) )
))
(declare-datatypes ((array!12656 0))(
  ( (array!12657 (arr!5989 (Array (_ BitVec 32) ValueCell!2981)) (size!6340 (_ BitVec 32))) )
))
(declare-datatypes ((array!12658 0))(
  ( (array!12659 (arr!5990 (Array (_ BitVec 32) (_ BitVec 64))) (size!6341 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3862 0))(
  ( (LongMapFixedSize!3863 (defaultEntry!4834 Int) (mask!11193 (_ BitVec 32)) (extraKeys!4571 (_ BitVec 32)) (zeroValue!4675 V!8513) (minValue!4675 V!8513) (_size!1980 (_ BitVec 32)) (_keys!7024 array!12658) (_values!4817 array!12656) (_vacant!1980 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3862)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!25073 (= call!25077 (arrayContainsKey!0 (_keys!7024 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11335 () Bool)

(declare-fun mapRes!11335 () Bool)

(assert (=> mapIsEmpty!11335 mapRes!11335))

(declare-fun mapNonEmpty!11335 () Bool)

(declare-fun tp!23695 () Bool)

(declare-fun e!170036 () Bool)

(assert (=> mapNonEmpty!11335 (= mapRes!11335 (and tp!23695 e!170036))))

(declare-fun mapRest!11335 () (Array (_ BitVec 32) ValueCell!2981))

(declare-fun mapValue!11335 () ValueCell!2981)

(declare-fun mapKey!11335 () (_ BitVec 32))

(assert (=> mapNonEmpty!11335 (= (arr!5989 (_values!4817 thiss!1504)) (store mapRest!11335 mapKey!11335 mapValue!11335))))

(declare-fun b!262361 () Bool)

(declare-fun res!128166 () Bool)

(declare-fun e!170037 () Bool)

(assert (=> b!262361 (=> (not res!128166) (not e!170037))))

(assert (=> b!262361 (= res!128166 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!262362 () Bool)

(declare-fun e!170038 () Bool)

(declare-fun e!170035 () Bool)

(assert (=> b!262362 (= e!170038 e!170035)))

(declare-fun res!128172 () Bool)

(assert (=> b!262362 (=> (not res!128172) (not e!170035))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262362 (= res!128172 (inRange!0 index!297 (mask!11193 thiss!1504)))))

(declare-datatypes ((Unit!8170 0))(
  ( (Unit!8171) )
))
(declare-fun lt!132666 () Unit!8170)

(declare-fun e!170030 () Unit!8170)

(assert (=> b!262362 (= lt!132666 e!170030)))

(declare-fun c!44696 () Bool)

(declare-datatypes ((tuple2!4966 0))(
  ( (tuple2!4967 (_1!2493 (_ BitVec 64)) (_2!2493 V!8513)) )
))
(declare-datatypes ((List!3866 0))(
  ( (Nil!3863) (Cons!3862 (h!4528 tuple2!4966) (t!8949 List!3866)) )
))
(declare-datatypes ((ListLongMap!3893 0))(
  ( (ListLongMap!3894 (toList!1962 List!3866)) )
))
(declare-fun lt!132664 () ListLongMap!3893)

(declare-fun contains!1905 (ListLongMap!3893 (_ BitVec 64)) Bool)

(assert (=> b!262362 (= c!44696 (contains!1905 lt!132664 key!932))))

(declare-fun getCurrentListMap!1485 (array!12658 array!12656 (_ BitVec 32) (_ BitVec 32) V!8513 V!8513 (_ BitVec 32) Int) ListLongMap!3893)

(assert (=> b!262362 (= lt!132664 (getCurrentListMap!1485 (_keys!7024 thiss!1504) (_values!4817 thiss!1504) (mask!11193 thiss!1504) (extraKeys!4571 thiss!1504) (zeroValue!4675 thiss!1504) (minValue!4675 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4834 thiss!1504)))))

(declare-fun b!262363 () Bool)

(declare-fun res!128163 () Bool)

(declare-fun e!170039 () Bool)

(assert (=> b!262363 (=> res!128163 e!170039)))

(assert (=> b!262363 (= res!128163 (or (not (= (size!6340 (_values!4817 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11193 thiss!1504)))) (not (= (size!6341 (_keys!7024 thiss!1504)) (size!6340 (_values!4817 thiss!1504)))) (bvslt (mask!11193 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4571 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4571 thiss!1504) #b00000000000000000000000000000011) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6341 (_keys!7024 thiss!1504)))))))

(declare-fun call!25076 () Bool)

(declare-datatypes ((SeekEntryResult!1206 0))(
  ( (MissingZero!1206 (index!6994 (_ BitVec 32))) (Found!1206 (index!6995 (_ BitVec 32))) (Intermediate!1206 (undefined!2018 Bool) (index!6996 (_ BitVec 32)) (x!25230 (_ BitVec 32))) (Undefined!1206) (MissingVacant!1206 (index!6997 (_ BitVec 32))) )
))
(declare-fun lt!132663 () SeekEntryResult!1206)

(declare-fun bm!25074 () Bool)

(declare-fun c!44697 () Bool)

(assert (=> bm!25074 (= call!25076 (inRange!0 (ite c!44697 (index!6994 lt!132663) (index!6997 lt!132663)) (mask!11193 thiss!1504)))))

(declare-fun b!262364 () Bool)

(declare-fun res!128167 () Bool)

(assert (=> b!262364 (= res!128167 (= (select (arr!5990 (_keys!7024 thiss!1504)) (index!6997 lt!132663)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170043 () Bool)

(assert (=> b!262364 (=> (not res!128167) (not e!170043))))

(declare-fun b!262365 () Bool)

(assert (=> b!262365 (= e!170043 (not call!25077))))

(declare-fun b!262366 () Bool)

(declare-fun e!170041 () Bool)

(declare-fun e!170033 () Bool)

(assert (=> b!262366 (= e!170041 (and e!170033 mapRes!11335))))

(declare-fun condMapEmpty!11335 () Bool)

(declare-fun mapDefault!11335 () ValueCell!2981)

