; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24348 () Bool)

(assert start!24348)

(declare-fun b!255011 () Bool)

(declare-fun b_free!6699 () Bool)

(declare-fun b_next!6699 () Bool)

(assert (=> b!255011 (= b_free!6699 (not b_next!6699))))

(declare-fun tp!23387 () Bool)

(declare-fun b_and!13763 () Bool)

(assert (=> b!255011 (= tp!23387 b_and!13763)))

(declare-fun b!254996 () Bool)

(declare-fun res!124821 () Bool)

(declare-datatypes ((V!8395 0))(
  ( (V!8396 (val!3325 Int)) )
))
(declare-datatypes ((ValueCell!2937 0))(
  ( (ValueCellFull!2937 (v!5398 V!8395)) (EmptyCell!2937) )
))
(declare-datatypes ((array!12454 0))(
  ( (array!12455 (arr!5901 (Array (_ BitVec 32) ValueCell!2937)) (size!6248 (_ BitVec 32))) )
))
(declare-datatypes ((array!12456 0))(
  ( (array!12457 (arr!5902 (Array (_ BitVec 32) (_ BitVec 64))) (size!6249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3774 0))(
  ( (LongMapFixedSize!3775 (defaultEntry!4705 Int) (mask!10959 (_ BitVec 32)) (extraKeys!4442 (_ BitVec 32)) (zeroValue!4546 V!8395) (minValue!4546 V!8395) (_size!1936 (_ BitVec 32)) (_keys!6861 array!12456) (_values!4688 array!12454) (_vacant!1936 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3774)

(declare-datatypes ((SeekEntryResult!1165 0))(
  ( (MissingZero!1165 (index!6830 (_ BitVec 32))) (Found!1165 (index!6831 (_ BitVec 32))) (Intermediate!1165 (undefined!1977 Bool) (index!6832 (_ BitVec 32)) (x!24907 (_ BitVec 32))) (Undefined!1165) (MissingVacant!1165 (index!6833 (_ BitVec 32))) )
))
(declare-fun lt!127895 () SeekEntryResult!1165)

(assert (=> b!254996 (= res!124821 (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6833 lt!127895)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165307 () Bool)

(assert (=> b!254996 (=> (not res!124821) (not e!165307))))

(declare-fun b!254997 () Bool)

(declare-datatypes ((Unit!7911 0))(
  ( (Unit!7912) )
))
(declare-fun e!165304 () Unit!7911)

(declare-fun lt!127893 () Unit!7911)

(assert (=> b!254997 (= e!165304 lt!127893)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!423 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) Int) Unit!7911)

(assert (=> b!254997 (= lt!127893 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!423 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)))))

(declare-fun c!43020 () Bool)

(get-info :version)

(assert (=> b!254997 (= c!43020 ((_ is MissingZero!1165) lt!127895))))

(declare-fun e!165310 () Bool)

(assert (=> b!254997 e!165310))

(declare-fun b!254998 () Bool)

(declare-fun res!124820 () Bool)

(declare-fun e!165301 () Bool)

(assert (=> b!254998 (=> (not res!124820) (not e!165301))))

(assert (=> b!254998 (= res!124820 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!124822 () Bool)

(assert (=> start!24348 (=> (not res!124822) (not e!165301))))

(declare-fun valid!1467 (LongMapFixedSize!3774) Bool)

(assert (=> start!24348 (= res!124822 (valid!1467 thiss!1504))))

(assert (=> start!24348 e!165301))

(declare-fun e!165305 () Bool)

(assert (=> start!24348 e!165305))

(assert (=> start!24348 true))

(declare-fun tp_is_empty!6561 () Bool)

(assert (=> start!24348 tp_is_empty!6561))

(declare-fun mapIsEmpty!11160 () Bool)

(declare-fun mapRes!11160 () Bool)

(assert (=> mapIsEmpty!11160 mapRes!11160))

(declare-fun b!254999 () Bool)

(declare-fun e!165300 () Bool)

(assert (=> b!254999 (= e!165300 ((_ is Undefined!1165) lt!127895))))

(declare-fun b!255000 () Bool)

(assert (=> b!255000 (= e!165300 e!165307)))

(declare-fun res!124824 () Bool)

(declare-fun call!24084 () Bool)

(assert (=> b!255000 (= res!124824 call!24084)))

(assert (=> b!255000 (=> (not res!124824) (not e!165307))))

(declare-fun b!255001 () Bool)

(declare-fun e!165302 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!255001 (= e!165302 (not (bvsge index!297 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4892 0))(
  ( (tuple2!4893 (_1!2456 (_ BitVec 64)) (_2!2456 V!8395)) )
))
(declare-datatypes ((List!3797 0))(
  ( (Nil!3794) (Cons!3793 (h!4455 tuple2!4892) (t!8854 List!3797)) )
))
(declare-datatypes ((ListLongMap!3819 0))(
  ( (ListLongMap!3820 (toList!1925 List!3797)) )
))
(declare-fun lt!127890 () ListLongMap!3819)

(declare-fun v!346 () V!8395)

(declare-fun lt!127891 () array!12456)

(declare-fun +!671 (ListLongMap!3819 tuple2!4892) ListLongMap!3819)

(declare-fun getCurrentListMap!1448 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 32) Int) ListLongMap!3819)

(assert (=> b!255001 (= (+!671 lt!127890 (tuple2!4893 key!932 v!346)) (getCurrentListMap!1448 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!127889 () Unit!7911)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!86 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 32) (_ BitVec 64) V!8395 Int) Unit!7911)

(assert (=> b!255001 (= lt!127889 (lemmaAddValidKeyToArrayThenAddPairToListMap!86 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) index!297 key!932 v!346 (defaultEntry!4705 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12456 (_ BitVec 32)) Bool)

(assert (=> b!255001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127891 (mask!10959 thiss!1504))))

(declare-fun lt!127884 () Unit!7911)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12456 (_ BitVec 32) (_ BitVec 32)) Unit!7911)

(assert (=> b!255001 (= lt!127884 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) index!297 (mask!10959 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12456 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!255001 (= (arrayCountValidKeys!0 lt!127891 #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6861 thiss!1504) #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504)))))))

(declare-fun lt!127894 () Unit!7911)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12456 (_ BitVec 32) (_ BitVec 64)) Unit!7911)

(assert (=> b!255001 (= lt!127894 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6861 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3798 0))(
  ( (Nil!3795) (Cons!3794 (h!4456 (_ BitVec 64)) (t!8855 List!3798)) )
))
(declare-fun arrayNoDuplicates!0 (array!12456 (_ BitVec 32) List!3798) Bool)

(assert (=> b!255001 (arrayNoDuplicates!0 lt!127891 #b00000000000000000000000000000000 Nil!3795)))

(assert (=> b!255001 (= lt!127891 (array!12457 (store (arr!5902 (_keys!6861 thiss!1504)) index!297 key!932) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun lt!127888 () Unit!7911)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12456 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3798) Unit!7911)

(assert (=> b!255001 (= lt!127888 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6861 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3795))))

(declare-fun lt!127885 () Unit!7911)

(declare-fun e!165308 () Unit!7911)

(assert (=> b!255001 (= lt!127885 e!165308)))

(declare-fun c!43023 () Bool)

(declare-fun arrayContainsKey!0 (array!12456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!255001 (= c!43023 (arrayContainsKey!0 (_keys!6861 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255002 () Bool)

(declare-fun e!165311 () Bool)

(assert (=> b!255002 (= e!165311 tp_is_empty!6561)))

(declare-fun b!255003 () Bool)

(declare-fun e!165303 () Bool)

(declare-fun call!24085 () Bool)

(assert (=> b!255003 (= e!165303 (not call!24085))))

(declare-fun b!255004 () Bool)

(declare-fun e!165299 () Bool)

(assert (=> b!255004 (= e!165299 e!165302)))

(declare-fun res!124825 () Bool)

(assert (=> b!255004 (=> (not res!124825) (not e!165302))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!255004 (= res!124825 (inRange!0 index!297 (mask!10959 thiss!1504)))))

(declare-fun lt!127892 () Unit!7911)

(assert (=> b!255004 (= lt!127892 e!165304)))

(declare-fun c!43021 () Bool)

(declare-fun contains!1851 (ListLongMap!3819 (_ BitVec 64)) Bool)

(assert (=> b!255004 (= c!43021 (contains!1851 lt!127890 key!932))))

(assert (=> b!255004 (= lt!127890 (getCurrentListMap!1448 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun b!255005 () Bool)

(declare-fun res!124826 () Bool)

(assert (=> b!255005 (=> (not res!124826) (not e!165303))))

(assert (=> b!255005 (= res!124826 (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6830 lt!127895)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255006 () Bool)

(assert (=> b!255006 (= e!165301 e!165299)))

(declare-fun res!124823 () Bool)

(assert (=> b!255006 (=> (not res!124823) (not e!165299))))

(assert (=> b!255006 (= res!124823 (or (= lt!127895 (MissingZero!1165 index!297)) (= lt!127895 (MissingVacant!1165 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12456 (_ BitVec 32)) SeekEntryResult!1165)

(assert (=> b!255006 (= lt!127895 (seekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun b!255007 () Bool)

(declare-fun Unit!7913 () Unit!7911)

(assert (=> b!255007 (= e!165308 Unit!7913)))

(declare-fun b!255008 () Bool)

(declare-fun Unit!7914 () Unit!7911)

(assert (=> b!255008 (= e!165308 Unit!7914)))

(declare-fun lt!127886 () Unit!7911)

(declare-fun lemmaArrayContainsKeyThenInListMap!228 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) (_ BitVec 32) Int) Unit!7911)

(assert (=> b!255008 (= lt!127886 (lemmaArrayContainsKeyThenInListMap!228 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(assert (=> b!255008 false))

(declare-fun b!255009 () Bool)

(declare-fun e!165312 () Bool)

(declare-fun e!165309 () Bool)

(assert (=> b!255009 (= e!165312 (and e!165309 mapRes!11160))))

(declare-fun condMapEmpty!11160 () Bool)

(declare-fun mapDefault!11160 () ValueCell!2937)

(assert (=> b!255009 (= condMapEmpty!11160 (= (arr!5901 (_values!4688 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2937)) mapDefault!11160)))))

(declare-fun b!255010 () Bool)

(declare-fun c!43022 () Bool)

(assert (=> b!255010 (= c!43022 ((_ is MissingVacant!1165) lt!127895))))

(assert (=> b!255010 (= e!165310 e!165300)))

(declare-fun bm!24081 () Bool)

(assert (=> bm!24081 (= call!24084 (inRange!0 (ite c!43020 (index!6830 lt!127895) (index!6833 lt!127895)) (mask!10959 thiss!1504)))))

(declare-fun bm!24082 () Bool)

(assert (=> bm!24082 (= call!24085 (arrayContainsKey!0 (_keys!6861 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3893 (array!12456) Bool)

(declare-fun array_inv!3894 (array!12454) Bool)

(assert (=> b!255011 (= e!165305 (and tp!23387 tp_is_empty!6561 (array_inv!3893 (_keys!6861 thiss!1504)) (array_inv!3894 (_values!4688 thiss!1504)) e!165312))))

(declare-fun b!255012 () Bool)

(declare-fun res!124827 () Bool)

(assert (=> b!255012 (=> (not res!124827) (not e!165303))))

(assert (=> b!255012 (= res!124827 call!24084)))

(assert (=> b!255012 (= e!165310 e!165303)))

(declare-fun mapNonEmpty!11160 () Bool)

(declare-fun tp!23388 () Bool)

(assert (=> mapNonEmpty!11160 (= mapRes!11160 (and tp!23388 e!165311))))

(declare-fun mapRest!11160 () (Array (_ BitVec 32) ValueCell!2937))

(declare-fun mapValue!11160 () ValueCell!2937)

(declare-fun mapKey!11160 () (_ BitVec 32))

(assert (=> mapNonEmpty!11160 (= (arr!5901 (_values!4688 thiss!1504)) (store mapRest!11160 mapKey!11160 mapValue!11160))))

(declare-fun b!255013 () Bool)

(assert (=> b!255013 (= e!165309 tp_is_empty!6561)))

(declare-fun b!255014 () Bool)

(declare-fun Unit!7915 () Unit!7911)

(assert (=> b!255014 (= e!165304 Unit!7915)))

(declare-fun lt!127887 () Unit!7911)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!423 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) Int) Unit!7911)

(assert (=> b!255014 (= lt!127887 (lemmaInListMapThenSeekEntryOrOpenFindsIt!423 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)))))

(assert (=> b!255014 false))

(declare-fun b!255015 () Bool)

(assert (=> b!255015 (= e!165307 (not call!24085))))

(assert (= (and start!24348 res!124822) b!254998))

(assert (= (and b!254998 res!124820) b!255006))

(assert (= (and b!255006 res!124823) b!255004))

(assert (= (and b!255004 c!43021) b!255014))

(assert (= (and b!255004 (not c!43021)) b!254997))

(assert (= (and b!254997 c!43020) b!255012))

(assert (= (and b!254997 (not c!43020)) b!255010))

(assert (= (and b!255012 res!124827) b!255005))

(assert (= (and b!255005 res!124826) b!255003))

(assert (= (and b!255010 c!43022) b!255000))

(assert (= (and b!255010 (not c!43022)) b!254999))

(assert (= (and b!255000 res!124824) b!254996))

(assert (= (and b!254996 res!124821) b!255015))

(assert (= (or b!255012 b!255000) bm!24081))

(assert (= (or b!255003 b!255015) bm!24082))

(assert (= (and b!255004 res!124825) b!255001))

(assert (= (and b!255001 c!43023) b!255008))

(assert (= (and b!255001 (not c!43023)) b!255007))

(assert (= (and b!255009 condMapEmpty!11160) mapIsEmpty!11160))

(assert (= (and b!255009 (not condMapEmpty!11160)) mapNonEmpty!11160))

(assert (= (and mapNonEmpty!11160 ((_ is ValueCellFull!2937) mapValue!11160)) b!255002))

(assert (= (and b!255009 ((_ is ValueCellFull!2937) mapDefault!11160)) b!255013))

(assert (= b!255011 b!255009))

(assert (= start!24348 b!255011))

(declare-fun m!270517 () Bool)

(assert (=> bm!24081 m!270517))

(declare-fun m!270519 () Bool)

(assert (=> mapNonEmpty!11160 m!270519))

(declare-fun m!270521 () Bool)

(assert (=> b!255006 m!270521))

(declare-fun m!270523 () Bool)

(assert (=> start!24348 m!270523))

(declare-fun m!270525 () Bool)

(assert (=> b!255011 m!270525))

(declare-fun m!270527 () Bool)

(assert (=> b!255011 m!270527))

(declare-fun m!270529 () Bool)

(assert (=> b!254997 m!270529))

(declare-fun m!270531 () Bool)

(assert (=> b!255008 m!270531))

(declare-fun m!270533 () Bool)

(assert (=> b!255014 m!270533))

(declare-fun m!270535 () Bool)

(assert (=> b!254996 m!270535))

(declare-fun m!270537 () Bool)

(assert (=> bm!24082 m!270537))

(declare-fun m!270539 () Bool)

(assert (=> b!255005 m!270539))

(declare-fun m!270541 () Bool)

(assert (=> b!255004 m!270541))

(declare-fun m!270543 () Bool)

(assert (=> b!255004 m!270543))

(declare-fun m!270545 () Bool)

(assert (=> b!255004 m!270545))

(assert (=> b!255001 m!270537))

(declare-fun m!270547 () Bool)

(assert (=> b!255001 m!270547))

(declare-fun m!270549 () Bool)

(assert (=> b!255001 m!270549))

(declare-fun m!270551 () Bool)

(assert (=> b!255001 m!270551))

(declare-fun m!270553 () Bool)

(assert (=> b!255001 m!270553))

(declare-fun m!270555 () Bool)

(assert (=> b!255001 m!270555))

(declare-fun m!270557 () Bool)

(assert (=> b!255001 m!270557))

(declare-fun m!270559 () Bool)

(assert (=> b!255001 m!270559))

(declare-fun m!270561 () Bool)

(assert (=> b!255001 m!270561))

(declare-fun m!270563 () Bool)

(assert (=> b!255001 m!270563))

(declare-fun m!270565 () Bool)

(assert (=> b!255001 m!270565))

(declare-fun m!270567 () Bool)

(assert (=> b!255001 m!270567))

(declare-fun m!270569 () Bool)

(assert (=> b!255001 m!270569))

(check-sat b_and!13763 (not b!255011) (not b!255001) (not b_next!6699) (not b!255014) (not bm!24081) tp_is_empty!6561 (not b!255008) (not mapNonEmpty!11160) (not bm!24082) (not b!254997) (not b!255004) (not b!255006) (not start!24348))
(check-sat b_and!13763 (not b_next!6699))
(get-model)

(declare-fun d!61447 () Bool)

(assert (=> d!61447 (= (inRange!0 (ite c!43020 (index!6830 lt!127895) (index!6833 lt!127895)) (mask!10959 thiss!1504)) (and (bvsge (ite c!43020 (index!6830 lt!127895) (index!6833 lt!127895)) #b00000000000000000000000000000000) (bvslt (ite c!43020 (index!6830 lt!127895) (index!6833 lt!127895)) (bvadd (mask!10959 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24081 d!61447))

(declare-fun lt!127940 () SeekEntryResult!1165)

(declare-fun e!165362 () SeekEntryResult!1165)

(declare-fun b!255088 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12456 (_ BitVec 32)) SeekEntryResult!1165)

(assert (=> b!255088 (= e!165362 (seekKeyOrZeroReturnVacant!0 (x!24907 lt!127940) (index!6832 lt!127940) (index!6832 lt!127940) key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun b!255089 () Bool)

(declare-fun e!165363 () SeekEntryResult!1165)

(assert (=> b!255089 (= e!165363 (Found!1165 (index!6832 lt!127940)))))

(declare-fun d!61449 () Bool)

(declare-fun lt!127938 () SeekEntryResult!1165)

(assert (=> d!61449 (and (or ((_ is Undefined!1165) lt!127938) (not ((_ is Found!1165) lt!127938)) (and (bvsge (index!6831 lt!127938) #b00000000000000000000000000000000) (bvslt (index!6831 lt!127938) (size!6249 (_keys!6861 thiss!1504))))) (or ((_ is Undefined!1165) lt!127938) ((_ is Found!1165) lt!127938) (not ((_ is MissingZero!1165) lt!127938)) (and (bvsge (index!6830 lt!127938) #b00000000000000000000000000000000) (bvslt (index!6830 lt!127938) (size!6249 (_keys!6861 thiss!1504))))) (or ((_ is Undefined!1165) lt!127938) ((_ is Found!1165) lt!127938) ((_ is MissingZero!1165) lt!127938) (not ((_ is MissingVacant!1165) lt!127938)) (and (bvsge (index!6833 lt!127938) #b00000000000000000000000000000000) (bvslt (index!6833 lt!127938) (size!6249 (_keys!6861 thiss!1504))))) (or ((_ is Undefined!1165) lt!127938) (ite ((_ is Found!1165) lt!127938) (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6831 lt!127938)) key!932) (ite ((_ is MissingZero!1165) lt!127938) (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6830 lt!127938)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1165) lt!127938) (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6833 lt!127938)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!165361 () SeekEntryResult!1165)

(assert (=> d!61449 (= lt!127938 e!165361)))

(declare-fun c!43042 () Bool)

(assert (=> d!61449 (= c!43042 (and ((_ is Intermediate!1165) lt!127940) (undefined!1977 lt!127940)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12456 (_ BitVec 32)) SeekEntryResult!1165)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61449 (= lt!127940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10959 thiss!1504)) key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61449 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61449 (= (seekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)) lt!127938)))

(declare-fun b!255090 () Bool)

(assert (=> b!255090 (= e!165362 (MissingZero!1165 (index!6832 lt!127940)))))

(declare-fun b!255091 () Bool)

(assert (=> b!255091 (= e!165361 Undefined!1165)))

(declare-fun b!255092 () Bool)

(assert (=> b!255092 (= e!165361 e!165363)))

(declare-fun lt!127939 () (_ BitVec 64))

(assert (=> b!255092 (= lt!127939 (select (arr!5902 (_keys!6861 thiss!1504)) (index!6832 lt!127940)))))

(declare-fun c!43044 () Bool)

(assert (=> b!255092 (= c!43044 (= lt!127939 key!932))))

(declare-fun b!255093 () Bool)

(declare-fun c!43043 () Bool)

(assert (=> b!255093 (= c!43043 (= lt!127939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!255093 (= e!165363 e!165362)))

(assert (= (and d!61449 c!43042) b!255091))

(assert (= (and d!61449 (not c!43042)) b!255092))

(assert (= (and b!255092 c!43044) b!255089))

(assert (= (and b!255092 (not c!43044)) b!255093))

(assert (= (and b!255093 c!43043) b!255090))

(assert (= (and b!255093 (not c!43043)) b!255088))

(declare-fun m!270625 () Bool)

(assert (=> b!255088 m!270625))

(declare-fun m!270627 () Bool)

(assert (=> d!61449 m!270627))

(declare-fun m!270629 () Bool)

(assert (=> d!61449 m!270629))

(declare-fun m!270631 () Bool)

(assert (=> d!61449 m!270631))

(declare-fun m!270633 () Bool)

(assert (=> d!61449 m!270633))

(assert (=> d!61449 m!270633))

(declare-fun m!270635 () Bool)

(assert (=> d!61449 m!270635))

(declare-fun m!270637 () Bool)

(assert (=> d!61449 m!270637))

(declare-fun m!270639 () Bool)

(assert (=> b!255092 m!270639))

(assert (=> b!255006 d!61449))

(declare-fun d!61451 () Bool)

(assert (=> d!61451 (= (inRange!0 index!297 (mask!10959 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10959 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!255004 d!61451))

(declare-fun d!61453 () Bool)

(declare-fun e!165369 () Bool)

(assert (=> d!61453 e!165369))

(declare-fun res!124854 () Bool)

(assert (=> d!61453 (=> res!124854 e!165369)))

(declare-fun lt!127949 () Bool)

(assert (=> d!61453 (= res!124854 (not lt!127949))))

(declare-fun lt!127952 () Bool)

(assert (=> d!61453 (= lt!127949 lt!127952)))

(declare-fun lt!127951 () Unit!7911)

(declare-fun e!165368 () Unit!7911)

(assert (=> d!61453 (= lt!127951 e!165368)))

(declare-fun c!43047 () Bool)

(assert (=> d!61453 (= c!43047 lt!127952)))

(declare-fun containsKey!297 (List!3797 (_ BitVec 64)) Bool)

(assert (=> d!61453 (= lt!127952 (containsKey!297 (toList!1925 lt!127890) key!932))))

(assert (=> d!61453 (= (contains!1851 lt!127890 key!932) lt!127949)))

(declare-fun b!255100 () Bool)

(declare-fun lt!127950 () Unit!7911)

(assert (=> b!255100 (= e!165368 lt!127950)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!246 (List!3797 (_ BitVec 64)) Unit!7911)

(assert (=> b!255100 (= lt!127950 (lemmaContainsKeyImpliesGetValueByKeyDefined!246 (toList!1925 lt!127890) key!932))))

(declare-datatypes ((Option!311 0))(
  ( (Some!310 (v!5402 V!8395)) (None!309) )
))
(declare-fun isDefined!247 (Option!311) Bool)

(declare-fun getValueByKey!305 (List!3797 (_ BitVec 64)) Option!311)

(assert (=> b!255100 (isDefined!247 (getValueByKey!305 (toList!1925 lt!127890) key!932))))

(declare-fun b!255101 () Bool)

(declare-fun Unit!7919 () Unit!7911)

(assert (=> b!255101 (= e!165368 Unit!7919)))

(declare-fun b!255102 () Bool)

(assert (=> b!255102 (= e!165369 (isDefined!247 (getValueByKey!305 (toList!1925 lt!127890) key!932)))))

(assert (= (and d!61453 c!43047) b!255100))

(assert (= (and d!61453 (not c!43047)) b!255101))

(assert (= (and d!61453 (not res!124854)) b!255102))

(declare-fun m!270641 () Bool)

(assert (=> d!61453 m!270641))

(declare-fun m!270643 () Bool)

(assert (=> b!255100 m!270643))

(declare-fun m!270645 () Bool)

(assert (=> b!255100 m!270645))

(assert (=> b!255100 m!270645))

(declare-fun m!270647 () Bool)

(assert (=> b!255100 m!270647))

(assert (=> b!255102 m!270645))

(assert (=> b!255102 m!270645))

(assert (=> b!255102 m!270647))

(assert (=> b!255004 d!61453))

(declare-fun bm!24103 () Bool)

(declare-fun call!24109 () ListLongMap!3819)

(declare-fun call!24107 () ListLongMap!3819)

(assert (=> bm!24103 (= call!24109 call!24107)))

(declare-fun b!255145 () Bool)

(declare-fun e!165396 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!255145 (= e!165396 (validKeyInArray!0 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!255146 () Bool)

(declare-fun e!165397 () ListLongMap!3819)

(declare-fun call!24106 () ListLongMap!3819)

(assert (=> b!255146 (= e!165397 call!24106)))

(declare-fun b!255147 () Bool)

(declare-fun e!165404 () Bool)

(assert (=> b!255147 (= e!165404 (validKeyInArray!0 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24104 () Bool)

(declare-fun call!24108 () Bool)

(declare-fun lt!128018 () ListLongMap!3819)

(assert (=> bm!24104 (= call!24108 (contains!1851 lt!128018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24105 () Bool)

(declare-fun call!24110 () ListLongMap!3819)

(assert (=> bm!24105 (= call!24107 call!24110)))

(declare-fun b!255148 () Bool)

(declare-fun c!43065 () Bool)

(assert (=> b!255148 (= c!43065 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!165408 () ListLongMap!3819)

(assert (=> b!255148 (= e!165397 e!165408)))

(declare-fun b!255149 () Bool)

(declare-fun e!165401 () ListLongMap!3819)

(assert (=> b!255149 (= e!165401 e!165397)))

(declare-fun c!43062 () Bool)

(assert (=> b!255149 (= c!43062 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!255150 () Bool)

(declare-fun e!165405 () Bool)

(declare-fun apply!248 (ListLongMap!3819 (_ BitVec 64)) V!8395)

(assert (=> b!255150 (= e!165405 (= (apply!248 lt!128018 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4546 thiss!1504)))))

(declare-fun b!255151 () Bool)

(declare-fun e!165402 () Bool)

(declare-fun get!3036 (ValueCell!2937 V!8395) V!8395)

(declare-fun dynLambda!586 (Int (_ BitVec 64)) V!8395)

(assert (=> b!255151 (= e!165402 (= (apply!248 lt!128018 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)) (get!3036 (select (arr!5901 (_values!4688 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!586 (defaultEntry!4705 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!255151 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6248 (_values!4688 thiss!1504))))))

(assert (=> b!255151 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255152 () Bool)

(declare-fun e!165398 () Bool)

(assert (=> b!255152 (= e!165398 (= (apply!248 lt!128018 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4546 thiss!1504)))))

(declare-fun b!255153 () Bool)

(declare-fun e!165407 () Bool)

(assert (=> b!255153 (= e!165407 (not call!24108))))

(declare-fun b!255155 () Bool)

(assert (=> b!255155 (= e!165407 e!165405)))

(declare-fun res!124879 () Bool)

(assert (=> b!255155 (= res!124879 call!24108)))

(assert (=> b!255155 (=> (not res!124879) (not e!165405))))

(declare-fun b!255156 () Bool)

(declare-fun e!165400 () Bool)

(declare-fun e!165403 () Bool)

(assert (=> b!255156 (= e!165400 e!165403)))

(declare-fun c!43060 () Bool)

(assert (=> b!255156 (= c!43060 (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!24106 () Bool)

(declare-fun call!24111 () ListLongMap!3819)

(assert (=> bm!24106 (= call!24106 call!24111)))

(declare-fun b!255157 () Bool)

(declare-fun res!124880 () Bool)

(assert (=> b!255157 (=> (not res!124880) (not e!165400))))

(assert (=> b!255157 (= res!124880 e!165407)))

(declare-fun c!43061 () Bool)

(assert (=> b!255157 (= c!43061 (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!255158 () Bool)

(assert (=> b!255158 (= e!165403 e!165398)))

(declare-fun res!124873 () Bool)

(declare-fun call!24112 () Bool)

(assert (=> b!255158 (= res!124873 call!24112)))

(assert (=> b!255158 (=> (not res!124873) (not e!165398))))

(declare-fun b!255159 () Bool)

(declare-fun e!165406 () Unit!7911)

(declare-fun lt!127999 () Unit!7911)

(assert (=> b!255159 (= e!165406 lt!127999)))

(declare-fun lt!128002 () ListLongMap!3819)

(declare-fun getCurrentListMapNoExtraKeys!567 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 32) Int) ListLongMap!3819)

(assert (=> b!255159 (= lt!128002 (getCurrentListMapNoExtraKeys!567 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128009 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128009 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127997 () (_ BitVec 64))

(assert (=> b!255159 (= lt!127997 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128001 () Unit!7911)

(declare-fun addStillContains!224 (ListLongMap!3819 (_ BitVec 64) V!8395 (_ BitVec 64)) Unit!7911)

(assert (=> b!255159 (= lt!128001 (addStillContains!224 lt!128002 lt!128009 (zeroValue!4546 thiss!1504) lt!127997))))

(assert (=> b!255159 (contains!1851 (+!671 lt!128002 (tuple2!4893 lt!128009 (zeroValue!4546 thiss!1504))) lt!127997)))

(declare-fun lt!128015 () Unit!7911)

(assert (=> b!255159 (= lt!128015 lt!128001)))

(declare-fun lt!128012 () ListLongMap!3819)

(assert (=> b!255159 (= lt!128012 (getCurrentListMapNoExtraKeys!567 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128005 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128005 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128013 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128013 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128010 () Unit!7911)

(declare-fun addApplyDifferent!224 (ListLongMap!3819 (_ BitVec 64) V!8395 (_ BitVec 64)) Unit!7911)

(assert (=> b!255159 (= lt!128010 (addApplyDifferent!224 lt!128012 lt!128005 (minValue!4546 thiss!1504) lt!128013))))

(assert (=> b!255159 (= (apply!248 (+!671 lt!128012 (tuple2!4893 lt!128005 (minValue!4546 thiss!1504))) lt!128013) (apply!248 lt!128012 lt!128013))))

(declare-fun lt!128006 () Unit!7911)

(assert (=> b!255159 (= lt!128006 lt!128010)))

(declare-fun lt!128007 () ListLongMap!3819)

(assert (=> b!255159 (= lt!128007 (getCurrentListMapNoExtraKeys!567 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128003 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128003 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128008 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128008 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128017 () Unit!7911)

(assert (=> b!255159 (= lt!128017 (addApplyDifferent!224 lt!128007 lt!128003 (zeroValue!4546 thiss!1504) lt!128008))))

(assert (=> b!255159 (= (apply!248 (+!671 lt!128007 (tuple2!4893 lt!128003 (zeroValue!4546 thiss!1504))) lt!128008) (apply!248 lt!128007 lt!128008))))

(declare-fun lt!128014 () Unit!7911)

(assert (=> b!255159 (= lt!128014 lt!128017)))

(declare-fun lt!128000 () ListLongMap!3819)

(assert (=> b!255159 (= lt!128000 (getCurrentListMapNoExtraKeys!567 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!127998 () (_ BitVec 64))

(assert (=> b!255159 (= lt!127998 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128011 () (_ BitVec 64))

(assert (=> b!255159 (= lt!128011 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255159 (= lt!127999 (addApplyDifferent!224 lt!128000 lt!127998 (minValue!4546 thiss!1504) lt!128011))))

(assert (=> b!255159 (= (apply!248 (+!671 lt!128000 (tuple2!4893 lt!127998 (minValue!4546 thiss!1504))) lt!128011) (apply!248 lt!128000 lt!128011))))

(declare-fun bm!24107 () Bool)

(declare-fun c!43063 () Bool)

(assert (=> bm!24107 (= call!24111 (+!671 (ite c!43063 call!24110 (ite c!43062 call!24107 call!24109)) (ite (or c!43063 c!43062) (tuple2!4893 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4546 thiss!1504)) (tuple2!4893 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4546 thiss!1504)))))))

(declare-fun b!255160 () Bool)

(assert (=> b!255160 (= e!165408 call!24106)))

(declare-fun bm!24108 () Bool)

(assert (=> bm!24108 (= call!24112 (contains!1851 lt!128018 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255161 () Bool)

(declare-fun e!165399 () Bool)

(assert (=> b!255161 (= e!165399 e!165402)))

(declare-fun res!124875 () Bool)

(assert (=> b!255161 (=> (not res!124875) (not e!165402))))

(assert (=> b!255161 (= res!124875 (contains!1851 lt!128018 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!255161 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun bm!24109 () Bool)

(assert (=> bm!24109 (= call!24110 (getCurrentListMapNoExtraKeys!567 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun b!255162 () Bool)

(assert (=> b!255162 (= e!165401 (+!671 call!24111 (tuple2!4893 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4546 thiss!1504))))))

(declare-fun b!255163 () Bool)

(assert (=> b!255163 (= e!165403 (not call!24112))))

(declare-fun b!255164 () Bool)

(declare-fun res!124874 () Bool)

(assert (=> b!255164 (=> (not res!124874) (not e!165400))))

(assert (=> b!255164 (= res!124874 e!165399)))

(declare-fun res!124876 () Bool)

(assert (=> b!255164 (=> res!124876 e!165399)))

(assert (=> b!255164 (= res!124876 (not e!165396))))

(declare-fun res!124877 () Bool)

(assert (=> b!255164 (=> (not res!124877) (not e!165396))))

(assert (=> b!255164 (= res!124877 (bvslt #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255165 () Bool)

(declare-fun Unit!7920 () Unit!7911)

(assert (=> b!255165 (= e!165406 Unit!7920)))

(declare-fun d!61455 () Bool)

(assert (=> d!61455 e!165400))

(declare-fun res!124878 () Bool)

(assert (=> d!61455 (=> (not res!124878) (not e!165400))))

(assert (=> d!61455 (= res!124878 (or (bvsge #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))))

(declare-fun lt!128004 () ListLongMap!3819)

(assert (=> d!61455 (= lt!128018 lt!128004)))

(declare-fun lt!128016 () Unit!7911)

(assert (=> d!61455 (= lt!128016 e!165406)))

(declare-fun c!43064 () Bool)

(assert (=> d!61455 (= c!43064 e!165404)))

(declare-fun res!124881 () Bool)

(assert (=> d!61455 (=> (not res!124881) (not e!165404))))

(assert (=> d!61455 (= res!124881 (bvslt #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(assert (=> d!61455 (= lt!128004 e!165401)))

(assert (=> d!61455 (= c!43063 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61455 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61455 (= (getCurrentListMap!1448 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)) lt!128018)))

(declare-fun b!255154 () Bool)

(assert (=> b!255154 (= e!165408 call!24109)))

(assert (= (and d!61455 c!43063) b!255162))

(assert (= (and d!61455 (not c!43063)) b!255149))

(assert (= (and b!255149 c!43062) b!255146))

(assert (= (and b!255149 (not c!43062)) b!255148))

(assert (= (and b!255148 c!43065) b!255160))

(assert (= (and b!255148 (not c!43065)) b!255154))

(assert (= (or b!255160 b!255154) bm!24103))

(assert (= (or b!255146 bm!24103) bm!24105))

(assert (= (or b!255146 b!255160) bm!24106))

(assert (= (or b!255162 bm!24105) bm!24109))

(assert (= (or b!255162 bm!24106) bm!24107))

(assert (= (and d!61455 res!124881) b!255147))

(assert (= (and d!61455 c!43064) b!255159))

(assert (= (and d!61455 (not c!43064)) b!255165))

(assert (= (and d!61455 res!124878) b!255164))

(assert (= (and b!255164 res!124877) b!255145))

(assert (= (and b!255164 (not res!124876)) b!255161))

(assert (= (and b!255161 res!124875) b!255151))

(assert (= (and b!255164 res!124874) b!255157))

(assert (= (and b!255157 c!43061) b!255155))

(assert (= (and b!255157 (not c!43061)) b!255153))

(assert (= (and b!255155 res!124879) b!255150))

(assert (= (or b!255155 b!255153) bm!24104))

(assert (= (and b!255157 res!124880) b!255156))

(assert (= (and b!255156 c!43060) b!255158))

(assert (= (and b!255156 (not c!43060)) b!255163))

(assert (= (and b!255158 res!124873) b!255152))

(assert (= (or b!255158 b!255163) bm!24108))

(declare-fun b_lambda!8169 () Bool)

(assert (=> (not b_lambda!8169) (not b!255151)))

(declare-fun t!8858 () Bool)

(declare-fun tb!3017 () Bool)

(assert (=> (and b!255011 (= (defaultEntry!4705 thiss!1504) (defaultEntry!4705 thiss!1504)) t!8858) tb!3017))

(declare-fun result!5357 () Bool)

(assert (=> tb!3017 (= result!5357 tp_is_empty!6561)))

(assert (=> b!255151 t!8858))

(declare-fun b_and!13767 () Bool)

(assert (= b_and!13763 (and (=> t!8858 result!5357) b_and!13767)))

(declare-fun m!270649 () Bool)

(assert (=> b!255151 m!270649))

(declare-fun m!270651 () Bool)

(assert (=> b!255151 m!270651))

(declare-fun m!270653 () Bool)

(assert (=> b!255151 m!270653))

(declare-fun m!270655 () Bool)

(assert (=> b!255151 m!270655))

(assert (=> b!255151 m!270649))

(assert (=> b!255151 m!270653))

(assert (=> b!255151 m!270655))

(declare-fun m!270657 () Bool)

(assert (=> b!255151 m!270657))

(declare-fun m!270659 () Bool)

(assert (=> b!255150 m!270659))

(declare-fun m!270661 () Bool)

(assert (=> b!255162 m!270661))

(declare-fun m!270663 () Bool)

(assert (=> bm!24107 m!270663))

(assert (=> b!255147 m!270649))

(assert (=> b!255147 m!270649))

(declare-fun m!270665 () Bool)

(assert (=> b!255147 m!270665))

(declare-fun m!270667 () Bool)

(assert (=> b!255152 m!270667))

(assert (=> d!61455 m!270631))

(declare-fun m!270669 () Bool)

(assert (=> bm!24104 m!270669))

(assert (=> b!255145 m!270649))

(assert (=> b!255145 m!270649))

(assert (=> b!255145 m!270665))

(declare-fun m!270671 () Bool)

(assert (=> bm!24109 m!270671))

(declare-fun m!270673 () Bool)

(assert (=> bm!24108 m!270673))

(assert (=> b!255161 m!270649))

(assert (=> b!255161 m!270649))

(declare-fun m!270675 () Bool)

(assert (=> b!255161 m!270675))

(declare-fun m!270677 () Bool)

(assert (=> b!255159 m!270677))

(declare-fun m!270679 () Bool)

(assert (=> b!255159 m!270679))

(declare-fun m!270681 () Bool)

(assert (=> b!255159 m!270681))

(declare-fun m!270683 () Bool)

(assert (=> b!255159 m!270683))

(declare-fun m!270685 () Bool)

(assert (=> b!255159 m!270685))

(declare-fun m!270687 () Bool)

(assert (=> b!255159 m!270687))

(declare-fun m!270689 () Bool)

(assert (=> b!255159 m!270689))

(assert (=> b!255159 m!270671))

(declare-fun m!270691 () Bool)

(assert (=> b!255159 m!270691))

(declare-fun m!270693 () Bool)

(assert (=> b!255159 m!270693))

(declare-fun m!270695 () Bool)

(assert (=> b!255159 m!270695))

(declare-fun m!270697 () Bool)

(assert (=> b!255159 m!270697))

(assert (=> b!255159 m!270691))

(declare-fun m!270699 () Bool)

(assert (=> b!255159 m!270699))

(declare-fun m!270701 () Bool)

(assert (=> b!255159 m!270701))

(assert (=> b!255159 m!270693))

(declare-fun m!270703 () Bool)

(assert (=> b!255159 m!270703))

(declare-fun m!270705 () Bool)

(assert (=> b!255159 m!270705))

(assert (=> b!255159 m!270649))

(assert (=> b!255159 m!270687))

(assert (=> b!255159 m!270703))

(assert (=> b!255004 d!61455))

(declare-fun d!61457 () Bool)

(assert (=> d!61457 (= (array_inv!3893 (_keys!6861 thiss!1504)) (bvsge (size!6249 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255011 d!61457))

(declare-fun d!61459 () Bool)

(assert (=> d!61459 (= (array_inv!3894 (_values!4688 thiss!1504)) (bvsge (size!6248 (_values!4688 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!255011 d!61459))

(declare-fun d!61461 () Bool)

(assert (=> d!61461 (contains!1851 (getCurrentListMap!1448 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)) key!932)))

(declare-fun lt!128021 () Unit!7911)

(declare-fun choose!1224 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) (_ BitVec 32) Int) Unit!7911)

(assert (=> d!61461 (= lt!128021 (choose!1224 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(assert (=> d!61461 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61461 (= (lemmaArrayContainsKeyThenInListMap!228 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)) lt!128021)))

(declare-fun bs!9060 () Bool)

(assert (= bs!9060 d!61461))

(assert (=> bs!9060 m!270545))

(assert (=> bs!9060 m!270545))

(declare-fun m!270707 () Bool)

(assert (=> bs!9060 m!270707))

(declare-fun m!270709 () Bool)

(assert (=> bs!9060 m!270709))

(assert (=> bs!9060 m!270631))

(assert (=> b!255008 d!61461))

(declare-fun d!61463 () Bool)

(declare-fun res!124888 () Bool)

(declare-fun e!165411 () Bool)

(assert (=> d!61463 (=> (not res!124888) (not e!165411))))

(declare-fun simpleValid!270 (LongMapFixedSize!3774) Bool)

(assert (=> d!61463 (= res!124888 (simpleValid!270 thiss!1504))))

(assert (=> d!61463 (= (valid!1467 thiss!1504) e!165411)))

(declare-fun b!255174 () Bool)

(declare-fun res!124889 () Bool)

(assert (=> b!255174 (=> (not res!124889) (not e!165411))))

(assert (=> b!255174 (= res!124889 (= (arrayCountValidKeys!0 (_keys!6861 thiss!1504) #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (_size!1936 thiss!1504)))))

(declare-fun b!255175 () Bool)

(declare-fun res!124890 () Bool)

(assert (=> b!255175 (=> (not res!124890) (not e!165411))))

(assert (=> b!255175 (= res!124890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun b!255176 () Bool)

(assert (=> b!255176 (= e!165411 (arrayNoDuplicates!0 (_keys!6861 thiss!1504) #b00000000000000000000000000000000 Nil!3795))))

(assert (= (and d!61463 res!124888) b!255174))

(assert (= (and b!255174 res!124889) b!255175))

(assert (= (and b!255175 res!124890) b!255176))

(declare-fun m!270711 () Bool)

(assert (=> d!61463 m!270711))

(assert (=> b!255174 m!270567))

(declare-fun m!270713 () Bool)

(assert (=> b!255175 m!270713))

(declare-fun m!270715 () Bool)

(assert (=> b!255176 m!270715))

(assert (=> start!24348 d!61463))

(declare-fun d!61465 () Bool)

(declare-fun e!165414 () Bool)

(assert (=> d!61465 e!165414))

(declare-fun res!124896 () Bool)

(assert (=> d!61465 (=> (not res!124896) (not e!165414))))

(declare-fun lt!128027 () SeekEntryResult!1165)

(assert (=> d!61465 (= res!124896 ((_ is Found!1165) lt!128027))))

(assert (=> d!61465 (= lt!128027 (seekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun lt!128026 () Unit!7911)

(declare-fun choose!1225 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) Int) Unit!7911)

(assert (=> d!61465 (= lt!128026 (choose!1225 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)))))

(assert (=> d!61465 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61465 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!423 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)) lt!128026)))

(declare-fun b!255181 () Bool)

(declare-fun res!124895 () Bool)

(assert (=> b!255181 (=> (not res!124895) (not e!165414))))

(assert (=> b!255181 (= res!124895 (inRange!0 (index!6831 lt!128027) (mask!10959 thiss!1504)))))

(declare-fun b!255182 () Bool)

(assert (=> b!255182 (= e!165414 (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6831 lt!128027)) key!932))))

(assert (=> b!255182 (and (bvsge (index!6831 lt!128027) #b00000000000000000000000000000000) (bvslt (index!6831 lt!128027) (size!6249 (_keys!6861 thiss!1504))))))

(assert (= (and d!61465 res!124896) b!255181))

(assert (= (and b!255181 res!124895) b!255182))

(assert (=> d!61465 m!270521))

(declare-fun m!270717 () Bool)

(assert (=> d!61465 m!270717))

(assert (=> d!61465 m!270631))

(declare-fun m!270719 () Bool)

(assert (=> b!255181 m!270719))

(declare-fun m!270721 () Bool)

(assert (=> b!255182 m!270721))

(assert (=> b!255014 d!61465))

(declare-fun b!255193 () Bool)

(declare-fun e!165419 () Bool)

(assert (=> b!255193 (= e!165419 (bvslt (size!6249 (_keys!6861 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!255194 () Bool)

(declare-fun e!165420 () Bool)

(assert (=> b!255194 (= e!165420 (= (arrayCountValidKeys!0 (array!12457 (store (arr!5902 (_keys!6861 thiss!1504)) index!297 key!932) (size!6249 (_keys!6861 thiss!1504))) #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6861 thiss!1504) #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!61467 () Bool)

(assert (=> d!61467 e!165420))

(declare-fun res!124907 () Bool)

(assert (=> d!61467 (=> (not res!124907) (not e!165420))))

(assert (=> d!61467 (= res!124907 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6249 (_keys!6861 thiss!1504)))))))

(declare-fun lt!128030 () Unit!7911)

(declare-fun choose!1 (array!12456 (_ BitVec 32) (_ BitVec 64)) Unit!7911)

(assert (=> d!61467 (= lt!128030 (choose!1 (_keys!6861 thiss!1504) index!297 key!932))))

(assert (=> d!61467 e!165419))

(declare-fun res!124908 () Bool)

(assert (=> d!61467 (=> (not res!124908) (not e!165419))))

(assert (=> d!61467 (= res!124908 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6249 (_keys!6861 thiss!1504)))))))

(assert (=> d!61467 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6861 thiss!1504) index!297 key!932) lt!128030)))

(declare-fun b!255192 () Bool)

(declare-fun res!124906 () Bool)

(assert (=> b!255192 (=> (not res!124906) (not e!165419))))

(assert (=> b!255192 (= res!124906 (validKeyInArray!0 key!932))))

(declare-fun b!255191 () Bool)

(declare-fun res!124905 () Bool)

(assert (=> b!255191 (=> (not res!124905) (not e!165419))))

(assert (=> b!255191 (= res!124905 (not (validKeyInArray!0 (select (arr!5902 (_keys!6861 thiss!1504)) index!297))))))

(assert (= (and d!61467 res!124908) b!255191))

(assert (= (and b!255191 res!124905) b!255192))

(assert (= (and b!255192 res!124906) b!255193))

(assert (= (and d!61467 res!124907) b!255194))

(assert (=> b!255194 m!270557))

(declare-fun m!270723 () Bool)

(assert (=> b!255194 m!270723))

(assert (=> b!255194 m!270567))

(declare-fun m!270725 () Bool)

(assert (=> d!61467 m!270725))

(declare-fun m!270727 () Bool)

(assert (=> b!255192 m!270727))

(declare-fun m!270729 () Bool)

(assert (=> b!255191 m!270729))

(assert (=> b!255191 m!270729))

(declare-fun m!270731 () Bool)

(assert (=> b!255191 m!270731))

(assert (=> b!255001 d!61467))

(declare-fun d!61469 () Bool)

(declare-fun e!165423 () Bool)

(assert (=> d!61469 e!165423))

(declare-fun res!124914 () Bool)

(assert (=> d!61469 (=> (not res!124914) (not e!165423))))

(declare-fun lt!128041 () ListLongMap!3819)

(assert (=> d!61469 (= res!124914 (contains!1851 lt!128041 (_1!2456 (tuple2!4893 key!932 v!346))))))

(declare-fun lt!128042 () List!3797)

(assert (=> d!61469 (= lt!128041 (ListLongMap!3820 lt!128042))))

(declare-fun lt!128040 () Unit!7911)

(declare-fun lt!128039 () Unit!7911)

(assert (=> d!61469 (= lt!128040 lt!128039)))

(assert (=> d!61469 (= (getValueByKey!305 lt!128042 (_1!2456 (tuple2!4893 key!932 v!346))) (Some!310 (_2!2456 (tuple2!4893 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!163 (List!3797 (_ BitVec 64) V!8395) Unit!7911)

(assert (=> d!61469 (= lt!128039 (lemmaContainsTupThenGetReturnValue!163 lt!128042 (_1!2456 (tuple2!4893 key!932 v!346)) (_2!2456 (tuple2!4893 key!932 v!346))))))

(declare-fun insertStrictlySorted!165 (List!3797 (_ BitVec 64) V!8395) List!3797)

(assert (=> d!61469 (= lt!128042 (insertStrictlySorted!165 (toList!1925 lt!127890) (_1!2456 (tuple2!4893 key!932 v!346)) (_2!2456 (tuple2!4893 key!932 v!346))))))

(assert (=> d!61469 (= (+!671 lt!127890 (tuple2!4893 key!932 v!346)) lt!128041)))

(declare-fun b!255199 () Bool)

(declare-fun res!124913 () Bool)

(assert (=> b!255199 (=> (not res!124913) (not e!165423))))

(assert (=> b!255199 (= res!124913 (= (getValueByKey!305 (toList!1925 lt!128041) (_1!2456 (tuple2!4893 key!932 v!346))) (Some!310 (_2!2456 (tuple2!4893 key!932 v!346)))))))

(declare-fun b!255200 () Bool)

(declare-fun contains!1853 (List!3797 tuple2!4892) Bool)

(assert (=> b!255200 (= e!165423 (contains!1853 (toList!1925 lt!128041) (tuple2!4893 key!932 v!346)))))

(assert (= (and d!61469 res!124914) b!255199))

(assert (= (and b!255199 res!124913) b!255200))

(declare-fun m!270733 () Bool)

(assert (=> d!61469 m!270733))

(declare-fun m!270735 () Bool)

(assert (=> d!61469 m!270735))

(declare-fun m!270737 () Bool)

(assert (=> d!61469 m!270737))

(declare-fun m!270739 () Bool)

(assert (=> d!61469 m!270739))

(declare-fun m!270741 () Bool)

(assert (=> b!255199 m!270741))

(declare-fun m!270743 () Bool)

(assert (=> b!255200 m!270743))

(assert (=> b!255001 d!61469))

(declare-fun d!61471 () Bool)

(declare-fun res!124919 () Bool)

(declare-fun e!165431 () Bool)

(assert (=> d!61471 (=> res!124919 e!165431)))

(assert (=> d!61471 (= res!124919 (bvsge #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(assert (=> d!61471 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127891 (mask!10959 thiss!1504)) e!165431)))

(declare-fun b!255209 () Bool)

(declare-fun e!165430 () Bool)

(assert (=> b!255209 (= e!165431 e!165430)))

(declare-fun c!43068 () Bool)

(assert (=> b!255209 (= c!43068 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun bm!24112 () Bool)

(declare-fun call!24115 () Bool)

(assert (=> bm!24112 (= call!24115 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!127891 (mask!10959 thiss!1504)))))

(declare-fun b!255210 () Bool)

(declare-fun e!165432 () Bool)

(assert (=> b!255210 (= e!165430 e!165432)))

(declare-fun lt!128049 () (_ BitVec 64))

(assert (=> b!255210 (= lt!128049 (select (arr!5902 lt!127891) #b00000000000000000000000000000000))))

(declare-fun lt!128051 () Unit!7911)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12456 (_ BitVec 64) (_ BitVec 32)) Unit!7911)

(assert (=> b!255210 (= lt!128051 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!127891 lt!128049 #b00000000000000000000000000000000))))

(assert (=> b!255210 (arrayContainsKey!0 lt!127891 lt!128049 #b00000000000000000000000000000000)))

(declare-fun lt!128050 () Unit!7911)

(assert (=> b!255210 (= lt!128050 lt!128051)))

(declare-fun res!124920 () Bool)

(assert (=> b!255210 (= res!124920 (= (seekEntryOrOpen!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000) lt!127891 (mask!10959 thiss!1504)) (Found!1165 #b00000000000000000000000000000000)))))

(assert (=> b!255210 (=> (not res!124920) (not e!165432))))

(declare-fun b!255211 () Bool)

(assert (=> b!255211 (= e!165432 call!24115)))

(declare-fun b!255212 () Bool)

(assert (=> b!255212 (= e!165430 call!24115)))

(assert (= (and d!61471 (not res!124919)) b!255209))

(assert (= (and b!255209 c!43068) b!255210))

(assert (= (and b!255209 (not c!43068)) b!255212))

(assert (= (and b!255210 res!124920) b!255211))

(assert (= (or b!255211 b!255212) bm!24112))

(declare-fun m!270745 () Bool)

(assert (=> b!255209 m!270745))

(assert (=> b!255209 m!270745))

(declare-fun m!270747 () Bool)

(assert (=> b!255209 m!270747))

(declare-fun m!270749 () Bool)

(assert (=> bm!24112 m!270749))

(assert (=> b!255210 m!270745))

(declare-fun m!270751 () Bool)

(assert (=> b!255210 m!270751))

(declare-fun m!270753 () Bool)

(assert (=> b!255210 m!270753))

(assert (=> b!255210 m!270745))

(declare-fun m!270755 () Bool)

(assert (=> b!255210 m!270755))

(assert (=> b!255001 d!61471))

(declare-fun bm!24115 () Bool)

(declare-fun call!24118 () (_ BitVec 32))

(assert (=> bm!24115 (= call!24118 (arrayCountValidKeys!0 (_keys!6861 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255221 () Bool)

(declare-fun e!165438 () (_ BitVec 32))

(assert (=> b!255221 (= e!165438 call!24118)))

(declare-fun b!255222 () Bool)

(assert (=> b!255222 (= e!165438 (bvadd #b00000000000000000000000000000001 call!24118))))

(declare-fun d!61473 () Bool)

(declare-fun lt!128054 () (_ BitVec 32))

(assert (=> d!61473 (and (bvsge lt!128054 #b00000000000000000000000000000000) (bvsle lt!128054 (bvsub (size!6249 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!165437 () (_ BitVec 32))

(assert (=> d!61473 (= lt!128054 e!165437)))

(declare-fun c!43073 () Bool)

(assert (=> d!61473 (= c!43073 (bvsge #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(assert (=> d!61473 (and (bvsle #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6249 (_keys!6861 thiss!1504)) (size!6249 (_keys!6861 thiss!1504))))))

(assert (=> d!61473 (= (arrayCountValidKeys!0 (_keys!6861 thiss!1504) #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) lt!128054)))

(declare-fun b!255223 () Bool)

(assert (=> b!255223 (= e!165437 #b00000000000000000000000000000000)))

(declare-fun b!255224 () Bool)

(assert (=> b!255224 (= e!165437 e!165438)))

(declare-fun c!43074 () Bool)

(assert (=> b!255224 (= c!43074 (validKeyInArray!0 (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61473 c!43073) b!255223))

(assert (= (and d!61473 (not c!43073)) b!255224))

(assert (= (and b!255224 c!43074) b!255222))

(assert (= (and b!255224 (not c!43074)) b!255221))

(assert (= (or b!255222 b!255221) bm!24115))

(declare-fun m!270757 () Bool)

(assert (=> bm!24115 m!270757))

(assert (=> b!255224 m!270649))

(assert (=> b!255224 m!270649))

(assert (=> b!255224 m!270665))

(assert (=> b!255001 d!61473))

(declare-fun d!61475 () Bool)

(declare-fun e!165441 () Bool)

(assert (=> d!61475 e!165441))

(declare-fun res!124923 () Bool)

(assert (=> d!61475 (=> (not res!124923) (not e!165441))))

(assert (=> d!61475 (= res!124923 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6249 (_keys!6861 thiss!1504))) (bvslt index!297 (size!6248 (_values!4688 thiss!1504)))))))

(declare-fun lt!128057 () Unit!7911)

(declare-fun choose!1226 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 32) (_ BitVec 64) V!8395 Int) Unit!7911)

(assert (=> d!61475 (= lt!128057 (choose!1226 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) index!297 key!932 v!346 (defaultEntry!4705 thiss!1504)))))

(assert (=> d!61475 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61475 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!86 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) index!297 key!932 v!346 (defaultEntry!4705 thiss!1504)) lt!128057)))

(declare-fun b!255227 () Bool)

(assert (=> b!255227 (= e!165441 (= (+!671 (getCurrentListMap!1448 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)) (tuple2!4893 key!932 v!346)) (getCurrentListMap!1448 (array!12457 (store (arr!5902 (_keys!6861 thiss!1504)) index!297 key!932) (size!6249 (_keys!6861 thiss!1504))) (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504))))))

(assert (= (and d!61475 res!124923) b!255227))

(declare-fun m!270759 () Bool)

(assert (=> d!61475 m!270759))

(assert (=> d!61475 m!270631))

(assert (=> b!255227 m!270557))

(declare-fun m!270761 () Bool)

(assert (=> b!255227 m!270761))

(assert (=> b!255227 m!270565))

(assert (=> b!255227 m!270545))

(declare-fun m!270763 () Bool)

(assert (=> b!255227 m!270763))

(assert (=> b!255227 m!270545))

(assert (=> b!255001 d!61475))

(declare-fun bm!24116 () Bool)

(declare-fun call!24119 () (_ BitVec 32))

(assert (=> bm!24116 (= call!24119 (arrayCountValidKeys!0 lt!127891 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255228 () Bool)

(declare-fun e!165443 () (_ BitVec 32))

(assert (=> b!255228 (= e!165443 call!24119)))

(declare-fun b!255229 () Bool)

(assert (=> b!255229 (= e!165443 (bvadd #b00000000000000000000000000000001 call!24119))))

(declare-fun d!61477 () Bool)

(declare-fun lt!128058 () (_ BitVec 32))

(assert (=> d!61477 (and (bvsge lt!128058 #b00000000000000000000000000000000) (bvsle lt!128058 (bvsub (size!6249 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun e!165442 () (_ BitVec 32))

(assert (=> d!61477 (= lt!128058 e!165442)))

(declare-fun c!43075 () Bool)

(assert (=> d!61477 (= c!43075 (bvsge #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))))))

(assert (=> d!61477 (and (bvsle #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6249 (_keys!6861 thiss!1504)) (size!6249 lt!127891)))))

(assert (=> d!61477 (= (arrayCountValidKeys!0 lt!127891 #b00000000000000000000000000000000 (size!6249 (_keys!6861 thiss!1504))) lt!128058)))

(declare-fun b!255230 () Bool)

(assert (=> b!255230 (= e!165442 #b00000000000000000000000000000000)))

(declare-fun b!255231 () Bool)

(assert (=> b!255231 (= e!165442 e!165443)))

(declare-fun c!43076 () Bool)

(assert (=> b!255231 (= c!43076 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(assert (= (and d!61477 c!43075) b!255230))

(assert (= (and d!61477 (not c!43075)) b!255231))

(assert (= (and b!255231 c!43076) b!255229))

(assert (= (and b!255231 (not c!43076)) b!255228))

(assert (= (or b!255229 b!255228) bm!24116))

(declare-fun m!270765 () Bool)

(assert (=> bm!24116 m!270765))

(assert (=> b!255231 m!270745))

(assert (=> b!255231 m!270745))

(assert (=> b!255231 m!270747))

(assert (=> b!255001 d!61477))

(declare-fun bm!24117 () Bool)

(declare-fun call!24123 () ListLongMap!3819)

(declare-fun call!24121 () ListLongMap!3819)

(assert (=> bm!24117 (= call!24123 call!24121)))

(declare-fun b!255232 () Bool)

(declare-fun e!165444 () Bool)

(assert (=> b!255232 (= e!165444 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun b!255233 () Bool)

(declare-fun e!165445 () ListLongMap!3819)

(declare-fun call!24120 () ListLongMap!3819)

(assert (=> b!255233 (= e!165445 call!24120)))

(declare-fun b!255234 () Bool)

(declare-fun e!165452 () Bool)

(assert (=> b!255234 (= e!165452 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun bm!24118 () Bool)

(declare-fun call!24122 () Bool)

(declare-fun lt!128080 () ListLongMap!3819)

(assert (=> bm!24118 (= call!24122 (contains!1851 lt!128080 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24119 () Bool)

(declare-fun call!24124 () ListLongMap!3819)

(assert (=> bm!24119 (= call!24121 call!24124)))

(declare-fun b!255235 () Bool)

(declare-fun c!43082 () Bool)

(assert (=> b!255235 (= c!43082 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!165456 () ListLongMap!3819)

(assert (=> b!255235 (= e!165445 e!165456)))

(declare-fun b!255236 () Bool)

(declare-fun e!165449 () ListLongMap!3819)

(assert (=> b!255236 (= e!165449 e!165445)))

(declare-fun c!43079 () Bool)

(assert (=> b!255236 (= c!43079 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!255237 () Bool)

(declare-fun e!165453 () Bool)

(assert (=> b!255237 (= e!165453 (= (apply!248 lt!128080 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4546 thiss!1504)))))

(declare-fun e!165450 () Bool)

(declare-fun b!255238 () Bool)

(assert (=> b!255238 (= e!165450 (= (apply!248 lt!128080 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)) (get!3036 (select (arr!5901 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!586 (defaultEntry!4705 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!255238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6248 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))))))))

(assert (=> b!255238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(declare-fun b!255239 () Bool)

(declare-fun e!165446 () Bool)

(assert (=> b!255239 (= e!165446 (= (apply!248 lt!128080 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4546 thiss!1504)))))

(declare-fun b!255240 () Bool)

(declare-fun e!165455 () Bool)

(assert (=> b!255240 (= e!165455 (not call!24122))))

(declare-fun b!255242 () Bool)

(assert (=> b!255242 (= e!165455 e!165453)))

(declare-fun res!124930 () Bool)

(assert (=> b!255242 (= res!124930 call!24122)))

(assert (=> b!255242 (=> (not res!124930) (not e!165453))))

(declare-fun b!255243 () Bool)

(declare-fun e!165448 () Bool)

(declare-fun e!165451 () Bool)

(assert (=> b!255243 (= e!165448 e!165451)))

(declare-fun c!43077 () Bool)

(assert (=> b!255243 (= c!43077 (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!24120 () Bool)

(declare-fun call!24125 () ListLongMap!3819)

(assert (=> bm!24120 (= call!24120 call!24125)))

(declare-fun b!255244 () Bool)

(declare-fun res!124931 () Bool)

(assert (=> b!255244 (=> (not res!124931) (not e!165448))))

(assert (=> b!255244 (= res!124931 e!165455)))

(declare-fun c!43078 () Bool)

(assert (=> b!255244 (= c!43078 (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!255245 () Bool)

(assert (=> b!255245 (= e!165451 e!165446)))

(declare-fun res!124924 () Bool)

(declare-fun call!24126 () Bool)

(assert (=> b!255245 (= res!124924 call!24126)))

(assert (=> b!255245 (=> (not res!124924) (not e!165446))))

(declare-fun b!255246 () Bool)

(declare-fun e!165454 () Unit!7911)

(declare-fun lt!128061 () Unit!7911)

(assert (=> b!255246 (= e!165454 lt!128061)))

(declare-fun lt!128064 () ListLongMap!3819)

(assert (=> b!255246 (= lt!128064 (getCurrentListMapNoExtraKeys!567 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128071 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128071 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128059 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128059 (select (arr!5902 lt!127891) #b00000000000000000000000000000000))))

(declare-fun lt!128063 () Unit!7911)

(assert (=> b!255246 (= lt!128063 (addStillContains!224 lt!128064 lt!128071 (zeroValue!4546 thiss!1504) lt!128059))))

(assert (=> b!255246 (contains!1851 (+!671 lt!128064 (tuple2!4893 lt!128071 (zeroValue!4546 thiss!1504))) lt!128059)))

(declare-fun lt!128077 () Unit!7911)

(assert (=> b!255246 (= lt!128077 lt!128063)))

(declare-fun lt!128074 () ListLongMap!3819)

(assert (=> b!255246 (= lt!128074 (getCurrentListMapNoExtraKeys!567 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128067 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128067 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128075 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128075 (select (arr!5902 lt!127891) #b00000000000000000000000000000000))))

(declare-fun lt!128072 () Unit!7911)

(assert (=> b!255246 (= lt!128072 (addApplyDifferent!224 lt!128074 lt!128067 (minValue!4546 thiss!1504) lt!128075))))

(assert (=> b!255246 (= (apply!248 (+!671 lt!128074 (tuple2!4893 lt!128067 (minValue!4546 thiss!1504))) lt!128075) (apply!248 lt!128074 lt!128075))))

(declare-fun lt!128068 () Unit!7911)

(assert (=> b!255246 (= lt!128068 lt!128072)))

(declare-fun lt!128069 () ListLongMap!3819)

(assert (=> b!255246 (= lt!128069 (getCurrentListMapNoExtraKeys!567 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128065 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128065 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128070 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128070 (select (arr!5902 lt!127891) #b00000000000000000000000000000000))))

(declare-fun lt!128079 () Unit!7911)

(assert (=> b!255246 (= lt!128079 (addApplyDifferent!224 lt!128069 lt!128065 (zeroValue!4546 thiss!1504) lt!128070))))

(assert (=> b!255246 (= (apply!248 (+!671 lt!128069 (tuple2!4893 lt!128065 (zeroValue!4546 thiss!1504))) lt!128070) (apply!248 lt!128069 lt!128070))))

(declare-fun lt!128076 () Unit!7911)

(assert (=> b!255246 (= lt!128076 lt!128079)))

(declare-fun lt!128062 () ListLongMap!3819)

(assert (=> b!255246 (= lt!128062 (getCurrentListMapNoExtraKeys!567 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun lt!128060 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128060 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128073 () (_ BitVec 64))

(assert (=> b!255246 (= lt!128073 (select (arr!5902 lt!127891) #b00000000000000000000000000000000))))

(assert (=> b!255246 (= lt!128061 (addApplyDifferent!224 lt!128062 lt!128060 (minValue!4546 thiss!1504) lt!128073))))

(assert (=> b!255246 (= (apply!248 (+!671 lt!128062 (tuple2!4893 lt!128060 (minValue!4546 thiss!1504))) lt!128073) (apply!248 lt!128062 lt!128073))))

(declare-fun bm!24121 () Bool)

(declare-fun c!43080 () Bool)

(assert (=> bm!24121 (= call!24125 (+!671 (ite c!43080 call!24124 (ite c!43079 call!24121 call!24123)) (ite (or c!43080 c!43079) (tuple2!4893 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4546 thiss!1504)) (tuple2!4893 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4546 thiss!1504)))))))

(declare-fun b!255247 () Bool)

(assert (=> b!255247 (= e!165456 call!24120)))

(declare-fun bm!24122 () Bool)

(assert (=> bm!24122 (= call!24126 (contains!1851 lt!128080 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255248 () Bool)

(declare-fun e!165447 () Bool)

(assert (=> b!255248 (= e!165447 e!165450)))

(declare-fun res!124926 () Bool)

(assert (=> b!255248 (=> (not res!124926) (not e!165450))))

(assert (=> b!255248 (= res!124926 (contains!1851 lt!128080 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(assert (=> b!255248 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(declare-fun bm!24123 () Bool)

(assert (=> bm!24123 (= call!24124 (getCurrentListMapNoExtraKeys!567 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)))))

(declare-fun b!255249 () Bool)

(assert (=> b!255249 (= e!165449 (+!671 call!24125 (tuple2!4893 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4546 thiss!1504))))))

(declare-fun b!255250 () Bool)

(assert (=> b!255250 (= e!165451 (not call!24126))))

(declare-fun b!255251 () Bool)

(declare-fun res!124925 () Bool)

(assert (=> b!255251 (=> (not res!124925) (not e!165448))))

(assert (=> b!255251 (= res!124925 e!165447)))

(declare-fun res!124927 () Bool)

(assert (=> b!255251 (=> res!124927 e!165447)))

(assert (=> b!255251 (= res!124927 (not e!165444))))

(declare-fun res!124928 () Bool)

(assert (=> b!255251 (=> (not res!124928) (not e!165444))))

(assert (=> b!255251 (= res!124928 (bvslt #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(declare-fun b!255252 () Bool)

(declare-fun Unit!7921 () Unit!7911)

(assert (=> b!255252 (= e!165454 Unit!7921)))

(declare-fun d!61479 () Bool)

(assert (=> d!61479 e!165448))

(declare-fun res!124929 () Bool)

(assert (=> d!61479 (=> (not res!124929) (not e!165448))))

(assert (=> d!61479 (= res!124929 (or (bvsge #b00000000000000000000000000000000 (size!6249 lt!127891)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6249 lt!127891)))))))

(declare-fun lt!128066 () ListLongMap!3819)

(assert (=> d!61479 (= lt!128080 lt!128066)))

(declare-fun lt!128078 () Unit!7911)

(assert (=> d!61479 (= lt!128078 e!165454)))

(declare-fun c!43081 () Bool)

(assert (=> d!61479 (= c!43081 e!165452)))

(declare-fun res!124932 () Bool)

(assert (=> d!61479 (=> (not res!124932) (not e!165452))))

(assert (=> d!61479 (= res!124932 (bvslt #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(assert (=> d!61479 (= lt!128066 e!165449)))

(assert (=> d!61479 (= c!43080 (and (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4442 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61479 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61479 (= (getCurrentListMap!1448 lt!127891 (array!12455 (store (arr!5901 (_values!4688 thiss!1504)) index!297 (ValueCellFull!2937 v!346)) (size!6248 (_values!4688 thiss!1504))) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4705 thiss!1504)) lt!128080)))

(declare-fun b!255241 () Bool)

(assert (=> b!255241 (= e!165456 call!24123)))

(assert (= (and d!61479 c!43080) b!255249))

(assert (= (and d!61479 (not c!43080)) b!255236))

(assert (= (and b!255236 c!43079) b!255233))

(assert (= (and b!255236 (not c!43079)) b!255235))

(assert (= (and b!255235 c!43082) b!255247))

(assert (= (and b!255235 (not c!43082)) b!255241))

(assert (= (or b!255247 b!255241) bm!24117))

(assert (= (or b!255233 bm!24117) bm!24119))

(assert (= (or b!255233 b!255247) bm!24120))

(assert (= (or b!255249 bm!24119) bm!24123))

(assert (= (or b!255249 bm!24120) bm!24121))

(assert (= (and d!61479 res!124932) b!255234))

(assert (= (and d!61479 c!43081) b!255246))

(assert (= (and d!61479 (not c!43081)) b!255252))

(assert (= (and d!61479 res!124929) b!255251))

(assert (= (and b!255251 res!124928) b!255232))

(assert (= (and b!255251 (not res!124927)) b!255248))

(assert (= (and b!255248 res!124926) b!255238))

(assert (= (and b!255251 res!124925) b!255244))

(assert (= (and b!255244 c!43078) b!255242))

(assert (= (and b!255244 (not c!43078)) b!255240))

(assert (= (and b!255242 res!124930) b!255237))

(assert (= (or b!255242 b!255240) bm!24118))

(assert (= (and b!255244 res!124931) b!255243))

(assert (= (and b!255243 c!43077) b!255245))

(assert (= (and b!255243 (not c!43077)) b!255250))

(assert (= (and b!255245 res!124924) b!255239))

(assert (= (or b!255245 b!255250) bm!24122))

(declare-fun b_lambda!8171 () Bool)

(assert (=> (not b_lambda!8171) (not b!255238)))

(assert (=> b!255238 t!8858))

(declare-fun b_and!13769 () Bool)

(assert (= b_and!13767 (and (=> t!8858 result!5357) b_and!13769)))

(assert (=> b!255238 m!270745))

(declare-fun m!270767 () Bool)

(assert (=> b!255238 m!270767))

(declare-fun m!270769 () Bool)

(assert (=> b!255238 m!270769))

(assert (=> b!255238 m!270655))

(assert (=> b!255238 m!270745))

(assert (=> b!255238 m!270769))

(assert (=> b!255238 m!270655))

(declare-fun m!270771 () Bool)

(assert (=> b!255238 m!270771))

(declare-fun m!270773 () Bool)

(assert (=> b!255237 m!270773))

(declare-fun m!270775 () Bool)

(assert (=> b!255249 m!270775))

(declare-fun m!270777 () Bool)

(assert (=> bm!24121 m!270777))

(assert (=> b!255234 m!270745))

(assert (=> b!255234 m!270745))

(assert (=> b!255234 m!270747))

(declare-fun m!270779 () Bool)

(assert (=> b!255239 m!270779))

(assert (=> d!61479 m!270631))

(declare-fun m!270781 () Bool)

(assert (=> bm!24118 m!270781))

(assert (=> b!255232 m!270745))

(assert (=> b!255232 m!270745))

(assert (=> b!255232 m!270747))

(declare-fun m!270783 () Bool)

(assert (=> bm!24123 m!270783))

(declare-fun m!270785 () Bool)

(assert (=> bm!24122 m!270785))

(assert (=> b!255248 m!270745))

(assert (=> b!255248 m!270745))

(declare-fun m!270787 () Bool)

(assert (=> b!255248 m!270787))

(declare-fun m!270789 () Bool)

(assert (=> b!255246 m!270789))

(declare-fun m!270791 () Bool)

(assert (=> b!255246 m!270791))

(declare-fun m!270793 () Bool)

(assert (=> b!255246 m!270793))

(declare-fun m!270795 () Bool)

(assert (=> b!255246 m!270795))

(declare-fun m!270797 () Bool)

(assert (=> b!255246 m!270797))

(declare-fun m!270799 () Bool)

(assert (=> b!255246 m!270799))

(declare-fun m!270801 () Bool)

(assert (=> b!255246 m!270801))

(assert (=> b!255246 m!270783))

(declare-fun m!270803 () Bool)

(assert (=> b!255246 m!270803))

(declare-fun m!270805 () Bool)

(assert (=> b!255246 m!270805))

(declare-fun m!270807 () Bool)

(assert (=> b!255246 m!270807))

(declare-fun m!270809 () Bool)

(assert (=> b!255246 m!270809))

(assert (=> b!255246 m!270803))

(declare-fun m!270811 () Bool)

(assert (=> b!255246 m!270811))

(declare-fun m!270813 () Bool)

(assert (=> b!255246 m!270813))

(assert (=> b!255246 m!270805))

(declare-fun m!270815 () Bool)

(assert (=> b!255246 m!270815))

(declare-fun m!270817 () Bool)

(assert (=> b!255246 m!270817))

(assert (=> b!255246 m!270745))

(assert (=> b!255246 m!270799))

(assert (=> b!255246 m!270815))

(assert (=> b!255001 d!61479))

(declare-fun d!61481 () Bool)

(declare-fun e!165459 () Bool)

(assert (=> d!61481 e!165459))

(declare-fun res!124935 () Bool)

(assert (=> d!61481 (=> (not res!124935) (not e!165459))))

(assert (=> d!61481 (= res!124935 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6249 (_keys!6861 thiss!1504)))))))

(declare-fun lt!128083 () Unit!7911)

(declare-fun choose!41 (array!12456 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3798) Unit!7911)

(assert (=> d!61481 (= lt!128083 (choose!41 (_keys!6861 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3795))))

(assert (=> d!61481 (bvslt (size!6249 (_keys!6861 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61481 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6861 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3795) lt!128083)))

(declare-fun b!255255 () Bool)

(assert (=> b!255255 (= e!165459 (arrayNoDuplicates!0 (array!12457 (store (arr!5902 (_keys!6861 thiss!1504)) index!297 key!932) (size!6249 (_keys!6861 thiss!1504))) #b00000000000000000000000000000000 Nil!3795))))

(assert (= (and d!61481 res!124935) b!255255))

(declare-fun m!270819 () Bool)

(assert (=> d!61481 m!270819))

(assert (=> b!255255 m!270557))

(declare-fun m!270821 () Bool)

(assert (=> b!255255 m!270821))

(assert (=> b!255001 d!61481))

(declare-fun b!255266 () Bool)

(declare-fun e!165471 () Bool)

(declare-fun e!165470 () Bool)

(assert (=> b!255266 (= e!165471 e!165470)))

(declare-fun c!43085 () Bool)

(assert (=> b!255266 (= c!43085 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun b!255267 () Bool)

(declare-fun e!165469 () Bool)

(declare-fun contains!1854 (List!3798 (_ BitVec 64)) Bool)

(assert (=> b!255267 (= e!165469 (contains!1854 Nil!3795 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(declare-fun d!61483 () Bool)

(declare-fun res!124943 () Bool)

(declare-fun e!165468 () Bool)

(assert (=> d!61483 (=> res!124943 e!165468)))

(assert (=> d!61483 (= res!124943 (bvsge #b00000000000000000000000000000000 (size!6249 lt!127891)))))

(assert (=> d!61483 (= (arrayNoDuplicates!0 lt!127891 #b00000000000000000000000000000000 Nil!3795) e!165468)))

(declare-fun bm!24126 () Bool)

(declare-fun call!24129 () Bool)

(assert (=> bm!24126 (= call!24129 (arrayNoDuplicates!0 lt!127891 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43085 (Cons!3794 (select (arr!5902 lt!127891) #b00000000000000000000000000000000) Nil!3795) Nil!3795)))))

(declare-fun b!255268 () Bool)

(assert (=> b!255268 (= e!165470 call!24129)))

(declare-fun b!255269 () Bool)

(assert (=> b!255269 (= e!165470 call!24129)))

(declare-fun b!255270 () Bool)

(assert (=> b!255270 (= e!165468 e!165471)))

(declare-fun res!124944 () Bool)

(assert (=> b!255270 (=> (not res!124944) (not e!165471))))

(assert (=> b!255270 (= res!124944 (not e!165469))))

(declare-fun res!124942 () Bool)

(assert (=> b!255270 (=> (not res!124942) (not e!165469))))

(assert (=> b!255270 (= res!124942 (validKeyInArray!0 (select (arr!5902 lt!127891) #b00000000000000000000000000000000)))))

(assert (= (and d!61483 (not res!124943)) b!255270))

(assert (= (and b!255270 res!124942) b!255267))

(assert (= (and b!255270 res!124944) b!255266))

(assert (= (and b!255266 c!43085) b!255269))

(assert (= (and b!255266 (not c!43085)) b!255268))

(assert (= (or b!255269 b!255268) bm!24126))

(assert (=> b!255266 m!270745))

(assert (=> b!255266 m!270745))

(assert (=> b!255266 m!270747))

(assert (=> b!255267 m!270745))

(assert (=> b!255267 m!270745))

(declare-fun m!270823 () Bool)

(assert (=> b!255267 m!270823))

(assert (=> bm!24126 m!270745))

(declare-fun m!270825 () Bool)

(assert (=> bm!24126 m!270825))

(assert (=> b!255270 m!270745))

(assert (=> b!255270 m!270745))

(assert (=> b!255270 m!270747))

(assert (=> b!255001 d!61483))

(declare-fun d!61485 () Bool)

(declare-fun res!124949 () Bool)

(declare-fun e!165476 () Bool)

(assert (=> d!61485 (=> res!124949 e!165476)))

(assert (=> d!61485 (= res!124949 (= (select (arr!5902 (_keys!6861 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61485 (= (arrayContainsKey!0 (_keys!6861 thiss!1504) key!932 #b00000000000000000000000000000000) e!165476)))

(declare-fun b!255275 () Bool)

(declare-fun e!165477 () Bool)

(assert (=> b!255275 (= e!165476 e!165477)))

(declare-fun res!124950 () Bool)

(assert (=> b!255275 (=> (not res!124950) (not e!165477))))

(assert (=> b!255275 (= res!124950 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255276 () Bool)

(assert (=> b!255276 (= e!165477 (arrayContainsKey!0 (_keys!6861 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61485 (not res!124949)) b!255275))

(assert (= (and b!255275 res!124950) b!255276))

(assert (=> d!61485 m!270649))

(declare-fun m!270827 () Bool)

(assert (=> b!255276 m!270827))

(assert (=> b!255001 d!61485))

(declare-fun d!61487 () Bool)

(declare-fun e!165480 () Bool)

(assert (=> d!61487 e!165480))

(declare-fun res!124953 () Bool)

(assert (=> d!61487 (=> (not res!124953) (not e!165480))))

(assert (=> d!61487 (= res!124953 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6249 (_keys!6861 thiss!1504)))))))

(declare-fun lt!128086 () Unit!7911)

(declare-fun choose!102 ((_ BitVec 64) array!12456 (_ BitVec 32) (_ BitVec 32)) Unit!7911)

(assert (=> d!61487 (= lt!128086 (choose!102 key!932 (_keys!6861 thiss!1504) index!297 (mask!10959 thiss!1504)))))

(assert (=> d!61487 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61487 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) index!297 (mask!10959 thiss!1504)) lt!128086)))

(declare-fun b!255279 () Bool)

(assert (=> b!255279 (= e!165480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12457 (store (arr!5902 (_keys!6861 thiss!1504)) index!297 key!932) (size!6249 (_keys!6861 thiss!1504))) (mask!10959 thiss!1504)))))

(assert (= (and d!61487 res!124953) b!255279))

(declare-fun m!270829 () Bool)

(assert (=> d!61487 m!270829))

(assert (=> d!61487 m!270631))

(assert (=> b!255279 m!270557))

(declare-fun m!270831 () Bool)

(assert (=> b!255279 m!270831))

(assert (=> b!255001 d!61487))

(assert (=> bm!24082 d!61485))

(declare-fun b!255296 () Bool)

(declare-fun res!124962 () Bool)

(declare-fun e!165491 () Bool)

(assert (=> b!255296 (=> (not res!124962) (not e!165491))))

(declare-fun call!24134 () Bool)

(assert (=> b!255296 (= res!124962 call!24134)))

(declare-fun e!165492 () Bool)

(assert (=> b!255296 (= e!165492 e!165491)))

(declare-fun b!255297 () Bool)

(declare-fun res!124964 () Bool)

(assert (=> b!255297 (=> (not res!124964) (not e!165491))))

(declare-fun lt!128092 () SeekEntryResult!1165)

(assert (=> b!255297 (= res!124964 (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6833 lt!128092)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!255297 (and (bvsge (index!6833 lt!128092) #b00000000000000000000000000000000) (bvslt (index!6833 lt!128092) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun b!255298 () Bool)

(declare-fun e!165489 () Bool)

(assert (=> b!255298 (= e!165489 e!165492)))

(declare-fun c!43090 () Bool)

(assert (=> b!255298 (= c!43090 ((_ is MissingVacant!1165) lt!128092))))

(declare-fun c!43091 () Bool)

(declare-fun bm!24132 () Bool)

(assert (=> bm!24132 (= call!24134 (inRange!0 (ite c!43091 (index!6830 lt!128092) (index!6833 lt!128092)) (mask!10959 thiss!1504)))))

(declare-fun b!255299 () Bool)

(assert (=> b!255299 (and (bvsge (index!6830 lt!128092) #b00000000000000000000000000000000) (bvslt (index!6830 lt!128092) (size!6249 (_keys!6861 thiss!1504))))))

(declare-fun res!124963 () Bool)

(assert (=> b!255299 (= res!124963 (= (select (arr!5902 (_keys!6861 thiss!1504)) (index!6830 lt!128092)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165490 () Bool)

(assert (=> b!255299 (=> (not res!124963) (not e!165490))))

(declare-fun bm!24131 () Bool)

(declare-fun call!24135 () Bool)

(assert (=> bm!24131 (= call!24135 (arrayContainsKey!0 (_keys!6861 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun d!61489 () Bool)

(assert (=> d!61489 e!165489))

(assert (=> d!61489 (= c!43091 ((_ is MissingZero!1165) lt!128092))))

(assert (=> d!61489 (= lt!128092 (seekEntryOrOpen!0 key!932 (_keys!6861 thiss!1504) (mask!10959 thiss!1504)))))

(declare-fun lt!128091 () Unit!7911)

(declare-fun choose!1227 (array!12456 array!12454 (_ BitVec 32) (_ BitVec 32) V!8395 V!8395 (_ BitVec 64) Int) Unit!7911)

(assert (=> d!61489 (= lt!128091 (choose!1227 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)))))

(assert (=> d!61489 (validMask!0 (mask!10959 thiss!1504))))

(assert (=> d!61489 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!423 (_keys!6861 thiss!1504) (_values!4688 thiss!1504) (mask!10959 thiss!1504) (extraKeys!4442 thiss!1504) (zeroValue!4546 thiss!1504) (minValue!4546 thiss!1504) key!932 (defaultEntry!4705 thiss!1504)) lt!128091)))

(declare-fun b!255300 () Bool)

(assert (=> b!255300 (= e!165489 e!165490)))

(declare-fun res!124965 () Bool)

(assert (=> b!255300 (= res!124965 call!24134)))

(assert (=> b!255300 (=> (not res!124965) (not e!165490))))

(declare-fun b!255301 () Bool)

(assert (=> b!255301 (= e!165492 ((_ is Undefined!1165) lt!128092))))

(declare-fun b!255302 () Bool)

(assert (=> b!255302 (= e!165491 (not call!24135))))

(declare-fun b!255303 () Bool)

(assert (=> b!255303 (= e!165490 (not call!24135))))

(assert (= (and d!61489 c!43091) b!255300))

(assert (= (and d!61489 (not c!43091)) b!255298))

(assert (= (and b!255300 res!124965) b!255299))

(assert (= (and b!255299 res!124963) b!255303))

(assert (= (and b!255298 c!43090) b!255296))

(assert (= (and b!255298 (not c!43090)) b!255301))

(assert (= (and b!255296 res!124962) b!255297))

(assert (= (and b!255297 res!124964) b!255302))

(assert (= (or b!255300 b!255296) bm!24132))

(assert (= (or b!255303 b!255302) bm!24131))

(declare-fun m!270833 () Bool)

(assert (=> b!255299 m!270833))

(declare-fun m!270835 () Bool)

(assert (=> bm!24132 m!270835))

(assert (=> d!61489 m!270521))

(declare-fun m!270837 () Bool)

(assert (=> d!61489 m!270837))

(assert (=> d!61489 m!270631))

(assert (=> bm!24131 m!270537))

(declare-fun m!270839 () Bool)

(assert (=> b!255297 m!270839))

(assert (=> b!254997 d!61489))

(declare-fun b!255311 () Bool)

(declare-fun e!165498 () Bool)

(assert (=> b!255311 (= e!165498 tp_is_empty!6561)))

(declare-fun mapNonEmpty!11166 () Bool)

(declare-fun mapRes!11166 () Bool)

(declare-fun tp!23397 () Bool)

(declare-fun e!165497 () Bool)

(assert (=> mapNonEmpty!11166 (= mapRes!11166 (and tp!23397 e!165497))))

(declare-fun mapKey!11166 () (_ BitVec 32))

(declare-fun mapRest!11166 () (Array (_ BitVec 32) ValueCell!2937))

(declare-fun mapValue!11166 () ValueCell!2937)

(assert (=> mapNonEmpty!11166 (= mapRest!11160 (store mapRest!11166 mapKey!11166 mapValue!11166))))

(declare-fun b!255310 () Bool)

(assert (=> b!255310 (= e!165497 tp_is_empty!6561)))

(declare-fun condMapEmpty!11166 () Bool)

(declare-fun mapDefault!11166 () ValueCell!2937)

(assert (=> mapNonEmpty!11160 (= condMapEmpty!11166 (= mapRest!11160 ((as const (Array (_ BitVec 32) ValueCell!2937)) mapDefault!11166)))))

(assert (=> mapNonEmpty!11160 (= tp!23388 (and e!165498 mapRes!11166))))

(declare-fun mapIsEmpty!11166 () Bool)

(assert (=> mapIsEmpty!11166 mapRes!11166))

(assert (= (and mapNonEmpty!11160 condMapEmpty!11166) mapIsEmpty!11166))

(assert (= (and mapNonEmpty!11160 (not condMapEmpty!11166)) mapNonEmpty!11166))

(assert (= (and mapNonEmpty!11166 ((_ is ValueCellFull!2937) mapValue!11166)) b!255310))

(assert (= (and mapNonEmpty!11160 ((_ is ValueCellFull!2937) mapDefault!11166)) b!255311))

(declare-fun m!270841 () Bool)

(assert (=> mapNonEmpty!11166 m!270841))

(declare-fun b_lambda!8173 () Bool)

(assert (= b_lambda!8169 (or (and b!255011 b_free!6699) b_lambda!8173)))

(declare-fun b_lambda!8175 () Bool)

(assert (= b_lambda!8171 (or (and b!255011 b_free!6699) b_lambda!8175)))

(check-sat (not b!255147) (not b_lambda!8175) (not bm!24112) (not d!61449) (not b!255102) (not b!255161) (not b!255210) (not b!255231) (not b!255255) (not b!255267) (not b!255176) (not b!255192) (not b!255270) (not b!255181) (not d!61479) (not b!255162) (not d!61481) (not b!255234) (not b!255151) (not b!255191) (not b!255100) (not d!61455) (not bm!24121) (not d!61469) (not b!255224) (not b!255248) (not b!255199) (not b!255152) (not bm!24108) (not b!255194) (not b!255209) (not d!61467) (not bm!24131) (not b_next!6699) (not d!61461) (not d!61465) (not bm!24118) (not b!255150) (not b!255276) (not d!61489) (not b!255266) (not b!255246) (not bm!24107) (not bm!24126) (not bm!24104) (not d!61475) (not bm!24122) (not b!255227) (not bm!24116) tp_is_empty!6561 (not bm!24132) (not b!255249) (not bm!24123) (not mapNonEmpty!11166) (not b!255238) (not b!255174) (not d!61463) (not b!255159) (not bm!24109) (not bm!24115) (not b_lambda!8173) (not b!255088) b_and!13769 (not b!255279) (not b!255175) (not b!255239) (not b!255145) (not d!61487) (not b!255200) (not b!255237) (not d!61453) (not b!255232))
(check-sat b_and!13769 (not b_next!6699))
