; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89844 () Bool)

(assert start!89844)

(declare-fun b!1029104 () Bool)

(declare-fun b_free!20595 () Bool)

(declare-fun b_next!20595 () Bool)

(assert (=> b!1029104 (= b_free!20595 (not b_next!20595))))

(declare-fun tp!72846 () Bool)

(declare-fun b_and!32933 () Bool)

(assert (=> b!1029104 (= tp!72846 b_and!32933)))

(declare-fun res!688538 () Bool)

(declare-fun e!581034 () Bool)

(assert (=> start!89844 (=> (not res!688538) (not e!581034))))

(declare-datatypes ((V!37293 0))(
  ( (V!37294 (val!12208 Int)) )
))
(declare-datatypes ((ValueCell!11454 0))(
  ( (ValueCellFull!11454 (v!14782 V!37293)) (EmptyCell!11454) )
))
(declare-datatypes ((array!64672 0))(
  ( (array!64673 (arr!31137 (Array (_ BitVec 32) (_ BitVec 64))) (size!31653 (_ BitVec 32))) )
))
(declare-datatypes ((array!64674 0))(
  ( (array!64675 (arr!31138 (Array (_ BitVec 32) ValueCell!11454)) (size!31654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5502 0))(
  ( (LongMapFixedSize!5503 (defaultEntry!6115 Int) (mask!29862 (_ BitVec 32)) (extraKeys!5847 (_ BitVec 32)) (zeroValue!5951 V!37293) (minValue!5951 V!37293) (_size!2806 (_ BitVec 32)) (_keys!11273 array!64672) (_values!6138 array!64674) (_vacant!2806 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5502)

(declare-fun valid!2038 (LongMapFixedSize!5502) Bool)

(assert (=> start!89844 (= res!688538 (valid!2038 thiss!1427))))

(assert (=> start!89844 e!581034))

(declare-fun e!581035 () Bool)

(assert (=> start!89844 e!581035))

(assert (=> start!89844 true))

(declare-fun b!1029102 () Bool)

(declare-fun e!581037 () Bool)

(declare-fun tp_is_empty!24315 () Bool)

(assert (=> b!1029102 (= e!581037 tp_is_empty!24315)))

(declare-fun b!1029103 () Bool)

(declare-fun res!688536 () Bool)

(assert (=> b!1029103 (=> (not res!688536) (not e!581034))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1029103 (= res!688536 (not (= key!909 (bvneg key!909))))))

(declare-fun e!581041 () Bool)

(declare-fun array_inv!23953 (array!64672) Bool)

(declare-fun array_inv!23954 (array!64674) Bool)

(assert (=> b!1029104 (= e!581035 (and tp!72846 tp_is_empty!24315 (array_inv!23953 (_keys!11273 thiss!1427)) (array_inv!23954 (_values!6138 thiss!1427)) e!581041))))

(declare-fun b!1029105 () Bool)

(declare-fun e!581038 () Bool)

(declare-datatypes ((Unit!33570 0))(
  ( (Unit!33571) )
))
(declare-datatypes ((tuple2!15648 0))(
  ( (tuple2!15649 (_1!7834 Unit!33570) (_2!7834 LongMapFixedSize!5502)) )
))
(declare-fun lt!453553 () tuple2!15648)

(assert (=> b!1029105 (= e!581038 (or (not (= (size!31654 (_values!6138 (_2!7834 lt!453553))) (bvadd #b00000000000000000000000000000001 (mask!29862 (_2!7834 lt!453553))))) (not (= (size!31653 (_keys!11273 (_2!7834 lt!453553))) (size!31654 (_values!6138 (_2!7834 lt!453553))))) (bvslt (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000000000000) (bvsge (extraKeys!5847 (_2!7834 lt!453553)) #b00000000000000000000000000000000)))))

(declare-fun b!1029106 () Bool)

(declare-fun e!581040 () Bool)

(declare-fun mapRes!37915 () Bool)

(assert (=> b!1029106 (= e!581041 (and e!581040 mapRes!37915))))

(declare-fun condMapEmpty!37915 () Bool)

(declare-fun mapDefault!37915 () ValueCell!11454)

(assert (=> b!1029106 (= condMapEmpty!37915 (= (arr!31138 (_values!6138 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11454)) mapDefault!37915)))))

(declare-fun b!1029107 () Bool)

(declare-fun e!581036 () Bool)

(assert (=> b!1029107 (= e!581034 e!581036)))

(declare-fun res!688535 () Bool)

(assert (=> b!1029107 (=> (not res!688535) (not e!581036))))

(declare-datatypes ((SeekEntryResult!9671 0))(
  ( (MissingZero!9671 (index!41054 (_ BitVec 32))) (Found!9671 (index!41055 (_ BitVec 32))) (Intermediate!9671 (undefined!10483 Bool) (index!41056 (_ BitVec 32)) (x!91572 (_ BitVec 32))) (Undefined!9671) (MissingVacant!9671 (index!41057 (_ BitVec 32))) )
))
(declare-fun lt!453560 () SeekEntryResult!9671)

(get-info :version)

(assert (=> b!1029107 (= res!688535 ((_ is Found!9671) lt!453560))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64672 (_ BitVec 32)) SeekEntryResult!9671)

(assert (=> b!1029107 (= lt!453560 (seekEntry!0 key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(declare-fun mapIsEmpty!37915 () Bool)

(assert (=> mapIsEmpty!37915 mapRes!37915))

(declare-fun b!1029108 () Bool)

(assert (=> b!1029108 (= e!581036 (not e!581038))))

(declare-fun res!688537 () Bool)

(assert (=> b!1029108 (=> res!688537 e!581038)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1029108 (= res!688537 (not (validMask!0 (mask!29862 (_2!7834 lt!453553)))))))

(declare-fun lt!453555 () array!64674)

(declare-fun lt!453561 () array!64672)

(declare-fun Unit!33572 () Unit!33570)

(declare-fun Unit!33573 () Unit!33570)

(assert (=> b!1029108 (= lt!453553 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2806 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15649 Unit!33572 (LongMapFixedSize!5503 (defaultEntry!6115 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvsub (_size!2806 thiss!1427) #b00000000000000000000000000000001) lt!453561 lt!453555 (bvadd #b00000000000000000000000000000001 (_vacant!2806 thiss!1427)))) (tuple2!15649 Unit!33573 (LongMapFixedSize!5503 (defaultEntry!6115 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvsub (_size!2806 thiss!1427) #b00000000000000000000000000000001) lt!453561 lt!453555 (_vacant!2806 thiss!1427)))))))

(declare-datatypes ((tuple2!15650 0))(
  ( (tuple2!15651 (_1!7835 (_ BitVec 64)) (_2!7835 V!37293)) )
))
(declare-datatypes ((List!21929 0))(
  ( (Nil!21926) (Cons!21925 (h!23125 tuple2!15650) (t!31026 List!21929)) )
))
(declare-datatypes ((ListLongMap!13787 0))(
  ( (ListLongMap!13788 (toList!6909 List!21929)) )
))
(declare-fun -!485 (ListLongMap!13787 (_ BitVec 64)) ListLongMap!13787)

(declare-fun getCurrentListMap!3916 (array!64672 array!64674 (_ BitVec 32) (_ BitVec 32) V!37293 V!37293 (_ BitVec 32) Int) ListLongMap!13787)

(assert (=> b!1029108 (= (-!485 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) key!909) (getCurrentListMap!3916 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun dynLambda!1960 (Int (_ BitVec 64)) V!37293)

(assert (=> b!1029108 (= lt!453555 (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))))))

(declare-fun lt!453559 () Unit!33570)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!9 (array!64672 array!64674 (_ BitVec 32) (_ BitVec 32) V!37293 V!37293 (_ BitVec 32) (_ BitVec 64) Int) Unit!33570)

(assert (=> b!1029108 (= lt!453559 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!9 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (index!41055 lt!453560) key!909 (defaultEntry!6115 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1029108 (not (arrayContainsKey!0 lt!453561 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453554 () Unit!33570)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64672 (_ BitVec 32) (_ BitVec 64)) Unit!33570)

(assert (=> b!1029108 (= lt!453554 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64672 (_ BitVec 32)) Bool)

(assert (=> b!1029108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453561 (mask!29862 thiss!1427))))

(declare-fun lt!453558 () Unit!33570)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64672 (_ BitVec 32) (_ BitVec 32)) Unit!33570)

(assert (=> b!1029108 (= lt!453558 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) (mask!29862 thiss!1427)))))

(declare-datatypes ((List!21930 0))(
  ( (Nil!21927) (Cons!21926 (h!23126 (_ BitVec 64)) (t!31027 List!21930)) )
))
(declare-fun arrayNoDuplicates!0 (array!64672 (_ BitVec 32) List!21930) Bool)

(assert (=> b!1029108 (arrayNoDuplicates!0 lt!453561 #b00000000000000000000000000000000 Nil!21927)))

(declare-fun lt!453557 () Unit!33570)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64672 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21930) Unit!33570)

(assert (=> b!1029108 (= lt!453557 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11273 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41055 lt!453560) #b00000000000000000000000000000000 Nil!21927))))

(declare-fun arrayCountValidKeys!0 (array!64672 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029108 (= (arrayCountValidKeys!0 lt!453561 #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1029108 (= lt!453561 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun lt!453556 () Unit!33570)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64672 (_ BitVec 32) (_ BitVec 64)) Unit!33570)

(assert (=> b!1029108 (= lt!453556 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029109 () Bool)

(assert (=> b!1029109 (= e!581040 tp_is_empty!24315)))

(declare-fun mapNonEmpty!37915 () Bool)

(declare-fun tp!72845 () Bool)

(assert (=> mapNonEmpty!37915 (= mapRes!37915 (and tp!72845 e!581037))))

(declare-fun mapKey!37915 () (_ BitVec 32))

(declare-fun mapRest!37915 () (Array (_ BitVec 32) ValueCell!11454))

(declare-fun mapValue!37915 () ValueCell!11454)

(assert (=> mapNonEmpty!37915 (= (arr!31138 (_values!6138 thiss!1427)) (store mapRest!37915 mapKey!37915 mapValue!37915))))

(assert (= (and start!89844 res!688538) b!1029103))

(assert (= (and b!1029103 res!688536) b!1029107))

(assert (= (and b!1029107 res!688535) b!1029108))

(assert (= (and b!1029108 (not res!688537)) b!1029105))

(assert (= (and b!1029106 condMapEmpty!37915) mapIsEmpty!37915))

(assert (= (and b!1029106 (not condMapEmpty!37915)) mapNonEmpty!37915))

(assert (= (and mapNonEmpty!37915 ((_ is ValueCellFull!11454) mapValue!37915)) b!1029102))

(assert (= (and b!1029106 ((_ is ValueCellFull!11454) mapDefault!37915)) b!1029109))

(assert (= b!1029104 b!1029106))

(assert (= start!89844 b!1029104))

(declare-fun b_lambda!15879 () Bool)

(assert (=> (not b_lambda!15879) (not b!1029108)))

(declare-fun t!31025 () Bool)

(declare-fun tb!6921 () Bool)

(assert (=> (and b!1029104 (= (defaultEntry!6115 thiss!1427) (defaultEntry!6115 thiss!1427)) t!31025) tb!6921))

(declare-fun result!14157 () Bool)

(assert (=> tb!6921 (= result!14157 tp_is_empty!24315)))

(assert (=> b!1029108 t!31025))

(declare-fun b_and!32935 () Bool)

(assert (= b_and!32933 (and (=> t!31025 result!14157) b_and!32935)))

(declare-fun m!948371 () Bool)

(assert (=> start!89844 m!948371))

(declare-fun m!948373 () Bool)

(assert (=> b!1029104 m!948373))

(declare-fun m!948375 () Bool)

(assert (=> b!1029104 m!948375))

(declare-fun m!948377 () Bool)

(assert (=> mapNonEmpty!37915 m!948377))

(declare-fun m!948379 () Bool)

(assert (=> b!1029107 m!948379))

(declare-fun m!948381 () Bool)

(assert (=> b!1029108 m!948381))

(declare-fun m!948383 () Bool)

(assert (=> b!1029108 m!948383))

(declare-fun m!948385 () Bool)

(assert (=> b!1029108 m!948385))

(declare-fun m!948387 () Bool)

(assert (=> b!1029108 m!948387))

(declare-fun m!948389 () Bool)

(assert (=> b!1029108 m!948389))

(declare-fun m!948391 () Bool)

(assert (=> b!1029108 m!948391))

(declare-fun m!948393 () Bool)

(assert (=> b!1029108 m!948393))

(declare-fun m!948395 () Bool)

(assert (=> b!1029108 m!948395))

(declare-fun m!948397 () Bool)

(assert (=> b!1029108 m!948397))

(declare-fun m!948399 () Bool)

(assert (=> b!1029108 m!948399))

(declare-fun m!948401 () Bool)

(assert (=> b!1029108 m!948401))

(assert (=> b!1029108 m!948399))

(declare-fun m!948403 () Bool)

(assert (=> b!1029108 m!948403))

(declare-fun m!948405 () Bool)

(assert (=> b!1029108 m!948405))

(declare-fun m!948407 () Bool)

(assert (=> b!1029108 m!948407))

(declare-fun m!948409 () Bool)

(assert (=> b!1029108 m!948409))

(declare-fun m!948411 () Bool)

(assert (=> b!1029108 m!948411))

(declare-fun m!948413 () Bool)

(assert (=> b!1029108 m!948413))

(check-sat (not b_lambda!15879) (not mapNonEmpty!37915) b_and!32935 (not start!89844) (not b!1029107) (not b!1029104) tp_is_empty!24315 (not b_next!20595) (not b!1029108))
(check-sat b_and!32935 (not b_next!20595))
(get-model)

(declare-fun b_lambda!15883 () Bool)

(assert (= b_lambda!15879 (or (and b!1029104 b_free!20595) b_lambda!15883)))

(check-sat (not mapNonEmpty!37915) (not start!89844) (not b!1029107) (not b!1029104) tp_is_empty!24315 (not b_next!20595) (not b!1029108) (not b_lambda!15883) b_and!32935)
(check-sat b_and!32935 (not b_next!20595))
(get-model)

(declare-fun b!1029150 () Bool)

(declare-fun e!581074 () SeekEntryResult!9671)

(declare-fun lt!453599 () SeekEntryResult!9671)

(assert (=> b!1029150 (= e!581074 (MissingZero!9671 (index!41056 lt!453599)))))

(declare-fun b!1029151 () Bool)

(declare-fun c!103879 () Bool)

(declare-fun lt!453598 () (_ BitVec 64))

(assert (=> b!1029151 (= c!103879 (= lt!453598 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!581072 () SeekEntryResult!9671)

(assert (=> b!1029151 (= e!581072 e!581074)))

(declare-fun b!1029152 () Bool)

(declare-fun lt!453597 () SeekEntryResult!9671)

(assert (=> b!1029152 (= e!581074 (ite ((_ is MissingVacant!9671) lt!453597) (MissingZero!9671 (index!41057 lt!453597)) lt!453597))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64672 (_ BitVec 32)) SeekEntryResult!9671)

(assert (=> b!1029152 (= lt!453597 (seekKeyOrZeroReturnVacant!0 (x!91572 lt!453599) (index!41056 lt!453599) (index!41056 lt!453599) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(declare-fun d!123141 () Bool)

(declare-fun lt!453600 () SeekEntryResult!9671)

(assert (=> d!123141 (and (or ((_ is MissingVacant!9671) lt!453600) (not ((_ is Found!9671) lt!453600)) (and (bvsge (index!41055 lt!453600) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453600) (size!31653 (_keys!11273 thiss!1427))))) (not ((_ is MissingVacant!9671) lt!453600)) (or (not ((_ is Found!9671) lt!453600)) (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453600)) key!909)))))

(declare-fun e!581073 () SeekEntryResult!9671)

(assert (=> d!123141 (= lt!453600 e!581073)))

(declare-fun c!103877 () Bool)

(assert (=> d!123141 (= c!103877 (and ((_ is Intermediate!9671) lt!453599) (undefined!10483 lt!453599)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64672 (_ BitVec 32)) SeekEntryResult!9671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!123141 (= lt!453599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29862 thiss!1427)) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(assert (=> d!123141 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123141 (= (seekEntry!0 key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)) lt!453600)))

(declare-fun b!1029153 () Bool)

(assert (=> b!1029153 (= e!581072 (Found!9671 (index!41056 lt!453599)))))

(declare-fun b!1029154 () Bool)

(assert (=> b!1029154 (= e!581073 Undefined!9671)))

(declare-fun b!1029155 () Bool)

(assert (=> b!1029155 (= e!581073 e!581072)))

(assert (=> b!1029155 (= lt!453598 (select (arr!31137 (_keys!11273 thiss!1427)) (index!41056 lt!453599)))))

(declare-fun c!103878 () Bool)

(assert (=> b!1029155 (= c!103878 (= lt!453598 key!909))))

(assert (= (and d!123141 c!103877) b!1029154))

(assert (= (and d!123141 (not c!103877)) b!1029155))

(assert (= (and b!1029155 c!103878) b!1029153))

(assert (= (and b!1029155 (not c!103878)) b!1029151))

(assert (= (and b!1029151 c!103879) b!1029150))

(assert (= (and b!1029151 (not c!103879)) b!1029152))

(declare-fun m!948459 () Bool)

(assert (=> b!1029152 m!948459))

(declare-fun m!948461 () Bool)

(assert (=> d!123141 m!948461))

(declare-fun m!948463 () Bool)

(assert (=> d!123141 m!948463))

(assert (=> d!123141 m!948463))

(declare-fun m!948465 () Bool)

(assert (=> d!123141 m!948465))

(declare-fun m!948467 () Bool)

(assert (=> d!123141 m!948467))

(declare-fun m!948469 () Bool)

(assert (=> b!1029155 m!948469))

(assert (=> b!1029107 d!123141))

(declare-fun d!123143 () Bool)

(assert (=> d!123143 (= (array_inv!23953 (_keys!11273 thiss!1427)) (bvsge (size!31653 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029104 d!123143))

(declare-fun d!123145 () Bool)

(assert (=> d!123145 (= (array_inv!23954 (_values!6138 thiss!1427)) (bvsge (size!31654 (_values!6138 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029104 d!123145))

(declare-fun d!123147 () Bool)

(declare-fun res!688557 () Bool)

(declare-fun e!581077 () Bool)

(assert (=> d!123147 (=> (not res!688557) (not e!581077))))

(declare-fun simpleValid!393 (LongMapFixedSize!5502) Bool)

(assert (=> d!123147 (= res!688557 (simpleValid!393 thiss!1427))))

(assert (=> d!123147 (= (valid!2038 thiss!1427) e!581077)))

(declare-fun b!1029162 () Bool)

(declare-fun res!688558 () Bool)

(assert (=> b!1029162 (=> (not res!688558) (not e!581077))))

(assert (=> b!1029162 (= res!688558 (= (arrayCountValidKeys!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (_size!2806 thiss!1427)))))

(declare-fun b!1029163 () Bool)

(declare-fun res!688559 () Bool)

(assert (=> b!1029163 (=> (not res!688559) (not e!581077))))

(assert (=> b!1029163 (= res!688559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(declare-fun b!1029164 () Bool)

(assert (=> b!1029164 (= e!581077 (arrayNoDuplicates!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 Nil!21927))))

(assert (= (and d!123147 res!688557) b!1029162))

(assert (= (and b!1029162 res!688558) b!1029163))

(assert (= (and b!1029163 res!688559) b!1029164))

(declare-fun m!948471 () Bool)

(assert (=> d!123147 m!948471))

(assert (=> b!1029162 m!948411))

(declare-fun m!948473 () Bool)

(assert (=> b!1029163 m!948473))

(declare-fun m!948475 () Bool)

(assert (=> b!1029164 m!948475))

(assert (=> start!89844 d!123147))

(declare-fun d!123149 () Bool)

(declare-fun e!581080 () Bool)

(assert (=> d!123149 e!581080))

(declare-fun res!688562 () Bool)

(assert (=> d!123149 (=> (not res!688562) (not e!581080))))

(assert (=> d!123149 (= res!688562 (and (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427)))))))

(declare-fun lt!453603 () Unit!33570)

(declare-fun choose!53 (array!64672 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21930) Unit!33570)

(assert (=> d!123149 (= lt!453603 (choose!53 (_keys!11273 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41055 lt!453560) #b00000000000000000000000000000000 Nil!21927))))

(assert (=> d!123149 (bvslt (size!31653 (_keys!11273 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!123149 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11273 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41055 lt!453560) #b00000000000000000000000000000000 Nil!21927) lt!453603)))

(declare-fun b!1029167 () Bool)

(assert (=> b!1029167 (= e!581080 (arrayNoDuplicates!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 Nil!21927))))

(assert (= (and d!123149 res!688562) b!1029167))

(declare-fun m!948477 () Bool)

(assert (=> d!123149 m!948477))

(assert (=> b!1029167 m!948413))

(declare-fun m!948479 () Bool)

(assert (=> b!1029167 m!948479))

(assert (=> b!1029108 d!123149))

(declare-fun d!123151 () Bool)

(declare-fun e!581083 () Bool)

(assert (=> d!123151 e!581083))

(declare-fun res!688565 () Bool)

(assert (=> d!123151 (=> (not res!688565) (not e!581083))))

(assert (=> d!123151 (= res!688565 (and (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427)))))))

(declare-fun lt!453606 () Unit!33570)

(declare-fun choose!1695 (array!64672 array!64674 (_ BitVec 32) (_ BitVec 32) V!37293 V!37293 (_ BitVec 32) (_ BitVec 64) Int) Unit!33570)

(assert (=> d!123151 (= lt!453606 (choose!1695 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (index!41055 lt!453560) key!909 (defaultEntry!6115 thiss!1427)))))

(assert (=> d!123151 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123151 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!9 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (index!41055 lt!453560) key!909 (defaultEntry!6115 thiss!1427)) lt!453606)))

(declare-fun b!1029170 () Bool)

(assert (=> b!1029170 (= e!581083 (= (-!485 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) key!909) (getCurrentListMap!3916 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))))))

(assert (=> b!1029170 (bvslt (index!41055 lt!453560) (size!31654 (_values!6138 thiss!1427)))))

(assert (= (and d!123151 res!688565) b!1029170))

(declare-fun b_lambda!15885 () Bool)

(assert (=> (not b_lambda!15885) (not b!1029170)))

(assert (=> b!1029170 t!31025))

(declare-fun b_and!32941 () Bool)

(assert (= b_and!32935 (and (=> t!31025 result!14157) b_and!32941)))

(declare-fun m!948481 () Bool)

(assert (=> d!123151 m!948481))

(assert (=> d!123151 m!948467))

(declare-fun m!948483 () Bool)

(assert (=> b!1029170 m!948483))

(assert (=> b!1029170 m!948405))

(assert (=> b!1029170 m!948381))

(assert (=> b!1029170 m!948399))

(assert (=> b!1029170 m!948399))

(assert (=> b!1029170 m!948401))

(assert (=> b!1029170 m!948413))

(assert (=> b!1029108 d!123151))

(declare-fun d!123153 () Bool)

(declare-fun lt!453609 () ListLongMap!13787)

(declare-fun contains!5990 (ListLongMap!13787 (_ BitVec 64)) Bool)

(assert (=> d!123153 (not (contains!5990 lt!453609 key!909))))

(declare-fun removeStrictlySorted!54 (List!21929 (_ BitVec 64)) List!21929)

(assert (=> d!123153 (= lt!453609 (ListLongMap!13788 (removeStrictlySorted!54 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))) key!909)))))

(assert (=> d!123153 (= (-!485 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) key!909) lt!453609)))

(declare-fun bs!30052 () Bool)

(assert (= bs!30052 d!123153))

(declare-fun m!948485 () Bool)

(assert (=> bs!30052 m!948485))

(declare-fun m!948487 () Bool)

(assert (=> bs!30052 m!948487))

(assert (=> b!1029108 d!123153))

(declare-fun d!123155 () Bool)

(declare-fun res!688570 () Bool)

(declare-fun e!581088 () Bool)

(assert (=> d!123155 (=> res!688570 e!581088)))

(assert (=> d!123155 (= res!688570 (= (select (arr!31137 lt!453561) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123155 (= (arrayContainsKey!0 lt!453561 key!909 #b00000000000000000000000000000000) e!581088)))

(declare-fun b!1029175 () Bool)

(declare-fun e!581089 () Bool)

(assert (=> b!1029175 (= e!581088 e!581089)))

(declare-fun res!688571 () Bool)

(assert (=> b!1029175 (=> (not res!688571) (not e!581089))))

(assert (=> b!1029175 (= res!688571 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 lt!453561)))))

(declare-fun b!1029176 () Bool)

(assert (=> b!1029176 (= e!581089 (arrayContainsKey!0 lt!453561 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123155 (not res!688570)) b!1029175))

(assert (= (and b!1029175 res!688571) b!1029176))

(declare-fun m!948489 () Bool)

(assert (=> d!123155 m!948489))

(declare-fun m!948491 () Bool)

(assert (=> b!1029176 m!948491))

(assert (=> b!1029108 d!123155))

(declare-fun b!1029185 () Bool)

(declare-fun res!688582 () Bool)

(declare-fun e!581094 () Bool)

(assert (=> b!1029185 (=> (not res!688582) (not e!581094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1029185 (= res!688582 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560))))))

(declare-fun b!1029187 () Bool)

(assert (=> b!1029187 (= e!581094 (bvslt (size!31653 (_keys!11273 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1029186 () Bool)

(declare-fun res!688580 () Bool)

(assert (=> b!1029186 (=> (not res!688580) (not e!581094))))

(assert (=> b!1029186 (= res!688580 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!123157 () Bool)

(declare-fun e!581095 () Bool)

(assert (=> d!123157 e!581095))

(declare-fun res!688583 () Bool)

(assert (=> d!123157 (=> (not res!688583) (not e!581095))))

(assert (=> d!123157 (= res!688583 (and (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427)))))))

(declare-fun lt!453612 () Unit!33570)

(declare-fun choose!82 (array!64672 (_ BitVec 32) (_ BitVec 64)) Unit!33570)

(assert (=> d!123157 (= lt!453612 (choose!82 (_keys!11273 thiss!1427) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123157 e!581094))

(declare-fun res!688581 () Bool)

(assert (=> d!123157 (=> (not res!688581) (not e!581094))))

(assert (=> d!123157 (= res!688581 (and (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427)))))))

(assert (=> d!123157 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) lt!453612)))

(declare-fun b!1029188 () Bool)

(assert (=> b!1029188 (= e!581095 (= (arrayCountValidKeys!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!123157 res!688581) b!1029185))

(assert (= (and b!1029185 res!688582) b!1029186))

(assert (= (and b!1029186 res!688580) b!1029187))

(assert (= (and d!123157 res!688583) b!1029188))

(declare-fun m!948493 () Bool)

(assert (=> b!1029185 m!948493))

(assert (=> b!1029185 m!948493))

(declare-fun m!948495 () Bool)

(assert (=> b!1029185 m!948495))

(declare-fun m!948497 () Bool)

(assert (=> b!1029186 m!948497))

(declare-fun m!948499 () Bool)

(assert (=> d!123157 m!948499))

(assert (=> b!1029188 m!948413))

(declare-fun m!948501 () Bool)

(assert (=> b!1029188 m!948501))

(assert (=> b!1029188 m!948411))

(assert (=> b!1029108 d!123157))

(declare-fun b!1029197 () Bool)

(declare-fun e!581103 () Bool)

(declare-fun e!581102 () Bool)

(assert (=> b!1029197 (= e!581103 e!581102)))

(declare-fun lt!453620 () (_ BitVec 64))

(assert (=> b!1029197 (= lt!453620 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(declare-fun lt!453621 () Unit!33570)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64672 (_ BitVec 64) (_ BitVec 32)) Unit!33570)

(assert (=> b!1029197 (= lt!453621 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453561 lt!453620 #b00000000000000000000000000000000))))

(assert (=> b!1029197 (arrayContainsKey!0 lt!453561 lt!453620 #b00000000000000000000000000000000)))

(declare-fun lt!453619 () Unit!33570)

(assert (=> b!1029197 (= lt!453619 lt!453621)))

(declare-fun res!688589 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64672 (_ BitVec 32)) SeekEntryResult!9671)

(assert (=> b!1029197 (= res!688589 (= (seekEntryOrOpen!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) lt!453561 (mask!29862 thiss!1427)) (Found!9671 #b00000000000000000000000000000000)))))

(assert (=> b!1029197 (=> (not res!688589) (not e!581102))))

(declare-fun bm!43435 () Bool)

(declare-fun call!43438 () Bool)

(assert (=> bm!43435 (= call!43438 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!453561 (mask!29862 thiss!1427)))))

(declare-fun b!1029199 () Bool)

(assert (=> b!1029199 (= e!581102 call!43438)))

(declare-fun b!1029200 () Bool)

(assert (=> b!1029200 (= e!581103 call!43438)))

(declare-fun b!1029198 () Bool)

(declare-fun e!581104 () Bool)

(assert (=> b!1029198 (= e!581104 e!581103)))

(declare-fun c!103882 () Bool)

(assert (=> b!1029198 (= c!103882 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun d!123159 () Bool)

(declare-fun res!688588 () Bool)

(assert (=> d!123159 (=> res!688588 e!581104)))

(assert (=> d!123159 (= res!688588 (bvsge #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(assert (=> d!123159 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453561 (mask!29862 thiss!1427)) e!581104)))

(assert (= (and d!123159 (not res!688588)) b!1029198))

(assert (= (and b!1029198 c!103882) b!1029197))

(assert (= (and b!1029198 (not c!103882)) b!1029200))

(assert (= (and b!1029197 res!688589) b!1029199))

(assert (= (or b!1029199 b!1029200) bm!43435))

(assert (=> b!1029197 m!948489))

(declare-fun m!948503 () Bool)

(assert (=> b!1029197 m!948503))

(declare-fun m!948505 () Bool)

(assert (=> b!1029197 m!948505))

(assert (=> b!1029197 m!948489))

(declare-fun m!948507 () Bool)

(assert (=> b!1029197 m!948507))

(declare-fun m!948509 () Bool)

(assert (=> bm!43435 m!948509))

(assert (=> b!1029198 m!948489))

(assert (=> b!1029198 m!948489))

(declare-fun m!948511 () Bool)

(assert (=> b!1029198 m!948511))

(assert (=> b!1029108 d!123159))

(declare-fun d!123161 () Bool)

(declare-fun e!581107 () Bool)

(assert (=> d!123161 e!581107))

(declare-fun res!688592 () Bool)

(assert (=> d!123161 (=> (not res!688592) (not e!581107))))

(assert (=> d!123161 (= res!688592 (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun lt!453624 () Unit!33570)

(declare-fun choose!121 (array!64672 (_ BitVec 32) (_ BitVec 64)) Unit!33570)

(assert (=> d!123161 (= lt!453624 (choose!121 (_keys!11273 thiss!1427) (index!41055 lt!453560) key!909))))

(assert (=> d!123161 (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000)))

(assert (=> d!123161 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) key!909) lt!453624)))

(declare-fun b!1029203 () Bool)

(assert (=> b!1029203 (= e!581107 (not (arrayContainsKey!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!123161 res!688592) b!1029203))

(declare-fun m!948513 () Bool)

(assert (=> d!123161 m!948513))

(assert (=> b!1029203 m!948413))

(declare-fun m!948515 () Bool)

(assert (=> b!1029203 m!948515))

(assert (=> b!1029108 d!123161))

(declare-fun d!123163 () Bool)

(declare-fun e!581110 () Bool)

(assert (=> d!123163 e!581110))

(declare-fun res!688595 () Bool)

(assert (=> d!123163 (=> (not res!688595) (not e!581110))))

(assert (=> d!123163 (= res!688595 (and (bvsge (index!41055 lt!453560) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453560) (size!31653 (_keys!11273 thiss!1427)))))))

(declare-fun lt!453627 () Unit!33570)

(declare-fun choose!25 (array!64672 (_ BitVec 32) (_ BitVec 32)) Unit!33570)

(assert (=> d!123163 (= lt!453627 (choose!25 (_keys!11273 thiss!1427) (index!41055 lt!453560) (mask!29862 thiss!1427)))))

(assert (=> d!123163 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123163 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11273 thiss!1427) (index!41055 lt!453560) (mask!29862 thiss!1427)) lt!453627)))

(declare-fun b!1029206 () Bool)

(assert (=> b!1029206 (= e!581110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (mask!29862 thiss!1427)))))

(assert (= (and d!123163 res!688595) b!1029206))

(declare-fun m!948517 () Bool)

(assert (=> d!123163 m!948517))

(assert (=> d!123163 m!948467))

(assert (=> b!1029206 m!948413))

(declare-fun m!948519 () Bool)

(assert (=> b!1029206 m!948519))

(assert (=> b!1029108 d!123163))

(declare-fun b!1029249 () Bool)

(declare-fun res!688615 () Bool)

(declare-fun e!581141 () Bool)

(assert (=> b!1029249 (=> (not res!688615) (not e!581141))))

(declare-fun e!581140 () Bool)

(assert (=> b!1029249 (= res!688615 e!581140)))

(declare-fun c!103898 () Bool)

(assert (=> b!1029249 (= c!103898 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1029250 () Bool)

(declare-fun e!581145 () Unit!33570)

(declare-fun Unit!33576 () Unit!33570)

(assert (=> b!1029250 (= e!581145 Unit!33576)))

(declare-fun bm!43450 () Bool)

(declare-fun call!43454 () ListLongMap!13787)

(declare-fun call!43453 () ListLongMap!13787)

(assert (=> bm!43450 (= call!43454 call!43453)))

(declare-fun b!1029251 () Bool)

(declare-fun e!581147 () ListLongMap!13787)

(declare-fun call!43456 () ListLongMap!13787)

(assert (=> b!1029251 (= e!581147 call!43456)))

(declare-fun b!1029252 () Bool)

(declare-fun e!581146 () Bool)

(declare-fun call!43457 () Bool)

(assert (=> b!1029252 (= e!581146 (not call!43457))))

(declare-fun d!123165 () Bool)

(assert (=> d!123165 e!581141))

(declare-fun res!688617 () Bool)

(assert (=> d!123165 (=> (not res!688617) (not e!581141))))

(assert (=> d!123165 (= res!688617 (or (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun lt!453683 () ListLongMap!13787)

(declare-fun lt!453672 () ListLongMap!13787)

(assert (=> d!123165 (= lt!453683 lt!453672)))

(declare-fun lt!453676 () Unit!33570)

(assert (=> d!123165 (= lt!453676 e!581145)))

(declare-fun c!103895 () Bool)

(declare-fun e!581144 () Bool)

(assert (=> d!123165 (= c!103895 e!581144)))

(declare-fun res!688622 () Bool)

(assert (=> d!123165 (=> (not res!688622) (not e!581144))))

(assert (=> d!123165 (= res!688622 (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun e!581137 () ListLongMap!13787)

(assert (=> d!123165 (= lt!453672 e!581137)))

(declare-fun c!103900 () Bool)

(assert (=> d!123165 (= c!103900 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123165 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123165 (= (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) lt!453683)))

(declare-fun b!1029253 () Bool)

(declare-fun call!43455 () ListLongMap!13787)

(declare-fun +!3061 (ListLongMap!13787 tuple2!15650) ListLongMap!13787)

(assert (=> b!1029253 (= e!581137 (+!3061 call!43455 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))

(declare-fun bm!43451 () Bool)

(assert (=> bm!43451 (= call!43457 (contains!5990 lt!453683 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029254 () Bool)

(declare-fun call!43458 () Bool)

(assert (=> b!1029254 (= e!581140 (not call!43458))))

(declare-fun bm!43452 () Bool)

(assert (=> bm!43452 (= call!43456 call!43455)))

(declare-fun b!1029255 () Bool)

(declare-fun e!581148 () Bool)

(assert (=> b!1029255 (= e!581140 e!581148)))

(declare-fun res!688620 () Bool)

(assert (=> b!1029255 (= res!688620 call!43458)))

(assert (=> b!1029255 (=> (not res!688620) (not e!581148))))

(declare-fun b!1029256 () Bool)

(declare-fun e!581139 () ListLongMap!13787)

(assert (=> b!1029256 (= e!581137 e!581139)))

(declare-fun c!103897 () Bool)

(assert (=> b!1029256 (= c!103897 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029257 () Bool)

(declare-fun apply!938 (ListLongMap!13787 (_ BitVec 64)) V!37293)

(assert (=> b!1029257 (= e!581148 (= (apply!938 lt!453683 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5951 thiss!1427)))))

(declare-fun bm!43453 () Bool)

(declare-fun call!43459 () ListLongMap!13787)

(declare-fun getCurrentListMapNoExtraKeys!3531 (array!64672 array!64674 (_ BitVec 32) (_ BitVec 32) V!37293 V!37293 (_ BitVec 32) Int) ListLongMap!13787)

(assert (=> bm!43453 (= call!43459 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun b!1029258 () Bool)

(declare-fun c!103896 () Bool)

(assert (=> b!1029258 (= c!103896 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029258 (= e!581139 e!581147)))

(declare-fun b!1029259 () Bool)

(declare-fun e!581149 () Bool)

(assert (=> b!1029259 (= e!581149 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029260 () Bool)

(declare-fun e!581138 () Bool)

(declare-fun e!581143 () Bool)

(assert (=> b!1029260 (= e!581138 e!581143)))

(declare-fun res!688621 () Bool)

(assert (=> b!1029260 (=> (not res!688621) (not e!581143))))

(assert (=> b!1029260 (= res!688621 (contains!5990 lt!453683 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029260 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun b!1029261 () Bool)

(declare-fun get!16367 (ValueCell!11454 V!37293) V!37293)

(assert (=> b!1029261 (= e!581143 (= (apply!938 lt!453683 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)) (get!16367 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31654 (_values!6138 thiss!1427))))))

(assert (=> b!1029261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun b!1029262 () Bool)

(declare-fun lt!453679 () Unit!33570)

(assert (=> b!1029262 (= e!581145 lt!453679)))

(declare-fun lt!453690 () ListLongMap!13787)

(assert (=> b!1029262 (= lt!453690 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453685 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453674 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453674 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453693 () Unit!33570)

(declare-fun addStillContains!626 (ListLongMap!13787 (_ BitVec 64) V!37293 (_ BitVec 64)) Unit!33570)

(assert (=> b!1029262 (= lt!453693 (addStillContains!626 lt!453690 lt!453685 (zeroValue!5951 thiss!1427) lt!453674))))

(assert (=> b!1029262 (contains!5990 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) lt!453674)))

(declare-fun lt!453686 () Unit!33570)

(assert (=> b!1029262 (= lt!453686 lt!453693)))

(declare-fun lt!453680 () ListLongMap!13787)

(assert (=> b!1029262 (= lt!453680 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453673 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453673 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453692 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453692 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453684 () Unit!33570)

(declare-fun addApplyDifferent!478 (ListLongMap!13787 (_ BitVec 64) V!37293 (_ BitVec 64)) Unit!33570)

(assert (=> b!1029262 (= lt!453684 (addApplyDifferent!478 lt!453680 lt!453673 (minValue!5951 thiss!1427) lt!453692))))

(assert (=> b!1029262 (= (apply!938 (+!3061 lt!453680 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) lt!453692) (apply!938 lt!453680 lt!453692))))

(declare-fun lt!453681 () Unit!33570)

(assert (=> b!1029262 (= lt!453681 lt!453684)))

(declare-fun lt!453689 () ListLongMap!13787)

(assert (=> b!1029262 (= lt!453689 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453688 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453688 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453677 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453677 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453691 () Unit!33570)

(assert (=> b!1029262 (= lt!453691 (addApplyDifferent!478 lt!453689 lt!453688 (zeroValue!5951 thiss!1427) lt!453677))))

(assert (=> b!1029262 (= (apply!938 (+!3061 lt!453689 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) lt!453677) (apply!938 lt!453689 lt!453677))))

(declare-fun lt!453675 () Unit!33570)

(assert (=> b!1029262 (= lt!453675 lt!453691)))

(declare-fun lt!453687 () ListLongMap!13787)

(assert (=> b!1029262 (= lt!453687 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453678 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453678 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453682 () (_ BitVec 64))

(assert (=> b!1029262 (= lt!453682 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029262 (= lt!453679 (addApplyDifferent!478 lt!453687 lt!453678 (minValue!5951 thiss!1427) lt!453682))))

(assert (=> b!1029262 (= (apply!938 (+!3061 lt!453687 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) lt!453682) (apply!938 lt!453687 lt!453682))))

(declare-fun b!1029263 () Bool)

(assert (=> b!1029263 (= e!581147 call!43454)))

(declare-fun b!1029264 () Bool)

(declare-fun res!688616 () Bool)

(assert (=> b!1029264 (=> (not res!688616) (not e!581141))))

(assert (=> b!1029264 (= res!688616 e!581138)))

(declare-fun res!688614 () Bool)

(assert (=> b!1029264 (=> res!688614 e!581138)))

(assert (=> b!1029264 (= res!688614 (not e!581149))))

(declare-fun res!688619 () Bool)

(assert (=> b!1029264 (=> (not res!688619) (not e!581149))))

(assert (=> b!1029264 (= res!688619 (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun b!1029265 () Bool)

(assert (=> b!1029265 (= e!581144 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029266 () Bool)

(declare-fun e!581142 () Bool)

(assert (=> b!1029266 (= e!581146 e!581142)))

(declare-fun res!688618 () Bool)

(assert (=> b!1029266 (= res!688618 call!43457)))

(assert (=> b!1029266 (=> (not res!688618) (not e!581142))))

(declare-fun bm!43454 () Bool)

(assert (=> bm!43454 (= call!43453 call!43459)))

(declare-fun b!1029267 () Bool)

(assert (=> b!1029267 (= e!581142 (= (apply!938 lt!453683 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5951 thiss!1427)))))

(declare-fun bm!43455 () Bool)

(assert (=> bm!43455 (= call!43455 (+!3061 (ite c!103900 call!43459 (ite c!103897 call!43453 call!43454)) (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun bm!43456 () Bool)

(assert (=> bm!43456 (= call!43458 (contains!5990 lt!453683 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029268 () Bool)

(assert (=> b!1029268 (= e!581141 e!581146)))

(declare-fun c!103899 () Bool)

(assert (=> b!1029268 (= c!103899 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029269 () Bool)

(assert (=> b!1029269 (= e!581139 call!43456)))

(assert (= (and d!123165 c!103900) b!1029253))

(assert (= (and d!123165 (not c!103900)) b!1029256))

(assert (= (and b!1029256 c!103897) b!1029269))

(assert (= (and b!1029256 (not c!103897)) b!1029258))

(assert (= (and b!1029258 c!103896) b!1029251))

(assert (= (and b!1029258 (not c!103896)) b!1029263))

(assert (= (or b!1029251 b!1029263) bm!43450))

(assert (= (or b!1029269 bm!43450) bm!43454))

(assert (= (or b!1029269 b!1029251) bm!43452))

(assert (= (or b!1029253 bm!43454) bm!43453))

(assert (= (or b!1029253 bm!43452) bm!43455))

(assert (= (and d!123165 res!688622) b!1029265))

(assert (= (and d!123165 c!103895) b!1029262))

(assert (= (and d!123165 (not c!103895)) b!1029250))

(assert (= (and d!123165 res!688617) b!1029264))

(assert (= (and b!1029264 res!688619) b!1029259))

(assert (= (and b!1029264 (not res!688614)) b!1029260))

(assert (= (and b!1029260 res!688621) b!1029261))

(assert (= (and b!1029264 res!688616) b!1029249))

(assert (= (and b!1029249 c!103898) b!1029255))

(assert (= (and b!1029249 (not c!103898)) b!1029254))

(assert (= (and b!1029255 res!688620) b!1029257))

(assert (= (or b!1029255 b!1029254) bm!43456))

(assert (= (and b!1029249 res!688615) b!1029268))

(assert (= (and b!1029268 c!103899) b!1029266))

(assert (= (and b!1029268 (not c!103899)) b!1029252))

(assert (= (and b!1029266 res!688618) b!1029267))

(assert (= (or b!1029266 b!1029252) bm!43451))

(declare-fun b_lambda!15887 () Bool)

(assert (=> (not b_lambda!15887) (not b!1029261)))

(assert (=> b!1029261 t!31025))

(declare-fun b_and!32943 () Bool)

(assert (= b_and!32941 (and (=> t!31025 result!14157) b_and!32943)))

(declare-fun m!948521 () Bool)

(assert (=> bm!43456 m!948521))

(declare-fun m!948523 () Bool)

(assert (=> b!1029260 m!948523))

(assert (=> b!1029260 m!948523))

(declare-fun m!948525 () Bool)

(assert (=> b!1029260 m!948525))

(declare-fun m!948527 () Bool)

(assert (=> bm!43451 m!948527))

(declare-fun m!948529 () Bool)

(assert (=> b!1029257 m!948529))

(declare-fun m!948531 () Bool)

(assert (=> b!1029262 m!948531))

(declare-fun m!948533 () Bool)

(assert (=> b!1029262 m!948533))

(declare-fun m!948535 () Bool)

(assert (=> b!1029262 m!948535))

(declare-fun m!948537 () Bool)

(assert (=> b!1029262 m!948537))

(declare-fun m!948539 () Bool)

(assert (=> b!1029262 m!948539))

(declare-fun m!948541 () Bool)

(assert (=> b!1029262 m!948541))

(assert (=> b!1029262 m!948539))

(assert (=> b!1029262 m!948531))

(assert (=> b!1029262 m!948535))

(declare-fun m!948543 () Bool)

(assert (=> b!1029262 m!948543))

(declare-fun m!948545 () Bool)

(assert (=> b!1029262 m!948545))

(declare-fun m!948547 () Bool)

(assert (=> b!1029262 m!948547))

(declare-fun m!948549 () Bool)

(assert (=> b!1029262 m!948549))

(declare-fun m!948551 () Bool)

(assert (=> b!1029262 m!948551))

(declare-fun m!948553 () Bool)

(assert (=> b!1029262 m!948553))

(declare-fun m!948555 () Bool)

(assert (=> b!1029262 m!948555))

(declare-fun m!948557 () Bool)

(assert (=> b!1029262 m!948557))

(declare-fun m!948559 () Bool)

(assert (=> b!1029262 m!948559))

(declare-fun m!948561 () Bool)

(assert (=> b!1029262 m!948561))

(assert (=> b!1029262 m!948549))

(assert (=> b!1029262 m!948523))

(declare-fun m!948563 () Bool)

(assert (=> b!1029267 m!948563))

(assert (=> d!123165 m!948467))

(declare-fun m!948565 () Bool)

(assert (=> b!1029253 m!948565))

(assert (=> b!1029259 m!948523))

(assert (=> b!1029259 m!948523))

(declare-fun m!948567 () Bool)

(assert (=> b!1029259 m!948567))

(declare-fun m!948569 () Bool)

(assert (=> bm!43455 m!948569))

(assert (=> b!1029265 m!948523))

(assert (=> b!1029265 m!948523))

(assert (=> b!1029265 m!948567))

(assert (=> bm!43453 m!948543))

(assert (=> b!1029261 m!948523))

(declare-fun m!948571 () Bool)

(assert (=> b!1029261 m!948571))

(declare-fun m!948573 () Bool)

(assert (=> b!1029261 m!948573))

(assert (=> b!1029261 m!948405))

(declare-fun m!948575 () Bool)

(assert (=> b!1029261 m!948575))

(assert (=> b!1029261 m!948573))

(assert (=> b!1029261 m!948523))

(assert (=> b!1029261 m!948405))

(assert (=> b!1029108 d!123165))

(declare-fun b!1029270 () Bool)

(declare-fun res!688624 () Bool)

(declare-fun e!581154 () Bool)

(assert (=> b!1029270 (=> (not res!688624) (not e!581154))))

(declare-fun e!581153 () Bool)

(assert (=> b!1029270 (= res!688624 e!581153)))

(declare-fun c!103904 () Bool)

(assert (=> b!1029270 (= c!103904 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1029271 () Bool)

(declare-fun e!581158 () Unit!33570)

(declare-fun Unit!33577 () Unit!33570)

(assert (=> b!1029271 (= e!581158 Unit!33577)))

(declare-fun bm!43457 () Bool)

(declare-fun call!43461 () ListLongMap!13787)

(declare-fun call!43460 () ListLongMap!13787)

(assert (=> bm!43457 (= call!43461 call!43460)))

(declare-fun b!1029272 () Bool)

(declare-fun e!581160 () ListLongMap!13787)

(declare-fun call!43463 () ListLongMap!13787)

(assert (=> b!1029272 (= e!581160 call!43463)))

(declare-fun b!1029273 () Bool)

(declare-fun e!581159 () Bool)

(declare-fun call!43464 () Bool)

(assert (=> b!1029273 (= e!581159 (not call!43464))))

(declare-fun d!123167 () Bool)

(assert (=> d!123167 e!581154))

(declare-fun res!688626 () Bool)

(assert (=> d!123167 (=> (not res!688626) (not e!581154))))

(assert (=> d!123167 (= res!688626 (or (bvsge #b00000000000000000000000000000000 (size!31653 lt!453561)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))))

(declare-fun lt!453705 () ListLongMap!13787)

(declare-fun lt!453694 () ListLongMap!13787)

(assert (=> d!123167 (= lt!453705 lt!453694)))

(declare-fun lt!453698 () Unit!33570)

(assert (=> d!123167 (= lt!453698 e!581158)))

(declare-fun c!103901 () Bool)

(declare-fun e!581157 () Bool)

(assert (=> d!123167 (= c!103901 e!581157)))

(declare-fun res!688631 () Bool)

(assert (=> d!123167 (=> (not res!688631) (not e!581157))))

(assert (=> d!123167 (= res!688631 (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun e!581150 () ListLongMap!13787)

(assert (=> d!123167 (= lt!453694 e!581150)))

(declare-fun c!103906 () Bool)

(assert (=> d!123167 (= c!103906 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123167 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123167 (= (getCurrentListMap!3916 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) lt!453705)))

(declare-fun b!1029274 () Bool)

(declare-fun call!43462 () ListLongMap!13787)

(assert (=> b!1029274 (= e!581150 (+!3061 call!43462 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))

(declare-fun bm!43458 () Bool)

(assert (=> bm!43458 (= call!43464 (contains!5990 lt!453705 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029275 () Bool)

(declare-fun call!43465 () Bool)

(assert (=> b!1029275 (= e!581153 (not call!43465))))

(declare-fun bm!43459 () Bool)

(assert (=> bm!43459 (= call!43463 call!43462)))

(declare-fun b!1029276 () Bool)

(declare-fun e!581161 () Bool)

(assert (=> b!1029276 (= e!581153 e!581161)))

(declare-fun res!688629 () Bool)

(assert (=> b!1029276 (= res!688629 call!43465)))

(assert (=> b!1029276 (=> (not res!688629) (not e!581161))))

(declare-fun b!1029277 () Bool)

(declare-fun e!581152 () ListLongMap!13787)

(assert (=> b!1029277 (= e!581150 e!581152)))

(declare-fun c!103903 () Bool)

(assert (=> b!1029277 (= c!103903 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029278 () Bool)

(assert (=> b!1029278 (= e!581161 (= (apply!938 lt!453705 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5951 thiss!1427)))))

(declare-fun call!43466 () ListLongMap!13787)

(declare-fun bm!43460 () Bool)

(assert (=> bm!43460 (= call!43466 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun b!1029279 () Bool)

(declare-fun c!103902 () Bool)

(assert (=> b!1029279 (= c!103902 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029279 (= e!581152 e!581160)))

(declare-fun b!1029280 () Bool)

(declare-fun e!581162 () Bool)

(assert (=> b!1029280 (= e!581162 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029281 () Bool)

(declare-fun e!581151 () Bool)

(declare-fun e!581156 () Bool)

(assert (=> b!1029281 (= e!581151 e!581156)))

(declare-fun res!688630 () Bool)

(assert (=> b!1029281 (=> (not res!688630) (not e!581156))))

(assert (=> b!1029281 (= res!688630 (contains!5990 lt!453705 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (=> b!1029281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun b!1029282 () Bool)

(assert (=> b!1029282 (= e!581156 (= (apply!938 lt!453705 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) (get!16367 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029282 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31654 lt!453555)))))

(assert (=> b!1029282 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun b!1029283 () Bool)

(declare-fun lt!453701 () Unit!33570)

(assert (=> b!1029283 (= e!581158 lt!453701)))

(declare-fun lt!453712 () ListLongMap!13787)

(assert (=> b!1029283 (= lt!453712 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453707 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453707 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453696 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453696 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(declare-fun lt!453715 () Unit!33570)

(assert (=> b!1029283 (= lt!453715 (addStillContains!626 lt!453712 lt!453707 (zeroValue!5951 thiss!1427) lt!453696))))

(assert (=> b!1029283 (contains!5990 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) lt!453696)))

(declare-fun lt!453708 () Unit!33570)

(assert (=> b!1029283 (= lt!453708 lt!453715)))

(declare-fun lt!453702 () ListLongMap!13787)

(assert (=> b!1029283 (= lt!453702 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453695 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453695 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453714 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453714 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(declare-fun lt!453706 () Unit!33570)

(assert (=> b!1029283 (= lt!453706 (addApplyDifferent!478 lt!453702 lt!453695 (minValue!5951 thiss!1427) lt!453714))))

(assert (=> b!1029283 (= (apply!938 (+!3061 lt!453702 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) lt!453714) (apply!938 lt!453702 lt!453714))))

(declare-fun lt!453703 () Unit!33570)

(assert (=> b!1029283 (= lt!453703 lt!453706)))

(declare-fun lt!453711 () ListLongMap!13787)

(assert (=> b!1029283 (= lt!453711 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453710 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453710 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453699 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453699 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(declare-fun lt!453713 () Unit!33570)

(assert (=> b!1029283 (= lt!453713 (addApplyDifferent!478 lt!453711 lt!453710 (zeroValue!5951 thiss!1427) lt!453699))))

(assert (=> b!1029283 (= (apply!938 (+!3061 lt!453711 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) lt!453699) (apply!938 lt!453711 lt!453699))))

(declare-fun lt!453697 () Unit!33570)

(assert (=> b!1029283 (= lt!453697 lt!453713)))

(declare-fun lt!453709 () ListLongMap!13787)

(assert (=> b!1029283 (= lt!453709 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453700 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453700 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453704 () (_ BitVec 64))

(assert (=> b!1029283 (= lt!453704 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(assert (=> b!1029283 (= lt!453701 (addApplyDifferent!478 lt!453709 lt!453700 (minValue!5951 thiss!1427) lt!453704))))

(assert (=> b!1029283 (= (apply!938 (+!3061 lt!453709 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) lt!453704) (apply!938 lt!453709 lt!453704))))

(declare-fun b!1029284 () Bool)

(assert (=> b!1029284 (= e!581160 call!43461)))

(declare-fun b!1029285 () Bool)

(declare-fun res!688625 () Bool)

(assert (=> b!1029285 (=> (not res!688625) (not e!581154))))

(assert (=> b!1029285 (= res!688625 e!581151)))

(declare-fun res!688623 () Bool)

(assert (=> b!1029285 (=> res!688623 e!581151)))

(assert (=> b!1029285 (= res!688623 (not e!581162))))

(declare-fun res!688628 () Bool)

(assert (=> b!1029285 (=> (not res!688628) (not e!581162))))

(assert (=> b!1029285 (= res!688628 (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun b!1029286 () Bool)

(assert (=> b!1029286 (= e!581157 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029287 () Bool)

(declare-fun e!581155 () Bool)

(assert (=> b!1029287 (= e!581159 e!581155)))

(declare-fun res!688627 () Bool)

(assert (=> b!1029287 (= res!688627 call!43464)))

(assert (=> b!1029287 (=> (not res!688627) (not e!581155))))

(declare-fun bm!43461 () Bool)

(assert (=> bm!43461 (= call!43460 call!43466)))

(declare-fun b!1029288 () Bool)

(assert (=> b!1029288 (= e!581155 (= (apply!938 lt!453705 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5951 thiss!1427)))))

(declare-fun bm!43462 () Bool)

(assert (=> bm!43462 (= call!43462 (+!3061 (ite c!103906 call!43466 (ite c!103903 call!43460 call!43461)) (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun bm!43463 () Bool)

(assert (=> bm!43463 (= call!43465 (contains!5990 lt!453705 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029289 () Bool)

(assert (=> b!1029289 (= e!581154 e!581159)))

(declare-fun c!103905 () Bool)

(assert (=> b!1029289 (= c!103905 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029290 () Bool)

(assert (=> b!1029290 (= e!581152 call!43463)))

(assert (= (and d!123167 c!103906) b!1029274))

(assert (= (and d!123167 (not c!103906)) b!1029277))

(assert (= (and b!1029277 c!103903) b!1029290))

(assert (= (and b!1029277 (not c!103903)) b!1029279))

(assert (= (and b!1029279 c!103902) b!1029272))

(assert (= (and b!1029279 (not c!103902)) b!1029284))

(assert (= (or b!1029272 b!1029284) bm!43457))

(assert (= (or b!1029290 bm!43457) bm!43461))

(assert (= (or b!1029290 b!1029272) bm!43459))

(assert (= (or b!1029274 bm!43461) bm!43460))

(assert (= (or b!1029274 bm!43459) bm!43462))

(assert (= (and d!123167 res!688631) b!1029286))

(assert (= (and d!123167 c!103901) b!1029283))

(assert (= (and d!123167 (not c!103901)) b!1029271))

(assert (= (and d!123167 res!688626) b!1029285))

(assert (= (and b!1029285 res!688628) b!1029280))

(assert (= (and b!1029285 (not res!688623)) b!1029281))

(assert (= (and b!1029281 res!688630) b!1029282))

(assert (= (and b!1029285 res!688625) b!1029270))

(assert (= (and b!1029270 c!103904) b!1029276))

(assert (= (and b!1029270 (not c!103904)) b!1029275))

(assert (= (and b!1029276 res!688629) b!1029278))

(assert (= (or b!1029276 b!1029275) bm!43463))

(assert (= (and b!1029270 res!688624) b!1029289))

(assert (= (and b!1029289 c!103905) b!1029287))

(assert (= (and b!1029289 (not c!103905)) b!1029273))

(assert (= (and b!1029287 res!688627) b!1029288))

(assert (= (or b!1029287 b!1029273) bm!43458))

(declare-fun b_lambda!15889 () Bool)

(assert (=> (not b_lambda!15889) (not b!1029282)))

(assert (=> b!1029282 t!31025))

(declare-fun b_and!32945 () Bool)

(assert (= b_and!32943 (and (=> t!31025 result!14157) b_and!32945)))

(declare-fun m!948577 () Bool)

(assert (=> bm!43463 m!948577))

(assert (=> b!1029281 m!948489))

(assert (=> b!1029281 m!948489))

(declare-fun m!948579 () Bool)

(assert (=> b!1029281 m!948579))

(declare-fun m!948581 () Bool)

(assert (=> bm!43458 m!948581))

(declare-fun m!948583 () Bool)

(assert (=> b!1029278 m!948583))

(declare-fun m!948585 () Bool)

(assert (=> b!1029283 m!948585))

(declare-fun m!948587 () Bool)

(assert (=> b!1029283 m!948587))

(declare-fun m!948589 () Bool)

(assert (=> b!1029283 m!948589))

(declare-fun m!948591 () Bool)

(assert (=> b!1029283 m!948591))

(declare-fun m!948593 () Bool)

(assert (=> b!1029283 m!948593))

(declare-fun m!948595 () Bool)

(assert (=> b!1029283 m!948595))

(assert (=> b!1029283 m!948593))

(assert (=> b!1029283 m!948585))

(assert (=> b!1029283 m!948589))

(declare-fun m!948597 () Bool)

(assert (=> b!1029283 m!948597))

(declare-fun m!948599 () Bool)

(assert (=> b!1029283 m!948599))

(declare-fun m!948601 () Bool)

(assert (=> b!1029283 m!948601))

(declare-fun m!948603 () Bool)

(assert (=> b!1029283 m!948603))

(declare-fun m!948605 () Bool)

(assert (=> b!1029283 m!948605))

(declare-fun m!948607 () Bool)

(assert (=> b!1029283 m!948607))

(declare-fun m!948609 () Bool)

(assert (=> b!1029283 m!948609))

(declare-fun m!948611 () Bool)

(assert (=> b!1029283 m!948611))

(declare-fun m!948613 () Bool)

(assert (=> b!1029283 m!948613))

(declare-fun m!948615 () Bool)

(assert (=> b!1029283 m!948615))

(assert (=> b!1029283 m!948603))

(assert (=> b!1029283 m!948489))

(declare-fun m!948617 () Bool)

(assert (=> b!1029288 m!948617))

(assert (=> d!123167 m!948467))

(declare-fun m!948619 () Bool)

(assert (=> b!1029274 m!948619))

(assert (=> b!1029280 m!948489))

(assert (=> b!1029280 m!948489))

(assert (=> b!1029280 m!948511))

(declare-fun m!948621 () Bool)

(assert (=> bm!43462 m!948621))

(assert (=> b!1029286 m!948489))

(assert (=> b!1029286 m!948489))

(assert (=> b!1029286 m!948511))

(assert (=> bm!43460 m!948597))

(assert (=> b!1029282 m!948489))

(declare-fun m!948623 () Bool)

(assert (=> b!1029282 m!948623))

(declare-fun m!948625 () Bool)

(assert (=> b!1029282 m!948625))

(assert (=> b!1029282 m!948405))

(declare-fun m!948627 () Bool)

(assert (=> b!1029282 m!948627))

(assert (=> b!1029282 m!948625))

(assert (=> b!1029282 m!948489))

(assert (=> b!1029282 m!948405))

(assert (=> b!1029108 d!123167))

(declare-fun b!1029301 () Bool)

(declare-fun e!581173 () Bool)

(declare-fun call!43469 () Bool)

(assert (=> b!1029301 (= e!581173 call!43469)))

(declare-fun b!1029302 () Bool)

(declare-fun e!581171 () Bool)

(declare-fun e!581172 () Bool)

(assert (=> b!1029302 (= e!581171 e!581172)))

(declare-fun res!688639 () Bool)

(assert (=> b!1029302 (=> (not res!688639) (not e!581172))))

(declare-fun e!581174 () Bool)

(assert (=> b!1029302 (= res!688639 (not e!581174))))

(declare-fun res!688640 () Bool)

(assert (=> b!1029302 (=> (not res!688640) (not e!581174))))

(assert (=> b!1029302 (= res!688640 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029303 () Bool)

(assert (=> b!1029303 (= e!581173 call!43469)))

(declare-fun b!1029304 () Bool)

(assert (=> b!1029304 (= e!581172 e!581173)))

(declare-fun c!103909 () Bool)

(assert (=> b!1029304 (= c!103909 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun d!123169 () Bool)

(declare-fun res!688638 () Bool)

(assert (=> d!123169 (=> res!688638 e!581171)))

(assert (=> d!123169 (= res!688638 (bvsge #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(assert (=> d!123169 (= (arrayNoDuplicates!0 lt!453561 #b00000000000000000000000000000000 Nil!21927) e!581171)))

(declare-fun b!1029305 () Bool)

(declare-fun contains!5991 (List!21930 (_ BitVec 64)) Bool)

(assert (=> b!1029305 (= e!581174 (contains!5991 Nil!21927 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun bm!43466 () Bool)

(assert (=> bm!43466 (= call!43469 (arrayNoDuplicates!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103909 (Cons!21926 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) Nil!21927) Nil!21927)))))

(assert (= (and d!123169 (not res!688638)) b!1029302))

(assert (= (and b!1029302 res!688640) b!1029305))

(assert (= (and b!1029302 res!688639) b!1029304))

(assert (= (and b!1029304 c!103909) b!1029301))

(assert (= (and b!1029304 (not c!103909)) b!1029303))

(assert (= (or b!1029301 b!1029303) bm!43466))

(assert (=> b!1029302 m!948489))

(assert (=> b!1029302 m!948489))

(assert (=> b!1029302 m!948511))

(assert (=> b!1029304 m!948489))

(assert (=> b!1029304 m!948489))

(assert (=> b!1029304 m!948511))

(assert (=> b!1029305 m!948489))

(assert (=> b!1029305 m!948489))

(declare-fun m!948629 () Bool)

(assert (=> b!1029305 m!948629))

(assert (=> bm!43466 m!948489))

(declare-fun m!948631 () Bool)

(assert (=> bm!43466 m!948631))

(assert (=> b!1029108 d!123169))

(declare-fun bm!43469 () Bool)

(declare-fun call!43472 () (_ BitVec 32))

(assert (=> bm!43469 (= call!43472 (arrayCountValidKeys!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun d!123171 () Bool)

(declare-fun lt!453718 () (_ BitVec 32))

(assert (=> d!123171 (and (bvsge lt!453718 #b00000000000000000000000000000000) (bvsle lt!453718 (bvsub (size!31653 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun e!581180 () (_ BitVec 32))

(assert (=> d!123171 (= lt!453718 e!581180)))

(declare-fun c!103915 () Bool)

(assert (=> d!123171 (= c!103915 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123171 (and (bvsle #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31653 (_keys!11273 thiss!1427)) (size!31653 lt!453561)))))

(assert (=> d!123171 (= (arrayCountValidKeys!0 lt!453561 #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) lt!453718)))

(declare-fun b!1029314 () Bool)

(declare-fun e!581179 () (_ BitVec 32))

(assert (=> b!1029314 (= e!581179 call!43472)))

(declare-fun b!1029315 () Bool)

(assert (=> b!1029315 (= e!581179 (bvadd #b00000000000000000000000000000001 call!43472))))

(declare-fun b!1029316 () Bool)

(assert (=> b!1029316 (= e!581180 e!581179)))

(declare-fun c!103914 () Bool)

(assert (=> b!1029316 (= c!103914 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029317 () Bool)

(assert (=> b!1029317 (= e!581180 #b00000000000000000000000000000000)))

(assert (= (and d!123171 c!103915) b!1029317))

(assert (= (and d!123171 (not c!103915)) b!1029316))

(assert (= (and b!1029316 c!103914) b!1029315))

(assert (= (and b!1029316 (not c!103914)) b!1029314))

(assert (= (or b!1029315 b!1029314) bm!43469))

(declare-fun m!948633 () Bool)

(assert (=> bm!43469 m!948633))

(assert (=> b!1029316 m!948489))

(assert (=> b!1029316 m!948489))

(assert (=> b!1029316 m!948511))

(assert (=> b!1029108 d!123171))

(declare-fun bm!43470 () Bool)

(declare-fun call!43473 () (_ BitVec 32))

(assert (=> bm!43470 (= call!43473 (arrayCountValidKeys!0 (_keys!11273 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun d!123173 () Bool)

(declare-fun lt!453719 () (_ BitVec 32))

(assert (=> d!123173 (and (bvsge lt!453719 #b00000000000000000000000000000000) (bvsle lt!453719 (bvsub (size!31653 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!581182 () (_ BitVec 32))

(assert (=> d!123173 (= lt!453719 e!581182)))

(declare-fun c!103917 () Bool)

(assert (=> d!123173 (= c!103917 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123173 (and (bvsle #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31653 (_keys!11273 thiss!1427)) (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123173 (= (arrayCountValidKeys!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) lt!453719)))

(declare-fun b!1029318 () Bool)

(declare-fun e!581181 () (_ BitVec 32))

(assert (=> b!1029318 (= e!581181 call!43473)))

(declare-fun b!1029319 () Bool)

(assert (=> b!1029319 (= e!581181 (bvadd #b00000000000000000000000000000001 call!43473))))

(declare-fun b!1029320 () Bool)

(assert (=> b!1029320 (= e!581182 e!581181)))

(declare-fun c!103916 () Bool)

(assert (=> b!1029320 (= c!103916 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029321 () Bool)

(assert (=> b!1029321 (= e!581182 #b00000000000000000000000000000000)))

(assert (= (and d!123173 c!103917) b!1029321))

(assert (= (and d!123173 (not c!103917)) b!1029320))

(assert (= (and b!1029320 c!103916) b!1029319))

(assert (= (and b!1029320 (not c!103916)) b!1029318))

(assert (= (or b!1029319 b!1029318) bm!43470))

(declare-fun m!948635 () Bool)

(assert (=> bm!43470 m!948635))

(assert (=> b!1029320 m!948523))

(assert (=> b!1029320 m!948523))

(assert (=> b!1029320 m!948567))

(assert (=> b!1029108 d!123173))

(declare-fun d!123175 () Bool)

(assert (=> d!123175 (= (validMask!0 (mask!29862 (_2!7834 lt!453553))) (and (or (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000000000111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000000001111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000000011111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000000111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000001111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000011111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000000111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000001111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000011111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000000111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000001111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000011111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000000111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000001111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000011111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000000111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000001111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000011111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000000111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000001111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000011111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000000111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000001111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000011111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00000111111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00001111111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00011111111111111111111111111111) (= (mask!29862 (_2!7834 lt!453553)) #b00111111111111111111111111111111)) (bvsle (mask!29862 (_2!7834 lt!453553)) #b00111111111111111111111111111111)))))

(assert (=> b!1029108 d!123175))

(declare-fun mapIsEmpty!37921 () Bool)

(declare-fun mapRes!37921 () Bool)

(assert (=> mapIsEmpty!37921 mapRes!37921))

(declare-fun condMapEmpty!37921 () Bool)

(declare-fun mapDefault!37921 () ValueCell!11454)

(assert (=> mapNonEmpty!37915 (= condMapEmpty!37921 (= mapRest!37915 ((as const (Array (_ BitVec 32) ValueCell!11454)) mapDefault!37921)))))

(declare-fun e!581188 () Bool)

(assert (=> mapNonEmpty!37915 (= tp!72845 (and e!581188 mapRes!37921))))

(declare-fun mapNonEmpty!37921 () Bool)

(declare-fun tp!72855 () Bool)

(declare-fun e!581187 () Bool)

(assert (=> mapNonEmpty!37921 (= mapRes!37921 (and tp!72855 e!581187))))

(declare-fun mapKey!37921 () (_ BitVec 32))

(declare-fun mapRest!37921 () (Array (_ BitVec 32) ValueCell!11454))

(declare-fun mapValue!37921 () ValueCell!11454)

(assert (=> mapNonEmpty!37921 (= mapRest!37915 (store mapRest!37921 mapKey!37921 mapValue!37921))))

(declare-fun b!1029329 () Bool)

(assert (=> b!1029329 (= e!581188 tp_is_empty!24315)))

(declare-fun b!1029328 () Bool)

(assert (=> b!1029328 (= e!581187 tp_is_empty!24315)))

(assert (= (and mapNonEmpty!37915 condMapEmpty!37921) mapIsEmpty!37921))

(assert (= (and mapNonEmpty!37915 (not condMapEmpty!37921)) mapNonEmpty!37921))

(assert (= (and mapNonEmpty!37921 ((_ is ValueCellFull!11454) mapValue!37921)) b!1029328))

(assert (= (and mapNonEmpty!37915 ((_ is ValueCellFull!11454) mapDefault!37921)) b!1029329))

(declare-fun m!948637 () Bool)

(assert (=> mapNonEmpty!37921 m!948637))

(declare-fun b_lambda!15891 () Bool)

(assert (= b_lambda!15887 (or (and b!1029104 b_free!20595) b_lambda!15891)))

(declare-fun b_lambda!15893 () Bool)

(assert (= b_lambda!15885 (or (and b!1029104 b_free!20595) b_lambda!15893)))

(declare-fun b_lambda!15895 () Bool)

(assert (= b_lambda!15889 (or (and b!1029104 b_free!20595) b_lambda!15895)))

(check-sat (not b!1029316) (not d!123163) (not b!1029167) (not d!123147) (not d!123165) (not d!123141) (not b!1029305) (not b!1029304) (not b!1029278) (not b!1029280) (not b!1029257) (not b!1029302) (not bm!43462) (not b!1029267) (not b!1029163) (not bm!43435) (not bm!43456) (not b!1029188) (not b!1029203) (not b!1029206) (not bm!43469) (not b_lambda!15891) (not b!1029274) (not d!123161) (not bm!43466) (not b!1029265) b_and!32945 (not b!1029286) (not b!1029164) (not bm!43463) (not bm!43451) (not bm!43460) (not b!1029320) (not b_lambda!15883) (not b_lambda!15895) (not b!1029281) (not b!1029253) (not d!123149) (not d!123153) (not b_lambda!15893) (not bm!43470) (not b!1029261) (not b!1029170) (not d!123167) (not b!1029260) (not d!123157) (not b!1029262) (not bm!43458) (not bm!43455) (not b!1029282) (not b!1029198) (not d!123151) (not b!1029186) (not b!1029152) (not bm!43453) (not b!1029283) tp_is_empty!24315 (not b!1029185) (not mapNonEmpty!37921) (not b_next!20595) (not b!1029197) (not b!1029288) (not b!1029259) (not b!1029162) (not b!1029176))
(check-sat b_and!32945 (not b_next!20595))
(get-model)

(declare-fun bm!43473 () Bool)

(declare-fun call!43476 () ListLongMap!13787)

(assert (=> bm!43473 (= call!43476 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6115 thiss!1427)))))

(declare-fun b!1029354 () Bool)

(declare-fun e!581206 () Bool)

(declare-fun e!581203 () Bool)

(assert (=> b!1029354 (= e!581206 e!581203)))

(assert (=> b!1029354 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun res!688652 () Bool)

(declare-fun lt!453740 () ListLongMap!13787)

(assert (=> b!1029354 (= res!688652 (contains!5990 lt!453740 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (=> b!1029354 (=> (not res!688652) (not e!581203))))

(declare-fun b!1029355 () Bool)

(declare-fun e!581209 () ListLongMap!13787)

(assert (=> b!1029355 (= e!581209 (ListLongMap!13788 Nil!21926))))

(declare-fun b!1029356 () Bool)

(declare-fun e!581205 () Bool)

(assert (=> b!1029356 (= e!581205 e!581206)))

(declare-fun c!103926 () Bool)

(declare-fun e!581207 () Bool)

(assert (=> b!1029356 (= c!103926 e!581207)))

(declare-fun res!688649 () Bool)

(assert (=> b!1029356 (=> (not res!688649) (not e!581207))))

(assert (=> b!1029356 (= res!688649 (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun b!1029357 () Bool)

(assert (=> b!1029357 (= e!581207 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (=> b!1029357 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1029358 () Bool)

(declare-fun e!581204 () Bool)

(declare-fun isEmpty!927 (ListLongMap!13787) Bool)

(assert (=> b!1029358 (= e!581204 (isEmpty!927 lt!453740))))

(declare-fun b!1029359 () Bool)

(declare-fun res!688651 () Bool)

(assert (=> b!1029359 (=> (not res!688651) (not e!581205))))

(assert (=> b!1029359 (= res!688651 (not (contains!5990 lt!453740 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029360 () Bool)

(declare-fun e!581208 () ListLongMap!13787)

(assert (=> b!1029360 (= e!581208 call!43476)))

(declare-fun b!1029361 () Bool)

(assert (=> b!1029361 (= e!581206 e!581204)))

(declare-fun c!103927 () Bool)

(assert (=> b!1029361 (= c!103927 (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(declare-fun b!1029362 () Bool)

(assert (=> b!1029362 (= e!581204 (= lt!453740 (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6115 thiss!1427))))))

(declare-fun d!123177 () Bool)

(assert (=> d!123177 e!581205))

(declare-fun res!688650 () Bool)

(assert (=> d!123177 (=> (not res!688650) (not e!581205))))

(assert (=> d!123177 (= res!688650 (not (contains!5990 lt!453740 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123177 (= lt!453740 e!581209)))

(declare-fun c!103929 () Bool)

(assert (=> d!123177 (= c!103929 (bvsge #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(assert (=> d!123177 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123177 (= (getCurrentListMapNoExtraKeys!3531 lt!453561 lt!453555 (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) lt!453740)))

(declare-fun b!1029363 () Bool)

(assert (=> b!1029363 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 lt!453561)))))

(assert (=> b!1029363 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31654 lt!453555)))))

(assert (=> b!1029363 (= e!581203 (= (apply!938 lt!453740 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) (get!16367 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1029364 () Bool)

(assert (=> b!1029364 (= e!581209 e!581208)))

(declare-fun c!103928 () Bool)

(assert (=> b!1029364 (= c!103928 (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029365 () Bool)

(declare-fun lt!453736 () Unit!33570)

(declare-fun lt!453737 () Unit!33570)

(assert (=> b!1029365 (= lt!453736 lt!453737)))

(declare-fun lt!453739 () V!37293)

(declare-fun lt!453738 () ListLongMap!13787)

(declare-fun lt!453735 () (_ BitVec 64))

(declare-fun lt!453734 () (_ BitVec 64))

(assert (=> b!1029365 (not (contains!5990 (+!3061 lt!453738 (tuple2!15651 lt!453735 lt!453739)) lt!453734))))

(declare-fun addStillNotContains!242 (ListLongMap!13787 (_ BitVec 64) V!37293 (_ BitVec 64)) Unit!33570)

(assert (=> b!1029365 (= lt!453737 (addStillNotContains!242 lt!453738 lt!453735 lt!453739 lt!453734))))

(assert (=> b!1029365 (= lt!453734 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1029365 (= lt!453739 (get!16367 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1029365 (= lt!453735 (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))

(assert (=> b!1029365 (= lt!453738 call!43476)))

(assert (=> b!1029365 (= e!581208 (+!3061 call!43476 (tuple2!15651 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) (get!16367 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!123177 c!103929) b!1029355))

(assert (= (and d!123177 (not c!103929)) b!1029364))

(assert (= (and b!1029364 c!103928) b!1029365))

(assert (= (and b!1029364 (not c!103928)) b!1029360))

(assert (= (or b!1029365 b!1029360) bm!43473))

(assert (= (and d!123177 res!688650) b!1029359))

(assert (= (and b!1029359 res!688651) b!1029356))

(assert (= (and b!1029356 res!688649) b!1029357))

(assert (= (and b!1029356 c!103926) b!1029354))

(assert (= (and b!1029356 (not c!103926)) b!1029361))

(assert (= (and b!1029354 res!688652) b!1029363))

(assert (= (and b!1029361 c!103927) b!1029362))

(assert (= (and b!1029361 (not c!103927)) b!1029358))

(declare-fun b_lambda!15897 () Bool)

(assert (=> (not b_lambda!15897) (not b!1029363)))

(assert (=> b!1029363 t!31025))

(declare-fun b_and!32947 () Bool)

(assert (= b_and!32945 (and (=> t!31025 result!14157) b_and!32947)))

(declare-fun b_lambda!15899 () Bool)

(assert (=> (not b_lambda!15899) (not b!1029365)))

(assert (=> b!1029365 t!31025))

(declare-fun b_and!32949 () Bool)

(assert (= b_and!32947 (and (=> t!31025 result!14157) b_and!32949)))

(assert (=> b!1029357 m!948489))

(assert (=> b!1029357 m!948489))

(assert (=> b!1029357 m!948511))

(declare-fun m!948639 () Bool)

(assert (=> b!1029358 m!948639))

(assert (=> b!1029364 m!948489))

(assert (=> b!1029364 m!948489))

(assert (=> b!1029364 m!948511))

(declare-fun m!948641 () Bool)

(assert (=> bm!43473 m!948641))

(assert (=> b!1029354 m!948489))

(assert (=> b!1029354 m!948489))

(declare-fun m!948643 () Bool)

(assert (=> b!1029354 m!948643))

(declare-fun m!948645 () Bool)

(assert (=> b!1029365 m!948645))

(assert (=> b!1029365 m!948405))

(declare-fun m!948647 () Bool)

(assert (=> b!1029365 m!948647))

(declare-fun m!948649 () Bool)

(assert (=> b!1029365 m!948649))

(assert (=> b!1029365 m!948625))

(assert (=> b!1029365 m!948405))

(assert (=> b!1029365 m!948627))

(assert (=> b!1029365 m!948489))

(assert (=> b!1029365 m!948625))

(assert (=> b!1029365 m!948645))

(declare-fun m!948651 () Bool)

(assert (=> b!1029365 m!948651))

(assert (=> b!1029363 m!948405))

(assert (=> b!1029363 m!948489))

(declare-fun m!948653 () Bool)

(assert (=> b!1029363 m!948653))

(assert (=> b!1029363 m!948625))

(assert (=> b!1029363 m!948405))

(assert (=> b!1029363 m!948627))

(assert (=> b!1029363 m!948489))

(assert (=> b!1029363 m!948625))

(declare-fun m!948655 () Bool)

(assert (=> b!1029359 m!948655))

(declare-fun m!948657 () Bool)

(assert (=> d!123177 m!948657))

(assert (=> d!123177 m!948467))

(assert (=> b!1029362 m!948641))

(assert (=> bm!43460 d!123177))

(declare-fun d!123179 () Bool)

(declare-fun res!688653 () Bool)

(declare-fun e!581210 () Bool)

(assert (=> d!123179 (=> res!688653 e!581210)))

(assert (=> d!123179 (= res!688653 (= (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123179 (= (arrayContainsKey!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) key!909 #b00000000000000000000000000000000) e!581210)))

(declare-fun b!1029366 () Bool)

(declare-fun e!581211 () Bool)

(assert (=> b!1029366 (= e!581210 e!581211)))

(declare-fun res!688654 () Bool)

(assert (=> b!1029366 (=> (not res!688654) (not e!581211))))

(assert (=> b!1029366 (= res!688654 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun b!1029367 () Bool)

(assert (=> b!1029367 (= e!581211 (arrayContainsKey!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123179 (not res!688653)) b!1029366))

(assert (= (and b!1029366 res!688654) b!1029367))

(declare-fun m!948659 () Bool)

(assert (=> d!123179 m!948659))

(declare-fun m!948661 () Bool)

(assert (=> b!1029367 m!948661))

(assert (=> b!1029203 d!123179))

(declare-fun d!123181 () Bool)

(declare-fun e!581217 () Bool)

(assert (=> d!123181 e!581217))

(declare-fun res!688657 () Bool)

(assert (=> d!123181 (=> res!688657 e!581217)))

(declare-fun lt!453751 () Bool)

(assert (=> d!123181 (= res!688657 (not lt!453751))))

(declare-fun lt!453749 () Bool)

(assert (=> d!123181 (= lt!453751 lt!453749)))

(declare-fun lt!453752 () Unit!33570)

(declare-fun e!581216 () Unit!33570)

(assert (=> d!123181 (= lt!453752 e!581216)))

(declare-fun c!103932 () Bool)

(assert (=> d!123181 (= c!103932 lt!453749)))

(declare-fun containsKey!562 (List!21929 (_ BitVec 64)) Bool)

(assert (=> d!123181 (= lt!453749 (containsKey!562 (toList!6909 lt!453609) key!909))))

(assert (=> d!123181 (= (contains!5990 lt!453609 key!909) lt!453751)))

(declare-fun b!1029374 () Bool)

(declare-fun lt!453750 () Unit!33570)

(assert (=> b!1029374 (= e!581216 lt!453750)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!394 (List!21929 (_ BitVec 64)) Unit!33570)

(assert (=> b!1029374 (= lt!453750 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453609) key!909))))

(declare-datatypes ((Option!640 0))(
  ( (Some!639 (v!14785 V!37293)) (None!638) )
))
(declare-fun isDefined!434 (Option!640) Bool)

(declare-fun getValueByKey!589 (List!21929 (_ BitVec 64)) Option!640)

(assert (=> b!1029374 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453609) key!909))))

(declare-fun b!1029375 () Bool)

(declare-fun Unit!33578 () Unit!33570)

(assert (=> b!1029375 (= e!581216 Unit!33578)))

(declare-fun b!1029376 () Bool)

(assert (=> b!1029376 (= e!581217 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453609) key!909)))))

(assert (= (and d!123181 c!103932) b!1029374))

(assert (= (and d!123181 (not c!103932)) b!1029375))

(assert (= (and d!123181 (not res!688657)) b!1029376))

(declare-fun m!948663 () Bool)

(assert (=> d!123181 m!948663))

(declare-fun m!948665 () Bool)

(assert (=> b!1029374 m!948665))

(declare-fun m!948667 () Bool)

(assert (=> b!1029374 m!948667))

(assert (=> b!1029374 m!948667))

(declare-fun m!948669 () Bool)

(assert (=> b!1029374 m!948669))

(assert (=> b!1029376 m!948667))

(assert (=> b!1029376 m!948667))

(assert (=> b!1029376 m!948669))

(assert (=> d!123153 d!123181))

(declare-fun b!1029387 () Bool)

(declare-fun e!581226 () List!21929)

(declare-fun $colon$colon!603 (List!21929 tuple2!15650) List!21929)

(assert (=> b!1029387 (= e!581226 ($colon$colon!603 (removeStrictlySorted!54 (t!31026 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))) key!909) (h!23125 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))))))))

(declare-fun b!1029388 () Bool)

(declare-fun e!581224 () Bool)

(declare-fun lt!453755 () List!21929)

(assert (=> b!1029388 (= e!581224 (not (containsKey!562 lt!453755 key!909)))))

(declare-fun b!1029389 () Bool)

(declare-fun e!581225 () List!21929)

(assert (=> b!1029389 (= e!581225 e!581226)))

(declare-fun c!103937 () Bool)

(assert (=> b!1029389 (= c!103937 (and ((_ is Cons!21925) (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))) (not (= (_1!7835 (h!23125 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))))) key!909))))))

(declare-fun d!123183 () Bool)

(assert (=> d!123183 e!581224))

(declare-fun res!688660 () Bool)

(assert (=> d!123183 (=> (not res!688660) (not e!581224))))

(declare-fun isStrictlySorted!712 (List!21929) Bool)

(assert (=> d!123183 (= res!688660 (isStrictlySorted!712 lt!453755))))

(assert (=> d!123183 (= lt!453755 e!581225)))

(declare-fun c!103938 () Bool)

(assert (=> d!123183 (= c!103938 (and ((_ is Cons!21925) (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))) (= (_1!7835 (h!23125 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))))) key!909)))))

(assert (=> d!123183 (isStrictlySorted!712 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))))))

(assert (=> d!123183 (= (removeStrictlySorted!54 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427))) key!909) lt!453755)))

(declare-fun b!1029390 () Bool)

(assert (=> b!1029390 (= e!581226 Nil!21926)))

(declare-fun b!1029391 () Bool)

(assert (=> b!1029391 (= e!581225 (t!31026 (toList!6909 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))))

(assert (= (and d!123183 c!103938) b!1029391))

(assert (= (and d!123183 (not c!103938)) b!1029389))

(assert (= (and b!1029389 c!103937) b!1029387))

(assert (= (and b!1029389 (not c!103937)) b!1029390))

(assert (= (and d!123183 res!688660) b!1029388))

(declare-fun m!948671 () Bool)

(assert (=> b!1029387 m!948671))

(assert (=> b!1029387 m!948671))

(declare-fun m!948673 () Bool)

(assert (=> b!1029387 m!948673))

(declare-fun m!948675 () Bool)

(assert (=> b!1029388 m!948675))

(declare-fun m!948677 () Bool)

(assert (=> d!123183 m!948677))

(declare-fun m!948679 () Bool)

(assert (=> d!123183 m!948679))

(assert (=> d!123153 d!123183))

(declare-fun d!123185 () Bool)

(declare-fun e!581228 () Bool)

(assert (=> d!123185 e!581228))

(declare-fun res!688661 () Bool)

(assert (=> d!123185 (=> res!688661 e!581228)))

(declare-fun lt!453758 () Bool)

(assert (=> d!123185 (= res!688661 (not lt!453758))))

(declare-fun lt!453756 () Bool)

(assert (=> d!123185 (= lt!453758 lt!453756)))

(declare-fun lt!453759 () Unit!33570)

(declare-fun e!581227 () Unit!33570)

(assert (=> d!123185 (= lt!453759 e!581227)))

(declare-fun c!103939 () Bool)

(assert (=> d!123185 (= c!103939 lt!453756)))

(assert (=> d!123185 (= lt!453756 (containsKey!562 (toList!6909 lt!453683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123185 (= (contains!5990 lt!453683 #b1000000000000000000000000000000000000000000000000000000000000000) lt!453758)))

(declare-fun b!1029392 () Bool)

(declare-fun lt!453757 () Unit!33570)

(assert (=> b!1029392 (= e!581227 lt!453757)))

(assert (=> b!1029392 (= lt!453757 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029392 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029393 () Bool)

(declare-fun Unit!33579 () Unit!33570)

(assert (=> b!1029393 (= e!581227 Unit!33579)))

(declare-fun b!1029394 () Bool)

(assert (=> b!1029394 (= e!581228 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123185 c!103939) b!1029392))

(assert (= (and d!123185 (not c!103939)) b!1029393))

(assert (= (and d!123185 (not res!688661)) b!1029394))

(declare-fun m!948681 () Bool)

(assert (=> d!123185 m!948681))

(declare-fun m!948683 () Bool)

(assert (=> b!1029392 m!948683))

(declare-fun m!948685 () Bool)

(assert (=> b!1029392 m!948685))

(assert (=> b!1029392 m!948685))

(declare-fun m!948687 () Bool)

(assert (=> b!1029392 m!948687))

(assert (=> b!1029394 m!948685))

(assert (=> b!1029394 m!948685))

(assert (=> b!1029394 m!948687))

(assert (=> bm!43451 d!123185))

(declare-fun b!1029395 () Bool)

(declare-fun e!581230 () Bool)

(declare-fun e!581229 () Bool)

(assert (=> b!1029395 (= e!581230 e!581229)))

(declare-fun lt!453761 () (_ BitVec 64))

(assert (=> b!1029395 (= lt!453761 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453762 () Unit!33570)

(assert (=> b!1029395 (= lt!453762 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11273 thiss!1427) lt!453761 #b00000000000000000000000000000000))))

(assert (=> b!1029395 (arrayContainsKey!0 (_keys!11273 thiss!1427) lt!453761 #b00000000000000000000000000000000)))

(declare-fun lt!453760 () Unit!33570)

(assert (=> b!1029395 (= lt!453760 lt!453762)))

(declare-fun res!688663 () Bool)

(assert (=> b!1029395 (= res!688663 (= (seekEntryOrOpen!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000) (_keys!11273 thiss!1427) (mask!29862 thiss!1427)) (Found!9671 #b00000000000000000000000000000000)))))

(assert (=> b!1029395 (=> (not res!688663) (not e!581229))))

(declare-fun bm!43474 () Bool)

(declare-fun call!43477 () Bool)

(assert (=> bm!43474 (= call!43477 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(declare-fun b!1029397 () Bool)

(assert (=> b!1029397 (= e!581229 call!43477)))

(declare-fun b!1029398 () Bool)

(assert (=> b!1029398 (= e!581230 call!43477)))

(declare-fun b!1029396 () Bool)

(declare-fun e!581231 () Bool)

(assert (=> b!1029396 (= e!581231 e!581230)))

(declare-fun c!103940 () Bool)

(assert (=> b!1029396 (= c!103940 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123187 () Bool)

(declare-fun res!688662 () Bool)

(assert (=> d!123187 (=> res!688662 e!581231)))

(assert (=> d!123187 (= res!688662 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123187 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)) e!581231)))

(assert (= (and d!123187 (not res!688662)) b!1029396))

(assert (= (and b!1029396 c!103940) b!1029395))

(assert (= (and b!1029396 (not c!103940)) b!1029398))

(assert (= (and b!1029395 res!688663) b!1029397))

(assert (= (or b!1029397 b!1029398) bm!43474))

(assert (=> b!1029395 m!948523))

(declare-fun m!948689 () Bool)

(assert (=> b!1029395 m!948689))

(declare-fun m!948691 () Bool)

(assert (=> b!1029395 m!948691))

(assert (=> b!1029395 m!948523))

(declare-fun m!948693 () Bool)

(assert (=> b!1029395 m!948693))

(declare-fun m!948695 () Bool)

(assert (=> bm!43474 m!948695))

(assert (=> b!1029396 m!948523))

(assert (=> b!1029396 m!948523))

(assert (=> b!1029396 m!948567))

(assert (=> b!1029163 d!123187))

(declare-fun b!1029407 () Bool)

(declare-fun res!688674 () Bool)

(declare-fun e!581234 () Bool)

(assert (=> b!1029407 (=> (not res!688674) (not e!581234))))

(assert (=> b!1029407 (= res!688674 (and (= (size!31654 (_values!6138 thiss!1427)) (bvadd (mask!29862 thiss!1427) #b00000000000000000000000000000001)) (= (size!31653 (_keys!11273 thiss!1427)) (size!31654 (_values!6138 thiss!1427))) (bvsge (_size!2806 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2806 thiss!1427) (bvadd (mask!29862 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1029408 () Bool)

(declare-fun res!688673 () Bool)

(assert (=> b!1029408 (=> (not res!688673) (not e!581234))))

(declare-fun size!31657 (LongMapFixedSize!5502) (_ BitVec 32))

(assert (=> b!1029408 (= res!688673 (bvsge (size!31657 thiss!1427) (_size!2806 thiss!1427)))))

(declare-fun b!1029410 () Bool)

(assert (=> b!1029410 (= e!581234 (and (bvsge (extraKeys!5847 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5847 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2806 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun d!123189 () Bool)

(declare-fun res!688672 () Bool)

(assert (=> d!123189 (=> (not res!688672) (not e!581234))))

(assert (=> d!123189 (= res!688672 (validMask!0 (mask!29862 thiss!1427)))))

(assert (=> d!123189 (= (simpleValid!393 thiss!1427) e!581234)))

(declare-fun b!1029409 () Bool)

(declare-fun res!688675 () Bool)

(assert (=> b!1029409 (=> (not res!688675) (not e!581234))))

(assert (=> b!1029409 (= res!688675 (= (size!31657 thiss!1427) (bvadd (_size!2806 thiss!1427) (bvsdiv (bvadd (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!123189 res!688672) b!1029407))

(assert (= (and b!1029407 res!688674) b!1029408))

(assert (= (and b!1029408 res!688673) b!1029409))

(assert (= (and b!1029409 res!688675) b!1029410))

(declare-fun m!948697 () Bool)

(assert (=> b!1029408 m!948697))

(assert (=> d!123189 m!948467))

(assert (=> b!1029409 m!948697))

(assert (=> d!123147 d!123189))

(declare-fun d!123191 () Bool)

(declare-fun lt!453765 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!514 (List!21930) (InoxSet (_ BitVec 64)))

(assert (=> d!123191 (= lt!453765 (select (content!514 Nil!21927) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun e!581239 () Bool)

(assert (=> d!123191 (= lt!453765 e!581239)))

(declare-fun res!688680 () Bool)

(assert (=> d!123191 (=> (not res!688680) (not e!581239))))

(assert (=> d!123191 (= res!688680 ((_ is Cons!21926) Nil!21927))))

(assert (=> d!123191 (= (contains!5991 Nil!21927 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) lt!453765)))

(declare-fun b!1029415 () Bool)

(declare-fun e!581240 () Bool)

(assert (=> b!1029415 (= e!581239 e!581240)))

(declare-fun res!688681 () Bool)

(assert (=> b!1029415 (=> res!688681 e!581240)))

(assert (=> b!1029415 (= res!688681 (= (h!23126 Nil!21927) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029416 () Bool)

(assert (=> b!1029416 (= e!581240 (contains!5991 (t!31027 Nil!21927) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (= (and d!123191 res!688680) b!1029415))

(assert (= (and b!1029415 (not res!688681)) b!1029416))

(declare-fun m!948699 () Bool)

(assert (=> d!123191 m!948699))

(assert (=> d!123191 m!948489))

(declare-fun m!948701 () Bool)

(assert (=> d!123191 m!948701))

(assert (=> b!1029416 m!948489))

(declare-fun m!948703 () Bool)

(assert (=> b!1029416 m!948703))

(assert (=> b!1029305 d!123191))

(declare-fun d!123193 () Bool)

(assert (=> d!123193 (= (validKeyInArray!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) (and (not (= (select (arr!31137 lt!453561) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31137 lt!453561) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029316 d!123193))

(declare-fun d!123195 () Bool)

(declare-fun e!581242 () Bool)

(assert (=> d!123195 e!581242))

(declare-fun res!688682 () Bool)

(assert (=> d!123195 (=> res!688682 e!581242)))

(declare-fun lt!453768 () Bool)

(assert (=> d!123195 (= res!688682 (not lt!453768))))

(declare-fun lt!453766 () Bool)

(assert (=> d!123195 (= lt!453768 lt!453766)))

(declare-fun lt!453769 () Unit!33570)

(declare-fun e!581241 () Unit!33570)

(assert (=> d!123195 (= lt!453769 e!581241)))

(declare-fun c!103941 () Bool)

(assert (=> d!123195 (= c!103941 lt!453766)))

(assert (=> d!123195 (= lt!453766 (containsKey!562 (toList!6909 lt!453705) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123195 (= (contains!5990 lt!453705 #b1000000000000000000000000000000000000000000000000000000000000000) lt!453768)))

(declare-fun b!1029417 () Bool)

(declare-fun lt!453767 () Unit!33570)

(assert (=> b!1029417 (= e!581241 lt!453767)))

(assert (=> b!1029417 (= lt!453767 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453705) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029417 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029418 () Bool)

(declare-fun Unit!33580 () Unit!33570)

(assert (=> b!1029418 (= e!581241 Unit!33580)))

(declare-fun b!1029419 () Bool)

(assert (=> b!1029419 (= e!581242 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123195 c!103941) b!1029417))

(assert (= (and d!123195 (not c!103941)) b!1029418))

(assert (= (and d!123195 (not res!688682)) b!1029419))

(declare-fun m!948705 () Bool)

(assert (=> d!123195 m!948705))

(declare-fun m!948707 () Bool)

(assert (=> b!1029417 m!948707))

(declare-fun m!948709 () Bool)

(assert (=> b!1029417 m!948709))

(assert (=> b!1029417 m!948709))

(declare-fun m!948711 () Bool)

(assert (=> b!1029417 m!948711))

(assert (=> b!1029419 m!948709))

(assert (=> b!1029419 m!948709))

(assert (=> b!1029419 m!948711))

(assert (=> bm!43458 d!123195))

(declare-fun d!123197 () Bool)

(declare-fun e!581244 () Bool)

(assert (=> d!123197 e!581244))

(declare-fun res!688683 () Bool)

(assert (=> d!123197 (=> res!688683 e!581244)))

(declare-fun lt!453772 () Bool)

(assert (=> d!123197 (= res!688683 (not lt!453772))))

(declare-fun lt!453770 () Bool)

(assert (=> d!123197 (= lt!453772 lt!453770)))

(declare-fun lt!453773 () Unit!33570)

(declare-fun e!581243 () Unit!33570)

(assert (=> d!123197 (= lt!453773 e!581243)))

(declare-fun c!103942 () Bool)

(assert (=> d!123197 (= c!103942 lt!453770)))

(assert (=> d!123197 (= lt!453770 (containsKey!562 (toList!6909 lt!453683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123197 (= (contains!5990 lt!453683 #b0000000000000000000000000000000000000000000000000000000000000000) lt!453772)))

(declare-fun b!1029420 () Bool)

(declare-fun lt!453771 () Unit!33570)

(assert (=> b!1029420 (= e!581243 lt!453771)))

(assert (=> b!1029420 (= lt!453771 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029420 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029421 () Bool)

(declare-fun Unit!33581 () Unit!33570)

(assert (=> b!1029421 (= e!581243 Unit!33581)))

(declare-fun b!1029422 () Bool)

(assert (=> b!1029422 (= e!581244 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123197 c!103942) b!1029420))

(assert (= (and d!123197 (not c!103942)) b!1029421))

(assert (= (and d!123197 (not res!688683)) b!1029422))

(declare-fun m!948713 () Bool)

(assert (=> d!123197 m!948713))

(declare-fun m!948715 () Bool)

(assert (=> b!1029420 m!948715))

(declare-fun m!948717 () Bool)

(assert (=> b!1029420 m!948717))

(assert (=> b!1029420 m!948717))

(declare-fun m!948719 () Bool)

(assert (=> b!1029420 m!948719))

(assert (=> b!1029422 m!948717))

(assert (=> b!1029422 m!948717))

(assert (=> b!1029422 m!948719))

(assert (=> bm!43456 d!123197))

(declare-fun d!123199 () Bool)

(declare-fun get!16368 (Option!640) V!37293)

(assert (=> d!123199 (= (apply!938 lt!453683 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16368 (getValueByKey!589 (toList!6909 lt!453683) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30053 () Bool)

(assert (= bs!30053 d!123199))

(assert (=> bs!30053 m!948685))

(assert (=> bs!30053 m!948685))

(declare-fun m!948721 () Bool)

(assert (=> bs!30053 m!948721))

(assert (=> b!1029267 d!123199))

(declare-fun d!123201 () Bool)

(assert (=> d!123201 (= (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560))) (and (not (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029185 d!123201))

(assert (=> b!1029198 d!123193))

(declare-fun d!123203 () Bool)

(declare-fun e!581246 () Bool)

(assert (=> d!123203 e!581246))

(declare-fun res!688684 () Bool)

(assert (=> d!123203 (=> res!688684 e!581246)))

(declare-fun lt!453776 () Bool)

(assert (=> d!123203 (= res!688684 (not lt!453776))))

(declare-fun lt!453774 () Bool)

(assert (=> d!123203 (= lt!453776 lt!453774)))

(declare-fun lt!453777 () Unit!33570)

(declare-fun e!581245 () Unit!33570)

(assert (=> d!123203 (= lt!453777 e!581245)))

(declare-fun c!103943 () Bool)

(assert (=> d!123203 (= c!103943 lt!453774)))

(assert (=> d!123203 (= lt!453774 (containsKey!562 (toList!6909 lt!453705) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123203 (= (contains!5990 lt!453705 #b0000000000000000000000000000000000000000000000000000000000000000) lt!453776)))

(declare-fun b!1029423 () Bool)

(declare-fun lt!453775 () Unit!33570)

(assert (=> b!1029423 (= e!581245 lt!453775)))

(assert (=> b!1029423 (= lt!453775 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453705) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029423 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029424 () Bool)

(declare-fun Unit!33582 () Unit!33570)

(assert (=> b!1029424 (= e!581245 Unit!33582)))

(declare-fun b!1029425 () Bool)

(assert (=> b!1029425 (= e!581246 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123203 c!103943) b!1029423))

(assert (= (and d!123203 (not c!103943)) b!1029424))

(assert (= (and d!123203 (not res!688684)) b!1029425))

(declare-fun m!948723 () Bool)

(assert (=> d!123203 m!948723))

(declare-fun m!948725 () Bool)

(assert (=> b!1029423 m!948725))

(declare-fun m!948727 () Bool)

(assert (=> b!1029423 m!948727))

(assert (=> b!1029423 m!948727))

(declare-fun m!948729 () Bool)

(assert (=> b!1029423 m!948729))

(assert (=> b!1029425 m!948727))

(assert (=> b!1029425 m!948727))

(assert (=> b!1029425 m!948729))

(assert (=> bm!43463 d!123203))

(declare-fun b!1029426 () Bool)

(declare-fun e!581248 () Bool)

(declare-fun e!581247 () Bool)

(assert (=> b!1029426 (= e!581248 e!581247)))

(declare-fun lt!453779 () (_ BitVec 64))

(assert (=> b!1029426 (= lt!453779 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!453780 () Unit!33570)

(assert (=> b!1029426 (= lt!453780 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453561 lt!453779 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1029426 (arrayContainsKey!0 lt!453561 lt!453779 #b00000000000000000000000000000000)))

(declare-fun lt!453778 () Unit!33570)

(assert (=> b!1029426 (= lt!453778 lt!453780)))

(declare-fun res!688686 () Bool)

(assert (=> b!1029426 (= res!688686 (= (seekEntryOrOpen!0 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!453561 (mask!29862 thiss!1427)) (Found!9671 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1029426 (=> (not res!688686) (not e!581247))))

(declare-fun bm!43475 () Bool)

(declare-fun call!43478 () Bool)

(assert (=> bm!43475 (= call!43478 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!453561 (mask!29862 thiss!1427)))))

(declare-fun b!1029428 () Bool)

(assert (=> b!1029428 (= e!581247 call!43478)))

(declare-fun b!1029429 () Bool)

(assert (=> b!1029429 (= e!581248 call!43478)))

(declare-fun b!1029427 () Bool)

(declare-fun e!581249 () Bool)

(assert (=> b!1029427 (= e!581249 e!581248)))

(declare-fun c!103944 () Bool)

(assert (=> b!1029427 (= c!103944 (validKeyInArray!0 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!123205 () Bool)

(declare-fun res!688685 () Bool)

(assert (=> d!123205 (=> res!688685 e!581249)))

(assert (=> d!123205 (= res!688685 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 lt!453561)))))

(assert (=> d!123205 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!453561 (mask!29862 thiss!1427)) e!581249)))

(assert (= (and d!123205 (not res!688685)) b!1029427))

(assert (= (and b!1029427 c!103944) b!1029426))

(assert (= (and b!1029427 (not c!103944)) b!1029429))

(assert (= (and b!1029426 res!688686) b!1029428))

(assert (= (or b!1029428 b!1029429) bm!43475))

(declare-fun m!948731 () Bool)

(assert (=> b!1029426 m!948731))

(declare-fun m!948733 () Bool)

(assert (=> b!1029426 m!948733))

(declare-fun m!948735 () Bool)

(assert (=> b!1029426 m!948735))

(assert (=> b!1029426 m!948731))

(declare-fun m!948737 () Bool)

(assert (=> b!1029426 m!948737))

(declare-fun m!948739 () Bool)

(assert (=> bm!43475 m!948739))

(assert (=> b!1029427 m!948731))

(assert (=> b!1029427 m!948731))

(declare-fun m!948741 () Bool)

(assert (=> b!1029427 m!948741))

(assert (=> bm!43435 d!123205))

(declare-fun d!123207 () Bool)

(assert (=> d!123207 (= (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029265 d!123207))

(assert (=> b!1029286 d!123193))

(declare-fun d!123209 () Bool)

(assert (=> d!123209 (= (validMask!0 (mask!29862 thiss!1427)) (and (or (= (mask!29862 thiss!1427) #b00000000000000000000000000000111) (= (mask!29862 thiss!1427) #b00000000000000000000000000001111) (= (mask!29862 thiss!1427) #b00000000000000000000000000011111) (= (mask!29862 thiss!1427) #b00000000000000000000000000111111) (= (mask!29862 thiss!1427) #b00000000000000000000000001111111) (= (mask!29862 thiss!1427) #b00000000000000000000000011111111) (= (mask!29862 thiss!1427) #b00000000000000000000000111111111) (= (mask!29862 thiss!1427) #b00000000000000000000001111111111) (= (mask!29862 thiss!1427) #b00000000000000000000011111111111) (= (mask!29862 thiss!1427) #b00000000000000000000111111111111) (= (mask!29862 thiss!1427) #b00000000000000000001111111111111) (= (mask!29862 thiss!1427) #b00000000000000000011111111111111) (= (mask!29862 thiss!1427) #b00000000000000000111111111111111) (= (mask!29862 thiss!1427) #b00000000000000001111111111111111) (= (mask!29862 thiss!1427) #b00000000000000011111111111111111) (= (mask!29862 thiss!1427) #b00000000000000111111111111111111) (= (mask!29862 thiss!1427) #b00000000000001111111111111111111) (= (mask!29862 thiss!1427) #b00000000000011111111111111111111) (= (mask!29862 thiss!1427) #b00000000000111111111111111111111) (= (mask!29862 thiss!1427) #b00000000001111111111111111111111) (= (mask!29862 thiss!1427) #b00000000011111111111111111111111) (= (mask!29862 thiss!1427) #b00000000111111111111111111111111) (= (mask!29862 thiss!1427) #b00000001111111111111111111111111) (= (mask!29862 thiss!1427) #b00000011111111111111111111111111) (= (mask!29862 thiss!1427) #b00000111111111111111111111111111) (= (mask!29862 thiss!1427) #b00001111111111111111111111111111) (= (mask!29862 thiss!1427) #b00011111111111111111111111111111) (= (mask!29862 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29862 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!123165 d!123209))

(declare-fun bm!43476 () Bool)

(declare-fun call!43479 () (_ BitVec 32))

(assert (=> bm!43476 (= call!43479 (arrayCountValidKeys!0 (_keys!11273 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun d!123211 () Bool)

(declare-fun lt!453781 () (_ BitVec 32))

(assert (=> d!123211 (and (bvsge lt!453781 #b00000000000000000000000000000000) (bvsle lt!453781 (bvsub (size!31653 (_keys!11273 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!581251 () (_ BitVec 32))

(assert (=> d!123211 (= lt!453781 e!581251)))

(declare-fun c!103946 () Bool)

(assert (=> d!123211 (= c!103946 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123211 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31653 (_keys!11273 thiss!1427)) (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123211 (= (arrayCountValidKeys!0 (_keys!11273 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))) lt!453781)))

(declare-fun b!1029430 () Bool)

(declare-fun e!581250 () (_ BitVec 32))

(assert (=> b!1029430 (= e!581250 call!43479)))

(declare-fun b!1029431 () Bool)

(assert (=> b!1029431 (= e!581250 (bvadd #b00000000000000000000000000000001 call!43479))))

(declare-fun b!1029432 () Bool)

(assert (=> b!1029432 (= e!581251 e!581250)))

(declare-fun c!103945 () Bool)

(assert (=> b!1029432 (= c!103945 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1029433 () Bool)

(assert (=> b!1029433 (= e!581251 #b00000000000000000000000000000000)))

(assert (= (and d!123211 c!103946) b!1029433))

(assert (= (and d!123211 (not c!103946)) b!1029432))

(assert (= (and b!1029432 c!103945) b!1029431))

(assert (= (and b!1029432 (not c!103945)) b!1029430))

(assert (= (or b!1029431 b!1029430) bm!43476))

(declare-fun m!948743 () Bool)

(assert (=> bm!43476 m!948743))

(declare-fun m!948745 () Bool)

(assert (=> b!1029432 m!948745))

(assert (=> b!1029432 m!948745))

(declare-fun m!948747 () Bool)

(assert (=> b!1029432 m!948747))

(assert (=> bm!43470 d!123211))

(declare-fun d!123213 () Bool)

(assert (=> d!123213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (mask!29862 thiss!1427))))

(assert (=> d!123213 true))

(declare-fun _$44!15 () Unit!33570)

(assert (=> d!123213 (= (choose!25 (_keys!11273 thiss!1427) (index!41055 lt!453560) (mask!29862 thiss!1427)) _$44!15)))

(declare-fun bs!30054 () Bool)

(assert (= bs!30054 d!123213))

(assert (=> bs!30054 m!948413))

(assert (=> bs!30054 m!948519))

(assert (=> d!123163 d!123213))

(assert (=> d!123163 d!123209))

(declare-fun d!123215 () Bool)

(assert (=> d!123215 (= (apply!938 lt!453683 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)) (get!16368 (getValueByKey!589 (toList!6909 lt!453683) (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30055 () Bool)

(assert (= bs!30055 d!123215))

(assert (=> bs!30055 m!948523))

(declare-fun m!948749 () Bool)

(assert (=> bs!30055 m!948749))

(assert (=> bs!30055 m!948749))

(declare-fun m!948751 () Bool)

(assert (=> bs!30055 m!948751))

(assert (=> b!1029261 d!123215))

(declare-fun d!123217 () Bool)

(declare-fun c!103949 () Bool)

(assert (=> d!123217 (= c!103949 ((_ is ValueCellFull!11454) (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!581254 () V!37293)

(assert (=> d!123217 (= (get!16367 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!581254)))

(declare-fun b!1029438 () Bool)

(declare-fun get!16369 (ValueCell!11454 V!37293) V!37293)

(assert (=> b!1029438 (= e!581254 (get!16369 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029439 () Bool)

(declare-fun get!16370 (ValueCell!11454 V!37293) V!37293)

(assert (=> b!1029439 (= e!581254 (get!16370 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123217 c!103949) b!1029438))

(assert (= (and d!123217 (not c!103949)) b!1029439))

(assert (=> b!1029438 m!948573))

(assert (=> b!1029438 m!948405))

(declare-fun m!948753 () Bool)

(assert (=> b!1029438 m!948753))

(assert (=> b!1029439 m!948573))

(assert (=> b!1029439 m!948405))

(declare-fun m!948755 () Bool)

(assert (=> b!1029439 m!948755))

(assert (=> b!1029261 d!123217))

(declare-fun d!123219 () Bool)

(assert (=> d!123219 (= (apply!938 lt!453705 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) (get!16368 (getValueByKey!589 (toList!6909 lt!453705) (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))))

(declare-fun bs!30056 () Bool)

(assert (= bs!30056 d!123219))

(assert (=> bs!30056 m!948489))

(declare-fun m!948757 () Bool)

(assert (=> bs!30056 m!948757))

(assert (=> bs!30056 m!948757))

(declare-fun m!948759 () Bool)

(assert (=> bs!30056 m!948759))

(assert (=> b!1029282 d!123219))

(declare-fun d!123221 () Bool)

(declare-fun c!103950 () Bool)

(assert (=> d!123221 (= c!103950 ((_ is ValueCellFull!11454) (select (arr!31138 lt!453555) #b00000000000000000000000000000000)))))

(declare-fun e!581255 () V!37293)

(assert (=> d!123221 (= (get!16367 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!581255)))

(declare-fun b!1029440 () Bool)

(assert (=> b!1029440 (= e!581255 (get!16369 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029441 () Bool)

(assert (=> b!1029441 (= e!581255 (get!16370 (select (arr!31138 lt!453555) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123221 c!103950) b!1029440))

(assert (= (and d!123221 (not c!103950)) b!1029441))

(assert (=> b!1029440 m!948625))

(assert (=> b!1029440 m!948405))

(declare-fun m!948761 () Bool)

(assert (=> b!1029440 m!948761))

(assert (=> b!1029441 m!948625))

(assert (=> b!1029441 m!948405))

(declare-fun m!948763 () Bool)

(assert (=> b!1029441 m!948763))

(assert (=> b!1029282 d!123221))

(assert (=> b!1029259 d!123207))

(declare-fun d!123223 () Bool)

(assert (=> d!123223 (not (arrayContainsKey!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!123223 true))

(declare-fun _$59!17 () Unit!33570)

(assert (=> d!123223 (= (choose!121 (_keys!11273 thiss!1427) (index!41055 lt!453560) key!909) _$59!17)))

(declare-fun bs!30057 () Bool)

(assert (= bs!30057 d!123223))

(assert (=> bs!30057 m!948413))

(assert (=> bs!30057 m!948515))

(assert (=> d!123161 d!123223))

(assert (=> b!1029280 d!123193))

(declare-fun b!1029460 () Bool)

(declare-fun e!581267 () SeekEntryResult!9671)

(assert (=> b!1029460 (= e!581267 (Intermediate!9671 true (toIndex!0 key!909 (mask!29862 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun d!123225 () Bool)

(declare-fun e!581269 () Bool)

(assert (=> d!123225 e!581269))

(declare-fun c!103958 () Bool)

(declare-fun lt!453787 () SeekEntryResult!9671)

(assert (=> d!123225 (= c!103958 (and ((_ is Intermediate!9671) lt!453787) (undefined!10483 lt!453787)))))

(assert (=> d!123225 (= lt!453787 e!581267)))

(declare-fun c!103959 () Bool)

(assert (=> d!123225 (= c!103959 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!453786 () (_ BitVec 64))

(assert (=> d!123225 (= lt!453786 (select (arr!31137 (_keys!11273 thiss!1427)) (toIndex!0 key!909 (mask!29862 thiss!1427))))))

(assert (=> d!123225 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29862 thiss!1427)) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)) lt!453787)))

(declare-fun b!1029461 () Bool)

(assert (=> b!1029461 (and (bvsge (index!41056 lt!453787) #b00000000000000000000000000000000) (bvslt (index!41056 lt!453787) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun res!688693 () Bool)

(assert (=> b!1029461 (= res!688693 (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41056 lt!453787)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!581266 () Bool)

(assert (=> b!1029461 (=> res!688693 e!581266)))

(declare-fun b!1029462 () Bool)

(declare-fun e!581268 () Bool)

(assert (=> b!1029462 (= e!581269 e!581268)))

(declare-fun res!688694 () Bool)

(assert (=> b!1029462 (= res!688694 (and ((_ is Intermediate!9671) lt!453787) (not (undefined!10483 lt!453787)) (bvslt (x!91572 lt!453787) #b01111111111111111111111111111110) (bvsge (x!91572 lt!453787) #b00000000000000000000000000000000) (bvsge (x!91572 lt!453787) #b00000000000000000000000000000000)))))

(assert (=> b!1029462 (=> (not res!688694) (not e!581268))))

(declare-fun b!1029463 () Bool)

(assert (=> b!1029463 (= e!581269 (bvsge (x!91572 lt!453787) #b01111111111111111111111111111110))))

(declare-fun b!1029464 () Bool)

(assert (=> b!1029464 (and (bvsge (index!41056 lt!453787) #b00000000000000000000000000000000) (bvslt (index!41056 lt!453787) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun res!688695 () Bool)

(assert (=> b!1029464 (= res!688695 (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41056 lt!453787)) key!909))))

(assert (=> b!1029464 (=> res!688695 e!581266)))

(assert (=> b!1029464 (= e!581268 e!581266)))

(declare-fun b!1029465 () Bool)

(declare-fun e!581270 () SeekEntryResult!9671)

(assert (=> b!1029465 (= e!581267 e!581270)))

(declare-fun c!103957 () Bool)

(assert (=> b!1029465 (= c!103957 (or (= lt!453786 key!909) (= (bvadd lt!453786 lt!453786) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029466 () Bool)

(assert (=> b!1029466 (and (bvsge (index!41056 lt!453787) #b00000000000000000000000000000000) (bvslt (index!41056 lt!453787) (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> b!1029466 (= e!581266 (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41056 lt!453787)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029467 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029467 (= e!581270 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!29862 thiss!1427)) #b00000000000000000000000000000000 (mask!29862 thiss!1427)) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(declare-fun b!1029468 () Bool)

(assert (=> b!1029468 (= e!581270 (Intermediate!9671 false (toIndex!0 key!909 (mask!29862 thiss!1427)) #b00000000000000000000000000000000))))

(assert (= (and d!123225 c!103959) b!1029460))

(assert (= (and d!123225 (not c!103959)) b!1029465))

(assert (= (and b!1029465 c!103957) b!1029468))

(assert (= (and b!1029465 (not c!103957)) b!1029467))

(assert (= (and d!123225 c!103958) b!1029463))

(assert (= (and d!123225 (not c!103958)) b!1029462))

(assert (= (and b!1029462 res!688694) b!1029464))

(assert (= (and b!1029464 (not res!688695)) b!1029461))

(assert (= (and b!1029461 (not res!688693)) b!1029466))

(assert (=> d!123225 m!948463))

(declare-fun m!948765 () Bool)

(assert (=> d!123225 m!948765))

(assert (=> d!123225 m!948467))

(declare-fun m!948767 () Bool)

(assert (=> b!1029466 m!948767))

(assert (=> b!1029461 m!948767))

(assert (=> b!1029467 m!948463))

(declare-fun m!948769 () Bool)

(assert (=> b!1029467 m!948769))

(assert (=> b!1029467 m!948769))

(declare-fun m!948771 () Bool)

(assert (=> b!1029467 m!948771))

(assert (=> b!1029464 m!948767))

(assert (=> d!123141 d!123225))

(declare-fun d!123227 () Bool)

(declare-fun lt!453793 () (_ BitVec 32))

(declare-fun lt!453792 () (_ BitVec 32))

(assert (=> d!123227 (= lt!453793 (bvmul (bvxor lt!453792 (bvlshr lt!453792 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!123227 (= lt!453792 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!123227 (and (bvsge (mask!29862 thiss!1427) #b00000000000000000000000000000000) (let ((res!688696 (let ((h!23127 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!91603 (bvmul (bvxor h!23127 (bvlshr h!23127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!91603 (bvlshr x!91603 #b00000000000000000000000000001101)) (mask!29862 thiss!1427)))))) (and (bvslt res!688696 (bvadd (mask!29862 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!688696 #b00000000000000000000000000000000))))))

(assert (=> d!123227 (= (toIndex!0 key!909 (mask!29862 thiss!1427)) (bvand (bvxor lt!453793 (bvlshr lt!453793 #b00000000000000000000000000001101)) (mask!29862 thiss!1427)))))

(assert (=> d!123141 d!123227))

(assert (=> d!123141 d!123209))

(declare-fun bm!43477 () Bool)

(declare-fun call!43480 () ListLongMap!13787)

(assert (=> bm!43477 (= call!43480 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6115 thiss!1427)))))

(declare-fun b!1029469 () Bool)

(declare-fun e!581274 () Bool)

(declare-fun e!581271 () Bool)

(assert (=> b!1029469 (= e!581274 e!581271)))

(assert (=> b!1029469 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun res!688700 () Bool)

(declare-fun lt!453800 () ListLongMap!13787)

(assert (=> b!1029469 (= res!688700 (contains!5990 lt!453800 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029469 (=> (not res!688700) (not e!581271))))

(declare-fun b!1029470 () Bool)

(declare-fun e!581277 () ListLongMap!13787)

(assert (=> b!1029470 (= e!581277 (ListLongMap!13788 Nil!21926))))

(declare-fun b!1029471 () Bool)

(declare-fun e!581273 () Bool)

(assert (=> b!1029471 (= e!581273 e!581274)))

(declare-fun c!103960 () Bool)

(declare-fun e!581275 () Bool)

(assert (=> b!1029471 (= c!103960 e!581275)))

(declare-fun res!688697 () Bool)

(assert (=> b!1029471 (=> (not res!688697) (not e!581275))))

(assert (=> b!1029471 (= res!688697 (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun b!1029472 () Bool)

(assert (=> b!1029472 (= e!581275 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029472 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1029473 () Bool)

(declare-fun e!581272 () Bool)

(assert (=> b!1029473 (= e!581272 (isEmpty!927 lt!453800))))

(declare-fun b!1029474 () Bool)

(declare-fun res!688699 () Bool)

(assert (=> b!1029474 (=> (not res!688699) (not e!581273))))

(assert (=> b!1029474 (= res!688699 (not (contains!5990 lt!453800 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1029475 () Bool)

(declare-fun e!581276 () ListLongMap!13787)

(assert (=> b!1029475 (= e!581276 call!43480)))

(declare-fun b!1029476 () Bool)

(assert (=> b!1029476 (= e!581274 e!581272)))

(declare-fun c!103961 () Bool)

(assert (=> b!1029476 (= c!103961 (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun b!1029477 () Bool)

(assert (=> b!1029477 (= e!581272 (= lt!453800 (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6115 thiss!1427))))))

(declare-fun d!123229 () Bool)

(assert (=> d!123229 e!581273))

(declare-fun res!688698 () Bool)

(assert (=> d!123229 (=> (not res!688698) (not e!581273))))

(assert (=> d!123229 (= res!688698 (not (contains!5990 lt!453800 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123229 (= lt!453800 e!581277)))

(declare-fun c!103963 () Bool)

(assert (=> d!123229 (= c!103963 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123229 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123229 (= (getCurrentListMapNoExtraKeys!3531 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) lt!453800)))

(declare-fun b!1029478 () Bool)

(assert (=> b!1029478 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> b!1029478 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31654 (_values!6138 thiss!1427))))))

(assert (=> b!1029478 (= e!581271 (= (apply!938 lt!453800 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)) (get!16367 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1029479 () Bool)

(assert (=> b!1029479 (= e!581277 e!581276)))

(declare-fun c!103962 () Bool)

(assert (=> b!1029479 (= c!103962 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029480 () Bool)

(declare-fun lt!453796 () Unit!33570)

(declare-fun lt!453797 () Unit!33570)

(assert (=> b!1029480 (= lt!453796 lt!453797)))

(declare-fun lt!453795 () (_ BitVec 64))

(declare-fun lt!453794 () (_ BitVec 64))

(declare-fun lt!453798 () ListLongMap!13787)

(declare-fun lt!453799 () V!37293)

(assert (=> b!1029480 (not (contains!5990 (+!3061 lt!453798 (tuple2!15651 lt!453795 lt!453799)) lt!453794))))

(assert (=> b!1029480 (= lt!453797 (addStillNotContains!242 lt!453798 lt!453795 lt!453799 lt!453794))))

(assert (=> b!1029480 (= lt!453794 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1029480 (= lt!453799 (get!16367 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1029480 (= lt!453795 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1029480 (= lt!453798 call!43480)))

(assert (=> b!1029480 (= e!581276 (+!3061 call!43480 (tuple2!15651 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000) (get!16367 (select (arr!31138 (_values!6138 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!123229 c!103963) b!1029470))

(assert (= (and d!123229 (not c!103963)) b!1029479))

(assert (= (and b!1029479 c!103962) b!1029480))

(assert (= (and b!1029479 (not c!103962)) b!1029475))

(assert (= (or b!1029480 b!1029475) bm!43477))

(assert (= (and d!123229 res!688698) b!1029474))

(assert (= (and b!1029474 res!688699) b!1029471))

(assert (= (and b!1029471 res!688697) b!1029472))

(assert (= (and b!1029471 c!103960) b!1029469))

(assert (= (and b!1029471 (not c!103960)) b!1029476))

(assert (= (and b!1029469 res!688700) b!1029478))

(assert (= (and b!1029476 c!103961) b!1029477))

(assert (= (and b!1029476 (not c!103961)) b!1029473))

(declare-fun b_lambda!15901 () Bool)

(assert (=> (not b_lambda!15901) (not b!1029478)))

(assert (=> b!1029478 t!31025))

(declare-fun b_and!32951 () Bool)

(assert (= b_and!32949 (and (=> t!31025 result!14157) b_and!32951)))

(declare-fun b_lambda!15903 () Bool)

(assert (=> (not b_lambda!15903) (not b!1029480)))

(assert (=> b!1029480 t!31025))

(declare-fun b_and!32953 () Bool)

(assert (= b_and!32951 (and (=> t!31025 result!14157) b_and!32953)))

(assert (=> b!1029472 m!948523))

(assert (=> b!1029472 m!948523))

(assert (=> b!1029472 m!948567))

(declare-fun m!948773 () Bool)

(assert (=> b!1029473 m!948773))

(assert (=> b!1029479 m!948523))

(assert (=> b!1029479 m!948523))

(assert (=> b!1029479 m!948567))

(declare-fun m!948775 () Bool)

(assert (=> bm!43477 m!948775))

(assert (=> b!1029469 m!948523))

(assert (=> b!1029469 m!948523))

(declare-fun m!948777 () Bool)

(assert (=> b!1029469 m!948777))

(declare-fun m!948779 () Bool)

(assert (=> b!1029480 m!948779))

(assert (=> b!1029480 m!948405))

(declare-fun m!948781 () Bool)

(assert (=> b!1029480 m!948781))

(declare-fun m!948783 () Bool)

(assert (=> b!1029480 m!948783))

(assert (=> b!1029480 m!948573))

(assert (=> b!1029480 m!948405))

(assert (=> b!1029480 m!948575))

(assert (=> b!1029480 m!948523))

(assert (=> b!1029480 m!948573))

(assert (=> b!1029480 m!948779))

(declare-fun m!948785 () Bool)

(assert (=> b!1029480 m!948785))

(assert (=> b!1029478 m!948405))

(assert (=> b!1029478 m!948523))

(declare-fun m!948787 () Bool)

(assert (=> b!1029478 m!948787))

(assert (=> b!1029478 m!948573))

(assert (=> b!1029478 m!948405))

(assert (=> b!1029478 m!948575))

(assert (=> b!1029478 m!948523))

(assert (=> b!1029478 m!948573))

(declare-fun m!948789 () Bool)

(assert (=> b!1029474 m!948789))

(declare-fun m!948791 () Bool)

(assert (=> d!123229 m!948791))

(assert (=> d!123229 m!948467))

(assert (=> b!1029477 m!948775))

(assert (=> bm!43453 d!123229))

(declare-fun b!1029481 () Bool)

(declare-fun e!581279 () Bool)

(declare-fun e!581278 () Bool)

(assert (=> b!1029481 (= e!581279 e!581278)))

(declare-fun lt!453802 () (_ BitVec 64))

(assert (=> b!1029481 (= lt!453802 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453803 () Unit!33570)

(assert (=> b!1029481 (= lt!453803 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) lt!453802 #b00000000000000000000000000000000))))

(assert (=> b!1029481 (arrayContainsKey!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) lt!453802 #b00000000000000000000000000000000)))

(declare-fun lt!453801 () Unit!33570)

(assert (=> b!1029481 (= lt!453801 lt!453803)))

(declare-fun res!688702 () Bool)

(assert (=> b!1029481 (= res!688702 (= (seekEntryOrOpen!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000) (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (mask!29862 thiss!1427)) (Found!9671 #b00000000000000000000000000000000)))))

(assert (=> b!1029481 (=> (not res!688702) (not e!581278))))

(declare-fun bm!43478 () Bool)

(declare-fun call!43481 () Bool)

(assert (=> bm!43478 (= call!43481 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (mask!29862 thiss!1427)))))

(declare-fun b!1029483 () Bool)

(assert (=> b!1029483 (= e!581278 call!43481)))

(declare-fun b!1029484 () Bool)

(assert (=> b!1029484 (= e!581279 call!43481)))

(declare-fun b!1029482 () Bool)

(declare-fun e!581280 () Bool)

(assert (=> b!1029482 (= e!581280 e!581279)))

(declare-fun c!103964 () Bool)

(assert (=> b!1029482 (= c!103964 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!123231 () Bool)

(declare-fun res!688701 () Bool)

(assert (=> d!123231 (=> res!688701 e!581280)))

(assert (=> d!123231 (= res!688701 (bvsge #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(assert (=> d!123231 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (mask!29862 thiss!1427)) e!581280)))

(assert (= (and d!123231 (not res!688701)) b!1029482))

(assert (= (and b!1029482 c!103964) b!1029481))

(assert (= (and b!1029482 (not c!103964)) b!1029484))

(assert (= (and b!1029481 res!688702) b!1029483))

(assert (= (or b!1029483 b!1029484) bm!43478))

(assert (=> b!1029481 m!948659))

(declare-fun m!948793 () Bool)

(assert (=> b!1029481 m!948793))

(declare-fun m!948795 () Bool)

(assert (=> b!1029481 m!948795))

(assert (=> b!1029481 m!948659))

(declare-fun m!948797 () Bool)

(assert (=> b!1029481 m!948797))

(declare-fun m!948799 () Bool)

(assert (=> bm!43478 m!948799))

(assert (=> b!1029482 m!948659))

(assert (=> b!1029482 m!948659))

(declare-fun m!948801 () Bool)

(assert (=> b!1029482 m!948801))

(assert (=> b!1029206 d!123231))

(declare-fun d!123233 () Bool)

(assert (=> d!123233 (= (apply!938 lt!453705 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16368 (getValueByKey!589 (toList!6909 lt!453705) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30058 () Bool)

(assert (= bs!30058 d!123233))

(assert (=> bs!30058 m!948727))

(assert (=> bs!30058 m!948727))

(declare-fun m!948803 () Bool)

(assert (=> bs!30058 m!948803))

(assert (=> b!1029278 d!123233))

(declare-fun d!123235 () Bool)

(assert (=> d!123235 (= (arrayCountValidKeys!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!123235 true))

(declare-fun _$79!14 () Unit!33570)

(assert (=> d!123235 (= (choose!82 (_keys!11273 thiss!1427) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!14)))

(declare-fun bs!30059 () Bool)

(assert (= bs!30059 d!123235))

(assert (=> bs!30059 m!948413))

(assert (=> bs!30059 m!948501))

(assert (=> bs!30059 m!948411))

(assert (=> d!123157 d!123235))

(declare-fun b!1029485 () Bool)

(declare-fun e!581283 () Bool)

(declare-fun call!43482 () Bool)

(assert (=> b!1029485 (= e!581283 call!43482)))

(declare-fun b!1029486 () Bool)

(declare-fun e!581281 () Bool)

(declare-fun e!581282 () Bool)

(assert (=> b!1029486 (= e!581281 e!581282)))

(declare-fun res!688704 () Bool)

(assert (=> b!1029486 (=> (not res!688704) (not e!581282))))

(declare-fun e!581284 () Bool)

(assert (=> b!1029486 (= res!688704 (not e!581284))))

(declare-fun res!688705 () Bool)

(assert (=> b!1029486 (=> (not res!688705) (not e!581284))))

(assert (=> b!1029486 (= res!688705 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029487 () Bool)

(assert (=> b!1029487 (= e!581283 call!43482)))

(declare-fun b!1029488 () Bool)

(assert (=> b!1029488 (= e!581282 e!581283)))

(declare-fun c!103965 () Bool)

(assert (=> b!1029488 (= c!103965 (validKeyInArray!0 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123237 () Bool)

(declare-fun res!688703 () Bool)

(assert (=> d!123237 (=> res!688703 e!581281)))

(assert (=> d!123237 (= res!688703 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123237 (= (arrayNoDuplicates!0 (_keys!11273 thiss!1427) #b00000000000000000000000000000000 Nil!21927) e!581281)))

(declare-fun b!1029489 () Bool)

(assert (=> b!1029489 (= e!581284 (contains!5991 Nil!21927 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43479 () Bool)

(assert (=> bm!43479 (= call!43482 (arrayNoDuplicates!0 (_keys!11273 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103965 (Cons!21926 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000) Nil!21927) Nil!21927)))))

(assert (= (and d!123237 (not res!688703)) b!1029486))

(assert (= (and b!1029486 res!688705) b!1029489))

(assert (= (and b!1029486 res!688704) b!1029488))

(assert (= (and b!1029488 c!103965) b!1029485))

(assert (= (and b!1029488 (not c!103965)) b!1029487))

(assert (= (or b!1029485 b!1029487) bm!43479))

(assert (=> b!1029486 m!948523))

(assert (=> b!1029486 m!948523))

(assert (=> b!1029486 m!948567))

(assert (=> b!1029488 m!948523))

(assert (=> b!1029488 m!948523))

(assert (=> b!1029488 m!948567))

(assert (=> b!1029489 m!948523))

(assert (=> b!1029489 m!948523))

(declare-fun m!948805 () Bool)

(assert (=> b!1029489 m!948805))

(assert (=> bm!43479 m!948523))

(declare-fun m!948807 () Bool)

(assert (=> bm!43479 m!948807))

(assert (=> b!1029164 d!123237))

(declare-fun bm!43480 () Bool)

(declare-fun call!43483 () (_ BitVec 32))

(assert (=> bm!43480 (= call!43483 (arrayCountValidKeys!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun d!123239 () Bool)

(declare-fun lt!453804 () (_ BitVec 32))

(assert (=> d!123239 (and (bvsge lt!453804 #b00000000000000000000000000000000) (bvsle lt!453804 (bvsub (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun e!581286 () (_ BitVec 32))

(assert (=> d!123239 (= lt!453804 e!581286)))

(declare-fun c!103967 () Bool)

(assert (=> d!123239 (= c!103967 (bvsge #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123239 (and (bvsle #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31653 (_keys!11273 thiss!1427)) (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(assert (=> d!123239 (= (arrayCountValidKeys!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 (size!31653 (_keys!11273 thiss!1427))) lt!453804)))

(declare-fun b!1029490 () Bool)

(declare-fun e!581285 () (_ BitVec 32))

(assert (=> b!1029490 (= e!581285 call!43483)))

(declare-fun b!1029491 () Bool)

(assert (=> b!1029491 (= e!581285 (bvadd #b00000000000000000000000000000001 call!43483))))

(declare-fun b!1029492 () Bool)

(assert (=> b!1029492 (= e!581286 e!581285)))

(declare-fun c!103966 () Bool)

(assert (=> b!1029492 (= c!103966 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1029493 () Bool)

(assert (=> b!1029493 (= e!581286 #b00000000000000000000000000000000)))

(assert (= (and d!123239 c!103967) b!1029493))

(assert (= (and d!123239 (not c!103967)) b!1029492))

(assert (= (and b!1029492 c!103966) b!1029491))

(assert (= (and b!1029492 (not c!103966)) b!1029490))

(assert (= (or b!1029491 b!1029490) bm!43480))

(declare-fun m!948809 () Bool)

(assert (=> bm!43480 m!948809))

(assert (=> b!1029492 m!948659))

(assert (=> b!1029492 m!948659))

(assert (=> b!1029492 m!948801))

(assert (=> b!1029188 d!123239))

(assert (=> b!1029188 d!123173))

(declare-fun d!123241 () Bool)

(declare-fun e!581289 () Bool)

(assert (=> d!123241 e!581289))

(declare-fun res!688710 () Bool)

(assert (=> d!123241 (=> (not res!688710) (not e!581289))))

(declare-fun lt!453814 () ListLongMap!13787)

(assert (=> d!123241 (= res!688710 (contains!5990 lt!453814 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453816 () List!21929)

(assert (=> d!123241 (= lt!453814 (ListLongMap!13788 lt!453816))))

(declare-fun lt!453813 () Unit!33570)

(declare-fun lt!453815 () Unit!33570)

(assert (=> d!123241 (= lt!453813 lt!453815)))

(assert (=> d!123241 (= (getValueByKey!589 lt!453816 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!278 (List!21929 (_ BitVec 64) V!37293) Unit!33570)

(assert (=> d!123241 (= lt!453815 (lemmaContainsTupThenGetReturnValue!278 lt!453816 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun insertStrictlySorted!370 (List!21929 (_ BitVec 64) V!37293) List!21929)

(assert (=> d!123241 (= lt!453816 (insertStrictlySorted!370 (toList!6909 call!43455) (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (=> d!123241 (= (+!3061 call!43455 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) lt!453814)))

(declare-fun b!1029498 () Bool)

(declare-fun res!688711 () Bool)

(assert (=> b!1029498 (=> (not res!688711) (not e!581289))))

(assert (=> b!1029498 (= res!688711 (= (getValueByKey!589 (toList!6909 lt!453814) (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029499 () Bool)

(declare-fun contains!5992 (List!21929 tuple2!15650) Bool)

(assert (=> b!1029499 (= e!581289 (contains!5992 (toList!6909 lt!453814) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))

(assert (= (and d!123241 res!688710) b!1029498))

(assert (= (and b!1029498 res!688711) b!1029499))

(declare-fun m!948811 () Bool)

(assert (=> d!123241 m!948811))

(declare-fun m!948813 () Bool)

(assert (=> d!123241 m!948813))

(declare-fun m!948815 () Bool)

(assert (=> d!123241 m!948815))

(declare-fun m!948817 () Bool)

(assert (=> d!123241 m!948817))

(declare-fun m!948819 () Bool)

(assert (=> b!1029498 m!948819))

(declare-fun m!948821 () Bool)

(assert (=> b!1029499 m!948821))

(assert (=> b!1029253 d!123241))

(assert (=> b!1029162 d!123173))

(declare-fun d!123243 () Bool)

(declare-fun res!688712 () Bool)

(declare-fun e!581290 () Bool)

(assert (=> d!123243 (=> res!688712 e!581290)))

(assert (=> d!123243 (= res!688712 (= (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!123243 (= (arrayContainsKey!0 lt!453561 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!581290)))

(declare-fun b!1029500 () Bool)

(declare-fun e!581291 () Bool)

(assert (=> b!1029500 (= e!581290 e!581291)))

(declare-fun res!688713 () Bool)

(assert (=> b!1029500 (=> (not res!688713) (not e!581291))))

(assert (=> b!1029500 (= res!688713 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31653 lt!453561)))))

(declare-fun b!1029501 () Bool)

(assert (=> b!1029501 (= e!581291 (arrayContainsKey!0 lt!453561 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!123243 (not res!688712)) b!1029500))

(assert (= (and b!1029500 res!688713) b!1029501))

(assert (=> d!123243 m!948731))

(declare-fun m!948823 () Bool)

(assert (=> b!1029501 m!948823))

(assert (=> b!1029176 d!123243))

(assert (=> d!123167 d!123209))

(declare-fun b!1029502 () Bool)

(declare-fun e!581294 () Bool)

(declare-fun call!43484 () Bool)

(assert (=> b!1029502 (= e!581294 call!43484)))

(declare-fun b!1029503 () Bool)

(declare-fun e!581292 () Bool)

(declare-fun e!581293 () Bool)

(assert (=> b!1029503 (= e!581292 e!581293)))

(declare-fun res!688715 () Bool)

(assert (=> b!1029503 (=> (not res!688715) (not e!581293))))

(declare-fun e!581295 () Bool)

(assert (=> b!1029503 (= res!688715 (not e!581295))))

(declare-fun res!688716 () Bool)

(assert (=> b!1029503 (=> (not res!688716) (not e!581295))))

(assert (=> b!1029503 (= res!688716 (validKeyInArray!0 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1029504 () Bool)

(assert (=> b!1029504 (= e!581294 call!43484)))

(declare-fun b!1029505 () Bool)

(assert (=> b!1029505 (= e!581293 e!581294)))

(declare-fun c!103968 () Bool)

(assert (=> b!1029505 (= c!103968 (validKeyInArray!0 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!123245 () Bool)

(declare-fun res!688714 () Bool)

(assert (=> d!123245 (=> res!688714 e!581292)))

(assert (=> d!123245 (= res!688714 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 lt!453561)))))

(assert (=> d!123245 (= (arrayNoDuplicates!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103909 (Cons!21926 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) Nil!21927) Nil!21927)) e!581292)))

(declare-fun b!1029506 () Bool)

(assert (=> b!1029506 (= e!581295 (contains!5991 (ite c!103909 (Cons!21926 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) Nil!21927) Nil!21927) (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!43481 () Bool)

(assert (=> bm!43481 (= call!43484 (arrayNoDuplicates!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!103968 (Cons!21926 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!103909 (Cons!21926 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) Nil!21927) Nil!21927)) (ite c!103909 (Cons!21926 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) Nil!21927) Nil!21927))))))

(assert (= (and d!123245 (not res!688714)) b!1029503))

(assert (= (and b!1029503 res!688716) b!1029506))

(assert (= (and b!1029503 res!688715) b!1029505))

(assert (= (and b!1029505 c!103968) b!1029502))

(assert (= (and b!1029505 (not c!103968)) b!1029504))

(assert (= (or b!1029502 b!1029504) bm!43481))

(assert (=> b!1029503 m!948731))

(assert (=> b!1029503 m!948731))

(assert (=> b!1029503 m!948741))

(assert (=> b!1029505 m!948731))

(assert (=> b!1029505 m!948731))

(assert (=> b!1029505 m!948741))

(assert (=> b!1029506 m!948731))

(assert (=> b!1029506 m!948731))

(declare-fun m!948825 () Bool)

(assert (=> b!1029506 m!948825))

(assert (=> bm!43481 m!948731))

(declare-fun m!948827 () Bool)

(assert (=> bm!43481 m!948827))

(assert (=> bm!43466 d!123245))

(assert (=> b!1029302 d!123193))

(declare-fun d!123247 () Bool)

(declare-fun e!581296 () Bool)

(assert (=> d!123247 e!581296))

(declare-fun res!688717 () Bool)

(assert (=> d!123247 (=> (not res!688717) (not e!581296))))

(declare-fun lt!453818 () ListLongMap!13787)

(assert (=> d!123247 (= res!688717 (contains!5990 lt!453818 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453820 () List!21929)

(assert (=> d!123247 (= lt!453818 (ListLongMap!13788 lt!453820))))

(declare-fun lt!453817 () Unit!33570)

(declare-fun lt!453819 () Unit!33570)

(assert (=> d!123247 (= lt!453817 lt!453819)))

(assert (=> d!123247 (= (getValueByKey!589 lt!453820 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (=> d!123247 (= lt!453819 (lemmaContainsTupThenGetReturnValue!278 lt!453820 (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (=> d!123247 (= lt!453820 (insertStrictlySorted!370 (toList!6909 call!43462) (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (=> d!123247 (= (+!3061 call!43462 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))) lt!453818)))

(declare-fun b!1029507 () Bool)

(declare-fun res!688718 () Bool)

(assert (=> b!1029507 (=> (not res!688718) (not e!581296))))

(assert (=> b!1029507 (= res!688718 (= (getValueByKey!589 (toList!6909 lt!453818) (_1!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029508 () Bool)

(assert (=> b!1029508 (= e!581296 (contains!5992 (toList!6909 lt!453818) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))

(assert (= (and d!123247 res!688717) b!1029507))

(assert (= (and b!1029507 res!688718) b!1029508))

(declare-fun m!948829 () Bool)

(assert (=> d!123247 m!948829))

(declare-fun m!948831 () Bool)

(assert (=> d!123247 m!948831))

(declare-fun m!948833 () Bool)

(assert (=> d!123247 m!948833))

(declare-fun m!948835 () Bool)

(assert (=> d!123247 m!948835))

(declare-fun m!948837 () Bool)

(assert (=> b!1029507 m!948837))

(declare-fun m!948839 () Bool)

(assert (=> b!1029508 m!948839))

(assert (=> b!1029274 d!123247))

(declare-fun d!123249 () Bool)

(declare-fun e!581297 () Bool)

(assert (=> d!123249 e!581297))

(declare-fun res!688719 () Bool)

(assert (=> d!123249 (=> (not res!688719) (not e!581297))))

(declare-fun lt!453822 () ListLongMap!13787)

(assert (=> d!123249 (= res!688719 (contains!5990 lt!453822 (_1!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(declare-fun lt!453824 () List!21929)

(assert (=> d!123249 (= lt!453822 (ListLongMap!13788 lt!453824))))

(declare-fun lt!453821 () Unit!33570)

(declare-fun lt!453823 () Unit!33570)

(assert (=> d!123249 (= lt!453821 lt!453823)))

(assert (=> d!123249 (= (getValueByKey!589 lt!453824 (_1!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))) (Some!639 (_2!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123249 (= lt!453823 (lemmaContainsTupThenGetReturnValue!278 lt!453824 (_1!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (_2!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123249 (= lt!453824 (insertStrictlySorted!370 (toList!6909 (ite c!103900 call!43459 (ite c!103897 call!43453 call!43454))) (_1!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (_2!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123249 (= (+!3061 (ite c!103900 call!43459 (ite c!103897 call!43453 call!43454)) (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) lt!453822)))

(declare-fun b!1029509 () Bool)

(declare-fun res!688720 () Bool)

(assert (=> b!1029509 (=> (not res!688720) (not e!581297))))

(assert (=> b!1029509 (= res!688720 (= (getValueByKey!589 (toList!6909 lt!453822) (_1!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))) (Some!639 (_2!7835 (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))))

(declare-fun b!1029510 () Bool)

(assert (=> b!1029510 (= e!581297 (contains!5992 (toList!6909 lt!453822) (ite (or c!103900 c!103897) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (= (and d!123249 res!688719) b!1029509))

(assert (= (and b!1029509 res!688720) b!1029510))

(declare-fun m!948841 () Bool)

(assert (=> d!123249 m!948841))

(declare-fun m!948843 () Bool)

(assert (=> d!123249 m!948843))

(declare-fun m!948845 () Bool)

(assert (=> d!123249 m!948845))

(declare-fun m!948847 () Bool)

(assert (=> d!123249 m!948847))

(declare-fun m!948849 () Bool)

(assert (=> b!1029509 m!948849))

(declare-fun m!948851 () Bool)

(assert (=> b!1029510 m!948851))

(assert (=> bm!43455 d!123249))

(declare-fun d!123251 () Bool)

(assert (=> d!123251 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1029186 d!123251))

(declare-fun d!123253 () Bool)

(declare-fun e!581298 () Bool)

(assert (=> d!123253 e!581298))

(declare-fun res!688721 () Bool)

(assert (=> d!123253 (=> (not res!688721) (not e!581298))))

(declare-fun lt!453826 () ListLongMap!13787)

(assert (=> d!123253 (= res!688721 (contains!5990 lt!453826 (_1!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(declare-fun lt!453828 () List!21929)

(assert (=> d!123253 (= lt!453826 (ListLongMap!13788 lt!453828))))

(declare-fun lt!453825 () Unit!33570)

(declare-fun lt!453827 () Unit!33570)

(assert (=> d!123253 (= lt!453825 lt!453827)))

(assert (=> d!123253 (= (getValueByKey!589 lt!453828 (_1!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))) (Some!639 (_2!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123253 (= lt!453827 (lemmaContainsTupThenGetReturnValue!278 lt!453828 (_1!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (_2!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123253 (= lt!453828 (insertStrictlySorted!370 (toList!6909 (ite c!103906 call!43466 (ite c!103903 call!43460 call!43461))) (_1!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) (_2!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))))

(assert (=> d!123253 (= (+!3061 (ite c!103906 call!43466 (ite c!103903 call!43460 call!43461)) (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))) lt!453826)))

(declare-fun b!1029511 () Bool)

(declare-fun res!688722 () Bool)

(assert (=> b!1029511 (=> (not res!688722) (not e!581298))))

(assert (=> b!1029511 (= res!688722 (= (getValueByKey!589 (toList!6909 lt!453826) (_1!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))) (Some!639 (_2!7835 (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))))

(declare-fun b!1029512 () Bool)

(assert (=> b!1029512 (= e!581298 (contains!5992 (toList!6909 lt!453826) (ite (or c!103906 c!103903) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(assert (= (and d!123253 res!688721) b!1029511))

(assert (= (and b!1029511 res!688722) b!1029512))

(declare-fun m!948853 () Bool)

(assert (=> d!123253 m!948853))

(declare-fun m!948855 () Bool)

(assert (=> d!123253 m!948855))

(declare-fun m!948857 () Bool)

(assert (=> d!123253 m!948857))

(declare-fun m!948859 () Bool)

(assert (=> d!123253 m!948859))

(declare-fun m!948861 () Bool)

(assert (=> b!1029511 m!948861))

(declare-fun m!948863 () Bool)

(assert (=> b!1029512 m!948863))

(assert (=> bm!43462 d!123253))

(assert (=> b!1029304 d!123193))

(declare-fun bm!43482 () Bool)

(declare-fun call!43485 () (_ BitVec 32))

(assert (=> bm!43482 (= call!43485 (arrayCountValidKeys!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(declare-fun d!123255 () Bool)

(declare-fun lt!453829 () (_ BitVec 32))

(assert (=> d!123255 (and (bvsge lt!453829 #b00000000000000000000000000000000) (bvsle lt!453829 (bvsub (size!31653 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!581300 () (_ BitVec 32))

(assert (=> d!123255 (= lt!453829 e!581300)))

(declare-fun c!103970 () Bool)

(assert (=> d!123255 (= c!103970 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))))))

(assert (=> d!123255 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31653 (_keys!11273 thiss!1427)) (size!31653 lt!453561)))))

(assert (=> d!123255 (= (arrayCountValidKeys!0 lt!453561 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 (_keys!11273 thiss!1427))) lt!453829)))

(declare-fun b!1029513 () Bool)

(declare-fun e!581299 () (_ BitVec 32))

(assert (=> b!1029513 (= e!581299 call!43485)))

(declare-fun b!1029514 () Bool)

(assert (=> b!1029514 (= e!581299 (bvadd #b00000000000000000000000000000001 call!43485))))

(declare-fun b!1029515 () Bool)

(assert (=> b!1029515 (= e!581300 e!581299)))

(declare-fun c!103969 () Bool)

(assert (=> b!1029515 (= c!103969 (validKeyInArray!0 (select (arr!31137 lt!453561) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1029516 () Bool)

(assert (=> b!1029516 (= e!581300 #b00000000000000000000000000000000)))

(assert (= (and d!123255 c!103970) b!1029516))

(assert (= (and d!123255 (not c!103970)) b!1029515))

(assert (= (and b!1029515 c!103969) b!1029514))

(assert (= (and b!1029515 (not c!103969)) b!1029513))

(assert (= (or b!1029514 b!1029513) bm!43482))

(declare-fun m!948865 () Bool)

(assert (=> bm!43482 m!948865))

(assert (=> b!1029515 m!948731))

(assert (=> b!1029515 m!948731))

(assert (=> b!1029515 m!948741))

(assert (=> bm!43469 d!123255))

(assert (=> b!1029170 d!123153))

(assert (=> b!1029170 d!123165))

(declare-fun b!1029517 () Bool)

(declare-fun res!688724 () Bool)

(declare-fun e!581305 () Bool)

(assert (=> b!1029517 (=> (not res!688724) (not e!581305))))

(declare-fun e!581304 () Bool)

(assert (=> b!1029517 (= res!688724 e!581304)))

(declare-fun c!103974 () Bool)

(assert (=> b!1029517 (= c!103974 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1029518 () Bool)

(declare-fun e!581309 () Unit!33570)

(declare-fun Unit!33583 () Unit!33570)

(assert (=> b!1029518 (= e!581309 Unit!33583)))

(declare-fun bm!43483 () Bool)

(declare-fun call!43487 () ListLongMap!13787)

(declare-fun call!43486 () ListLongMap!13787)

(assert (=> bm!43483 (= call!43487 call!43486)))

(declare-fun b!1029519 () Bool)

(declare-fun e!581311 () ListLongMap!13787)

(declare-fun call!43489 () ListLongMap!13787)

(assert (=> b!1029519 (= e!581311 call!43489)))

(declare-fun b!1029520 () Bool)

(declare-fun e!581310 () Bool)

(declare-fun call!43490 () Bool)

(assert (=> b!1029520 (= e!581310 (not call!43490))))

(declare-fun d!123257 () Bool)

(assert (=> d!123257 e!581305))

(declare-fun res!688726 () Bool)

(assert (=> d!123257 (=> (not res!688726) (not e!581305))))

(assert (=> d!123257 (= res!688726 (or (bvsge #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))))

(declare-fun lt!453841 () ListLongMap!13787)

(declare-fun lt!453830 () ListLongMap!13787)

(assert (=> d!123257 (= lt!453841 lt!453830)))

(declare-fun lt!453834 () Unit!33570)

(assert (=> d!123257 (= lt!453834 e!581309)))

(declare-fun c!103971 () Bool)

(declare-fun e!581308 () Bool)

(assert (=> d!123257 (= c!103971 e!581308)))

(declare-fun res!688731 () Bool)

(assert (=> d!123257 (=> (not res!688731) (not e!581308))))

(assert (=> d!123257 (= res!688731 (bvslt #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun e!581301 () ListLongMap!13787)

(assert (=> d!123257 (= lt!453830 e!581301)))

(declare-fun c!103976 () Bool)

(assert (=> d!123257 (= c!103976 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123257 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123257 (= (getCurrentListMap!3916 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) lt!453841)))

(declare-fun b!1029521 () Bool)

(declare-fun call!43488 () ListLongMap!13787)

(assert (=> b!1029521 (= e!581301 (+!3061 call!43488 (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427))))))

(declare-fun bm!43484 () Bool)

(assert (=> bm!43484 (= call!43490 (contains!5990 lt!453841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029522 () Bool)

(declare-fun call!43491 () Bool)

(assert (=> b!1029522 (= e!581304 (not call!43491))))

(declare-fun bm!43485 () Bool)

(assert (=> bm!43485 (= call!43489 call!43488)))

(declare-fun b!1029523 () Bool)

(declare-fun e!581312 () Bool)

(assert (=> b!1029523 (= e!581304 e!581312)))

(declare-fun res!688729 () Bool)

(assert (=> b!1029523 (= res!688729 call!43491)))

(assert (=> b!1029523 (=> (not res!688729) (not e!581312))))

(declare-fun b!1029524 () Bool)

(declare-fun e!581303 () ListLongMap!13787)

(assert (=> b!1029524 (= e!581301 e!581303)))

(declare-fun c!103973 () Bool)

(assert (=> b!1029524 (= c!103973 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029525 () Bool)

(assert (=> b!1029525 (= e!581312 (= (apply!938 lt!453841 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5951 thiss!1427)))))

(declare-fun bm!43486 () Bool)

(declare-fun call!43492 () ListLongMap!13787)

(assert (=> bm!43486 (= call!43492 (getCurrentListMapNoExtraKeys!3531 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun b!1029526 () Bool)

(declare-fun c!103972 () Bool)

(assert (=> b!1029526 (= c!103972 (and (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1029526 (= e!581303 e!581311)))

(declare-fun b!1029527 () Bool)

(declare-fun e!581313 () Bool)

(assert (=> b!1029527 (= e!581313 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1029528 () Bool)

(declare-fun e!581302 () Bool)

(declare-fun e!581307 () Bool)

(assert (=> b!1029528 (= e!581302 e!581307)))

(declare-fun res!688730 () Bool)

(assert (=> b!1029528 (=> (not res!688730) (not e!581307))))

(assert (=> b!1029528 (= res!688730 (contains!5990 lt!453841 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> b!1029528 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun b!1029529 () Bool)

(assert (=> b!1029529 (= e!581307 (= (apply!938 lt!453841 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)) (get!16367 (select (arr!31138 (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1029529 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31654 (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))))))))

(assert (=> b!1029529 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun b!1029530 () Bool)

(declare-fun lt!453837 () Unit!33570)

(assert (=> b!1029530 (= e!581309 lt!453837)))

(declare-fun lt!453848 () ListLongMap!13787)

(assert (=> b!1029530 (= lt!453848 (getCurrentListMapNoExtraKeys!3531 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453843 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453843 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453832 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453832 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453851 () Unit!33570)

(assert (=> b!1029530 (= lt!453851 (addStillContains!626 lt!453848 lt!453843 (zeroValue!5951 thiss!1427) lt!453832))))

(assert (=> b!1029530 (contains!5990 (+!3061 lt!453848 (tuple2!15651 lt!453843 (zeroValue!5951 thiss!1427))) lt!453832)))

(declare-fun lt!453844 () Unit!33570)

(assert (=> b!1029530 (= lt!453844 lt!453851)))

(declare-fun lt!453838 () ListLongMap!13787)

(assert (=> b!1029530 (= lt!453838 (getCurrentListMapNoExtraKeys!3531 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453831 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453831 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453850 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453850 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453842 () Unit!33570)

(assert (=> b!1029530 (= lt!453842 (addApplyDifferent!478 lt!453838 lt!453831 (minValue!5951 thiss!1427) lt!453850))))

(assert (=> b!1029530 (= (apply!938 (+!3061 lt!453838 (tuple2!15651 lt!453831 (minValue!5951 thiss!1427))) lt!453850) (apply!938 lt!453838 lt!453850))))

(declare-fun lt!453839 () Unit!33570)

(assert (=> b!1029530 (= lt!453839 lt!453842)))

(declare-fun lt!453847 () ListLongMap!13787)

(assert (=> b!1029530 (= lt!453847 (getCurrentListMapNoExtraKeys!3531 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453846 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453846 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453835 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453835 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!453849 () Unit!33570)

(assert (=> b!1029530 (= lt!453849 (addApplyDifferent!478 lt!453847 lt!453846 (zeroValue!5951 thiss!1427) lt!453835))))

(assert (=> b!1029530 (= (apply!938 (+!3061 lt!453847 (tuple2!15651 lt!453846 (zeroValue!5951 thiss!1427))) lt!453835) (apply!938 lt!453847 lt!453835))))

(declare-fun lt!453833 () Unit!33570)

(assert (=> b!1029530 (= lt!453833 lt!453849)))

(declare-fun lt!453845 () ListLongMap!13787)

(assert (=> b!1029530 (= lt!453845 (getCurrentListMapNoExtraKeys!3531 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(declare-fun lt!453836 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453836 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453840 () (_ BitVec 64))

(assert (=> b!1029530 (= lt!453840 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000))))

(assert (=> b!1029530 (= lt!453837 (addApplyDifferent!478 lt!453845 lt!453836 (minValue!5951 thiss!1427) lt!453840))))

(assert (=> b!1029530 (= (apply!938 (+!3061 lt!453845 (tuple2!15651 lt!453836 (minValue!5951 thiss!1427))) lt!453840) (apply!938 lt!453845 lt!453840))))

(declare-fun b!1029531 () Bool)

(assert (=> b!1029531 (= e!581311 call!43487)))

(declare-fun b!1029532 () Bool)

(declare-fun res!688725 () Bool)

(assert (=> b!1029532 (=> (not res!688725) (not e!581305))))

(assert (=> b!1029532 (= res!688725 e!581302)))

(declare-fun res!688723 () Bool)

(assert (=> b!1029532 (=> res!688723 e!581302)))

(assert (=> b!1029532 (= res!688723 (not e!581313))))

(declare-fun res!688728 () Bool)

(assert (=> b!1029532 (=> (not res!688728) (not e!581313))))

(assert (=> b!1029532 (= res!688728 (bvslt #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(declare-fun b!1029533 () Bool)

(assert (=> b!1029533 (= e!581308 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1029534 () Bool)

(declare-fun e!581306 () Bool)

(assert (=> b!1029534 (= e!581310 e!581306)))

(declare-fun res!688727 () Bool)

(assert (=> b!1029534 (= res!688727 call!43490)))

(assert (=> b!1029534 (=> (not res!688727) (not e!581306))))

(declare-fun bm!43487 () Bool)

(assert (=> bm!43487 (= call!43486 call!43492)))

(declare-fun b!1029535 () Bool)

(assert (=> b!1029535 (= e!581306 (= (apply!938 lt!453841 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5951 thiss!1427)))))

(declare-fun bm!43488 () Bool)

(assert (=> bm!43488 (= call!43488 (+!3061 (ite c!103976 call!43492 (ite c!103973 call!43486 call!43487)) (ite (or c!103976 c!103973) (tuple2!15651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5951 thiss!1427)) (tuple2!15651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5951 thiss!1427)))))))

(declare-fun bm!43489 () Bool)

(assert (=> bm!43489 (= call!43491 (contains!5990 lt!453841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029536 () Bool)

(assert (=> b!1029536 (= e!581305 e!581310)))

(declare-fun c!103975 () Bool)

(assert (=> b!1029536 (= c!103975 (not (= (bvand (extraKeys!5847 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1029537 () Bool)

(assert (=> b!1029537 (= e!581303 call!43489)))

(assert (= (and d!123257 c!103976) b!1029521))

(assert (= (and d!123257 (not c!103976)) b!1029524))

(assert (= (and b!1029524 c!103973) b!1029537))

(assert (= (and b!1029524 (not c!103973)) b!1029526))

(assert (= (and b!1029526 c!103972) b!1029519))

(assert (= (and b!1029526 (not c!103972)) b!1029531))

(assert (= (or b!1029519 b!1029531) bm!43483))

(assert (= (or b!1029537 bm!43483) bm!43487))

(assert (= (or b!1029537 b!1029519) bm!43485))

(assert (= (or b!1029521 bm!43487) bm!43486))

(assert (= (or b!1029521 bm!43485) bm!43488))

(assert (= (and d!123257 res!688731) b!1029533))

(assert (= (and d!123257 c!103971) b!1029530))

(assert (= (and d!123257 (not c!103971)) b!1029518))

(assert (= (and d!123257 res!688726) b!1029532))

(assert (= (and b!1029532 res!688728) b!1029527))

(assert (= (and b!1029532 (not res!688723)) b!1029528))

(assert (= (and b!1029528 res!688730) b!1029529))

(assert (= (and b!1029532 res!688725) b!1029517))

(assert (= (and b!1029517 c!103974) b!1029523))

(assert (= (and b!1029517 (not c!103974)) b!1029522))

(assert (= (and b!1029523 res!688729) b!1029525))

(assert (= (or b!1029523 b!1029522) bm!43489))

(assert (= (and b!1029517 res!688724) b!1029536))

(assert (= (and b!1029536 c!103975) b!1029534))

(assert (= (and b!1029536 (not c!103975)) b!1029520))

(assert (= (and b!1029534 res!688727) b!1029535))

(assert (= (or b!1029534 b!1029520) bm!43484))

(declare-fun b_lambda!15905 () Bool)

(assert (=> (not b_lambda!15905) (not b!1029529)))

(assert (=> b!1029529 t!31025))

(declare-fun b_and!32955 () Bool)

(assert (= b_and!32953 (and (=> t!31025 result!14157) b_and!32955)))

(declare-fun m!948867 () Bool)

(assert (=> bm!43489 m!948867))

(assert (=> b!1029528 m!948659))

(assert (=> b!1029528 m!948659))

(declare-fun m!948869 () Bool)

(assert (=> b!1029528 m!948869))

(declare-fun m!948871 () Bool)

(assert (=> bm!43484 m!948871))

(declare-fun m!948873 () Bool)

(assert (=> b!1029525 m!948873))

(declare-fun m!948875 () Bool)

(assert (=> b!1029530 m!948875))

(declare-fun m!948877 () Bool)

(assert (=> b!1029530 m!948877))

(declare-fun m!948879 () Bool)

(assert (=> b!1029530 m!948879))

(declare-fun m!948881 () Bool)

(assert (=> b!1029530 m!948881))

(declare-fun m!948883 () Bool)

(assert (=> b!1029530 m!948883))

(declare-fun m!948885 () Bool)

(assert (=> b!1029530 m!948885))

(assert (=> b!1029530 m!948883))

(assert (=> b!1029530 m!948875))

(assert (=> b!1029530 m!948879))

(declare-fun m!948887 () Bool)

(assert (=> b!1029530 m!948887))

(declare-fun m!948889 () Bool)

(assert (=> b!1029530 m!948889))

(declare-fun m!948891 () Bool)

(assert (=> b!1029530 m!948891))

(declare-fun m!948893 () Bool)

(assert (=> b!1029530 m!948893))

(declare-fun m!948895 () Bool)

(assert (=> b!1029530 m!948895))

(declare-fun m!948897 () Bool)

(assert (=> b!1029530 m!948897))

(declare-fun m!948899 () Bool)

(assert (=> b!1029530 m!948899))

(declare-fun m!948901 () Bool)

(assert (=> b!1029530 m!948901))

(declare-fun m!948903 () Bool)

(assert (=> b!1029530 m!948903))

(declare-fun m!948905 () Bool)

(assert (=> b!1029530 m!948905))

(assert (=> b!1029530 m!948893))

(assert (=> b!1029530 m!948659))

(declare-fun m!948907 () Bool)

(assert (=> b!1029535 m!948907))

(assert (=> d!123257 m!948467))

(declare-fun m!948909 () Bool)

(assert (=> b!1029521 m!948909))

(assert (=> b!1029527 m!948659))

(assert (=> b!1029527 m!948659))

(assert (=> b!1029527 m!948801))

(declare-fun m!948911 () Bool)

(assert (=> bm!43488 m!948911))

(assert (=> b!1029533 m!948659))

(assert (=> b!1029533 m!948659))

(assert (=> b!1029533 m!948801))

(assert (=> bm!43486 m!948887))

(assert (=> b!1029529 m!948659))

(declare-fun m!948913 () Bool)

(assert (=> b!1029529 m!948913))

(declare-fun m!948915 () Bool)

(assert (=> b!1029529 m!948915))

(assert (=> b!1029529 m!948405))

(declare-fun m!948917 () Bool)

(assert (=> b!1029529 m!948917))

(assert (=> b!1029529 m!948915))

(assert (=> b!1029529 m!948659))

(assert (=> b!1029529 m!948405))

(assert (=> b!1029170 d!123257))

(assert (=> b!1029320 d!123207))

(declare-fun d!123259 () Bool)

(assert (=> d!123259 (= (apply!938 lt!453705 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16368 (getValueByKey!589 (toList!6909 lt!453705) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30060 () Bool)

(assert (= bs!30060 d!123259))

(assert (=> bs!30060 m!948709))

(assert (=> bs!30060 m!948709))

(declare-fun m!948919 () Bool)

(assert (=> bs!30060 m!948919))

(assert (=> b!1029288 d!123259))

(declare-fun d!123261 () Bool)

(assert (=> d!123261 (arrayContainsKey!0 lt!453561 lt!453620 #b00000000000000000000000000000000)))

(declare-fun lt!453854 () Unit!33570)

(declare-fun choose!13 (array!64672 (_ BitVec 64) (_ BitVec 32)) Unit!33570)

(assert (=> d!123261 (= lt!453854 (choose!13 lt!453561 lt!453620 #b00000000000000000000000000000000))))

(assert (=> d!123261 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!123261 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453561 lt!453620 #b00000000000000000000000000000000) lt!453854)))

(declare-fun bs!30061 () Bool)

(assert (= bs!30061 d!123261))

(assert (=> bs!30061 m!948505))

(declare-fun m!948921 () Bool)

(assert (=> bs!30061 m!948921))

(assert (=> b!1029197 d!123261))

(declare-fun d!123263 () Bool)

(declare-fun res!688732 () Bool)

(declare-fun e!581314 () Bool)

(assert (=> d!123263 (=> res!688732 e!581314)))

(assert (=> d!123263 (= res!688732 (= (select (arr!31137 lt!453561) #b00000000000000000000000000000000) lt!453620))))

(assert (=> d!123263 (= (arrayContainsKey!0 lt!453561 lt!453620 #b00000000000000000000000000000000) e!581314)))

(declare-fun b!1029538 () Bool)

(declare-fun e!581315 () Bool)

(assert (=> b!1029538 (= e!581314 e!581315)))

(declare-fun res!688733 () Bool)

(assert (=> b!1029538 (=> (not res!688733) (not e!581315))))

(assert (=> b!1029538 (= res!688733 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31653 lt!453561)))))

(declare-fun b!1029539 () Bool)

(assert (=> b!1029539 (= e!581315 (arrayContainsKey!0 lt!453561 lt!453620 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123263 (not res!688732)) b!1029538))

(assert (= (and b!1029538 res!688733) b!1029539))

(assert (=> d!123263 m!948489))

(declare-fun m!948923 () Bool)

(assert (=> b!1029539 m!948923))

(assert (=> b!1029197 d!123263))

(declare-fun e!581322 () SeekEntryResult!9671)

(declare-fun lt!453863 () SeekEntryResult!9671)

(declare-fun b!1029552 () Bool)

(assert (=> b!1029552 (= e!581322 (seekKeyOrZeroReturnVacant!0 (x!91572 lt!453863) (index!41056 lt!453863) (index!41056 lt!453863) (select (arr!31137 lt!453561) #b00000000000000000000000000000000) lt!453561 (mask!29862 thiss!1427)))))

(declare-fun d!123265 () Bool)

(declare-fun lt!453862 () SeekEntryResult!9671)

(assert (=> d!123265 (and (or ((_ is Undefined!9671) lt!453862) (not ((_ is Found!9671) lt!453862)) (and (bvsge (index!41055 lt!453862) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453862) (size!31653 lt!453561)))) (or ((_ is Undefined!9671) lt!453862) ((_ is Found!9671) lt!453862) (not ((_ is MissingZero!9671) lt!453862)) (and (bvsge (index!41054 lt!453862) #b00000000000000000000000000000000) (bvslt (index!41054 lt!453862) (size!31653 lt!453561)))) (or ((_ is Undefined!9671) lt!453862) ((_ is Found!9671) lt!453862) ((_ is MissingZero!9671) lt!453862) (not ((_ is MissingVacant!9671) lt!453862)) (and (bvsge (index!41057 lt!453862) #b00000000000000000000000000000000) (bvslt (index!41057 lt!453862) (size!31653 lt!453561)))) (or ((_ is Undefined!9671) lt!453862) (ite ((_ is Found!9671) lt!453862) (= (select (arr!31137 lt!453561) (index!41055 lt!453862)) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9671) lt!453862) (= (select (arr!31137 lt!453561) (index!41054 lt!453862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9671) lt!453862) (= (select (arr!31137 lt!453561) (index!41057 lt!453862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!581323 () SeekEntryResult!9671)

(assert (=> d!123265 (= lt!453862 e!581323)))

(declare-fun c!103984 () Bool)

(assert (=> d!123265 (= c!103984 (and ((_ is Intermediate!9671) lt!453863) (undefined!10483 lt!453863)))))

(assert (=> d!123265 (= lt!453863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) (mask!29862 thiss!1427)) (select (arr!31137 lt!453561) #b00000000000000000000000000000000) lt!453561 (mask!29862 thiss!1427)))))

(assert (=> d!123265 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123265 (= (seekEntryOrOpen!0 (select (arr!31137 lt!453561) #b00000000000000000000000000000000) lt!453561 (mask!29862 thiss!1427)) lt!453862)))

(declare-fun b!1029553 () Bool)

(declare-fun e!581324 () SeekEntryResult!9671)

(assert (=> b!1029553 (= e!581323 e!581324)))

(declare-fun lt!453861 () (_ BitVec 64))

(assert (=> b!1029553 (= lt!453861 (select (arr!31137 lt!453561) (index!41056 lt!453863)))))

(declare-fun c!103985 () Bool)

(assert (=> b!1029553 (= c!103985 (= lt!453861 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029554 () Bool)

(assert (=> b!1029554 (= e!581323 Undefined!9671)))

(declare-fun b!1029555 () Bool)

(assert (=> b!1029555 (= e!581324 (Found!9671 (index!41056 lt!453863)))))

(declare-fun b!1029556 () Bool)

(declare-fun c!103983 () Bool)

(assert (=> b!1029556 (= c!103983 (= lt!453861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029556 (= e!581324 e!581322)))

(declare-fun b!1029557 () Bool)

(assert (=> b!1029557 (= e!581322 (MissingZero!9671 (index!41056 lt!453863)))))

(assert (= (and d!123265 c!103984) b!1029554))

(assert (= (and d!123265 (not c!103984)) b!1029553))

(assert (= (and b!1029553 c!103985) b!1029555))

(assert (= (and b!1029553 (not c!103985)) b!1029556))

(assert (= (and b!1029556 c!103983) b!1029557))

(assert (= (and b!1029556 (not c!103983)) b!1029552))

(assert (=> b!1029552 m!948489))

(declare-fun m!948925 () Bool)

(assert (=> b!1029552 m!948925))

(declare-fun m!948927 () Bool)

(assert (=> d!123265 m!948927))

(declare-fun m!948929 () Bool)

(assert (=> d!123265 m!948929))

(declare-fun m!948931 () Bool)

(assert (=> d!123265 m!948931))

(assert (=> d!123265 m!948489))

(declare-fun m!948933 () Bool)

(assert (=> d!123265 m!948933))

(assert (=> d!123265 m!948467))

(assert (=> d!123265 m!948933))

(assert (=> d!123265 m!948489))

(declare-fun m!948935 () Bool)

(assert (=> d!123265 m!948935))

(declare-fun m!948937 () Bool)

(assert (=> b!1029553 m!948937))

(assert (=> b!1029197 d!123265))

(declare-fun b!1029570 () Bool)

(declare-fun e!581331 () SeekEntryResult!9671)

(assert (=> b!1029570 (= e!581331 (Found!9671 (index!41056 lt!453599)))))

(declare-fun b!1029571 () Bool)

(declare-fun e!581333 () SeekEntryResult!9671)

(assert (=> b!1029571 (= e!581333 (MissingVacant!9671 (index!41056 lt!453599)))))

(declare-fun b!1029572 () Bool)

(declare-fun c!103993 () Bool)

(declare-fun lt!453868 () (_ BitVec 64))

(assert (=> b!1029572 (= c!103993 (= lt!453868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1029572 (= e!581331 e!581333)))

(declare-fun b!1029573 () Bool)

(declare-fun e!581332 () SeekEntryResult!9671)

(assert (=> b!1029573 (= e!581332 Undefined!9671)))

(declare-fun lt!453869 () SeekEntryResult!9671)

(declare-fun d!123267 () Bool)

(assert (=> d!123267 (and (or ((_ is Undefined!9671) lt!453869) (not ((_ is Found!9671) lt!453869)) (and (bvsge (index!41055 lt!453869) #b00000000000000000000000000000000) (bvslt (index!41055 lt!453869) (size!31653 (_keys!11273 thiss!1427))))) (or ((_ is Undefined!9671) lt!453869) ((_ is Found!9671) lt!453869) (not ((_ is MissingVacant!9671) lt!453869)) (not (= (index!41057 lt!453869) (index!41056 lt!453599))) (and (bvsge (index!41057 lt!453869) #b00000000000000000000000000000000) (bvslt (index!41057 lt!453869) (size!31653 (_keys!11273 thiss!1427))))) (or ((_ is Undefined!9671) lt!453869) (ite ((_ is Found!9671) lt!453869) (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453869)) key!909) (and ((_ is MissingVacant!9671) lt!453869) (= (index!41057 lt!453869) (index!41056 lt!453599)) (= (select (arr!31137 (_keys!11273 thiss!1427)) (index!41057 lt!453869)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!123267 (= lt!453869 e!581332)))

(declare-fun c!103994 () Bool)

(assert (=> d!123267 (= c!103994 (bvsge (x!91572 lt!453599) #b01111111111111111111111111111110))))

(assert (=> d!123267 (= lt!453868 (select (arr!31137 (_keys!11273 thiss!1427)) (index!41056 lt!453599)))))

(assert (=> d!123267 (validMask!0 (mask!29862 thiss!1427))))

(assert (=> d!123267 (= (seekKeyOrZeroReturnVacant!0 (x!91572 lt!453599) (index!41056 lt!453599) (index!41056 lt!453599) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)) lt!453869)))

(declare-fun b!1029574 () Bool)

(assert (=> b!1029574 (= e!581332 e!581331)))

(declare-fun c!103992 () Bool)

(assert (=> b!1029574 (= c!103992 (= lt!453868 key!909))))

(declare-fun b!1029575 () Bool)

(assert (=> b!1029575 (= e!581333 (seekKeyOrZeroReturnVacant!0 (bvadd (x!91572 lt!453599) #b00000000000000000000000000000001) (nextIndex!0 (index!41056 lt!453599) (x!91572 lt!453599) (mask!29862 thiss!1427)) (index!41056 lt!453599) key!909 (_keys!11273 thiss!1427) (mask!29862 thiss!1427)))))

(assert (= (and d!123267 c!103994) b!1029573))

(assert (= (and d!123267 (not c!103994)) b!1029574))

(assert (= (and b!1029574 c!103992) b!1029570))

(assert (= (and b!1029574 (not c!103992)) b!1029572))

(assert (= (and b!1029572 c!103993) b!1029571))

(assert (= (and b!1029572 (not c!103993)) b!1029575))

(declare-fun m!948939 () Bool)

(assert (=> d!123267 m!948939))

(declare-fun m!948941 () Bool)

(assert (=> d!123267 m!948941))

(assert (=> d!123267 m!948469))

(assert (=> d!123267 m!948467))

(declare-fun m!948943 () Bool)

(assert (=> b!1029575 m!948943))

(assert (=> b!1029575 m!948943))

(declare-fun m!948945 () Bool)

(assert (=> b!1029575 m!948945))

(assert (=> b!1029152 d!123267))

(declare-fun d!123269 () Bool)

(assert (=> d!123269 (= (-!485 (getCurrentListMap!3916 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)) key!909) (getCurrentListMap!3916 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (array!64675 (store (arr!31138 (_values!6138 thiss!1427)) (index!41055 lt!453560) (ValueCellFull!11454 (dynLambda!1960 (defaultEntry!6115 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31654 (_values!6138 thiss!1427))) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6115 thiss!1427)))))

(assert (=> d!123269 true))

(declare-fun _$9!41 () Unit!33570)

(assert (=> d!123269 (= (choose!1695 (_keys!11273 thiss!1427) (_values!6138 thiss!1427) (mask!29862 thiss!1427) (extraKeys!5847 thiss!1427) (zeroValue!5951 thiss!1427) (minValue!5951 thiss!1427) (index!41055 lt!453560) key!909 (defaultEntry!6115 thiss!1427)) _$9!41)))

(declare-fun b_lambda!15907 () Bool)

(assert (=> (not b_lambda!15907) (not d!123269)))

(assert (=> d!123269 t!31025))

(declare-fun b_and!32957 () Bool)

(assert (= b_and!32955 (and (=> t!31025 result!14157) b_and!32957)))

(assert (=> d!123269 m!948413))

(assert (=> d!123269 m!948483))

(assert (=> d!123269 m!948399))

(assert (=> d!123269 m!948381))

(assert (=> d!123269 m!948399))

(assert (=> d!123269 m!948401))

(assert (=> d!123269 m!948405))

(assert (=> d!123151 d!123269))

(assert (=> d!123151 d!123209))

(declare-fun d!123271 () Bool)

(assert (=> d!123271 (= (apply!938 (+!3061 lt!453680 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) lt!453692) (apply!938 lt!453680 lt!453692))))

(declare-fun lt!453872 () Unit!33570)

(declare-fun choose!1696 (ListLongMap!13787 (_ BitVec 64) V!37293 (_ BitVec 64)) Unit!33570)

(assert (=> d!123271 (= lt!453872 (choose!1696 lt!453680 lt!453673 (minValue!5951 thiss!1427) lt!453692))))

(declare-fun e!581336 () Bool)

(assert (=> d!123271 e!581336))

(declare-fun res!688736 () Bool)

(assert (=> d!123271 (=> (not res!688736) (not e!581336))))

(assert (=> d!123271 (= res!688736 (contains!5990 lt!453680 lt!453692))))

(assert (=> d!123271 (= (addApplyDifferent!478 lt!453680 lt!453673 (minValue!5951 thiss!1427) lt!453692) lt!453872)))

(declare-fun b!1029579 () Bool)

(assert (=> b!1029579 (= e!581336 (not (= lt!453692 lt!453673)))))

(assert (= (and d!123271 res!688736) b!1029579))

(declare-fun m!948947 () Bool)

(assert (=> d!123271 m!948947))

(assert (=> d!123271 m!948545))

(declare-fun m!948949 () Bool)

(assert (=> d!123271 m!948949))

(assert (=> d!123271 m!948531))

(assert (=> d!123271 m!948533))

(assert (=> d!123271 m!948531))

(assert (=> b!1029262 d!123271))

(assert (=> b!1029262 d!123229))

(declare-fun d!123273 () Bool)

(assert (=> d!123273 (= (apply!938 (+!3061 lt!453689 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) lt!453677) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453689 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))) lt!453677)))))

(declare-fun bs!30062 () Bool)

(assert (= bs!30062 d!123273))

(declare-fun m!948951 () Bool)

(assert (=> bs!30062 m!948951))

(assert (=> bs!30062 m!948951))

(declare-fun m!948953 () Bool)

(assert (=> bs!30062 m!948953))

(assert (=> b!1029262 d!123273))

(declare-fun d!123275 () Bool)

(assert (=> d!123275 (= (apply!938 lt!453680 lt!453692) (get!16368 (getValueByKey!589 (toList!6909 lt!453680) lt!453692)))))

(declare-fun bs!30063 () Bool)

(assert (= bs!30063 d!123275))

(declare-fun m!948955 () Bool)

(assert (=> bs!30063 m!948955))

(assert (=> bs!30063 m!948955))

(declare-fun m!948957 () Bool)

(assert (=> bs!30063 m!948957))

(assert (=> b!1029262 d!123275))

(declare-fun d!123277 () Bool)

(declare-fun e!581337 () Bool)

(assert (=> d!123277 e!581337))

(declare-fun res!688737 () Bool)

(assert (=> d!123277 (=> (not res!688737) (not e!581337))))

(declare-fun lt!453874 () ListLongMap!13787)

(assert (=> d!123277 (= res!688737 (contains!5990 lt!453874 (_1!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453876 () List!21929)

(assert (=> d!123277 (= lt!453874 (ListLongMap!13788 lt!453876))))

(declare-fun lt!453873 () Unit!33570)

(declare-fun lt!453875 () Unit!33570)

(assert (=> d!123277 (= lt!453873 lt!453875)))

(assert (=> d!123277 (= (getValueByKey!589 lt!453876 (_1!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))))))

(assert (=> d!123277 (= lt!453875 (lemmaContainsTupThenGetReturnValue!278 lt!453876 (_1!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))))))

(assert (=> d!123277 (= lt!453876 (insertStrictlySorted!370 (toList!6909 lt!453687) (_1!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))))))

(assert (=> d!123277 (= (+!3061 lt!453687 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) lt!453874)))

(declare-fun b!1029580 () Bool)

(declare-fun res!688738 () Bool)

(assert (=> b!1029580 (=> (not res!688738) (not e!581337))))

(assert (=> b!1029580 (= res!688738 (= (getValueByKey!589 (toList!6909 lt!453874) (_1!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029581 () Bool)

(assert (=> b!1029581 (= e!581337 (contains!5992 (toList!6909 lt!453874) (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))))))

(assert (= (and d!123277 res!688737) b!1029580))

(assert (= (and b!1029580 res!688738) b!1029581))

(declare-fun m!948959 () Bool)

(assert (=> d!123277 m!948959))

(declare-fun m!948961 () Bool)

(assert (=> d!123277 m!948961))

(declare-fun m!948963 () Bool)

(assert (=> d!123277 m!948963))

(declare-fun m!948965 () Bool)

(assert (=> d!123277 m!948965))

(declare-fun m!948967 () Bool)

(assert (=> b!1029580 m!948967))

(declare-fun m!948969 () Bool)

(assert (=> b!1029581 m!948969))

(assert (=> b!1029262 d!123277))

(declare-fun d!123279 () Bool)

(assert (=> d!123279 (contains!5990 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) lt!453674)))

(declare-fun lt!453879 () Unit!33570)

(declare-fun choose!1697 (ListLongMap!13787 (_ BitVec 64) V!37293 (_ BitVec 64)) Unit!33570)

(assert (=> d!123279 (= lt!453879 (choose!1697 lt!453690 lt!453685 (zeroValue!5951 thiss!1427) lt!453674))))

(assert (=> d!123279 (contains!5990 lt!453690 lt!453674)))

(assert (=> d!123279 (= (addStillContains!626 lt!453690 lt!453685 (zeroValue!5951 thiss!1427) lt!453674) lt!453879)))

(declare-fun bs!30064 () Bool)

(assert (= bs!30064 d!123279))

(assert (=> bs!30064 m!948535))

(assert (=> bs!30064 m!948535))

(assert (=> bs!30064 m!948537))

(declare-fun m!948971 () Bool)

(assert (=> bs!30064 m!948971))

(declare-fun m!948973 () Bool)

(assert (=> bs!30064 m!948973))

(assert (=> b!1029262 d!123279))

(declare-fun d!123281 () Bool)

(declare-fun e!581338 () Bool)

(assert (=> d!123281 e!581338))

(declare-fun res!688739 () Bool)

(assert (=> d!123281 (=> (not res!688739) (not e!581338))))

(declare-fun lt!453881 () ListLongMap!13787)

(assert (=> d!123281 (= res!688739 (contains!5990 lt!453881 (_1!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453883 () List!21929)

(assert (=> d!123281 (= lt!453881 (ListLongMap!13788 lt!453883))))

(declare-fun lt!453880 () Unit!33570)

(declare-fun lt!453882 () Unit!33570)

(assert (=> d!123281 (= lt!453880 lt!453882)))

(assert (=> d!123281 (= (getValueByKey!589 lt!453883 (_1!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))))))

(assert (=> d!123281 (= lt!453882 (lemmaContainsTupThenGetReturnValue!278 lt!453883 (_1!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))))))

(assert (=> d!123281 (= lt!453883 (insertStrictlySorted!370 (toList!6909 lt!453680) (_1!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))))))

(assert (=> d!123281 (= (+!3061 lt!453680 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) lt!453881)))

(declare-fun b!1029583 () Bool)

(declare-fun res!688740 () Bool)

(assert (=> b!1029583 (=> (not res!688740) (not e!581338))))

(assert (=> b!1029583 (= res!688740 (= (getValueByKey!589 (toList!6909 lt!453881) (_1!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029584 () Bool)

(assert (=> b!1029584 (= e!581338 (contains!5992 (toList!6909 lt!453881) (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))))))

(assert (= (and d!123281 res!688739) b!1029583))

(assert (= (and b!1029583 res!688740) b!1029584))

(declare-fun m!948975 () Bool)

(assert (=> d!123281 m!948975))

(declare-fun m!948977 () Bool)

(assert (=> d!123281 m!948977))

(declare-fun m!948979 () Bool)

(assert (=> d!123281 m!948979))

(declare-fun m!948981 () Bool)

(assert (=> d!123281 m!948981))

(declare-fun m!948983 () Bool)

(assert (=> b!1029583 m!948983))

(declare-fun m!948985 () Bool)

(assert (=> b!1029584 m!948985))

(assert (=> b!1029262 d!123281))

(declare-fun d!123283 () Bool)

(assert (=> d!123283 (= (apply!938 (+!3061 lt!453687 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) lt!453682) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453687 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427)))) lt!453682)))))

(declare-fun bs!30065 () Bool)

(assert (= bs!30065 d!123283))

(declare-fun m!948987 () Bool)

(assert (=> bs!30065 m!948987))

(assert (=> bs!30065 m!948987))

(declare-fun m!948989 () Bool)

(assert (=> bs!30065 m!948989))

(assert (=> b!1029262 d!123283))

(declare-fun d!123285 () Bool)

(declare-fun e!581339 () Bool)

(assert (=> d!123285 e!581339))

(declare-fun res!688741 () Bool)

(assert (=> d!123285 (=> (not res!688741) (not e!581339))))

(declare-fun lt!453885 () ListLongMap!13787)

(assert (=> d!123285 (= res!688741 (contains!5990 lt!453885 (_1!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))))))

(declare-fun lt!453887 () List!21929)

(assert (=> d!123285 (= lt!453885 (ListLongMap!13788 lt!453887))))

(declare-fun lt!453884 () Unit!33570)

(declare-fun lt!453886 () Unit!33570)

(assert (=> d!123285 (= lt!453884 lt!453886)))

(assert (=> d!123285 (= (getValueByKey!589 lt!453887 (_1!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123285 (= lt!453886 (lemmaContainsTupThenGetReturnValue!278 lt!453887 (_1!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123285 (= lt!453887 (insertStrictlySorted!370 (toList!6909 lt!453689) (_1!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123285 (= (+!3061 lt!453689 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) lt!453885)))

(declare-fun b!1029585 () Bool)

(declare-fun res!688742 () Bool)

(assert (=> b!1029585 (=> (not res!688742) (not e!581339))))

(assert (=> b!1029585 (= res!688742 (= (getValueByKey!589 (toList!6909 lt!453885) (_1!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))))))))

(declare-fun b!1029586 () Bool)

(assert (=> b!1029586 (= e!581339 (contains!5992 (toList!6909 lt!453885) (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))))))

(assert (= (and d!123285 res!688741) b!1029585))

(assert (= (and b!1029585 res!688742) b!1029586))

(declare-fun m!948991 () Bool)

(assert (=> d!123285 m!948991))

(declare-fun m!948993 () Bool)

(assert (=> d!123285 m!948993))

(declare-fun m!948995 () Bool)

(assert (=> d!123285 m!948995))

(declare-fun m!948997 () Bool)

(assert (=> d!123285 m!948997))

(declare-fun m!948999 () Bool)

(assert (=> b!1029585 m!948999))

(declare-fun m!949001 () Bool)

(assert (=> b!1029586 m!949001))

(assert (=> b!1029262 d!123285))

(declare-fun d!123287 () Bool)

(assert (=> d!123287 (= (apply!938 lt!453689 lt!453677) (get!16368 (getValueByKey!589 (toList!6909 lt!453689) lt!453677)))))

(declare-fun bs!30066 () Bool)

(assert (= bs!30066 d!123287))

(declare-fun m!949003 () Bool)

(assert (=> bs!30066 m!949003))

(assert (=> bs!30066 m!949003))

(declare-fun m!949005 () Bool)

(assert (=> bs!30066 m!949005))

(assert (=> b!1029262 d!123287))

(declare-fun d!123289 () Bool)

(assert (=> d!123289 (= (apply!938 (+!3061 lt!453689 (tuple2!15651 lt!453688 (zeroValue!5951 thiss!1427))) lt!453677) (apply!938 lt!453689 lt!453677))))

(declare-fun lt!453888 () Unit!33570)

(assert (=> d!123289 (= lt!453888 (choose!1696 lt!453689 lt!453688 (zeroValue!5951 thiss!1427) lt!453677))))

(declare-fun e!581340 () Bool)

(assert (=> d!123289 e!581340))

(declare-fun res!688743 () Bool)

(assert (=> d!123289 (=> (not res!688743) (not e!581340))))

(assert (=> d!123289 (= res!688743 (contains!5990 lt!453689 lt!453677))))

(assert (=> d!123289 (= (addApplyDifferent!478 lt!453689 lt!453688 (zeroValue!5951 thiss!1427) lt!453677) lt!453888)))

(declare-fun b!1029587 () Bool)

(assert (=> b!1029587 (= e!581340 (not (= lt!453677 lt!453688)))))

(assert (= (and d!123289 res!688743) b!1029587))

(declare-fun m!949007 () Bool)

(assert (=> d!123289 m!949007))

(assert (=> d!123289 m!948557))

(declare-fun m!949009 () Bool)

(assert (=> d!123289 m!949009))

(assert (=> d!123289 m!948539))

(assert (=> d!123289 m!948541))

(assert (=> d!123289 m!948539))

(assert (=> b!1029262 d!123289))

(declare-fun d!123291 () Bool)

(assert (=> d!123291 (= (apply!938 lt!453687 lt!453682) (get!16368 (getValueByKey!589 (toList!6909 lt!453687) lt!453682)))))

(declare-fun bs!30067 () Bool)

(assert (= bs!30067 d!123291))

(declare-fun m!949011 () Bool)

(assert (=> bs!30067 m!949011))

(assert (=> bs!30067 m!949011))

(declare-fun m!949013 () Bool)

(assert (=> bs!30067 m!949013))

(assert (=> b!1029262 d!123291))

(declare-fun d!123293 () Bool)

(assert (=> d!123293 (= (apply!938 (+!3061 lt!453680 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427))) lt!453692) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453680 (tuple2!15651 lt!453673 (minValue!5951 thiss!1427)))) lt!453692)))))

(declare-fun bs!30068 () Bool)

(assert (= bs!30068 d!123293))

(declare-fun m!949015 () Bool)

(assert (=> bs!30068 m!949015))

(assert (=> bs!30068 m!949015))

(declare-fun m!949017 () Bool)

(assert (=> bs!30068 m!949017))

(assert (=> b!1029262 d!123293))

(declare-fun d!123295 () Bool)

(assert (=> d!123295 (= (apply!938 (+!3061 lt!453687 (tuple2!15651 lt!453678 (minValue!5951 thiss!1427))) lt!453682) (apply!938 lt!453687 lt!453682))))

(declare-fun lt!453889 () Unit!33570)

(assert (=> d!123295 (= lt!453889 (choose!1696 lt!453687 lt!453678 (minValue!5951 thiss!1427) lt!453682))))

(declare-fun e!581341 () Bool)

(assert (=> d!123295 e!581341))

(declare-fun res!688744 () Bool)

(assert (=> d!123295 (=> (not res!688744) (not e!581341))))

(assert (=> d!123295 (= res!688744 (contains!5990 lt!453687 lt!453682))))

(assert (=> d!123295 (= (addApplyDifferent!478 lt!453687 lt!453678 (minValue!5951 thiss!1427) lt!453682) lt!453889)))

(declare-fun b!1029588 () Bool)

(assert (=> b!1029588 (= e!581341 (not (= lt!453682 lt!453678)))))

(assert (= (and d!123295 res!688744) b!1029588))

(declare-fun m!949019 () Bool)

(assert (=> d!123295 m!949019))

(assert (=> d!123295 m!948553))

(declare-fun m!949021 () Bool)

(assert (=> d!123295 m!949021))

(assert (=> d!123295 m!948549))

(assert (=> d!123295 m!948551))

(assert (=> d!123295 m!948549))

(assert (=> b!1029262 d!123295))

(declare-fun d!123297 () Bool)

(declare-fun e!581343 () Bool)

(assert (=> d!123297 e!581343))

(declare-fun res!688745 () Bool)

(assert (=> d!123297 (=> res!688745 e!581343)))

(declare-fun lt!453892 () Bool)

(assert (=> d!123297 (= res!688745 (not lt!453892))))

(declare-fun lt!453890 () Bool)

(assert (=> d!123297 (= lt!453892 lt!453890)))

(declare-fun lt!453893 () Unit!33570)

(declare-fun e!581342 () Unit!33570)

(assert (=> d!123297 (= lt!453893 e!581342)))

(declare-fun c!103995 () Bool)

(assert (=> d!123297 (= c!103995 lt!453890)))

(assert (=> d!123297 (= lt!453890 (containsKey!562 (toList!6909 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) lt!453674))))

(assert (=> d!123297 (= (contains!5990 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) lt!453674) lt!453892)))

(declare-fun b!1029589 () Bool)

(declare-fun lt!453891 () Unit!33570)

(assert (=> b!1029589 (= e!581342 lt!453891)))

(assert (=> b!1029589 (= lt!453891 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) lt!453674))))

(assert (=> b!1029589 (isDefined!434 (getValueByKey!589 (toList!6909 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) lt!453674))))

(declare-fun b!1029590 () Bool)

(declare-fun Unit!33584 () Unit!33570)

(assert (=> b!1029590 (= e!581342 Unit!33584)))

(declare-fun b!1029591 () Bool)

(assert (=> b!1029591 (= e!581343 (isDefined!434 (getValueByKey!589 (toList!6909 (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) lt!453674)))))

(assert (= (and d!123297 c!103995) b!1029589))

(assert (= (and d!123297 (not c!103995)) b!1029590))

(assert (= (and d!123297 (not res!688745)) b!1029591))

(declare-fun m!949023 () Bool)

(assert (=> d!123297 m!949023))

(declare-fun m!949025 () Bool)

(assert (=> b!1029589 m!949025))

(declare-fun m!949027 () Bool)

(assert (=> b!1029589 m!949027))

(assert (=> b!1029589 m!949027))

(declare-fun m!949029 () Bool)

(assert (=> b!1029589 m!949029))

(assert (=> b!1029591 m!949027))

(assert (=> b!1029591 m!949027))

(assert (=> b!1029591 m!949029))

(assert (=> b!1029262 d!123297))

(declare-fun d!123299 () Bool)

(declare-fun e!581344 () Bool)

(assert (=> d!123299 e!581344))

(declare-fun res!688746 () Bool)

(assert (=> d!123299 (=> (not res!688746) (not e!581344))))

(declare-fun lt!453895 () ListLongMap!13787)

(assert (=> d!123299 (= res!688746 (contains!5990 lt!453895 (_1!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))))))

(declare-fun lt!453897 () List!21929)

(assert (=> d!123299 (= lt!453895 (ListLongMap!13788 lt!453897))))

(declare-fun lt!453894 () Unit!33570)

(declare-fun lt!453896 () Unit!33570)

(assert (=> d!123299 (= lt!453894 lt!453896)))

(assert (=> d!123299 (= (getValueByKey!589 lt!453897 (_1!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123299 (= lt!453896 (lemmaContainsTupThenGetReturnValue!278 lt!453897 (_1!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123299 (= lt!453897 (insertStrictlySorted!370 (toList!6909 lt!453690) (_1!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123299 (= (+!3061 lt!453690 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))) lt!453895)))

(declare-fun b!1029592 () Bool)

(declare-fun res!688747 () Bool)

(assert (=> b!1029592 (=> (not res!688747) (not e!581344))))

(assert (=> b!1029592 (= res!688747 (= (getValueByKey!589 (toList!6909 lt!453895) (_1!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))))))))

(declare-fun b!1029593 () Bool)

(assert (=> b!1029593 (= e!581344 (contains!5992 (toList!6909 lt!453895) (tuple2!15651 lt!453685 (zeroValue!5951 thiss!1427))))))

(assert (= (and d!123299 res!688746) b!1029592))

(assert (= (and b!1029592 res!688747) b!1029593))

(declare-fun m!949031 () Bool)

(assert (=> d!123299 m!949031))

(declare-fun m!949033 () Bool)

(assert (=> d!123299 m!949033))

(declare-fun m!949035 () Bool)

(assert (=> d!123299 m!949035))

(declare-fun m!949037 () Bool)

(assert (=> d!123299 m!949037))

(declare-fun m!949039 () Bool)

(assert (=> b!1029592 m!949039))

(declare-fun m!949041 () Bool)

(assert (=> b!1029593 m!949041))

(assert (=> b!1029262 d!123299))

(declare-fun d!123301 () Bool)

(declare-fun e!581346 () Bool)

(assert (=> d!123301 e!581346))

(declare-fun res!688748 () Bool)

(assert (=> d!123301 (=> res!688748 e!581346)))

(declare-fun lt!453900 () Bool)

(assert (=> d!123301 (= res!688748 (not lt!453900))))

(declare-fun lt!453898 () Bool)

(assert (=> d!123301 (= lt!453900 lt!453898)))

(declare-fun lt!453901 () Unit!33570)

(declare-fun e!581345 () Unit!33570)

(assert (=> d!123301 (= lt!453901 e!581345)))

(declare-fun c!103996 () Bool)

(assert (=> d!123301 (= c!103996 lt!453898)))

(assert (=> d!123301 (= lt!453898 (containsKey!562 (toList!6909 lt!453683) (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123301 (= (contains!5990 lt!453683 (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)) lt!453900)))

(declare-fun b!1029594 () Bool)

(declare-fun lt!453899 () Unit!33570)

(assert (=> b!1029594 (= e!581345 lt!453899)))

(assert (=> b!1029594 (= lt!453899 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453683) (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1029594 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1029595 () Bool)

(declare-fun Unit!33585 () Unit!33570)

(assert (=> b!1029595 (= e!581345 Unit!33585)))

(declare-fun b!1029596 () Bool)

(assert (=> b!1029596 (= e!581346 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453683) (select (arr!31137 (_keys!11273 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!123301 c!103996) b!1029594))

(assert (= (and d!123301 (not c!103996)) b!1029595))

(assert (= (and d!123301 (not res!688748)) b!1029596))

(assert (=> d!123301 m!948523))

(declare-fun m!949043 () Bool)

(assert (=> d!123301 m!949043))

(assert (=> b!1029594 m!948523))

(declare-fun m!949045 () Bool)

(assert (=> b!1029594 m!949045))

(assert (=> b!1029594 m!948523))

(assert (=> b!1029594 m!948749))

(assert (=> b!1029594 m!948749))

(declare-fun m!949047 () Bool)

(assert (=> b!1029594 m!949047))

(assert (=> b!1029596 m!948523))

(assert (=> b!1029596 m!948749))

(assert (=> b!1029596 m!948749))

(assert (=> b!1029596 m!949047))

(assert (=> b!1029260 d!123301))

(declare-fun d!123303 () Bool)

(assert (=> d!123303 (arrayNoDuplicates!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 Nil!21927)))

(assert (=> d!123303 true))

(declare-fun _$66!38 () Unit!33570)

(assert (=> d!123303 (= (choose!53 (_keys!11273 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41055 lt!453560) #b00000000000000000000000000000000 Nil!21927) _$66!38)))

(declare-fun bs!30069 () Bool)

(assert (= bs!30069 d!123303))

(assert (=> bs!30069 m!948413))

(assert (=> bs!30069 m!948479))

(assert (=> d!123149 d!123303))

(declare-fun d!123305 () Bool)

(declare-fun e!581347 () Bool)

(assert (=> d!123305 e!581347))

(declare-fun res!688749 () Bool)

(assert (=> d!123305 (=> (not res!688749) (not e!581347))))

(declare-fun lt!453903 () ListLongMap!13787)

(assert (=> d!123305 (= res!688749 (contains!5990 lt!453903 (_1!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453905 () List!21929)

(assert (=> d!123305 (= lt!453903 (ListLongMap!13788 lt!453905))))

(declare-fun lt!453902 () Unit!33570)

(declare-fun lt!453904 () Unit!33570)

(assert (=> d!123305 (= lt!453902 lt!453904)))

(assert (=> d!123305 (= (getValueByKey!589 lt!453905 (_1!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))))))

(assert (=> d!123305 (= lt!453904 (lemmaContainsTupThenGetReturnValue!278 lt!453905 (_1!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))))))

(assert (=> d!123305 (= lt!453905 (insertStrictlySorted!370 (toList!6909 lt!453709) (_1!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))))))

(assert (=> d!123305 (= (+!3061 lt!453709 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) lt!453903)))

(declare-fun b!1029597 () Bool)

(declare-fun res!688750 () Bool)

(assert (=> b!1029597 (=> (not res!688750) (not e!581347))))

(assert (=> b!1029597 (= res!688750 (= (getValueByKey!589 (toList!6909 lt!453903) (_1!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029598 () Bool)

(assert (=> b!1029598 (= e!581347 (contains!5992 (toList!6909 lt!453903) (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))))))

(assert (= (and d!123305 res!688749) b!1029597))

(assert (= (and b!1029597 res!688750) b!1029598))

(declare-fun m!949049 () Bool)

(assert (=> d!123305 m!949049))

(declare-fun m!949051 () Bool)

(assert (=> d!123305 m!949051))

(declare-fun m!949053 () Bool)

(assert (=> d!123305 m!949053))

(declare-fun m!949055 () Bool)

(assert (=> d!123305 m!949055))

(declare-fun m!949057 () Bool)

(assert (=> b!1029597 m!949057))

(declare-fun m!949059 () Bool)

(assert (=> b!1029598 m!949059))

(assert (=> b!1029283 d!123305))

(declare-fun d!123307 () Bool)

(declare-fun e!581348 () Bool)

(assert (=> d!123307 e!581348))

(declare-fun res!688751 () Bool)

(assert (=> d!123307 (=> (not res!688751) (not e!581348))))

(declare-fun lt!453907 () ListLongMap!13787)

(assert (=> d!123307 (= res!688751 (contains!5990 lt!453907 (_1!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))))))

(declare-fun lt!453909 () List!21929)

(assert (=> d!123307 (= lt!453907 (ListLongMap!13788 lt!453909))))

(declare-fun lt!453906 () Unit!33570)

(declare-fun lt!453908 () Unit!33570)

(assert (=> d!123307 (= lt!453906 lt!453908)))

(assert (=> d!123307 (= (getValueByKey!589 lt!453909 (_1!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123307 (= lt!453908 (lemmaContainsTupThenGetReturnValue!278 lt!453909 (_1!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123307 (= lt!453909 (insertStrictlySorted!370 (toList!6909 lt!453712) (_1!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123307 (= (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) lt!453907)))

(declare-fun b!1029599 () Bool)

(declare-fun res!688752 () Bool)

(assert (=> b!1029599 (=> (not res!688752) (not e!581348))))

(assert (=> b!1029599 (= res!688752 (= (getValueByKey!589 (toList!6909 lt!453907) (_1!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))))))))

(declare-fun b!1029600 () Bool)

(assert (=> b!1029600 (= e!581348 (contains!5992 (toList!6909 lt!453907) (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))))))

(assert (= (and d!123307 res!688751) b!1029599))

(assert (= (and b!1029599 res!688752) b!1029600))

(declare-fun m!949061 () Bool)

(assert (=> d!123307 m!949061))

(declare-fun m!949063 () Bool)

(assert (=> d!123307 m!949063))

(declare-fun m!949065 () Bool)

(assert (=> d!123307 m!949065))

(declare-fun m!949067 () Bool)

(assert (=> d!123307 m!949067))

(declare-fun m!949069 () Bool)

(assert (=> b!1029599 m!949069))

(declare-fun m!949071 () Bool)

(assert (=> b!1029600 m!949071))

(assert (=> b!1029283 d!123307))

(assert (=> b!1029283 d!123177))

(declare-fun d!123309 () Bool)

(assert (=> d!123309 (= (apply!938 lt!453709 lt!453704) (get!16368 (getValueByKey!589 (toList!6909 lt!453709) lt!453704)))))

(declare-fun bs!30070 () Bool)

(assert (= bs!30070 d!123309))

(declare-fun m!949073 () Bool)

(assert (=> bs!30070 m!949073))

(assert (=> bs!30070 m!949073))

(declare-fun m!949075 () Bool)

(assert (=> bs!30070 m!949075))

(assert (=> b!1029283 d!123309))

(declare-fun d!123311 () Bool)

(assert (=> d!123311 (= (apply!938 (+!3061 lt!453702 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) lt!453714) (apply!938 lt!453702 lt!453714))))

(declare-fun lt!453910 () Unit!33570)

(assert (=> d!123311 (= lt!453910 (choose!1696 lt!453702 lt!453695 (minValue!5951 thiss!1427) lt!453714))))

(declare-fun e!581349 () Bool)

(assert (=> d!123311 e!581349))

(declare-fun res!688753 () Bool)

(assert (=> d!123311 (=> (not res!688753) (not e!581349))))

(assert (=> d!123311 (= res!688753 (contains!5990 lt!453702 lt!453714))))

(assert (=> d!123311 (= (addApplyDifferent!478 lt!453702 lt!453695 (minValue!5951 thiss!1427) lt!453714) lt!453910)))

(declare-fun b!1029601 () Bool)

(assert (=> b!1029601 (= e!581349 (not (= lt!453714 lt!453695)))))

(assert (= (and d!123311 res!688753) b!1029601))

(declare-fun m!949077 () Bool)

(assert (=> d!123311 m!949077))

(assert (=> d!123311 m!948599))

(declare-fun m!949079 () Bool)

(assert (=> d!123311 m!949079))

(assert (=> d!123311 m!948585))

(assert (=> d!123311 m!948587))

(assert (=> d!123311 m!948585))

(assert (=> b!1029283 d!123311))

(declare-fun d!123313 () Bool)

(assert (=> d!123313 (= (apply!938 (+!3061 lt!453709 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) lt!453704) (apply!938 lt!453709 lt!453704))))

(declare-fun lt!453911 () Unit!33570)

(assert (=> d!123313 (= lt!453911 (choose!1696 lt!453709 lt!453700 (minValue!5951 thiss!1427) lt!453704))))

(declare-fun e!581350 () Bool)

(assert (=> d!123313 e!581350))

(declare-fun res!688754 () Bool)

(assert (=> d!123313 (=> (not res!688754) (not e!581350))))

(assert (=> d!123313 (= res!688754 (contains!5990 lt!453709 lt!453704))))

(assert (=> d!123313 (= (addApplyDifferent!478 lt!453709 lt!453700 (minValue!5951 thiss!1427) lt!453704) lt!453911)))

(declare-fun b!1029602 () Bool)

(assert (=> b!1029602 (= e!581350 (not (= lt!453704 lt!453700)))))

(assert (= (and d!123313 res!688754) b!1029602))

(declare-fun m!949081 () Bool)

(assert (=> d!123313 m!949081))

(assert (=> d!123313 m!948607))

(declare-fun m!949083 () Bool)

(assert (=> d!123313 m!949083))

(assert (=> d!123313 m!948603))

(assert (=> d!123313 m!948605))

(assert (=> d!123313 m!948603))

(assert (=> b!1029283 d!123313))

(declare-fun d!123315 () Bool)

(declare-fun e!581352 () Bool)

(assert (=> d!123315 e!581352))

(declare-fun res!688755 () Bool)

(assert (=> d!123315 (=> res!688755 e!581352)))

(declare-fun lt!453914 () Bool)

(assert (=> d!123315 (= res!688755 (not lt!453914))))

(declare-fun lt!453912 () Bool)

(assert (=> d!123315 (= lt!453914 lt!453912)))

(declare-fun lt!453915 () Unit!33570)

(declare-fun e!581351 () Unit!33570)

(assert (=> d!123315 (= lt!453915 e!581351)))

(declare-fun c!103997 () Bool)

(assert (=> d!123315 (= c!103997 lt!453912)))

(assert (=> d!123315 (= lt!453912 (containsKey!562 (toList!6909 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) lt!453696))))

(assert (=> d!123315 (= (contains!5990 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) lt!453696) lt!453914)))

(declare-fun b!1029603 () Bool)

(declare-fun lt!453913 () Unit!33570)

(assert (=> b!1029603 (= e!581351 lt!453913)))

(assert (=> b!1029603 (= lt!453913 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) lt!453696))))

(assert (=> b!1029603 (isDefined!434 (getValueByKey!589 (toList!6909 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) lt!453696))))

(declare-fun b!1029604 () Bool)

(declare-fun Unit!33586 () Unit!33570)

(assert (=> b!1029604 (= e!581351 Unit!33586)))

(declare-fun b!1029605 () Bool)

(assert (=> b!1029605 (= e!581352 (isDefined!434 (getValueByKey!589 (toList!6909 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427)))) lt!453696)))))

(assert (= (and d!123315 c!103997) b!1029603))

(assert (= (and d!123315 (not c!103997)) b!1029604))

(assert (= (and d!123315 (not res!688755)) b!1029605))

(declare-fun m!949085 () Bool)

(assert (=> d!123315 m!949085))

(declare-fun m!949087 () Bool)

(assert (=> b!1029603 m!949087))

(declare-fun m!949089 () Bool)

(assert (=> b!1029603 m!949089))

(assert (=> b!1029603 m!949089))

(declare-fun m!949091 () Bool)

(assert (=> b!1029603 m!949091))

(assert (=> b!1029605 m!949089))

(assert (=> b!1029605 m!949089))

(assert (=> b!1029605 m!949091))

(assert (=> b!1029283 d!123315))

(declare-fun d!123317 () Bool)

(assert (=> d!123317 (= (apply!938 lt!453711 lt!453699) (get!16368 (getValueByKey!589 (toList!6909 lt!453711) lt!453699)))))

(declare-fun bs!30071 () Bool)

(assert (= bs!30071 d!123317))

(declare-fun m!949093 () Bool)

(assert (=> bs!30071 m!949093))

(assert (=> bs!30071 m!949093))

(declare-fun m!949095 () Bool)

(assert (=> bs!30071 m!949095))

(assert (=> b!1029283 d!123317))

(declare-fun d!123319 () Bool)

(assert (=> d!123319 (= (apply!938 lt!453702 lt!453714) (get!16368 (getValueByKey!589 (toList!6909 lt!453702) lt!453714)))))

(declare-fun bs!30072 () Bool)

(assert (= bs!30072 d!123319))

(declare-fun m!949097 () Bool)

(assert (=> bs!30072 m!949097))

(assert (=> bs!30072 m!949097))

(declare-fun m!949099 () Bool)

(assert (=> bs!30072 m!949099))

(assert (=> b!1029283 d!123319))

(declare-fun d!123321 () Bool)

(assert (=> d!123321 (= (apply!938 (+!3061 lt!453702 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) lt!453714) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453702 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))) lt!453714)))))

(declare-fun bs!30073 () Bool)

(assert (= bs!30073 d!123321))

(declare-fun m!949101 () Bool)

(assert (=> bs!30073 m!949101))

(assert (=> bs!30073 m!949101))

(declare-fun m!949103 () Bool)

(assert (=> bs!30073 m!949103))

(assert (=> b!1029283 d!123321))

(declare-fun d!123323 () Bool)

(declare-fun e!581353 () Bool)

(assert (=> d!123323 e!581353))

(declare-fun res!688756 () Bool)

(assert (=> d!123323 (=> (not res!688756) (not e!581353))))

(declare-fun lt!453917 () ListLongMap!13787)

(assert (=> d!123323 (= res!688756 (contains!5990 lt!453917 (_1!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))))))

(declare-fun lt!453919 () List!21929)

(assert (=> d!123323 (= lt!453917 (ListLongMap!13788 lt!453919))))

(declare-fun lt!453916 () Unit!33570)

(declare-fun lt!453918 () Unit!33570)

(assert (=> d!123323 (= lt!453916 lt!453918)))

(assert (=> d!123323 (= (getValueByKey!589 lt!453919 (_1!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))))))

(assert (=> d!123323 (= lt!453918 (lemmaContainsTupThenGetReturnValue!278 lt!453919 (_1!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))))))

(assert (=> d!123323 (= lt!453919 (insertStrictlySorted!370 (toList!6909 lt!453702) (_1!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))))))

(assert (=> d!123323 (= (+!3061 lt!453702 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))) lt!453917)))

(declare-fun b!1029606 () Bool)

(declare-fun res!688757 () Bool)

(assert (=> b!1029606 (=> (not res!688757) (not e!581353))))

(assert (=> b!1029606 (= res!688757 (= (getValueByKey!589 (toList!6909 lt!453917) (_1!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))))))))

(declare-fun b!1029607 () Bool)

(assert (=> b!1029607 (= e!581353 (contains!5992 (toList!6909 lt!453917) (tuple2!15651 lt!453695 (minValue!5951 thiss!1427))))))

(assert (= (and d!123323 res!688756) b!1029606))

(assert (= (and b!1029606 res!688757) b!1029607))

(declare-fun m!949105 () Bool)

(assert (=> d!123323 m!949105))

(declare-fun m!949107 () Bool)

(assert (=> d!123323 m!949107))

(declare-fun m!949109 () Bool)

(assert (=> d!123323 m!949109))

(declare-fun m!949111 () Bool)

(assert (=> d!123323 m!949111))

(declare-fun m!949113 () Bool)

(assert (=> b!1029606 m!949113))

(declare-fun m!949115 () Bool)

(assert (=> b!1029607 m!949115))

(assert (=> b!1029283 d!123323))

(declare-fun d!123325 () Bool)

(assert (=> d!123325 (= (apply!938 (+!3061 lt!453709 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427))) lt!453704) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453709 (tuple2!15651 lt!453700 (minValue!5951 thiss!1427)))) lt!453704)))))

(declare-fun bs!30074 () Bool)

(assert (= bs!30074 d!123325))

(declare-fun m!949117 () Bool)

(assert (=> bs!30074 m!949117))

(assert (=> bs!30074 m!949117))

(declare-fun m!949119 () Bool)

(assert (=> bs!30074 m!949119))

(assert (=> b!1029283 d!123325))

(declare-fun d!123327 () Bool)

(assert (=> d!123327 (= (apply!938 (+!3061 lt!453711 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) lt!453699) (apply!938 lt!453711 lt!453699))))

(declare-fun lt!453920 () Unit!33570)

(assert (=> d!123327 (= lt!453920 (choose!1696 lt!453711 lt!453710 (zeroValue!5951 thiss!1427) lt!453699))))

(declare-fun e!581354 () Bool)

(assert (=> d!123327 e!581354))

(declare-fun res!688758 () Bool)

(assert (=> d!123327 (=> (not res!688758) (not e!581354))))

(assert (=> d!123327 (= res!688758 (contains!5990 lt!453711 lt!453699))))

(assert (=> d!123327 (= (addApplyDifferent!478 lt!453711 lt!453710 (zeroValue!5951 thiss!1427) lt!453699) lt!453920)))

(declare-fun b!1029608 () Bool)

(assert (=> b!1029608 (= e!581354 (not (= lt!453699 lt!453710)))))

(assert (= (and d!123327 res!688758) b!1029608))

(declare-fun m!949121 () Bool)

(assert (=> d!123327 m!949121))

(assert (=> d!123327 m!948611))

(declare-fun m!949123 () Bool)

(assert (=> d!123327 m!949123))

(assert (=> d!123327 m!948593))

(assert (=> d!123327 m!948595))

(assert (=> d!123327 m!948593))

(assert (=> b!1029283 d!123327))

(declare-fun d!123329 () Bool)

(assert (=> d!123329 (contains!5990 (+!3061 lt!453712 (tuple2!15651 lt!453707 (zeroValue!5951 thiss!1427))) lt!453696)))

(declare-fun lt!453921 () Unit!33570)

(assert (=> d!123329 (= lt!453921 (choose!1697 lt!453712 lt!453707 (zeroValue!5951 thiss!1427) lt!453696))))

(assert (=> d!123329 (contains!5990 lt!453712 lt!453696)))

(assert (=> d!123329 (= (addStillContains!626 lt!453712 lt!453707 (zeroValue!5951 thiss!1427) lt!453696) lt!453921)))

(declare-fun bs!30075 () Bool)

(assert (= bs!30075 d!123329))

(assert (=> bs!30075 m!948589))

(assert (=> bs!30075 m!948589))

(assert (=> bs!30075 m!948591))

(declare-fun m!949125 () Bool)

(assert (=> bs!30075 m!949125))

(declare-fun m!949127 () Bool)

(assert (=> bs!30075 m!949127))

(assert (=> b!1029283 d!123329))

(declare-fun d!123331 () Bool)

(assert (=> d!123331 (= (apply!938 (+!3061 lt!453711 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) lt!453699) (get!16368 (getValueByKey!589 (toList!6909 (+!3061 lt!453711 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))) lt!453699)))))

(declare-fun bs!30076 () Bool)

(assert (= bs!30076 d!123331))

(declare-fun m!949129 () Bool)

(assert (=> bs!30076 m!949129))

(assert (=> bs!30076 m!949129))

(declare-fun m!949131 () Bool)

(assert (=> bs!30076 m!949131))

(assert (=> b!1029283 d!123331))

(declare-fun d!123333 () Bool)

(declare-fun e!581355 () Bool)

(assert (=> d!123333 e!581355))

(declare-fun res!688759 () Bool)

(assert (=> d!123333 (=> (not res!688759) (not e!581355))))

(declare-fun lt!453923 () ListLongMap!13787)

(assert (=> d!123333 (= res!688759 (contains!5990 lt!453923 (_1!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))))))

(declare-fun lt!453925 () List!21929)

(assert (=> d!123333 (= lt!453923 (ListLongMap!13788 lt!453925))))

(declare-fun lt!453922 () Unit!33570)

(declare-fun lt!453924 () Unit!33570)

(assert (=> d!123333 (= lt!453922 lt!453924)))

(assert (=> d!123333 (= (getValueByKey!589 lt!453925 (_1!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123333 (= lt!453924 (lemmaContainsTupThenGetReturnValue!278 lt!453925 (_1!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123333 (= lt!453925 (insertStrictlySorted!370 (toList!6909 lt!453711) (_1!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) (_2!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))))))

(assert (=> d!123333 (= (+!3061 lt!453711 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))) lt!453923)))

(declare-fun b!1029609 () Bool)

(declare-fun res!688760 () Bool)

(assert (=> b!1029609 (=> (not res!688760) (not e!581355))))

(assert (=> b!1029609 (= res!688760 (= (getValueByKey!589 (toList!6909 lt!453923) (_1!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427)))) (Some!639 (_2!7835 (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))))))))

(declare-fun b!1029610 () Bool)

(assert (=> b!1029610 (= e!581355 (contains!5992 (toList!6909 lt!453923) (tuple2!15651 lt!453710 (zeroValue!5951 thiss!1427))))))

(assert (= (and d!123333 res!688759) b!1029609))

(assert (= (and b!1029609 res!688760) b!1029610))

(declare-fun m!949133 () Bool)

(assert (=> d!123333 m!949133))

(declare-fun m!949135 () Bool)

(assert (=> d!123333 m!949135))

(declare-fun m!949137 () Bool)

(assert (=> d!123333 m!949137))

(declare-fun m!949139 () Bool)

(assert (=> d!123333 m!949139))

(declare-fun m!949141 () Bool)

(assert (=> b!1029609 m!949141))

(declare-fun m!949143 () Bool)

(assert (=> b!1029610 m!949143))

(assert (=> b!1029283 d!123333))

(declare-fun d!123335 () Bool)

(declare-fun e!581357 () Bool)

(assert (=> d!123335 e!581357))

(declare-fun res!688761 () Bool)

(assert (=> d!123335 (=> res!688761 e!581357)))

(declare-fun lt!453928 () Bool)

(assert (=> d!123335 (= res!688761 (not lt!453928))))

(declare-fun lt!453926 () Bool)

(assert (=> d!123335 (= lt!453928 lt!453926)))

(declare-fun lt!453929 () Unit!33570)

(declare-fun e!581356 () Unit!33570)

(assert (=> d!123335 (= lt!453929 e!581356)))

(declare-fun c!103998 () Bool)

(assert (=> d!123335 (= c!103998 lt!453926)))

(assert (=> d!123335 (= lt!453926 (containsKey!562 (toList!6909 lt!453705) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (=> d!123335 (= (contains!5990 lt!453705 (select (arr!31137 lt!453561) #b00000000000000000000000000000000)) lt!453928)))

(declare-fun b!1029611 () Bool)

(declare-fun lt!453927 () Unit!33570)

(assert (=> b!1029611 (= e!581356 lt!453927)))

(assert (=> b!1029611 (= lt!453927 (lemmaContainsKeyImpliesGetValueByKeyDefined!394 (toList!6909 lt!453705) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(assert (=> b!1029611 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) (select (arr!31137 lt!453561) #b00000000000000000000000000000000)))))

(declare-fun b!1029612 () Bool)

(declare-fun Unit!33587 () Unit!33570)

(assert (=> b!1029612 (= e!581356 Unit!33587)))

(declare-fun b!1029613 () Bool)

(assert (=> b!1029613 (= e!581357 (isDefined!434 (getValueByKey!589 (toList!6909 lt!453705) (select (arr!31137 lt!453561) #b00000000000000000000000000000000))))))

(assert (= (and d!123335 c!103998) b!1029611))

(assert (= (and d!123335 (not c!103998)) b!1029612))

(assert (= (and d!123335 (not res!688761)) b!1029613))

(assert (=> d!123335 m!948489))

(declare-fun m!949145 () Bool)

(assert (=> d!123335 m!949145))

(assert (=> b!1029611 m!948489))

(declare-fun m!949147 () Bool)

(assert (=> b!1029611 m!949147))

(assert (=> b!1029611 m!948489))

(assert (=> b!1029611 m!948757))

(assert (=> b!1029611 m!948757))

(declare-fun m!949149 () Bool)

(assert (=> b!1029611 m!949149))

(assert (=> b!1029613 m!948489))

(assert (=> b!1029613 m!948757))

(assert (=> b!1029613 m!948757))

(assert (=> b!1029613 m!949149))

(assert (=> b!1029281 d!123335))

(declare-fun b!1029614 () Bool)

(declare-fun e!581360 () Bool)

(declare-fun call!43493 () Bool)

(assert (=> b!1029614 (= e!581360 call!43493)))

(declare-fun b!1029615 () Bool)

(declare-fun e!581358 () Bool)

(declare-fun e!581359 () Bool)

(assert (=> b!1029615 (= e!581358 e!581359)))

(declare-fun res!688763 () Bool)

(assert (=> b!1029615 (=> (not res!688763) (not e!581359))))

(declare-fun e!581361 () Bool)

(assert (=> b!1029615 (= res!688763 (not e!581361))))

(declare-fun res!688764 () Bool)

(assert (=> b!1029615 (=> (not res!688764) (not e!581361))))

(assert (=> b!1029615 (= res!688764 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1029616 () Bool)

(assert (=> b!1029616 (= e!581360 call!43493)))

(declare-fun b!1029617 () Bool)

(assert (=> b!1029617 (= e!581359 e!581360)))

(declare-fun c!103999 () Bool)

(assert (=> b!1029617 (= c!103999 (validKeyInArray!0 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!123337 () Bool)

(declare-fun res!688762 () Bool)

(assert (=> d!123337 (=> res!688762 e!581358)))

(assert (=> d!123337 (= res!688762 (bvsge #b00000000000000000000000000000000 (size!31653 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))))))))

(assert (=> d!123337 (= (arrayNoDuplicates!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) #b00000000000000000000000000000000 Nil!21927) e!581358)))

(declare-fun b!1029618 () Bool)

(assert (=> b!1029618 (= e!581361 (contains!5991 Nil!21927 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!43490 () Bool)

(assert (=> bm!43490 (= call!43493 (arrayNoDuplicates!0 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103999 (Cons!21926 (select (arr!31137 (array!64673 (store (arr!31137 (_keys!11273 thiss!1427)) (index!41055 lt!453560) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31653 (_keys!11273 thiss!1427)))) #b00000000000000000000000000000000) Nil!21927) Nil!21927)))))

(assert (= (and d!123337 (not res!688762)) b!1029615))

(assert (= (and b!1029615 res!688764) b!1029618))

(assert (= (and b!1029615 res!688763) b!1029617))

(assert (= (and b!1029617 c!103999) b!1029614))

(assert (= (and b!1029617 (not c!103999)) b!1029616))

(assert (= (or b!1029614 b!1029616) bm!43490))

(assert (=> b!1029615 m!948659))

(assert (=> b!1029615 m!948659))

(assert (=> b!1029615 m!948801))

(assert (=> b!1029617 m!948659))

(assert (=> b!1029617 m!948659))

(assert (=> b!1029617 m!948801))

(assert (=> b!1029618 m!948659))

(assert (=> b!1029618 m!948659))

(declare-fun m!949151 () Bool)

(assert (=> b!1029618 m!949151))

(assert (=> bm!43490 m!948659))

(declare-fun m!949153 () Bool)

(assert (=> bm!43490 m!949153))

(assert (=> b!1029167 d!123337))

(declare-fun d!123339 () Bool)

(assert (=> d!123339 (= (apply!938 lt!453683 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16368 (getValueByKey!589 (toList!6909 lt!453683) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30077 () Bool)

(assert (= bs!30077 d!123339))

(assert (=> bs!30077 m!948717))

(assert (=> bs!30077 m!948717))

(declare-fun m!949155 () Bool)

(assert (=> bs!30077 m!949155))

(assert (=> b!1029257 d!123339))

(declare-fun mapIsEmpty!37922 () Bool)

(declare-fun mapRes!37922 () Bool)

(assert (=> mapIsEmpty!37922 mapRes!37922))

(declare-fun condMapEmpty!37922 () Bool)

(declare-fun mapDefault!37922 () ValueCell!11454)

(assert (=> mapNonEmpty!37921 (= condMapEmpty!37922 (= mapRest!37921 ((as const (Array (_ BitVec 32) ValueCell!11454)) mapDefault!37922)))))

(declare-fun e!581363 () Bool)

(assert (=> mapNonEmpty!37921 (= tp!72855 (and e!581363 mapRes!37922))))

(declare-fun mapNonEmpty!37922 () Bool)

(declare-fun tp!72856 () Bool)

(declare-fun e!581362 () Bool)

(assert (=> mapNonEmpty!37922 (= mapRes!37922 (and tp!72856 e!581362))))

(declare-fun mapRest!37922 () (Array (_ BitVec 32) ValueCell!11454))

(declare-fun mapValue!37922 () ValueCell!11454)

(declare-fun mapKey!37922 () (_ BitVec 32))

(assert (=> mapNonEmpty!37922 (= mapRest!37921 (store mapRest!37922 mapKey!37922 mapValue!37922))))

(declare-fun b!1029620 () Bool)

(assert (=> b!1029620 (= e!581363 tp_is_empty!24315)))

(declare-fun b!1029619 () Bool)

(assert (=> b!1029619 (= e!581362 tp_is_empty!24315)))

(assert (= (and mapNonEmpty!37921 condMapEmpty!37922) mapIsEmpty!37922))

(assert (= (and mapNonEmpty!37921 (not condMapEmpty!37922)) mapNonEmpty!37922))

(assert (= (and mapNonEmpty!37922 ((_ is ValueCellFull!11454) mapValue!37922)) b!1029619))

(assert (= (and mapNonEmpty!37921 ((_ is ValueCellFull!11454) mapDefault!37922)) b!1029620))

(declare-fun m!949157 () Bool)

(assert (=> mapNonEmpty!37922 m!949157))

(declare-fun b_lambda!15909 () Bool)

(assert (= b_lambda!15905 (or (and b!1029104 b_free!20595) b_lambda!15909)))

(declare-fun b_lambda!15911 () Bool)

(assert (= b_lambda!15897 (or (and b!1029104 b_free!20595) b_lambda!15911)))

(declare-fun b_lambda!15913 () Bool)

(assert (= b_lambda!15907 (or (and b!1029104 b_free!20595) b_lambda!15913)))

(declare-fun b_lambda!15915 () Bool)

(assert (= b_lambda!15901 (or (and b!1029104 b_free!20595) b_lambda!15915)))

(declare-fun b_lambda!15917 () Bool)

(assert (= b_lambda!15903 (or (and b!1029104 b_free!20595) b_lambda!15917)))

(declare-fun b_lambda!15919 () Bool)

(assert (= b_lambda!15899 (or (and b!1029104 b_free!20595) b_lambda!15919)))

(check-sat (not b!1029535) (not b!1029529) (not b!1029591) (not b!1029416) (not b!1029589) (not b!1029488) (not b!1029363) (not bm!43473) (not b!1029585) (not b!1029512) (not bm!43479) (not d!123189) (not d!123281) (not b!1029467) (not b!1029474) (not d!123275) (not d!123327) (not bm!43476) (not b!1029358) (not d!123233) (not d!123267) (not d!123269) (not d!123319) (not b!1029615) (not d!123301) (not d!123247) (not d!123183) (not b!1029432) (not b!1029489) (not d!123177) (not b!1029498) (not b!1029396) (not d!123185) (not bm!43475) (not d!123333) (not d!123241) (not b!1029599) (not d!123283) (not d!123287) (not b_lambda!15891) (not d!123235) (not d!123279) (not b!1029473) (not b!1029510) (not d!123195) (not d!123271) (not b!1029417) (not d!123299) (not b!1029530) (not b!1029521) (not b!1029607) (not b!1029392) (not bm!43481) (not b!1029354) (not b!1029388) (not d!123313) (not b!1029362) (not b!1029515) (not b!1029511) (not b!1029374) (not b!1029469) (not bm!43480) (not b!1029617) (not b!1029593) (not d!123261) (not b!1029492) (not d!123191) (not d!123339) (not b_lambda!15909) (not d!123265) (not b_lambda!15915) (not b!1029479) (not b!1029408) (not d!123323) (not b!1029611) (not b!1029426) (not b!1029598) (not b!1029440) (not b!1029357) (not b!1029387) (not d!123199) (not b_lambda!15883) (not b!1029478) (not b!1029427) (not b!1029365) (not b!1029610) (not b!1029581) (not d!123181) (not b_lambda!15895) (not d!123259) (not b!1029606) (not b!1029584) (not d!123203) (not b!1029409) (not b!1029533) (not d!123305) (not d!123285) (not d!123213) (not d!123335) (not b!1029509) (not b!1029367) (not b!1029539) (not b!1029507) (not b!1029603) (not b_lambda!15917) (not b!1029501) (not d!123219) (not d!123273) (not b!1029597) (not d!123253) (not d!123257) (not b!1029596) (not b_lambda!15893) (not d!123329) (not b!1029376) (not d!123215) (not b_lambda!15919) (not b!1029592) (not bm!43477) (not b!1029613) (not b!1029482) (not d!123331) (not bm!43478) (not b!1029503) (not b!1029438) (not b_lambda!15913) (not b!1029594) (not bm!43482) (not b!1029586) (not b!1029422) (not b!1029359) (not b!1029528) (not mapNonEmpty!37922) (not b!1029420) (not d!123315) (not d!123293) (not d!123289) (not d!123225) (not b!1029395) (not bm!43489) (not b!1029505) (not b!1029605) (not b!1029508) (not d!123295) (not d!123249) (not bm!43488) (not b!1029425) (not b!1029580) (not bm!43484) (not b!1029394) (not d!123223) (not d!123303) (not b!1029472) (not b!1029481) (not b!1029527) (not d!123317) (not b!1029575) (not b!1029506) tp_is_empty!24315 (not d!123311) (not bm!43490) (not b!1029486) (not d!123325) (not b!1029477) (not bm!43474) (not b!1029480) (not b_next!20595) (not b!1029499) (not b!1029552) (not d!123297) (not b!1029618) (not b_lambda!15911) (not b!1029525) (not b!1029583) (not b!1029600) (not d!123277) (not b!1029419) (not d!123309) (not d!123197) (not d!123321) (not d!123291) b_and!32957 (not b!1029423) (not d!123307) (not d!123229) (not b!1029364) (not b!1029441) (not b!1029439) (not bm!43486) (not b!1029609))
(check-sat b_and!32957 (not b_next!20595))
