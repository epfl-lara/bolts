; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89604 () Bool)

(assert start!89604)

(declare-fun b!1027397 () Bool)

(declare-fun b_free!20567 () Bool)

(declare-fun b_next!20567 () Bool)

(assert (=> b!1027397 (= b_free!20567 (not b_next!20567))))

(declare-fun tp!72747 () Bool)

(declare-fun b_and!32831 () Bool)

(assert (=> b!1027397 (= tp!72747 b_and!32831)))

(declare-fun tp_is_empty!24287 () Bool)

(declare-fun e!579871 () Bool)

(declare-datatypes ((V!37255 0))(
  ( (V!37256 (val!12194 Int)) )
))
(declare-datatypes ((ValueCell!11440 0))(
  ( (ValueCellFull!11440 (v!14764 V!37255)) (EmptyCell!11440) )
))
(declare-datatypes ((array!64608 0))(
  ( (array!64609 (arr!31109 (Array (_ BitVec 32) (_ BitVec 64))) (size!31623 (_ BitVec 32))) )
))
(declare-datatypes ((array!64610 0))(
  ( (array!64611 (arr!31110 (Array (_ BitVec 32) ValueCell!11440)) (size!31624 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5474 0))(
  ( (LongMapFixedSize!5475 (defaultEntry!6089 Int) (mask!29800 (_ BitVec 32)) (extraKeys!5821 (_ BitVec 32)) (zeroValue!5925 V!37255) (minValue!5925 V!37255) (_size!2792 (_ BitVec 32)) (_keys!11233 array!64608) (_values!6112 array!64610) (_vacant!2792 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5474)

(declare-fun e!579870 () Bool)

(declare-fun array_inv!23933 (array!64608) Bool)

(declare-fun array_inv!23934 (array!64610) Bool)

(assert (=> b!1027397 (= e!579870 (and tp!72747 tp_is_empty!24287 (array_inv!23933 (_keys!11233 thiss!1427)) (array_inv!23934 (_values!6112 thiss!1427)) e!579871))))

(declare-fun b!1027398 () Bool)

(declare-fun res!687769 () Bool)

(declare-fun e!579869 () Bool)

(assert (=> b!1027398 (=> (not res!687769) (not e!579869))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1027398 (= res!687769 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1027399 () Bool)

(declare-fun res!687768 () Bool)

(declare-fun e!579865 () Bool)

(assert (=> b!1027399 (=> res!687768 e!579865)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64608 (_ BitVec 32)) Bool)

(assert (=> b!1027399 (= res!687768 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11233 thiss!1427) (mask!29800 thiss!1427))))))

(declare-fun b!1027400 () Bool)

(declare-fun res!687770 () Bool)

(assert (=> b!1027400 (=> res!687770 e!579865)))

(assert (=> b!1027400 (= res!687770 (or (not (= (size!31624 (_values!6112 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29800 thiss!1427)))) (not (= (size!31623 (_keys!11233 thiss!1427)) (size!31624 (_values!6112 thiss!1427)))) (bvslt (mask!29800 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5821 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5821 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1027401 () Bool)

(assert (=> b!1027401 (= e!579865 true)))

(declare-fun lt!452247 () Bool)

(declare-datatypes ((List!21914 0))(
  ( (Nil!21911) (Cons!21910 (h!23108 (_ BitVec 64)) (t!30983 List!21914)) )
))
(declare-fun arrayNoDuplicates!0 (array!64608 (_ BitVec 32) List!21914) Bool)

(assert (=> b!1027401 (= lt!452247 (arrayNoDuplicates!0 (_keys!11233 thiss!1427) #b00000000000000000000000000000000 Nil!21911))))

(declare-fun b!1027402 () Bool)

(declare-fun e!579867 () Bool)

(assert (=> b!1027402 (= e!579867 (not e!579865))))

(declare-fun res!687771 () Bool)

(assert (=> b!1027402 (=> res!687771 e!579865)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027402 (= res!687771 (not (validMask!0 (mask!29800 thiss!1427))))))

(declare-fun lt!452248 () array!64608)

(declare-fun arrayContainsKey!0 (array!64608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027402 (not (arrayContainsKey!0 lt!452248 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9659 0))(
  ( (MissingZero!9659 (index!41006 (_ BitVec 32))) (Found!9659 (index!41007 (_ BitVec 32))) (Intermediate!9659 (undefined!10471 Bool) (index!41008 (_ BitVec 32)) (x!91404 (_ BitVec 32))) (Undefined!9659) (MissingVacant!9659 (index!41009 (_ BitVec 32))) )
))
(declare-fun lt!452242 () SeekEntryResult!9659)

(declare-datatypes ((Unit!33446 0))(
  ( (Unit!33447) )
))
(declare-fun lt!452244 () Unit!33446)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64608 (_ BitVec 32) (_ BitVec 64)) Unit!33446)

(assert (=> b!1027402 (= lt!452244 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11233 thiss!1427) (index!41007 lt!452242) key!909))))

(assert (=> b!1027402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452248 (mask!29800 thiss!1427))))

(declare-fun lt!452246 () Unit!33446)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64608 (_ BitVec 32) (_ BitVec 32)) Unit!33446)

(assert (=> b!1027402 (= lt!452246 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11233 thiss!1427) (index!41007 lt!452242) (mask!29800 thiss!1427)))))

(assert (=> b!1027402 (arrayNoDuplicates!0 lt!452248 #b00000000000000000000000000000000 Nil!21911)))

(declare-fun lt!452245 () Unit!33446)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64608 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21914) Unit!33446)

(assert (=> b!1027402 (= lt!452245 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11233 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41007 lt!452242) #b00000000000000000000000000000000 Nil!21911))))

(declare-fun arrayCountValidKeys!0 (array!64608 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027402 (= (arrayCountValidKeys!0 lt!452248 #b00000000000000000000000000000000 (size!31623 (_keys!11233 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11233 thiss!1427) #b00000000000000000000000000000000 (size!31623 (_keys!11233 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027402 (= lt!452248 (array!64609 (store (arr!31109 (_keys!11233 thiss!1427)) (index!41007 lt!452242) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31623 (_keys!11233 thiss!1427))))))

(declare-fun lt!452243 () Unit!33446)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64608 (_ BitVec 32) (_ BitVec 64)) Unit!33446)

(assert (=> b!1027402 (= lt!452243 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11233 thiss!1427) (index!41007 lt!452242) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37859 () Bool)

(declare-fun mapRes!37859 () Bool)

(assert (=> mapIsEmpty!37859 mapRes!37859))

(declare-fun mapNonEmpty!37859 () Bool)

(declare-fun tp!72748 () Bool)

(declare-fun e!579866 () Bool)

(assert (=> mapNonEmpty!37859 (= mapRes!37859 (and tp!72748 e!579866))))

(declare-fun mapValue!37859 () ValueCell!11440)

(declare-fun mapKey!37859 () (_ BitVec 32))

(declare-fun mapRest!37859 () (Array (_ BitVec 32) ValueCell!11440))

(assert (=> mapNonEmpty!37859 (= (arr!31110 (_values!6112 thiss!1427)) (store mapRest!37859 mapKey!37859 mapValue!37859))))

(declare-fun b!1027404 () Bool)

(declare-fun e!579868 () Bool)

(assert (=> b!1027404 (= e!579868 tp_is_empty!24287)))

(declare-fun b!1027405 () Bool)

(assert (=> b!1027405 (= e!579871 (and e!579868 mapRes!37859))))

(declare-fun condMapEmpty!37859 () Bool)

(declare-fun mapDefault!37859 () ValueCell!11440)

