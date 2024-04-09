; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90780 () Bool)

(assert start!90780)

(declare-fun b!1037501 () Bool)

(declare-fun b_free!20909 () Bool)

(declare-fun b_next!20909 () Bool)

(assert (=> b!1037501 (= b_free!20909 (not b_next!20909))))

(declare-fun tp!73877 () Bool)

(declare-fun b_and!33459 () Bool)

(assert (=> b!1037501 (= tp!73877 b_and!33459)))

(declare-fun mapNonEmpty!38475 () Bool)

(declare-fun mapRes!38475 () Bool)

(declare-fun tp!73876 () Bool)

(declare-fun e!586962 () Bool)

(assert (=> mapNonEmpty!38475 (= mapRes!38475 (and tp!73876 e!586962))))

(declare-datatypes ((V!37711 0))(
  ( (V!37712 (val!12365 Int)) )
))
(declare-datatypes ((ValueCell!11611 0))(
  ( (ValueCellFull!11611 (v!14949 V!37711)) (EmptyCell!11611) )
))
(declare-fun mapRest!38475 () (Array (_ BitVec 32) ValueCell!11611))

(declare-fun mapValue!38475 () ValueCell!11611)

(declare-datatypes ((array!65348 0))(
  ( (array!65349 (arr!31451 (Array (_ BitVec 32) (_ BitVec 64))) (size!31982 (_ BitVec 32))) )
))
(declare-datatypes ((array!65350 0))(
  ( (array!65351 (arr!31452 (Array (_ BitVec 32) ValueCell!11611)) (size!31983 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5816 0))(
  ( (LongMapFixedSize!5817 (defaultEntry!6290 Int) (mask!30207 (_ BitVec 32)) (extraKeys!6018 (_ BitVec 32)) (zeroValue!6124 V!37711) (minValue!6124 V!37711) (_size!2963 (_ BitVec 32)) (_keys!11484 array!65348) (_values!6313 array!65350) (_vacant!2963 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5816)

(declare-fun mapKey!38475 () (_ BitVec 32))

(assert (=> mapNonEmpty!38475 (= (arr!31452 (_values!6313 thiss!1427)) (store mapRest!38475 mapKey!38475 mapValue!38475))))

(declare-fun b!1037497 () Bool)

(declare-fun e!586963 () Bool)

(declare-fun e!586959 () Bool)

(assert (=> b!1037497 (= e!586963 (and e!586959 mapRes!38475))))

(declare-fun condMapEmpty!38475 () Bool)

(declare-fun mapDefault!38475 () ValueCell!11611)

