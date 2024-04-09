; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91076 () Bool)

(assert start!91076)

(declare-fun b!1039638 () Bool)

(declare-fun b_free!20987 () Bool)

(declare-fun b_next!20987 () Bool)

(assert (=> b!1039638 (= b_free!20987 (not b_next!20987))))

(declare-fun tp!74145 () Bool)

(declare-fun b_and!33537 () Bool)

(assert (=> b!1039638 (= tp!74145 b_and!33537)))

(declare-fun mapIsEmpty!38626 () Bool)

(declare-fun mapRes!38626 () Bool)

(assert (=> mapIsEmpty!38626 mapRes!38626))

(declare-fun b!1039637 () Bool)

(declare-fun e!588496 () Bool)

(declare-fun tp_is_empty!24707 () Bool)

(assert (=> b!1039637 (= e!588496 tp_is_empty!24707)))

(declare-fun e!588501 () Bool)

(declare-datatypes ((V!37815 0))(
  ( (V!37816 (val!12404 Int)) )
))
(declare-datatypes ((ValueCell!11650 0))(
  ( (ValueCellFull!11650 (v!14992 V!37815)) (EmptyCell!11650) )
))
(declare-datatypes ((array!65526 0))(
  ( (array!65527 (arr!31529 (Array (_ BitVec 32) (_ BitVec 64))) (size!32061 (_ BitVec 32))) )
))
(declare-datatypes ((array!65528 0))(
  ( (array!65529 (arr!31530 (Array (_ BitVec 32) ValueCell!11650)) (size!32062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5894 0))(
  ( (LongMapFixedSize!5895 (defaultEntry!6329 Int) (mask!30295 (_ BitVec 32)) (extraKeys!6057 (_ BitVec 32)) (zeroValue!6163 V!37815) (minValue!6163 V!37815) (_size!3002 (_ BitVec 32)) (_keys!11538 array!65526) (_values!6352 array!65528) (_vacant!3002 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5894)

(declare-fun e!588497 () Bool)

(declare-fun array_inv!24209 (array!65526) Bool)

(declare-fun array_inv!24210 (array!65528) Bool)

(assert (=> b!1039638 (= e!588497 (and tp!74145 tp_is_empty!24707 (array_inv!24209 (_keys!11538 thiss!1427)) (array_inv!24210 (_values!6352 thiss!1427)) e!588501))))

(declare-fun b!1039639 () Bool)

(declare-fun e!588500 () Bool)

(declare-datatypes ((SeekEntryResult!9786 0))(
  ( (MissingZero!9786 (index!41514 (_ BitVec 32))) (Found!9786 (index!41515 (_ BitVec 32))) (Intermediate!9786 (undefined!10598 Bool) (index!41516 (_ BitVec 32)) (x!92789 (_ BitVec 32))) (Undefined!9786) (MissingVacant!9786 (index!41517 (_ BitVec 32))) )
))
(declare-fun lt!458179 () SeekEntryResult!9786)

(assert (=> b!1039639 (= e!588500 (not (bvsge (index!41515 lt!458179) #b00000000000000000000000000000000)))))

(declare-fun lt!458180 () array!65526)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65526 (_ BitVec 32)) Bool)

(assert (=> b!1039639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458180 (mask!30295 thiss!1427))))

(declare-datatypes ((Unit!33992 0))(
  ( (Unit!33993) )
))
(declare-fun lt!458181 () Unit!33992)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65526 (_ BitVec 32) (_ BitVec 32)) Unit!33992)

(assert (=> b!1039639 (= lt!458181 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11538 thiss!1427) (index!41515 lt!458179) (mask!30295 thiss!1427)))))

(declare-datatypes ((List!22072 0))(
  ( (Nil!22069) (Cons!22068 (h!23272 (_ BitVec 64)) (t!31293 List!22072)) )
))
(declare-fun arrayNoDuplicates!0 (array!65526 (_ BitVec 32) List!22072) Bool)

(assert (=> b!1039639 (arrayNoDuplicates!0 lt!458180 #b00000000000000000000000000000000 Nil!22069)))

(declare-fun lt!458177 () Unit!33992)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22072) Unit!33992)

(assert (=> b!1039639 (= lt!458177 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11538 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41515 lt!458179) #b00000000000000000000000000000000 Nil!22069))))

(declare-fun arrayCountValidKeys!0 (array!65526 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039639 (= (arrayCountValidKeys!0 lt!458180 #b00000000000000000000000000000000 (size!32061 (_keys!11538 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11538 thiss!1427) #b00000000000000000000000000000000 (size!32061 (_keys!11538 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039639 (= lt!458180 (array!65527 (store (arr!31529 (_keys!11538 thiss!1427)) (index!41515 lt!458179) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32061 (_keys!11538 thiss!1427))))))

(declare-fun lt!458178 () Unit!33992)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65526 (_ BitVec 32) (_ BitVec 64)) Unit!33992)

(assert (=> b!1039639 (= lt!458178 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11538 thiss!1427) (index!41515 lt!458179) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!693374 () Bool)

(declare-fun e!588499 () Bool)

(assert (=> start!91076 (=> (not res!693374) (not e!588499))))

(declare-fun valid!2168 (LongMapFixedSize!5894) Bool)

(assert (=> start!91076 (= res!693374 (valid!2168 thiss!1427))))

(assert (=> start!91076 e!588499))

(assert (=> start!91076 e!588497))

(assert (=> start!91076 true))

(declare-fun b!1039640 () Bool)

(assert (=> b!1039640 (= e!588499 e!588500)))

(declare-fun res!693373 () Bool)

(assert (=> b!1039640 (=> (not res!693373) (not e!588500))))

(assert (=> b!1039640 (= res!693373 (is-Found!9786 lt!458179))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65526 (_ BitVec 32)) SeekEntryResult!9786)

(assert (=> b!1039640 (= lt!458179 (seekEntry!0 key!909 (_keys!11538 thiss!1427) (mask!30295 thiss!1427)))))

(declare-fun b!1039641 () Bool)

(declare-fun e!588498 () Bool)

(assert (=> b!1039641 (= e!588498 tp_is_empty!24707)))

(declare-fun mapNonEmpty!38626 () Bool)

(declare-fun tp!74144 () Bool)

(assert (=> mapNonEmpty!38626 (= mapRes!38626 (and tp!74144 e!588498))))

(declare-fun mapValue!38626 () ValueCell!11650)

(declare-fun mapRest!38626 () (Array (_ BitVec 32) ValueCell!11650))

(declare-fun mapKey!38626 () (_ BitVec 32))

(assert (=> mapNonEmpty!38626 (= (arr!31530 (_values!6352 thiss!1427)) (store mapRest!38626 mapKey!38626 mapValue!38626))))

(declare-fun b!1039642 () Bool)

(assert (=> b!1039642 (= e!588501 (and e!588496 mapRes!38626))))

(declare-fun condMapEmpty!38626 () Bool)

(declare-fun mapDefault!38626 () ValueCell!11650)

