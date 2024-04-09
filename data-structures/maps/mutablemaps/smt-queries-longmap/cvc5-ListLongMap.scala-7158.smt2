; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91150 () Bool)

(assert start!91150)

(declare-fun b!1040075 () Bool)

(declare-fun b_free!21001 () Bool)

(declare-fun b_next!21001 () Bool)

(assert (=> b!1040075 (= b_free!21001 (not b_next!21001))))

(declare-fun tp!74196 () Bool)

(declare-fun b_and!33551 () Bool)

(assert (=> b!1040075 (= tp!74196 b_and!33551)))

(declare-fun b!1040074 () Bool)

(declare-fun e!588821 () Bool)

(declare-fun e!588827 () Bool)

(declare-fun mapRes!38656 () Bool)

(assert (=> b!1040074 (= e!588821 (and e!588827 mapRes!38656))))

(declare-fun condMapEmpty!38656 () Bool)

(declare-datatypes ((V!37835 0))(
  ( (V!37836 (val!12411 Int)) )
))
(declare-datatypes ((ValueCell!11657 0))(
  ( (ValueCellFull!11657 (v!14999 V!37835)) (EmptyCell!11657) )
))
(declare-datatypes ((array!65560 0))(
  ( (array!65561 (arr!31543 (Array (_ BitVec 32) (_ BitVec 64))) (size!32075 (_ BitVec 32))) )
))
(declare-datatypes ((array!65562 0))(
  ( (array!65563 (arr!31544 (Array (_ BitVec 32) ValueCell!11657)) (size!32076 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5908 0))(
  ( (LongMapFixedSize!5909 (defaultEntry!6336 Int) (mask!30317 (_ BitVec 32)) (extraKeys!6064 (_ BitVec 32)) (zeroValue!6170 V!37835) (minValue!6170 V!37835) (_size!3009 (_ BitVec 32)) (_keys!11551 array!65560) (_values!6359 array!65562) (_vacant!3009 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5908)

(declare-fun mapDefault!38656 () ValueCell!11657)

