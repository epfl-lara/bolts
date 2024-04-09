; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90472 () Bool)

(assert start!90472)

(declare-fun b!1034868 () Bool)

(declare-fun b_free!20815 () Bool)

(declare-fun b_next!20815 () Bool)

(assert (=> b!1034868 (= b_free!20815 (not b_next!20815))))

(declare-fun tp!73558 () Bool)

(declare-fun b_and!33333 () Bool)

(assert (=> b!1034868 (= tp!73558 b_and!33333)))

(declare-fun mapNonEmpty!38298 () Bool)

(declare-fun mapRes!38298 () Bool)

(declare-fun tp!73559 () Bool)

(declare-fun e!585107 () Bool)

(assert (=> mapNonEmpty!38298 (= mapRes!38298 (and tp!73559 e!585107))))

(declare-datatypes ((V!37587 0))(
  ( (V!37588 (val!12318 Int)) )
))
(declare-datatypes ((ValueCell!11564 0))(
  ( (ValueCellFull!11564 (v!14899 V!37587)) (EmptyCell!11564) )
))
(declare-fun mapValue!38298 () ValueCell!11564)

(declare-datatypes ((array!65140 0))(
  ( (array!65141 (arr!31357 (Array (_ BitVec 32) (_ BitVec 64))) (size!31883 (_ BitVec 32))) )
))
(declare-datatypes ((array!65142 0))(
  ( (array!65143 (arr!31358 (Array (_ BitVec 32) ValueCell!11564)) (size!31884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5722 0))(
  ( (LongMapFixedSize!5723 (defaultEntry!6239 Int) (mask!30104 (_ BitVec 32)) (extraKeys!5969 (_ BitVec 32)) (zeroValue!6073 V!37587) (minValue!6075 V!37587) (_size!2916 (_ BitVec 32)) (_keys!11420 array!65140) (_values!6262 array!65142) (_vacant!2916 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5722)

(declare-fun mapRest!38298 () (Array (_ BitVec 32) ValueCell!11564))

(declare-fun mapKey!38298 () (_ BitVec 32))

(assert (=> mapNonEmpty!38298 (= (arr!31358 (_values!6262 thiss!1427)) (store mapRest!38298 mapKey!38298 mapValue!38298))))

(declare-fun b!1034867 () Bool)

(declare-fun e!585102 () Bool)

(assert (=> b!1034867 (= e!585102 (and (= (size!31884 (_values!6262 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30104 thiss!1427))) (not (= (size!31883 (_keys!11420 thiss!1427)) (size!31884 (_values!6262 thiss!1427))))))))

(declare-fun e!585103 () Bool)

(declare-fun e!585104 () Bool)

(declare-fun tp_is_empty!24535 () Bool)

(declare-fun array_inv!24089 (array!65140) Bool)

(declare-fun array_inv!24090 (array!65142) Bool)

(assert (=> b!1034868 (= e!585103 (and tp!73558 tp_is_empty!24535 (array_inv!24089 (_keys!11420 thiss!1427)) (array_inv!24090 (_values!6262 thiss!1427)) e!585104))))

(declare-fun b!1034869 () Bool)

(assert (=> b!1034869 (= e!585107 tp_is_empty!24535)))

(declare-fun mapIsEmpty!38298 () Bool)

(assert (=> mapIsEmpty!38298 mapRes!38298))

(declare-fun res!691173 () Bool)

(assert (=> start!90472 (=> (not res!691173) (not e!585102))))

(declare-fun valid!2111 (LongMapFixedSize!5722) Bool)

(assert (=> start!90472 (= res!691173 (valid!2111 thiss!1427))))

(assert (=> start!90472 e!585102))

(assert (=> start!90472 e!585103))

(assert (=> start!90472 true))

(declare-fun b!1034870 () Bool)

(declare-fun res!691172 () Bool)

(assert (=> b!1034870 (=> (not res!691172) (not e!585102))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1034870 (= res!691172 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034871 () Bool)

(declare-fun e!585105 () Bool)

(assert (=> b!1034871 (= e!585104 (and e!585105 mapRes!38298))))

(declare-fun condMapEmpty!38298 () Bool)

(declare-fun mapDefault!38298 () ValueCell!11564)

