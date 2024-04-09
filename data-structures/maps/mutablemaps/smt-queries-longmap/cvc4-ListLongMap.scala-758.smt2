; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17764 () Bool)

(assert start!17764)

(declare-fun b!177425 () Bool)

(declare-fun b_free!4391 () Bool)

(declare-fun b_next!4391 () Bool)

(assert (=> b!177425 (= b_free!4391 (not b_next!4391))))

(declare-fun tp!15876 () Bool)

(declare-fun b_and!10911 () Bool)

(assert (=> b!177425 (= tp!15876 b_and!10911)))

(declare-fun res!84116 () Bool)

(declare-fun e!117015 () Bool)

(assert (=> start!17764 (=> (not res!84116) (not e!117015))))

(declare-datatypes ((V!5197 0))(
  ( (V!5198 (val!2126 Int)) )
))
(declare-datatypes ((ValueCell!1738 0))(
  ( (ValueCellFull!1738 (v!4003 V!5197)) (EmptyCell!1738) )
))
(declare-datatypes ((array!7478 0))(
  ( (array!7479 (arr!3546 (Array (_ BitVec 32) (_ BitVec 64))) (size!3850 (_ BitVec 32))) )
))
(declare-datatypes ((array!7480 0))(
  ( (array!7481 (arr!3547 (Array (_ BitVec 32) ValueCell!1738)) (size!3851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2384 0))(
  ( (LongMapFixedSize!2385 (defaultEntry!3656 Int) (mask!8596 (_ BitVec 32)) (extraKeys!3393 (_ BitVec 32)) (zeroValue!3497 V!5197) (minValue!3497 V!5197) (_size!1241 (_ BitVec 32)) (_keys!5524 array!7478) (_values!3639 array!7480) (_vacant!1241 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2384)

(declare-fun valid!991 (LongMapFixedSize!2384) Bool)

(assert (=> start!17764 (= res!84116 (valid!991 thiss!1248))))

(assert (=> start!17764 e!117015))

(declare-fun e!117011 () Bool)

(assert (=> start!17764 e!117011))

(assert (=> start!17764 true))

(declare-fun e!117014 () Bool)

(declare-fun tp_is_empty!4163 () Bool)

(declare-fun array_inv!2267 (array!7478) Bool)

(declare-fun array_inv!2268 (array!7480) Bool)

(assert (=> b!177425 (= e!117011 (and tp!15876 tp_is_empty!4163 (array_inv!2267 (_keys!5524 thiss!1248)) (array_inv!2268 (_values!3639 thiss!1248)) e!117014))))

(declare-fun b!177426 () Bool)

(assert (=> b!177426 (= e!117015 (not (= (size!3851 (_values!3639 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8596 thiss!1248)))))))

(declare-fun mapNonEmpty!7110 () Bool)

(declare-fun mapRes!7110 () Bool)

(declare-fun tp!15875 () Bool)

(declare-fun e!117013 () Bool)

(assert (=> mapNonEmpty!7110 (= mapRes!7110 (and tp!15875 e!117013))))

(declare-fun mapKey!7110 () (_ BitVec 32))

(declare-fun mapValue!7110 () ValueCell!1738)

(declare-fun mapRest!7110 () (Array (_ BitVec 32) ValueCell!1738))

(assert (=> mapNonEmpty!7110 (= (arr!3547 (_values!3639 thiss!1248)) (store mapRest!7110 mapKey!7110 mapValue!7110))))

(declare-fun mapIsEmpty!7110 () Bool)

(assert (=> mapIsEmpty!7110 mapRes!7110))

(declare-fun b!177427 () Bool)

(declare-fun res!84118 () Bool)

(assert (=> b!177427 (=> (not res!84118) (not e!117015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177427 (= res!84118 (validMask!0 (mask!8596 thiss!1248)))))

(declare-fun b!177428 () Bool)

(declare-fun e!117016 () Bool)

(assert (=> b!177428 (= e!117016 tp_is_empty!4163)))

(declare-fun b!177429 () Bool)

(assert (=> b!177429 (= e!117013 tp_is_empty!4163)))

(declare-fun b!177430 () Bool)

(declare-fun res!84115 () Bool)

(assert (=> b!177430 (=> (not res!84115) (not e!117015))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!579 0))(
  ( (MissingZero!579 (index!4484 (_ BitVec 32))) (Found!579 (index!4485 (_ BitVec 32))) (Intermediate!579 (undefined!1391 Bool) (index!4486 (_ BitVec 32)) (x!19477 (_ BitVec 32))) (Undefined!579) (MissingVacant!579 (index!4487 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7478 (_ BitVec 32)) SeekEntryResult!579)

(assert (=> b!177430 (= res!84115 (is-Undefined!579 (seekEntryOrOpen!0 key!828 (_keys!5524 thiss!1248) (mask!8596 thiss!1248))))))

(declare-fun b!177431 () Bool)

(declare-fun res!84119 () Bool)

(assert (=> b!177431 (=> (not res!84119) (not e!117015))))

(assert (=> b!177431 (= res!84119 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177432 () Bool)

(assert (=> b!177432 (= e!117014 (and e!117016 mapRes!7110))))

(declare-fun condMapEmpty!7110 () Bool)

(declare-fun mapDefault!7110 () ValueCell!1738)

