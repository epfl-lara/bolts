; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24346 () Bool)

(assert start!24346)

(declare-fun b!254947 () Bool)

(declare-fun b_free!6697 () Bool)

(declare-fun b_next!6697 () Bool)

(assert (=> b!254947 (= b_free!6697 (not b_next!6697))))

(declare-fun tp!23381 () Bool)

(declare-fun b_and!13761 () Bool)

(assert (=> b!254947 (= tp!23381 b_and!13761)))

(declare-fun b!254936 () Bool)

(declare-datatypes ((Unit!7906 0))(
  ( (Unit!7907) )
))
(declare-fun e!165262 () Unit!7906)

(declare-fun lt!127850 () Unit!7906)

(assert (=> b!254936 (= e!165262 lt!127850)))

(declare-datatypes ((V!8393 0))(
  ( (V!8394 (val!3324 Int)) )
))
(declare-datatypes ((ValueCell!2936 0))(
  ( (ValueCellFull!2936 (v!5397 V!8393)) (EmptyCell!2936) )
))
(declare-datatypes ((array!12450 0))(
  ( (array!12451 (arr!5899 (Array (_ BitVec 32) ValueCell!2936)) (size!6246 (_ BitVec 32))) )
))
(declare-datatypes ((array!12452 0))(
  ( (array!12453 (arr!5900 (Array (_ BitVec 32) (_ BitVec 64))) (size!6247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3772 0))(
  ( (LongMapFixedSize!3773 (defaultEntry!4704 Int) (mask!10958 (_ BitVec 32)) (extraKeys!4441 (_ BitVec 32)) (zeroValue!4545 V!8393) (minValue!4545 V!8393) (_size!1935 (_ BitVec 32)) (_keys!6860 array!12452) (_values!4687 array!12450) (_vacant!1935 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3772)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!422 (array!12452 array!12450 (_ BitVec 32) (_ BitVec 32) V!8393 V!8393 (_ BitVec 64) Int) Unit!7906)

(assert (=> b!254936 (= lt!127850 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!422 (_keys!6860 thiss!1504) (_values!4687 thiss!1504) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) key!932 (defaultEntry!4704 thiss!1504)))))

(declare-fun c!43009 () Bool)

(declare-datatypes ((SeekEntryResult!1164 0))(
  ( (MissingZero!1164 (index!6826 (_ BitVec 32))) (Found!1164 (index!6827 (_ BitVec 32))) (Intermediate!1164 (undefined!1976 Bool) (index!6828 (_ BitVec 32)) (x!24906 (_ BitVec 32))) (Undefined!1164) (MissingVacant!1164 (index!6829 (_ BitVec 32))) )
))
(declare-fun lt!127854 () SeekEntryResult!1164)

(assert (=> b!254936 (= c!43009 (is-MissingZero!1164 lt!127854))))

(declare-fun e!165258 () Bool)

(assert (=> b!254936 e!165258))

(declare-fun mapIsEmpty!11157 () Bool)

(declare-fun mapRes!11157 () Bool)

(assert (=> mapIsEmpty!11157 mapRes!11157))

(declare-fun b!254937 () Bool)

(declare-fun e!165266 () Bool)

(declare-fun e!165269 () Bool)

(assert (=> b!254937 (= e!165266 e!165269)))

(declare-fun res!124801 () Bool)

(assert (=> b!254937 (=> (not res!124801) (not e!165269))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254937 (= res!124801 (inRange!0 index!297 (mask!10958 thiss!1504)))))

(declare-fun lt!127853 () Unit!7906)

(assert (=> b!254937 (= lt!127853 e!165262)))

(declare-fun c!43008 () Bool)

(declare-datatypes ((tuple2!4890 0))(
  ( (tuple2!4891 (_1!2455 (_ BitVec 64)) (_2!2455 V!8393)) )
))
(declare-datatypes ((List!3795 0))(
  ( (Nil!3792) (Cons!3791 (h!4453 tuple2!4890) (t!8852 List!3795)) )
))
(declare-datatypes ((ListLongMap!3817 0))(
  ( (ListLongMap!3818 (toList!1924 List!3795)) )
))
(declare-fun lt!127856 () ListLongMap!3817)

(declare-fun contains!1850 (ListLongMap!3817 (_ BitVec 64)) Bool)

(assert (=> b!254937 (= c!43008 (contains!1850 lt!127856 key!932))))

(declare-fun getCurrentListMap!1447 (array!12452 array!12450 (_ BitVec 32) (_ BitVec 32) V!8393 V!8393 (_ BitVec 32) Int) ListLongMap!3817)

(assert (=> b!254937 (= lt!127856 (getCurrentListMap!1447 (_keys!6860 thiss!1504) (_values!4687 thiss!1504) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4704 thiss!1504)))))

(declare-fun b!254938 () Bool)

(declare-fun e!165257 () Unit!7906)

(declare-fun Unit!7908 () Unit!7906)

(assert (=> b!254938 (= e!165257 Unit!7908)))

(declare-fun b!254939 () Bool)

(declare-fun e!165267 () Bool)

(assert (=> b!254939 (= e!165267 e!165266)))

(declare-fun res!124803 () Bool)

(assert (=> b!254939 (=> (not res!124803) (not e!165266))))

(assert (=> b!254939 (= res!124803 (or (= lt!127854 (MissingZero!1164 index!297)) (= lt!127854 (MissingVacant!1164 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12452 (_ BitVec 32)) SeekEntryResult!1164)

(assert (=> b!254939 (= lt!127854 (seekEntryOrOpen!0 key!932 (_keys!6860 thiss!1504) (mask!10958 thiss!1504)))))

(declare-fun b!254940 () Bool)

(declare-fun Unit!7909 () Unit!7906)

(assert (=> b!254940 (= e!165262 Unit!7909)))

(declare-fun lt!127859 () Unit!7906)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!422 (array!12452 array!12450 (_ BitVec 32) (_ BitVec 32) V!8393 V!8393 (_ BitVec 64) Int) Unit!7906)

(assert (=> b!254940 (= lt!127859 (lemmaInListMapThenSeekEntryOrOpenFindsIt!422 (_keys!6860 thiss!1504) (_values!4687 thiss!1504) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) key!932 (defaultEntry!4704 thiss!1504)))))

(assert (=> b!254940 false))

(declare-fun bm!24076 () Bool)

(declare-fun call!24078 () Bool)

(declare-fun arrayContainsKey!0 (array!12452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24076 (= call!24078 (arrayContainsKey!0 (_keys!6860 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun call!24079 () Bool)

(declare-fun bm!24075 () Bool)

(assert (=> bm!24075 (= call!24079 (inRange!0 (ite c!43009 (index!6826 lt!127854) (index!6829 lt!127854)) (mask!10958 thiss!1504)))))

(declare-fun res!124800 () Bool)

(assert (=> start!24346 (=> (not res!124800) (not e!165267))))

(declare-fun valid!1466 (LongMapFixedSize!3772) Bool)

(assert (=> start!24346 (= res!124800 (valid!1466 thiss!1504))))

(assert (=> start!24346 e!165267))

(declare-fun e!165265 () Bool)

(assert (=> start!24346 e!165265))

(assert (=> start!24346 true))

(declare-fun tp_is_empty!6559 () Bool)

(assert (=> start!24346 tp_is_empty!6559))

(declare-fun b!254941 () Bool)

(declare-fun res!124797 () Bool)

(declare-fun e!165270 () Bool)

(assert (=> b!254941 (=> (not res!124797) (not e!165270))))

(assert (=> b!254941 (= res!124797 (= (select (arr!5900 (_keys!6860 thiss!1504)) (index!6826 lt!127854)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254942 () Bool)

(declare-fun e!165261 () Bool)

(assert (=> b!254942 (= e!165261 tp_is_empty!6559)))

(declare-fun b!254943 () Bool)

(declare-fun e!165259 () Bool)

(declare-fun e!165268 () Bool)

(assert (=> b!254943 (= e!165259 e!165268)))

(declare-fun res!124798 () Bool)

(assert (=> b!254943 (= res!124798 call!24079)))

(assert (=> b!254943 (=> (not res!124798) (not e!165268))))

(declare-fun b!254944 () Bool)

(assert (=> b!254944 (= e!165259 (is-Undefined!1164 lt!127854))))

(declare-fun b!254945 () Bool)

(declare-fun res!124796 () Bool)

(assert (=> b!254945 (=> (not res!124796) (not e!165270))))

(assert (=> b!254945 (= res!124796 call!24079)))

(assert (=> b!254945 (= e!165258 e!165270)))

(declare-fun b!254946 () Bool)

(assert (=> b!254946 (= e!165270 (not call!24078))))

(declare-fun e!165263 () Bool)

(declare-fun array_inv!3891 (array!12452) Bool)

(declare-fun array_inv!3892 (array!12450) Bool)

(assert (=> b!254947 (= e!165265 (and tp!23381 tp_is_empty!6559 (array_inv!3891 (_keys!6860 thiss!1504)) (array_inv!3892 (_values!4687 thiss!1504)) e!165263))))

(declare-fun b!254948 () Bool)

(declare-fun res!124802 () Bool)

(assert (=> b!254948 (=> (not res!124802) (not e!165267))))

(assert (=> b!254948 (= res!124802 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254949 () Bool)

(declare-fun c!43010 () Bool)

(assert (=> b!254949 (= c!43010 (is-MissingVacant!1164 lt!127854))))

(assert (=> b!254949 (= e!165258 e!165259)))

(declare-fun b!254950 () Bool)

(assert (=> b!254950 (= e!165269 (not (bvsge index!297 #b00000000000000000000000000000000)))))

(declare-fun lt!127858 () array!12452)

(declare-fun v!346 () V!8393)

(declare-fun +!670 (ListLongMap!3817 tuple2!4890) ListLongMap!3817)

(assert (=> b!254950 (= (+!670 lt!127856 (tuple2!4891 key!932 v!346)) (getCurrentListMap!1447 lt!127858 (array!12451 (store (arr!5899 (_values!4687 thiss!1504)) index!297 (ValueCellFull!2936 v!346)) (size!6246 (_values!4687 thiss!1504))) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4704 thiss!1504)))))

(declare-fun lt!127855 () Unit!7906)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!85 (array!12452 array!12450 (_ BitVec 32) (_ BitVec 32) V!8393 V!8393 (_ BitVec 32) (_ BitVec 64) V!8393 Int) Unit!7906)

(assert (=> b!254950 (= lt!127855 (lemmaAddValidKeyToArrayThenAddPairToListMap!85 (_keys!6860 thiss!1504) (_values!4687 thiss!1504) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) index!297 key!932 v!346 (defaultEntry!4704 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12452 (_ BitVec 32)) Bool)

(assert (=> b!254950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127858 (mask!10958 thiss!1504))))

(declare-fun lt!127852 () Unit!7906)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12452 (_ BitVec 32) (_ BitVec 32)) Unit!7906)

(assert (=> b!254950 (= lt!127852 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6860 thiss!1504) index!297 (mask!10958 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12452 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254950 (= (arrayCountValidKeys!0 lt!127858 #b00000000000000000000000000000000 (size!6247 (_keys!6860 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6860 thiss!1504) #b00000000000000000000000000000000 (size!6247 (_keys!6860 thiss!1504)))))))

(declare-fun lt!127857 () Unit!7906)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12452 (_ BitVec 32) (_ BitVec 64)) Unit!7906)

(assert (=> b!254950 (= lt!127857 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6860 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3796 0))(
  ( (Nil!3793) (Cons!3792 (h!4454 (_ BitVec 64)) (t!8853 List!3796)) )
))
(declare-fun arrayNoDuplicates!0 (array!12452 (_ BitVec 32) List!3796) Bool)

(assert (=> b!254950 (arrayNoDuplicates!0 lt!127858 #b00000000000000000000000000000000 Nil!3793)))

(assert (=> b!254950 (= lt!127858 (array!12453 (store (arr!5900 (_keys!6860 thiss!1504)) index!297 key!932) (size!6247 (_keys!6860 thiss!1504))))))

(declare-fun lt!127849 () Unit!7906)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12452 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3796) Unit!7906)

(assert (=> b!254950 (= lt!127849 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6860 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3793))))

(declare-fun lt!127851 () Unit!7906)

(assert (=> b!254950 (= lt!127851 e!165257)))

(declare-fun c!43011 () Bool)

(assert (=> b!254950 (= c!43011 (arrayContainsKey!0 (_keys!6860 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254951 () Bool)

(declare-fun Unit!7910 () Unit!7906)

(assert (=> b!254951 (= e!165257 Unit!7910)))

(declare-fun lt!127848 () Unit!7906)

(declare-fun lemmaArrayContainsKeyThenInListMap!227 (array!12452 array!12450 (_ BitVec 32) (_ BitVec 32) V!8393 V!8393 (_ BitVec 64) (_ BitVec 32) Int) Unit!7906)

(assert (=> b!254951 (= lt!127848 (lemmaArrayContainsKeyThenInListMap!227 (_keys!6860 thiss!1504) (_values!4687 thiss!1504) (mask!10958 thiss!1504) (extraKeys!4441 thiss!1504) (zeroValue!4545 thiss!1504) (minValue!4545 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4704 thiss!1504)))))

(assert (=> b!254951 false))

(declare-fun b!254952 () Bool)

(declare-fun e!165260 () Bool)

(assert (=> b!254952 (= e!165260 tp_is_empty!6559)))

(declare-fun b!254953 () Bool)

(assert (=> b!254953 (= e!165268 (not call!24078))))

(declare-fun b!254954 () Bool)

(declare-fun res!124799 () Bool)

(assert (=> b!254954 (= res!124799 (= (select (arr!5900 (_keys!6860 thiss!1504)) (index!6829 lt!127854)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254954 (=> (not res!124799) (not e!165268))))

(declare-fun mapNonEmpty!11157 () Bool)

(declare-fun tp!23382 () Bool)

(assert (=> mapNonEmpty!11157 (= mapRes!11157 (and tp!23382 e!165261))))

(declare-fun mapKey!11157 () (_ BitVec 32))

(declare-fun mapValue!11157 () ValueCell!2936)

(declare-fun mapRest!11157 () (Array (_ BitVec 32) ValueCell!2936))

(assert (=> mapNonEmpty!11157 (= (arr!5899 (_values!4687 thiss!1504)) (store mapRest!11157 mapKey!11157 mapValue!11157))))

(declare-fun b!254955 () Bool)

(assert (=> b!254955 (= e!165263 (and e!165260 mapRes!11157))))

(declare-fun condMapEmpty!11157 () Bool)

(declare-fun mapDefault!11157 () ValueCell!2936)

