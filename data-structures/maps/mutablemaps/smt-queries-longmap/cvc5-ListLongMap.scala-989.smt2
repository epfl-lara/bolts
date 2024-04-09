; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21344 () Bool)

(assert start!21344)

(declare-fun b!214529 () Bool)

(declare-fun b_free!5683 () Bool)

(declare-fun b_next!5683 () Bool)

(assert (=> b!214529 (= b_free!5683 (not b_next!5683))))

(declare-fun tp!20142 () Bool)

(declare-fun b_and!12591 () Bool)

(assert (=> b!214529 (= tp!20142 b_and!12591)))

(declare-fun b!214525 () Bool)

(declare-fun res!105027 () Bool)

(declare-fun e!139542 () Bool)

(assert (=> b!214525 (=> (not res!105027) (not e!139542))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7041 0))(
  ( (V!7042 (val!2817 Int)) )
))
(declare-datatypes ((ValueCell!2429 0))(
  ( (ValueCellFull!2429 (v!4831 V!7041)) (EmptyCell!2429) )
))
(declare-datatypes ((array!10304 0))(
  ( (array!10305 (arr!4885 (Array (_ BitVec 32) ValueCell!2429)) (size!5212 (_ BitVec 32))) )
))
(declare-datatypes ((array!10306 0))(
  ( (array!10307 (arr!4886 (Array (_ BitVec 32) (_ BitVec 64))) (size!5213 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2758 0))(
  ( (LongMapFixedSize!2759 (defaultEntry!4029 Int) (mask!9695 (_ BitVec 32)) (extraKeys!3766 (_ BitVec 32)) (zeroValue!3870 V!7041) (minValue!3870 V!7041) (_size!1428 (_ BitVec 32)) (_keys!6048 array!10306) (_values!4012 array!10304) (_vacant!1428 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2758)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!729 0))(
  ( (MissingZero!729 (index!5086 (_ BitVec 32))) (Found!729 (index!5087 (_ BitVec 32))) (Intermediate!729 (undefined!1541 Bool) (index!5088 (_ BitVec 32)) (x!22388 (_ BitVec 32))) (Undefined!729) (MissingVacant!729 (index!5089 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10306 (_ BitVec 32)) SeekEntryResult!729)

(assert (=> b!214525 (= res!105027 (not (= (seekEntryOrOpen!0 key!932 (_keys!6048 thiss!1504) (mask!9695 thiss!1504)) (MissingZero!729 index!297))))))

(declare-fun b!214526 () Bool)

(declare-fun e!139544 () Bool)

(declare-fun tp_is_empty!5545 () Bool)

(assert (=> b!214526 (= e!139544 tp_is_empty!5545)))

(declare-fun b!214527 () Bool)

(declare-fun e!139540 () Bool)

(assert (=> b!214527 (= e!139540 tp_is_empty!5545)))

(declare-fun mapIsEmpty!9439 () Bool)

(declare-fun mapRes!9439 () Bool)

(assert (=> mapIsEmpty!9439 mapRes!9439))

(declare-fun b!214528 () Bool)

(declare-fun res!105025 () Bool)

(assert (=> b!214528 (=> (not res!105025) (not e!139542))))

(assert (=> b!214528 (= res!105025 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!139541 () Bool)

(declare-fun e!139539 () Bool)

(declare-fun array_inv!3221 (array!10306) Bool)

(declare-fun array_inv!3222 (array!10304) Bool)

(assert (=> b!214529 (= e!139539 (and tp!20142 tp_is_empty!5545 (array_inv!3221 (_keys!6048 thiss!1504)) (array_inv!3222 (_values!4012 thiss!1504)) e!139541))))

(declare-fun res!105028 () Bool)

(assert (=> start!21344 (=> (not res!105028) (not e!139542))))

(declare-fun valid!1120 (LongMapFixedSize!2758) Bool)

(assert (=> start!21344 (= res!105028 (valid!1120 thiss!1504))))

(assert (=> start!21344 e!139542))

(assert (=> start!21344 e!139539))

(assert (=> start!21344 true))

(declare-fun b!214530 () Bool)

(declare-fun res!105026 () Bool)

(assert (=> b!214530 (=> (not res!105026) (not e!139542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214530 (= res!105026 (validMask!0 (mask!9695 thiss!1504)))))

(declare-fun b!214531 () Bool)

(assert (=> b!214531 (= e!139541 (and e!139544 mapRes!9439))))

(declare-fun condMapEmpty!9439 () Bool)

(declare-fun mapDefault!9439 () ValueCell!2429)

