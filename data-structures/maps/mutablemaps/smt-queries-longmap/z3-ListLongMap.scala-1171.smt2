; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25142 () Bool)

(assert start!25142)

(declare-fun b!261801 () Bool)

(declare-fun b_free!6777 () Bool)

(declare-fun b_next!6777 () Bool)

(assert (=> b!261801 (= b_free!6777 (not b_next!6777))))

(declare-fun tp!23662 () Bool)

(declare-fun b_and!13929 () Bool)

(assert (=> b!261801 (= tp!23662 b_and!13929)))

(declare-fun bm!24998 () Bool)

(declare-fun call!25001 () Bool)

(declare-datatypes ((V!8499 0))(
  ( (V!8500 (val!3364 Int)) )
))
(declare-datatypes ((ValueCell!2976 0))(
  ( (ValueCellFull!2976 (v!5485 V!8499)) (EmptyCell!2976) )
))
(declare-datatypes ((array!12634 0))(
  ( (array!12635 (arr!5979 (Array (_ BitVec 32) ValueCell!2976)) (size!6330 (_ BitVec 32))) )
))
(declare-datatypes ((array!12636 0))(
  ( (array!12637 (arr!5980 (Array (_ BitVec 32) (_ BitVec 64))) (size!6331 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3852 0))(
  ( (LongMapFixedSize!3853 (defaultEntry!4824 Int) (mask!11174 (_ BitVec 32)) (extraKeys!4561 (_ BitVec 32)) (zeroValue!4665 V!8499) (minValue!4665 V!8499) (_size!1975 (_ BitVec 32)) (_keys!7012 array!12636) (_values!4807 array!12634) (_vacant!1975 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3852)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24998 (= call!25001 (arrayContainsKey!0 (_keys!7012 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261800 () Bool)

(declare-fun e!169670 () Bool)

(assert (=> b!261800 (= e!169670 (not call!25001))))

(declare-fun tp_is_empty!6639 () Bool)

(declare-fun e!169669 () Bool)

(declare-fun e!169668 () Bool)

(declare-fun array_inv!3941 (array!12636) Bool)

(declare-fun array_inv!3942 (array!12634) Bool)

(assert (=> b!261801 (= e!169668 (and tp!23662 tp_is_empty!6639 (array_inv!3941 (_keys!7012 thiss!1504)) (array_inv!3942 (_values!4807 thiss!1504)) e!169669))))

(declare-fun b!261802 () Bool)

(declare-fun e!169662 () Bool)

(assert (=> b!261802 (= e!169662 (not true))))

(declare-fun lt!132280 () array!12636)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12636 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261802 (= (arrayCountValidKeys!0 lt!132280 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!8144 0))(
  ( (Unit!8145) )
))
(declare-fun lt!132282 () Unit!8144)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12636 (_ BitVec 32)) Unit!8144)

(assert (=> b!261802 (= lt!132282 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132280 index!297))))

(assert (=> b!261802 (arrayContainsKey!0 lt!132280 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132290 () Unit!8144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12636 (_ BitVec 64) (_ BitVec 32)) Unit!8144)

(assert (=> b!261802 (= lt!132290 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132280 key!932 index!297))))

(declare-fun v!346 () V!8499)

(declare-datatypes ((tuple2!4958 0))(
  ( (tuple2!4959 (_1!2489 (_ BitVec 64)) (_2!2489 V!8499)) )
))
(declare-datatypes ((List!3858 0))(
  ( (Nil!3855) (Cons!3854 (h!4520 tuple2!4958) (t!8939 List!3858)) )
))
(declare-datatypes ((ListLongMap!3885 0))(
  ( (ListLongMap!3886 (toList!1958 List!3858)) )
))
(declare-fun lt!132289 () ListLongMap!3885)

(declare-fun +!699 (ListLongMap!3885 tuple2!4958) ListLongMap!3885)

(declare-fun getCurrentListMap!1481 (array!12636 array!12634 (_ BitVec 32) (_ BitVec 32) V!8499 V!8499 (_ BitVec 32) Int) ListLongMap!3885)

(assert (=> b!261802 (= (+!699 lt!132289 (tuple2!4959 key!932 v!346)) (getCurrentListMap!1481 lt!132280 (array!12635 (store (arr!5979 (_values!4807 thiss!1504)) index!297 (ValueCellFull!2976 v!346)) (size!6330 (_values!4807 thiss!1504))) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4824 thiss!1504)))))

(declare-fun lt!132288 () Unit!8144)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!114 (array!12636 array!12634 (_ BitVec 32) (_ BitVec 32) V!8499 V!8499 (_ BitVec 32) (_ BitVec 64) V!8499 Int) Unit!8144)

(assert (=> b!261802 (= lt!132288 (lemmaAddValidKeyToArrayThenAddPairToListMap!114 (_keys!7012 thiss!1504) (_values!4807 thiss!1504) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) index!297 key!932 v!346 (defaultEntry!4824 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12636 (_ BitVec 32)) Bool)

(assert (=> b!261802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132280 (mask!11174 thiss!1504))))

(declare-fun lt!132286 () Unit!8144)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12636 (_ BitVec 32) (_ BitVec 32)) Unit!8144)

(assert (=> b!261802 (= lt!132286 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7012 thiss!1504) index!297 (mask!11174 thiss!1504)))))

