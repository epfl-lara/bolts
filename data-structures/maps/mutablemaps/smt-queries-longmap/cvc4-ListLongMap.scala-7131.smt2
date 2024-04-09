; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90556 () Bool)

(assert start!90556)

(declare-fun b!1035392 () Bool)

(declare-fun b_free!20843 () Bool)

(declare-fun b_next!20843 () Bool)

(assert (=> b!1035392 (= b_free!20843 (not b_next!20843))))

(declare-fun tp!73657 () Bool)

(declare-fun b_and!33361 () Bool)

(assert (=> b!1035392 (= tp!73657 b_and!33361)))

(declare-fun res!691416 () Bool)

(declare-fun e!585491 () Bool)

(assert (=> start!90556 (=> (not res!691416) (not e!585491))))

(declare-datatypes ((V!37623 0))(
  ( (V!37624 (val!12332 Int)) )
))
(declare-datatypes ((ValueCell!11578 0))(
  ( (ValueCellFull!11578 (v!14913 V!37623)) (EmptyCell!11578) )
))
(declare-datatypes ((array!65204 0))(
  ( (array!65205 (arr!31385 (Array (_ BitVec 32) (_ BitVec 64))) (size!31914 (_ BitVec 32))) )
))
(declare-datatypes ((array!65206 0))(
  ( (array!65207 (arr!31386 (Array (_ BitVec 32) ValueCell!11578)) (size!31915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5750 0))(
  ( (LongMapFixedSize!5751 (defaultEntry!6253 Int) (mask!30133 (_ BitVec 32)) (extraKeys!5983 (_ BitVec 32)) (zeroValue!6087 V!37623) (minValue!6089 V!37623) (_size!2930 (_ BitVec 32)) (_keys!11437 array!65204) (_values!6276 array!65206) (_vacant!2930 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5750)

(declare-fun valid!2121 (LongMapFixedSize!5750) Bool)

(assert (=> start!90556 (= res!691416 (valid!2121 thiss!1427))))

(assert (=> start!90556 e!585491))

(declare-fun e!585489 () Bool)

(assert (=> start!90556 e!585489))

(assert (=> start!90556 true))

(declare-fun b!1035388 () Bool)

(assert (=> b!1035388 (= e!585491 (and (= (size!31915 (_values!6276 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30133 thiss!1427))) (= (size!31914 (_keys!11437 thiss!1427)) (size!31915 (_values!6276 thiss!1427))) (bvsge (mask!30133 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5983 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5983 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5983 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1035389 () Bool)

(declare-fun res!691414 () Bool)

(assert (=> b!1035389 (=> (not res!691414) (not e!585491))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1035389 (= res!691414 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1035390 () Bool)

(declare-fun e!585488 () Bool)

(declare-fun e!585490 () Bool)

(declare-fun mapRes!38355 () Bool)

(assert (=> b!1035390 (= e!585488 (and e!585490 mapRes!38355))))

(declare-fun condMapEmpty!38355 () Bool)

(declare-fun mapDefault!38355 () ValueCell!11578)

