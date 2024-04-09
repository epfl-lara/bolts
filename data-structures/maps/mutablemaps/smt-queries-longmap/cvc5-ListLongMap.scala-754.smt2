; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17702 () Bool)

(assert start!17702)

(declare-fun b!176787 () Bool)

(declare-fun b_free!4363 () Bool)

(declare-fun b_next!4363 () Bool)

(assert (=> b!176787 (= b_free!4363 (not b_next!4363))))

(declare-fun tp!15786 () Bool)

(declare-fun b_and!10879 () Bool)

(assert (=> b!176787 (= tp!15786 b_and!10879)))

(declare-fun b!176779 () Bool)

(declare-fun res!83793 () Bool)

(declare-fun e!116612 () Bool)

(assert (=> b!176779 (=> (not res!83793) (not e!116612))))

(declare-datatypes ((V!5161 0))(
  ( (V!5162 (val!2112 Int)) )
))
(declare-datatypes ((ValueCell!1724 0))(
  ( (ValueCellFull!1724 (v!3987 V!5161)) (EmptyCell!1724) )
))
(declare-datatypes ((array!7418 0))(
  ( (array!7419 (arr!3518 (Array (_ BitVec 32) (_ BitVec 64))) (size!3822 (_ BitVec 32))) )
))
(declare-datatypes ((array!7420 0))(
  ( (array!7421 (arr!3519 (Array (_ BitVec 32) ValueCell!1724)) (size!3823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2356 0))(
  ( (LongMapFixedSize!2357 (defaultEntry!3640 Int) (mask!8567 (_ BitVec 32)) (extraKeys!3377 (_ BitVec 32)) (zeroValue!3481 V!5161) (minValue!3481 V!5161) (_size!1227 (_ BitVec 32)) (_keys!5505 array!7418) (_values!3623 array!7420) (_vacant!1227 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2356)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3284 0))(
  ( (tuple2!3285 (_1!1652 (_ BitVec 64)) (_2!1652 V!5161)) )
))
(declare-datatypes ((List!2261 0))(
  ( (Nil!2258) (Cons!2257 (h!2878 tuple2!3284) (t!7097 List!2261)) )
))
(declare-datatypes ((ListLongMap!2225 0))(
  ( (ListLongMap!2226 (toList!1128 List!2261)) )
))
(declare-fun contains!1187 (ListLongMap!2225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!775 (array!7418 array!7420 (_ BitVec 32) (_ BitVec 32) V!5161 V!5161 (_ BitVec 32) Int) ListLongMap!2225)

(assert (=> b!176779 (= res!83793 (contains!1187 (getCurrentListMap!775 (_keys!5505 thiss!1248) (_values!3623 thiss!1248) (mask!8567 thiss!1248) (extraKeys!3377 thiss!1248) (zeroValue!3481 thiss!1248) (minValue!3481 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3640 thiss!1248)) key!828))))

(declare-fun b!176780 () Bool)

(declare-fun res!83791 () Bool)

(assert (=> b!176780 (=> (not res!83791) (not e!116612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176780 (= res!83791 (validMask!0 (mask!8567 thiss!1248)))))

(declare-fun b!176781 () Bool)

(declare-fun res!83794 () Bool)

(assert (=> b!176781 (=> (not res!83794) (not e!116612))))

(declare-datatypes ((SeekEntryResult!568 0))(
  ( (MissingZero!568 (index!4440 (_ BitVec 32))) (Found!568 (index!4441 (_ BitVec 32))) (Intermediate!568 (undefined!1380 Bool) (index!4442 (_ BitVec 32)) (x!19414 (_ BitVec 32))) (Undefined!568) (MissingVacant!568 (index!4443 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7418 (_ BitVec 32)) SeekEntryResult!568)

(assert (=> b!176781 (= res!83794 (is-Undefined!568 (seekEntryOrOpen!0 key!828 (_keys!5505 thiss!1248) (mask!8567 thiss!1248))))))

(declare-fun b!176782 () Bool)

(declare-fun e!116616 () Bool)

(declare-fun e!116617 () Bool)

(declare-fun mapRes!7062 () Bool)

(assert (=> b!176782 (= e!116616 (and e!116617 mapRes!7062))))

(declare-fun condMapEmpty!7062 () Bool)

(declare-fun mapDefault!7062 () ValueCell!1724)