(assert (=> b!261802 (= (arrayCountValidKeys!0 lt!132280 #b00000000000000000000000000000000 (size!6331 (_keys!7012 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7012 thiss!1504) #b00000000000000000000000000000000 (size!6331 (_keys!7012 thiss!1504)))))))

(declare-fun lt!132281 () Unit!8144)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12636 (_ BitVec 32) (_ BitVec 64)) Unit!8144)

(assert (=> b!261802 (= lt!132281 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7012 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3859 0))(
  ( (Nil!3856) (Cons!3855 (h!4521 (_ BitVec 64)) (t!8940 List!3859)) )
))
(declare-fun arrayNoDuplicates!0 (array!12636 (_ BitVec 32) List!3859) Bool)

(assert (=> b!261802 (arrayNoDuplicates!0 lt!132280 #b00000000000000000000000000000000 Nil!3856)))

(assert (=> b!261802 (= lt!132280 (array!12637 (store (arr!5980 (_keys!7012 thiss!1504)) index!297 key!932) (size!6331 (_keys!7012 thiss!1504))))))

(declare-fun lt!132283 () Unit!8144)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12636 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3859) Unit!8144)

(assert (=> b!261802 (= lt!132283 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7012 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3856))))

(declare-fun lt!132292 () Unit!8144)

(declare-fun e!169665 () Unit!8144)

(assert (=> b!261802 (= lt!132292 e!169665)))

(declare-fun c!44580 () Bool)

(assert (=> b!261802 (= c!44580 (arrayContainsKey!0 (_keys!7012 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261804 () Bool)

(declare-fun e!169666 () Bool)

(declare-fun e!169657 () Bool)

(assert (=> b!261804 (= e!169666 e!169657)))

(declare-fun res!127911 () Bool)

(declare-fun call!25002 () Bool)

(assert (=> b!261804 (= res!127911 call!25002)))

(assert (=> b!261804 (=> (not res!127911) (not e!169657))))

(declare-fun b!261805 () Bool)

(declare-fun e!169661 () Unit!8144)

(declare-fun Unit!8146 () Unit!8144)

(assert (=> b!261805 (= e!169661 Unit!8146)))

(declare-fun lt!132285 () Unit!8144)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!449 (array!12636 array!12634 (_ BitVec 32) (_ BitVec 32) V!8499 V!8499 (_ BitVec 64) Int) Unit!8144)

(assert (=> b!261805 (= lt!132285 (lemmaInListMapThenSeekEntryOrOpenFindsIt!449 (_keys!7012 thiss!1504) (_values!4807 thiss!1504) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) key!932 (defaultEntry!4824 thiss!1504)))))

(assert (=> b!261805 false))

(declare-fun b!261806 () Bool)

(declare-fun e!169660 () Bool)

(declare-fun e!169663 () Bool)

(assert (=> b!261806 (= e!169660 e!169663)))

(declare-fun res!127908 () Bool)

(assert (=> b!261806 (=> (not res!127908) (not e!169663))))

(declare-datatypes ((SeekEntryResult!1201 0))(
  ( (MissingZero!1201 (index!6974 (_ BitVec 32))) (Found!1201 (index!6975 (_ BitVec 32))) (Intermediate!1201 (undefined!2013 Bool) (index!6976 (_ BitVec 32)) (x!25199 (_ BitVec 32))) (Undefined!1201) (MissingVacant!1201 (index!6977 (_ BitVec 32))) )
))
(declare-fun lt!132279 () SeekEntryResult!1201)

(assert (=> b!261806 (= res!127908 (or (= lt!132279 (MissingZero!1201 index!297)) (= lt!132279 (MissingVacant!1201 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12636 (_ BitVec 32)) SeekEntryResult!1201)

(assert (=> b!261806 (= lt!132279 (seekEntryOrOpen!0 key!932 (_keys!7012 thiss!1504) (mask!11174 thiss!1504)))))

(declare-fun b!261807 () Bool)

(declare-fun Unit!8147 () Unit!8144)

(assert (=> b!261807 (= e!169665 Unit!8147)))

(declare-fun lt!132284 () Unit!8144)

(declare-fun lemmaArrayContainsKeyThenInListMap!256 (array!12636 array!12634 (_ BitVec 32) (_ BitVec 32) V!8499 V!8499 (_ BitVec 64) (_ BitVec 32) Int) Unit!8144)

(assert (=> b!261807 (= lt!132284 (lemmaArrayContainsKeyThenInListMap!256 (_keys!7012 thiss!1504) (_values!4807 thiss!1504) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4824 thiss!1504)))))

(assert (=> b!261807 false))

(declare-fun b!261808 () Bool)

(declare-fun res!127915 () Bool)

(assert (=> b!261808 (=> (not res!127915) (not e!169660))))

(assert (=> b!261808 (= res!127915 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261809 () Bool)

(declare-fun Unit!8148 () Unit!8144)

(assert (=> b!261809 (= e!169665 Unit!8148)))

(declare-fun mapNonEmpty!11317 () Bool)

(declare-fun mapRes!11317 () Bool)

(declare-fun tp!23661 () Bool)

(declare-fun e!169667 () Bool)

(assert (=> mapNonEmpty!11317 (= mapRes!11317 (and tp!23661 e!169667))))

(declare-fun mapRest!11317 () (Array (_ BitVec 32) ValueCell!2976))

(declare-fun mapKey!11317 () (_ BitVec 32))

(declare-fun mapValue!11317 () ValueCell!2976)

(assert (=> mapNonEmpty!11317 (= (arr!5979 (_values!4807 thiss!1504)) (store mapRest!11317 mapKey!11317 mapValue!11317))))

(declare-fun b!261810 () Bool)

(declare-fun lt!132291 () Unit!8144)

(assert (=> b!261810 (= e!169661 lt!132291)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!448 (array!12636 array!12634 (_ BitVec 32) (_ BitVec 32) V!8499 V!8499 (_ BitVec 64) Int) Unit!8144)

(assert (=> b!261810 (= lt!132291 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!448 (_keys!7012 thiss!1504) (_values!4807 thiss!1504) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) key!932 (defaultEntry!4824 thiss!1504)))))

(declare-fun c!44578 () Bool)

(get-info :version)

(assert (=> b!261810 (= c!44578 ((_ is MissingZero!1201) lt!132279))))

(declare-fun e!169659 () Bool)

(assert (=> b!261810 e!169659))

(declare-fun b!261811 () Bool)

(assert (=> b!261811 (= e!169663 e!169662)))

(declare-fun res!127910 () Bool)

(assert (=> b!261811 (=> (not res!127910) (not e!169662))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!261811 (= res!127910 (inRange!0 index!297 (mask!11174 thiss!1504)))))

(declare-fun lt!132287 () Unit!8144)

(assert (=> b!261811 (= lt!132287 e!169661)))

(declare-fun c!44581 () Bool)

(declare-fun contains!1899 (ListLongMap!3885 (_ BitVec 64)) Bool)

(assert (=> b!261811 (= c!44581 (contains!1899 lt!132289 key!932))))

(assert (=> b!261811 (= lt!132289 (getCurrentListMap!1481 (_keys!7012 thiss!1504) (_values!4807 thiss!1504) (mask!11174 thiss!1504) (extraKeys!4561 thiss!1504) (zeroValue!4665 thiss!1504) (minValue!4665 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4824 thiss!1504)))))

(declare-fun b!261812 () Bool)

(declare-fun c!44579 () Bool)

(assert (=> b!261812 (= c!44579 ((_ is MissingVacant!1201) lt!132279))))

(assert (=> b!261812 (= e!169659 e!169666)))

(declare-fun b!261813 () Bool)

(declare-fun e!169658 () Bool)

(assert (=> b!261813 (= e!169658 tp_is_empty!6639)))

(declare-fun b!261814 () Bool)

(assert (=> b!261814 (= e!169666 ((_ is Undefined!1201) lt!132279))))

(declare-fun b!261815 () Bool)

(assert (=> b!261815 (= e!169667 tp_is_empty!6639)))

(declare-fun b!261816 () Bool)

(declare-fun res!127914 () Bool)

(assert (=> b!261816 (= res!127914 (= (select (arr!5980 (_keys!7012 thiss!1504)) (index!6977 lt!132279)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!261816 (=> (not res!127914) (not e!169657))))

(declare-fun b!261817 () Bool)

(assert (=> b!261817 (= e!169669 (and e!169658 mapRes!11317))))

(declare-fun condMapEmpty!11317 () Bool)

(declare-fun mapDefault!11317 () ValueCell!2976)

(assert (=> b!261817 (= condMapEmpty!11317 (= (arr!5979 (_values!4807 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2976)) mapDefault!11317)))))

(declare-fun mapIsEmpty!11317 () Bool)

(assert (=> mapIsEmpty!11317 mapRes!11317))

(declare-fun b!261818 () Bool)

(declare-fun res!127909 () Bool)

(assert (=> b!261818 (=> (not res!127909) (not e!169670))))

(assert (=> b!261818 (= res!127909 call!25002)))

(assert (=> b!261818 (= e!169659 e!169670)))

(declare-fun b!261819 () Bool)

(declare-fun res!127913 () Bool)

(assert (=> b!261819 (=> (not res!127913) (not e!169670))))

(assert (=> b!261819 (= res!127913 (= (select (arr!5980 (_keys!7012 thiss!1504)) (index!6974 lt!132279)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24999 () Bool)

(assert (=> bm!24999 (= call!25002 (inRange!0 (ite c!44578 (index!6974 lt!132279) (index!6977 lt!132279)) (mask!11174 thiss!1504)))))

(declare-fun res!127912 () Bool)

(assert (=> start!25142 (=> (not res!127912) (not e!169660))))

(declare-fun valid!1494 (LongMapFixedSize!3852) Bool)

(assert (=> start!25142 (= res!127912 (valid!1494 thiss!1504))))

(assert (=> start!25142 e!169660))

(assert (=> start!25142 e!169668))

(assert (=> start!25142 true))

(assert (=> start!25142 tp_is_empty!6639))

(declare-fun b!261803 () Bool)

(assert (=> b!261803 (= e!169657 (not call!25001))))

(assert (= (and start!25142 res!127912) b!261808))

(assert (= (and b!261808 res!127915) b!261806))

(assert (= (and b!261806 res!127908) b!261811))

(assert (= (and b!261811 c!44581) b!261805))

(assert (= (and b!261811 (not c!44581)) b!261810))

(assert (= (and b!261810 c!44578) b!261818))

(assert (= (and b!261810 (not c!44578)) b!261812))

(assert (= (and b!261818 res!127909) b!261819))

(assert (= (and b!261819 res!127913) b!261800))

(assert (= (and b!261812 c!44579) b!261804))

(assert (= (and b!261812 (not c!44579)) b!261814))

(assert (= (and b!261804 res!127911) b!261816))

(assert (= (and b!261816 res!127914) b!261803))

(assert (= (or b!261818 b!261804) bm!24999))

(assert (= (or b!261800 b!261803) bm!24998))

(assert (= (and b!261811 res!127910) b!261802))

(assert (= (and b!261802 c!44580) b!261807))

(assert (= (and b!261802 (not c!44580)) b!261809))

(assert (= (and b!261817 condMapEmpty!11317) mapIsEmpty!11317))

(assert (= (and b!261817 (not condMapEmpty!11317)) mapNonEmpty!11317))

(assert (= (and mapNonEmpty!11317 ((_ is ValueCellFull!2976) mapValue!11317)) b!261815))

(assert (= (and b!261817 ((_ is ValueCellFull!2976) mapDefault!11317)) b!261813))

(assert (= b!261801 b!261817))

(assert (= start!25142 b!261801))

(declare-fun m!277911 () Bool)

(assert (=> mapNonEmpty!11317 m!277911))

(declare-fun m!277913 () Bool)

(assert (=> b!261811 m!277913))

(declare-fun m!277915 () Bool)

(assert (=> b!261811 m!277915))

(declare-fun m!277917 () Bool)

(assert (=> b!261811 m!277917))

(declare-fun m!277919 () Bool)

(assert (=> b!261805 m!277919))

(declare-fun m!277921 () Bool)

(assert (=> b!261819 m!277921))

(declare-fun m!277923 () Bool)

(assert (=> b!261807 m!277923))

(declare-fun m!277925 () Bool)

(assert (=> b!261802 m!277925))

(declare-fun m!277927 () Bool)

(assert (=> b!261802 m!277927))

(declare-fun m!277929 () Bool)

(assert (=> b!261802 m!277929))

(declare-fun m!277931 () Bool)

(assert (=> b!261802 m!277931))

(declare-fun m!277933 () Bool)

(assert (=> b!261802 m!277933))

(declare-fun m!277935 () Bool)

(assert (=> b!261802 m!277935))

(declare-fun m!277937 () Bool)

(assert (=> b!261802 m!277937))

(declare-fun m!277939 () Bool)

(assert (=> b!261802 m!277939))

(declare-fun m!277941 () Bool)

(assert (=> b!261802 m!277941))

(declare-fun m!277943 () Bool)

(assert (=> b!261802 m!277943))

(declare-fun m!277945 () Bool)

(assert (=> b!261802 m!277945))

(declare-fun m!277947 () Bool)

(assert (=> b!261802 m!277947))

(declare-fun m!277949 () Bool)

(assert (=> b!261802 m!277949))

(declare-fun m!277951 () Bool)

(assert (=> b!261802 m!277951))

(declare-fun m!277953 () Bool)

(assert (=> b!261802 m!277953))

(declare-fun m!277955 () Bool)

(assert (=> b!261802 m!277955))

(declare-fun m!277957 () Bool)

(assert (=> b!261802 m!277957))

(assert (=> bm!24998 m!277925))

(declare-fun m!277959 () Bool)

(assert (=> b!261801 m!277959))

(declare-fun m!277961 () Bool)

(assert (=> b!261801 m!277961))

(declare-fun m!277963 () Bool)

(assert (=> b!261810 m!277963))

(declare-fun m!277965 () Bool)

(assert (=> start!25142 m!277965))

(declare-fun m!277967 () Bool)

(assert (=> bm!24999 m!277967))

(declare-fun m!277969 () Bool)

(assert (=> b!261806 m!277969))

(declare-fun m!277971 () Bool)

(assert (=> b!261816 m!277971))

(check-sat (not bm!24998) (not bm!24999) (not start!25142) (not b!261810) (not b!261811) (not b!261806) (not b!261807) (not b_next!6777) (not b!261805) (not mapNonEmpty!11317) tp_is_empty!6639 (not b!261802) b_and!13929 (not b!261801))
(check-sat b_and!13929 (not b_next!6777))
