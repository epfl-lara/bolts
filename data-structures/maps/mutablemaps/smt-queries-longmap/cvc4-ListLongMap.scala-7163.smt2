; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91324 () Bool)

(assert start!91324)

(declare-fun b!1041144 () Bool)

(declare-fun b_free!21035 () Bool)

(declare-fun b_next!21035 () Bool)

(assert (=> b!1041144 (= b_free!21035 (not b_next!21035))))

(declare-fun tp!74313 () Bool)

(declare-fun b_and!33585 () Bool)

(assert (=> b!1041144 (= tp!74313 b_and!33585)))

(declare-fun b!1041141 () Bool)

(declare-fun e!589626 () Bool)

(declare-fun e!589624 () Bool)

(assert (=> b!1041141 (= e!589626 (not e!589624))))

(declare-fun res!694073 () Bool)

(assert (=> b!1041141 (=> res!694073 e!589624)))

(declare-datatypes ((V!37879 0))(
  ( (V!37880 (val!12428 Int)) )
))
(declare-datatypes ((ValueCell!11674 0))(
  ( (ValueCellFull!11674 (v!15017 V!37879)) (EmptyCell!11674) )
))
(declare-datatypes ((array!65638 0))(
  ( (array!65639 (arr!31577 (Array (_ BitVec 32) (_ BitVec 64))) (size!32110 (_ BitVec 32))) )
))
(declare-datatypes ((array!65640 0))(
  ( (array!65641 (arr!31578 (Array (_ BitVec 32) ValueCell!11674)) (size!32111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5942 0))(
  ( (LongMapFixedSize!5943 (defaultEntry!6353 Int) (mask!30366 (_ BitVec 32)) (extraKeys!6081 (_ BitVec 32)) (zeroValue!6187 V!37879) (minValue!6187 V!37879) (_size!3026 (_ BitVec 32)) (_keys!11581 array!65638) (_values!6376 array!65640) (_vacant!3026 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5942)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041141 (= res!694073 (not (validMask!0 (mask!30366 thiss!1427))))))

(declare-fun lt!458888 () array!65638)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041141 (not (arrayContainsKey!0 lt!458888 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9805 0))(
  ( (MissingZero!9805 (index!41590 (_ BitVec 32))) (Found!9805 (index!41591 (_ BitVec 32))) (Intermediate!9805 (undefined!10617 Bool) (index!41592 (_ BitVec 32)) (x!92945 (_ BitVec 32))) (Undefined!9805) (MissingVacant!9805 (index!41593 (_ BitVec 32))) )
))
(declare-fun lt!458886 () SeekEntryResult!9805)

(declare-datatypes ((Unit!34026 0))(
  ( (Unit!34027) )
))
(declare-fun lt!458890 () Unit!34026)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65638 (_ BitVec 32) (_ BitVec 64)) Unit!34026)

(assert (=> b!1041141 (= lt!458890 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11581 thiss!1427) (index!41591 lt!458886) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65638 (_ BitVec 32)) Bool)

(assert (=> b!1041141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458888 (mask!30366 thiss!1427))))

(declare-fun lt!458891 () Unit!34026)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65638 (_ BitVec 32) (_ BitVec 32)) Unit!34026)

(assert (=> b!1041141 (= lt!458891 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11581 thiss!1427) (index!41591 lt!458886) (mask!30366 thiss!1427)))))

(declare-datatypes ((List!22089 0))(
  ( (Nil!22086) (Cons!22085 (h!23290 (_ BitVec 64)) (t!31310 List!22089)) )
))
(declare-fun arrayNoDuplicates!0 (array!65638 (_ BitVec 32) List!22089) Bool)

(assert (=> b!1041141 (arrayNoDuplicates!0 lt!458888 #b00000000000000000000000000000000 Nil!22086)))

(declare-fun lt!458889 () Unit!34026)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65638 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22089) Unit!34026)

(assert (=> b!1041141 (= lt!458889 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11581 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41591 lt!458886) #b00000000000000000000000000000000 Nil!22086))))

(declare-fun arrayCountValidKeys!0 (array!65638 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041141 (= (arrayCountValidKeys!0 lt!458888 #b00000000000000000000000000000000 (size!32110 (_keys!11581 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11581 thiss!1427) #b00000000000000000000000000000000 (size!32110 (_keys!11581 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041141 (= lt!458888 (array!65639 (store (arr!31577 (_keys!11581 thiss!1427)) (index!41591 lt!458886) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32110 (_keys!11581 thiss!1427))))))

(declare-fun lt!458887 () Unit!34026)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65638 (_ BitVec 32) (_ BitVec 64)) Unit!34026)

(assert (=> b!1041141 (= lt!458887 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11581 thiss!1427) (index!41591 lt!458886) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1041142 () Bool)

(declare-fun e!589625 () Bool)

(declare-fun tp_is_empty!24755 () Bool)

(assert (=> b!1041142 (= e!589625 tp_is_empty!24755)))

(declare-fun mapIsEmpty!38723 () Bool)

(declare-fun mapRes!38723 () Bool)

(assert (=> mapIsEmpty!38723 mapRes!38723))

(declare-fun b!1041143 () Bool)

(declare-fun e!589622 () Bool)

(assert (=> b!1041143 (= e!589622 e!589626)))

(declare-fun res!694072 () Bool)

(assert (=> b!1041143 (=> (not res!694072) (not e!589626))))

(assert (=> b!1041143 (= res!694072 (is-Found!9805 lt!458886))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65638 (_ BitVec 32)) SeekEntryResult!9805)

(assert (=> b!1041143 (= lt!458886 (seekEntry!0 key!909 (_keys!11581 thiss!1427) (mask!30366 thiss!1427)))))

(declare-fun e!589629 () Bool)

(declare-fun e!589623 () Bool)

(declare-fun array_inv!24243 (array!65638) Bool)

(declare-fun array_inv!24244 (array!65640) Bool)

(assert (=> b!1041144 (= e!589623 (and tp!74313 tp_is_empty!24755 (array_inv!24243 (_keys!11581 thiss!1427)) (array_inv!24244 (_values!6376 thiss!1427)) e!589629))))

(declare-fun b!1041145 () Bool)

(declare-fun res!694071 () Bool)

(assert (=> b!1041145 (=> (not res!694071) (not e!589622))))

(assert (=> b!1041145 (= res!694071 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041146 () Bool)

(declare-fun e!589628 () Bool)

(assert (=> b!1041146 (= e!589628 tp_is_empty!24755)))

(declare-fun b!1041147 () Bool)

(assert (=> b!1041147 (= e!589629 (and e!589628 mapRes!38723))))

(declare-fun condMapEmpty!38723 () Bool)

(declare-fun mapDefault!38723 () ValueCell!11674)

