; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91204 () Bool)

(assert start!91204)

(declare-fun b!1040433 () Bool)

(declare-fun b_free!21013 () Bool)

(declare-fun b_next!21013 () Bool)

(assert (=> b!1040433 (= b_free!21013 (not b_next!21013))))

(declare-fun tp!74237 () Bool)

(declare-fun b_and!33563 () Bool)

(assert (=> b!1040433 (= tp!74237 b_and!33563)))

(declare-fun b!1040434 () Bool)

(declare-fun res!693739 () Bool)

(declare-fun e!589096 () Bool)

(assert (=> b!1040434 (=> res!693739 e!589096)))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040434 (= res!693739 (not (validKeyInArray!0 key!909)))))

(declare-fun b!1040435 () Bool)

(declare-fun res!693738 () Bool)

(declare-fun e!589097 () Bool)

(assert (=> b!1040435 (=> (not res!693738) (not e!589097))))

(assert (=> b!1040435 (= res!693738 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040436 () Bool)

(declare-fun e!589091 () Bool)

(assert (=> b!1040436 (= e!589097 e!589091)))

(declare-fun res!693742 () Bool)

(assert (=> b!1040436 (=> (not res!693742) (not e!589091))))

(declare-datatypes ((SeekEntryResult!9796 0))(
  ( (MissingZero!9796 (index!41554 (_ BitVec 32))) (Found!9796 (index!41555 (_ BitVec 32))) (Intermediate!9796 (undefined!10608 Bool) (index!41556 (_ BitVec 32)) (x!92879 (_ BitVec 32))) (Undefined!9796) (MissingVacant!9796 (index!41557 (_ BitVec 32))) )
))
(declare-fun lt!458545 () SeekEntryResult!9796)

(assert (=> b!1040436 (= res!693742 (is-Found!9796 lt!458545))))

(declare-datatypes ((V!37851 0))(
  ( (V!37852 (val!12417 Int)) )
))
(declare-datatypes ((ValueCell!11663 0))(
  ( (ValueCellFull!11663 (v!15005 V!37851)) (EmptyCell!11663) )
))
(declare-datatypes ((array!65588 0))(
  ( (array!65589 (arr!31555 (Array (_ BitVec 32) (_ BitVec 64))) (size!32087 (_ BitVec 32))) )
))
(declare-datatypes ((array!65590 0))(
  ( (array!65591 (arr!31556 (Array (_ BitVec 32) ValueCell!11663)) (size!32088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5920 0))(
  ( (LongMapFixedSize!5921 (defaultEntry!6342 Int) (mask!30333 (_ BitVec 32)) (extraKeys!6070 (_ BitVec 32)) (zeroValue!6176 V!37851) (minValue!6176 V!37851) (_size!3015 (_ BitVec 32)) (_keys!11561 array!65588) (_values!6365 array!65590) (_vacant!3015 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5920)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65588 (_ BitVec 32)) SeekEntryResult!9796)

(assert (=> b!1040436 (= lt!458545 (seekEntry!0 key!909 (_keys!11561 thiss!1427) (mask!30333 thiss!1427)))))

(declare-fun b!1040437 () Bool)

(declare-fun e!589092 () Bool)

(declare-fun tp_is_empty!24733 () Bool)

(assert (=> b!1040437 (= e!589092 tp_is_empty!24733)))

(declare-fun b!1040438 () Bool)

(assert (=> b!1040438 (= e!589091 (not e!589096))))

(declare-fun res!693743 () Bool)

(assert (=> b!1040438 (=> res!693743 e!589096)))

(assert (=> b!1040438 (= res!693743 (or (bvslt (index!41555 lt!458545) #b00000000000000000000000000000000) (bvsge (index!41555 lt!458545) (size!32087 (_keys!11561 thiss!1427))) (bvsge (size!32087 (_keys!11561 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458546 () array!65588)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65588 (_ BitVec 32)) Bool)

(assert (=> b!1040438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458546 (mask!30333 thiss!1427))))

(declare-datatypes ((Unit!34010 0))(
  ( (Unit!34011) )
))
(declare-fun lt!458542 () Unit!34010)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65588 (_ BitVec 32) (_ BitVec 32)) Unit!34010)

(assert (=> b!1040438 (= lt!458542 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11561 thiss!1427) (index!41555 lt!458545) (mask!30333 thiss!1427)))))

(declare-datatypes ((List!22081 0))(
  ( (Nil!22078) (Cons!22077 (h!23281 (_ BitVec 64)) (t!31302 List!22081)) )
))
(declare-fun arrayNoDuplicates!0 (array!65588 (_ BitVec 32) List!22081) Bool)

(assert (=> b!1040438 (arrayNoDuplicates!0 lt!458546 #b00000000000000000000000000000000 Nil!22078)))

(declare-fun lt!458544 () Unit!34010)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22081) Unit!34010)

(assert (=> b!1040438 (= lt!458544 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11561 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41555 lt!458545) #b00000000000000000000000000000000 Nil!22078))))

(declare-fun arrayCountValidKeys!0 (array!65588 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040438 (= (arrayCountValidKeys!0 lt!458546 #b00000000000000000000000000000000 (size!32087 (_keys!11561 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11561 thiss!1427) #b00000000000000000000000000000000 (size!32087 (_keys!11561 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040438 (= lt!458546 (array!65589 (store (arr!31555 (_keys!11561 thiss!1427)) (index!41555 lt!458545) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32087 (_keys!11561 thiss!1427))))))

(declare-fun lt!458543 () Unit!34010)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65588 (_ BitVec 32) (_ BitVec 64)) Unit!34010)

(assert (=> b!1040438 (= lt!458543 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11561 thiss!1427) (index!41555 lt!458545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1040439 () Bool)

(declare-fun e!589098 () Bool)

(declare-fun mapRes!38680 () Bool)

(assert (=> b!1040439 (= e!589098 (and e!589092 mapRes!38680))))

(declare-fun condMapEmpty!38680 () Bool)

(declare-fun mapDefault!38680 () ValueCell!11663)

