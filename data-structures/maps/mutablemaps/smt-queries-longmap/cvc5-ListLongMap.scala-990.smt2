; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21360 () Bool)

(assert start!21360)

(declare-fun b!214636 () Bool)

(declare-fun b_free!5689 () Bool)

(declare-fun b_next!5689 () Bool)

(assert (=> b!214636 (= b_free!5689 (not b_next!5689))))

(declare-fun tp!20164 () Bool)

(declare-fun b_and!12597 () Bool)

(assert (=> b!214636 (= tp!20164 b_and!12597)))

(declare-fun b!214632 () Bool)

(declare-fun e!139614 () Bool)

(declare-fun tp_is_empty!5551 () Bool)

(assert (=> b!214632 (= e!139614 tp_is_empty!5551)))

(declare-fun b!214633 () Bool)

(declare-fun e!139615 () Bool)

(assert (=> b!214633 (= e!139615 tp_is_empty!5551)))

(declare-fun mapNonEmpty!9451 () Bool)

(declare-fun mapRes!9451 () Bool)

(declare-fun tp!20163 () Bool)

(assert (=> mapNonEmpty!9451 (= mapRes!9451 (and tp!20163 e!139615))))

(declare-datatypes ((V!7049 0))(
  ( (V!7050 (val!2820 Int)) )
))
(declare-datatypes ((ValueCell!2432 0))(
  ( (ValueCellFull!2432 (v!4834 V!7049)) (EmptyCell!2432) )
))
(declare-fun mapValue!9451 () ValueCell!2432)

(declare-fun mapRest!9451 () (Array (_ BitVec 32) ValueCell!2432))

(declare-datatypes ((array!10318 0))(
  ( (array!10319 (arr!4891 (Array (_ BitVec 32) ValueCell!2432)) (size!5218 (_ BitVec 32))) )
))
(declare-datatypes ((array!10320 0))(
  ( (array!10321 (arr!4892 (Array (_ BitVec 32) (_ BitVec 64))) (size!5219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2764 0))(
  ( (LongMapFixedSize!2765 (defaultEntry!4032 Int) (mask!9702 (_ BitVec 32)) (extraKeys!3769 (_ BitVec 32)) (zeroValue!3873 V!7049) (minValue!3873 V!7049) (_size!1431 (_ BitVec 32)) (_keys!6052 array!10320) (_values!4015 array!10318) (_vacant!1431 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2764)

(declare-fun mapKey!9451 () (_ BitVec 32))

(assert (=> mapNonEmpty!9451 (= (arr!4891 (_values!4015 thiss!1504)) (store mapRest!9451 mapKey!9451 mapValue!9451))))

(declare-fun b!214634 () Bool)

(declare-fun e!139611 () Bool)

(assert (=> b!214634 (= e!139611 (and e!139614 mapRes!9451))))

(declare-fun condMapEmpty!9451 () Bool)

(declare-fun mapDefault!9451 () ValueCell!2432)

