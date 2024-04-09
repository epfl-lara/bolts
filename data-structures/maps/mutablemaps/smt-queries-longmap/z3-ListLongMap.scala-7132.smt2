; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90560 () Bool)

(assert start!90560)

(declare-fun b!1035433 () Bool)

(declare-fun b_free!20847 () Bool)

(declare-fun b_next!20847 () Bool)

(assert (=> b!1035433 (= b_free!20847 (not b_next!20847))))

(declare-fun tp!73670 () Bool)

(declare-fun b_and!33365 () Bool)

(assert (=> b!1035433 (= tp!73670 b_and!33365)))

(declare-fun b!1035430 () Bool)

(declare-fun e!585526 () Bool)

(declare-fun tp_is_empty!24567 () Bool)

(assert (=> b!1035430 (= e!585526 tp_is_empty!24567)))

(declare-fun b!1035431 () Bool)

(declare-fun e!585527 () Bool)

(declare-fun e!585523 () Bool)

(declare-fun mapRes!38361 () Bool)

(assert (=> b!1035431 (= e!585527 (and e!585523 mapRes!38361))))

(declare-fun condMapEmpty!38361 () Bool)

(declare-datatypes ((V!37629 0))(
  ( (V!37630 (val!12334 Int)) )
))
(declare-datatypes ((ValueCell!11580 0))(
  ( (ValueCellFull!11580 (v!14915 V!37629)) (EmptyCell!11580) )
))
(declare-datatypes ((array!65212 0))(
  ( (array!65213 (arr!31389 (Array (_ BitVec 32) (_ BitVec 64))) (size!31918 (_ BitVec 32))) )
))
(declare-datatypes ((array!65214 0))(
  ( (array!65215 (arr!31390 (Array (_ BitVec 32) ValueCell!11580)) (size!31919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5754 0))(
  ( (LongMapFixedSize!5755 (defaultEntry!6255 Int) (mask!30137 (_ BitVec 32)) (extraKeys!5985 (_ BitVec 32)) (zeroValue!6089 V!37629) (minValue!6091 V!37629) (_size!2932 (_ BitVec 32)) (_keys!11439 array!65212) (_values!6278 array!65214) (_vacant!2932 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5754)

(declare-fun mapDefault!38361 () ValueCell!11580)

(assert (=> b!1035431 (= condMapEmpty!38361 (= (arr!31390 (_values!6278 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11580)) mapDefault!38361)))))

(declare-fun mapIsEmpty!38361 () Bool)

(assert (=> mapIsEmpty!38361 mapRes!38361))

(declare-fun b!1035432 () Bool)

(declare-fun res!691432 () Bool)

(declare-fun e!585524 () Bool)

(assert (=> b!1035432 (=> (not res!691432) (not e!585524))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035432 (= res!691432 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!585522 () Bool)

(declare-fun array_inv!24111 (array!65212) Bool)

(declare-fun array_inv!24112 (array!65214) Bool)

(assert (=> b!1035433 (= e!585522 (and tp!73670 tp_is_empty!24567 (array_inv!24111 (_keys!11439 thiss!1427)) (array_inv!24112 (_values!6278 thiss!1427)) e!585527))))

(declare-fun mapNonEmpty!38361 () Bool)

(declare-fun tp!73669 () Bool)

(assert (=> mapNonEmpty!38361 (= mapRes!38361 (and tp!73669 e!585526))))

(declare-fun mapRest!38361 () (Array (_ BitVec 32) ValueCell!11580))

(declare-fun mapValue!38361 () ValueCell!11580)

(declare-fun mapKey!38361 () (_ BitVec 32))

(assert (=> mapNonEmpty!38361 (= (arr!31390 (_values!6278 thiss!1427)) (store mapRest!38361 mapKey!38361 mapValue!38361))))

(declare-fun b!1035434 () Bool)

(declare-fun res!691434 () Bool)

(assert (=> b!1035434 (=> (not res!691434) (not e!585524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035434 (= res!691434 (validMask!0 (mask!30137 thiss!1427)))))

(declare-fun res!691433 () Bool)

(assert (=> start!90560 (=> (not res!691433) (not e!585524))))

(declare-fun valid!2122 (LongMapFixedSize!5754) Bool)

(assert (=> start!90560 (= res!691433 (valid!2122 thiss!1427))))

(assert (=> start!90560 e!585524))

(assert (=> start!90560 e!585522))

(assert (=> start!90560 true))

(declare-fun b!1035435 () Bool)

(assert (=> b!1035435 (= e!585524 (and (= (size!31919 (_values!6278 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30137 thiss!1427))) (= (size!31918 (_keys!11439 thiss!1427)) (size!31919 (_values!6278 thiss!1427))) (bvsge (mask!30137 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5985 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5985 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5985 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsgt (bvand (extraKeys!5985 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011)))))

(declare-fun b!1035436 () Bool)

(assert (=> b!1035436 (= e!585523 tp_is_empty!24567)))

(assert (= (and start!90560 res!691433) b!1035432))

(assert (= (and b!1035432 res!691432) b!1035434))

(assert (= (and b!1035434 res!691434) b!1035435))

(assert (= (and b!1035431 condMapEmpty!38361) mapIsEmpty!38361))

(assert (= (and b!1035431 (not condMapEmpty!38361)) mapNonEmpty!38361))

(get-info :version)

(assert (= (and mapNonEmpty!38361 ((_ is ValueCellFull!11580) mapValue!38361)) b!1035430))

(assert (= (and b!1035431 ((_ is ValueCellFull!11580) mapDefault!38361)) b!1035436))

(assert (= b!1035433 b!1035431))

(assert (= start!90560 b!1035433))

(declare-fun m!955487 () Bool)

(assert (=> b!1035433 m!955487))

(declare-fun m!955489 () Bool)

(assert (=> b!1035433 m!955489))

(declare-fun m!955491 () Bool)

(assert (=> mapNonEmpty!38361 m!955491))

(declare-fun m!955493 () Bool)

(assert (=> b!1035434 m!955493))

(declare-fun m!955495 () Bool)

(assert (=> start!90560 m!955495))

(check-sat (not b!1035434) (not mapNonEmpty!38361) (not b!1035433) tp_is_empty!24567 b_and!33365 (not start!90560) (not b_next!20847))
(check-sat b_and!33365 (not b_next!20847))
