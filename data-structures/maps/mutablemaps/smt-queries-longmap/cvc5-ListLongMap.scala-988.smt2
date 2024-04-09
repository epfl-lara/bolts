; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21328 () Bool)

(assert start!21328)

(declare-fun b!214429 () Bool)

(declare-fun b_free!5677 () Bool)

(declare-fun b_next!5677 () Bool)

(assert (=> b!214429 (= b_free!5677 (not b_next!5677))))

(declare-fun tp!20122 () Bool)

(declare-fun b_and!12585 () Bool)

(assert (=> b!214429 (= tp!20122 b_and!12585)))

(declare-fun b!214425 () Bool)

(declare-fun e!139468 () Bool)

(declare-fun tp_is_empty!5539 () Bool)

(assert (=> b!214425 (= e!139468 tp_is_empty!5539)))

(declare-fun mapNonEmpty!9427 () Bool)

(declare-fun mapRes!9427 () Bool)

(declare-fun tp!20121 () Bool)

(assert (=> mapNonEmpty!9427 (= mapRes!9427 (and tp!20121 e!139468))))

(declare-datatypes ((V!7033 0))(
  ( (V!7034 (val!2814 Int)) )
))
(declare-datatypes ((ValueCell!2426 0))(
  ( (ValueCellFull!2426 (v!4828 V!7033)) (EmptyCell!2426) )
))
(declare-fun mapRest!9427 () (Array (_ BitVec 32) ValueCell!2426))

(declare-fun mapKey!9427 () (_ BitVec 32))

(declare-fun mapValue!9427 () ValueCell!2426)

(declare-datatypes ((array!10290 0))(
  ( (array!10291 (arr!4879 (Array (_ BitVec 32) ValueCell!2426)) (size!5206 (_ BitVec 32))) )
))
(declare-datatypes ((array!10292 0))(
  ( (array!10293 (arr!4880 (Array (_ BitVec 32) (_ BitVec 64))) (size!5207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2752 0))(
  ( (LongMapFixedSize!2753 (defaultEntry!4026 Int) (mask!9688 (_ BitVec 32)) (extraKeys!3763 (_ BitVec 32)) (zeroValue!3867 V!7033) (minValue!3867 V!7033) (_size!1425 (_ BitVec 32)) (_keys!6044 array!10292) (_values!4009 array!10290) (_vacant!1425 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2752)

(assert (=> mapNonEmpty!9427 (= (arr!4879 (_values!4009 thiss!1504)) (store mapRest!9427 mapKey!9427 mapValue!9427))))

(declare-fun b!214426 () Bool)

(declare-fun e!139469 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214426 (= e!139469 (not (validMask!0 (mask!9688 thiss!1504))))))

(declare-fun b!214427 () Bool)

(declare-fun e!139471 () Bool)

(declare-fun e!139467 () Bool)

(assert (=> b!214427 (= e!139471 (and e!139467 mapRes!9427))))

(declare-fun condMapEmpty!9427 () Bool)

(declare-fun mapDefault!9427 () ValueCell!2426)

