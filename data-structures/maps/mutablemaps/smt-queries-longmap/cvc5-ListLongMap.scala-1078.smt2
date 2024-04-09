; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22162 () Bool)

(assert start!22162)

(declare-fun b!231144 () Bool)

(declare-fun b_free!6217 () Bool)

(declare-fun b_next!6217 () Bool)

(assert (=> b!231144 (= b_free!6217 (not b_next!6217))))

(declare-fun tp!21792 () Bool)

(declare-fun b_and!13133 () Bool)

(assert (=> b!231144 (= tp!21792 b_and!13133)))

(declare-fun bm!21480 () Bool)

(declare-fun call!21483 () Bool)

(declare-datatypes ((V!7753 0))(
  ( (V!7754 (val!3084 Int)) )
))
(declare-datatypes ((ValueCell!2696 0))(
  ( (ValueCellFull!2696 (v!5100 V!7753)) (EmptyCell!2696) )
))
(declare-datatypes ((array!11400 0))(
  ( (array!11401 (arr!5419 (Array (_ BitVec 32) ValueCell!2696)) (size!5752 (_ BitVec 32))) )
))
(declare-datatypes ((array!11402 0))(
  ( (array!11403 (arr!5420 (Array (_ BitVec 32) (_ BitVec 64))) (size!5753 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3292 0))(
  ( (LongMapFixedSize!3293 (defaultEntry!4305 Int) (mask!10205 (_ BitVec 32)) (extraKeys!4042 (_ BitVec 32)) (zeroValue!4146 V!7753) (minValue!4146 V!7753) (_size!1695 (_ BitVec 32)) (_keys!6359 array!11402) (_values!4288 array!11400) (_vacant!1695 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3292)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21480 (= call!21483 (arrayContainsKey!0 (_keys!6359 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10288 () Bool)

(declare-fun mapRes!10288 () Bool)

(assert (=> mapIsEmpty!10288 mapRes!10288))

(declare-fun b!231136 () Bool)

(declare-fun res!113633 () Bool)

(declare-fun e!150052 () Bool)

(assert (=> b!231136 (=> (not res!113633) (not e!150052))))

(declare-fun call!21484 () Bool)

(assert (=> b!231136 (= res!113633 call!21484)))

(declare-fun e!150050 () Bool)

(assert (=> b!231136 (= e!150050 e!150052)))

(declare-fun b!231137 () Bool)

(declare-fun e!150048 () Bool)

(assert (=> b!231137 (= e!150048 (not true))))

(declare-fun lt!116513 () array!11402)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11402 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231137 (= (arrayCountValidKeys!0 lt!116513 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7100 0))(
  ( (Unit!7101) )
))
(declare-fun lt!116518 () Unit!7100)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11402 (_ BitVec 32)) Unit!7100)

(assert (=> b!231137 (= lt!116518 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116513 index!297))))

(assert (=> b!231137 (arrayContainsKey!0 lt!116513 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116514 () Unit!7100)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11402 (_ BitVec 64) (_ BitVec 32)) Unit!7100)

(assert (=> b!231137 (= lt!116514 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116513 key!932 index!297))))

(declare-datatypes ((tuple2!4546 0))(
  ( (tuple2!4547 (_1!2283 (_ BitVec 64)) (_2!2283 V!7753)) )
))
(declare-datatypes ((List!3490 0))(
  ( (Nil!3487) (Cons!3486 (h!4134 tuple2!4546) (t!8457 List!3490)) )
))
(declare-datatypes ((ListLongMap!3473 0))(
  ( (ListLongMap!3474 (toList!1752 List!3490)) )
))
(declare-fun lt!116517 () ListLongMap!3473)

(declare-fun v!346 () V!7753)

(declare-fun +!607 (ListLongMap!3473 tuple2!4546) ListLongMap!3473)

(declare-fun getCurrentListMap!1275 (array!11402 array!11400 (_ BitVec 32) (_ BitVec 32) V!7753 V!7753 (_ BitVec 32) Int) ListLongMap!3473)

(assert (=> b!231137 (= (+!607 lt!116517 (tuple2!4547 key!932 v!346)) (getCurrentListMap!1275 lt!116513 (array!11401 (store (arr!5419 (_values!4288 thiss!1504)) index!297 (ValueCellFull!2696 v!346)) (size!5752 (_values!4288 thiss!1504))) (mask!10205 thiss!1504) (extraKeys!4042 thiss!1504) (zeroValue!4146 thiss!1504) (minValue!4146 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4305 thiss!1504)))))

(declare-fun lt!116507 () Unit!7100)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!66 (array!11402 array!11400 (_ BitVec 32) (_ BitVec 32) V!7753 V!7753 (_ BitVec 32) (_ BitVec 64) V!7753 Int) Unit!7100)

(assert (=> b!231137 (= lt!116507 (lemmaAddValidKeyToArrayThenAddPairToListMap!66 (_keys!6359 thiss!1504) (_values!4288 thiss!1504) (mask!10205 thiss!1504) (extraKeys!4042 thiss!1504) (zeroValue!4146 thiss!1504) (minValue!4146 thiss!1504) index!297 key!932 v!346 (defaultEntry!4305 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11402 (_ BitVec 32)) Bool)

(assert (=> b!231137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116513 (mask!10205 thiss!1504))))

(declare-fun lt!116509 () Unit!7100)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11402 (_ BitVec 32) (_ BitVec 32)) Unit!7100)

(assert (=> b!231137 (= lt!116509 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6359 thiss!1504) index!297 (mask!10205 thiss!1504)))))

