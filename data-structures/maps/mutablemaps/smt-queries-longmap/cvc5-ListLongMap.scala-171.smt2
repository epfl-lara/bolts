; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3272 () Bool)

(assert start!3272)

(declare-fun b!20058 () Bool)

(declare-fun b_free!703 () Bool)

(declare-fun b_next!703 () Bool)

(assert (=> b!20058 (= b_free!703 (not b_next!703))))

(declare-fun tp!3334 () Bool)

(declare-fun b_and!1377 () Bool)

(assert (=> b!20058 (= tp!3334 b_and!1377)))

(declare-fun b!20052 () Bool)

(declare-fun e!13058 () Bool)

(declare-datatypes ((V!1115 0))(
  ( (V!1116 (val!510 Int)) )
))
(declare-datatypes ((array!1149 0))(
  ( (array!1150 (arr!547 (Array (_ BitVec 32) (_ BitVec 64))) (size!640 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!284 0))(
  ( (ValueCellFull!284 (v!1537 V!1115)) (EmptyCell!284) )
))
(declare-datatypes ((array!1151 0))(
  ( (array!1152 (arr!548 (Array (_ BitVec 32) ValueCell!284)) (size!641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!154 0))(
  ( (LongMapFixedSize!155 (defaultEntry!1699 Int) (mask!4659 (_ BitVec 32)) (extraKeys!1606 (_ BitVec 32)) (zeroValue!1630 V!1115) (minValue!1630 V!1115) (_size!114 (_ BitVec 32)) (_keys!3124 array!1149) (_values!1692 array!1151) (_vacant!114 (_ BitVec 32))) )
))
(declare-fun lt!5768 () LongMapFixedSize!154)

(declare-fun valid!78 (LongMapFixedSize!154) Bool)

(assert (=> b!20052 (= e!13058 (not (valid!78 lt!5768)))))

(declare-fun b!20053 () Bool)

(declare-fun e!13054 () Bool)

(declare-fun e!13061 () Bool)

(declare-fun mapRes!919 () Bool)

(assert (=> b!20053 (= e!13054 (and e!13061 mapRes!919))))

(declare-fun condMapEmpty!919 () Bool)

(declare-datatypes ((Cell!154 0))(
  ( (Cell!155 (v!1538 LongMapFixedSize!154)) )
))
(declare-datatypes ((LongMap!154 0))(
  ( (LongMap!155 (underlying!88 Cell!154)) )
))
(declare-fun thiss!938 () LongMap!154)

(declare-fun mapDefault!919 () ValueCell!284)

