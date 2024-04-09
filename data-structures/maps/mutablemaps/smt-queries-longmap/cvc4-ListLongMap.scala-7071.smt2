; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89520 () Bool)

(assert start!89520)

(declare-fun b!1026160 () Bool)

(declare-fun b_free!20483 () Bool)

(declare-fun b_next!20483 () Bool)

(assert (=> b!1026160 (= b_free!20483 (not b_next!20483))))

(declare-fun tp!72495 () Bool)

(declare-fun b_and!32747 () Bool)

(assert (=> b!1026160 (= tp!72495 b_and!32747)))

(declare-fun b!1026157 () Bool)

(declare-fun e!578860 () Bool)

(declare-fun e!578859 () Bool)

(assert (=> b!1026157 (= e!578860 (not e!578859))))

(declare-fun res!687033 () Bool)

(assert (=> b!1026157 (=> res!687033 e!578859)))

(declare-datatypes ((SeekEntryResult!9628 0))(
  ( (MissingZero!9628 (index!40882 (_ BitVec 32))) (Found!9628 (index!40883 (_ BitVec 32))) (Intermediate!9628 (undefined!10440 Bool) (index!40884 (_ BitVec 32)) (x!91261 (_ BitVec 32))) (Undefined!9628) (MissingVacant!9628 (index!40885 (_ BitVec 32))) )
))
(declare-fun lt!451370 () SeekEntryResult!9628)

(declare-datatypes ((V!37143 0))(
  ( (V!37144 (val!12152 Int)) )
))
(declare-datatypes ((ValueCell!11398 0))(
  ( (ValueCellFull!11398 (v!14722 V!37143)) (EmptyCell!11398) )
))
(declare-datatypes ((array!64440 0))(
  ( (array!64441 (arr!31025 (Array (_ BitVec 32) (_ BitVec 64))) (size!31539 (_ BitVec 32))) )
))
(declare-datatypes ((array!64442 0))(
  ( (array!64443 (arr!31026 (Array (_ BitVec 32) ValueCell!11398)) (size!31540 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5390 0))(
  ( (LongMapFixedSize!5391 (defaultEntry!6047 Int) (mask!29730 (_ BitVec 32)) (extraKeys!5779 (_ BitVec 32)) (zeroValue!5883 V!37143) (minValue!5883 V!37143) (_size!2750 (_ BitVec 32)) (_keys!11191 array!64440) (_values!6070 array!64442) (_vacant!2750 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5390)

(assert (=> b!1026157 (= res!687033 (or (bvslt (index!40883 lt!451370) #b00000000000000000000000000000000) (bvsge (index!40883 lt!451370) (size!31539 (_keys!11191 thiss!1427))) (bvsge (size!31539 (_keys!11191 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451371 () array!64440)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64440 (_ BitVec 32)) Bool)

(assert (=> b!1026157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451371 (mask!29730 thiss!1427))))

(declare-datatypes ((Unit!33394 0))(
  ( (Unit!33395) )
))
(declare-fun lt!451373 () Unit!33394)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64440 (_ BitVec 32) (_ BitVec 32)) Unit!33394)

(assert (=> b!1026157 (= lt!451373 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11191 thiss!1427) (index!40883 lt!451370) (mask!29730 thiss!1427)))))

(declare-datatypes ((List!21881 0))(
  ( (Nil!21878) (Cons!21877 (h!23075 (_ BitVec 64)) (t!30950 List!21881)) )
))
(declare-fun arrayNoDuplicates!0 (array!64440 (_ BitVec 32) List!21881) Bool)

(assert (=> b!1026157 (arrayNoDuplicates!0 lt!451371 #b00000000000000000000000000000000 Nil!21878)))

(declare-fun lt!451375 () Unit!33394)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64440 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21881) Unit!33394)

(assert (=> b!1026157 (= lt!451375 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11191 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40883 lt!451370) #b00000000000000000000000000000000 Nil!21878))))

(declare-fun arrayCountValidKeys!0 (array!64440 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026157 (= (arrayCountValidKeys!0 lt!451371 #b00000000000000000000000000000000 (size!31539 (_keys!11191 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11191 thiss!1427) #b00000000000000000000000000000000 (size!31539 (_keys!11191 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026157 (= lt!451371 (array!64441 (store (arr!31025 (_keys!11191 thiss!1427)) (index!40883 lt!451370) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31539 (_keys!11191 thiss!1427))))))

(declare-fun lt!451372 () Unit!33394)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64440 (_ BitVec 32) (_ BitVec 64)) Unit!33394)

(assert (=> b!1026157 (= lt!451372 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11191 thiss!1427) (index!40883 lt!451370) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026158 () Bool)

(declare-fun e!578861 () Bool)

(declare-fun e!578862 () Bool)

(declare-fun mapRes!37733 () Bool)

(assert (=> b!1026158 (= e!578861 (and e!578862 mapRes!37733))))

(declare-fun condMapEmpty!37733 () Bool)

(declare-fun mapDefault!37733 () ValueCell!11398)

