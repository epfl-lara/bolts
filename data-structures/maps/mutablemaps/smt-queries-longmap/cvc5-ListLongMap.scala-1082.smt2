; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22186 () Bool)

(assert start!22186)

(declare-fun b!231869 () Bool)

(declare-fun b_free!6241 () Bool)

(declare-fun b_next!6241 () Bool)

(assert (=> b!231869 (= b_free!6241 (not b_next!6241))))

(declare-fun tp!21864 () Bool)

(declare-fun b_and!13157 () Bool)

(assert (=> b!231869 (= tp!21864 b_and!13157)))

(declare-fun b!231856 () Bool)

(declare-fun e!150551 () Bool)

(declare-datatypes ((SeekEntryResult!967 0))(
  ( (MissingZero!967 (index!6038 (_ BitVec 32))) (Found!967 (index!6039 (_ BitVec 32))) (Intermediate!967 (undefined!1779 Bool) (index!6040 (_ BitVec 32)) (x!23539 (_ BitVec 32))) (Undefined!967) (MissingVacant!967 (index!6041 (_ BitVec 32))) )
))
(declare-fun lt!117018 () SeekEntryResult!967)

(assert (=> b!231856 (= e!150551 (is-Undefined!967 lt!117018))))

(declare-fun c!38522 () Bool)

