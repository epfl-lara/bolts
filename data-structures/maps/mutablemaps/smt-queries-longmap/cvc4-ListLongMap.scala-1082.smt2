; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22190 () Bool)

(assert start!22190)

(declare-fun b!231980 () Bool)

(declare-fun b_free!6245 () Bool)

(declare-fun b_next!6245 () Bool)

(assert (=> b!231980 (= b_free!6245 (not b_next!6245))))

(declare-fun tp!21877 () Bool)

(declare-fun b_and!13161 () Bool)

(assert (=> b!231980 (= tp!21877 b_and!13161)))

(declare-fun mapNonEmpty!10330 () Bool)

(declare-fun mapRes!10330 () Bool)

(declare-fun tp!21876 () Bool)

(declare-fun e!150633 () Bool)

(assert (=> mapNonEmpty!10330 (= mapRes!10330 (and tp!21876 e!150633))))

(declare-datatypes ((V!7789 0))(
  ( (V!7790 (val!3098 Int)) )
))
(declare-datatypes ((ValueCell!2710 0))(
  ( (ValueCellFull!2710 (v!5114 V!7789)) (EmptyCell!2710) )
))
(declare-fun mapValue!10330 () ValueCell!2710)

(declare-fun mapRest!10330 () (Array (_ BitVec 32) ValueCell!2710))

