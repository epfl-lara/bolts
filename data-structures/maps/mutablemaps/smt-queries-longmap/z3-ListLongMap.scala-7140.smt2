; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90754 () Bool)

(assert start!90754)

(declare-fun b!1037279 () Bool)

(declare-fun b_free!20895 () Bool)

(declare-fun b_next!20895 () Bool)

(assert (=> b!1037279 (= b_free!20895 (not b_next!20895))))

(declare-fun tp!73831 () Bool)

(declare-fun b_and!33445 () Bool)

(assert (=> b!1037279 (= tp!73831 b_and!33445)))

(declare-fun e!586773 () Bool)

(declare-fun e!586777 () Bool)

(declare-fun tp_is_empty!24615 () Bool)

(declare-datatypes ((V!37693 0))(
  ( (V!37694 (val!12358 Int)) )
))
(declare-datatypes ((ValueCell!11604 0))(
  ( (ValueCellFull!11604 (v!14942 V!37693)) (EmptyCell!11604) )
))
(declare-datatypes ((array!65318 0))(
  ( (array!65319 (arr!31437 (Array (_ BitVec 32) (_ BitVec 64))) (size!31968 (_ BitVec 32))) )
))
(declare-datatypes ((array!65320 0))(
  ( (array!65321 (arr!31438 (Array (_ BitVec 32) ValueCell!11604)) (size!31969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5802 0))(
  ( (LongMapFixedSize!5803 (defaultEntry!6283 Int) (mask!30195 (_ BitVec 32)) (extraKeys!6011 (_ BitVec 32)) (zeroValue!6117 V!37693) (minValue!6117 V!37693) (_size!2956 (_ BitVec 32)) (_keys!11476 array!65318) (_values!6306 array!65320) (_vacant!2956 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5802)

(declare-fun array_inv!24149 (array!65318) Bool)

(declare-fun array_inv!24150 (array!65320) Bool)

(assert (=> b!1037279 (= e!586777 (and tp!73831 tp_is_empty!24615 (array_inv!24149 (_keys!11476 thiss!1427)) (array_inv!24150 (_values!6306 thiss!1427)) e!586773))))

(declare-fun b!1037280 () Bool)

(declare-fun e!586776 () Bool)

(declare-fun e!586775 () Bool)

(assert (=> b!1037280 (= e!586776 e!586775)))

(declare-fun res!692195 () Bool)

(assert (=> b!1037280 (=> (not res!692195) (not e!586775))))

(declare-datatypes ((SeekEntryResult!9749 0))(
  ( (MissingZero!9749 (index!41366 (_ BitVec 32))) (Found!9749 (index!41367 (_ BitVec 32))) (Intermediate!9749 (undefined!10561 Bool) (index!41368 (_ BitVec 32)) (x!92527 (_ BitVec 32))) (Undefined!9749) (MissingVacant!9749 (index!41369 (_ BitVec 32))) )
))
(declare-fun lt!457440 () SeekEntryResult!9749)

(get-info :version)

(assert (=> b!1037280 (= res!692195 ((_ is Found!9749) lt!457440))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65318 (_ BitVec 32)) SeekEntryResult!9749)

(assert (=> b!1037280 (= lt!457440 (seekEntry!0 key!909 (_keys!11476 thiss!1427) (mask!30195 thiss!1427)))))

(declare-fun mapNonEmpty!38451 () Bool)

(declare-fun mapRes!38451 () Bool)

(declare-fun tp!73832 () Bool)

(declare-fun e!586778 () Bool)

(assert (=> mapNonEmpty!38451 (= mapRes!38451 (and tp!73832 e!586778))))

(declare-fun mapRest!38451 () (Array (_ BitVec 32) ValueCell!11604))

(declare-fun mapKey!38451 () (_ BitVec 32))

(declare-fun mapValue!38451 () ValueCell!11604)

(assert (=> mapNonEmpty!38451 (= (arr!31438 (_values!6306 thiss!1427)) (store mapRest!38451 mapKey!38451 mapValue!38451))))

(declare-fun b!1037281 () Bool)

(declare-fun res!692197 () Bool)

(assert (=> b!1037281 (=> (not res!692197) (not e!586776))))

(assert (=> b!1037281 (= res!692197 (not (= key!909 (bvneg key!909))))))

(declare-fun res!692196 () Bool)

(assert (=> start!90754 (=> (not res!692196) (not e!586776))))

(declare-fun valid!2140 (LongMapFixedSize!5802) Bool)

(assert (=> start!90754 (= res!692196 (valid!2140 thiss!1427))))

(assert (=> start!90754 e!586776))

(assert (=> start!90754 e!586777))

(assert (=> start!90754 true))

(declare-fun b!1037282 () Bool)

(declare-fun e!586774 () Bool)

(assert (=> b!1037282 (= e!586773 (and e!586774 mapRes!38451))))

(declare-fun condMapEmpty!38451 () Bool)

(declare-fun mapDefault!38451 () ValueCell!11604)

(assert (=> b!1037282 (= condMapEmpty!38451 (= (arr!31438 (_values!6306 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11604)) mapDefault!38451)))))

(declare-fun mapIsEmpty!38451 () Bool)

(assert (=> mapIsEmpty!38451 mapRes!38451))

(declare-fun b!1037283 () Bool)

(assert (=> b!1037283 (= e!586778 tp_is_empty!24615)))

(declare-fun b!1037284 () Bool)

(assert (=> b!1037284 (= e!586774 tp_is_empty!24615)))

(declare-fun b!1037285 () Bool)

(assert (=> b!1037285 (= e!586775 (not true))))

(declare-fun arrayCountValidKeys!0 (array!65318 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037285 (= (arrayCountValidKeys!0 (array!65319 (store (arr!31437 (_keys!11476 thiss!1427)) (index!41367 lt!457440) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31968 (_keys!11476 thiss!1427))) #b00000000000000000000000000000000 (size!31968 (_keys!11476 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11476 thiss!1427) #b00000000000000000000000000000000 (size!31968 (_keys!11476 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33930 0))(
  ( (Unit!33931) )
))
(declare-fun lt!457439 () Unit!33930)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65318 (_ BitVec 32) (_ BitVec 64)) Unit!33930)

(assert (=> b!1037285 (= lt!457439 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11476 thiss!1427) (index!41367 lt!457440) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!90754 res!692196) b!1037281))

(assert (= (and b!1037281 res!692197) b!1037280))

(assert (= (and b!1037280 res!692195) b!1037285))

(assert (= (and b!1037282 condMapEmpty!38451) mapIsEmpty!38451))

(assert (= (and b!1037282 (not condMapEmpty!38451)) mapNonEmpty!38451))

(assert (= (and mapNonEmpty!38451 ((_ is ValueCellFull!11604) mapValue!38451)) b!1037283))

(assert (= (and b!1037282 ((_ is ValueCellFull!11604) mapDefault!38451)) b!1037284))

(assert (= b!1037279 b!1037282))

(assert (= start!90754 b!1037279))

(declare-fun m!957649 () Bool)

(assert (=> b!1037285 m!957649))

(declare-fun m!957651 () Bool)

(assert (=> b!1037285 m!957651))

(declare-fun m!957653 () Bool)

(assert (=> b!1037285 m!957653))

(declare-fun m!957655 () Bool)

(assert (=> b!1037285 m!957655))

(declare-fun m!957657 () Bool)

(assert (=> b!1037279 m!957657))

(declare-fun m!957659 () Bool)

(assert (=> b!1037279 m!957659))

(declare-fun m!957661 () Bool)

(assert (=> mapNonEmpty!38451 m!957661))

(declare-fun m!957663 () Bool)

(assert (=> start!90754 m!957663))

(declare-fun m!957665 () Bool)

(assert (=> b!1037280 m!957665))

(check-sat (not mapNonEmpty!38451) (not b!1037280) (not b!1037285) (not b!1037279) (not b_next!20895) (not start!90754) tp_is_empty!24615 b_and!33445)
(check-sat b_and!33445 (not b_next!20895))
