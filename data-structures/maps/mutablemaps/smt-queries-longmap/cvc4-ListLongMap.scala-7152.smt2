; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90996 () Bool)

(assert start!90996)

(declare-fun b!1039126 () Bool)

(declare-fun b_free!20969 () Bool)

(declare-fun b_next!20969 () Bool)

(assert (=> b!1039126 (= b_free!20969 (not b_next!20969))))

(declare-fun tp!74081 () Bool)

(declare-fun b_and!33519 () Bool)

(assert (=> b!1039126 (= tp!74081 b_and!33519)))

(declare-fun b!1039118 () Bool)

(declare-fun res!693119 () Bool)

(declare-fun e!588130 () Bool)

(assert (=> b!1039118 (=> (not res!693119) (not e!588130))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039118 (= res!693119 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039119 () Bool)

(declare-fun e!588132 () Bool)

(declare-fun tp_is_empty!24689 () Bool)

(assert (=> b!1039119 (= e!588132 tp_is_empty!24689)))

(declare-fun b!1039120 () Bool)

(declare-fun e!588135 () Bool)

(assert (=> b!1039120 (= e!588130 e!588135)))

(declare-fun res!693117 () Bool)

(assert (=> b!1039120 (=> (not res!693117) (not e!588135))))

(declare-datatypes ((SeekEntryResult!9780 0))(
  ( (MissingZero!9780 (index!41490 (_ BitVec 32))) (Found!9780 (index!41491 (_ BitVec 32))) (Intermediate!9780 (undefined!10592 Bool) (index!41492 (_ BitVec 32)) (x!92735 (_ BitVec 32))) (Undefined!9780) (MissingVacant!9780 (index!41493 (_ BitVec 32))) )
))
(declare-fun lt!457986 () SeekEntryResult!9780)

(assert (=> b!1039120 (= res!693117 (is-Found!9780 lt!457986))))

(declare-datatypes ((V!37791 0))(
  ( (V!37792 (val!12395 Int)) )
))
(declare-datatypes ((ValueCell!11641 0))(
  ( (ValueCellFull!11641 (v!14983 V!37791)) (EmptyCell!11641) )
))
(declare-datatypes ((array!65484 0))(
  ( (array!65485 (arr!31511 (Array (_ BitVec 32) (_ BitVec 64))) (size!32043 (_ BitVec 32))) )
))
(declare-datatypes ((array!65486 0))(
  ( (array!65487 (arr!31512 (Array (_ BitVec 32) ValueCell!11641)) (size!32044 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5876 0))(
  ( (LongMapFixedSize!5877 (defaultEntry!6320 Int) (mask!30273 (_ BitVec 32)) (extraKeys!6048 (_ BitVec 32)) (zeroValue!6154 V!37791) (minValue!6154 V!37791) (_size!2993 (_ BitVec 32)) (_keys!11525 array!65484) (_values!6343 array!65486) (_vacant!2993 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5876)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65484 (_ BitVec 32)) SeekEntryResult!9780)

(assert (=> b!1039120 (= lt!457986 (seekEntry!0 key!909 (_keys!11525 thiss!1427) (mask!30273 thiss!1427)))))

(declare-fun mapIsEmpty!38590 () Bool)

(declare-fun mapRes!38590 () Bool)

(assert (=> mapIsEmpty!38590 mapRes!38590))

(declare-fun b!1039121 () Bool)

(declare-fun e!588129 () Bool)

(assert (=> b!1039121 (= e!588129 tp_is_empty!24689)))

(declare-fun b!1039122 () Bool)

(declare-fun e!588131 () Bool)

(assert (=> b!1039122 (= e!588135 (not e!588131))))

(declare-fun res!693116 () Bool)

(assert (=> b!1039122 (=> res!693116 e!588131)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1039122 (= res!693116 (not (validMask!0 (mask!30273 thiss!1427))))))

(declare-fun lt!457988 () array!65484)

(declare-datatypes ((List!22067 0))(
  ( (Nil!22064) (Cons!22063 (h!23267 (_ BitVec 64)) (t!31288 List!22067)) )
))
(declare-fun arrayNoDuplicates!0 (array!65484 (_ BitVec 32) List!22067) Bool)

(assert (=> b!1039122 (arrayNoDuplicates!0 lt!457988 #b00000000000000000000000000000000 Nil!22064)))

(declare-datatypes ((Unit!33984 0))(
  ( (Unit!33985) )
))
(declare-fun lt!457989 () Unit!33984)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65484 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22067) Unit!33984)

(assert (=> b!1039122 (= lt!457989 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11525 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41491 lt!457986) #b00000000000000000000000000000000 Nil!22064))))

(declare-fun arrayCountValidKeys!0 (array!65484 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039122 (= (arrayCountValidKeys!0 lt!457988 #b00000000000000000000000000000000 (size!32043 (_keys!11525 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11525 thiss!1427) #b00000000000000000000000000000000 (size!32043 (_keys!11525 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039122 (= lt!457988 (array!65485 (store (arr!31511 (_keys!11525 thiss!1427)) (index!41491 lt!457986) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32043 (_keys!11525 thiss!1427))))))

(declare-fun lt!457987 () Unit!33984)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65484 (_ BitVec 32) (_ BitVec 64)) Unit!33984)

(assert (=> b!1039122 (= lt!457987 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11525 thiss!1427) (index!41491 lt!457986) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1039123 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1039123 (= e!588131 (validKeyInArray!0 (select (arr!31511 (_keys!11525 thiss!1427)) (index!41491 lt!457986))))))

(declare-fun res!693118 () Bool)

(assert (=> start!90996 (=> (not res!693118) (not e!588130))))

(declare-fun valid!2163 (LongMapFixedSize!5876) Bool)

(assert (=> start!90996 (= res!693118 (valid!2163 thiss!1427))))

(assert (=> start!90996 e!588130))

(declare-fun e!588133 () Bool)

(assert (=> start!90996 e!588133))

(assert (=> start!90996 true))

(declare-fun mapNonEmpty!38590 () Bool)

(declare-fun tp!74082 () Bool)

(assert (=> mapNonEmpty!38590 (= mapRes!38590 (and tp!74082 e!588132))))

(declare-fun mapValue!38590 () ValueCell!11641)

(declare-fun mapKey!38590 () (_ BitVec 32))

(declare-fun mapRest!38590 () (Array (_ BitVec 32) ValueCell!11641))

(assert (=> mapNonEmpty!38590 (= (arr!31512 (_values!6343 thiss!1427)) (store mapRest!38590 mapKey!38590 mapValue!38590))))

(declare-fun b!1039124 () Bool)

(declare-fun e!588134 () Bool)

(assert (=> b!1039124 (= e!588134 (and e!588129 mapRes!38590))))

(declare-fun condMapEmpty!38590 () Bool)

(declare-fun mapDefault!38590 () ValueCell!11641)

