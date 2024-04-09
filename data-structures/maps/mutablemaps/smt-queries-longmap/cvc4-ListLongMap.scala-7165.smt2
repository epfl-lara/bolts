; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91412 () Bool)

(assert start!91412)

(declare-fun b!1041626 () Bool)

(declare-fun b_free!21047 () Bool)

(declare-fun b_next!21047 () Bool)

(assert (=> b!1041626 (= b_free!21047 (not b_next!21047))))

(declare-fun tp!74357 () Bool)

(declare-fun b_and!33597 () Bool)

(assert (=> b!1041626 (= tp!74357 b_and!33597)))

(declare-fun mapNonEmpty!38748 () Bool)

(declare-fun mapRes!38748 () Bool)

(declare-fun tp!74356 () Bool)

(declare-fun e!589983 () Bool)

(assert (=> mapNonEmpty!38748 (= mapRes!38748 (and tp!74356 e!589983))))

(declare-datatypes ((V!37895 0))(
  ( (V!37896 (val!12434 Int)) )
))
(declare-datatypes ((ValueCell!11680 0))(
  ( (ValueCellFull!11680 (v!15024 V!37895)) (EmptyCell!11680) )
))
(declare-fun mapRest!38748 () (Array (_ BitVec 32) ValueCell!11680))

(declare-fun mapValue!38748 () ValueCell!11680)

(declare-fun mapKey!38748 () (_ BitVec 32))

(declare-datatypes ((array!65666 0))(
  ( (array!65667 (arr!31589 (Array (_ BitVec 32) (_ BitVec 64))) (size!32123 (_ BitVec 32))) )
))
(declare-datatypes ((array!65668 0))(
  ( (array!65669 (arr!31590 (Array (_ BitVec 32) ValueCell!11680)) (size!32124 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5954 0))(
  ( (LongMapFixedSize!5955 (defaultEntry!6359 Int) (mask!30389 (_ BitVec 32)) (extraKeys!6087 (_ BitVec 32)) (zeroValue!6193 V!37895) (minValue!6193 V!37895) (_size!3032 (_ BitVec 32)) (_keys!11594 array!65666) (_values!6382 array!65668) (_vacant!3032 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5954)

(assert (=> mapNonEmpty!38748 (= (arr!31590 (_values!6382 thiss!1427)) (store mapRest!38748 mapKey!38748 mapValue!38748))))

(declare-fun b!1041623 () Bool)

(declare-fun e!589984 () Bool)

(assert (=> b!1041623 (= e!589984 (or (not (= (size!32124 (_values!6382 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30389 thiss!1427)))) (not (= (size!32123 (_keys!11594 thiss!1427)) (size!32124 (_values!6382 thiss!1427)))) (bvslt (mask!30389 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!6087 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1041624 () Bool)

(declare-fun e!589981 () Bool)

(assert (=> b!1041624 (= e!589981 (not e!589984))))

(declare-fun res!694295 () Bool)

(assert (=> b!1041624 (=> res!694295 e!589984)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041624 (= res!694295 (not (validMask!0 (mask!30389 thiss!1427))))))

(declare-fun lt!459113 () array!65666)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041624 (not (arrayContainsKey!0 lt!459113 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9811 0))(
  ( (MissingZero!9811 (index!41614 (_ BitVec 32))) (Found!9811 (index!41615 (_ BitVec 32))) (Intermediate!9811 (undefined!10623 Bool) (index!41616 (_ BitVec 32)) (x!92992 (_ BitVec 32))) (Undefined!9811) (MissingVacant!9811 (index!41617 (_ BitVec 32))) )
))
(declare-fun lt!459115 () SeekEntryResult!9811)

(declare-datatypes ((Unit!34038 0))(
  ( (Unit!34039) )
))
(declare-fun lt!459116 () Unit!34038)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65666 (_ BitVec 32) (_ BitVec 64)) Unit!34038)

(assert (=> b!1041624 (= lt!459116 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11594 thiss!1427) (index!41615 lt!459115) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65666 (_ BitVec 32)) Bool)

(assert (=> b!1041624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459113 (mask!30389 thiss!1427))))

(declare-fun lt!459114 () Unit!34038)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65666 (_ BitVec 32) (_ BitVec 32)) Unit!34038)

(assert (=> b!1041624 (= lt!459114 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11594 thiss!1427) (index!41615 lt!459115) (mask!30389 thiss!1427)))))

(declare-datatypes ((List!22095 0))(
  ( (Nil!22092) (Cons!22091 (h!23297 (_ BitVec 64)) (t!31316 List!22095)) )
))
(declare-fun arrayNoDuplicates!0 (array!65666 (_ BitVec 32) List!22095) Bool)

(assert (=> b!1041624 (arrayNoDuplicates!0 lt!459113 #b00000000000000000000000000000000 Nil!22092)))

(declare-fun lt!459117 () Unit!34038)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22095) Unit!34038)

(assert (=> b!1041624 (= lt!459117 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11594 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41615 lt!459115) #b00000000000000000000000000000000 Nil!22092))))

(declare-fun arrayCountValidKeys!0 (array!65666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041624 (= (arrayCountValidKeys!0 lt!459113 #b00000000000000000000000000000000 (size!32123 (_keys!11594 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11594 thiss!1427) #b00000000000000000000000000000000 (size!32123 (_keys!11594 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041624 (= lt!459113 (array!65667 (store (arr!31589 (_keys!11594 thiss!1427)) (index!41615 lt!459115) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32123 (_keys!11594 thiss!1427))))))

(declare-fun lt!459118 () Unit!34038)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65666 (_ BitVec 32) (_ BitVec 64)) Unit!34038)

(assert (=> b!1041624 (= lt!459118 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11594 thiss!1427) (index!41615 lt!459115) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1041625 () Bool)

(declare-fun e!589979 () Bool)

(assert (=> b!1041625 (= e!589979 e!589981)))

(declare-fun res!694296 () Bool)

(assert (=> b!1041625 (=> (not res!694296) (not e!589981))))

(assert (=> b!1041625 (= res!694296 (is-Found!9811 lt!459115))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65666 (_ BitVec 32)) SeekEntryResult!9811)

(assert (=> b!1041625 (= lt!459115 (seekEntry!0 key!909 (_keys!11594 thiss!1427) (mask!30389 thiss!1427)))))

(declare-fun e!589980 () Bool)

(declare-fun e!589986 () Bool)

(declare-fun tp_is_empty!24767 () Bool)

(declare-fun array_inv!24251 (array!65666) Bool)

(declare-fun array_inv!24252 (array!65668) Bool)

(assert (=> b!1041626 (= e!589986 (and tp!74357 tp_is_empty!24767 (array_inv!24251 (_keys!11594 thiss!1427)) (array_inv!24252 (_values!6382 thiss!1427)) e!589980))))

(declare-fun b!1041627 () Bool)

(assert (=> b!1041627 (= e!589983 tp_is_empty!24767)))

(declare-fun b!1041628 () Bool)

(declare-fun e!589985 () Bool)

(assert (=> b!1041628 (= e!589980 (and e!589985 mapRes!38748))))

(declare-fun condMapEmpty!38748 () Bool)

(declare-fun mapDefault!38748 () ValueCell!11680)

