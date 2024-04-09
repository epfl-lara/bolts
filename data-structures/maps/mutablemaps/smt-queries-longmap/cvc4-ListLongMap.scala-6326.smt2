; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81438 () Bool)

(assert start!81438)

(declare-fun b!951662 () Bool)

(declare-fun b_free!18281 () Bool)

(declare-fun b_next!18281 () Bool)

(assert (=> b!951662 (= b_free!18281 (not b_next!18281))))

(declare-fun tp!63458 () Bool)

(declare-fun b_and!29771 () Bool)

(assert (=> b!951662 (= tp!63458 b_and!29771)))

(declare-datatypes ((V!32683 0))(
  ( (V!32684 (val!10445 Int)) )
))
(declare-datatypes ((ValueCell!9913 0))(
  ( (ValueCellFull!9913 (v!12994 V!32683)) (EmptyCell!9913) )
))
(declare-datatypes ((array!57630 0))(
  ( (array!57631 (arr!27705 (Array (_ BitVec 32) ValueCell!9913)) (size!28184 (_ BitVec 32))) )
))
(declare-datatypes ((array!57632 0))(
  ( (array!57633 (arr!27706 (Array (_ BitVec 32) (_ BitVec 64))) (size!28185 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4976 0))(
  ( (LongMapFixedSize!4977 (defaultEntry!5813 Int) (mask!27637 (_ BitVec 32)) (extraKeys!5545 (_ BitVec 32)) (zeroValue!5649 V!32683) (minValue!5649 V!32683) (_size!2543 (_ BitVec 32)) (_keys!10756 array!57632) (_values!5836 array!57630) (_vacant!2543 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4976)

(declare-fun e!535959 () Bool)

(declare-fun e!535956 () Bool)

(declare-fun tp_is_empty!20789 () Bool)

(declare-fun array_inv!21448 (array!57632) Bool)

(declare-fun array_inv!21449 (array!57630) Bool)

(assert (=> b!951662 (= e!535959 (and tp!63458 tp_is_empty!20789 (array_inv!21448 (_keys!10756 thiss!1141)) (array_inv!21449 (_values!5836 thiss!1141)) e!535956))))

(declare-fun b!951663 () Bool)

(declare-fun e!535960 () Bool)

(assert (=> b!951663 (= e!535960 tp_is_empty!20789)))

(declare-fun mapIsEmpty!33114 () Bool)

(declare-fun mapRes!33114 () Bool)

(assert (=> mapIsEmpty!33114 mapRes!33114))

(declare-fun b!951664 () Bool)

(declare-fun e!535958 () Bool)

(assert (=> b!951664 (= e!535956 (and e!535958 mapRes!33114))))

(declare-fun condMapEmpty!33114 () Bool)

(declare-fun mapDefault!33114 () ValueCell!9913)

