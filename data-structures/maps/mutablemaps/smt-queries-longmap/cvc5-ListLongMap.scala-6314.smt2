; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81050 () Bool)

(assert start!81050)

(declare-fun b!948634 () Bool)

(declare-fun b_free!18205 () Bool)

(declare-fun b_next!18205 () Bool)

(assert (=> b!948634 (= b_free!18205 (not b_next!18205))))

(declare-fun tp!63195 () Bool)

(declare-fun b_and!29661 () Bool)

(assert (=> b!948634 (= tp!63195 b_and!29661)))

(declare-fun b!948632 () Bool)

(declare-fun res!636462 () Bool)

(declare-fun e!534059 () Bool)

(assert (=> b!948632 (=> (not res!636462) (not e!534059))))

(declare-datatypes ((V!32583 0))(
  ( (V!32584 (val!10407 Int)) )
))
(declare-datatypes ((ValueCell!9875 0))(
  ( (ValueCellFull!9875 (v!12945 V!32583)) (EmptyCell!9875) )
))
(declare-datatypes ((array!57456 0))(
  ( (array!57457 (arr!27629 (Array (_ BitVec 32) ValueCell!9875)) (size!28105 (_ BitVec 32))) )
))
(declare-datatypes ((array!57458 0))(
  ( (array!57459 (arr!27630 (Array (_ BitVec 32) (_ BitVec 64))) (size!28106 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4900 0))(
  ( (LongMapFixedSize!4901 (defaultEntry!5754 Int) (mask!27515 (_ BitVec 32)) (extraKeys!5486 (_ BitVec 32)) (zeroValue!5590 V!32583) (minValue!5590 V!32583) (_size!2505 (_ BitVec 32)) (_keys!10673 array!57458) (_values!5777 array!57456) (_vacant!2505 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4900)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!948632 (= res!636462 (validMask!0 (mask!27515 thiss!1141)))))

(declare-fun res!636463 () Bool)

(assert (=> start!81050 (=> (not res!636463) (not e!534059))))

(declare-fun valid!1842 (LongMapFixedSize!4900) Bool)

(assert (=> start!81050 (= res!636463 (valid!1842 thiss!1141))))

(assert (=> start!81050 e!534059))

(declare-fun e!534062 () Bool)

(assert (=> start!81050 e!534062))

(assert (=> start!81050 true))

(declare-fun b!948633 () Bool)

(declare-fun e!534060 () Bool)

(declare-fun e!534063 () Bool)

(declare-fun mapRes!32964 () Bool)

(assert (=> b!948633 (= e!534060 (and e!534063 mapRes!32964))))

(declare-fun condMapEmpty!32964 () Bool)

(declare-fun mapDefault!32964 () ValueCell!9875)

