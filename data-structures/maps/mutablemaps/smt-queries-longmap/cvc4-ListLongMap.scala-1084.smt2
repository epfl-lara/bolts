; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22202 () Bool)

(assert start!22202)

(declare-fun b!232336 () Bool)

(declare-fun b_free!6257 () Bool)

(declare-fun b_next!6257 () Bool)

(assert (=> b!232336 (= b_free!6257 (not b_next!6257))))

(declare-fun tp!21913 () Bool)

(declare-fun b_and!13173 () Bool)

(assert (=> b!232336 (= tp!21913 b_and!13173)))

(declare-fun e!150893 () Bool)

(declare-fun e!150894 () Bool)

(declare-datatypes ((V!7805 0))(
  ( (V!7806 (val!3104 Int)) )
))
(declare-datatypes ((ValueCell!2716 0))(
  ( (ValueCellFull!2716 (v!5120 V!7805)) (EmptyCell!2716) )
))
(declare-datatypes ((array!11480 0))(
  ( (array!11481 (arr!5459 (Array (_ BitVec 32) ValueCell!2716)) (size!5792 (_ BitVec 32))) )
))
(declare-datatypes ((array!11482 0))(
  ( (array!11483 (arr!5460 (Array (_ BitVec 32) (_ BitVec 64))) (size!5793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3332 0))(
  ( (LongMapFixedSize!3333 (defaultEntry!4325 Int) (mask!10237 (_ BitVec 32)) (extraKeys!4062 (_ BitVec 32)) (zeroValue!4166 V!7805) (minValue!4166 V!7805) (_size!1715 (_ BitVec 32)) (_keys!6379 array!11482) (_values!4308 array!11480) (_vacant!1715 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3332)

(declare-fun tp_is_empty!6119 () Bool)

(declare-fun array_inv!3589 (array!11482) Bool)

(declare-fun array_inv!3590 (array!11480) Bool)

(assert (=> b!232336 (= e!150893 (and tp!21913 tp_is_empty!6119 (array_inv!3589 (_keys!6379 thiss!1504)) (array_inv!3590 (_values!4308 thiss!1504)) e!150894))))

(declare-fun b!232337 () Bool)

(declare-fun e!150883 () Bool)

(assert (=> b!232337 (= e!150883 (not true))))

(declare-fun lt!117356 () array!11482)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11482 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232337 (= (arrayCountValidKeys!0 lt!117356 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7175 0))(
  ( (Unit!7176) )
))
(declare-fun lt!117352 () Unit!7175)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11482 (_ BitVec 32)) Unit!7175)

(assert (=> b!232337 (= lt!117352 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117356 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!232337 (arrayContainsKey!0 lt!117356 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117353 () Unit!7175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11482 (_ BitVec 64) (_ BitVec 32)) Unit!7175)

(assert (=> b!232337 (= lt!117353 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117356 key!932 index!297))))

(declare-datatypes ((tuple2!4578 0))(
  ( (tuple2!4579 (_1!2299 (_ BitVec 64)) (_2!2299 V!7805)) )
))
(declare-datatypes ((List!3519 0))(
  ( (Nil!3516) (Cons!3515 (h!4163 tuple2!4578) (t!8486 List!3519)) )
))
(declare-datatypes ((ListLongMap!3505 0))(
  ( (ListLongMap!3506 (toList!1768 List!3519)) )
))
(declare-fun lt!117357 () ListLongMap!3505)

(declare-fun v!346 () V!7805)

(declare-fun +!620 (ListLongMap!3505 tuple2!4578) ListLongMap!3505)

(declare-fun getCurrentListMap!1291 (array!11482 array!11480 (_ BitVec 32) (_ BitVec 32) V!7805 V!7805 (_ BitVec 32) Int) ListLongMap!3505)

(assert (=> b!232337 (= (+!620 lt!117357 (tuple2!4579 key!932 v!346)) (getCurrentListMap!1291 lt!117356 (array!11481 (store (arr!5459 (_values!4308 thiss!1504)) index!297 (ValueCellFull!2716 v!346)) (size!5792 (_values!4308 thiss!1504))) (mask!10237 thiss!1504) (extraKeys!4062 thiss!1504) (zeroValue!4166 thiss!1504) (minValue!4166 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4325 thiss!1504)))))

(declare-fun lt!117354 () Unit!7175)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!79 (array!11482 array!11480 (_ BitVec 32) (_ BitVec 32) V!7805 V!7805 (_ BitVec 32) (_ BitVec 64) V!7805 Int) Unit!7175)

(assert (=> b!232337 (= lt!117354 (lemmaAddValidKeyToArrayThenAddPairToListMap!79 (_keys!6379 thiss!1504) (_values!4308 thiss!1504) (mask!10237 thiss!1504) (extraKeys!4062 thiss!1504) (zeroValue!4166 thiss!1504) (minValue!4166 thiss!1504) index!297 key!932 v!346 (defaultEntry!4325 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11482 (_ BitVec 32)) Bool)

(assert (=> b!232337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117356 (mask!10237 thiss!1504))))

(declare-fun lt!117347 () Unit!7175)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11482 (_ BitVec 32) (_ BitVec 32)) Unit!7175)

(assert (=> b!232337 (= lt!117347 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6379 thiss!1504) index!297 (mask!10237 thiss!1504)))))

(assert (=> b!232337 (= (arrayCountValidKeys!0 lt!117356 #b00000000000000000000000000000000 (size!5793 (_keys!6379 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6379 thiss!1504) #b00000000000000000000000000000000 (size!5793 (_keys!6379 thiss!1504)))))))

(declare-fun lt!117348 () Unit!7175)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11482 (_ BitVec 32) (_ BitVec 64)) Unit!7175)

(assert (=> b!232337 (= lt!117348 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6379 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3520 0))(
  ( (Nil!3517) (Cons!3516 (h!4164 (_ BitVec 64)) (t!8487 List!3520)) )
))
(declare-fun arrayNoDuplicates!0 (array!11482 (_ BitVec 32) List!3520) Bool)

(assert (=> b!232337 (arrayNoDuplicates!0 lt!117356 #b00000000000000000000000000000000 Nil!3517)))

(assert (=> b!232337 (= lt!117356 (array!11483 (store (arr!5460 (_keys!6379 thiss!1504)) index!297 key!932) (size!5793 (_keys!6379 thiss!1504))))))

(declare-fun lt!117349 () Unit!7175)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11482 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3520) Unit!7175)

(assert (=> b!232337 (= lt!117349 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6379 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3517))))

(declare-fun lt!117360 () Unit!7175)

(declare-fun e!150884 () Unit!7175)

(assert (=> b!232337 (= lt!117360 e!150884)))

(declare-fun c!38620 () Bool)

(assert (=> b!232337 (= c!38620 (arrayContainsKey!0 (_keys!6379 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232338 () Bool)

(declare-fun e!150882 () Bool)

(declare-fun call!21603 () Bool)

(assert (=> b!232338 (= e!150882 (not call!21603))))

(declare-fun b!232339 () Bool)

(declare-fun res!114114 () Bool)

(declare-fun e!150887 () Bool)

(assert (=> b!232339 (=> (not res!114114) (not e!150887))))

(assert (=> b!232339 (= res!114114 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232340 () Bool)

(declare-fun e!150888 () Bool)

(assert (=> b!232340 (= e!150888 e!150883)))

(declare-fun res!114109 () Bool)

(assert (=> b!232340 (=> (not res!114109) (not e!150883))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!232340 (= res!114109 (inRange!0 index!297 (mask!10237 thiss!1504)))))

(declare-fun lt!117355 () Unit!7175)

(declare-fun e!150891 () Unit!7175)

(assert (=> b!232340 (= lt!117355 e!150891)))

(declare-fun c!38619 () Bool)

(declare-fun contains!1630 (ListLongMap!3505 (_ BitVec 64)) Bool)

(assert (=> b!232340 (= c!38619 (contains!1630 lt!117357 key!932))))

(assert (=> b!232340 (= lt!117357 (getCurrentListMap!1291 (_keys!6379 thiss!1504) (_values!4308 thiss!1504) (mask!10237 thiss!1504) (extraKeys!4062 thiss!1504) (zeroValue!4166 thiss!1504) (minValue!4166 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4325 thiss!1504)))))

(declare-fun bm!21600 () Bool)

(assert (=> bm!21600 (= call!21603 (arrayContainsKey!0 (_keys!6379 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232341 () Bool)

(declare-fun e!150890 () Bool)

(assert (=> b!232341 (= e!150890 tp_is_empty!6119)))

(declare-fun b!232343 () Bool)

(declare-fun e!150889 () Bool)

(assert (=> b!232343 (= e!150889 (not call!21603))))

(declare-fun b!232344 () Bool)

(declare-fun e!150885 () Bool)

(declare-datatypes ((SeekEntryResult!974 0))(
  ( (MissingZero!974 (index!6066 (_ BitVec 32))) (Found!974 (index!6067 (_ BitVec 32))) (Intermediate!974 (undefined!1786 Bool) (index!6068 (_ BitVec 32)) (x!23562 (_ BitVec 32))) (Undefined!974) (MissingVacant!974 (index!6069 (_ BitVec 32))) )
))
(declare-fun lt!117351 () SeekEntryResult!974)

(assert (=> b!232344 (= e!150885 (is-Undefined!974 lt!117351))))

(declare-fun b!232345 () Bool)

(assert (=> b!232345 (= e!150887 e!150888)))

(declare-fun res!114115 () Bool)

(assert (=> b!232345 (=> (not res!114115) (not e!150888))))

(assert (=> b!232345 (= res!114115 (or (= lt!117351 (MissingZero!974 index!297)) (= lt!117351 (MissingVacant!974 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11482 (_ BitVec 32)) SeekEntryResult!974)

(assert (=> b!232345 (= lt!117351 (seekEntryOrOpen!0 key!932 (_keys!6379 thiss!1504) (mask!10237 thiss!1504)))))

(declare-fun b!232346 () Bool)

(declare-fun Unit!7177 () Unit!7175)

(assert (=> b!232346 (= e!150884 Unit!7177)))

(declare-fun c!38621 () Bool)

(declare-fun call!21604 () Bool)

(declare-fun bm!21601 () Bool)

(assert (=> bm!21601 (= call!21604 (inRange!0 (ite c!38621 (index!6066 lt!117351) (index!6069 lt!117351)) (mask!10237 thiss!1504)))))

(declare-fun b!232347 () Bool)

(declare-fun res!114111 () Bool)

(assert (=> b!232347 (=> (not res!114111) (not e!150889))))

(assert (=> b!232347 (= res!114111 call!21604)))

(declare-fun e!150892 () Bool)

(assert (=> b!232347 (= e!150892 e!150889)))

(declare-fun b!232348 () Bool)

(declare-fun res!114112 () Bool)

(assert (=> b!232348 (= res!114112 (= (select (arr!5460 (_keys!6379 thiss!1504)) (index!6069 lt!117351)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232348 (=> (not res!114112) (not e!150882))))

(declare-fun mapIsEmpty!10348 () Bool)

(declare-fun mapRes!10348 () Bool)

(assert (=> mapIsEmpty!10348 mapRes!10348))

(declare-fun b!232349 () Bool)

(assert (=> b!232349 (= e!150894 (and e!150890 mapRes!10348))))

(declare-fun condMapEmpty!10348 () Bool)

(declare-fun mapDefault!10348 () ValueCell!2716)

