; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90512 () Bool)

(assert start!90512)

(declare-fun b!1035128 () Bool)

(declare-fun b_free!20831 () Bool)

(declare-fun b_next!20831 () Bool)

(assert (=> b!1035128 (= b_free!20831 (not b_next!20831))))

(declare-fun tp!73614 () Bool)

(declare-fun b_and!33349 () Bool)

(assert (=> b!1035128 (= tp!73614 b_and!33349)))

(declare-fun b!1035123 () Bool)

(declare-fun e!585297 () Bool)

(declare-datatypes ((V!37607 0))(
  ( (V!37608 (val!12326 Int)) )
))
(declare-datatypes ((ValueCell!11572 0))(
  ( (ValueCellFull!11572 (v!14907 V!37607)) (EmptyCell!11572) )
))
(declare-datatypes ((array!65176 0))(
  ( (array!65177 (arr!31373 (Array (_ BitVec 32) (_ BitVec 64))) (size!31900 (_ BitVec 32))) )
))
(declare-datatypes ((array!65178 0))(
  ( (array!65179 (arr!31374 (Array (_ BitVec 32) ValueCell!11572)) (size!31901 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5738 0))(
  ( (LongMapFixedSize!5739 (defaultEntry!6247 Int) (mask!30119 (_ BitVec 32)) (extraKeys!5977 (_ BitVec 32)) (zeroValue!6081 V!37607) (minValue!6083 V!37607) (_size!2924 (_ BitVec 32)) (_keys!11429 array!65176) (_values!6270 array!65178) (_vacant!2924 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5738)

(assert (=> b!1035123 (= e!585297 (and (= (size!31901 (_values!6270 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30119 thiss!1427))) (= (size!31900 (_keys!11429 thiss!1427)) (size!31901 (_values!6270 thiss!1427))) (bvsge (mask!30119 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5977 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1035124 () Bool)

(declare-fun e!585296 () Bool)

(declare-fun e!585300 () Bool)

(declare-fun mapRes!38329 () Bool)

(assert (=> b!1035124 (= e!585296 (and e!585300 mapRes!38329))))

(declare-fun condMapEmpty!38329 () Bool)

(declare-fun mapDefault!38329 () ValueCell!11572)

