; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90530 () Bool)

(assert start!90530)

(declare-fun b!1035219 () Bool)

(declare-fun b_free!20833 () Bool)

(declare-fun b_next!20833 () Bool)

(assert (=> b!1035219 (= b_free!20833 (not b_next!20833))))

(declare-fun tp!73623 () Bool)

(declare-fun b_and!33351 () Bool)

(assert (=> b!1035219 (= tp!73623 b_and!33351)))

(declare-fun b!1035213 () Bool)

(declare-fun res!691333 () Bool)

(declare-fun e!585359 () Bool)

(assert (=> b!1035213 (=> (not res!691333) (not e!585359))))

(declare-datatypes ((V!37611 0))(
  ( (V!37612 (val!12327 Int)) )
))
(declare-datatypes ((ValueCell!11573 0))(
  ( (ValueCellFull!11573 (v!14908 V!37611)) (EmptyCell!11573) )
))
(declare-datatypes ((array!65182 0))(
  ( (array!65183 (arr!31375 (Array (_ BitVec 32) (_ BitVec 64))) (size!31903 (_ BitVec 32))) )
))
(declare-datatypes ((array!65184 0))(
  ( (array!65185 (arr!31376 (Array (_ BitVec 32) ValueCell!11573)) (size!31904 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5740 0))(
  ( (LongMapFixedSize!5741 (defaultEntry!6248 Int) (mask!30124 (_ BitVec 32)) (extraKeys!5978 (_ BitVec 32)) (zeroValue!6082 V!37611) (minValue!6084 V!37611) (_size!2925 (_ BitVec 32)) (_keys!11431 array!65182) (_values!6271 array!65184) (_vacant!2925 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5740)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035213 (= res!691333 (validMask!0 (mask!30124 thiss!1427)))))

(declare-fun res!691334 () Bool)

(assert (=> start!90530 (=> (not res!691334) (not e!585359))))

(declare-fun valid!2116 (LongMapFixedSize!5740) Bool)

(assert (=> start!90530 (= res!691334 (valid!2116 thiss!1427))))

(assert (=> start!90530 e!585359))

(declare-fun e!585355 () Bool)

(assert (=> start!90530 e!585355))

(assert (=> start!90530 true))

(declare-fun b!1035214 () Bool)

(declare-fun e!585360 () Bool)

(declare-fun tp_is_empty!24553 () Bool)

(assert (=> b!1035214 (= e!585360 tp_is_empty!24553)))

(declare-fun mapNonEmpty!38336 () Bool)

(declare-fun mapRes!38336 () Bool)

(declare-fun tp!73624 () Bool)

(declare-fun e!585358 () Bool)

(assert (=> mapNonEmpty!38336 (= mapRes!38336 (and tp!73624 e!585358))))

(declare-fun mapRest!38336 () (Array (_ BitVec 32) ValueCell!11573))

(declare-fun mapKey!38336 () (_ BitVec 32))

(declare-fun mapValue!38336 () ValueCell!11573)

(assert (=> mapNonEmpty!38336 (= (arr!31376 (_values!6271 thiss!1427)) (store mapRest!38336 mapKey!38336 mapValue!38336))))

(declare-fun b!1035215 () Bool)

(declare-fun e!585356 () Bool)

(assert (=> b!1035215 (= e!585356 (and e!585360 mapRes!38336))))

(declare-fun condMapEmpty!38336 () Bool)

(declare-fun mapDefault!38336 () ValueCell!11573)

