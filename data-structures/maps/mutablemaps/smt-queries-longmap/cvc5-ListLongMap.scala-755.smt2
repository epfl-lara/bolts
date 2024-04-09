; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17708 () Bool)

(assert start!17708)

(declare-fun b!176888 () Bool)

(declare-fun b_free!4369 () Bool)

(declare-fun b_next!4369 () Bool)

(assert (=> b!176888 (= b_free!4369 (not b_next!4369))))

(declare-fun tp!15803 () Bool)

(declare-fun b_and!10885 () Bool)

(assert (=> b!176888 (= tp!15803 b_and!10885)))

(declare-fun mapIsEmpty!7071 () Bool)

(declare-fun mapRes!7071 () Bool)

(assert (=> mapIsEmpty!7071 mapRes!7071))

(declare-fun mapNonEmpty!7071 () Bool)

(declare-fun tp!15804 () Bool)

(declare-fun e!116668 () Bool)

(assert (=> mapNonEmpty!7071 (= mapRes!7071 (and tp!15804 e!116668))))

(declare-datatypes ((V!5169 0))(
  ( (V!5170 (val!2115 Int)) )
))
(declare-datatypes ((ValueCell!1727 0))(
  ( (ValueCellFull!1727 (v!3990 V!5169)) (EmptyCell!1727) )
))
(declare-fun mapValue!7071 () ValueCell!1727)

(declare-fun mapRest!7071 () (Array (_ BitVec 32) ValueCell!1727))

(declare-datatypes ((array!7430 0))(
  ( (array!7431 (arr!3524 (Array (_ BitVec 32) (_ BitVec 64))) (size!3828 (_ BitVec 32))) )
))
(declare-datatypes ((array!7432 0))(
  ( (array!7433 (arr!3525 (Array (_ BitVec 32) ValueCell!1727)) (size!3829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2362 0))(
  ( (LongMapFixedSize!2363 (defaultEntry!3643 Int) (mask!8572 (_ BitVec 32)) (extraKeys!3380 (_ BitVec 32)) (zeroValue!3484 V!5169) (minValue!3484 V!5169) (_size!1230 (_ BitVec 32)) (_keys!5508 array!7430) (_values!3626 array!7432) (_vacant!1230 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2362)

(declare-fun mapKey!7071 () (_ BitVec 32))

(assert (=> mapNonEmpty!7071 (= (arr!3525 (_values!3626 thiss!1248)) (store mapRest!7071 mapKey!7071 mapValue!7071))))

(declare-fun b!176881 () Bool)

(declare-fun res!83857 () Bool)

(declare-fun e!116670 () Bool)

(assert (=> b!176881 (=> (not res!83857) (not e!116670))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!571 0))(
  ( (MissingZero!571 (index!4452 (_ BitVec 32))) (Found!571 (index!4453 (_ BitVec 32))) (Intermediate!571 (undefined!1383 Bool) (index!4454 (_ BitVec 32)) (x!19425 (_ BitVec 32))) (Undefined!571) (MissingVacant!571 (index!4455 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7430 (_ BitVec 32)) SeekEntryResult!571)

(assert (=> b!176881 (= res!83857 (is-Undefined!571 (seekEntryOrOpen!0 key!828 (_keys!5508 thiss!1248) (mask!8572 thiss!1248))))))

(declare-fun b!176882 () Bool)

(declare-fun tp_is_empty!4141 () Bool)

(assert (=> b!176882 (= e!116668 tp_is_empty!4141)))

(declare-fun b!176883 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176883 (= e!116670 (not (validKeyInArray!0 key!828)))))

(declare-fun b!176884 () Bool)

(declare-fun e!116667 () Bool)

(assert (=> b!176884 (= e!116667 tp_is_empty!4141)))

(declare-fun b!176885 () Bool)

(declare-fun res!83854 () Bool)

(assert (=> b!176885 (=> (not res!83854) (not e!116670))))

(assert (=> b!176885 (= res!83854 (and (= (size!3829 (_values!3626 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8572 thiss!1248))) (= (size!3828 (_keys!5508 thiss!1248)) (size!3829 (_values!3626 thiss!1248))) (bvsge (mask!8572 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3380 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3380 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!176886 () Bool)

(declare-fun res!83860 () Bool)

(assert (=> b!176886 (=> (not res!83860) (not e!116670))))

(assert (=> b!176886 (= res!83860 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176887 () Bool)

(declare-fun res!83858 () Bool)

(assert (=> b!176887 (=> (not res!83858) (not e!116670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176887 (= res!83858 (validMask!0 (mask!8572 thiss!1248)))))

(declare-fun b!176880 () Bool)

(declare-fun e!116666 () Bool)

(assert (=> b!176880 (= e!116666 (and e!116667 mapRes!7071))))

(declare-fun condMapEmpty!7071 () Bool)

(declare-fun mapDefault!7071 () ValueCell!1727)

