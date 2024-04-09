; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90300 () Bool)

(assert start!90300)

(declare-fun b!1033271 () Bool)

(declare-fun b_free!20783 () Bool)

(declare-fun b_next!20783 () Bool)

(assert (=> b!1033271 (= b_free!20783 (not b_next!20783))))

(declare-fun tp!73443 () Bool)

(declare-fun b_and!33269 () Bool)

(assert (=> b!1033271 (= tp!73443 b_and!33269)))

(declare-fun b!1033269 () Bool)

(declare-fun res!690503 () Bool)

(declare-fun e!584057 () Bool)

(assert (=> b!1033269 (=> (not res!690503) (not e!584057))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033269 (= res!690503 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033270 () Bool)

(declare-fun e!584052 () Bool)

(declare-fun tp_is_empty!24503 () Bool)

(assert (=> b!1033270 (= e!584052 tp_is_empty!24503)))

(declare-fun mapNonEmpty!38231 () Bool)

(declare-fun mapRes!38231 () Bool)

(declare-fun tp!73444 () Bool)

(declare-fun e!584053 () Bool)

(assert (=> mapNonEmpty!38231 (= mapRes!38231 (and tp!73444 e!584053))))

(declare-datatypes ((V!37543 0))(
  ( (V!37544 (val!12302 Int)) )
))
(declare-datatypes ((ValueCell!11548 0))(
  ( (ValueCellFull!11548 (v!14880 V!37543)) (EmptyCell!11548) )
))
(declare-fun mapRest!38231 () (Array (_ BitVec 32) ValueCell!11548))

(declare-fun mapValue!38231 () ValueCell!11548)

(declare-fun mapKey!38231 () (_ BitVec 32))

(declare-datatypes ((array!65066 0))(
  ( (array!65067 (arr!31325 (Array (_ BitVec 32) (_ BitVec 64))) (size!31848 (_ BitVec 32))) )
))
(declare-datatypes ((array!65068 0))(
  ( (array!65069 (arr!31326 (Array (_ BitVec 32) ValueCell!11548)) (size!31849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5690 0))(
  ( (LongMapFixedSize!5691 (defaultEntry!6219 Int) (mask!30061 (_ BitVec 32)) (extraKeys!5951 (_ BitVec 32)) (zeroValue!6055 V!37543) (minValue!6055 V!37543) (_size!2900 (_ BitVec 32)) (_keys!11394 array!65066) (_values!6242 array!65068) (_vacant!2900 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5690)

(assert (=> mapNonEmpty!38231 (= (arr!31326 (_values!6242 thiss!1427)) (store mapRest!38231 mapKey!38231 mapValue!38231))))

(declare-fun e!584056 () Bool)

(declare-fun e!584054 () Bool)

(declare-fun array_inv!24071 (array!65066) Bool)

(declare-fun array_inv!24072 (array!65068) Bool)

(assert (=> b!1033271 (= e!584054 (and tp!73443 tp_is_empty!24503 (array_inv!24071 (_keys!11394 thiss!1427)) (array_inv!24072 (_values!6242 thiss!1427)) e!584056))))

(declare-fun b!1033272 () Bool)

(assert (=> b!1033272 (= e!584053 tp_is_empty!24503)))

(declare-fun b!1033273 () Bool)

(assert (=> b!1033273 (= e!584057 (and (= (size!31849 (_values!6242 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30061 thiss!1427))) (= (size!31848 (_keys!11394 thiss!1427)) (size!31849 (_values!6242 thiss!1427))) (bvsge (mask!30061 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5951 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5951 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5951 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5951 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5951 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5951 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (not (= (bvand (bvand (extraKeys!5951 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1033274 () Bool)

(assert (=> b!1033274 (= e!584056 (and e!584052 mapRes!38231))))

(declare-fun condMapEmpty!38231 () Bool)

(declare-fun mapDefault!38231 () ValueCell!11548)

