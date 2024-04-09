; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15872 () Bool)

(assert start!15872)

(declare-fun b!157868 () Bool)

(declare-fun b_free!3467 () Bool)

(declare-fun b_next!3467 () Bool)

(assert (=> b!157868 (= b_free!3467 (not b_next!3467))))

(declare-fun tp!12943 () Bool)

(declare-fun b_and!9899 () Bool)

(assert (=> b!157868 (= tp!12943 b_and!9899)))

(declare-fun b!157861 () Bool)

(declare-fun res!74611 () Bool)

(declare-fun e!103415 () Bool)

(assert (=> b!157861 (=> (not res!74611) (not e!103415))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4005 0))(
  ( (V!4006 (val!1679 Int)) )
))
(declare-datatypes ((ValueCell!1291 0))(
  ( (ValueCellFull!1291 (v!3540 V!4005)) (EmptyCell!1291) )
))
(declare-datatypes ((array!5600 0))(
  ( (array!5601 (arr!2652 (Array (_ BitVec 32) (_ BitVec 64))) (size!2932 (_ BitVec 32))) )
))
(declare-datatypes ((array!5602 0))(
  ( (array!5603 (arr!2653 (Array (_ BitVec 32) ValueCell!1291)) (size!2933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1490 0))(
  ( (LongMapFixedSize!1491 (defaultEntry!3187 Int) (mask!7682 (_ BitVec 32)) (extraKeys!2928 (_ BitVec 32)) (zeroValue!3030 V!4005) (minValue!3030 V!4005) (_size!794 (_ BitVec 32)) (_keys!4965 array!5600) (_values!3170 array!5602) (_vacant!794 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1490)

(declare-datatypes ((SeekEntryResult!304 0))(
  ( (MissingZero!304 (index!3384 (_ BitVec 32))) (Found!304 (index!3385 (_ BitVec 32))) (Intermediate!304 (undefined!1116 Bool) (index!3386 (_ BitVec 32)) (x!17420 (_ BitVec 32))) (Undefined!304) (MissingVacant!304 (index!3387 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5600 (_ BitVec 32)) SeekEntryResult!304)

(assert (=> b!157861 (= res!74611 (is-Undefined!304 (seekEntryOrOpen!0 key!828 (_keys!4965 thiss!1248) (mask!7682 thiss!1248))))))

(declare-fun mapNonEmpty!5563 () Bool)

(declare-fun mapRes!5563 () Bool)

(declare-fun tp!12942 () Bool)

(declare-fun e!103414 () Bool)

(assert (=> mapNonEmpty!5563 (= mapRes!5563 (and tp!12942 e!103414))))

(declare-fun mapValue!5563 () ValueCell!1291)

(declare-fun mapRest!5563 () (Array (_ BitVec 32) ValueCell!1291))

(declare-fun mapKey!5563 () (_ BitVec 32))

(assert (=> mapNonEmpty!5563 (= (arr!2653 (_values!3170 thiss!1248)) (store mapRest!5563 mapKey!5563 mapValue!5563))))

(declare-fun b!157862 () Bool)

(declare-fun res!74614 () Bool)

(assert (=> b!157862 (=> (not res!74614) (not e!103415))))

(assert (=> b!157862 (= res!74614 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157863 () Bool)

(assert (=> b!157863 (= e!103415 (not (= (size!2933 (_values!3170 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7682 thiss!1248)))))))

(declare-fun b!157864 () Bool)

(declare-fun res!74612 () Bool)

(assert (=> b!157864 (=> (not res!74612) (not e!103415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157864 (= res!74612 (validMask!0 (mask!7682 thiss!1248)))))

(declare-fun res!74613 () Bool)

(assert (=> start!15872 (=> (not res!74613) (not e!103415))))

(declare-fun valid!702 (LongMapFixedSize!1490) Bool)

(assert (=> start!15872 (= res!74613 (valid!702 thiss!1248))))

(assert (=> start!15872 e!103415))

(declare-fun e!103413 () Bool)

(assert (=> start!15872 e!103413))

(assert (=> start!15872 true))

(declare-fun b!157865 () Bool)

(declare-fun e!103412 () Bool)

(declare-fun e!103416 () Bool)

(assert (=> b!157865 (= e!103412 (and e!103416 mapRes!5563))))

(declare-fun condMapEmpty!5563 () Bool)

(declare-fun mapDefault!5563 () ValueCell!1291)

