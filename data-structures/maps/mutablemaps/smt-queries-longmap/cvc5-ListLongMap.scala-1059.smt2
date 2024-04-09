; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22048 () Bool)

(assert start!22048)

(declare-fun b!227425 () Bool)

(declare-fun b_free!6103 () Bool)

(declare-fun b_next!6103 () Bool)

(assert (=> b!227425 (= b_free!6103 (not b_next!6103))))

(declare-fun tp!21451 () Bool)

(declare-fun b_and!13019 () Bool)

(assert (=> b!227425 (= tp!21451 b_and!13019)))

(declare-fun e!147552 () Bool)

(declare-fun tp_is_empty!5965 () Bool)

(declare-datatypes ((V!7601 0))(
  ( (V!7602 (val!3027 Int)) )
))
(declare-datatypes ((ValueCell!2639 0))(
  ( (ValueCellFull!2639 (v!5043 V!7601)) (EmptyCell!2639) )
))
(declare-datatypes ((array!11172 0))(
  ( (array!11173 (arr!5305 (Array (_ BitVec 32) ValueCell!2639)) (size!5638 (_ BitVec 32))) )
))
(declare-datatypes ((array!11174 0))(
  ( (array!11175 (arr!5306 (Array (_ BitVec 32) (_ BitVec 64))) (size!5639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3178 0))(
  ( (LongMapFixedSize!3179 (defaultEntry!4248 Int) (mask!10110 (_ BitVec 32)) (extraKeys!3985 (_ BitVec 32)) (zeroValue!4089 V!7601) (minValue!4089 V!7601) (_size!1638 (_ BitVec 32)) (_keys!6302 array!11174) (_values!4231 array!11172) (_vacant!1638 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3178)

(declare-fun e!147562 () Bool)

(declare-fun array_inv!3497 (array!11174) Bool)

(declare-fun array_inv!3498 (array!11172) Bool)

(assert (=> b!227425 (= e!147552 (and tp!21451 tp_is_empty!5965 (array_inv!3497 (_keys!6302 thiss!1504)) (array_inv!3498 (_values!4231 thiss!1504)) e!147562))))

(declare-fun b!227426 () Bool)

(declare-fun e!147554 () Bool)

(declare-fun call!21141 () Bool)

(assert (=> b!227426 (= e!147554 (not call!21141))))

(declare-fun bm!21138 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21138 (= call!21141 (arrayContainsKey!0 (_keys!6302 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227427 () Bool)

(declare-fun e!147561 () Bool)

(declare-fun e!147556 () Bool)

(assert (=> b!227427 (= e!147561 e!147556)))

(declare-fun res!111978 () Bool)

(declare-fun call!21142 () Bool)

(assert (=> b!227427 (= res!111978 call!21142)))

(assert (=> b!227427 (=> (not res!111978) (not e!147556))))

(declare-fun b!227428 () Bool)

(declare-fun res!111970 () Bool)

(assert (=> b!227428 (=> (not res!111970) (not e!147554))))

(assert (=> b!227428 (= res!111970 call!21142)))

(declare-fun e!147559 () Bool)

(assert (=> b!227428 (= e!147559 e!147554)))

(declare-fun b!227429 () Bool)

(declare-fun res!111979 () Bool)

(assert (=> b!227429 (=> (not res!111979) (not e!147554))))

(declare-datatypes ((SeekEntryResult!905 0))(
  ( (MissingZero!905 (index!5790 (_ BitVec 32))) (Found!905 (index!5791 (_ BitVec 32))) (Intermediate!905 (undefined!1717 Bool) (index!5792 (_ BitVec 32)) (x!23293 (_ BitVec 32))) (Undefined!905) (MissingVacant!905 (index!5793 (_ BitVec 32))) )
))
(declare-fun lt!114495 () SeekEntryResult!905)

(assert (=> b!227429 (= res!111979 (= (select (arr!5306 (_keys!6302 thiss!1504)) (index!5790 lt!114495)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!227430 () Bool)

(declare-fun res!111972 () Bool)

(assert (=> b!227430 (= res!111972 (= (select (arr!5306 (_keys!6302 thiss!1504)) (index!5793 lt!114495)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227430 (=> (not res!111972) (not e!147556))))

(declare-fun b!227432 () Bool)

(declare-fun e!147560 () Bool)

(assert (=> b!227432 (= e!147560 true)))

(declare-fun lt!114489 () Bool)

(declare-datatypes ((List!3412 0))(
  ( (Nil!3409) (Cons!3408 (h!4056 (_ BitVec 64)) (t!8379 List!3412)) )
))
(declare-fun arrayNoDuplicates!0 (array!11174 (_ BitVec 32) List!3412) Bool)

(assert (=> b!227432 (= lt!114489 (arrayNoDuplicates!0 (_keys!6302 thiss!1504) #b00000000000000000000000000000000 Nil!3409))))

(declare-fun b!227433 () Bool)

(declare-fun e!147553 () Bool)

(assert (=> b!227433 (= e!147553 (not e!147560))))

(declare-fun res!111973 () Bool)

(assert (=> b!227433 (=> res!111973 e!147560)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227433 (= res!111973 (not (validMask!0 (mask!10110 thiss!1504))))))

(declare-fun lt!114492 () array!11174)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11174 (_ BitVec 32)) Bool)

(assert (=> b!227433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114492 (mask!10110 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!6896 0))(
  ( (Unit!6897) )
))
(declare-fun lt!114487 () Unit!6896)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11174 (_ BitVec 32) (_ BitVec 32)) Unit!6896)

(assert (=> b!227433 (= lt!114487 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6302 thiss!1504) index!297 (mask!10110 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11174 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227433 (= (arrayCountValidKeys!0 lt!114492 #b00000000000000000000000000000000 (size!5639 (_keys!6302 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6302 thiss!1504) #b00000000000000000000000000000000 (size!5639 (_keys!6302 thiss!1504)))))))

(declare-fun lt!114490 () Unit!6896)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11174 (_ BitVec 32) (_ BitVec 64)) Unit!6896)

(assert (=> b!227433 (= lt!114490 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6302 thiss!1504) index!297 key!932))))

(assert (=> b!227433 (arrayNoDuplicates!0 lt!114492 #b00000000000000000000000000000000 Nil!3409)))

(assert (=> b!227433 (= lt!114492 (array!11175 (store (arr!5306 (_keys!6302 thiss!1504)) index!297 key!932) (size!5639 (_keys!6302 thiss!1504))))))

(declare-fun lt!114493 () Unit!6896)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3412) Unit!6896)

(assert (=> b!227433 (= lt!114493 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6302 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3409))))

(declare-fun lt!114488 () Unit!6896)

(declare-fun e!147565 () Unit!6896)

(assert (=> b!227433 (= lt!114488 e!147565)))

(declare-fun c!37695 () Bool)

(assert (=> b!227433 (= c!37695 (arrayContainsKey!0 (_keys!6302 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227434 () Bool)

(declare-fun res!111969 () Bool)

(assert (=> b!227434 (=> res!111969 e!147560)))

(assert (=> b!227434 (= res!111969 (or (not (= (size!5638 (_values!4231 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10110 thiss!1504)))) (not (= (size!5639 (_keys!6302 thiss!1504)) (size!5638 (_values!4231 thiss!1504)))) (bvslt (mask!10110 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3985 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3985 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!10117 () Bool)

(declare-fun mapRes!10117 () Bool)

(declare-fun tp!21450 () Bool)

(declare-fun e!147564 () Bool)

(assert (=> mapNonEmpty!10117 (= mapRes!10117 (and tp!21450 e!147564))))

(declare-fun mapKey!10117 () (_ BitVec 32))

(declare-fun mapValue!10117 () ValueCell!2639)

(declare-fun mapRest!10117 () (Array (_ BitVec 32) ValueCell!2639))

(assert (=> mapNonEmpty!10117 (= (arr!5305 (_values!4231 thiss!1504)) (store mapRest!10117 mapKey!10117 mapValue!10117))))

(declare-fun b!227435 () Bool)

(assert (=> b!227435 (= e!147564 tp_is_empty!5965)))

(declare-fun b!227436 () Bool)

(declare-fun e!147558 () Bool)

(declare-fun e!147551 () Bool)

(assert (=> b!227436 (= e!147558 e!147551)))

(declare-fun res!111971 () Bool)

(assert (=> b!227436 (=> (not res!111971) (not e!147551))))

(assert (=> b!227436 (= res!111971 (or (= lt!114495 (MissingZero!905 index!297)) (= lt!114495 (MissingVacant!905 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11174 (_ BitVec 32)) SeekEntryResult!905)

(assert (=> b!227436 (= lt!114495 (seekEntryOrOpen!0 key!932 (_keys!6302 thiss!1504) (mask!10110 thiss!1504)))))

(declare-fun b!227437 () Bool)

(declare-fun e!147555 () Unit!6896)

(declare-fun lt!114491 () Unit!6896)

(assert (=> b!227437 (= e!147555 lt!114491)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!277 (array!11174 array!11172 (_ BitVec 32) (_ BitVec 32) V!7601 V!7601 (_ BitVec 64) Int) Unit!6896)

(assert (=> b!227437 (= lt!114491 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!277 (_keys!6302 thiss!1504) (_values!4231 thiss!1504) (mask!10110 thiss!1504) (extraKeys!3985 thiss!1504) (zeroValue!4089 thiss!1504) (minValue!4089 thiss!1504) key!932 (defaultEntry!4248 thiss!1504)))))

(declare-fun c!37694 () Bool)

(assert (=> b!227437 (= c!37694 (is-MissingZero!905 lt!114495))))

(assert (=> b!227437 e!147559))

(declare-fun b!227438 () Bool)

(declare-fun Unit!6898 () Unit!6896)

(assert (=> b!227438 (= e!147565 Unit!6898)))

(declare-fun b!227439 () Bool)

(assert (=> b!227439 (= e!147551 e!147553)))

(declare-fun res!111976 () Bool)

(assert (=> b!227439 (=> (not res!111976) (not e!147553))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!227439 (= res!111976 (inRange!0 index!297 (mask!10110 thiss!1504)))))

(declare-fun lt!114494 () Unit!6896)

(assert (=> b!227439 (= lt!114494 e!147555)))

(declare-fun c!37696 () Bool)

(declare-datatypes ((tuple2!4468 0))(
  ( (tuple2!4469 (_1!2244 (_ BitVec 64)) (_2!2244 V!7601)) )
))
(declare-datatypes ((List!3413 0))(
  ( (Nil!3410) (Cons!3409 (h!4057 tuple2!4468) (t!8380 List!3413)) )
))
(declare-datatypes ((ListLongMap!3395 0))(
  ( (ListLongMap!3396 (toList!1713 List!3413)) )
))
(declare-fun contains!1581 (ListLongMap!3395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1236 (array!11174 array!11172 (_ BitVec 32) (_ BitVec 32) V!7601 V!7601 (_ BitVec 32) Int) ListLongMap!3395)

(assert (=> b!227439 (= c!37696 (contains!1581 (getCurrentListMap!1236 (_keys!6302 thiss!1504) (_values!4231 thiss!1504) (mask!10110 thiss!1504) (extraKeys!3985 thiss!1504) (zeroValue!4089 thiss!1504) (minValue!4089 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4248 thiss!1504)) key!932))))

(declare-fun b!227440 () Bool)

(declare-fun e!147557 () Bool)

(assert (=> b!227440 (= e!147562 (and e!147557 mapRes!10117))))

(declare-fun condMapEmpty!10117 () Bool)

(declare-fun mapDefault!10117 () ValueCell!2639)

