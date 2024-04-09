; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21332 () Bool)

(assert start!21332)

(declare-fun b!214467 () Bool)

(declare-fun b_free!5681 () Bool)

(declare-fun b_next!5681 () Bool)

(assert (=> b!214467 (= b_free!5681 (not b_next!5681))))

(declare-fun tp!20134 () Bool)

(declare-fun b_and!12589 () Bool)

(assert (=> b!214467 (= tp!20134 b_and!12589)))

(declare-fun mapIsEmpty!9433 () Bool)

(declare-fun mapRes!9433 () Bool)

(assert (=> mapIsEmpty!9433 mapRes!9433))

(declare-datatypes ((V!7037 0))(
  ( (V!7038 (val!2816 Int)) )
))
(declare-datatypes ((ValueCell!2428 0))(
  ( (ValueCellFull!2428 (v!4830 V!7037)) (EmptyCell!2428) )
))
(declare-datatypes ((array!10298 0))(
  ( (array!10299 (arr!4883 (Array (_ BitVec 32) ValueCell!2428)) (size!5210 (_ BitVec 32))) )
))
(declare-datatypes ((array!10300 0))(
  ( (array!10301 (arr!4884 (Array (_ BitVec 32) (_ BitVec 64))) (size!5211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2756 0))(
  ( (LongMapFixedSize!2757 (defaultEntry!4028 Int) (mask!9690 (_ BitVec 32)) (extraKeys!3765 (_ BitVec 32)) (zeroValue!3869 V!7037) (minValue!3869 V!7037) (_size!1427 (_ BitVec 32)) (_keys!6046 array!10300) (_values!4011 array!10298) (_vacant!1427 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2756)

(declare-fun tp_is_empty!5543 () Bool)

(declare-fun e!139503 () Bool)

(declare-fun e!139505 () Bool)

(declare-fun array_inv!3219 (array!10300) Bool)

(declare-fun array_inv!3220 (array!10298) Bool)

(assert (=> b!214467 (= e!139505 (and tp!20134 tp_is_empty!5543 (array_inv!3219 (_keys!6046 thiss!1504)) (array_inv!3220 (_values!4011 thiss!1504)) e!139503))))

(declare-fun mapNonEmpty!9433 () Bool)

(declare-fun tp!20133 () Bool)

(declare-fun e!139506 () Bool)

(assert (=> mapNonEmpty!9433 (= mapRes!9433 (and tp!20133 e!139506))))

(declare-fun mapValue!9433 () ValueCell!2428)

(declare-fun mapKey!9433 () (_ BitVec 32))

(declare-fun mapRest!9433 () (Array (_ BitVec 32) ValueCell!2428))

(assert (=> mapNonEmpty!9433 (= (arr!4883 (_values!4011 thiss!1504)) (store mapRest!9433 mapKey!9433 mapValue!9433))))

(declare-fun b!214468 () Bool)

(declare-fun e!139508 () Bool)

(assert (=> b!214468 (= e!139508 tp_is_empty!5543)))

(declare-fun b!214469 () Bool)

(assert (=> b!214469 (= e!139503 (and e!139508 mapRes!9433))))

(declare-fun condMapEmpty!9433 () Bool)

(declare-fun mapDefault!9433 () ValueCell!2428)

