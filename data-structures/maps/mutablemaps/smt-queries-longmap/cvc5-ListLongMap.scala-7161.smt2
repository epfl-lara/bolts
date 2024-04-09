; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91232 () Bool)

(assert start!91232)

(declare-fun b!1040624 () Bool)

(declare-fun b_free!21019 () Bool)

(declare-fun b_next!21019 () Bool)

(assert (=> b!1040624 (= b_free!21019 (not b_next!21019))))

(declare-fun tp!74258 () Bool)

(declare-fun b_and!33569 () Bool)

(assert (=> b!1040624 (= tp!74258 b_and!33569)))

(declare-fun b!1040618 () Bool)

(declare-fun e!589225 () Bool)

(declare-fun e!589227 () Bool)

(assert (=> b!1040618 (= e!589225 e!589227)))

(declare-fun res!693831 () Bool)

(assert (=> b!1040618 (=> (not res!693831) (not e!589227))))

(declare-datatypes ((SeekEntryResult!9799 0))(
  ( (MissingZero!9799 (index!41566 (_ BitVec 32))) (Found!9799 (index!41567 (_ BitVec 32))) (Intermediate!9799 (undefined!10611 Bool) (index!41568 (_ BitVec 32)) (x!92898 (_ BitVec 32))) (Undefined!9799) (MissingVacant!9799 (index!41569 (_ BitVec 32))) )
))
(declare-fun lt!458623 () SeekEntryResult!9799)

(assert (=> b!1040618 (= res!693831 (is-Found!9799 lt!458623))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37859 0))(
  ( (V!37860 (val!12420 Int)) )
))
(declare-datatypes ((ValueCell!11666 0))(
  ( (ValueCellFull!11666 (v!15008 V!37859)) (EmptyCell!11666) )
))
(declare-datatypes ((array!65602 0))(
  ( (array!65603 (arr!31561 (Array (_ BitVec 32) (_ BitVec 64))) (size!32093 (_ BitVec 32))) )
))
(declare-datatypes ((array!65604 0))(
  ( (array!65605 (arr!31562 (Array (_ BitVec 32) ValueCell!11666)) (size!32094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5926 0))(
  ( (LongMapFixedSize!5927 (defaultEntry!6345 Int) (mask!30341 (_ BitVec 32)) (extraKeys!6073 (_ BitVec 32)) (zeroValue!6179 V!37859) (minValue!6179 V!37859) (_size!3018 (_ BitVec 32)) (_keys!11566 array!65602) (_values!6368 array!65604) (_vacant!3018 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5926)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65602 (_ BitVec 32)) SeekEntryResult!9799)

(assert (=> b!1040618 (= lt!458623 (seekEntry!0 key!909 (_keys!11566 thiss!1427) (mask!30341 thiss!1427)))))

(declare-fun mapNonEmpty!38692 () Bool)

(declare-fun mapRes!38692 () Bool)

(declare-fun tp!74259 () Bool)

(declare-fun e!589230 () Bool)

(assert (=> mapNonEmpty!38692 (= mapRes!38692 (and tp!74259 e!589230))))

(declare-fun mapValue!38692 () ValueCell!11666)

(declare-fun mapKey!38692 () (_ BitVec 32))

(declare-fun mapRest!38692 () (Array (_ BitVec 32) ValueCell!11666))

(assert (=> mapNonEmpty!38692 (= (arr!31562 (_values!6368 thiss!1427)) (store mapRest!38692 mapKey!38692 mapValue!38692))))

(declare-fun b!1040619 () Bool)

(declare-fun e!589228 () Bool)

(declare-fun tp_is_empty!24739 () Bool)

(assert (=> b!1040619 (= e!589228 tp_is_empty!24739)))

(declare-fun b!1040620 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1040620 (= e!589227 (not (validMask!0 (mask!30341 thiss!1427))))))

(declare-fun lt!458625 () array!65602)

(declare-fun arrayContainsKey!0 (array!65602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1040620 (not (arrayContainsKey!0 lt!458625 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34016 0))(
  ( (Unit!34017) )
))
(declare-fun lt!458627 () Unit!34016)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65602 (_ BitVec 32) (_ BitVec 64)) Unit!34016)

(assert (=> b!1040620 (= lt!458627 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11566 thiss!1427) (index!41567 lt!458623) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65602 (_ BitVec 32)) Bool)

(assert (=> b!1040620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458625 (mask!30341 thiss!1427))))

(declare-fun lt!458628 () Unit!34016)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65602 (_ BitVec 32) (_ BitVec 32)) Unit!34016)

(assert (=> b!1040620 (= lt!458628 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11566 thiss!1427) (index!41567 lt!458623) (mask!30341 thiss!1427)))))

(declare-datatypes ((List!22084 0))(
  ( (Nil!22081) (Cons!22080 (h!23284 (_ BitVec 64)) (t!31305 List!22084)) )
))
(declare-fun arrayNoDuplicates!0 (array!65602 (_ BitVec 32) List!22084) Bool)

(assert (=> b!1040620 (arrayNoDuplicates!0 lt!458625 #b00000000000000000000000000000000 Nil!22081)))

(declare-fun lt!458624 () Unit!34016)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65602 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22084) Unit!34016)

(assert (=> b!1040620 (= lt!458624 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11566 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41567 lt!458623) #b00000000000000000000000000000000 Nil!22081))))

(declare-fun arrayCountValidKeys!0 (array!65602 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040620 (= (arrayCountValidKeys!0 lt!458625 #b00000000000000000000000000000000 (size!32093 (_keys!11566 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11566 thiss!1427) #b00000000000000000000000000000000 (size!32093 (_keys!11566 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040620 (= lt!458625 (array!65603 (store (arr!31561 (_keys!11566 thiss!1427)) (index!41567 lt!458623) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32093 (_keys!11566 thiss!1427))))))

(declare-fun lt!458626 () Unit!34016)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65602 (_ BitVec 32) (_ BitVec 64)) Unit!34016)

(assert (=> b!1040620 (= lt!458626 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11566 thiss!1427) (index!41567 lt!458623) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38692 () Bool)

(assert (=> mapIsEmpty!38692 mapRes!38692))

(declare-fun b!1040621 () Bool)

(declare-fun e!589224 () Bool)

(assert (=> b!1040621 (= e!589224 (and e!589228 mapRes!38692))))

(declare-fun condMapEmpty!38692 () Bool)

(declare-fun mapDefault!38692 () ValueCell!11666)

