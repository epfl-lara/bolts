; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22118 () Bool)

(assert start!22118)

(declare-fun b!229818 () Bool)

(declare-fun b_free!6173 () Bool)

(declare-fun b_next!6173 () Bool)

(assert (=> b!229818 (= b_free!6173 (not b_next!6173))))

(declare-fun tp!21660 () Bool)

(declare-fun b_and!13089 () Bool)

(assert (=> b!229818 (= tp!21660 b_and!13089)))

(declare-fun b!229816 () Bool)

(declare-fun e!149128 () Bool)

(declare-fun call!21352 () Bool)

(assert (=> b!229816 (= e!149128 (not call!21352))))

(declare-fun b!229817 () Bool)

(declare-fun c!38117 () Bool)

(declare-datatypes ((SeekEntryResult!938 0))(
  ( (MissingZero!938 (index!5922 (_ BitVec 32))) (Found!938 (index!5923 (_ BitVec 32))) (Intermediate!938 (undefined!1750 Bool) (index!5924 (_ BitVec 32)) (x!23414 (_ BitVec 32))) (Undefined!938) (MissingVacant!938 (index!5925 (_ BitVec 32))) )
))
(declare-fun lt!115652 () SeekEntryResult!938)

(assert (=> b!229817 (= c!38117 (is-MissingVacant!938 lt!115652))))

(declare-fun e!149122 () Bool)

(declare-fun e!149130 () Bool)

(assert (=> b!229817 (= e!149122 e!149130)))

(declare-fun call!21351 () Bool)

(declare-fun c!38116 () Bool)

