; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3220 () Bool)

(assert start!3220)

(declare-fun b!19623 () Bool)

(declare-fun b_free!689 () Bool)

(declare-fun b_next!689 () Bool)

(assert (=> b!19623 (= b_free!689 (not b_next!689))))

(declare-fun tp!3282 () Bool)

(declare-fun b_and!1351 () Bool)

(assert (=> b!19623 (= tp!3282 b_and!1351)))

(declare-fun b!19620 () Bool)

(declare-fun e!12735 () Bool)

(declare-fun e!12729 () Bool)

(assert (=> b!19620 (= e!12735 e!12729)))

(declare-fun b!19621 () Bool)

(declare-fun e!12730 () Bool)

(declare-fun e!12734 () Bool)

(declare-fun mapRes!889 () Bool)

(assert (=> b!19621 (= e!12730 (and e!12734 mapRes!889))))

(declare-fun condMapEmpty!889 () Bool)

(declare-datatypes ((V!1095 0))(
  ( (V!1096 (val!503 Int)) )
))
(declare-datatypes ((ValueCell!277 0))(
  ( (ValueCellFull!277 (v!1522 V!1095)) (EmptyCell!277) )
))
(declare-datatypes ((array!1115 0))(
  ( (array!1116 (arr!533 (Array (_ BitVec 32) ValueCell!277)) (size!626 (_ BitVec 32))) )
))
(declare-datatypes ((array!1117 0))(
  ( (array!1118 (arr!534 (Array (_ BitVec 32) (_ BitVec 64))) (size!627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!140 0))(
  ( (LongMapFixedSize!141 (defaultEntry!1689 Int) (mask!4643 (_ BitVec 32)) (extraKeys!1599 (_ BitVec 32)) (zeroValue!1623 V!1095) (minValue!1623 V!1095) (_size!104 (_ BitVec 32)) (_keys!3117 array!1117) (_values!1685 array!1115) (_vacant!104 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!140 0))(
  ( (Cell!141 (v!1523 LongMapFixedSize!140)) )
))
(declare-datatypes ((LongMap!140 0))(
  ( (LongMap!141 (underlying!81 Cell!140)) )
))
(declare-fun thiss!938 () LongMap!140)

(declare-fun mapDefault!889 () ValueCell!277)

