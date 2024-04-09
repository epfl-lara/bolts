; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3216 () Bool)

(assert start!3216)

(declare-fun b!19578 () Bool)

(declare-fun b_free!685 () Bool)

(declare-fun b_next!685 () Bool)

(assert (=> b!19578 (= b_free!685 (not b_next!685))))

(declare-fun tp!3270 () Bool)

(declare-fun b_and!1347 () Bool)

(assert (=> b!19578 (= tp!3270 b_and!1347)))

(declare-fun b!19572 () Bool)

(declare-fun e!12679 () Bool)

(declare-fun e!12676 () Bool)

(declare-fun mapRes!883 () Bool)

(assert (=> b!19572 (= e!12679 (and e!12676 mapRes!883))))

(declare-fun condMapEmpty!883 () Bool)

(declare-datatypes ((V!1091 0))(
  ( (V!1092 (val!501 Int)) )
))
(declare-datatypes ((ValueCell!275 0))(
  ( (ValueCellFull!275 (v!1518 V!1091)) (EmptyCell!275) )
))
(declare-datatypes ((array!1107 0))(
  ( (array!1108 (arr!529 (Array (_ BitVec 32) ValueCell!275)) (size!622 (_ BitVec 32))) )
))
(declare-datatypes ((array!1109 0))(
  ( (array!1110 (arr!530 (Array (_ BitVec 32) (_ BitVec 64))) (size!623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!136 0))(
  ( (LongMapFixedSize!137 (defaultEntry!1687 Int) (mask!4641 (_ BitVec 32)) (extraKeys!1597 (_ BitVec 32)) (zeroValue!1621 V!1091) (minValue!1621 V!1091) (_size!102 (_ BitVec 32)) (_keys!3115 array!1109) (_values!1683 array!1107) (_vacant!102 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!136 0))(
  ( (Cell!137 (v!1519 LongMapFixedSize!136)) )
))
(declare-datatypes ((LongMap!136 0))(
  ( (LongMap!137 (underlying!79 Cell!136)) )
))
(declare-fun thiss!938 () LongMap!136)

(declare-fun mapDefault!883 () ValueCell!275)

