; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89440 () Bool)

(assert start!89440)

(declare-fun b!1024970 () Bool)

(declare-fun b_free!20403 () Bool)

(declare-fun b_next!20403 () Bool)

(assert (=> b!1024970 (= b_free!20403 (not b_next!20403))))

(declare-fun tp!72255 () Bool)

(declare-fun b_and!32667 () Bool)

(assert (=> b!1024970 (= tp!72255 b_and!32667)))

(declare-fun mapNonEmpty!37613 () Bool)

(declare-fun mapRes!37613 () Bool)

(declare-fun tp!72256 () Bool)

(declare-fun e!577899 () Bool)

(assert (=> mapNonEmpty!37613 (= mapRes!37613 (and tp!72256 e!577899))))

(declare-datatypes ((V!37037 0))(
  ( (V!37038 (val!12112 Int)) )
))
(declare-datatypes ((ValueCell!11358 0))(
  ( (ValueCellFull!11358 (v!14682 V!37037)) (EmptyCell!11358) )
))
(declare-fun mapRest!37613 () (Array (_ BitVec 32) ValueCell!11358))

(declare-fun mapValue!37613 () ValueCell!11358)

(declare-datatypes ((array!64280 0))(
  ( (array!64281 (arr!30945 (Array (_ BitVec 32) (_ BitVec 64))) (size!31459 (_ BitVec 32))) )
))
(declare-datatypes ((array!64282 0))(
  ( (array!64283 (arr!30946 (Array (_ BitVec 32) ValueCell!11358)) (size!31460 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5310 0))(
  ( (LongMapFixedSize!5311 (defaultEntry!6007 Int) (mask!29664 (_ BitVec 32)) (extraKeys!5739 (_ BitVec 32)) (zeroValue!5843 V!37037) (minValue!5843 V!37037) (_size!2710 (_ BitVec 32)) (_keys!11151 array!64280) (_values!6030 array!64282) (_vacant!2710 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5310)

(declare-fun mapKey!37613 () (_ BitVec 32))

(assert (=> mapNonEmpty!37613 (= (arr!30946 (_values!6030 thiss!1427)) (store mapRest!37613 mapKey!37613 mapValue!37613))))

(declare-fun b!1024969 () Bool)

(declare-fun res!686328 () Bool)

(declare-fun e!577901 () Bool)

(assert (=> b!1024969 (=> res!686328 e!577901)))

(declare-datatypes ((List!21849 0))(
  ( (Nil!21846) (Cons!21845 (h!23043 (_ BitVec 64)) (t!30918 List!21849)) )
))
(declare-fun contains!5977 (List!21849 (_ BitVec 64)) Bool)

(assert (=> b!1024969 (= res!686328 (contains!5977 Nil!21846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun tp_is_empty!24123 () Bool)

(declare-fun e!577897 () Bool)

(declare-fun e!577898 () Bool)

(declare-fun array_inv!23829 (array!64280) Bool)

(declare-fun array_inv!23830 (array!64282) Bool)

(assert (=> b!1024970 (= e!577897 (and tp!72255 tp_is_empty!24123 (array_inv!23829 (_keys!11151 thiss!1427)) (array_inv!23830 (_values!6030 thiss!1427)) e!577898))))

(declare-fun b!1024971 () Bool)

(declare-fun e!577903 () Bool)

(assert (=> b!1024971 (= e!577903 (not e!577901))))

(declare-fun res!686325 () Bool)

(assert (=> b!1024971 (=> res!686325 e!577901)))

(assert (=> b!1024971 (= res!686325 (or (bvsge (size!31459 (_keys!11151 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31459 (_keys!11151 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9598 0))(
  ( (MissingZero!9598 (index!40762 (_ BitVec 32))) (Found!9598 (index!40763 (_ BitVec 32))) (Intermediate!9598 (undefined!10410 Bool) (index!40764 (_ BitVec 32)) (x!91127 (_ BitVec 32))) (Undefined!9598) (MissingVacant!9598 (index!40765 (_ BitVec 32))) )
))
(declare-fun lt!450752 () SeekEntryResult!9598)

(declare-fun arrayCountValidKeys!0 (array!64280 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024971 (= (arrayCountValidKeys!0 (array!64281 (store (arr!30945 (_keys!11151 thiss!1427)) (index!40763 lt!450752) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31459 (_keys!11151 thiss!1427))) #b00000000000000000000000000000000 (size!31459 (_keys!11151 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11151 thiss!1427) #b00000000000000000000000000000000 (size!31459 (_keys!11151 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33340 0))(
  ( (Unit!33341) )
))
(declare-fun lt!450754 () Unit!33340)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64280 (_ BitVec 32) (_ BitVec 64)) Unit!33340)

(assert (=> b!1024971 (= lt!450754 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11151 thiss!1427) (index!40763 lt!450752) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024972 () Bool)

(assert (=> b!1024972 (= e!577899 tp_is_empty!24123)))

(declare-fun b!1024973 () Bool)

(declare-fun res!686322 () Bool)

(assert (=> b!1024973 (=> res!686322 e!577901)))

(assert (=> b!1024973 (= res!686322 (contains!5977 Nil!21846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37613 () Bool)

(assert (=> mapIsEmpty!37613 mapRes!37613))

(declare-fun b!1024975 () Bool)

(declare-fun e!577904 () Bool)

(assert (=> b!1024975 (= e!577904 tp_is_empty!24123)))

(declare-fun b!1024976 () Bool)

(declare-fun res!686327 () Bool)

(assert (=> b!1024976 (=> res!686327 e!577901)))

(declare-fun noDuplicate!1485 (List!21849) Bool)

(assert (=> b!1024976 (= res!686327 (not (noDuplicate!1485 Nil!21846)))))

(declare-fun b!1024977 () Bool)

(assert (=> b!1024977 (= e!577901 true)))

(declare-fun lt!450753 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64280 (_ BitVec 32) List!21849) Bool)

(assert (=> b!1024977 (= lt!450753 (arrayNoDuplicates!0 (_keys!11151 thiss!1427) #b00000000000000000000000000000000 Nil!21846))))

(declare-fun b!1024978 () Bool)

(declare-fun e!577902 () Bool)

(assert (=> b!1024978 (= e!577902 e!577903)))

(declare-fun res!686323 () Bool)

(assert (=> b!1024978 (=> (not res!686323) (not e!577903))))

(get-info :version)

(assert (=> b!1024978 (= res!686323 ((_ is Found!9598) lt!450752))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64280 (_ BitVec 32)) SeekEntryResult!9598)

(assert (=> b!1024978 (= lt!450752 (seekEntry!0 key!909 (_keys!11151 thiss!1427) (mask!29664 thiss!1427)))))

(declare-fun b!1024979 () Bool)

(assert (=> b!1024979 (= e!577898 (and e!577904 mapRes!37613))))

(declare-fun condMapEmpty!37613 () Bool)

(declare-fun mapDefault!37613 () ValueCell!11358)

(assert (=> b!1024979 (= condMapEmpty!37613 (= (arr!30946 (_values!6030 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11358)) mapDefault!37613)))))

(declare-fun b!1024974 () Bool)

(declare-fun res!686324 () Bool)

(assert (=> b!1024974 (=> (not res!686324) (not e!577902))))

(assert (=> b!1024974 (= res!686324 (not (= key!909 (bvneg key!909))))))

(declare-fun res!686326 () Bool)

(assert (=> start!89440 (=> (not res!686326) (not e!577902))))

(declare-fun valid!1972 (LongMapFixedSize!5310) Bool)

(assert (=> start!89440 (= res!686326 (valid!1972 thiss!1427))))

(assert (=> start!89440 e!577902))

(assert (=> start!89440 e!577897))

(assert (=> start!89440 true))

(assert (= (and start!89440 res!686326) b!1024974))

(assert (= (and b!1024974 res!686324) b!1024978))

(assert (= (and b!1024978 res!686323) b!1024971))

(assert (= (and b!1024971 (not res!686325)) b!1024976))

(assert (= (and b!1024976 (not res!686327)) b!1024973))

(assert (= (and b!1024973 (not res!686322)) b!1024969))

(assert (= (and b!1024969 (not res!686328)) b!1024977))

(assert (= (and b!1024979 condMapEmpty!37613) mapIsEmpty!37613))

(assert (= (and b!1024979 (not condMapEmpty!37613)) mapNonEmpty!37613))

(assert (= (and mapNonEmpty!37613 ((_ is ValueCellFull!11358) mapValue!37613)) b!1024972))

(assert (= (and b!1024979 ((_ is ValueCellFull!11358) mapDefault!37613)) b!1024975))

(assert (= b!1024970 b!1024979))

(assert (= start!89440 b!1024970))

(declare-fun m!943329 () Bool)

(assert (=> b!1024976 m!943329))

(declare-fun m!943331 () Bool)

(assert (=> mapNonEmpty!37613 m!943331))

(declare-fun m!943333 () Bool)

(assert (=> b!1024970 m!943333))

(declare-fun m!943335 () Bool)

(assert (=> b!1024970 m!943335))

(declare-fun m!943337 () Bool)

(assert (=> b!1024977 m!943337))

(declare-fun m!943339 () Bool)

(assert (=> b!1024973 m!943339))

(declare-fun m!943341 () Bool)

(assert (=> start!89440 m!943341))

(declare-fun m!943343 () Bool)

(assert (=> b!1024978 m!943343))

(declare-fun m!943345 () Bool)

(assert (=> b!1024971 m!943345))

(declare-fun m!943347 () Bool)

(assert (=> b!1024971 m!943347))

(declare-fun m!943349 () Bool)

(assert (=> b!1024971 m!943349))

(declare-fun m!943351 () Bool)

(assert (=> b!1024971 m!943351))

(declare-fun m!943353 () Bool)

(assert (=> b!1024969 m!943353))

(check-sat (not start!89440) (not b!1024976) b_and!32667 (not b_next!20403) (not b!1024978) tp_is_empty!24123 (not b!1024970) (not b!1024977) (not mapNonEmpty!37613) (not b!1024971) (not b!1024969) (not b!1024973))
(check-sat b_and!32667 (not b_next!20403))
