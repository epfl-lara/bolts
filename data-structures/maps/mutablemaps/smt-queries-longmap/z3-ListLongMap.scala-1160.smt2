; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24436 () Bool)

(assert start!24436)

(declare-fun b!255841 () Bool)

(declare-fun b_free!6711 () Bool)

(declare-fun b_next!6711 () Bool)

(assert (=> b!255841 (= b_free!6711 (not b_next!6711))))

(declare-fun tp!23430 () Bool)

(declare-fun b_and!13783 () Bool)

(assert (=> b!255841 (= tp!23430 b_and!13783)))

(declare-fun b!255828 () Bool)

(declare-fun c!43205 () Bool)

(declare-datatypes ((SeekEntryResult!1170 0))(
  ( (MissingZero!1170 (index!6850 (_ BitVec 32))) (Found!1170 (index!6851 (_ BitVec 32))) (Intermediate!1170 (undefined!1982 Bool) (index!6852 (_ BitVec 32)) (x!24948 (_ BitVec 32))) (Undefined!1170) (MissingVacant!1170 (index!6853 (_ BitVec 32))) )
))
(declare-fun lt!128431 () SeekEntryResult!1170)

(get-info :version)

(assert (=> b!255828 (= c!43205 ((_ is MissingVacant!1170) lt!128431))))

(declare-fun e!165842 () Bool)

(declare-fun e!165846 () Bool)

(assert (=> b!255828 (= e!165842 e!165846)))

(declare-fun b!255829 () Bool)

