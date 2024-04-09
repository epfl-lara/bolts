; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15782 () Bool)

(assert start!15782)

(declare-fun b!157323 () Bool)

(declare-fun b_free!3437 () Bool)

(declare-fun b_next!3437 () Bool)

(assert (=> b!157323 (= b_free!3437 (not b_next!3437))))

(declare-fun tp!12836 () Bool)

(declare-fun b_and!9869 () Bool)

(assert (=> b!157323 (= tp!12836 b_and!9869)))

(declare-fun b!157321 () Bool)

(declare-fun e!103026 () Bool)

(declare-datatypes ((V!3965 0))(
  ( (V!3966 (val!1664 Int)) )
))
(declare-datatypes ((ValueCell!1276 0))(
  ( (ValueCellFull!1276 (v!3525 V!3965)) (EmptyCell!1276) )
))
(declare-datatypes ((array!5530 0))(
  ( (array!5531 (arr!2622 (Array (_ BitVec 32) (_ BitVec 64))) (size!2900 (_ BitVec 32))) )
))
(declare-datatypes ((array!5532 0))(
  ( (array!5533 (arr!2623 (Array (_ BitVec 32) ValueCell!1276)) (size!2901 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1460 0))(
  ( (LongMapFixedSize!1461 (defaultEntry!3172 Int) (mask!7649 (_ BitVec 32)) (extraKeys!2913 (_ BitVec 32)) (zeroValue!3015 V!3965) (minValue!3015 V!3965) (_size!779 (_ BitVec 32)) (_keys!4947 array!5530) (_values!3155 array!5532) (_vacant!779 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1460)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157321 (= e!103026 (not (validMask!0 (mask!7649 thiss!1248))))))

(declare-fun res!74361 () Bool)

(assert (=> start!15782 (=> (not res!74361) (not e!103026))))

(declare-fun valid!691 (LongMapFixedSize!1460) Bool)

(assert (=> start!15782 (= res!74361 (valid!691 thiss!1248))))

(assert (=> start!15782 e!103026))

(declare-fun e!103023 () Bool)

(assert (=> start!15782 e!103023))

(assert (=> start!15782 true))

(declare-fun b!157322 () Bool)

(declare-fun e!103028 () Bool)

(declare-fun tp_is_empty!3239 () Bool)

(assert (=> b!157322 (= e!103028 tp_is_empty!3239)))

(declare-fun e!103024 () Bool)

(declare-fun array_inv!1657 (array!5530) Bool)

(declare-fun array_inv!1658 (array!5532) Bool)

(assert (=> b!157323 (= e!103023 (and tp!12836 tp_is_empty!3239 (array_inv!1657 (_keys!4947 thiss!1248)) (array_inv!1658 (_values!3155 thiss!1248)) e!103024))))

(declare-fun mapNonEmpty!5501 () Bool)

(declare-fun mapRes!5501 () Bool)

(declare-fun tp!12835 () Bool)

(assert (=> mapNonEmpty!5501 (= mapRes!5501 (and tp!12835 e!103028))))

(declare-fun mapKey!5501 () (_ BitVec 32))

(declare-fun mapRest!5501 () (Array (_ BitVec 32) ValueCell!1276))

(declare-fun mapValue!5501 () ValueCell!1276)

(assert (=> mapNonEmpty!5501 (= (arr!2623 (_values!3155 thiss!1248)) (store mapRest!5501 mapKey!5501 mapValue!5501))))

(declare-fun b!157324 () Bool)

(declare-fun e!103027 () Bool)

(assert (=> b!157324 (= e!103024 (and e!103027 mapRes!5501))))

(declare-fun condMapEmpty!5501 () Bool)

(declare-fun mapDefault!5501 () ValueCell!1276)

