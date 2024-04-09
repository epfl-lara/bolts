; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21682 () Bool)

(assert start!21682)

(declare-fun b!217481 () Bool)

(declare-fun b_free!5819 () Bool)

(declare-fun b_next!5819 () Bool)

(assert (=> b!217481 (= b_free!5819 (not b_next!5819))))

(declare-fun tp!20591 () Bool)

(declare-fun b_and!12727 () Bool)

(assert (=> b!217481 (= tp!20591 b_and!12727)))

(declare-fun tp_is_empty!5681 () Bool)

(declare-datatypes ((V!7221 0))(
  ( (V!7222 (val!2885 Int)) )
))
(declare-datatypes ((ValueCell!2497 0))(
  ( (ValueCellFull!2497 (v!4899 V!7221)) (EmptyCell!2497) )
))
(declare-datatypes ((array!10600 0))(
  ( (array!10601 (arr!5021 (Array (_ BitVec 32) ValueCell!2497)) (size!5353 (_ BitVec 32))) )
))
(declare-datatypes ((array!10602 0))(
  ( (array!10603 (arr!5022 (Array (_ BitVec 32) (_ BitVec 64))) (size!5354 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2894 0))(
  ( (LongMapFixedSize!2895 (defaultEntry!4097 Int) (mask!9854 (_ BitVec 32)) (extraKeys!3834 (_ BitVec 32)) (zeroValue!3938 V!7221) (minValue!3938 V!7221) (_size!1496 (_ BitVec 32)) (_keys!6146 array!10602) (_values!4080 array!10600) (_vacant!1496 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2894)

(declare-fun e!141489 () Bool)

(declare-fun e!141492 () Bool)

(declare-fun array_inv!3317 (array!10602) Bool)

(declare-fun array_inv!3318 (array!10600) Bool)

(assert (=> b!217481 (= e!141492 (and tp!20591 tp_is_empty!5681 (array_inv!3317 (_keys!6146 thiss!1504)) (array_inv!3318 (_values!4080 thiss!1504)) e!141489))))

(declare-fun b!217482 () Bool)

(declare-fun e!141493 () Bool)

(assert (=> b!217482 (= e!141493 tp_is_empty!5681)))

(declare-fun b!217483 () Bool)

(declare-fun res!106522 () Bool)

(declare-fun e!141495 () Bool)

(assert (=> b!217483 (=> (not res!106522) (not e!141495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217483 (= res!106522 (validMask!0 (mask!9854 thiss!1504)))))

(declare-fun b!217484 () Bool)

(declare-fun res!106523 () Bool)

(declare-fun e!141490 () Bool)

(assert (=> b!217484 (=> (not res!106523) (not e!141490))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217484 (= res!106523 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217485 () Bool)

(declare-fun mapRes!9684 () Bool)

(assert (=> b!217485 (= e!141489 (and e!141493 mapRes!9684))))

(declare-fun condMapEmpty!9684 () Bool)

(declare-fun mapDefault!9684 () ValueCell!2497)