(assert (=> b!231137 (= (arrayCountValidKeys!0 lt!116513 #b00000000000000000000000000000000 (size!5753 (_keys!6359 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6359 thiss!1504) #b00000000000000000000000000000000 (size!5753 (_keys!6359 thiss!1504)))))))

(declare-fun lt!116512 () Unit!7100)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11402 (_ BitVec 32) (_ BitVec 64)) Unit!7100)

(assert (=> b!231137 (= lt!116512 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6359 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3491 0))(
  ( (Nil!3488) (Cons!3487 (h!4135 (_ BitVec 64)) (t!8458 List!3491)) )
))
(declare-fun arrayNoDuplicates!0 (array!11402 (_ BitVec 32) List!3491) Bool)

(assert (=> b!231137 (arrayNoDuplicates!0 lt!116513 #b00000000000000000000000000000000 Nil!3488)))

(assert (=> b!231137 (= lt!116513 (array!11403 (store (arr!5420 (_keys!6359 thiss!1504)) index!297 key!932) (size!5753 (_keys!6359 thiss!1504))))))

(declare-fun lt!116519 () Unit!7100)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11402 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3491) Unit!7100)

(assert (=> b!231137 (= lt!116519 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6359 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3488))))

(declare-fun lt!116511 () Unit!7100)

(declare-fun e!150055 () Unit!7100)

(assert (=> b!231137 (= lt!116511 e!150055)))

(declare-fun c!38381 () Bool)

(assert (=> b!231137 (= c!38381 (arrayContainsKey!0 (_keys!6359 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231138 () Bool)

(declare-fun c!38380 () Bool)

(declare-datatypes ((SeekEntryResult!958 0))(
  ( (MissingZero!958 (index!6002 (_ BitVec 32))) (Found!958 (index!6003 (_ BitVec 32))) (Intermediate!958 (undefined!1770 Bool) (index!6004 (_ BitVec 32)) (x!23498 (_ BitVec 32))) (Undefined!958) (MissingVacant!958 (index!6005 (_ BitVec 32))) )
))
(declare-fun lt!116510 () SeekEntryResult!958)

(assert (=> b!231138 (= c!38380 (is-MissingVacant!958 lt!116510))))

(declare-fun e!150051 () Bool)

(assert (=> b!231138 (= e!150050 e!150051)))

(declare-fun b!231139 () Bool)

(declare-fun Unit!7102 () Unit!7100)

(assert (=> b!231139 (= e!150055 Unit!7102)))

(declare-fun lt!116520 () Unit!7100)

(declare-fun lemmaArrayContainsKeyThenInListMap!132 (array!11402 array!11400 (_ BitVec 32) (_ BitVec 32) V!7753 V!7753 (_ BitVec 64) (_ BitVec 32) Int) Unit!7100)

(assert (=> b!231139 (= lt!116520 (lemmaArrayContainsKeyThenInListMap!132 (_keys!6359 thiss!1504) (_values!4288 thiss!1504) (mask!10205 thiss!1504) (extraKeys!4042 thiss!1504) (zeroValue!4146 thiss!1504) (minValue!4146 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4305 thiss!1504)))))

(assert (=> b!231139 false))

(declare-fun b!231140 () Bool)

(declare-fun e!150046 () Bool)

(declare-fun e!150043 () Bool)

(assert (=> b!231140 (= e!150046 e!150043)))

(declare-fun res!113629 () Bool)

(assert (=> b!231140 (=> (not res!113629) (not e!150043))))

(assert (=> b!231140 (= res!113629 (or (= lt!116510 (MissingZero!958 index!297)) (= lt!116510 (MissingVacant!958 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11402 (_ BitVec 32)) SeekEntryResult!958)

(assert (=> b!231140 (= lt!116510 (seekEntryOrOpen!0 key!932 (_keys!6359 thiss!1504) (mask!10205 thiss!1504)))))

(declare-fun b!231141 () Bool)

(declare-fun res!113632 () Bool)

(assert (=> b!231141 (=> (not res!113632) (not e!150046))))

(assert (=> b!231141 (= res!113632 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231142 () Bool)

(declare-fun e!150044 () Unit!7100)

(declare-fun Unit!7103 () Unit!7100)

(assert (=> b!231142 (= e!150044 Unit!7103)))

(declare-fun lt!116508 () Unit!7100)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!299 (array!11402 array!11400 (_ BitVec 32) (_ BitVec 32) V!7753 V!7753 (_ BitVec 64) Int) Unit!7100)

(assert (=> b!231142 (= lt!116508 (lemmaInListMapThenSeekEntryOrOpenFindsIt!299 (_keys!6359 thiss!1504) (_values!4288 thiss!1504) (mask!10205 thiss!1504) (extraKeys!4042 thiss!1504) (zeroValue!4146 thiss!1504) (minValue!4146 thiss!1504) key!932 (defaultEntry!4305 thiss!1504)))))

(assert (=> b!231142 false))

(declare-fun bm!21481 () Bool)

(declare-fun c!38379 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21481 (= call!21484 (inRange!0 (ite c!38379 (index!6002 lt!116510) (index!6005 lt!116510)) (mask!10205 thiss!1504)))))

(declare-fun b!231143 () Bool)

(declare-fun e!150042 () Bool)

(declare-fun tp_is_empty!6079 () Bool)

(assert (=> b!231143 (= e!150042 tp_is_empty!6079)))

(declare-fun res!113634 () Bool)

(assert (=> start!22162 (=> (not res!113634) (not e!150046))))

(declare-fun valid!1300 (LongMapFixedSize!3292) Bool)

(assert (=> start!22162 (= res!113634 (valid!1300 thiss!1504))))

(assert (=> start!22162 e!150046))

(declare-fun e!150049 () Bool)

(assert (=> start!22162 e!150049))

(assert (=> start!22162 true))

(assert (=> start!22162 tp_is_empty!6079))

(declare-fun e!150054 () Bool)

(declare-fun array_inv!3565 (array!11402) Bool)

(declare-fun array_inv!3566 (array!11400) Bool)

(assert (=> b!231144 (= e!150049 (and tp!21792 tp_is_empty!6079 (array_inv!3565 (_keys!6359 thiss!1504)) (array_inv!3566 (_values!4288 thiss!1504)) e!150054))))

(declare-fun b!231145 () Bool)

(declare-fun Unit!7104 () Unit!7100)

(assert (=> b!231145 (= e!150055 Unit!7104)))

(declare-fun b!231146 () Bool)

(assert (=> b!231146 (= e!150052 (not call!21483))))

(declare-fun b!231147 () Bool)

(declare-fun e!150045 () Bool)

(assert (=> b!231147 (= e!150045 tp_is_empty!6079)))

(declare-fun b!231148 () Bool)

(declare-fun e!150053 () Bool)

(assert (=> b!231148 (= e!150051 e!150053)))

(declare-fun res!113630 () Bool)

(assert (=> b!231148 (= res!113630 call!21484)))

(assert (=> b!231148 (=> (not res!113630) (not e!150053))))

(declare-fun b!231149 () Bool)

(declare-fun res!113631 () Bool)

(assert (=> b!231149 (=> (not res!113631) (not e!150052))))

(assert (=> b!231149 (= res!113631 (= (select (arr!5420 (_keys!6359 thiss!1504)) (index!6002 lt!116510)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231150 () Bool)

(assert (=> b!231150 (= e!150054 (and e!150042 mapRes!10288))))

(declare-fun condMapEmpty!10288 () Bool)

(declare-fun mapDefault!10288 () ValueCell!2696)

