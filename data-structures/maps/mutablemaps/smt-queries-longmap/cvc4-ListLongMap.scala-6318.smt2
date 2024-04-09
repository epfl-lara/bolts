; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81208 () Bool)

(assert start!81208)

(declare-fun b!949879 () Bool)

(declare-fun b_free!18233 () Bool)

(declare-fun b_next!18233 () Bool)

(assert (=> b!949879 (= b_free!18233 (not b_next!18233))))

(declare-fun tp!63292 () Bool)

(declare-fun b_and!29705 () Bool)

(assert (=> b!949879 (= tp!63292 b_and!29705)))

(declare-fun mapNonEmpty!33020 () Bool)

(declare-fun mapRes!33020 () Bool)

(declare-fun tp!63293 () Bool)

(declare-fun e!534808 () Bool)

(assert (=> mapNonEmpty!33020 (= mapRes!33020 (and tp!63293 e!534808))))

(declare-datatypes ((V!32619 0))(
  ( (V!32620 (val!10421 Int)) )
))
(declare-datatypes ((ValueCell!9889 0))(
  ( (ValueCellFull!9889 (v!12963 V!32619)) (EmptyCell!9889) )
))
(declare-fun mapValue!33020 () ValueCell!9889)

(declare-datatypes ((array!57520 0))(
  ( (array!57521 (arr!27657 (Array (_ BitVec 32) ValueCell!9889)) (size!28135 (_ BitVec 32))) )
))
(declare-datatypes ((array!57522 0))(
  ( (array!57523 (arr!27658 (Array (_ BitVec 32) (_ BitVec 64))) (size!28136 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4928 0))(
  ( (LongMapFixedSize!4929 (defaultEntry!5774 Int) (mask!27560 (_ BitVec 32)) (extraKeys!5506 (_ BitVec 32)) (zeroValue!5610 V!32619) (minValue!5610 V!32619) (_size!2519 (_ BitVec 32)) (_keys!10704 array!57522) (_values!5797 array!57520) (_vacant!2519 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4928)

(declare-fun mapRest!33020 () (Array (_ BitVec 32) ValueCell!9889))

(declare-fun mapKey!33020 () (_ BitVec 32))

(assert (=> mapNonEmpty!33020 (= (arr!27657 (_values!5797 thiss!1141)) (store mapRest!33020 mapKey!33020 mapValue!33020))))

(declare-fun b!949875 () Bool)

(declare-fun e!534805 () Bool)

(declare-fun tp_is_empty!20741 () Bool)

(assert (=> b!949875 (= e!534805 tp_is_empty!20741)))

(declare-fun b!949876 () Bool)

(declare-fun e!534807 () Bool)

(assert (=> b!949876 (= e!534807 (and e!534805 mapRes!33020))))

(declare-fun condMapEmpty!33020 () Bool)

(declare-fun mapDefault!33020 () ValueCell!9889)