(declare-datatypes ((array!11456 0))(
  ( (array!11457 (arr!5447 (Array (_ BitVec 32) ValueCell!2710)) (size!5780 (_ BitVec 32))) )
))
(declare-datatypes ((array!11458 0))(
  ( (array!11459 (arr!5448 (Array (_ BitVec 32) (_ BitVec 64))) (size!5781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3320 0))(
  ( (LongMapFixedSize!3321 (defaultEntry!4319 Int) (mask!10227 (_ BitVec 32)) (extraKeys!4056 (_ BitVec 32)) (zeroValue!4160 V!7789) (minValue!4160 V!7789) (_size!1709 (_ BitVec 32)) (_keys!6373 array!11458) (_values!4302 array!11456) (_vacant!1709 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3320)

(declare-fun mapKey!10330 () (_ BitVec 32))

(assert (=> mapNonEmpty!10330 (= (arr!5447 (_values!4302 thiss!1504)) (store mapRest!10330 mapKey!10330 mapValue!10330))))

(declare-datatypes ((SeekEntryResult!969 0))(
  ( (MissingZero!969 (index!6046 (_ BitVec 32))) (Found!969 (index!6047 (_ BitVec 32))) (Intermediate!969 (undefined!1781 Bool) (index!6048 (_ BitVec 32)) (x!23541 (_ BitVec 32))) (Undefined!969) (MissingVacant!969 (index!6049 (_ BitVec 32))) )
))
(declare-fun lt!117108 () SeekEntryResult!969)

(declare-fun call!21567 () Bool)

(declare-fun c!38546 () Bool)

(declare-fun bm!21564 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21564 (= call!21567 (inRange!0 (ite c!38546 (index!6046 lt!117108) (index!6049 lt!117108)) (mask!10227 thiss!1504)))))

(declare-fun res!113966 () Bool)

(declare-fun e!150642 () Bool)

(assert (=> start!22190 (=> (not res!113966) (not e!150642))))

(declare-fun valid!1308 (LongMapFixedSize!3320) Bool)

(assert (=> start!22190 (= res!113966 (valid!1308 thiss!1504))))

(assert (=> start!22190 e!150642))

(declare-fun e!150636 () Bool)

(assert (=> start!22190 e!150636))

(assert (=> start!22190 true))

(declare-fun tp_is_empty!6107 () Bool)

(assert (=> start!22190 tp_is_empty!6107))

(declare-fun b!231976 () Bool)

(declare-datatypes ((Unit!7152 0))(
  ( (Unit!7153) )
))
(declare-fun e!150643 () Unit!7152)

(declare-fun lt!117098 () Unit!7152)

(assert (=> b!231976 (= e!150643 lt!117098)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!321 (array!11458 array!11456 (_ BitVec 32) (_ BitVec 32) V!7789 V!7789 (_ BitVec 64) Int) Unit!7152)

(assert (=> b!231976 (= lt!117098 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!321 (_keys!6373 thiss!1504) (_values!4302 thiss!1504) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) key!932 (defaultEntry!4319 thiss!1504)))))

(assert (=> b!231976 (= c!38546 (is-MissingZero!969 lt!117108))))

(declare-fun e!150634 () Bool)

(assert (=> b!231976 e!150634))

(declare-fun b!231977 () Bool)

(declare-fun e!150640 () Unit!7152)

(declare-fun Unit!7154 () Unit!7152)

(assert (=> b!231977 (= e!150640 Unit!7154)))

(declare-fun lt!117099 () Unit!7152)

(declare-fun lemmaArrayContainsKeyThenInListMap!142 (array!11458 array!11456 (_ BitVec 32) (_ BitVec 32) V!7789 V!7789 (_ BitVec 64) (_ BitVec 32) Int) Unit!7152)

(assert (=> b!231977 (= lt!117099 (lemmaArrayContainsKeyThenInListMap!142 (_keys!6373 thiss!1504) (_values!4302 thiss!1504) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4319 thiss!1504)))))

(assert (=> b!231977 false))

(declare-fun b!231978 () Bool)

(declare-fun Unit!7155 () Unit!7152)

(assert (=> b!231978 (= e!150643 Unit!7155)))

(declare-fun lt!117102 () Unit!7152)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!308 (array!11458 array!11456 (_ BitVec 32) (_ BitVec 32) V!7789 V!7789 (_ BitVec 64) Int) Unit!7152)

(assert (=> b!231978 (= lt!117102 (lemmaInListMapThenSeekEntryOrOpenFindsIt!308 (_keys!6373 thiss!1504) (_values!4302 thiss!1504) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) key!932 (defaultEntry!4319 thiss!1504)))))

(assert (=> b!231978 false))

(declare-fun b!231979 () Bool)

(declare-fun Unit!7156 () Unit!7152)

(assert (=> b!231979 (= e!150640 Unit!7156)))

(declare-fun e!150638 () Bool)

(declare-fun array_inv!3581 (array!11458) Bool)

(declare-fun array_inv!3582 (array!11456) Bool)

(assert (=> b!231980 (= e!150636 (and tp!21877 tp_is_empty!6107 (array_inv!3581 (_keys!6373 thiss!1504)) (array_inv!3582 (_values!4302 thiss!1504)) e!150638))))

(declare-fun b!231981 () Bool)

(declare-fun e!150631 () Bool)

(declare-fun call!21568 () Bool)

(assert (=> b!231981 (= e!150631 (not call!21568))))

(declare-fun b!231982 () Bool)

(declare-fun e!150630 () Bool)

(declare-fun e!150635 () Bool)

(assert (=> b!231982 (= e!150630 e!150635)))

(declare-fun res!113968 () Bool)

(assert (=> b!231982 (= res!113968 call!21567)))

(assert (=> b!231982 (=> (not res!113968) (not e!150635))))

(declare-fun b!231983 () Bool)

(declare-fun e!150639 () Bool)

(declare-fun e!150637 () Bool)

(assert (=> b!231983 (= e!150639 e!150637)))

(declare-fun res!113964 () Bool)

(assert (=> b!231983 (=> (not res!113964) (not e!150637))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231983 (= res!113964 (inRange!0 index!297 (mask!10227 thiss!1504)))))

(declare-fun lt!117096 () Unit!7152)

(assert (=> b!231983 (= lt!117096 e!150643)))

(declare-fun c!38549 () Bool)

(declare-datatypes ((tuple2!4568 0))(
  ( (tuple2!4569 (_1!2294 (_ BitVec 64)) (_2!2294 V!7789)) )
))
(declare-datatypes ((List!3510 0))(
  ( (Nil!3507) (Cons!3506 (h!4154 tuple2!4568) (t!8477 List!3510)) )
))
(declare-datatypes ((ListLongMap!3495 0))(
  ( (ListLongMap!3496 (toList!1763 List!3510)) )
))
(declare-fun lt!117106 () ListLongMap!3495)

(declare-fun contains!1626 (ListLongMap!3495 (_ BitVec 64)) Bool)

(assert (=> b!231983 (= c!38549 (contains!1626 lt!117106 key!932))))

(declare-fun getCurrentListMap!1286 (array!11458 array!11456 (_ BitVec 32) (_ BitVec 32) V!7789 V!7789 (_ BitVec 32) Int) ListLongMap!3495)

(assert (=> b!231983 (= lt!117106 (getCurrentListMap!1286 (_keys!6373 thiss!1504) (_values!4302 thiss!1504) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4319 thiss!1504)))))

(declare-fun b!231984 () Bool)

(assert (=> b!231984 (= e!150637 (not true))))

(declare-fun lt!117103 () array!11458)

