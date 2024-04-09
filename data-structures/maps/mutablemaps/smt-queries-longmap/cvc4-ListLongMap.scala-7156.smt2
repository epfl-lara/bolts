; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91102 () Bool)

(assert start!91102)

(declare-fun b!1039798 () Bool)

(declare-fun b_free!20993 () Bool)

(declare-fun b_next!20993 () Bool)

(assert (=> b!1039798 (= b_free!20993 (not b_next!20993))))

(declare-fun tp!74166 () Bool)

(declare-fun b_and!33543 () Bool)

(assert (=> b!1039798 (= tp!74166 b_and!33543)))

(declare-fun res!693441 () Bool)

(declare-fun e!588623 () Bool)

(assert (=> start!91102 (=> (not res!693441) (not e!588623))))

(declare-datatypes ((V!37823 0))(
  ( (V!37824 (val!12407 Int)) )
))
(declare-datatypes ((ValueCell!11653 0))(
  ( (ValueCellFull!11653 (v!14995 V!37823)) (EmptyCell!11653) )
))
(declare-datatypes ((array!65540 0))(
  ( (array!65541 (arr!31535 (Array (_ BitVec 32) (_ BitVec 64))) (size!32067 (_ BitVec 32))) )
))
(declare-datatypes ((array!65542 0))(
  ( (array!65543 (arr!31536 (Array (_ BitVec 32) ValueCell!11653)) (size!32068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5900 0))(
  ( (LongMapFixedSize!5901 (defaultEntry!6332 Int) (mask!30303 (_ BitVec 32)) (extraKeys!6060 (_ BitVec 32)) (zeroValue!6166 V!37823) (minValue!6166 V!37823) (_size!3005 (_ BitVec 32)) (_keys!11543 array!65540) (_values!6355 array!65542) (_vacant!3005 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5900)

(declare-fun valid!2170 (LongMapFixedSize!5900) Bool)

(assert (=> start!91102 (= res!693441 (valid!2170 thiss!1427))))

(assert (=> start!91102 e!588623))

(declare-fun e!588618 () Bool)

(assert (=> start!91102 e!588618))

(assert (=> start!91102 true))

(declare-fun b!1039796 () Bool)

(declare-fun e!588619 () Bool)

(declare-datatypes ((SeekEntryResult!9788 0))(
  ( (MissingZero!9788 (index!41522 (_ BitVec 32))) (Found!9788 (index!41523 (_ BitVec 32))) (Intermediate!9788 (undefined!10600 Bool) (index!41524 (_ BitVec 32)) (x!92807 (_ BitVec 32))) (Undefined!9788) (MissingVacant!9788 (index!41525 (_ BitVec 32))) )
))
(declare-fun lt!458259 () SeekEntryResult!9788)

(assert (=> b!1039796 (= e!588619 (not (or (bvslt (index!41523 lt!458259) #b00000000000000000000000000000000) (bvslt (index!41523 lt!458259) (size!32067 (_keys!11543 thiss!1427))))))))

(declare-fun lt!458257 () array!65540)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65540 (_ BitVec 32)) Bool)

(assert (=> b!1039796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458257 (mask!30303 thiss!1427))))

(declare-datatypes ((Unit!33996 0))(
  ( (Unit!33997) )
))
(declare-fun lt!458260 () Unit!33996)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65540 (_ BitVec 32) (_ BitVec 32)) Unit!33996)

(assert (=> b!1039796 (= lt!458260 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11543 thiss!1427) (index!41523 lt!458259) (mask!30303 thiss!1427)))))

(declare-datatypes ((List!22074 0))(
  ( (Nil!22071) (Cons!22070 (h!23274 (_ BitVec 64)) (t!31295 List!22074)) )
))
(declare-fun arrayNoDuplicates!0 (array!65540 (_ BitVec 32) List!22074) Bool)

(assert (=> b!1039796 (arrayNoDuplicates!0 lt!458257 #b00000000000000000000000000000000 Nil!22071)))

(declare-fun lt!458256 () Unit!33996)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22074) Unit!33996)

(assert (=> b!1039796 (= lt!458256 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11543 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41523 lt!458259) #b00000000000000000000000000000000 Nil!22071))))

(declare-fun arrayCountValidKeys!0 (array!65540 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039796 (= (arrayCountValidKeys!0 lt!458257 #b00000000000000000000000000000000 (size!32067 (_keys!11543 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11543 thiss!1427) #b00000000000000000000000000000000 (size!32067 (_keys!11543 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039796 (= lt!458257 (array!65541 (store (arr!31535 (_keys!11543 thiss!1427)) (index!41523 lt!458259) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32067 (_keys!11543 thiss!1427))))))

(declare-fun lt!458258 () Unit!33996)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65540 (_ BitVec 32) (_ BitVec 64)) Unit!33996)

(assert (=> b!1039796 (= lt!458258 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11543 thiss!1427) (index!41523 lt!458259) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039797 () Bool)

(assert (=> b!1039797 (= e!588623 e!588619)))

(declare-fun res!693443 () Bool)

(assert (=> b!1039797 (=> (not res!693443) (not e!588619))))

(assert (=> b!1039797 (= res!693443 (is-Found!9788 lt!458259))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65540 (_ BitVec 32)) SeekEntryResult!9788)

(assert (=> b!1039797 (= lt!458259 (seekEntry!0 key!909 (_keys!11543 thiss!1427) (mask!30303 thiss!1427)))))

(declare-fun tp_is_empty!24713 () Bool)

(declare-fun e!588617 () Bool)

(declare-fun array_inv!24213 (array!65540) Bool)

(declare-fun array_inv!24214 (array!65542) Bool)

(assert (=> b!1039798 (= e!588618 (and tp!74166 tp_is_empty!24713 (array_inv!24213 (_keys!11543 thiss!1427)) (array_inv!24214 (_values!6355 thiss!1427)) e!588617))))

(declare-fun mapIsEmpty!38638 () Bool)

(declare-fun mapRes!38638 () Bool)

(assert (=> mapIsEmpty!38638 mapRes!38638))

(declare-fun b!1039799 () Bool)

(declare-fun e!588621 () Bool)

(assert (=> b!1039799 (= e!588621 tp_is_empty!24713)))

(declare-fun b!1039800 () Bool)

(declare-fun e!588622 () Bool)

(assert (=> b!1039800 (= e!588622 tp_is_empty!24713)))

(declare-fun mapNonEmpty!38638 () Bool)

(declare-fun tp!74165 () Bool)

(assert (=> mapNonEmpty!38638 (= mapRes!38638 (and tp!74165 e!588621))))

(declare-fun mapValue!38638 () ValueCell!11653)

(declare-fun mapKey!38638 () (_ BitVec 32))

(declare-fun mapRest!38638 () (Array (_ BitVec 32) ValueCell!11653))

(assert (=> mapNonEmpty!38638 (= (arr!31536 (_values!6355 thiss!1427)) (store mapRest!38638 mapKey!38638 mapValue!38638))))

(declare-fun b!1039801 () Bool)

(declare-fun res!693442 () Bool)

(assert (=> b!1039801 (=> (not res!693442) (not e!588623))))

(assert (=> b!1039801 (= res!693442 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039802 () Bool)

(assert (=> b!1039802 (= e!588617 (and e!588622 mapRes!38638))))

(declare-fun condMapEmpty!38638 () Bool)

(declare-fun mapDefault!38638 () ValueCell!11653)

