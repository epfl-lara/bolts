; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3204 () Bool)

(assert start!3204)

(declare-fun b!19537 () Bool)

(declare-fun b_free!683 () Bool)

(declare-fun b_next!683 () Bool)

(assert (=> b!19537 (= b_free!683 (not b_next!683))))

(declare-fun tp!3262 () Bool)

(declare-fun b_and!1345 () Bool)

(assert (=> b!19537 (= tp!3262 b_and!1345)))

(declare-fun b!19532 () Bool)

(declare-fun e!12638 () Bool)

(declare-fun e!12636 () Bool)

(assert (=> b!19532 (= e!12638 e!12636)))

(declare-fun b!19533 () Bool)

(declare-fun e!12639 () Bool)

(declare-datatypes ((V!1087 0))(
  ( (V!1088 (val!500 Int)) )
))
(declare-datatypes ((ValueCell!274 0))(
  ( (ValueCellFull!274 (v!1516 V!1087)) (EmptyCell!274) )
))
(declare-datatypes ((array!1101 0))(
  ( (array!1102 (arr!527 (Array (_ BitVec 32) ValueCell!274)) (size!620 (_ BitVec 32))) )
))
(declare-datatypes ((array!1103 0))(
  ( (array!1104 (arr!528 (Array (_ BitVec 32) (_ BitVec 64))) (size!621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!134 0))(
  ( (LongMapFixedSize!135 (defaultEntry!1686 Int) (mask!4637 (_ BitVec 32)) (extraKeys!1596 (_ BitVec 32)) (zeroValue!1620 V!1087) (minValue!1620 V!1087) (_size!100 (_ BitVec 32)) (_keys!3114 array!1103) (_values!1682 array!1101) (_vacant!100 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!134 0))(
  ( (Cell!135 (v!1517 LongMapFixedSize!134)) )
))
(declare-datatypes ((LongMap!134 0))(
  ( (LongMap!135 (underlying!78 Cell!134)) )
))
(declare-fun thiss!938 () LongMap!134)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(declare-fun computeNewMask!6 (LongMap!134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19533 (= e!12639 (not (validMask!0 (computeNewMask!6 thiss!938 (mask!4637 (v!1517 (underlying!78 thiss!938))) (_vacant!100 (v!1517 (underlying!78 thiss!938))) (_size!100 (v!1517 (underlying!78 thiss!938)))))))))

(declare-fun mapNonEmpty!877 () Bool)

(declare-fun mapRes!877 () Bool)

(declare-fun tp!3261 () Bool)

(declare-fun e!12642 () Bool)

(assert (=> mapNonEmpty!877 (= mapRes!877 (and tp!3261 e!12642))))

(declare-fun mapRest!877 () (Array (_ BitVec 32) ValueCell!274))

(declare-fun mapValue!877 () ValueCell!274)

(declare-fun mapKey!877 () (_ BitVec 32))

(assert (=> mapNonEmpty!877 (= (arr!527 (_values!1682 (v!1517 (underlying!78 thiss!938)))) (store mapRest!877 mapKey!877 mapValue!877))))

(declare-fun b!19534 () Bool)

(declare-fun e!12637 () Bool)

(declare-fun e!12635 () Bool)

(assert (=> b!19534 (= e!12637 (and e!12635 mapRes!877))))

(declare-fun condMapEmpty!877 () Bool)

(declare-fun mapDefault!877 () ValueCell!274)

