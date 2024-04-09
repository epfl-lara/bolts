; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16078 () Bool)

(assert start!16078)

(declare-fun b!159460 () Bool)

(declare-fun b_free!3527 () Bool)

(declare-fun b_next!3527 () Bool)

(assert (=> b!159460 (= b_free!3527 (not b_next!3527))))

(declare-fun tp!13151 () Bool)

(declare-fun b_and!9959 () Bool)

(assert (=> b!159460 (= tp!13151 b_and!9959)))

(declare-fun mapIsEmpty!5681 () Bool)

(declare-fun mapRes!5681 () Bool)

(assert (=> mapIsEmpty!5681 mapRes!5681))

(declare-fun b!159451 () Bool)

(declare-fun res!75361 () Bool)

(declare-fun e!104374 () Bool)

(assert (=> b!159451 (=> (not res!75361) (not e!104374))))

(declare-datatypes ((V!4085 0))(
  ( (V!4086 (val!1709 Int)) )
))
(declare-datatypes ((ValueCell!1321 0))(
  ( (ValueCellFull!1321 (v!3570 V!4085)) (EmptyCell!1321) )
))
(declare-datatypes ((array!5736 0))(
  ( (array!5737 (arr!2712 (Array (_ BitVec 32) (_ BitVec 64))) (size!2996 (_ BitVec 32))) )
))
(declare-datatypes ((array!5738 0))(
  ( (array!5739 (arr!2713 (Array (_ BitVec 32) ValueCell!1321)) (size!2997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1550 0))(
  ( (LongMapFixedSize!1551 (defaultEntry!3217 Int) (mask!7767 (_ BitVec 32)) (extraKeys!2958 (_ BitVec 32)) (zeroValue!3060 V!4085) (minValue!3060 V!4085) (_size!824 (_ BitVec 32)) (_keys!5018 array!5736) (_values!3200 array!5738) (_vacant!824 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1550)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5736 (_ BitVec 32)) Bool)

(assert (=> b!159451 (= res!75361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5018 thiss!1248) (mask!7767 thiss!1248)))))

(declare-fun b!159452 () Bool)

(declare-fun res!75359 () Bool)

(assert (=> b!159452 (=> (not res!75359) (not e!104374))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2870 0))(
  ( (tuple2!2871 (_1!1445 (_ BitVec 64)) (_2!1445 V!4085)) )
))
(declare-datatypes ((List!1924 0))(
  ( (Nil!1921) (Cons!1920 (h!2533 tuple2!2870) (t!6734 List!1924)) )
))
(declare-datatypes ((ListLongMap!1879 0))(
  ( (ListLongMap!1880 (toList!955 List!1924)) )
))
(declare-fun contains!985 (ListLongMap!1879 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!615 (array!5736 array!5738 (_ BitVec 32) (_ BitVec 32) V!4085 V!4085 (_ BitVec 32) Int) ListLongMap!1879)

(assert (=> b!159452 (= res!75359 (contains!985 (getCurrentListMap!615 (_keys!5018 thiss!1248) (_values!3200 thiss!1248) (mask!7767 thiss!1248) (extraKeys!2958 thiss!1248) (zeroValue!3060 thiss!1248) (minValue!3060 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3217 thiss!1248)) key!828))))

(declare-fun b!159453 () Bool)

(declare-fun res!75360 () Bool)

(assert (=> b!159453 (=> (not res!75360) (not e!104374))))

(declare-datatypes ((SeekEntryResult!324 0))(
  ( (MissingZero!324 (index!3464 (_ BitVec 32))) (Found!324 (index!3465 (_ BitVec 32))) (Intermediate!324 (undefined!1136 Bool) (index!3466 (_ BitVec 32)) (x!17620 (_ BitVec 32))) (Undefined!324) (MissingVacant!324 (index!3467 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5736 (_ BitVec 32)) SeekEntryResult!324)

(assert (=> b!159453 (= res!75360 (is-Undefined!324 (seekEntryOrOpen!0 key!828 (_keys!5018 thiss!1248) (mask!7767 thiss!1248))))))

(declare-fun b!159454 () Bool)

(declare-fun res!75364 () Bool)

(assert (=> b!159454 (=> (not res!75364) (not e!104374))))

(assert (=> b!159454 (= res!75364 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159455 () Bool)

(declare-fun res!75362 () Bool)

(assert (=> b!159455 (=> (not res!75362) (not e!104374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159455 (= res!75362 (validMask!0 (mask!7767 thiss!1248)))))

(declare-fun b!159457 () Bool)

(declare-fun e!104370 () Bool)

(declare-fun e!104375 () Bool)

(assert (=> b!159457 (= e!104370 (and e!104375 mapRes!5681))))

(declare-fun condMapEmpty!5681 () Bool)

(declare-fun mapDefault!5681 () ValueCell!1321)

