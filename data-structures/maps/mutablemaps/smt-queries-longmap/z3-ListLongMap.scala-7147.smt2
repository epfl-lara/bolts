; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90874 () Bool)

(assert start!90874)

(declare-fun b!1038294 () Bool)

(declare-fun b_free!20937 () Bool)

(declare-fun b_next!20937 () Bool)

(assert (=> b!1038294 (= b_free!20937 (not b_next!20937))))

(declare-fun tp!73973 () Bool)

(declare-fun b_and!33487 () Bool)

(assert (=> b!1038294 (= tp!73973 b_and!33487)))

(declare-fun mapIsEmpty!38529 () Bool)

(declare-fun mapRes!38529 () Bool)

(assert (=> mapIsEmpty!38529 mapRes!38529))

(declare-fun res!692736 () Bool)

(declare-fun e!587510 () Bool)

(assert (=> start!90874 (=> (not res!692736) (not e!587510))))

(declare-datatypes ((V!37749 0))(
  ( (V!37750 (val!12379 Int)) )
))
(declare-datatypes ((ValueCell!11625 0))(
  ( (ValueCellFull!11625 (v!14966 V!37749)) (EmptyCell!11625) )
))
(declare-datatypes ((array!65412 0))(
  ( (array!65413 (arr!31479 (Array (_ BitVec 32) (_ BitVec 64))) (size!32010 (_ BitVec 32))) )
))
(declare-datatypes ((array!65414 0))(
  ( (array!65415 (arr!31480 (Array (_ BitVec 32) ValueCell!11625)) (size!32011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5844 0))(
  ( (LongMapFixedSize!5845 (defaultEntry!6304 Int) (mask!30235 (_ BitVec 32)) (extraKeys!6032 (_ BitVec 32)) (zeroValue!6138 V!37749) (minValue!6138 V!37749) (_size!2977 (_ BitVec 32)) (_keys!11502 array!65412) (_values!6327 array!65414) (_vacant!2977 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5844)

(declare-fun valid!2153 (LongMapFixedSize!5844) Bool)

(assert (=> start!90874 (= res!692736 (valid!2153 thiss!1427))))

(assert (=> start!90874 e!587510))

(declare-fun e!587504 () Bool)

(assert (=> start!90874 e!587504))

(assert (=> start!90874 true))

(declare-fun b!1038291 () Bool)

(declare-fun e!587506 () Bool)

(declare-fun e!587508 () Bool)

(assert (=> b!1038291 (= e!587506 (and e!587508 mapRes!38529))))

(declare-fun condMapEmpty!38529 () Bool)

(declare-fun mapDefault!38529 () ValueCell!11625)

(assert (=> b!1038291 (= condMapEmpty!38529 (= (arr!31480 (_values!6327 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11625)) mapDefault!38529)))))

(declare-fun b!1038292 () Bool)

(declare-fun res!692739 () Bool)

(declare-fun e!587505 () Bool)

(assert (=> b!1038292 (=> res!692739 e!587505)))

(declare-datatypes ((List!22055 0))(
  ( (Nil!22052) (Cons!22051 (h!23254 (_ BitVec 64)) (t!31276 List!22055)) )
))
(declare-fun contains!6059 (List!22055 (_ BitVec 64)) Bool)

(assert (=> b!1038292 (= res!692739 (contains!6059 Nil!22052 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038293 () Bool)

(declare-fun e!587511 () Bool)

(declare-fun tp_is_empty!24657 () Bool)

(assert (=> b!1038293 (= e!587511 tp_is_empty!24657)))

(declare-fun array_inv!24179 (array!65412) Bool)

(declare-fun array_inv!24180 (array!65414) Bool)

(assert (=> b!1038294 (= e!587504 (and tp!73973 tp_is_empty!24657 (array_inv!24179 (_keys!11502 thiss!1427)) (array_inv!24180 (_values!6327 thiss!1427)) e!587506))))

(declare-fun b!1038295 () Bool)

(declare-fun res!692740 () Bool)

(assert (=> b!1038295 (=> (not res!692740) (not e!587510))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1038295 (= res!692740 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038296 () Bool)

(assert (=> b!1038296 (= e!587508 tp_is_empty!24657)))

(declare-fun mapNonEmpty!38529 () Bool)

(declare-fun tp!73972 () Bool)

(assert (=> mapNonEmpty!38529 (= mapRes!38529 (and tp!73972 e!587511))))

(declare-fun mapValue!38529 () ValueCell!11625)

(declare-fun mapKey!38529 () (_ BitVec 32))

(declare-fun mapRest!38529 () (Array (_ BitVec 32) ValueCell!11625))

(assert (=> mapNonEmpty!38529 (= (arr!31480 (_values!6327 thiss!1427)) (store mapRest!38529 mapKey!38529 mapValue!38529))))

(declare-fun b!1038297 () Bool)

(declare-fun e!587509 () Bool)

(assert (=> b!1038297 (= e!587510 e!587509)))

(declare-fun res!692735 () Bool)

(assert (=> b!1038297 (=> (not res!692735) (not e!587509))))

(declare-datatypes ((SeekEntryResult!9765 0))(
  ( (MissingZero!9765 (index!41430 (_ BitVec 32))) (Found!9765 (index!41431 (_ BitVec 32))) (Intermediate!9765 (undefined!10577 Bool) (index!41432 (_ BitVec 32)) (x!92639 (_ BitVec 32))) (Undefined!9765) (MissingVacant!9765 (index!41433 (_ BitVec 32))) )
))
(declare-fun lt!457681 () SeekEntryResult!9765)

(get-info :version)

(assert (=> b!1038297 (= res!692735 ((_ is Found!9765) lt!457681))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65412 (_ BitVec 32)) SeekEntryResult!9765)

(assert (=> b!1038297 (= lt!457681 (seekEntry!0 key!909 (_keys!11502 thiss!1427) (mask!30235 thiss!1427)))))

(declare-fun b!1038298 () Bool)

(declare-fun res!692737 () Bool)

(assert (=> b!1038298 (=> res!692737 e!587505)))

(declare-fun arrayNoDuplicates!0 (array!65412 (_ BitVec 32) List!22055) Bool)

(assert (=> b!1038298 (= res!692737 (not (arrayNoDuplicates!0 (_keys!11502 thiss!1427) #b00000000000000000000000000000000 Nil!22052)))))

(declare-fun b!1038299 () Bool)

(declare-fun res!692738 () Bool)

(assert (=> b!1038299 (=> res!692738 e!587505)))

(declare-fun noDuplicate!1501 (List!22055) Bool)

(assert (=> b!1038299 (= res!692738 (not (noDuplicate!1501 Nil!22052)))))

(declare-fun b!1038300 () Bool)

(assert (=> b!1038300 (= e!587509 (not e!587505))))

(declare-fun res!692734 () Bool)

(assert (=> b!1038300 (=> res!692734 e!587505)))

(assert (=> b!1038300 (= res!692734 (or (bvsge (size!32010 (_keys!11502 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32010 (_keys!11502 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65412 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038300 (= (arrayCountValidKeys!0 (array!65413 (store (arr!31479 (_keys!11502 thiss!1427)) (index!41431 lt!457681) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32010 (_keys!11502 thiss!1427))) #b00000000000000000000000000000000 (size!32010 (_keys!11502 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11502 thiss!1427) #b00000000000000000000000000000000 (size!32010 (_keys!11502 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33960 0))(
  ( (Unit!33961) )
))
(declare-fun lt!457682 () Unit!33960)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65412 (_ BitVec 32) (_ BitVec 64)) Unit!33960)

(assert (=> b!1038300 (= lt!457682 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11502 thiss!1427) (index!41431 lt!457681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038301 () Bool)

(assert (=> b!1038301 (= e!587505 true)))

(declare-fun b!1038302 () Bool)

(declare-fun res!692733 () Bool)

(assert (=> b!1038302 (=> res!692733 e!587505)))

(assert (=> b!1038302 (= res!692733 (contains!6059 Nil!22052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!90874 res!692736) b!1038295))

(assert (= (and b!1038295 res!692740) b!1038297))

(assert (= (and b!1038297 res!692735) b!1038300))

(assert (= (and b!1038300 (not res!692734)) b!1038299))

(assert (= (and b!1038299 (not res!692738)) b!1038302))

(assert (= (and b!1038302 (not res!692733)) b!1038292))

(assert (= (and b!1038292 (not res!692739)) b!1038298))

(assert (= (and b!1038298 (not res!692737)) b!1038301))

(assert (= (and b!1038291 condMapEmpty!38529) mapIsEmpty!38529))

(assert (= (and b!1038291 (not condMapEmpty!38529)) mapNonEmpty!38529))

(assert (= (and mapNonEmpty!38529 ((_ is ValueCellFull!11625) mapValue!38529)) b!1038293))

(assert (= (and b!1038291 ((_ is ValueCellFull!11625) mapDefault!38529)) b!1038296))

(assert (= b!1038294 b!1038291))

(assert (= start!90874 b!1038294))

(declare-fun m!958381 () Bool)

(assert (=> mapNonEmpty!38529 m!958381))

(declare-fun m!958383 () Bool)

(assert (=> start!90874 m!958383))

(declare-fun m!958385 () Bool)

(assert (=> b!1038299 m!958385))

(declare-fun m!958387 () Bool)

(assert (=> b!1038292 m!958387))

(declare-fun m!958389 () Bool)

(assert (=> b!1038302 m!958389))

(declare-fun m!958391 () Bool)

(assert (=> b!1038298 m!958391))

(declare-fun m!958393 () Bool)

(assert (=> b!1038294 m!958393))

(declare-fun m!958395 () Bool)

(assert (=> b!1038294 m!958395))

(declare-fun m!958397 () Bool)

(assert (=> b!1038300 m!958397))

(declare-fun m!958399 () Bool)

(assert (=> b!1038300 m!958399))

(declare-fun m!958401 () Bool)

(assert (=> b!1038300 m!958401))

(declare-fun m!958403 () Bool)

(assert (=> b!1038300 m!958403))

(declare-fun m!958405 () Bool)

(assert (=> b!1038297 m!958405))

(check-sat (not b!1038297) tp_is_empty!24657 (not b!1038299) b_and!33487 (not b!1038302) (not b!1038298) (not b!1038292) (not mapNonEmpty!38529) (not start!90874) (not b!1038300) (not b_next!20937) (not b!1038294))
(check-sat b_and!33487 (not b_next!20937))
