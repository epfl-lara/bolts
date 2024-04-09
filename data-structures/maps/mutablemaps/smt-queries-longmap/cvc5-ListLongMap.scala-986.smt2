; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21290 () Bool)

(assert start!21290)

(declare-fun b!214203 () Bool)

(declare-fun b_free!5665 () Bool)

(declare-fun b_next!5665 () Bool)

(assert (=> b!214203 (= b_free!5665 (not b_next!5665))))

(declare-fun tp!20078 () Bool)

(declare-fun b_and!12573 () Bool)

(assert (=> b!214203 (= tp!20078 b_and!12573)))

(declare-fun tp_is_empty!5527 () Bool)

(declare-datatypes ((V!7017 0))(
  ( (V!7018 (val!2808 Int)) )
))
(declare-datatypes ((ValueCell!2420 0))(
  ( (ValueCellFull!2420 (v!4822 V!7017)) (EmptyCell!2420) )
))
(declare-datatypes ((array!10262 0))(
  ( (array!10263 (arr!4867 (Array (_ BitVec 32) ValueCell!2420)) (size!5193 (_ BitVec 32))) )
))
(declare-datatypes ((array!10264 0))(
  ( (array!10265 (arr!4868 (Array (_ BitVec 32) (_ BitVec 64))) (size!5194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2740 0))(
  ( (LongMapFixedSize!2741 (defaultEntry!4020 Int) (mask!9675 (_ BitVec 32)) (extraKeys!3757 (_ BitVec 32)) (zeroValue!3861 V!7017) (minValue!3861 V!7017) (_size!1419 (_ BitVec 32)) (_keys!6037 array!10264) (_values!4003 array!10262) (_vacant!1419 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2740)

(declare-fun e!139313 () Bool)

(declare-fun e!139311 () Bool)

(declare-fun array_inv!3209 (array!10264) Bool)

(declare-fun array_inv!3210 (array!10262) Bool)

(assert (=> b!214203 (= e!139313 (and tp!20078 tp_is_empty!5527 (array_inv!3209 (_keys!6037 thiss!1504)) (array_inv!3210 (_values!4003 thiss!1504)) e!139311))))

(declare-fun b!214204 () Bool)

(declare-fun e!139312 () Bool)

(assert (=> b!214204 (= e!139312 (and (bvsge (mask!9675 thiss!1504) #b00000000000000000000000000000000) (not (= (size!5194 (_keys!6037 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9675 thiss!1504))))))))

(declare-fun b!214205 () Bool)

(declare-fun e!139314 () Bool)

(declare-fun mapRes!9402 () Bool)

(assert (=> b!214205 (= e!139311 (and e!139314 mapRes!9402))))

(declare-fun condMapEmpty!9402 () Bool)

(declare-fun mapDefault!9402 () ValueCell!2420)

