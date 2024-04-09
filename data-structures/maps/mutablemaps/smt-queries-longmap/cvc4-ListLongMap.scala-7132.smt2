; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90562 () Bool)

(assert start!90562)

(declare-fun b!1035451 () Bool)

(declare-fun b_free!20849 () Bool)

(declare-fun b_next!20849 () Bool)

(assert (=> b!1035451 (= b_free!20849 (not b_next!20849))))

(declare-fun tp!73675 () Bool)

(declare-fun b_and!33367 () Bool)

(assert (=> b!1035451 (= tp!73675 b_and!33367)))

(declare-fun tp_is_empty!24569 () Bool)

(declare-datatypes ((V!37631 0))(
  ( (V!37632 (val!12335 Int)) )
))
(declare-datatypes ((ValueCell!11581 0))(
  ( (ValueCellFull!11581 (v!14916 V!37631)) (EmptyCell!11581) )
))
(declare-datatypes ((array!65216 0))(
  ( (array!65217 (arr!31391 (Array (_ BitVec 32) (_ BitVec 64))) (size!31920 (_ BitVec 32))) )
))
(declare-datatypes ((array!65218 0))(
  ( (array!65219 (arr!31392 (Array (_ BitVec 32) ValueCell!11581)) (size!31921 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5756 0))(
  ( (LongMapFixedSize!5757 (defaultEntry!6256 Int) (mask!30138 (_ BitVec 32)) (extraKeys!5986 (_ BitVec 32)) (zeroValue!6090 V!37631) (minValue!6092 V!37631) (_size!2933 (_ BitVec 32)) (_keys!11440 array!65216) (_values!6279 array!65218) (_vacant!2933 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5756)

(declare-fun e!585544 () Bool)

(declare-fun e!585543 () Bool)

(declare-fun array_inv!24113 (array!65216) Bool)

(declare-fun array_inv!24114 (array!65218) Bool)

(assert (=> b!1035451 (= e!585543 (and tp!73675 tp_is_empty!24569 (array_inv!24113 (_keys!11440 thiss!1427)) (array_inv!24114 (_values!6279 thiss!1427)) e!585544))))

(declare-fun mapNonEmpty!38364 () Bool)

(declare-fun mapRes!38364 () Bool)

(declare-fun tp!73676 () Bool)

(declare-fun e!585540 () Bool)

(assert (=> mapNonEmpty!38364 (= mapRes!38364 (and tp!73676 e!585540))))

(declare-fun mapValue!38364 () ValueCell!11581)

(declare-fun mapKey!38364 () (_ BitVec 32))

(declare-fun mapRest!38364 () (Array (_ BitVec 32) ValueCell!11581))

(assert (=> mapNonEmpty!38364 (= (arr!31392 (_values!6279 thiss!1427)) (store mapRest!38364 mapKey!38364 mapValue!38364))))

(declare-fun b!1035452 () Bool)

(declare-fun res!691443 () Bool)

(declare-fun e!585545 () Bool)

(assert (=> b!1035452 (=> (not res!691443) (not e!585545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1035452 (= res!691443 (validMask!0 (mask!30138 thiss!1427)))))

(declare-fun res!691442 () Bool)

(assert (=> start!90562 (=> (not res!691442) (not e!585545))))

(declare-fun valid!2123 (LongMapFixedSize!5756) Bool)

(assert (=> start!90562 (= res!691442 (valid!2123 thiss!1427))))

(assert (=> start!90562 e!585545))

(assert (=> start!90562 e!585543))

(assert (=> start!90562 true))

(declare-fun b!1035453 () Bool)

(declare-fun e!585541 () Bool)

(assert (=> b!1035453 (= e!585541 tp_is_empty!24569)))

(declare-fun mapIsEmpty!38364 () Bool)

(assert (=> mapIsEmpty!38364 mapRes!38364))

(declare-fun b!1035454 () Bool)

(assert (=> b!1035454 (= e!585545 (and (= (size!31921 (_values!6279 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30138 thiss!1427))) (= (size!31920 (_keys!11440 thiss!1427)) (size!31921 (_values!6279 thiss!1427))) (bvsge (mask!30138 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5986 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5986 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5986 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsgt (bvand (extraKeys!5986 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011)))))

(declare-fun b!1035455 () Bool)

(assert (=> b!1035455 (= e!585544 (and e!585541 mapRes!38364))))

(declare-fun condMapEmpty!38364 () Bool)

(declare-fun mapDefault!38364 () ValueCell!11581)