(declare-datatypes ((V!7785 0))(
  ( (V!7786 (val!3096 Int)) )
))
(declare-datatypes ((ValueCell!2708 0))(
  ( (ValueCellFull!2708 (v!5112 V!7785)) (EmptyCell!2708) )
))
(declare-datatypes ((array!11448 0))(
  ( (array!11449 (arr!5443 (Array (_ BitVec 32) ValueCell!2708)) (size!5776 (_ BitVec 32))) )
))
(declare-datatypes ((array!11450 0))(
  ( (array!11451 (arr!5444 (Array (_ BitVec 32) (_ BitVec 64))) (size!5777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3316 0))(
  ( (LongMapFixedSize!3317 (defaultEntry!4317 Int) (mask!10225 (_ BitVec 32)) (extraKeys!4054 (_ BitVec 32)) (zeroValue!4158 V!7785) (minValue!4158 V!7785) (_size!1707 (_ BitVec 32)) (_keys!6371 array!11450) (_values!4300 array!11448) (_vacant!1707 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3316)

(declare-fun call!21556 () Bool)

(declare-fun bm!21552 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21552 (= call!21556 (inRange!0 (ite c!38522 (index!6038 lt!117018) (index!6041 lt!117018)) (mask!10225 thiss!1504)))))

(declare-fun b!231857 () Bool)

(declare-fun e!150547 () Bool)

(declare-fun call!21555 () Bool)

(assert (=> b!231857 (= e!150547 (not call!21555))))

(declare-fun b!231858 () Bool)

(declare-datatypes ((Unit!7144 0))(
  ( (Unit!7145) )
))
(declare-fun e!150550 () Unit!7144)

(declare-fun Unit!7146 () Unit!7144)

(assert (=> b!231858 (= e!150550 Unit!7146)))

(declare-fun lt!117020 () Unit!7144)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!306 (array!11450 array!11448 (_ BitVec 32) (_ BitVec 32) V!7785 V!7785 (_ BitVec 64) Int) Unit!7144)

(assert (=> b!231858 (= lt!117020 (lemmaInListMapThenSeekEntryOrOpenFindsIt!306 (_keys!6371 thiss!1504) (_values!4300 thiss!1504) (mask!10225 thiss!1504) (extraKeys!4054 thiss!1504) (zeroValue!4158 thiss!1504) (minValue!4158 thiss!1504) key!932 (defaultEntry!4317 thiss!1504)))))

(assert (=> b!231858 false))

(declare-fun mapIsEmpty!10324 () Bool)

(declare-fun mapRes!10324 () Bool)

(assert (=> mapIsEmpty!10324 mapRes!10324))

(declare-fun b!231859 () Bool)

(declare-fun e!150552 () Bool)

(declare-fun tp_is_empty!6103 () Bool)

(assert (=> b!231859 (= e!150552 tp_is_empty!6103)))

(declare-fun b!231860 () Bool)

(declare-fun res!113920 () Bool)

(assert (=> b!231860 (=> (not res!113920) (not e!150547))))

(assert (=> b!231860 (= res!113920 call!21556)))

(declare-fun e!150546 () Bool)

(assert (=> b!231860 (= e!150546 e!150547)))

(declare-fun b!231861 () Bool)

(declare-fun res!113923 () Bool)

(assert (=> b!231861 (= res!113923 (= (select (arr!5444 (_keys!6371 thiss!1504)) (index!6041 lt!117018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!150558 () Bool)

(assert (=> b!231861 (=> (not res!113923) (not e!150558))))

(declare-fun b!231862 () Bool)

(declare-fun e!150548 () Bool)

(assert (=> b!231862 (= e!150548 (not true))))

(declare-fun lt!117012 () array!11450)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11450 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231862 (= (arrayCountValidKeys!0 lt!117012 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117019 () Unit!7144)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11450 (_ BitVec 32)) Unit!7144)

(assert (=> b!231862 (= lt!117019 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117012 index!297))))

(declare-fun arrayContainsKey!0 (array!11450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231862 (arrayContainsKey!0 lt!117012 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117023 () Unit!7144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11450 (_ BitVec 64) (_ BitVec 32)) Unit!7144)

(assert (=> b!231862 (= lt!117023 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117012 key!932 index!297))))

(declare-fun v!346 () V!7785)

(declare-datatypes ((tuple2!4564 0))(
  ( (tuple2!4565 (_1!2292 (_ BitVec 64)) (_2!2292 V!7785)) )
))
(declare-datatypes ((List!3506 0))(
  ( (Nil!3503) (Cons!3502 (h!4150 tuple2!4564) (t!8473 List!3506)) )
))
(declare-datatypes ((ListLongMap!3491 0))(
  ( (ListLongMap!3492 (toList!1761 List!3506)) )
))
(declare-fun lt!117017 () ListLongMap!3491)

(declare-fun +!614 (ListLongMap!3491 tuple2!4564) ListLongMap!3491)

(declare-fun getCurrentListMap!1284 (array!11450 array!11448 (_ BitVec 32) (_ BitVec 32) V!7785 V!7785 (_ BitVec 32) Int) ListLongMap!3491)

(assert (=> b!231862 (= (+!614 lt!117017 (tuple2!4565 key!932 v!346)) (getCurrentListMap!1284 lt!117012 (array!11449 (store (arr!5443 (_values!4300 thiss!1504)) index!297 (ValueCellFull!2708 v!346)) (size!5776 (_values!4300 thiss!1504))) (mask!10225 thiss!1504) (extraKeys!4054 thiss!1504) (zeroValue!4158 thiss!1504) (minValue!4158 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4317 thiss!1504)))))

(declare-fun lt!117014 () Unit!7144)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!73 (array!11450 array!11448 (_ BitVec 32) (_ BitVec 32) V!7785 V!7785 (_ BitVec 32) (_ BitVec 64) V!7785 Int) Unit!7144)

(assert (=> b!231862 (= lt!117014 (lemmaAddValidKeyToArrayThenAddPairToListMap!73 (_keys!6371 thiss!1504) (_values!4300 thiss!1504) (mask!10225 thiss!1504) (extraKeys!4054 thiss!1504) (zeroValue!4158 thiss!1504) (minValue!4158 thiss!1504) index!297 key!932 v!346 (defaultEntry!4317 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11450 (_ BitVec 32)) Bool)

(assert (=> b!231862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117012 (mask!10225 thiss!1504))))

(declare-fun lt!117013 () Unit!7144)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11450 (_ BitVec 32) (_ BitVec 32)) Unit!7144)

(assert (=> b!231862 (= lt!117013 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6371 thiss!1504) index!297 (mask!10225 thiss!1504)))))

(assert (=> b!231862 (= (arrayCountValidKeys!0 lt!117012 #b00000000000000000000000000000000 (size!5777 (_keys!6371 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6371 thiss!1504) #b00000000000000000000000000000000 (size!5777 (_keys!6371 thiss!1504)))))))

(declare-fun lt!117011 () Unit!7144)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11450 (_ BitVec 32) (_ BitVec 64)) Unit!7144)

(assert (=> b!231862 (= lt!117011 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6371 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3507 0))(
  ( (Nil!3504) (Cons!3503 (h!4151 (_ BitVec 64)) (t!8474 List!3507)) )
))
(declare-fun arrayNoDuplicates!0 (array!11450 (_ BitVec 32) List!3507) Bool)

(assert (=> b!231862 (arrayNoDuplicates!0 lt!117012 #b00000000000000000000000000000000 Nil!3504)))

(assert (=> b!231862 (= lt!117012 (array!11451 (store (arr!5444 (_keys!6371 thiss!1504)) index!297 key!932) (size!5777 (_keys!6371 thiss!1504))))))

(declare-fun lt!117015 () Unit!7144)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11450 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3507) Unit!7144)

(assert (=> b!231862 (= lt!117015 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6371 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3504))))

(declare-fun lt!117021 () Unit!7144)

(declare-fun e!150554 () Unit!7144)

(assert (=> b!231862 (= lt!117021 e!150554)))

(declare-fun c!38523 () Bool)

(assert (=> b!231862 (= c!38523 (arrayContainsKey!0 (_keys!6371 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231863 () Bool)

(declare-fun e!150549 () Bool)

(assert (=> b!231863 (= e!150549 tp_is_empty!6103)))

(declare-fun b!231864 () Bool)

(declare-fun e!150559 () Bool)

(assert (=> b!231864 (= e!150559 e!150548)))

(declare-fun res!113917 () Bool)

(assert (=> b!231864 (=> (not res!113917) (not e!150548))))

(assert (=> b!231864 (= res!113917 (inRange!0 index!297 (mask!10225 thiss!1504)))))

(declare-fun lt!117024 () Unit!7144)

(assert (=> b!231864 (= lt!117024 e!150550)))

(declare-fun c!38525 () Bool)

(declare-fun contains!1624 (ListLongMap!3491 (_ BitVec 64)) Bool)

(assert (=> b!231864 (= c!38525 (contains!1624 lt!117017 key!932))))

(assert (=> b!231864 (= lt!117017 (getCurrentListMap!1284 (_keys!6371 thiss!1504) (_values!4300 thiss!1504) (mask!10225 thiss!1504) (extraKeys!4054 thiss!1504) (zeroValue!4158 thiss!1504) (minValue!4158 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4317 thiss!1504)))))

(declare-fun b!231865 () Bool)

(declare-fun e!150556 () Bool)

(assert (=> b!231865 (= e!150556 (and e!150552 mapRes!10324))))

(declare-fun condMapEmpty!10324 () Bool)

(declare-fun mapDefault!10324 () ValueCell!2708)