(declare-fun arrayCountValidKeys!0 (array!11458 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231984 (= (arrayCountValidKeys!0 lt!117103 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117107 () Unit!7152)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11458 (_ BitVec 32)) Unit!7152)

(assert (=> b!231984 (= lt!117107 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117103 index!297))))

(declare-fun arrayContainsKey!0 (array!11458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231984 (arrayContainsKey!0 lt!117103 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117097 () Unit!7152)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11458 (_ BitVec 64) (_ BitVec 32)) Unit!7152)

(assert (=> b!231984 (= lt!117097 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117103 key!932 index!297))))

(declare-fun v!346 () V!7789)

(declare-fun +!616 (ListLongMap!3495 tuple2!4568) ListLongMap!3495)

(assert (=> b!231984 (= (+!616 lt!117106 (tuple2!4569 key!932 v!346)) (getCurrentListMap!1286 lt!117103 (array!11457 (store (arr!5447 (_values!4302 thiss!1504)) index!297 (ValueCellFull!2710 v!346)) (size!5780 (_values!4302 thiss!1504))) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4319 thiss!1504)))))

(declare-fun lt!117100 () Unit!7152)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!75 (array!11458 array!11456 (_ BitVec 32) (_ BitVec 32) V!7789 V!7789 (_ BitVec 32) (_ BitVec 64) V!7789 Int) Unit!7152)

(assert (=> b!231984 (= lt!117100 (lemmaAddValidKeyToArrayThenAddPairToListMap!75 (_keys!6373 thiss!1504) (_values!4302 thiss!1504) (mask!10227 thiss!1504) (extraKeys!4056 thiss!1504) (zeroValue!4160 thiss!1504) (minValue!4160 thiss!1504) index!297 key!932 v!346 (defaultEntry!4319 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11458 (_ BitVec 32)) Bool)

(assert (=> b!231984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117103 (mask!10227 thiss!1504))))

(declare-fun lt!117095 () Unit!7152)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11458 (_ BitVec 32) (_ BitVec 32)) Unit!7152)

(assert (=> b!231984 (= lt!117095 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6373 thiss!1504) index!297 (mask!10227 thiss!1504)))))

(assert (=> b!231984 (= (arrayCountValidKeys!0 lt!117103 #b00000000000000000000000000000000 (size!5781 (_keys!6373 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6373 thiss!1504) #b00000000000000000000000000000000 (size!5781 (_keys!6373 thiss!1504)))))))

(declare-fun lt!117104 () Unit!7152)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11458 (_ BitVec 32) (_ BitVec 64)) Unit!7152)

(assert (=> b!231984 (= lt!117104 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6373 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3511 0))(
  ( (Nil!3508) (Cons!3507 (h!4155 (_ BitVec 64)) (t!8478 List!3511)) )
))
(declare-fun arrayNoDuplicates!0 (array!11458 (_ BitVec 32) List!3511) Bool)

(assert (=> b!231984 (arrayNoDuplicates!0 lt!117103 #b00000000000000000000000000000000 Nil!3508)))

(assert (=> b!231984 (= lt!117103 (array!11459 (store (arr!5448 (_keys!6373 thiss!1504)) index!297 key!932) (size!5781 (_keys!6373 thiss!1504))))))

(declare-fun lt!117105 () Unit!7152)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11458 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3511) Unit!7152)

(assert (=> b!231984 (= lt!117105 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6373 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3508))))

(declare-fun lt!117101 () Unit!7152)

(assert (=> b!231984 (= lt!117101 e!150640)))

(declare-fun c!38548 () Bool)

(assert (=> b!231984 (= c!38548 (arrayContainsKey!0 (_keys!6373 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21565 () Bool)

(assert (=> bm!21565 (= call!21568 (arrayContainsKey!0 (_keys!6373 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231985 () Bool)

(declare-fun res!113969 () Bool)

(assert (=> b!231985 (=> (not res!113969) (not e!150631))))

(assert (=> b!231985 (= res!113969 (= (select (arr!5448 (_keys!6373 thiss!1504)) (index!6046 lt!117108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231986 () Bool)

(declare-fun e!150641 () Bool)

(assert (=> b!231986 (= e!150641 tp_is_empty!6107)))

(declare-fun b!231987 () Bool)

(assert (=> b!231987 (= e!150633 tp_is_empty!6107)))

(declare-fun b!231988 () Bool)

(assert (=> b!231988 (= e!150638 (and e!150641 mapRes!10330))))

(declare-fun condMapEmpty!10330 () Bool)

(declare-fun mapDefault!10330 () ValueCell!2710)

