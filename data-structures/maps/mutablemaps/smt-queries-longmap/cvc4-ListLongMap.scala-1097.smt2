; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22542 () Bool)

(assert start!22542)

(declare-fun b!235516 () Bool)

(declare-fun b_free!6335 () Bool)

(declare-fun b_next!6335 () Bool)

(assert (=> b!235516 (= b_free!6335 (not b_next!6335))))

(declare-fun tp!22174 () Bool)

(declare-fun b_and!13283 () Bool)

(assert (=> b!235516 (= tp!22174 b_and!13283)))

(declare-datatypes ((V!7909 0))(
  ( (V!7910 (val!3143 Int)) )
))
(declare-datatypes ((ValueCell!2755 0))(
  ( (ValueCellFull!2755 (v!5167 V!7909)) (EmptyCell!2755) )
))
(declare-datatypes ((array!11652 0))(
  ( (array!11653 (arr!5537 (Array (_ BitVec 32) ValueCell!2755)) (size!5874 (_ BitVec 32))) )
))
(declare-datatypes ((array!11654 0))(
  ( (array!11655 (arr!5538 (Array (_ BitVec 32) (_ BitVec 64))) (size!5875 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3410 0))(
  ( (LongMapFixedSize!3411 (defaultEntry!4376 Int) (mask!10348 (_ BitVec 32)) (extraKeys!4113 (_ BitVec 32)) (zeroValue!4217 V!7909) (minValue!4217 V!7909) (_size!1754 (_ BitVec 32)) (_keys!6452 array!11654) (_values!4359 array!11652) (_vacant!1754 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3410)

(declare-fun e!152963 () Bool)

(declare-fun tp_is_empty!6197 () Bool)

(declare-fun e!152964 () Bool)

(declare-fun array_inv!3645 (array!11654) Bool)

(declare-fun array_inv!3646 (array!11652) Bool)

(assert (=> b!235516 (= e!152963 (and tp!22174 tp_is_empty!6197 (array_inv!3645 (_keys!6452 thiss!1504)) (array_inv!3646 (_values!4359 thiss!1504)) e!152964))))

(declare-fun b!235517 () Bool)

(declare-fun res!115518 () Bool)

(declare-fun e!152962 () Bool)

(assert (=> b!235517 (=> (not res!115518) (not e!152962))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!235517 (= res!115518 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235518 () Bool)

(declare-fun e!152960 () Bool)

(assert (=> b!235518 (= e!152960 false)))

(declare-fun lt!119171 () Bool)

(declare-datatypes ((List!3561 0))(
  ( (Nil!3558) (Cons!3557 (h!4209 (_ BitVec 64)) (t!8544 List!3561)) )
))
(declare-fun arrayNoDuplicates!0 (array!11654 (_ BitVec 32) List!3561) Bool)

(assert (=> b!235518 (= lt!119171 (arrayNoDuplicates!0 (_keys!6452 thiss!1504) #b00000000000000000000000000000000 Nil!3558))))

(declare-fun b!235519 () Bool)

(declare-fun e!152958 () Bool)

(assert (=> b!235519 (= e!152958 tp_is_empty!6197)))

(declare-fun b!235520 () Bool)

(declare-fun res!115517 () Bool)

(assert (=> b!235520 (=> (not res!115517) (not e!152960))))

(declare-datatypes ((tuple2!4628 0))(
  ( (tuple2!4629 (_1!2324 (_ BitVec 64)) (_2!2324 V!7909)) )
))
(declare-datatypes ((List!3562 0))(
  ( (Nil!3559) (Cons!3558 (h!4210 tuple2!4628) (t!8545 List!3562)) )
))
(declare-datatypes ((ListLongMap!3555 0))(
  ( (ListLongMap!3556 (toList!1793 List!3562)) )
))
(declare-fun contains!1664 (ListLongMap!3555 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1316 (array!11654 array!11652 (_ BitVec 32) (_ BitVec 32) V!7909 V!7909 (_ BitVec 32) Int) ListLongMap!3555)

(assert (=> b!235520 (= res!115517 (contains!1664 (getCurrentListMap!1316 (_keys!6452 thiss!1504) (_values!4359 thiss!1504) (mask!10348 thiss!1504) (extraKeys!4113 thiss!1504) (zeroValue!4217 thiss!1504) (minValue!4217 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4376 thiss!1504)) key!932))))

(declare-fun b!235521 () Bool)

(declare-fun res!115512 () Bool)

(assert (=> b!235521 (=> (not res!115512) (not e!152960))))

(assert (=> b!235521 (= res!115512 (and (= (size!5874 (_values!4359 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10348 thiss!1504))) (= (size!5875 (_keys!6452 thiss!1504)) (size!5874 (_values!4359 thiss!1504))) (bvsge (mask!10348 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4113 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4113 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235522 () Bool)

(declare-fun res!115514 () Bool)

(assert (=> b!235522 (=> (not res!115514) (not e!152960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11654 (_ BitVec 32)) Bool)

(assert (=> b!235522 (= res!115514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6452 thiss!1504) (mask!10348 thiss!1504)))))

(declare-fun b!235524 () Bool)

(declare-fun e!152959 () Bool)

(assert (=> b!235524 (= e!152959 tp_is_empty!6197)))

(declare-fun mapIsEmpty!10493 () Bool)

(declare-fun mapRes!10493 () Bool)

(assert (=> mapIsEmpty!10493 mapRes!10493))

(declare-fun b!235523 () Bool)

(assert (=> b!235523 (= e!152962 e!152960)))

(declare-fun res!115513 () Bool)

(assert (=> b!235523 (=> (not res!115513) (not e!152960))))

(declare-datatypes ((SeekEntryResult!1001 0))(
  ( (MissingZero!1001 (index!6174 (_ BitVec 32))) (Found!1001 (index!6175 (_ BitVec 32))) (Intermediate!1001 (undefined!1813 Bool) (index!6176 (_ BitVec 32)) (x!23805 (_ BitVec 32))) (Undefined!1001) (MissingVacant!1001 (index!6177 (_ BitVec 32))) )
))
(declare-fun lt!119170 () SeekEntryResult!1001)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235523 (= res!115513 (or (= lt!119170 (MissingZero!1001 index!297)) (= lt!119170 (MissingVacant!1001 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11654 (_ BitVec 32)) SeekEntryResult!1001)

(assert (=> b!235523 (= lt!119170 (seekEntryOrOpen!0 key!932 (_keys!6452 thiss!1504) (mask!10348 thiss!1504)))))

(declare-fun res!115515 () Bool)

(assert (=> start!22542 (=> (not res!115515) (not e!152962))))

(declare-fun valid!1339 (LongMapFixedSize!3410) Bool)

(assert (=> start!22542 (= res!115515 (valid!1339 thiss!1504))))

(assert (=> start!22542 e!152962))

(assert (=> start!22542 e!152963))

(assert (=> start!22542 true))

(declare-fun b!235525 () Bool)

(assert (=> b!235525 (= e!152964 (and e!152958 mapRes!10493))))

(declare-fun condMapEmpty!10493 () Bool)

(declare-fun mapDefault!10493 () ValueCell!2755)

