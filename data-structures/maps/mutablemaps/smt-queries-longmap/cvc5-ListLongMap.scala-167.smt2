; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3200 () Bool)

(assert start!3200)

(declare-fun b!19495 () Bool)

(declare-fun b_free!679 () Bool)

(declare-fun b_next!679 () Bool)

(assert (=> b!19495 (= b_free!679 (not b_next!679))))

(declare-fun tp!3250 () Bool)

(declare-fun b_and!1341 () Bool)

(assert (=> b!19495 (= tp!3250 b_and!1341)))

(declare-fun b!19490 () Bool)

(declare-fun e!12590 () Bool)

(declare-fun tp_is_empty!943 () Bool)

(assert (=> b!19490 (= e!12590 tp_is_empty!943)))

(declare-fun b!19491 () Bool)

(declare-fun e!12593 () Bool)

(declare-fun e!12594 () Bool)

(assert (=> b!19491 (= e!12593 e!12594)))

(declare-fun b!19492 () Bool)

(declare-fun e!12589 () Bool)

(declare-datatypes ((V!1083 0))(
  ( (V!1084 (val!498 Int)) )
))
(declare-datatypes ((ValueCell!272 0))(
  ( (ValueCellFull!272 (v!1512 V!1083)) (EmptyCell!272) )
))
(declare-datatypes ((array!1093 0))(
  ( (array!1094 (arr!523 (Array (_ BitVec 32) ValueCell!272)) (size!616 (_ BitVec 32))) )
))
(declare-datatypes ((array!1095 0))(
  ( (array!1096 (arr!524 (Array (_ BitVec 32) (_ BitVec 64))) (size!617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!130 0))(
  ( (LongMapFixedSize!131 (defaultEntry!1684 Int) (mask!4635 (_ BitVec 32)) (extraKeys!1594 (_ BitVec 32)) (zeroValue!1618 V!1083) (minValue!1618 V!1083) (_size!98 (_ BitVec 32)) (_keys!3112 array!1095) (_values!1680 array!1093) (_vacant!98 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!130 0))(
  ( (Cell!131 (v!1513 LongMapFixedSize!130)) )
))
(declare-datatypes ((LongMap!130 0))(
  ( (LongMap!131 (underlying!76 Cell!130)) )
))
(declare-fun thiss!938 () LongMap!130)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(declare-fun computeNewMask!4 (LongMap!130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19492 (= e!12589 (not (validMask!0 (computeNewMask!4 thiss!938 (mask!4635 (v!1513 (underlying!76 thiss!938))) (_vacant!98 (v!1513 (underlying!76 thiss!938))) (_size!98 (v!1513 (underlying!76 thiss!938)))))))))

(declare-fun b!19493 () Bool)

(declare-fun e!12592 () Bool)

(assert (=> b!19493 (= e!12592 e!12593)))

(declare-fun mapIsEmpty!871 () Bool)

(declare-fun mapRes!871 () Bool)

(assert (=> mapIsEmpty!871 mapRes!871))

(declare-fun b!19494 () Bool)

(declare-fun e!12591 () Bool)

(assert (=> b!19494 (= e!12591 (and e!12590 mapRes!871))))

(declare-fun condMapEmpty!871 () Bool)

(declare-fun mapDefault!871 () ValueCell!272)

