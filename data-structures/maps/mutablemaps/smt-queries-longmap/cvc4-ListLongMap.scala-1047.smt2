; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21980 () Bool)

(assert start!21980)

(declare-fun b!224949 () Bool)

(declare-fun b_free!6035 () Bool)

(declare-fun b_next!6035 () Bool)

(assert (=> b!224949 (= b_free!6035 (not b_next!6035))))

(declare-fun tp!21247 () Bool)

(declare-fun b_and!12951 () Bool)

(assert (=> b!224949 (= tp!21247 b_and!12951)))

(declare-fun b!224933 () Bool)

(declare-fun e!146021 () Bool)

(declare-datatypes ((SeekEntryResult!873 0))(
  ( (MissingZero!873 (index!5662 (_ BitVec 32))) (Found!873 (index!5663 (_ BitVec 32))) (Intermediate!873 (undefined!1685 Bool) (index!5664 (_ BitVec 32)) (x!23165 (_ BitVec 32))) (Undefined!873) (MissingVacant!873 (index!5665 (_ BitVec 32))) )
))
(declare-fun lt!113363 () SeekEntryResult!873)

(assert (=> b!224933 (= e!146021 (is-Undefined!873 lt!113363))))

(declare-fun b!224934 () Bool)

(declare-datatypes ((Unit!6772 0))(
  ( (Unit!6773) )
))
(declare-fun e!146026 () Unit!6772)

(declare-fun Unit!6774 () Unit!6772)

(assert (=> b!224934 (= e!146026 Unit!6774)))

(declare-fun lt!113368 () Unit!6772)

