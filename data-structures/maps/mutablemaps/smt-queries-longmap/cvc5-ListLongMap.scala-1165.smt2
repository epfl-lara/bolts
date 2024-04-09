; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24668 () Bool)

(assert start!24668)

(declare-fun b!257908 () Bool)

(declare-fun b_free!6739 () Bool)

(declare-fun b_next!6739 () Bool)

(assert (=> b!257908 (= b_free!6739 (not b_next!6739))))

(declare-fun tp!23528 () Bool)

(declare-fun b_and!13831 () Bool)

(assert (=> b!257908 (= tp!23528 b_and!13831)))

(declare-fun b!257905 () Bool)

(declare-fun e!167187 () Bool)

(declare-fun e!167199 () Bool)

(assert (=> b!257905 (= e!167187 (not e!167199))))

(declare-fun res!126148 () Bool)

(assert (=> b!257905 (=> res!126148 e!167199)))

(declare-datatypes ((V!8449 0))(
  ( (V!8450 (val!3345 Int)) )
))
(declare-datatypes ((ValueCell!2957 0))(
  ( (ValueCellFull!2957 (v!5439 V!8449)) (EmptyCell!2957) )
))
(declare-datatypes ((array!12548 0))(
  ( (array!12549 (arr!5941 (Array (_ BitVec 32) ValueCell!2957)) (size!6288 (_ BitVec 32))) )
))
(declare-datatypes ((array!12550 0))(
  ( (array!12551 (arr!5942 (Array (_ BitVec 32) (_ BitVec 64))) (size!6289 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3814 0))(
  ( (LongMapFixedSize!3815 (defaultEntry!4760 Int) (mask!11057 (_ BitVec 32)) (extraKeys!4497 (_ BitVec 32)) (zeroValue!4601 V!8449) (minValue!4601 V!8449) (_size!1956 (_ BitVec 32)) (_keys!6930 array!12550) (_values!4743 array!12548) (_vacant!1956 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3814)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!257905 (= res!126148 (not (validMask!0 (mask!11057 thiss!1504))))))

(declare-fun lt!129799 () array!12550)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12550 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257905 (= (arrayCountValidKeys!0 lt!129799 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!8011 0))(
  ( (Unit!8012) )
))
(declare-fun lt!129797 () Unit!8011)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12550 (_ BitVec 32)) Unit!8011)

(assert (=> b!257905 (= lt!129797 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129799 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!257905 (arrayContainsKey!0 lt!129799 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129798 () Unit!8011)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12550 (_ BitVec 64) (_ BitVec 32)) Unit!8011)

(assert (=> b!257905 (= lt!129798 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129799 key!932 index!297))))

(declare-datatypes ((tuple2!4926 0))(
  ( (tuple2!4927 (_1!2473 (_ BitVec 64)) (_2!2473 V!8449)) )
))
(declare-datatypes ((List!3829 0))(
  ( (Nil!3826) (Cons!3825 (h!4487 tuple2!4926) (t!8900 List!3829)) )
))
(declare-datatypes ((ListLongMap!3853 0))(
  ( (ListLongMap!3854 (toList!1942 List!3829)) )
))
(declare-fun lt!129802 () ListLongMap!3853)

(declare-fun v!346 () V!8449)

(declare-fun +!686 (ListLongMap!3853 tuple2!4926) ListLongMap!3853)

(declare-fun getCurrentListMap!1465 (array!12550 array!12548 (_ BitVec 32) (_ BitVec 32) V!8449 V!8449 (_ BitVec 32) Int) ListLongMap!3853)

(assert (=> b!257905 (= (+!686 lt!129802 (tuple2!4927 key!932 v!346)) (getCurrentListMap!1465 lt!129799 (array!12549 (store (arr!5941 (_values!4743 thiss!1504)) index!297 (ValueCellFull!2957 v!346)) (size!6288 (_values!4743 thiss!1504))) (mask!11057 thiss!1504) (extraKeys!4497 thiss!1504) (zeroValue!4601 thiss!1504) (minValue!4601 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4760 thiss!1504)))))

(declare-fun lt!129809 () Unit!8011)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!101 (array!12550 array!12548 (_ BitVec 32) (_ BitVec 32) V!8449 V!8449 (_ BitVec 32) (_ BitVec 64) V!8449 Int) Unit!8011)

(assert (=> b!257905 (= lt!129809 (lemmaAddValidKeyToArrayThenAddPairToListMap!101 (_keys!6930 thiss!1504) (_values!4743 thiss!1504) (mask!11057 thiss!1504) (extraKeys!4497 thiss!1504) (zeroValue!4601 thiss!1504) (minValue!4601 thiss!1504) index!297 key!932 v!346 (defaultEntry!4760 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12550 (_ BitVec 32)) Bool)

(assert (=> b!257905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129799 (mask!11057 thiss!1504))))

(declare-fun lt!129807 () Unit!8011)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12550 (_ BitVec 32) (_ BitVec 32)) Unit!8011)

(assert (=> b!257905 (= lt!129807 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6930 thiss!1504) index!297 (mask!11057 thiss!1504)))))