(declare-fun e!165852 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8411 0))(
  ( (V!8412 (val!3331 Int)) )
))
(declare-datatypes ((ValueCell!2943 0))(
  ( (ValueCellFull!2943 (v!5410 V!8411)) (EmptyCell!2943) )
))
(declare-datatypes ((array!12482 0))(
  ( (array!12483 (arr!5913 (Array (_ BitVec 32) ValueCell!2943)) (size!6260 (_ BitVec 32))) )
))
(declare-datatypes ((array!12484 0))(
  ( (array!12485 (arr!5914 (Array (_ BitVec 32) (_ BitVec 64))) (size!6261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3786 0))(
  ( (LongMapFixedSize!3787 (defaultEntry!4721 Int) (mask!10987 (_ BitVec 32)) (extraKeys!4458 (_ BitVec 32)) (zeroValue!4562 V!8411) (minValue!4562 V!8411) (_size!1942 (_ BitVec 32)) (_keys!6881 array!12484) (_values!4704 array!12482) (_vacant!1942 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3786)

(assert (=> b!255829 (= e!165852 (not (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6261 (_keys!6881 thiss!1504))) (bvslt (size!6261 (_keys!6881 thiss!1504)) #b01111111111111111111111111111111))))))

(declare-fun lt!128429 () array!12484)

(declare-datatypes ((tuple2!4902 0))(
  ( (tuple2!4903 (_1!2461 (_ BitVec 64)) (_2!2461 V!8411)) )
))
(declare-datatypes ((List!3806 0))(
  ( (Nil!3803) (Cons!3802 (h!4464 tuple2!4902) (t!8867 List!3806)) )
))
(declare-datatypes ((ListLongMap!3829 0))(
  ( (ListLongMap!3830 (toList!1930 List!3806)) )
))
(declare-fun lt!128426 () ListLongMap!3829)

(declare-fun v!346 () V!8411)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun +!675 (ListLongMap!3829 tuple2!4902) ListLongMap!3829)

(declare-fun getCurrentListMap!1453 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 32) Int) ListLongMap!3829)

(assert (=> b!255829 (= (+!675 lt!128426 (tuple2!4903 key!932 v!346)) (getCurrentListMap!1453 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-datatypes ((Unit!7938 0))(
  ( (Unit!7939) )
))
(declare-fun lt!128422 () Unit!7938)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!90 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 32) (_ BitVec 64) V!8411 Int) Unit!7938)

(assert (=> b!255829 (= lt!128422 (lemmaAddValidKeyToArrayThenAddPairToListMap!90 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) index!297 key!932 v!346 (defaultEntry!4721 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12484 (_ BitVec 32)) Bool)

(assert (=> b!255829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128429 (mask!10987 thiss!1504))))

(declare-fun lt!128425 () Unit!7938)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12484 (_ BitVec 32) (_ BitVec 32)) Unit!7938)

(assert (=> b!255829 (= lt!128425 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) index!297 (mask!10987 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12484 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!255829 (= (arrayCountValidKeys!0 lt!128429 #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6881 thiss!1504) #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504)))))))

(declare-fun lt!128424 () Unit!7938)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12484 (_ BitVec 32) (_ BitVec 64)) Unit!7938)

(assert (=> b!255829 (= lt!128424 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6881 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3807 0))(
  ( (Nil!3804) (Cons!3803 (h!4465 (_ BitVec 64)) (t!8868 List!3807)) )
))
(declare-fun arrayNoDuplicates!0 (array!12484 (_ BitVec 32) List!3807) Bool)

(assert (=> b!255829 (arrayNoDuplicates!0 lt!128429 #b00000000000000000000000000000000 Nil!3804)))

(assert (=> b!255829 (= lt!128429 (array!12485 (store (arr!5914 (_keys!6881 thiss!1504)) index!297 key!932) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun lt!128423 () Unit!7938)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3807) Unit!7938)

(assert (=> b!255829 (= lt!128423 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6881 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3804))))

(declare-fun lt!128428 () Unit!7938)

(declare-fun e!165847 () Unit!7938)

(assert (=> b!255829 (= lt!128428 e!165847)))

(declare-fun c!43206 () Bool)

(declare-fun arrayContainsKey!0 (array!12484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!255829 (= c!43206 (arrayContainsKey!0 (_keys!6881 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24205 () Bool)

(declare-fun c!43207 () Bool)

(declare-fun call!24208 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24205 (= call!24208 (inRange!0 (ite c!43207 (index!6850 lt!128431) (index!6853 lt!128431)) (mask!10987 thiss!1504)))))

(declare-fun b!255830 () Bool)

(declare-fun e!165848 () Bool)

(declare-fun e!165845 () Bool)

(declare-fun mapRes!11184 () Bool)

(assert (=> b!255830 (= e!165848 (and e!165845 mapRes!11184))))

(declare-fun condMapEmpty!11184 () Bool)

(declare-fun mapDefault!11184 () ValueCell!2943)

(assert (=> b!255830 (= condMapEmpty!11184 (= (arr!5913 (_values!4704 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2943)) mapDefault!11184)))))

(declare-fun mapNonEmpty!11184 () Bool)

(declare-fun tp!23429 () Bool)

(declare-fun e!165849 () Bool)

(assert (=> mapNonEmpty!11184 (= mapRes!11184 (and tp!23429 e!165849))))

(declare-fun mapKey!11184 () (_ BitVec 32))

(declare-fun mapRest!11184 () (Array (_ BitVec 32) ValueCell!2943))

(declare-fun mapValue!11184 () ValueCell!2943)

(assert (=> mapNonEmpty!11184 (= (arr!5913 (_values!4704 thiss!1504)) (store mapRest!11184 mapKey!11184 mapValue!11184))))

(declare-fun bm!24206 () Bool)

(declare-fun call!24209 () Bool)

(assert (=> bm!24206 (= call!24209 (arrayContainsKey!0 (_keys!6881 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255832 () Bool)

(declare-fun e!165851 () Bool)

(declare-fun e!165843 () Bool)

(assert (=> b!255832 (= e!165851 e!165843)))

(declare-fun res!125198 () Bool)

(assert (=> b!255832 (=> (not res!125198) (not e!165843))))

(assert (=> b!255832 (= res!125198 (or (= lt!128431 (MissingZero!1170 index!297)) (= lt!128431 (MissingVacant!1170 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12484 (_ BitVec 32)) SeekEntryResult!1170)

(assert (=> b!255832 (= lt!128431 (seekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(declare-fun b!255833 () Bool)

(declare-fun Unit!7940 () Unit!7938)

(assert (=> b!255833 (= e!165847 Unit!7940)))

(declare-fun b!255834 () Bool)

(declare-fun res!125192 () Bool)

(assert (=> b!255834 (= res!125192 (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6853 lt!128431)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165839 () Bool)

(assert (=> b!255834 (=> (not res!125192) (not e!165839))))

(declare-fun b!255835 () Bool)

(declare-fun tp_is_empty!6573 () Bool)

(assert (=> b!255835 (= e!165849 tp_is_empty!6573)))

(declare-fun b!255836 () Bool)

(assert (=> b!255836 (= e!165843 e!165852)))

(declare-fun res!125194 () Bool)

(assert (=> b!255836 (=> (not res!125194) (not e!165852))))

(assert (=> b!255836 (= res!125194 (inRange!0 index!297 (mask!10987 thiss!1504)))))

(declare-fun lt!128432 () Unit!7938)

(declare-fun e!165850 () Unit!7938)

(assert (=> b!255836 (= lt!128432 e!165850)))

(declare-fun c!43204 () Bool)

(declare-fun contains!1860 (ListLongMap!3829 (_ BitVec 64)) Bool)

(assert (=> b!255836 (= c!43204 (contains!1860 lt!128426 key!932))))

(assert (=> b!255836 (= lt!128426 (getCurrentListMap!1453 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun b!255837 () Bool)

(declare-fun res!125196 () Bool)

(assert (=> b!255837 (=> (not res!125196) (not e!165851))))

(assert (=> b!255837 (= res!125196 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!255838 () Bool)

(declare-fun Unit!7941 () Unit!7938)

(assert (=> b!255838 (= e!165847 Unit!7941)))

(declare-fun lt!128430 () Unit!7938)

(declare-fun lemmaArrayContainsKeyThenInListMap!232 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) (_ BitVec 32) Int) Unit!7938)

(assert (=> b!255838 (= lt!128430 (lemmaArrayContainsKeyThenInListMap!232 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(assert (=> b!255838 false))

(declare-fun b!255839 () Bool)

(assert (=> b!255839 (= e!165846 ((_ is Undefined!1170) lt!128431))))

(declare-fun b!255840 () Bool)

(assert (=> b!255840 (= e!165846 e!165839)))

(declare-fun res!125199 () Bool)

(assert (=> b!255840 (= res!125199 call!24208)))

(assert (=> b!255840 (=> (not res!125199) (not e!165839))))

(declare-fun e!165844 () Bool)

(declare-fun array_inv!3901 (array!12484) Bool)

(declare-fun array_inv!3902 (array!12482) Bool)

(assert (=> b!255841 (= e!165844 (and tp!23430 tp_is_empty!6573 (array_inv!3901 (_keys!6881 thiss!1504)) (array_inv!3902 (_values!4704 thiss!1504)) e!165848))))

(declare-fun b!255842 () Bool)

(declare-fun Unit!7942 () Unit!7938)

(assert (=> b!255842 (= e!165850 Unit!7942)))

(declare-fun lt!128433 () Unit!7938)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!426 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) Int) Unit!7938)

(assert (=> b!255842 (= lt!128433 (lemmaInListMapThenSeekEntryOrOpenFindsIt!426 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)))))

(assert (=> b!255842 false))

(declare-fun b!255843 () Bool)

(declare-fun lt!128427 () Unit!7938)

(assert (=> b!255843 (= e!165850 lt!128427)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!427 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) Int) Unit!7938)

(assert (=> b!255843 (= lt!128427 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!427 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)))))

(assert (=> b!255843 (= c!43207 ((_ is MissingZero!1170) lt!128431))))

(assert (=> b!255843 e!165842))

(declare-fun res!125197 () Bool)

(assert (=> start!24436 (=> (not res!125197) (not e!165851))))

(declare-fun valid!1472 (LongMapFixedSize!3786) Bool)

(assert (=> start!24436 (= res!125197 (valid!1472 thiss!1504))))

(assert (=> start!24436 e!165851))

(assert (=> start!24436 e!165844))

(assert (=> start!24436 true))

(assert (=> start!24436 tp_is_empty!6573))

(declare-fun b!255831 () Bool)

(assert (=> b!255831 (= e!165839 (not call!24209))))

(declare-fun b!255844 () Bool)

(declare-fun res!125195 () Bool)

(declare-fun e!165840 () Bool)

(assert (=> b!255844 (=> (not res!125195) (not e!165840))))

(assert (=> b!255844 (= res!125195 (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6850 lt!128431)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255845 () Bool)

(assert (=> b!255845 (= e!165840 (not call!24209))))

(declare-fun b!255846 () Bool)

(declare-fun res!125193 () Bool)

(assert (=> b!255846 (=> (not res!125193) (not e!165840))))

(assert (=> b!255846 (= res!125193 call!24208)))

(assert (=> b!255846 (= e!165842 e!165840)))

(declare-fun b!255847 () Bool)

(assert (=> b!255847 (= e!165845 tp_is_empty!6573)))

(declare-fun mapIsEmpty!11184 () Bool)

(assert (=> mapIsEmpty!11184 mapRes!11184))

(assert (= (and start!24436 res!125197) b!255837))

(assert (= (and b!255837 res!125196) b!255832))

(assert (= (and b!255832 res!125198) b!255836))

(assert (= (and b!255836 c!43204) b!255842))

(assert (= (and b!255836 (not c!43204)) b!255843))

(assert (= (and b!255843 c!43207) b!255846))

(assert (= (and b!255843 (not c!43207)) b!255828))

(assert (= (and b!255846 res!125193) b!255844))

(assert (= (and b!255844 res!125195) b!255845))

(assert (= (and b!255828 c!43205) b!255840))

(assert (= (and b!255828 (not c!43205)) b!255839))

(assert (= (and b!255840 res!125199) b!255834))

(assert (= (and b!255834 res!125192) b!255831))

(assert (= (or b!255846 b!255840) bm!24205))

(assert (= (or b!255845 b!255831) bm!24206))

(assert (= (and b!255836 res!125194) b!255829))

(assert (= (and b!255829 c!43206) b!255838))

(assert (= (and b!255829 (not c!43206)) b!255833))

(assert (= (and b!255830 condMapEmpty!11184) mapIsEmpty!11184))

(assert (= (and b!255830 (not condMapEmpty!11184)) mapNonEmpty!11184))

(assert (= (and mapNonEmpty!11184 ((_ is ValueCellFull!2943) mapValue!11184)) b!255835))

(assert (= (and b!255830 ((_ is ValueCellFull!2943) mapDefault!11184)) b!255847))

(assert (= b!255841 b!255830))

(assert (= start!24436 b!255841))

(declare-fun m!271277 () Bool)

(assert (=> b!255829 m!271277))

(declare-fun m!271279 () Bool)

(assert (=> b!255829 m!271279))

(declare-fun m!271281 () Bool)

(assert (=> b!255829 m!271281))

(declare-fun m!271283 () Bool)

(assert (=> b!255829 m!271283))

(declare-fun m!271285 () Bool)

(assert (=> b!255829 m!271285))

(declare-fun m!271287 () Bool)

(assert (=> b!255829 m!271287))

(declare-fun m!271289 () Bool)

(assert (=> b!255829 m!271289))

(declare-fun m!271291 () Bool)

(assert (=> b!255829 m!271291))

(declare-fun m!271293 () Bool)

(assert (=> b!255829 m!271293))

(declare-fun m!271295 () Bool)

(assert (=> b!255829 m!271295))

(declare-fun m!271297 () Bool)

(assert (=> b!255829 m!271297))

(declare-fun m!271299 () Bool)

(assert (=> b!255829 m!271299))

(declare-fun m!271301 () Bool)

(assert (=> b!255829 m!271301))

(declare-fun m!271303 () Bool)

(assert (=> b!255843 m!271303))

(declare-fun m!271305 () Bool)

(assert (=> b!255838 m!271305))

(declare-fun m!271307 () Bool)

(assert (=> b!255841 m!271307))

(declare-fun m!271309 () Bool)

(assert (=> b!255841 m!271309))

(declare-fun m!271311 () Bool)

(assert (=> b!255842 m!271311))

(declare-fun m!271313 () Bool)

(assert (=> b!255844 m!271313))

(declare-fun m!271315 () Bool)

(assert (=> b!255836 m!271315))

(declare-fun m!271317 () Bool)

(assert (=> b!255836 m!271317))

(declare-fun m!271319 () Bool)

(assert (=> b!255836 m!271319))

(declare-fun m!271321 () Bool)

(assert (=> b!255832 m!271321))

(declare-fun m!271323 () Bool)

(assert (=> bm!24205 m!271323))

(declare-fun m!271325 () Bool)

(assert (=> b!255834 m!271325))

(declare-fun m!271327 () Bool)

(assert (=> start!24436 m!271327))

(assert (=> bm!24206 m!271295))

(declare-fun m!271329 () Bool)

(assert (=> mapNonEmpty!11184 m!271329))

(check-sat (not b!255832) (not b_next!6711) (not mapNonEmpty!11184) tp_is_empty!6573 (not b!255829) (not b!255836) (not bm!24205) (not b!255838) (not b!255841) (not b!255843) (not start!24436) b_and!13783 (not b!255842) (not bm!24206))
(check-sat b_and!13783 (not b_next!6711))
(get-model)

(declare-fun d!61539 () Bool)

(declare-fun res!125228 () Bool)

(declare-fun e!165899 () Bool)

(assert (=> d!61539 (=> res!125228 e!165899)))

(assert (=> d!61539 (= res!125228 (= (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61539 (= (arrayContainsKey!0 (_keys!6881 thiss!1504) key!932 #b00000000000000000000000000000000) e!165899)))

(declare-fun b!255912 () Bool)

(declare-fun e!165900 () Bool)

(assert (=> b!255912 (= e!165899 e!165900)))

(declare-fun res!125229 () Bool)

(assert (=> b!255912 (=> (not res!125229) (not e!165900))))

(assert (=> b!255912 (= res!125229 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun b!255913 () Bool)

(assert (=> b!255913 (= e!165900 (arrayContainsKey!0 (_keys!6881 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61539 (not res!125228)) b!255912))

(assert (= (and b!255912 res!125229) b!255913))

(declare-fun m!271385 () Bool)

(assert (=> d!61539 m!271385))

(declare-fun m!271387 () Bool)

(assert (=> b!255913 m!271387))

(assert (=> bm!24206 d!61539))

(declare-fun d!61541 () Bool)

(assert (=> d!61541 (= (inRange!0 index!297 (mask!10987 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10987 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!255836 d!61541))

(declare-fun d!61543 () Bool)

(declare-fun e!165906 () Bool)

(assert (=> d!61543 e!165906))

(declare-fun res!125232 () Bool)

(assert (=> d!61543 (=> res!125232 e!165906)))

(declare-fun lt!128481 () Bool)

(assert (=> d!61543 (= res!125232 (not lt!128481))))

(declare-fun lt!128480 () Bool)

(assert (=> d!61543 (= lt!128481 lt!128480)))

(declare-fun lt!128479 () Unit!7938)

(declare-fun e!165905 () Unit!7938)

(assert (=> d!61543 (= lt!128479 e!165905)))

(declare-fun c!43222 () Bool)

(assert (=> d!61543 (= c!43222 lt!128480)))

(declare-fun containsKey!299 (List!3806 (_ BitVec 64)) Bool)

(assert (=> d!61543 (= lt!128480 (containsKey!299 (toList!1930 lt!128426) key!932))))

(assert (=> d!61543 (= (contains!1860 lt!128426 key!932) lt!128481)))

(declare-fun b!255920 () Bool)

(declare-fun lt!128478 () Unit!7938)

(assert (=> b!255920 (= e!165905 lt!128478)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!248 (List!3806 (_ BitVec 64)) Unit!7938)

(assert (=> b!255920 (= lt!128478 (lemmaContainsKeyImpliesGetValueByKeyDefined!248 (toList!1930 lt!128426) key!932))))

(declare-datatypes ((Option!313 0))(
  ( (Some!312 (v!5414 V!8411)) (None!311) )
))
(declare-fun isDefined!249 (Option!313) Bool)

(declare-fun getValueByKey!307 (List!3806 (_ BitVec 64)) Option!313)

(assert (=> b!255920 (isDefined!249 (getValueByKey!307 (toList!1930 lt!128426) key!932))))

(declare-fun b!255921 () Bool)

(declare-fun Unit!7943 () Unit!7938)

(assert (=> b!255921 (= e!165905 Unit!7943)))

(declare-fun b!255922 () Bool)

(assert (=> b!255922 (= e!165906 (isDefined!249 (getValueByKey!307 (toList!1930 lt!128426) key!932)))))

(assert (= (and d!61543 c!43222) b!255920))

(assert (= (and d!61543 (not c!43222)) b!255921))

(assert (= (and d!61543 (not res!125232)) b!255922))

(declare-fun m!271389 () Bool)

(assert (=> d!61543 m!271389))

(declare-fun m!271391 () Bool)

(assert (=> b!255920 m!271391))

(declare-fun m!271393 () Bool)

(assert (=> b!255920 m!271393))

(assert (=> b!255920 m!271393))

(declare-fun m!271395 () Bool)

(assert (=> b!255920 m!271395))

(assert (=> b!255922 m!271393))

(assert (=> b!255922 m!271393))

(assert (=> b!255922 m!271395))

(assert (=> b!255836 d!61543))

(declare-fun call!24236 () ListLongMap!3829)

(declare-fun call!24231 () ListLongMap!3829)

(declare-fun c!43240 () Bool)

(declare-fun call!24234 () ListLongMap!3829)

(declare-fun call!24230 () ListLongMap!3829)

(declare-fun c!43239 () Bool)

(declare-fun bm!24227 () Bool)

(assert (=> bm!24227 (= call!24230 (+!675 (ite c!43240 call!24234 (ite c!43239 call!24236 call!24231)) (ite (or c!43240 c!43239) (tuple2!4903 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4562 thiss!1504)) (tuple2!4903 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4562 thiss!1504)))))))

(declare-fun bm!24228 () Bool)

(assert (=> bm!24228 (= call!24236 call!24234)))

(declare-fun b!255965 () Bool)

(declare-fun e!165936 () ListLongMap!3829)

(declare-fun call!24233 () ListLongMap!3829)

(assert (=> b!255965 (= e!165936 call!24233)))

(declare-fun b!255966 () Bool)

(declare-fun e!165933 () Bool)

(declare-fun lt!128540 () ListLongMap!3829)

(declare-fun apply!250 (ListLongMap!3829 (_ BitVec 64)) V!8411)

(assert (=> b!255966 (= e!165933 (= (apply!250 lt!128540 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4562 thiss!1504)))))

(declare-fun b!255967 () Bool)

(declare-fun e!165937 () ListLongMap!3829)

(assert (=> b!255967 (= e!165937 call!24233)))

(declare-fun bm!24229 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!569 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 32) Int) ListLongMap!3829)

(assert (=> bm!24229 (= call!24234 (getCurrentListMapNoExtraKeys!569 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun b!255968 () Bool)

(declare-fun e!165945 () Bool)

(declare-fun e!165942 () Bool)

(assert (=> b!255968 (= e!165945 e!165942)))

(declare-fun res!125256 () Bool)

(assert (=> b!255968 (=> (not res!125256) (not e!165942))))

(assert (=> b!255968 (= res!125256 (contains!1860 lt!128540 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!255968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun b!255969 () Bool)

(declare-fun c!43236 () Bool)

(assert (=> b!255969 (= c!43236 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!255969 (= e!165937 e!165936)))

(declare-fun b!255970 () Bool)

(declare-fun e!165934 () Bool)

(declare-fun e!165935 () Bool)

(assert (=> b!255970 (= e!165934 e!165935)))

(declare-fun c!43238 () Bool)

(assert (=> b!255970 (= c!43238 (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!255971 () Bool)

(assert (=> b!255971 (= e!165935 e!165933)))

(declare-fun res!125255 () Bool)

(declare-fun call!24235 () Bool)

(assert (=> b!255971 (= res!125255 call!24235)))

(assert (=> b!255971 (=> (not res!125255) (not e!165933))))

(declare-fun bm!24230 () Bool)

(assert (=> bm!24230 (= call!24231 call!24236)))

(declare-fun d!61545 () Bool)

(assert (=> d!61545 e!165934))

(declare-fun res!125253 () Bool)

(assert (=> d!61545 (=> (not res!125253) (not e!165934))))

(assert (=> d!61545 (= res!125253 (or (bvsge #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))))

(declare-fun lt!128536 () ListLongMap!3829)

(assert (=> d!61545 (= lt!128540 lt!128536)))

(declare-fun lt!128544 () Unit!7938)

(declare-fun e!165941 () Unit!7938)

(assert (=> d!61545 (= lt!128544 e!165941)))

(declare-fun c!43237 () Bool)

(declare-fun e!165944 () Bool)

(assert (=> d!61545 (= c!43237 e!165944)))

(declare-fun res!125254 () Bool)

(assert (=> d!61545 (=> (not res!125254) (not e!165944))))

(assert (=> d!61545 (= res!125254 (bvslt #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun e!165940 () ListLongMap!3829)

(assert (=> d!61545 (= lt!128536 e!165940)))

(assert (=> d!61545 (= c!43240 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61545 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61545 (= (getCurrentListMap!1453 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)) lt!128540)))

(declare-fun b!255972 () Bool)

(declare-fun e!165943 () Bool)

(assert (=> b!255972 (= e!165943 (= (apply!250 lt!128540 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4562 thiss!1504)))))

(declare-fun b!255973 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!255973 (= e!165944 (validKeyInArray!0 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!255974 () Bool)

(declare-fun lt!128526 () Unit!7938)

(assert (=> b!255974 (= e!165941 lt!128526)))

(declare-fun lt!128535 () ListLongMap!3829)

(assert (=> b!255974 (= lt!128535 (getCurrentListMapNoExtraKeys!569 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128534 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128534 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128533 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128533 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128547 () Unit!7938)

(declare-fun addStillContains!226 (ListLongMap!3829 (_ BitVec 64) V!8411 (_ BitVec 64)) Unit!7938)

(assert (=> b!255974 (= lt!128547 (addStillContains!226 lt!128535 lt!128534 (zeroValue!4562 thiss!1504) lt!128533))))

(assert (=> b!255974 (contains!1860 (+!675 lt!128535 (tuple2!4903 lt!128534 (zeroValue!4562 thiss!1504))) lt!128533)))

(declare-fun lt!128528 () Unit!7938)

(assert (=> b!255974 (= lt!128528 lt!128547)))

(declare-fun lt!128531 () ListLongMap!3829)

(assert (=> b!255974 (= lt!128531 (getCurrentListMapNoExtraKeys!569 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128530 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128530 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128538 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128538 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128532 () Unit!7938)

(declare-fun addApplyDifferent!226 (ListLongMap!3829 (_ BitVec 64) V!8411 (_ BitVec 64)) Unit!7938)

(assert (=> b!255974 (= lt!128532 (addApplyDifferent!226 lt!128531 lt!128530 (minValue!4562 thiss!1504) lt!128538))))

(assert (=> b!255974 (= (apply!250 (+!675 lt!128531 (tuple2!4903 lt!128530 (minValue!4562 thiss!1504))) lt!128538) (apply!250 lt!128531 lt!128538))))

(declare-fun lt!128545 () Unit!7938)

(assert (=> b!255974 (= lt!128545 lt!128532)))

(declare-fun lt!128543 () ListLongMap!3829)

(assert (=> b!255974 (= lt!128543 (getCurrentListMapNoExtraKeys!569 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128537 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128537 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128546 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128546 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128541 () Unit!7938)

(assert (=> b!255974 (= lt!128541 (addApplyDifferent!226 lt!128543 lt!128537 (zeroValue!4562 thiss!1504) lt!128546))))

(assert (=> b!255974 (= (apply!250 (+!675 lt!128543 (tuple2!4903 lt!128537 (zeroValue!4562 thiss!1504))) lt!128546) (apply!250 lt!128543 lt!128546))))

(declare-fun lt!128539 () Unit!7938)

(assert (=> b!255974 (= lt!128539 lt!128541)))

(declare-fun lt!128527 () ListLongMap!3829)

(assert (=> b!255974 (= lt!128527 (getCurrentListMapNoExtraKeys!569 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128542 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128529 () (_ BitVec 64))

(assert (=> b!255974 (= lt!128529 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255974 (= lt!128526 (addApplyDifferent!226 lt!128527 lt!128542 (minValue!4562 thiss!1504) lt!128529))))

(assert (=> b!255974 (= (apply!250 (+!675 lt!128527 (tuple2!4903 lt!128542 (minValue!4562 thiss!1504))) lt!128529) (apply!250 lt!128527 lt!128529))))

(declare-fun bm!24231 () Bool)

(assert (=> bm!24231 (= call!24233 call!24230)))

(declare-fun b!255975 () Bool)

(declare-fun e!165939 () Bool)

(declare-fun call!24232 () Bool)

(assert (=> b!255975 (= e!165939 (not call!24232))))

(declare-fun b!255976 () Bool)

(assert (=> b!255976 (= e!165940 (+!675 call!24230 (tuple2!4903 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4562 thiss!1504))))))

(declare-fun b!255977 () Bool)

(assert (=> b!255977 (= e!165936 call!24231)))

(declare-fun b!255978 () Bool)

(declare-fun Unit!7944 () Unit!7938)

(assert (=> b!255978 (= e!165941 Unit!7944)))

(declare-fun b!255979 () Bool)

(declare-fun res!125251 () Bool)

(assert (=> b!255979 (=> (not res!125251) (not e!165934))))

(assert (=> b!255979 (= res!125251 e!165939)))

(declare-fun c!43235 () Bool)

(assert (=> b!255979 (= c!43235 (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!255980 () Bool)

(declare-fun res!125252 () Bool)

(assert (=> b!255980 (=> (not res!125252) (not e!165934))))

(assert (=> b!255980 (= res!125252 e!165945)))

(declare-fun res!125257 () Bool)

(assert (=> b!255980 (=> res!125257 e!165945)))

(declare-fun e!165938 () Bool)

(assert (=> b!255980 (= res!125257 (not e!165938))))

(declare-fun res!125259 () Bool)

(assert (=> b!255980 (=> (not res!125259) (not e!165938))))

(assert (=> b!255980 (= res!125259 (bvslt #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun b!255981 () Bool)

(assert (=> b!255981 (= e!165939 e!165943)))

(declare-fun res!125258 () Bool)

(assert (=> b!255981 (= res!125258 call!24232)))

(assert (=> b!255981 (=> (not res!125258) (not e!165943))))

(declare-fun bm!24232 () Bool)

(assert (=> bm!24232 (= call!24235 (contains!1860 lt!128540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255982 () Bool)

(assert (=> b!255982 (= e!165935 (not call!24235))))

(declare-fun b!255983 () Bool)

(assert (=> b!255983 (= e!165938 (validKeyInArray!0 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!255984 () Bool)

(declare-fun get!3042 (ValueCell!2943 V!8411) V!8411)

(declare-fun dynLambda!588 (Int (_ BitVec 64)) V!8411)

(assert (=> b!255984 (= e!165942 (= (apply!250 lt!128540 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)) (get!3042 (select (arr!5913 (_values!4704 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!588 (defaultEntry!4721 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!255984 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6260 (_values!4704 thiss!1504))))))

(assert (=> b!255984 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun bm!24233 () Bool)

(assert (=> bm!24233 (= call!24232 (contains!1860 lt!128540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255985 () Bool)

(assert (=> b!255985 (= e!165940 e!165937)))

(assert (=> b!255985 (= c!43239 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61545 c!43240) b!255976))

(assert (= (and d!61545 (not c!43240)) b!255985))

(assert (= (and b!255985 c!43239) b!255967))

(assert (= (and b!255985 (not c!43239)) b!255969))

(assert (= (and b!255969 c!43236) b!255965))

(assert (= (and b!255969 (not c!43236)) b!255977))

(assert (= (or b!255965 b!255977) bm!24230))

(assert (= (or b!255967 bm!24230) bm!24228))

(assert (= (or b!255967 b!255965) bm!24231))

(assert (= (or b!255976 bm!24228) bm!24229))

(assert (= (or b!255976 bm!24231) bm!24227))

(assert (= (and d!61545 res!125254) b!255973))

(assert (= (and d!61545 c!43237) b!255974))

(assert (= (and d!61545 (not c!43237)) b!255978))

(assert (= (and d!61545 res!125253) b!255980))

(assert (= (and b!255980 res!125259) b!255983))

(assert (= (and b!255980 (not res!125257)) b!255968))

(assert (= (and b!255968 res!125256) b!255984))

(assert (= (and b!255980 res!125252) b!255979))

(assert (= (and b!255979 c!43235) b!255981))

(assert (= (and b!255979 (not c!43235)) b!255975))

(assert (= (and b!255981 res!125258) b!255972))

(assert (= (or b!255981 b!255975) bm!24233))

(assert (= (and b!255979 res!125251) b!255970))

(assert (= (and b!255970 c!43238) b!255971))

(assert (= (and b!255970 (not c!43238)) b!255982))

(assert (= (and b!255971 res!125255) b!255966))

(assert (= (or b!255971 b!255982) bm!24232))

(declare-fun b_lambda!8185 () Bool)

(assert (=> (not b_lambda!8185) (not b!255984)))

(declare-fun t!8870 () Bool)

(declare-fun tb!3021 () Bool)

(assert (=> (and b!255841 (= (defaultEntry!4721 thiss!1504) (defaultEntry!4721 thiss!1504)) t!8870) tb!3021))

(declare-fun result!5369 () Bool)

(assert (=> tb!3021 (= result!5369 tp_is_empty!6573)))

(assert (=> b!255984 t!8870))

(declare-fun b_and!13787 () Bool)

(assert (= b_and!13783 (and (=> t!8870 result!5369) b_and!13787)))

(declare-fun m!271397 () Bool)

(assert (=> b!255966 m!271397))

(declare-fun m!271399 () Bool)

(assert (=> b!255974 m!271399))

(declare-fun m!271401 () Bool)

(assert (=> b!255974 m!271401))

(declare-fun m!271403 () Bool)

(assert (=> b!255974 m!271403))

(declare-fun m!271405 () Bool)

(assert (=> b!255974 m!271405))

(declare-fun m!271407 () Bool)

(assert (=> b!255974 m!271407))

(assert (=> b!255974 m!271401))

(declare-fun m!271409 () Bool)

(assert (=> b!255974 m!271409))

(declare-fun m!271411 () Bool)

(assert (=> b!255974 m!271411))

(declare-fun m!271413 () Bool)

(assert (=> b!255974 m!271413))

(declare-fun m!271415 () Bool)

(assert (=> b!255974 m!271415))

(declare-fun m!271417 () Bool)

(assert (=> b!255974 m!271417))

(declare-fun m!271419 () Bool)

(assert (=> b!255974 m!271419))

(assert (=> b!255974 m!271411))

(declare-fun m!271421 () Bool)

(assert (=> b!255974 m!271421))

(declare-fun m!271423 () Bool)

(assert (=> b!255974 m!271423))

(assert (=> b!255974 m!271385))

(declare-fun m!271425 () Bool)

(assert (=> b!255974 m!271425))

(declare-fun m!271427 () Bool)

(assert (=> b!255974 m!271427))

(assert (=> b!255974 m!271415))

(assert (=> b!255974 m!271423))

(declare-fun m!271429 () Bool)

(assert (=> b!255974 m!271429))

(declare-fun m!271431 () Bool)

(assert (=> bm!24233 m!271431))

(declare-fun m!271433 () Bool)

(assert (=> b!255972 m!271433))

(declare-fun m!271435 () Bool)

(assert (=> bm!24232 m!271435))

(assert (=> b!255968 m!271385))

(assert (=> b!255968 m!271385))

(declare-fun m!271437 () Bool)

(assert (=> b!255968 m!271437))

(declare-fun m!271439 () Bool)

(assert (=> b!255984 m!271439))

(assert (=> b!255984 m!271385))

(declare-fun m!271441 () Bool)

(assert (=> b!255984 m!271441))

(assert (=> b!255984 m!271385))

(declare-fun m!271443 () Bool)

(assert (=> b!255984 m!271443))

(assert (=> b!255984 m!271443))

(assert (=> b!255984 m!271439))

(declare-fun m!271445 () Bool)

(assert (=> b!255984 m!271445))

(declare-fun m!271447 () Bool)

(assert (=> d!61545 m!271447))

(assert (=> bm!24229 m!271421))

(assert (=> b!255983 m!271385))

(assert (=> b!255983 m!271385))

(declare-fun m!271449 () Bool)

(assert (=> b!255983 m!271449))

(declare-fun m!271451 () Bool)

(assert (=> b!255976 m!271451))

(assert (=> b!255973 m!271385))

(assert (=> b!255973 m!271385))

(assert (=> b!255973 m!271449))

(declare-fun m!271453 () Bool)

(assert (=> bm!24227 m!271453))

(assert (=> b!255836 d!61545))

(declare-fun d!61547 () Bool)

(declare-fun e!165948 () Bool)

(assert (=> d!61547 e!165948))

(declare-fun res!125264 () Bool)

(assert (=> d!61547 (=> (not res!125264) (not e!165948))))

(declare-fun lt!128552 () SeekEntryResult!1170)

(assert (=> d!61547 (= res!125264 ((_ is Found!1170) lt!128552))))

(assert (=> d!61547 (= lt!128552 (seekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(declare-fun lt!128553 () Unit!7938)

(declare-fun choose!1232 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) Int) Unit!7938)

(assert (=> d!61547 (= lt!128553 (choose!1232 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)))))

(assert (=> d!61547 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61547 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!426 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)) lt!128553)))

(declare-fun b!255992 () Bool)

(declare-fun res!125265 () Bool)

(assert (=> b!255992 (=> (not res!125265) (not e!165948))))

(assert (=> b!255992 (= res!125265 (inRange!0 (index!6851 lt!128552) (mask!10987 thiss!1504)))))

(declare-fun b!255993 () Bool)

(assert (=> b!255993 (= e!165948 (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6851 lt!128552)) key!932))))

(assert (=> b!255993 (and (bvsge (index!6851 lt!128552) #b00000000000000000000000000000000) (bvslt (index!6851 lt!128552) (size!6261 (_keys!6881 thiss!1504))))))

(assert (= (and d!61547 res!125264) b!255992))

(assert (= (and b!255992 res!125265) b!255993))

(assert (=> d!61547 m!271321))

(declare-fun m!271455 () Bool)

(assert (=> d!61547 m!271455))

(assert (=> d!61547 m!271447))

(declare-fun m!271457 () Bool)

(assert (=> b!255992 m!271457))

(declare-fun m!271459 () Bool)

(assert (=> b!255993 m!271459))

(assert (=> b!255842 d!61547))

(declare-fun b!256002 () Bool)

(declare-fun e!165954 () (_ BitVec 32))

(declare-fun e!165953 () (_ BitVec 32))

(assert (=> b!256002 (= e!165954 e!165953)))

(declare-fun c!43245 () Bool)

(assert (=> b!256002 (= c!43245 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(declare-fun bm!24236 () Bool)

(declare-fun call!24239 () (_ BitVec 32))

(assert (=> bm!24236 (= call!24239 (arrayCountValidKeys!0 lt!128429 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun d!61549 () Bool)

(declare-fun lt!128556 () (_ BitVec 32))

(assert (=> d!61549 (and (bvsge lt!128556 #b00000000000000000000000000000000) (bvsle lt!128556 (bvsub (size!6261 lt!128429) #b00000000000000000000000000000000)))))

(assert (=> d!61549 (= lt!128556 e!165954)))

(declare-fun c!43246 () Bool)

(assert (=> d!61549 (= c!43246 (bvsge #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(assert (=> d!61549 (and (bvsle #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6261 (_keys!6881 thiss!1504)) (size!6261 lt!128429)))))

(assert (=> d!61549 (= (arrayCountValidKeys!0 lt!128429 #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) lt!128556)))

(declare-fun b!256003 () Bool)

(assert (=> b!256003 (= e!165953 call!24239)))

(declare-fun b!256004 () Bool)

(assert (=> b!256004 (= e!165953 (bvadd #b00000000000000000000000000000001 call!24239))))

(declare-fun b!256005 () Bool)

(assert (=> b!256005 (= e!165954 #b00000000000000000000000000000000)))

(assert (= (and d!61549 c!43246) b!256005))

(assert (= (and d!61549 (not c!43246)) b!256002))

(assert (= (and b!256002 c!43245) b!256004))

(assert (= (and b!256002 (not c!43245)) b!256003))

(assert (= (or b!256004 b!256003) bm!24236))

(declare-fun m!271461 () Bool)

(assert (=> b!256002 m!271461))

(assert (=> b!256002 m!271461))

(declare-fun m!271463 () Bool)

(assert (=> b!256002 m!271463))

(declare-fun m!271465 () Bool)

(assert (=> bm!24236 m!271465))

(assert (=> b!255829 d!61549))

(declare-fun b!256017 () Bool)

(declare-fun e!165960 () Bool)

(assert (=> b!256017 (= e!165960 (= (arrayCountValidKeys!0 (array!12485 (store (arr!5914 (_keys!6881 thiss!1504)) index!297 key!932) (size!6261 (_keys!6881 thiss!1504))) #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6881 thiss!1504) #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!256015 () Bool)

(declare-fun res!125277 () Bool)

(declare-fun e!165959 () Bool)

(assert (=> b!256015 (=> (not res!125277) (not e!165959))))

(assert (=> b!256015 (= res!125277 (validKeyInArray!0 key!932))))

(declare-fun d!61551 () Bool)

(assert (=> d!61551 e!165960))

(declare-fun res!125276 () Bool)

(assert (=> d!61551 (=> (not res!125276) (not e!165960))))

(assert (=> d!61551 (= res!125276 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6261 (_keys!6881 thiss!1504)))))))

(declare-fun lt!128559 () Unit!7938)

(declare-fun choose!1 (array!12484 (_ BitVec 32) (_ BitVec 64)) Unit!7938)

(assert (=> d!61551 (= lt!128559 (choose!1 (_keys!6881 thiss!1504) index!297 key!932))))

(assert (=> d!61551 e!165959))

(declare-fun res!125274 () Bool)

(assert (=> d!61551 (=> (not res!125274) (not e!165959))))

(assert (=> d!61551 (= res!125274 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6261 (_keys!6881 thiss!1504)))))))

(assert (=> d!61551 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6881 thiss!1504) index!297 key!932) lt!128559)))

(declare-fun b!256014 () Bool)

(declare-fun res!125275 () Bool)

(assert (=> b!256014 (=> (not res!125275) (not e!165959))))

(assert (=> b!256014 (= res!125275 (not (validKeyInArray!0 (select (arr!5914 (_keys!6881 thiss!1504)) index!297))))))

(declare-fun b!256016 () Bool)

(assert (=> b!256016 (= e!165959 (bvslt (size!6261 (_keys!6881 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!61551 res!125274) b!256014))

(assert (= (and b!256014 res!125275) b!256015))

(assert (= (and b!256015 res!125277) b!256016))

(assert (= (and d!61551 res!125276) b!256017))

(assert (=> b!256017 m!271287))

(declare-fun m!271467 () Bool)

(assert (=> b!256017 m!271467))

(assert (=> b!256017 m!271289))

(declare-fun m!271469 () Bool)

(assert (=> b!256015 m!271469))

(declare-fun m!271471 () Bool)

(assert (=> d!61551 m!271471))

(declare-fun m!271473 () Bool)

(assert (=> b!256014 m!271473))

(assert (=> b!256014 m!271473))

(declare-fun m!271475 () Bool)

(assert (=> b!256014 m!271475))

(assert (=> b!255829 d!61551))

(declare-fun b!256018 () Bool)

(declare-fun e!165962 () (_ BitVec 32))

(declare-fun e!165961 () (_ BitVec 32))

(assert (=> b!256018 (= e!165962 e!165961)))

(declare-fun c!43247 () Bool)

(assert (=> b!256018 (= c!43247 (validKeyInArray!0 (select (arr!5914 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24237 () Bool)

(declare-fun call!24240 () (_ BitVec 32))

(assert (=> bm!24237 (= call!24240 (arrayCountValidKeys!0 (_keys!6881 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun d!61553 () Bool)

(declare-fun lt!128560 () (_ BitVec 32))

(assert (=> d!61553 (and (bvsge lt!128560 #b00000000000000000000000000000000) (bvsle lt!128560 (bvsub (size!6261 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61553 (= lt!128560 e!165962)))

(declare-fun c!43248 () Bool)

(assert (=> d!61553 (= c!43248 (bvsge #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))))))

(assert (=> d!61553 (and (bvsle #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6261 (_keys!6881 thiss!1504)) (size!6261 (_keys!6881 thiss!1504))))))

(assert (=> d!61553 (= (arrayCountValidKeys!0 (_keys!6881 thiss!1504) #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) lt!128560)))

(declare-fun b!256019 () Bool)

(assert (=> b!256019 (= e!165961 call!24240)))

(declare-fun b!256020 () Bool)

(assert (=> b!256020 (= e!165961 (bvadd #b00000000000000000000000000000001 call!24240))))

(declare-fun b!256021 () Bool)

(assert (=> b!256021 (= e!165962 #b00000000000000000000000000000000)))

(assert (= (and d!61553 c!43248) b!256021))

(assert (= (and d!61553 (not c!43248)) b!256018))

(assert (= (and b!256018 c!43247) b!256020))

(assert (= (and b!256018 (not c!43247)) b!256019))

(assert (= (or b!256020 b!256019) bm!24237))

(assert (=> b!256018 m!271385))

(assert (=> b!256018 m!271385))

(assert (=> b!256018 m!271449))

(declare-fun m!271477 () Bool)

(assert (=> bm!24237 m!271477))

(assert (=> b!255829 d!61553))

(declare-fun d!61555 () Bool)

(declare-fun e!165965 () Bool)

(assert (=> d!61555 e!165965))

(declare-fun res!125280 () Bool)

(assert (=> d!61555 (=> (not res!125280) (not e!165965))))

(assert (=> d!61555 (= res!125280 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6261 (_keys!6881 thiss!1504))) (bvslt index!297 (size!6260 (_values!4704 thiss!1504)))))))

(declare-fun lt!128563 () Unit!7938)

(declare-fun choose!1233 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 32) (_ BitVec 64) V!8411 Int) Unit!7938)

(assert (=> d!61555 (= lt!128563 (choose!1233 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) index!297 key!932 v!346 (defaultEntry!4721 thiss!1504)))))

(assert (=> d!61555 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61555 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!90 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) index!297 key!932 v!346 (defaultEntry!4721 thiss!1504)) lt!128563)))

(declare-fun b!256024 () Bool)

(assert (=> b!256024 (= e!165965 (= (+!675 (getCurrentListMap!1453 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)) (tuple2!4903 key!932 v!346)) (getCurrentListMap!1453 (array!12485 (store (arr!5914 (_keys!6881 thiss!1504)) index!297 key!932) (size!6261 (_keys!6881 thiss!1504))) (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504))))))

(assert (= (and d!61555 res!125280) b!256024))

(declare-fun m!271479 () Bool)

(assert (=> d!61555 m!271479))

(assert (=> d!61555 m!271447))

(declare-fun m!271481 () Bool)

(assert (=> b!256024 m!271481))

(assert (=> b!256024 m!271287))

(assert (=> b!256024 m!271319))

(assert (=> b!256024 m!271277))

(assert (=> b!256024 m!271319))

(declare-fun m!271483 () Bool)

(assert (=> b!256024 m!271483))

(assert (=> b!255829 d!61555))

(declare-fun d!61557 () Bool)

(declare-fun e!165968 () Bool)

(assert (=> d!61557 e!165968))

(declare-fun res!125286 () Bool)

(assert (=> d!61557 (=> (not res!125286) (not e!165968))))

(declare-fun lt!128572 () ListLongMap!3829)

(assert (=> d!61557 (= res!125286 (contains!1860 lt!128572 (_1!2461 (tuple2!4903 key!932 v!346))))))

(declare-fun lt!128575 () List!3806)

(assert (=> d!61557 (= lt!128572 (ListLongMap!3830 lt!128575))))

(declare-fun lt!128574 () Unit!7938)

(declare-fun lt!128573 () Unit!7938)

(assert (=> d!61557 (= lt!128574 lt!128573)))

(assert (=> d!61557 (= (getValueByKey!307 lt!128575 (_1!2461 (tuple2!4903 key!932 v!346))) (Some!312 (_2!2461 (tuple2!4903 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!165 (List!3806 (_ BitVec 64) V!8411) Unit!7938)

(assert (=> d!61557 (= lt!128573 (lemmaContainsTupThenGetReturnValue!165 lt!128575 (_1!2461 (tuple2!4903 key!932 v!346)) (_2!2461 (tuple2!4903 key!932 v!346))))))

(declare-fun insertStrictlySorted!167 (List!3806 (_ BitVec 64) V!8411) List!3806)

(assert (=> d!61557 (= lt!128575 (insertStrictlySorted!167 (toList!1930 lt!128426) (_1!2461 (tuple2!4903 key!932 v!346)) (_2!2461 (tuple2!4903 key!932 v!346))))))

(assert (=> d!61557 (= (+!675 lt!128426 (tuple2!4903 key!932 v!346)) lt!128572)))

(declare-fun b!256029 () Bool)

(declare-fun res!125285 () Bool)

(assert (=> b!256029 (=> (not res!125285) (not e!165968))))

(assert (=> b!256029 (= res!125285 (= (getValueByKey!307 (toList!1930 lt!128572) (_1!2461 (tuple2!4903 key!932 v!346))) (Some!312 (_2!2461 (tuple2!4903 key!932 v!346)))))))

(declare-fun b!256030 () Bool)

(declare-fun contains!1861 (List!3806 tuple2!4902) Bool)

(assert (=> b!256030 (= e!165968 (contains!1861 (toList!1930 lt!128572) (tuple2!4903 key!932 v!346)))))

(assert (= (and d!61557 res!125286) b!256029))

(assert (= (and b!256029 res!125285) b!256030))

(declare-fun m!271485 () Bool)

(assert (=> d!61557 m!271485))

(declare-fun m!271487 () Bool)

(assert (=> d!61557 m!271487))

(declare-fun m!271489 () Bool)

(assert (=> d!61557 m!271489))

(declare-fun m!271491 () Bool)

(assert (=> d!61557 m!271491))

(declare-fun m!271493 () Bool)

(assert (=> b!256029 m!271493))

(declare-fun m!271495 () Bool)

(assert (=> b!256030 m!271495))

(assert (=> b!255829 d!61557))

(declare-fun bm!24238 () Bool)

(declare-fun call!24247 () ListLongMap!3829)

(declare-fun call!24241 () ListLongMap!3829)

(declare-fun call!24245 () ListLongMap!3829)

(declare-fun c!43253 () Bool)

(declare-fun c!43254 () Bool)

(declare-fun call!24242 () ListLongMap!3829)

(assert (=> bm!24238 (= call!24241 (+!675 (ite c!43254 call!24245 (ite c!43253 call!24247 call!24242)) (ite (or c!43254 c!43253) (tuple2!4903 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4562 thiss!1504)) (tuple2!4903 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4562 thiss!1504)))))))

(declare-fun bm!24239 () Bool)

(assert (=> bm!24239 (= call!24247 call!24245)))

(declare-fun b!256031 () Bool)

(declare-fun e!165972 () ListLongMap!3829)

(declare-fun call!24244 () ListLongMap!3829)

(assert (=> b!256031 (= e!165972 call!24244)))

(declare-fun b!256032 () Bool)

(declare-fun e!165969 () Bool)

(declare-fun lt!128590 () ListLongMap!3829)

(assert (=> b!256032 (= e!165969 (= (apply!250 lt!128590 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4562 thiss!1504)))))

(declare-fun b!256033 () Bool)

(declare-fun e!165973 () ListLongMap!3829)

(assert (=> b!256033 (= e!165973 call!24244)))

(declare-fun bm!24240 () Bool)

(assert (=> bm!24240 (= call!24245 (getCurrentListMapNoExtraKeys!569 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun b!256034 () Bool)

(declare-fun e!165981 () Bool)

(declare-fun e!165978 () Bool)

(assert (=> b!256034 (= e!165981 e!165978)))

(declare-fun res!125292 () Bool)

(assert (=> b!256034 (=> (not res!125292) (not e!165978))))

(assert (=> b!256034 (= res!125292 (contains!1860 lt!128590 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(assert (=> b!256034 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(declare-fun b!256035 () Bool)

(declare-fun c!43250 () Bool)

(assert (=> b!256035 (= c!43250 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!256035 (= e!165973 e!165972)))

(declare-fun b!256036 () Bool)

(declare-fun e!165970 () Bool)

(declare-fun e!165971 () Bool)

(assert (=> b!256036 (= e!165970 e!165971)))

(declare-fun c!43252 () Bool)

(assert (=> b!256036 (= c!43252 (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256037 () Bool)

(assert (=> b!256037 (= e!165971 e!165969)))

(declare-fun res!125291 () Bool)

(declare-fun call!24246 () Bool)

(assert (=> b!256037 (= res!125291 call!24246)))

(assert (=> b!256037 (=> (not res!125291) (not e!165969))))

(declare-fun bm!24241 () Bool)

(assert (=> bm!24241 (= call!24242 call!24247)))

(declare-fun d!61559 () Bool)

(assert (=> d!61559 e!165970))

(declare-fun res!125289 () Bool)

(assert (=> d!61559 (=> (not res!125289) (not e!165970))))

(assert (=> d!61559 (= res!125289 (or (bvsge #b00000000000000000000000000000000 (size!6261 lt!128429)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 lt!128429)))))))

(declare-fun lt!128586 () ListLongMap!3829)

(assert (=> d!61559 (= lt!128590 lt!128586)))

(declare-fun lt!128594 () Unit!7938)

(declare-fun e!165977 () Unit!7938)

(assert (=> d!61559 (= lt!128594 e!165977)))

(declare-fun c!43251 () Bool)

(declare-fun e!165980 () Bool)

(assert (=> d!61559 (= c!43251 e!165980)))

(declare-fun res!125290 () Bool)

(assert (=> d!61559 (=> (not res!125290) (not e!165980))))

(assert (=> d!61559 (= res!125290 (bvslt #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(declare-fun e!165976 () ListLongMap!3829)

(assert (=> d!61559 (= lt!128586 e!165976)))

(assert (=> d!61559 (= c!43254 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61559 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61559 (= (getCurrentListMap!1453 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)) lt!128590)))

(declare-fun b!256038 () Bool)

(declare-fun e!165979 () Bool)

(assert (=> b!256038 (= e!165979 (= (apply!250 lt!128590 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4562 thiss!1504)))))

(declare-fun b!256039 () Bool)

(assert (=> b!256039 (= e!165980 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(declare-fun b!256040 () Bool)

(declare-fun lt!128576 () Unit!7938)

(assert (=> b!256040 (= e!165977 lt!128576)))

(declare-fun lt!128585 () ListLongMap!3829)

(assert (=> b!256040 (= lt!128585 (getCurrentListMapNoExtraKeys!569 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128584 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128583 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128583 (select (arr!5914 lt!128429) #b00000000000000000000000000000000))))

(declare-fun lt!128597 () Unit!7938)

(assert (=> b!256040 (= lt!128597 (addStillContains!226 lt!128585 lt!128584 (zeroValue!4562 thiss!1504) lt!128583))))

(assert (=> b!256040 (contains!1860 (+!675 lt!128585 (tuple2!4903 lt!128584 (zeroValue!4562 thiss!1504))) lt!128583)))

(declare-fun lt!128578 () Unit!7938)

(assert (=> b!256040 (= lt!128578 lt!128597)))

(declare-fun lt!128581 () ListLongMap!3829)

(assert (=> b!256040 (= lt!128581 (getCurrentListMapNoExtraKeys!569 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128580 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128580 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128588 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128588 (select (arr!5914 lt!128429) #b00000000000000000000000000000000))))

(declare-fun lt!128582 () Unit!7938)

(assert (=> b!256040 (= lt!128582 (addApplyDifferent!226 lt!128581 lt!128580 (minValue!4562 thiss!1504) lt!128588))))

(assert (=> b!256040 (= (apply!250 (+!675 lt!128581 (tuple2!4903 lt!128580 (minValue!4562 thiss!1504))) lt!128588) (apply!250 lt!128581 lt!128588))))

(declare-fun lt!128595 () Unit!7938)

(assert (=> b!256040 (= lt!128595 lt!128582)))

(declare-fun lt!128593 () ListLongMap!3829)

(assert (=> b!256040 (= lt!128593 (getCurrentListMapNoExtraKeys!569 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128587 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128587 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128596 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128596 (select (arr!5914 lt!128429) #b00000000000000000000000000000000))))

(declare-fun lt!128591 () Unit!7938)

(assert (=> b!256040 (= lt!128591 (addApplyDifferent!226 lt!128593 lt!128587 (zeroValue!4562 thiss!1504) lt!128596))))

(assert (=> b!256040 (= (apply!250 (+!675 lt!128593 (tuple2!4903 lt!128587 (zeroValue!4562 thiss!1504))) lt!128596) (apply!250 lt!128593 lt!128596))))

(declare-fun lt!128589 () Unit!7938)

(assert (=> b!256040 (= lt!128589 lt!128591)))

(declare-fun lt!128577 () ListLongMap!3829)

(assert (=> b!256040 (= lt!128577 (getCurrentListMapNoExtraKeys!569 lt!128429 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(declare-fun lt!128592 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128579 () (_ BitVec 64))

(assert (=> b!256040 (= lt!128579 (select (arr!5914 lt!128429) #b00000000000000000000000000000000))))

(assert (=> b!256040 (= lt!128576 (addApplyDifferent!226 lt!128577 lt!128592 (minValue!4562 thiss!1504) lt!128579))))

(assert (=> b!256040 (= (apply!250 (+!675 lt!128577 (tuple2!4903 lt!128592 (minValue!4562 thiss!1504))) lt!128579) (apply!250 lt!128577 lt!128579))))

(declare-fun bm!24242 () Bool)

(assert (=> bm!24242 (= call!24244 call!24241)))

(declare-fun b!256041 () Bool)

(declare-fun e!165975 () Bool)

(declare-fun call!24243 () Bool)

(assert (=> b!256041 (= e!165975 (not call!24243))))

(declare-fun b!256042 () Bool)

(assert (=> b!256042 (= e!165976 (+!675 call!24241 (tuple2!4903 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4562 thiss!1504))))))

(declare-fun b!256043 () Bool)

(assert (=> b!256043 (= e!165972 call!24242)))

(declare-fun b!256044 () Bool)

(declare-fun Unit!7945 () Unit!7938)

(assert (=> b!256044 (= e!165977 Unit!7945)))

(declare-fun b!256045 () Bool)

(declare-fun res!125287 () Bool)

(assert (=> b!256045 (=> (not res!125287) (not e!165970))))

(assert (=> b!256045 (= res!125287 e!165975)))

(declare-fun c!43249 () Bool)

(assert (=> b!256045 (= c!43249 (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!256046 () Bool)

(declare-fun res!125288 () Bool)

(assert (=> b!256046 (=> (not res!125288) (not e!165970))))

(assert (=> b!256046 (= res!125288 e!165981)))

(declare-fun res!125293 () Bool)

(assert (=> b!256046 (=> res!125293 e!165981)))

(declare-fun e!165974 () Bool)

(assert (=> b!256046 (= res!125293 (not e!165974))))

(declare-fun res!125295 () Bool)

(assert (=> b!256046 (=> (not res!125295) (not e!165974))))

(assert (=> b!256046 (= res!125295 (bvslt #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(declare-fun b!256047 () Bool)

(assert (=> b!256047 (= e!165975 e!165979)))

(declare-fun res!125294 () Bool)

(assert (=> b!256047 (= res!125294 call!24243)))

(assert (=> b!256047 (=> (not res!125294) (not e!165979))))

(declare-fun bm!24243 () Bool)

(assert (=> bm!24243 (= call!24246 (contains!1860 lt!128590 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256048 () Bool)

(assert (=> b!256048 (= e!165971 (not call!24246))))

(declare-fun b!256049 () Bool)

(assert (=> b!256049 (= e!165974 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(declare-fun b!256050 () Bool)

(assert (=> b!256050 (= e!165978 (= (apply!250 lt!128590 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)) (get!3042 (select (arr!5913 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!588 (defaultEntry!4721 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256050 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6260 (array!12483 (store (arr!5913 (_values!4704 thiss!1504)) index!297 (ValueCellFull!2943 v!346)) (size!6260 (_values!4704 thiss!1504))))))))

(assert (=> b!256050 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(declare-fun bm!24244 () Bool)

(assert (=> bm!24244 (= call!24243 (contains!1860 lt!128590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256051 () Bool)

(assert (=> b!256051 (= e!165976 e!165973)))

(assert (=> b!256051 (= c!43253 (and (not (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4458 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61559 c!43254) b!256042))

(assert (= (and d!61559 (not c!43254)) b!256051))

(assert (= (and b!256051 c!43253) b!256033))

(assert (= (and b!256051 (not c!43253)) b!256035))

(assert (= (and b!256035 c!43250) b!256031))

(assert (= (and b!256035 (not c!43250)) b!256043))

(assert (= (or b!256031 b!256043) bm!24241))

(assert (= (or b!256033 bm!24241) bm!24239))

(assert (= (or b!256033 b!256031) bm!24242))

(assert (= (or b!256042 bm!24239) bm!24240))

(assert (= (or b!256042 bm!24242) bm!24238))

(assert (= (and d!61559 res!125290) b!256039))

(assert (= (and d!61559 c!43251) b!256040))

(assert (= (and d!61559 (not c!43251)) b!256044))

(assert (= (and d!61559 res!125289) b!256046))

(assert (= (and b!256046 res!125295) b!256049))

(assert (= (and b!256046 (not res!125293)) b!256034))

(assert (= (and b!256034 res!125292) b!256050))

(assert (= (and b!256046 res!125288) b!256045))

(assert (= (and b!256045 c!43249) b!256047))

(assert (= (and b!256045 (not c!43249)) b!256041))

(assert (= (and b!256047 res!125294) b!256038))

(assert (= (or b!256047 b!256041) bm!24244))

(assert (= (and b!256045 res!125287) b!256036))

(assert (= (and b!256036 c!43252) b!256037))

(assert (= (and b!256036 (not c!43252)) b!256048))

(assert (= (and b!256037 res!125291) b!256032))

(assert (= (or b!256037 b!256048) bm!24243))

(declare-fun b_lambda!8187 () Bool)

(assert (=> (not b_lambda!8187) (not b!256050)))

(assert (=> b!256050 t!8870))

(declare-fun b_and!13789 () Bool)

(assert (= b_and!13787 (and (=> t!8870 result!5369) b_and!13789)))

(declare-fun m!271497 () Bool)

(assert (=> b!256032 m!271497))

(declare-fun m!271499 () Bool)

(assert (=> b!256040 m!271499))

(declare-fun m!271501 () Bool)

(assert (=> b!256040 m!271501))

(declare-fun m!271503 () Bool)

(assert (=> b!256040 m!271503))

(declare-fun m!271505 () Bool)

(assert (=> b!256040 m!271505))

(declare-fun m!271507 () Bool)

(assert (=> b!256040 m!271507))

(assert (=> b!256040 m!271501))

(declare-fun m!271509 () Bool)

(assert (=> b!256040 m!271509))

(declare-fun m!271511 () Bool)

(assert (=> b!256040 m!271511))

(declare-fun m!271513 () Bool)

(assert (=> b!256040 m!271513))

(declare-fun m!271515 () Bool)

(assert (=> b!256040 m!271515))

(declare-fun m!271517 () Bool)

(assert (=> b!256040 m!271517))

(declare-fun m!271519 () Bool)

(assert (=> b!256040 m!271519))

(assert (=> b!256040 m!271511))

(declare-fun m!271521 () Bool)

(assert (=> b!256040 m!271521))

(declare-fun m!271523 () Bool)

(assert (=> b!256040 m!271523))

(assert (=> b!256040 m!271461))

(declare-fun m!271525 () Bool)

(assert (=> b!256040 m!271525))

(declare-fun m!271527 () Bool)

(assert (=> b!256040 m!271527))

(assert (=> b!256040 m!271515))

(assert (=> b!256040 m!271523))

(declare-fun m!271529 () Bool)

(assert (=> b!256040 m!271529))

(declare-fun m!271531 () Bool)

(assert (=> bm!24244 m!271531))

(declare-fun m!271533 () Bool)

(assert (=> b!256038 m!271533))

(declare-fun m!271535 () Bool)

(assert (=> bm!24243 m!271535))

(assert (=> b!256034 m!271461))

(assert (=> b!256034 m!271461))

(declare-fun m!271537 () Bool)

(assert (=> b!256034 m!271537))

(assert (=> b!256050 m!271439))

(assert (=> b!256050 m!271461))

(declare-fun m!271539 () Bool)

(assert (=> b!256050 m!271539))

(assert (=> b!256050 m!271461))

(declare-fun m!271541 () Bool)

(assert (=> b!256050 m!271541))

(assert (=> b!256050 m!271541))

(assert (=> b!256050 m!271439))

(declare-fun m!271543 () Bool)

(assert (=> b!256050 m!271543))

(assert (=> d!61559 m!271447))

(assert (=> bm!24240 m!271521))

(assert (=> b!256049 m!271461))

(assert (=> b!256049 m!271461))

(assert (=> b!256049 m!271463))

(declare-fun m!271545 () Bool)

(assert (=> b!256042 m!271545))

(assert (=> b!256039 m!271461))

(assert (=> b!256039 m!271461))

(assert (=> b!256039 m!271463))

(declare-fun m!271547 () Bool)

(assert (=> bm!24238 m!271547))

(assert (=> b!255829 d!61559))

(declare-fun bm!24247 () Bool)

(declare-fun call!24250 () Bool)

(assert (=> bm!24247 (= call!24250 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!128429 (mask!10987 thiss!1504)))))

(declare-fun b!256060 () Bool)

(declare-fun e!165988 () Bool)

(assert (=> b!256060 (= e!165988 call!24250)))

(declare-fun b!256061 () Bool)

(declare-fun e!165990 () Bool)

(assert (=> b!256061 (= e!165988 e!165990)))

(declare-fun lt!128606 () (_ BitVec 64))

(assert (=> b!256061 (= lt!128606 (select (arr!5914 lt!128429) #b00000000000000000000000000000000))))

(declare-fun lt!128604 () Unit!7938)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12484 (_ BitVec 64) (_ BitVec 32)) Unit!7938)

(assert (=> b!256061 (= lt!128604 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128429 lt!128606 #b00000000000000000000000000000000))))

(assert (=> b!256061 (arrayContainsKey!0 lt!128429 lt!128606 #b00000000000000000000000000000000)))

(declare-fun lt!128605 () Unit!7938)

(assert (=> b!256061 (= lt!128605 lt!128604)))

(declare-fun res!125301 () Bool)

(assert (=> b!256061 (= res!125301 (= (seekEntryOrOpen!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000) lt!128429 (mask!10987 thiss!1504)) (Found!1170 #b00000000000000000000000000000000)))))

(assert (=> b!256061 (=> (not res!125301) (not e!165990))))

(declare-fun b!256062 () Bool)

(assert (=> b!256062 (= e!165990 call!24250)))

(declare-fun d!61561 () Bool)

(declare-fun res!125300 () Bool)

(declare-fun e!165989 () Bool)

(assert (=> d!61561 (=> res!125300 e!165989)))

(assert (=> d!61561 (= res!125300 (bvsge #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(assert (=> d!61561 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128429 (mask!10987 thiss!1504)) e!165989)))

(declare-fun b!256063 () Bool)

(assert (=> b!256063 (= e!165989 e!165988)))

(declare-fun c!43257 () Bool)

(assert (=> b!256063 (= c!43257 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(assert (= (and d!61561 (not res!125300)) b!256063))

(assert (= (and b!256063 c!43257) b!256061))

(assert (= (and b!256063 (not c!43257)) b!256060))

(assert (= (and b!256061 res!125301) b!256062))

(assert (= (or b!256062 b!256060) bm!24247))

(declare-fun m!271549 () Bool)

(assert (=> bm!24247 m!271549))

(assert (=> b!256061 m!271461))

(declare-fun m!271551 () Bool)

(assert (=> b!256061 m!271551))

(declare-fun m!271553 () Bool)

(assert (=> b!256061 m!271553))

(assert (=> b!256061 m!271461))

(declare-fun m!271555 () Bool)

(assert (=> b!256061 m!271555))

(assert (=> b!256063 m!271461))

(assert (=> b!256063 m!271461))

(assert (=> b!256063 m!271463))

(assert (=> b!255829 d!61561))

(assert (=> b!255829 d!61539))

(declare-fun d!61563 () Bool)

(declare-fun e!165993 () Bool)

(assert (=> d!61563 e!165993))

(declare-fun res!125304 () Bool)

(assert (=> d!61563 (=> (not res!125304) (not e!165993))))

(assert (=> d!61563 (= res!125304 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6261 (_keys!6881 thiss!1504)))))))

(declare-fun lt!128609 () Unit!7938)

(declare-fun choose!102 ((_ BitVec 64) array!12484 (_ BitVec 32) (_ BitVec 32)) Unit!7938)

(assert (=> d!61563 (= lt!128609 (choose!102 key!932 (_keys!6881 thiss!1504) index!297 (mask!10987 thiss!1504)))))

(assert (=> d!61563 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61563 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) index!297 (mask!10987 thiss!1504)) lt!128609)))

(declare-fun b!256066 () Bool)

(assert (=> b!256066 (= e!165993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12485 (store (arr!5914 (_keys!6881 thiss!1504)) index!297 key!932) (size!6261 (_keys!6881 thiss!1504))) (mask!10987 thiss!1504)))))

(assert (= (and d!61563 res!125304) b!256066))

(declare-fun m!271557 () Bool)

(assert (=> d!61563 m!271557))

(assert (=> d!61563 m!271447))

(assert (=> b!256066 m!271287))

(declare-fun m!271559 () Bool)

(assert (=> b!256066 m!271559))

(assert (=> b!255829 d!61563))

(declare-fun d!61565 () Bool)

(declare-fun e!165996 () Bool)

(assert (=> d!61565 e!165996))

(declare-fun res!125307 () Bool)

(assert (=> d!61565 (=> (not res!125307) (not e!165996))))

(assert (=> d!61565 (= res!125307 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6261 (_keys!6881 thiss!1504)))))))

(declare-fun lt!128612 () Unit!7938)

(declare-fun choose!41 (array!12484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3807) Unit!7938)

(assert (=> d!61565 (= lt!128612 (choose!41 (_keys!6881 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3804))))

(assert (=> d!61565 (bvslt (size!6261 (_keys!6881 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61565 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6881 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3804) lt!128612)))

(declare-fun b!256069 () Bool)

(assert (=> b!256069 (= e!165996 (arrayNoDuplicates!0 (array!12485 (store (arr!5914 (_keys!6881 thiss!1504)) index!297 key!932) (size!6261 (_keys!6881 thiss!1504))) #b00000000000000000000000000000000 Nil!3804))))

(assert (= (and d!61565 res!125307) b!256069))

(declare-fun m!271561 () Bool)

(assert (=> d!61565 m!271561))

(assert (=> b!256069 m!271287))

(declare-fun m!271563 () Bool)

(assert (=> b!256069 m!271563))

(assert (=> b!255829 d!61565))

(declare-fun b!256080 () Bool)

(declare-fun e!166008 () Bool)

(declare-fun call!24253 () Bool)

(assert (=> b!256080 (= e!166008 call!24253)))

(declare-fun b!256081 () Bool)

(declare-fun e!166007 () Bool)

(assert (=> b!256081 (= e!166007 e!166008)))

(declare-fun c!43260 () Bool)

(assert (=> b!256081 (= c!43260 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(declare-fun bm!24250 () Bool)

(assert (=> bm!24250 (= call!24253 (arrayNoDuplicates!0 lt!128429 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43260 (Cons!3803 (select (arr!5914 lt!128429) #b00000000000000000000000000000000) Nil!3804) Nil!3804)))))

(declare-fun b!256082 () Bool)

(assert (=> b!256082 (= e!166008 call!24253)))

(declare-fun d!61567 () Bool)

(declare-fun res!125314 () Bool)

(declare-fun e!166006 () Bool)

(assert (=> d!61567 (=> res!125314 e!166006)))

(assert (=> d!61567 (= res!125314 (bvsge #b00000000000000000000000000000000 (size!6261 lt!128429)))))

(assert (=> d!61567 (= (arrayNoDuplicates!0 lt!128429 #b00000000000000000000000000000000 Nil!3804) e!166006)))

(declare-fun b!256083 () Bool)

(declare-fun e!166005 () Bool)

(declare-fun contains!1862 (List!3807 (_ BitVec 64)) Bool)

(assert (=> b!256083 (= e!166005 (contains!1862 Nil!3804 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(declare-fun b!256084 () Bool)

(assert (=> b!256084 (= e!166006 e!166007)))

(declare-fun res!125316 () Bool)

(assert (=> b!256084 (=> (not res!125316) (not e!166007))))

(assert (=> b!256084 (= res!125316 (not e!166005))))

(declare-fun res!125315 () Bool)

(assert (=> b!256084 (=> (not res!125315) (not e!166005))))

(assert (=> b!256084 (= res!125315 (validKeyInArray!0 (select (arr!5914 lt!128429) #b00000000000000000000000000000000)))))

(assert (= (and d!61567 (not res!125314)) b!256084))

(assert (= (and b!256084 res!125315) b!256083))

(assert (= (and b!256084 res!125316) b!256081))

(assert (= (and b!256081 c!43260) b!256080))

(assert (= (and b!256081 (not c!43260)) b!256082))

(assert (= (or b!256080 b!256082) bm!24250))

(assert (=> b!256081 m!271461))

(assert (=> b!256081 m!271461))

(assert (=> b!256081 m!271463))

(assert (=> bm!24250 m!271461))

(declare-fun m!271565 () Bool)

(assert (=> bm!24250 m!271565))

(assert (=> b!256083 m!271461))

(assert (=> b!256083 m!271461))

(declare-fun m!271567 () Bool)

(assert (=> b!256083 m!271567))

(assert (=> b!256084 m!271461))

(assert (=> b!256084 m!271461))

(assert (=> b!256084 m!271463))

(assert (=> b!255829 d!61567))

(declare-fun b!256101 () Bool)

(declare-fun e!166020 () Bool)

(declare-fun lt!128617 () SeekEntryResult!1170)

(assert (=> b!256101 (= e!166020 ((_ is Undefined!1170) lt!128617))))

(declare-fun b!256102 () Bool)

(declare-fun e!166017 () Bool)

(assert (=> b!256102 (= e!166017 e!166020)))

(declare-fun c!43266 () Bool)

(assert (=> b!256102 (= c!43266 ((_ is MissingVacant!1170) lt!128617))))

(declare-fun b!256103 () Bool)

(declare-fun e!166019 () Bool)

(declare-fun call!24258 () Bool)

(assert (=> b!256103 (= e!166019 (not call!24258))))

(declare-fun d!61569 () Bool)

(assert (=> d!61569 e!166017))

(declare-fun c!43265 () Bool)

(assert (=> d!61569 (= c!43265 ((_ is MissingZero!1170) lt!128617))))

(assert (=> d!61569 (= lt!128617 (seekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(declare-fun lt!128618 () Unit!7938)

(declare-fun choose!1234 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) Int) Unit!7938)

(assert (=> d!61569 (= lt!128618 (choose!1234 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)))))

(assert (=> d!61569 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61569 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!427 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 (defaultEntry!4721 thiss!1504)) lt!128618)))

(declare-fun b!256104 () Bool)

(assert (=> b!256104 (and (bvsge (index!6850 lt!128617) #b00000000000000000000000000000000) (bvslt (index!6850 lt!128617) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun res!125328 () Bool)

(assert (=> b!256104 (= res!125328 (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6850 lt!128617)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166018 () Bool)

(assert (=> b!256104 (=> (not res!125328) (not e!166018))))

(declare-fun b!256105 () Bool)

(declare-fun res!125326 () Bool)

(assert (=> b!256105 (=> (not res!125326) (not e!166019))))

(declare-fun call!24259 () Bool)

(assert (=> b!256105 (= res!125326 call!24259)))

(assert (=> b!256105 (= e!166020 e!166019)))

(declare-fun b!256106 () Bool)

(declare-fun res!125325 () Bool)

(assert (=> b!256106 (=> (not res!125325) (not e!166019))))

(assert (=> b!256106 (= res!125325 (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6853 lt!128617)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256106 (and (bvsge (index!6853 lt!128617) #b00000000000000000000000000000000) (bvslt (index!6853 lt!128617) (size!6261 (_keys!6881 thiss!1504))))))

(declare-fun bm!24255 () Bool)

(assert (=> bm!24255 (= call!24259 (inRange!0 (ite c!43265 (index!6850 lt!128617) (index!6853 lt!128617)) (mask!10987 thiss!1504)))))

(declare-fun b!256107 () Bool)

(assert (=> b!256107 (= e!166017 e!166018)))

(declare-fun res!125327 () Bool)

(assert (=> b!256107 (= res!125327 call!24259)))

(assert (=> b!256107 (=> (not res!125327) (not e!166018))))

(declare-fun b!256108 () Bool)

(assert (=> b!256108 (= e!166018 (not call!24258))))

(declare-fun bm!24256 () Bool)

(assert (=> bm!24256 (= call!24258 (arrayContainsKey!0 (_keys!6881 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!61569 c!43265) b!256107))

(assert (= (and d!61569 (not c!43265)) b!256102))

(assert (= (and b!256107 res!125327) b!256104))

(assert (= (and b!256104 res!125328) b!256108))

(assert (= (and b!256102 c!43266) b!256105))

(assert (= (and b!256102 (not c!43266)) b!256101))

(assert (= (and b!256105 res!125326) b!256106))

(assert (= (and b!256106 res!125325) b!256103))

(assert (= (or b!256107 b!256105) bm!24255))

(assert (= (or b!256108 b!256103) bm!24256))

(assert (=> d!61569 m!271321))

(declare-fun m!271569 () Bool)

(assert (=> d!61569 m!271569))

(assert (=> d!61569 m!271447))

(declare-fun m!271571 () Bool)

(assert (=> b!256106 m!271571))

(assert (=> bm!24256 m!271295))

(declare-fun m!271573 () Bool)

(assert (=> bm!24255 m!271573))

(declare-fun m!271575 () Bool)

(assert (=> b!256104 m!271575))

(assert (=> b!255843 d!61569))

(declare-fun d!61571 () Bool)

(assert (=> d!61571 (= (inRange!0 (ite c!43207 (index!6850 lt!128431) (index!6853 lt!128431)) (mask!10987 thiss!1504)) (and (bvsge (ite c!43207 (index!6850 lt!128431) (index!6853 lt!128431)) #b00000000000000000000000000000000) (bvslt (ite c!43207 (index!6850 lt!128431) (index!6853 lt!128431)) (bvadd (mask!10987 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24205 d!61571))

(declare-fun b!256121 () Bool)

(declare-fun e!166029 () SeekEntryResult!1170)

(declare-fun lt!128627 () SeekEntryResult!1170)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12484 (_ BitVec 32)) SeekEntryResult!1170)

(assert (=> b!256121 (= e!166029 (seekKeyOrZeroReturnVacant!0 (x!24948 lt!128627) (index!6852 lt!128627) (index!6852 lt!128627) key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(declare-fun b!256122 () Bool)

(assert (=> b!256122 (= e!166029 (MissingZero!1170 (index!6852 lt!128627)))))

(declare-fun b!256123 () Bool)

(declare-fun c!43275 () Bool)

(declare-fun lt!128626 () (_ BitVec 64))

(assert (=> b!256123 (= c!43275 (= lt!128626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166028 () SeekEntryResult!1170)

(assert (=> b!256123 (= e!166028 e!166029)))

(declare-fun d!61573 () Bool)

(declare-fun lt!128625 () SeekEntryResult!1170)

(assert (=> d!61573 (and (or ((_ is Undefined!1170) lt!128625) (not ((_ is Found!1170) lt!128625)) (and (bvsge (index!6851 lt!128625) #b00000000000000000000000000000000) (bvslt (index!6851 lt!128625) (size!6261 (_keys!6881 thiss!1504))))) (or ((_ is Undefined!1170) lt!128625) ((_ is Found!1170) lt!128625) (not ((_ is MissingZero!1170) lt!128625)) (and (bvsge (index!6850 lt!128625) #b00000000000000000000000000000000) (bvslt (index!6850 lt!128625) (size!6261 (_keys!6881 thiss!1504))))) (or ((_ is Undefined!1170) lt!128625) ((_ is Found!1170) lt!128625) ((_ is MissingZero!1170) lt!128625) (not ((_ is MissingVacant!1170) lt!128625)) (and (bvsge (index!6853 lt!128625) #b00000000000000000000000000000000) (bvslt (index!6853 lt!128625) (size!6261 (_keys!6881 thiss!1504))))) (or ((_ is Undefined!1170) lt!128625) (ite ((_ is Found!1170) lt!128625) (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6851 lt!128625)) key!932) (ite ((_ is MissingZero!1170) lt!128625) (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6850 lt!128625)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1170) lt!128625) (= (select (arr!5914 (_keys!6881 thiss!1504)) (index!6853 lt!128625)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!166027 () SeekEntryResult!1170)

(assert (=> d!61573 (= lt!128625 e!166027)))

(declare-fun c!43273 () Bool)

(assert (=> d!61573 (= c!43273 (and ((_ is Intermediate!1170) lt!128627) (undefined!1982 lt!128627)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12484 (_ BitVec 32)) SeekEntryResult!1170)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61573 (= lt!128627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10987 thiss!1504)) key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(assert (=> d!61573 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61573 (= (seekEntryOrOpen!0 key!932 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)) lt!128625)))

(declare-fun b!256124 () Bool)

(assert (=> b!256124 (= e!166027 Undefined!1170)))

(declare-fun b!256125 () Bool)

(assert (=> b!256125 (= e!166027 e!166028)))

(assert (=> b!256125 (= lt!128626 (select (arr!5914 (_keys!6881 thiss!1504)) (index!6852 lt!128627)))))

(declare-fun c!43274 () Bool)

(assert (=> b!256125 (= c!43274 (= lt!128626 key!932))))

(declare-fun b!256126 () Bool)

(assert (=> b!256126 (= e!166028 (Found!1170 (index!6852 lt!128627)))))

(assert (= (and d!61573 c!43273) b!256124))

(assert (= (and d!61573 (not c!43273)) b!256125))

(assert (= (and b!256125 c!43274) b!256126))

(assert (= (and b!256125 (not c!43274)) b!256123))

(assert (= (and b!256123 c!43275) b!256122))

(assert (= (and b!256123 (not c!43275)) b!256121))

(declare-fun m!271577 () Bool)

(assert (=> b!256121 m!271577))

(assert (=> d!61573 m!271447))

(declare-fun m!271579 () Bool)

(assert (=> d!61573 m!271579))

(declare-fun m!271581 () Bool)

(assert (=> d!61573 m!271581))

(assert (=> d!61573 m!271579))

(declare-fun m!271583 () Bool)

(assert (=> d!61573 m!271583))

(declare-fun m!271585 () Bool)

(assert (=> d!61573 m!271585))

(declare-fun m!271587 () Bool)

(assert (=> d!61573 m!271587))

(declare-fun m!271589 () Bool)

(assert (=> b!256125 m!271589))

(assert (=> b!255832 d!61573))

(declare-fun d!61575 () Bool)

(assert (=> d!61575 (contains!1860 (getCurrentListMap!1453 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)) key!932)))

(declare-fun lt!128630 () Unit!7938)

(declare-fun choose!1235 (array!12484 array!12482 (_ BitVec 32) (_ BitVec 32) V!8411 V!8411 (_ BitVec 64) (_ BitVec 32) Int) Unit!7938)

(assert (=> d!61575 (= lt!128630 (choose!1235 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)))))

(assert (=> d!61575 (validMask!0 (mask!10987 thiss!1504))))

(assert (=> d!61575 (= (lemmaArrayContainsKeyThenInListMap!232 (_keys!6881 thiss!1504) (_values!4704 thiss!1504) (mask!10987 thiss!1504) (extraKeys!4458 thiss!1504) (zeroValue!4562 thiss!1504) (minValue!4562 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4721 thiss!1504)) lt!128630)))

(declare-fun bs!9068 () Bool)

(assert (= bs!9068 d!61575))

(assert (=> bs!9068 m!271319))

(assert (=> bs!9068 m!271319))

(declare-fun m!271591 () Bool)

(assert (=> bs!9068 m!271591))

(declare-fun m!271593 () Bool)

(assert (=> bs!9068 m!271593))

(assert (=> bs!9068 m!271447))

(assert (=> b!255838 d!61575))

(declare-fun d!61577 () Bool)

(declare-fun res!125335 () Bool)

(declare-fun e!166032 () Bool)

(assert (=> d!61577 (=> (not res!125335) (not e!166032))))

(declare-fun simpleValid!272 (LongMapFixedSize!3786) Bool)

(assert (=> d!61577 (= res!125335 (simpleValid!272 thiss!1504))))

(assert (=> d!61577 (= (valid!1472 thiss!1504) e!166032)))

(declare-fun b!256133 () Bool)

(declare-fun res!125336 () Bool)

(assert (=> b!256133 (=> (not res!125336) (not e!166032))))

(assert (=> b!256133 (= res!125336 (= (arrayCountValidKeys!0 (_keys!6881 thiss!1504) #b00000000000000000000000000000000 (size!6261 (_keys!6881 thiss!1504))) (_size!1942 thiss!1504)))))

(declare-fun b!256134 () Bool)

(declare-fun res!125337 () Bool)

(assert (=> b!256134 (=> (not res!125337) (not e!166032))))

(assert (=> b!256134 (= res!125337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6881 thiss!1504) (mask!10987 thiss!1504)))))

(declare-fun b!256135 () Bool)

(assert (=> b!256135 (= e!166032 (arrayNoDuplicates!0 (_keys!6881 thiss!1504) #b00000000000000000000000000000000 Nil!3804))))

(assert (= (and d!61577 res!125335) b!256133))

(assert (= (and b!256133 res!125336) b!256134))

(assert (= (and b!256134 res!125337) b!256135))

(declare-fun m!271595 () Bool)

(assert (=> d!61577 m!271595))

(assert (=> b!256133 m!271289))

(declare-fun m!271597 () Bool)

(assert (=> b!256134 m!271597))

(declare-fun m!271599 () Bool)

(assert (=> b!256135 m!271599))

(assert (=> start!24436 d!61577))

(declare-fun d!61579 () Bool)

(assert (=> d!61579 (= (array_inv!3901 (_keys!6881 thiss!1504)) (bvsge (size!6261 (_keys!6881 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255841 d!61579))

(declare-fun d!61581 () Bool)

(assert (=> d!61581 (= (array_inv!3902 (_values!4704 thiss!1504)) (bvsge (size!6260 (_values!4704 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255841 d!61581))

(declare-fun condMapEmpty!11190 () Bool)

(declare-fun mapDefault!11190 () ValueCell!2943)

(assert (=> mapNonEmpty!11184 (= condMapEmpty!11190 (= mapRest!11184 ((as const (Array (_ BitVec 32) ValueCell!2943)) mapDefault!11190)))))

(declare-fun e!166037 () Bool)

(declare-fun mapRes!11190 () Bool)

(assert (=> mapNonEmpty!11184 (= tp!23429 (and e!166037 mapRes!11190))))

(declare-fun mapIsEmpty!11190 () Bool)

(assert (=> mapIsEmpty!11190 mapRes!11190))

(declare-fun mapNonEmpty!11190 () Bool)

(declare-fun tp!23439 () Bool)

(declare-fun e!166038 () Bool)

(assert (=> mapNonEmpty!11190 (= mapRes!11190 (and tp!23439 e!166038))))

(declare-fun mapValue!11190 () ValueCell!2943)

(declare-fun mapRest!11190 () (Array (_ BitVec 32) ValueCell!2943))

(declare-fun mapKey!11190 () (_ BitVec 32))

(assert (=> mapNonEmpty!11190 (= mapRest!11184 (store mapRest!11190 mapKey!11190 mapValue!11190))))

(declare-fun b!256143 () Bool)

(assert (=> b!256143 (= e!166037 tp_is_empty!6573)))

(declare-fun b!256142 () Bool)

(assert (=> b!256142 (= e!166038 tp_is_empty!6573)))

(assert (= (and mapNonEmpty!11184 condMapEmpty!11190) mapIsEmpty!11190))

(assert (= (and mapNonEmpty!11184 (not condMapEmpty!11190)) mapNonEmpty!11190))

(assert (= (and mapNonEmpty!11190 ((_ is ValueCellFull!2943) mapValue!11190)) b!256142))

(assert (= (and mapNonEmpty!11184 ((_ is ValueCellFull!2943) mapDefault!11190)) b!256143))

(declare-fun m!271601 () Bool)

(assert (=> mapNonEmpty!11190 m!271601))

(declare-fun b_lambda!8189 () Bool)

(assert (= b_lambda!8185 (or (and b!255841 b_free!6711) b_lambda!8189)))

(declare-fun b_lambda!8191 () Bool)

(assert (= b_lambda!8187 (or (and b!255841 b_free!6711) b_lambda!8191)))

(check-sat (not bm!24237) (not b!256034) (not bm!24240) (not d!61575) (not b!256029) (not b!256049) (not b!256015) (not b!256038) (not bm!24233) (not bm!24229) (not b!256066) (not mapNonEmpty!11190) (not d!61559) (not b!255920) (not b!255972) (not bm!24236) (not d!61573) (not bm!24255) (not d!61551) (not b!256135) (not b!256133) (not b_next!6711) (not d!61555) (not b!255974) (not bm!24247) (not b!256081) (not d!61545) (not b!256039) tp_is_empty!6573 (not bm!24238) (not bm!24227) (not d!61565) (not b!256002) (not b!256030) (not b!255968) (not b!256063) (not b!255984) (not b!256050) (not b!256083) (not bm!24232) (not b!256134) (not bm!24250) (not d!61577) (not d!61563) (not b!255992) (not bm!24244) (not b_lambda!8191) (not bm!24256) (not b!256032) (not b!256018) (not b!255966) (not b!255976) (not b!255913) (not d!61569) (not b!256024) (not b!255922) (not b!256017) (not d!61547) (not b!255983) (not b!256069) (not b!256084) (not d!61543) (not b!256121) (not d!61557) (not b_lambda!8189) (not b!256042) (not b!256040) (not b!255973) (not b!256061) (not bm!24243) b_and!13789 (not b!256014))
(check-sat b_and!13789 (not b_next!6711))
