; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21408 () Bool)

(assert start!21408)

(declare-fun b!214952 () Bool)

(declare-fun b_free!5701 () Bool)

(declare-fun b_next!5701 () Bool)

(assert (=> b!214952 (= b_free!5701 (not b_next!5701))))

(declare-fun tp!20207 () Bool)

(declare-fun b_and!12609 () Bool)

(assert (=> b!214952 (= tp!20207 b_and!12609)))

(declare-fun b!214951 () Bool)

(declare-fun e!139818 () Bool)

(declare-fun tp_is_empty!5563 () Bool)

(assert (=> b!214951 (= e!139818 tp_is_empty!5563)))

(declare-fun e!139816 () Bool)

(declare-datatypes ((V!7065 0))(
  ( (V!7066 (val!2826 Int)) )
))
(declare-datatypes ((ValueCell!2438 0))(
  ( (ValueCellFull!2438 (v!4840 V!7065)) (EmptyCell!2438) )
))
(declare-datatypes ((array!10346 0))(
  ( (array!10347 (arr!4903 (Array (_ BitVec 32) ValueCell!2438)) (size!5231 (_ BitVec 32))) )
))
(declare-datatypes ((array!10348 0))(
  ( (array!10349 (arr!4904 (Array (_ BitVec 32) (_ BitVec 64))) (size!5232 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2776 0))(
  ( (LongMapFixedSize!2777 (defaultEntry!4038 Int) (mask!9720 (_ BitVec 32)) (extraKeys!3775 (_ BitVec 32)) (zeroValue!3879 V!7065) (minValue!3879 V!7065) (_size!1437 (_ BitVec 32)) (_keys!6063 array!10348) (_values!4021 array!10346) (_vacant!1437 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2776)

(declare-fun e!139819 () Bool)

(declare-fun array_inv!3237 (array!10348) Bool)

(declare-fun array_inv!3238 (array!10346) Bool)

(assert (=> b!214952 (= e!139819 (and tp!20207 tp_is_empty!5563 (array_inv!3237 (_keys!6063 thiss!1504)) (array_inv!3238 (_values!4021 thiss!1504)) e!139816))))

(declare-fun b!214953 () Bool)

(declare-fun res!105204 () Bool)

(declare-fun e!139815 () Bool)

(assert (=> b!214953 (=> (not res!105204) (not e!139815))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214953 (= res!105204 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214954 () Bool)

(declare-fun mapRes!9476 () Bool)

(assert (=> b!214954 (= e!139816 (and e!139818 mapRes!9476))))

(declare-fun condMapEmpty!9476 () Bool)

(declare-fun mapDefault!9476 () ValueCell!2438)

