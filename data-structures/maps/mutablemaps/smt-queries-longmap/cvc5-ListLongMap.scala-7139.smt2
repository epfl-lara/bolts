; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90734 () Bool)

(assert start!90734)

(declare-fun b!1037132 () Bool)

(declare-fun b_free!20887 () Bool)

(declare-fun b_next!20887 () Bool)

(assert (=> b!1037132 (= b_free!20887 (not b_next!20887))))

(declare-fun tp!73804 () Bool)

(declare-fun b_and!33437 () Bool)

(assert (=> b!1037132 (= tp!73804 b_and!33437)))

(declare-fun e!586660 () Bool)

(declare-datatypes ((V!37683 0))(
  ( (V!37684 (val!12354 Int)) )
))
(declare-datatypes ((ValueCell!11600 0))(
  ( (ValueCellFull!11600 (v!14938 V!37683)) (EmptyCell!11600) )
))
(declare-datatypes ((array!65300 0))(
  ( (array!65301 (arr!31429 (Array (_ BitVec 32) (_ BitVec 64))) (size!31960 (_ BitVec 32))) )
))
(declare-datatypes ((array!65302 0))(
  ( (array!65303 (arr!31430 (Array (_ BitVec 32) ValueCell!11600)) (size!31961 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5794 0))(
  ( (LongMapFixedSize!5795 (defaultEntry!6279 Int) (mask!30188 (_ BitVec 32)) (extraKeys!6007 (_ BitVec 32)) (zeroValue!6113 V!37683) (minValue!6113 V!37683) (_size!2952 (_ BitVec 32)) (_keys!11471 array!65300) (_values!6302 array!65302) (_vacant!2952 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5794)

(declare-fun tp_is_empty!24607 () Bool)

(declare-fun e!586658 () Bool)

(declare-fun array_inv!24141 (array!65300) Bool)

(declare-fun array_inv!24142 (array!65302) Bool)

(assert (=> b!1037132 (= e!586660 (and tp!73804 tp_is_empty!24607 (array_inv!24141 (_keys!11471 thiss!1427)) (array_inv!24142 (_values!6302 thiss!1427)) e!586658))))

(declare-fun b!1037133 () Bool)

(declare-fun res!692139 () Bool)

(declare-fun e!586656 () Bool)

(assert (=> b!1037133 (=> (not res!692139) (not e!586656))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037133 (= res!692139 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38436 () Bool)

(declare-fun mapRes!38436 () Bool)

(assert (=> mapIsEmpty!38436 mapRes!38436))

(declare-fun b!1037134 () Bool)

(declare-fun e!586659 () Bool)

(assert (=> b!1037134 (= e!586659 tp_is_empty!24607)))

(declare-fun mapNonEmpty!38436 () Bool)

(declare-fun tp!73805 () Bool)

(assert (=> mapNonEmpty!38436 (= mapRes!38436 (and tp!73805 e!586659))))

(declare-fun mapValue!38436 () ValueCell!11600)

(declare-fun mapKey!38436 () (_ BitVec 32))

(declare-fun mapRest!38436 () (Array (_ BitVec 32) ValueCell!11600))

(assert (=> mapNonEmpty!38436 (= (arr!31430 (_values!6302 thiss!1427)) (store mapRest!38436 mapKey!38436 mapValue!38436))))

(declare-fun b!1037135 () Bool)

(declare-fun e!586661 () Bool)

(assert (=> b!1037135 (= e!586661 (not (bvslt (size!31960 (_keys!11471 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-datatypes ((SeekEntryResult!9745 0))(
  ( (MissingZero!9745 (index!41350 (_ BitVec 32))) (Found!9745 (index!41351 (_ BitVec 32))) (Intermediate!9745 (undefined!10557 Bool) (index!41352 (_ BitVec 32)) (x!92507 (_ BitVec 32))) (Undefined!9745) (MissingVacant!9745 (index!41353 (_ BitVec 32))) )
))
(declare-fun lt!457397 () SeekEntryResult!9745)

(declare-fun arrayCountValidKeys!0 (array!65300 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037135 (= (arrayCountValidKeys!0 (array!65301 (store (arr!31429 (_keys!11471 thiss!1427)) (index!41351 lt!457397) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31960 (_keys!11471 thiss!1427))) #b00000000000000000000000000000000 (size!31960 (_keys!11471 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11471 thiss!1427) #b00000000000000000000000000000000 (size!31960 (_keys!11471 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33922 0))(
  ( (Unit!33923) )
))
(declare-fun lt!457396 () Unit!33922)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65300 (_ BitVec 32) (_ BitVec 64)) Unit!33922)

(assert (=> b!1037135 (= lt!457396 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11471 thiss!1427) (index!41351 lt!457397) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!692140 () Bool)

(assert (=> start!90734 (=> (not res!692140) (not e!586656))))

(declare-fun valid!2137 (LongMapFixedSize!5794) Bool)

(assert (=> start!90734 (= res!692140 (valid!2137 thiss!1427))))

(assert (=> start!90734 e!586656))

(assert (=> start!90734 e!586660))

(assert (=> start!90734 true))

(declare-fun b!1037136 () Bool)

(assert (=> b!1037136 (= e!586656 e!586661)))

(declare-fun res!692138 () Bool)

(assert (=> b!1037136 (=> (not res!692138) (not e!586661))))

(assert (=> b!1037136 (= res!692138 (is-Found!9745 lt!457397))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65300 (_ BitVec 32)) SeekEntryResult!9745)

(assert (=> b!1037136 (= lt!457397 (seekEntry!0 key!909 (_keys!11471 thiss!1427) (mask!30188 thiss!1427)))))

(declare-fun b!1037137 () Bool)

(declare-fun e!586657 () Bool)

(assert (=> b!1037137 (= e!586658 (and e!586657 mapRes!38436))))

(declare-fun condMapEmpty!38436 () Bool)

(declare-fun mapDefault!38436 () ValueCell!11600)

