; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3040 () Bool)

(assert start!3040)

(declare-fun b!18193 () Bool)

(declare-fun b_free!649 () Bool)

(declare-fun b_next!649 () Bool)

(assert (=> b!18193 (= b_free!649 (not b_next!649))))

(declare-fun tp!3137 () Bool)

(declare-fun b_and!1299 () Bool)

(assert (=> b!18193 (= tp!3137 b_and!1299)))

(declare-fun b!18187 () Bool)

(declare-fun e!11672 () Bool)

(declare-fun e!11666 () Bool)

(declare-fun mapRes!804 () Bool)

(assert (=> b!18187 (= e!11672 (and e!11666 mapRes!804))))

(declare-fun condMapEmpty!804 () Bool)

(declare-datatypes ((V!1043 0))(
  ( (V!1044 (val!483 Int)) )
))
(declare-datatypes ((ValueCell!257 0))(
  ( (ValueCellFull!257 (v!1470 V!1043)) (EmptyCell!257) )
))
(declare-datatypes ((array!1023 0))(
  ( (array!1024 (arr!493 (Array (_ BitVec 32) ValueCell!257)) (size!583 (_ BitVec 32))) )
))
(declare-datatypes ((array!1025 0))(
  ( (array!1026 (arr!494 (Array (_ BitVec 32) (_ BitVec 64))) (size!584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!100 0))(
  ( (LongMapFixedSize!101 (defaultEntry!1661 Int) (mask!4594 (_ BitVec 32)) (extraKeys!1574 (_ BitVec 32)) (zeroValue!1597 V!1043) (minValue!1597 V!1043) (_size!82 (_ BitVec 32)) (_keys!3086 array!1025) (_values!1658 array!1023) (_vacant!82 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!100 0))(
  ( (Cell!101 (v!1471 LongMapFixedSize!100)) )
))
(declare-datatypes ((LongMap!100 0))(
  ( (LongMap!101 (underlying!61 Cell!100)) )
))
(declare-fun thiss!848 () LongMap!100)

(declare-fun mapDefault!804 () ValueCell!257)

