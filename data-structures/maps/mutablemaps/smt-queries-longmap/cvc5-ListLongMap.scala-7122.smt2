; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90302 () Bool)

(assert start!90302)

(declare-fun b!1033299 () Bool)

(declare-fun b_free!20785 () Bool)

(declare-fun b_next!20785 () Bool)

(assert (=> b!1033299 (= b_free!20785 (not b_next!20785))))

(declare-fun tp!73449 () Bool)

(declare-fun b_and!33271 () Bool)

(assert (=> b!1033299 (= tp!73449 b_and!33271)))

(declare-fun b!1033292 () Bool)

(declare-fun res!690516 () Bool)

(declare-fun e!584071 () Bool)

(assert (=> b!1033292 (=> (not res!690516) (not e!584071))))

(declare-datatypes ((V!37547 0))(
  ( (V!37548 (val!12303 Int)) )
))
(declare-datatypes ((ValueCell!11549 0))(
  ( (ValueCellFull!11549 (v!14881 V!37547)) (EmptyCell!11549) )
))
(declare-datatypes ((array!65070 0))(
  ( (array!65071 (arr!31327 (Array (_ BitVec 32) (_ BitVec 64))) (size!31850 (_ BitVec 32))) )
))
(declare-datatypes ((array!65072 0))(
  ( (array!65073 (arr!31328 (Array (_ BitVec 32) ValueCell!11549)) (size!31851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5692 0))(
  ( (LongMapFixedSize!5693 (defaultEntry!6220 Int) (mask!30064 (_ BitVec 32)) (extraKeys!5952 (_ BitVec 32)) (zeroValue!6056 V!37547) (minValue!6056 V!37547) (_size!2901 (_ BitVec 32)) (_keys!11395 array!65070) (_values!6243 array!65072) (_vacant!2901 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5692)

(assert (=> b!1033292 (= res!690516 (and (= (size!31851 (_values!6243 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30064 thiss!1427))) (= (size!31850 (_keys!11395 thiss!1427)) (size!31851 (_values!6243 thiss!1427))) (bvsge (mask!30064 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5952 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5952 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5952 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5952 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5952 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5952 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5952 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38234 () Bool)

(declare-fun mapRes!38234 () Bool)

(assert (=> mapIsEmpty!38234 mapRes!38234))

(declare-fun b!1033294 () Bool)

(declare-fun res!690515 () Bool)

(assert (=> b!1033294 (=> (not res!690515) (not e!584071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033294 (= res!690515 (validMask!0 (mask!30064 thiss!1427)))))

(declare-fun b!1033295 () Bool)

(declare-fun e!584072 () Bool)

(declare-fun e!584073 () Bool)

(assert (=> b!1033295 (= e!584072 (and e!584073 mapRes!38234))))

(declare-fun condMapEmpty!38234 () Bool)

(declare-fun mapDefault!38234 () ValueCell!11549)

