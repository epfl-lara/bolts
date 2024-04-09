; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89542 () Bool)

(assert start!89542)

(declare-fun b!1026470 () Bool)

(declare-fun b_free!20505 () Bool)

(declare-fun b_next!20505 () Bool)

(assert (=> b!1026470 (= b_free!20505 (not b_next!20505))))

(declare-fun tp!72562 () Bool)

(declare-fun b_and!32769 () Bool)

(assert (=> b!1026470 (= tp!72562 b_and!32769)))

(declare-fun b!1026467 () Bool)

(declare-fun e!579123 () Bool)

(declare-fun tp_is_empty!24225 () Bool)

(assert (=> b!1026467 (= e!579123 tp_is_empty!24225)))

(declare-fun mapIsEmpty!37766 () Bool)

(declare-fun mapRes!37766 () Bool)

(assert (=> mapIsEmpty!37766 mapRes!37766))

(declare-fun b!1026468 () Bool)

(declare-fun e!579121 () Bool)

(declare-fun e!579124 () Bool)

(assert (=> b!1026468 (= e!579121 (not e!579124))))

(declare-fun res!687209 () Bool)

(assert (=> b!1026468 (=> res!687209 e!579124)))

(declare-datatypes ((V!37173 0))(
  ( (V!37174 (val!12163 Int)) )
))
(declare-datatypes ((ValueCell!11409 0))(
  ( (ValueCellFull!11409 (v!14733 V!37173)) (EmptyCell!11409) )
))
(declare-datatypes ((array!64484 0))(
  ( (array!64485 (arr!31047 (Array (_ BitVec 32) (_ BitVec 64))) (size!31561 (_ BitVec 32))) )
))
(declare-datatypes ((array!64486 0))(
  ( (array!64487 (arr!31048 (Array (_ BitVec 32) ValueCell!11409)) (size!31562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5412 0))(
  ( (LongMapFixedSize!5413 (defaultEntry!6058 Int) (mask!29749 (_ BitVec 32)) (extraKeys!5790 (_ BitVec 32)) (zeroValue!5894 V!37173) (minValue!5894 V!37173) (_size!2761 (_ BitVec 32)) (_keys!11202 array!64484) (_values!6081 array!64486) (_vacant!2761 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5412)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026468 (= res!687209 (not (validMask!0 (mask!29749 thiss!1427))))))

(declare-fun lt!451596 () array!64484)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026468 (not (arrayContainsKey!0 lt!451596 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33404 0))(
  ( (Unit!33405) )
))
(declare-fun lt!451593 () Unit!33404)

(declare-datatypes ((SeekEntryResult!9636 0))(
  ( (MissingZero!9636 (index!40914 (_ BitVec 32))) (Found!9636 (index!40915 (_ BitVec 32))) (Intermediate!9636 (undefined!10448 Bool) (index!40916 (_ BitVec 32)) (x!91301 (_ BitVec 32))) (Undefined!9636) (MissingVacant!9636 (index!40917 (_ BitVec 32))) )
))
(declare-fun lt!451594 () SeekEntryResult!9636)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64484 (_ BitVec 32) (_ BitVec 64)) Unit!33404)

(assert (=> b!1026468 (= lt!451593 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11202 thiss!1427) (index!40915 lt!451594) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64484 (_ BitVec 32)) Bool)

(assert (=> b!1026468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451596 (mask!29749 thiss!1427))))

(declare-fun lt!451591 () Unit!33404)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64484 (_ BitVec 32) (_ BitVec 32)) Unit!33404)

(assert (=> b!1026468 (= lt!451591 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11202 thiss!1427) (index!40915 lt!451594) (mask!29749 thiss!1427)))))

(declare-datatypes ((List!21887 0))(
  ( (Nil!21884) (Cons!21883 (h!23081 (_ BitVec 64)) (t!30956 List!21887)) )
))
(declare-fun arrayNoDuplicates!0 (array!64484 (_ BitVec 32) List!21887) Bool)

