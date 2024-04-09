; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90574 () Bool)

(assert start!90574)

(declare-fun b!1035581 () Bool)

(declare-fun b_free!20861 () Bool)

(declare-fun b_next!20861 () Bool)

(assert (=> b!1035581 (= b_free!20861 (not b_next!20861))))

(declare-fun tp!73712 () Bool)

(declare-fun b_and!33379 () Bool)

(assert (=> b!1035581 (= tp!73712 b_and!33379)))

(declare-fun b!1035577 () Bool)

(declare-fun e!585648 () Bool)

(declare-fun e!585651 () Bool)

(declare-fun mapRes!38382 () Bool)

(assert (=> b!1035577 (= e!585648 (and e!585651 mapRes!38382))))

(declare-fun condMapEmpty!38382 () Bool)

(declare-datatypes ((V!37647 0))(
  ( (V!37648 (val!12341 Int)) )
))
(declare-datatypes ((ValueCell!11587 0))(
  ( (ValueCellFull!11587 (v!14922 V!37647)) (EmptyCell!11587) )
))
(declare-datatypes ((array!65240 0))(
  ( (array!65241 (arr!31403 (Array (_ BitVec 32) (_ BitVec 64))) (size!31932 (_ BitVec 32))) )
))
(declare-datatypes ((array!65242 0))(
  ( (array!65243 (arr!31404 (Array (_ BitVec 32) ValueCell!11587)) (size!31933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5768 0))(
  ( (LongMapFixedSize!5769 (defaultEntry!6262 Int) (mask!30148 (_ BitVec 32)) (extraKeys!5992 (_ BitVec 32)) (zeroValue!6096 V!37647) (minValue!6098 V!37647) (_size!2939 (_ BitVec 32)) (_keys!11446 array!65240) (_values!6285 array!65242) (_vacant!2939 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5768)

(declare-fun mapDefault!38382 () ValueCell!11587)

