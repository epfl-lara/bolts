; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90078 () Bool)

(assert start!90078)

(declare-fun b!1031155 () Bool)

(declare-fun b_free!20649 () Bool)

(declare-fun b_next!20649 () Bool)

(assert (=> b!1031155 (= b_free!20649 (not b_next!20649))))

(declare-fun tp!73019 () Bool)

(declare-fun b_and!33083 () Bool)

(assert (=> b!1031155 (= tp!73019 b_and!33083)))

(declare-fun b!1031148 () Bool)

(declare-fun e!582412 () Bool)

(declare-fun tp_is_empty!24369 () Bool)

(assert (=> b!1031148 (= e!582412 tp_is_empty!24369)))

(declare-fun b!1031149 () Bool)

(declare-fun e!582409 () Bool)

(declare-fun e!582415 () Bool)

(assert (=> b!1031149 (= e!582409 e!582415)))

(declare-fun res!689560 () Bool)

(assert (=> b!1031149 (=> (not res!689560) (not e!582415))))

(declare-datatypes ((SeekEntryResult!9694 0))(
  ( (MissingZero!9694 (index!41146 (_ BitVec 32))) (Found!9694 (index!41147 (_ BitVec 32))) (Intermediate!9694 (undefined!10506 Bool) (index!41148 (_ BitVec 32)) (x!91799 (_ BitVec 32))) (Undefined!9694) (MissingVacant!9694 (index!41149 (_ BitVec 32))) )
))
(declare-fun lt!455145 () SeekEntryResult!9694)

(get-info :version)

