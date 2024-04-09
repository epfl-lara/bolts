; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17892 () Bool)

(assert start!17892)

(declare-fun b!178334 () Bool)

(declare-fun b_free!4405 () Bool)

(declare-fun b_next!4405 () Bool)

(assert (=> b!178334 (= b_free!4405 (not b_next!4405))))

(declare-fun tp!15928 () Bool)

(declare-fun b_and!10939 () Bool)

(assert (=> b!178334 (= tp!15928 b_and!10939)))

(declare-fun b!178333 () Bool)

(declare-fun res!84504 () Bool)

(declare-fun e!117559 () Bool)

(assert (=> b!178333 (=> (not res!84504) (not e!117559))))

(declare-datatypes ((V!5217 0))(
  ( (V!5218 (val!2133 Int)) )
))
(declare-datatypes ((ValueCell!1745 0))(
  ( (ValueCellFull!1745 (v!4013 V!5217)) (EmptyCell!1745) )
))
(declare-datatypes ((array!7512 0))(
  ( (array!7513 (arr!3560 (Array (_ BitVec 32) (_ BitVec 64))) (size!3866 (_ BitVec 32))) )
))
(declare-datatypes ((array!7514 0))(
  ( (array!7515 (arr!3561 (Array (_ BitVec 32) ValueCell!1745)) (size!3867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2398 0))(
  ( (LongMapFixedSize!2399 (defaultEntry!3668 Int) (mask!8628 (_ BitVec 32)) (extraKeys!3405 (_ BitVec 32)) (zeroValue!3509 V!5217) (minValue!3509 V!5217) (_size!1248 (_ BitVec 32)) (_keys!5545 array!7512) (_values!3651 array!7514) (_vacant!1248 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2398)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178333 (= res!84504 (validMask!0 (mask!8628 thiss!1248)))))

(declare-fun mapIsEmpty!7142 () Bool)

(declare-fun mapRes!7142 () Bool)

(assert (=> mapIsEmpty!7142 mapRes!7142))

(declare-fun tp_is_empty!4177 () Bool)

(declare-fun e!117558 () Bool)

(declare-fun e!117562 () Bool)

(declare-fun array_inv!2277 (array!7512) Bool)

(declare-fun array_inv!2278 (array!7514) Bool)

(assert (=> b!178334 (= e!117562 (and tp!15928 tp_is_empty!4177 (array_inv!2277 (_keys!5545 thiss!1248)) (array_inv!2278 (_values!3651 thiss!1248)) e!117558))))

(declare-fun res!84506 () Bool)

(assert (=> start!17892 (=> (not res!84506) (not e!117559))))

(declare-fun valid!996 (LongMapFixedSize!2398) Bool)

(assert (=> start!17892 (= res!84506 (valid!996 thiss!1248))))

(assert (=> start!17892 e!117559))

(assert (=> start!17892 e!117562))

(assert (=> start!17892 true))

(declare-fun b!178335 () Bool)

(declare-fun e!117561 () Bool)

(assert (=> b!178335 (= e!117561 tp_is_empty!4177)))

(declare-fun b!178336 () Bool)

(assert (=> b!178336 (= e!117559 (and (= (size!3867 (_values!3651 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8628 thiss!1248))) (= (size!3866 (_keys!5545 thiss!1248)) (size!3867 (_values!3651 thiss!1248))) (bvsge (mask!8628 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3405 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!178337 () Bool)

(declare-fun res!84503 () Bool)

(assert (=> b!178337 (=> (not res!84503) (not e!117559))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!178337 (= res!84503 (not (= key!828 (bvneg key!828))))))

(declare-fun b!178338 () Bool)

(declare-fun res!84505 () Bool)

(assert (=> b!178338 (=> (not res!84505) (not e!117559))))

(declare-datatypes ((tuple2!3312 0))(
  ( (tuple2!3313 (_1!1666 (_ BitVec 64)) (_2!1666 V!5217)) )
))
(declare-datatypes ((List!2283 0))(
  ( (Nil!2280) (Cons!2279 (h!2902 tuple2!3312) (t!7129 List!2283)) )
))
(declare-datatypes ((ListLongMap!2253 0))(
  ( (ListLongMap!2254 (toList!1142 List!2283)) )
))
(declare-fun contains!1206 (ListLongMap!2253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!789 (array!7512 array!7514 (_ BitVec 32) (_ BitVec 32) V!5217 V!5217 (_ BitVec 32) Int) ListLongMap!2253)

(assert (=> b!178338 (= res!84505 (not (contains!1206 (getCurrentListMap!789 (_keys!5545 thiss!1248) (_values!3651 thiss!1248) (mask!8628 thiss!1248) (extraKeys!3405 thiss!1248) (zeroValue!3509 thiss!1248) (minValue!3509 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3668 thiss!1248)) key!828)))))

(declare-fun b!178339 () Bool)

(declare-fun res!84507 () Bool)

(assert (=> b!178339 (=> (not res!84507) (not e!117559))))

(declare-datatypes ((SeekEntryResult!584 0))(
  ( (MissingZero!584 (index!4504 (_ BitVec 32))) (Found!584 (index!4505 (_ BitVec 32))) (Intermediate!584 (undefined!1396 Bool) (index!4506 (_ BitVec 32)) (x!19552 (_ BitVec 32))) (Undefined!584) (MissingVacant!584 (index!4507 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7512 (_ BitVec 32)) SeekEntryResult!584)

(assert (=> b!178339 (= res!84507 (is-Undefined!584 (seekEntryOrOpen!0 key!828 (_keys!5545 thiss!1248) (mask!8628 thiss!1248))))))

(declare-fun b!178340 () Bool)

(assert (=> b!178340 (= e!117558 (and e!117561 mapRes!7142))))

(declare-fun condMapEmpty!7142 () Bool)

(declare-fun mapDefault!7142 () ValueCell!1745)

