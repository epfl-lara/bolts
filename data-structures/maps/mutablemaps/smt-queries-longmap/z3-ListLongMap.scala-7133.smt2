; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90566 () Bool)

(assert start!90566)

(declare-fun b!1035498 () Bool)

(declare-fun b_free!20853 () Bool)

(declare-fun b_next!20853 () Bool)

(assert (=> b!1035498 (= b_free!20853 (not b_next!20853))))

(declare-fun tp!73688 () Bool)

(declare-fun b_and!33371 () Bool)

(assert (=> b!1035498 (= tp!73688 b_and!33371)))

(declare-fun b!1035493 () Bool)

(declare-fun res!691459 () Bool)

(declare-fun e!585576 () Bool)

(assert (=> b!1035493 (=> (not res!691459) (not e!585576))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035493 (= res!691459 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!38370 () Bool)

(declare-fun mapRes!38370 () Bool)

(declare-fun tp!73687 () Bool)

(declare-fun e!585578 () Bool)

(assert (=> mapNonEmpty!38370 (= mapRes!38370 (and tp!73687 e!585578))))

(declare-datatypes ((V!37637 0))(
  ( (V!37638 (val!12337 Int)) )
))
(declare-datatypes ((ValueCell!11583 0))(
  ( (ValueCellFull!11583 (v!14918 V!37637)) (EmptyCell!11583) )
))
(declare-fun mapValue!38370 () ValueCell!11583)

(declare-datatypes ((array!65224 0))(
  ( (array!65225 (arr!31395 (Array (_ BitVec 32) (_ BitVec 64))) (size!31924 (_ BitVec 32))) )
))
(declare-datatypes ((array!65226 0))(
  ( (array!65227 (arr!31396 (Array (_ BitVec 32) ValueCell!11583)) (size!31925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5760 0))(
  ( (LongMapFixedSize!5761 (defaultEntry!6258 Int) (mask!30142 (_ BitVec 32)) (extraKeys!5988 (_ BitVec 32)) (zeroValue!6092 V!37637) (minValue!6094 V!37637) (_size!2935 (_ BitVec 32)) (_keys!11442 array!65224) (_values!6281 array!65226) (_vacant!2935 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5760)

(declare-fun mapRest!38370 () (Array (_ BitVec 32) ValueCell!11583))

(declare-fun mapKey!38370 () (_ BitVec 32))

(assert (=> mapNonEmpty!38370 (= (arr!31396 (_values!6281 thiss!1427)) (store mapRest!38370 mapKey!38370 mapValue!38370))))

(declare-fun b!1035495 () Bool)

(declare-fun tp_is_empty!24573 () Bool)

(assert (=> b!1035495 (= e!585578 tp_is_empty!24573)))

(declare-fun b!1035496 () Bool)

(declare-fun e!585579 () Bool)

(assert (=> b!1035496 (= e!585579 tp_is_empty!24573)))

(declare-fun b!1035497 () Bool)

(assert (=> b!1035497 (= e!585576 (and (= (size!31925 (_values!6281 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30142 thiss!1427))) (= (size!31924 (_keys!11442 thiss!1427)) (size!31925 (_values!6281 thiss!1427))) (bvsge (mask!30142 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5988 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5988 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5988 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5988 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!5988 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5988 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))))

(declare-fun e!585577 () Bool)

(declare-fun e!585580 () Bool)

(declare-fun array_inv!24117 (array!65224) Bool)

(declare-fun array_inv!24118 (array!65226) Bool)

(assert (=> b!1035498 (= e!585577 (and tp!73688 tp_is_empty!24573 (array_inv!24117 (_keys!11442 thiss!1427)) (array_inv!24118 (_values!6281 thiss!1427)) e!585580))))

(declare-fun b!1035499 () Bool)

(declare-fun res!691460 () Bool)

(assert (=> b!1035499 (=> (not res!691460) (not e!585576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035499 (= res!691460 (validMask!0 (mask!30142 thiss!1427)))))

(declare-fun mapIsEmpty!38370 () Bool)

(assert (=> mapIsEmpty!38370 mapRes!38370))

(declare-fun res!691461 () Bool)

(assert (=> start!90566 (=> (not res!691461) (not e!585576))))

(declare-fun valid!2125 (LongMapFixedSize!5760) Bool)

(assert (=> start!90566 (= res!691461 (valid!2125 thiss!1427))))

(assert (=> start!90566 e!585576))

(assert (=> start!90566 e!585577))

(assert (=> start!90566 true))

(declare-fun b!1035494 () Bool)

(assert (=> b!1035494 (= e!585580 (and e!585579 mapRes!38370))))

(declare-fun condMapEmpty!38370 () Bool)

(declare-fun mapDefault!38370 () ValueCell!11583)

(assert (=> b!1035494 (= condMapEmpty!38370 (= (arr!31396 (_values!6281 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11583)) mapDefault!38370)))))

(assert (= (and start!90566 res!691461) b!1035493))

(assert (= (and b!1035493 res!691459) b!1035499))

(assert (= (and b!1035499 res!691460) b!1035497))

(assert (= (and b!1035494 condMapEmpty!38370) mapIsEmpty!38370))

(assert (= (and b!1035494 (not condMapEmpty!38370)) mapNonEmpty!38370))

(get-info :version)

(assert (= (and mapNonEmpty!38370 ((_ is ValueCellFull!11583) mapValue!38370)) b!1035495))

(assert (= (and b!1035494 ((_ is ValueCellFull!11583) mapDefault!38370)) b!1035496))

(assert (= b!1035498 b!1035494))

(assert (= start!90566 b!1035498))

(declare-fun m!955517 () Bool)

(assert (=> mapNonEmpty!38370 m!955517))

(declare-fun m!955519 () Bool)

(assert (=> b!1035498 m!955519))

(declare-fun m!955521 () Bool)

(assert (=> b!1035498 m!955521))

(declare-fun m!955523 () Bool)

(assert (=> b!1035499 m!955523))

(declare-fun m!955525 () Bool)

(assert (=> start!90566 m!955525))

(check-sat b_and!33371 tp_is_empty!24573 (not b_next!20853) (not b!1035498) (not start!90566) (not mapNonEmpty!38370) (not b!1035499))
(check-sat b_and!33371 (not b_next!20853))
