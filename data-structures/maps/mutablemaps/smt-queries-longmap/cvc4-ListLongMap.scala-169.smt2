; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3238 () Bool)

(assert start!3238)

(declare-fun b!19741 () Bool)

(declare-fun b_free!695 () Bool)

(declare-fun b_next!695 () Bool)

(assert (=> b!19741 (= b_free!695 (not b_next!695))))

(declare-fun tp!3303 () Bool)

(declare-fun b_and!1361 () Bool)

(assert (=> b!19741 (= tp!3303 b_and!1361)))

(declare-fun b!19738 () Bool)

(declare-fun e!12832 () Bool)

(declare-fun e!12839 () Bool)

(assert (=> b!19738 (= e!12832 e!12839)))

(declare-fun b!19739 () Bool)

(declare-fun e!12836 () Bool)

(declare-fun tp_is_empty!959 () Bool)

(assert (=> b!19739 (= e!12836 tp_is_empty!959)))

(declare-fun b!19740 () Bool)

(declare-fun e!12835 () Bool)

(assert (=> b!19740 (= e!12835 tp_is_empty!959)))

(declare-fun e!12837 () Bool)

(declare-datatypes ((V!1103 0))(
  ( (V!1104 (val!506 Int)) )
))
(declare-datatypes ((ValueCell!280 0))(
  ( (ValueCellFull!280 (v!1528 V!1103)) (EmptyCell!280) )
))
(declare-datatypes ((array!1129 0))(
  ( (array!1130 (arr!539 (Array (_ BitVec 32) ValueCell!280)) (size!632 (_ BitVec 32))) )
))
(declare-datatypes ((array!1131 0))(
  ( (array!1132 (arr!540 (Array (_ BitVec 32) (_ BitVec 64))) (size!633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!146 0))(
  ( (LongMapFixedSize!147 (defaultEntry!1693 Int) (mask!4649 (_ BitVec 32)) (extraKeys!1602 (_ BitVec 32)) (zeroValue!1626 V!1103) (minValue!1626 V!1103) (_size!108 (_ BitVec 32)) (_keys!3120 array!1131) (_values!1688 array!1129) (_vacant!108 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!146 0))(
  ( (Cell!147 (v!1529 LongMapFixedSize!146)) )
))
(declare-datatypes ((LongMap!146 0))(
  ( (LongMap!147 (underlying!84 Cell!146)) )
))
(declare-fun thiss!938 () LongMap!146)

(declare-fun e!12840 () Bool)

(declare-fun array_inv!381 (array!1131) Bool)

(declare-fun array_inv!382 (array!1129) Bool)

(assert (=> b!19741 (= e!12837 (and tp!3303 tp_is_empty!959 (array_inv!381 (_keys!3120 (v!1529 (underlying!84 thiss!938)))) (array_inv!382 (_values!1688 (v!1529 (underlying!84 thiss!938)))) e!12840))))

(declare-fun b!19742 () Bool)

(declare-fun mapRes!901 () Bool)

(assert (=> b!19742 (= e!12840 (and e!12836 mapRes!901))))

(declare-fun condMapEmpty!901 () Bool)

(declare-fun mapDefault!901 () ValueCell!280)

