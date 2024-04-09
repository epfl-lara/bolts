; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90572 () Bool)

(assert start!90572)

(declare-fun b!1035558 () Bool)

(declare-fun b_free!20859 () Bool)

(declare-fun b_next!20859 () Bool)

(assert (=> b!1035558 (= b_free!20859 (not b_next!20859))))

(declare-fun tp!73706 () Bool)

(declare-fun b_and!33377 () Bool)

(assert (=> b!1035558 (= tp!73706 b_and!33377)))

(declare-fun b!1035556 () Bool)

(declare-fun e!585635 () Bool)

(declare-fun tp_is_empty!24579 () Bool)

(assert (=> b!1035556 (= e!585635 tp_is_empty!24579)))

(declare-fun b!1035557 () Bool)

(declare-fun e!585631 () Bool)

(declare-fun mapRes!38379 () Bool)

(assert (=> b!1035557 (= e!585631 (and e!585635 mapRes!38379))))

(declare-fun condMapEmpty!38379 () Bool)

(declare-datatypes ((V!37645 0))(
  ( (V!37646 (val!12340 Int)) )
))
(declare-datatypes ((ValueCell!11586 0))(
  ( (ValueCellFull!11586 (v!14921 V!37645)) (EmptyCell!11586) )
))
(declare-datatypes ((array!65236 0))(
  ( (array!65237 (arr!31401 (Array (_ BitVec 32) (_ BitVec 64))) (size!31930 (_ BitVec 32))) )
))
(declare-datatypes ((array!65238 0))(
  ( (array!65239 (arr!31402 (Array (_ BitVec 32) ValueCell!11586)) (size!31931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5766 0))(
  ( (LongMapFixedSize!5767 (defaultEntry!6261 Int) (mask!30147 (_ BitVec 32)) (extraKeys!5991 (_ BitVec 32)) (zeroValue!6095 V!37645) (minValue!6097 V!37645) (_size!2938 (_ BitVec 32)) (_keys!11445 array!65236) (_values!6284 array!65238) (_vacant!2938 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5766)

(declare-fun mapDefault!38379 () ValueCell!11586)

(assert (=> b!1035557 (= condMapEmpty!38379 (= (arr!31402 (_values!6284 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11586)) mapDefault!38379)))))

(declare-fun mapNonEmpty!38379 () Bool)

(declare-fun tp!73705 () Bool)

(declare-fun e!585632 () Bool)

(assert (=> mapNonEmpty!38379 (= mapRes!38379 (and tp!73705 e!585632))))

(declare-fun mapValue!38379 () ValueCell!11586)

(declare-fun mapRest!38379 () (Array (_ BitVec 32) ValueCell!11586))

(declare-fun mapKey!38379 () (_ BitVec 32))

(assert (=> mapNonEmpty!38379 (= (arr!31402 (_values!6284 thiss!1427)) (store mapRest!38379 mapKey!38379 mapValue!38379))))

(declare-fun e!585633 () Bool)

(declare-fun array_inv!24119 (array!65236) Bool)

(declare-fun array_inv!24120 (array!65238) Bool)

(assert (=> b!1035558 (= e!585633 (and tp!73706 tp_is_empty!24579 (array_inv!24119 (_keys!11445 thiss!1427)) (array_inv!24120 (_values!6284 thiss!1427)) e!585631))))

(declare-fun res!691487 () Bool)

(declare-fun e!585634 () Bool)

(assert (=> start!90572 (=> (not res!691487) (not e!585634))))

(declare-fun valid!2126 (LongMapFixedSize!5766) Bool)

(assert (=> start!90572 (= res!691487 (valid!2126 thiss!1427))))

(assert (=> start!90572 e!585634))

(assert (=> start!90572 e!585633))

(assert (=> start!90572 true))

(declare-fun b!1035559 () Bool)

(assert (=> b!1035559 (= e!585632 tp_is_empty!24579)))

(declare-fun b!1035560 () Bool)

(declare-fun res!691486 () Bool)

(assert (=> b!1035560 (=> (not res!691486) (not e!585634))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035560 (= res!691486 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035561 () Bool)

(declare-fun res!691488 () Bool)

(assert (=> b!1035561 (=> (not res!691488) (not e!585634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035561 (= res!691488 (validMask!0 (mask!30147 thiss!1427)))))

(declare-fun b!1035562 () Bool)

(assert (=> b!1035562 (= e!585634 (and (= (size!31931 (_values!6284 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30147 thiss!1427))) (= (size!31930 (_keys!11445 thiss!1427)) (size!31931 (_values!6284 thiss!1427))) (bvsge (mask!30147 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5991 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5991 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5991 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5991 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5991 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5991 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (not (= (bvand (bvand (extraKeys!5991 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!38379 () Bool)

(assert (=> mapIsEmpty!38379 mapRes!38379))

(assert (= (and start!90572 res!691487) b!1035560))

(assert (= (and b!1035560 res!691486) b!1035561))

(assert (= (and b!1035561 res!691488) b!1035562))

(assert (= (and b!1035557 condMapEmpty!38379) mapIsEmpty!38379))

(assert (= (and b!1035557 (not condMapEmpty!38379)) mapNonEmpty!38379))

(get-info :version)

(assert (= (and mapNonEmpty!38379 ((_ is ValueCellFull!11586) mapValue!38379)) b!1035559))

(assert (= (and b!1035557 ((_ is ValueCellFull!11586) mapDefault!38379)) b!1035556))

(assert (= b!1035558 b!1035557))

(assert (= start!90572 b!1035558))

(declare-fun m!955547 () Bool)

(assert (=> mapNonEmpty!38379 m!955547))

(declare-fun m!955549 () Bool)

(assert (=> b!1035558 m!955549))

(declare-fun m!955551 () Bool)

(assert (=> b!1035558 m!955551))

(declare-fun m!955553 () Bool)

(assert (=> start!90572 m!955553))

(declare-fun m!955555 () Bool)

(assert (=> b!1035561 m!955555))

(check-sat (not b!1035561) (not b_next!20859) (not start!90572) tp_is_empty!24579 b_and!33377 (not mapNonEmpty!38379) (not b!1035558))
(check-sat b_and!33377 (not b_next!20859))
