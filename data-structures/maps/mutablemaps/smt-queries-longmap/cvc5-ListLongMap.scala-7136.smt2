; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90592 () Bool)

(assert start!90592)

(declare-fun b!1035707 () Bool)

(declare-fun b_free!20869 () Bool)

(declare-fun b_next!20869 () Bool)

(assert (=> b!1035707 (= b_free!20869 (not b_next!20869))))

(declare-fun tp!73739 () Bool)

(declare-fun b_and!33387 () Bool)

(assert (=> b!1035707 (= tp!73739 b_and!33387)))

(declare-fun mapNonEmpty!38397 () Bool)

(declare-fun mapRes!38397 () Bool)

(declare-fun tp!73738 () Bool)

(declare-fun e!585741 () Bool)

(assert (=> mapNonEmpty!38397 (= mapRes!38397 (and tp!73738 e!585741))))

(declare-datatypes ((V!37659 0))(
  ( (V!37660 (val!12345 Int)) )
))
(declare-datatypes ((ValueCell!11591 0))(
  ( (ValueCellFull!11591 (v!14926 V!37659)) (EmptyCell!11591) )
))
(declare-fun mapValue!38397 () ValueCell!11591)

(declare-fun mapKey!38397 () (_ BitVec 32))

(declare-fun mapRest!38397 () (Array (_ BitVec 32) ValueCell!11591))

(declare-datatypes ((array!65258 0))(
  ( (array!65259 (arr!31411 (Array (_ BitVec 32) (_ BitVec 64))) (size!31940 (_ BitVec 32))) )
))
(declare-datatypes ((array!65260 0))(
  ( (array!65261 (arr!31412 (Array (_ BitVec 32) ValueCell!11591)) (size!31941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5776 0))(
  ( (LongMapFixedSize!5777 (defaultEntry!6266 Int) (mask!30158 (_ BitVec 32)) (extraKeys!5996 (_ BitVec 32)) (zeroValue!6100 V!37659) (minValue!6102 V!37659) (_size!2943 (_ BitVec 32)) (_keys!11451 array!65258) (_values!6289 array!65260) (_vacant!2943 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5776)

(assert (=> mapNonEmpty!38397 (= (arr!31412 (_values!6289 thiss!1427)) (store mapRest!38397 mapKey!38397 mapValue!38397))))

(declare-fun b!1035704 () Bool)

(declare-fun tp_is_empty!24589 () Bool)

(assert (=> b!1035704 (= e!585741 tp_is_empty!24589)))

(declare-fun b!1035705 () Bool)

(declare-fun res!691561 () Bool)

(declare-fun e!585742 () Bool)

(assert (=> b!1035705 (=> (not res!691561) (not e!585742))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035705 (= res!691561 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035706 () Bool)

(declare-fun res!691560 () Bool)

(assert (=> b!1035706 (=> (not res!691560) (not e!585742))))

(assert (=> b!1035706 (= res!691560 (and (= (size!31941 (_values!6289 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30158 thiss!1427))) (= (size!31940 (_keys!11451 thiss!1427)) (size!31941 (_values!6289 thiss!1427))) (bvsge (mask!30158 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5996 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5996 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5996 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5996 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5996 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5996 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5996 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!585740 () Bool)

(declare-fun e!585739 () Bool)

(declare-fun array_inv!24125 (array!65258) Bool)

(declare-fun array_inv!24126 (array!65260) Bool)

(assert (=> b!1035707 (= e!585739 (and tp!73739 tp_is_empty!24589 (array_inv!24125 (_keys!11451 thiss!1427)) (array_inv!24126 (_values!6289 thiss!1427)) e!585740))))

(declare-fun b!1035708 () Bool)

(declare-fun res!691559 () Bool)

(assert (=> b!1035708 (=> (not res!691559) (not e!585742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035708 (= res!691559 (validMask!0 (mask!30158 thiss!1427)))))

(declare-fun b!1035709 () Bool)

(declare-datatypes ((List!22031 0))(
  ( (Nil!22028) (Cons!22027 (h!23229 (_ BitVec 64)) (t!31241 List!22031)) )
))
(declare-fun arrayNoDuplicates!0 (array!65258 (_ BitVec 32) List!22031) Bool)

(assert (=> b!1035709 (= e!585742 (not (arrayNoDuplicates!0 (_keys!11451 thiss!1427) #b00000000000000000000000000000000 Nil!22028)))))

(declare-fun mapIsEmpty!38397 () Bool)

(assert (=> mapIsEmpty!38397 mapRes!38397))

(declare-fun b!1035710 () Bool)

(declare-fun e!585738 () Bool)

(assert (=> b!1035710 (= e!585740 (and e!585738 mapRes!38397))))

(declare-fun condMapEmpty!38397 () Bool)

(declare-fun mapDefault!38397 () ValueCell!11591)

