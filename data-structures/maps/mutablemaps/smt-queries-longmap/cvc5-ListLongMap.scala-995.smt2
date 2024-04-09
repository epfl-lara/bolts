; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21484 () Bool)

(assert start!21484)

(declare-fun b!215466 () Bool)

(declare-fun b_free!5719 () Bool)

(declare-fun b_next!5719 () Bool)

(assert (=> b!215466 (= b_free!5719 (not b_next!5719))))

(declare-fun tp!20271 () Bool)

(declare-fun b_and!12627 () Bool)

(assert (=> b!215466 (= tp!20271 b_and!12627)))

(declare-fun b!215461 () Bool)

(declare-fun e!140169 () Bool)

(declare-fun tp_is_empty!5581 () Bool)

(assert (=> b!215461 (= e!140169 tp_is_empty!5581)))

(declare-fun mapNonEmpty!9514 () Bool)

(declare-fun mapRes!9514 () Bool)

(declare-fun tp!20272 () Bool)

(declare-fun e!140172 () Bool)

(assert (=> mapNonEmpty!9514 (= mapRes!9514 (and tp!20272 e!140172))))

(declare-datatypes ((V!7089 0))(
  ( (V!7090 (val!2835 Int)) )
))
(declare-datatypes ((ValueCell!2447 0))(
  ( (ValueCellFull!2447 (v!4849 V!7089)) (EmptyCell!2447) )
))
(declare-fun mapRest!9514 () (Array (_ BitVec 32) ValueCell!2447))

(declare-datatypes ((array!10388 0))(
  ( (array!10389 (arr!4921 (Array (_ BitVec 32) ValueCell!2447)) (size!5251 (_ BitVec 32))) )
))
(declare-datatypes ((array!10390 0))(
  ( (array!10391 (arr!4922 (Array (_ BitVec 32) (_ BitVec 64))) (size!5252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2794 0))(
  ( (LongMapFixedSize!2795 (defaultEntry!4047 Int) (mask!9749 (_ BitVec 32)) (extraKeys!3784 (_ BitVec 32)) (zeroValue!3888 V!7089) (minValue!3888 V!7089) (_size!1446 (_ BitVec 32)) (_keys!6081 array!10390) (_values!4030 array!10388) (_vacant!1446 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2794)

(declare-fun mapValue!9514 () ValueCell!2447)

(declare-fun mapKey!9514 () (_ BitVec 32))

(assert (=> mapNonEmpty!9514 (= (arr!4921 (_values!4030 thiss!1504)) (store mapRest!9514 mapKey!9514 mapValue!9514))))

(declare-fun b!215462 () Bool)

(declare-fun res!105408 () Bool)

(declare-fun e!140171 () Bool)

(assert (=> b!215462 (=> (not res!105408) (not e!140171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!215462 (= res!105408 (validMask!0 (mask!9749 thiss!1504)))))

(declare-fun b!215463 () Bool)

(declare-fun e!140174 () Bool)

(assert (=> b!215463 (= e!140174 e!140171)))

(declare-fun res!105407 () Bool)

(assert (=> b!215463 (=> (not res!105407) (not e!140171))))

(declare-datatypes ((SeekEntryResult!741 0))(
  ( (MissingZero!741 (index!5134 (_ BitVec 32))) (Found!741 (index!5135 (_ BitVec 32))) (Intermediate!741 (undefined!1553 Bool) (index!5136 (_ BitVec 32)) (x!22523 (_ BitVec 32))) (Undefined!741) (MissingVacant!741 (index!5137 (_ BitVec 32))) )
))
(declare-fun lt!110995 () SeekEntryResult!741)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!215463 (= res!105407 (or (= lt!110995 (MissingZero!741 index!297)) (= lt!110995 (MissingVacant!741 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10390 (_ BitVec 32)) SeekEntryResult!741)

(assert (=> b!215463 (= lt!110995 (seekEntryOrOpen!0 key!932 (_keys!6081 thiss!1504) (mask!9749 thiss!1504)))))

(declare-fun b!215464 () Bool)

(assert (=> b!215464 (= e!140171 (and (= (size!5251 (_values!4030 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9749 thiss!1504))) (= (size!5252 (_keys!6081 thiss!1504)) (size!5251 (_values!4030 thiss!1504))) (bvslt (mask!9749 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!215465 () Bool)

(declare-fun e!140173 () Bool)

(assert (=> b!215465 (= e!140173 (and e!140169 mapRes!9514))))

(declare-fun condMapEmpty!9514 () Bool)

(declare-fun mapDefault!9514 () ValueCell!2447)

