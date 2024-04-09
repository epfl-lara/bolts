; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24570 () Bool)

(assert start!24570)

(declare-fun b!257062 () Bool)

(declare-fun b_free!6727 () Bool)

(declare-fun b_next!6727 () Bool)

(assert (=> b!257062 (= b_free!6727 (not b_next!6727))))

(declare-fun tp!23487 () Bool)

(declare-fun b_and!13811 () Bool)

(assert (=> b!257062 (= tp!23487 b_and!13811)))

(declare-fun b!257047 () Bool)

(declare-datatypes ((Unit!7978 0))(
  ( (Unit!7979) )
))
(declare-fun e!166639 () Unit!7978)

(declare-fun Unit!7980 () Unit!7978)

(assert (=> b!257047 (= e!166639 Unit!7980)))

(declare-fun lt!129216 () Unit!7978)

(declare-datatypes ((V!8433 0))(
  ( (V!8434 (val!3339 Int)) )
))
(declare-datatypes ((ValueCell!2951 0))(
  ( (ValueCellFull!2951 (v!5427 V!8433)) (EmptyCell!2951) )
))
(declare-datatypes ((array!12520 0))(
  ( (array!12521 (arr!5929 (Array (_ BitVec 32) ValueCell!2951)) (size!6276 (_ BitVec 32))) )
))
(declare-datatypes ((array!12522 0))(
  ( (array!12523 (arr!5930 (Array (_ BitVec 32) (_ BitVec 64))) (size!6277 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3802 0))(
  ( (LongMapFixedSize!3803 (defaultEntry!4744 Int) (mask!11028 (_ BitVec 32)) (extraKeys!4481 (_ BitVec 32)) (zeroValue!4585 V!8433) (minValue!4585 V!8433) (_size!1950 (_ BitVec 32)) (_keys!6910 array!12522) (_values!4727 array!12520) (_vacant!1950 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3802)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!237 (array!12522 array!12520 (_ BitVec 32) (_ BitVec 32) V!8433 V!8433 (_ BitVec 64) (_ BitVec 32) Int) Unit!7978)

(assert (=> b!257047 (= lt!129216 (lemmaArrayContainsKeyThenInListMap!237 (_keys!6910 thiss!1504) (_values!4727 thiss!1504) (mask!11028 thiss!1504) (extraKeys!4481 thiss!1504) (zeroValue!4585 thiss!1504) (minValue!4585 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4744 thiss!1504)))))

(assert (=> b!257047 false))

(declare-fun b!257048 () Bool)

(declare-fun c!43471 () Bool)

(declare-datatypes ((SeekEntryResult!1177 0))(
  ( (MissingZero!1177 (index!6878 (_ BitVec 32))) (Found!1177 (index!6879 (_ BitVec 32))) (Intermediate!1177 (undefined!1989 Bool) (index!6880 (_ BitVec 32)) (x!25009 (_ BitVec 32))) (Undefined!1177) (MissingVacant!1177 (index!6881 (_ BitVec 32))) )
))
(declare-fun lt!129217 () SeekEntryResult!1177)

(assert (=> b!257048 (= c!43471 (is-MissingVacant!1177 lt!129217))))

(declare-fun e!166642 () Bool)

(declare-fun e!166640 () Bool)

(assert (=> b!257048 (= e!166642 e!166640)))

(declare-fun b!257049 () Bool)

(assert (=> b!257049 (= e!166640 (is-Undefined!1177 lt!129217))))

(declare-fun b!257050 () Bool)

(declare-fun res!125763 () Bool)

(assert (=> b!257050 (= res!125763 (= (select (arr!5930 (_keys!6910 thiss!1504)) (index!6881 lt!129217)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166634 () Bool)

(assert (=> b!257050 (=> (not res!125763) (not e!166634))))

(declare-fun res!125762 () Bool)

(declare-fun e!166641 () Bool)

(assert (=> start!24570 (=> (not res!125762) (not e!166641))))

(declare-fun valid!1478 (LongMapFixedSize!3802) Bool)

(assert (=> start!24570 (= res!125762 (valid!1478 thiss!1504))))

(assert (=> start!24570 e!166641))

(declare-fun e!166637 () Bool)

(assert (=> start!24570 e!166637))

(assert (=> start!24570 true))

(declare-fun tp_is_empty!6589 () Bool)

(assert (=> start!24570 tp_is_empty!6589))

(declare-fun b!257051 () Bool)

(declare-fun e!166631 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!257051 (= e!166631 (not (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6276 (_values!4727 thiss!1504))))))))

(declare-fun lt!129210 () array!12522)

(declare-fun arrayCountValidKeys!0 (array!12522 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257051 (= (arrayCountValidKeys!0 lt!129210 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129213 () Unit!7978)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12522 (_ BitVec 32)) Unit!7978)

(assert (=> b!257051 (= lt!129213 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129210 index!297))))

(declare-fun arrayContainsKey!0 (array!12522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!257051 (arrayContainsKey!0 lt!129210 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129212 () Unit!7978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12522 (_ BitVec 64) (_ BitVec 32)) Unit!7978)

(assert (=> b!257051 (= lt!129212 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129210 key!932 index!297))))

(declare-datatypes ((tuple2!4914 0))(
  ( (tuple2!4915 (_1!2467 (_ BitVec 64)) (_2!2467 V!8433)) )
))
(declare-datatypes ((List!3817 0))(
  ( (Nil!3814) (Cons!3813 (h!4475 tuple2!4914) (t!8884 List!3817)) )
))
(declare-datatypes ((ListLongMap!3841 0))(
  ( (ListLongMap!3842 (toList!1936 List!3817)) )
))
(declare-fun lt!129214 () ListLongMap!3841)

(declare-fun v!346 () V!8433)

(declare-fun +!680 (ListLongMap!3841 tuple2!4914) ListLongMap!3841)

(declare-fun getCurrentListMap!1459 (array!12522 array!12520 (_ BitVec 32) (_ BitVec 32) V!8433 V!8433 (_ BitVec 32) Int) ListLongMap!3841)

(assert (=> b!257051 (= (+!680 lt!129214 (tuple2!4915 key!932 v!346)) (getCurrentListMap!1459 lt!129210 (array!12521 (store (arr!5929 (_values!4727 thiss!1504)) index!297 (ValueCellFull!2951 v!346)) (size!6276 (_values!4727 thiss!1504))) (mask!11028 thiss!1504) (extraKeys!4481 thiss!1504) (zeroValue!4585 thiss!1504) (minValue!4585 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4744 thiss!1504)))))

(declare-fun lt!129211 () Unit!7978)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!95 (array!12522 array!12520 (_ BitVec 32) (_ BitVec 32) V!8433 V!8433 (_ BitVec 32) (_ BitVec 64) V!8433 Int) Unit!7978)

(assert (=> b!257051 (= lt!129211 (lemmaAddValidKeyToArrayThenAddPairToListMap!95 (_keys!6910 thiss!1504) (_values!4727 thiss!1504) (mask!11028 thiss!1504) (extraKeys!4481 thiss!1504) (zeroValue!4585 thiss!1504) (minValue!4585 thiss!1504) index!297 key!932 v!346 (defaultEntry!4744 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12522 (_ BitVec 32)) Bool)

(assert (=> b!257051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129210 (mask!11028 thiss!1504))))

(declare-fun lt!129209 () Unit!7978)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12522 (_ BitVec 32) (_ BitVec 32)) Unit!7978)

(assert (=> b!257051 (= lt!129209 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6910 thiss!1504) index!297 (mask!11028 thiss!1504)))))

(assert (=> b!257051 (= (arrayCountValidKeys!0 lt!129210 #b00000000000000000000000000000000 (size!6277 (_keys!6910 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6910 thiss!1504) #b00000000000000000000000000000000 (size!6277 (_keys!6910 thiss!1504)))))))

(declare-fun lt!129218 () Unit!7978)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12522 (_ BitVec 32) (_ BitVec 64)) Unit!7978)

(assert (=> b!257051 (= lt!129218 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6910 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3818 0))(
  ( (Nil!3815) (Cons!3814 (h!4476 (_ BitVec 64)) (t!8885 List!3818)) )
))
(declare-fun arrayNoDuplicates!0 (array!12522 (_ BitVec 32) List!3818) Bool)

(assert (=> b!257051 (arrayNoDuplicates!0 lt!129210 #b00000000000000000000000000000000 Nil!3815)))

(assert (=> b!257051 (= lt!129210 (array!12523 (store (arr!5930 (_keys!6910 thiss!1504)) index!297 key!932) (size!6277 (_keys!6910 thiss!1504))))))

(declare-fun lt!129219 () Unit!7978)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3818) Unit!7978)

(assert (=> b!257051 (= lt!129219 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6910 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3815))))

(declare-fun lt!129222 () Unit!7978)

(assert (=> b!257051 (= lt!129222 e!166639)))

(declare-fun c!43469 () Bool)

(assert (=> b!257051 (= c!43469 (arrayContainsKey!0 (_keys!6910 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24385 () Bool)

(declare-fun call!24388 () Bool)

(assert (=> bm!24385 (= call!24388 (arrayContainsKey!0 (_keys!6910 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257052 () Bool)

(assert (=> b!257052 (= e!166640 e!166634)))

(declare-fun res!125759 () Bool)

(declare-fun call!24389 () Bool)

(assert (=> b!257052 (= res!125759 call!24389)))

(assert (=> b!257052 (=> (not res!125759) (not e!166634))))

(declare-fun b!257053 () Bool)

(declare-fun e!166636 () Bool)

(assert (=> b!257053 (= e!166636 (not call!24388))))

(declare-fun b!257054 () Bool)

(declare-fun e!166632 () Bool)

(assert (=> b!257054 (= e!166632 tp_is_empty!6589)))

(declare-fun b!257055 () Bool)

(declare-fun e!166633 () Unit!7978)

(declare-fun lt!129215 () Unit!7978)

(assert (=> b!257055 (= e!166633 lt!129215)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!431 (array!12522 array!12520 (_ BitVec 32) (_ BitVec 32) V!8433 V!8433 (_ BitVec 64) Int) Unit!7978)

(assert (=> b!257055 (= lt!129215 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!431 (_keys!6910 thiss!1504) (_values!4727 thiss!1504) (mask!11028 thiss!1504) (extraKeys!4481 thiss!1504) (zeroValue!4585 thiss!1504) (minValue!4585 thiss!1504) key!932 (defaultEntry!4744 thiss!1504)))))

(declare-fun c!43468 () Bool)

(assert (=> b!257055 (= c!43468 (is-MissingZero!1177 lt!129217))))

(assert (=> b!257055 e!166642))

(declare-fun b!257056 () Bool)

(declare-fun res!125761 () Bool)

(assert (=> b!257056 (=> (not res!125761) (not e!166636))))

(assert (=> b!257056 (= res!125761 call!24389)))

(assert (=> b!257056 (= e!166642 e!166636)))

(declare-fun b!257057 () Bool)

(declare-fun Unit!7981 () Unit!7978)

(assert (=> b!257057 (= e!166639 Unit!7981)))

(declare-fun b!257058 () Bool)

(declare-fun e!166630 () Bool)

(assert (=> b!257058 (= e!166630 tp_is_empty!6589)))

(declare-fun b!257059 () Bool)

(declare-fun e!166635 () Bool)

(declare-fun mapRes!11217 () Bool)

(assert (=> b!257059 (= e!166635 (and e!166630 mapRes!11217))))

(declare-fun condMapEmpty!11217 () Bool)

(declare-fun mapDefault!11217 () ValueCell!2951)