(declare-datatypes ((V!7509 0))(
  ( (V!7510 (val!2993 Int)) )
))
(declare-datatypes ((ValueCell!2605 0))(
  ( (ValueCellFull!2605 (v!5009 V!7509)) (EmptyCell!2605) )
))
(declare-datatypes ((array!11036 0))(
  ( (array!11037 (arr!5237 (Array (_ BitVec 32) ValueCell!2605)) (size!5570 (_ BitVec 32))) )
))
(declare-datatypes ((array!11038 0))(
  ( (array!11039 (arr!5238 (Array (_ BitVec 32) (_ BitVec 64))) (size!5571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3110 0))(
  ( (LongMapFixedSize!3111 (defaultEntry!4214 Int) (mask!10052 (_ BitVec 32)) (extraKeys!3951 (_ BitVec 32)) (zeroValue!4055 V!7509) (minValue!4055 V!7509) (_size!1604 (_ BitVec 32)) (_keys!6268 array!11038) (_values!4197 array!11036) (_vacant!1604 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3110)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!245 (array!11038 array!11036 (_ BitVec 32) (_ BitVec 32) V!7509 V!7509 (_ BitVec 64) Int) Unit!6772)

(assert (=> b!224934 (= lt!113368 (lemmaInListMapThenSeekEntryOrOpenFindsIt!245 (_keys!6268 thiss!1504) (_values!4197 thiss!1504) (mask!10052 thiss!1504) (extraKeys!3951 thiss!1504) (zeroValue!4055 thiss!1504) (minValue!4055 thiss!1504) key!932 (defaultEntry!4214 thiss!1504)))))

(assert (=> b!224934 false))

(declare-fun b!224935 () Bool)

(declare-fun e!146024 () Bool)

(declare-fun tp_is_empty!5897 () Bool)

(assert (=> b!224935 (= e!146024 tp_is_empty!5897)))

(declare-fun b!224936 () Bool)

(declare-fun res!110709 () Bool)

(declare-fun e!146034 () Bool)

(assert (=> b!224936 (=> res!110709 e!146034)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11038 (_ BitVec 32)) Bool)

(assert (=> b!224936 (= res!110709 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6268 thiss!1504) (mask!10052 thiss!1504))))))

(declare-fun b!224937 () Bool)

(declare-fun e!146025 () Bool)

(declare-fun e!146033 () Bool)

(assert (=> b!224937 (= e!146025 e!146033)))

(declare-fun res!110701 () Bool)

(assert (=> b!224937 (=> (not res!110701) (not e!146033))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!224937 (= res!110701 (inRange!0 index!297 (mask!10052 thiss!1504)))))

(declare-fun lt!113369 () Unit!6772)

(assert (=> b!224937 (= lt!113369 e!146026)))

(declare-fun c!37289 () Bool)

(declare-datatypes ((tuple2!4430 0))(
  ( (tuple2!4431 (_1!2225 (_ BitVec 64)) (_2!2225 V!7509)) )
))
(declare-datatypes ((List!3366 0))(
  ( (Nil!3363) (Cons!3362 (h!4010 tuple2!4430) (t!8333 List!3366)) )
))
(declare-datatypes ((ListLongMap!3357 0))(
  ( (ListLongMap!3358 (toList!1694 List!3366)) )
))
(declare-fun contains!1562 (ListLongMap!3357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1217 (array!11038 array!11036 (_ BitVec 32) (_ BitVec 32) V!7509 V!7509 (_ BitVec 32) Int) ListLongMap!3357)

(assert (=> b!224937 (= c!37289 (contains!1562 (getCurrentListMap!1217 (_keys!6268 thiss!1504) (_values!4197 thiss!1504) (mask!10052 thiss!1504) (extraKeys!3951 thiss!1504) (zeroValue!4055 thiss!1504) (minValue!4055 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4214 thiss!1504)) key!932))))

(declare-fun b!224938 () Bool)

(declare-fun res!110703 () Bool)

(declare-fun e!146023 () Bool)

(assert (=> b!224938 (=> (not res!110703) (not e!146023))))

(declare-fun call!20938 () Bool)

(assert (=> b!224938 (= res!110703 call!20938)))

(declare-fun e!146035 () Bool)

(assert (=> b!224938 (= e!146035 e!146023)))

(declare-fun b!224940 () Bool)

(declare-fun e!146030 () Bool)

(assert (=> b!224940 (= e!146030 e!146025)))

(declare-fun res!110708 () Bool)

(assert (=> b!224940 (=> (not res!110708) (not e!146025))))

(assert (=> b!224940 (= res!110708 (or (= lt!113363 (MissingZero!873 index!297)) (= lt!113363 (MissingVacant!873 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11038 (_ BitVec 32)) SeekEntryResult!873)

(assert (=> b!224940 (= lt!113363 (seekEntryOrOpen!0 key!932 (_keys!6268 thiss!1504) (mask!10052 thiss!1504)))))

(declare-fun b!224941 () Bool)

(declare-fun call!20937 () Bool)

(assert (=> b!224941 (= e!146023 (not call!20937))))

(declare-fun b!224942 () Bool)

(declare-fun res!110704 () Bool)

(assert (=> b!224942 (=> res!110704 e!146034)))

(declare-fun lt!113370 () Bool)

(assert (=> b!224942 (= res!110704 lt!113370)))

(declare-fun b!224943 () Bool)

(declare-fun res!110702 () Bool)

(assert (=> b!224943 (=> (not res!110702) (not e!146030))))

(assert (=> b!224943 (= res!110702 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224944 () Bool)

(declare-fun res!110711 () Bool)

(assert (=> b!224944 (=> res!110711 e!146034)))

(assert (=> b!224944 (= res!110711 (or (not (= (size!5571 (_keys!6268 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10052 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5571 (_keys!6268 thiss!1504)))))))

(declare-fun b!224945 () Bool)

(assert (=> b!224945 (= e!146034 true)))

(declare-fun lt!113364 () Bool)

(declare-datatypes ((List!3367 0))(
  ( (Nil!3364) (Cons!3363 (h!4011 (_ BitVec 64)) (t!8334 List!3367)) )
))
(declare-fun arrayNoDuplicates!0 (array!11038 (_ BitVec 32) List!3367) Bool)

(assert (=> b!224945 (= lt!113364 (arrayNoDuplicates!0 (_keys!6268 thiss!1504) #b00000000000000000000000000000000 Nil!3364))))

(declare-fun b!224946 () Bool)

(declare-fun c!37288 () Bool)

(assert (=> b!224946 (= c!37288 (is-MissingVacant!873 lt!113363))))

(assert (=> b!224946 (= e!146035 e!146021)))

(declare-fun c!37287 () Bool)

(declare-fun bm!20934 () Bool)

(assert (=> bm!20934 (= call!20938 (inRange!0 (ite c!37287 (index!5662 lt!113363) (index!5665 lt!113363)) (mask!10052 thiss!1504)))))

(declare-fun bm!20935 () Bool)

(declare-fun arrayContainsKey!0 (array!11038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20935 (= call!20937 (arrayContainsKey!0 (_keys!6268 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224947 () Bool)

(declare-fun e!146022 () Bool)

(assert (=> b!224947 (= e!146022 (not call!20937))))

(declare-fun mapIsEmpty!10015 () Bool)

(declare-fun mapRes!10015 () Bool)

(assert (=> mapIsEmpty!10015 mapRes!10015))

(declare-fun b!224948 () Bool)

(assert (=> b!224948 (= e!146033 (not e!146034))))

(declare-fun res!110705 () Bool)

(assert (=> b!224948 (=> res!110705 e!146034)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!224948 (= res!110705 (not (validMask!0 (mask!10052 thiss!1504))))))

(declare-fun lt!113367 () array!11038)

(declare-fun arrayCountValidKeys!0 (array!11038 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!224948 (= (arrayCountValidKeys!0 lt!113367 #b00000000000000000000000000000000 (size!5571 (_keys!6268 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6268 thiss!1504) #b00000000000000000000000000000000 (size!5571 (_keys!6268 thiss!1504)))))))

(declare-fun lt!113373 () Unit!6772)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11038 (_ BitVec 32) (_ BitVec 64)) Unit!6772)

(assert (=> b!224948 (= lt!113373 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6268 thiss!1504) index!297 key!932))))

(assert (=> b!224948 (arrayNoDuplicates!0 lt!113367 #b00000000000000000000000000000000 Nil!3364)))

(assert (=> b!224948 (= lt!113367 (array!11039 (store (arr!5238 (_keys!6268 thiss!1504)) index!297 key!932) (size!5571 (_keys!6268 thiss!1504))))))

(declare-fun lt!113371 () Unit!6772)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11038 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3367) Unit!6772)

(assert (=> b!224948 (= lt!113371 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6268 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3364))))

(declare-fun lt!113366 () Unit!6772)

(declare-fun e!146029 () Unit!6772)

(assert (=> b!224948 (= lt!113366 e!146029)))

(declare-fun c!37286 () Bool)

(assert (=> b!224948 (= c!37286 lt!113370)))

(assert (=> b!224948 (= lt!113370 (arrayContainsKey!0 (_keys!6268 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!146027 () Bool)

(declare-fun e!146028 () Bool)

(declare-fun array_inv!3457 (array!11038) Bool)

(declare-fun array_inv!3458 (array!11036) Bool)

(assert (=> b!224949 (= e!146028 (and tp!21247 tp_is_empty!5897 (array_inv!3457 (_keys!6268 thiss!1504)) (array_inv!3458 (_values!4197 thiss!1504)) e!146027))))

(declare-fun b!224950 () Bool)

(declare-fun lt!113365 () Unit!6772)

(assert (=> b!224950 (= e!146026 lt!113365)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!253 (array!11038 array!11036 (_ BitVec 32) (_ BitVec 32) V!7509 V!7509 (_ BitVec 64) Int) Unit!6772)

(assert (=> b!224950 (= lt!113365 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!253 (_keys!6268 thiss!1504) (_values!4197 thiss!1504) (mask!10052 thiss!1504) (extraKeys!3951 thiss!1504) (zeroValue!4055 thiss!1504) (minValue!4055 thiss!1504) key!932 (defaultEntry!4214 thiss!1504)))))

(assert (=> b!224950 (= c!37287 (is-MissingZero!873 lt!113363))))

(assert (=> b!224950 e!146035))

(declare-fun b!224951 () Bool)

(declare-fun e!146031 () Bool)

(assert (=> b!224951 (= e!146031 tp_is_empty!5897)))

(declare-fun b!224952 () Bool)

(declare-fun Unit!6775 () Unit!6772)

(assert (=> b!224952 (= e!146029 Unit!6775)))

(declare-fun lt!113372 () Unit!6772)

(declare-fun lemmaArrayContainsKeyThenInListMap!83 (array!11038 array!11036 (_ BitVec 32) (_ BitVec 32) V!7509 V!7509 (_ BitVec 64) (_ BitVec 32) Int) Unit!6772)

(assert (=> b!224952 (= lt!113372 (lemmaArrayContainsKeyThenInListMap!83 (_keys!6268 thiss!1504) (_values!4197 thiss!1504) (mask!10052 thiss!1504) (extraKeys!3951 thiss!1504) (zeroValue!4055 thiss!1504) (minValue!4055 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4214 thiss!1504)))))

(assert (=> b!224952 false))

(declare-fun b!224953 () Bool)

(declare-fun res!110707 () Bool)

(assert (=> b!224953 (= res!110707 (= (select (arr!5238 (_keys!6268 thiss!1504)) (index!5665 lt!113363)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224953 (=> (not res!110707) (not e!146022))))

(declare-fun b!224954 () Bool)

(declare-fun Unit!6776 () Unit!6772)

(assert (=> b!224954 (= e!146029 Unit!6776)))

(declare-fun res!110706 () Bool)

(assert (=> start!21980 (=> (not res!110706) (not e!146030))))

(declare-fun valid!1246 (LongMapFixedSize!3110) Bool)

(assert (=> start!21980 (= res!110706 (valid!1246 thiss!1504))))

(assert (=> start!21980 e!146030))

(assert (=> start!21980 e!146028))

(assert (=> start!21980 true))

(declare-fun b!224939 () Bool)

(assert (=> b!224939 (= e!146021 e!146022)))

(declare-fun res!110712 () Bool)

(assert (=> b!224939 (= res!110712 call!20938)))

(assert (=> b!224939 (=> (not res!110712) (not e!146022))))

(declare-fun b!224955 () Bool)

(declare-fun res!110713 () Bool)

(assert (=> b!224955 (=> res!110713 e!146034)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224955 (= res!110713 (not (validKeyInArray!0 key!932)))))

(declare-fun b!224956 () Bool)

(assert (=> b!224956 (= e!146027 (and e!146031 mapRes!10015))))

(declare-fun condMapEmpty!10015 () Bool)

(declare-fun mapDefault!10015 () ValueCell!2605)