(declare-datatypes ((V!7693 0))(
  ( (V!7694 (val!3062 Int)) )
))
(declare-datatypes ((ValueCell!2674 0))(
  ( (ValueCellFull!2674 (v!5078 V!7693)) (EmptyCell!2674) )
))
(declare-datatypes ((array!11312 0))(
  ( (array!11313 (arr!5375 (Array (_ BitVec 32) ValueCell!2674)) (size!5708 (_ BitVec 32))) )
))
(declare-datatypes ((array!11314 0))(
  ( (array!11315 (arr!5376 (Array (_ BitVec 32) (_ BitVec 64))) (size!5709 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3248 0))(
  ( (LongMapFixedSize!3249 (defaultEntry!4283 Int) (mask!10167 (_ BitVec 32)) (extraKeys!4020 (_ BitVec 32)) (zeroValue!4124 V!7693) (minValue!4124 V!7693) (_size!1673 (_ BitVec 32)) (_keys!6337 array!11314) (_values!4266 array!11312) (_vacant!1673 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3248)

(declare-fun bm!21348 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21348 (= call!21351 (inRange!0 (ite c!38116 (index!5922 lt!115652) (index!5925 lt!115652)) (mask!10167 thiss!1504)))))

(declare-fun e!149124 () Bool)

(declare-fun e!149131 () Bool)

(declare-fun tp_is_empty!6035 () Bool)

(declare-fun array_inv!3537 (array!11314) Bool)

(declare-fun array_inv!3538 (array!11312) Bool)

(assert (=> b!229818 (= e!149131 (and tp!21660 tp_is_empty!6035 (array_inv!3537 (_keys!6337 thiss!1504)) (array_inv!3538 (_values!4266 thiss!1504)) e!149124))))

(declare-fun b!229819 () Bool)

(declare-fun e!149129 () Bool)

(assert (=> b!229819 (= e!149129 (not true))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun v!346 () V!7693)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4512 0))(
  ( (tuple2!4513 (_1!2266 (_ BitVec 64)) (_2!2266 V!7693)) )
))
(declare-datatypes ((List!3460 0))(
  ( (Nil!3457) (Cons!3456 (h!4104 tuple2!4512) (t!8427 List!3460)) )
))
(declare-datatypes ((ListLongMap!3439 0))(
  ( (ListLongMap!3440 (toList!1735 List!3460)) )
))
(declare-fun lt!115651 () ListLongMap!3439)

(declare-fun lt!115650 () array!11314)

(declare-fun +!594 (ListLongMap!3439 tuple2!4512) ListLongMap!3439)

(declare-fun getCurrentListMap!1258 (array!11314 array!11312 (_ BitVec 32) (_ BitVec 32) V!7693 V!7693 (_ BitVec 32) Int) ListLongMap!3439)

(assert (=> b!229819 (= (+!594 lt!115651 (tuple2!4513 key!932 v!346)) (getCurrentListMap!1258 lt!115650 (array!11313 (store (arr!5375 (_values!4266 thiss!1504)) index!297 (ValueCellFull!2674 v!346)) (size!5708 (_values!4266 thiss!1504))) (mask!10167 thiss!1504) (extraKeys!4020 thiss!1504) (zeroValue!4124 thiss!1504) (minValue!4124 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4283 thiss!1504)))))

(declare-datatypes ((Unit!7018 0))(
  ( (Unit!7019) )
))
(declare-fun lt!115659 () Unit!7018)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!53 (array!11314 array!11312 (_ BitVec 32) (_ BitVec 32) V!7693 V!7693 (_ BitVec 32) (_ BitVec 64) V!7693 Int) Unit!7018)

(assert (=> b!229819 (= lt!115659 (lemmaAddValidKeyToArrayThenAddPairToListMap!53 (_keys!6337 thiss!1504) (_values!4266 thiss!1504) (mask!10167 thiss!1504) (extraKeys!4020 thiss!1504) (zeroValue!4124 thiss!1504) (minValue!4124 thiss!1504) index!297 key!932 v!346 (defaultEntry!4283 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11314 (_ BitVec 32)) Bool)

(assert (=> b!229819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115650 (mask!10167 thiss!1504))))

(declare-fun lt!115657 () Unit!7018)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11314 (_ BitVec 32) (_ BitVec 32)) Unit!7018)

(assert (=> b!229819 (= lt!115657 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6337 thiss!1504) index!297 (mask!10167 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11314 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229819 (= (arrayCountValidKeys!0 lt!115650 #b00000000000000000000000000000000 (size!5709 (_keys!6337 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6337 thiss!1504) #b00000000000000000000000000000000 (size!5709 (_keys!6337 thiss!1504)))))))

(declare-fun lt!115653 () Unit!7018)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11314 (_ BitVec 32) (_ BitVec 64)) Unit!7018)

(assert (=> b!229819 (= lt!115653 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6337 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3461 0))(
  ( (Nil!3458) (Cons!3457 (h!4105 (_ BitVec 64)) (t!8428 List!3461)) )
))
(declare-fun arrayNoDuplicates!0 (array!11314 (_ BitVec 32) List!3461) Bool)

(assert (=> b!229819 (arrayNoDuplicates!0 lt!115650 #b00000000000000000000000000000000 Nil!3458)))

(assert (=> b!229819 (= lt!115650 (array!11315 (store (arr!5376 (_keys!6337 thiss!1504)) index!297 key!932) (size!5709 (_keys!6337 thiss!1504))))))

(declare-fun lt!115648 () Unit!7018)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11314 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3461) Unit!7018)

(assert (=> b!229819 (= lt!115648 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6337 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3458))))

(declare-fun lt!115658 () Unit!7018)

(declare-fun e!149123 () Unit!7018)

(assert (=> b!229819 (= lt!115658 e!149123)))

(declare-fun c!38115 () Bool)

(declare-fun arrayContainsKey!0 (array!11314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!229819 (= c!38115 (arrayContainsKey!0 (_keys!6337 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229820 () Bool)

(declare-fun e!149118 () Bool)

(assert (=> b!229820 (= e!149118 (not call!21352))))

(declare-fun mapIsEmpty!10222 () Bool)

(declare-fun mapRes!10222 () Bool)

(assert (=> mapIsEmpty!10222 mapRes!10222))

(declare-fun b!229821 () Bool)

(declare-fun e!149127 () Bool)

(assert (=> b!229821 (= e!149127 tp_is_empty!6035)))

(declare-fun b!229822 () Bool)

(declare-fun e!149121 () Bool)

(assert (=> b!229822 (= e!149124 (and e!149121 mapRes!10222))))

(declare-fun condMapEmpty!10222 () Bool)

(declare-fun mapDefault!10222 () ValueCell!2674)

