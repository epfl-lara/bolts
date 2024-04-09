; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91128 () Bool)

(assert start!91128)

(declare-fun b!1039960 () Bool)

(declare-fun b_free!20999 () Bool)

(declare-fun b_next!20999 () Bool)

(assert (=> b!1039960 (= b_free!20999 (not b_next!20999))))

(declare-fun tp!74187 () Bool)

(declare-fun b_and!33549 () Bool)

(assert (=> b!1039960 (= tp!74187 b_and!33549)))

(declare-fun b!1039955 () Bool)

(declare-fun res!693511 () Bool)

(declare-fun e!588744 () Bool)

(assert (=> b!1039955 (=> (not res!693511) (not e!588744))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039955 (= res!693511 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38650 () Bool)

(declare-fun mapRes!38650 () Bool)

(declare-fun tp!74186 () Bool)

(declare-fun e!588743 () Bool)

(assert (=> mapNonEmpty!38650 (= mapRes!38650 (and tp!74186 e!588743))))

(declare-datatypes ((V!37831 0))(
  ( (V!37832 (val!12410 Int)) )
))
(declare-datatypes ((ValueCell!11656 0))(
  ( (ValueCellFull!11656 (v!14998 V!37831)) (EmptyCell!11656) )
))
(declare-fun mapRest!38650 () (Array (_ BitVec 32) ValueCell!11656))

(declare-fun mapKey!38650 () (_ BitVec 32))

(declare-datatypes ((array!65554 0))(
  ( (array!65555 (arr!31541 (Array (_ BitVec 32) (_ BitVec 64))) (size!32073 (_ BitVec 32))) )
))
(declare-datatypes ((array!65556 0))(
  ( (array!65557 (arr!31542 (Array (_ BitVec 32) ValueCell!11656)) (size!32074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5906 0))(
  ( (LongMapFixedSize!5907 (defaultEntry!6335 Int) (mask!30311 (_ BitVec 32)) (extraKeys!6063 (_ BitVec 32)) (zeroValue!6169 V!37831) (minValue!6169 V!37831) (_size!3008 (_ BitVec 32)) (_keys!11548 array!65554) (_values!6358 array!65556) (_vacant!3008 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5906)

(declare-fun mapValue!38650 () ValueCell!11656)

(assert (=> mapNonEmpty!38650 (= (arr!31542 (_values!6358 thiss!1427)) (store mapRest!38650 mapKey!38650 mapValue!38650))))

(declare-fun res!693512 () Bool)

(assert (=> start!91128 (=> (not res!693512) (not e!588744))))

(declare-fun valid!2173 (LongMapFixedSize!5906) Bool)

(assert (=> start!91128 (= res!693512 (valid!2173 thiss!1427))))

(assert (=> start!91128 e!588744))

(declare-fun e!588740 () Bool)

(assert (=> start!91128 e!588740))

(assert (=> start!91128 true))

(declare-fun b!1039956 () Bool)

(declare-fun e!588742 () Bool)

(declare-datatypes ((SeekEntryResult!9791 0))(
  ( (MissingZero!9791 (index!41534 (_ BitVec 32))) (Found!9791 (index!41535 (_ BitVec 32))) (Intermediate!9791 (undefined!10603 Bool) (index!41536 (_ BitVec 32)) (x!92826 (_ BitVec 32))) (Undefined!9791) (MissingVacant!9791 (index!41537 (_ BitVec 32))) )
))
(declare-fun lt!458339 () SeekEntryResult!9791)

(assert (=> b!1039956 (= e!588742 (not (or (bvslt (index!41535 lt!458339) #b00000000000000000000000000000000) (bvsge (index!41535 lt!458339) (size!32073 (_keys!11548 thiss!1427))) (bvslt (size!32073 (_keys!11548 thiss!1427)) #b01111111111111111111111111111111))))))

(declare-fun lt!458337 () array!65554)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65554 (_ BitVec 32)) Bool)

(assert (=> b!1039956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458337 (mask!30311 thiss!1427))))

(declare-datatypes ((Unit!34002 0))(
  ( (Unit!34003) )
))
(declare-fun lt!458338 () Unit!34002)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65554 (_ BitVec 32) (_ BitVec 32)) Unit!34002)

(assert (=> b!1039956 (= lt!458338 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11548 thiss!1427) (index!41535 lt!458339) (mask!30311 thiss!1427)))))

(declare-datatypes ((List!22077 0))(
  ( (Nil!22074) (Cons!22073 (h!23277 (_ BitVec 64)) (t!31298 List!22077)) )
))
(declare-fun arrayNoDuplicates!0 (array!65554 (_ BitVec 32) List!22077) Bool)

(assert (=> b!1039956 (arrayNoDuplicates!0 lt!458337 #b00000000000000000000000000000000 Nil!22074)))

(declare-fun lt!458335 () Unit!34002)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65554 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22077) Unit!34002)

(assert (=> b!1039956 (= lt!458335 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11548 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41535 lt!458339) #b00000000000000000000000000000000 Nil!22074))))

(declare-fun arrayCountValidKeys!0 (array!65554 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039956 (= (arrayCountValidKeys!0 lt!458337 #b00000000000000000000000000000000 (size!32073 (_keys!11548 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11548 thiss!1427) #b00000000000000000000000000000000 (size!32073 (_keys!11548 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039956 (= lt!458337 (array!65555 (store (arr!31541 (_keys!11548 thiss!1427)) (index!41535 lt!458339) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32073 (_keys!11548 thiss!1427))))))

(declare-fun lt!458336 () Unit!34002)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65554 (_ BitVec 32) (_ BitVec 64)) Unit!34002)

(assert (=> b!1039956 (= lt!458336 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11548 thiss!1427) (index!41535 lt!458339) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38650 () Bool)

(assert (=> mapIsEmpty!38650 mapRes!38650))

(declare-fun b!1039957 () Bool)

(declare-fun e!588739 () Bool)

(declare-fun tp_is_empty!24719 () Bool)

(assert (=> b!1039957 (= e!588739 tp_is_empty!24719)))

(declare-fun b!1039958 () Bool)

(declare-fun e!588741 () Bool)

(assert (=> b!1039958 (= e!588741 (and e!588739 mapRes!38650))))

(declare-fun condMapEmpty!38650 () Bool)

(declare-fun mapDefault!38650 () ValueCell!11656)

