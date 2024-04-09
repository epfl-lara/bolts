; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15776 () Bool)

(assert start!15776)

(declare-fun b!157272 () Bool)

(declare-fun b_free!3431 () Bool)

(declare-fun b_next!3431 () Bool)

(assert (=> b!157272 (= b_free!3431 (not b_next!3431))))

(declare-fun tp!12818 () Bool)

(declare-fun b_and!9863 () Bool)

(assert (=> b!157272 (= tp!12818 b_and!9863)))

(declare-fun b!157267 () Bool)

(declare-fun e!102971 () Bool)

(declare-fun tp_is_empty!3233 () Bool)

(assert (=> b!157267 (= e!102971 tp_is_empty!3233)))

(declare-fun mapIsEmpty!5492 () Bool)

(declare-fun mapRes!5492 () Bool)

(assert (=> mapIsEmpty!5492 mapRes!5492))

(declare-fun b!157268 () Bool)

(declare-fun e!102972 () Bool)

(assert (=> b!157268 (= e!102972 tp_is_empty!3233)))

(declare-fun b!157270 () Bool)

(declare-fun e!102969 () Bool)

(assert (=> b!157270 (= e!102969 (and e!102972 mapRes!5492))))

(declare-fun condMapEmpty!5492 () Bool)

(declare-datatypes ((V!3957 0))(
  ( (V!3958 (val!1661 Int)) )
))
(declare-datatypes ((ValueCell!1273 0))(
  ( (ValueCellFull!1273 (v!3522 V!3957)) (EmptyCell!1273) )
))
(declare-datatypes ((array!5518 0))(
  ( (array!5519 (arr!2616 (Array (_ BitVec 32) (_ BitVec 64))) (size!2894 (_ BitVec 32))) )
))
(declare-datatypes ((array!5520 0))(
  ( (array!5521 (arr!2617 (Array (_ BitVec 32) ValueCell!1273)) (size!2895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1454 0))(
  ( (LongMapFixedSize!1455 (defaultEntry!3169 Int) (mask!7644 (_ BitVec 32)) (extraKeys!2910 (_ BitVec 32)) (zeroValue!3012 V!3957) (minValue!3012 V!3957) (_size!776 (_ BitVec 32)) (_keys!4944 array!5518) (_values!3152 array!5520) (_vacant!776 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1454)

(declare-fun mapDefault!5492 () ValueCell!1273)

