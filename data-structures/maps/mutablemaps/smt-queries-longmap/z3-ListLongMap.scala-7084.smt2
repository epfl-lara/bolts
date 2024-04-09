; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89596 () Bool)

(assert start!89596)

(declare-fun b!1027281 () Bool)

(declare-fun b_free!20559 () Bool)

(declare-fun b_next!20559 () Bool)

(assert (=> b!1027281 (= b_free!20559 (not b_next!20559))))

(declare-fun tp!72723 () Bool)

(declare-fun b_and!32823 () Bool)

(assert (=> b!1027281 (= tp!72723 b_and!32823)))

(declare-fun b!1027277 () Bool)

(declare-fun e!579769 () Bool)

(declare-fun e!579774 () Bool)

(assert (=> b!1027277 (= e!579769 (not e!579774))))

(declare-fun res!687695 () Bool)

(assert (=> b!1027277 (=> res!687695 e!579774)))

(declare-datatypes ((V!37245 0))(
  ( (V!37246 (val!12190 Int)) )
))
(declare-datatypes ((ValueCell!11436 0))(
  ( (ValueCellFull!11436 (v!14760 V!37245)) (EmptyCell!11436) )
))
(declare-datatypes ((array!64592 0))(
  ( (array!64593 (arr!31101 (Array (_ BitVec 32) (_ BitVec 64))) (size!31615 (_ BitVec 32))) )
))
(declare-datatypes ((array!64594 0))(
  ( (array!64595 (arr!31102 (Array (_ BitVec 32) ValueCell!11436)) (size!31616 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5466 0))(
  ( (LongMapFixedSize!5467 (defaultEntry!6085 Int) (mask!29794 (_ BitVec 32)) (extraKeys!5817 (_ BitVec 32)) (zeroValue!5921 V!37245) (minValue!5921 V!37245) (_size!2788 (_ BitVec 32)) (_keys!11229 array!64592) (_values!6108 array!64594) (_vacant!2788 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5466)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027277 (= res!687695 (not (validMask!0 (mask!29794 thiss!1427))))))

(declare-fun lt!452160 () array!64592)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027277 (not (arrayContainsKey!0 lt!452160 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33440 0))(
  ( (Unit!33441) )
))
(declare-fun lt!452161 () Unit!33440)

(declare-datatypes ((SeekEntryResult!9656 0))(
  ( (MissingZero!9656 (index!40994 (_ BitVec 32))) (Found!9656 (index!40995 (_ BitVec 32))) (Intermediate!9656 (undefined!10468 Bool) (index!40996 (_ BitVec 32)) (x!91393 (_ BitVec 32))) (Undefined!9656) (MissingVacant!9656 (index!40997 (_ BitVec 32))) )
))
(declare-fun lt!452164 () SeekEntryResult!9656)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64592 (_ BitVec 32) (_ BitVec 64)) Unit!33440)

(assert (=> b!1027277 (= lt!452161 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11229 thiss!1427) (index!40995 lt!452164) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64592 (_ BitVec 32)) Bool)

(assert (=> b!1027277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452160 (mask!29794 thiss!1427))))

(declare-fun lt!452162 () Unit!33440)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64592 (_ BitVec 32) (_ BitVec 32)) Unit!33440)

(assert (=> b!1027277 (= lt!452162 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11229 thiss!1427) (index!40995 lt!452164) (mask!29794 thiss!1427)))))

(declare-datatypes ((List!21911 0))(
  ( (Nil!21908) (Cons!21907 (h!23105 (_ BitVec 64)) (t!30980 List!21911)) )
))
(declare-fun arrayNoDuplicates!0 (array!64592 (_ BitVec 32) List!21911) Bool)

