; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17896 () Bool)

(assert start!17896)

(declare-fun b!178389 () Bool)

(declare-fun b_free!4409 () Bool)

(declare-fun b_next!4409 () Bool)

(assert (=> b!178389 (= b_free!4409 (not b_next!4409))))

(declare-fun tp!15940 () Bool)

(declare-fun b_and!10943 () Bool)

(assert (=> b!178389 (= tp!15940 b_and!10943)))

(declare-fun b!178387 () Bool)

(declare-fun res!84534 () Bool)

(declare-fun e!117597 () Bool)

(assert (=> b!178387 (=> (not res!84534) (not e!117597))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!178387 (= res!84534 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7148 () Bool)

(declare-fun mapRes!7148 () Bool)

(declare-fun tp!15941 () Bool)

(declare-fun e!117598 () Bool)

(assert (=> mapNonEmpty!7148 (= mapRes!7148 (and tp!15941 e!117598))))

(declare-datatypes ((V!5221 0))(
  ( (V!5222 (val!2135 Int)) )
))
(declare-datatypes ((ValueCell!1747 0))(
  ( (ValueCellFull!1747 (v!4015 V!5221)) (EmptyCell!1747) )
))
(declare-fun mapRest!7148 () (Array (_ BitVec 32) ValueCell!1747))

(declare-fun mapValue!7148 () ValueCell!1747)

(declare-datatypes ((array!7520 0))(
  ( (array!7521 (arr!3564 (Array (_ BitVec 32) (_ BitVec 64))) (size!3870 (_ BitVec 32))) )
))
(declare-datatypes ((array!7522 0))(
  ( (array!7523 (arr!3565 (Array (_ BitVec 32) ValueCell!1747)) (size!3871 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2402 0))(
  ( (LongMapFixedSize!2403 (defaultEntry!3670 Int) (mask!8630 (_ BitVec 32)) (extraKeys!3407 (_ BitVec 32)) (zeroValue!3511 V!5221) (minValue!3511 V!5221) (_size!1250 (_ BitVec 32)) (_keys!5547 array!7520) (_values!3653 array!7522) (_vacant!1250 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2402)

(declare-fun mapKey!7148 () (_ BitVec 32))

(assert (=> mapNonEmpty!7148 (= (arr!3565 (_values!3653 thiss!1248)) (store mapRest!7148 mapKey!7148 mapValue!7148))))

(declare-fun b!178388 () Bool)

(declare-fun res!84535 () Bool)

(assert (=> b!178388 (=> (not res!84535) (not e!117597))))

(declare-datatypes ((SeekEntryResult!586 0))(
  ( (MissingZero!586 (index!4512 (_ BitVec 32))) (Found!586 (index!4513 (_ BitVec 32))) (Intermediate!586 (undefined!1398 Bool) (index!4514 (_ BitVec 32)) (x!19554 (_ BitVec 32))) (Undefined!586) (MissingVacant!586 (index!4515 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7520 (_ BitVec 32)) SeekEntryResult!586)

(assert (=> b!178388 (= res!84535 (is-Undefined!586 (seekEntryOrOpen!0 key!828 (_keys!5547 thiss!1248) (mask!8630 thiss!1248))))))

(declare-fun tp_is_empty!4181 () Bool)

(declare-fun e!117596 () Bool)

(declare-fun e!117595 () Bool)

(declare-fun array_inv!2281 (array!7520) Bool)

(declare-fun array_inv!2282 (array!7522) Bool)

(assert (=> b!178389 (= e!117596 (and tp!15940 tp_is_empty!4181 (array_inv!2281 (_keys!5547 thiss!1248)) (array_inv!2282 (_values!3653 thiss!1248)) e!117595))))

(declare-fun b!178390 () Bool)

(assert (=> b!178390 (= e!117597 (and (= (size!3871 (_values!3653 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8630 thiss!1248))) (= (size!3870 (_keys!5547 thiss!1248)) (size!3871 (_values!3653 thiss!1248))) (bvsge (mask!8630 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3407 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!178391 () Bool)

(declare-fun e!117599 () Bool)

(assert (=> b!178391 (= e!117595 (and e!117599 mapRes!7148))))

(declare-fun condMapEmpty!7148 () Bool)

(declare-fun mapDefault!7148 () ValueCell!1747)

