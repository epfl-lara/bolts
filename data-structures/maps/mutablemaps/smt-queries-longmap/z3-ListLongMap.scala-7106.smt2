; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90120 () Bool)

(assert start!90120)

(declare-fun b!1031909 () Bool)

(declare-fun b_free!20691 () Bool)

(declare-fun b_next!20691 () Bool)

(assert (=> b!1031909 (= b_free!20691 (not b_next!20691))))

(declare-fun tp!73145 () Bool)

(declare-fun b_and!33167 () Bool)

(assert (=> b!1031909 (= tp!73145 b_and!33167)))

(declare-fun b!1031906 () Bool)

(declare-fun e!582962 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37421 0))(
  ( (V!37422 (val!12256 Int)) )
))
(declare-datatypes ((ValueCell!11502 0))(
  ( (ValueCellFull!11502 (v!14834 V!37421)) (EmptyCell!11502) )
))
(declare-datatypes ((Unit!33772 0))(
  ( (Unit!33773) )
))
(declare-datatypes ((array!64870 0))(
  ( (array!64871 (arr!31233 (Array (_ BitVec 32) (_ BitVec 64))) (size!31751 (_ BitVec 32))) )
))
(declare-datatypes ((array!64872 0))(
  ( (array!64873 (arr!31234 (Array (_ BitVec 32) ValueCell!11502)) (size!31752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5598 0))(
  ( (LongMapFixedSize!5599 (defaultEntry!6173 Int) (mask!29974 (_ BitVec 32)) (extraKeys!5905 (_ BitVec 32)) (zeroValue!6009 V!37421) (minValue!6009 V!37421) (_size!2854 (_ BitVec 32)) (_keys!11343 array!64870) (_values!6196 array!64872) (_vacant!2854 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15814 0))(
  ( (tuple2!15815 (_1!7917 Unit!33772) (_2!7917 LongMapFixedSize!5598)) )
))
(declare-fun lt!455817 () tuple2!15814)

(assert (=> b!1031906 (= e!582962 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5905 (_2!7917 lt!455817)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5905 (_2!7917 lt!455817)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031907 () Bool)

(declare-fun e!582958 () Bool)

(declare-fun tp_is_empty!24411 () Bool)

(assert (=> b!1031907 (= e!582958 tp_is_empty!24411)))

(declare-fun b!1031908 () Bool)

(declare-fun res!689931 () Bool)

(declare-fun e!582966 () Bool)

(assert (=> b!1031908 (=> (not res!689931) (not e!582966))))

(assert (=> b!1031908 (= res!689931 (not (= key!909 (bvneg key!909))))))

(declare-fun e!582964 () Bool)

(declare-fun e!582960 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5598)

(declare-fun array_inv!24017 (array!64870) Bool)

(declare-fun array_inv!24018 (array!64872) Bool)

(assert (=> b!1031909 (= e!582960 (and tp!73145 tp_is_empty!24411 (array_inv!24017 (_keys!11343 thiss!1427)) (array_inv!24018 (_values!6196 thiss!1427)) e!582964))))

(declare-fun b!1031910 () Bool)

(declare-fun e!582959 () Bool)

(assert (=> b!1031910 (= e!582959 (not true))))

(declare-fun lt!455819 () Bool)

(declare-fun valid!2070 (LongMapFixedSize!5598) Bool)

(assert (=> b!1031910 (= lt!455819 (valid!2070 (_2!7917 lt!455817)))))

(declare-fun lt!455816 () Unit!33772)

(declare-fun e!582961 () Unit!33772)

(assert (=> b!1031910 (= lt!455816 e!582961)))

(declare-fun c!104225 () Bool)

(declare-datatypes ((tuple2!15816 0))(
  ( (tuple2!15817 (_1!7918 (_ BitVec 64)) (_2!7918 V!37421)) )
))
(declare-datatypes ((List!22004 0))(
  ( (Nil!22001) (Cons!22000 (h!23202 tuple2!15816) (t!31197 List!22004)) )
))
(declare-datatypes ((ListLongMap!13861 0))(
  ( (ListLongMap!13862 (toList!6946 List!22004)) )
))
(declare-fun contains!6025 (ListLongMap!13861 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3953 (array!64870 array!64872 (_ BitVec 32) (_ BitVec 32) V!37421 V!37421 (_ BitVec 32) Int) ListLongMap!13861)

(assert (=> b!1031910 (= c!104225 (contains!6025 (getCurrentListMap!3953 (_keys!11343 (_2!7917 lt!455817)) (_values!6196 (_2!7917 lt!455817)) (mask!29974 (_2!7917 lt!455817)) (extraKeys!5905 (_2!7917 lt!455817)) (zeroValue!6009 (_2!7917 lt!455817)) (minValue!6009 (_2!7917 lt!455817)) #b00000000000000000000000000000000 (defaultEntry!6173 (_2!7917 lt!455817))) key!909))))

(declare-fun lt!455826 () array!64872)

(declare-fun lt!455822 () array!64870)

(declare-fun Unit!33774 () Unit!33772)

(declare-fun Unit!33775 () Unit!33772)

(assert (=> b!1031910 (= lt!455817 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2854 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15815 Unit!33774 (LongMapFixedSize!5599 (defaultEntry!6173 thiss!1427) (mask!29974 thiss!1427) (extraKeys!5905 thiss!1427) (zeroValue!6009 thiss!1427) (minValue!6009 thiss!1427) (bvsub (_size!2854 thiss!1427) #b00000000000000000000000000000001) lt!455822 lt!455826 (bvadd #b00000000000000000000000000000001 (_vacant!2854 thiss!1427)))) (tuple2!15815 Unit!33775 (LongMapFixedSize!5599 (defaultEntry!6173 thiss!1427) (mask!29974 thiss!1427) (extraKeys!5905 thiss!1427) (zeroValue!6009 thiss!1427) (minValue!6009 thiss!1427) (bvsub (_size!2854 thiss!1427) #b00000000000000000000000000000001) lt!455822 lt!455826 (_vacant!2854 thiss!1427)))))))

(declare-fun -!522 (ListLongMap!13861 (_ BitVec 64)) ListLongMap!13861)

(assert (=> b!1031910 (= (-!522 (getCurrentListMap!3953 (_keys!11343 thiss!1427) (_values!6196 thiss!1427) (mask!29974 thiss!1427) (extraKeys!5905 thiss!1427) (zeroValue!6009 thiss!1427) (minValue!6009 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6173 thiss!1427)) key!909) (getCurrentListMap!3953 lt!455822 lt!455826 (mask!29974 thiss!1427) (extraKeys!5905 thiss!1427) (zeroValue!6009 thiss!1427) (minValue!6009 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6173 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9712 0))(
  ( (MissingZero!9712 (index!41218 (_ BitVec 32))) (Found!9712 (index!41219 (_ BitVec 32))) (Intermediate!9712 (undefined!10524 Bool) (index!41220 (_ BitVec 32)) (x!91915 (_ BitVec 32))) (Undefined!9712) (MissingVacant!9712 (index!41221 (_ BitVec 32))) )
))
(declare-fun lt!455821 () SeekEntryResult!9712)

(declare-fun dynLambda!1997 (Int (_ BitVec 64)) V!37421)

(assert (=> b!1031910 (= lt!455826 (array!64873 (store (arr!31234 (_values!6196 thiss!1427)) (index!41219 lt!455821) (ValueCellFull!11502 (dynLambda!1997 (defaultEntry!6173 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31752 (_values!6196 thiss!1427))))))

(declare-fun lt!455820 () Unit!33772)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!46 (array!64870 array!64872 (_ BitVec 32) (_ BitVec 32) V!37421 V!37421 (_ BitVec 32) (_ BitVec 64) Int) Unit!33772)

(assert (=> b!1031910 (= lt!455820 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!46 (_keys!11343 thiss!1427) (_values!6196 thiss!1427) (mask!29974 thiss!1427) (extraKeys!5905 thiss!1427) (zeroValue!6009 thiss!1427) (minValue!6009 thiss!1427) (index!41219 lt!455821) key!909 (defaultEntry!6173 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031910 (not (arrayContainsKey!0 lt!455822 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455818 () Unit!33772)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64870 (_ BitVec 32) (_ BitVec 64)) Unit!33772)

(assert (=> b!1031910 (= lt!455818 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11343 thiss!1427) (index!41219 lt!455821) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64870 (_ BitVec 32)) Bool)

(assert (=> b!1031910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455822 (mask!29974 thiss!1427))))

(declare-fun lt!455825 () Unit!33772)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64870 (_ BitVec 32) (_ BitVec 32)) Unit!33772)

(assert (=> b!1031910 (= lt!455825 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11343 thiss!1427) (index!41219 lt!455821) (mask!29974 thiss!1427)))))

(declare-datatypes ((List!22005 0))(
  ( (Nil!22002) (Cons!22001 (h!23203 (_ BitVec 64)) (t!31198 List!22005)) )
))
(declare-fun arrayNoDuplicates!0 (array!64870 (_ BitVec 32) List!22005) Bool)

(assert (=> b!1031910 (arrayNoDuplicates!0 lt!455822 #b00000000000000000000000000000000 Nil!22002)))

(declare-fun lt!455824 () Unit!33772)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64870 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22005) Unit!33772)

(assert (=> b!1031910 (= lt!455824 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11343 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41219 lt!455821) #b00000000000000000000000000000000 Nil!22002))))

(declare-fun arrayCountValidKeys!0 (array!64870 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031910 (= (arrayCountValidKeys!0 lt!455822 #b00000000000000000000000000000000 (size!31751 (_keys!11343 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11343 thiss!1427) #b00000000000000000000000000000000 (size!31751 (_keys!11343 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031910 (= lt!455822 (array!64871 (store (arr!31233 (_keys!11343 thiss!1427)) (index!41219 lt!455821) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31751 (_keys!11343 thiss!1427))))))

(declare-fun lt!455815 () Unit!33772)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64870 (_ BitVec 32) (_ BitVec 64)) Unit!33772)

(assert (=> b!1031910 (= lt!455815 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11343 thiss!1427) (index!41219 lt!455821) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38070 () Bool)

(declare-fun mapRes!38070 () Bool)

(declare-fun tp!73144 () Bool)

(declare-fun e!582965 () Bool)

(assert (=> mapNonEmpty!38070 (= mapRes!38070 (and tp!73144 e!582965))))

(declare-fun mapRest!38070 () (Array (_ BitVec 32) ValueCell!11502))

(declare-fun mapKey!38070 () (_ BitVec 32))

(declare-fun mapValue!38070 () ValueCell!11502)

(assert (=> mapNonEmpty!38070 (= (arr!31234 (_values!6196 thiss!1427)) (store mapRest!38070 mapKey!38070 mapValue!38070))))

(declare-fun b!1031911 () Bool)

(declare-fun e!582967 () Bool)

(assert (=> b!1031911 (= e!582967 false)))

(declare-fun b!1031912 () Bool)

(assert (=> b!1031912 (= e!582965 tp_is_empty!24411)))

(declare-fun b!1031913 () Bool)

(declare-fun Unit!33776 () Unit!33772)

(assert (=> b!1031913 (= e!582961 Unit!33776)))

(declare-fun res!689934 () Bool)

(assert (=> start!90120 (=> (not res!689934) (not e!582966))))

(assert (=> start!90120 (= res!689934 (valid!2070 thiss!1427))))

(assert (=> start!90120 e!582966))

(assert (=> start!90120 e!582960))

(assert (=> start!90120 true))

(declare-fun mapIsEmpty!38070 () Bool)

(assert (=> mapIsEmpty!38070 mapRes!38070))

(declare-fun b!1031914 () Bool)

(declare-fun Unit!33777 () Unit!33772)

(assert (=> b!1031914 (= e!582961 Unit!33777)))

(declare-fun lt!455823 () Unit!33772)

(declare-fun lemmaKeyInListMapIsInArray!355 (array!64870 array!64872 (_ BitVec 32) (_ BitVec 32) V!37421 V!37421 (_ BitVec 64) Int) Unit!33772)

(assert (=> b!1031914 (= lt!455823 (lemmaKeyInListMapIsInArray!355 (_keys!11343 (_2!7917 lt!455817)) (_values!6196 (_2!7917 lt!455817)) (mask!29974 (_2!7917 lt!455817)) (extraKeys!5905 (_2!7917 lt!455817)) (zeroValue!6009 (_2!7917 lt!455817)) (minValue!6009 (_2!7917 lt!455817)) key!909 (defaultEntry!6173 (_2!7917 lt!455817))))))

(declare-fun c!104224 () Bool)

(assert (=> b!1031914 (= c!104224 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689932 () Bool)

(assert (=> b!1031914 (= res!689932 e!582962)))

(assert (=> b!1031914 (=> (not res!689932) (not e!582967))))

(assert (=> b!1031914 e!582967))

(declare-fun b!1031915 () Bool)

(assert (=> b!1031915 (= e!582962 (arrayContainsKey!0 (_keys!11343 (_2!7917 lt!455817)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031916 () Bool)

(assert (=> b!1031916 (= e!582966 e!582959)))

(declare-fun res!689933 () Bool)

(assert (=> b!1031916 (=> (not res!689933) (not e!582959))))

(get-info :version)

(assert (=> b!1031916 (= res!689933 ((_ is Found!9712) lt!455821))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64870 (_ BitVec 32)) SeekEntryResult!9712)

(assert (=> b!1031916 (= lt!455821 (seekEntry!0 key!909 (_keys!11343 thiss!1427) (mask!29974 thiss!1427)))))

(declare-fun b!1031917 () Bool)

(assert (=> b!1031917 (= e!582964 (and e!582958 mapRes!38070))))

(declare-fun condMapEmpty!38070 () Bool)

(declare-fun mapDefault!38070 () ValueCell!11502)

(assert (=> b!1031917 (= condMapEmpty!38070 (= (arr!31234 (_values!6196 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11502)) mapDefault!38070)))))

(assert (= (and start!90120 res!689934) b!1031908))

(assert (= (and b!1031908 res!689931) b!1031916))

(assert (= (and b!1031916 res!689933) b!1031910))

(assert (= (and b!1031910 c!104225) b!1031914))

(assert (= (and b!1031910 (not c!104225)) b!1031913))

(assert (= (and b!1031914 c!104224) b!1031915))

(assert (= (and b!1031914 (not c!104224)) b!1031906))

(assert (= (and b!1031914 res!689932) b!1031911))

(assert (= (and b!1031917 condMapEmpty!38070) mapIsEmpty!38070))

(assert (= (and b!1031917 (not condMapEmpty!38070)) mapNonEmpty!38070))

(assert (= (and mapNonEmpty!38070 ((_ is ValueCellFull!11502) mapValue!38070)) b!1031912))

(assert (= (and b!1031917 ((_ is ValueCellFull!11502) mapDefault!38070)) b!1031907))

(assert (= b!1031909 b!1031917))

(assert (= start!90120 b!1031909))

(declare-fun b_lambda!16065 () Bool)

(assert (=> (not b_lambda!16065) (not b!1031910)))

(declare-fun t!31196 () Bool)

(declare-fun tb!7017 () Bool)

(assert (=> (and b!1031909 (= (defaultEntry!6173 thiss!1427) (defaultEntry!6173 thiss!1427)) t!31196) tb!7017))

(declare-fun result!14355 () Bool)

(assert (=> tb!7017 (= result!14355 tp_is_empty!24411)))

(assert (=> b!1031910 t!31196))

(declare-fun b_and!33169 () Bool)

(assert (= b_and!33167 (and (=> t!31196 result!14355) b_and!33169)))

(declare-fun m!952381 () Bool)

(assert (=> b!1031916 m!952381))

(declare-fun m!952383 () Bool)

(assert (=> start!90120 m!952383))

(declare-fun m!952385 () Bool)

(assert (=> b!1031915 m!952385))

(declare-fun m!952387 () Bool)

(assert (=> b!1031910 m!952387))

(declare-fun m!952389 () Bool)

(assert (=> b!1031910 m!952389))

(declare-fun m!952391 () Bool)

(assert (=> b!1031910 m!952391))

(declare-fun m!952393 () Bool)

(assert (=> b!1031910 m!952393))

(declare-fun m!952395 () Bool)

(assert (=> b!1031910 m!952395))

(declare-fun m!952397 () Bool)

(assert (=> b!1031910 m!952397))

(declare-fun m!952399 () Bool)

(assert (=> b!1031910 m!952399))

(declare-fun m!952401 () Bool)

(assert (=> b!1031910 m!952401))

(declare-fun m!952403 () Bool)

(assert (=> b!1031910 m!952403))

(declare-fun m!952405 () Bool)

(assert (=> b!1031910 m!952405))

(declare-fun m!952407 () Bool)

(assert (=> b!1031910 m!952407))

(declare-fun m!952409 () Bool)

(assert (=> b!1031910 m!952409))

(declare-fun m!952411 () Bool)

(assert (=> b!1031910 m!952411))

(declare-fun m!952413 () Bool)

(assert (=> b!1031910 m!952413))

(declare-fun m!952415 () Bool)

(assert (=> b!1031910 m!952415))

(declare-fun m!952417 () Bool)

(assert (=> b!1031910 m!952417))

(declare-fun m!952419 () Bool)

(assert (=> b!1031910 m!952419))

(declare-fun m!952421 () Bool)

(assert (=> b!1031910 m!952421))

(declare-fun m!952423 () Bool)

(assert (=> b!1031910 m!952423))

(assert (=> b!1031910 m!952389))

(assert (=> b!1031910 m!952405))

(declare-fun m!952425 () Bool)

(assert (=> b!1031914 m!952425))

(declare-fun m!952427 () Bool)

(assert (=> b!1031909 m!952427))

(declare-fun m!952429 () Bool)

(assert (=> b!1031909 m!952429))

(declare-fun m!952431 () Bool)

(assert (=> mapNonEmpty!38070 m!952431))

(check-sat (not b_next!20691) b_and!33169 (not b_lambda!16065) (not mapNonEmpty!38070) tp_is_empty!24411 (not start!90120) (not b!1031916) (not b!1031915) (not b!1031909) (not b!1031914) (not b!1031910))
(check-sat b_and!33169 (not b_next!20691))
