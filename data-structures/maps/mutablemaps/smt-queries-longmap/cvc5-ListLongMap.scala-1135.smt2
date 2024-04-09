; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23378 () Bool)

(assert start!23378)

(declare-fun b!245628 () Bool)

(declare-fun b_free!6559 () Bool)

(declare-fun b_next!6559 () Bool)

(assert (=> b!245628 (= b_free!6559 (not b_next!6559))))

(declare-fun tp!22912 () Bool)

(declare-fun b_and!13567 () Bool)

(assert (=> b!245628 (= tp!22912 b_and!13567)))

(declare-fun res!120481 () Bool)

(declare-fun e!159357 () Bool)

(assert (=> start!23378 (=> (not res!120481) (not e!159357))))

(declare-datatypes ((V!8209 0))(
  ( (V!8210 (val!3255 Int)) )
))
(declare-datatypes ((ValueCell!2867 0))(
  ( (ValueCellFull!2867 (v!5304 V!8209)) (EmptyCell!2867) )
))
(declare-datatypes ((array!12140 0))(
  ( (array!12141 (arr!5761 (Array (_ BitVec 32) ValueCell!2867)) (size!6103 (_ BitVec 32))) )
))
(declare-datatypes ((array!12142 0))(
  ( (array!12143 (arr!5762 (Array (_ BitVec 32) (_ BitVec 64))) (size!6104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3634 0))(
  ( (LongMapFixedSize!3635 (defaultEntry!4546 Int) (mask!10660 (_ BitVec 32)) (extraKeys!4283 (_ BitVec 32)) (zeroValue!4387 V!8209) (minValue!4387 V!8209) (_size!1866 (_ BitVec 32)) (_keys!6661 array!12142) (_values!4529 array!12140) (_vacant!1866 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3634)

(declare-fun valid!1414 (LongMapFixedSize!3634) Bool)

(assert (=> start!23378 (= res!120481 (valid!1414 thiss!1504))))

(assert (=> start!23378 e!159357))

(declare-fun e!159352 () Bool)

(assert (=> start!23378 e!159352))

(assert (=> start!23378 true))

(declare-fun b!245608 () Bool)

(declare-fun res!120478 () Bool)

(declare-datatypes ((SeekEntryResult!1100 0))(
  ( (MissingZero!1100 (index!6570 (_ BitVec 32))) (Found!1100 (index!6571 (_ BitVec 32))) (Intermediate!1100 (undefined!1912 Bool) (index!6572 (_ BitVec 32)) (x!24448 (_ BitVec 32))) (Undefined!1100) (MissingVacant!1100 (index!6573 (_ BitVec 32))) )
))
(declare-fun lt!123051 () SeekEntryResult!1100)

(assert (=> b!245608 (= res!120478 (= (select (arr!5762 (_keys!6661 thiss!1504)) (index!6573 lt!123051)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159362 () Bool)

(assert (=> b!245608 (=> (not res!120478) (not e!159362))))

(declare-fun b!245609 () Bool)

(declare-fun call!22942 () Bool)

(assert (=> b!245609 (= e!159362 (not call!22942))))

(declare-fun b!245610 () Bool)

(declare-fun e!159353 () Bool)

(assert (=> b!245610 (= e!159357 e!159353)))

(declare-fun res!120477 () Bool)

(assert (=> b!245610 (=> (not res!120477) (not e!159353))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!245610 (= res!120477 (or (= lt!123051 (MissingZero!1100 index!297)) (= lt!123051 (MissingVacant!1100 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12142 (_ BitVec 32)) SeekEntryResult!1100)

(assert (=> b!245610 (= lt!123051 (seekEntryOrOpen!0 key!932 (_keys!6661 thiss!1504) (mask!10660 thiss!1504)))))

(declare-fun mapNonEmpty!10894 () Bool)

(declare-fun mapRes!10894 () Bool)

(declare-fun tp!22911 () Bool)

(declare-fun e!159351 () Bool)

(assert (=> mapNonEmpty!10894 (= mapRes!10894 (and tp!22911 e!159351))))

(declare-fun mapKey!10894 () (_ BitVec 32))

(declare-fun mapValue!10894 () ValueCell!2867)

(declare-fun mapRest!10894 () (Array (_ BitVec 32) ValueCell!2867))

(assert (=> mapNonEmpty!10894 (= (arr!5761 (_values!4529 thiss!1504)) (store mapRest!10894 mapKey!10894 mapValue!10894))))

(declare-fun b!245611 () Bool)

(declare-fun c!41014 () Bool)

(assert (=> b!245611 (= c!41014 (is-MissingVacant!1100 lt!123051))))

(declare-fun e!159355 () Bool)

(declare-fun e!159361 () Bool)

(assert (=> b!245611 (= e!159355 e!159361)))

(declare-fun b!245612 () Bool)

(declare-fun e!159350 () Bool)

(declare-fun tp_is_empty!6421 () Bool)

(assert (=> b!245612 (= e!159350 tp_is_empty!6421)))

(declare-fun b!245613 () Bool)

(assert (=> b!245613 (= e!159361 (is-Undefined!1100 lt!123051))))

(declare-fun call!22943 () Bool)

(declare-fun c!41013 () Bool)

(declare-fun bm!22939 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22939 (= call!22943 (inRange!0 (ite c!41013 (index!6570 lt!123051) (index!6573 lt!123051)) (mask!10660 thiss!1504)))))

(declare-fun b!245614 () Bool)

(declare-fun e!159356 () Bool)

(assert (=> b!245614 (= e!159356 (not call!22942))))

(declare-fun b!245615 () Bool)

(declare-fun e!159349 () Bool)

(assert (=> b!245615 (= e!159349 (and e!159350 mapRes!10894))))

(declare-fun condMapEmpty!10894 () Bool)

(declare-fun mapDefault!10894 () ValueCell!2867)

