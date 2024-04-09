; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24672 () Bool)

(assert start!24672)

(declare-fun b!258046 () Bool)

(declare-fun b_free!6743 () Bool)

(declare-fun b_next!6743 () Bool)

(assert (=> b!258046 (= b_free!6743 (not b_next!6743))))

(declare-fun tp!23541 () Bool)

(declare-fun b_and!13835 () Bool)

(assert (=> b!258046 (= tp!23541 b_and!13835)))

(declare-fun bm!24523 () Bool)

(declare-fun call!24526 () Bool)

(declare-datatypes ((V!8453 0))(
  ( (V!8454 (val!3347 Int)) )
))
(declare-datatypes ((ValueCell!2959 0))(
  ( (ValueCellFull!2959 (v!5441 V!8453)) (EmptyCell!2959) )
))
(declare-datatypes ((array!12556 0))(
  ( (array!12557 (arr!5945 (Array (_ BitVec 32) ValueCell!2959)) (size!6292 (_ BitVec 32))) )
))
(declare-datatypes ((array!12558 0))(
  ( (array!12559 (arr!5946 (Array (_ BitVec 32) (_ BitVec 64))) (size!6293 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3818 0))(
  ( (LongMapFixedSize!3819 (defaultEntry!4762 Int) (mask!11059 (_ BitVec 32)) (extraKeys!4499 (_ BitVec 32)) (zeroValue!4603 V!8453) (minValue!4603 V!8453) (_size!1958 (_ BitVec 32)) (_keys!6932 array!12558) (_values!4745 array!12556) (_vacant!1958 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3818)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24523 (= call!24526 (arrayContainsKey!0 (_keys!6932 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258031 () Bool)

(declare-fun res!126201 () Bool)

(declare-fun e!167287 () Bool)

(assert (=> b!258031 (=> (not res!126201) (not e!167287))))

(declare-fun call!24527 () Bool)

(assert (=> b!258031 (= res!126201 call!24527)))

(declare-fun e!167285 () Bool)

(assert (=> b!258031 (= e!167285 e!167287)))

(declare-fun mapNonEmpty!11247 () Bool)

(declare-fun mapRes!11247 () Bool)

(declare-fun tp!23540 () Bool)

(declare-fun e!167286 () Bool)

(assert (=> mapNonEmpty!11247 (= mapRes!11247 (and tp!23540 e!167286))))

(declare-fun mapRest!11247 () (Array (_ BitVec 32) ValueCell!2959))

(declare-fun mapValue!11247 () ValueCell!2959)

(declare-fun mapKey!11247 () (_ BitVec 32))

(assert (=> mapNonEmpty!11247 (= (arr!5945 (_values!4745 thiss!1504)) (store mapRest!11247 mapKey!11247 mapValue!11247))))

(declare-fun b!258032 () Bool)

(declare-datatypes ((Unit!8019 0))(
  ( (Unit!8020) )
))
(declare-fun e!167288 () Unit!8019)

(declare-fun Unit!8021 () Unit!8019)

(assert (=> b!258032 (= e!167288 Unit!8021)))

(declare-fun lt!129887 () Unit!8019)

(declare-fun lemmaArrayContainsKeyThenInListMap!244 (array!12558 array!12556 (_ BitVec 32) (_ BitVec 32) V!8453 V!8453 (_ BitVec 64) (_ BitVec 32) Int) Unit!8019)

(assert (=> b!258032 (= lt!129887 (lemmaArrayContainsKeyThenInListMap!244 (_keys!6932 thiss!1504) (_values!4745 thiss!1504) (mask!11059 thiss!1504) (extraKeys!4499 thiss!1504) (zeroValue!4603 thiss!1504) (minValue!4603 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4762 thiss!1504)))))

(assert (=> b!258032 false))

(declare-fun b!258033 () Bool)

(declare-fun e!167280 () Bool)

(declare-fun tp_is_empty!6605 () Bool)

(assert (=> b!258033 (= e!167280 tp_is_empty!6605)))

(declare-fun b!258034 () Bool)

(declare-fun res!126202 () Bool)

(declare-datatypes ((SeekEntryResult!1185 0))(
  ( (MissingZero!1185 (index!6910 (_ BitVec 32))) (Found!1185 (index!6911 (_ BitVec 32))) (Intermediate!1185 (undefined!1997 Bool) (index!6912 (_ BitVec 32)) (x!25053 (_ BitVec 32))) (Undefined!1185) (MissingVacant!1185 (index!6913 (_ BitVec 32))) )
))
(declare-fun lt!129893 () SeekEntryResult!1185)

(assert (=> b!258034 (= res!126202 (= (select (arr!5946 (_keys!6932 thiss!1504)) (index!6913 lt!129893)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!167275 () Bool)

(assert (=> b!258034 (=> (not res!126202) (not e!167275))))

(declare-fun b!258035 () Bool)

(assert (=> b!258035 (= e!167286 tp_is_empty!6605)))

(declare-fun b!258036 () Bool)

(declare-fun e!167276 () Bool)

(declare-fun e!167282 () Bool)

(assert (=> b!258036 (= e!167276 (not e!167282))))

(declare-fun res!126206 () Bool)

(assert (=> b!258036 (=> res!126206 e!167282)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!258036 (= res!126206 (not (validMask!0 (mask!11059 thiss!1504))))))

(declare-fun lt!129885 () array!12558)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12558 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!258036 (= (arrayCountValidKeys!0 lt!129885 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129891 () Unit!8019)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12558 (_ BitVec 32)) Unit!8019)

(assert (=> b!258036 (= lt!129891 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129885 index!297))))

(assert (=> b!258036 (arrayContainsKey!0 lt!129885 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129890 () Unit!8019)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12558 (_ BitVec 64) (_ BitVec 32)) Unit!8019)

(assert (=> b!258036 (= lt!129890 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129885 key!932 index!297))))

(declare-datatypes ((tuple2!4930 0))(
  ( (tuple2!4931 (_1!2475 (_ BitVec 64)) (_2!2475 V!8453)) )
))
(declare-datatypes ((List!3833 0))(
  ( (Nil!3830) (Cons!3829 (h!4491 tuple2!4930) (t!8904 List!3833)) )
))
(declare-datatypes ((ListLongMap!3857 0))(
  ( (ListLongMap!3858 (toList!1944 List!3833)) )
))
(declare-fun lt!129889 () ListLongMap!3857)

(declare-fun v!346 () V!8453)

(declare-fun +!688 (ListLongMap!3857 tuple2!4930) ListLongMap!3857)

(declare-fun getCurrentListMap!1467 (array!12558 array!12556 (_ BitVec 32) (_ BitVec 32) V!8453 V!8453 (_ BitVec 32) Int) ListLongMap!3857)

(assert (=> b!258036 (= (+!688 lt!129889 (tuple2!4931 key!932 v!346)) (getCurrentListMap!1467 lt!129885 (array!12557 (store (arr!5945 (_values!4745 thiss!1504)) index!297 (ValueCellFull!2959 v!346)) (size!6292 (_values!4745 thiss!1504))) (mask!11059 thiss!1504) (extraKeys!4499 thiss!1504) (zeroValue!4603 thiss!1504) (minValue!4603 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4762 thiss!1504)))))

(declare-fun lt!129883 () Unit!8019)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!103 (array!12558 array!12556 (_ BitVec 32) (_ BitVec 32) V!8453 V!8453 (_ BitVec 32) (_ BitVec 64) V!8453 Int) Unit!8019)

(assert (=> b!258036 (= lt!129883 (lemmaAddValidKeyToArrayThenAddPairToListMap!103 (_keys!6932 thiss!1504) (_values!4745 thiss!1504) (mask!11059 thiss!1504) (extraKeys!4499 thiss!1504) (zeroValue!4603 thiss!1504) (minValue!4603 thiss!1504) index!297 key!932 v!346 (defaultEntry!4762 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12558 (_ BitVec 32)) Bool)

(assert (=> b!258036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129885 (mask!11059 thiss!1504))))

(declare-fun lt!129888 () Unit!8019)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12558 (_ BitVec 32) (_ BitVec 32)) Unit!8019)

(assert (=> b!258036 (= lt!129888 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6932 thiss!1504) index!297 (mask!11059 thiss!1504)))))

(assert (=> b!258036 (= (arrayCountValidKeys!0 lt!129885 #b00000000000000000000000000000000 (size!6293 (_keys!6932 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6932 thiss!1504) #b00000000000000000000000000000000 (size!6293 (_keys!6932 thiss!1504)))))))

(declare-fun lt!129892 () Unit!8019)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12558 (_ BitVec 32) (_ BitVec 64)) Unit!8019)

(assert (=> b!258036 (= lt!129892 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6932 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3834 0))(
  ( (Nil!3831) (Cons!3830 (h!4492 (_ BitVec 64)) (t!8905 List!3834)) )
))
(declare-fun arrayNoDuplicates!0 (array!12558 (_ BitVec 32) List!3834) Bool)

(assert (=> b!258036 (arrayNoDuplicates!0 lt!129885 #b00000000000000000000000000000000 Nil!3831)))

(assert (=> b!258036 (= lt!129885 (array!12559 (store (arr!5946 (_keys!6932 thiss!1504)) index!297 key!932) (size!6293 (_keys!6932 thiss!1504))))))

(declare-fun lt!129894 () Unit!8019)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12558 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3834) Unit!8019)

(assert (=> b!258036 (= lt!129894 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6932 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3831))))

(declare-fun lt!129882 () Unit!8019)

(assert (=> b!258036 (= lt!129882 e!167288)))

(declare-fun c!43681 () Bool)

(assert (=> b!258036 (= c!43681 (arrayContainsKey!0 (_keys!6932 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258037 () Bool)

(assert (=> b!258037 (= e!167287 (not call!24526))))

(declare-fun b!258038 () Bool)

(declare-fun e!167277 () Bool)

(assert (=> b!258038 (= e!167277 (is-Undefined!1185 lt!129893))))

(declare-fun b!258039 () Bool)

(declare-fun e!167278 () Bool)

(assert (=> b!258039 (= e!167278 e!167276)))

(declare-fun res!126205 () Bool)

(assert (=> b!258039 (=> (not res!126205) (not e!167276))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!258039 (= res!126205 (inRange!0 index!297 (mask!11059 thiss!1504)))))

(declare-fun lt!129884 () Unit!8019)

(declare-fun e!167289 () Unit!8019)

(assert (=> b!258039 (= lt!129884 e!167289)))

(declare-fun c!43682 () Bool)

(declare-fun contains!1878 (ListLongMap!3857 (_ BitVec 64)) Bool)

(assert (=> b!258039 (= c!43682 (contains!1878 lt!129889 key!932))))

(assert (=> b!258039 (= lt!129889 (getCurrentListMap!1467 (_keys!6932 thiss!1504) (_values!4745 thiss!1504) (mask!11059 thiss!1504) (extraKeys!4499 thiss!1504) (zeroValue!4603 thiss!1504) (minValue!4603 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4762 thiss!1504)))))

(declare-fun b!258041 () Bool)

(declare-fun c!43680 () Bool)

(assert (=> b!258041 (= c!43680 (is-MissingVacant!1185 lt!129893))))

(assert (=> b!258041 (= e!167285 e!167277)))

(declare-fun b!258042 () Bool)

(declare-fun res!126207 () Bool)

(declare-fun e!167281 () Bool)

(assert (=> b!258042 (=> (not res!126207) (not e!167281))))

(assert (=> b!258042 (= res!126207 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!258043 () Bool)

(assert (=> b!258043 (= e!167275 (not call!24526))))

(declare-fun b!258044 () Bool)

(declare-fun Unit!8022 () Unit!8019)

(assert (=> b!258044 (= e!167288 Unit!8022)))

(declare-fun b!258045 () Bool)

(declare-fun e!167284 () Bool)

(assert (=> b!258045 (= e!167284 (and e!167280 mapRes!11247))))

(declare-fun condMapEmpty!11247 () Bool)

(declare-fun mapDefault!11247 () ValueCell!2959)

