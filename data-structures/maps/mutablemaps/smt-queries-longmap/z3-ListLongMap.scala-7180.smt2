; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91930 () Bool)

(assert start!91930)

(declare-fun b!1045205 () Bool)

(declare-fun b_free!21135 () Bool)

(declare-fun b_next!21135 () Bool)

(assert (=> b!1045205 (= b_free!21135 (not b_next!21135))))

(declare-fun tp!74662 () Bool)

(declare-fun b_and!33767 () Bool)

(assert (=> b!1045205 (= tp!74662 b_and!33767)))

(declare-fun mapIsEmpty!38921 () Bool)

(declare-fun mapRes!38921 () Bool)

(assert (=> mapIsEmpty!38921 mapRes!38921))

(declare-fun tp_is_empty!24855 () Bool)

(declare-fun e!592492 () Bool)

(declare-datatypes ((V!38013 0))(
  ( (V!38014 (val!12478 Int)) )
))
(declare-datatypes ((ValueCell!11724 0))(
  ( (ValueCellFull!11724 (v!15074 V!38013)) (EmptyCell!11724) )
))
(declare-datatypes ((array!65868 0))(
  ( (array!65869 (arr!31677 (Array (_ BitVec 32) (_ BitVec 64))) (size!32213 (_ BitVec 32))) )
))
(declare-datatypes ((array!65870 0))(
  ( (array!65871 (arr!31678 (Array (_ BitVec 32) ValueCell!11724)) (size!32214 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6042 0))(
  ( (LongMapFixedSize!6043 (defaultEntry!6415 Int) (mask!30535 (_ BitVec 32)) (extraKeys!6143 (_ BitVec 32)) (zeroValue!6249 V!38013) (minValue!6249 V!38013) (_size!3076 (_ BitVec 32)) (_keys!11682 array!65868) (_values!6438 array!65870) (_vacant!3076 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6042)

(declare-fun e!592495 () Bool)

(declare-fun array_inv!24315 (array!65868) Bool)

(declare-fun array_inv!24316 (array!65870) Bool)

(assert (=> b!1045205 (= e!592492 (and tp!74662 tp_is_empty!24855 (array_inv!24315 (_keys!11682 thiss!1427)) (array_inv!24316 (_values!6438 thiss!1427)) e!592495))))

(declare-fun mapNonEmpty!38921 () Bool)

(declare-fun tp!74661 () Bool)

(declare-fun e!592498 () Bool)

(assert (=> mapNonEmpty!38921 (= mapRes!38921 (and tp!74661 e!592498))))

(declare-fun mapValue!38921 () ValueCell!11724)

(declare-fun mapRest!38921 () (Array (_ BitVec 32) ValueCell!11724))

(declare-fun mapKey!38921 () (_ BitVec 32))

(assert (=> mapNonEmpty!38921 (= (arr!31678 (_values!6438 thiss!1427)) (store mapRest!38921 mapKey!38921 mapValue!38921))))

(declare-fun b!1045207 () Bool)

(declare-fun e!592494 () Bool)

(declare-fun e!592499 () Bool)

(assert (=> b!1045207 (= e!592494 e!592499)))

(declare-fun res!696075 () Bool)

(assert (=> b!1045207 (=> (not res!696075) (not e!592499))))

(declare-datatypes ((SeekEntryResult!9845 0))(
  ( (MissingZero!9845 (index!41750 (_ BitVec 32))) (Found!9845 (index!41751 (_ BitVec 32))) (Intermediate!9845 (undefined!10657 Bool) (index!41752 (_ BitVec 32)) (x!93352 (_ BitVec 32))) (Undefined!9845) (MissingVacant!9845 (index!41753 (_ BitVec 32))) )
))
(declare-fun lt!461355 () SeekEntryResult!9845)

(get-info :version)

(assert (=> b!1045207 (= res!696075 ((_ is Found!9845) lt!461355))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65868 (_ BitVec 32)) SeekEntryResult!9845)

(assert (=> b!1045207 (= lt!461355 (seekEntry!0 key!909 (_keys!11682 thiss!1427) (mask!30535 thiss!1427)))))

(declare-fun b!1045208 () Bool)

(assert (=> b!1045208 (= e!592498 tp_is_empty!24855)))

(declare-fun b!1045209 () Bool)

(declare-fun e!592493 () Bool)

(assert (=> b!1045209 (= e!592495 (and e!592493 mapRes!38921))))

(declare-fun condMapEmpty!38921 () Bool)

(declare-fun mapDefault!38921 () ValueCell!11724)

(assert (=> b!1045209 (= condMapEmpty!38921 (= (arr!31678 (_values!6438 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11724)) mapDefault!38921)))))

(declare-fun b!1045210 () Bool)

(declare-fun res!696072 () Bool)

(declare-fun e!592496 () Bool)

(assert (=> b!1045210 (=> res!696072 e!592496)))

(declare-datatypes ((Unit!34132 0))(
  ( (Unit!34133) )
))
(declare-datatypes ((tuple2!15882 0))(
  ( (tuple2!15883 (_1!7951 Unit!34132) (_2!7951 LongMapFixedSize!6042)) )
))
(declare-fun lt!461352 () tuple2!15882)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045210 (= res!696072 (not (validMask!0 (mask!30535 (_2!7951 lt!461352)))))))

(declare-fun b!1045211 () Bool)

(assert (=> b!1045211 (= e!592496 (or (not (= (size!32214 (_values!6438 (_2!7951 lt!461352))) (bvadd #b00000000000000000000000000000001 (mask!30535 (_2!7951 lt!461352))))) (not (= (size!32213 (_keys!11682 (_2!7951 lt!461352))) (size!32214 (_values!6438 (_2!7951 lt!461352))))) (bvslt (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000000000000) (bvsge (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000000)))))

(declare-fun res!696074 () Bool)

(assert (=> start!91930 (=> (not res!696074) (not e!592494))))

(declare-fun valid!2220 (LongMapFixedSize!6042) Bool)

(assert (=> start!91930 (= res!696074 (valid!2220 thiss!1427))))

(assert (=> start!91930 e!592494))

(assert (=> start!91930 e!592492))

(assert (=> start!91930 true))

(declare-fun b!1045206 () Bool)

(assert (=> b!1045206 (= e!592493 tp_is_empty!24855)))

(declare-fun b!1045212 () Bool)

(assert (=> b!1045212 (= e!592499 (not e!592496))))

(declare-fun res!696076 () Bool)

(assert (=> b!1045212 (=> res!696076 e!592496)))

(declare-datatypes ((tuple2!15884 0))(
  ( (tuple2!15885 (_1!7952 (_ BitVec 64)) (_2!7952 V!38013)) )
))
(declare-datatypes ((List!22140 0))(
  ( (Nil!22137) (Cons!22136 (h!23344 tuple2!15884) (t!31409 List!22140)) )
))
(declare-datatypes ((ListLongMap!13901 0))(
  ( (ListLongMap!13902 (toList!6966 List!22140)) )
))
(declare-fun contains!6099 (ListLongMap!13901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3972 (array!65868 array!65870 (_ BitVec 32) (_ BitVec 32) V!38013 V!38013 (_ BitVec 32) Int) ListLongMap!13901)

(assert (=> b!1045212 (= res!696076 (not (contains!6099 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))) key!909)))))

(declare-fun lt!461357 () array!65870)

(declare-fun lt!461356 () array!65868)

(declare-fun Unit!34134 () Unit!34132)

(declare-fun Unit!34135 () Unit!34132)

(assert (=> b!1045212 (= lt!461352 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3076 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15883 Unit!34134 (LongMapFixedSize!6043 (defaultEntry!6415 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) (bvsub (_size!3076 thiss!1427) #b00000000000000000000000000000001) lt!461356 lt!461357 (bvadd #b00000000000000000000000000000001 (_vacant!3076 thiss!1427)))) (tuple2!15883 Unit!34135 (LongMapFixedSize!6043 (defaultEntry!6415 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) (bvsub (_size!3076 thiss!1427) #b00000000000000000000000000000001) lt!461356 lt!461357 (_vacant!3076 thiss!1427)))))))

(declare-fun -!542 (ListLongMap!13901 (_ BitVec 64)) ListLongMap!13901)

(assert (=> b!1045212 (= (-!542 (getCurrentListMap!3972 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)) key!909) (getCurrentListMap!3972 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun dynLambda!2016 (Int (_ BitVec 64)) V!38013)

(assert (=> b!1045212 (= lt!461357 (array!65871 (store (arr!31678 (_values!6438 thiss!1427)) (index!41751 lt!461355) (ValueCellFull!11724 (dynLambda!2016 (defaultEntry!6415 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32214 (_values!6438 thiss!1427))))))

(declare-fun lt!461358 () Unit!34132)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!62 (array!65868 array!65870 (_ BitVec 32) (_ BitVec 32) V!38013 V!38013 (_ BitVec 32) (_ BitVec 64) Int) Unit!34132)

(assert (=> b!1045212 (= lt!461358 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!62 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) (index!41751 lt!461355) key!909 (defaultEntry!6415 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045212 (not (arrayContainsKey!0 lt!461356 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461350 () Unit!34132)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65868 (_ BitVec 32) (_ BitVec 64)) Unit!34132)

(assert (=> b!1045212 (= lt!461350 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65868 (_ BitVec 32)) Bool)

(assert (=> b!1045212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461356 (mask!30535 thiss!1427))))

(declare-fun lt!461353 () Unit!34132)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65868 (_ BitVec 32) (_ BitVec 32)) Unit!34132)

(assert (=> b!1045212 (= lt!461353 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) (mask!30535 thiss!1427)))))

(declare-datatypes ((List!22141 0))(
  ( (Nil!22138) (Cons!22137 (h!23345 (_ BitVec 64)) (t!31410 List!22141)) )
))
(declare-fun arrayNoDuplicates!0 (array!65868 (_ BitVec 32) List!22141) Bool)

(assert (=> b!1045212 (arrayNoDuplicates!0 lt!461356 #b00000000000000000000000000000000 Nil!22138)))

(declare-fun lt!461351 () Unit!34132)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65868 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22141) Unit!34132)

(assert (=> b!1045212 (= lt!461351 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11682 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41751 lt!461355) #b00000000000000000000000000000000 Nil!22138))))

(declare-fun arrayCountValidKeys!0 (array!65868 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045212 (= (arrayCountValidKeys!0 lt!461356 #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11682 thiss!1427) #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045212 (= lt!461356 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun lt!461354 () Unit!34132)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65868 (_ BitVec 32) (_ BitVec 64)) Unit!34132)

(assert (=> b!1045212 (= lt!461354 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045213 () Bool)

(declare-fun res!696073 () Bool)

(assert (=> b!1045213 (=> (not res!696073) (not e!592494))))

(assert (=> b!1045213 (= res!696073 (not (= key!909 (bvneg key!909))))))

(assert (= (and start!91930 res!696074) b!1045213))

(assert (= (and b!1045213 res!696073) b!1045207))

(assert (= (and b!1045207 res!696075) b!1045212))

(assert (= (and b!1045212 (not res!696076)) b!1045210))

(assert (= (and b!1045210 (not res!696072)) b!1045211))

(assert (= (and b!1045209 condMapEmpty!38921) mapIsEmpty!38921))

(assert (= (and b!1045209 (not condMapEmpty!38921)) mapNonEmpty!38921))

(assert (= (and mapNonEmpty!38921 ((_ is ValueCellFull!11724) mapValue!38921)) b!1045208))

(assert (= (and b!1045209 ((_ is ValueCellFull!11724) mapDefault!38921)) b!1045206))

(assert (= b!1045205 b!1045209))

(assert (= start!91930 b!1045205))

(declare-fun b_lambda!16317 () Bool)

(assert (=> (not b_lambda!16317) (not b!1045212)))

(declare-fun t!31408 () Bool)

(declare-fun tb!7091 () Bool)

(assert (=> (and b!1045205 (= (defaultEntry!6415 thiss!1427) (defaultEntry!6415 thiss!1427)) t!31408) tb!7091))

(declare-fun result!14599 () Bool)

(assert (=> tb!7091 (= result!14599 tp_is_empty!24855)))

(assert (=> b!1045212 t!31408))

(declare-fun b_and!33769 () Bool)

(assert (= b_and!33767 (and (=> t!31408 result!14599) b_and!33769)))

(declare-fun m!965003 () Bool)

(assert (=> b!1045210 m!965003))

(declare-fun m!965005 () Bool)

(assert (=> b!1045207 m!965005))

(declare-fun m!965007 () Bool)

(assert (=> b!1045212 m!965007))

(declare-fun m!965009 () Bool)

(assert (=> b!1045212 m!965009))

(declare-fun m!965011 () Bool)

(assert (=> b!1045212 m!965011))

(declare-fun m!965013 () Bool)

(assert (=> b!1045212 m!965013))

(declare-fun m!965015 () Bool)

(assert (=> b!1045212 m!965015))

(declare-fun m!965017 () Bool)

(assert (=> b!1045212 m!965017))

(declare-fun m!965019 () Bool)

(assert (=> b!1045212 m!965019))

(declare-fun m!965021 () Bool)

(assert (=> b!1045212 m!965021))

(assert (=> b!1045212 m!965019))

(declare-fun m!965023 () Bool)

(assert (=> b!1045212 m!965023))

(declare-fun m!965025 () Bool)

(assert (=> b!1045212 m!965025))

(declare-fun m!965027 () Bool)

(assert (=> b!1045212 m!965027))

(declare-fun m!965029 () Bool)

(assert (=> b!1045212 m!965029))

(declare-fun m!965031 () Bool)

(assert (=> b!1045212 m!965031))

(declare-fun m!965033 () Bool)

(assert (=> b!1045212 m!965033))

(assert (=> b!1045212 m!965011))

(declare-fun m!965035 () Bool)

(assert (=> b!1045212 m!965035))

(declare-fun m!965037 () Bool)

(assert (=> b!1045212 m!965037))

(declare-fun m!965039 () Bool)

(assert (=> b!1045212 m!965039))

(declare-fun m!965041 () Bool)

(assert (=> b!1045212 m!965041))

(declare-fun m!965043 () Bool)

(assert (=> b!1045205 m!965043))

(declare-fun m!965045 () Bool)

(assert (=> b!1045205 m!965045))

(declare-fun m!965047 () Bool)

(assert (=> mapNonEmpty!38921 m!965047))

(declare-fun m!965049 () Bool)

(assert (=> start!91930 m!965049))

(check-sat (not mapNonEmpty!38921) (not b!1045207) tp_is_empty!24855 (not b!1045210) (not start!91930) (not b_lambda!16317) (not b!1045212) b_and!33769 (not b!1045205) (not b_next!21135))
(check-sat b_and!33769 (not b_next!21135))
(get-model)

(declare-fun b_lambda!16321 () Bool)

(assert (= b_lambda!16317 (or (and b!1045205 b_free!21135) b_lambda!16321)))

(check-sat (not mapNonEmpty!38921) (not b!1045207) tp_is_empty!24855 (not b!1045210) (not start!91930) (not b_lambda!16321) (not b!1045212) b_and!33769 (not b!1045205) (not b_next!21135))
(check-sat b_and!33769 (not b_next!21135))
(get-model)

(declare-fun d!126455 () Bool)

(assert (=> d!126455 (= (array_inv!24315 (_keys!11682 thiss!1427)) (bvsge (size!32213 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045205 d!126455))

(declare-fun d!126457 () Bool)

(assert (=> d!126457 (= (array_inv!24316 (_values!6438 thiss!1427)) (bvsge (size!32214 (_values!6438 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045205 d!126457))

(declare-fun d!126459 () Bool)

(assert (=> d!126459 (= (validMask!0 (mask!30535 (_2!7951 lt!461352))) (and (or (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000000000111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000000001111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000000011111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000000111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000001111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000011111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000000111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000001111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000011111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000000111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000001111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000011111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000000111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000001111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000011111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000000111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000001111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000011111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000000111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000001111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000011111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000000111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000001111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000011111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00000111111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00001111111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00011111111111111111111111111111) (= (mask!30535 (_2!7951 lt!461352)) #b00111111111111111111111111111111)) (bvsle (mask!30535 (_2!7951 lt!461352)) #b00111111111111111111111111111111)))))

(assert (=> b!1045210 d!126459))

(declare-fun d!126461 () Bool)

(declare-fun e!592529 () Bool)

(assert (=> d!126461 e!592529))

(declare-fun res!696094 () Bool)

(assert (=> d!126461 (=> res!696094 e!592529)))

(declare-fun lt!461397 () Bool)

(assert (=> d!126461 (= res!696094 (not lt!461397))))

(declare-fun lt!461394 () Bool)

(assert (=> d!126461 (= lt!461397 lt!461394)))

(declare-fun lt!461395 () Unit!34132)

(declare-fun e!592528 () Unit!34132)

(assert (=> d!126461 (= lt!461395 e!592528)))

(declare-fun c!106201 () Bool)

(assert (=> d!126461 (= c!106201 lt!461394)))

(declare-fun containsKey!570 (List!22140 (_ BitVec 64)) Bool)

(assert (=> d!126461 (= lt!461394 (containsKey!570 (toList!6966 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352)))) key!909))))

(assert (=> d!126461 (= (contains!6099 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))) key!909) lt!461397)))

(declare-fun b!1045251 () Bool)

(declare-fun lt!461396 () Unit!34132)

(assert (=> b!1045251 (= e!592528 lt!461396)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!402 (List!22140 (_ BitVec 64)) Unit!34132)

(assert (=> b!1045251 (= lt!461396 (lemmaContainsKeyImpliesGetValueByKeyDefined!402 (toList!6966 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352)))) key!909))))

(declare-datatypes ((Option!648 0))(
  ( (Some!647 (v!15076 V!38013)) (None!646) )
))
(declare-fun isDefined!442 (Option!648) Bool)

(declare-fun getValueByKey!597 (List!22140 (_ BitVec 64)) Option!648)

(assert (=> b!1045251 (isDefined!442 (getValueByKey!597 (toList!6966 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352)))) key!909))))

(declare-fun b!1045252 () Bool)

(declare-fun Unit!34140 () Unit!34132)

(assert (=> b!1045252 (= e!592528 Unit!34140)))

(declare-fun b!1045253 () Bool)

(assert (=> b!1045253 (= e!592529 (isDefined!442 (getValueByKey!597 (toList!6966 (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352)))) key!909)))))

(assert (= (and d!126461 c!106201) b!1045251))

(assert (= (and d!126461 (not c!106201)) b!1045252))

(assert (= (and d!126461 (not res!696094)) b!1045253))

(declare-fun m!965099 () Bool)

(assert (=> d!126461 m!965099))

(declare-fun m!965101 () Bool)

(assert (=> b!1045251 m!965101))

(declare-fun m!965103 () Bool)

(assert (=> b!1045251 m!965103))

(assert (=> b!1045251 m!965103))

(declare-fun m!965105 () Bool)

(assert (=> b!1045251 m!965105))

(assert (=> b!1045253 m!965103))

(assert (=> b!1045253 m!965103))

(assert (=> b!1045253 m!965105))

(assert (=> b!1045212 d!126461))

(declare-fun d!126463 () Bool)

(declare-fun res!696099 () Bool)

(declare-fun e!592534 () Bool)

(assert (=> d!126463 (=> res!696099 e!592534)))

(assert (=> d!126463 (= res!696099 (= (select (arr!31677 lt!461356) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126463 (= (arrayContainsKey!0 lt!461356 key!909 #b00000000000000000000000000000000) e!592534)))

(declare-fun b!1045258 () Bool)

(declare-fun e!592535 () Bool)

(assert (=> b!1045258 (= e!592534 e!592535)))

(declare-fun res!696100 () Bool)

(assert (=> b!1045258 (=> (not res!696100) (not e!592535))))

(assert (=> b!1045258 (= res!696100 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32213 lt!461356)))))

(declare-fun b!1045259 () Bool)

(assert (=> b!1045259 (= e!592535 (arrayContainsKey!0 lt!461356 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126463 (not res!696099)) b!1045258))

(assert (= (and b!1045258 res!696100) b!1045259))

(declare-fun m!965107 () Bool)

(assert (=> d!126463 m!965107))

(declare-fun m!965109 () Bool)

(assert (=> b!1045259 m!965109))

(assert (=> b!1045212 d!126463))

(declare-fun d!126465 () Bool)

(declare-fun lt!461400 () ListLongMap!13901)

(assert (=> d!126465 (not (contains!6099 lt!461400 key!909))))

(declare-fun removeStrictlySorted!65 (List!22140 (_ BitVec 64)) List!22140)

(assert (=> d!126465 (= lt!461400 (ListLongMap!13902 (removeStrictlySorted!65 (toList!6966 (getCurrentListMap!3972 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427))) key!909)))))

(assert (=> d!126465 (= (-!542 (getCurrentListMap!3972 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)) key!909) lt!461400)))

(declare-fun bs!30523 () Bool)

(assert (= bs!30523 d!126465))

(declare-fun m!965111 () Bool)

(assert (=> bs!30523 m!965111))

(declare-fun m!965113 () Bool)

(assert (=> bs!30523 m!965113))

(assert (=> b!1045212 d!126465))

(declare-fun b!1045302 () Bool)

(declare-fun res!696126 () Bool)

(declare-fun e!592564 () Bool)

(assert (=> b!1045302 (=> (not res!696126) (not e!592564))))

(declare-fun e!592567 () Bool)

(assert (=> b!1045302 (= res!696126 e!592567)))

(declare-fun c!106216 () Bool)

(assert (=> b!1045302 (= c!106216 (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!44491 () Bool)

(declare-fun call!44497 () Bool)

(declare-fun lt!461449 () ListLongMap!13901)

(assert (=> bm!44491 (= call!44497 (contains!6099 lt!461449 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045303 () Bool)

(declare-fun e!592574 () ListLongMap!13901)

(declare-fun call!44496 () ListLongMap!13901)

(assert (=> b!1045303 (= e!592574 call!44496)))

(declare-fun b!1045304 () Bool)

(declare-fun e!592568 () Unit!34132)

(declare-fun Unit!34141 () Unit!34132)

(assert (=> b!1045304 (= e!592568 Unit!34141)))

(declare-fun b!1045305 () Bool)

(declare-fun e!592573 () Bool)

(declare-fun e!592566 () Bool)

(assert (=> b!1045305 (= e!592573 e!592566)))

(declare-fun res!696127 () Bool)

(assert (=> b!1045305 (= res!696127 call!44497)))

(assert (=> b!1045305 (=> (not res!696127) (not e!592566))))

(declare-fun bm!44492 () Bool)

(declare-fun call!44498 () ListLongMap!13901)

(assert (=> bm!44492 (= call!44496 call!44498)))

(declare-fun b!1045306 () Bool)

(declare-fun e!592569 () ListLongMap!13901)

(declare-fun e!592572 () ListLongMap!13901)

(assert (=> b!1045306 (= e!592569 e!592572)))

(declare-fun c!106214 () Bool)

(assert (=> b!1045306 (= c!106214 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045307 () Bool)

(declare-fun e!592570 () Bool)

(declare-fun e!592562 () Bool)

(assert (=> b!1045307 (= e!592570 e!592562)))

(declare-fun res!696121 () Bool)

(assert (=> b!1045307 (=> (not res!696121) (not e!592562))))

(assert (=> b!1045307 (= res!696121 (contains!6099 lt!461449 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(assert (=> b!1045307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(declare-fun b!1045308 () Bool)

(declare-fun e!592563 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1045308 (= e!592563 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun b!1045309 () Bool)

(assert (=> b!1045309 (= e!592573 (not call!44497))))

(declare-fun b!1045310 () Bool)

(declare-fun apply!949 (ListLongMap!13901 (_ BitVec 64)) V!38013)

(declare-fun get!16570 (ValueCell!11724 V!38013) V!38013)

(assert (=> b!1045310 (= e!592562 (= (apply!949 lt!461449 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)) (get!16570 (select (arr!31678 lt!461357) #b00000000000000000000000000000000) (dynLambda!2016 (defaultEntry!6415 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32214 lt!461357)))))

(assert (=> b!1045310 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(declare-fun b!1045311 () Bool)

(declare-fun lt!461454 () Unit!34132)

(assert (=> b!1045311 (= e!592568 lt!461454)))

(declare-fun lt!461447 () ListLongMap!13901)

(declare-fun getCurrentListMapNoExtraKeys!3542 (array!65868 array!65870 (_ BitVec 32) (_ BitVec 32) V!38013 V!38013 (_ BitVec 32) Int) ListLongMap!13901)

(assert (=> b!1045311 (= lt!461447 (getCurrentListMapNoExtraKeys!3542 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461462 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461462 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461465 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461465 (select (arr!31677 lt!461356) #b00000000000000000000000000000000))))

(declare-fun lt!461463 () Unit!34132)

(declare-fun addStillContains!637 (ListLongMap!13901 (_ BitVec 64) V!38013 (_ BitVec 64)) Unit!34132)

(assert (=> b!1045311 (= lt!461463 (addStillContains!637 lt!461447 lt!461462 (zeroValue!6249 thiss!1427) lt!461465))))

(declare-fun +!3072 (ListLongMap!13901 tuple2!15884) ListLongMap!13901)

(assert (=> b!1045311 (contains!6099 (+!3072 lt!461447 (tuple2!15885 lt!461462 (zeroValue!6249 thiss!1427))) lt!461465)))

(declare-fun lt!461446 () Unit!34132)

(assert (=> b!1045311 (= lt!461446 lt!461463)))

(declare-fun lt!461460 () ListLongMap!13901)

(assert (=> b!1045311 (= lt!461460 (getCurrentListMapNoExtraKeys!3542 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461445 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461445 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461455 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461455 (select (arr!31677 lt!461356) #b00000000000000000000000000000000))))

(declare-fun lt!461466 () Unit!34132)

(declare-fun addApplyDifferent!489 (ListLongMap!13901 (_ BitVec 64) V!38013 (_ BitVec 64)) Unit!34132)

(assert (=> b!1045311 (= lt!461466 (addApplyDifferent!489 lt!461460 lt!461445 (minValue!6249 thiss!1427) lt!461455))))

(assert (=> b!1045311 (= (apply!949 (+!3072 lt!461460 (tuple2!15885 lt!461445 (minValue!6249 thiss!1427))) lt!461455) (apply!949 lt!461460 lt!461455))))

(declare-fun lt!461458 () Unit!34132)

(assert (=> b!1045311 (= lt!461458 lt!461466)))

(declare-fun lt!461450 () ListLongMap!13901)

(assert (=> b!1045311 (= lt!461450 (getCurrentListMapNoExtraKeys!3542 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461457 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461457 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461461 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461461 (select (arr!31677 lt!461356) #b00000000000000000000000000000000))))

(declare-fun lt!461451 () Unit!34132)

(assert (=> b!1045311 (= lt!461451 (addApplyDifferent!489 lt!461450 lt!461457 (zeroValue!6249 thiss!1427) lt!461461))))

(assert (=> b!1045311 (= (apply!949 (+!3072 lt!461450 (tuple2!15885 lt!461457 (zeroValue!6249 thiss!1427))) lt!461461) (apply!949 lt!461450 lt!461461))))

(declare-fun lt!461453 () Unit!34132)

(assert (=> b!1045311 (= lt!461453 lt!461451)))

(declare-fun lt!461456 () ListLongMap!13901)

(assert (=> b!1045311 (= lt!461456 (getCurrentListMapNoExtraKeys!3542 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461452 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461452 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461459 () (_ BitVec 64))

(assert (=> b!1045311 (= lt!461459 (select (arr!31677 lt!461356) #b00000000000000000000000000000000))))

(assert (=> b!1045311 (= lt!461454 (addApplyDifferent!489 lt!461456 lt!461452 (minValue!6249 thiss!1427) lt!461459))))

(assert (=> b!1045311 (= (apply!949 (+!3072 lt!461456 (tuple2!15885 lt!461452 (minValue!6249 thiss!1427))) lt!461459) (apply!949 lt!461456 lt!461459))))

(declare-fun b!1045312 () Bool)

(assert (=> b!1045312 (= e!592566 (= (apply!949 lt!461449 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6249 thiss!1427)))))

(declare-fun bm!44493 () Bool)

(declare-fun call!44495 () Bool)

(assert (=> bm!44493 (= call!44495 (contains!6099 lt!461449 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045313 () Bool)

(declare-fun call!44500 () ListLongMap!13901)

(assert (=> b!1045313 (= e!592574 call!44500)))

(declare-fun bm!44494 () Bool)

(declare-fun call!44494 () ListLongMap!13901)

(declare-fun c!106217 () Bool)

(declare-fun call!44499 () ListLongMap!13901)

(assert (=> bm!44494 (= call!44499 (+!3072 (ite c!106217 call!44494 (ite c!106214 call!44498 call!44496)) (ite (or c!106217 c!106214) (tuple2!15885 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6249 thiss!1427)) (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 thiss!1427)))))))

(declare-fun b!1045314 () Bool)

(assert (=> b!1045314 (= e!592567 (not call!44495))))

(declare-fun b!1045315 () Bool)

(declare-fun c!106219 () Bool)

(assert (=> b!1045315 (= c!106219 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1045315 (= e!592572 e!592574)))

(declare-fun d!126467 () Bool)

(assert (=> d!126467 e!592564))

(declare-fun res!696123 () Bool)

(assert (=> d!126467 (=> (not res!696123) (not e!592564))))

(assert (=> d!126467 (= res!696123 (or (bvsge #b00000000000000000000000000000000 (size!32213 lt!461356)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 lt!461356)))))))

(declare-fun lt!461464 () ListLongMap!13901)

(assert (=> d!126467 (= lt!461449 lt!461464)))

(declare-fun lt!461448 () Unit!34132)

(assert (=> d!126467 (= lt!461448 e!592568)))

(declare-fun c!106218 () Bool)

(declare-fun e!592565 () Bool)

(assert (=> d!126467 (= c!106218 e!592565)))

(declare-fun res!696125 () Bool)

(assert (=> d!126467 (=> (not res!696125) (not e!592565))))

(assert (=> d!126467 (= res!696125 (bvslt #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(assert (=> d!126467 (= lt!461464 e!592569)))

(assert (=> d!126467 (= c!106217 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126467 (validMask!0 (mask!30535 thiss!1427))))

(assert (=> d!126467 (= (getCurrentListMap!3972 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)) lt!461449)))

(declare-fun b!1045316 () Bool)

(assert (=> b!1045316 (= e!592565 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun b!1045317 () Bool)

(assert (=> b!1045317 (= e!592564 e!592573)))

(declare-fun c!106215 () Bool)

(assert (=> b!1045317 (= c!106215 (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44495 () Bool)

(assert (=> bm!44495 (= call!44500 call!44499)))

(declare-fun b!1045318 () Bool)

(assert (=> b!1045318 (= e!592569 (+!3072 call!44499 (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 thiss!1427))))))

(declare-fun bm!44496 () Bool)

(assert (=> bm!44496 (= call!44494 (getCurrentListMapNoExtraKeys!3542 lt!461356 lt!461357 (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun b!1045319 () Bool)

(declare-fun e!592571 () Bool)

(assert (=> b!1045319 (= e!592571 (= (apply!949 lt!461449 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6249 thiss!1427)))))

(declare-fun b!1045320 () Bool)

(assert (=> b!1045320 (= e!592572 call!44500)))

(declare-fun b!1045321 () Bool)

(assert (=> b!1045321 (= e!592567 e!592571)))

(declare-fun res!696119 () Bool)

(assert (=> b!1045321 (= res!696119 call!44495)))

(assert (=> b!1045321 (=> (not res!696119) (not e!592571))))

(declare-fun b!1045322 () Bool)

(declare-fun res!696124 () Bool)

(assert (=> b!1045322 (=> (not res!696124) (not e!592564))))

(assert (=> b!1045322 (= res!696124 e!592570)))

(declare-fun res!696122 () Bool)

(assert (=> b!1045322 (=> res!696122 e!592570)))

(assert (=> b!1045322 (= res!696122 (not e!592563))))

(declare-fun res!696120 () Bool)

(assert (=> b!1045322 (=> (not res!696120) (not e!592563))))

(assert (=> b!1045322 (= res!696120 (bvslt #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(declare-fun bm!44497 () Bool)

(assert (=> bm!44497 (= call!44498 call!44494)))

(assert (= (and d!126467 c!106217) b!1045318))

(assert (= (and d!126467 (not c!106217)) b!1045306))

(assert (= (and b!1045306 c!106214) b!1045320))

(assert (= (and b!1045306 (not c!106214)) b!1045315))

(assert (= (and b!1045315 c!106219) b!1045313))

(assert (= (and b!1045315 (not c!106219)) b!1045303))

(assert (= (or b!1045313 b!1045303) bm!44492))

(assert (= (or b!1045320 bm!44492) bm!44497))

(assert (= (or b!1045320 b!1045313) bm!44495))

(assert (= (or b!1045318 bm!44497) bm!44496))

(assert (= (or b!1045318 bm!44495) bm!44494))

(assert (= (and d!126467 res!696125) b!1045316))

(assert (= (and d!126467 c!106218) b!1045311))

(assert (= (and d!126467 (not c!106218)) b!1045304))

(assert (= (and d!126467 res!696123) b!1045322))

(assert (= (and b!1045322 res!696120) b!1045308))

(assert (= (and b!1045322 (not res!696122)) b!1045307))

(assert (= (and b!1045307 res!696121) b!1045310))

(assert (= (and b!1045322 res!696124) b!1045302))

(assert (= (and b!1045302 c!106216) b!1045321))

(assert (= (and b!1045302 (not c!106216)) b!1045314))

(assert (= (and b!1045321 res!696119) b!1045319))

(assert (= (or b!1045321 b!1045314) bm!44493))

(assert (= (and b!1045302 res!696126) b!1045317))

(assert (= (and b!1045317 c!106215) b!1045305))

(assert (= (and b!1045317 (not c!106215)) b!1045309))

(assert (= (and b!1045305 res!696127) b!1045312))

(assert (= (or b!1045305 b!1045309) bm!44491))

(declare-fun b_lambda!16323 () Bool)

(assert (=> (not b_lambda!16323) (not b!1045310)))

(assert (=> b!1045310 t!31408))

(declare-fun b_and!33775 () Bool)

(assert (= b_and!33769 (and (=> t!31408 result!14599) b_and!33775)))

(declare-fun m!965115 () Bool)

(assert (=> b!1045318 m!965115))

(assert (=> b!1045316 m!965107))

(assert (=> b!1045316 m!965107))

(declare-fun m!965117 () Bool)

(assert (=> b!1045316 m!965117))

(assert (=> b!1045307 m!965107))

(assert (=> b!1045307 m!965107))

(declare-fun m!965119 () Bool)

(assert (=> b!1045307 m!965119))

(declare-fun m!965121 () Bool)

(assert (=> b!1045319 m!965121))

(declare-fun m!965123 () Bool)

(assert (=> b!1045312 m!965123))

(assert (=> b!1045310 m!965107))

(declare-fun m!965125 () Bool)

(assert (=> b!1045310 m!965125))

(assert (=> b!1045310 m!965107))

(declare-fun m!965127 () Bool)

(assert (=> b!1045310 m!965127))

(assert (=> b!1045310 m!965127))

(assert (=> b!1045310 m!965041))

(declare-fun m!965129 () Bool)

(assert (=> b!1045310 m!965129))

(assert (=> b!1045310 m!965041))

(declare-fun m!965131 () Bool)

(assert (=> b!1045311 m!965131))

(declare-fun m!965133 () Bool)

(assert (=> b!1045311 m!965133))

(declare-fun m!965135 () Bool)

(assert (=> b!1045311 m!965135))

(declare-fun m!965137 () Bool)

(assert (=> b!1045311 m!965137))

(assert (=> b!1045311 m!965135))

(declare-fun m!965139 () Bool)

(assert (=> b!1045311 m!965139))

(declare-fun m!965141 () Bool)

(assert (=> b!1045311 m!965141))

(declare-fun m!965143 () Bool)

(assert (=> b!1045311 m!965143))

(declare-fun m!965145 () Bool)

(assert (=> b!1045311 m!965145))

(declare-fun m!965147 () Bool)

(assert (=> b!1045311 m!965147))

(declare-fun m!965149 () Bool)

(assert (=> b!1045311 m!965149))

(assert (=> b!1045311 m!965107))

(declare-fun m!965151 () Bool)

(assert (=> b!1045311 m!965151))

(declare-fun m!965153 () Bool)

(assert (=> b!1045311 m!965153))

(assert (=> b!1045311 m!965139))

(assert (=> b!1045311 m!965131))

(declare-fun m!965155 () Bool)

(assert (=> b!1045311 m!965155))

(declare-fun m!965157 () Bool)

(assert (=> b!1045311 m!965157))

(declare-fun m!965159 () Bool)

(assert (=> b!1045311 m!965159))

(assert (=> b!1045311 m!965143))

(declare-fun m!965161 () Bool)

(assert (=> b!1045311 m!965161))

(declare-fun m!965163 () Bool)

(assert (=> d!126467 m!965163))

(assert (=> b!1045308 m!965107))

(assert (=> b!1045308 m!965107))

(assert (=> b!1045308 m!965117))

(assert (=> bm!44496 m!965157))

(declare-fun m!965165 () Bool)

(assert (=> bm!44491 m!965165))

(declare-fun m!965167 () Bool)

(assert (=> bm!44493 m!965167))

(declare-fun m!965169 () Bool)

(assert (=> bm!44494 m!965169))

(assert (=> b!1045212 d!126467))

(declare-fun d!126469 () Bool)

(declare-fun e!592577 () Bool)

(assert (=> d!126469 e!592577))

(declare-fun res!696130 () Bool)

(assert (=> d!126469 (=> (not res!696130) (not e!592577))))

(assert (=> d!126469 (= res!696130 (and (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427)))))))

(declare-fun lt!461469 () Unit!34132)

(declare-fun choose!25 (array!65868 (_ BitVec 32) (_ BitVec 32)) Unit!34132)

(assert (=> d!126469 (= lt!461469 (choose!25 (_keys!11682 thiss!1427) (index!41751 lt!461355) (mask!30535 thiss!1427)))))

(assert (=> d!126469 (validMask!0 (mask!30535 thiss!1427))))

(assert (=> d!126469 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) (mask!30535 thiss!1427)) lt!461469)))

(declare-fun b!1045325 () Bool)

(assert (=> b!1045325 (= e!592577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))) (mask!30535 thiss!1427)))))

(assert (= (and d!126469 res!696130) b!1045325))

(declare-fun m!965171 () Bool)

(assert (=> d!126469 m!965171))

(assert (=> d!126469 m!965163))

(assert (=> b!1045325 m!965037))

(declare-fun m!965173 () Bool)

(assert (=> b!1045325 m!965173))

(assert (=> b!1045212 d!126469))

(declare-fun b!1045326 () Bool)

(declare-fun res!696138 () Bool)

(declare-fun e!592580 () Bool)

(assert (=> b!1045326 (=> (not res!696138) (not e!592580))))

(declare-fun e!592583 () Bool)

(assert (=> b!1045326 (= res!696138 e!592583)))

(declare-fun c!106222 () Bool)

(assert (=> b!1045326 (= c!106222 (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!44498 () Bool)

(declare-fun call!44504 () Bool)

(declare-fun lt!461474 () ListLongMap!13901)

(assert (=> bm!44498 (= call!44504 (contains!6099 lt!461474 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045327 () Bool)

(declare-fun e!592590 () ListLongMap!13901)

(declare-fun call!44503 () ListLongMap!13901)

(assert (=> b!1045327 (= e!592590 call!44503)))

(declare-fun b!1045328 () Bool)

(declare-fun e!592584 () Unit!34132)

(declare-fun Unit!34142 () Unit!34132)

(assert (=> b!1045328 (= e!592584 Unit!34142)))

(declare-fun b!1045329 () Bool)

(declare-fun e!592589 () Bool)

(declare-fun e!592582 () Bool)

(assert (=> b!1045329 (= e!592589 e!592582)))

(declare-fun res!696139 () Bool)

(assert (=> b!1045329 (= res!696139 call!44504)))

(assert (=> b!1045329 (=> (not res!696139) (not e!592582))))

(declare-fun bm!44499 () Bool)

(declare-fun call!44505 () ListLongMap!13901)

(assert (=> bm!44499 (= call!44503 call!44505)))

(declare-fun b!1045330 () Bool)

(declare-fun e!592585 () ListLongMap!13901)

(declare-fun e!592588 () ListLongMap!13901)

(assert (=> b!1045330 (= e!592585 e!592588)))

(declare-fun c!106220 () Bool)

(assert (=> b!1045330 (= c!106220 (and (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045331 () Bool)

(declare-fun e!592586 () Bool)

(declare-fun e!592578 () Bool)

(assert (=> b!1045331 (= e!592586 e!592578)))

(declare-fun res!696133 () Bool)

(assert (=> b!1045331 (=> (not res!696133) (not e!592578))))

(assert (=> b!1045331 (= res!696133 (contains!6099 lt!461474 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000)))))

(assert (=> b!1045331 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))))))

(declare-fun b!1045332 () Bool)

(declare-fun e!592579 () Bool)

(assert (=> b!1045332 (= e!592579 (validKeyInArray!0 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000)))))

(declare-fun b!1045333 () Bool)

(assert (=> b!1045333 (= e!592589 (not call!44504))))

(declare-fun b!1045334 () Bool)

(assert (=> b!1045334 (= e!592578 (= (apply!949 lt!461474 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000)) (get!16570 (select (arr!31678 (_values!6438 (_2!7951 lt!461352))) #b00000000000000000000000000000000) (dynLambda!2016 (defaultEntry!6415 (_2!7951 lt!461352)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045334 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32214 (_values!6438 (_2!7951 lt!461352)))))))

(assert (=> b!1045334 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))))))

(declare-fun b!1045335 () Bool)

(declare-fun lt!461479 () Unit!34132)

(assert (=> b!1045335 (= e!592584 lt!461479)))

(declare-fun lt!461472 () ListLongMap!13901)

(assert (=> b!1045335 (= lt!461472 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))))))

(declare-fun lt!461487 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461487 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461490 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461490 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000))))

(declare-fun lt!461488 () Unit!34132)

(assert (=> b!1045335 (= lt!461488 (addStillContains!637 lt!461472 lt!461487 (zeroValue!6249 (_2!7951 lt!461352)) lt!461490))))

(assert (=> b!1045335 (contains!6099 (+!3072 lt!461472 (tuple2!15885 lt!461487 (zeroValue!6249 (_2!7951 lt!461352)))) lt!461490)))

(declare-fun lt!461471 () Unit!34132)

(assert (=> b!1045335 (= lt!461471 lt!461488)))

(declare-fun lt!461485 () ListLongMap!13901)

(assert (=> b!1045335 (= lt!461485 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))))))

(declare-fun lt!461470 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461470 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461480 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461480 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000))))

(declare-fun lt!461491 () Unit!34132)

(assert (=> b!1045335 (= lt!461491 (addApplyDifferent!489 lt!461485 lt!461470 (minValue!6249 (_2!7951 lt!461352)) lt!461480))))

(assert (=> b!1045335 (= (apply!949 (+!3072 lt!461485 (tuple2!15885 lt!461470 (minValue!6249 (_2!7951 lt!461352)))) lt!461480) (apply!949 lt!461485 lt!461480))))

(declare-fun lt!461483 () Unit!34132)

(assert (=> b!1045335 (= lt!461483 lt!461491)))

(declare-fun lt!461475 () ListLongMap!13901)

(assert (=> b!1045335 (= lt!461475 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))))))

(declare-fun lt!461482 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461482 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461486 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461486 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000))))

(declare-fun lt!461476 () Unit!34132)

(assert (=> b!1045335 (= lt!461476 (addApplyDifferent!489 lt!461475 lt!461482 (zeroValue!6249 (_2!7951 lt!461352)) lt!461486))))

(assert (=> b!1045335 (= (apply!949 (+!3072 lt!461475 (tuple2!15885 lt!461482 (zeroValue!6249 (_2!7951 lt!461352)))) lt!461486) (apply!949 lt!461475 lt!461486))))

(declare-fun lt!461478 () Unit!34132)

(assert (=> b!1045335 (= lt!461478 lt!461476)))

(declare-fun lt!461481 () ListLongMap!13901)

(assert (=> b!1045335 (= lt!461481 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))))))

(declare-fun lt!461477 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461477 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461484 () (_ BitVec 64))

(assert (=> b!1045335 (= lt!461484 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000))))

(assert (=> b!1045335 (= lt!461479 (addApplyDifferent!489 lt!461481 lt!461477 (minValue!6249 (_2!7951 lt!461352)) lt!461484))))

(assert (=> b!1045335 (= (apply!949 (+!3072 lt!461481 (tuple2!15885 lt!461477 (minValue!6249 (_2!7951 lt!461352)))) lt!461484) (apply!949 lt!461481 lt!461484))))

(declare-fun b!1045336 () Bool)

(assert (=> b!1045336 (= e!592582 (= (apply!949 lt!461474 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6249 (_2!7951 lt!461352))))))

(declare-fun bm!44500 () Bool)

(declare-fun call!44502 () Bool)

(assert (=> bm!44500 (= call!44502 (contains!6099 lt!461474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045337 () Bool)

(declare-fun call!44507 () ListLongMap!13901)

(assert (=> b!1045337 (= e!592590 call!44507)))

(declare-fun call!44506 () ListLongMap!13901)

(declare-fun bm!44501 () Bool)

(declare-fun call!44501 () ListLongMap!13901)

(declare-fun c!106223 () Bool)

(assert (=> bm!44501 (= call!44506 (+!3072 (ite c!106223 call!44501 (ite c!106220 call!44505 call!44503)) (ite (or c!106223 c!106220) (tuple2!15885 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6249 (_2!7951 lt!461352))) (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 (_2!7951 lt!461352))))))))

(declare-fun b!1045338 () Bool)

(assert (=> b!1045338 (= e!592583 (not call!44502))))

(declare-fun b!1045339 () Bool)

(declare-fun c!106225 () Bool)

(assert (=> b!1045339 (= c!106225 (and (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1045339 (= e!592588 e!592590)))

(declare-fun d!126471 () Bool)

(assert (=> d!126471 e!592580))

(declare-fun res!696135 () Bool)

(assert (=> d!126471 (=> (not res!696135) (not e!592580))))

(assert (=> d!126471 (= res!696135 (or (bvsge #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))))))))

(declare-fun lt!461489 () ListLongMap!13901)

(assert (=> d!126471 (= lt!461474 lt!461489)))

(declare-fun lt!461473 () Unit!34132)

(assert (=> d!126471 (= lt!461473 e!592584)))

(declare-fun c!106224 () Bool)

(declare-fun e!592581 () Bool)

(assert (=> d!126471 (= c!106224 e!592581)))

(declare-fun res!696137 () Bool)

(assert (=> d!126471 (=> (not res!696137) (not e!592581))))

(assert (=> d!126471 (= res!696137 (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))))))

(assert (=> d!126471 (= lt!461489 e!592585)))

(assert (=> d!126471 (= c!106223 (and (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126471 (validMask!0 (mask!30535 (_2!7951 lt!461352)))))

(assert (=> d!126471 (= (getCurrentListMap!3972 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))) lt!461474)))

(declare-fun b!1045340 () Bool)

(assert (=> b!1045340 (= e!592581 (validKeyInArray!0 (select (arr!31677 (_keys!11682 (_2!7951 lt!461352))) #b00000000000000000000000000000000)))))

(declare-fun b!1045341 () Bool)

(assert (=> b!1045341 (= e!592580 e!592589)))

(declare-fun c!106221 () Bool)

(assert (=> b!1045341 (= c!106221 (not (= (bvand (extraKeys!6143 (_2!7951 lt!461352)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44502 () Bool)

(assert (=> bm!44502 (= call!44507 call!44506)))

(declare-fun b!1045342 () Bool)

(assert (=> b!1045342 (= e!592585 (+!3072 call!44506 (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 (_2!7951 lt!461352)))))))

(declare-fun bm!44503 () Bool)

(assert (=> bm!44503 (= call!44501 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 (_2!7951 lt!461352)) (_values!6438 (_2!7951 lt!461352)) (mask!30535 (_2!7951 lt!461352)) (extraKeys!6143 (_2!7951 lt!461352)) (zeroValue!6249 (_2!7951 lt!461352)) (minValue!6249 (_2!7951 lt!461352)) #b00000000000000000000000000000000 (defaultEntry!6415 (_2!7951 lt!461352))))))

(declare-fun b!1045343 () Bool)

(declare-fun e!592587 () Bool)

(assert (=> b!1045343 (= e!592587 (= (apply!949 lt!461474 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6249 (_2!7951 lt!461352))))))

(declare-fun b!1045344 () Bool)

(assert (=> b!1045344 (= e!592588 call!44507)))

(declare-fun b!1045345 () Bool)

(assert (=> b!1045345 (= e!592583 e!592587)))

(declare-fun res!696131 () Bool)

(assert (=> b!1045345 (= res!696131 call!44502)))

(assert (=> b!1045345 (=> (not res!696131) (not e!592587))))

(declare-fun b!1045346 () Bool)

(declare-fun res!696136 () Bool)

(assert (=> b!1045346 (=> (not res!696136) (not e!592580))))

(assert (=> b!1045346 (= res!696136 e!592586)))

(declare-fun res!696134 () Bool)

(assert (=> b!1045346 (=> res!696134 e!592586)))

(assert (=> b!1045346 (= res!696134 (not e!592579))))

(declare-fun res!696132 () Bool)

(assert (=> b!1045346 (=> (not res!696132) (not e!592579))))

(assert (=> b!1045346 (= res!696132 (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 (_2!7951 lt!461352)))))))

(declare-fun bm!44504 () Bool)

(assert (=> bm!44504 (= call!44505 call!44501)))

(assert (= (and d!126471 c!106223) b!1045342))

(assert (= (and d!126471 (not c!106223)) b!1045330))

(assert (= (and b!1045330 c!106220) b!1045344))

(assert (= (and b!1045330 (not c!106220)) b!1045339))

(assert (= (and b!1045339 c!106225) b!1045337))

(assert (= (and b!1045339 (not c!106225)) b!1045327))

(assert (= (or b!1045337 b!1045327) bm!44499))

(assert (= (or b!1045344 bm!44499) bm!44504))

(assert (= (or b!1045344 b!1045337) bm!44502))

(assert (= (or b!1045342 bm!44504) bm!44503))

(assert (= (or b!1045342 bm!44502) bm!44501))

(assert (= (and d!126471 res!696137) b!1045340))

(assert (= (and d!126471 c!106224) b!1045335))

(assert (= (and d!126471 (not c!106224)) b!1045328))

(assert (= (and d!126471 res!696135) b!1045346))

(assert (= (and b!1045346 res!696132) b!1045332))

(assert (= (and b!1045346 (not res!696134)) b!1045331))

(assert (= (and b!1045331 res!696133) b!1045334))

(assert (= (and b!1045346 res!696136) b!1045326))

(assert (= (and b!1045326 c!106222) b!1045345))

(assert (= (and b!1045326 (not c!106222)) b!1045338))

(assert (= (and b!1045345 res!696131) b!1045343))

(assert (= (or b!1045345 b!1045338) bm!44500))

(assert (= (and b!1045326 res!696138) b!1045341))

(assert (= (and b!1045341 c!106221) b!1045329))

(assert (= (and b!1045341 (not c!106221)) b!1045333))

(assert (= (and b!1045329 res!696139) b!1045336))

(assert (= (or b!1045329 b!1045333) bm!44498))

(declare-fun b_lambda!16325 () Bool)

(assert (=> (not b_lambda!16325) (not b!1045334)))

(declare-fun tb!7095 () Bool)

(declare-fun t!31416 () Bool)

(assert (=> (and b!1045205 (= (defaultEntry!6415 thiss!1427) (defaultEntry!6415 (_2!7951 lt!461352))) t!31416) tb!7095))

(declare-fun result!14607 () Bool)

(assert (=> tb!7095 (= result!14607 tp_is_empty!24855)))

(assert (=> b!1045334 t!31416))

(declare-fun b_and!33777 () Bool)

(assert (= b_and!33775 (and (=> t!31416 result!14607) b_and!33777)))

(declare-fun m!965175 () Bool)

(assert (=> b!1045342 m!965175))

(declare-fun m!965177 () Bool)

(assert (=> b!1045340 m!965177))

(assert (=> b!1045340 m!965177))

(declare-fun m!965179 () Bool)

(assert (=> b!1045340 m!965179))

(assert (=> b!1045331 m!965177))

(assert (=> b!1045331 m!965177))

(declare-fun m!965181 () Bool)

(assert (=> b!1045331 m!965181))

(declare-fun m!965183 () Bool)

(assert (=> b!1045343 m!965183))

(declare-fun m!965185 () Bool)

(assert (=> b!1045336 m!965185))

(assert (=> b!1045334 m!965177))

(declare-fun m!965187 () Bool)

(assert (=> b!1045334 m!965187))

(assert (=> b!1045334 m!965177))

(declare-fun m!965189 () Bool)

(assert (=> b!1045334 m!965189))

(assert (=> b!1045334 m!965189))

(declare-fun m!965191 () Bool)

(assert (=> b!1045334 m!965191))

(declare-fun m!965193 () Bool)

(assert (=> b!1045334 m!965193))

(assert (=> b!1045334 m!965191))

(declare-fun m!965195 () Bool)

(assert (=> b!1045335 m!965195))

(declare-fun m!965197 () Bool)

(assert (=> b!1045335 m!965197))

(declare-fun m!965199 () Bool)

(assert (=> b!1045335 m!965199))

(declare-fun m!965201 () Bool)

(assert (=> b!1045335 m!965201))

(assert (=> b!1045335 m!965199))

(declare-fun m!965203 () Bool)

(assert (=> b!1045335 m!965203))

(declare-fun m!965205 () Bool)

(assert (=> b!1045335 m!965205))

(declare-fun m!965207 () Bool)

(assert (=> b!1045335 m!965207))

(declare-fun m!965209 () Bool)

(assert (=> b!1045335 m!965209))

(declare-fun m!965211 () Bool)

(assert (=> b!1045335 m!965211))

(declare-fun m!965213 () Bool)

(assert (=> b!1045335 m!965213))

(assert (=> b!1045335 m!965177))

(declare-fun m!965215 () Bool)

(assert (=> b!1045335 m!965215))

(declare-fun m!965217 () Bool)

(assert (=> b!1045335 m!965217))

(assert (=> b!1045335 m!965203))

(assert (=> b!1045335 m!965195))

(declare-fun m!965219 () Bool)

(assert (=> b!1045335 m!965219))

(declare-fun m!965221 () Bool)

(assert (=> b!1045335 m!965221))

(declare-fun m!965223 () Bool)

(assert (=> b!1045335 m!965223))

(assert (=> b!1045335 m!965207))

(declare-fun m!965225 () Bool)

(assert (=> b!1045335 m!965225))

(assert (=> d!126471 m!965003))

(assert (=> b!1045332 m!965177))

(assert (=> b!1045332 m!965177))

(assert (=> b!1045332 m!965179))

(assert (=> bm!44503 m!965221))

(declare-fun m!965227 () Bool)

(assert (=> bm!44498 m!965227))

(declare-fun m!965229 () Bool)

(assert (=> bm!44500 m!965229))

(declare-fun m!965231 () Bool)

(assert (=> bm!44501 m!965231))

(assert (=> b!1045212 d!126471))

(declare-fun d!126473 () Bool)

(declare-fun res!696144 () Bool)

(declare-fun e!592597 () Bool)

(assert (=> d!126473 (=> res!696144 e!592597)))

(assert (=> d!126473 (= res!696144 (bvsge #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(assert (=> d!126473 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461356 (mask!30535 thiss!1427)) e!592597)))

(declare-fun bm!44507 () Bool)

(declare-fun call!44510 () Bool)

(assert (=> bm!44507 (= call!44510 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!461356 (mask!30535 thiss!1427)))))

(declare-fun b!1045355 () Bool)

(declare-fun e!592598 () Bool)

(assert (=> b!1045355 (= e!592598 call!44510)))

(declare-fun b!1045356 () Bool)

(declare-fun e!592599 () Bool)

(assert (=> b!1045356 (= e!592599 call!44510)))

(declare-fun b!1045357 () Bool)

(assert (=> b!1045357 (= e!592597 e!592599)))

(declare-fun c!106228 () Bool)

(assert (=> b!1045357 (= c!106228 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun b!1045358 () Bool)

(assert (=> b!1045358 (= e!592599 e!592598)))

(declare-fun lt!461500 () (_ BitVec 64))

(assert (=> b!1045358 (= lt!461500 (select (arr!31677 lt!461356) #b00000000000000000000000000000000))))

(declare-fun lt!461498 () Unit!34132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65868 (_ BitVec 64) (_ BitVec 32)) Unit!34132)

(assert (=> b!1045358 (= lt!461498 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!461356 lt!461500 #b00000000000000000000000000000000))))

(assert (=> b!1045358 (arrayContainsKey!0 lt!461356 lt!461500 #b00000000000000000000000000000000)))

(declare-fun lt!461499 () Unit!34132)

(assert (=> b!1045358 (= lt!461499 lt!461498)))

(declare-fun res!696145 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65868 (_ BitVec 32)) SeekEntryResult!9845)

(assert (=> b!1045358 (= res!696145 (= (seekEntryOrOpen!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000) lt!461356 (mask!30535 thiss!1427)) (Found!9845 #b00000000000000000000000000000000)))))

(assert (=> b!1045358 (=> (not res!696145) (not e!592598))))

(assert (= (and d!126473 (not res!696144)) b!1045357))

(assert (= (and b!1045357 c!106228) b!1045358))

(assert (= (and b!1045357 (not c!106228)) b!1045356))

(assert (= (and b!1045358 res!696145) b!1045355))

(assert (= (or b!1045355 b!1045356) bm!44507))

(declare-fun m!965233 () Bool)

(assert (=> bm!44507 m!965233))

(assert (=> b!1045357 m!965107))

(assert (=> b!1045357 m!965107))

(assert (=> b!1045357 m!965117))

(assert (=> b!1045358 m!965107))

(declare-fun m!965235 () Bool)

(assert (=> b!1045358 m!965235))

(declare-fun m!965237 () Bool)

(assert (=> b!1045358 m!965237))

(assert (=> b!1045358 m!965107))

(declare-fun m!965239 () Bool)

(assert (=> b!1045358 m!965239))

(assert (=> b!1045212 d!126473))

(declare-fun d!126475 () Bool)

(declare-fun e!592602 () Bool)

(assert (=> d!126475 e!592602))

(declare-fun res!696148 () Bool)

(assert (=> d!126475 (=> (not res!696148) (not e!592602))))

(assert (=> d!126475 (= res!696148 (and (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427)))))))

(declare-fun lt!461503 () Unit!34132)

(declare-fun choose!1720 (array!65868 array!65870 (_ BitVec 32) (_ BitVec 32) V!38013 V!38013 (_ BitVec 32) (_ BitVec 64) Int) Unit!34132)

(assert (=> d!126475 (= lt!461503 (choose!1720 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) (index!41751 lt!461355) key!909 (defaultEntry!6415 thiss!1427)))))

(assert (=> d!126475 (validMask!0 (mask!30535 thiss!1427))))

(assert (=> d!126475 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!62 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) (index!41751 lt!461355) key!909 (defaultEntry!6415 thiss!1427)) lt!461503)))

(declare-fun b!1045361 () Bool)

(assert (=> b!1045361 (= e!592602 (= (-!542 (getCurrentListMap!3972 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)) key!909) (getCurrentListMap!3972 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))) (array!65871 (store (arr!31678 (_values!6438 thiss!1427)) (index!41751 lt!461355) (ValueCellFull!11724 (dynLambda!2016 (defaultEntry!6415 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32214 (_values!6438 thiss!1427))) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427))))))

(assert (=> b!1045361 (bvslt (index!41751 lt!461355) (size!32214 (_values!6438 thiss!1427)))))

(assert (= (and d!126475 res!696148) b!1045361))

(declare-fun b_lambda!16327 () Bool)

(assert (=> (not b_lambda!16327) (not b!1045361)))

(assert (=> b!1045361 t!31408))

(declare-fun b_and!33779 () Bool)

(assert (= b_and!33777 (and (=> t!31408 result!14599) b_and!33779)))

(declare-fun m!965241 () Bool)

(assert (=> d!126475 m!965241))

(assert (=> d!126475 m!965163))

(assert (=> b!1045361 m!965041))

(declare-fun m!965243 () Bool)

(assert (=> b!1045361 m!965243))

(assert (=> b!1045361 m!965019))

(assert (=> b!1045361 m!965021))

(assert (=> b!1045361 m!965037))

(assert (=> b!1045361 m!965029))

(assert (=> b!1045361 m!965019))

(assert (=> b!1045212 d!126475))

(declare-fun b!1045372 () Bool)

(declare-fun e!592614 () Bool)

(declare-fun call!44513 () Bool)

(assert (=> b!1045372 (= e!592614 call!44513)))

(declare-fun b!1045373 () Bool)

(declare-fun e!592612 () Bool)

(declare-fun e!592613 () Bool)

(assert (=> b!1045373 (= e!592612 e!592613)))

(declare-fun res!696156 () Bool)

(assert (=> b!1045373 (=> (not res!696156) (not e!592613))))

(declare-fun e!592611 () Bool)

(assert (=> b!1045373 (= res!696156 (not e!592611))))

(declare-fun res!696155 () Bool)

(assert (=> b!1045373 (=> (not res!696155) (not e!592611))))

(assert (=> b!1045373 (= res!696155 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun d!126477 () Bool)

(declare-fun res!696157 () Bool)

(assert (=> d!126477 (=> res!696157 e!592612)))

(assert (=> d!126477 (= res!696157 (bvsge #b00000000000000000000000000000000 (size!32213 lt!461356)))))

(assert (=> d!126477 (= (arrayNoDuplicates!0 lt!461356 #b00000000000000000000000000000000 Nil!22138) e!592612)))

(declare-fun b!1045374 () Bool)

(assert (=> b!1045374 (= e!592614 call!44513)))

(declare-fun b!1045375 () Bool)

(declare-fun contains!6101 (List!22141 (_ BitVec 64)) Bool)

(assert (=> b!1045375 (= e!592611 (contains!6101 Nil!22138 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun b!1045376 () Bool)

(assert (=> b!1045376 (= e!592613 e!592614)))

(declare-fun c!106231 () Bool)

(assert (=> b!1045376 (= c!106231 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun bm!44510 () Bool)

(assert (=> bm!44510 (= call!44513 (arrayNoDuplicates!0 lt!461356 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106231 (Cons!22137 (select (arr!31677 lt!461356) #b00000000000000000000000000000000) Nil!22138) Nil!22138)))))

(assert (= (and d!126477 (not res!696157)) b!1045373))

(assert (= (and b!1045373 res!696155) b!1045375))

(assert (= (and b!1045373 res!696156) b!1045376))

(assert (= (and b!1045376 c!106231) b!1045372))

(assert (= (and b!1045376 (not c!106231)) b!1045374))

(assert (= (or b!1045372 b!1045374) bm!44510))

(assert (=> b!1045373 m!965107))

(assert (=> b!1045373 m!965107))

(assert (=> b!1045373 m!965117))

(assert (=> b!1045375 m!965107))

(assert (=> b!1045375 m!965107))

(declare-fun m!965245 () Bool)

(assert (=> b!1045375 m!965245))

(assert (=> b!1045376 m!965107))

(assert (=> b!1045376 m!965107))

(assert (=> b!1045376 m!965117))

(assert (=> bm!44510 m!965107))

(declare-fun m!965247 () Bool)

(assert (=> bm!44510 m!965247))

(assert (=> b!1045212 d!126477))

(declare-fun d!126479 () Bool)

(declare-fun e!592617 () Bool)

(assert (=> d!126479 e!592617))

(declare-fun res!696160 () Bool)

(assert (=> d!126479 (=> (not res!696160) (not e!592617))))

(assert (=> d!126479 (= res!696160 (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun lt!461506 () Unit!34132)

(declare-fun choose!121 (array!65868 (_ BitVec 32) (_ BitVec 64)) Unit!34132)

(assert (=> d!126479 (= lt!461506 (choose!121 (_keys!11682 thiss!1427) (index!41751 lt!461355) key!909))))

(assert (=> d!126479 (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000)))

(assert (=> d!126479 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) key!909) lt!461506)))

(declare-fun b!1045379 () Bool)

(assert (=> b!1045379 (= e!592617 (not (arrayContainsKey!0 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126479 res!696160) b!1045379))

(declare-fun m!965249 () Bool)

(assert (=> d!126479 m!965249))

(assert (=> b!1045379 m!965037))

(declare-fun m!965251 () Bool)

(assert (=> b!1045379 m!965251))

(assert (=> b!1045212 d!126479))

(declare-fun b!1045380 () Bool)

(declare-fun res!696168 () Bool)

(declare-fun e!592620 () Bool)

(assert (=> b!1045380 (=> (not res!696168) (not e!592620))))

(declare-fun e!592623 () Bool)

(assert (=> b!1045380 (= res!696168 e!592623)))

(declare-fun c!106234 () Bool)

(assert (=> b!1045380 (= c!106234 (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!44511 () Bool)

(declare-fun call!44517 () Bool)

(declare-fun lt!461511 () ListLongMap!13901)

(assert (=> bm!44511 (= call!44517 (contains!6099 lt!461511 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045381 () Bool)

(declare-fun e!592630 () ListLongMap!13901)

(declare-fun call!44516 () ListLongMap!13901)

(assert (=> b!1045381 (= e!592630 call!44516)))

(declare-fun b!1045382 () Bool)

(declare-fun e!592624 () Unit!34132)

(declare-fun Unit!34143 () Unit!34132)

(assert (=> b!1045382 (= e!592624 Unit!34143)))

(declare-fun b!1045383 () Bool)

(declare-fun e!592629 () Bool)

(declare-fun e!592622 () Bool)

(assert (=> b!1045383 (= e!592629 e!592622)))

(declare-fun res!696169 () Bool)

(assert (=> b!1045383 (= res!696169 call!44517)))

(assert (=> b!1045383 (=> (not res!696169) (not e!592622))))

(declare-fun bm!44512 () Bool)

(declare-fun call!44518 () ListLongMap!13901)

(assert (=> bm!44512 (= call!44516 call!44518)))

(declare-fun b!1045384 () Bool)

(declare-fun e!592625 () ListLongMap!13901)

(declare-fun e!592628 () ListLongMap!13901)

(assert (=> b!1045384 (= e!592625 e!592628)))

(declare-fun c!106232 () Bool)

(assert (=> b!1045384 (= c!106232 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045385 () Bool)

(declare-fun e!592626 () Bool)

(declare-fun e!592618 () Bool)

(assert (=> b!1045385 (= e!592626 e!592618)))

(declare-fun res!696163 () Bool)

(assert (=> b!1045385 (=> (not res!696163) (not e!592618))))

(assert (=> b!1045385 (= res!696163 (contains!6099 lt!461511 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1045385 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun b!1045386 () Bool)

(declare-fun e!592619 () Bool)

(assert (=> b!1045386 (= e!592619 (validKeyInArray!0 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1045387 () Bool)

(assert (=> b!1045387 (= e!592629 (not call!44517))))

(declare-fun b!1045388 () Bool)

(assert (=> b!1045388 (= e!592618 (= (apply!949 lt!461511 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)) (get!16570 (select (arr!31678 (_values!6438 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2016 (defaultEntry!6415 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045388 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32214 (_values!6438 thiss!1427))))))

(assert (=> b!1045388 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun b!1045389 () Bool)

(declare-fun lt!461516 () Unit!34132)

(assert (=> b!1045389 (= e!592624 lt!461516)))

(declare-fun lt!461509 () ListLongMap!13901)

(assert (=> b!1045389 (= lt!461509 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461524 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461524 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461527 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461527 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461525 () Unit!34132)

(assert (=> b!1045389 (= lt!461525 (addStillContains!637 lt!461509 lt!461524 (zeroValue!6249 thiss!1427) lt!461527))))

(assert (=> b!1045389 (contains!6099 (+!3072 lt!461509 (tuple2!15885 lt!461524 (zeroValue!6249 thiss!1427))) lt!461527)))

(declare-fun lt!461508 () Unit!34132)

(assert (=> b!1045389 (= lt!461508 lt!461525)))

(declare-fun lt!461522 () ListLongMap!13901)

(assert (=> b!1045389 (= lt!461522 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461507 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461507 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461517 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461517 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461528 () Unit!34132)

(assert (=> b!1045389 (= lt!461528 (addApplyDifferent!489 lt!461522 lt!461507 (minValue!6249 thiss!1427) lt!461517))))

(assert (=> b!1045389 (= (apply!949 (+!3072 lt!461522 (tuple2!15885 lt!461507 (minValue!6249 thiss!1427))) lt!461517) (apply!949 lt!461522 lt!461517))))

(declare-fun lt!461520 () Unit!34132)

(assert (=> b!1045389 (= lt!461520 lt!461528)))

(declare-fun lt!461512 () ListLongMap!13901)

(assert (=> b!1045389 (= lt!461512 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461519 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461519 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461523 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461523 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461513 () Unit!34132)

(assert (=> b!1045389 (= lt!461513 (addApplyDifferent!489 lt!461512 lt!461519 (zeroValue!6249 thiss!1427) lt!461523))))

(assert (=> b!1045389 (= (apply!949 (+!3072 lt!461512 (tuple2!15885 lt!461519 (zeroValue!6249 thiss!1427))) lt!461523) (apply!949 lt!461512 lt!461523))))

(declare-fun lt!461515 () Unit!34132)

(assert (=> b!1045389 (= lt!461515 lt!461513)))

(declare-fun lt!461518 () ListLongMap!13901)

(assert (=> b!1045389 (= lt!461518 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun lt!461514 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461514 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461521 () (_ BitVec 64))

(assert (=> b!1045389 (= lt!461521 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045389 (= lt!461516 (addApplyDifferent!489 lt!461518 lt!461514 (minValue!6249 thiss!1427) lt!461521))))

(assert (=> b!1045389 (= (apply!949 (+!3072 lt!461518 (tuple2!15885 lt!461514 (minValue!6249 thiss!1427))) lt!461521) (apply!949 lt!461518 lt!461521))))

(declare-fun b!1045390 () Bool)

(assert (=> b!1045390 (= e!592622 (= (apply!949 lt!461511 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6249 thiss!1427)))))

(declare-fun bm!44513 () Bool)

(declare-fun call!44515 () Bool)

(assert (=> bm!44513 (= call!44515 (contains!6099 lt!461511 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045391 () Bool)

(declare-fun call!44520 () ListLongMap!13901)

(assert (=> b!1045391 (= e!592630 call!44520)))

(declare-fun bm!44514 () Bool)

(declare-fun c!106235 () Bool)

(declare-fun call!44519 () ListLongMap!13901)

(declare-fun call!44514 () ListLongMap!13901)

(assert (=> bm!44514 (= call!44519 (+!3072 (ite c!106235 call!44514 (ite c!106232 call!44518 call!44516)) (ite (or c!106235 c!106232) (tuple2!15885 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6249 thiss!1427)) (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 thiss!1427)))))))

(declare-fun b!1045392 () Bool)

(assert (=> b!1045392 (= e!592623 (not call!44515))))

(declare-fun b!1045393 () Bool)

(declare-fun c!106237 () Bool)

(assert (=> b!1045393 (= c!106237 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1045393 (= e!592628 e!592630)))

(declare-fun d!126481 () Bool)

(assert (=> d!126481 e!592620))

(declare-fun res!696165 () Bool)

(assert (=> d!126481 (=> (not res!696165) (not e!592620))))

(assert (=> d!126481 (= res!696165 (or (bvsge #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))))

(declare-fun lt!461526 () ListLongMap!13901)

(assert (=> d!126481 (= lt!461511 lt!461526)))

(declare-fun lt!461510 () Unit!34132)

(assert (=> d!126481 (= lt!461510 e!592624)))

(declare-fun c!106236 () Bool)

(declare-fun e!592621 () Bool)

(assert (=> d!126481 (= c!106236 e!592621)))

(declare-fun res!696167 () Bool)

(assert (=> d!126481 (=> (not res!696167) (not e!592621))))

(assert (=> d!126481 (= res!696167 (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(assert (=> d!126481 (= lt!461526 e!592625)))

(assert (=> d!126481 (= c!106235 (and (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126481 (validMask!0 (mask!30535 thiss!1427))))

(assert (=> d!126481 (= (getCurrentListMap!3972 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)) lt!461511)))

(declare-fun b!1045394 () Bool)

(assert (=> b!1045394 (= e!592621 (validKeyInArray!0 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1045395 () Bool)

(assert (=> b!1045395 (= e!592620 e!592629)))

(declare-fun c!106233 () Bool)

(assert (=> b!1045395 (= c!106233 (not (= (bvand (extraKeys!6143 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44515 () Bool)

(assert (=> bm!44515 (= call!44520 call!44519)))

(declare-fun b!1045396 () Bool)

(assert (=> b!1045396 (= e!592625 (+!3072 call!44519 (tuple2!15885 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6249 thiss!1427))))))

(declare-fun bm!44516 () Bool)

(assert (=> bm!44516 (= call!44514 (getCurrentListMapNoExtraKeys!3542 (_keys!11682 thiss!1427) (_values!6438 thiss!1427) (mask!30535 thiss!1427) (extraKeys!6143 thiss!1427) (zeroValue!6249 thiss!1427) (minValue!6249 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6415 thiss!1427)))))

(declare-fun b!1045397 () Bool)

(declare-fun e!592627 () Bool)

(assert (=> b!1045397 (= e!592627 (= (apply!949 lt!461511 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6249 thiss!1427)))))

(declare-fun b!1045398 () Bool)

(assert (=> b!1045398 (= e!592628 call!44520)))

(declare-fun b!1045399 () Bool)

(assert (=> b!1045399 (= e!592623 e!592627)))

(declare-fun res!696161 () Bool)

(assert (=> b!1045399 (= res!696161 call!44515)))

(assert (=> b!1045399 (=> (not res!696161) (not e!592627))))

(declare-fun b!1045400 () Bool)

(declare-fun res!696166 () Bool)

(assert (=> b!1045400 (=> (not res!696166) (not e!592620))))

(assert (=> b!1045400 (= res!696166 e!592626)))

(declare-fun res!696164 () Bool)

(assert (=> b!1045400 (=> res!696164 e!592626)))

(assert (=> b!1045400 (= res!696164 (not e!592619))))

(declare-fun res!696162 () Bool)

(assert (=> b!1045400 (=> (not res!696162) (not e!592619))))

(assert (=> b!1045400 (= res!696162 (bvslt #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun bm!44517 () Bool)

(assert (=> bm!44517 (= call!44518 call!44514)))

(assert (= (and d!126481 c!106235) b!1045396))

(assert (= (and d!126481 (not c!106235)) b!1045384))

(assert (= (and b!1045384 c!106232) b!1045398))

(assert (= (and b!1045384 (not c!106232)) b!1045393))

(assert (= (and b!1045393 c!106237) b!1045391))

(assert (= (and b!1045393 (not c!106237)) b!1045381))

(assert (= (or b!1045391 b!1045381) bm!44512))

(assert (= (or b!1045398 bm!44512) bm!44517))

(assert (= (or b!1045398 b!1045391) bm!44515))

(assert (= (or b!1045396 bm!44517) bm!44516))

(assert (= (or b!1045396 bm!44515) bm!44514))

(assert (= (and d!126481 res!696167) b!1045394))

(assert (= (and d!126481 c!106236) b!1045389))

(assert (= (and d!126481 (not c!106236)) b!1045382))

(assert (= (and d!126481 res!696165) b!1045400))

(assert (= (and b!1045400 res!696162) b!1045386))

(assert (= (and b!1045400 (not res!696164)) b!1045385))

(assert (= (and b!1045385 res!696163) b!1045388))

(assert (= (and b!1045400 res!696166) b!1045380))

(assert (= (and b!1045380 c!106234) b!1045399))

(assert (= (and b!1045380 (not c!106234)) b!1045392))

(assert (= (and b!1045399 res!696161) b!1045397))

(assert (= (or b!1045399 b!1045392) bm!44513))

(assert (= (and b!1045380 res!696168) b!1045395))

(assert (= (and b!1045395 c!106233) b!1045383))

(assert (= (and b!1045395 (not c!106233)) b!1045387))

(assert (= (and b!1045383 res!696169) b!1045390))

(assert (= (or b!1045383 b!1045387) bm!44511))

(declare-fun b_lambda!16329 () Bool)

(assert (=> (not b_lambda!16329) (not b!1045388)))

(assert (=> b!1045388 t!31408))

(declare-fun b_and!33781 () Bool)

(assert (= b_and!33779 (and (=> t!31408 result!14599) b_and!33781)))

(declare-fun m!965253 () Bool)

(assert (=> b!1045396 m!965253))

(declare-fun m!965255 () Bool)

(assert (=> b!1045394 m!965255))

(assert (=> b!1045394 m!965255))

(declare-fun m!965257 () Bool)

(assert (=> b!1045394 m!965257))

(assert (=> b!1045385 m!965255))

(assert (=> b!1045385 m!965255))

(declare-fun m!965259 () Bool)

(assert (=> b!1045385 m!965259))

(declare-fun m!965261 () Bool)

(assert (=> b!1045397 m!965261))

(declare-fun m!965263 () Bool)

(assert (=> b!1045390 m!965263))

(assert (=> b!1045388 m!965255))

(declare-fun m!965265 () Bool)

(assert (=> b!1045388 m!965265))

(assert (=> b!1045388 m!965255))

(declare-fun m!965267 () Bool)

(assert (=> b!1045388 m!965267))

(assert (=> b!1045388 m!965267))

(assert (=> b!1045388 m!965041))

(declare-fun m!965269 () Bool)

(assert (=> b!1045388 m!965269))

(assert (=> b!1045388 m!965041))

(declare-fun m!965271 () Bool)

(assert (=> b!1045389 m!965271))

(declare-fun m!965273 () Bool)

(assert (=> b!1045389 m!965273))

(declare-fun m!965275 () Bool)

(assert (=> b!1045389 m!965275))

(declare-fun m!965277 () Bool)

(assert (=> b!1045389 m!965277))

(assert (=> b!1045389 m!965275))

(declare-fun m!965279 () Bool)

(assert (=> b!1045389 m!965279))

(declare-fun m!965281 () Bool)

(assert (=> b!1045389 m!965281))

(declare-fun m!965283 () Bool)

(assert (=> b!1045389 m!965283))

(declare-fun m!965285 () Bool)

(assert (=> b!1045389 m!965285))

(declare-fun m!965287 () Bool)

(assert (=> b!1045389 m!965287))

(declare-fun m!965289 () Bool)

(assert (=> b!1045389 m!965289))

(assert (=> b!1045389 m!965255))

(declare-fun m!965291 () Bool)

(assert (=> b!1045389 m!965291))

(declare-fun m!965293 () Bool)

(assert (=> b!1045389 m!965293))

(assert (=> b!1045389 m!965279))

(assert (=> b!1045389 m!965271))

(declare-fun m!965295 () Bool)

(assert (=> b!1045389 m!965295))

(declare-fun m!965297 () Bool)

(assert (=> b!1045389 m!965297))

(declare-fun m!965299 () Bool)

(assert (=> b!1045389 m!965299))

(assert (=> b!1045389 m!965283))

(declare-fun m!965301 () Bool)

(assert (=> b!1045389 m!965301))

(assert (=> d!126481 m!965163))

(assert (=> b!1045386 m!965255))

(assert (=> b!1045386 m!965255))

(assert (=> b!1045386 m!965257))

(assert (=> bm!44516 m!965297))

(declare-fun m!965303 () Bool)

(assert (=> bm!44511 m!965303))

(declare-fun m!965305 () Bool)

(assert (=> bm!44513 m!965305))

(declare-fun m!965307 () Bool)

(assert (=> bm!44514 m!965307))

(assert (=> b!1045212 d!126481))

(declare-fun b!1045412 () Bool)

(declare-fun e!592636 () Bool)

(assert (=> b!1045412 (= e!592636 (= (arrayCountValidKeys!0 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))) #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11682 thiss!1427) #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1045409 () Bool)

(declare-fun res!696178 () Bool)

(declare-fun e!592635 () Bool)

(assert (=> b!1045409 (=> (not res!696178) (not e!592635))))

(assert (=> b!1045409 (= res!696178 (validKeyInArray!0 (select (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355))))))

(declare-fun b!1045411 () Bool)

(assert (=> b!1045411 (= e!592635 (bvslt (size!32213 (_keys!11682 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!126483 () Bool)

(assert (=> d!126483 e!592636))

(declare-fun res!696179 () Bool)

(assert (=> d!126483 (=> (not res!696179) (not e!592636))))

(assert (=> d!126483 (= res!696179 (and (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427)))))))

(declare-fun lt!461531 () Unit!34132)

(declare-fun choose!82 (array!65868 (_ BitVec 32) (_ BitVec 64)) Unit!34132)

(assert (=> d!126483 (= lt!461531 (choose!82 (_keys!11682 thiss!1427) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126483 e!592635))

(declare-fun res!696181 () Bool)

(assert (=> d!126483 (=> (not res!696181) (not e!592635))))

(assert (=> d!126483 (= res!696181 (and (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427)))))))

(assert (=> d!126483 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11682 thiss!1427) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) lt!461531)))

(declare-fun b!1045410 () Bool)

(declare-fun res!696180 () Bool)

(assert (=> b!1045410 (=> (not res!696180) (not e!592635))))

(assert (=> b!1045410 (= res!696180 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!126483 res!696181) b!1045409))

(assert (= (and b!1045409 res!696178) b!1045410))

(assert (= (and b!1045410 res!696180) b!1045411))

(assert (= (and d!126483 res!696179) b!1045412))

(assert (=> b!1045412 m!965037))

(declare-fun m!965309 () Bool)

(assert (=> b!1045412 m!965309))

(assert (=> b!1045412 m!965027))

(declare-fun m!965311 () Bool)

(assert (=> b!1045409 m!965311))

(assert (=> b!1045409 m!965311))

(declare-fun m!965313 () Bool)

(assert (=> b!1045409 m!965313))

(declare-fun m!965315 () Bool)

(assert (=> d!126483 m!965315))

(declare-fun m!965317 () Bool)

(assert (=> b!1045410 m!965317))

(assert (=> b!1045212 d!126483))

(declare-fun b!1045421 () Bool)

(declare-fun e!592641 () (_ BitVec 32))

(declare-fun call!44523 () (_ BitVec 32))

(assert (=> b!1045421 (= e!592641 call!44523)))

(declare-fun bm!44520 () Bool)

(assert (=> bm!44520 (= call!44523 (arrayCountValidKeys!0 lt!461356 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun b!1045422 () Bool)

(declare-fun e!592642 () (_ BitVec 32))

(assert (=> b!1045422 (= e!592642 e!592641)))

(declare-fun c!106243 () Bool)

(assert (=> b!1045422 (= c!106243 (validKeyInArray!0 (select (arr!31677 lt!461356) #b00000000000000000000000000000000)))))

(declare-fun d!126485 () Bool)

(declare-fun lt!461534 () (_ BitVec 32))

(assert (=> d!126485 (and (bvsge lt!461534 #b00000000000000000000000000000000) (bvsle lt!461534 (bvsub (size!32213 lt!461356) #b00000000000000000000000000000000)))))

(assert (=> d!126485 (= lt!461534 e!592642)))

(declare-fun c!106242 () Bool)

(assert (=> d!126485 (= c!106242 (bvsge #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(assert (=> d!126485 (and (bvsle #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32213 (_keys!11682 thiss!1427)) (size!32213 lt!461356)))))

(assert (=> d!126485 (= (arrayCountValidKeys!0 lt!461356 #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) lt!461534)))

(declare-fun b!1045423 () Bool)

(assert (=> b!1045423 (= e!592642 #b00000000000000000000000000000000)))

(declare-fun b!1045424 () Bool)

(assert (=> b!1045424 (= e!592641 (bvadd #b00000000000000000000000000000001 call!44523))))

(assert (= (and d!126485 c!106242) b!1045423))

(assert (= (and d!126485 (not c!106242)) b!1045422))

(assert (= (and b!1045422 c!106243) b!1045424))

(assert (= (and b!1045422 (not c!106243)) b!1045421))

(assert (= (or b!1045424 b!1045421) bm!44520))

(declare-fun m!965319 () Bool)

(assert (=> bm!44520 m!965319))

(assert (=> b!1045422 m!965107))

(assert (=> b!1045422 m!965107))

(assert (=> b!1045422 m!965117))

(assert (=> b!1045212 d!126485))

(declare-fun d!126487 () Bool)

(declare-fun e!592645 () Bool)

(assert (=> d!126487 e!592645))

(declare-fun res!696184 () Bool)

(assert (=> d!126487 (=> (not res!696184) (not e!592645))))

(assert (=> d!126487 (= res!696184 (and (bvsge (index!41751 lt!461355) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461355) (size!32213 (_keys!11682 thiss!1427)))))))

(declare-fun lt!461537 () Unit!34132)

(declare-fun choose!53 (array!65868 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22141) Unit!34132)

(assert (=> d!126487 (= lt!461537 (choose!53 (_keys!11682 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41751 lt!461355) #b00000000000000000000000000000000 Nil!22138))))

(assert (=> d!126487 (bvslt (size!32213 (_keys!11682 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126487 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11682 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41751 lt!461355) #b00000000000000000000000000000000 Nil!22138) lt!461537)))

(declare-fun b!1045427 () Bool)

(assert (=> b!1045427 (= e!592645 (arrayNoDuplicates!0 (array!65869 (store (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461355) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32213 (_keys!11682 thiss!1427))) #b00000000000000000000000000000000 Nil!22138))))

(assert (= (and d!126487 res!696184) b!1045427))

(declare-fun m!965321 () Bool)

(assert (=> d!126487 m!965321))

(assert (=> b!1045427 m!965037))

(declare-fun m!965323 () Bool)

(assert (=> b!1045427 m!965323))

(assert (=> b!1045212 d!126487))

(declare-fun b!1045428 () Bool)

(declare-fun e!592646 () (_ BitVec 32))

(declare-fun call!44524 () (_ BitVec 32))

(assert (=> b!1045428 (= e!592646 call!44524)))

(declare-fun bm!44521 () Bool)

(assert (=> bm!44521 (= call!44524 (arrayCountValidKeys!0 (_keys!11682 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32213 (_keys!11682 thiss!1427))))))

(declare-fun b!1045429 () Bool)

(declare-fun e!592647 () (_ BitVec 32))

(assert (=> b!1045429 (= e!592647 e!592646)))

(declare-fun c!106245 () Bool)

(assert (=> b!1045429 (= c!106245 (validKeyInArray!0 (select (arr!31677 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126489 () Bool)

(declare-fun lt!461538 () (_ BitVec 32))

(assert (=> d!126489 (and (bvsge lt!461538 #b00000000000000000000000000000000) (bvsle lt!461538 (bvsub (size!32213 (_keys!11682 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126489 (= lt!461538 e!592647)))

(declare-fun c!106244 () Bool)

(assert (=> d!126489 (= c!106244 (bvsge #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))))))

(assert (=> d!126489 (and (bvsle #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32213 (_keys!11682 thiss!1427)) (size!32213 (_keys!11682 thiss!1427))))))

(assert (=> d!126489 (= (arrayCountValidKeys!0 (_keys!11682 thiss!1427) #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) lt!461538)))

(declare-fun b!1045430 () Bool)

(assert (=> b!1045430 (= e!592647 #b00000000000000000000000000000000)))

(declare-fun b!1045431 () Bool)

(assert (=> b!1045431 (= e!592646 (bvadd #b00000000000000000000000000000001 call!44524))))

(assert (= (and d!126489 c!106244) b!1045430))

(assert (= (and d!126489 (not c!106244)) b!1045429))

(assert (= (and b!1045429 c!106245) b!1045431))

(assert (= (and b!1045429 (not c!106245)) b!1045428))

(assert (= (or b!1045431 b!1045428) bm!44521))

(declare-fun m!965325 () Bool)

(assert (=> bm!44521 m!965325))

(assert (=> b!1045429 m!965255))

(assert (=> b!1045429 m!965255))

(assert (=> b!1045429 m!965257))

(assert (=> b!1045212 d!126489))

(declare-fun b!1045444 () Bool)

(declare-fun e!592656 () SeekEntryResult!9845)

(declare-fun lt!461547 () SeekEntryResult!9845)

(assert (=> b!1045444 (= e!592656 (MissingZero!9845 (index!41752 lt!461547)))))

(declare-fun b!1045445 () Bool)

(declare-fun e!592655 () SeekEntryResult!9845)

(assert (=> b!1045445 (= e!592655 (Found!9845 (index!41752 lt!461547)))))

(declare-fun d!126491 () Bool)

(declare-fun lt!461548 () SeekEntryResult!9845)

(assert (=> d!126491 (and (or ((_ is MissingVacant!9845) lt!461548) (not ((_ is Found!9845) lt!461548)) (and (bvsge (index!41751 lt!461548) #b00000000000000000000000000000000) (bvslt (index!41751 lt!461548) (size!32213 (_keys!11682 thiss!1427))))) (not ((_ is MissingVacant!9845) lt!461548)) (or (not ((_ is Found!9845) lt!461548)) (= (select (arr!31677 (_keys!11682 thiss!1427)) (index!41751 lt!461548)) key!909)))))

(declare-fun e!592654 () SeekEntryResult!9845)

(assert (=> d!126491 (= lt!461548 e!592654)))

(declare-fun c!106253 () Bool)

(assert (=> d!126491 (= c!106253 (and ((_ is Intermediate!9845) lt!461547) (undefined!10657 lt!461547)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65868 (_ BitVec 32)) SeekEntryResult!9845)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126491 (= lt!461547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30535 thiss!1427)) key!909 (_keys!11682 thiss!1427) (mask!30535 thiss!1427)))))

(assert (=> d!126491 (validMask!0 (mask!30535 thiss!1427))))

(assert (=> d!126491 (= (seekEntry!0 key!909 (_keys!11682 thiss!1427) (mask!30535 thiss!1427)) lt!461548)))

(declare-fun b!1045446 () Bool)

(assert (=> b!1045446 (= e!592654 Undefined!9845)))

(declare-fun b!1045447 () Bool)

(assert (=> b!1045447 (= e!592654 e!592655)))

(declare-fun lt!461549 () (_ BitVec 64))

(assert (=> b!1045447 (= lt!461549 (select (arr!31677 (_keys!11682 thiss!1427)) (index!41752 lt!461547)))))

(declare-fun c!106252 () Bool)

(assert (=> b!1045447 (= c!106252 (= lt!461549 key!909))))

(declare-fun b!1045448 () Bool)

(declare-fun c!106254 () Bool)

(assert (=> b!1045448 (= c!106254 (= lt!461549 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1045448 (= e!592655 e!592656)))

(declare-fun b!1045449 () Bool)

(declare-fun lt!461550 () SeekEntryResult!9845)

(assert (=> b!1045449 (= e!592656 (ite ((_ is MissingVacant!9845) lt!461550) (MissingZero!9845 (index!41753 lt!461550)) lt!461550))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65868 (_ BitVec 32)) SeekEntryResult!9845)

(assert (=> b!1045449 (= lt!461550 (seekKeyOrZeroReturnVacant!0 (x!93352 lt!461547) (index!41752 lt!461547) (index!41752 lt!461547) key!909 (_keys!11682 thiss!1427) (mask!30535 thiss!1427)))))

(assert (= (and d!126491 c!106253) b!1045446))

(assert (= (and d!126491 (not c!106253)) b!1045447))

(assert (= (and b!1045447 c!106252) b!1045445))

(assert (= (and b!1045447 (not c!106252)) b!1045448))

(assert (= (and b!1045448 c!106254) b!1045444))

(assert (= (and b!1045448 (not c!106254)) b!1045449))

(declare-fun m!965327 () Bool)

(assert (=> d!126491 m!965327))

(declare-fun m!965329 () Bool)

(assert (=> d!126491 m!965329))

(assert (=> d!126491 m!965329))

(declare-fun m!965331 () Bool)

(assert (=> d!126491 m!965331))

(assert (=> d!126491 m!965163))

(declare-fun m!965333 () Bool)

(assert (=> b!1045447 m!965333))

(declare-fun m!965335 () Bool)

(assert (=> b!1045449 m!965335))

(assert (=> b!1045207 d!126491))

(declare-fun d!126493 () Bool)

(declare-fun res!696191 () Bool)

(declare-fun e!592659 () Bool)

(assert (=> d!126493 (=> (not res!696191) (not e!592659))))

(declare-fun simpleValid!451 (LongMapFixedSize!6042) Bool)

(assert (=> d!126493 (= res!696191 (simpleValid!451 thiss!1427))))

(assert (=> d!126493 (= (valid!2220 thiss!1427) e!592659)))

(declare-fun b!1045456 () Bool)

(declare-fun res!696192 () Bool)

(assert (=> b!1045456 (=> (not res!696192) (not e!592659))))

(assert (=> b!1045456 (= res!696192 (= (arrayCountValidKeys!0 (_keys!11682 thiss!1427) #b00000000000000000000000000000000 (size!32213 (_keys!11682 thiss!1427))) (_size!3076 thiss!1427)))))

(declare-fun b!1045457 () Bool)

(declare-fun res!696193 () Bool)

(assert (=> b!1045457 (=> (not res!696193) (not e!592659))))

(assert (=> b!1045457 (= res!696193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11682 thiss!1427) (mask!30535 thiss!1427)))))

(declare-fun b!1045458 () Bool)

(assert (=> b!1045458 (= e!592659 (arrayNoDuplicates!0 (_keys!11682 thiss!1427) #b00000000000000000000000000000000 Nil!22138))))

(assert (= (and d!126493 res!696191) b!1045456))

(assert (= (and b!1045456 res!696192) b!1045457))

(assert (= (and b!1045457 res!696193) b!1045458))

(declare-fun m!965337 () Bool)

(assert (=> d!126493 m!965337))

(assert (=> b!1045456 m!965027))

(declare-fun m!965339 () Bool)

(assert (=> b!1045457 m!965339))

(declare-fun m!965341 () Bool)

(assert (=> b!1045458 m!965341))

(assert (=> start!91930 d!126493))

(declare-fun mapIsEmpty!38927 () Bool)

(declare-fun mapRes!38927 () Bool)

(assert (=> mapIsEmpty!38927 mapRes!38927))

(declare-fun mapNonEmpty!38927 () Bool)

(declare-fun tp!74671 () Bool)

(declare-fun e!592664 () Bool)

(assert (=> mapNonEmpty!38927 (= mapRes!38927 (and tp!74671 e!592664))))

(declare-fun mapRest!38927 () (Array (_ BitVec 32) ValueCell!11724))

(declare-fun mapValue!38927 () ValueCell!11724)

(declare-fun mapKey!38927 () (_ BitVec 32))

(assert (=> mapNonEmpty!38927 (= mapRest!38921 (store mapRest!38927 mapKey!38927 mapValue!38927))))

(declare-fun b!1045465 () Bool)

(assert (=> b!1045465 (= e!592664 tp_is_empty!24855)))

(declare-fun b!1045466 () Bool)

(declare-fun e!592665 () Bool)

(assert (=> b!1045466 (= e!592665 tp_is_empty!24855)))

(declare-fun condMapEmpty!38927 () Bool)

(declare-fun mapDefault!38927 () ValueCell!11724)

(assert (=> mapNonEmpty!38921 (= condMapEmpty!38927 (= mapRest!38921 ((as const (Array (_ BitVec 32) ValueCell!11724)) mapDefault!38927)))))

(assert (=> mapNonEmpty!38921 (= tp!74661 (and e!592665 mapRes!38927))))

(assert (= (and mapNonEmpty!38921 condMapEmpty!38927) mapIsEmpty!38927))

(assert (= (and mapNonEmpty!38921 (not condMapEmpty!38927)) mapNonEmpty!38927))

(assert (= (and mapNonEmpty!38927 ((_ is ValueCellFull!11724) mapValue!38927)) b!1045465))

(assert (= (and mapNonEmpty!38921 ((_ is ValueCellFull!11724) mapDefault!38927)) b!1045466))

(declare-fun m!965343 () Bool)

(assert (=> mapNonEmpty!38927 m!965343))

(declare-fun b_lambda!16331 () Bool)

(assert (= b_lambda!16323 (or (and b!1045205 b_free!21135) b_lambda!16331)))

(declare-fun b_lambda!16333 () Bool)

(assert (= b_lambda!16329 (or (and b!1045205 b_free!21135) b_lambda!16333)))

(declare-fun b_lambda!16335 () Bool)

(assert (= b_lambda!16327 (or (and b!1045205 b_free!21135) b_lambda!16335)))

(check-sat (not b_lambda!16335) (not b!1045311) (not bm!44491) (not bm!44516) (not b!1045316) (not b!1045394) (not b!1045308) (not b!1045375) (not b!1045397) (not b!1045429) (not b!1045319) (not b_lambda!16333) (not d!126491) (not b!1045410) (not d!126479) (not bm!44510) (not b!1045334) (not d!126461) tp_is_empty!24855 (not d!126467) (not b!1045325) (not b!1045253) (not b!1045422) (not b!1045409) (not b!1045343) (not d!126465) (not d!126469) (not bm!44503) (not b!1045379) (not b!1045307) (not b!1045390) (not d!126481) (not bm!44513) (not b!1045412) (not b!1045376) (not b!1045251) (not b!1045312) (not b!1045396) (not d!126475) (not b!1045457) (not b!1045388) (not b!1045427) (not b!1045335) (not b!1045358) (not b!1045373) (not bm!44493) (not bm!44494) (not b!1045458) (not b_lambda!16325) (not b!1045357) (not bm!44520) (not b!1045361) (not b!1045342) (not d!126483) (not b_lambda!16321) (not bm!44514) (not bm!44521) (not d!126493) (not bm!44501) (not bm!44498) (not b!1045449) (not b!1045385) (not d!126487) (not b!1045340) b_and!33781 (not bm!44511) (not bm!44500) (not b!1045310) (not d!126471) (not b!1045389) (not b!1045336) (not b!1045332) (not b!1045456) (not bm!44496) (not b!1045318) (not b!1045331) (not b!1045386) (not b_lambda!16331) (not mapNonEmpty!38927) (not b_next!21135) (not bm!44507) (not b!1045259))
(check-sat b_and!33781 (not b_next!21135))