(assert (=> b!1027277 (arrayNoDuplicates!0 lt!452160 #b00000000000000000000000000000000 Nil!21908)))

(declare-fun lt!452163 () Unit!33440)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64592 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21911) Unit!33440)

(assert (=> b!1027277 (= lt!452163 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11229 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40995 lt!452164) #b00000000000000000000000000000000 Nil!21908))))

(declare-fun arrayCountValidKeys!0 (array!64592 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027277 (= (arrayCountValidKeys!0 lt!452160 #b00000000000000000000000000000000 (size!31615 (_keys!11229 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11229 thiss!1427) #b00000000000000000000000000000000 (size!31615 (_keys!11229 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027277 (= lt!452160 (array!64593 (store (arr!31101 (_keys!11229 thiss!1427)) (index!40995 lt!452164) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31615 (_keys!11229 thiss!1427))))))

(declare-fun lt!452158 () Unit!33440)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64592 (_ BitVec 32) (_ BitVec 64)) Unit!33440)

(assert (=> b!1027277 (= lt!452158 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11229 thiss!1427) (index!40995 lt!452164) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027278 () Bool)

(declare-fun res!687697 () Bool)

(assert (=> b!1027278 (=> res!687697 e!579774)))

(assert (=> b!1027278 (= res!687697 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11229 thiss!1427) (mask!29794 thiss!1427))))))

(declare-fun b!1027279 () Bool)

(declare-fun e!579773 () Bool)

(declare-fun tp_is_empty!24279 () Bool)

(assert (=> b!1027279 (= e!579773 tp_is_empty!24279)))

(declare-fun res!687699 () Bool)

(declare-fun e!579771 () Bool)

(assert (=> start!89596 (=> (not res!687699) (not e!579771))))

(declare-fun valid!2025 (LongMapFixedSize!5466) Bool)

(assert (=> start!89596 (= res!687699 (valid!2025 thiss!1427))))

(assert (=> start!89596 e!579771))

(declare-fun e!579772 () Bool)

(assert (=> start!89596 e!579772))

(assert (=> start!89596 true))

(declare-fun b!1027280 () Bool)

(declare-fun res!687698 () Bool)

(assert (=> b!1027280 (=> (not res!687698) (not e!579771))))

(assert (=> b!1027280 (= res!687698 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37847 () Bool)

(declare-fun mapRes!37847 () Bool)

(assert (=> mapIsEmpty!37847 mapRes!37847))

(declare-fun mapNonEmpty!37847 () Bool)

(declare-fun tp!72724 () Bool)

(assert (=> mapNonEmpty!37847 (= mapRes!37847 (and tp!72724 e!579773))))

(declare-fun mapRest!37847 () (Array (_ BitVec 32) ValueCell!11436))

(declare-fun mapValue!37847 () ValueCell!11436)

(declare-fun mapKey!37847 () (_ BitVec 32))

(assert (=> mapNonEmpty!37847 (= (arr!31102 (_values!6108 thiss!1427)) (store mapRest!37847 mapKey!37847 mapValue!37847))))

(declare-fun e!579776 () Bool)

(declare-fun array_inv!23929 (array!64592) Bool)

(declare-fun array_inv!23930 (array!64594) Bool)

(assert (=> b!1027281 (= e!579772 (and tp!72723 tp_is_empty!24279 (array_inv!23929 (_keys!11229 thiss!1427)) (array_inv!23930 (_values!6108 thiss!1427)) e!579776))))

(declare-fun b!1027282 () Bool)

(declare-fun res!687696 () Bool)

(assert (=> b!1027282 (=> res!687696 e!579774)))

(assert (=> b!1027282 (= res!687696 (or (not (= (size!31616 (_values!6108 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29794 thiss!1427)))) (not (= (size!31615 (_keys!11229 thiss!1427)) (size!31616 (_values!6108 thiss!1427)))) (bvslt (mask!29794 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5817 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5817 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1027283 () Bool)

(assert (=> b!1027283 (= e!579774 true)))

(declare-fun lt!452159 () Bool)

(assert (=> b!1027283 (= lt!452159 (arrayNoDuplicates!0 (_keys!11229 thiss!1427) #b00000000000000000000000000000000 Nil!21908))))

(declare-fun b!1027284 () Bool)

(assert (=> b!1027284 (= e!579771 e!579769)))

(declare-fun res!687694 () Bool)

(assert (=> b!1027284 (=> (not res!687694) (not e!579769))))

(get-info :version)

(assert (=> b!1027284 (= res!687694 ((_ is Found!9656) lt!452164))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64592 (_ BitVec 32)) SeekEntryResult!9656)

(assert (=> b!1027284 (= lt!452164 (seekEntry!0 key!909 (_keys!11229 thiss!1427) (mask!29794 thiss!1427)))))

(declare-fun b!1027285 () Bool)

(declare-fun e!579775 () Bool)

(assert (=> b!1027285 (= e!579775 tp_is_empty!24279)))

(declare-fun b!1027286 () Bool)

(assert (=> b!1027286 (= e!579776 (and e!579775 mapRes!37847))))

(declare-fun condMapEmpty!37847 () Bool)

(declare-fun mapDefault!37847 () ValueCell!11436)

(assert (=> b!1027286 (= condMapEmpty!37847 (= (arr!31102 (_values!6108 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11436)) mapDefault!37847)))))

(assert (= (and start!89596 res!687699) b!1027280))

(assert (= (and b!1027280 res!687698) b!1027284))

(assert (= (and b!1027284 res!687694) b!1027277))

(assert (= (and b!1027277 (not res!687695)) b!1027282))

(assert (= (and b!1027282 (not res!687696)) b!1027278))

(assert (= (and b!1027278 (not res!687697)) b!1027283))

(assert (= (and b!1027286 condMapEmpty!37847) mapIsEmpty!37847))

(assert (= (and b!1027286 (not condMapEmpty!37847)) mapNonEmpty!37847))

(assert (= (and mapNonEmpty!37847 ((_ is ValueCellFull!11436) mapValue!37847)) b!1027279))

(assert (= (and b!1027286 ((_ is ValueCellFull!11436) mapDefault!37847)) b!1027285))

(assert (= b!1027281 b!1027286))

(assert (= start!89596 b!1027281))

(declare-fun m!945859 () Bool)

(assert (=> b!1027281 m!945859))

(declare-fun m!945861 () Bool)

(assert (=> b!1027281 m!945861))

(declare-fun m!945863 () Bool)

(assert (=> b!1027278 m!945863))

(declare-fun m!945865 () Bool)

(assert (=> mapNonEmpty!37847 m!945865))

(declare-fun m!945867 () Bool)

(assert (=> b!1027283 m!945867))

(declare-fun m!945869 () Bool)

(assert (=> start!89596 m!945869))

(declare-fun m!945871 () Bool)

(assert (=> b!1027277 m!945871))

(declare-fun m!945873 () Bool)

(assert (=> b!1027277 m!945873))

(declare-fun m!945875 () Bool)

(assert (=> b!1027277 m!945875))

(declare-fun m!945877 () Bool)

(assert (=> b!1027277 m!945877))

(declare-fun m!945879 () Bool)

(assert (=> b!1027277 m!945879))

(declare-fun m!945881 () Bool)

(assert (=> b!1027277 m!945881))

(declare-fun m!945883 () Bool)

(assert (=> b!1027277 m!945883))

(declare-fun m!945885 () Bool)

(assert (=> b!1027277 m!945885))

(declare-fun m!945887 () Bool)

(assert (=> b!1027277 m!945887))

(declare-fun m!945889 () Bool)

(assert (=> b!1027277 m!945889))

(declare-fun m!945891 () Bool)

(assert (=> b!1027277 m!945891))

(declare-fun m!945893 () Bool)

(assert (=> b!1027284 m!945893))

(check-sat (not mapNonEmpty!37847) (not start!89596) tp_is_empty!24279 (not b!1027277) b_and!32823 (not b!1027281) (not b!1027284) (not b_next!20559) (not b!1027278) (not b!1027283))
(check-sat b_and!32823 (not b_next!20559))
