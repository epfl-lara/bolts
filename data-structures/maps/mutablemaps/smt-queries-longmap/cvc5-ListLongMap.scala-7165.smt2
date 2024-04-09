; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91408 () Bool)

(assert start!91408)

(declare-fun b!1041578 () Bool)

(declare-fun b_free!21043 () Bool)

(declare-fun b_next!21043 () Bool)

(assert (=> b!1041578 (= b_free!21043 (not b_next!21043))))

(declare-fun tp!74345 () Bool)

(declare-fun b_and!33593 () Bool)

(assert (=> b!1041578 (= tp!74345 b_and!33593)))

(declare-fun mapIsEmpty!38742 () Bool)

(declare-fun mapRes!38742 () Bool)

(assert (=> mapIsEmpty!38742 mapRes!38742))

(declare-fun b!1041575 () Bool)

(declare-fun e!589934 () Bool)

(declare-datatypes ((V!37891 0))(
  ( (V!37892 (val!12432 Int)) )
))
(declare-datatypes ((ValueCell!11678 0))(
  ( (ValueCellFull!11678 (v!15022 V!37891)) (EmptyCell!11678) )
))
(declare-datatypes ((array!65658 0))(
  ( (array!65659 (arr!31585 (Array (_ BitVec 32) (_ BitVec 64))) (size!32119 (_ BitVec 32))) )
))
(declare-datatypes ((array!65660 0))(
  ( (array!65661 (arr!31586 (Array (_ BitVec 32) ValueCell!11678)) (size!32120 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5950 0))(
  ( (LongMapFixedSize!5951 (defaultEntry!6357 Int) (mask!30387 (_ BitVec 32)) (extraKeys!6085 (_ BitVec 32)) (zeroValue!6191 V!37891) (minValue!6191 V!37891) (_size!3030 (_ BitVec 32)) (_keys!11592 array!65658) (_values!6380 array!65660) (_vacant!3030 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5950)

(assert (=> b!1041575 (= e!589934 (or (not (= (size!32120 (_values!6380 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30387 thiss!1427)))) (not (= (size!32119 (_keys!11592 thiss!1427)) (size!32120 (_values!6380 thiss!1427)))) (bvslt (mask!30387 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!6085 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1041576 () Bool)

(declare-fun res!694272 () Bool)

(declare-fun e!589938 () Bool)

(assert (=> b!1041576 (=> (not res!694272) (not e!589938))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1041576 (= res!694272 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041577 () Bool)

(declare-fun e!589933 () Bool)

(assert (=> b!1041577 (= e!589933 (not e!589934))))

(declare-fun res!694273 () Bool)

(assert (=> b!1041577 (=> res!694273 e!589934)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041577 (= res!694273 (not (validMask!0 (mask!30387 thiss!1427))))))

(declare-fun lt!459079 () array!65658)

(declare-fun arrayContainsKey!0 (array!65658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041577 (not (arrayContainsKey!0 lt!459079 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34034 0))(
  ( (Unit!34035) )
))
(declare-fun lt!459077 () Unit!34034)

(declare-datatypes ((SeekEntryResult!9809 0))(
  ( (MissingZero!9809 (index!41606 (_ BitVec 32))) (Found!9809 (index!41607 (_ BitVec 32))) (Intermediate!9809 (undefined!10621 Bool) (index!41608 (_ BitVec 32)) (x!92990 (_ BitVec 32))) (Undefined!9809) (MissingVacant!9809 (index!41609 (_ BitVec 32))) )
))
(declare-fun lt!459082 () SeekEntryResult!9809)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65658 (_ BitVec 32) (_ BitVec 64)) Unit!34034)

(assert (=> b!1041577 (= lt!459077 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11592 thiss!1427) (index!41607 lt!459082) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65658 (_ BitVec 32)) Bool)

(assert (=> b!1041577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459079 (mask!30387 thiss!1427))))

(declare-fun lt!459078 () Unit!34034)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65658 (_ BitVec 32) (_ BitVec 32)) Unit!34034)

(assert (=> b!1041577 (= lt!459078 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11592 thiss!1427) (index!41607 lt!459082) (mask!30387 thiss!1427)))))

(declare-datatypes ((List!22093 0))(
  ( (Nil!22090) (Cons!22089 (h!23295 (_ BitVec 64)) (t!31314 List!22093)) )
))
(declare-fun arrayNoDuplicates!0 (array!65658 (_ BitVec 32) List!22093) Bool)

(assert (=> b!1041577 (arrayNoDuplicates!0 lt!459079 #b00000000000000000000000000000000 Nil!22090)))

(declare-fun lt!459081 () Unit!34034)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22093) Unit!34034)

(assert (=> b!1041577 (= lt!459081 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11592 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41607 lt!459082) #b00000000000000000000000000000000 Nil!22090))))

(declare-fun arrayCountValidKeys!0 (array!65658 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041577 (= (arrayCountValidKeys!0 lt!459079 #b00000000000000000000000000000000 (size!32119 (_keys!11592 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11592 thiss!1427) #b00000000000000000000000000000000 (size!32119 (_keys!11592 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041577 (= lt!459079 (array!65659 (store (arr!31585 (_keys!11592 thiss!1427)) (index!41607 lt!459082) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32119 (_keys!11592 thiss!1427))))))

(declare-fun lt!459080 () Unit!34034)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65658 (_ BitVec 32) (_ BitVec 64)) Unit!34034)

(assert (=> b!1041577 (= lt!459080 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11592 thiss!1427) (index!41607 lt!459082) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589932 () Bool)

(declare-fun e!589937 () Bool)

(declare-fun tp_is_empty!24763 () Bool)

(declare-fun array_inv!24247 (array!65658) Bool)

(declare-fun array_inv!24248 (array!65660) Bool)

(assert (=> b!1041578 (= e!589937 (and tp!74345 tp_is_empty!24763 (array_inv!24247 (_keys!11592 thiss!1427)) (array_inv!24248 (_values!6380 thiss!1427)) e!589932))))

(declare-fun res!694271 () Bool)

(assert (=> start!91408 (=> (not res!694271) (not e!589938))))

(declare-fun valid!2187 (LongMapFixedSize!5950) Bool)

(assert (=> start!91408 (= res!694271 (valid!2187 thiss!1427))))

(assert (=> start!91408 e!589938))

(assert (=> start!91408 e!589937))

(assert (=> start!91408 true))

(declare-fun b!1041579 () Bool)

(assert (=> b!1041579 (= e!589938 e!589933)))

(declare-fun res!694270 () Bool)

(assert (=> b!1041579 (=> (not res!694270) (not e!589933))))

(assert (=> b!1041579 (= res!694270 (is-Found!9809 lt!459082))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65658 (_ BitVec 32)) SeekEntryResult!9809)

(assert (=> b!1041579 (= lt!459082 (seekEntry!0 key!909 (_keys!11592 thiss!1427) (mask!30387 thiss!1427)))))

(declare-fun mapNonEmpty!38742 () Bool)

(declare-fun tp!74344 () Bool)

(declare-fun e!589936 () Bool)

(assert (=> mapNonEmpty!38742 (= mapRes!38742 (and tp!74344 e!589936))))

(declare-fun mapKey!38742 () (_ BitVec 32))

(declare-fun mapValue!38742 () ValueCell!11678)

(declare-fun mapRest!38742 () (Array (_ BitVec 32) ValueCell!11678))

(assert (=> mapNonEmpty!38742 (= (arr!31586 (_values!6380 thiss!1427)) (store mapRest!38742 mapKey!38742 mapValue!38742))))

(declare-fun b!1041580 () Bool)

(declare-fun e!589935 () Bool)

(assert (=> b!1041580 (= e!589935 tp_is_empty!24763)))

(declare-fun b!1041581 () Bool)

(assert (=> b!1041581 (= e!589932 (and e!589935 mapRes!38742))))

(declare-fun condMapEmpty!38742 () Bool)

(declare-fun mapDefault!38742 () ValueCell!11678)

