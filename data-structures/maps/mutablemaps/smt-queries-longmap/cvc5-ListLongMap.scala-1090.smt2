; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22248 () Bool)

(assert start!22248)

(declare-fun b!233267 () Bool)

(declare-fun b_free!6289 () Bool)

(declare-fun b_next!6289 () Bool)

(assert (=> b!233267 (= b_free!6289 (not b_next!6289))))

(declare-fun tp!22012 () Bool)

(declare-fun b_and!13207 () Bool)

(assert (=> b!233267 (= tp!22012 b_and!13207)))

(declare-fun b!233266 () Bool)

(declare-fun e!151545 () Bool)

(declare-fun tp_is_empty!6151 () Bool)

(assert (=> b!233266 (= e!151545 tp_is_empty!6151)))

(declare-fun res!114502 () Bool)

(declare-fun e!151541 () Bool)

(assert (=> start!22248 (=> (not res!114502) (not e!151541))))

(declare-datatypes ((V!7849 0))(
  ( (V!7850 (val!3120 Int)) )
))
(declare-datatypes ((ValueCell!2732 0))(
  ( (ValueCellFull!2732 (v!5137 V!7849)) (EmptyCell!2732) )
))
(declare-datatypes ((array!11546 0))(
  ( (array!11547 (arr!5491 (Array (_ BitVec 32) ValueCell!2732)) (size!5824 (_ BitVec 32))) )
))
(declare-datatypes ((array!11548 0))(
  ( (array!11549 (arr!5492 (Array (_ BitVec 32) (_ BitVec 64))) (size!5825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3364 0))(
  ( (LongMapFixedSize!3365 (defaultEntry!4342 Int) (mask!10268 (_ BitVec 32)) (extraKeys!4079 (_ BitVec 32)) (zeroValue!4183 V!7849) (minValue!4183 V!7849) (_size!1731 (_ BitVec 32)) (_keys!6397 array!11548) (_values!4325 array!11546) (_vacant!1731 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3364)

(declare-fun valid!1320 (LongMapFixedSize!3364) Bool)

(assert (=> start!22248 (= res!114502 (valid!1320 thiss!1504))))

(assert (=> start!22248 e!151541))

(declare-fun e!151543 () Bool)

(assert (=> start!22248 e!151543))

(assert (=> start!22248 true))

(declare-fun e!151540 () Bool)

(declare-fun array_inv!3607 (array!11548) Bool)

(declare-fun array_inv!3608 (array!11546) Bool)

(assert (=> b!233267 (= e!151543 (and tp!22012 tp_is_empty!6151 (array_inv!3607 (_keys!6397 thiss!1504)) (array_inv!3608 (_values!4325 thiss!1504)) e!151540))))

(declare-fun mapIsEmpty!10399 () Bool)

(declare-fun mapRes!10399 () Bool)

(assert (=> mapIsEmpty!10399 mapRes!10399))

(declare-fun mapNonEmpty!10399 () Bool)

(declare-fun tp!22011 () Bool)

(assert (=> mapNonEmpty!10399 (= mapRes!10399 (and tp!22011 e!151545))))

(declare-fun mapValue!10399 () ValueCell!2732)

(declare-fun mapKey!10399 () (_ BitVec 32))

(declare-fun mapRest!10399 () (Array (_ BitVec 32) ValueCell!2732))

(assert (=> mapNonEmpty!10399 (= (arr!5491 (_values!4325 thiss!1504)) (store mapRest!10399 mapKey!10399 mapValue!10399))))

(declare-fun b!233268 () Bool)

(declare-fun e!151544 () Bool)

(assert (=> b!233268 (= e!151541 e!151544)))

(declare-fun res!114498 () Bool)

(assert (=> b!233268 (=> (not res!114498) (not e!151544))))

(declare-datatypes ((SeekEntryResult!985 0))(
  ( (MissingZero!985 (index!6110 (_ BitVec 32))) (Found!985 (index!6111 (_ BitVec 32))) (Intermediate!985 (undefined!1797 Bool) (index!6112 (_ BitVec 32)) (x!23631 (_ BitVec 32))) (Undefined!985) (MissingVacant!985 (index!6113 (_ BitVec 32))) )
))
(declare-fun lt!118026 () SeekEntryResult!985)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!233268 (= res!114498 (or (= lt!118026 (MissingZero!985 index!297)) (= lt!118026 (MissingVacant!985 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11548 (_ BitVec 32)) SeekEntryResult!985)

(assert (=> b!233268 (= lt!118026 (seekEntryOrOpen!0 key!932 (_keys!6397 thiss!1504) (mask!10268 thiss!1504)))))

(declare-fun b!233269 () Bool)

(declare-fun res!114500 () Bool)

(assert (=> b!233269 (=> (not res!114500) (not e!151544))))

(declare-datatypes ((tuple2!4598 0))(
  ( (tuple2!4599 (_1!2309 (_ BitVec 64)) (_2!2309 V!7849)) )
))
(declare-datatypes ((List!3535 0))(
  ( (Nil!3532) (Cons!3531 (h!4179 tuple2!4598) (t!8504 List!3535)) )
))
(declare-datatypes ((ListLongMap!3525 0))(
  ( (ListLongMap!3526 (toList!1778 List!3535)) )
))
(declare-fun contains!1640 (ListLongMap!3525 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1301 (array!11548 array!11546 (_ BitVec 32) (_ BitVec 32) V!7849 V!7849 (_ BitVec 32) Int) ListLongMap!3525)

(assert (=> b!233269 (= res!114500 (contains!1640 (getCurrentListMap!1301 (_keys!6397 thiss!1504) (_values!4325 thiss!1504) (mask!10268 thiss!1504) (extraKeys!4079 thiss!1504) (zeroValue!4183 thiss!1504) (minValue!4183 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4342 thiss!1504)) key!932))))

(declare-fun b!233270 () Bool)

(declare-fun e!151546 () Bool)

(assert (=> b!233270 (= e!151540 (and e!151546 mapRes!10399))))

(declare-fun condMapEmpty!10399 () Bool)

(declare-fun mapDefault!10399 () ValueCell!2732)

