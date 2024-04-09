; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90224 () Bool)

(assert start!90224)

(declare-fun b!1032734 () Bool)

(declare-fun b_free!20747 () Bool)

(declare-fun b_next!20747 () Bool)

(assert (=> b!1032734 (= b_free!20747 (not b_next!20747))))

(declare-fun tp!73324 () Bool)

(declare-fun b_and!33233 () Bool)

(assert (=> b!1032734 (= tp!73324 b_and!33233)))

(declare-fun e!583642 () Bool)

(declare-fun e!583641 () Bool)

(declare-fun tp_is_empty!24467 () Bool)

(declare-datatypes ((V!37495 0))(
  ( (V!37496 (val!12284 Int)) )
))
(declare-datatypes ((ValueCell!11530 0))(
  ( (ValueCellFull!11530 (v!14862 V!37495)) (EmptyCell!11530) )
))
(declare-datatypes ((array!64988 0))(
  ( (array!64989 (arr!31289 (Array (_ BitVec 32) (_ BitVec 64))) (size!31810 (_ BitVec 32))) )
))
(declare-datatypes ((array!64990 0))(
  ( (array!64991 (arr!31290 (Array (_ BitVec 32) ValueCell!11530)) (size!31811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5654 0))(
  ( (LongMapFixedSize!5655 (defaultEntry!6201 Int) (mask!30026 (_ BitVec 32)) (extraKeys!5933 (_ BitVec 32)) (zeroValue!6037 V!37495) (minValue!6037 V!37495) (_size!2882 (_ BitVec 32)) (_keys!11374 array!64988) (_values!6224 array!64990) (_vacant!2882 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5654)

(declare-fun array_inv!24049 (array!64988) Bool)

(declare-fun array_inv!24050 (array!64990) Bool)

(assert (=> b!1032734 (= e!583642 (and tp!73324 tp_is_empty!24467 (array_inv!24049 (_keys!11374 thiss!1427)) (array_inv!24050 (_values!6224 thiss!1427)) e!583641))))

(declare-fun b!1032736 () Bool)

(declare-fun e!583640 () Bool)

(assert (=> b!1032736 (= e!583640 tp_is_empty!24467)))

(declare-fun mapNonEmpty!38166 () Bool)

(declare-fun mapRes!38166 () Bool)

(declare-fun tp!73325 () Bool)

(declare-fun e!583637 () Bool)

(assert (=> mapNonEmpty!38166 (= mapRes!38166 (and tp!73325 e!583637))))

(declare-fun mapKey!38166 () (_ BitVec 32))

(declare-fun mapValue!38166 () ValueCell!11530)

(declare-fun mapRest!38166 () (Array (_ BitVec 32) ValueCell!11530))

(assert (=> mapNonEmpty!38166 (= (arr!31290 (_values!6224 thiss!1427)) (store mapRest!38166 mapKey!38166 mapValue!38166))))

(declare-fun res!690259 () Bool)

(declare-fun e!583639 () Bool)

(assert (=> start!90224 (=> (not res!690259) (not e!583639))))

(declare-fun valid!2088 (LongMapFixedSize!5654) Bool)

(assert (=> start!90224 (= res!690259 (valid!2088 thiss!1427))))

(assert (=> start!90224 e!583639))

(assert (=> start!90224 e!583642))

(assert (=> start!90224 true))

(declare-fun b!1032735 () Bool)

(assert (=> b!1032735 (= e!583641 (and e!583640 mapRes!38166))))

(declare-fun condMapEmpty!38166 () Bool)

(declare-fun mapDefault!38166 () ValueCell!11530)