(assert (=> b!1031149 (= res!689560 ((_ is Found!9694) lt!455145))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37365 0))(
  ( (V!37366 (val!12235 Int)) )
))
(declare-datatypes ((ValueCell!11481 0))(
  ( (ValueCellFull!11481 (v!14813 V!37365)) (EmptyCell!11481) )
))
(declare-datatypes ((array!64786 0))(
  ( (array!64787 (arr!31191 (Array (_ BitVec 32) (_ BitVec 64))) (size!31709 (_ BitVec 32))) )
))
(declare-datatypes ((array!64788 0))(
  ( (array!64789 (arr!31192 (Array (_ BitVec 32) ValueCell!11481)) (size!31710 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5556 0))(
  ( (LongMapFixedSize!5557 (defaultEntry!6152 Int) (mask!29939 (_ BitVec 32)) (extraKeys!5884 (_ BitVec 32)) (zeroValue!5988 V!37365) (minValue!5988 V!37365) (_size!2833 (_ BitVec 32)) (_keys!11322 array!64786) (_values!6175 array!64788) (_vacant!2833 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5556)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64786 (_ BitVec 32)) SeekEntryResult!9694)

(assert (=> b!1031149 (= lt!455145 (seekEntry!0 key!909 (_keys!11322 thiss!1427) (mask!29939 thiss!1427)))))

(declare-fun b!1031150 () Bool)

(declare-fun e!582408 () Bool)

(assert (=> b!1031150 (= e!582408 tp_is_empty!24369)))

(declare-fun b!1031151 () Bool)

(declare-fun e!582410 () Bool)

(assert (=> b!1031151 (= e!582415 (not e!582410))))

(declare-fun res!689559 () Bool)

(assert (=> b!1031151 (=> res!689559 e!582410)))

(declare-datatypes ((Unit!33690 0))(
  ( (Unit!33691) )
))
(declare-datatypes ((tuple2!15742 0))(
  ( (tuple2!15743 (_1!7881 Unit!33690) (_2!7881 LongMapFixedSize!5556)) )
))
(declare-fun lt!455139 () tuple2!15742)

(declare-datatypes ((tuple2!15744 0))(
  ( (tuple2!15745 (_1!7882 (_ BitVec 64)) (_2!7882 V!37365)) )
))
(declare-datatypes ((List!21972 0))(
  ( (Nil!21969) (Cons!21968 (h!23170 tuple2!15744) (t!31123 List!21972)) )
))
(declare-datatypes ((ListLongMap!13829 0))(
  ( (ListLongMap!13830 (toList!6930 List!21972)) )
))
(declare-fun contains!6009 (ListLongMap!13829 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3937 (array!64786 array!64788 (_ BitVec 32) (_ BitVec 32) V!37365 V!37365 (_ BitVec 32) Int) ListLongMap!13829)

(assert (=> b!1031151 (= res!689559 (not (contains!6009 (getCurrentListMap!3937 (_keys!11322 (_2!7881 lt!455139)) (_values!6175 (_2!7881 lt!455139)) (mask!29939 (_2!7881 lt!455139)) (extraKeys!5884 (_2!7881 lt!455139)) (zeroValue!5988 (_2!7881 lt!455139)) (minValue!5988 (_2!7881 lt!455139)) #b00000000000000000000000000000000 (defaultEntry!6152 (_2!7881 lt!455139))) key!909)))))

(declare-fun lt!455147 () array!64788)

(declare-fun lt!455140 () array!64786)

(declare-fun Unit!33692 () Unit!33690)

(declare-fun Unit!33693 () Unit!33690)

(assert (=> b!1031151 (= lt!455139 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2833 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15743 Unit!33692 (LongMapFixedSize!5557 (defaultEntry!6152 thiss!1427) (mask!29939 thiss!1427) (extraKeys!5884 thiss!1427) (zeroValue!5988 thiss!1427) (minValue!5988 thiss!1427) (bvsub (_size!2833 thiss!1427) #b00000000000000000000000000000001) lt!455140 lt!455147 (bvadd #b00000000000000000000000000000001 (_vacant!2833 thiss!1427)))) (tuple2!15743 Unit!33693 (LongMapFixedSize!5557 (defaultEntry!6152 thiss!1427) (mask!29939 thiss!1427) (extraKeys!5884 thiss!1427) (zeroValue!5988 thiss!1427) (minValue!5988 thiss!1427) (bvsub (_size!2833 thiss!1427) #b00000000000000000000000000000001) lt!455140 lt!455147 (_vacant!2833 thiss!1427)))))))

(declare-fun -!506 (ListLongMap!13829 (_ BitVec 64)) ListLongMap!13829)

(assert (=> b!1031151 (= (-!506 (getCurrentListMap!3937 (_keys!11322 thiss!1427) (_values!6175 thiss!1427) (mask!29939 thiss!1427) (extraKeys!5884 thiss!1427) (zeroValue!5988 thiss!1427) (minValue!5988 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6152 thiss!1427)) key!909) (getCurrentListMap!3937 lt!455140 lt!455147 (mask!29939 thiss!1427) (extraKeys!5884 thiss!1427) (zeroValue!5988 thiss!1427) (minValue!5988 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6152 thiss!1427)))))

(declare-fun dynLambda!1981 (Int (_ BitVec 64)) V!37365)

(assert (=> b!1031151 (= lt!455147 (array!64789 (store (arr!31192 (_values!6175 thiss!1427)) (index!41147 lt!455145) (ValueCellFull!11481 (dynLambda!1981 (defaultEntry!6152 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31710 (_values!6175 thiss!1427))))))

(declare-fun lt!455144 () Unit!33690)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!30 (array!64786 array!64788 (_ BitVec 32) (_ BitVec 32) V!37365 V!37365 (_ BitVec 32) (_ BitVec 64) Int) Unit!33690)

(assert (=> b!1031151 (= lt!455144 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!30 (_keys!11322 thiss!1427) (_values!6175 thiss!1427) (mask!29939 thiss!1427) (extraKeys!5884 thiss!1427) (zeroValue!5988 thiss!1427) (minValue!5988 thiss!1427) (index!41147 lt!455145) key!909 (defaultEntry!6152 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031151 (not (arrayContainsKey!0 lt!455140 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455143 () Unit!33690)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64786 (_ BitVec 32) (_ BitVec 64)) Unit!33690)

(assert (=> b!1031151 (= lt!455143 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11322 thiss!1427) (index!41147 lt!455145) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64786 (_ BitVec 32)) Bool)

(assert (=> b!1031151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455140 (mask!29939 thiss!1427))))

(declare-fun lt!455141 () Unit!33690)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64786 (_ BitVec 32) (_ BitVec 32)) Unit!33690)

(assert (=> b!1031151 (= lt!455141 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11322 thiss!1427) (index!41147 lt!455145) (mask!29939 thiss!1427)))))

(declare-datatypes ((List!21973 0))(
  ( (Nil!21970) (Cons!21969 (h!23171 (_ BitVec 64)) (t!31124 List!21973)) )
))
(declare-fun arrayNoDuplicates!0 (array!64786 (_ BitVec 32) List!21973) Bool)

(assert (=> b!1031151 (arrayNoDuplicates!0 lt!455140 #b00000000000000000000000000000000 Nil!21970)))

(declare-fun lt!455148 () Unit!33690)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64786 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21973) Unit!33690)

(assert (=> b!1031151 (= lt!455148 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11322 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41147 lt!455145) #b00000000000000000000000000000000 Nil!21970))))

(declare-fun arrayCountValidKeys!0 (array!64786 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031151 (= (arrayCountValidKeys!0 lt!455140 #b00000000000000000000000000000000 (size!31709 (_keys!11322 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11322 thiss!1427) #b00000000000000000000000000000000 (size!31709 (_keys!11322 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031151 (= lt!455140 (array!64787 (store (arr!31191 (_keys!11322 thiss!1427)) (index!41147 lt!455145) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31709 (_keys!11322 thiss!1427))))))

(declare-fun lt!455146 () Unit!33690)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64786 (_ BitVec 32) (_ BitVec 64)) Unit!33690)

(assert (=> b!1031151 (= lt!455146 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11322 thiss!1427) (index!41147 lt!455145) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031152 () Bool)

(declare-fun res!689561 () Bool)

(assert (=> b!1031152 (=> (not res!689561) (not e!582409))))

(assert (=> b!1031152 (= res!689561 (not (= key!909 (bvneg key!909))))))

(declare-fun res!689562 () Bool)

(assert (=> start!90078 (=> (not res!689562) (not e!582409))))

(declare-fun valid!2055 (LongMapFixedSize!5556) Bool)

(assert (=> start!90078 (= res!689562 (valid!2055 thiss!1427))))

(assert (=> start!90078 e!582409))

(declare-fun e!582413 () Bool)

(assert (=> start!90078 e!582413))

(assert (=> start!90078 true))

(declare-fun b!1031153 () Bool)

(declare-fun res!689565 () Bool)

(assert (=> b!1031153 (=> res!689565 e!582410)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031153 (= res!689565 (not (validMask!0 (mask!29939 (_2!7881 lt!455139)))))))

(declare-fun mapNonEmpty!38007 () Bool)

(declare-fun mapRes!38007 () Bool)

(declare-fun tp!73018 () Bool)

(assert (=> mapNonEmpty!38007 (= mapRes!38007 (and tp!73018 e!582412))))

(declare-fun mapKey!38007 () (_ BitVec 32))

(declare-fun mapValue!38007 () ValueCell!11481)

(declare-fun mapRest!38007 () (Array (_ BitVec 32) ValueCell!11481))

(assert (=> mapNonEmpty!38007 (= (arr!31192 (_values!6175 thiss!1427)) (store mapRest!38007 mapKey!38007 mapValue!38007))))

(declare-fun b!1031154 () Bool)

(declare-fun e!582414 () Bool)

(assert (=> b!1031154 (= e!582414 (and e!582408 mapRes!38007))))

(declare-fun condMapEmpty!38007 () Bool)

(declare-fun mapDefault!38007 () ValueCell!11481)

(assert (=> b!1031154 (= condMapEmpty!38007 (= (arr!31192 (_values!6175 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11481)) mapDefault!38007)))))

(declare-fun mapIsEmpty!38007 () Bool)

(assert (=> mapIsEmpty!38007 mapRes!38007))

(declare-fun array_inv!23989 (array!64786) Bool)

(declare-fun array_inv!23990 (array!64788) Bool)

(assert (=> b!1031155 (= e!582413 (and tp!73019 tp_is_empty!24369 (array_inv!23989 (_keys!11322 thiss!1427)) (array_inv!23990 (_values!6175 thiss!1427)) e!582414))))

(declare-fun b!1031156 () Bool)

(declare-fun res!689563 () Bool)

(assert (=> b!1031156 (=> res!689563 e!582410)))

(assert (=> b!1031156 (= res!689563 (or (not (= (size!31710 (_values!6175 (_2!7881 lt!455139))) (bvadd #b00000000000000000000000000000001 (mask!29939 (_2!7881 lt!455139))))) (not (= (size!31709 (_keys!11322 (_2!7881 lt!455139))) (size!31710 (_values!6175 (_2!7881 lt!455139))))) (bvslt (mask!29939 (_2!7881 lt!455139)) #b00000000000000000000000000000000) (bvslt (extraKeys!5884 (_2!7881 lt!455139)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5884 (_2!7881 lt!455139)) #b00000000000000000000000000000011)))))

(declare-fun b!1031157 () Bool)

(assert (=> b!1031157 (= e!582410 true)))

(declare-fun lt!455142 () Bool)

(assert (=> b!1031157 (= lt!455142 (arrayNoDuplicates!0 (_keys!11322 (_2!7881 lt!455139)) #b00000000000000000000000000000000 Nil!21970))))

(declare-fun b!1031158 () Bool)

(declare-fun res!689564 () Bool)

(assert (=> b!1031158 (=> res!689564 e!582410)))

(assert (=> b!1031158 (= res!689564 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11322 (_2!7881 lt!455139)) (mask!29939 (_2!7881 lt!455139)))))))

(assert (= (and start!90078 res!689562) b!1031152))

(assert (= (and b!1031152 res!689561) b!1031149))

(assert (= (and b!1031149 res!689560) b!1031151))

(assert (= (and b!1031151 (not res!689559)) b!1031153))

(assert (= (and b!1031153 (not res!689565)) b!1031156))

(assert (= (and b!1031156 (not res!689563)) b!1031158))

(assert (= (and b!1031158 (not res!689564)) b!1031157))

(assert (= (and b!1031154 condMapEmpty!38007) mapIsEmpty!38007))

(assert (= (and b!1031154 (not condMapEmpty!38007)) mapNonEmpty!38007))

(assert (= (and mapNonEmpty!38007 ((_ is ValueCellFull!11481) mapValue!38007)) b!1031148))

(assert (= (and b!1031154 ((_ is ValueCellFull!11481) mapDefault!38007)) b!1031150))

(assert (= b!1031155 b!1031154))

(assert (= start!90078 b!1031155))

(declare-fun b_lambda!16023 () Bool)

(assert (=> (not b_lambda!16023) (not b!1031151)))

(declare-fun t!31122 () Bool)

(declare-fun tb!6975 () Bool)

(assert (=> (and b!1031155 (= (defaultEntry!6152 thiss!1427) (defaultEntry!6152 thiss!1427)) t!31122) tb!6975))

(declare-fun result!14271 () Bool)

(assert (=> tb!6975 (= result!14271 tp_is_empty!24369)))

(assert (=> b!1031151 t!31122))

(declare-fun b_and!33085 () Bool)

(assert (= b_and!33083 (and (=> t!31122 result!14271) b_and!33085)))

(declare-fun m!951289 () Bool)

(assert (=> b!1031155 m!951289))

(declare-fun m!951291 () Bool)

(assert (=> b!1031155 m!951291))

(declare-fun m!951293 () Bool)

(assert (=> start!90078 m!951293))

(declare-fun m!951295 () Bool)

(assert (=> b!1031158 m!951295))

(declare-fun m!951297 () Bool)

(assert (=> b!1031153 m!951297))

(declare-fun m!951299 () Bool)

(assert (=> mapNonEmpty!38007 m!951299))

(declare-fun m!951301 () Bool)

(assert (=> b!1031151 m!951301))

(declare-fun m!951303 () Bool)

(assert (=> b!1031151 m!951303))

(declare-fun m!951305 () Bool)

(assert (=> b!1031151 m!951305))

(declare-fun m!951307 () Bool)

(assert (=> b!1031151 m!951307))

(declare-fun m!951309 () Bool)

(assert (=> b!1031151 m!951309))

(declare-fun m!951311 () Bool)

(assert (=> b!1031151 m!951311))

(declare-fun m!951313 () Bool)

(assert (=> b!1031151 m!951313))

(declare-fun m!951315 () Bool)

(assert (=> b!1031151 m!951315))

(declare-fun m!951317 () Bool)

(assert (=> b!1031151 m!951317))

(assert (=> b!1031151 m!951301))

(declare-fun m!951319 () Bool)

(assert (=> b!1031151 m!951319))

(declare-fun m!951321 () Bool)

(assert (=> b!1031151 m!951321))

(declare-fun m!951323 () Bool)

(assert (=> b!1031151 m!951323))

(declare-fun m!951325 () Bool)

(assert (=> b!1031151 m!951325))

(declare-fun m!951327 () Bool)

(assert (=> b!1031151 m!951327))

(declare-fun m!951329 () Bool)

(assert (=> b!1031151 m!951329))

(declare-fun m!951331 () Bool)

(assert (=> b!1031151 m!951331))

(assert (=> b!1031151 m!951315))

(declare-fun m!951333 () Bool)

(assert (=> b!1031151 m!951333))

(declare-fun m!951335 () Bool)

(assert (=> b!1031151 m!951335))

(declare-fun m!951337 () Bool)

(assert (=> b!1031157 m!951337))

(declare-fun m!951339 () Bool)

(assert (=> b!1031149 m!951339))

(check-sat (not b!1031158) (not b!1031151) tp_is_empty!24369 (not b_lambda!16023) (not b!1031149) (not mapNonEmpty!38007) (not b!1031153) (not start!90078) (not b_next!20649) (not b!1031155) b_and!33085 (not b!1031157))
(check-sat b_and!33085 (not b_next!20649))