(assert (=> b!1026468 (arrayNoDuplicates!0 lt!451596 #b00000000000000000000000000000000 Nil!21884)))

(declare-fun lt!451597 () Unit!33404)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21887) Unit!33404)

(assert (=> b!1026468 (= lt!451597 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11202 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40915 lt!451594) #b00000000000000000000000000000000 Nil!21884))))

(declare-fun arrayCountValidKeys!0 (array!64484 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026468 (= (arrayCountValidKeys!0 lt!451596 #b00000000000000000000000000000000 (size!31561 (_keys!11202 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11202 thiss!1427) #b00000000000000000000000000000000 (size!31561 (_keys!11202 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026468 (= lt!451596 (array!64485 (store (arr!31047 (_keys!11202 thiss!1427)) (index!40915 lt!451594) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31561 (_keys!11202 thiss!1427))))))

(declare-fun lt!451595 () Unit!33404)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64484 (_ BitVec 32) (_ BitVec 64)) Unit!33404)

(assert (=> b!1026468 (= lt!451595 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11202 thiss!1427) (index!40915 lt!451594) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026469 () Bool)

(declare-fun e!579128 () Bool)

(assert (=> b!1026469 (= e!579128 e!579121)))

(declare-fun res!687208 () Bool)

(assert (=> b!1026469 (=> (not res!687208) (not e!579121))))

(get-info :version)

(assert (=> b!1026469 (= res!687208 ((_ is Found!9636) lt!451594))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64484 (_ BitVec 32)) SeekEntryResult!9636)

(assert (=> b!1026469 (= lt!451594 (seekEntry!0 key!909 (_keys!11202 thiss!1427) (mask!29749 thiss!1427)))))

(declare-fun e!579127 () Bool)

(declare-fun e!579125 () Bool)

(declare-fun array_inv!23893 (array!64484) Bool)

(declare-fun array_inv!23894 (array!64486) Bool)

(assert (=> b!1026470 (= e!579127 (and tp!72562 tp_is_empty!24225 (array_inv!23893 (_keys!11202 thiss!1427)) (array_inv!23894 (_values!6081 thiss!1427)) e!579125))))

(declare-fun b!1026471 () Bool)

(declare-fun res!687212 () Bool)

(assert (=> b!1026471 (=> res!687212 e!579124)))

(assert (=> b!1026471 (= res!687212 (or (not (= (size!31562 (_values!6081 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29749 thiss!1427)))) (not (= (size!31561 (_keys!11202 thiss!1427)) (size!31562 (_values!6081 thiss!1427)))) (bvslt (mask!29749 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5790 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5790 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026472 () Bool)

(declare-fun res!687211 () Bool)

(assert (=> b!1026472 (=> res!687211 e!579124)))

(assert (=> b!1026472 (= res!687211 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11202 thiss!1427) (mask!29749 thiss!1427))))))

(declare-fun b!1026473 () Bool)

(declare-fun e!579122 () Bool)

(assert (=> b!1026473 (= e!579125 (and e!579122 mapRes!37766))))

(declare-fun condMapEmpty!37766 () Bool)

(declare-fun mapDefault!37766 () ValueCell!11409)

(assert (=> b!1026473 (= condMapEmpty!37766 (= (arr!31048 (_values!6081 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11409)) mapDefault!37766)))))

(declare-fun b!1026474 () Bool)

(assert (=> b!1026474 (= e!579122 tp_is_empty!24225)))

(declare-fun res!687213 () Bool)

(assert (=> start!89542 (=> (not res!687213) (not e!579128))))

(declare-fun valid!2006 (LongMapFixedSize!5412) Bool)

(assert (=> start!89542 (= res!687213 (valid!2006 thiss!1427))))

(assert (=> start!89542 e!579128))

(assert (=> start!89542 e!579127))

(assert (=> start!89542 true))

(declare-fun mapNonEmpty!37766 () Bool)

(declare-fun tp!72561 () Bool)

(assert (=> mapNonEmpty!37766 (= mapRes!37766 (and tp!72561 e!579123))))

(declare-fun mapRest!37766 () (Array (_ BitVec 32) ValueCell!11409))

(declare-fun mapValue!37766 () ValueCell!11409)

(declare-fun mapKey!37766 () (_ BitVec 32))

(assert (=> mapNonEmpty!37766 (= (arr!31048 (_values!6081 thiss!1427)) (store mapRest!37766 mapKey!37766 mapValue!37766))))

(declare-fun b!1026475 () Bool)

(declare-fun res!687210 () Bool)

(assert (=> b!1026475 (=> (not res!687210) (not e!579128))))

(assert (=> b!1026475 (= res!687210 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026476 () Bool)

(assert (=> b!1026476 (= e!579124 true)))

(declare-fun lt!451592 () Bool)

(assert (=> b!1026476 (= lt!451592 (arrayNoDuplicates!0 (_keys!11202 thiss!1427) #b00000000000000000000000000000000 Nil!21884))))

(assert (= (and start!89542 res!687213) b!1026475))

(assert (= (and b!1026475 res!687210) b!1026469))

(assert (= (and b!1026469 res!687208) b!1026468))

(assert (= (and b!1026468 (not res!687209)) b!1026471))

(assert (= (and b!1026471 (not res!687212)) b!1026472))

(assert (= (and b!1026472 (not res!687211)) b!1026476))

(assert (= (and b!1026473 condMapEmpty!37766) mapIsEmpty!37766))

(assert (= (and b!1026473 (not condMapEmpty!37766)) mapNonEmpty!37766))

(assert (= (and mapNonEmpty!37766 ((_ is ValueCellFull!11409) mapValue!37766)) b!1026467))

(assert (= (and b!1026473 ((_ is ValueCellFull!11409) mapDefault!37766)) b!1026474))

(assert (= b!1026470 b!1026473))

(assert (= start!89542 b!1026470))

(declare-fun m!944887 () Bool)

(assert (=> b!1026470 m!944887))

(declare-fun m!944889 () Bool)

(assert (=> b!1026470 m!944889))

(declare-fun m!944891 () Bool)

(assert (=> mapNonEmpty!37766 m!944891))

(declare-fun m!944893 () Bool)

(assert (=> b!1026468 m!944893))

(declare-fun m!944895 () Bool)

(assert (=> b!1026468 m!944895))

(declare-fun m!944897 () Bool)

(assert (=> b!1026468 m!944897))

(declare-fun m!944899 () Bool)

(assert (=> b!1026468 m!944899))

(declare-fun m!944901 () Bool)

(assert (=> b!1026468 m!944901))

(declare-fun m!944903 () Bool)

(assert (=> b!1026468 m!944903))

(declare-fun m!944905 () Bool)

(assert (=> b!1026468 m!944905))

(declare-fun m!944907 () Bool)

(assert (=> b!1026468 m!944907))

(declare-fun m!944909 () Bool)

(assert (=> b!1026468 m!944909))

(declare-fun m!944911 () Bool)

(assert (=> b!1026468 m!944911))

(declare-fun m!944913 () Bool)

(assert (=> b!1026468 m!944913))

(declare-fun m!944915 () Bool)

(assert (=> b!1026469 m!944915))

(declare-fun m!944917 () Bool)

(assert (=> b!1026472 m!944917))

(declare-fun m!944919 () Bool)

(assert (=> start!89542 m!944919))

(declare-fun m!944921 () Bool)

(assert (=> b!1026476 m!944921))

(check-sat (not start!89542) (not b!1026468) (not b!1026470) b_and!32769 (not b!1026469) (not b!1026472) (not b_next!20505) tp_is_empty!24225 (not mapNonEmpty!37766) (not b!1026476))
(check-sat b_and!32769 (not b_next!20505))
