; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15852 () Bool)

(assert start!15852)

(declare-fun b!157718 () Bool)

(declare-fun b_free!3457 () Bool)

(declare-fun b_next!3457 () Bool)

(assert (=> b!157718 (= b_free!3457 (not b_next!3457))))

(declare-fun tp!12909 () Bool)

(declare-fun b_and!9889 () Bool)

(assert (=> b!157718 (= tp!12909 b_and!9889)))

(declare-fun b!157713 () Bool)

(declare-fun res!74549 () Bool)

(declare-fun e!103308 () Bool)

(assert (=> b!157713 (=> (not res!74549) (not e!103308))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!3993 0))(
  ( (V!3994 (val!1674 Int)) )
))
(declare-datatypes ((ValueCell!1286 0))(
  ( (ValueCellFull!1286 (v!3535 V!3993)) (EmptyCell!1286) )
))
(declare-datatypes ((array!5578 0))(
  ( (array!5579 (arr!2642 (Array (_ BitVec 32) (_ BitVec 64))) (size!2922 (_ BitVec 32))) )
))
(declare-datatypes ((array!5580 0))(
  ( (array!5581 (arr!2643 (Array (_ BitVec 32) ValueCell!1286)) (size!2923 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1480 0))(
  ( (LongMapFixedSize!1481 (defaultEntry!3182 Int) (mask!7673 (_ BitVec 32)) (extraKeys!2923 (_ BitVec 32)) (zeroValue!3025 V!3993) (minValue!3025 V!3993) (_size!789 (_ BitVec 32)) (_keys!4959 array!5578) (_values!3165 array!5580) (_vacant!789 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1480)

(declare-datatypes ((SeekEntryResult!299 0))(
  ( (MissingZero!299 (index!3364 (_ BitVec 32))) (Found!299 (index!3365 (_ BitVec 32))) (Intermediate!299 (undefined!1111 Bool) (index!3366 (_ BitVec 32)) (x!17399 (_ BitVec 32))) (Undefined!299) (MissingVacant!299 (index!3367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5578 (_ BitVec 32)) SeekEntryResult!299)

(assert (=> b!157713 (= res!74549 (is-Undefined!299 (seekEntryOrOpen!0 key!828 (_keys!4959 thiss!1248) (mask!7673 thiss!1248))))))

(declare-fun b!157714 () Bool)

(declare-fun res!74551 () Bool)

(assert (=> b!157714 (=> (not res!74551) (not e!103308))))

(assert (=> b!157714 (= res!74551 (not (= key!828 (bvneg key!828))))))

(declare-fun res!74550 () Bool)

(assert (=> start!15852 (=> (not res!74550) (not e!103308))))

(declare-fun valid!698 (LongMapFixedSize!1480) Bool)

(assert (=> start!15852 (= res!74550 (valid!698 thiss!1248))))

(assert (=> start!15852 e!103308))

(declare-fun e!103304 () Bool)

(assert (=> start!15852 e!103304))

(assert (=> start!15852 true))

(declare-fun b!157715 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157715 (= e!103308 (not (validMask!0 (mask!7673 thiss!1248))))))

(declare-fun mapIsEmpty!5545 () Bool)

(declare-fun mapRes!5545 () Bool)

(assert (=> mapIsEmpty!5545 mapRes!5545))

(declare-fun b!157716 () Bool)

(declare-fun e!103305 () Bool)

(declare-fun tp_is_empty!3259 () Bool)

(assert (=> b!157716 (= e!103305 tp_is_empty!3259)))

(declare-fun b!157717 () Bool)

(declare-fun e!103307 () Bool)

(assert (=> b!157717 (= e!103307 (and e!103305 mapRes!5545))))

(declare-fun condMapEmpty!5545 () Bool)

(declare-fun mapDefault!5545 () ValueCell!1286)

