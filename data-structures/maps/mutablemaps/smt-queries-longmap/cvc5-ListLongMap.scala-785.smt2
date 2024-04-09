; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18682 () Bool)

(assert start!18682)

(declare-fun b!184620 () Bool)

(declare-fun b_free!4549 () Bool)

(declare-fun b_next!4549 () Bool)

(assert (=> b!184620 (= b_free!4549 (not b_next!4549))))

(declare-fun tp!16433 () Bool)

(declare-fun b_and!11157 () Bool)

(assert (=> b!184620 (= tp!16433 b_and!11157)))

(declare-fun b!184615 () Bool)

(declare-fun res!87351 () Bool)

(declare-fun e!121525 () Bool)

(assert (=> b!184615 (=> (not res!87351) (not e!121525))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!184615 (= res!87351 (not (= key!828 (bvneg key!828))))))

(declare-fun b!184616 () Bool)

(declare-fun e!121520 () Bool)

(declare-fun tp_is_empty!4321 () Bool)

(assert (=> b!184616 (= e!121520 tp_is_empty!4321)))

(declare-fun mapIsEmpty!7430 () Bool)

(declare-fun mapRes!7430 () Bool)

(assert (=> mapIsEmpty!7430 mapRes!7430))

(declare-fun b!184617 () Bool)

(declare-fun e!121521 () Bool)

(assert (=> b!184617 (= e!121521 (and e!121520 mapRes!7430))))

(declare-fun condMapEmpty!7430 () Bool)

(declare-datatypes ((V!5409 0))(
  ( (V!5410 (val!2205 Int)) )
))
(declare-datatypes ((ValueCell!1817 0))(
  ( (ValueCellFull!1817 (v!4108 V!5409)) (EmptyCell!1817) )
))
(declare-datatypes ((array!7842 0))(
  ( (array!7843 (arr!3704 (Array (_ BitVec 32) (_ BitVec 64))) (size!4019 (_ BitVec 32))) )
))
(declare-datatypes ((array!7844 0))(
  ( (array!7845 (arr!3705 (Array (_ BitVec 32) ValueCell!1817)) (size!4020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2542 0))(
  ( (LongMapFixedSize!2543 (defaultEntry!3768 Int) (mask!8858 (_ BitVec 32)) (extraKeys!3505 (_ BitVec 32)) (zeroValue!3609 V!5409) (minValue!3609 V!5409) (_size!1320 (_ BitVec 32)) (_keys!5699 array!7842) (_values!3751 array!7844) (_vacant!1320 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2542)

(declare-fun mapDefault!7430 () ValueCell!1817)

