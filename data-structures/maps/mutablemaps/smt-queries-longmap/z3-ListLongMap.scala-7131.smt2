; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90554 () Bool)

(assert start!90554)

(declare-fun b!1035371 () Bool)

(declare-fun b_free!20841 () Bool)

(declare-fun b_next!20841 () Bool)

(assert (=> b!1035371 (= b_free!20841 (not b_next!20841))))

(declare-fun tp!73652 () Bool)

(declare-fun b_and!33359 () Bool)

(assert (=> b!1035371 (= tp!73652 b_and!33359)))

(declare-fun b!1035367 () Bool)

(declare-fun e!585469 () Bool)

(declare-fun tp_is_empty!24561 () Bool)

(assert (=> b!1035367 (= e!585469 tp_is_empty!24561)))

(declare-fun b!1035368 () Bool)

(declare-fun e!585468 () Bool)

(assert (=> b!1035368 (= e!585468 tp_is_empty!24561)))

(declare-fun mapNonEmpty!38352 () Bool)

(declare-fun mapRes!38352 () Bool)

(declare-fun tp!73651 () Bool)

(assert (=> mapNonEmpty!38352 (= mapRes!38352 (and tp!73651 e!585468))))

(declare-datatypes ((V!37621 0))(
  ( (V!37622 (val!12331 Int)) )
))
(declare-datatypes ((ValueCell!11577 0))(
  ( (ValueCellFull!11577 (v!14912 V!37621)) (EmptyCell!11577) )
))
(declare-fun mapValue!38352 () ValueCell!11577)

(declare-fun mapKey!38352 () (_ BitVec 32))

(declare-fun mapRest!38352 () (Array (_ BitVec 32) ValueCell!11577))

(declare-datatypes ((array!65200 0))(
  ( (array!65201 (arr!31383 (Array (_ BitVec 32) (_ BitVec 64))) (size!31912 (_ BitVec 32))) )
))
(declare-datatypes ((array!65202 0))(
  ( (array!65203 (arr!31384 (Array (_ BitVec 32) ValueCell!11577)) (size!31913 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5748 0))(
  ( (LongMapFixedSize!5749 (defaultEntry!6252 Int) (mask!30132 (_ BitVec 32)) (extraKeys!5982 (_ BitVec 32)) (zeroValue!6086 V!37621) (minValue!6088 V!37621) (_size!2929 (_ BitVec 32)) (_keys!11436 array!65200) (_values!6275 array!65202) (_vacant!2929 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5748)

(assert (=> mapNonEmpty!38352 (= (arr!31384 (_values!6275 thiss!1427)) (store mapRest!38352 mapKey!38352 mapValue!38352))))

(declare-fun b!1035369 () Bool)

(declare-fun e!585473 () Bool)

(assert (=> b!1035369 (= e!585473 (and (= (size!31913 (_values!6275 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30132 thiss!1427))) (= (size!31912 (_keys!11436 thiss!1427)) (size!31913 (_values!6275 thiss!1427))) (bvsge (mask!30132 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5982 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5982 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5982 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1035370 () Bool)

(declare-fun e!585471 () Bool)

(assert (=> b!1035370 (= e!585471 (and e!585469 mapRes!38352))))

(declare-fun condMapEmpty!38352 () Bool)

(declare-fun mapDefault!38352 () ValueCell!11577)

(assert (=> b!1035370 (= condMapEmpty!38352 (= (arr!31384 (_values!6275 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11577)) mapDefault!38352)))))

(declare-fun mapIsEmpty!38352 () Bool)

(assert (=> mapIsEmpty!38352 mapRes!38352))

(declare-fun e!585472 () Bool)

(declare-fun array_inv!24107 (array!65200) Bool)

(declare-fun array_inv!24108 (array!65202) Bool)

(assert (=> b!1035371 (= e!585472 (and tp!73652 tp_is_empty!24561 (array_inv!24107 (_keys!11436 thiss!1427)) (array_inv!24108 (_values!6275 thiss!1427)) e!585471))))

(declare-fun res!691407 () Bool)

(assert (=> start!90554 (=> (not res!691407) (not e!585473))))

(declare-fun valid!2120 (LongMapFixedSize!5748) Bool)

(assert (=> start!90554 (= res!691407 (valid!2120 thiss!1427))))

(assert (=> start!90554 e!585473))

(assert (=> start!90554 e!585472))

(assert (=> start!90554 true))

(declare-fun b!1035372 () Bool)

(declare-fun res!691405 () Bool)

(assert (=> b!1035372 (=> (not res!691405) (not e!585473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035372 (= res!691405 (validMask!0 (mask!30132 thiss!1427)))))

(declare-fun b!1035373 () Bool)

(declare-fun res!691406 () Bool)

(assert (=> b!1035373 (=> (not res!691406) (not e!585473))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035373 (= res!691406 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!90554 res!691407) b!1035373))

(assert (= (and b!1035373 res!691406) b!1035372))

(assert (= (and b!1035372 res!691405) b!1035369))

(assert (= (and b!1035370 condMapEmpty!38352) mapIsEmpty!38352))

(assert (= (and b!1035370 (not condMapEmpty!38352)) mapNonEmpty!38352))

(get-info :version)

(assert (= (and mapNonEmpty!38352 ((_ is ValueCellFull!11577) mapValue!38352)) b!1035368))

(assert (= (and b!1035370 ((_ is ValueCellFull!11577) mapDefault!38352)) b!1035367))

(assert (= b!1035371 b!1035370))

(assert (= start!90554 b!1035371))

(declare-fun m!955457 () Bool)

(assert (=> mapNonEmpty!38352 m!955457))

(declare-fun m!955459 () Bool)

(assert (=> b!1035371 m!955459))

(declare-fun m!955461 () Bool)

(assert (=> b!1035371 m!955461))

(declare-fun m!955463 () Bool)

(assert (=> start!90554 m!955463))

(declare-fun m!955465 () Bool)

(assert (=> b!1035372 m!955465))

(check-sat (not b_next!20841) (not b!1035372) (not start!90554) tp_is_empty!24561 (not mapNonEmpty!38352) b_and!33359 (not b!1035371))
(check-sat b_and!33359 (not b_next!20841))