(assert (=> b!257905 (= (arrayCountValidKeys!0 lt!129799 #b00000000000000000000000000000000 (size!6289 (_keys!6930 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6930 thiss!1504) #b00000000000000000000000000000000 (size!6289 (_keys!6930 thiss!1504)))))))

(declare-fun lt!129810 () Unit!8011)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12550 (_ BitVec 32) (_ BitVec 64)) Unit!8011)

(assert (=> b!257905 (= lt!129810 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6930 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3830 0))(
  ( (Nil!3827) (Cons!3826 (h!4488 (_ BitVec 64)) (t!8901 List!3830)) )
))
(declare-fun arrayNoDuplicates!0 (array!12550 (_ BitVec 32) List!3830) Bool)

(assert (=> b!257905 (arrayNoDuplicates!0 lt!129799 #b00000000000000000000000000000000 Nil!3827)))

(assert (=> b!257905 (= lt!129799 (array!12551 (store (arr!5942 (_keys!6930 thiss!1504)) index!297 key!932) (size!6289 (_keys!6930 thiss!1504))))))

(declare-fun lt!129808 () Unit!8011)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12550 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3830) Unit!8011)

(assert (=> b!257905 (= lt!129808 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6930 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3827))))

(declare-fun lt!129800 () Unit!8011)

(declare-fun e!167194 () Unit!8011)

(assert (=> b!257905 (= lt!129800 e!167194)))

(declare-fun c!43659 () Bool)

(assert (=> b!257905 (= c!43659 (arrayContainsKey!0 (_keys!6930 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24511 () Bool)

(declare-fun call!24514 () Bool)

(assert (=> bm!24511 (= call!24514 (arrayContainsKey!0 (_keys!6930 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257906 () Bool)

(declare-fun e!167198 () Bool)

(declare-fun e!167185 () Bool)

(assert (=> b!257906 (= e!167198 e!167185)))

(declare-fun res!126152 () Bool)

(assert (=> b!257906 (=> (not res!126152) (not e!167185))))

(declare-datatypes ((SeekEntryResult!1183 0))(
  ( (MissingZero!1183 (index!6902 (_ BitVec 32))) (Found!1183 (index!6903 (_ BitVec 32))) (Intermediate!1183 (undefined!1995 Bool) (index!6904 (_ BitVec 32)) (x!25051 (_ BitVec 32))) (Undefined!1183) (MissingVacant!1183 (index!6905 (_ BitVec 32))) )
))
(declare-fun lt!129805 () SeekEntryResult!1183)

(assert (=> b!257906 (= res!126152 (or (= lt!129805 (MissingZero!1183 index!297)) (= lt!129805 (MissingVacant!1183 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12550 (_ BitVec 32)) SeekEntryResult!1183)

(assert (=> b!257906 (= lt!129805 (seekEntryOrOpen!0 key!932 (_keys!6930 thiss!1504) (mask!11057 thiss!1504)))))

(declare-fun b!257907 () Bool)

(declare-fun e!167195 () Bool)

(declare-fun tp_is_empty!6601 () Bool)

(assert (=> b!257907 (= e!167195 tp_is_empty!6601)))

(declare-fun e!167186 () Bool)

(declare-fun e!167189 () Bool)

(declare-fun array_inv!3917 (array!12550) Bool)

(declare-fun array_inv!3918 (array!12548) Bool)

(assert (=> b!257908 (= e!167189 (and tp!23528 tp_is_empty!6601 (array_inv!3917 (_keys!6930 thiss!1504)) (array_inv!3918 (_values!4743 thiss!1504)) e!167186))))

(declare-fun b!257909 () Bool)

(declare-fun Unit!8013 () Unit!8011)

(assert (=> b!257909 (= e!167194 Unit!8013)))

(declare-fun b!257910 () Bool)

(declare-fun res!126149 () Bool)

(declare-fun e!167196 () Bool)

(assert (=> b!257910 (=> (not res!126149) (not e!167196))))

(assert (=> b!257910 (= res!126149 (= (select (arr!5942 (_keys!6930 thiss!1504)) (index!6902 lt!129805)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257911 () Bool)

(declare-fun e!167193 () Bool)

(declare-fun e!167190 () Bool)

(assert (=> b!257911 (= e!167193 e!167190)))

(declare-fun res!126151 () Bool)

(declare-fun call!24515 () Bool)

(assert (=> b!257911 (= res!126151 call!24515)))

(assert (=> b!257911 (=> (not res!126151) (not e!167190))))

(declare-fun b!257912 () Bool)

(declare-fun res!126147 () Bool)

(assert (=> b!257912 (= res!126147 (= (select (arr!5942 (_keys!6930 thiss!1504)) (index!6905 lt!129805)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257912 (=> (not res!126147) (not e!167190))))

(declare-fun b!257913 () Bool)

(declare-fun e!167188 () Bool)

(assert (=> b!257913 (= e!167188 tp_is_empty!6601)))

(declare-fun bm!24512 () Bool)

(declare-fun c!43656 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24512 (= call!24515 (inRange!0 (ite c!43656 (index!6902 lt!129805) (index!6905 lt!129805)) (mask!11057 thiss!1504)))))

(declare-fun b!257914 () Bool)

(declare-fun mapRes!11241 () Bool)

(assert (=> b!257914 (= e!167186 (and e!167188 mapRes!11241))))

(declare-fun condMapEmpty!11241 () Bool)

(declare-fun mapDefault!11241 () ValueCell!2957)

