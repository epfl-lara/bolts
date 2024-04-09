; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91732 () Bool)

(assert start!91732)

(declare-fun b!1043686 () Bool)

(declare-fun b_free!21103 () Bool)

(declare-fun b_next!21103 () Bool)

(assert (=> b!1043686 (= b_free!21103 (not b_next!21103))))

(declare-fun tp!74551 () Bool)

(declare-fun b_and!33665 () Bool)

(assert (=> b!1043686 (= tp!74551 b_and!33665)))

(declare-fun res!695359 () Bool)

(declare-fun e!591428 () Bool)

(assert (=> start!91732 (=> (not res!695359) (not e!591428))))

(declare-datatypes ((V!37971 0))(
  ( (V!37972 (val!12462 Int)) )
))
(declare-datatypes ((ValueCell!11708 0))(
  ( (ValueCellFull!11708 (v!15054 V!37971)) (EmptyCell!11708) )
))
(declare-datatypes ((array!65794 0))(
  ( (array!65795 (arr!31645 (Array (_ BitVec 32) (_ BitVec 64))) (size!32181 (_ BitVec 32))) )
))
(declare-datatypes ((array!65796 0))(
  ( (array!65797 (arr!31646 (Array (_ BitVec 32) ValueCell!11708)) (size!32182 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6010 0))(
  ( (LongMapFixedSize!6011 (defaultEntry!6389 Int) (mask!30480 (_ BitVec 32)) (extraKeys!6117 (_ BitVec 32)) (zeroValue!6223 V!37971) (minValue!6223 V!37971) (_size!3060 (_ BitVec 32)) (_keys!11646 array!65794) (_values!6412 array!65796) (_vacant!3060 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6010)

(declare-fun valid!2209 (LongMapFixedSize!6010) Bool)

(assert (=> start!91732 (= res!695359 (valid!2209 thiss!1427))))

(assert (=> start!91732 e!591428))

(declare-fun e!591425 () Bool)

(assert (=> start!91732 e!591425))

(assert (=> start!91732 true))

(declare-fun b!1043684 () Bool)

(declare-fun e!591427 () Bool)

(declare-fun tp_is_empty!24823 () Bool)

(assert (=> b!1043684 (= e!591427 tp_is_empty!24823)))

(declare-fun b!1043685 () Bool)

(declare-fun e!591429 () Bool)

(declare-datatypes ((SeekEntryResult!9833 0))(
  ( (MissingZero!9833 (index!41702 (_ BitVec 32))) (Found!9833 (index!41703 (_ BitVec 32))) (Intermediate!9833 (undefined!10645 Bool) (index!41704 (_ BitVec 32)) (x!93186 (_ BitVec 32))) (Undefined!9833) (MissingVacant!9833 (index!41705 (_ BitVec 32))) )
))
(declare-fun lt!460142 () SeekEntryResult!9833)

(assert (=> b!1043685 (= e!591429 (not (and (bvsge (index!41703 lt!460142) #b00000000000000000000000000000000) (bvslt (index!41703 lt!460142) (size!32182 (_values!6412 thiss!1427))))))))

(declare-fun lt!460146 () array!65794)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15846 0))(
  ( (tuple2!15847 (_1!7933 (_ BitVec 64)) (_2!7933 V!37971)) )
))
(declare-datatypes ((List!22122 0))(
  ( (Nil!22119) (Cons!22118 (h!23326 tuple2!15846) (t!31351 List!22122)) )
))
(declare-datatypes ((ListLongMap!13883 0))(
  ( (ListLongMap!13884 (toList!6957 List!22122)) )
))
(declare-fun -!533 (ListLongMap!13883 (_ BitVec 64)) ListLongMap!13883)

(declare-fun getCurrentListMap!3963 (array!65794 array!65796 (_ BitVec 32) (_ BitVec 32) V!37971 V!37971 (_ BitVec 32) Int) ListLongMap!13883)

(declare-fun dynLambda!2007 (Int (_ BitVec 64)) V!37971)

(assert (=> b!1043685 (= (-!533 (getCurrentListMap!3963 (_keys!11646 thiss!1427) (_values!6412 thiss!1427) (mask!30480 thiss!1427) (extraKeys!6117 thiss!1427) (zeroValue!6223 thiss!1427) (minValue!6223 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6389 thiss!1427)) key!909) (getCurrentListMap!3963 lt!460146 (array!65797 (store (arr!31646 (_values!6412 thiss!1427)) (index!41703 lt!460142) (ValueCellFull!11708 (dynLambda!2007 (defaultEntry!6389 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32182 (_values!6412 thiss!1427))) (mask!30480 thiss!1427) (extraKeys!6117 thiss!1427) (zeroValue!6223 thiss!1427) (minValue!6223 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6389 thiss!1427)))))

(declare-datatypes ((Unit!34078 0))(
  ( (Unit!34079) )
))
(declare-fun lt!460147 () Unit!34078)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!53 (array!65794 array!65796 (_ BitVec 32) (_ BitVec 32) V!37971 V!37971 (_ BitVec 32) (_ BitVec 64) Int) Unit!34078)

(assert (=> b!1043685 (= lt!460147 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!53 (_keys!11646 thiss!1427) (_values!6412 thiss!1427) (mask!30480 thiss!1427) (extraKeys!6117 thiss!1427) (zeroValue!6223 thiss!1427) (minValue!6223 thiss!1427) (index!41703 lt!460142) key!909 (defaultEntry!6389 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043685 (not (arrayContainsKey!0 lt!460146 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460144 () Unit!34078)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65794 (_ BitVec 32) (_ BitVec 64)) Unit!34078)

(assert (=> b!1043685 (= lt!460144 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11646 thiss!1427) (index!41703 lt!460142) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65794 (_ BitVec 32)) Bool)

(assert (=> b!1043685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460146 (mask!30480 thiss!1427))))

(declare-fun lt!460141 () Unit!34078)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65794 (_ BitVec 32) (_ BitVec 32)) Unit!34078)

(assert (=> b!1043685 (= lt!460141 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11646 thiss!1427) (index!41703 lt!460142) (mask!30480 thiss!1427)))))

(declare-datatypes ((List!22123 0))(
  ( (Nil!22120) (Cons!22119 (h!23327 (_ BitVec 64)) (t!31352 List!22123)) )
))
(declare-fun arrayNoDuplicates!0 (array!65794 (_ BitVec 32) List!22123) Bool)

(assert (=> b!1043685 (arrayNoDuplicates!0 lt!460146 #b00000000000000000000000000000000 Nil!22120)))

(declare-fun lt!460145 () Unit!34078)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65794 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22123) Unit!34078)

(assert (=> b!1043685 (= lt!460145 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11646 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41703 lt!460142) #b00000000000000000000000000000000 Nil!22120))))

(declare-fun arrayCountValidKeys!0 (array!65794 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043685 (= (arrayCountValidKeys!0 lt!460146 #b00000000000000000000000000000000 (size!32181 (_keys!11646 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11646 thiss!1427) #b00000000000000000000000000000000 (size!32181 (_keys!11646 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043685 (= lt!460146 (array!65795 (store (arr!31645 (_keys!11646 thiss!1427)) (index!41703 lt!460142) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32181 (_keys!11646 thiss!1427))))))

(declare-fun lt!460143 () Unit!34078)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65794 (_ BitVec 32) (_ BitVec 64)) Unit!34078)

(assert (=> b!1043685 (= lt!460143 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11646 thiss!1427) (index!41703 lt!460142) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!591424 () Bool)

(declare-fun array_inv!24293 (array!65794) Bool)

(declare-fun array_inv!24294 (array!65796) Bool)

(assert (=> b!1043686 (= e!591425 (and tp!74551 tp_is_empty!24823 (array_inv!24293 (_keys!11646 thiss!1427)) (array_inv!24294 (_values!6412 thiss!1427)) e!591424))))

(declare-fun b!1043687 () Bool)

(declare-fun e!591430 () Bool)

(declare-fun mapRes!38858 () Bool)

(assert (=> b!1043687 (= e!591424 (and e!591430 mapRes!38858))))

(declare-fun condMapEmpty!38858 () Bool)

(declare-fun mapDefault!38858 () ValueCell!11708)

